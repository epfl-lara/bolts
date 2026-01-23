; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!599356 () Bool)

(assert start!599356)

(declare-fun b!5859627 () Bool)

(assert (=> b!5859627 true))

(declare-fun e!3592838 () Bool)

(declare-fun tp!1620922 () Bool)

(declare-datatypes ((C!32124 0))(
  ( (C!32125 (val!25764 Int)) )
))
(declare-datatypes ((Regex!15927 0))(
  ( (ElementMatch!15927 (c!1039387 C!32124)) (Concat!24772 (regOne!32366 Regex!15927) (regTwo!32366 Regex!15927)) (EmptyExpr!15927) (Star!15927 (reg!16256 Regex!15927)) (EmptyLang!15927) (Union!15927 (regOne!32367 Regex!15927) (regTwo!32367 Regex!15927)) )
))
(declare-datatypes ((List!64080 0))(
  ( (Nil!63956) (Cons!63956 (h!70404 Regex!15927) (t!377451 List!64080)) )
))
(declare-datatypes ((Context!10622 0))(
  ( (Context!10623 (exprs!5811 List!64080)) )
))
(declare-datatypes ((List!64081 0))(
  ( (Nil!63957) (Cons!63957 (h!70405 Context!10622) (t!377452 List!64081)) )
))
(declare-fun zl!343 () List!64081)

(declare-fun e!3592844 () Bool)

(declare-fun b!5859617 () Bool)

(declare-fun inv!83064 (Context!10622) Bool)

(assert (=> b!5859617 (= e!3592838 (and (inv!83064 (h!70405 zl!343)) e!3592844 tp!1620922))))

(declare-fun b!5859618 () Bool)

(declare-fun res!2465864 () Bool)

(declare-fun e!3592843 () Bool)

(assert (=> b!5859618 (=> res!2465864 e!3592843)))

(declare-fun r!7292 () Regex!15927)

(get-info :version)

(assert (=> b!5859618 (= res!2465864 (or ((_ is EmptyExpr!15927) r!7292) ((_ is EmptyLang!15927) r!7292) ((_ is ElementMatch!15927) r!7292) (not ((_ is Union!15927) r!7292))))))

(declare-fun b!5859619 () Bool)

(declare-fun e!3592842 () Bool)

(declare-fun tp_is_empty!41107 () Bool)

(assert (=> b!5859619 (= e!3592842 tp_is_empty!41107)))

(declare-fun b!5859620 () Bool)

(declare-fun e!3592837 () Bool)

(declare-fun e!3592839 () Bool)

(assert (=> b!5859620 (= e!3592837 e!3592839)))

(declare-fun res!2465863 () Bool)

(assert (=> b!5859620 (=> res!2465863 e!3592839)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2305362 () (InoxSet Context!10622))

(declare-fun lt!2305351 () (InoxSet Context!10622))

(assert (=> b!5859620 (= res!2465863 (not (= lt!2305362 lt!2305351)))))

(declare-fun lt!2305359 () (InoxSet Context!10622))

(declare-fun lt!2305368 () (InoxSet Context!10622))

(assert (=> b!5859620 (= lt!2305351 ((_ map or) lt!2305359 lt!2305368))))

(declare-fun lt!2305344 () Context!10622)

(declare-datatypes ((List!64082 0))(
  ( (Nil!63958) (Cons!63958 (h!70406 C!32124) (t!377453 List!64082)) )
))
(declare-fun s!2326 () List!64082)

(declare-fun derivationStepZipperDown!1193 (Regex!15927 Context!10622 C!32124) (InoxSet Context!10622))

(assert (=> b!5859620 (= lt!2305368 (derivationStepZipperDown!1193 (regTwo!32367 r!7292) lt!2305344 (h!70406 s!2326)))))

(assert (=> b!5859620 (= lt!2305359 (derivationStepZipperDown!1193 (regOne!32367 r!7292) lt!2305344 (h!70406 s!2326)))))

(declare-fun b!5859621 () Bool)

(declare-fun tp!1620923 () Bool)

(declare-fun tp!1620921 () Bool)

(assert (=> b!5859621 (= e!3592842 (and tp!1620923 tp!1620921))))

(declare-fun b!5859622 () Bool)

(declare-fun e!3592847 () Bool)

(declare-fun matchZipper!1993 ((InoxSet Context!10622) List!64082) Bool)

(assert (=> b!5859622 (= e!3592847 (matchZipper!1993 lt!2305368 (t!377453 s!2326)))))

(declare-fun res!2465853 () Bool)

(declare-fun e!3592846 () Bool)

(assert (=> start!599356 (=> (not res!2465853) (not e!3592846))))

(declare-fun validRegex!7663 (Regex!15927) Bool)

(assert (=> start!599356 (= res!2465853 (validRegex!7663 r!7292))))

(assert (=> start!599356 e!3592846))

(assert (=> start!599356 e!3592842))

(declare-fun condSetEmpty!39732 () Bool)

(declare-fun z!1189 () (InoxSet Context!10622))

(assert (=> start!599356 (= condSetEmpty!39732 (= z!1189 ((as const (Array Context!10622 Bool)) false)))))

(declare-fun setRes!39732 () Bool)

(assert (=> start!599356 setRes!39732))

(assert (=> start!599356 e!3592838))

(declare-fun e!3592840 () Bool)

(assert (=> start!599356 e!3592840))

(declare-fun b!5859623 () Bool)

(declare-fun e!3592836 () Bool)

(declare-fun e!3592848 () Bool)

(assert (=> b!5859623 (= e!3592836 e!3592848)))

(declare-fun res!2465865 () Bool)

(assert (=> b!5859623 (=> res!2465865 e!3592848)))

(declare-fun lt!2305355 () Bool)

(declare-fun lt!2305345 () Bool)

(assert (=> b!5859623 (= res!2465865 (not (= lt!2305355 lt!2305345)))))

(assert (=> b!5859623 (= lt!2305345 (matchZipper!1993 z!1189 s!2326))))

(assert (=> b!5859623 (= lt!2305355 (matchZipper!1993 lt!2305351 (t!377453 s!2326)))))

(declare-fun setIsEmpty!39732 () Bool)

(assert (=> setIsEmpty!39732 setRes!39732))

(declare-fun b!5859624 () Bool)

(declare-fun e!3592845 () Bool)

(assert (=> b!5859624 (= e!3592845 (inv!83064 lt!2305344))))

(declare-fun lambda!320394 () Int)

(declare-fun lt!2305354 () (InoxSet Context!10622))

(declare-fun lt!2305350 () Context!10622)

(declare-fun flatMap!1458 ((InoxSet Context!10622) Int) (InoxSet Context!10622))

(declare-fun derivationStepZipperUp!1119 (Context!10622 C!32124) (InoxSet Context!10622))

(assert (=> b!5859624 (= (flatMap!1458 lt!2305354 lambda!320394) (derivationStepZipperUp!1119 lt!2305350 (h!70406 s!2326)))))

(declare-datatypes ((Unit!157125 0))(
  ( (Unit!157126) )
))
(declare-fun lt!2305364 () Unit!157125)

(declare-fun lemmaFlatMapOnSingletonSet!986 ((InoxSet Context!10622) Context!10622 Int) Unit!157125)

(assert (=> b!5859624 (= lt!2305364 (lemmaFlatMapOnSingletonSet!986 lt!2305354 lt!2305350 lambda!320394))))

(declare-fun lt!2305367 () Context!10622)

(declare-fun lt!2305347 () (InoxSet Context!10622))

(assert (=> b!5859624 (= (flatMap!1458 lt!2305347 lambda!320394) (derivationStepZipperUp!1119 lt!2305367 (h!70406 s!2326)))))

(declare-fun lt!2305357 () Unit!157125)

(assert (=> b!5859624 (= lt!2305357 (lemmaFlatMapOnSingletonSet!986 lt!2305347 lt!2305367 lambda!320394))))

(declare-fun lt!2305363 () (InoxSet Context!10622))

(assert (=> b!5859624 (= lt!2305363 (derivationStepZipperUp!1119 lt!2305350 (h!70406 s!2326)))))

(declare-fun lt!2305352 () (InoxSet Context!10622))

(assert (=> b!5859624 (= lt!2305352 (derivationStepZipperUp!1119 lt!2305367 (h!70406 s!2326)))))

(assert (=> b!5859624 (= lt!2305354 (store ((as const (Array Context!10622 Bool)) false) lt!2305350 true))))

(assert (=> b!5859624 (= lt!2305350 (Context!10623 (Cons!63956 (regTwo!32367 r!7292) Nil!63956)))))

(assert (=> b!5859624 (= lt!2305347 (store ((as const (Array Context!10622 Bool)) false) lt!2305367 true))))

(assert (=> b!5859624 (= lt!2305367 (Context!10623 (Cons!63956 (regOne!32367 r!7292) Nil!63956)))))

(declare-fun b!5859625 () Bool)

(declare-fun res!2465859 () Bool)

(assert (=> b!5859625 (=> res!2465859 e!3592843)))

(declare-fun generalisedConcat!1524 (List!64080) Regex!15927)

(assert (=> b!5859625 (= res!2465859 (not (= r!7292 (generalisedConcat!1524 (exprs!5811 (h!70405 zl!343))))))))

(declare-fun b!5859626 () Bool)

(assert (=> b!5859626 (= e!3592846 (not e!3592843))))

(declare-fun res!2465852 () Bool)

(assert (=> b!5859626 (=> res!2465852 e!3592843)))

(assert (=> b!5859626 (= res!2465852 (not ((_ is Cons!63957) zl!343)))))

(declare-fun lt!2305360 () Bool)

(declare-fun matchRSpec!3028 (Regex!15927 List!64082) Bool)

(assert (=> b!5859626 (= lt!2305360 (matchRSpec!3028 r!7292 s!2326))))

(declare-fun matchR!8110 (Regex!15927 List!64082) Bool)

(assert (=> b!5859626 (= lt!2305360 (matchR!8110 r!7292 s!2326))))

(declare-fun lt!2305361 () Unit!157125)

(declare-fun mainMatchTheorem!3028 (Regex!15927 List!64082) Unit!157125)

(assert (=> b!5859626 (= lt!2305361 (mainMatchTheorem!3028 r!7292 s!2326))))

(assert (=> b!5859627 (= e!3592839 e!3592836)))

(declare-fun res!2465861 () Bool)

(assert (=> b!5859627 (=> res!2465861 e!3592836)))

(declare-fun derivationStepZipper!1926 ((InoxSet Context!10622) C!32124) (InoxSet Context!10622))

(assert (=> b!5859627 (= res!2465861 (not (= (derivationStepZipper!1926 z!1189 (h!70406 s!2326)) lt!2305351)))))

(assert (=> b!5859627 (= (flatMap!1458 z!1189 lambda!320394) (derivationStepZipperUp!1119 (h!70405 zl!343) (h!70406 s!2326)))))

(declare-fun lt!2305358 () Unit!157125)

(assert (=> b!5859627 (= lt!2305358 (lemmaFlatMapOnSingletonSet!986 z!1189 (h!70405 zl!343) lambda!320394))))

(declare-fun b!5859628 () Bool)

(declare-fun tp!1620924 () Bool)

(assert (=> b!5859628 (= e!3592842 tp!1620924)))

(declare-fun b!5859629 () Bool)

(declare-fun res!2465856 () Bool)

(assert (=> b!5859629 (=> res!2465856 e!3592843)))

(assert (=> b!5859629 (= res!2465856 (not ((_ is Cons!63956) (exprs!5811 (h!70405 zl!343)))))))

(declare-fun b!5859630 () Bool)

(declare-fun e!3592841 () Bool)

(declare-fun tp!1620920 () Bool)

(assert (=> b!5859630 (= e!3592841 tp!1620920)))

(declare-fun b!5859631 () Bool)

(declare-fun res!2465866 () Bool)

(assert (=> b!5859631 (=> res!2465866 e!3592843)))

(declare-fun isEmpty!35814 (List!64081) Bool)

(assert (=> b!5859631 (= res!2465866 (not (isEmpty!35814 (t!377452 zl!343))))))

(declare-fun b!5859632 () Bool)

(declare-fun res!2465855 () Bool)

(assert (=> b!5859632 (=> res!2465855 e!3592843)))

(declare-fun generalisedUnion!1771 (List!64080) Regex!15927)

(declare-fun unfocusZipperList!1348 (List!64081) List!64080)

(assert (=> b!5859632 (= res!2465855 (not (= r!7292 (generalisedUnion!1771 (unfocusZipperList!1348 zl!343)))))))

(declare-fun setNonEmpty!39732 () Bool)

(declare-fun tp!1620916 () Bool)

(declare-fun setElem!39732 () Context!10622)

(assert (=> setNonEmpty!39732 (= setRes!39732 (and tp!1620916 (inv!83064 setElem!39732) e!3592841))))

(declare-fun setRest!39732 () (InoxSet Context!10622))

(assert (=> setNonEmpty!39732 (= z!1189 ((_ map or) (store ((as const (Array Context!10622 Bool)) false) setElem!39732 true) setRest!39732))))

(declare-fun b!5859633 () Bool)

(declare-fun tp!1620918 () Bool)

(assert (=> b!5859633 (= e!3592840 (and tp_is_empty!41107 tp!1620918))))

(declare-fun b!5859634 () Bool)

(assert (=> b!5859634 (= e!3592848 e!3592845)))

(declare-fun res!2465858 () Bool)

(assert (=> b!5859634 (=> res!2465858 e!3592845)))

(declare-fun lt!2305346 () Bool)

(assert (=> b!5859634 (= res!2465858 (or (not (= lt!2305346 lt!2305355)) (not (= lt!2305346 lt!2305345))))))

(assert (=> b!5859634 (= lt!2305355 lt!2305346)))

(assert (=> b!5859634 (= lt!2305346 e!3592847)))

(declare-fun res!2465854 () Bool)

(assert (=> b!5859634 (=> res!2465854 e!3592847)))

(assert (=> b!5859634 (= res!2465854 (matchZipper!1993 lt!2305359 (t!377453 s!2326)))))

(declare-fun lt!2305365 () Unit!157125)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!828 ((InoxSet Context!10622) (InoxSet Context!10622) List!64082) Unit!157125)

(assert (=> b!5859634 (= lt!2305365 (lemmaZipperConcatMatchesSameAsBothZippers!828 lt!2305359 lt!2305368 (t!377453 s!2326)))))

(declare-fun b!5859635 () Bool)

(declare-fun tp!1620919 () Bool)

(assert (=> b!5859635 (= e!3592844 tp!1620919)))

(declare-fun b!5859636 () Bool)

(declare-fun tp!1620917 () Bool)

(declare-fun tp!1620915 () Bool)

(assert (=> b!5859636 (= e!3592842 (and tp!1620917 tp!1620915))))

(declare-fun b!5859637 () Bool)

(declare-fun res!2465862 () Bool)

(assert (=> b!5859637 (=> (not res!2465862) (not e!3592846))))

(declare-fun unfocusZipper!1669 (List!64081) Regex!15927)

(assert (=> b!5859637 (= res!2465862 (= r!7292 (unfocusZipper!1669 zl!343)))))

(declare-fun b!5859638 () Bool)

(declare-fun e!3592849 () Bool)

(assert (=> b!5859638 (= e!3592843 e!3592849)))

(declare-fun res!2465860 () Bool)

(assert (=> b!5859638 (=> res!2465860 e!3592849)))

(declare-fun lt!2305356 () Bool)

(declare-fun lt!2305353 () Bool)

(assert (=> b!5859638 (= res!2465860 (or (not (= lt!2305360 (or lt!2305356 lt!2305353))) ((_ is Nil!63958) s!2326)))))

(assert (=> b!5859638 (= lt!2305353 (matchRSpec!3028 (regTwo!32367 r!7292) s!2326))))

(assert (=> b!5859638 (= lt!2305353 (matchR!8110 (regTwo!32367 r!7292) s!2326))))

(declare-fun lt!2305348 () Unit!157125)

(assert (=> b!5859638 (= lt!2305348 (mainMatchTheorem!3028 (regTwo!32367 r!7292) s!2326))))

(assert (=> b!5859638 (= lt!2305356 (matchRSpec!3028 (regOne!32367 r!7292) s!2326))))

(assert (=> b!5859638 (= lt!2305356 (matchR!8110 (regOne!32367 r!7292) s!2326))))

(declare-fun lt!2305349 () Unit!157125)

(assert (=> b!5859638 (= lt!2305349 (mainMatchTheorem!3028 (regOne!32367 r!7292) s!2326))))

(declare-fun b!5859639 () Bool)

(assert (=> b!5859639 (= e!3592849 e!3592837)))

(declare-fun res!2465851 () Bool)

(assert (=> b!5859639 (=> res!2465851 e!3592837)))

(declare-fun lt!2305366 () (InoxSet Context!10622))

(assert (=> b!5859639 (= res!2465851 (not (= lt!2305366 lt!2305362)))))

(assert (=> b!5859639 (= lt!2305362 (derivationStepZipperDown!1193 r!7292 lt!2305344 (h!70406 s!2326)))))

(assert (=> b!5859639 (= lt!2305344 (Context!10623 Nil!63956))))

(assert (=> b!5859639 (= lt!2305366 (derivationStepZipperUp!1119 (Context!10623 (Cons!63956 r!7292 Nil!63956)) (h!70406 s!2326)))))

(declare-fun b!5859640 () Bool)

(declare-fun res!2465857 () Bool)

(assert (=> b!5859640 (=> (not res!2465857) (not e!3592846))))

(declare-fun toList!9711 ((InoxSet Context!10622)) List!64081)

(assert (=> b!5859640 (= res!2465857 (= (toList!9711 z!1189) zl!343))))

(assert (= (and start!599356 res!2465853) b!5859640))

(assert (= (and b!5859640 res!2465857) b!5859637))

(assert (= (and b!5859637 res!2465862) b!5859626))

(assert (= (and b!5859626 (not res!2465852)) b!5859631))

(assert (= (and b!5859631 (not res!2465866)) b!5859625))

(assert (= (and b!5859625 (not res!2465859)) b!5859629))

(assert (= (and b!5859629 (not res!2465856)) b!5859632))

(assert (= (and b!5859632 (not res!2465855)) b!5859618))

(assert (= (and b!5859618 (not res!2465864)) b!5859638))

(assert (= (and b!5859638 (not res!2465860)) b!5859639))

(assert (= (and b!5859639 (not res!2465851)) b!5859620))

(assert (= (and b!5859620 (not res!2465863)) b!5859627))

(assert (= (and b!5859627 (not res!2465861)) b!5859623))

(assert (= (and b!5859623 (not res!2465865)) b!5859634))

(assert (= (and b!5859634 (not res!2465854)) b!5859622))

(assert (= (and b!5859634 (not res!2465858)) b!5859624))

(assert (= (and start!599356 ((_ is ElementMatch!15927) r!7292)) b!5859619))

(assert (= (and start!599356 ((_ is Concat!24772) r!7292)) b!5859621))

(assert (= (and start!599356 ((_ is Star!15927) r!7292)) b!5859628))

(assert (= (and start!599356 ((_ is Union!15927) r!7292)) b!5859636))

(assert (= (and start!599356 condSetEmpty!39732) setIsEmpty!39732))

(assert (= (and start!599356 (not condSetEmpty!39732)) setNonEmpty!39732))

(assert (= setNonEmpty!39732 b!5859630))

(assert (= b!5859617 b!5859635))

(assert (= (and start!599356 ((_ is Cons!63957) zl!343)) b!5859617))

(assert (= (and start!599356 ((_ is Cons!63958) s!2326)) b!5859633))

(declare-fun m!6777020 () Bool)

(assert (=> b!5859625 m!6777020))

(declare-fun m!6777022 () Bool)

(assert (=> b!5859640 m!6777022))

(declare-fun m!6777024 () Bool)

(assert (=> b!5859623 m!6777024))

(declare-fun m!6777026 () Bool)

(assert (=> b!5859623 m!6777026))

(declare-fun m!6777028 () Bool)

(assert (=> b!5859631 m!6777028))

(declare-fun m!6777030 () Bool)

(assert (=> b!5859637 m!6777030))

(declare-fun m!6777032 () Bool)

(assert (=> b!5859626 m!6777032))

(declare-fun m!6777034 () Bool)

(assert (=> b!5859626 m!6777034))

(declare-fun m!6777036 () Bool)

(assert (=> b!5859626 m!6777036))

(declare-fun m!6777038 () Bool)

(assert (=> b!5859622 m!6777038))

(declare-fun m!6777040 () Bool)

(assert (=> start!599356 m!6777040))

(declare-fun m!6777042 () Bool)

(assert (=> b!5859638 m!6777042))

(declare-fun m!6777044 () Bool)

(assert (=> b!5859638 m!6777044))

(declare-fun m!6777046 () Bool)

(assert (=> b!5859638 m!6777046))

(declare-fun m!6777048 () Bool)

(assert (=> b!5859638 m!6777048))

(declare-fun m!6777050 () Bool)

(assert (=> b!5859638 m!6777050))

(declare-fun m!6777052 () Bool)

(assert (=> b!5859638 m!6777052))

(declare-fun m!6777054 () Bool)

(assert (=> b!5859627 m!6777054))

(declare-fun m!6777056 () Bool)

(assert (=> b!5859627 m!6777056))

(declare-fun m!6777058 () Bool)

(assert (=> b!5859627 m!6777058))

(declare-fun m!6777060 () Bool)

(assert (=> b!5859627 m!6777060))

(declare-fun m!6777062 () Bool)

(assert (=> b!5859620 m!6777062))

(declare-fun m!6777064 () Bool)

(assert (=> b!5859620 m!6777064))

(declare-fun m!6777066 () Bool)

(assert (=> b!5859624 m!6777066))

(declare-fun m!6777068 () Bool)

(assert (=> b!5859624 m!6777068))

(declare-fun m!6777070 () Bool)

(assert (=> b!5859624 m!6777070))

(declare-fun m!6777072 () Bool)

(assert (=> b!5859624 m!6777072))

(declare-fun m!6777074 () Bool)

(assert (=> b!5859624 m!6777074))

(declare-fun m!6777076 () Bool)

(assert (=> b!5859624 m!6777076))

(declare-fun m!6777078 () Bool)

(assert (=> b!5859624 m!6777078))

(declare-fun m!6777080 () Bool)

(assert (=> b!5859624 m!6777080))

(declare-fun m!6777082 () Bool)

(assert (=> b!5859624 m!6777082))

(declare-fun m!6777084 () Bool)

(assert (=> setNonEmpty!39732 m!6777084))

(declare-fun m!6777086 () Bool)

(assert (=> b!5859632 m!6777086))

(assert (=> b!5859632 m!6777086))

(declare-fun m!6777088 () Bool)

(assert (=> b!5859632 m!6777088))

(declare-fun m!6777090 () Bool)

(assert (=> b!5859639 m!6777090))

(declare-fun m!6777092 () Bool)

(assert (=> b!5859639 m!6777092))

(declare-fun m!6777094 () Bool)

(assert (=> b!5859634 m!6777094))

(declare-fun m!6777096 () Bool)

(assert (=> b!5859634 m!6777096))

(declare-fun m!6777098 () Bool)

(assert (=> b!5859617 m!6777098))

(check-sat (not b!5859617) (not b!5859630) (not setNonEmpty!39732) (not b!5859623) (not start!599356) (not b!5859624) (not b!5859637) (not b!5859633) (not b!5859627) tp_is_empty!41107 (not b!5859635) (not b!5859639) (not b!5859626) (not b!5859632) (not b!5859628) (not b!5859631) (not b!5859636) (not b!5859640) (not b!5859638) (not b!5859621) (not b!5859634) (not b!5859625) (not b!5859620) (not b!5859622))
(check-sat)
(get-model)

(declare-fun b!5860073 () Bool)

(assert (=> b!5860073 true))

(assert (=> b!5860073 true))

(declare-fun bs!1380644 () Bool)

(declare-fun b!5860067 () Bool)

(assert (= bs!1380644 (and b!5860067 b!5860073)))

(declare-fun lambda!320427 () Int)

(declare-fun lambda!320426 () Int)

(assert (=> bs!1380644 (not (= lambda!320427 lambda!320426))))

(assert (=> b!5860067 true))

(assert (=> b!5860067 true))

(declare-fun b!5860066 () Bool)

(declare-fun c!1039510 () Bool)

(assert (=> b!5860066 (= c!1039510 ((_ is Union!15927) (regTwo!32367 r!7292)))))

(declare-fun e!3593088 () Bool)

(declare-fun e!3593085 () Bool)

(assert (=> b!5860066 (= e!3593088 e!3593085)))

(declare-fun e!3593090 () Bool)

(declare-fun call!459448 () Bool)

(assert (=> b!5860067 (= e!3593090 call!459448)))

(declare-fun b!5860068 () Bool)

(declare-fun e!3593087 () Bool)

(declare-fun e!3593091 () Bool)

(assert (=> b!5860068 (= e!3593087 e!3593091)))

(declare-fun res!2465992 () Bool)

(assert (=> b!5860068 (= res!2465992 (not ((_ is EmptyLang!15927) (regTwo!32367 r!7292))))))

(assert (=> b!5860068 (=> (not res!2465992) (not e!3593091))))

(declare-fun b!5860069 () Bool)

(declare-fun res!2465994 () Bool)

(declare-fun e!3593086 () Bool)

(assert (=> b!5860069 (=> res!2465994 e!3593086)))

(declare-fun call!459447 () Bool)

(assert (=> b!5860069 (= res!2465994 call!459447)))

(assert (=> b!5860069 (= e!3593090 e!3593086)))

(declare-fun d!1840273 () Bool)

(declare-fun c!1039509 () Bool)

(assert (=> d!1840273 (= c!1039509 ((_ is EmptyExpr!15927) (regTwo!32367 r!7292)))))

(assert (=> d!1840273 (= (matchRSpec!3028 (regTwo!32367 r!7292) s!2326) e!3593087)))

(declare-fun bm!459442 () Bool)

(declare-fun isEmpty!35817 (List!64082) Bool)

(assert (=> bm!459442 (= call!459447 (isEmpty!35817 s!2326))))

(declare-fun b!5860070 () Bool)

(declare-fun c!1039512 () Bool)

(assert (=> b!5860070 (= c!1039512 ((_ is ElementMatch!15927) (regTwo!32367 r!7292)))))

(assert (=> b!5860070 (= e!3593091 e!3593088)))

(declare-fun c!1039511 () Bool)

(declare-fun bm!459443 () Bool)

(declare-fun Exists!2999 (Int) Bool)

(assert (=> bm!459443 (= call!459448 (Exists!2999 (ite c!1039511 lambda!320426 lambda!320427)))))

(declare-fun b!5860071 () Bool)

(declare-fun e!3593089 () Bool)

(assert (=> b!5860071 (= e!3593085 e!3593089)))

(declare-fun res!2465993 () Bool)

(assert (=> b!5860071 (= res!2465993 (matchRSpec!3028 (regOne!32367 (regTwo!32367 r!7292)) s!2326))))

(assert (=> b!5860071 (=> res!2465993 e!3593089)))

(declare-fun b!5860072 () Bool)

(assert (=> b!5860072 (= e!3593085 e!3593090)))

(assert (=> b!5860072 (= c!1039511 ((_ is Star!15927) (regTwo!32367 r!7292)))))

(assert (=> b!5860073 (= e!3593086 call!459448)))

(declare-fun b!5860074 () Bool)

(assert (=> b!5860074 (= e!3593089 (matchRSpec!3028 (regTwo!32367 (regTwo!32367 r!7292)) s!2326))))

(declare-fun b!5860075 () Bool)

(assert (=> b!5860075 (= e!3593088 (= s!2326 (Cons!63958 (c!1039387 (regTwo!32367 r!7292)) Nil!63958)))))

(declare-fun b!5860076 () Bool)

(assert (=> b!5860076 (= e!3593087 call!459447)))

(assert (= (and d!1840273 c!1039509) b!5860076))

(assert (= (and d!1840273 (not c!1039509)) b!5860068))

(assert (= (and b!5860068 res!2465992) b!5860070))

(assert (= (and b!5860070 c!1039512) b!5860075))

(assert (= (and b!5860070 (not c!1039512)) b!5860066))

(assert (= (and b!5860066 c!1039510) b!5860071))

(assert (= (and b!5860066 (not c!1039510)) b!5860072))

(assert (= (and b!5860071 (not res!2465993)) b!5860074))

(assert (= (and b!5860072 c!1039511) b!5860069))

(assert (= (and b!5860072 (not c!1039511)) b!5860067))

(assert (= (and b!5860069 (not res!2465994)) b!5860073))

(assert (= (or b!5860073 b!5860067) bm!459443))

(assert (= (or b!5860076 b!5860069) bm!459442))

(declare-fun m!6777324 () Bool)

(assert (=> bm!459442 m!6777324))

(declare-fun m!6777326 () Bool)

(assert (=> bm!459443 m!6777326))

(declare-fun m!6777328 () Bool)

(assert (=> b!5860071 m!6777328))

(declare-fun m!6777330 () Bool)

(assert (=> b!5860074 m!6777330))

(assert (=> b!5859638 d!1840273))

(declare-fun d!1840275 () Bool)

(assert (=> d!1840275 (= (matchR!8110 (regOne!32367 r!7292) s!2326) (matchRSpec!3028 (regOne!32367 r!7292) s!2326))))

(declare-fun lt!2305404 () Unit!157125)

(declare-fun choose!44429 (Regex!15927 List!64082) Unit!157125)

(assert (=> d!1840275 (= lt!2305404 (choose!44429 (regOne!32367 r!7292) s!2326))))

(assert (=> d!1840275 (validRegex!7663 (regOne!32367 r!7292))))

(assert (=> d!1840275 (= (mainMatchTheorem!3028 (regOne!32367 r!7292) s!2326) lt!2305404)))

(declare-fun bs!1380645 () Bool)

(assert (= bs!1380645 d!1840275))

(assert (=> bs!1380645 m!6777052))

(assert (=> bs!1380645 m!6777048))

(declare-fun m!6777332 () Bool)

(assert (=> bs!1380645 m!6777332))

(declare-fun m!6777334 () Bool)

(assert (=> bs!1380645 m!6777334))

(assert (=> b!5859638 d!1840275))

(declare-fun b!5860109 () Bool)

(declare-fun e!3593109 () Bool)

(declare-fun e!3593110 () Bool)

(assert (=> b!5860109 (= e!3593109 e!3593110)))

(declare-fun c!1039520 () Bool)

(assert (=> b!5860109 (= c!1039520 ((_ is EmptyLang!15927) (regTwo!32367 r!7292)))))

(declare-fun b!5860110 () Bool)

(declare-fun res!2466015 () Bool)

(declare-fun e!3593106 () Bool)

(assert (=> b!5860110 (=> (not res!2466015) (not e!3593106))))

(declare-fun call!459451 () Bool)

(assert (=> b!5860110 (= res!2466015 (not call!459451))))

(declare-fun b!5860111 () Bool)

(declare-fun res!2466011 () Bool)

(declare-fun e!3593112 () Bool)

(assert (=> b!5860111 (=> res!2466011 e!3593112)))

(assert (=> b!5860111 (= res!2466011 e!3593106)))

(declare-fun res!2466018 () Bool)

(assert (=> b!5860111 (=> (not res!2466018) (not e!3593106))))

(declare-fun lt!2305407 () Bool)

(assert (=> b!5860111 (= res!2466018 lt!2305407)))

(declare-fun b!5860112 () Bool)

(declare-fun head!12408 (List!64082) C!32124)

(assert (=> b!5860112 (= e!3593106 (= (head!12408 s!2326) (c!1039387 (regTwo!32367 r!7292))))))

(declare-fun d!1840277 () Bool)

(assert (=> d!1840277 e!3593109))

(declare-fun c!1039519 () Bool)

(assert (=> d!1840277 (= c!1039519 ((_ is EmptyExpr!15927) (regTwo!32367 r!7292)))))

(declare-fun e!3593107 () Bool)

(assert (=> d!1840277 (= lt!2305407 e!3593107)))

(declare-fun c!1039521 () Bool)

(assert (=> d!1840277 (= c!1039521 (isEmpty!35817 s!2326))))

(assert (=> d!1840277 (validRegex!7663 (regTwo!32367 r!7292))))

(assert (=> d!1840277 (= (matchR!8110 (regTwo!32367 r!7292) s!2326) lt!2305407)))

(declare-fun b!5860113 () Bool)

(declare-fun e!3593111 () Bool)

(assert (=> b!5860113 (= e!3593112 e!3593111)))

(declare-fun res!2466012 () Bool)

(assert (=> b!5860113 (=> (not res!2466012) (not e!3593111))))

(assert (=> b!5860113 (= res!2466012 (not lt!2305407))))

(declare-fun b!5860114 () Bool)

(assert (=> b!5860114 (= e!3593109 (= lt!2305407 call!459451))))

(declare-fun b!5860115 () Bool)

(declare-fun res!2466017 () Bool)

(declare-fun e!3593108 () Bool)

(assert (=> b!5860115 (=> res!2466017 e!3593108)))

(declare-fun tail!11493 (List!64082) List!64082)

(assert (=> b!5860115 (= res!2466017 (not (isEmpty!35817 (tail!11493 s!2326))))))

(declare-fun b!5860116 () Bool)

(declare-fun res!2466016 () Bool)

(assert (=> b!5860116 (=> res!2466016 e!3593112)))

(assert (=> b!5860116 (= res!2466016 (not ((_ is ElementMatch!15927) (regTwo!32367 r!7292))))))

(assert (=> b!5860116 (= e!3593110 e!3593112)))

(declare-fun b!5860117 () Bool)

(assert (=> b!5860117 (= e!3593111 e!3593108)))

(declare-fun res!2466014 () Bool)

(assert (=> b!5860117 (=> res!2466014 e!3593108)))

(assert (=> b!5860117 (= res!2466014 call!459451)))

(declare-fun b!5860118 () Bool)

(declare-fun res!2466013 () Bool)

(assert (=> b!5860118 (=> (not res!2466013) (not e!3593106))))

(assert (=> b!5860118 (= res!2466013 (isEmpty!35817 (tail!11493 s!2326)))))

(declare-fun b!5860119 () Bool)

(declare-fun nullable!5927 (Regex!15927) Bool)

(assert (=> b!5860119 (= e!3593107 (nullable!5927 (regTwo!32367 r!7292)))))

(declare-fun bm!459446 () Bool)

(assert (=> bm!459446 (= call!459451 (isEmpty!35817 s!2326))))

(declare-fun b!5860120 () Bool)

(declare-fun derivativeStep!4665 (Regex!15927 C!32124) Regex!15927)

(assert (=> b!5860120 (= e!3593107 (matchR!8110 (derivativeStep!4665 (regTwo!32367 r!7292) (head!12408 s!2326)) (tail!11493 s!2326)))))

(declare-fun b!5860121 () Bool)

(assert (=> b!5860121 (= e!3593110 (not lt!2305407))))

(declare-fun b!5860122 () Bool)

(assert (=> b!5860122 (= e!3593108 (not (= (head!12408 s!2326) (c!1039387 (regTwo!32367 r!7292)))))))

(assert (= (and d!1840277 c!1039521) b!5860119))

(assert (= (and d!1840277 (not c!1039521)) b!5860120))

(assert (= (and d!1840277 c!1039519) b!5860114))

(assert (= (and d!1840277 (not c!1039519)) b!5860109))

(assert (= (and b!5860109 c!1039520) b!5860121))

(assert (= (and b!5860109 (not c!1039520)) b!5860116))

(assert (= (and b!5860116 (not res!2466016)) b!5860111))

(assert (= (and b!5860111 res!2466018) b!5860110))

(assert (= (and b!5860110 res!2466015) b!5860118))

(assert (= (and b!5860118 res!2466013) b!5860112))

(assert (= (and b!5860111 (not res!2466011)) b!5860113))

(assert (= (and b!5860113 res!2466012) b!5860117))

(assert (= (and b!5860117 (not res!2466014)) b!5860115))

(assert (= (and b!5860115 (not res!2466017)) b!5860122))

(assert (= (or b!5860114 b!5860110 b!5860117) bm!459446))

(assert (=> bm!459446 m!6777324))

(declare-fun m!6777336 () Bool)

(assert (=> b!5860112 m!6777336))

(declare-fun m!6777338 () Bool)

(assert (=> b!5860118 m!6777338))

(assert (=> b!5860118 m!6777338))

(declare-fun m!6777340 () Bool)

(assert (=> b!5860118 m!6777340))

(assert (=> b!5860115 m!6777338))

(assert (=> b!5860115 m!6777338))

(assert (=> b!5860115 m!6777340))

(assert (=> b!5860120 m!6777336))

(assert (=> b!5860120 m!6777336))

(declare-fun m!6777342 () Bool)

(assert (=> b!5860120 m!6777342))

(assert (=> b!5860120 m!6777338))

(assert (=> b!5860120 m!6777342))

(assert (=> b!5860120 m!6777338))

(declare-fun m!6777344 () Bool)

(assert (=> b!5860120 m!6777344))

(assert (=> d!1840277 m!6777324))

(declare-fun m!6777346 () Bool)

(assert (=> d!1840277 m!6777346))

(declare-fun m!6777348 () Bool)

(assert (=> b!5860119 m!6777348))

(assert (=> b!5860122 m!6777336))

(assert (=> b!5859638 d!1840277))

(declare-fun d!1840279 () Bool)

(assert (=> d!1840279 (= (matchR!8110 (regTwo!32367 r!7292) s!2326) (matchRSpec!3028 (regTwo!32367 r!7292) s!2326))))

(declare-fun lt!2305408 () Unit!157125)

(assert (=> d!1840279 (= lt!2305408 (choose!44429 (regTwo!32367 r!7292) s!2326))))

(assert (=> d!1840279 (validRegex!7663 (regTwo!32367 r!7292))))

(assert (=> d!1840279 (= (mainMatchTheorem!3028 (regTwo!32367 r!7292) s!2326) lt!2305408)))

(declare-fun bs!1380646 () Bool)

(assert (= bs!1380646 d!1840279))

(assert (=> bs!1380646 m!6777046))

(assert (=> bs!1380646 m!6777042))

(declare-fun m!6777350 () Bool)

(assert (=> bs!1380646 m!6777350))

(assert (=> bs!1380646 m!6777346))

(assert (=> b!5859638 d!1840279))

(declare-fun bs!1380647 () Bool)

(declare-fun b!5860130 () Bool)

(assert (= bs!1380647 (and b!5860130 b!5860073)))

(declare-fun lambda!320428 () Int)

(assert (=> bs!1380647 (= (and (= (reg!16256 (regOne!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292))) (= (regOne!32367 r!7292) (regTwo!32367 r!7292))) (= lambda!320428 lambda!320426))))

(declare-fun bs!1380648 () Bool)

(assert (= bs!1380648 (and b!5860130 b!5860067)))

(assert (=> bs!1380648 (not (= lambda!320428 lambda!320427))))

(assert (=> b!5860130 true))

(assert (=> b!5860130 true))

(declare-fun bs!1380649 () Bool)

(declare-fun b!5860124 () Bool)

(assert (= bs!1380649 (and b!5860124 b!5860073)))

(declare-fun lambda!320429 () Int)

(assert (=> bs!1380649 (not (= lambda!320429 lambda!320426))))

(declare-fun bs!1380650 () Bool)

(assert (= bs!1380650 (and b!5860124 b!5860067)))

(assert (=> bs!1380650 (= (and (= (regOne!32366 (regOne!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292))) (= (regTwo!32366 (regOne!32367 r!7292)) (regTwo!32366 (regTwo!32367 r!7292)))) (= lambda!320429 lambda!320427))))

(declare-fun bs!1380651 () Bool)

(assert (= bs!1380651 (and b!5860124 b!5860130)))

(assert (=> bs!1380651 (not (= lambda!320429 lambda!320428))))

(assert (=> b!5860124 true))

(assert (=> b!5860124 true))

(declare-fun b!5860123 () Bool)

(declare-fun c!1039523 () Bool)

(assert (=> b!5860123 (= c!1039523 ((_ is Union!15927) (regOne!32367 r!7292)))))

(declare-fun e!3593116 () Bool)

(declare-fun e!3593113 () Bool)

(assert (=> b!5860123 (= e!3593116 e!3593113)))

(declare-fun e!3593118 () Bool)

(declare-fun call!459453 () Bool)

(assert (=> b!5860124 (= e!3593118 call!459453)))

(declare-fun b!5860125 () Bool)

(declare-fun e!3593115 () Bool)

(declare-fun e!3593119 () Bool)

(assert (=> b!5860125 (= e!3593115 e!3593119)))

(declare-fun res!2466019 () Bool)

(assert (=> b!5860125 (= res!2466019 (not ((_ is EmptyLang!15927) (regOne!32367 r!7292))))))

(assert (=> b!5860125 (=> (not res!2466019) (not e!3593119))))

(declare-fun b!5860126 () Bool)

(declare-fun res!2466021 () Bool)

(declare-fun e!3593114 () Bool)

(assert (=> b!5860126 (=> res!2466021 e!3593114)))

(declare-fun call!459452 () Bool)

(assert (=> b!5860126 (= res!2466021 call!459452)))

(assert (=> b!5860126 (= e!3593118 e!3593114)))

(declare-fun d!1840281 () Bool)

(declare-fun c!1039522 () Bool)

(assert (=> d!1840281 (= c!1039522 ((_ is EmptyExpr!15927) (regOne!32367 r!7292)))))

(assert (=> d!1840281 (= (matchRSpec!3028 (regOne!32367 r!7292) s!2326) e!3593115)))

(declare-fun bm!459447 () Bool)

(assert (=> bm!459447 (= call!459452 (isEmpty!35817 s!2326))))

(declare-fun b!5860127 () Bool)

(declare-fun c!1039525 () Bool)

(assert (=> b!5860127 (= c!1039525 ((_ is ElementMatch!15927) (regOne!32367 r!7292)))))

(assert (=> b!5860127 (= e!3593119 e!3593116)))

(declare-fun bm!459448 () Bool)

(declare-fun c!1039524 () Bool)

(assert (=> bm!459448 (= call!459453 (Exists!2999 (ite c!1039524 lambda!320428 lambda!320429)))))

(declare-fun b!5860128 () Bool)

(declare-fun e!3593117 () Bool)

(assert (=> b!5860128 (= e!3593113 e!3593117)))

(declare-fun res!2466020 () Bool)

(assert (=> b!5860128 (= res!2466020 (matchRSpec!3028 (regOne!32367 (regOne!32367 r!7292)) s!2326))))

(assert (=> b!5860128 (=> res!2466020 e!3593117)))

(declare-fun b!5860129 () Bool)

(assert (=> b!5860129 (= e!3593113 e!3593118)))

(assert (=> b!5860129 (= c!1039524 ((_ is Star!15927) (regOne!32367 r!7292)))))

(assert (=> b!5860130 (= e!3593114 call!459453)))

(declare-fun b!5860131 () Bool)

(assert (=> b!5860131 (= e!3593117 (matchRSpec!3028 (regTwo!32367 (regOne!32367 r!7292)) s!2326))))

(declare-fun b!5860132 () Bool)

(assert (=> b!5860132 (= e!3593116 (= s!2326 (Cons!63958 (c!1039387 (regOne!32367 r!7292)) Nil!63958)))))

(declare-fun b!5860133 () Bool)

(assert (=> b!5860133 (= e!3593115 call!459452)))

(assert (= (and d!1840281 c!1039522) b!5860133))

(assert (= (and d!1840281 (not c!1039522)) b!5860125))

(assert (= (and b!5860125 res!2466019) b!5860127))

(assert (= (and b!5860127 c!1039525) b!5860132))

(assert (= (and b!5860127 (not c!1039525)) b!5860123))

(assert (= (and b!5860123 c!1039523) b!5860128))

(assert (= (and b!5860123 (not c!1039523)) b!5860129))

(assert (= (and b!5860128 (not res!2466020)) b!5860131))

(assert (= (and b!5860129 c!1039524) b!5860126))

(assert (= (and b!5860129 (not c!1039524)) b!5860124))

(assert (= (and b!5860126 (not res!2466021)) b!5860130))

(assert (= (or b!5860130 b!5860124) bm!459448))

(assert (= (or b!5860133 b!5860126) bm!459447))

(assert (=> bm!459447 m!6777324))

(declare-fun m!6777352 () Bool)

(assert (=> bm!459448 m!6777352))

(declare-fun m!6777354 () Bool)

(assert (=> b!5860128 m!6777354))

(declare-fun m!6777356 () Bool)

(assert (=> b!5860131 m!6777356))

(assert (=> b!5859638 d!1840281))

(declare-fun b!5860134 () Bool)

(declare-fun e!3593123 () Bool)

(declare-fun e!3593124 () Bool)

(assert (=> b!5860134 (= e!3593123 e!3593124)))

(declare-fun c!1039527 () Bool)

(assert (=> b!5860134 (= c!1039527 ((_ is EmptyLang!15927) (regOne!32367 r!7292)))))

(declare-fun b!5860135 () Bool)

(declare-fun res!2466026 () Bool)

(declare-fun e!3593120 () Bool)

(assert (=> b!5860135 (=> (not res!2466026) (not e!3593120))))

(declare-fun call!459454 () Bool)

(assert (=> b!5860135 (= res!2466026 (not call!459454))))

(declare-fun b!5860136 () Bool)

(declare-fun res!2466022 () Bool)

(declare-fun e!3593126 () Bool)

(assert (=> b!5860136 (=> res!2466022 e!3593126)))

(assert (=> b!5860136 (= res!2466022 e!3593120)))

(declare-fun res!2466029 () Bool)

(assert (=> b!5860136 (=> (not res!2466029) (not e!3593120))))

(declare-fun lt!2305409 () Bool)

(assert (=> b!5860136 (= res!2466029 lt!2305409)))

(declare-fun b!5860137 () Bool)

(assert (=> b!5860137 (= e!3593120 (= (head!12408 s!2326) (c!1039387 (regOne!32367 r!7292))))))

(declare-fun d!1840283 () Bool)

(assert (=> d!1840283 e!3593123))

(declare-fun c!1039526 () Bool)

(assert (=> d!1840283 (= c!1039526 ((_ is EmptyExpr!15927) (regOne!32367 r!7292)))))

(declare-fun e!3593121 () Bool)

(assert (=> d!1840283 (= lt!2305409 e!3593121)))

(declare-fun c!1039528 () Bool)

(assert (=> d!1840283 (= c!1039528 (isEmpty!35817 s!2326))))

(assert (=> d!1840283 (validRegex!7663 (regOne!32367 r!7292))))

(assert (=> d!1840283 (= (matchR!8110 (regOne!32367 r!7292) s!2326) lt!2305409)))

(declare-fun b!5860138 () Bool)

(declare-fun e!3593125 () Bool)

(assert (=> b!5860138 (= e!3593126 e!3593125)))

(declare-fun res!2466023 () Bool)

(assert (=> b!5860138 (=> (not res!2466023) (not e!3593125))))

(assert (=> b!5860138 (= res!2466023 (not lt!2305409))))

(declare-fun b!5860139 () Bool)

(assert (=> b!5860139 (= e!3593123 (= lt!2305409 call!459454))))

(declare-fun b!5860140 () Bool)

(declare-fun res!2466028 () Bool)

(declare-fun e!3593122 () Bool)

(assert (=> b!5860140 (=> res!2466028 e!3593122)))

(assert (=> b!5860140 (= res!2466028 (not (isEmpty!35817 (tail!11493 s!2326))))))

(declare-fun b!5860141 () Bool)

(declare-fun res!2466027 () Bool)

(assert (=> b!5860141 (=> res!2466027 e!3593126)))

(assert (=> b!5860141 (= res!2466027 (not ((_ is ElementMatch!15927) (regOne!32367 r!7292))))))

(assert (=> b!5860141 (= e!3593124 e!3593126)))

(declare-fun b!5860142 () Bool)

(assert (=> b!5860142 (= e!3593125 e!3593122)))

(declare-fun res!2466025 () Bool)

(assert (=> b!5860142 (=> res!2466025 e!3593122)))

(assert (=> b!5860142 (= res!2466025 call!459454)))

(declare-fun b!5860143 () Bool)

(declare-fun res!2466024 () Bool)

(assert (=> b!5860143 (=> (not res!2466024) (not e!3593120))))

(assert (=> b!5860143 (= res!2466024 (isEmpty!35817 (tail!11493 s!2326)))))

(declare-fun b!5860144 () Bool)

(assert (=> b!5860144 (= e!3593121 (nullable!5927 (regOne!32367 r!7292)))))

(declare-fun bm!459449 () Bool)

(assert (=> bm!459449 (= call!459454 (isEmpty!35817 s!2326))))

(declare-fun b!5860145 () Bool)

(assert (=> b!5860145 (= e!3593121 (matchR!8110 (derivativeStep!4665 (regOne!32367 r!7292) (head!12408 s!2326)) (tail!11493 s!2326)))))

(declare-fun b!5860146 () Bool)

(assert (=> b!5860146 (= e!3593124 (not lt!2305409))))

(declare-fun b!5860147 () Bool)

(assert (=> b!5860147 (= e!3593122 (not (= (head!12408 s!2326) (c!1039387 (regOne!32367 r!7292)))))))

(assert (= (and d!1840283 c!1039528) b!5860144))

(assert (= (and d!1840283 (not c!1039528)) b!5860145))

(assert (= (and d!1840283 c!1039526) b!5860139))

(assert (= (and d!1840283 (not c!1039526)) b!5860134))

(assert (= (and b!5860134 c!1039527) b!5860146))

(assert (= (and b!5860134 (not c!1039527)) b!5860141))

(assert (= (and b!5860141 (not res!2466027)) b!5860136))

(assert (= (and b!5860136 res!2466029) b!5860135))

(assert (= (and b!5860135 res!2466026) b!5860143))

(assert (= (and b!5860143 res!2466024) b!5860137))

(assert (= (and b!5860136 (not res!2466022)) b!5860138))

(assert (= (and b!5860138 res!2466023) b!5860142))

(assert (= (and b!5860142 (not res!2466025)) b!5860140))

(assert (= (and b!5860140 (not res!2466028)) b!5860147))

(assert (= (or b!5860139 b!5860135 b!5860142) bm!459449))

(assert (=> bm!459449 m!6777324))

(assert (=> b!5860137 m!6777336))

(assert (=> b!5860143 m!6777338))

(assert (=> b!5860143 m!6777338))

(assert (=> b!5860143 m!6777340))

(assert (=> b!5860140 m!6777338))

(assert (=> b!5860140 m!6777338))

(assert (=> b!5860140 m!6777340))

(assert (=> b!5860145 m!6777336))

(assert (=> b!5860145 m!6777336))

(declare-fun m!6777358 () Bool)

(assert (=> b!5860145 m!6777358))

(assert (=> b!5860145 m!6777338))

(assert (=> b!5860145 m!6777358))

(assert (=> b!5860145 m!6777338))

(declare-fun m!6777360 () Bool)

(assert (=> b!5860145 m!6777360))

(assert (=> d!1840283 m!6777324))

(assert (=> d!1840283 m!6777334))

(declare-fun m!6777362 () Bool)

(assert (=> b!5860144 m!6777362))

(assert (=> b!5860147 m!6777336))

(assert (=> b!5859638 d!1840283))

(declare-fun d!1840285 () Bool)

(declare-fun c!1039542 () Bool)

(assert (=> d!1840285 (= c!1039542 (and ((_ is ElementMatch!15927) r!7292) (= (c!1039387 r!7292) (h!70406 s!2326))))))

(declare-fun e!3593144 () (InoxSet Context!10622))

(assert (=> d!1840285 (= (derivationStepZipperDown!1193 r!7292 lt!2305344 (h!70406 s!2326)) e!3593144)))

(declare-fun b!5860170 () Bool)

(declare-fun e!3593143 () (InoxSet Context!10622))

(declare-fun call!459467 () (InoxSet Context!10622))

(assert (=> b!5860170 (= e!3593143 call!459467)))

(declare-fun b!5860171 () Bool)

(declare-fun e!3593142 () (InoxSet Context!10622))

(assert (=> b!5860171 (= e!3593142 call!459467)))

(declare-fun b!5860172 () Bool)

(assert (=> b!5860172 (= e!3593143 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459462 () Bool)

(declare-fun call!459469 () (InoxSet Context!10622))

(assert (=> bm!459462 (= call!459467 call!459469)))

(declare-fun bm!459463 () Bool)

(declare-fun call!459470 () List!64080)

(declare-fun c!1039541 () Bool)

(declare-fun call!459468 () (InoxSet Context!10622))

(assert (=> bm!459463 (= call!459468 (derivationStepZipperDown!1193 (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292)) (ite c!1039541 lt!2305344 (Context!10623 call!459470)) (h!70406 s!2326)))))

(declare-fun c!1039543 () Bool)

(declare-fun c!1039540 () Bool)

(declare-fun bm!459464 () Bool)

(declare-fun call!459471 () (InoxSet Context!10622))

(declare-fun call!459472 () List!64080)

(assert (=> bm!459464 (= call!459471 (derivationStepZipperDown!1193 (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292)))) (ite (or c!1039541 c!1039543) lt!2305344 (Context!10623 call!459472)) (h!70406 s!2326)))))

(declare-fun b!5860173 () Bool)

(declare-fun c!1039539 () Bool)

(assert (=> b!5860173 (= c!1039539 ((_ is Star!15927) r!7292))))

(assert (=> b!5860173 (= e!3593142 e!3593143)))

(declare-fun b!5860174 () Bool)

(declare-fun e!3593141 () Bool)

(assert (=> b!5860174 (= e!3593141 (nullable!5927 (regOne!32366 r!7292)))))

(declare-fun b!5860175 () Bool)

(declare-fun e!3593139 () (InoxSet Context!10622))

(assert (=> b!5860175 (= e!3593144 e!3593139)))

(assert (=> b!5860175 (= c!1039541 ((_ is Union!15927) r!7292))))

(declare-fun b!5860176 () Bool)

(declare-fun e!3593140 () (InoxSet Context!10622))

(assert (=> b!5860176 (= e!3593140 ((_ map or) call!459468 call!459469))))

(declare-fun b!5860177 () Bool)

(assert (=> b!5860177 (= e!3593140 e!3593142)))

(assert (=> b!5860177 (= c!1039540 ((_ is Concat!24772) r!7292))))

(declare-fun b!5860178 () Bool)

(assert (=> b!5860178 (= e!3593144 (store ((as const (Array Context!10622 Bool)) false) lt!2305344 true))))

(declare-fun bm!459465 () Bool)

(declare-fun $colon$colon!1832 (List!64080 Regex!15927) List!64080)

(assert (=> bm!459465 (= call!459470 ($colon$colon!1832 (exprs!5811 lt!2305344) (ite (or c!1039543 c!1039540) (regTwo!32366 r!7292) r!7292)))))

(declare-fun bm!459466 () Bool)

(assert (=> bm!459466 (= call!459469 call!459471)))

(declare-fun bm!459467 () Bool)

(assert (=> bm!459467 (= call!459472 call!459470)))

(declare-fun b!5860179 () Bool)

(assert (=> b!5860179 (= c!1039543 e!3593141)))

(declare-fun res!2466032 () Bool)

(assert (=> b!5860179 (=> (not res!2466032) (not e!3593141))))

(assert (=> b!5860179 (= res!2466032 ((_ is Concat!24772) r!7292))))

(assert (=> b!5860179 (= e!3593139 e!3593140)))

(declare-fun b!5860180 () Bool)

(assert (=> b!5860180 (= e!3593139 ((_ map or) call!459468 call!459471))))

(assert (= (and d!1840285 c!1039542) b!5860178))

(assert (= (and d!1840285 (not c!1039542)) b!5860175))

(assert (= (and b!5860175 c!1039541) b!5860180))

(assert (= (and b!5860175 (not c!1039541)) b!5860179))

(assert (= (and b!5860179 res!2466032) b!5860174))

(assert (= (and b!5860179 c!1039543) b!5860176))

(assert (= (and b!5860179 (not c!1039543)) b!5860177))

(assert (= (and b!5860177 c!1039540) b!5860171))

(assert (= (and b!5860177 (not c!1039540)) b!5860173))

(assert (= (and b!5860173 c!1039539) b!5860170))

(assert (= (and b!5860173 (not c!1039539)) b!5860172))

(assert (= (or b!5860171 b!5860170) bm!459467))

(assert (= (or b!5860171 b!5860170) bm!459462))

(assert (= (or b!5860176 bm!459467) bm!459465))

(assert (= (or b!5860176 bm!459462) bm!459466))

(assert (= (or b!5860180 bm!459466) bm!459464))

(assert (= (or b!5860180 b!5860176) bm!459463))

(declare-fun m!6777364 () Bool)

(assert (=> b!5860174 m!6777364))

(declare-fun m!6777366 () Bool)

(assert (=> bm!459465 m!6777366))

(declare-fun m!6777368 () Bool)

(assert (=> bm!459464 m!6777368))

(declare-fun m!6777370 () Bool)

(assert (=> b!5860178 m!6777370))

(declare-fun m!6777372 () Bool)

(assert (=> bm!459463 m!6777372))

(assert (=> b!5859639 d!1840285))

(declare-fun e!3593152 () (InoxSet Context!10622))

(declare-fun b!5860191 () Bool)

(declare-fun call!459475 () (InoxSet Context!10622))

(assert (=> b!5860191 (= e!3593152 ((_ map or) call!459475 (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (h!70406 s!2326))))))

(declare-fun b!5860192 () Bool)

(declare-fun e!3593153 () (InoxSet Context!10622))

(assert (=> b!5860192 (= e!3593153 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459470 () Bool)

(assert (=> bm!459470 (= call!459475 (derivationStepZipperDown!1193 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))) (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (h!70406 s!2326)))))

(declare-fun b!5860193 () Bool)

(assert (=> b!5860193 (= e!3593152 e!3593153)))

(declare-fun c!1039549 () Bool)

(assert (=> b!5860193 (= c!1039549 ((_ is Cons!63956) (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))))))

(declare-fun d!1840287 () Bool)

(declare-fun c!1039548 () Bool)

(declare-fun e!3593151 () Bool)

(assert (=> d!1840287 (= c!1039548 e!3593151)))

(declare-fun res!2466035 () Bool)

(assert (=> d!1840287 (=> (not res!2466035) (not e!3593151))))

(assert (=> d!1840287 (= res!2466035 ((_ is Cons!63956) (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))))))

(assert (=> d!1840287 (= (derivationStepZipperUp!1119 (Context!10623 (Cons!63956 r!7292 Nil!63956)) (h!70406 s!2326)) e!3593152)))

(declare-fun b!5860194 () Bool)

(assert (=> b!5860194 (= e!3593151 (nullable!5927 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))))))

(declare-fun b!5860195 () Bool)

(assert (=> b!5860195 (= e!3593153 call!459475)))

(assert (= (and d!1840287 res!2466035) b!5860194))

(assert (= (and d!1840287 c!1039548) b!5860191))

(assert (= (and d!1840287 (not c!1039548)) b!5860193))

(assert (= (and b!5860193 c!1039549) b!5860195))

(assert (= (and b!5860193 (not c!1039549)) b!5860192))

(assert (= (or b!5860191 b!5860195) bm!459470))

(declare-fun m!6777374 () Bool)

(assert (=> b!5860191 m!6777374))

(declare-fun m!6777376 () Bool)

(assert (=> bm!459470 m!6777376))

(declare-fun m!6777378 () Bool)

(assert (=> b!5860194 m!6777378))

(assert (=> b!5859639 d!1840287))

(declare-fun d!1840289 () Bool)

(declare-fun c!1039553 () Bool)

(assert (=> d!1840289 (= c!1039553 (and ((_ is ElementMatch!15927) (regTwo!32367 r!7292)) (= (c!1039387 (regTwo!32367 r!7292)) (h!70406 s!2326))))))

(declare-fun e!3593159 () (InoxSet Context!10622))

(assert (=> d!1840289 (= (derivationStepZipperDown!1193 (regTwo!32367 r!7292) lt!2305344 (h!70406 s!2326)) e!3593159)))

(declare-fun b!5860196 () Bool)

(declare-fun e!3593158 () (InoxSet Context!10622))

(declare-fun call!459476 () (InoxSet Context!10622))

(assert (=> b!5860196 (= e!3593158 call!459476)))

(declare-fun b!5860197 () Bool)

(declare-fun e!3593157 () (InoxSet Context!10622))

(assert (=> b!5860197 (= e!3593157 call!459476)))

(declare-fun b!5860198 () Bool)

(assert (=> b!5860198 (= e!3593158 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459471 () Bool)

(declare-fun call!459478 () (InoxSet Context!10622))

(assert (=> bm!459471 (= call!459476 call!459478)))

(declare-fun call!459479 () List!64080)

(declare-fun c!1039552 () Bool)

(declare-fun bm!459472 () Bool)

(declare-fun call!459477 () (InoxSet Context!10622))

(assert (=> bm!459472 (= call!459477 (derivationStepZipperDown!1193 (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292))) (ite c!1039552 lt!2305344 (Context!10623 call!459479)) (h!70406 s!2326)))))

(declare-fun c!1039554 () Bool)

(declare-fun c!1039551 () Bool)

(declare-fun bm!459473 () Bool)

(declare-fun call!459480 () (InoxSet Context!10622))

(declare-fun call!459481 () List!64080)

(assert (=> bm!459473 (= call!459480 (derivationStepZipperDown!1193 (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292))))) (ite (or c!1039552 c!1039554) lt!2305344 (Context!10623 call!459481)) (h!70406 s!2326)))))

(declare-fun b!5860199 () Bool)

(declare-fun c!1039550 () Bool)

(assert (=> b!5860199 (= c!1039550 ((_ is Star!15927) (regTwo!32367 r!7292)))))

(assert (=> b!5860199 (= e!3593157 e!3593158)))

(declare-fun b!5860200 () Bool)

(declare-fun e!3593156 () Bool)

(assert (=> b!5860200 (= e!3593156 (nullable!5927 (regOne!32366 (regTwo!32367 r!7292))))))

(declare-fun b!5860201 () Bool)

(declare-fun e!3593154 () (InoxSet Context!10622))

(assert (=> b!5860201 (= e!3593159 e!3593154)))

(assert (=> b!5860201 (= c!1039552 ((_ is Union!15927) (regTwo!32367 r!7292)))))

(declare-fun b!5860202 () Bool)

(declare-fun e!3593155 () (InoxSet Context!10622))

(assert (=> b!5860202 (= e!3593155 ((_ map or) call!459477 call!459478))))

(declare-fun b!5860203 () Bool)

(assert (=> b!5860203 (= e!3593155 e!3593157)))

(assert (=> b!5860203 (= c!1039551 ((_ is Concat!24772) (regTwo!32367 r!7292)))))

(declare-fun b!5860204 () Bool)

(assert (=> b!5860204 (= e!3593159 (store ((as const (Array Context!10622 Bool)) false) lt!2305344 true))))

(declare-fun bm!459474 () Bool)

(assert (=> bm!459474 (= call!459479 ($colon$colon!1832 (exprs!5811 lt!2305344) (ite (or c!1039554 c!1039551) (regTwo!32366 (regTwo!32367 r!7292)) (regTwo!32367 r!7292))))))

(declare-fun bm!459475 () Bool)

(assert (=> bm!459475 (= call!459478 call!459480)))

(declare-fun bm!459476 () Bool)

(assert (=> bm!459476 (= call!459481 call!459479)))

(declare-fun b!5860205 () Bool)

(assert (=> b!5860205 (= c!1039554 e!3593156)))

(declare-fun res!2466036 () Bool)

(assert (=> b!5860205 (=> (not res!2466036) (not e!3593156))))

(assert (=> b!5860205 (= res!2466036 ((_ is Concat!24772) (regTwo!32367 r!7292)))))

(assert (=> b!5860205 (= e!3593154 e!3593155)))

(declare-fun b!5860206 () Bool)

(assert (=> b!5860206 (= e!3593154 ((_ map or) call!459477 call!459480))))

(assert (= (and d!1840289 c!1039553) b!5860204))

(assert (= (and d!1840289 (not c!1039553)) b!5860201))

(assert (= (and b!5860201 c!1039552) b!5860206))

(assert (= (and b!5860201 (not c!1039552)) b!5860205))

(assert (= (and b!5860205 res!2466036) b!5860200))

(assert (= (and b!5860205 c!1039554) b!5860202))

(assert (= (and b!5860205 (not c!1039554)) b!5860203))

(assert (= (and b!5860203 c!1039551) b!5860197))

(assert (= (and b!5860203 (not c!1039551)) b!5860199))

(assert (= (and b!5860199 c!1039550) b!5860196))

(assert (= (and b!5860199 (not c!1039550)) b!5860198))

(assert (= (or b!5860197 b!5860196) bm!459476))

(assert (= (or b!5860197 b!5860196) bm!459471))

(assert (= (or b!5860202 bm!459476) bm!459474))

(assert (= (or b!5860202 bm!459471) bm!459475))

(assert (= (or b!5860206 bm!459475) bm!459473))

(assert (= (or b!5860206 b!5860202) bm!459472))

(declare-fun m!6777380 () Bool)

(assert (=> b!5860200 m!6777380))

(declare-fun m!6777382 () Bool)

(assert (=> bm!459474 m!6777382))

(declare-fun m!6777384 () Bool)

(assert (=> bm!459473 m!6777384))

(assert (=> b!5860204 m!6777370))

(declare-fun m!6777386 () Bool)

(assert (=> bm!459472 m!6777386))

(assert (=> b!5859620 d!1840289))

(declare-fun d!1840291 () Bool)

(declare-fun c!1039558 () Bool)

(assert (=> d!1840291 (= c!1039558 (and ((_ is ElementMatch!15927) (regOne!32367 r!7292)) (= (c!1039387 (regOne!32367 r!7292)) (h!70406 s!2326))))))

(declare-fun e!3593165 () (InoxSet Context!10622))

(assert (=> d!1840291 (= (derivationStepZipperDown!1193 (regOne!32367 r!7292) lt!2305344 (h!70406 s!2326)) e!3593165)))

(declare-fun b!5860207 () Bool)

(declare-fun e!3593164 () (InoxSet Context!10622))

(declare-fun call!459482 () (InoxSet Context!10622))

(assert (=> b!5860207 (= e!3593164 call!459482)))

(declare-fun b!5860208 () Bool)

(declare-fun e!3593163 () (InoxSet Context!10622))

(assert (=> b!5860208 (= e!3593163 call!459482)))

(declare-fun b!5860209 () Bool)

(assert (=> b!5860209 (= e!3593164 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459477 () Bool)

(declare-fun call!459484 () (InoxSet Context!10622))

(assert (=> bm!459477 (= call!459482 call!459484)))

(declare-fun c!1039557 () Bool)

(declare-fun call!459485 () List!64080)

(declare-fun bm!459478 () Bool)

(declare-fun call!459483 () (InoxSet Context!10622))

(assert (=> bm!459478 (= call!459483 (derivationStepZipperDown!1193 (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292))) (ite c!1039557 lt!2305344 (Context!10623 call!459485)) (h!70406 s!2326)))))

(declare-fun bm!459479 () Bool)

(declare-fun call!459487 () List!64080)

(declare-fun c!1039559 () Bool)

(declare-fun call!459486 () (InoxSet Context!10622))

(declare-fun c!1039556 () Bool)

(assert (=> bm!459479 (= call!459486 (derivationStepZipperDown!1193 (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292))))) (ite (or c!1039557 c!1039559) lt!2305344 (Context!10623 call!459487)) (h!70406 s!2326)))))

(declare-fun b!5860210 () Bool)

(declare-fun c!1039555 () Bool)

(assert (=> b!5860210 (= c!1039555 ((_ is Star!15927) (regOne!32367 r!7292)))))

(assert (=> b!5860210 (= e!3593163 e!3593164)))

(declare-fun b!5860211 () Bool)

(declare-fun e!3593162 () Bool)

(assert (=> b!5860211 (= e!3593162 (nullable!5927 (regOne!32366 (regOne!32367 r!7292))))))

(declare-fun b!5860212 () Bool)

(declare-fun e!3593160 () (InoxSet Context!10622))

(assert (=> b!5860212 (= e!3593165 e!3593160)))

(assert (=> b!5860212 (= c!1039557 ((_ is Union!15927) (regOne!32367 r!7292)))))

(declare-fun b!5860213 () Bool)

(declare-fun e!3593161 () (InoxSet Context!10622))

(assert (=> b!5860213 (= e!3593161 ((_ map or) call!459483 call!459484))))

(declare-fun b!5860214 () Bool)

(assert (=> b!5860214 (= e!3593161 e!3593163)))

(assert (=> b!5860214 (= c!1039556 ((_ is Concat!24772) (regOne!32367 r!7292)))))

(declare-fun b!5860215 () Bool)

(assert (=> b!5860215 (= e!3593165 (store ((as const (Array Context!10622 Bool)) false) lt!2305344 true))))

(declare-fun bm!459480 () Bool)

(assert (=> bm!459480 (= call!459485 ($colon$colon!1832 (exprs!5811 lt!2305344) (ite (or c!1039559 c!1039556) (regTwo!32366 (regOne!32367 r!7292)) (regOne!32367 r!7292))))))

(declare-fun bm!459481 () Bool)

(assert (=> bm!459481 (= call!459484 call!459486)))

(declare-fun bm!459482 () Bool)

(assert (=> bm!459482 (= call!459487 call!459485)))

(declare-fun b!5860216 () Bool)

(assert (=> b!5860216 (= c!1039559 e!3593162)))

(declare-fun res!2466037 () Bool)

(assert (=> b!5860216 (=> (not res!2466037) (not e!3593162))))

(assert (=> b!5860216 (= res!2466037 ((_ is Concat!24772) (regOne!32367 r!7292)))))

(assert (=> b!5860216 (= e!3593160 e!3593161)))

(declare-fun b!5860217 () Bool)

(assert (=> b!5860217 (= e!3593160 ((_ map or) call!459483 call!459486))))

(assert (= (and d!1840291 c!1039558) b!5860215))

(assert (= (and d!1840291 (not c!1039558)) b!5860212))

(assert (= (and b!5860212 c!1039557) b!5860217))

(assert (= (and b!5860212 (not c!1039557)) b!5860216))

(assert (= (and b!5860216 res!2466037) b!5860211))

(assert (= (and b!5860216 c!1039559) b!5860213))

(assert (= (and b!5860216 (not c!1039559)) b!5860214))

(assert (= (and b!5860214 c!1039556) b!5860208))

(assert (= (and b!5860214 (not c!1039556)) b!5860210))

(assert (= (and b!5860210 c!1039555) b!5860207))

(assert (= (and b!5860210 (not c!1039555)) b!5860209))

(assert (= (or b!5860208 b!5860207) bm!459482))

(assert (= (or b!5860208 b!5860207) bm!459477))

(assert (= (or b!5860213 bm!459482) bm!459480))

(assert (= (or b!5860213 bm!459477) bm!459481))

(assert (= (or b!5860217 bm!459481) bm!459479))

(assert (= (or b!5860217 b!5860213) bm!459478))

(declare-fun m!6777388 () Bool)

(assert (=> b!5860211 m!6777388))

(declare-fun m!6777390 () Bool)

(assert (=> bm!459480 m!6777390))

(declare-fun m!6777392 () Bool)

(assert (=> bm!459479 m!6777392))

(assert (=> b!5860215 m!6777370))

(declare-fun m!6777394 () Bool)

(assert (=> bm!459478 m!6777394))

(assert (=> b!5859620 d!1840291))

(declare-fun d!1840293 () Bool)

(declare-fun e!3593168 () Bool)

(assert (=> d!1840293 e!3593168))

(declare-fun res!2466040 () Bool)

(assert (=> d!1840293 (=> (not res!2466040) (not e!3593168))))

(declare-fun lt!2305412 () List!64081)

(declare-fun noDuplicate!1792 (List!64081) Bool)

(assert (=> d!1840293 (= res!2466040 (noDuplicate!1792 lt!2305412))))

(declare-fun choose!44430 ((InoxSet Context!10622)) List!64081)

(assert (=> d!1840293 (= lt!2305412 (choose!44430 z!1189))))

(assert (=> d!1840293 (= (toList!9711 z!1189) lt!2305412)))

(declare-fun b!5860220 () Bool)

(declare-fun content!11757 (List!64081) (InoxSet Context!10622))

(assert (=> b!5860220 (= e!3593168 (= (content!11757 lt!2305412) z!1189))))

(assert (= (and d!1840293 res!2466040) b!5860220))

(declare-fun m!6777396 () Bool)

(assert (=> d!1840293 m!6777396))

(declare-fun m!6777398 () Bool)

(assert (=> d!1840293 m!6777398))

(declare-fun m!6777400 () Bool)

(assert (=> b!5860220 m!6777400))

(assert (=> b!5859640 d!1840293))

(declare-fun d!1840295 () Bool)

(assert (=> d!1840295 (= (isEmpty!35814 (t!377452 zl!343)) ((_ is Nil!63957) (t!377452 zl!343)))))

(assert (=> b!5859631 d!1840295))

(declare-fun b!5860241 () Bool)

(declare-fun e!3593181 () Bool)

(declare-fun lt!2305415 () Regex!15927)

(declare-fun head!12409 (List!64080) Regex!15927)

(assert (=> b!5860241 (= e!3593181 (= lt!2305415 (head!12409 (unfocusZipperList!1348 zl!343))))))

(declare-fun b!5860242 () Bool)

(declare-fun e!3593185 () Regex!15927)

(assert (=> b!5860242 (= e!3593185 (h!70404 (unfocusZipperList!1348 zl!343)))))

(declare-fun b!5860243 () Bool)

(declare-fun isUnion!800 (Regex!15927) Bool)

(assert (=> b!5860243 (= e!3593181 (isUnion!800 lt!2305415))))

(declare-fun d!1840297 () Bool)

(declare-fun e!3593183 () Bool)

(assert (=> d!1840297 e!3593183))

(declare-fun res!2466046 () Bool)

(assert (=> d!1840297 (=> (not res!2466046) (not e!3593183))))

(assert (=> d!1840297 (= res!2466046 (validRegex!7663 lt!2305415))))

(assert (=> d!1840297 (= lt!2305415 e!3593185)))

(declare-fun c!1039571 () Bool)

(declare-fun e!3593186 () Bool)

(assert (=> d!1840297 (= c!1039571 e!3593186)))

(declare-fun res!2466045 () Bool)

(assert (=> d!1840297 (=> (not res!2466045) (not e!3593186))))

(assert (=> d!1840297 (= res!2466045 ((_ is Cons!63956) (unfocusZipperList!1348 zl!343)))))

(declare-fun lambda!320432 () Int)

(declare-fun forall!15014 (List!64080 Int) Bool)

(assert (=> d!1840297 (forall!15014 (unfocusZipperList!1348 zl!343) lambda!320432)))

(assert (=> d!1840297 (= (generalisedUnion!1771 (unfocusZipperList!1348 zl!343)) lt!2305415)))

(declare-fun b!5860244 () Bool)

(declare-fun e!3593182 () Bool)

(assert (=> b!5860244 (= e!3593183 e!3593182)))

(declare-fun c!1039570 () Bool)

(declare-fun isEmpty!35818 (List!64080) Bool)

(assert (=> b!5860244 (= c!1039570 (isEmpty!35818 (unfocusZipperList!1348 zl!343)))))

(declare-fun b!5860245 () Bool)

(declare-fun e!3593184 () Regex!15927)

(assert (=> b!5860245 (= e!3593185 e!3593184)))

(declare-fun c!1039569 () Bool)

(assert (=> b!5860245 (= c!1039569 ((_ is Cons!63956) (unfocusZipperList!1348 zl!343)))))

(declare-fun b!5860246 () Bool)

(assert (=> b!5860246 (= e!3593182 e!3593181)))

(declare-fun c!1039568 () Bool)

(declare-fun tail!11494 (List!64080) List!64080)

(assert (=> b!5860246 (= c!1039568 (isEmpty!35818 (tail!11494 (unfocusZipperList!1348 zl!343))))))

(declare-fun b!5860247 () Bool)

(declare-fun isEmptyLang!1370 (Regex!15927) Bool)

(assert (=> b!5860247 (= e!3593182 (isEmptyLang!1370 lt!2305415))))

(declare-fun b!5860248 () Bool)

(assert (=> b!5860248 (= e!3593184 EmptyLang!15927)))

(declare-fun b!5860249 () Bool)

(assert (=> b!5860249 (= e!3593186 (isEmpty!35818 (t!377451 (unfocusZipperList!1348 zl!343))))))

(declare-fun b!5860250 () Bool)

(assert (=> b!5860250 (= e!3593184 (Union!15927 (h!70404 (unfocusZipperList!1348 zl!343)) (generalisedUnion!1771 (t!377451 (unfocusZipperList!1348 zl!343)))))))

(assert (= (and d!1840297 res!2466045) b!5860249))

(assert (= (and d!1840297 c!1039571) b!5860242))

(assert (= (and d!1840297 (not c!1039571)) b!5860245))

(assert (= (and b!5860245 c!1039569) b!5860250))

(assert (= (and b!5860245 (not c!1039569)) b!5860248))

(assert (= (and d!1840297 res!2466046) b!5860244))

(assert (= (and b!5860244 c!1039570) b!5860247))

(assert (= (and b!5860244 (not c!1039570)) b!5860246))

(assert (= (and b!5860246 c!1039568) b!5860241))

(assert (= (and b!5860246 (not c!1039568)) b!5860243))

(declare-fun m!6777402 () Bool)

(assert (=> b!5860247 m!6777402))

(assert (=> b!5860244 m!6777086))

(declare-fun m!6777404 () Bool)

(assert (=> b!5860244 m!6777404))

(assert (=> b!5860246 m!6777086))

(declare-fun m!6777406 () Bool)

(assert (=> b!5860246 m!6777406))

(assert (=> b!5860246 m!6777406))

(declare-fun m!6777408 () Bool)

(assert (=> b!5860246 m!6777408))

(declare-fun m!6777410 () Bool)

(assert (=> b!5860249 m!6777410))

(declare-fun m!6777412 () Bool)

(assert (=> b!5860250 m!6777412))

(declare-fun m!6777414 () Bool)

(assert (=> d!1840297 m!6777414))

(assert (=> d!1840297 m!6777086))

(declare-fun m!6777416 () Bool)

(assert (=> d!1840297 m!6777416))

(declare-fun m!6777418 () Bool)

(assert (=> b!5860243 m!6777418))

(assert (=> b!5860241 m!6777086))

(declare-fun m!6777420 () Bool)

(assert (=> b!5860241 m!6777420))

(assert (=> b!5859632 d!1840297))

(declare-fun bs!1380652 () Bool)

(declare-fun d!1840299 () Bool)

(assert (= bs!1380652 (and d!1840299 d!1840297)))

(declare-fun lambda!320435 () Int)

(assert (=> bs!1380652 (= lambda!320435 lambda!320432)))

(declare-fun lt!2305418 () List!64080)

(assert (=> d!1840299 (forall!15014 lt!2305418 lambda!320435)))

(declare-fun e!3593189 () List!64080)

(assert (=> d!1840299 (= lt!2305418 e!3593189)))

(declare-fun c!1039574 () Bool)

(assert (=> d!1840299 (= c!1039574 ((_ is Cons!63957) zl!343))))

(assert (=> d!1840299 (= (unfocusZipperList!1348 zl!343) lt!2305418)))

(declare-fun b!5860255 () Bool)

(assert (=> b!5860255 (= e!3593189 (Cons!63956 (generalisedConcat!1524 (exprs!5811 (h!70405 zl!343))) (unfocusZipperList!1348 (t!377452 zl!343))))))

(declare-fun b!5860256 () Bool)

(assert (=> b!5860256 (= e!3593189 Nil!63956)))

(assert (= (and d!1840299 c!1039574) b!5860255))

(assert (= (and d!1840299 (not c!1039574)) b!5860256))

(declare-fun m!6777422 () Bool)

(assert (=> d!1840299 m!6777422))

(assert (=> b!5860255 m!6777020))

(declare-fun m!6777424 () Bool)

(assert (=> b!5860255 m!6777424))

(assert (=> b!5859632 d!1840299))

(declare-fun d!1840301 () Bool)

(declare-fun c!1039577 () Bool)

(assert (=> d!1840301 (= c!1039577 (isEmpty!35817 (t!377453 s!2326)))))

(declare-fun e!3593192 () Bool)

(assert (=> d!1840301 (= (matchZipper!1993 lt!2305368 (t!377453 s!2326)) e!3593192)))

(declare-fun b!5860261 () Bool)

(declare-fun nullableZipper!1766 ((InoxSet Context!10622)) Bool)

(assert (=> b!5860261 (= e!3593192 (nullableZipper!1766 lt!2305368))))

(declare-fun b!5860262 () Bool)

(assert (=> b!5860262 (= e!3593192 (matchZipper!1993 (derivationStepZipper!1926 lt!2305368 (head!12408 (t!377453 s!2326))) (tail!11493 (t!377453 s!2326))))))

(assert (= (and d!1840301 c!1039577) b!5860261))

(assert (= (and d!1840301 (not c!1039577)) b!5860262))

(declare-fun m!6777426 () Bool)

(assert (=> d!1840301 m!6777426))

(declare-fun m!6777428 () Bool)

(assert (=> b!5860261 m!6777428))

(declare-fun m!6777430 () Bool)

(assert (=> b!5860262 m!6777430))

(assert (=> b!5860262 m!6777430))

(declare-fun m!6777432 () Bool)

(assert (=> b!5860262 m!6777432))

(declare-fun m!6777434 () Bool)

(assert (=> b!5860262 m!6777434))

(assert (=> b!5860262 m!6777432))

(assert (=> b!5860262 m!6777434))

(declare-fun m!6777436 () Bool)

(assert (=> b!5860262 m!6777436))

(assert (=> b!5859622 d!1840301))

(declare-fun d!1840303 () Bool)

(declare-fun c!1039578 () Bool)

(assert (=> d!1840303 (= c!1039578 (isEmpty!35817 s!2326))))

(declare-fun e!3593193 () Bool)

(assert (=> d!1840303 (= (matchZipper!1993 z!1189 s!2326) e!3593193)))

(declare-fun b!5860263 () Bool)

(assert (=> b!5860263 (= e!3593193 (nullableZipper!1766 z!1189))))

(declare-fun b!5860264 () Bool)

(assert (=> b!5860264 (= e!3593193 (matchZipper!1993 (derivationStepZipper!1926 z!1189 (head!12408 s!2326)) (tail!11493 s!2326)))))

(assert (= (and d!1840303 c!1039578) b!5860263))

(assert (= (and d!1840303 (not c!1039578)) b!5860264))

(assert (=> d!1840303 m!6777324))

(declare-fun m!6777438 () Bool)

(assert (=> b!5860263 m!6777438))

(assert (=> b!5860264 m!6777336))

(assert (=> b!5860264 m!6777336))

(declare-fun m!6777440 () Bool)

(assert (=> b!5860264 m!6777440))

(assert (=> b!5860264 m!6777338))

(assert (=> b!5860264 m!6777440))

(assert (=> b!5860264 m!6777338))

(declare-fun m!6777442 () Bool)

(assert (=> b!5860264 m!6777442))

(assert (=> b!5859623 d!1840303))

(declare-fun d!1840305 () Bool)

(declare-fun c!1039579 () Bool)

(assert (=> d!1840305 (= c!1039579 (isEmpty!35817 (t!377453 s!2326)))))

(declare-fun e!3593194 () Bool)

(assert (=> d!1840305 (= (matchZipper!1993 lt!2305351 (t!377453 s!2326)) e!3593194)))

(declare-fun b!5860265 () Bool)

(assert (=> b!5860265 (= e!3593194 (nullableZipper!1766 lt!2305351))))

(declare-fun b!5860266 () Bool)

(assert (=> b!5860266 (= e!3593194 (matchZipper!1993 (derivationStepZipper!1926 lt!2305351 (head!12408 (t!377453 s!2326))) (tail!11493 (t!377453 s!2326))))))

(assert (= (and d!1840305 c!1039579) b!5860265))

(assert (= (and d!1840305 (not c!1039579)) b!5860266))

(assert (=> d!1840305 m!6777426))

(declare-fun m!6777444 () Bool)

(assert (=> b!5860265 m!6777444))

(assert (=> b!5860266 m!6777430))

(assert (=> b!5860266 m!6777430))

(declare-fun m!6777446 () Bool)

(assert (=> b!5860266 m!6777446))

(assert (=> b!5860266 m!6777434))

(assert (=> b!5860266 m!6777446))

(assert (=> b!5860266 m!6777434))

(declare-fun m!6777448 () Bool)

(assert (=> b!5860266 m!6777448))

(assert (=> b!5859623 d!1840305))

(declare-fun b!5860285 () Bool)

(declare-fun e!3593211 () Bool)

(declare-fun e!3593210 () Bool)

(assert (=> b!5860285 (= e!3593211 e!3593210)))

(declare-fun c!1039584 () Bool)

(assert (=> b!5860285 (= c!1039584 ((_ is Union!15927) r!7292))))

(declare-fun b!5860286 () Bool)

(declare-fun e!3593212 () Bool)

(declare-fun call!459496 () Bool)

(assert (=> b!5860286 (= e!3593212 call!459496)))

(declare-fun b!5860287 () Bool)

(declare-fun e!3593213 () Bool)

(declare-fun e!3593209 () Bool)

(assert (=> b!5860287 (= e!3593213 e!3593209)))

(declare-fun res!2466059 () Bool)

(assert (=> b!5860287 (=> (not res!2466059) (not e!3593209))))

(declare-fun call!459495 () Bool)

(assert (=> b!5860287 (= res!2466059 call!459495)))

(declare-fun b!5860288 () Bool)

(declare-fun res!2466061 () Bool)

(declare-fun e!3593215 () Bool)

(assert (=> b!5860288 (=> (not res!2466061) (not e!3593215))))

(assert (=> b!5860288 (= res!2466061 call!459495)))

(assert (=> b!5860288 (= e!3593210 e!3593215)))

(declare-fun b!5860289 () Bool)

(declare-fun e!3593214 () Bool)

(assert (=> b!5860289 (= e!3593214 e!3593211)))

(declare-fun c!1039585 () Bool)

(assert (=> b!5860289 (= c!1039585 ((_ is Star!15927) r!7292))))

(declare-fun b!5860290 () Bool)

(declare-fun res!2466058 () Bool)

(assert (=> b!5860290 (=> res!2466058 e!3593213)))

(assert (=> b!5860290 (= res!2466058 (not ((_ is Concat!24772) r!7292)))))

(assert (=> b!5860290 (= e!3593210 e!3593213)))

(declare-fun b!5860291 () Bool)

(declare-fun call!459494 () Bool)

(assert (=> b!5860291 (= e!3593209 call!459494)))

(declare-fun bm!459489 () Bool)

(assert (=> bm!459489 (= call!459494 call!459496)))

(declare-fun d!1840307 () Bool)

(declare-fun res!2466060 () Bool)

(assert (=> d!1840307 (=> res!2466060 e!3593214)))

(assert (=> d!1840307 (= res!2466060 ((_ is ElementMatch!15927) r!7292))))

(assert (=> d!1840307 (= (validRegex!7663 r!7292) e!3593214)))

(declare-fun b!5860292 () Bool)

(assert (=> b!5860292 (= e!3593211 e!3593212)))

(declare-fun res!2466057 () Bool)

(assert (=> b!5860292 (= res!2466057 (not (nullable!5927 (reg!16256 r!7292))))))

(assert (=> b!5860292 (=> (not res!2466057) (not e!3593212))))

(declare-fun b!5860293 () Bool)

(assert (=> b!5860293 (= e!3593215 call!459494)))

(declare-fun bm!459490 () Bool)

(assert (=> bm!459490 (= call!459495 (validRegex!7663 (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292))))))

(declare-fun bm!459491 () Bool)

(assert (=> bm!459491 (= call!459496 (validRegex!7663 (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292)))))))

(assert (= (and d!1840307 (not res!2466060)) b!5860289))

(assert (= (and b!5860289 c!1039585) b!5860292))

(assert (= (and b!5860289 (not c!1039585)) b!5860285))

(assert (= (and b!5860292 res!2466057) b!5860286))

(assert (= (and b!5860285 c!1039584) b!5860288))

(assert (= (and b!5860285 (not c!1039584)) b!5860290))

(assert (= (and b!5860288 res!2466061) b!5860293))

(assert (= (and b!5860290 (not res!2466058)) b!5860287))

(assert (= (and b!5860287 res!2466059) b!5860291))

(assert (= (or b!5860293 b!5860291) bm!459489))

(assert (= (or b!5860288 b!5860287) bm!459490))

(assert (= (or b!5860286 bm!459489) bm!459491))

(declare-fun m!6777450 () Bool)

(assert (=> b!5860292 m!6777450))

(declare-fun m!6777452 () Bool)

(assert (=> bm!459490 m!6777452))

(declare-fun m!6777454 () Bool)

(assert (=> bm!459491 m!6777454))

(assert (=> start!599356 d!1840307))

(declare-fun bs!1380653 () Bool)

(declare-fun d!1840309 () Bool)

(assert (= bs!1380653 (and d!1840309 d!1840297)))

(declare-fun lambda!320438 () Int)

(assert (=> bs!1380653 (= lambda!320438 lambda!320432)))

(declare-fun bs!1380654 () Bool)

(assert (= bs!1380654 (and d!1840309 d!1840299)))

(assert (=> bs!1380654 (= lambda!320438 lambda!320435)))

(assert (=> d!1840309 (= (inv!83064 setElem!39732) (forall!15014 (exprs!5811 setElem!39732) lambda!320438))))

(declare-fun bs!1380655 () Bool)

(assert (= bs!1380655 d!1840309))

(declare-fun m!6777456 () Bool)

(assert (=> bs!1380655 m!6777456))

(assert (=> setNonEmpty!39732 d!1840309))

(declare-fun d!1840311 () Bool)

(declare-fun dynLambda!25008 (Int Context!10622) (InoxSet Context!10622))

(assert (=> d!1840311 (= (flatMap!1458 lt!2305354 lambda!320394) (dynLambda!25008 lambda!320394 lt!2305350))))

(declare-fun lt!2305421 () Unit!157125)

(declare-fun choose!44431 ((InoxSet Context!10622) Context!10622 Int) Unit!157125)

(assert (=> d!1840311 (= lt!2305421 (choose!44431 lt!2305354 lt!2305350 lambda!320394))))

(assert (=> d!1840311 (= lt!2305354 (store ((as const (Array Context!10622 Bool)) false) lt!2305350 true))))

(assert (=> d!1840311 (= (lemmaFlatMapOnSingletonSet!986 lt!2305354 lt!2305350 lambda!320394) lt!2305421)))

(declare-fun b_lambda!220569 () Bool)

(assert (=> (not b_lambda!220569) (not d!1840311)))

(declare-fun bs!1380656 () Bool)

(assert (= bs!1380656 d!1840311))

(assert (=> bs!1380656 m!6777072))

(declare-fun m!6777458 () Bool)

(assert (=> bs!1380656 m!6777458))

(declare-fun m!6777460 () Bool)

(assert (=> bs!1380656 m!6777460))

(assert (=> bs!1380656 m!6777066))

(assert (=> b!5859624 d!1840311))

(declare-fun d!1840313 () Bool)

(declare-fun choose!44432 ((InoxSet Context!10622) Int) (InoxSet Context!10622))

(assert (=> d!1840313 (= (flatMap!1458 lt!2305347 lambda!320394) (choose!44432 lt!2305347 lambda!320394))))

(declare-fun bs!1380657 () Bool)

(assert (= bs!1380657 d!1840313))

(declare-fun m!6777462 () Bool)

(assert (=> bs!1380657 m!6777462))

(assert (=> b!5859624 d!1840313))

(declare-fun d!1840315 () Bool)

(assert (=> d!1840315 (= (flatMap!1458 lt!2305354 lambda!320394) (choose!44432 lt!2305354 lambda!320394))))

(declare-fun bs!1380658 () Bool)

(assert (= bs!1380658 d!1840315))

(declare-fun m!6777464 () Bool)

(assert (=> bs!1380658 m!6777464))

(assert (=> b!5859624 d!1840315))

(declare-fun b!5860294 () Bool)

(declare-fun e!3593217 () (InoxSet Context!10622))

(declare-fun call!459497 () (InoxSet Context!10622))

(assert (=> b!5860294 (= e!3593217 ((_ map or) call!459497 (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 lt!2305367))) (h!70406 s!2326))))))

(declare-fun b!5860295 () Bool)

(declare-fun e!3593218 () (InoxSet Context!10622))

(assert (=> b!5860295 (= e!3593218 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459492 () Bool)

(assert (=> bm!459492 (= call!459497 (derivationStepZipperDown!1193 (h!70404 (exprs!5811 lt!2305367)) (Context!10623 (t!377451 (exprs!5811 lt!2305367))) (h!70406 s!2326)))))

(declare-fun b!5860296 () Bool)

(assert (=> b!5860296 (= e!3593217 e!3593218)))

(declare-fun c!1039587 () Bool)

(assert (=> b!5860296 (= c!1039587 ((_ is Cons!63956) (exprs!5811 lt!2305367)))))

(declare-fun d!1840317 () Bool)

(declare-fun c!1039586 () Bool)

(declare-fun e!3593216 () Bool)

(assert (=> d!1840317 (= c!1039586 e!3593216)))

(declare-fun res!2466062 () Bool)

(assert (=> d!1840317 (=> (not res!2466062) (not e!3593216))))

(assert (=> d!1840317 (= res!2466062 ((_ is Cons!63956) (exprs!5811 lt!2305367)))))

(assert (=> d!1840317 (= (derivationStepZipperUp!1119 lt!2305367 (h!70406 s!2326)) e!3593217)))

(declare-fun b!5860297 () Bool)

(assert (=> b!5860297 (= e!3593216 (nullable!5927 (h!70404 (exprs!5811 lt!2305367))))))

(declare-fun b!5860298 () Bool)

(assert (=> b!5860298 (= e!3593218 call!459497)))

(assert (= (and d!1840317 res!2466062) b!5860297))

(assert (= (and d!1840317 c!1039586) b!5860294))

(assert (= (and d!1840317 (not c!1039586)) b!5860296))

(assert (= (and b!5860296 c!1039587) b!5860298))

(assert (= (and b!5860296 (not c!1039587)) b!5860295))

(assert (= (or b!5860294 b!5860298) bm!459492))

(declare-fun m!6777466 () Bool)

(assert (=> b!5860294 m!6777466))

(declare-fun m!6777468 () Bool)

(assert (=> bm!459492 m!6777468))

(declare-fun m!6777470 () Bool)

(assert (=> b!5860297 m!6777470))

(assert (=> b!5859624 d!1840317))

(declare-fun bs!1380659 () Bool)

(declare-fun d!1840319 () Bool)

(assert (= bs!1380659 (and d!1840319 d!1840297)))

(declare-fun lambda!320439 () Int)

(assert (=> bs!1380659 (= lambda!320439 lambda!320432)))

(declare-fun bs!1380660 () Bool)

(assert (= bs!1380660 (and d!1840319 d!1840299)))

(assert (=> bs!1380660 (= lambda!320439 lambda!320435)))

(declare-fun bs!1380661 () Bool)

(assert (= bs!1380661 (and d!1840319 d!1840309)))

(assert (=> bs!1380661 (= lambda!320439 lambda!320438)))

(assert (=> d!1840319 (= (inv!83064 lt!2305344) (forall!15014 (exprs!5811 lt!2305344) lambda!320439))))

(declare-fun bs!1380662 () Bool)

(assert (= bs!1380662 d!1840319))

(declare-fun m!6777472 () Bool)

(assert (=> bs!1380662 m!6777472))

(assert (=> b!5859624 d!1840319))

(declare-fun e!3593220 () (InoxSet Context!10622))

(declare-fun call!459498 () (InoxSet Context!10622))

(declare-fun b!5860299 () Bool)

(assert (=> b!5860299 (= e!3593220 ((_ map or) call!459498 (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 lt!2305350))) (h!70406 s!2326))))))

(declare-fun b!5860300 () Bool)

(declare-fun e!3593221 () (InoxSet Context!10622))

(assert (=> b!5860300 (= e!3593221 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459493 () Bool)

(assert (=> bm!459493 (= call!459498 (derivationStepZipperDown!1193 (h!70404 (exprs!5811 lt!2305350)) (Context!10623 (t!377451 (exprs!5811 lt!2305350))) (h!70406 s!2326)))))

(declare-fun b!5860301 () Bool)

(assert (=> b!5860301 (= e!3593220 e!3593221)))

(declare-fun c!1039589 () Bool)

(assert (=> b!5860301 (= c!1039589 ((_ is Cons!63956) (exprs!5811 lt!2305350)))))

(declare-fun d!1840321 () Bool)

(declare-fun c!1039588 () Bool)

(declare-fun e!3593219 () Bool)

(assert (=> d!1840321 (= c!1039588 e!3593219)))

(declare-fun res!2466063 () Bool)

(assert (=> d!1840321 (=> (not res!2466063) (not e!3593219))))

(assert (=> d!1840321 (= res!2466063 ((_ is Cons!63956) (exprs!5811 lt!2305350)))))

(assert (=> d!1840321 (= (derivationStepZipperUp!1119 lt!2305350 (h!70406 s!2326)) e!3593220)))

(declare-fun b!5860302 () Bool)

(assert (=> b!5860302 (= e!3593219 (nullable!5927 (h!70404 (exprs!5811 lt!2305350))))))

(declare-fun b!5860303 () Bool)

(assert (=> b!5860303 (= e!3593221 call!459498)))

(assert (= (and d!1840321 res!2466063) b!5860302))

(assert (= (and d!1840321 c!1039588) b!5860299))

(assert (= (and d!1840321 (not c!1039588)) b!5860301))

(assert (= (and b!5860301 c!1039589) b!5860303))

(assert (= (and b!5860301 (not c!1039589)) b!5860300))

(assert (= (or b!5860299 b!5860303) bm!459493))

(declare-fun m!6777474 () Bool)

(assert (=> b!5860299 m!6777474))

(declare-fun m!6777476 () Bool)

(assert (=> bm!459493 m!6777476))

(declare-fun m!6777478 () Bool)

(assert (=> b!5860302 m!6777478))

(assert (=> b!5859624 d!1840321))

(declare-fun d!1840323 () Bool)

(assert (=> d!1840323 (= (flatMap!1458 lt!2305347 lambda!320394) (dynLambda!25008 lambda!320394 lt!2305367))))

(declare-fun lt!2305422 () Unit!157125)

(assert (=> d!1840323 (= lt!2305422 (choose!44431 lt!2305347 lt!2305367 lambda!320394))))

(assert (=> d!1840323 (= lt!2305347 (store ((as const (Array Context!10622 Bool)) false) lt!2305367 true))))

(assert (=> d!1840323 (= (lemmaFlatMapOnSingletonSet!986 lt!2305347 lt!2305367 lambda!320394) lt!2305422)))

(declare-fun b_lambda!220571 () Bool)

(assert (=> (not b_lambda!220571) (not d!1840323)))

(declare-fun bs!1380663 () Bool)

(assert (= bs!1380663 d!1840323))

(assert (=> bs!1380663 m!6777074))

(declare-fun m!6777480 () Bool)

(assert (=> bs!1380663 m!6777480))

(declare-fun m!6777482 () Bool)

(assert (=> bs!1380663 m!6777482))

(assert (=> bs!1380663 m!6777070))

(assert (=> b!5859624 d!1840323))

(declare-fun d!1840325 () Bool)

(declare-fun c!1039590 () Bool)

(assert (=> d!1840325 (= c!1039590 (isEmpty!35817 (t!377453 s!2326)))))

(declare-fun e!3593222 () Bool)

(assert (=> d!1840325 (= (matchZipper!1993 lt!2305359 (t!377453 s!2326)) e!3593222)))

(declare-fun b!5860304 () Bool)

(assert (=> b!5860304 (= e!3593222 (nullableZipper!1766 lt!2305359))))

(declare-fun b!5860305 () Bool)

(assert (=> b!5860305 (= e!3593222 (matchZipper!1993 (derivationStepZipper!1926 lt!2305359 (head!12408 (t!377453 s!2326))) (tail!11493 (t!377453 s!2326))))))

(assert (= (and d!1840325 c!1039590) b!5860304))

(assert (= (and d!1840325 (not c!1039590)) b!5860305))

(assert (=> d!1840325 m!6777426))

(declare-fun m!6777484 () Bool)

(assert (=> b!5860304 m!6777484))

(assert (=> b!5860305 m!6777430))

(assert (=> b!5860305 m!6777430))

(declare-fun m!6777486 () Bool)

(assert (=> b!5860305 m!6777486))

(assert (=> b!5860305 m!6777434))

(assert (=> b!5860305 m!6777486))

(assert (=> b!5860305 m!6777434))

(declare-fun m!6777488 () Bool)

(assert (=> b!5860305 m!6777488))

(assert (=> b!5859634 d!1840325))

(declare-fun e!3593225 () Bool)

(declare-fun d!1840327 () Bool)

(assert (=> d!1840327 (= (matchZipper!1993 ((_ map or) lt!2305359 lt!2305368) (t!377453 s!2326)) e!3593225)))

(declare-fun res!2466066 () Bool)

(assert (=> d!1840327 (=> res!2466066 e!3593225)))

(assert (=> d!1840327 (= res!2466066 (matchZipper!1993 lt!2305359 (t!377453 s!2326)))))

(declare-fun lt!2305425 () Unit!157125)

(declare-fun choose!44433 ((InoxSet Context!10622) (InoxSet Context!10622) List!64082) Unit!157125)

(assert (=> d!1840327 (= lt!2305425 (choose!44433 lt!2305359 lt!2305368 (t!377453 s!2326)))))

(assert (=> d!1840327 (= (lemmaZipperConcatMatchesSameAsBothZippers!828 lt!2305359 lt!2305368 (t!377453 s!2326)) lt!2305425)))

(declare-fun b!5860308 () Bool)

(assert (=> b!5860308 (= e!3593225 (matchZipper!1993 lt!2305368 (t!377453 s!2326)))))

(assert (= (and d!1840327 (not res!2466066)) b!5860308))

(declare-fun m!6777490 () Bool)

(assert (=> d!1840327 m!6777490))

(assert (=> d!1840327 m!6777094))

(declare-fun m!6777492 () Bool)

(assert (=> d!1840327 m!6777492))

(assert (=> b!5860308 m!6777038))

(assert (=> b!5859634 d!1840327))

(declare-fun bs!1380664 () Bool)

(declare-fun d!1840329 () Bool)

(assert (= bs!1380664 (and d!1840329 d!1840297)))

(declare-fun lambda!320442 () Int)

(assert (=> bs!1380664 (= lambda!320442 lambda!320432)))

(declare-fun bs!1380665 () Bool)

(assert (= bs!1380665 (and d!1840329 d!1840299)))

(assert (=> bs!1380665 (= lambda!320442 lambda!320435)))

(declare-fun bs!1380666 () Bool)

(assert (= bs!1380666 (and d!1840329 d!1840309)))

(assert (=> bs!1380666 (= lambda!320442 lambda!320438)))

(declare-fun bs!1380667 () Bool)

(assert (= bs!1380667 (and d!1840329 d!1840319)))

(assert (=> bs!1380667 (= lambda!320442 lambda!320439)))

(declare-fun b!5860329 () Bool)

(declare-fun e!3593241 () Bool)

(declare-fun lt!2305428 () Regex!15927)

(declare-fun isConcat!885 (Regex!15927) Bool)

(assert (=> b!5860329 (= e!3593241 (isConcat!885 lt!2305428))))

(declare-fun b!5860330 () Bool)

(declare-fun e!3593243 () Regex!15927)

(assert (=> b!5860330 (= e!3593243 EmptyExpr!15927)))

(declare-fun b!5860332 () Bool)

(declare-fun e!3593239 () Regex!15927)

(assert (=> b!5860332 (= e!3593239 e!3593243)))

(declare-fun c!1039601 () Bool)

(assert (=> b!5860332 (= c!1039601 ((_ is Cons!63956) (exprs!5811 (h!70405 zl!343))))))

(declare-fun b!5860333 () Bool)

(assert (=> b!5860333 (= e!3593239 (h!70404 (exprs!5811 (h!70405 zl!343))))))

(declare-fun b!5860334 () Bool)

(declare-fun e!3593238 () Bool)

(declare-fun e!3593240 () Bool)

(assert (=> b!5860334 (= e!3593238 e!3593240)))

(declare-fun c!1039600 () Bool)

(assert (=> b!5860334 (= c!1039600 (isEmpty!35818 (exprs!5811 (h!70405 zl!343))))))

(declare-fun b!5860335 () Bool)

(declare-fun e!3593242 () Bool)

(assert (=> b!5860335 (= e!3593242 (isEmpty!35818 (t!377451 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun b!5860331 () Bool)

(declare-fun isEmptyExpr!1362 (Regex!15927) Bool)

(assert (=> b!5860331 (= e!3593240 (isEmptyExpr!1362 lt!2305428))))

(assert (=> d!1840329 e!3593238))

(declare-fun res!2466071 () Bool)

(assert (=> d!1840329 (=> (not res!2466071) (not e!3593238))))

(assert (=> d!1840329 (= res!2466071 (validRegex!7663 lt!2305428))))

(assert (=> d!1840329 (= lt!2305428 e!3593239)))

(declare-fun c!1039599 () Bool)

(assert (=> d!1840329 (= c!1039599 e!3593242)))

(declare-fun res!2466072 () Bool)

(assert (=> d!1840329 (=> (not res!2466072) (not e!3593242))))

(assert (=> d!1840329 (= res!2466072 ((_ is Cons!63956) (exprs!5811 (h!70405 zl!343))))))

(assert (=> d!1840329 (forall!15014 (exprs!5811 (h!70405 zl!343)) lambda!320442)))

(assert (=> d!1840329 (= (generalisedConcat!1524 (exprs!5811 (h!70405 zl!343))) lt!2305428)))

(declare-fun b!5860336 () Bool)

(assert (=> b!5860336 (= e!3593241 (= lt!2305428 (head!12409 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun b!5860337 () Bool)

(assert (=> b!5860337 (= e!3593243 (Concat!24772 (h!70404 (exprs!5811 (h!70405 zl!343))) (generalisedConcat!1524 (t!377451 (exprs!5811 (h!70405 zl!343))))))))

(declare-fun b!5860338 () Bool)

(assert (=> b!5860338 (= e!3593240 e!3593241)))

(declare-fun c!1039602 () Bool)

(assert (=> b!5860338 (= c!1039602 (isEmpty!35818 (tail!11494 (exprs!5811 (h!70405 zl!343)))))))

(assert (= (and d!1840329 res!2466072) b!5860335))

(assert (= (and d!1840329 c!1039599) b!5860333))

(assert (= (and d!1840329 (not c!1039599)) b!5860332))

(assert (= (and b!5860332 c!1039601) b!5860337))

(assert (= (and b!5860332 (not c!1039601)) b!5860330))

(assert (= (and d!1840329 res!2466071) b!5860334))

(assert (= (and b!5860334 c!1039600) b!5860331))

(assert (= (and b!5860334 (not c!1039600)) b!5860338))

(assert (= (and b!5860338 c!1039602) b!5860336))

(assert (= (and b!5860338 (not c!1039602)) b!5860329))

(declare-fun m!6777494 () Bool)

(assert (=> b!5860331 m!6777494))

(declare-fun m!6777496 () Bool)

(assert (=> b!5860335 m!6777496))

(declare-fun m!6777498 () Bool)

(assert (=> b!5860336 m!6777498))

(declare-fun m!6777500 () Bool)

(assert (=> b!5860338 m!6777500))

(assert (=> b!5860338 m!6777500))

(declare-fun m!6777502 () Bool)

(assert (=> b!5860338 m!6777502))

(declare-fun m!6777504 () Bool)

(assert (=> b!5860334 m!6777504))

(declare-fun m!6777506 () Bool)

(assert (=> b!5860337 m!6777506))

(declare-fun m!6777508 () Bool)

(assert (=> b!5860329 m!6777508))

(declare-fun m!6777510 () Bool)

(assert (=> d!1840329 m!6777510))

(declare-fun m!6777512 () Bool)

(assert (=> d!1840329 m!6777512))

(assert (=> b!5859625 d!1840329))

(declare-fun bs!1380668 () Bool)

(declare-fun b!5860346 () Bool)

(assert (= bs!1380668 (and b!5860346 b!5860073)))

(declare-fun lambda!320443 () Int)

(assert (=> bs!1380668 (= (and (= (reg!16256 r!7292) (reg!16256 (regTwo!32367 r!7292))) (= r!7292 (regTwo!32367 r!7292))) (= lambda!320443 lambda!320426))))

(declare-fun bs!1380669 () Bool)

(assert (= bs!1380669 (and b!5860346 b!5860067)))

(assert (=> bs!1380669 (not (= lambda!320443 lambda!320427))))

(declare-fun bs!1380670 () Bool)

(assert (= bs!1380670 (and b!5860346 b!5860130)))

(assert (=> bs!1380670 (= (and (= (reg!16256 r!7292) (reg!16256 (regOne!32367 r!7292))) (= r!7292 (regOne!32367 r!7292))) (= lambda!320443 lambda!320428))))

(declare-fun bs!1380671 () Bool)

(assert (= bs!1380671 (and b!5860346 b!5860124)))

(assert (=> bs!1380671 (not (= lambda!320443 lambda!320429))))

(assert (=> b!5860346 true))

(assert (=> b!5860346 true))

(declare-fun bs!1380672 () Bool)

(declare-fun b!5860340 () Bool)

(assert (= bs!1380672 (and b!5860340 b!5860346)))

(declare-fun lambda!320444 () Int)

(assert (=> bs!1380672 (not (= lambda!320444 lambda!320443))))

(declare-fun bs!1380673 () Bool)

(assert (= bs!1380673 (and b!5860340 b!5860124)))

(assert (=> bs!1380673 (= (and (= (regOne!32366 r!7292) (regOne!32366 (regOne!32367 r!7292))) (= (regTwo!32366 r!7292) (regTwo!32366 (regOne!32367 r!7292)))) (= lambda!320444 lambda!320429))))

(declare-fun bs!1380674 () Bool)

(assert (= bs!1380674 (and b!5860340 b!5860073)))

(assert (=> bs!1380674 (not (= lambda!320444 lambda!320426))))

(declare-fun bs!1380675 () Bool)

(assert (= bs!1380675 (and b!5860340 b!5860067)))

(assert (=> bs!1380675 (= (and (= (regOne!32366 r!7292) (regOne!32366 (regTwo!32367 r!7292))) (= (regTwo!32366 r!7292) (regTwo!32366 (regTwo!32367 r!7292)))) (= lambda!320444 lambda!320427))))

(declare-fun bs!1380676 () Bool)

(assert (= bs!1380676 (and b!5860340 b!5860130)))

(assert (=> bs!1380676 (not (= lambda!320444 lambda!320428))))

(assert (=> b!5860340 true))

(assert (=> b!5860340 true))

(declare-fun b!5860339 () Bool)

(declare-fun c!1039604 () Bool)

(assert (=> b!5860339 (= c!1039604 ((_ is Union!15927) r!7292))))

(declare-fun e!3593247 () Bool)

(declare-fun e!3593244 () Bool)

(assert (=> b!5860339 (= e!3593247 e!3593244)))

(declare-fun e!3593249 () Bool)

(declare-fun call!459500 () Bool)

(assert (=> b!5860340 (= e!3593249 call!459500)))

(declare-fun b!5860341 () Bool)

(declare-fun e!3593246 () Bool)

(declare-fun e!3593250 () Bool)

(assert (=> b!5860341 (= e!3593246 e!3593250)))

(declare-fun res!2466073 () Bool)

(assert (=> b!5860341 (= res!2466073 (not ((_ is EmptyLang!15927) r!7292)))))

(assert (=> b!5860341 (=> (not res!2466073) (not e!3593250))))

(declare-fun b!5860342 () Bool)

(declare-fun res!2466075 () Bool)

(declare-fun e!3593245 () Bool)

(assert (=> b!5860342 (=> res!2466075 e!3593245)))

(declare-fun call!459499 () Bool)

(assert (=> b!5860342 (= res!2466075 call!459499)))

(assert (=> b!5860342 (= e!3593249 e!3593245)))

(declare-fun d!1840331 () Bool)

(declare-fun c!1039603 () Bool)

(assert (=> d!1840331 (= c!1039603 ((_ is EmptyExpr!15927) r!7292))))

(assert (=> d!1840331 (= (matchRSpec!3028 r!7292 s!2326) e!3593246)))

(declare-fun bm!459494 () Bool)

(assert (=> bm!459494 (= call!459499 (isEmpty!35817 s!2326))))

(declare-fun b!5860343 () Bool)

(declare-fun c!1039606 () Bool)

(assert (=> b!5860343 (= c!1039606 ((_ is ElementMatch!15927) r!7292))))

(assert (=> b!5860343 (= e!3593250 e!3593247)))

(declare-fun c!1039605 () Bool)

(declare-fun bm!459495 () Bool)

(assert (=> bm!459495 (= call!459500 (Exists!2999 (ite c!1039605 lambda!320443 lambda!320444)))))

(declare-fun b!5860344 () Bool)

(declare-fun e!3593248 () Bool)

(assert (=> b!5860344 (= e!3593244 e!3593248)))

(declare-fun res!2466074 () Bool)

(assert (=> b!5860344 (= res!2466074 (matchRSpec!3028 (regOne!32367 r!7292) s!2326))))

(assert (=> b!5860344 (=> res!2466074 e!3593248)))

(declare-fun b!5860345 () Bool)

(assert (=> b!5860345 (= e!3593244 e!3593249)))

(assert (=> b!5860345 (= c!1039605 ((_ is Star!15927) r!7292))))

(assert (=> b!5860346 (= e!3593245 call!459500)))

(declare-fun b!5860347 () Bool)

(assert (=> b!5860347 (= e!3593248 (matchRSpec!3028 (regTwo!32367 r!7292) s!2326))))

(declare-fun b!5860348 () Bool)

(assert (=> b!5860348 (= e!3593247 (= s!2326 (Cons!63958 (c!1039387 r!7292) Nil!63958)))))

(declare-fun b!5860349 () Bool)

(assert (=> b!5860349 (= e!3593246 call!459499)))

(assert (= (and d!1840331 c!1039603) b!5860349))

(assert (= (and d!1840331 (not c!1039603)) b!5860341))

(assert (= (and b!5860341 res!2466073) b!5860343))

(assert (= (and b!5860343 c!1039606) b!5860348))

(assert (= (and b!5860343 (not c!1039606)) b!5860339))

(assert (= (and b!5860339 c!1039604) b!5860344))

(assert (= (and b!5860339 (not c!1039604)) b!5860345))

(assert (= (and b!5860344 (not res!2466074)) b!5860347))

(assert (= (and b!5860345 c!1039605) b!5860342))

(assert (= (and b!5860345 (not c!1039605)) b!5860340))

(assert (= (and b!5860342 (not res!2466075)) b!5860346))

(assert (= (or b!5860346 b!5860340) bm!459495))

(assert (= (or b!5860349 b!5860342) bm!459494))

(assert (=> bm!459494 m!6777324))

(declare-fun m!6777514 () Bool)

(assert (=> bm!459495 m!6777514))

(assert (=> b!5860344 m!6777048))

(assert (=> b!5860347 m!6777042))

(assert (=> b!5859626 d!1840331))

(declare-fun b!5860350 () Bool)

(declare-fun e!3593254 () Bool)

(declare-fun e!3593255 () Bool)

(assert (=> b!5860350 (= e!3593254 e!3593255)))

(declare-fun c!1039608 () Bool)

(assert (=> b!5860350 (= c!1039608 ((_ is EmptyLang!15927) r!7292))))

(declare-fun b!5860351 () Bool)

(declare-fun res!2466080 () Bool)

(declare-fun e!3593251 () Bool)

(assert (=> b!5860351 (=> (not res!2466080) (not e!3593251))))

(declare-fun call!459501 () Bool)

(assert (=> b!5860351 (= res!2466080 (not call!459501))))

(declare-fun b!5860352 () Bool)

(declare-fun res!2466076 () Bool)

(declare-fun e!3593257 () Bool)

(assert (=> b!5860352 (=> res!2466076 e!3593257)))

(assert (=> b!5860352 (= res!2466076 e!3593251)))

(declare-fun res!2466083 () Bool)

(assert (=> b!5860352 (=> (not res!2466083) (not e!3593251))))

(declare-fun lt!2305429 () Bool)

(assert (=> b!5860352 (= res!2466083 lt!2305429)))

(declare-fun b!5860353 () Bool)

(assert (=> b!5860353 (= e!3593251 (= (head!12408 s!2326) (c!1039387 r!7292)))))

(declare-fun d!1840333 () Bool)

(assert (=> d!1840333 e!3593254))

(declare-fun c!1039607 () Bool)

(assert (=> d!1840333 (= c!1039607 ((_ is EmptyExpr!15927) r!7292))))

(declare-fun e!3593252 () Bool)

(assert (=> d!1840333 (= lt!2305429 e!3593252)))

(declare-fun c!1039609 () Bool)

(assert (=> d!1840333 (= c!1039609 (isEmpty!35817 s!2326))))

(assert (=> d!1840333 (validRegex!7663 r!7292)))

(assert (=> d!1840333 (= (matchR!8110 r!7292 s!2326) lt!2305429)))

(declare-fun b!5860354 () Bool)

(declare-fun e!3593256 () Bool)

(assert (=> b!5860354 (= e!3593257 e!3593256)))

(declare-fun res!2466077 () Bool)

(assert (=> b!5860354 (=> (not res!2466077) (not e!3593256))))

(assert (=> b!5860354 (= res!2466077 (not lt!2305429))))

(declare-fun b!5860355 () Bool)

(assert (=> b!5860355 (= e!3593254 (= lt!2305429 call!459501))))

(declare-fun b!5860356 () Bool)

(declare-fun res!2466082 () Bool)

(declare-fun e!3593253 () Bool)

(assert (=> b!5860356 (=> res!2466082 e!3593253)))

(assert (=> b!5860356 (= res!2466082 (not (isEmpty!35817 (tail!11493 s!2326))))))

(declare-fun b!5860357 () Bool)

(declare-fun res!2466081 () Bool)

(assert (=> b!5860357 (=> res!2466081 e!3593257)))

(assert (=> b!5860357 (= res!2466081 (not ((_ is ElementMatch!15927) r!7292)))))

(assert (=> b!5860357 (= e!3593255 e!3593257)))

(declare-fun b!5860358 () Bool)

(assert (=> b!5860358 (= e!3593256 e!3593253)))

(declare-fun res!2466079 () Bool)

(assert (=> b!5860358 (=> res!2466079 e!3593253)))

(assert (=> b!5860358 (= res!2466079 call!459501)))

(declare-fun b!5860359 () Bool)

(declare-fun res!2466078 () Bool)

(assert (=> b!5860359 (=> (not res!2466078) (not e!3593251))))

(assert (=> b!5860359 (= res!2466078 (isEmpty!35817 (tail!11493 s!2326)))))

(declare-fun b!5860360 () Bool)

(assert (=> b!5860360 (= e!3593252 (nullable!5927 r!7292))))

(declare-fun bm!459496 () Bool)

(assert (=> bm!459496 (= call!459501 (isEmpty!35817 s!2326))))

(declare-fun b!5860361 () Bool)

(assert (=> b!5860361 (= e!3593252 (matchR!8110 (derivativeStep!4665 r!7292 (head!12408 s!2326)) (tail!11493 s!2326)))))

(declare-fun b!5860362 () Bool)

(assert (=> b!5860362 (= e!3593255 (not lt!2305429))))

(declare-fun b!5860363 () Bool)

(assert (=> b!5860363 (= e!3593253 (not (= (head!12408 s!2326) (c!1039387 r!7292))))))

(assert (= (and d!1840333 c!1039609) b!5860360))

(assert (= (and d!1840333 (not c!1039609)) b!5860361))

(assert (= (and d!1840333 c!1039607) b!5860355))

(assert (= (and d!1840333 (not c!1039607)) b!5860350))

(assert (= (and b!5860350 c!1039608) b!5860362))

(assert (= (and b!5860350 (not c!1039608)) b!5860357))

(assert (= (and b!5860357 (not res!2466081)) b!5860352))

(assert (= (and b!5860352 res!2466083) b!5860351))

(assert (= (and b!5860351 res!2466080) b!5860359))

(assert (= (and b!5860359 res!2466078) b!5860353))

(assert (= (and b!5860352 (not res!2466076)) b!5860354))

(assert (= (and b!5860354 res!2466077) b!5860358))

(assert (= (and b!5860358 (not res!2466079)) b!5860356))

(assert (= (and b!5860356 (not res!2466082)) b!5860363))

(assert (= (or b!5860355 b!5860351 b!5860358) bm!459496))

(assert (=> bm!459496 m!6777324))

(assert (=> b!5860353 m!6777336))

(assert (=> b!5860359 m!6777338))

(assert (=> b!5860359 m!6777338))

(assert (=> b!5860359 m!6777340))

(assert (=> b!5860356 m!6777338))

(assert (=> b!5860356 m!6777338))

(assert (=> b!5860356 m!6777340))

(assert (=> b!5860361 m!6777336))

(assert (=> b!5860361 m!6777336))

(declare-fun m!6777516 () Bool)

(assert (=> b!5860361 m!6777516))

(assert (=> b!5860361 m!6777338))

(assert (=> b!5860361 m!6777516))

(assert (=> b!5860361 m!6777338))

(declare-fun m!6777518 () Bool)

(assert (=> b!5860361 m!6777518))

(assert (=> d!1840333 m!6777324))

(assert (=> d!1840333 m!6777040))

(declare-fun m!6777520 () Bool)

(assert (=> b!5860360 m!6777520))

(assert (=> b!5860363 m!6777336))

(assert (=> b!5859626 d!1840333))

(declare-fun d!1840335 () Bool)

(assert (=> d!1840335 (= (matchR!8110 r!7292 s!2326) (matchRSpec!3028 r!7292 s!2326))))

(declare-fun lt!2305430 () Unit!157125)

(assert (=> d!1840335 (= lt!2305430 (choose!44429 r!7292 s!2326))))

(assert (=> d!1840335 (validRegex!7663 r!7292)))

(assert (=> d!1840335 (= (mainMatchTheorem!3028 r!7292 s!2326) lt!2305430)))

(declare-fun bs!1380677 () Bool)

(assert (= bs!1380677 d!1840335))

(assert (=> bs!1380677 m!6777034))

(assert (=> bs!1380677 m!6777032))

(declare-fun m!6777522 () Bool)

(assert (=> bs!1380677 m!6777522))

(assert (=> bs!1380677 m!6777040))

(assert (=> b!5859626 d!1840335))

(declare-fun bs!1380678 () Bool)

(declare-fun d!1840337 () Bool)

(assert (= bs!1380678 (and d!1840337 d!1840329)))

(declare-fun lambda!320445 () Int)

(assert (=> bs!1380678 (= lambda!320445 lambda!320442)))

(declare-fun bs!1380679 () Bool)

(assert (= bs!1380679 (and d!1840337 d!1840319)))

(assert (=> bs!1380679 (= lambda!320445 lambda!320439)))

(declare-fun bs!1380680 () Bool)

(assert (= bs!1380680 (and d!1840337 d!1840309)))

(assert (=> bs!1380680 (= lambda!320445 lambda!320438)))

(declare-fun bs!1380681 () Bool)

(assert (= bs!1380681 (and d!1840337 d!1840297)))

(assert (=> bs!1380681 (= lambda!320445 lambda!320432)))

(declare-fun bs!1380682 () Bool)

(assert (= bs!1380682 (and d!1840337 d!1840299)))

(assert (=> bs!1380682 (= lambda!320445 lambda!320435)))

(assert (=> d!1840337 (= (inv!83064 (h!70405 zl!343)) (forall!15014 (exprs!5811 (h!70405 zl!343)) lambda!320445))))

(declare-fun bs!1380683 () Bool)

(assert (= bs!1380683 d!1840337))

(declare-fun m!6777524 () Bool)

(assert (=> bs!1380683 m!6777524))

(assert (=> b!5859617 d!1840337))

(declare-fun d!1840339 () Bool)

(declare-fun lt!2305433 () Regex!15927)

(assert (=> d!1840339 (validRegex!7663 lt!2305433)))

(assert (=> d!1840339 (= lt!2305433 (generalisedUnion!1771 (unfocusZipperList!1348 zl!343)))))

(assert (=> d!1840339 (= (unfocusZipper!1669 zl!343) lt!2305433)))

(declare-fun bs!1380684 () Bool)

(assert (= bs!1380684 d!1840339))

(declare-fun m!6777526 () Bool)

(assert (=> bs!1380684 m!6777526))

(assert (=> bs!1380684 m!6777086))

(assert (=> bs!1380684 m!6777086))

(assert (=> bs!1380684 m!6777088))

(assert (=> b!5859637 d!1840339))

(declare-fun bs!1380685 () Bool)

(declare-fun d!1840341 () Bool)

(assert (= bs!1380685 (and d!1840341 b!5859627)))

(declare-fun lambda!320448 () Int)

(assert (=> bs!1380685 (= lambda!320448 lambda!320394)))

(assert (=> d!1840341 true))

(assert (=> d!1840341 (= (derivationStepZipper!1926 z!1189 (h!70406 s!2326)) (flatMap!1458 z!1189 lambda!320448))))

(declare-fun bs!1380686 () Bool)

(assert (= bs!1380686 d!1840341))

(declare-fun m!6777528 () Bool)

(assert (=> bs!1380686 m!6777528))

(assert (=> b!5859627 d!1840341))

(declare-fun d!1840343 () Bool)

(assert (=> d!1840343 (= (flatMap!1458 z!1189 lambda!320394) (choose!44432 z!1189 lambda!320394))))

(declare-fun bs!1380687 () Bool)

(assert (= bs!1380687 d!1840343))

(declare-fun m!6777530 () Bool)

(assert (=> bs!1380687 m!6777530))

(assert (=> b!5859627 d!1840343))

(declare-fun e!3593259 () (InoxSet Context!10622))

(declare-fun b!5860366 () Bool)

(declare-fun call!459502 () (InoxSet Context!10622))

(assert (=> b!5860366 (= e!3593259 ((_ map or) call!459502 (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343)))) (h!70406 s!2326))))))

(declare-fun b!5860367 () Bool)

(declare-fun e!3593260 () (InoxSet Context!10622))

(assert (=> b!5860367 (= e!3593260 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459497 () Bool)

(assert (=> bm!459497 (= call!459502 (derivationStepZipperDown!1193 (h!70404 (exprs!5811 (h!70405 zl!343))) (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343)))) (h!70406 s!2326)))))

(declare-fun b!5860368 () Bool)

(assert (=> b!5860368 (= e!3593259 e!3593260)))

(declare-fun c!1039613 () Bool)

(assert (=> b!5860368 (= c!1039613 ((_ is Cons!63956) (exprs!5811 (h!70405 zl!343))))))

(declare-fun d!1840345 () Bool)

(declare-fun c!1039612 () Bool)

(declare-fun e!3593258 () Bool)

(assert (=> d!1840345 (= c!1039612 e!3593258)))

(declare-fun res!2466084 () Bool)

(assert (=> d!1840345 (=> (not res!2466084) (not e!3593258))))

(assert (=> d!1840345 (= res!2466084 ((_ is Cons!63956) (exprs!5811 (h!70405 zl!343))))))

(assert (=> d!1840345 (= (derivationStepZipperUp!1119 (h!70405 zl!343) (h!70406 s!2326)) e!3593259)))

(declare-fun b!5860369 () Bool)

(assert (=> b!5860369 (= e!3593258 (nullable!5927 (h!70404 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun b!5860370 () Bool)

(assert (=> b!5860370 (= e!3593260 call!459502)))

(assert (= (and d!1840345 res!2466084) b!5860369))

(assert (= (and d!1840345 c!1039612) b!5860366))

(assert (= (and d!1840345 (not c!1039612)) b!5860368))

(assert (= (and b!5860368 c!1039613) b!5860370))

(assert (= (and b!5860368 (not c!1039613)) b!5860367))

(assert (= (or b!5860366 b!5860370) bm!459497))

(declare-fun m!6777532 () Bool)

(assert (=> b!5860366 m!6777532))

(declare-fun m!6777534 () Bool)

(assert (=> bm!459497 m!6777534))

(declare-fun m!6777536 () Bool)

(assert (=> b!5860369 m!6777536))

(assert (=> b!5859627 d!1840345))

(declare-fun d!1840347 () Bool)

(assert (=> d!1840347 (= (flatMap!1458 z!1189 lambda!320394) (dynLambda!25008 lambda!320394 (h!70405 zl!343)))))

(declare-fun lt!2305434 () Unit!157125)

(assert (=> d!1840347 (= lt!2305434 (choose!44431 z!1189 (h!70405 zl!343) lambda!320394))))

(assert (=> d!1840347 (= z!1189 (store ((as const (Array Context!10622 Bool)) false) (h!70405 zl!343) true))))

(assert (=> d!1840347 (= (lemmaFlatMapOnSingletonSet!986 z!1189 (h!70405 zl!343) lambda!320394) lt!2305434)))

(declare-fun b_lambda!220573 () Bool)

(assert (=> (not b_lambda!220573) (not d!1840347)))

(declare-fun bs!1380688 () Bool)

(assert (= bs!1380688 d!1840347))

(assert (=> bs!1380688 m!6777056))

(declare-fun m!6777538 () Bool)

(assert (=> bs!1380688 m!6777538))

(declare-fun m!6777540 () Bool)

(assert (=> bs!1380688 m!6777540))

(declare-fun m!6777542 () Bool)

(assert (=> bs!1380688 m!6777542))

(assert (=> b!5859627 d!1840347))

(declare-fun b!5860375 () Bool)

(declare-fun e!3593263 () Bool)

(declare-fun tp!1620985 () Bool)

(assert (=> b!5860375 (= e!3593263 (and tp_is_empty!41107 tp!1620985))))

(assert (=> b!5859633 (= tp!1620918 e!3593263)))

(assert (= (and b!5859633 ((_ is Cons!63958) (t!377453 s!2326))) b!5860375))

(declare-fun b!5860380 () Bool)

(declare-fun e!3593266 () Bool)

(declare-fun tp!1620990 () Bool)

(declare-fun tp!1620991 () Bool)

(assert (=> b!5860380 (= e!3593266 (and tp!1620990 tp!1620991))))

(assert (=> b!5859630 (= tp!1620920 e!3593266)))

(assert (= (and b!5859630 ((_ is Cons!63956) (exprs!5811 setElem!39732))) b!5860380))

(declare-fun b!5860394 () Bool)

(declare-fun e!3593269 () Bool)

(declare-fun tp!1621003 () Bool)

(declare-fun tp!1621005 () Bool)

(assert (=> b!5860394 (= e!3593269 (and tp!1621003 tp!1621005))))

(declare-fun b!5860391 () Bool)

(assert (=> b!5860391 (= e!3593269 tp_is_empty!41107)))

(declare-fun b!5860393 () Bool)

(declare-fun tp!1621004 () Bool)

(assert (=> b!5860393 (= e!3593269 tp!1621004)))

(declare-fun b!5860392 () Bool)

(declare-fun tp!1621002 () Bool)

(declare-fun tp!1621006 () Bool)

(assert (=> b!5860392 (= e!3593269 (and tp!1621002 tp!1621006))))

(assert (=> b!5859621 (= tp!1620923 e!3593269)))

(assert (= (and b!5859621 ((_ is ElementMatch!15927) (regOne!32366 r!7292))) b!5860391))

(assert (= (and b!5859621 ((_ is Concat!24772) (regOne!32366 r!7292))) b!5860392))

(assert (= (and b!5859621 ((_ is Star!15927) (regOne!32366 r!7292))) b!5860393))

(assert (= (and b!5859621 ((_ is Union!15927) (regOne!32366 r!7292))) b!5860394))

(declare-fun b!5860398 () Bool)

(declare-fun e!3593270 () Bool)

(declare-fun tp!1621008 () Bool)

(declare-fun tp!1621010 () Bool)

(assert (=> b!5860398 (= e!3593270 (and tp!1621008 tp!1621010))))

(declare-fun b!5860395 () Bool)

(assert (=> b!5860395 (= e!3593270 tp_is_empty!41107)))

(declare-fun b!5860397 () Bool)

(declare-fun tp!1621009 () Bool)

(assert (=> b!5860397 (= e!3593270 tp!1621009)))

(declare-fun b!5860396 () Bool)

(declare-fun tp!1621007 () Bool)

(declare-fun tp!1621011 () Bool)

(assert (=> b!5860396 (= e!3593270 (and tp!1621007 tp!1621011))))

(assert (=> b!5859621 (= tp!1620921 e!3593270)))

(assert (= (and b!5859621 ((_ is ElementMatch!15927) (regTwo!32366 r!7292))) b!5860395))

(assert (= (and b!5859621 ((_ is Concat!24772) (regTwo!32366 r!7292))) b!5860396))

(assert (= (and b!5859621 ((_ is Star!15927) (regTwo!32366 r!7292))) b!5860397))

(assert (= (and b!5859621 ((_ is Union!15927) (regTwo!32366 r!7292))) b!5860398))

(declare-fun b!5860399 () Bool)

(declare-fun e!3593271 () Bool)

(declare-fun tp!1621012 () Bool)

(declare-fun tp!1621013 () Bool)

(assert (=> b!5860399 (= e!3593271 (and tp!1621012 tp!1621013))))

(assert (=> b!5859635 (= tp!1620919 e!3593271)))

(assert (= (and b!5859635 ((_ is Cons!63956) (exprs!5811 (h!70405 zl!343)))) b!5860399))

(declare-fun b!5860407 () Bool)

(declare-fun e!3593277 () Bool)

(declare-fun tp!1621018 () Bool)

(assert (=> b!5860407 (= e!3593277 tp!1621018)))

(declare-fun b!5860406 () Bool)

(declare-fun tp!1621019 () Bool)

(declare-fun e!3593276 () Bool)

(assert (=> b!5860406 (= e!3593276 (and (inv!83064 (h!70405 (t!377452 zl!343))) e!3593277 tp!1621019))))

(assert (=> b!5859617 (= tp!1620922 e!3593276)))

(assert (= b!5860406 b!5860407))

(assert (= (and b!5859617 ((_ is Cons!63957) (t!377452 zl!343))) b!5860406))

(declare-fun m!6777544 () Bool)

(assert (=> b!5860406 m!6777544))

(declare-fun b!5860411 () Bool)

(declare-fun e!3593278 () Bool)

(declare-fun tp!1621021 () Bool)

(declare-fun tp!1621023 () Bool)

(assert (=> b!5860411 (= e!3593278 (and tp!1621021 tp!1621023))))

(declare-fun b!5860408 () Bool)

(assert (=> b!5860408 (= e!3593278 tp_is_empty!41107)))

(declare-fun b!5860410 () Bool)

(declare-fun tp!1621022 () Bool)

(assert (=> b!5860410 (= e!3593278 tp!1621022)))

(declare-fun b!5860409 () Bool)

(declare-fun tp!1621020 () Bool)

(declare-fun tp!1621024 () Bool)

(assert (=> b!5860409 (= e!3593278 (and tp!1621020 tp!1621024))))

(assert (=> b!5859636 (= tp!1620917 e!3593278)))

(assert (= (and b!5859636 ((_ is ElementMatch!15927) (regOne!32367 r!7292))) b!5860408))

(assert (= (and b!5859636 ((_ is Concat!24772) (regOne!32367 r!7292))) b!5860409))

(assert (= (and b!5859636 ((_ is Star!15927) (regOne!32367 r!7292))) b!5860410))

(assert (= (and b!5859636 ((_ is Union!15927) (regOne!32367 r!7292))) b!5860411))

(declare-fun b!5860415 () Bool)

(declare-fun e!3593279 () Bool)

(declare-fun tp!1621026 () Bool)

(declare-fun tp!1621028 () Bool)

(assert (=> b!5860415 (= e!3593279 (and tp!1621026 tp!1621028))))

(declare-fun b!5860412 () Bool)

(assert (=> b!5860412 (= e!3593279 tp_is_empty!41107)))

(declare-fun b!5860414 () Bool)

(declare-fun tp!1621027 () Bool)

(assert (=> b!5860414 (= e!3593279 tp!1621027)))

(declare-fun b!5860413 () Bool)

(declare-fun tp!1621025 () Bool)

(declare-fun tp!1621029 () Bool)

(assert (=> b!5860413 (= e!3593279 (and tp!1621025 tp!1621029))))

(assert (=> b!5859636 (= tp!1620915 e!3593279)))

(assert (= (and b!5859636 ((_ is ElementMatch!15927) (regTwo!32367 r!7292))) b!5860412))

(assert (= (and b!5859636 ((_ is Concat!24772) (regTwo!32367 r!7292))) b!5860413))

(assert (= (and b!5859636 ((_ is Star!15927) (regTwo!32367 r!7292))) b!5860414))

(assert (= (and b!5859636 ((_ is Union!15927) (regTwo!32367 r!7292))) b!5860415))

(declare-fun b!5860419 () Bool)

(declare-fun e!3593280 () Bool)

(declare-fun tp!1621031 () Bool)

(declare-fun tp!1621033 () Bool)

(assert (=> b!5860419 (= e!3593280 (and tp!1621031 tp!1621033))))

(declare-fun b!5860416 () Bool)

(assert (=> b!5860416 (= e!3593280 tp_is_empty!41107)))

(declare-fun b!5860418 () Bool)

(declare-fun tp!1621032 () Bool)

(assert (=> b!5860418 (= e!3593280 tp!1621032)))

(declare-fun b!5860417 () Bool)

(declare-fun tp!1621030 () Bool)

(declare-fun tp!1621034 () Bool)

(assert (=> b!5860417 (= e!3593280 (and tp!1621030 tp!1621034))))

(assert (=> b!5859628 (= tp!1620924 e!3593280)))

(assert (= (and b!5859628 ((_ is ElementMatch!15927) (reg!16256 r!7292))) b!5860416))

(assert (= (and b!5859628 ((_ is Concat!24772) (reg!16256 r!7292))) b!5860417))

(assert (= (and b!5859628 ((_ is Star!15927) (reg!16256 r!7292))) b!5860418))

(assert (= (and b!5859628 ((_ is Union!15927) (reg!16256 r!7292))) b!5860419))

(declare-fun condSetEmpty!39738 () Bool)

(assert (=> setNonEmpty!39732 (= condSetEmpty!39738 (= setRest!39732 ((as const (Array Context!10622 Bool)) false)))))

(declare-fun setRes!39738 () Bool)

(assert (=> setNonEmpty!39732 (= tp!1620916 setRes!39738)))

(declare-fun setIsEmpty!39738 () Bool)

(assert (=> setIsEmpty!39738 setRes!39738))

(declare-fun setNonEmpty!39738 () Bool)

(declare-fun e!3593283 () Bool)

(declare-fun tp!1621039 () Bool)

(declare-fun setElem!39738 () Context!10622)

(assert (=> setNonEmpty!39738 (= setRes!39738 (and tp!1621039 (inv!83064 setElem!39738) e!3593283))))

(declare-fun setRest!39738 () (InoxSet Context!10622))

(assert (=> setNonEmpty!39738 (= setRest!39732 ((_ map or) (store ((as const (Array Context!10622 Bool)) false) setElem!39738 true) setRest!39738))))

(declare-fun b!5860424 () Bool)

(declare-fun tp!1621040 () Bool)

(assert (=> b!5860424 (= e!3593283 tp!1621040)))

(assert (= (and setNonEmpty!39732 condSetEmpty!39738) setIsEmpty!39738))

(assert (= (and setNonEmpty!39732 (not condSetEmpty!39738)) setNonEmpty!39738))

(assert (= setNonEmpty!39738 b!5860424))

(declare-fun m!6777546 () Bool)

(assert (=> setNonEmpty!39738 m!6777546))

(declare-fun b_lambda!220575 () Bool)

(assert (= b_lambda!220571 (or b!5859627 b_lambda!220575)))

(declare-fun bs!1380689 () Bool)

(declare-fun d!1840349 () Bool)

(assert (= bs!1380689 (and d!1840349 b!5859627)))

(assert (=> bs!1380689 (= (dynLambda!25008 lambda!320394 lt!2305367) (derivationStepZipperUp!1119 lt!2305367 (h!70406 s!2326)))))

(assert (=> bs!1380689 m!6777082))

(assert (=> d!1840323 d!1840349))

(declare-fun b_lambda!220577 () Bool)

(assert (= b_lambda!220569 (or b!5859627 b_lambda!220577)))

(declare-fun bs!1380690 () Bool)

(declare-fun d!1840351 () Bool)

(assert (= bs!1380690 (and d!1840351 b!5859627)))

(assert (=> bs!1380690 (= (dynLambda!25008 lambda!320394 lt!2305350) (derivationStepZipperUp!1119 lt!2305350 (h!70406 s!2326)))))

(assert (=> bs!1380690 m!6777068))

(assert (=> d!1840311 d!1840351))

(declare-fun b_lambda!220579 () Bool)

(assert (= b_lambda!220573 (or b!5859627 b_lambda!220579)))

(declare-fun bs!1380691 () Bool)

(declare-fun d!1840353 () Bool)

(assert (= bs!1380691 (and d!1840353 b!5859627)))

(assert (=> bs!1380691 (= (dynLambda!25008 lambda!320394 (h!70405 zl!343)) (derivationStepZipperUp!1119 (h!70405 zl!343) (h!70406 s!2326)))))

(assert (=> bs!1380691 m!6777058))

(assert (=> d!1840347 d!1840353))

(check-sat (not b!5860246) (not b!5860122) (not bm!459496) (not bm!459470) (not d!1840347) (not b!5860392) (not b!5860112) (not b!5860409) (not d!1840275) (not b!5860243) (not b!5860396) (not b!5860419) (not b!5860347) (not b!5860115) (not b!5860264) (not d!1840341) (not bm!459491) (not d!1840335) (not b!5860393) (not d!1840325) (not bm!459490) (not b!5860262) (not b!5860131) (not d!1840315) (not b!5860406) (not d!1840313) (not b!5860147) (not bm!459446) (not bm!459473) (not b!5860336) (not bm!459478) (not b!5860266) (not bm!459449) (not b!5860249) (not b!5860380) (not b!5860118) (not b!5860375) (not bm!459497) (not b!5860338) (not b!5860304) (not bm!459494) (not bs!1380689) (not d!1840323) (not d!1840333) (not b!5860261) (not b!5860399) (not bm!459493) (not bm!459442) (not b!5860191) (not b!5860353) (not b!5860356) (not setNonEmpty!39738) (not b!5860244) (not d!1840309) (not b!5860308) (not b!5860337) (not b!5860297) (not bm!459448) (not b!5860363) (not b!5860071) (not bm!459472) (not b!5860302) (not d!1840293) (not b!5860305) (not d!1840327) (not b_lambda!220579) (not b!5860415) (not b!5860263) (not bm!459443) (not b!5860200) (not b!5860344) (not d!1840305) (not bs!1380691) (not bm!459464) (not b!5860144) (not b!5860335) (not b!5860359) (not b!5860424) (not b!5860074) (not b!5860299) (not b!5860194) (not b!5860361) (not b!5860120) (not d!1840329) (not b_lambda!220577) (not b!5860418) (not bm!459495) (not b!5860220) (not d!1840299) (not d!1840301) (not bm!459474) (not b!5860265) (not d!1840319) (not b!5860247) (not b!5860329) (not b!5860292) (not bm!459492) (not d!1840337) (not b!5860394) (not bs!1380690) (not b!5860250) (not b!5860366) (not bm!459447) (not d!1840339) (not b!5860119) (not b!5860140) (not b!5860407) (not b!5860413) (not b!5860294) (not b!5860414) (not b!5860145) (not b!5860417) (not b_lambda!220575) (not d!1840279) (not bm!459463) (not b!5860137) (not d!1840277) tp_is_empty!41107 (not b!5860211) (not b!5860398) (not d!1840297) (not b!5860143) (not bm!459465) (not b!5860360) (not b!5860174) (not d!1840343) (not b!5860255) (not b!5860411) (not d!1840283) (not b!5860397) (not b!5860369) (not bm!459480) (not d!1840311) (not b!5860410) (not b!5860241) (not b!5860331) (not b!5860128) (not bm!459479) (not b!5860334) (not d!1840303))
(check-sat)
(get-model)

(declare-fun d!1840485 () Bool)

(declare-fun nullableFct!1913 (Regex!15927) Bool)

(assert (=> d!1840485 (= (nullable!5927 r!7292) (nullableFct!1913 r!7292))))

(declare-fun bs!1380792 () Bool)

(assert (= bs!1380792 d!1840485))

(declare-fun m!6777786 () Bool)

(assert (=> bs!1380792 m!6777786))

(assert (=> b!5860360 d!1840485))

(declare-fun d!1840489 () Bool)

(assert (=> d!1840489 (= (isEmptyExpr!1362 lt!2305428) ((_ is EmptyExpr!15927) lt!2305428))))

(assert (=> b!5860331 d!1840489))

(declare-fun b!5860680 () Bool)

(declare-fun e!3593451 () Bool)

(declare-fun e!3593452 () Bool)

(assert (=> b!5860680 (= e!3593451 e!3593452)))

(declare-fun c!1039700 () Bool)

(assert (=> b!5860680 (= c!1039700 ((_ is EmptyLang!15927) (derivativeStep!4665 (regTwo!32367 r!7292) (head!12408 s!2326))))))

(declare-fun b!5860681 () Bool)

(declare-fun res!2466175 () Bool)

(declare-fun e!3593448 () Bool)

(assert (=> b!5860681 (=> (not res!2466175) (not e!3593448))))

(declare-fun call!459566 () Bool)

(assert (=> b!5860681 (= res!2466175 (not call!459566))))

(declare-fun b!5860682 () Bool)

(declare-fun res!2466171 () Bool)

(declare-fun e!3593454 () Bool)

(assert (=> b!5860682 (=> res!2466171 e!3593454)))

(assert (=> b!5860682 (= res!2466171 e!3593448)))

(declare-fun res!2466178 () Bool)

(assert (=> b!5860682 (=> (not res!2466178) (not e!3593448))))

(declare-fun lt!2305443 () Bool)

(assert (=> b!5860682 (= res!2466178 lt!2305443)))

(declare-fun b!5860683 () Bool)

(assert (=> b!5860683 (= e!3593448 (= (head!12408 (tail!11493 s!2326)) (c!1039387 (derivativeStep!4665 (regTwo!32367 r!7292) (head!12408 s!2326)))))))

(declare-fun d!1840491 () Bool)

(assert (=> d!1840491 e!3593451))

(declare-fun c!1039699 () Bool)

(assert (=> d!1840491 (= c!1039699 ((_ is EmptyExpr!15927) (derivativeStep!4665 (regTwo!32367 r!7292) (head!12408 s!2326))))))

(declare-fun e!3593449 () Bool)

(assert (=> d!1840491 (= lt!2305443 e!3593449)))

(declare-fun c!1039701 () Bool)

(assert (=> d!1840491 (= c!1039701 (isEmpty!35817 (tail!11493 s!2326)))))

(assert (=> d!1840491 (validRegex!7663 (derivativeStep!4665 (regTwo!32367 r!7292) (head!12408 s!2326)))))

(assert (=> d!1840491 (= (matchR!8110 (derivativeStep!4665 (regTwo!32367 r!7292) (head!12408 s!2326)) (tail!11493 s!2326)) lt!2305443)))

(declare-fun b!5860684 () Bool)

(declare-fun e!3593453 () Bool)

(assert (=> b!5860684 (= e!3593454 e!3593453)))

(declare-fun res!2466172 () Bool)

(assert (=> b!5860684 (=> (not res!2466172) (not e!3593453))))

(assert (=> b!5860684 (= res!2466172 (not lt!2305443))))

(declare-fun b!5860685 () Bool)

(assert (=> b!5860685 (= e!3593451 (= lt!2305443 call!459566))))

(declare-fun b!5860686 () Bool)

(declare-fun res!2466177 () Bool)

(declare-fun e!3593450 () Bool)

(assert (=> b!5860686 (=> res!2466177 e!3593450)))

(assert (=> b!5860686 (= res!2466177 (not (isEmpty!35817 (tail!11493 (tail!11493 s!2326)))))))

(declare-fun b!5860687 () Bool)

(declare-fun res!2466176 () Bool)

(assert (=> b!5860687 (=> res!2466176 e!3593454)))

(assert (=> b!5860687 (= res!2466176 (not ((_ is ElementMatch!15927) (derivativeStep!4665 (regTwo!32367 r!7292) (head!12408 s!2326)))))))

(assert (=> b!5860687 (= e!3593452 e!3593454)))

(declare-fun b!5860688 () Bool)

(assert (=> b!5860688 (= e!3593453 e!3593450)))

(declare-fun res!2466174 () Bool)

(assert (=> b!5860688 (=> res!2466174 e!3593450)))

(assert (=> b!5860688 (= res!2466174 call!459566)))

(declare-fun b!5860689 () Bool)

(declare-fun res!2466173 () Bool)

(assert (=> b!5860689 (=> (not res!2466173) (not e!3593448))))

(assert (=> b!5860689 (= res!2466173 (isEmpty!35817 (tail!11493 (tail!11493 s!2326))))))

(declare-fun b!5860690 () Bool)

(assert (=> b!5860690 (= e!3593449 (nullable!5927 (derivativeStep!4665 (regTwo!32367 r!7292) (head!12408 s!2326))))))

(declare-fun bm!459561 () Bool)

(assert (=> bm!459561 (= call!459566 (isEmpty!35817 (tail!11493 s!2326)))))

(declare-fun b!5860691 () Bool)

(assert (=> b!5860691 (= e!3593449 (matchR!8110 (derivativeStep!4665 (derivativeStep!4665 (regTwo!32367 r!7292) (head!12408 s!2326)) (head!12408 (tail!11493 s!2326))) (tail!11493 (tail!11493 s!2326))))))

(declare-fun b!5860692 () Bool)

(assert (=> b!5860692 (= e!3593452 (not lt!2305443))))

(declare-fun b!5860693 () Bool)

(assert (=> b!5860693 (= e!3593450 (not (= (head!12408 (tail!11493 s!2326)) (c!1039387 (derivativeStep!4665 (regTwo!32367 r!7292) (head!12408 s!2326))))))))

(assert (= (and d!1840491 c!1039701) b!5860690))

(assert (= (and d!1840491 (not c!1039701)) b!5860691))

(assert (= (and d!1840491 c!1039699) b!5860685))

(assert (= (and d!1840491 (not c!1039699)) b!5860680))

(assert (= (and b!5860680 c!1039700) b!5860692))

(assert (= (and b!5860680 (not c!1039700)) b!5860687))

(assert (= (and b!5860687 (not res!2466176)) b!5860682))

(assert (= (and b!5860682 res!2466178) b!5860681))

(assert (= (and b!5860681 res!2466175) b!5860689))

(assert (= (and b!5860689 res!2466173) b!5860683))

(assert (= (and b!5860682 (not res!2466171)) b!5860684))

(assert (= (and b!5860684 res!2466172) b!5860688))

(assert (= (and b!5860688 (not res!2466174)) b!5860686))

(assert (= (and b!5860686 (not res!2466177)) b!5860693))

(assert (= (or b!5860685 b!5860681 b!5860688) bm!459561))

(assert (=> bm!459561 m!6777338))

(assert (=> bm!459561 m!6777340))

(assert (=> b!5860683 m!6777338))

(declare-fun m!6777788 () Bool)

(assert (=> b!5860683 m!6777788))

(assert (=> b!5860689 m!6777338))

(declare-fun m!6777790 () Bool)

(assert (=> b!5860689 m!6777790))

(assert (=> b!5860689 m!6777790))

(declare-fun m!6777792 () Bool)

(assert (=> b!5860689 m!6777792))

(assert (=> b!5860686 m!6777338))

(assert (=> b!5860686 m!6777790))

(assert (=> b!5860686 m!6777790))

(assert (=> b!5860686 m!6777792))

(assert (=> b!5860691 m!6777338))

(assert (=> b!5860691 m!6777788))

(assert (=> b!5860691 m!6777342))

(assert (=> b!5860691 m!6777788))

(declare-fun m!6777794 () Bool)

(assert (=> b!5860691 m!6777794))

(assert (=> b!5860691 m!6777338))

(assert (=> b!5860691 m!6777790))

(assert (=> b!5860691 m!6777794))

(assert (=> b!5860691 m!6777790))

(declare-fun m!6777796 () Bool)

(assert (=> b!5860691 m!6777796))

(assert (=> d!1840491 m!6777338))

(assert (=> d!1840491 m!6777340))

(assert (=> d!1840491 m!6777342))

(declare-fun m!6777798 () Bool)

(assert (=> d!1840491 m!6777798))

(assert (=> b!5860690 m!6777342))

(declare-fun m!6777800 () Bool)

(assert (=> b!5860690 m!6777800))

(assert (=> b!5860693 m!6777338))

(assert (=> b!5860693 m!6777788))

(assert (=> b!5860120 d!1840491))

(declare-fun b!5860714 () Bool)

(declare-fun c!1039714 () Bool)

(assert (=> b!5860714 (= c!1039714 (nullable!5927 (regOne!32366 (regTwo!32367 r!7292))))))

(declare-fun e!3593469 () Regex!15927)

(declare-fun e!3593466 () Regex!15927)

(assert (=> b!5860714 (= e!3593469 e!3593466)))

(declare-fun b!5860715 () Bool)

(declare-fun e!3593465 () Regex!15927)

(declare-fun e!3593468 () Regex!15927)

(assert (=> b!5860715 (= e!3593465 e!3593468)))

(declare-fun c!1039716 () Bool)

(assert (=> b!5860715 (= c!1039716 ((_ is ElementMatch!15927) (regTwo!32367 r!7292)))))

(declare-fun call!459578 () Regex!15927)

(declare-fun b!5860716 () Bool)

(declare-fun call!459575 () Regex!15927)

(assert (=> b!5860716 (= e!3593466 (Union!15927 (Concat!24772 call!459575 (regTwo!32366 (regTwo!32367 r!7292))) call!459578))))

(declare-fun b!5860717 () Bool)

(declare-fun call!459576 () Regex!15927)

(assert (=> b!5860717 (= e!3593469 (Concat!24772 call!459576 (regTwo!32367 r!7292)))))

(declare-fun b!5860718 () Bool)

(assert (=> b!5860718 (= e!3593466 (Union!15927 (Concat!24772 call!459578 (regTwo!32366 (regTwo!32367 r!7292))) EmptyLang!15927))))

(declare-fun b!5860719 () Bool)

(assert (=> b!5860719 (= e!3593465 EmptyLang!15927)))

(declare-fun b!5860720 () Bool)

(declare-fun e!3593467 () Regex!15927)

(declare-fun call!459577 () Regex!15927)

(assert (=> b!5860720 (= e!3593467 (Union!15927 call!459575 call!459577))))

(declare-fun bm!459570 () Bool)

(assert (=> bm!459570 (= call!459576 call!459577)))

(declare-fun b!5860721 () Bool)

(declare-fun c!1039713 () Bool)

(assert (=> b!5860721 (= c!1039713 ((_ is Union!15927) (regTwo!32367 r!7292)))))

(assert (=> b!5860721 (= e!3593468 e!3593467)))

(declare-fun d!1840493 () Bool)

(declare-fun lt!2305446 () Regex!15927)

(assert (=> d!1840493 (validRegex!7663 lt!2305446)))

(assert (=> d!1840493 (= lt!2305446 e!3593465)))

(declare-fun c!1039715 () Bool)

(assert (=> d!1840493 (= c!1039715 (or ((_ is EmptyExpr!15927) (regTwo!32367 r!7292)) ((_ is EmptyLang!15927) (regTwo!32367 r!7292))))))

(assert (=> d!1840493 (validRegex!7663 (regTwo!32367 r!7292))))

(assert (=> d!1840493 (= (derivativeStep!4665 (regTwo!32367 r!7292) (head!12408 s!2326)) lt!2305446)))

(declare-fun bm!459571 () Bool)

(assert (=> bm!459571 (= call!459578 call!459576)))

(declare-fun b!5860722 () Bool)

(assert (=> b!5860722 (= e!3593467 e!3593469)))

(declare-fun c!1039712 () Bool)

(assert (=> b!5860722 (= c!1039712 ((_ is Star!15927) (regTwo!32367 r!7292)))))

(declare-fun bm!459572 () Bool)

(assert (=> bm!459572 (= call!459577 (derivativeStep!4665 (ite c!1039713 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039712 (reg!16256 (regTwo!32367 r!7292)) (ite c!1039714 (regTwo!32366 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292))))) (head!12408 s!2326)))))

(declare-fun b!5860723 () Bool)

(assert (=> b!5860723 (= e!3593468 (ite (= (head!12408 s!2326) (c!1039387 (regTwo!32367 r!7292))) EmptyExpr!15927 EmptyLang!15927))))

(declare-fun bm!459573 () Bool)

(assert (=> bm!459573 (= call!459575 (derivativeStep!4665 (ite c!1039713 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292))) (head!12408 s!2326)))))

(assert (= (and d!1840493 c!1039715) b!5860719))

(assert (= (and d!1840493 (not c!1039715)) b!5860715))

(assert (= (and b!5860715 c!1039716) b!5860723))

(assert (= (and b!5860715 (not c!1039716)) b!5860721))

(assert (= (and b!5860721 c!1039713) b!5860720))

(assert (= (and b!5860721 (not c!1039713)) b!5860722))

(assert (= (and b!5860722 c!1039712) b!5860717))

(assert (= (and b!5860722 (not c!1039712)) b!5860714))

(assert (= (and b!5860714 c!1039714) b!5860716))

(assert (= (and b!5860714 (not c!1039714)) b!5860718))

(assert (= (or b!5860716 b!5860718) bm!459571))

(assert (= (or b!5860717 bm!459571) bm!459570))

(assert (= (or b!5860720 bm!459570) bm!459572))

(assert (= (or b!5860720 b!5860716) bm!459573))

(assert (=> b!5860714 m!6777380))

(declare-fun m!6777810 () Bool)

(assert (=> d!1840493 m!6777810))

(assert (=> d!1840493 m!6777346))

(assert (=> bm!459572 m!6777336))

(declare-fun m!6777812 () Bool)

(assert (=> bm!459572 m!6777812))

(assert (=> bm!459573 m!6777336))

(declare-fun m!6777814 () Bool)

(assert (=> bm!459573 m!6777814))

(assert (=> b!5860120 d!1840493))

(declare-fun d!1840503 () Bool)

(assert (=> d!1840503 (= (head!12408 s!2326) (h!70406 s!2326))))

(assert (=> b!5860120 d!1840503))

(declare-fun d!1840505 () Bool)

(assert (=> d!1840505 (= (tail!11493 s!2326) (t!377453 s!2326))))

(assert (=> b!5860120 d!1840505))

(declare-fun d!1840509 () Bool)

(assert (=> d!1840509 (= (isEmpty!35817 (tail!11493 s!2326)) ((_ is Nil!63958) (tail!11493 s!2326)))))

(assert (=> b!5860356 d!1840509))

(assert (=> b!5860356 d!1840505))

(declare-fun bs!1380822 () Bool)

(declare-fun b!5860742 () Bool)

(assert (= bs!1380822 (and b!5860742 b!5860340)))

(declare-fun lambda!320468 () Int)

(assert (=> bs!1380822 (not (= lambda!320468 lambda!320444))))

(declare-fun bs!1380823 () Bool)

(assert (= bs!1380823 (and b!5860742 b!5860346)))

(assert (=> bs!1380823 (= (and (= (reg!16256 (regTwo!32367 (regTwo!32367 r!7292))) (reg!16256 r!7292)) (= (regTwo!32367 (regTwo!32367 r!7292)) r!7292)) (= lambda!320468 lambda!320443))))

(declare-fun bs!1380824 () Bool)

(assert (= bs!1380824 (and b!5860742 b!5860124)))

(assert (=> bs!1380824 (not (= lambda!320468 lambda!320429))))

(declare-fun bs!1380826 () Bool)

(assert (= bs!1380826 (and b!5860742 b!5860073)))

(assert (=> bs!1380826 (= (and (= (reg!16256 (regTwo!32367 (regTwo!32367 r!7292))) (reg!16256 (regTwo!32367 r!7292))) (= (regTwo!32367 (regTwo!32367 r!7292)) (regTwo!32367 r!7292))) (= lambda!320468 lambda!320426))))

(declare-fun bs!1380828 () Bool)

(assert (= bs!1380828 (and b!5860742 b!5860067)))

(assert (=> bs!1380828 (not (= lambda!320468 lambda!320427))))

(declare-fun bs!1380829 () Bool)

(assert (= bs!1380829 (and b!5860742 b!5860130)))

(assert (=> bs!1380829 (= (and (= (reg!16256 (regTwo!32367 (regTwo!32367 r!7292))) (reg!16256 (regOne!32367 r!7292))) (= (regTwo!32367 (regTwo!32367 r!7292)) (regOne!32367 r!7292))) (= lambda!320468 lambda!320428))))

(assert (=> b!5860742 true))

(assert (=> b!5860742 true))

(declare-fun bs!1380830 () Bool)

(declare-fun b!5860736 () Bool)

(assert (= bs!1380830 (and b!5860736 b!5860340)))

(declare-fun lambda!320469 () Int)

(assert (=> bs!1380830 (= (and (= (regOne!32366 (regTwo!32367 (regTwo!32367 r!7292))) (regOne!32366 r!7292)) (= (regTwo!32366 (regTwo!32367 (regTwo!32367 r!7292))) (regTwo!32366 r!7292))) (= lambda!320469 lambda!320444))))

(declare-fun bs!1380831 () Bool)

(assert (= bs!1380831 (and b!5860736 b!5860346)))

(assert (=> bs!1380831 (not (= lambda!320469 lambda!320443))))

(declare-fun bs!1380832 () Bool)

(assert (= bs!1380832 (and b!5860736 b!5860124)))

(assert (=> bs!1380832 (= (and (= (regOne!32366 (regTwo!32367 (regTwo!32367 r!7292))) (regOne!32366 (regOne!32367 r!7292))) (= (regTwo!32366 (regTwo!32367 (regTwo!32367 r!7292))) (regTwo!32366 (regOne!32367 r!7292)))) (= lambda!320469 lambda!320429))))

(declare-fun bs!1380833 () Bool)

(assert (= bs!1380833 (and b!5860736 b!5860073)))

(assert (=> bs!1380833 (not (= lambda!320469 lambda!320426))))

(declare-fun bs!1380834 () Bool)

(assert (= bs!1380834 (and b!5860736 b!5860130)))

(assert (=> bs!1380834 (not (= lambda!320469 lambda!320428))))

(declare-fun bs!1380835 () Bool)

(assert (= bs!1380835 (and b!5860736 b!5860067)))

(assert (=> bs!1380835 (= (and (= (regOne!32366 (regTwo!32367 (regTwo!32367 r!7292))) (regOne!32366 (regTwo!32367 r!7292))) (= (regTwo!32366 (regTwo!32367 (regTwo!32367 r!7292))) (regTwo!32366 (regTwo!32367 r!7292)))) (= lambda!320469 lambda!320427))))

(declare-fun bs!1380836 () Bool)

(assert (= bs!1380836 (and b!5860736 b!5860742)))

(assert (=> bs!1380836 (not (= lambda!320469 lambda!320468))))

(assert (=> b!5860736 true))

(assert (=> b!5860736 true))

(declare-fun b!5860735 () Bool)

(declare-fun c!1039723 () Bool)

(assert (=> b!5860735 (= c!1039723 ((_ is Union!15927) (regTwo!32367 (regTwo!32367 r!7292))))))

(declare-fun e!3593479 () Bool)

(declare-fun e!3593476 () Bool)

(assert (=> b!5860735 (= e!3593479 e!3593476)))

(declare-fun e!3593481 () Bool)

(declare-fun call!459586 () Bool)

(assert (=> b!5860736 (= e!3593481 call!459586)))

(declare-fun b!5860737 () Bool)

(declare-fun e!3593478 () Bool)

(declare-fun e!3593482 () Bool)

(assert (=> b!5860737 (= e!3593478 e!3593482)))

(declare-fun res!2466180 () Bool)

(assert (=> b!5860737 (= res!2466180 (not ((_ is EmptyLang!15927) (regTwo!32367 (regTwo!32367 r!7292)))))))

(assert (=> b!5860737 (=> (not res!2466180) (not e!3593482))))

(declare-fun b!5860738 () Bool)

(declare-fun res!2466182 () Bool)

(declare-fun e!3593477 () Bool)

(assert (=> b!5860738 (=> res!2466182 e!3593477)))

(declare-fun call!459585 () Bool)

(assert (=> b!5860738 (= res!2466182 call!459585)))

(assert (=> b!5860738 (= e!3593481 e!3593477)))

(declare-fun d!1840513 () Bool)

(declare-fun c!1039722 () Bool)

(assert (=> d!1840513 (= c!1039722 ((_ is EmptyExpr!15927) (regTwo!32367 (regTwo!32367 r!7292))))))

(assert (=> d!1840513 (= (matchRSpec!3028 (regTwo!32367 (regTwo!32367 r!7292)) s!2326) e!3593478)))

(declare-fun bm!459580 () Bool)

(assert (=> bm!459580 (= call!459585 (isEmpty!35817 s!2326))))

(declare-fun b!5860739 () Bool)

(declare-fun c!1039725 () Bool)

(assert (=> b!5860739 (= c!1039725 ((_ is ElementMatch!15927) (regTwo!32367 (regTwo!32367 r!7292))))))

(assert (=> b!5860739 (= e!3593482 e!3593479)))

(declare-fun c!1039724 () Bool)

(declare-fun bm!459581 () Bool)

(assert (=> bm!459581 (= call!459586 (Exists!2999 (ite c!1039724 lambda!320468 lambda!320469)))))

(declare-fun b!5860740 () Bool)

(declare-fun e!3593480 () Bool)

(assert (=> b!5860740 (= e!3593476 e!3593480)))

(declare-fun res!2466181 () Bool)

(assert (=> b!5860740 (= res!2466181 (matchRSpec!3028 (regOne!32367 (regTwo!32367 (regTwo!32367 r!7292))) s!2326))))

(assert (=> b!5860740 (=> res!2466181 e!3593480)))

(declare-fun b!5860741 () Bool)

(assert (=> b!5860741 (= e!3593476 e!3593481)))

(assert (=> b!5860741 (= c!1039724 ((_ is Star!15927) (regTwo!32367 (regTwo!32367 r!7292))))))

(assert (=> b!5860742 (= e!3593477 call!459586)))

(declare-fun b!5860743 () Bool)

(assert (=> b!5860743 (= e!3593480 (matchRSpec!3028 (regTwo!32367 (regTwo!32367 (regTwo!32367 r!7292))) s!2326))))

(declare-fun b!5860744 () Bool)

(assert (=> b!5860744 (= e!3593479 (= s!2326 (Cons!63958 (c!1039387 (regTwo!32367 (regTwo!32367 r!7292))) Nil!63958)))))

(declare-fun b!5860745 () Bool)

(assert (=> b!5860745 (= e!3593478 call!459585)))

(assert (= (and d!1840513 c!1039722) b!5860745))

(assert (= (and d!1840513 (not c!1039722)) b!5860737))

(assert (= (and b!5860737 res!2466180) b!5860739))

(assert (= (and b!5860739 c!1039725) b!5860744))

(assert (= (and b!5860739 (not c!1039725)) b!5860735))

(assert (= (and b!5860735 c!1039723) b!5860740))

(assert (= (and b!5860735 (not c!1039723)) b!5860741))

(assert (= (and b!5860740 (not res!2466181)) b!5860743))

(assert (= (and b!5860741 c!1039724) b!5860738))

(assert (= (and b!5860741 (not c!1039724)) b!5860736))

(assert (= (and b!5860738 (not res!2466182)) b!5860742))

(assert (= (or b!5860742 b!5860736) bm!459581))

(assert (= (or b!5860745 b!5860738) bm!459580))

(assert (=> bm!459580 m!6777324))

(declare-fun m!6777840 () Bool)

(assert (=> bm!459581 m!6777840))

(declare-fun m!6777842 () Bool)

(assert (=> b!5860740 m!6777842))

(declare-fun m!6777846 () Bool)

(assert (=> b!5860743 m!6777846))

(assert (=> b!5860074 d!1840513))

(declare-fun c!1039739 () Bool)

(declare-fun d!1840525 () Bool)

(assert (=> d!1840525 (= c!1039739 (and ((_ is ElementMatch!15927) (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292))))) (= (c!1039387 (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292))))) (h!70406 s!2326))))))

(declare-fun e!3593503 () (InoxSet Context!10622))

(assert (=> d!1840525 (= (derivationStepZipperDown!1193 (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292)))) (ite (or c!1039541 c!1039543) lt!2305344 (Context!10623 call!459472)) (h!70406 s!2326)) e!3593503)))

(declare-fun b!5860768 () Bool)

(declare-fun e!3593502 () (InoxSet Context!10622))

(declare-fun call!459599 () (InoxSet Context!10622))

(assert (=> b!5860768 (= e!3593502 call!459599)))

(declare-fun b!5860769 () Bool)

(declare-fun e!3593501 () (InoxSet Context!10622))

(assert (=> b!5860769 (= e!3593501 call!459599)))

(declare-fun b!5860770 () Bool)

(assert (=> b!5860770 (= e!3593502 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459594 () Bool)

(declare-fun call!459601 () (InoxSet Context!10622))

(assert (=> bm!459594 (= call!459599 call!459601)))

(declare-fun bm!459595 () Bool)

(declare-fun call!459600 () (InoxSet Context!10622))

(declare-fun c!1039738 () Bool)

(declare-fun call!459603 () List!64080)

(assert (=> bm!459595 (= call!459600 (derivationStepZipperDown!1193 (ite c!1039738 (regOne!32367 (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292))))) (regOne!32366 (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292)))))) (ite c!1039738 (ite (or c!1039541 c!1039543) lt!2305344 (Context!10623 call!459472)) (Context!10623 call!459603)) (h!70406 s!2326)))))

(declare-fun call!459607 () List!64080)

(declare-fun c!1039741 () Bool)

(declare-fun call!459605 () (InoxSet Context!10622))

(declare-fun bm!459598 () Bool)

(declare-fun c!1039737 () Bool)

(assert (=> bm!459598 (= call!459605 (derivationStepZipperDown!1193 (ite c!1039738 (regTwo!32367 (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292))))) (ite c!1039741 (regTwo!32366 (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292))))) (ite c!1039737 (regOne!32366 (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292))))) (reg!16256 (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292)))))))) (ite (or c!1039738 c!1039741) (ite (or c!1039541 c!1039543) lt!2305344 (Context!10623 call!459472)) (Context!10623 call!459607)) (h!70406 s!2326)))))

(declare-fun b!5860777 () Bool)

(declare-fun c!1039736 () Bool)

(assert (=> b!5860777 (= c!1039736 ((_ is Star!15927) (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292))))))))

(assert (=> b!5860777 (= e!3593501 e!3593502)))

(declare-fun b!5860779 () Bool)

(declare-fun e!3593500 () Bool)

(assert (=> b!5860779 (= e!3593500 (nullable!5927 (regOne!32366 (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292)))))))))

(declare-fun b!5860781 () Bool)

(declare-fun e!3593495 () (InoxSet Context!10622))

(assert (=> b!5860781 (= e!3593503 e!3593495)))

(assert (=> b!5860781 (= c!1039738 ((_ is Union!15927) (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292))))))))

(declare-fun b!5860783 () Bool)

(declare-fun e!3593496 () (InoxSet Context!10622))

(assert (=> b!5860783 (= e!3593496 ((_ map or) call!459600 call!459601))))

(declare-fun b!5860784 () Bool)

(assert (=> b!5860784 (= e!3593496 e!3593501)))

(assert (=> b!5860784 (= c!1039737 ((_ is Concat!24772) (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292))))))))

(declare-fun b!5860785 () Bool)

(assert (=> b!5860785 (= e!3593503 (store ((as const (Array Context!10622 Bool)) false) (ite (or c!1039541 c!1039543) lt!2305344 (Context!10623 call!459472)) true))))

(declare-fun bm!459600 () Bool)

(assert (=> bm!459600 (= call!459603 ($colon$colon!1832 (exprs!5811 (ite (or c!1039541 c!1039543) lt!2305344 (Context!10623 call!459472))) (ite (or c!1039741 c!1039737) (regTwo!32366 (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292))))) (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292)))))))))

(declare-fun bm!459601 () Bool)

(assert (=> bm!459601 (= call!459601 call!459605)))

(declare-fun bm!459602 () Bool)

(assert (=> bm!459602 (= call!459607 call!459603)))

(declare-fun b!5860786 () Bool)

(assert (=> b!5860786 (= c!1039741 e!3593500)))

(declare-fun res!2466186 () Bool)

(assert (=> b!5860786 (=> (not res!2466186) (not e!3593500))))

(assert (=> b!5860786 (= res!2466186 ((_ is Concat!24772) (ite c!1039541 (regTwo!32367 r!7292) (ite c!1039543 (regTwo!32366 r!7292) (ite c!1039540 (regOne!32366 r!7292) (reg!16256 r!7292))))))))

(assert (=> b!5860786 (= e!3593495 e!3593496)))

(declare-fun b!5860787 () Bool)

(assert (=> b!5860787 (= e!3593495 ((_ map or) call!459600 call!459605))))

(assert (= (and d!1840525 c!1039739) b!5860785))

(assert (= (and d!1840525 (not c!1039739)) b!5860781))

(assert (= (and b!5860781 c!1039738) b!5860787))

(assert (= (and b!5860781 (not c!1039738)) b!5860786))

(assert (= (and b!5860786 res!2466186) b!5860779))

(assert (= (and b!5860786 c!1039741) b!5860783))

(assert (= (and b!5860786 (not c!1039741)) b!5860784))

(assert (= (and b!5860784 c!1039737) b!5860769))

(assert (= (and b!5860784 (not c!1039737)) b!5860777))

(assert (= (and b!5860777 c!1039736) b!5860768))

(assert (= (and b!5860777 (not c!1039736)) b!5860770))

(assert (= (or b!5860769 b!5860768) bm!459602))

(assert (= (or b!5860769 b!5860768) bm!459594))

(assert (= (or b!5860783 bm!459602) bm!459600))

(assert (= (or b!5860783 bm!459594) bm!459601))

(assert (= (or b!5860787 bm!459601) bm!459598))

(assert (= (or b!5860787 b!5860783) bm!459595))

(declare-fun m!6777866 () Bool)

(assert (=> b!5860779 m!6777866))

(declare-fun m!6777868 () Bool)

(assert (=> bm!459600 m!6777868))

(declare-fun m!6777870 () Bool)

(assert (=> bm!459598 m!6777870))

(declare-fun m!6777872 () Bool)

(assert (=> b!5860785 m!6777872))

(declare-fun m!6777874 () Bool)

(assert (=> bm!459595 m!6777874))

(assert (=> bm!459464 d!1840525))

(declare-fun d!1840535 () Bool)

(declare-fun c!1039751 () Bool)

(assert (=> d!1840535 (= c!1039751 (and ((_ is ElementMatch!15927) (h!70404 (exprs!5811 lt!2305367))) (= (c!1039387 (h!70404 (exprs!5811 lt!2305367))) (h!70406 s!2326))))))

(declare-fun e!3593521 () (InoxSet Context!10622))

(assert (=> d!1840535 (= (derivationStepZipperDown!1193 (h!70404 (exprs!5811 lt!2305367)) (Context!10623 (t!377451 (exprs!5811 lt!2305367))) (h!70406 s!2326)) e!3593521)))

(declare-fun b!5860801 () Bool)

(declare-fun e!3593520 () (InoxSet Context!10622))

(declare-fun call!459614 () (InoxSet Context!10622))

(assert (=> b!5860801 (= e!3593520 call!459614)))

(declare-fun b!5860802 () Bool)

(declare-fun e!3593519 () (InoxSet Context!10622))

(assert (=> b!5860802 (= e!3593519 call!459614)))

(declare-fun b!5860803 () Bool)

(assert (=> b!5860803 (= e!3593520 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459609 () Bool)

(declare-fun call!459616 () (InoxSet Context!10622))

(assert (=> bm!459609 (= call!459614 call!459616)))

(declare-fun call!459617 () List!64080)

(declare-fun bm!459610 () Bool)

(declare-fun c!1039750 () Bool)

(declare-fun call!459615 () (InoxSet Context!10622))

(assert (=> bm!459610 (= call!459615 (derivationStepZipperDown!1193 (ite c!1039750 (regOne!32367 (h!70404 (exprs!5811 lt!2305367))) (regOne!32366 (h!70404 (exprs!5811 lt!2305367)))) (ite c!1039750 (Context!10623 (t!377451 (exprs!5811 lt!2305367))) (Context!10623 call!459617)) (h!70406 s!2326)))))

(declare-fun bm!459611 () Bool)

(declare-fun call!459618 () (InoxSet Context!10622))

(declare-fun c!1039749 () Bool)

(declare-fun call!459619 () List!64080)

(declare-fun c!1039752 () Bool)

(assert (=> bm!459611 (= call!459618 (derivationStepZipperDown!1193 (ite c!1039750 (regTwo!32367 (h!70404 (exprs!5811 lt!2305367))) (ite c!1039752 (regTwo!32366 (h!70404 (exprs!5811 lt!2305367))) (ite c!1039749 (regOne!32366 (h!70404 (exprs!5811 lt!2305367))) (reg!16256 (h!70404 (exprs!5811 lt!2305367)))))) (ite (or c!1039750 c!1039752) (Context!10623 (t!377451 (exprs!5811 lt!2305367))) (Context!10623 call!459619)) (h!70406 s!2326)))))

(declare-fun b!5860804 () Bool)

(declare-fun c!1039748 () Bool)

(assert (=> b!5860804 (= c!1039748 ((_ is Star!15927) (h!70404 (exprs!5811 lt!2305367))))))

(assert (=> b!5860804 (= e!3593519 e!3593520)))

(declare-fun b!5860805 () Bool)

(declare-fun e!3593518 () Bool)

(assert (=> b!5860805 (= e!3593518 (nullable!5927 (regOne!32366 (h!70404 (exprs!5811 lt!2305367)))))))

(declare-fun b!5860806 () Bool)

(declare-fun e!3593516 () (InoxSet Context!10622))

(assert (=> b!5860806 (= e!3593521 e!3593516)))

(assert (=> b!5860806 (= c!1039750 ((_ is Union!15927) (h!70404 (exprs!5811 lt!2305367))))))

(declare-fun b!5860807 () Bool)

(declare-fun e!3593517 () (InoxSet Context!10622))

(assert (=> b!5860807 (= e!3593517 ((_ map or) call!459615 call!459616))))

(declare-fun b!5860808 () Bool)

(assert (=> b!5860808 (= e!3593517 e!3593519)))

(assert (=> b!5860808 (= c!1039749 ((_ is Concat!24772) (h!70404 (exprs!5811 lt!2305367))))))

(declare-fun b!5860809 () Bool)

(assert (=> b!5860809 (= e!3593521 (store ((as const (Array Context!10622 Bool)) false) (Context!10623 (t!377451 (exprs!5811 lt!2305367))) true))))

(declare-fun bm!459612 () Bool)

(assert (=> bm!459612 (= call!459617 ($colon$colon!1832 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305367)))) (ite (or c!1039752 c!1039749) (regTwo!32366 (h!70404 (exprs!5811 lt!2305367))) (h!70404 (exprs!5811 lt!2305367)))))))

(declare-fun bm!459613 () Bool)

(assert (=> bm!459613 (= call!459616 call!459618)))

(declare-fun bm!459614 () Bool)

(assert (=> bm!459614 (= call!459619 call!459617)))

(declare-fun b!5860810 () Bool)

(assert (=> b!5860810 (= c!1039752 e!3593518)))

(declare-fun res!2466194 () Bool)

(assert (=> b!5860810 (=> (not res!2466194) (not e!3593518))))

(assert (=> b!5860810 (= res!2466194 ((_ is Concat!24772) (h!70404 (exprs!5811 lt!2305367))))))

(assert (=> b!5860810 (= e!3593516 e!3593517)))

(declare-fun b!5860811 () Bool)

(assert (=> b!5860811 (= e!3593516 ((_ map or) call!459615 call!459618))))

(assert (= (and d!1840535 c!1039751) b!5860809))

(assert (= (and d!1840535 (not c!1039751)) b!5860806))

(assert (= (and b!5860806 c!1039750) b!5860811))

(assert (= (and b!5860806 (not c!1039750)) b!5860810))

(assert (= (and b!5860810 res!2466194) b!5860805))

(assert (= (and b!5860810 c!1039752) b!5860807))

(assert (= (and b!5860810 (not c!1039752)) b!5860808))

(assert (= (and b!5860808 c!1039749) b!5860802))

(assert (= (and b!5860808 (not c!1039749)) b!5860804))

(assert (= (and b!5860804 c!1039748) b!5860801))

(assert (= (and b!5860804 (not c!1039748)) b!5860803))

(assert (= (or b!5860802 b!5860801) bm!459614))

(assert (= (or b!5860802 b!5860801) bm!459609))

(assert (= (or b!5860807 bm!459614) bm!459612))

(assert (= (or b!5860807 bm!459609) bm!459613))

(assert (= (or b!5860811 bm!459613) bm!459611))

(assert (= (or b!5860811 b!5860807) bm!459610))

(declare-fun m!6777884 () Bool)

(assert (=> b!5860805 m!6777884))

(declare-fun m!6777888 () Bool)

(assert (=> bm!459612 m!6777888))

(declare-fun m!6777890 () Bool)

(assert (=> bm!459611 m!6777890))

(declare-fun m!6777892 () Bool)

(assert (=> b!5860809 m!6777892))

(declare-fun m!6777894 () Bool)

(assert (=> bm!459610 m!6777894))

(assert (=> bm!459492 d!1840535))

(declare-fun d!1840541 () Bool)

(declare-fun c!1039758 () Bool)

(assert (=> d!1840541 (= c!1039758 (and ((_ is ElementMatch!15927) (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (= (c!1039387 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (h!70406 s!2326))))))

(declare-fun e!3593530 () (InoxSet Context!10622))

(assert (=> d!1840541 (= (derivationStepZipperDown!1193 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))) (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (h!70406 s!2326)) e!3593530)))

(declare-fun b!5860817 () Bool)

(declare-fun e!3593529 () (InoxSet Context!10622))

(declare-fun call!459621 () (InoxSet Context!10622))

(assert (=> b!5860817 (= e!3593529 call!459621)))

(declare-fun b!5860818 () Bool)

(declare-fun e!3593528 () (InoxSet Context!10622))

(assert (=> b!5860818 (= e!3593528 call!459621)))

(declare-fun b!5860819 () Bool)

(assert (=> b!5860819 (= e!3593529 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459616 () Bool)

(declare-fun call!459623 () (InoxSet Context!10622))

(assert (=> bm!459616 (= call!459621 call!459623)))

(declare-fun c!1039757 () Bool)

(declare-fun call!459622 () (InoxSet Context!10622))

(declare-fun bm!459617 () Bool)

(declare-fun call!459624 () List!64080)

(assert (=> bm!459617 (= call!459622 (derivationStepZipperDown!1193 (ite c!1039757 (regOne!32367 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (regOne!32366 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))))) (ite c!1039757 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (Context!10623 call!459624)) (h!70406 s!2326)))))

(declare-fun call!459625 () (InoxSet Context!10622))

(declare-fun c!1039756 () Bool)

(declare-fun bm!459618 () Bool)

(declare-fun call!459626 () List!64080)

(declare-fun c!1039759 () Bool)

(assert (=> bm!459618 (= call!459625 (derivationStepZipperDown!1193 (ite c!1039757 (regTwo!32367 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (ite c!1039759 (regTwo!32366 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (ite c!1039756 (regOne!32366 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (reg!16256 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))))))) (ite (or c!1039757 c!1039759) (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (Context!10623 call!459626)) (h!70406 s!2326)))))

(declare-fun b!5860820 () Bool)

(declare-fun c!1039755 () Bool)

(assert (=> b!5860820 (= c!1039755 ((_ is Star!15927) (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))))))

(assert (=> b!5860820 (= e!3593528 e!3593529)))

(declare-fun b!5860821 () Bool)

(declare-fun e!3593527 () Bool)

(assert (=> b!5860821 (= e!3593527 (nullable!5927 (regOne!32366 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))))))))

(declare-fun b!5860822 () Bool)

(declare-fun e!3593525 () (InoxSet Context!10622))

(assert (=> b!5860822 (= e!3593530 e!3593525)))

(assert (=> b!5860822 (= c!1039757 ((_ is Union!15927) (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))))))

(declare-fun b!5860823 () Bool)

(declare-fun e!3593526 () (InoxSet Context!10622))

(assert (=> b!5860823 (= e!3593526 ((_ map or) call!459622 call!459623))))

(declare-fun b!5860824 () Bool)

(assert (=> b!5860824 (= e!3593526 e!3593528)))

(assert (=> b!5860824 (= c!1039756 ((_ is Concat!24772) (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))))))

(declare-fun b!5860825 () Bool)

(assert (=> b!5860825 (= e!3593530 (store ((as const (Array Context!10622 Bool)) false) (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) true))))

(declare-fun bm!459619 () Bool)

(assert (=> bm!459619 (= call!459624 ($colon$colon!1832 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))))) (ite (or c!1039759 c!1039756) (regTwo!32366 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))))))))

(declare-fun bm!459620 () Bool)

(assert (=> bm!459620 (= call!459623 call!459625)))

(declare-fun bm!459621 () Bool)

(assert (=> bm!459621 (= call!459626 call!459624)))

(declare-fun b!5860826 () Bool)

(assert (=> b!5860826 (= c!1039759 e!3593527)))

(declare-fun res!2466196 () Bool)

(assert (=> b!5860826 (=> (not res!2466196) (not e!3593527))))

(assert (=> b!5860826 (= res!2466196 ((_ is Concat!24772) (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))))))

(assert (=> b!5860826 (= e!3593525 e!3593526)))

(declare-fun b!5860827 () Bool)

(assert (=> b!5860827 (= e!3593525 ((_ map or) call!459622 call!459625))))

(assert (= (and d!1840541 c!1039758) b!5860825))

(assert (= (and d!1840541 (not c!1039758)) b!5860822))

(assert (= (and b!5860822 c!1039757) b!5860827))

(assert (= (and b!5860822 (not c!1039757)) b!5860826))

(assert (= (and b!5860826 res!2466196) b!5860821))

(assert (= (and b!5860826 c!1039759) b!5860823))

(assert (= (and b!5860826 (not c!1039759)) b!5860824))

(assert (= (and b!5860824 c!1039756) b!5860818))

(assert (= (and b!5860824 (not c!1039756)) b!5860820))

(assert (= (and b!5860820 c!1039755) b!5860817))

(assert (= (and b!5860820 (not c!1039755)) b!5860819))

(assert (= (or b!5860818 b!5860817) bm!459621))

(assert (= (or b!5860818 b!5860817) bm!459616))

(assert (= (or b!5860823 bm!459621) bm!459619))

(assert (= (or b!5860823 bm!459616) bm!459620))

(assert (= (or b!5860827 bm!459620) bm!459618))

(assert (= (or b!5860827 b!5860823) bm!459617))

(declare-fun m!6777904 () Bool)

(assert (=> b!5860821 m!6777904))

(declare-fun m!6777906 () Bool)

(assert (=> bm!459619 m!6777906))

(declare-fun m!6777908 () Bool)

(assert (=> bm!459618 m!6777908))

(declare-fun m!6777910 () Bool)

(assert (=> b!5860825 m!6777910))

(declare-fun m!6777912 () Bool)

(assert (=> bm!459617 m!6777912))

(assert (=> bm!459470 d!1840541))

(declare-fun d!1840547 () Bool)

(declare-fun c!1039765 () Bool)

(assert (=> d!1840547 (= c!1039765 (isEmpty!35817 (t!377453 s!2326)))))

(declare-fun e!3593538 () Bool)

(assert (=> d!1840547 (= (matchZipper!1993 ((_ map or) lt!2305359 lt!2305368) (t!377453 s!2326)) e!3593538)))

(declare-fun b!5860840 () Bool)

(assert (=> b!5860840 (= e!3593538 (nullableZipper!1766 ((_ map or) lt!2305359 lt!2305368)))))

(declare-fun b!5860841 () Bool)

(assert (=> b!5860841 (= e!3593538 (matchZipper!1993 (derivationStepZipper!1926 ((_ map or) lt!2305359 lt!2305368) (head!12408 (t!377453 s!2326))) (tail!11493 (t!377453 s!2326))))))

(assert (= (and d!1840547 c!1039765) b!5860840))

(assert (= (and d!1840547 (not c!1039765)) b!5860841))

(assert (=> d!1840547 m!6777426))

(declare-fun m!6777914 () Bool)

(assert (=> b!5860840 m!6777914))

(assert (=> b!5860841 m!6777430))

(assert (=> b!5860841 m!6777430))

(declare-fun m!6777916 () Bool)

(assert (=> b!5860841 m!6777916))

(assert (=> b!5860841 m!6777434))

(assert (=> b!5860841 m!6777916))

(assert (=> b!5860841 m!6777434))

(declare-fun m!6777918 () Bool)

(assert (=> b!5860841 m!6777918))

(assert (=> d!1840327 d!1840547))

(assert (=> d!1840327 d!1840325))

(declare-fun d!1840549 () Bool)

(declare-fun e!3593549 () Bool)

(assert (=> d!1840549 (= (matchZipper!1993 ((_ map or) lt!2305359 lt!2305368) (t!377453 s!2326)) e!3593549)))

(declare-fun res!2466206 () Bool)

(assert (=> d!1840549 (=> res!2466206 e!3593549)))

(assert (=> d!1840549 (= res!2466206 (matchZipper!1993 lt!2305359 (t!377453 s!2326)))))

(assert (=> d!1840549 true))

(declare-fun _$48!1437 () Unit!157125)

(assert (=> d!1840549 (= (choose!44433 lt!2305359 lt!2305368 (t!377453 s!2326)) _$48!1437)))

(declare-fun b!5860855 () Bool)

(assert (=> b!5860855 (= e!3593549 (matchZipper!1993 lt!2305368 (t!377453 s!2326)))))

(assert (= (and d!1840549 (not res!2466206)) b!5860855))

(assert (=> d!1840549 m!6777490))

(assert (=> d!1840549 m!6777094))

(assert (=> b!5860855 m!6777038))

(assert (=> d!1840327 d!1840549))

(declare-fun d!1840563 () Bool)

(declare-fun lambda!320475 () Int)

(declare-fun exists!2311 ((InoxSet Context!10622) Int) Bool)

(assert (=> d!1840563 (= (nullableZipper!1766 lt!2305368) (exists!2311 lt!2305368 lambda!320475))))

(declare-fun bs!1380861 () Bool)

(assert (= bs!1380861 d!1840563))

(declare-fun m!6777962 () Bool)

(assert (=> bs!1380861 m!6777962))

(assert (=> b!5860261 d!1840563))

(assert (=> bs!1380691 d!1840345))

(declare-fun d!1840573 () Bool)

(assert (=> d!1840573 (= ($colon$colon!1832 (exprs!5811 lt!2305344) (ite (or c!1039554 c!1039551) (regTwo!32366 (regTwo!32367 r!7292)) (regTwo!32367 r!7292))) (Cons!63956 (ite (or c!1039554 c!1039551) (regTwo!32366 (regTwo!32367 r!7292)) (regTwo!32367 r!7292)) (exprs!5811 lt!2305344)))))

(assert (=> bm!459474 d!1840573))

(declare-fun b!5860874 () Bool)

(declare-fun e!3593566 () Bool)

(declare-fun e!3593567 () Bool)

(assert (=> b!5860874 (= e!3593566 e!3593567)))

(declare-fun c!1039777 () Bool)

(assert (=> b!5860874 (= c!1039777 ((_ is EmptyLang!15927) (derivativeStep!4665 (regOne!32367 r!7292) (head!12408 s!2326))))))

(declare-fun b!5860875 () Bool)

(declare-fun res!2466219 () Bool)

(declare-fun e!3593561 () Bool)

(assert (=> b!5860875 (=> (not res!2466219) (not e!3593561))))

(declare-fun call!459640 () Bool)

(assert (=> b!5860875 (= res!2466219 (not call!459640))))

(declare-fun b!5860876 () Bool)

(declare-fun res!2466214 () Bool)

(declare-fun e!3593569 () Bool)

(assert (=> b!5860876 (=> res!2466214 e!3593569)))

(assert (=> b!5860876 (= res!2466214 e!3593561)))

(declare-fun res!2466222 () Bool)

(assert (=> b!5860876 (=> (not res!2466222) (not e!3593561))))

(declare-fun lt!2305447 () Bool)

(assert (=> b!5860876 (= res!2466222 lt!2305447)))

(declare-fun b!5860877 () Bool)

(assert (=> b!5860877 (= e!3593561 (= (head!12408 (tail!11493 s!2326)) (c!1039387 (derivativeStep!4665 (regOne!32367 r!7292) (head!12408 s!2326)))))))

(declare-fun d!1840579 () Bool)

(assert (=> d!1840579 e!3593566))

(declare-fun c!1039776 () Bool)

(assert (=> d!1840579 (= c!1039776 ((_ is EmptyExpr!15927) (derivativeStep!4665 (regOne!32367 r!7292) (head!12408 s!2326))))))

(declare-fun e!3593564 () Bool)

(assert (=> d!1840579 (= lt!2305447 e!3593564)))

(declare-fun c!1039778 () Bool)

(assert (=> d!1840579 (= c!1039778 (isEmpty!35817 (tail!11493 s!2326)))))

(assert (=> d!1840579 (validRegex!7663 (derivativeStep!4665 (regOne!32367 r!7292) (head!12408 s!2326)))))

(assert (=> d!1840579 (= (matchR!8110 (derivativeStep!4665 (regOne!32367 r!7292) (head!12408 s!2326)) (tail!11493 s!2326)) lt!2305447)))

(declare-fun b!5860878 () Bool)

(declare-fun e!3593568 () Bool)

(assert (=> b!5860878 (= e!3593569 e!3593568)))

(declare-fun res!2466215 () Bool)

(assert (=> b!5860878 (=> (not res!2466215) (not e!3593568))))

(assert (=> b!5860878 (= res!2466215 (not lt!2305447))))

(declare-fun b!5860879 () Bool)

(assert (=> b!5860879 (= e!3593566 (= lt!2305447 call!459640))))

(declare-fun b!5860880 () Bool)

(declare-fun res!2466221 () Bool)

(declare-fun e!3593565 () Bool)

(assert (=> b!5860880 (=> res!2466221 e!3593565)))

(assert (=> b!5860880 (= res!2466221 (not (isEmpty!35817 (tail!11493 (tail!11493 s!2326)))))))

(declare-fun b!5860881 () Bool)

(declare-fun res!2466220 () Bool)

(assert (=> b!5860881 (=> res!2466220 e!3593569)))

(assert (=> b!5860881 (= res!2466220 (not ((_ is ElementMatch!15927) (derivativeStep!4665 (regOne!32367 r!7292) (head!12408 s!2326)))))))

(assert (=> b!5860881 (= e!3593567 e!3593569)))

(declare-fun b!5860882 () Bool)

(assert (=> b!5860882 (= e!3593568 e!3593565)))

(declare-fun res!2466218 () Bool)

(assert (=> b!5860882 (=> res!2466218 e!3593565)))

(assert (=> b!5860882 (= res!2466218 call!459640)))

(declare-fun b!5860883 () Bool)

(declare-fun res!2466216 () Bool)

(assert (=> b!5860883 (=> (not res!2466216) (not e!3593561))))

(assert (=> b!5860883 (= res!2466216 (isEmpty!35817 (tail!11493 (tail!11493 s!2326))))))

(declare-fun b!5860884 () Bool)

(assert (=> b!5860884 (= e!3593564 (nullable!5927 (derivativeStep!4665 (regOne!32367 r!7292) (head!12408 s!2326))))))

(declare-fun bm!459635 () Bool)

(assert (=> bm!459635 (= call!459640 (isEmpty!35817 (tail!11493 s!2326)))))

(declare-fun b!5860885 () Bool)

(assert (=> b!5860885 (= e!3593564 (matchR!8110 (derivativeStep!4665 (derivativeStep!4665 (regOne!32367 r!7292) (head!12408 s!2326)) (head!12408 (tail!11493 s!2326))) (tail!11493 (tail!11493 s!2326))))))

(declare-fun b!5860886 () Bool)

(assert (=> b!5860886 (= e!3593567 (not lt!2305447))))

(declare-fun b!5860887 () Bool)

(assert (=> b!5860887 (= e!3593565 (not (= (head!12408 (tail!11493 s!2326)) (c!1039387 (derivativeStep!4665 (regOne!32367 r!7292) (head!12408 s!2326))))))))

(assert (= (and d!1840579 c!1039778) b!5860884))

(assert (= (and d!1840579 (not c!1039778)) b!5860885))

(assert (= (and d!1840579 c!1039776) b!5860879))

(assert (= (and d!1840579 (not c!1039776)) b!5860874))

(assert (= (and b!5860874 c!1039777) b!5860886))

(assert (= (and b!5860874 (not c!1039777)) b!5860881))

(assert (= (and b!5860881 (not res!2466220)) b!5860876))

(assert (= (and b!5860876 res!2466222) b!5860875))

(assert (= (and b!5860875 res!2466219) b!5860883))

(assert (= (and b!5860883 res!2466216) b!5860877))

(assert (= (and b!5860876 (not res!2466214)) b!5860878))

(assert (= (and b!5860878 res!2466215) b!5860882))

(assert (= (and b!5860882 (not res!2466218)) b!5860880))

(assert (= (and b!5860880 (not res!2466221)) b!5860887))

(assert (= (or b!5860879 b!5860875 b!5860882) bm!459635))

(assert (=> bm!459635 m!6777338))

(assert (=> bm!459635 m!6777340))

(assert (=> b!5860877 m!6777338))

(assert (=> b!5860877 m!6777788))

(assert (=> b!5860883 m!6777338))

(assert (=> b!5860883 m!6777790))

(assert (=> b!5860883 m!6777790))

(assert (=> b!5860883 m!6777792))

(assert (=> b!5860880 m!6777338))

(assert (=> b!5860880 m!6777790))

(assert (=> b!5860880 m!6777790))

(assert (=> b!5860880 m!6777792))

(assert (=> b!5860885 m!6777338))

(assert (=> b!5860885 m!6777788))

(assert (=> b!5860885 m!6777358))

(assert (=> b!5860885 m!6777788))

(declare-fun m!6777976 () Bool)

(assert (=> b!5860885 m!6777976))

(assert (=> b!5860885 m!6777338))

(assert (=> b!5860885 m!6777790))

(assert (=> b!5860885 m!6777976))

(assert (=> b!5860885 m!6777790))

(declare-fun m!6777978 () Bool)

(assert (=> b!5860885 m!6777978))

(assert (=> d!1840579 m!6777338))

(assert (=> d!1840579 m!6777340))

(assert (=> d!1840579 m!6777358))

(declare-fun m!6777980 () Bool)

(assert (=> d!1840579 m!6777980))

(assert (=> b!5860884 m!6777358))

(declare-fun m!6777982 () Bool)

(assert (=> b!5860884 m!6777982))

(assert (=> b!5860887 m!6777338))

(assert (=> b!5860887 m!6777788))

(assert (=> b!5860145 d!1840579))

(declare-fun b!5860899 () Bool)

(declare-fun c!1039786 () Bool)

(assert (=> b!5860899 (= c!1039786 (nullable!5927 (regOne!32366 (regOne!32367 r!7292))))))

(declare-fun e!3593580 () Regex!15927)

(declare-fun e!3593577 () Regex!15927)

(assert (=> b!5860899 (= e!3593580 e!3593577)))

(declare-fun b!5860900 () Bool)

(declare-fun e!3593576 () Regex!15927)

(declare-fun e!3593579 () Regex!15927)

(assert (=> b!5860900 (= e!3593576 e!3593579)))

(declare-fun c!1039788 () Bool)

(assert (=> b!5860900 (= c!1039788 ((_ is ElementMatch!15927) (regOne!32367 r!7292)))))

(declare-fun b!5860901 () Bool)

(declare-fun call!459650 () Regex!15927)

(declare-fun call!459647 () Regex!15927)

(assert (=> b!5860901 (= e!3593577 (Union!15927 (Concat!24772 call!459647 (regTwo!32366 (regOne!32367 r!7292))) call!459650))))

(declare-fun b!5860902 () Bool)

(declare-fun call!459648 () Regex!15927)

(assert (=> b!5860902 (= e!3593580 (Concat!24772 call!459648 (regOne!32367 r!7292)))))

(declare-fun b!5860903 () Bool)

(assert (=> b!5860903 (= e!3593577 (Union!15927 (Concat!24772 call!459650 (regTwo!32366 (regOne!32367 r!7292))) EmptyLang!15927))))

(declare-fun b!5860904 () Bool)

(assert (=> b!5860904 (= e!3593576 EmptyLang!15927)))

(declare-fun b!5860905 () Bool)

(declare-fun e!3593578 () Regex!15927)

(declare-fun call!459649 () Regex!15927)

(assert (=> b!5860905 (= e!3593578 (Union!15927 call!459647 call!459649))))

(declare-fun bm!459642 () Bool)

(assert (=> bm!459642 (= call!459648 call!459649)))

(declare-fun b!5860906 () Bool)

(declare-fun c!1039785 () Bool)

(assert (=> b!5860906 (= c!1039785 ((_ is Union!15927) (regOne!32367 r!7292)))))

(assert (=> b!5860906 (= e!3593579 e!3593578)))

(declare-fun d!1840587 () Bool)

(declare-fun lt!2305448 () Regex!15927)

(assert (=> d!1840587 (validRegex!7663 lt!2305448)))

(assert (=> d!1840587 (= lt!2305448 e!3593576)))

(declare-fun c!1039787 () Bool)

(assert (=> d!1840587 (= c!1039787 (or ((_ is EmptyExpr!15927) (regOne!32367 r!7292)) ((_ is EmptyLang!15927) (regOne!32367 r!7292))))))

(assert (=> d!1840587 (validRegex!7663 (regOne!32367 r!7292))))

(assert (=> d!1840587 (= (derivativeStep!4665 (regOne!32367 r!7292) (head!12408 s!2326)) lt!2305448)))

(declare-fun bm!459643 () Bool)

(assert (=> bm!459643 (= call!459650 call!459648)))

(declare-fun b!5860907 () Bool)

(assert (=> b!5860907 (= e!3593578 e!3593580)))

(declare-fun c!1039784 () Bool)

(assert (=> b!5860907 (= c!1039784 ((_ is Star!15927) (regOne!32367 r!7292)))))

(declare-fun bm!459644 () Bool)

(assert (=> bm!459644 (= call!459649 (derivativeStep!4665 (ite c!1039785 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039784 (reg!16256 (regOne!32367 r!7292)) (ite c!1039786 (regTwo!32366 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292))))) (head!12408 s!2326)))))

(declare-fun b!5860908 () Bool)

(assert (=> b!5860908 (= e!3593579 (ite (= (head!12408 s!2326) (c!1039387 (regOne!32367 r!7292))) EmptyExpr!15927 EmptyLang!15927))))

(declare-fun bm!459645 () Bool)

(assert (=> bm!459645 (= call!459647 (derivativeStep!4665 (ite c!1039785 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292))) (head!12408 s!2326)))))

(assert (= (and d!1840587 c!1039787) b!5860904))

(assert (= (and d!1840587 (not c!1039787)) b!5860900))

(assert (= (and b!5860900 c!1039788) b!5860908))

(assert (= (and b!5860900 (not c!1039788)) b!5860906))

(assert (= (and b!5860906 c!1039785) b!5860905))

(assert (= (and b!5860906 (not c!1039785)) b!5860907))

(assert (= (and b!5860907 c!1039784) b!5860902))

(assert (= (and b!5860907 (not c!1039784)) b!5860899))

(assert (= (and b!5860899 c!1039786) b!5860901))

(assert (= (and b!5860899 (not c!1039786)) b!5860903))

(assert (= (or b!5860901 b!5860903) bm!459643))

(assert (= (or b!5860902 bm!459643) bm!459642))

(assert (= (or b!5860905 bm!459642) bm!459644))

(assert (= (or b!5860905 b!5860901) bm!459645))

(assert (=> b!5860899 m!6777388))

(declare-fun m!6777994 () Bool)

(assert (=> d!1840587 m!6777994))

(assert (=> d!1840587 m!6777334))

(assert (=> bm!459644 m!6777336))

(declare-fun m!6777996 () Bool)

(assert (=> bm!459644 m!6777996))

(assert (=> bm!459645 m!6777336))

(declare-fun m!6778000 () Bool)

(assert (=> bm!459645 m!6778000))

(assert (=> b!5860145 d!1840587))

(assert (=> b!5860145 d!1840503))

(assert (=> b!5860145 d!1840505))

(declare-fun d!1840593 () Bool)

(declare-fun choose!44435 (Int) Bool)

(assert (=> d!1840593 (= (Exists!2999 (ite c!1039511 lambda!320426 lambda!320427)) (choose!44435 (ite c!1039511 lambda!320426 lambda!320427)))))

(declare-fun bs!1380869 () Bool)

(assert (= bs!1380869 d!1840593))

(declare-fun m!6778006 () Bool)

(assert (=> bs!1380869 m!6778006))

(assert (=> bm!459443 d!1840593))

(declare-fun d!1840595 () Bool)

(assert (=> d!1840595 (= (nullable!5927 (reg!16256 r!7292)) (nullableFct!1913 (reg!16256 r!7292)))))

(declare-fun bs!1380872 () Bool)

(assert (= bs!1380872 d!1840595))

(declare-fun m!6778008 () Bool)

(assert (=> bs!1380872 m!6778008))

(assert (=> b!5860292 d!1840595))

(declare-fun d!1840597 () Bool)

(assert (=> d!1840597 (= (isEmpty!35817 s!2326) ((_ is Nil!63958) s!2326))))

(assert (=> bm!459494 d!1840597))

(assert (=> b!5860308 d!1840301))

(declare-fun d!1840599 () Bool)

(declare-fun c!1039798 () Bool)

(assert (=> d!1840599 (= c!1039798 (and ((_ is ElementMatch!15927) (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292)))))) (= (c!1039387 (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292)))))) (h!70406 s!2326))))))

(declare-fun e!3593595 () (InoxSet Context!10622))

(assert (=> d!1840599 (= (derivationStepZipperDown!1193 (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292))))) (ite (or c!1039557 c!1039559) lt!2305344 (Context!10623 call!459487)) (h!70406 s!2326)) e!3593595)))

(declare-fun b!5860924 () Bool)

(declare-fun e!3593594 () (InoxSet Context!10622))

(declare-fun call!459652 () (InoxSet Context!10622))

(assert (=> b!5860924 (= e!3593594 call!459652)))

(declare-fun b!5860925 () Bool)

(declare-fun e!3593593 () (InoxSet Context!10622))

(assert (=> b!5860925 (= e!3593593 call!459652)))

(declare-fun b!5860926 () Bool)

(assert (=> b!5860926 (= e!3593594 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459647 () Bool)

(declare-fun call!459654 () (InoxSet Context!10622))

(assert (=> bm!459647 (= call!459652 call!459654)))

(declare-fun c!1039797 () Bool)

(declare-fun call!459655 () List!64080)

(declare-fun call!459653 () (InoxSet Context!10622))

(declare-fun bm!459648 () Bool)

(assert (=> bm!459648 (= call!459653 (derivationStepZipperDown!1193 (ite c!1039797 (regOne!32367 (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292)))))) (regOne!32366 (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292))))))) (ite c!1039797 (ite (or c!1039557 c!1039559) lt!2305344 (Context!10623 call!459487)) (Context!10623 call!459655)) (h!70406 s!2326)))))

(declare-fun call!459657 () List!64080)

(declare-fun call!459656 () (InoxSet Context!10622))

(declare-fun c!1039796 () Bool)

(declare-fun c!1039799 () Bool)

(declare-fun bm!459649 () Bool)

(assert (=> bm!459649 (= call!459656 (derivationStepZipperDown!1193 (ite c!1039797 (regTwo!32367 (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292)))))) (ite c!1039799 (regTwo!32366 (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292)))))) (ite c!1039796 (regOne!32366 (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292)))))) (reg!16256 (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292))))))))) (ite (or c!1039797 c!1039799) (ite (or c!1039557 c!1039559) lt!2305344 (Context!10623 call!459487)) (Context!10623 call!459657)) (h!70406 s!2326)))))

(declare-fun c!1039795 () Bool)

(declare-fun b!5860927 () Bool)

(assert (=> b!5860927 (= c!1039795 ((_ is Star!15927) (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292)))))))))

(assert (=> b!5860927 (= e!3593593 e!3593594)))

(declare-fun e!3593592 () Bool)

(declare-fun b!5860928 () Bool)

(assert (=> b!5860928 (= e!3593592 (nullable!5927 (regOne!32366 (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292))))))))))

(declare-fun b!5860929 () Bool)

(declare-fun e!3593590 () (InoxSet Context!10622))

(assert (=> b!5860929 (= e!3593595 e!3593590)))

(assert (=> b!5860929 (= c!1039797 ((_ is Union!15927) (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292)))))))))

(declare-fun b!5860930 () Bool)

(declare-fun e!3593591 () (InoxSet Context!10622))

(assert (=> b!5860930 (= e!3593591 ((_ map or) call!459653 call!459654))))

(declare-fun b!5860931 () Bool)

(assert (=> b!5860931 (= e!3593591 e!3593593)))

(assert (=> b!5860931 (= c!1039796 ((_ is Concat!24772) (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292)))))))))

(declare-fun b!5860932 () Bool)

(assert (=> b!5860932 (= e!3593595 (store ((as const (Array Context!10622 Bool)) false) (ite (or c!1039557 c!1039559) lt!2305344 (Context!10623 call!459487)) true))))

(declare-fun bm!459650 () Bool)

(assert (=> bm!459650 (= call!459655 ($colon$colon!1832 (exprs!5811 (ite (or c!1039557 c!1039559) lt!2305344 (Context!10623 call!459487))) (ite (or c!1039799 c!1039796) (regTwo!32366 (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292)))))) (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292))))))))))

(declare-fun bm!459651 () Bool)

(assert (=> bm!459651 (= call!459654 call!459656)))

(declare-fun bm!459652 () Bool)

(assert (=> bm!459652 (= call!459657 call!459655)))

(declare-fun b!5860933 () Bool)

(assert (=> b!5860933 (= c!1039799 e!3593592)))

(declare-fun res!2466227 () Bool)

(assert (=> b!5860933 (=> (not res!2466227) (not e!3593592))))

(assert (=> b!5860933 (= res!2466227 ((_ is Concat!24772) (ite c!1039557 (regTwo!32367 (regOne!32367 r!7292)) (ite c!1039559 (regTwo!32366 (regOne!32367 r!7292)) (ite c!1039556 (regOne!32366 (regOne!32367 r!7292)) (reg!16256 (regOne!32367 r!7292)))))))))

(assert (=> b!5860933 (= e!3593590 e!3593591)))

(declare-fun b!5860934 () Bool)

(assert (=> b!5860934 (= e!3593590 ((_ map or) call!459653 call!459656))))

(assert (= (and d!1840599 c!1039798) b!5860932))

(assert (= (and d!1840599 (not c!1039798)) b!5860929))

(assert (= (and b!5860929 c!1039797) b!5860934))

(assert (= (and b!5860929 (not c!1039797)) b!5860933))

(assert (= (and b!5860933 res!2466227) b!5860928))

(assert (= (and b!5860933 c!1039799) b!5860930))

(assert (= (and b!5860933 (not c!1039799)) b!5860931))

(assert (= (and b!5860931 c!1039796) b!5860925))

(assert (= (and b!5860931 (not c!1039796)) b!5860927))

(assert (= (and b!5860927 c!1039795) b!5860924))

(assert (= (and b!5860927 (not c!1039795)) b!5860926))

(assert (= (or b!5860925 b!5860924) bm!459652))

(assert (= (or b!5860925 b!5860924) bm!459647))

(assert (= (or b!5860930 bm!459652) bm!459650))

(assert (= (or b!5860930 bm!459647) bm!459651))

(assert (= (or b!5860934 bm!459651) bm!459649))

(assert (= (or b!5860934 b!5860930) bm!459648))

(declare-fun m!6778028 () Bool)

(assert (=> b!5860928 m!6778028))

(declare-fun m!6778030 () Bool)

(assert (=> bm!459650 m!6778030))

(declare-fun m!6778032 () Bool)

(assert (=> bm!459649 m!6778032))

(declare-fun m!6778034 () Bool)

(assert (=> b!5860932 m!6778034))

(declare-fun m!6778036 () Bool)

(assert (=> bm!459648 m!6778036))

(assert (=> bm!459479 d!1840599))

(declare-fun d!1840607 () Bool)

(declare-fun res!2466240 () Bool)

(declare-fun e!3593612 () Bool)

(assert (=> d!1840607 (=> res!2466240 e!3593612)))

(assert (=> d!1840607 (= res!2466240 ((_ is Nil!63957) lt!2305412))))

(assert (=> d!1840607 (= (noDuplicate!1792 lt!2305412) e!3593612)))

(declare-fun b!5860963 () Bool)

(declare-fun e!3593613 () Bool)

(assert (=> b!5860963 (= e!3593612 e!3593613)))

(declare-fun res!2466241 () Bool)

(assert (=> b!5860963 (=> (not res!2466241) (not e!3593613))))

(declare-fun contains!19933 (List!64081 Context!10622) Bool)

(assert (=> b!5860963 (= res!2466241 (not (contains!19933 (t!377452 lt!2305412) (h!70405 lt!2305412))))))

(declare-fun b!5860964 () Bool)

(assert (=> b!5860964 (= e!3593613 (noDuplicate!1792 (t!377452 lt!2305412)))))

(assert (= (and d!1840607 (not res!2466240)) b!5860963))

(assert (= (and b!5860963 res!2466241) b!5860964))

(declare-fun m!6778052 () Bool)

(assert (=> b!5860963 m!6778052))

(declare-fun m!6778054 () Bool)

(assert (=> b!5860964 m!6778054))

(assert (=> d!1840293 d!1840607))

(declare-fun d!1840613 () Bool)

(declare-fun e!3593631 () Bool)

(assert (=> d!1840613 e!3593631))

(declare-fun res!2466246 () Bool)

(assert (=> d!1840613 (=> (not res!2466246) (not e!3593631))))

(declare-fun res!2466247 () List!64081)

(assert (=> d!1840613 (= res!2466246 (noDuplicate!1792 res!2466247))))

(declare-fun e!3593630 () Bool)

(assert (=> d!1840613 e!3593630))

(assert (=> d!1840613 (= (choose!44430 z!1189) res!2466247)))

(declare-fun b!5861003 () Bool)

(declare-fun e!3593632 () Bool)

(declare-fun tp!1621102 () Bool)

(assert (=> b!5861003 (= e!3593632 tp!1621102)))

(declare-fun tp!1621103 () Bool)

(declare-fun b!5861002 () Bool)

(assert (=> b!5861002 (= e!3593630 (and (inv!83064 (h!70405 res!2466247)) e!3593632 tp!1621103))))

(declare-fun b!5861004 () Bool)

(assert (=> b!5861004 (= e!3593631 (= (content!11757 res!2466247) z!1189))))

(assert (= b!5861002 b!5861003))

(assert (= (and d!1840613 ((_ is Cons!63957) res!2466247)) b!5861002))

(assert (= (and d!1840613 res!2466246) b!5861004))

(declare-fun m!6778058 () Bool)

(assert (=> d!1840613 m!6778058))

(declare-fun m!6778060 () Bool)

(assert (=> b!5861002 m!6778060))

(declare-fun m!6778062 () Bool)

(assert (=> b!5861004 m!6778062))

(assert (=> d!1840293 d!1840613))

(declare-fun d!1840615 () Bool)

(assert (=> d!1840615 (= (isEmptyLang!1370 lt!2305415) ((_ is EmptyLang!15927) lt!2305415))))

(assert (=> b!5860247 d!1840615))

(declare-fun d!1840617 () Bool)

(declare-fun c!1039808 () Bool)

(assert (=> d!1840617 (= c!1039808 (isEmpty!35817 (tail!11493 (t!377453 s!2326))))))

(declare-fun e!3593638 () Bool)

(assert (=> d!1840617 (= (matchZipper!1993 (derivationStepZipper!1926 lt!2305359 (head!12408 (t!377453 s!2326))) (tail!11493 (t!377453 s!2326))) e!3593638)))

(declare-fun b!5861025 () Bool)

(assert (=> b!5861025 (= e!3593638 (nullableZipper!1766 (derivationStepZipper!1926 lt!2305359 (head!12408 (t!377453 s!2326)))))))

(declare-fun b!5861026 () Bool)

(assert (=> b!5861026 (= e!3593638 (matchZipper!1993 (derivationStepZipper!1926 (derivationStepZipper!1926 lt!2305359 (head!12408 (t!377453 s!2326))) (head!12408 (tail!11493 (t!377453 s!2326)))) (tail!11493 (tail!11493 (t!377453 s!2326)))))))

(assert (= (and d!1840617 c!1039808) b!5861025))

(assert (= (and d!1840617 (not c!1039808)) b!5861026))

(assert (=> d!1840617 m!6777434))

(declare-fun m!6778064 () Bool)

(assert (=> d!1840617 m!6778064))

(assert (=> b!5861025 m!6777486))

(declare-fun m!6778066 () Bool)

(assert (=> b!5861025 m!6778066))

(assert (=> b!5861026 m!6777434))

(declare-fun m!6778068 () Bool)

(assert (=> b!5861026 m!6778068))

(assert (=> b!5861026 m!6777486))

(assert (=> b!5861026 m!6778068))

(declare-fun m!6778070 () Bool)

(assert (=> b!5861026 m!6778070))

(assert (=> b!5861026 m!6777434))

(declare-fun m!6778074 () Bool)

(assert (=> b!5861026 m!6778074))

(assert (=> b!5861026 m!6778070))

(assert (=> b!5861026 m!6778074))

(declare-fun m!6778076 () Bool)

(assert (=> b!5861026 m!6778076))

(assert (=> b!5860305 d!1840617))

(declare-fun bs!1380876 () Bool)

(declare-fun d!1840619 () Bool)

(assert (= bs!1380876 (and d!1840619 b!5859627)))

(declare-fun lambda!320477 () Int)

(assert (=> bs!1380876 (= (= (head!12408 (t!377453 s!2326)) (h!70406 s!2326)) (= lambda!320477 lambda!320394))))

(declare-fun bs!1380877 () Bool)

(assert (= bs!1380877 (and d!1840619 d!1840341)))

(assert (=> bs!1380877 (= (= (head!12408 (t!377453 s!2326)) (h!70406 s!2326)) (= lambda!320477 lambda!320448))))

(assert (=> d!1840619 true))

(assert (=> d!1840619 (= (derivationStepZipper!1926 lt!2305359 (head!12408 (t!377453 s!2326))) (flatMap!1458 lt!2305359 lambda!320477))))

(declare-fun bs!1380878 () Bool)

(assert (= bs!1380878 d!1840619))

(declare-fun m!6778078 () Bool)

(assert (=> bs!1380878 m!6778078))

(assert (=> b!5860305 d!1840619))

(declare-fun d!1840621 () Bool)

(assert (=> d!1840621 (= (head!12408 (t!377453 s!2326)) (h!70406 (t!377453 s!2326)))))

(assert (=> b!5860305 d!1840621))

(declare-fun d!1840623 () Bool)

(assert (=> d!1840623 (= (tail!11493 (t!377453 s!2326)) (t!377453 (t!377453 s!2326)))))

(assert (=> b!5860305 d!1840623))

(declare-fun d!1840625 () Bool)

(declare-fun c!1039812 () Bool)

(assert (=> d!1840625 (= c!1039812 (and ((_ is ElementMatch!15927) (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))) (= (c!1039387 (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))) (h!70406 s!2326))))))

(declare-fun e!3593653 () (InoxSet Context!10622))

(assert (=> d!1840625 (= (derivationStepZipperDown!1193 (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292))) (ite c!1039552 lt!2305344 (Context!10623 call!459479)) (h!70406 s!2326)) e!3593653)))

(declare-fun b!5861051 () Bool)

(declare-fun e!3593652 () (InoxSet Context!10622))

(declare-fun call!459663 () (InoxSet Context!10622))

(assert (=> b!5861051 (= e!3593652 call!459663)))

(declare-fun b!5861052 () Bool)

(declare-fun e!3593651 () (InoxSet Context!10622))

(assert (=> b!5861052 (= e!3593651 call!459663)))

(declare-fun b!5861053 () Bool)

(assert (=> b!5861053 (= e!3593652 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459658 () Bool)

(declare-fun call!459665 () (InoxSet Context!10622))

(assert (=> bm!459658 (= call!459663 call!459665)))

(declare-fun call!459664 () (InoxSet Context!10622))

(declare-fun c!1039811 () Bool)

(declare-fun call!459666 () List!64080)

(declare-fun bm!459659 () Bool)

(assert (=> bm!459659 (= call!459664 (derivationStepZipperDown!1193 (ite c!1039811 (regOne!32367 (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))) (regOne!32366 (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292))))) (ite c!1039811 (ite c!1039552 lt!2305344 (Context!10623 call!459479)) (Context!10623 call!459666)) (h!70406 s!2326)))))

(declare-fun c!1039810 () Bool)

(declare-fun bm!459660 () Bool)

(declare-fun call!459667 () (InoxSet Context!10622))

(declare-fun call!459668 () List!64080)

(declare-fun c!1039813 () Bool)

(assert (=> bm!459660 (= call!459667 (derivationStepZipperDown!1193 (ite c!1039811 (regTwo!32367 (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))) (ite c!1039813 (regTwo!32366 (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))) (ite c!1039810 (regOne!32366 (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))) (reg!16256 (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292))))))) (ite (or c!1039811 c!1039813) (ite c!1039552 lt!2305344 (Context!10623 call!459479)) (Context!10623 call!459668)) (h!70406 s!2326)))))

(declare-fun b!5861054 () Bool)

(declare-fun c!1039809 () Bool)

(assert (=> b!5861054 (= c!1039809 ((_ is Star!15927) (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))))))

(assert (=> b!5861054 (= e!3593651 e!3593652)))

(declare-fun b!5861055 () Bool)

(declare-fun e!3593650 () Bool)

(assert (=> b!5861055 (= e!3593650 (nullable!5927 (regOne!32366 (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292))))))))

(declare-fun b!5861056 () Bool)

(declare-fun e!3593647 () (InoxSet Context!10622))

(assert (=> b!5861056 (= e!3593653 e!3593647)))

(assert (=> b!5861056 (= c!1039811 ((_ is Union!15927) (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))))))

(declare-fun b!5861057 () Bool)

(declare-fun e!3593649 () (InoxSet Context!10622))

(assert (=> b!5861057 (= e!3593649 ((_ map or) call!459664 call!459665))))

(declare-fun b!5861058 () Bool)

(assert (=> b!5861058 (= e!3593649 e!3593651)))

(assert (=> b!5861058 (= c!1039810 ((_ is Concat!24772) (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))))))

(declare-fun b!5861059 () Bool)

(assert (=> b!5861059 (= e!3593653 (store ((as const (Array Context!10622 Bool)) false) (ite c!1039552 lt!2305344 (Context!10623 call!459479)) true))))

(declare-fun bm!459661 () Bool)

(assert (=> bm!459661 (= call!459666 ($colon$colon!1832 (exprs!5811 (ite c!1039552 lt!2305344 (Context!10623 call!459479))) (ite (or c!1039813 c!1039810) (regTwo!32366 (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))) (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292))))))))

(declare-fun bm!459662 () Bool)

(assert (=> bm!459662 (= call!459665 call!459667)))

(declare-fun bm!459663 () Bool)

(assert (=> bm!459663 (= call!459668 call!459666)))

(declare-fun b!5861060 () Bool)

(assert (=> b!5861060 (= c!1039813 e!3593650)))

(declare-fun res!2466248 () Bool)

(assert (=> b!5861060 (=> (not res!2466248) (not e!3593650))))

(assert (=> b!5861060 (= res!2466248 ((_ is Concat!24772) (ite c!1039552 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))))))

(assert (=> b!5861060 (= e!3593647 e!3593649)))

(declare-fun b!5861061 () Bool)

(assert (=> b!5861061 (= e!3593647 ((_ map or) call!459664 call!459667))))

(assert (= (and d!1840625 c!1039812) b!5861059))

(assert (= (and d!1840625 (not c!1039812)) b!5861056))

(assert (= (and b!5861056 c!1039811) b!5861061))

(assert (= (and b!5861056 (not c!1039811)) b!5861060))

(assert (= (and b!5861060 res!2466248) b!5861055))

(assert (= (and b!5861060 c!1039813) b!5861057))

(assert (= (and b!5861060 (not c!1039813)) b!5861058))

(assert (= (and b!5861058 c!1039810) b!5861052))

(assert (= (and b!5861058 (not c!1039810)) b!5861054))

(assert (= (and b!5861054 c!1039809) b!5861051))

(assert (= (and b!5861054 (not c!1039809)) b!5861053))

(assert (= (or b!5861052 b!5861051) bm!459663))

(assert (= (or b!5861052 b!5861051) bm!459658))

(assert (= (or b!5861057 bm!459663) bm!459661))

(assert (= (or b!5861057 bm!459658) bm!459662))

(assert (= (or b!5861061 bm!459662) bm!459660))

(assert (= (or b!5861061 b!5861057) bm!459659))

(declare-fun m!6778080 () Bool)

(assert (=> b!5861055 m!6778080))

(declare-fun m!6778082 () Bool)

(assert (=> bm!459661 m!6778082))

(declare-fun m!6778084 () Bool)

(assert (=> bm!459660 m!6778084))

(declare-fun m!6778086 () Bool)

(assert (=> b!5861059 m!6778086))

(declare-fun m!6778088 () Bool)

(assert (=> bm!459659 m!6778088))

(assert (=> bm!459472 d!1840625))

(declare-fun bs!1380879 () Bool)

(declare-fun b!5861098 () Bool)

(assert (= bs!1380879 (and b!5861098 b!5860340)))

(declare-fun lambda!320478 () Int)

(assert (=> bs!1380879 (not (= lambda!320478 lambda!320444))))

(declare-fun bs!1380880 () Bool)

(assert (= bs!1380880 (and b!5861098 b!5860346)))

(assert (=> bs!1380880 (= (and (= (reg!16256 (regTwo!32367 (regOne!32367 r!7292))) (reg!16256 r!7292)) (= (regTwo!32367 (regOne!32367 r!7292)) r!7292)) (= lambda!320478 lambda!320443))))

(declare-fun bs!1380881 () Bool)

(assert (= bs!1380881 (and b!5861098 b!5860124)))

(assert (=> bs!1380881 (not (= lambda!320478 lambda!320429))))

(declare-fun bs!1380882 () Bool)

(assert (= bs!1380882 (and b!5861098 b!5860073)))

(assert (=> bs!1380882 (= (and (= (reg!16256 (regTwo!32367 (regOne!32367 r!7292))) (reg!16256 (regTwo!32367 r!7292))) (= (regTwo!32367 (regOne!32367 r!7292)) (regTwo!32367 r!7292))) (= lambda!320478 lambda!320426))))

(declare-fun bs!1380884 () Bool)

(assert (= bs!1380884 (and b!5861098 b!5860736)))

(assert (=> bs!1380884 (not (= lambda!320478 lambda!320469))))

(declare-fun bs!1380887 () Bool)

(assert (= bs!1380887 (and b!5861098 b!5860130)))

(assert (=> bs!1380887 (= (and (= (reg!16256 (regTwo!32367 (regOne!32367 r!7292))) (reg!16256 (regOne!32367 r!7292))) (= (regTwo!32367 (regOne!32367 r!7292)) (regOne!32367 r!7292))) (= lambda!320478 lambda!320428))))

(declare-fun bs!1380889 () Bool)

(assert (= bs!1380889 (and b!5861098 b!5860067)))

(assert (=> bs!1380889 (not (= lambda!320478 lambda!320427))))

(declare-fun bs!1380892 () Bool)

(assert (= bs!1380892 (and b!5861098 b!5860742)))

(assert (=> bs!1380892 (= (and (= (reg!16256 (regTwo!32367 (regOne!32367 r!7292))) (reg!16256 (regTwo!32367 (regTwo!32367 r!7292)))) (= (regTwo!32367 (regOne!32367 r!7292)) (regTwo!32367 (regTwo!32367 r!7292)))) (= lambda!320478 lambda!320468))))

(assert (=> b!5861098 true))

(assert (=> b!5861098 true))

(declare-fun bs!1380893 () Bool)

(declare-fun b!5861092 () Bool)

(assert (= bs!1380893 (and b!5861092 b!5860340)))

(declare-fun lambda!320479 () Int)

(assert (=> bs!1380893 (= (and (= (regOne!32366 (regTwo!32367 (regOne!32367 r!7292))) (regOne!32366 r!7292)) (= (regTwo!32366 (regTwo!32367 (regOne!32367 r!7292))) (regTwo!32366 r!7292))) (= lambda!320479 lambda!320444))))

(declare-fun bs!1380894 () Bool)

(assert (= bs!1380894 (and b!5861092 b!5860346)))

(assert (=> bs!1380894 (not (= lambda!320479 lambda!320443))))

(declare-fun bs!1380895 () Bool)

(assert (= bs!1380895 (and b!5861092 b!5861098)))

(assert (=> bs!1380895 (not (= lambda!320479 lambda!320478))))

(declare-fun bs!1380896 () Bool)

(assert (= bs!1380896 (and b!5861092 b!5860124)))

(assert (=> bs!1380896 (= (and (= (regOne!32366 (regTwo!32367 (regOne!32367 r!7292))) (regOne!32366 (regOne!32367 r!7292))) (= (regTwo!32366 (regTwo!32367 (regOne!32367 r!7292))) (regTwo!32366 (regOne!32367 r!7292)))) (= lambda!320479 lambda!320429))))

(declare-fun bs!1380897 () Bool)

(assert (= bs!1380897 (and b!5861092 b!5860073)))

(assert (=> bs!1380897 (not (= lambda!320479 lambda!320426))))

(declare-fun bs!1380898 () Bool)

(assert (= bs!1380898 (and b!5861092 b!5860736)))

(assert (=> bs!1380898 (= (and (= (regOne!32366 (regTwo!32367 (regOne!32367 r!7292))) (regOne!32366 (regTwo!32367 (regTwo!32367 r!7292)))) (= (regTwo!32366 (regTwo!32367 (regOne!32367 r!7292))) (regTwo!32366 (regTwo!32367 (regTwo!32367 r!7292))))) (= lambda!320479 lambda!320469))))

(declare-fun bs!1380899 () Bool)

(assert (= bs!1380899 (and b!5861092 b!5860130)))

(assert (=> bs!1380899 (not (= lambda!320479 lambda!320428))))

(declare-fun bs!1380900 () Bool)

(assert (= bs!1380900 (and b!5861092 b!5860067)))

(assert (=> bs!1380900 (= (and (= (regOne!32366 (regTwo!32367 (regOne!32367 r!7292))) (regOne!32366 (regTwo!32367 r!7292))) (= (regTwo!32366 (regTwo!32367 (regOne!32367 r!7292))) (regTwo!32366 (regTwo!32367 r!7292)))) (= lambda!320479 lambda!320427))))

(declare-fun bs!1380901 () Bool)

(assert (= bs!1380901 (and b!5861092 b!5860742)))

(assert (=> bs!1380901 (not (= lambda!320479 lambda!320468))))

(assert (=> b!5861092 true))

(assert (=> b!5861092 true))

(declare-fun b!5861091 () Bool)

(declare-fun c!1039815 () Bool)

(assert (=> b!5861091 (= c!1039815 ((_ is Union!15927) (regTwo!32367 (regOne!32367 r!7292))))))

(declare-fun e!3593665 () Bool)

(declare-fun e!3593661 () Bool)

(assert (=> b!5861091 (= e!3593665 e!3593661)))

(declare-fun e!3593667 () Bool)

(declare-fun call!459670 () Bool)

(assert (=> b!5861092 (= e!3593667 call!459670)))

(declare-fun b!5861093 () Bool)

(declare-fun e!3593664 () Bool)

(declare-fun e!3593668 () Bool)

(assert (=> b!5861093 (= e!3593664 e!3593668)))

(declare-fun res!2466249 () Bool)

(assert (=> b!5861093 (= res!2466249 (not ((_ is EmptyLang!15927) (regTwo!32367 (regOne!32367 r!7292)))))))

(assert (=> b!5861093 (=> (not res!2466249) (not e!3593668))))

(declare-fun b!5861094 () Bool)

(declare-fun res!2466251 () Bool)

(declare-fun e!3593663 () Bool)

(assert (=> b!5861094 (=> res!2466251 e!3593663)))

(declare-fun call!459669 () Bool)

(assert (=> b!5861094 (= res!2466251 call!459669)))

(assert (=> b!5861094 (= e!3593667 e!3593663)))

(declare-fun d!1840627 () Bool)

(declare-fun c!1039814 () Bool)

(assert (=> d!1840627 (= c!1039814 ((_ is EmptyExpr!15927) (regTwo!32367 (regOne!32367 r!7292))))))

(assert (=> d!1840627 (= (matchRSpec!3028 (regTwo!32367 (regOne!32367 r!7292)) s!2326) e!3593664)))

(declare-fun bm!459664 () Bool)

(assert (=> bm!459664 (= call!459669 (isEmpty!35817 s!2326))))

(declare-fun b!5861095 () Bool)

(declare-fun c!1039817 () Bool)

(assert (=> b!5861095 (= c!1039817 ((_ is ElementMatch!15927) (regTwo!32367 (regOne!32367 r!7292))))))

(assert (=> b!5861095 (= e!3593668 e!3593665)))

(declare-fun bm!459665 () Bool)

(declare-fun c!1039816 () Bool)

(assert (=> bm!459665 (= call!459670 (Exists!2999 (ite c!1039816 lambda!320478 lambda!320479)))))

(declare-fun b!5861096 () Bool)

(declare-fun e!3593666 () Bool)

(assert (=> b!5861096 (= e!3593661 e!3593666)))

(declare-fun res!2466250 () Bool)

(assert (=> b!5861096 (= res!2466250 (matchRSpec!3028 (regOne!32367 (regTwo!32367 (regOne!32367 r!7292))) s!2326))))

(assert (=> b!5861096 (=> res!2466250 e!3593666)))

(declare-fun b!5861097 () Bool)

(assert (=> b!5861097 (= e!3593661 e!3593667)))

(assert (=> b!5861097 (= c!1039816 ((_ is Star!15927) (regTwo!32367 (regOne!32367 r!7292))))))

(assert (=> b!5861098 (= e!3593663 call!459670)))

(declare-fun b!5861099 () Bool)

(assert (=> b!5861099 (= e!3593666 (matchRSpec!3028 (regTwo!32367 (regTwo!32367 (regOne!32367 r!7292))) s!2326))))

(declare-fun b!5861100 () Bool)

(assert (=> b!5861100 (= e!3593665 (= s!2326 (Cons!63958 (c!1039387 (regTwo!32367 (regOne!32367 r!7292))) Nil!63958)))))

(declare-fun b!5861101 () Bool)

(assert (=> b!5861101 (= e!3593664 call!459669)))

(assert (= (and d!1840627 c!1039814) b!5861101))

(assert (= (and d!1840627 (not c!1039814)) b!5861093))

(assert (= (and b!5861093 res!2466249) b!5861095))

(assert (= (and b!5861095 c!1039817) b!5861100))

(assert (= (and b!5861095 (not c!1039817)) b!5861091))

(assert (= (and b!5861091 c!1039815) b!5861096))

(assert (= (and b!5861091 (not c!1039815)) b!5861097))

(assert (= (and b!5861096 (not res!2466250)) b!5861099))

(assert (= (and b!5861097 c!1039816) b!5861094))

(assert (= (and b!5861097 (not c!1039816)) b!5861092))

(assert (= (and b!5861094 (not res!2466251)) b!5861098))

(assert (= (or b!5861098 b!5861092) bm!459665))

(assert (= (or b!5861101 b!5861094) bm!459664))

(assert (=> bm!459664 m!6777324))

(declare-fun m!6778100 () Bool)

(assert (=> bm!459665 m!6778100))

(declare-fun m!6778102 () Bool)

(assert (=> b!5861096 m!6778102))

(declare-fun m!6778104 () Bool)

(assert (=> b!5861099 m!6778104))

(assert (=> b!5860131 d!1840627))

(declare-fun d!1840641 () Bool)

(assert (=> d!1840641 (= (head!12409 (exprs!5811 (h!70405 zl!343))) (h!70404 (exprs!5811 (h!70405 zl!343))))))

(assert (=> b!5860336 d!1840641))

(declare-fun d!1840643 () Bool)

(assert (=> d!1840643 (= (isUnion!800 lt!2305415) ((_ is Union!15927) lt!2305415))))

(assert (=> b!5860243 d!1840643))

(assert (=> bm!459496 d!1840597))

(declare-fun d!1840645 () Bool)

(declare-fun c!1039821 () Bool)

(assert (=> d!1840645 (= c!1039821 (and ((_ is ElementMatch!15927) (h!70404 (exprs!5811 lt!2305350))) (= (c!1039387 (h!70404 (exprs!5811 lt!2305350))) (h!70406 s!2326))))))

(declare-fun e!3593677 () (InoxSet Context!10622))

(assert (=> d!1840645 (= (derivationStepZipperDown!1193 (h!70404 (exprs!5811 lt!2305350)) (Context!10623 (t!377451 (exprs!5811 lt!2305350))) (h!70406 s!2326)) e!3593677)))

(declare-fun b!5861114 () Bool)

(declare-fun e!3593676 () (InoxSet Context!10622))

(declare-fun call!459671 () (InoxSet Context!10622))

(assert (=> b!5861114 (= e!3593676 call!459671)))

(declare-fun b!5861115 () Bool)

(declare-fun e!3593675 () (InoxSet Context!10622))

(assert (=> b!5861115 (= e!3593675 call!459671)))

(declare-fun b!5861116 () Bool)

(assert (=> b!5861116 (= e!3593676 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459666 () Bool)

(declare-fun call!459673 () (InoxSet Context!10622))

(assert (=> bm!459666 (= call!459671 call!459673)))

(declare-fun call!459674 () List!64080)

(declare-fun c!1039820 () Bool)

(declare-fun call!459672 () (InoxSet Context!10622))

(declare-fun bm!459667 () Bool)

(assert (=> bm!459667 (= call!459672 (derivationStepZipperDown!1193 (ite c!1039820 (regOne!32367 (h!70404 (exprs!5811 lt!2305350))) (regOne!32366 (h!70404 (exprs!5811 lt!2305350)))) (ite c!1039820 (Context!10623 (t!377451 (exprs!5811 lt!2305350))) (Context!10623 call!459674)) (h!70406 s!2326)))))

(declare-fun c!1039819 () Bool)

(declare-fun call!459675 () (InoxSet Context!10622))

(declare-fun c!1039822 () Bool)

(declare-fun bm!459668 () Bool)

(declare-fun call!459676 () List!64080)

(assert (=> bm!459668 (= call!459675 (derivationStepZipperDown!1193 (ite c!1039820 (regTwo!32367 (h!70404 (exprs!5811 lt!2305350))) (ite c!1039822 (regTwo!32366 (h!70404 (exprs!5811 lt!2305350))) (ite c!1039819 (regOne!32366 (h!70404 (exprs!5811 lt!2305350))) (reg!16256 (h!70404 (exprs!5811 lt!2305350)))))) (ite (or c!1039820 c!1039822) (Context!10623 (t!377451 (exprs!5811 lt!2305350))) (Context!10623 call!459676)) (h!70406 s!2326)))))

(declare-fun b!5861117 () Bool)

(declare-fun c!1039818 () Bool)

(assert (=> b!5861117 (= c!1039818 ((_ is Star!15927) (h!70404 (exprs!5811 lt!2305350))))))

(assert (=> b!5861117 (= e!3593675 e!3593676)))

(declare-fun b!5861118 () Bool)

(declare-fun e!3593674 () Bool)

(assert (=> b!5861118 (= e!3593674 (nullable!5927 (regOne!32366 (h!70404 (exprs!5811 lt!2305350)))))))

(declare-fun b!5861119 () Bool)

(declare-fun e!3593672 () (InoxSet Context!10622))

(assert (=> b!5861119 (= e!3593677 e!3593672)))

(assert (=> b!5861119 (= c!1039820 ((_ is Union!15927) (h!70404 (exprs!5811 lt!2305350))))))

(declare-fun b!5861120 () Bool)

(declare-fun e!3593673 () (InoxSet Context!10622))

(assert (=> b!5861120 (= e!3593673 ((_ map or) call!459672 call!459673))))

(declare-fun b!5861121 () Bool)

(assert (=> b!5861121 (= e!3593673 e!3593675)))

(assert (=> b!5861121 (= c!1039819 ((_ is Concat!24772) (h!70404 (exprs!5811 lt!2305350))))))

(declare-fun b!5861122 () Bool)

(assert (=> b!5861122 (= e!3593677 (store ((as const (Array Context!10622 Bool)) false) (Context!10623 (t!377451 (exprs!5811 lt!2305350))) true))))

(declare-fun bm!459669 () Bool)

(assert (=> bm!459669 (= call!459674 ($colon$colon!1832 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305350)))) (ite (or c!1039822 c!1039819) (regTwo!32366 (h!70404 (exprs!5811 lt!2305350))) (h!70404 (exprs!5811 lt!2305350)))))))

(declare-fun bm!459670 () Bool)

(assert (=> bm!459670 (= call!459673 call!459675)))

(declare-fun bm!459671 () Bool)

(assert (=> bm!459671 (= call!459676 call!459674)))

(declare-fun b!5861123 () Bool)

(assert (=> b!5861123 (= c!1039822 e!3593674)))

(declare-fun res!2466252 () Bool)

(assert (=> b!5861123 (=> (not res!2466252) (not e!3593674))))

(assert (=> b!5861123 (= res!2466252 ((_ is Concat!24772) (h!70404 (exprs!5811 lt!2305350))))))

(assert (=> b!5861123 (= e!3593672 e!3593673)))

(declare-fun b!5861124 () Bool)

(assert (=> b!5861124 (= e!3593672 ((_ map or) call!459672 call!459675))))

(assert (= (and d!1840645 c!1039821) b!5861122))

(assert (= (and d!1840645 (not c!1039821)) b!5861119))

(assert (= (and b!5861119 c!1039820) b!5861124))

(assert (= (and b!5861119 (not c!1039820)) b!5861123))

(assert (= (and b!5861123 res!2466252) b!5861118))

(assert (= (and b!5861123 c!1039822) b!5861120))

(assert (= (and b!5861123 (not c!1039822)) b!5861121))

(assert (= (and b!5861121 c!1039819) b!5861115))

(assert (= (and b!5861121 (not c!1039819)) b!5861117))

(assert (= (and b!5861117 c!1039818) b!5861114))

(assert (= (and b!5861117 (not c!1039818)) b!5861116))

(assert (= (or b!5861115 b!5861114) bm!459671))

(assert (= (or b!5861115 b!5861114) bm!459666))

(assert (= (or b!5861120 bm!459671) bm!459669))

(assert (= (or b!5861120 bm!459666) bm!459670))

(assert (= (or b!5861124 bm!459670) bm!459668))

(assert (= (or b!5861124 b!5861120) bm!459667))

(declare-fun m!6778106 () Bool)

(assert (=> b!5861118 m!6778106))

(declare-fun m!6778108 () Bool)

(assert (=> bm!459669 m!6778108))

(declare-fun m!6778110 () Bool)

(assert (=> bm!459668 m!6778110))

(declare-fun m!6778112 () Bool)

(assert (=> b!5861122 m!6778112))

(declare-fun m!6778114 () Bool)

(assert (=> bm!459667 m!6778114))

(assert (=> bm!459493 d!1840645))

(declare-fun d!1840647 () Bool)

(assert (=> d!1840647 (= (isEmpty!35817 (t!377453 s!2326)) ((_ is Nil!63958) (t!377453 s!2326)))))

(assert (=> d!1840325 d!1840647))

(declare-fun d!1840649 () Bool)

(assert (=> d!1840649 (= (Exists!2999 (ite c!1039524 lambda!320428 lambda!320429)) (choose!44435 (ite c!1039524 lambda!320428 lambda!320429)))))

(declare-fun bs!1380902 () Bool)

(assert (= bs!1380902 d!1840649))

(declare-fun m!6778116 () Bool)

(assert (=> bs!1380902 m!6778116))

(assert (=> bm!459448 d!1840649))

(assert (=> d!1840283 d!1840597))

(declare-fun b!5861125 () Bool)

(declare-fun e!3593680 () Bool)

(declare-fun e!3593679 () Bool)

(assert (=> b!5861125 (= e!3593680 e!3593679)))

(declare-fun c!1039823 () Bool)

(assert (=> b!5861125 (= c!1039823 ((_ is Union!15927) (regOne!32367 r!7292)))))

(declare-fun b!5861126 () Bool)

(declare-fun e!3593681 () Bool)

(declare-fun call!459679 () Bool)

(assert (=> b!5861126 (= e!3593681 call!459679)))

(declare-fun b!5861127 () Bool)

(declare-fun e!3593682 () Bool)

(declare-fun e!3593678 () Bool)

(assert (=> b!5861127 (= e!3593682 e!3593678)))

(declare-fun res!2466255 () Bool)

(assert (=> b!5861127 (=> (not res!2466255) (not e!3593678))))

(declare-fun call!459678 () Bool)

(assert (=> b!5861127 (= res!2466255 call!459678)))

(declare-fun b!5861128 () Bool)

(declare-fun res!2466257 () Bool)

(declare-fun e!3593684 () Bool)

(assert (=> b!5861128 (=> (not res!2466257) (not e!3593684))))

(assert (=> b!5861128 (= res!2466257 call!459678)))

(assert (=> b!5861128 (= e!3593679 e!3593684)))

(declare-fun b!5861129 () Bool)

(declare-fun e!3593683 () Bool)

(assert (=> b!5861129 (= e!3593683 e!3593680)))

(declare-fun c!1039824 () Bool)

(assert (=> b!5861129 (= c!1039824 ((_ is Star!15927) (regOne!32367 r!7292)))))

(declare-fun b!5861130 () Bool)

(declare-fun res!2466254 () Bool)

(assert (=> b!5861130 (=> res!2466254 e!3593682)))

(assert (=> b!5861130 (= res!2466254 (not ((_ is Concat!24772) (regOne!32367 r!7292))))))

(assert (=> b!5861130 (= e!3593679 e!3593682)))

(declare-fun b!5861131 () Bool)

(declare-fun call!459677 () Bool)

(assert (=> b!5861131 (= e!3593678 call!459677)))

(declare-fun bm!459672 () Bool)

(assert (=> bm!459672 (= call!459677 call!459679)))

(declare-fun d!1840651 () Bool)

(declare-fun res!2466256 () Bool)

(assert (=> d!1840651 (=> res!2466256 e!3593683)))

(assert (=> d!1840651 (= res!2466256 ((_ is ElementMatch!15927) (regOne!32367 r!7292)))))

(assert (=> d!1840651 (= (validRegex!7663 (regOne!32367 r!7292)) e!3593683)))

(declare-fun b!5861132 () Bool)

(assert (=> b!5861132 (= e!3593680 e!3593681)))

(declare-fun res!2466253 () Bool)

(assert (=> b!5861132 (= res!2466253 (not (nullable!5927 (reg!16256 (regOne!32367 r!7292)))))))

(assert (=> b!5861132 (=> (not res!2466253) (not e!3593681))))

(declare-fun b!5861133 () Bool)

(assert (=> b!5861133 (= e!3593684 call!459677)))

(declare-fun bm!459673 () Bool)

(assert (=> bm!459673 (= call!459678 (validRegex!7663 (ite c!1039823 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))))))

(declare-fun bm!459674 () Bool)

(assert (=> bm!459674 (= call!459679 (validRegex!7663 (ite c!1039824 (reg!16256 (regOne!32367 r!7292)) (ite c!1039823 (regTwo!32367 (regOne!32367 r!7292)) (regTwo!32366 (regOne!32367 r!7292))))))))

(assert (= (and d!1840651 (not res!2466256)) b!5861129))

(assert (= (and b!5861129 c!1039824) b!5861132))

(assert (= (and b!5861129 (not c!1039824)) b!5861125))

(assert (= (and b!5861132 res!2466253) b!5861126))

(assert (= (and b!5861125 c!1039823) b!5861128))

(assert (= (and b!5861125 (not c!1039823)) b!5861130))

(assert (= (and b!5861128 res!2466257) b!5861133))

(assert (= (and b!5861130 (not res!2466254)) b!5861127))

(assert (= (and b!5861127 res!2466255) b!5861131))

(assert (= (or b!5861133 b!5861131) bm!459672))

(assert (= (or b!5861128 b!5861127) bm!459673))

(assert (= (or b!5861126 bm!459672) bm!459674))

(declare-fun m!6778118 () Bool)

(assert (=> b!5861132 m!6778118))

(declare-fun m!6778120 () Bool)

(assert (=> bm!459673 m!6778120))

(declare-fun m!6778122 () Bool)

(assert (=> bm!459674 m!6778122))

(assert (=> d!1840283 d!1840651))

(declare-fun bs!1380903 () Bool)

(declare-fun d!1840653 () Bool)

(assert (= bs!1380903 (and d!1840653 d!1840563)))

(declare-fun lambda!320480 () Int)

(assert (=> bs!1380903 (= lambda!320480 lambda!320475)))

(assert (=> d!1840653 (= (nullableZipper!1766 lt!2305351) (exists!2311 lt!2305351 lambda!320480))))

(declare-fun bs!1380904 () Bool)

(assert (= bs!1380904 d!1840653))

(declare-fun m!6778124 () Bool)

(assert (=> bs!1380904 m!6778124))

(assert (=> b!5860265 d!1840653))

(declare-fun d!1840655 () Bool)

(declare-fun res!2466262 () Bool)

(declare-fun e!3593689 () Bool)

(assert (=> d!1840655 (=> res!2466262 e!3593689)))

(assert (=> d!1840655 (= res!2466262 ((_ is Nil!63956) (exprs!5811 (h!70405 zl!343))))))

(assert (=> d!1840655 (= (forall!15014 (exprs!5811 (h!70405 zl!343)) lambda!320445) e!3593689)))

(declare-fun b!5861138 () Bool)

(declare-fun e!3593690 () Bool)

(assert (=> b!5861138 (= e!3593689 e!3593690)))

(declare-fun res!2466263 () Bool)

(assert (=> b!5861138 (=> (not res!2466263) (not e!3593690))))

(declare-fun dynLambda!25010 (Int Regex!15927) Bool)

(assert (=> b!5861138 (= res!2466263 (dynLambda!25010 lambda!320445 (h!70404 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun b!5861139 () Bool)

(assert (=> b!5861139 (= e!3593690 (forall!15014 (t!377451 (exprs!5811 (h!70405 zl!343))) lambda!320445))))

(assert (= (and d!1840655 (not res!2466262)) b!5861138))

(assert (= (and b!5861138 res!2466263) b!5861139))

(declare-fun b_lambda!220617 () Bool)

(assert (=> (not b_lambda!220617) (not b!5861138)))

(declare-fun m!6778126 () Bool)

(assert (=> b!5861138 m!6778126))

(declare-fun m!6778128 () Bool)

(assert (=> b!5861139 m!6778128))

(assert (=> d!1840337 d!1840655))

(assert (=> d!1840311 d!1840315))

(declare-fun d!1840657 () Bool)

(assert (=> d!1840657 (= (flatMap!1458 lt!2305354 lambda!320394) (dynLambda!25008 lambda!320394 lt!2305350))))

(assert (=> d!1840657 true))

(declare-fun _$13!2587 () Unit!157125)

(assert (=> d!1840657 (= (choose!44431 lt!2305354 lt!2305350 lambda!320394) _$13!2587)))

(declare-fun b_lambda!220619 () Bool)

(assert (=> (not b_lambda!220619) (not d!1840657)))

(declare-fun bs!1380905 () Bool)

(assert (= bs!1380905 d!1840657))

(assert (=> bs!1380905 m!6777072))

(assert (=> bs!1380905 m!6777458))

(assert (=> d!1840311 d!1840657))

(assert (=> b!5860353 d!1840503))

(assert (=> b!5860118 d!1840509))

(assert (=> b!5860118 d!1840505))

(assert (=> d!1840279 d!1840277))

(assert (=> d!1840279 d!1840273))

(declare-fun d!1840659 () Bool)

(assert (=> d!1840659 (= (matchR!8110 (regTwo!32367 r!7292) s!2326) (matchRSpec!3028 (regTwo!32367 r!7292) s!2326))))

(assert (=> d!1840659 true))

(declare-fun _$88!4298 () Unit!157125)

(assert (=> d!1840659 (= (choose!44429 (regTwo!32367 r!7292) s!2326) _$88!4298)))

(declare-fun bs!1380906 () Bool)

(assert (= bs!1380906 d!1840659))

(assert (=> bs!1380906 m!6777046))

(assert (=> bs!1380906 m!6777042))

(assert (=> d!1840279 d!1840659))

(declare-fun b!5861140 () Bool)

(declare-fun e!3593693 () Bool)

(declare-fun e!3593692 () Bool)

(assert (=> b!5861140 (= e!3593693 e!3593692)))

(declare-fun c!1039825 () Bool)

(assert (=> b!5861140 (= c!1039825 ((_ is Union!15927) (regTwo!32367 r!7292)))))

(declare-fun b!5861141 () Bool)

(declare-fun e!3593694 () Bool)

(declare-fun call!459682 () Bool)

(assert (=> b!5861141 (= e!3593694 call!459682)))

(declare-fun b!5861142 () Bool)

(declare-fun e!3593695 () Bool)

(declare-fun e!3593691 () Bool)

(assert (=> b!5861142 (= e!3593695 e!3593691)))

(declare-fun res!2466266 () Bool)

(assert (=> b!5861142 (=> (not res!2466266) (not e!3593691))))

(declare-fun call!459681 () Bool)

(assert (=> b!5861142 (= res!2466266 call!459681)))

(declare-fun b!5861143 () Bool)

(declare-fun res!2466268 () Bool)

(declare-fun e!3593697 () Bool)

(assert (=> b!5861143 (=> (not res!2466268) (not e!3593697))))

(assert (=> b!5861143 (= res!2466268 call!459681)))

(assert (=> b!5861143 (= e!3593692 e!3593697)))

(declare-fun b!5861144 () Bool)

(declare-fun e!3593696 () Bool)

(assert (=> b!5861144 (= e!3593696 e!3593693)))

(declare-fun c!1039826 () Bool)

(assert (=> b!5861144 (= c!1039826 ((_ is Star!15927) (regTwo!32367 r!7292)))))

(declare-fun b!5861145 () Bool)

(declare-fun res!2466265 () Bool)

(assert (=> b!5861145 (=> res!2466265 e!3593695)))

(assert (=> b!5861145 (= res!2466265 (not ((_ is Concat!24772) (regTwo!32367 r!7292))))))

(assert (=> b!5861145 (= e!3593692 e!3593695)))

(declare-fun b!5861146 () Bool)

(declare-fun call!459680 () Bool)

(assert (=> b!5861146 (= e!3593691 call!459680)))

(declare-fun bm!459675 () Bool)

(assert (=> bm!459675 (= call!459680 call!459682)))

(declare-fun d!1840661 () Bool)

(declare-fun res!2466267 () Bool)

(assert (=> d!1840661 (=> res!2466267 e!3593696)))

(assert (=> d!1840661 (= res!2466267 ((_ is ElementMatch!15927) (regTwo!32367 r!7292)))))

(assert (=> d!1840661 (= (validRegex!7663 (regTwo!32367 r!7292)) e!3593696)))

(declare-fun b!5861147 () Bool)

(assert (=> b!5861147 (= e!3593693 e!3593694)))

(declare-fun res!2466264 () Bool)

(assert (=> b!5861147 (= res!2466264 (not (nullable!5927 (reg!16256 (regTwo!32367 r!7292)))))))

(assert (=> b!5861147 (=> (not res!2466264) (not e!3593694))))

(declare-fun b!5861148 () Bool)

(assert (=> b!5861148 (= e!3593697 call!459680)))

(declare-fun bm!459676 () Bool)

(assert (=> bm!459676 (= call!459681 (validRegex!7663 (ite c!1039825 (regOne!32367 (regTwo!32367 r!7292)) (regOne!32366 (regTwo!32367 r!7292)))))))

(declare-fun bm!459677 () Bool)

(assert (=> bm!459677 (= call!459682 (validRegex!7663 (ite c!1039826 (reg!16256 (regTwo!32367 r!7292)) (ite c!1039825 (regTwo!32367 (regTwo!32367 r!7292)) (regTwo!32366 (regTwo!32367 r!7292))))))))

(assert (= (and d!1840661 (not res!2466267)) b!5861144))

(assert (= (and b!5861144 c!1039826) b!5861147))

(assert (= (and b!5861144 (not c!1039826)) b!5861140))

(assert (= (and b!5861147 res!2466264) b!5861141))

(assert (= (and b!5861140 c!1039825) b!5861143))

(assert (= (and b!5861140 (not c!1039825)) b!5861145))

(assert (= (and b!5861143 res!2466268) b!5861148))

(assert (= (and b!5861145 (not res!2466265)) b!5861142))

(assert (= (and b!5861142 res!2466266) b!5861146))

(assert (= (or b!5861148 b!5861146) bm!459675))

(assert (= (or b!5861143 b!5861142) bm!459676))

(assert (= (or b!5861141 bm!459675) bm!459677))

(declare-fun m!6778130 () Bool)

(assert (=> b!5861147 m!6778130))

(declare-fun m!6778132 () Bool)

(assert (=> bm!459676 m!6778132))

(declare-fun m!6778134 () Bool)

(assert (=> bm!459677 m!6778134))

(assert (=> d!1840279 d!1840661))

(declare-fun d!1840663 () Bool)

(declare-fun c!1039827 () Bool)

(assert (=> d!1840663 (= c!1039827 (isEmpty!35817 (tail!11493 (t!377453 s!2326))))))

(declare-fun e!3593698 () Bool)

(assert (=> d!1840663 (= (matchZipper!1993 (derivationStepZipper!1926 lt!2305368 (head!12408 (t!377453 s!2326))) (tail!11493 (t!377453 s!2326))) e!3593698)))

(declare-fun b!5861149 () Bool)

(assert (=> b!5861149 (= e!3593698 (nullableZipper!1766 (derivationStepZipper!1926 lt!2305368 (head!12408 (t!377453 s!2326)))))))

(declare-fun b!5861150 () Bool)

(assert (=> b!5861150 (= e!3593698 (matchZipper!1993 (derivationStepZipper!1926 (derivationStepZipper!1926 lt!2305368 (head!12408 (t!377453 s!2326))) (head!12408 (tail!11493 (t!377453 s!2326)))) (tail!11493 (tail!11493 (t!377453 s!2326)))))))

(assert (= (and d!1840663 c!1039827) b!5861149))

(assert (= (and d!1840663 (not c!1039827)) b!5861150))

(assert (=> d!1840663 m!6777434))

(assert (=> d!1840663 m!6778064))

(assert (=> b!5861149 m!6777432))

(declare-fun m!6778136 () Bool)

(assert (=> b!5861149 m!6778136))

(assert (=> b!5861150 m!6777434))

(assert (=> b!5861150 m!6778068))

(assert (=> b!5861150 m!6777432))

(assert (=> b!5861150 m!6778068))

(declare-fun m!6778138 () Bool)

(assert (=> b!5861150 m!6778138))

(assert (=> b!5861150 m!6777434))

(assert (=> b!5861150 m!6778074))

(assert (=> b!5861150 m!6778138))

(assert (=> b!5861150 m!6778074))

(declare-fun m!6778140 () Bool)

(assert (=> b!5861150 m!6778140))

(assert (=> b!5860262 d!1840663))

(declare-fun bs!1380907 () Bool)

(declare-fun d!1840665 () Bool)

(assert (= bs!1380907 (and d!1840665 b!5859627)))

(declare-fun lambda!320481 () Int)

(assert (=> bs!1380907 (= (= (head!12408 (t!377453 s!2326)) (h!70406 s!2326)) (= lambda!320481 lambda!320394))))

(declare-fun bs!1380908 () Bool)

(assert (= bs!1380908 (and d!1840665 d!1840341)))

(assert (=> bs!1380908 (= (= (head!12408 (t!377453 s!2326)) (h!70406 s!2326)) (= lambda!320481 lambda!320448))))

(declare-fun bs!1380909 () Bool)

(assert (= bs!1380909 (and d!1840665 d!1840619)))

(assert (=> bs!1380909 (= lambda!320481 lambda!320477)))

(assert (=> d!1840665 true))

(assert (=> d!1840665 (= (derivationStepZipper!1926 lt!2305368 (head!12408 (t!377453 s!2326))) (flatMap!1458 lt!2305368 lambda!320481))))

(declare-fun bs!1380910 () Bool)

(assert (= bs!1380910 d!1840665))

(declare-fun m!6778142 () Bool)

(assert (=> bs!1380910 m!6778142))

(assert (=> b!5860262 d!1840665))

(assert (=> b!5860262 d!1840621))

(assert (=> b!5860262 d!1840623))

(declare-fun d!1840667 () Bool)

(declare-fun c!1039831 () Bool)

(assert (=> d!1840667 (= c!1039831 (and ((_ is ElementMatch!15927) (h!70404 (exprs!5811 (h!70405 zl!343)))) (= (c!1039387 (h!70404 (exprs!5811 (h!70405 zl!343)))) (h!70406 s!2326))))))

(declare-fun e!3593704 () (InoxSet Context!10622))

(assert (=> d!1840667 (= (derivationStepZipperDown!1193 (h!70404 (exprs!5811 (h!70405 zl!343))) (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343)))) (h!70406 s!2326)) e!3593704)))

(declare-fun b!5861151 () Bool)

(declare-fun e!3593703 () (InoxSet Context!10622))

(declare-fun call!459683 () (InoxSet Context!10622))

(assert (=> b!5861151 (= e!3593703 call!459683)))

(declare-fun b!5861152 () Bool)

(declare-fun e!3593702 () (InoxSet Context!10622))

(assert (=> b!5861152 (= e!3593702 call!459683)))

(declare-fun b!5861153 () Bool)

(assert (=> b!5861153 (= e!3593703 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459678 () Bool)

(declare-fun call!459685 () (InoxSet Context!10622))

(assert (=> bm!459678 (= call!459683 call!459685)))

(declare-fun call!459684 () (InoxSet Context!10622))

(declare-fun bm!459679 () Bool)

(declare-fun c!1039830 () Bool)

(declare-fun call!459686 () List!64080)

(assert (=> bm!459679 (= call!459684 (derivationStepZipperDown!1193 (ite c!1039830 (regOne!32367 (h!70404 (exprs!5811 (h!70405 zl!343)))) (regOne!32366 (h!70404 (exprs!5811 (h!70405 zl!343))))) (ite c!1039830 (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343)))) (Context!10623 call!459686)) (h!70406 s!2326)))))

(declare-fun c!1039832 () Bool)

(declare-fun c!1039829 () Bool)

(declare-fun call!459688 () List!64080)

(declare-fun call!459687 () (InoxSet Context!10622))

(declare-fun bm!459680 () Bool)

(assert (=> bm!459680 (= call!459687 (derivationStepZipperDown!1193 (ite c!1039830 (regTwo!32367 (h!70404 (exprs!5811 (h!70405 zl!343)))) (ite c!1039832 (regTwo!32366 (h!70404 (exprs!5811 (h!70405 zl!343)))) (ite c!1039829 (regOne!32366 (h!70404 (exprs!5811 (h!70405 zl!343)))) (reg!16256 (h!70404 (exprs!5811 (h!70405 zl!343))))))) (ite (or c!1039830 c!1039832) (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343)))) (Context!10623 call!459688)) (h!70406 s!2326)))))

(declare-fun b!5861154 () Bool)

(declare-fun c!1039828 () Bool)

(assert (=> b!5861154 (= c!1039828 ((_ is Star!15927) (h!70404 (exprs!5811 (h!70405 zl!343)))))))

(assert (=> b!5861154 (= e!3593702 e!3593703)))

(declare-fun b!5861155 () Bool)

(declare-fun e!3593701 () Bool)

(assert (=> b!5861155 (= e!3593701 (nullable!5927 (regOne!32366 (h!70404 (exprs!5811 (h!70405 zl!343))))))))

(declare-fun b!5861156 () Bool)

(declare-fun e!3593699 () (InoxSet Context!10622))

(assert (=> b!5861156 (= e!3593704 e!3593699)))

(assert (=> b!5861156 (= c!1039830 ((_ is Union!15927) (h!70404 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun b!5861157 () Bool)

(declare-fun e!3593700 () (InoxSet Context!10622))

(assert (=> b!5861157 (= e!3593700 ((_ map or) call!459684 call!459685))))

(declare-fun b!5861158 () Bool)

(assert (=> b!5861158 (= e!3593700 e!3593702)))

(assert (=> b!5861158 (= c!1039829 ((_ is Concat!24772) (h!70404 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun b!5861159 () Bool)

(assert (=> b!5861159 (= e!3593704 (store ((as const (Array Context!10622 Bool)) false) (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343)))) true))))

(declare-fun bm!459681 () Bool)

(assert (=> bm!459681 (= call!459686 ($colon$colon!1832 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343))))) (ite (or c!1039832 c!1039829) (regTwo!32366 (h!70404 (exprs!5811 (h!70405 zl!343)))) (h!70404 (exprs!5811 (h!70405 zl!343))))))))

(declare-fun bm!459682 () Bool)

(assert (=> bm!459682 (= call!459685 call!459687)))

(declare-fun bm!459683 () Bool)

(assert (=> bm!459683 (= call!459688 call!459686)))

(declare-fun b!5861160 () Bool)

(assert (=> b!5861160 (= c!1039832 e!3593701)))

(declare-fun res!2466269 () Bool)

(assert (=> b!5861160 (=> (not res!2466269) (not e!3593701))))

(assert (=> b!5861160 (= res!2466269 ((_ is Concat!24772) (h!70404 (exprs!5811 (h!70405 zl!343)))))))

(assert (=> b!5861160 (= e!3593699 e!3593700)))

(declare-fun b!5861161 () Bool)

(assert (=> b!5861161 (= e!3593699 ((_ map or) call!459684 call!459687))))

(assert (= (and d!1840667 c!1039831) b!5861159))

(assert (= (and d!1840667 (not c!1039831)) b!5861156))

(assert (= (and b!5861156 c!1039830) b!5861161))

(assert (= (and b!5861156 (not c!1039830)) b!5861160))

(assert (= (and b!5861160 res!2466269) b!5861155))

(assert (= (and b!5861160 c!1039832) b!5861157))

(assert (= (and b!5861160 (not c!1039832)) b!5861158))

(assert (= (and b!5861158 c!1039829) b!5861152))

(assert (= (and b!5861158 (not c!1039829)) b!5861154))

(assert (= (and b!5861154 c!1039828) b!5861151))

(assert (= (and b!5861154 (not c!1039828)) b!5861153))

(assert (= (or b!5861152 b!5861151) bm!459683))

(assert (= (or b!5861152 b!5861151) bm!459678))

(assert (= (or b!5861157 bm!459683) bm!459681))

(assert (= (or b!5861157 bm!459678) bm!459682))

(assert (= (or b!5861161 bm!459682) bm!459680))

(assert (= (or b!5861161 b!5861157) bm!459679))

(declare-fun m!6778144 () Bool)

(assert (=> b!5861155 m!6778144))

(declare-fun m!6778146 () Bool)

(assert (=> bm!459681 m!6778146))

(declare-fun m!6778148 () Bool)

(assert (=> bm!459680 m!6778148))

(declare-fun m!6778150 () Bool)

(assert (=> b!5861159 m!6778150))

(declare-fun m!6778152 () Bool)

(assert (=> bm!459679 m!6778152))

(assert (=> bm!459497 d!1840667))

(declare-fun bs!1380911 () Bool)

(declare-fun b!5861169 () Bool)

(assert (= bs!1380911 (and b!5861169 b!5860340)))

(declare-fun lambda!320482 () Int)

(assert (=> bs!1380911 (not (= lambda!320482 lambda!320444))))

(declare-fun bs!1380912 () Bool)

(assert (= bs!1380912 (and b!5861169 b!5860346)))

(assert (=> bs!1380912 (= (and (= (reg!16256 (regOne!32367 (regTwo!32367 r!7292))) (reg!16256 r!7292)) (= (regOne!32367 (regTwo!32367 r!7292)) r!7292)) (= lambda!320482 lambda!320443))))

(declare-fun bs!1380913 () Bool)

(assert (= bs!1380913 (and b!5861169 b!5861098)))

(assert (=> bs!1380913 (= (and (= (reg!16256 (regOne!32367 (regTwo!32367 r!7292))) (reg!16256 (regTwo!32367 (regOne!32367 r!7292)))) (= (regOne!32367 (regTwo!32367 r!7292)) (regTwo!32367 (regOne!32367 r!7292)))) (= lambda!320482 lambda!320478))))

(declare-fun bs!1380914 () Bool)

(assert (= bs!1380914 (and b!5861169 b!5860124)))

(assert (=> bs!1380914 (not (= lambda!320482 lambda!320429))))

(declare-fun bs!1380915 () Bool)

(assert (= bs!1380915 (and b!5861169 b!5860073)))

(assert (=> bs!1380915 (= (and (= (reg!16256 (regOne!32367 (regTwo!32367 r!7292))) (reg!16256 (regTwo!32367 r!7292))) (= (regOne!32367 (regTwo!32367 r!7292)) (regTwo!32367 r!7292))) (= lambda!320482 lambda!320426))))

(declare-fun bs!1380916 () Bool)

(assert (= bs!1380916 (and b!5861169 b!5861092)))

(assert (=> bs!1380916 (not (= lambda!320482 lambda!320479))))

(declare-fun bs!1380917 () Bool)

(assert (= bs!1380917 (and b!5861169 b!5860736)))

(assert (=> bs!1380917 (not (= lambda!320482 lambda!320469))))

(declare-fun bs!1380918 () Bool)

(assert (= bs!1380918 (and b!5861169 b!5860130)))

(assert (=> bs!1380918 (= (and (= (reg!16256 (regOne!32367 (regTwo!32367 r!7292))) (reg!16256 (regOne!32367 r!7292))) (= (regOne!32367 (regTwo!32367 r!7292)) (regOne!32367 r!7292))) (= lambda!320482 lambda!320428))))

(declare-fun bs!1380919 () Bool)

(assert (= bs!1380919 (and b!5861169 b!5860067)))

(assert (=> bs!1380919 (not (= lambda!320482 lambda!320427))))

(declare-fun bs!1380920 () Bool)

(assert (= bs!1380920 (and b!5861169 b!5860742)))

(assert (=> bs!1380920 (= (and (= (reg!16256 (regOne!32367 (regTwo!32367 r!7292))) (reg!16256 (regTwo!32367 (regTwo!32367 r!7292)))) (= (regOne!32367 (regTwo!32367 r!7292)) (regTwo!32367 (regTwo!32367 r!7292)))) (= lambda!320482 lambda!320468))))

(assert (=> b!5861169 true))

(assert (=> b!5861169 true))

(declare-fun bs!1380921 () Bool)

(declare-fun b!5861163 () Bool)

(assert (= bs!1380921 (and b!5861163 b!5860340)))

(declare-fun lambda!320483 () Int)

(assert (=> bs!1380921 (= (and (= (regOne!32366 (regOne!32367 (regTwo!32367 r!7292))) (regOne!32366 r!7292)) (= (regTwo!32366 (regOne!32367 (regTwo!32367 r!7292))) (regTwo!32366 r!7292))) (= lambda!320483 lambda!320444))))

(declare-fun bs!1380922 () Bool)

(assert (= bs!1380922 (and b!5861163 b!5860346)))

(assert (=> bs!1380922 (not (= lambda!320483 lambda!320443))))

(declare-fun bs!1380923 () Bool)

(assert (= bs!1380923 (and b!5861163 b!5861098)))

(assert (=> bs!1380923 (not (= lambda!320483 lambda!320478))))

(declare-fun bs!1380924 () Bool)

(assert (= bs!1380924 (and b!5861163 b!5860124)))

(assert (=> bs!1380924 (= (and (= (regOne!32366 (regOne!32367 (regTwo!32367 r!7292))) (regOne!32366 (regOne!32367 r!7292))) (= (regTwo!32366 (regOne!32367 (regTwo!32367 r!7292))) (regTwo!32366 (regOne!32367 r!7292)))) (= lambda!320483 lambda!320429))))

(declare-fun bs!1380925 () Bool)

(assert (= bs!1380925 (and b!5861163 b!5861092)))

(assert (=> bs!1380925 (= (and (= (regOne!32366 (regOne!32367 (regTwo!32367 r!7292))) (regOne!32366 (regTwo!32367 (regOne!32367 r!7292)))) (= (regTwo!32366 (regOne!32367 (regTwo!32367 r!7292))) (regTwo!32366 (regTwo!32367 (regOne!32367 r!7292))))) (= lambda!320483 lambda!320479))))

(declare-fun bs!1380926 () Bool)

(assert (= bs!1380926 (and b!5861163 b!5860736)))

(assert (=> bs!1380926 (= (and (= (regOne!32366 (regOne!32367 (regTwo!32367 r!7292))) (regOne!32366 (regTwo!32367 (regTwo!32367 r!7292)))) (= (regTwo!32366 (regOne!32367 (regTwo!32367 r!7292))) (regTwo!32366 (regTwo!32367 (regTwo!32367 r!7292))))) (= lambda!320483 lambda!320469))))

(declare-fun bs!1380927 () Bool)

(assert (= bs!1380927 (and b!5861163 b!5860130)))

(assert (=> bs!1380927 (not (= lambda!320483 lambda!320428))))

(declare-fun bs!1380928 () Bool)

(assert (= bs!1380928 (and b!5861163 b!5861169)))

(assert (=> bs!1380928 (not (= lambda!320483 lambda!320482))))

(declare-fun bs!1380929 () Bool)

(assert (= bs!1380929 (and b!5861163 b!5860073)))

(assert (=> bs!1380929 (not (= lambda!320483 lambda!320426))))

(declare-fun bs!1380930 () Bool)

(assert (= bs!1380930 (and b!5861163 b!5860067)))

(assert (=> bs!1380930 (= (and (= (regOne!32366 (regOne!32367 (regTwo!32367 r!7292))) (regOne!32366 (regTwo!32367 r!7292))) (= (regTwo!32366 (regOne!32367 (regTwo!32367 r!7292))) (regTwo!32366 (regTwo!32367 r!7292)))) (= lambda!320483 lambda!320427))))

(declare-fun bs!1380931 () Bool)

(assert (= bs!1380931 (and b!5861163 b!5860742)))

(assert (=> bs!1380931 (not (= lambda!320483 lambda!320468))))

(assert (=> b!5861163 true))

(assert (=> b!5861163 true))

(declare-fun b!5861162 () Bool)

(declare-fun c!1039834 () Bool)

(assert (=> b!5861162 (= c!1039834 ((_ is Union!15927) (regOne!32367 (regTwo!32367 r!7292))))))

(declare-fun e!3593708 () Bool)

(declare-fun e!3593705 () Bool)

(assert (=> b!5861162 (= e!3593708 e!3593705)))

(declare-fun e!3593710 () Bool)

(declare-fun call!459690 () Bool)

(assert (=> b!5861163 (= e!3593710 call!459690)))

(declare-fun b!5861164 () Bool)

(declare-fun e!3593707 () Bool)

(declare-fun e!3593711 () Bool)

(assert (=> b!5861164 (= e!3593707 e!3593711)))

(declare-fun res!2466270 () Bool)

(assert (=> b!5861164 (= res!2466270 (not ((_ is EmptyLang!15927) (regOne!32367 (regTwo!32367 r!7292)))))))

(assert (=> b!5861164 (=> (not res!2466270) (not e!3593711))))

(declare-fun b!5861165 () Bool)

(declare-fun res!2466272 () Bool)

(declare-fun e!3593706 () Bool)

(assert (=> b!5861165 (=> res!2466272 e!3593706)))

(declare-fun call!459689 () Bool)

(assert (=> b!5861165 (= res!2466272 call!459689)))

(assert (=> b!5861165 (= e!3593710 e!3593706)))

(declare-fun d!1840669 () Bool)

(declare-fun c!1039833 () Bool)

(assert (=> d!1840669 (= c!1039833 ((_ is EmptyExpr!15927) (regOne!32367 (regTwo!32367 r!7292))))))

(assert (=> d!1840669 (= (matchRSpec!3028 (regOne!32367 (regTwo!32367 r!7292)) s!2326) e!3593707)))

(declare-fun bm!459684 () Bool)

(assert (=> bm!459684 (= call!459689 (isEmpty!35817 s!2326))))

(declare-fun b!5861166 () Bool)

(declare-fun c!1039836 () Bool)

(assert (=> b!5861166 (= c!1039836 ((_ is ElementMatch!15927) (regOne!32367 (regTwo!32367 r!7292))))))

(assert (=> b!5861166 (= e!3593711 e!3593708)))

(declare-fun c!1039835 () Bool)

(declare-fun bm!459685 () Bool)

(assert (=> bm!459685 (= call!459690 (Exists!2999 (ite c!1039835 lambda!320482 lambda!320483)))))

(declare-fun b!5861167 () Bool)

(declare-fun e!3593709 () Bool)

(assert (=> b!5861167 (= e!3593705 e!3593709)))

(declare-fun res!2466271 () Bool)

(assert (=> b!5861167 (= res!2466271 (matchRSpec!3028 (regOne!32367 (regOne!32367 (regTwo!32367 r!7292))) s!2326))))

(assert (=> b!5861167 (=> res!2466271 e!3593709)))

(declare-fun b!5861168 () Bool)

(assert (=> b!5861168 (= e!3593705 e!3593710)))

(assert (=> b!5861168 (= c!1039835 ((_ is Star!15927) (regOne!32367 (regTwo!32367 r!7292))))))

(assert (=> b!5861169 (= e!3593706 call!459690)))

(declare-fun b!5861170 () Bool)

(assert (=> b!5861170 (= e!3593709 (matchRSpec!3028 (regTwo!32367 (regOne!32367 (regTwo!32367 r!7292))) s!2326))))

(declare-fun b!5861171 () Bool)

(assert (=> b!5861171 (= e!3593708 (= s!2326 (Cons!63958 (c!1039387 (regOne!32367 (regTwo!32367 r!7292))) Nil!63958)))))

(declare-fun b!5861172 () Bool)

(assert (=> b!5861172 (= e!3593707 call!459689)))

(assert (= (and d!1840669 c!1039833) b!5861172))

(assert (= (and d!1840669 (not c!1039833)) b!5861164))

(assert (= (and b!5861164 res!2466270) b!5861166))

(assert (= (and b!5861166 c!1039836) b!5861171))

(assert (= (and b!5861166 (not c!1039836)) b!5861162))

(assert (= (and b!5861162 c!1039834) b!5861167))

(assert (= (and b!5861162 (not c!1039834)) b!5861168))

(assert (= (and b!5861167 (not res!2466271)) b!5861170))

(assert (= (and b!5861168 c!1039835) b!5861165))

(assert (= (and b!5861168 (not c!1039835)) b!5861163))

(assert (= (and b!5861165 (not res!2466272)) b!5861169))

(assert (= (or b!5861169 b!5861163) bm!459685))

(assert (= (or b!5861172 b!5861165) bm!459684))

(assert (=> bm!459684 m!6777324))

(declare-fun m!6778154 () Bool)

(assert (=> bm!459685 m!6778154))

(declare-fun m!6778156 () Bool)

(assert (=> b!5861167 m!6778156))

(declare-fun m!6778158 () Bool)

(assert (=> b!5861170 m!6778158))

(assert (=> b!5860071 d!1840669))

(declare-fun d!1840671 () Bool)

(assert (=> d!1840671 true))

(declare-fun setRes!39747 () Bool)

(assert (=> d!1840671 setRes!39747))

(declare-fun condSetEmpty!39747 () Bool)

(declare-fun res!2466275 () (InoxSet Context!10622))

(assert (=> d!1840671 (= condSetEmpty!39747 (= res!2466275 ((as const (Array Context!10622 Bool)) false)))))

(assert (=> d!1840671 (= (choose!44432 lt!2305347 lambda!320394) res!2466275)))

(declare-fun setIsEmpty!39747 () Bool)

(assert (=> setIsEmpty!39747 setRes!39747))

(declare-fun tp!1621215 () Bool)

(declare-fun setNonEmpty!39747 () Bool)

(declare-fun e!3593714 () Bool)

(declare-fun setElem!39747 () Context!10622)

(assert (=> setNonEmpty!39747 (= setRes!39747 (and tp!1621215 (inv!83064 setElem!39747) e!3593714))))

(declare-fun setRest!39747 () (InoxSet Context!10622))

(assert (=> setNonEmpty!39747 (= res!2466275 ((_ map or) (store ((as const (Array Context!10622 Bool)) false) setElem!39747 true) setRest!39747))))

(declare-fun b!5861175 () Bool)

(declare-fun tp!1621216 () Bool)

(assert (=> b!5861175 (= e!3593714 tp!1621216)))

(assert (= (and d!1840671 condSetEmpty!39747) setIsEmpty!39747))

(assert (= (and d!1840671 (not condSetEmpty!39747)) setNonEmpty!39747))

(assert (= setNonEmpty!39747 b!5861175))

(declare-fun m!6778160 () Bool)

(assert (=> setNonEmpty!39747 m!6778160))

(assert (=> d!1840313 d!1840671))

(declare-fun d!1840673 () Bool)

(declare-fun res!2466276 () Bool)

(declare-fun e!3593715 () Bool)

(assert (=> d!1840673 (=> res!2466276 e!3593715)))

(assert (=> d!1840673 (= res!2466276 ((_ is Nil!63956) lt!2305418))))

(assert (=> d!1840673 (= (forall!15014 lt!2305418 lambda!320435) e!3593715)))

(declare-fun b!5861176 () Bool)

(declare-fun e!3593716 () Bool)

(assert (=> b!5861176 (= e!3593715 e!3593716)))

(declare-fun res!2466277 () Bool)

(assert (=> b!5861176 (=> (not res!2466277) (not e!3593716))))

(assert (=> b!5861176 (= res!2466277 (dynLambda!25010 lambda!320435 (h!70404 lt!2305418)))))

(declare-fun b!5861177 () Bool)

(assert (=> b!5861177 (= e!3593716 (forall!15014 (t!377451 lt!2305418) lambda!320435))))

(assert (= (and d!1840673 (not res!2466276)) b!5861176))

(assert (= (and b!5861176 res!2466277) b!5861177))

(declare-fun b_lambda!220621 () Bool)

(assert (=> (not b_lambda!220621) (not b!5861176)))

(declare-fun m!6778162 () Bool)

(assert (=> b!5861176 m!6778162))

(declare-fun m!6778164 () Bool)

(assert (=> b!5861177 m!6778164))

(assert (=> d!1840299 d!1840673))

(assert (=> bs!1380690 d!1840321))

(assert (=> b!5860255 d!1840329))

(declare-fun bs!1380932 () Bool)

(declare-fun d!1840675 () Bool)

(assert (= bs!1380932 (and d!1840675 d!1840329)))

(declare-fun lambda!320484 () Int)

(assert (=> bs!1380932 (= lambda!320484 lambda!320442)))

(declare-fun bs!1380933 () Bool)

(assert (= bs!1380933 (and d!1840675 d!1840337)))

(assert (=> bs!1380933 (= lambda!320484 lambda!320445)))

(declare-fun bs!1380934 () Bool)

(assert (= bs!1380934 (and d!1840675 d!1840319)))

(assert (=> bs!1380934 (= lambda!320484 lambda!320439)))

(declare-fun bs!1380935 () Bool)

(assert (= bs!1380935 (and d!1840675 d!1840309)))

(assert (=> bs!1380935 (= lambda!320484 lambda!320438)))

(declare-fun bs!1380936 () Bool)

(assert (= bs!1380936 (and d!1840675 d!1840297)))

(assert (=> bs!1380936 (= lambda!320484 lambda!320432)))

(declare-fun bs!1380937 () Bool)

(assert (= bs!1380937 (and d!1840675 d!1840299)))

(assert (=> bs!1380937 (= lambda!320484 lambda!320435)))

(declare-fun lt!2305452 () List!64080)

(assert (=> d!1840675 (forall!15014 lt!2305452 lambda!320484)))

(declare-fun e!3593717 () List!64080)

(assert (=> d!1840675 (= lt!2305452 e!3593717)))

(declare-fun c!1039837 () Bool)

(assert (=> d!1840675 (= c!1039837 ((_ is Cons!63957) (t!377452 zl!343)))))

(assert (=> d!1840675 (= (unfocusZipperList!1348 (t!377452 zl!343)) lt!2305452)))

(declare-fun b!5861178 () Bool)

(assert (=> b!5861178 (= e!3593717 (Cons!63956 (generalisedConcat!1524 (exprs!5811 (h!70405 (t!377452 zl!343)))) (unfocusZipperList!1348 (t!377452 (t!377452 zl!343)))))))

(declare-fun b!5861179 () Bool)

(assert (=> b!5861179 (= e!3593717 Nil!63956)))

(assert (= (and d!1840675 c!1039837) b!5861178))

(assert (= (and d!1840675 (not c!1039837)) b!5861179))

(declare-fun m!6778166 () Bool)

(assert (=> d!1840675 m!6778166))

(declare-fun m!6778168 () Bool)

(assert (=> b!5861178 m!6778168))

(declare-fun m!6778170 () Bool)

(assert (=> b!5861178 m!6778170))

(assert (=> b!5860255 d!1840675))

(declare-fun bs!1380938 () Bool)

(declare-fun d!1840677 () Bool)

(assert (= bs!1380938 (and d!1840677 d!1840563)))

(declare-fun lambda!320485 () Int)

(assert (=> bs!1380938 (= lambda!320485 lambda!320475)))

(declare-fun bs!1380939 () Bool)

(assert (= bs!1380939 (and d!1840677 d!1840653)))

(assert (=> bs!1380939 (= lambda!320485 lambda!320480)))

(assert (=> d!1840677 (= (nullableZipper!1766 z!1189) (exists!2311 z!1189 lambda!320485))))

(declare-fun bs!1380940 () Bool)

(assert (= bs!1380940 d!1840677))

(declare-fun m!6778172 () Bool)

(assert (=> bs!1380940 m!6778172))

(assert (=> b!5860263 d!1840677))

(assert (=> b!5860143 d!1840509))

(assert (=> b!5860143 d!1840505))

(declare-fun c!1039841 () Bool)

(declare-fun d!1840679 () Bool)

(assert (=> d!1840679 (= c!1039841 (and ((_ is ElementMatch!15927) (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292)))))) (= (c!1039387 (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292)))))) (h!70406 s!2326))))))

(declare-fun e!3593723 () (InoxSet Context!10622))

(assert (=> d!1840679 (= (derivationStepZipperDown!1193 (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292))))) (ite (or c!1039552 c!1039554) lt!2305344 (Context!10623 call!459481)) (h!70406 s!2326)) e!3593723)))

(declare-fun b!5861180 () Bool)

(declare-fun e!3593722 () (InoxSet Context!10622))

(declare-fun call!459691 () (InoxSet Context!10622))

(assert (=> b!5861180 (= e!3593722 call!459691)))

(declare-fun b!5861181 () Bool)

(declare-fun e!3593721 () (InoxSet Context!10622))

(assert (=> b!5861181 (= e!3593721 call!459691)))

(declare-fun b!5861182 () Bool)

(assert (=> b!5861182 (= e!3593722 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459686 () Bool)

(declare-fun call!459693 () (InoxSet Context!10622))

(assert (=> bm!459686 (= call!459691 call!459693)))

(declare-fun bm!459687 () Bool)

(declare-fun c!1039840 () Bool)

(declare-fun call!459694 () List!64080)

(declare-fun call!459692 () (InoxSet Context!10622))

(assert (=> bm!459687 (= call!459692 (derivationStepZipperDown!1193 (ite c!1039840 (regOne!32367 (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292)))))) (regOne!32366 (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292))))))) (ite c!1039840 (ite (or c!1039552 c!1039554) lt!2305344 (Context!10623 call!459481)) (Context!10623 call!459694)) (h!70406 s!2326)))))

(declare-fun bm!459688 () Bool)

(declare-fun c!1039842 () Bool)

(declare-fun c!1039839 () Bool)

(declare-fun call!459696 () List!64080)

(declare-fun call!459695 () (InoxSet Context!10622))

(assert (=> bm!459688 (= call!459695 (derivationStepZipperDown!1193 (ite c!1039840 (regTwo!32367 (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292)))))) (ite c!1039842 (regTwo!32366 (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292)))))) (ite c!1039839 (regOne!32366 (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292)))))) (reg!16256 (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292))))))))) (ite (or c!1039840 c!1039842) (ite (or c!1039552 c!1039554) lt!2305344 (Context!10623 call!459481)) (Context!10623 call!459696)) (h!70406 s!2326)))))

(declare-fun c!1039838 () Bool)

(declare-fun b!5861183 () Bool)

(assert (=> b!5861183 (= c!1039838 ((_ is Star!15927) (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292)))))))))

(assert (=> b!5861183 (= e!3593721 e!3593722)))

(declare-fun e!3593720 () Bool)

(declare-fun b!5861184 () Bool)

(assert (=> b!5861184 (= e!3593720 (nullable!5927 (regOne!32366 (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292))))))))))

(declare-fun b!5861185 () Bool)

(declare-fun e!3593718 () (InoxSet Context!10622))

(assert (=> b!5861185 (= e!3593723 e!3593718)))

(assert (=> b!5861185 (= c!1039840 ((_ is Union!15927) (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292)))))))))

(declare-fun b!5861186 () Bool)

(declare-fun e!3593719 () (InoxSet Context!10622))

(assert (=> b!5861186 (= e!3593719 ((_ map or) call!459692 call!459693))))

(declare-fun b!5861187 () Bool)

(assert (=> b!5861187 (= e!3593719 e!3593721)))

(assert (=> b!5861187 (= c!1039839 ((_ is Concat!24772) (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292)))))))))

(declare-fun b!5861188 () Bool)

(assert (=> b!5861188 (= e!3593723 (store ((as const (Array Context!10622 Bool)) false) (ite (or c!1039552 c!1039554) lt!2305344 (Context!10623 call!459481)) true))))

(declare-fun bm!459689 () Bool)

(assert (=> bm!459689 (= call!459694 ($colon$colon!1832 (exprs!5811 (ite (or c!1039552 c!1039554) lt!2305344 (Context!10623 call!459481))) (ite (or c!1039842 c!1039839) (regTwo!32366 (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292)))))) (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292))))))))))

(declare-fun bm!459690 () Bool)

(assert (=> bm!459690 (= call!459693 call!459695)))

(declare-fun bm!459691 () Bool)

(assert (=> bm!459691 (= call!459696 call!459694)))

(declare-fun b!5861189 () Bool)

(assert (=> b!5861189 (= c!1039842 e!3593720)))

(declare-fun res!2466278 () Bool)

(assert (=> b!5861189 (=> (not res!2466278) (not e!3593720))))

(assert (=> b!5861189 (= res!2466278 ((_ is Concat!24772) (ite c!1039552 (regTwo!32367 (regTwo!32367 r!7292)) (ite c!1039554 (regTwo!32366 (regTwo!32367 r!7292)) (ite c!1039551 (regOne!32366 (regTwo!32367 r!7292)) (reg!16256 (regTwo!32367 r!7292)))))))))

(assert (=> b!5861189 (= e!3593718 e!3593719)))

(declare-fun b!5861190 () Bool)

(assert (=> b!5861190 (= e!3593718 ((_ map or) call!459692 call!459695))))

(assert (= (and d!1840679 c!1039841) b!5861188))

(assert (= (and d!1840679 (not c!1039841)) b!5861185))

(assert (= (and b!5861185 c!1039840) b!5861190))

(assert (= (and b!5861185 (not c!1039840)) b!5861189))

(assert (= (and b!5861189 res!2466278) b!5861184))

(assert (= (and b!5861189 c!1039842) b!5861186))

(assert (= (and b!5861189 (not c!1039842)) b!5861187))

(assert (= (and b!5861187 c!1039839) b!5861181))

(assert (= (and b!5861187 (not c!1039839)) b!5861183))

(assert (= (and b!5861183 c!1039838) b!5861180))

(assert (= (and b!5861183 (not c!1039838)) b!5861182))

(assert (= (or b!5861181 b!5861180) bm!459691))

(assert (= (or b!5861181 b!5861180) bm!459686))

(assert (= (or b!5861186 bm!459691) bm!459689))

(assert (= (or b!5861186 bm!459686) bm!459690))

(assert (= (or b!5861190 bm!459690) bm!459688))

(assert (= (or b!5861190 b!5861186) bm!459687))

(declare-fun m!6778174 () Bool)

(assert (=> b!5861184 m!6778174))

(declare-fun m!6778176 () Bool)

(assert (=> bm!459689 m!6778176))

(declare-fun m!6778178 () Bool)

(assert (=> bm!459688 m!6778178))

(declare-fun m!6778180 () Bool)

(assert (=> b!5861188 m!6778180))

(declare-fun m!6778182 () Bool)

(assert (=> bm!459687 m!6778182))

(assert (=> bm!459473 d!1840679))

(declare-fun bs!1380941 () Bool)

(declare-fun d!1840681 () Bool)

(assert (= bs!1380941 (and d!1840681 d!1840675)))

(declare-fun lambda!320486 () Int)

(assert (=> bs!1380941 (= lambda!320486 lambda!320484)))

(declare-fun bs!1380942 () Bool)

(assert (= bs!1380942 (and d!1840681 d!1840329)))

(assert (=> bs!1380942 (= lambda!320486 lambda!320442)))

(declare-fun bs!1380943 () Bool)

(assert (= bs!1380943 (and d!1840681 d!1840337)))

(assert (=> bs!1380943 (= lambda!320486 lambda!320445)))

(declare-fun bs!1380944 () Bool)

(assert (= bs!1380944 (and d!1840681 d!1840319)))

(assert (=> bs!1380944 (= lambda!320486 lambda!320439)))

(declare-fun bs!1380945 () Bool)

(assert (= bs!1380945 (and d!1840681 d!1840309)))

(assert (=> bs!1380945 (= lambda!320486 lambda!320438)))

(declare-fun bs!1380946 () Bool)

(assert (= bs!1380946 (and d!1840681 d!1840297)))

(assert (=> bs!1380946 (= lambda!320486 lambda!320432)))

(declare-fun bs!1380947 () Bool)

(assert (= bs!1380947 (and d!1840681 d!1840299)))

(assert (=> bs!1380947 (= lambda!320486 lambda!320435)))

(declare-fun b!5861191 () Bool)

(declare-fun e!3593727 () Bool)

(declare-fun lt!2305453 () Regex!15927)

(assert (=> b!5861191 (= e!3593727 (isConcat!885 lt!2305453))))

(declare-fun b!5861192 () Bool)

(declare-fun e!3593729 () Regex!15927)

(assert (=> b!5861192 (= e!3593729 EmptyExpr!15927)))

(declare-fun b!5861194 () Bool)

(declare-fun e!3593725 () Regex!15927)

(assert (=> b!5861194 (= e!3593725 e!3593729)))

(declare-fun c!1039845 () Bool)

(assert (=> b!5861194 (= c!1039845 ((_ is Cons!63956) (t!377451 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun b!5861195 () Bool)

(assert (=> b!5861195 (= e!3593725 (h!70404 (t!377451 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun b!5861196 () Bool)

(declare-fun e!3593724 () Bool)

(declare-fun e!3593726 () Bool)

(assert (=> b!5861196 (= e!3593724 e!3593726)))

(declare-fun c!1039844 () Bool)

(assert (=> b!5861196 (= c!1039844 (isEmpty!35818 (t!377451 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun b!5861197 () Bool)

(declare-fun e!3593728 () Bool)

(assert (=> b!5861197 (= e!3593728 (isEmpty!35818 (t!377451 (t!377451 (exprs!5811 (h!70405 zl!343))))))))

(declare-fun b!5861193 () Bool)

(assert (=> b!5861193 (= e!3593726 (isEmptyExpr!1362 lt!2305453))))

(assert (=> d!1840681 e!3593724))

(declare-fun res!2466279 () Bool)

(assert (=> d!1840681 (=> (not res!2466279) (not e!3593724))))

(assert (=> d!1840681 (= res!2466279 (validRegex!7663 lt!2305453))))

(assert (=> d!1840681 (= lt!2305453 e!3593725)))

(declare-fun c!1039843 () Bool)

(assert (=> d!1840681 (= c!1039843 e!3593728)))

(declare-fun res!2466280 () Bool)

(assert (=> d!1840681 (=> (not res!2466280) (not e!3593728))))

(assert (=> d!1840681 (= res!2466280 ((_ is Cons!63956) (t!377451 (exprs!5811 (h!70405 zl!343)))))))

(assert (=> d!1840681 (forall!15014 (t!377451 (exprs!5811 (h!70405 zl!343))) lambda!320486)))

(assert (=> d!1840681 (= (generalisedConcat!1524 (t!377451 (exprs!5811 (h!70405 zl!343)))) lt!2305453)))

(declare-fun b!5861198 () Bool)

(assert (=> b!5861198 (= e!3593727 (= lt!2305453 (head!12409 (t!377451 (exprs!5811 (h!70405 zl!343))))))))

(declare-fun b!5861199 () Bool)

(assert (=> b!5861199 (= e!3593729 (Concat!24772 (h!70404 (t!377451 (exprs!5811 (h!70405 zl!343)))) (generalisedConcat!1524 (t!377451 (t!377451 (exprs!5811 (h!70405 zl!343)))))))))

(declare-fun b!5861200 () Bool)

(assert (=> b!5861200 (= e!3593726 e!3593727)))

(declare-fun c!1039846 () Bool)

(assert (=> b!5861200 (= c!1039846 (isEmpty!35818 (tail!11494 (t!377451 (exprs!5811 (h!70405 zl!343))))))))

(assert (= (and d!1840681 res!2466280) b!5861197))

(assert (= (and d!1840681 c!1039843) b!5861195))

(assert (= (and d!1840681 (not c!1039843)) b!5861194))

(assert (= (and b!5861194 c!1039845) b!5861199))

(assert (= (and b!5861194 (not c!1039845)) b!5861192))

(assert (= (and d!1840681 res!2466279) b!5861196))

(assert (= (and b!5861196 c!1039844) b!5861193))

(assert (= (and b!5861196 (not c!1039844)) b!5861200))

(assert (= (and b!5861200 c!1039846) b!5861198))

(assert (= (and b!5861200 (not c!1039846)) b!5861191))

(declare-fun m!6778184 () Bool)

(assert (=> b!5861193 m!6778184))

(declare-fun m!6778186 () Bool)

(assert (=> b!5861197 m!6778186))

(declare-fun m!6778188 () Bool)

(assert (=> b!5861198 m!6778188))

(declare-fun m!6778190 () Bool)

(assert (=> b!5861200 m!6778190))

(assert (=> b!5861200 m!6778190))

(declare-fun m!6778192 () Bool)

(assert (=> b!5861200 m!6778192))

(assert (=> b!5861196 m!6777496))

(declare-fun m!6778194 () Bool)

(assert (=> b!5861199 m!6778194))

(declare-fun m!6778196 () Bool)

(assert (=> b!5861191 m!6778196))

(declare-fun m!6778198 () Bool)

(assert (=> d!1840681 m!6778198))

(declare-fun m!6778200 () Bool)

(assert (=> d!1840681 m!6778200))

(assert (=> b!5860337 d!1840681))

(declare-fun d!1840683 () Bool)

(assert (=> d!1840683 (= (isEmpty!35818 (unfocusZipperList!1348 zl!343)) ((_ is Nil!63956) (unfocusZipperList!1348 zl!343)))))

(assert (=> b!5860244 d!1840683))

(declare-fun b!5861201 () Bool)

(declare-fun e!3593733 () Bool)

(declare-fun e!3593734 () Bool)

(assert (=> b!5861201 (= e!3593733 e!3593734)))

(declare-fun c!1039848 () Bool)

(assert (=> b!5861201 (= c!1039848 ((_ is EmptyLang!15927) (derivativeStep!4665 r!7292 (head!12408 s!2326))))))

(declare-fun b!5861202 () Bool)

(declare-fun res!2466285 () Bool)

(declare-fun e!3593730 () Bool)

(assert (=> b!5861202 (=> (not res!2466285) (not e!3593730))))

(declare-fun call!459697 () Bool)

(assert (=> b!5861202 (= res!2466285 (not call!459697))))

(declare-fun b!5861203 () Bool)

(declare-fun res!2466281 () Bool)

(declare-fun e!3593736 () Bool)

(assert (=> b!5861203 (=> res!2466281 e!3593736)))

(assert (=> b!5861203 (= res!2466281 e!3593730)))

(declare-fun res!2466288 () Bool)

(assert (=> b!5861203 (=> (not res!2466288) (not e!3593730))))

(declare-fun lt!2305454 () Bool)

(assert (=> b!5861203 (= res!2466288 lt!2305454)))

(declare-fun b!5861204 () Bool)

(assert (=> b!5861204 (= e!3593730 (= (head!12408 (tail!11493 s!2326)) (c!1039387 (derivativeStep!4665 r!7292 (head!12408 s!2326)))))))

(declare-fun d!1840685 () Bool)

(assert (=> d!1840685 e!3593733))

(declare-fun c!1039847 () Bool)

(assert (=> d!1840685 (= c!1039847 ((_ is EmptyExpr!15927) (derivativeStep!4665 r!7292 (head!12408 s!2326))))))

(declare-fun e!3593731 () Bool)

(assert (=> d!1840685 (= lt!2305454 e!3593731)))

(declare-fun c!1039849 () Bool)

(assert (=> d!1840685 (= c!1039849 (isEmpty!35817 (tail!11493 s!2326)))))

(assert (=> d!1840685 (validRegex!7663 (derivativeStep!4665 r!7292 (head!12408 s!2326)))))

(assert (=> d!1840685 (= (matchR!8110 (derivativeStep!4665 r!7292 (head!12408 s!2326)) (tail!11493 s!2326)) lt!2305454)))

(declare-fun b!5861205 () Bool)

(declare-fun e!3593735 () Bool)

(assert (=> b!5861205 (= e!3593736 e!3593735)))

(declare-fun res!2466282 () Bool)

(assert (=> b!5861205 (=> (not res!2466282) (not e!3593735))))

(assert (=> b!5861205 (= res!2466282 (not lt!2305454))))

(declare-fun b!5861206 () Bool)

(assert (=> b!5861206 (= e!3593733 (= lt!2305454 call!459697))))

(declare-fun b!5861207 () Bool)

(declare-fun res!2466287 () Bool)

(declare-fun e!3593732 () Bool)

(assert (=> b!5861207 (=> res!2466287 e!3593732)))

(assert (=> b!5861207 (= res!2466287 (not (isEmpty!35817 (tail!11493 (tail!11493 s!2326)))))))

(declare-fun b!5861208 () Bool)

(declare-fun res!2466286 () Bool)

(assert (=> b!5861208 (=> res!2466286 e!3593736)))

(assert (=> b!5861208 (= res!2466286 (not ((_ is ElementMatch!15927) (derivativeStep!4665 r!7292 (head!12408 s!2326)))))))

(assert (=> b!5861208 (= e!3593734 e!3593736)))

(declare-fun b!5861209 () Bool)

(assert (=> b!5861209 (= e!3593735 e!3593732)))

(declare-fun res!2466284 () Bool)

(assert (=> b!5861209 (=> res!2466284 e!3593732)))

(assert (=> b!5861209 (= res!2466284 call!459697)))

(declare-fun b!5861210 () Bool)

(declare-fun res!2466283 () Bool)

(assert (=> b!5861210 (=> (not res!2466283) (not e!3593730))))

(assert (=> b!5861210 (= res!2466283 (isEmpty!35817 (tail!11493 (tail!11493 s!2326))))))

(declare-fun b!5861211 () Bool)

(assert (=> b!5861211 (= e!3593731 (nullable!5927 (derivativeStep!4665 r!7292 (head!12408 s!2326))))))

(declare-fun bm!459692 () Bool)

(assert (=> bm!459692 (= call!459697 (isEmpty!35817 (tail!11493 s!2326)))))

(declare-fun b!5861212 () Bool)

(assert (=> b!5861212 (= e!3593731 (matchR!8110 (derivativeStep!4665 (derivativeStep!4665 r!7292 (head!12408 s!2326)) (head!12408 (tail!11493 s!2326))) (tail!11493 (tail!11493 s!2326))))))

(declare-fun b!5861213 () Bool)

(assert (=> b!5861213 (= e!3593734 (not lt!2305454))))

(declare-fun b!5861214 () Bool)

(assert (=> b!5861214 (= e!3593732 (not (= (head!12408 (tail!11493 s!2326)) (c!1039387 (derivativeStep!4665 r!7292 (head!12408 s!2326))))))))

(assert (= (and d!1840685 c!1039849) b!5861211))

(assert (= (and d!1840685 (not c!1039849)) b!5861212))

(assert (= (and d!1840685 c!1039847) b!5861206))

(assert (= (and d!1840685 (not c!1039847)) b!5861201))

(assert (= (and b!5861201 c!1039848) b!5861213))

(assert (= (and b!5861201 (not c!1039848)) b!5861208))

(assert (= (and b!5861208 (not res!2466286)) b!5861203))

(assert (= (and b!5861203 res!2466288) b!5861202))

(assert (= (and b!5861202 res!2466285) b!5861210))

(assert (= (and b!5861210 res!2466283) b!5861204))

(assert (= (and b!5861203 (not res!2466281)) b!5861205))

(assert (= (and b!5861205 res!2466282) b!5861209))

(assert (= (and b!5861209 (not res!2466284)) b!5861207))

(assert (= (and b!5861207 (not res!2466287)) b!5861214))

(assert (= (or b!5861206 b!5861202 b!5861209) bm!459692))

(assert (=> bm!459692 m!6777338))

(assert (=> bm!459692 m!6777340))

(assert (=> b!5861204 m!6777338))

(assert (=> b!5861204 m!6777788))

(assert (=> b!5861210 m!6777338))

(assert (=> b!5861210 m!6777790))

(assert (=> b!5861210 m!6777790))

(assert (=> b!5861210 m!6777792))

(assert (=> b!5861207 m!6777338))

(assert (=> b!5861207 m!6777790))

(assert (=> b!5861207 m!6777790))

(assert (=> b!5861207 m!6777792))

(assert (=> b!5861212 m!6777338))

(assert (=> b!5861212 m!6777788))

(assert (=> b!5861212 m!6777516))

(assert (=> b!5861212 m!6777788))

(declare-fun m!6778202 () Bool)

(assert (=> b!5861212 m!6778202))

(assert (=> b!5861212 m!6777338))

(assert (=> b!5861212 m!6777790))

(assert (=> b!5861212 m!6778202))

(assert (=> b!5861212 m!6777790))

(declare-fun m!6778204 () Bool)

(assert (=> b!5861212 m!6778204))

(assert (=> d!1840685 m!6777338))

(assert (=> d!1840685 m!6777340))

(assert (=> d!1840685 m!6777516))

(declare-fun m!6778206 () Bool)

(assert (=> d!1840685 m!6778206))

(assert (=> b!5861211 m!6777516))

(declare-fun m!6778208 () Bool)

(assert (=> b!5861211 m!6778208))

(assert (=> b!5861214 m!6777338))

(assert (=> b!5861214 m!6777788))

(assert (=> b!5860361 d!1840685))

(declare-fun b!5861215 () Bool)

(declare-fun c!1039852 () Bool)

(assert (=> b!5861215 (= c!1039852 (nullable!5927 (regOne!32366 r!7292)))))

(declare-fun e!3593741 () Regex!15927)

(declare-fun e!3593738 () Regex!15927)

(assert (=> b!5861215 (= e!3593741 e!3593738)))

(declare-fun b!5861216 () Bool)

(declare-fun e!3593737 () Regex!15927)

(declare-fun e!3593740 () Regex!15927)

(assert (=> b!5861216 (= e!3593737 e!3593740)))

(declare-fun c!1039854 () Bool)

(assert (=> b!5861216 (= c!1039854 ((_ is ElementMatch!15927) r!7292))))

(declare-fun call!459701 () Regex!15927)

(declare-fun call!459698 () Regex!15927)

(declare-fun b!5861217 () Bool)

(assert (=> b!5861217 (= e!3593738 (Union!15927 (Concat!24772 call!459698 (regTwo!32366 r!7292)) call!459701))))

(declare-fun b!5861218 () Bool)

(declare-fun call!459699 () Regex!15927)

(assert (=> b!5861218 (= e!3593741 (Concat!24772 call!459699 r!7292))))

(declare-fun b!5861219 () Bool)

(assert (=> b!5861219 (= e!3593738 (Union!15927 (Concat!24772 call!459701 (regTwo!32366 r!7292)) EmptyLang!15927))))

(declare-fun b!5861220 () Bool)

(assert (=> b!5861220 (= e!3593737 EmptyLang!15927)))

(declare-fun b!5861221 () Bool)

(declare-fun e!3593739 () Regex!15927)

(declare-fun call!459700 () Regex!15927)

(assert (=> b!5861221 (= e!3593739 (Union!15927 call!459698 call!459700))))

(declare-fun bm!459693 () Bool)

(assert (=> bm!459693 (= call!459699 call!459700)))

(declare-fun b!5861222 () Bool)

(declare-fun c!1039851 () Bool)

(assert (=> b!5861222 (= c!1039851 ((_ is Union!15927) r!7292))))

(assert (=> b!5861222 (= e!3593740 e!3593739)))

(declare-fun d!1840687 () Bool)

(declare-fun lt!2305455 () Regex!15927)

(assert (=> d!1840687 (validRegex!7663 lt!2305455)))

(assert (=> d!1840687 (= lt!2305455 e!3593737)))

(declare-fun c!1039853 () Bool)

(assert (=> d!1840687 (= c!1039853 (or ((_ is EmptyExpr!15927) r!7292) ((_ is EmptyLang!15927) r!7292)))))

(assert (=> d!1840687 (validRegex!7663 r!7292)))

(assert (=> d!1840687 (= (derivativeStep!4665 r!7292 (head!12408 s!2326)) lt!2305455)))

(declare-fun bm!459694 () Bool)

(assert (=> bm!459694 (= call!459701 call!459699)))

(declare-fun b!5861223 () Bool)

(assert (=> b!5861223 (= e!3593739 e!3593741)))

(declare-fun c!1039850 () Bool)

(assert (=> b!5861223 (= c!1039850 ((_ is Star!15927) r!7292))))

(declare-fun bm!459695 () Bool)

(assert (=> bm!459695 (= call!459700 (derivativeStep!4665 (ite c!1039851 (regTwo!32367 r!7292) (ite c!1039850 (reg!16256 r!7292) (ite c!1039852 (regTwo!32366 r!7292) (regOne!32366 r!7292)))) (head!12408 s!2326)))))

(declare-fun b!5861224 () Bool)

(assert (=> b!5861224 (= e!3593740 (ite (= (head!12408 s!2326) (c!1039387 r!7292)) EmptyExpr!15927 EmptyLang!15927))))

(declare-fun bm!459696 () Bool)

(assert (=> bm!459696 (= call!459698 (derivativeStep!4665 (ite c!1039851 (regOne!32367 r!7292) (regOne!32366 r!7292)) (head!12408 s!2326)))))

(assert (= (and d!1840687 c!1039853) b!5861220))

(assert (= (and d!1840687 (not c!1039853)) b!5861216))

(assert (= (and b!5861216 c!1039854) b!5861224))

(assert (= (and b!5861216 (not c!1039854)) b!5861222))

(assert (= (and b!5861222 c!1039851) b!5861221))

(assert (= (and b!5861222 (not c!1039851)) b!5861223))

(assert (= (and b!5861223 c!1039850) b!5861218))

(assert (= (and b!5861223 (not c!1039850)) b!5861215))

(assert (= (and b!5861215 c!1039852) b!5861217))

(assert (= (and b!5861215 (not c!1039852)) b!5861219))

(assert (= (or b!5861217 b!5861219) bm!459694))

(assert (= (or b!5861218 bm!459694) bm!459693))

(assert (= (or b!5861221 bm!459693) bm!459695))

(assert (= (or b!5861221 b!5861217) bm!459696))

(assert (=> b!5861215 m!6777364))

(declare-fun m!6778210 () Bool)

(assert (=> d!1840687 m!6778210))

(assert (=> d!1840687 m!6777040))

(assert (=> bm!459695 m!6777336))

(declare-fun m!6778212 () Bool)

(assert (=> bm!459695 m!6778212))

(assert (=> bm!459696 m!6777336))

(declare-fun m!6778214 () Bool)

(assert (=> bm!459696 m!6778214))

(assert (=> b!5860361 d!1840687))

(assert (=> b!5860361 d!1840503))

(assert (=> b!5860361 d!1840505))

(declare-fun bs!1380948 () Bool)

(declare-fun b!5861232 () Bool)

(assert (= bs!1380948 (and b!5861232 b!5860340)))

(declare-fun lambda!320487 () Int)

(assert (=> bs!1380948 (not (= lambda!320487 lambda!320444))))

(declare-fun bs!1380949 () Bool)

(assert (= bs!1380949 (and b!5861232 b!5860346)))

(assert (=> bs!1380949 (= (and (= (reg!16256 (regOne!32367 (regOne!32367 r!7292))) (reg!16256 r!7292)) (= (regOne!32367 (regOne!32367 r!7292)) r!7292)) (= lambda!320487 lambda!320443))))

(declare-fun bs!1380950 () Bool)

(assert (= bs!1380950 (and b!5861232 b!5861098)))

(assert (=> bs!1380950 (= (and (= (reg!16256 (regOne!32367 (regOne!32367 r!7292))) (reg!16256 (regTwo!32367 (regOne!32367 r!7292)))) (= (regOne!32367 (regOne!32367 r!7292)) (regTwo!32367 (regOne!32367 r!7292)))) (= lambda!320487 lambda!320478))))

(declare-fun bs!1380951 () Bool)

(assert (= bs!1380951 (and b!5861232 b!5860124)))

(assert (=> bs!1380951 (not (= lambda!320487 lambda!320429))))

(declare-fun bs!1380952 () Bool)

(assert (= bs!1380952 (and b!5861232 b!5861092)))

(assert (=> bs!1380952 (not (= lambda!320487 lambda!320479))))

(declare-fun bs!1380953 () Bool)

(assert (= bs!1380953 (and b!5861232 b!5861163)))

(assert (=> bs!1380953 (not (= lambda!320487 lambda!320483))))

(declare-fun bs!1380954 () Bool)

(assert (= bs!1380954 (and b!5861232 b!5860736)))

(assert (=> bs!1380954 (not (= lambda!320487 lambda!320469))))

(declare-fun bs!1380955 () Bool)

(assert (= bs!1380955 (and b!5861232 b!5860130)))

(assert (=> bs!1380955 (= (and (= (reg!16256 (regOne!32367 (regOne!32367 r!7292))) (reg!16256 (regOne!32367 r!7292))) (= (regOne!32367 (regOne!32367 r!7292)) (regOne!32367 r!7292))) (= lambda!320487 lambda!320428))))

(declare-fun bs!1380956 () Bool)

(assert (= bs!1380956 (and b!5861232 b!5861169)))

(assert (=> bs!1380956 (= (and (= (reg!16256 (regOne!32367 (regOne!32367 r!7292))) (reg!16256 (regOne!32367 (regTwo!32367 r!7292)))) (= (regOne!32367 (regOne!32367 r!7292)) (regOne!32367 (regTwo!32367 r!7292)))) (= lambda!320487 lambda!320482))))

(declare-fun bs!1380957 () Bool)

(assert (= bs!1380957 (and b!5861232 b!5860073)))

(assert (=> bs!1380957 (= (and (= (reg!16256 (regOne!32367 (regOne!32367 r!7292))) (reg!16256 (regTwo!32367 r!7292))) (= (regOne!32367 (regOne!32367 r!7292)) (regTwo!32367 r!7292))) (= lambda!320487 lambda!320426))))

(declare-fun bs!1380958 () Bool)

(assert (= bs!1380958 (and b!5861232 b!5860067)))

(assert (=> bs!1380958 (not (= lambda!320487 lambda!320427))))

(declare-fun bs!1380959 () Bool)

(assert (= bs!1380959 (and b!5861232 b!5860742)))

(assert (=> bs!1380959 (= (and (= (reg!16256 (regOne!32367 (regOne!32367 r!7292))) (reg!16256 (regTwo!32367 (regTwo!32367 r!7292)))) (= (regOne!32367 (regOne!32367 r!7292)) (regTwo!32367 (regTwo!32367 r!7292)))) (= lambda!320487 lambda!320468))))

(assert (=> b!5861232 true))

(assert (=> b!5861232 true))

(declare-fun bs!1380960 () Bool)

(declare-fun b!5861226 () Bool)

(assert (= bs!1380960 (and b!5861226 b!5860340)))

(declare-fun lambda!320488 () Int)

(assert (=> bs!1380960 (= (and (= (regOne!32366 (regOne!32367 (regOne!32367 r!7292))) (regOne!32366 r!7292)) (= (regTwo!32366 (regOne!32367 (regOne!32367 r!7292))) (regTwo!32366 r!7292))) (= lambda!320488 lambda!320444))))

(declare-fun bs!1380961 () Bool)

(assert (= bs!1380961 (and b!5861226 b!5860346)))

(assert (=> bs!1380961 (not (= lambda!320488 lambda!320443))))

(declare-fun bs!1380962 () Bool)

(assert (= bs!1380962 (and b!5861226 b!5861232)))

(assert (=> bs!1380962 (not (= lambda!320488 lambda!320487))))

(declare-fun bs!1380963 () Bool)

(assert (= bs!1380963 (and b!5861226 b!5861098)))

(assert (=> bs!1380963 (not (= lambda!320488 lambda!320478))))

(declare-fun bs!1380964 () Bool)

(assert (= bs!1380964 (and b!5861226 b!5860124)))

(assert (=> bs!1380964 (= (and (= (regOne!32366 (regOne!32367 (regOne!32367 r!7292))) (regOne!32366 (regOne!32367 r!7292))) (= (regTwo!32366 (regOne!32367 (regOne!32367 r!7292))) (regTwo!32366 (regOne!32367 r!7292)))) (= lambda!320488 lambda!320429))))

(declare-fun bs!1380965 () Bool)

(assert (= bs!1380965 (and b!5861226 b!5861092)))

(assert (=> bs!1380965 (= (and (= (regOne!32366 (regOne!32367 (regOne!32367 r!7292))) (regOne!32366 (regTwo!32367 (regOne!32367 r!7292)))) (= (regTwo!32366 (regOne!32367 (regOne!32367 r!7292))) (regTwo!32366 (regTwo!32367 (regOne!32367 r!7292))))) (= lambda!320488 lambda!320479))))

(declare-fun bs!1380966 () Bool)

(assert (= bs!1380966 (and b!5861226 b!5861163)))

(assert (=> bs!1380966 (= (and (= (regOne!32366 (regOne!32367 (regOne!32367 r!7292))) (regOne!32366 (regOne!32367 (regTwo!32367 r!7292)))) (= (regTwo!32366 (regOne!32367 (regOne!32367 r!7292))) (regTwo!32366 (regOne!32367 (regTwo!32367 r!7292))))) (= lambda!320488 lambda!320483))))

(declare-fun bs!1380967 () Bool)

(assert (= bs!1380967 (and b!5861226 b!5860736)))

(assert (=> bs!1380967 (= (and (= (regOne!32366 (regOne!32367 (regOne!32367 r!7292))) (regOne!32366 (regTwo!32367 (regTwo!32367 r!7292)))) (= (regTwo!32366 (regOne!32367 (regOne!32367 r!7292))) (regTwo!32366 (regTwo!32367 (regTwo!32367 r!7292))))) (= lambda!320488 lambda!320469))))

(declare-fun bs!1380968 () Bool)

(assert (= bs!1380968 (and b!5861226 b!5860130)))

(assert (=> bs!1380968 (not (= lambda!320488 lambda!320428))))

(declare-fun bs!1380969 () Bool)

(assert (= bs!1380969 (and b!5861226 b!5861169)))

(assert (=> bs!1380969 (not (= lambda!320488 lambda!320482))))

(declare-fun bs!1380970 () Bool)

(assert (= bs!1380970 (and b!5861226 b!5860073)))

(assert (=> bs!1380970 (not (= lambda!320488 lambda!320426))))

(declare-fun bs!1380971 () Bool)

(assert (= bs!1380971 (and b!5861226 b!5860067)))

(assert (=> bs!1380971 (= (and (= (regOne!32366 (regOne!32367 (regOne!32367 r!7292))) (regOne!32366 (regTwo!32367 r!7292))) (= (regTwo!32366 (regOne!32367 (regOne!32367 r!7292))) (regTwo!32366 (regTwo!32367 r!7292)))) (= lambda!320488 lambda!320427))))

(declare-fun bs!1380972 () Bool)

(assert (= bs!1380972 (and b!5861226 b!5860742)))

(assert (=> bs!1380972 (not (= lambda!320488 lambda!320468))))

(assert (=> b!5861226 true))

(assert (=> b!5861226 true))

(declare-fun b!5861225 () Bool)

(declare-fun c!1039856 () Bool)

(assert (=> b!5861225 (= c!1039856 ((_ is Union!15927) (regOne!32367 (regOne!32367 r!7292))))))

(declare-fun e!3593745 () Bool)

(declare-fun e!3593742 () Bool)

(assert (=> b!5861225 (= e!3593745 e!3593742)))

(declare-fun e!3593747 () Bool)

(declare-fun call!459703 () Bool)

(assert (=> b!5861226 (= e!3593747 call!459703)))

(declare-fun b!5861227 () Bool)

(declare-fun e!3593744 () Bool)

(declare-fun e!3593748 () Bool)

(assert (=> b!5861227 (= e!3593744 e!3593748)))

(declare-fun res!2466289 () Bool)

(assert (=> b!5861227 (= res!2466289 (not ((_ is EmptyLang!15927) (regOne!32367 (regOne!32367 r!7292)))))))

(assert (=> b!5861227 (=> (not res!2466289) (not e!3593748))))

(declare-fun b!5861228 () Bool)

(declare-fun res!2466291 () Bool)

(declare-fun e!3593743 () Bool)

(assert (=> b!5861228 (=> res!2466291 e!3593743)))

(declare-fun call!459702 () Bool)

(assert (=> b!5861228 (= res!2466291 call!459702)))

(assert (=> b!5861228 (= e!3593747 e!3593743)))

(declare-fun d!1840689 () Bool)

(declare-fun c!1039855 () Bool)

(assert (=> d!1840689 (= c!1039855 ((_ is EmptyExpr!15927) (regOne!32367 (regOne!32367 r!7292))))))

(assert (=> d!1840689 (= (matchRSpec!3028 (regOne!32367 (regOne!32367 r!7292)) s!2326) e!3593744)))

(declare-fun bm!459697 () Bool)

(assert (=> bm!459697 (= call!459702 (isEmpty!35817 s!2326))))

(declare-fun b!5861229 () Bool)

(declare-fun c!1039858 () Bool)

(assert (=> b!5861229 (= c!1039858 ((_ is ElementMatch!15927) (regOne!32367 (regOne!32367 r!7292))))))

(assert (=> b!5861229 (= e!3593748 e!3593745)))

(declare-fun c!1039857 () Bool)

(declare-fun bm!459698 () Bool)

(assert (=> bm!459698 (= call!459703 (Exists!2999 (ite c!1039857 lambda!320487 lambda!320488)))))

(declare-fun b!5861230 () Bool)

(declare-fun e!3593746 () Bool)

(assert (=> b!5861230 (= e!3593742 e!3593746)))

(declare-fun res!2466290 () Bool)

(assert (=> b!5861230 (= res!2466290 (matchRSpec!3028 (regOne!32367 (regOne!32367 (regOne!32367 r!7292))) s!2326))))

(assert (=> b!5861230 (=> res!2466290 e!3593746)))

(declare-fun b!5861231 () Bool)

(assert (=> b!5861231 (= e!3593742 e!3593747)))

(assert (=> b!5861231 (= c!1039857 ((_ is Star!15927) (regOne!32367 (regOne!32367 r!7292))))))

(assert (=> b!5861232 (= e!3593743 call!459703)))

(declare-fun b!5861233 () Bool)

(assert (=> b!5861233 (= e!3593746 (matchRSpec!3028 (regTwo!32367 (regOne!32367 (regOne!32367 r!7292))) s!2326))))

(declare-fun b!5861234 () Bool)

(assert (=> b!5861234 (= e!3593745 (= s!2326 (Cons!63958 (c!1039387 (regOne!32367 (regOne!32367 r!7292))) Nil!63958)))))

(declare-fun b!5861235 () Bool)

(assert (=> b!5861235 (= e!3593744 call!459702)))

(assert (= (and d!1840689 c!1039855) b!5861235))

(assert (= (and d!1840689 (not c!1039855)) b!5861227))

(assert (= (and b!5861227 res!2466289) b!5861229))

(assert (= (and b!5861229 c!1039858) b!5861234))

(assert (= (and b!5861229 (not c!1039858)) b!5861225))

(assert (= (and b!5861225 c!1039856) b!5861230))

(assert (= (and b!5861225 (not c!1039856)) b!5861231))

(assert (= (and b!5861230 (not res!2466290)) b!5861233))

(assert (= (and b!5861231 c!1039857) b!5861228))

(assert (= (and b!5861231 (not c!1039857)) b!5861226))

(assert (= (and b!5861228 (not res!2466291)) b!5861232))

(assert (= (or b!5861232 b!5861226) bm!459698))

(assert (= (or b!5861235 b!5861228) bm!459697))

(assert (=> bm!459697 m!6777324))

(declare-fun m!6778216 () Bool)

(assert (=> bm!459698 m!6778216))

(declare-fun m!6778218 () Bool)

(assert (=> b!5861230 m!6778218))

(declare-fun m!6778220 () Bool)

(assert (=> b!5861233 m!6778220))

(assert (=> b!5860128 d!1840689))

(declare-fun d!1840691 () Bool)

(declare-fun c!1039859 () Bool)

(assert (=> d!1840691 (= c!1039859 (isEmpty!35817 (tail!11493 (t!377453 s!2326))))))

(declare-fun e!3593749 () Bool)

(assert (=> d!1840691 (= (matchZipper!1993 (derivationStepZipper!1926 lt!2305351 (head!12408 (t!377453 s!2326))) (tail!11493 (t!377453 s!2326))) e!3593749)))

(declare-fun b!5861236 () Bool)

(assert (=> b!5861236 (= e!3593749 (nullableZipper!1766 (derivationStepZipper!1926 lt!2305351 (head!12408 (t!377453 s!2326)))))))

(declare-fun b!5861237 () Bool)

(assert (=> b!5861237 (= e!3593749 (matchZipper!1993 (derivationStepZipper!1926 (derivationStepZipper!1926 lt!2305351 (head!12408 (t!377453 s!2326))) (head!12408 (tail!11493 (t!377453 s!2326)))) (tail!11493 (tail!11493 (t!377453 s!2326)))))))

(assert (= (and d!1840691 c!1039859) b!5861236))

(assert (= (and d!1840691 (not c!1039859)) b!5861237))

(assert (=> d!1840691 m!6777434))

(assert (=> d!1840691 m!6778064))

(assert (=> b!5861236 m!6777446))

(declare-fun m!6778222 () Bool)

(assert (=> b!5861236 m!6778222))

(assert (=> b!5861237 m!6777434))

(assert (=> b!5861237 m!6778068))

(assert (=> b!5861237 m!6777446))

(assert (=> b!5861237 m!6778068))

(declare-fun m!6778224 () Bool)

(assert (=> b!5861237 m!6778224))

(assert (=> b!5861237 m!6777434))

(assert (=> b!5861237 m!6778074))

(assert (=> b!5861237 m!6778224))

(assert (=> b!5861237 m!6778074))

(declare-fun m!6778226 () Bool)

(assert (=> b!5861237 m!6778226))

(assert (=> b!5860266 d!1840691))

(declare-fun bs!1380973 () Bool)

(declare-fun d!1840693 () Bool)

(assert (= bs!1380973 (and d!1840693 b!5859627)))

(declare-fun lambda!320489 () Int)

(assert (=> bs!1380973 (= (= (head!12408 (t!377453 s!2326)) (h!70406 s!2326)) (= lambda!320489 lambda!320394))))

(declare-fun bs!1380974 () Bool)

(assert (= bs!1380974 (and d!1840693 d!1840341)))

(assert (=> bs!1380974 (= (= (head!12408 (t!377453 s!2326)) (h!70406 s!2326)) (= lambda!320489 lambda!320448))))

(declare-fun bs!1380975 () Bool)

(assert (= bs!1380975 (and d!1840693 d!1840619)))

(assert (=> bs!1380975 (= lambda!320489 lambda!320477)))

(declare-fun bs!1380976 () Bool)

(assert (= bs!1380976 (and d!1840693 d!1840665)))

(assert (=> bs!1380976 (= lambda!320489 lambda!320481)))

(assert (=> d!1840693 true))

(assert (=> d!1840693 (= (derivationStepZipper!1926 lt!2305351 (head!12408 (t!377453 s!2326))) (flatMap!1458 lt!2305351 lambda!320489))))

(declare-fun bs!1380977 () Bool)

(assert (= bs!1380977 d!1840693))

(declare-fun m!6778228 () Bool)

(assert (=> bs!1380977 m!6778228))

(assert (=> b!5860266 d!1840693))

(assert (=> b!5860266 d!1840621))

(assert (=> b!5860266 d!1840623))

(assert (=> d!1840275 d!1840283))

(assert (=> d!1840275 d!1840281))

(declare-fun d!1840695 () Bool)

(assert (=> d!1840695 (= (matchR!8110 (regOne!32367 r!7292) s!2326) (matchRSpec!3028 (regOne!32367 r!7292) s!2326))))

(assert (=> d!1840695 true))

(declare-fun _$88!4299 () Unit!157125)

(assert (=> d!1840695 (= (choose!44429 (regOne!32367 r!7292) s!2326) _$88!4299)))

(declare-fun bs!1380978 () Bool)

(assert (= bs!1380978 d!1840695))

(assert (=> bs!1380978 m!6777052))

(assert (=> bs!1380978 m!6777048))

(assert (=> d!1840275 d!1840695))

(assert (=> d!1840275 d!1840651))

(declare-fun d!1840697 () Bool)

(assert (=> d!1840697 true))

(declare-fun setRes!39748 () Bool)

(assert (=> d!1840697 setRes!39748))

(declare-fun condSetEmpty!39748 () Bool)

(declare-fun res!2466292 () (InoxSet Context!10622))

(assert (=> d!1840697 (= condSetEmpty!39748 (= res!2466292 ((as const (Array Context!10622 Bool)) false)))))

(assert (=> d!1840697 (= (choose!44432 lt!2305354 lambda!320394) res!2466292)))

(declare-fun setIsEmpty!39748 () Bool)

(assert (=> setIsEmpty!39748 setRes!39748))

(declare-fun tp!1621217 () Bool)

(declare-fun setNonEmpty!39748 () Bool)

(declare-fun setElem!39748 () Context!10622)

(declare-fun e!3593750 () Bool)

(assert (=> setNonEmpty!39748 (= setRes!39748 (and tp!1621217 (inv!83064 setElem!39748) e!3593750))))

(declare-fun setRest!39748 () (InoxSet Context!10622))

(assert (=> setNonEmpty!39748 (= res!2466292 ((_ map or) (store ((as const (Array Context!10622 Bool)) false) setElem!39748 true) setRest!39748))))

(declare-fun b!5861238 () Bool)

(declare-fun tp!1621218 () Bool)

(assert (=> b!5861238 (= e!3593750 tp!1621218)))

(assert (= (and d!1840697 condSetEmpty!39748) setIsEmpty!39748))

(assert (= (and d!1840697 (not condSetEmpty!39748)) setNonEmpty!39748))

(assert (= setNonEmpty!39748 b!5861238))

(declare-fun m!6778230 () Bool)

(assert (=> setNonEmpty!39748 m!6778230))

(assert (=> d!1840315 d!1840697))

(assert (=> b!5860122 d!1840503))

(assert (=> d!1840301 d!1840647))

(declare-fun d!1840699 () Bool)

(assert (=> d!1840699 (= (flatMap!1458 z!1189 lambda!320448) (choose!44432 z!1189 lambda!320448))))

(declare-fun bs!1380979 () Bool)

(assert (= bs!1380979 d!1840699))

(declare-fun m!6778232 () Bool)

(assert (=> bs!1380979 m!6778232))

(assert (=> d!1840341 d!1840699))

(assert (=> d!1840305 d!1840647))

(declare-fun d!1840701 () Bool)

(assert (=> d!1840701 (= (isConcat!885 lt!2305428) ((_ is Concat!24772) lt!2305428))))

(assert (=> b!5860329 d!1840701))

(declare-fun d!1840703 () Bool)

(assert (=> d!1840703 (= (nullable!5927 (regOne!32366 r!7292)) (nullableFct!1913 (regOne!32366 r!7292)))))

(declare-fun bs!1380980 () Bool)

(assert (= bs!1380980 d!1840703))

(declare-fun m!6778234 () Bool)

(assert (=> bs!1380980 m!6778234))

(assert (=> b!5860174 d!1840703))

(assert (=> b!5860347 d!1840273))

(declare-fun d!1840705 () Bool)

(assert (=> d!1840705 (= (nullable!5927 (h!70404 (exprs!5811 lt!2305367))) (nullableFct!1913 (h!70404 (exprs!5811 lt!2305367))))))

(declare-fun bs!1380981 () Bool)

(assert (= bs!1380981 d!1840705))

(declare-fun m!6778236 () Bool)

(assert (=> bs!1380981 m!6778236))

(assert (=> b!5860297 d!1840705))

(declare-fun d!1840707 () Bool)

(assert (=> d!1840707 (= (nullable!5927 (regTwo!32367 r!7292)) (nullableFct!1913 (regTwo!32367 r!7292)))))

(declare-fun bs!1380982 () Bool)

(assert (= bs!1380982 d!1840707))

(declare-fun m!6778238 () Bool)

(assert (=> bs!1380982 m!6778238))

(assert (=> b!5860119 d!1840707))

(declare-fun d!1840709 () Bool)

(assert (=> d!1840709 (= (nullable!5927 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (nullableFct!1913 (h!70404 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))))))

(declare-fun bs!1380983 () Bool)

(assert (= bs!1380983 d!1840709))

(declare-fun m!6778240 () Bool)

(assert (=> bs!1380983 m!6778240))

(assert (=> b!5860194 d!1840709))

(declare-fun b!5861239 () Bool)

(declare-fun e!3593753 () Bool)

(declare-fun e!3593752 () Bool)

(assert (=> b!5861239 (= e!3593753 e!3593752)))

(declare-fun c!1039860 () Bool)

(assert (=> b!5861239 (= c!1039860 ((_ is Union!15927) lt!2305428))))

(declare-fun b!5861240 () Bool)

(declare-fun e!3593754 () Bool)

(declare-fun call!459706 () Bool)

(assert (=> b!5861240 (= e!3593754 call!459706)))

(declare-fun b!5861241 () Bool)

(declare-fun e!3593755 () Bool)

(declare-fun e!3593751 () Bool)

(assert (=> b!5861241 (= e!3593755 e!3593751)))

(declare-fun res!2466295 () Bool)

(assert (=> b!5861241 (=> (not res!2466295) (not e!3593751))))

(declare-fun call!459705 () Bool)

(assert (=> b!5861241 (= res!2466295 call!459705)))

(declare-fun b!5861242 () Bool)

(declare-fun res!2466297 () Bool)

(declare-fun e!3593757 () Bool)

(assert (=> b!5861242 (=> (not res!2466297) (not e!3593757))))

(assert (=> b!5861242 (= res!2466297 call!459705)))

(assert (=> b!5861242 (= e!3593752 e!3593757)))

(declare-fun b!5861243 () Bool)

(declare-fun e!3593756 () Bool)

(assert (=> b!5861243 (= e!3593756 e!3593753)))

(declare-fun c!1039861 () Bool)

(assert (=> b!5861243 (= c!1039861 ((_ is Star!15927) lt!2305428))))

(declare-fun b!5861244 () Bool)

(declare-fun res!2466294 () Bool)

(assert (=> b!5861244 (=> res!2466294 e!3593755)))

(assert (=> b!5861244 (= res!2466294 (not ((_ is Concat!24772) lt!2305428)))))

(assert (=> b!5861244 (= e!3593752 e!3593755)))

(declare-fun b!5861245 () Bool)

(declare-fun call!459704 () Bool)

(assert (=> b!5861245 (= e!3593751 call!459704)))

(declare-fun bm!459699 () Bool)

(assert (=> bm!459699 (= call!459704 call!459706)))

(declare-fun d!1840711 () Bool)

(declare-fun res!2466296 () Bool)

(assert (=> d!1840711 (=> res!2466296 e!3593756)))

(assert (=> d!1840711 (= res!2466296 ((_ is ElementMatch!15927) lt!2305428))))

(assert (=> d!1840711 (= (validRegex!7663 lt!2305428) e!3593756)))

(declare-fun b!5861246 () Bool)

(assert (=> b!5861246 (= e!3593753 e!3593754)))

(declare-fun res!2466293 () Bool)

(assert (=> b!5861246 (= res!2466293 (not (nullable!5927 (reg!16256 lt!2305428))))))

(assert (=> b!5861246 (=> (not res!2466293) (not e!3593754))))

(declare-fun b!5861247 () Bool)

(assert (=> b!5861247 (= e!3593757 call!459704)))

(declare-fun bm!459700 () Bool)

(assert (=> bm!459700 (= call!459705 (validRegex!7663 (ite c!1039860 (regOne!32367 lt!2305428) (regOne!32366 lt!2305428))))))

(declare-fun bm!459701 () Bool)

(assert (=> bm!459701 (= call!459706 (validRegex!7663 (ite c!1039861 (reg!16256 lt!2305428) (ite c!1039860 (regTwo!32367 lt!2305428) (regTwo!32366 lt!2305428)))))))

(assert (= (and d!1840711 (not res!2466296)) b!5861243))

(assert (= (and b!5861243 c!1039861) b!5861246))

(assert (= (and b!5861243 (not c!1039861)) b!5861239))

(assert (= (and b!5861246 res!2466293) b!5861240))

(assert (= (and b!5861239 c!1039860) b!5861242))

(assert (= (and b!5861239 (not c!1039860)) b!5861244))

(assert (= (and b!5861242 res!2466297) b!5861247))

(assert (= (and b!5861244 (not res!2466294)) b!5861241))

(assert (= (and b!5861241 res!2466295) b!5861245))

(assert (= (or b!5861247 b!5861245) bm!459699))

(assert (= (or b!5861242 b!5861241) bm!459700))

(assert (= (or b!5861240 bm!459699) bm!459701))

(declare-fun m!6778242 () Bool)

(assert (=> b!5861246 m!6778242))

(declare-fun m!6778244 () Bool)

(assert (=> bm!459700 m!6778244))

(declare-fun m!6778246 () Bool)

(assert (=> bm!459701 m!6778246))

(assert (=> d!1840329 d!1840711))

(declare-fun d!1840713 () Bool)

(declare-fun res!2466298 () Bool)

(declare-fun e!3593758 () Bool)

(assert (=> d!1840713 (=> res!2466298 e!3593758)))

(assert (=> d!1840713 (= res!2466298 ((_ is Nil!63956) (exprs!5811 (h!70405 zl!343))))))

(assert (=> d!1840713 (= (forall!15014 (exprs!5811 (h!70405 zl!343)) lambda!320442) e!3593758)))

(declare-fun b!5861248 () Bool)

(declare-fun e!3593759 () Bool)

(assert (=> b!5861248 (= e!3593758 e!3593759)))

(declare-fun res!2466299 () Bool)

(assert (=> b!5861248 (=> (not res!2466299) (not e!3593759))))

(assert (=> b!5861248 (= res!2466299 (dynLambda!25010 lambda!320442 (h!70404 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun b!5861249 () Bool)

(assert (=> b!5861249 (= e!3593759 (forall!15014 (t!377451 (exprs!5811 (h!70405 zl!343))) lambda!320442))))

(assert (= (and d!1840713 (not res!2466298)) b!5861248))

(assert (= (and b!5861248 res!2466299) b!5861249))

(declare-fun b_lambda!220623 () Bool)

(assert (=> (not b_lambda!220623) (not b!5861248)))

(declare-fun m!6778248 () Bool)

(assert (=> b!5861248 m!6778248))

(declare-fun m!6778250 () Bool)

(assert (=> b!5861249 m!6778250))

(assert (=> d!1840329 d!1840713))

(assert (=> b!5860147 d!1840503))

(declare-fun b!5861250 () Bool)

(declare-fun e!3593762 () Bool)

(declare-fun e!3593761 () Bool)

(assert (=> b!5861250 (= e!3593762 e!3593761)))

(declare-fun c!1039862 () Bool)

(assert (=> b!5861250 (= c!1039862 ((_ is Union!15927) (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292))))))

(declare-fun b!5861251 () Bool)

(declare-fun e!3593763 () Bool)

(declare-fun call!459709 () Bool)

(assert (=> b!5861251 (= e!3593763 call!459709)))

(declare-fun b!5861252 () Bool)

(declare-fun e!3593764 () Bool)

(declare-fun e!3593760 () Bool)

(assert (=> b!5861252 (= e!3593764 e!3593760)))

(declare-fun res!2466302 () Bool)

(assert (=> b!5861252 (=> (not res!2466302) (not e!3593760))))

(declare-fun call!459708 () Bool)

(assert (=> b!5861252 (= res!2466302 call!459708)))

(declare-fun b!5861253 () Bool)

(declare-fun res!2466304 () Bool)

(declare-fun e!3593766 () Bool)

(assert (=> b!5861253 (=> (not res!2466304) (not e!3593766))))

(assert (=> b!5861253 (= res!2466304 call!459708)))

(assert (=> b!5861253 (= e!3593761 e!3593766)))

(declare-fun b!5861254 () Bool)

(declare-fun e!3593765 () Bool)

(assert (=> b!5861254 (= e!3593765 e!3593762)))

(declare-fun c!1039863 () Bool)

(assert (=> b!5861254 (= c!1039863 ((_ is Star!15927) (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292))))))

(declare-fun b!5861255 () Bool)

(declare-fun res!2466301 () Bool)

(assert (=> b!5861255 (=> res!2466301 e!3593764)))

(assert (=> b!5861255 (= res!2466301 (not ((_ is Concat!24772) (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292)))))))

(assert (=> b!5861255 (= e!3593761 e!3593764)))

(declare-fun b!5861256 () Bool)

(declare-fun call!459707 () Bool)

(assert (=> b!5861256 (= e!3593760 call!459707)))

(declare-fun bm!459702 () Bool)

(assert (=> bm!459702 (= call!459707 call!459709)))

(declare-fun d!1840715 () Bool)

(declare-fun res!2466303 () Bool)

(assert (=> d!1840715 (=> res!2466303 e!3593765)))

(assert (=> d!1840715 (= res!2466303 ((_ is ElementMatch!15927) (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292))))))

(assert (=> d!1840715 (= (validRegex!7663 (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292))) e!3593765)))

(declare-fun b!5861257 () Bool)

(assert (=> b!5861257 (= e!3593762 e!3593763)))

(declare-fun res!2466300 () Bool)

(assert (=> b!5861257 (= res!2466300 (not (nullable!5927 (reg!16256 (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292))))))))

(assert (=> b!5861257 (=> (not res!2466300) (not e!3593763))))

(declare-fun b!5861258 () Bool)

(assert (=> b!5861258 (= e!3593766 call!459707)))

(declare-fun bm!459703 () Bool)

(assert (=> bm!459703 (= call!459708 (validRegex!7663 (ite c!1039862 (regOne!32367 (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292))) (regOne!32366 (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292))))))))

(declare-fun bm!459704 () Bool)

(assert (=> bm!459704 (= call!459709 (validRegex!7663 (ite c!1039863 (reg!16256 (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292))) (ite c!1039862 (regTwo!32367 (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292))) (regTwo!32366 (ite c!1039584 (regOne!32367 r!7292) (regOne!32366 r!7292)))))))))

(assert (= (and d!1840715 (not res!2466303)) b!5861254))

(assert (= (and b!5861254 c!1039863) b!5861257))

(assert (= (and b!5861254 (not c!1039863)) b!5861250))

(assert (= (and b!5861257 res!2466300) b!5861251))

(assert (= (and b!5861250 c!1039862) b!5861253))

(assert (= (and b!5861250 (not c!1039862)) b!5861255))

(assert (= (and b!5861253 res!2466304) b!5861258))

(assert (= (and b!5861255 (not res!2466301)) b!5861252))

(assert (= (and b!5861252 res!2466302) b!5861256))

(assert (= (or b!5861258 b!5861256) bm!459702))

(assert (= (or b!5861253 b!5861252) bm!459703))

(assert (= (or b!5861251 bm!459702) bm!459704))

(declare-fun m!6778252 () Bool)

(assert (=> b!5861257 m!6778252))

(declare-fun m!6778254 () Bool)

(assert (=> bm!459703 m!6778254))

(declare-fun m!6778256 () Bool)

(assert (=> bm!459704 m!6778256))

(assert (=> bm!459490 d!1840715))

(assert (=> d!1840333 d!1840597))

(assert (=> d!1840333 d!1840307))

(declare-fun bs!1380984 () Bool)

(declare-fun d!1840717 () Bool)

(assert (= bs!1380984 (and d!1840717 d!1840675)))

(declare-fun lambda!320490 () Int)

(assert (=> bs!1380984 (= lambda!320490 lambda!320484)))

(declare-fun bs!1380985 () Bool)

(assert (= bs!1380985 (and d!1840717 d!1840329)))

(assert (=> bs!1380985 (= lambda!320490 lambda!320442)))

(declare-fun bs!1380986 () Bool)

(assert (= bs!1380986 (and d!1840717 d!1840337)))

(assert (=> bs!1380986 (= lambda!320490 lambda!320445)))

(declare-fun bs!1380987 () Bool)

(assert (= bs!1380987 (and d!1840717 d!1840319)))

(assert (=> bs!1380987 (= lambda!320490 lambda!320439)))

(declare-fun bs!1380988 () Bool)

(assert (= bs!1380988 (and d!1840717 d!1840309)))

(assert (=> bs!1380988 (= lambda!320490 lambda!320438)))

(declare-fun bs!1380989 () Bool)

(assert (= bs!1380989 (and d!1840717 d!1840297)))

(assert (=> bs!1380989 (= lambda!320490 lambda!320432)))

(declare-fun bs!1380990 () Bool)

(assert (= bs!1380990 (and d!1840717 d!1840299)))

(assert (=> bs!1380990 (= lambda!320490 lambda!320435)))

(declare-fun bs!1380991 () Bool)

(assert (= bs!1380991 (and d!1840717 d!1840681)))

(assert (=> bs!1380991 (= lambda!320490 lambda!320486)))

(assert (=> d!1840717 (= (inv!83064 (h!70405 (t!377452 zl!343))) (forall!15014 (exprs!5811 (h!70405 (t!377452 zl!343))) lambda!320490))))

(declare-fun bs!1380992 () Bool)

(assert (= bs!1380992 d!1840717))

(declare-fun m!6778258 () Bool)

(assert (=> bs!1380992 m!6778258))

(assert (=> b!5860406 d!1840717))

(declare-fun d!1840719 () Bool)

(assert (=> d!1840719 (= (Exists!2999 (ite c!1039605 lambda!320443 lambda!320444)) (choose!44435 (ite c!1039605 lambda!320443 lambda!320444)))))

(declare-fun bs!1380993 () Bool)

(assert (= bs!1380993 d!1840719))

(declare-fun m!6778260 () Bool)

(assert (=> bs!1380993 m!6778260))

(assert (=> bm!459495 d!1840719))

(declare-fun call!459710 () (InoxSet Context!10622))

(declare-fun e!3593768 () (InoxSet Context!10622))

(declare-fun b!5861259 () Bool)

(assert (=> b!5861259 (= e!3593768 ((_ map or) call!459710 (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305367)))))) (h!70406 s!2326))))))

(declare-fun b!5861260 () Bool)

(declare-fun e!3593769 () (InoxSet Context!10622))

(assert (=> b!5861260 (= e!3593769 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459705 () Bool)

(assert (=> bm!459705 (= call!459710 (derivationStepZipperDown!1193 (h!70404 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305367))))) (Context!10623 (t!377451 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305367)))))) (h!70406 s!2326)))))

(declare-fun b!5861261 () Bool)

(assert (=> b!5861261 (= e!3593768 e!3593769)))

(declare-fun c!1039865 () Bool)

(assert (=> b!5861261 (= c!1039865 ((_ is Cons!63956) (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305367))))))))

(declare-fun d!1840721 () Bool)

(declare-fun c!1039864 () Bool)

(declare-fun e!3593767 () Bool)

(assert (=> d!1840721 (= c!1039864 e!3593767)))

(declare-fun res!2466305 () Bool)

(assert (=> d!1840721 (=> (not res!2466305) (not e!3593767))))

(assert (=> d!1840721 (= res!2466305 ((_ is Cons!63956) (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305367))))))))

(assert (=> d!1840721 (= (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 lt!2305367))) (h!70406 s!2326)) e!3593768)))

(declare-fun b!5861262 () Bool)

(assert (=> b!5861262 (= e!3593767 (nullable!5927 (h!70404 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305367)))))))))

(declare-fun b!5861263 () Bool)

(assert (=> b!5861263 (= e!3593769 call!459710)))

(assert (= (and d!1840721 res!2466305) b!5861262))

(assert (= (and d!1840721 c!1039864) b!5861259))

(assert (= (and d!1840721 (not c!1039864)) b!5861261))

(assert (= (and b!5861261 c!1039865) b!5861263))

(assert (= (and b!5861261 (not c!1039865)) b!5861260))

(assert (= (or b!5861259 b!5861263) bm!459705))

(declare-fun m!6778262 () Bool)

(assert (=> b!5861259 m!6778262))

(declare-fun m!6778264 () Bool)

(assert (=> bm!459705 m!6778264))

(declare-fun m!6778266 () Bool)

(assert (=> b!5861262 m!6778266))

(assert (=> b!5860294 d!1840721))

(assert (=> b!5860115 d!1840509))

(assert (=> b!5860115 d!1840505))

(declare-fun b!5861264 () Bool)

(declare-fun e!3593771 () (InoxSet Context!10622))

(declare-fun call!459711 () (InoxSet Context!10622))

(assert (=> b!5861264 (= e!3593771 ((_ map or) call!459711 (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))))))) (h!70406 s!2326))))))

(declare-fun b!5861265 () Bool)

(declare-fun e!3593772 () (InoxSet Context!10622))

(assert (=> b!5861265 (= e!3593772 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459706 () Bool)

(assert (=> bm!459706 (= call!459711 (derivationStepZipperDown!1193 (h!70404 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))))) (Context!10623 (t!377451 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))))))) (h!70406 s!2326)))))

(declare-fun b!5861266 () Bool)

(assert (=> b!5861266 (= e!3593771 e!3593772)))

(declare-fun c!1039867 () Bool)

(assert (=> b!5861266 (= c!1039867 ((_ is Cons!63956) (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))))))))

(declare-fun d!1840723 () Bool)

(declare-fun c!1039866 () Bool)

(declare-fun e!3593770 () Bool)

(assert (=> d!1840723 (= c!1039866 e!3593770)))

(declare-fun res!2466306 () Bool)

(assert (=> d!1840723 (=> (not res!2466306) (not e!3593770))))

(assert (=> d!1840723 (= res!2466306 ((_ is Cons!63956) (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))))))))

(assert (=> d!1840723 (= (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956))))) (h!70406 s!2326)) e!3593771)))

(declare-fun b!5861267 () Bool)

(assert (=> b!5861267 (= e!3593770 (nullable!5927 (h!70404 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (Cons!63956 r!7292 Nil!63956)))))))))))

(declare-fun b!5861268 () Bool)

(assert (=> b!5861268 (= e!3593772 call!459711)))

(assert (= (and d!1840723 res!2466306) b!5861267))

(assert (= (and d!1840723 c!1039866) b!5861264))

(assert (= (and d!1840723 (not c!1039866)) b!5861266))

(assert (= (and b!5861266 c!1039867) b!5861268))

(assert (= (and b!5861266 (not c!1039867)) b!5861265))

(assert (= (or b!5861264 b!5861268) bm!459706))

(declare-fun m!6778268 () Bool)

(assert (=> b!5861264 m!6778268))

(declare-fun m!6778270 () Bool)

(assert (=> bm!459706 m!6778270))

(declare-fun m!6778272 () Bool)

(assert (=> b!5861267 m!6778272))

(assert (=> b!5860191 d!1840723))

(declare-fun d!1840725 () Bool)

(declare-fun c!1039868 () Bool)

(assert (=> d!1840725 (= c!1039868 (isEmpty!35817 (tail!11493 s!2326)))))

(declare-fun e!3593773 () Bool)

(assert (=> d!1840725 (= (matchZipper!1993 (derivationStepZipper!1926 z!1189 (head!12408 s!2326)) (tail!11493 s!2326)) e!3593773)))

(declare-fun b!5861269 () Bool)

(assert (=> b!5861269 (= e!3593773 (nullableZipper!1766 (derivationStepZipper!1926 z!1189 (head!12408 s!2326))))))

(declare-fun b!5861270 () Bool)

(assert (=> b!5861270 (= e!3593773 (matchZipper!1993 (derivationStepZipper!1926 (derivationStepZipper!1926 z!1189 (head!12408 s!2326)) (head!12408 (tail!11493 s!2326))) (tail!11493 (tail!11493 s!2326))))))

(assert (= (and d!1840725 c!1039868) b!5861269))

(assert (= (and d!1840725 (not c!1039868)) b!5861270))

(assert (=> d!1840725 m!6777338))

(assert (=> d!1840725 m!6777340))

(assert (=> b!5861269 m!6777440))

(declare-fun m!6778274 () Bool)

(assert (=> b!5861269 m!6778274))

(assert (=> b!5861270 m!6777338))

(assert (=> b!5861270 m!6777788))

(assert (=> b!5861270 m!6777440))

(assert (=> b!5861270 m!6777788))

(declare-fun m!6778276 () Bool)

(assert (=> b!5861270 m!6778276))

(assert (=> b!5861270 m!6777338))

(assert (=> b!5861270 m!6777790))

(assert (=> b!5861270 m!6778276))

(assert (=> b!5861270 m!6777790))

(declare-fun m!6778278 () Bool)

(assert (=> b!5861270 m!6778278))

(assert (=> b!5860264 d!1840725))

(declare-fun bs!1380994 () Bool)

(declare-fun d!1840727 () Bool)

(assert (= bs!1380994 (and d!1840727 d!1840693)))

(declare-fun lambda!320491 () Int)

(assert (=> bs!1380994 (= (= (head!12408 s!2326) (head!12408 (t!377453 s!2326))) (= lambda!320491 lambda!320489))))

(declare-fun bs!1380995 () Bool)

(assert (= bs!1380995 (and d!1840727 d!1840341)))

(assert (=> bs!1380995 (= (= (head!12408 s!2326) (h!70406 s!2326)) (= lambda!320491 lambda!320448))))

(declare-fun bs!1380996 () Bool)

(assert (= bs!1380996 (and d!1840727 b!5859627)))

(assert (=> bs!1380996 (= (= (head!12408 s!2326) (h!70406 s!2326)) (= lambda!320491 lambda!320394))))

(declare-fun bs!1380997 () Bool)

(assert (= bs!1380997 (and d!1840727 d!1840665)))

(assert (=> bs!1380997 (= (= (head!12408 s!2326) (head!12408 (t!377453 s!2326))) (= lambda!320491 lambda!320481))))

(declare-fun bs!1380998 () Bool)

(assert (= bs!1380998 (and d!1840727 d!1840619)))

(assert (=> bs!1380998 (= (= (head!12408 s!2326) (head!12408 (t!377453 s!2326))) (= lambda!320491 lambda!320477))))

(assert (=> d!1840727 true))

(assert (=> d!1840727 (= (derivationStepZipper!1926 z!1189 (head!12408 s!2326)) (flatMap!1458 z!1189 lambda!320491))))

(declare-fun bs!1380999 () Bool)

(assert (= bs!1380999 d!1840727))

(declare-fun m!6778280 () Bool)

(assert (=> bs!1380999 m!6778280))

(assert (=> b!5860264 d!1840727))

(assert (=> b!5860264 d!1840503))

(assert (=> b!5860264 d!1840505))

(declare-fun d!1840729 () Bool)

(assert (=> d!1840729 (= (nullable!5927 (regOne!32367 r!7292)) (nullableFct!1913 (regOne!32367 r!7292)))))

(declare-fun bs!1381000 () Bool)

(assert (= bs!1381000 d!1840729))

(declare-fun m!6778282 () Bool)

(assert (=> bs!1381000 m!6778282))

(assert (=> b!5860144 d!1840729))

(assert (=> bm!459442 d!1840597))

(declare-fun d!1840731 () Bool)

(assert (=> d!1840731 (= (nullable!5927 (regOne!32366 (regOne!32367 r!7292))) (nullableFct!1913 (regOne!32366 (regOne!32367 r!7292))))))

(declare-fun bs!1381001 () Bool)

(assert (= bs!1381001 d!1840731))

(declare-fun m!6778284 () Bool)

(assert (=> bs!1381001 m!6778284))

(assert (=> b!5860211 d!1840731))

(declare-fun d!1840733 () Bool)

(assert (=> d!1840733 (= (isEmpty!35818 (t!377451 (unfocusZipperList!1348 zl!343))) ((_ is Nil!63956) (t!377451 (unfocusZipperList!1348 zl!343))))))

(assert (=> b!5860249 d!1840733))

(assert (=> bs!1380689 d!1840317))

(assert (=> d!1840303 d!1840597))

(assert (=> b!5860140 d!1840509))

(assert (=> b!5860140 d!1840505))

(declare-fun d!1840735 () Bool)

(assert (=> d!1840735 (= (isEmpty!35818 (tail!11494 (exprs!5811 (h!70405 zl!343)))) ((_ is Nil!63956) (tail!11494 (exprs!5811 (h!70405 zl!343)))))))

(assert (=> b!5860338 d!1840735))

(declare-fun d!1840737 () Bool)

(assert (=> d!1840737 (= (tail!11494 (exprs!5811 (h!70405 zl!343))) (t!377451 (exprs!5811 (h!70405 zl!343))))))

(assert (=> b!5860338 d!1840737))

(declare-fun d!1840739 () Bool)

(declare-fun res!2466307 () Bool)

(declare-fun e!3593774 () Bool)

(assert (=> d!1840739 (=> res!2466307 e!3593774)))

(assert (=> d!1840739 (= res!2466307 ((_ is Nil!63956) (exprs!5811 lt!2305344)))))

(assert (=> d!1840739 (= (forall!15014 (exprs!5811 lt!2305344) lambda!320439) e!3593774)))

(declare-fun b!5861271 () Bool)

(declare-fun e!3593775 () Bool)

(assert (=> b!5861271 (= e!3593774 e!3593775)))

(declare-fun res!2466308 () Bool)

(assert (=> b!5861271 (=> (not res!2466308) (not e!3593775))))

(assert (=> b!5861271 (= res!2466308 (dynLambda!25010 lambda!320439 (h!70404 (exprs!5811 lt!2305344))))))

(declare-fun b!5861272 () Bool)

(assert (=> b!5861272 (= e!3593775 (forall!15014 (t!377451 (exprs!5811 lt!2305344)) lambda!320439))))

(assert (= (and d!1840739 (not res!2466307)) b!5861271))

(assert (= (and b!5861271 res!2466308) b!5861272))

(declare-fun b_lambda!220625 () Bool)

(assert (=> (not b_lambda!220625) (not b!5861271)))

(declare-fun m!6778286 () Bool)

(assert (=> b!5861271 m!6778286))

(declare-fun m!6778288 () Bool)

(assert (=> b!5861272 m!6778288))

(assert (=> d!1840319 d!1840739))

(declare-fun d!1840741 () Bool)

(assert (=> d!1840741 (= (nullable!5927 (h!70404 (exprs!5811 lt!2305350))) (nullableFct!1913 (h!70404 (exprs!5811 lt!2305350))))))

(declare-fun bs!1381002 () Bool)

(assert (= bs!1381002 d!1840741))

(declare-fun m!6778290 () Bool)

(assert (=> bs!1381002 m!6778290))

(assert (=> b!5860302 d!1840741))

(declare-fun d!1840743 () Bool)

(declare-fun c!1039871 () Bool)

(assert (=> d!1840743 (= c!1039871 ((_ is Nil!63957) lt!2305412))))

(declare-fun e!3593778 () (InoxSet Context!10622))

(assert (=> d!1840743 (= (content!11757 lt!2305412) e!3593778)))

(declare-fun b!5861277 () Bool)

(assert (=> b!5861277 (= e!3593778 ((as const (Array Context!10622 Bool)) false))))

(declare-fun b!5861278 () Bool)

(assert (=> b!5861278 (= e!3593778 ((_ map or) (store ((as const (Array Context!10622 Bool)) false) (h!70405 lt!2305412) true) (content!11757 (t!377452 lt!2305412))))))

(assert (= (and d!1840743 c!1039871) b!5861277))

(assert (= (and d!1840743 (not c!1039871)) b!5861278))

(declare-fun m!6778292 () Bool)

(assert (=> b!5861278 m!6778292))

(declare-fun m!6778294 () Bool)

(assert (=> b!5861278 m!6778294))

(assert (=> b!5860220 d!1840743))

(declare-fun d!1840745 () Bool)

(assert (=> d!1840745 (= (isEmpty!35818 (exprs!5811 (h!70405 zl!343))) ((_ is Nil!63956) (exprs!5811 (h!70405 zl!343))))))

(assert (=> b!5860334 d!1840745))

(declare-fun d!1840747 () Bool)

(declare-fun res!2466309 () Bool)

(declare-fun e!3593779 () Bool)

(assert (=> d!1840747 (=> res!2466309 e!3593779)))

(assert (=> d!1840747 (= res!2466309 ((_ is Nil!63956) (exprs!5811 setElem!39732)))))

(assert (=> d!1840747 (= (forall!15014 (exprs!5811 setElem!39732) lambda!320438) e!3593779)))

(declare-fun b!5861279 () Bool)

(declare-fun e!3593780 () Bool)

(assert (=> b!5861279 (= e!3593779 e!3593780)))

(declare-fun res!2466310 () Bool)

(assert (=> b!5861279 (=> (not res!2466310) (not e!3593780))))

(assert (=> b!5861279 (= res!2466310 (dynLambda!25010 lambda!320438 (h!70404 (exprs!5811 setElem!39732))))))

(declare-fun b!5861280 () Bool)

(assert (=> b!5861280 (= e!3593780 (forall!15014 (t!377451 (exprs!5811 setElem!39732)) lambda!320438))))

(assert (= (and d!1840747 (not res!2466309)) b!5861279))

(assert (= (and b!5861279 res!2466310) b!5861280))

(declare-fun b_lambda!220627 () Bool)

(assert (=> (not b_lambda!220627) (not b!5861279)))

(declare-fun m!6778296 () Bool)

(assert (=> b!5861279 m!6778296))

(declare-fun m!6778298 () Bool)

(assert (=> b!5861280 m!6778298))

(assert (=> d!1840309 d!1840747))

(declare-fun d!1840749 () Bool)

(assert (=> d!1840749 (= ($colon$colon!1832 (exprs!5811 lt!2305344) (ite (or c!1039543 c!1039540) (regTwo!32366 r!7292) r!7292)) (Cons!63956 (ite (or c!1039543 c!1039540) (regTwo!32366 r!7292) r!7292) (exprs!5811 lt!2305344)))))

(assert (=> bm!459465 d!1840749))

(declare-fun d!1840751 () Bool)

(assert (=> d!1840751 (= (head!12409 (unfocusZipperList!1348 zl!343)) (h!70404 (unfocusZipperList!1348 zl!343)))))

(assert (=> b!5860241 d!1840751))

(assert (=> b!5860359 d!1840509))

(assert (=> b!5860359 d!1840505))

(declare-fun b!5861281 () Bool)

(declare-fun e!3593782 () (InoxSet Context!10622))

(declare-fun call!459712 () (InoxSet Context!10622))

(assert (=> b!5861281 (= e!3593782 ((_ map or) call!459712 (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305350)))))) (h!70406 s!2326))))))

(declare-fun b!5861282 () Bool)

(declare-fun e!3593783 () (InoxSet Context!10622))

(assert (=> b!5861282 (= e!3593783 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459707 () Bool)

(assert (=> bm!459707 (= call!459712 (derivationStepZipperDown!1193 (h!70404 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305350))))) (Context!10623 (t!377451 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305350)))))) (h!70406 s!2326)))))

(declare-fun b!5861283 () Bool)

(assert (=> b!5861283 (= e!3593782 e!3593783)))

(declare-fun c!1039873 () Bool)

(assert (=> b!5861283 (= c!1039873 ((_ is Cons!63956) (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305350))))))))

(declare-fun d!1840753 () Bool)

(declare-fun c!1039872 () Bool)

(declare-fun e!3593781 () Bool)

(assert (=> d!1840753 (= c!1039872 e!3593781)))

(declare-fun res!2466311 () Bool)

(assert (=> d!1840753 (=> (not res!2466311) (not e!3593781))))

(assert (=> d!1840753 (= res!2466311 ((_ is Cons!63956) (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305350))))))))

(assert (=> d!1840753 (= (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 lt!2305350))) (h!70406 s!2326)) e!3593782)))

(declare-fun b!5861284 () Bool)

(assert (=> b!5861284 (= e!3593781 (nullable!5927 (h!70404 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 lt!2305350)))))))))

(declare-fun b!5861285 () Bool)

(assert (=> b!5861285 (= e!3593783 call!459712)))

(assert (= (and d!1840753 res!2466311) b!5861284))

(assert (= (and d!1840753 c!1039872) b!5861281))

(assert (= (and d!1840753 (not c!1039872)) b!5861283))

(assert (= (and b!5861283 c!1039873) b!5861285))

(assert (= (and b!5861283 (not c!1039873)) b!5861282))

(assert (= (or b!5861281 b!5861285) bm!459707))

(declare-fun m!6778300 () Bool)

(assert (=> b!5861281 m!6778300))

(declare-fun m!6778302 () Bool)

(assert (=> bm!459707 m!6778302))

(declare-fun m!6778304 () Bool)

(assert (=> b!5861284 m!6778304))

(assert (=> b!5860299 d!1840753))

(assert (=> bm!459447 d!1840597))

(declare-fun d!1840755 () Bool)

(assert (=> d!1840755 true))

(declare-fun setRes!39749 () Bool)

(assert (=> d!1840755 setRes!39749))

(declare-fun condSetEmpty!39749 () Bool)

(declare-fun res!2466312 () (InoxSet Context!10622))

(assert (=> d!1840755 (= condSetEmpty!39749 (= res!2466312 ((as const (Array Context!10622 Bool)) false)))))

(assert (=> d!1840755 (= (choose!44432 z!1189 lambda!320394) res!2466312)))

(declare-fun setIsEmpty!39749 () Bool)

(assert (=> setIsEmpty!39749 setRes!39749))

(declare-fun setNonEmpty!39749 () Bool)

(declare-fun setElem!39749 () Context!10622)

(declare-fun tp!1621219 () Bool)

(declare-fun e!3593784 () Bool)

(assert (=> setNonEmpty!39749 (= setRes!39749 (and tp!1621219 (inv!83064 setElem!39749) e!3593784))))

(declare-fun setRest!39749 () (InoxSet Context!10622))

(assert (=> setNonEmpty!39749 (= res!2466312 ((_ map or) (store ((as const (Array Context!10622 Bool)) false) setElem!39749 true) setRest!39749))))

(declare-fun b!5861286 () Bool)

(declare-fun tp!1621220 () Bool)

(assert (=> b!5861286 (= e!3593784 tp!1621220)))

(assert (= (and d!1840755 condSetEmpty!39749) setIsEmpty!39749))

(assert (= (and d!1840755 (not condSetEmpty!39749)) setNonEmpty!39749))

(assert (= setNonEmpty!39749 b!5861286))

(declare-fun m!6778306 () Bool)

(assert (=> setNonEmpty!39749 m!6778306))

(assert (=> d!1840343 d!1840755))

(assert (=> bm!459446 d!1840597))

(declare-fun bs!1381003 () Bool)

(declare-fun d!1840757 () Bool)

(assert (= bs!1381003 (and d!1840757 d!1840675)))

(declare-fun lambda!320492 () Int)

(assert (=> bs!1381003 (= lambda!320492 lambda!320484)))

(declare-fun bs!1381004 () Bool)

(assert (= bs!1381004 (and d!1840757 d!1840329)))

(assert (=> bs!1381004 (= lambda!320492 lambda!320442)))

(declare-fun bs!1381005 () Bool)

(assert (= bs!1381005 (and d!1840757 d!1840337)))

(assert (=> bs!1381005 (= lambda!320492 lambda!320445)))

(declare-fun bs!1381006 () Bool)

(assert (= bs!1381006 (and d!1840757 d!1840319)))

(assert (=> bs!1381006 (= lambda!320492 lambda!320439)))

(declare-fun bs!1381007 () Bool)

(assert (= bs!1381007 (and d!1840757 d!1840309)))

(assert (=> bs!1381007 (= lambda!320492 lambda!320438)))

(declare-fun bs!1381008 () Bool)

(assert (= bs!1381008 (and d!1840757 d!1840297)))

(assert (=> bs!1381008 (= lambda!320492 lambda!320432)))

(declare-fun bs!1381009 () Bool)

(assert (= bs!1381009 (and d!1840757 d!1840681)))

(assert (=> bs!1381009 (= lambda!320492 lambda!320486)))

(declare-fun bs!1381010 () Bool)

(assert (= bs!1381010 (and d!1840757 d!1840299)))

(assert (=> bs!1381010 (= lambda!320492 lambda!320435)))

(declare-fun bs!1381011 () Bool)

(assert (= bs!1381011 (and d!1840757 d!1840717)))

(assert (=> bs!1381011 (= lambda!320492 lambda!320490)))

(assert (=> d!1840757 (= (inv!83064 setElem!39738) (forall!15014 (exprs!5811 setElem!39738) lambda!320492))))

(declare-fun bs!1381012 () Bool)

(assert (= bs!1381012 d!1840757))

(declare-fun m!6778308 () Bool)

(assert (=> bs!1381012 m!6778308))

(assert (=> setNonEmpty!39738 d!1840757))

(declare-fun d!1840759 () Bool)

(assert (=> d!1840759 (= (nullable!5927 (h!70404 (exprs!5811 (h!70405 zl!343)))) (nullableFct!1913 (h!70404 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun bs!1381013 () Bool)

(assert (= bs!1381013 d!1840759))

(declare-fun m!6778310 () Bool)

(assert (=> bs!1381013 m!6778310))

(assert (=> b!5860369 d!1840759))

(declare-fun d!1840761 () Bool)

(assert (=> d!1840761 (= ($colon$colon!1832 (exprs!5811 lt!2305344) (ite (or c!1039559 c!1039556) (regTwo!32366 (regOne!32367 r!7292)) (regOne!32367 r!7292))) (Cons!63956 (ite (or c!1039559 c!1039556) (regTwo!32366 (regOne!32367 r!7292)) (regOne!32367 r!7292)) (exprs!5811 lt!2305344)))))

(assert (=> bm!459480 d!1840761))

(assert (=> d!1840277 d!1840597))

(assert (=> d!1840277 d!1840661))

(declare-fun b!5861287 () Bool)

(declare-fun e!3593787 () Bool)

(declare-fun e!3593786 () Bool)

(assert (=> b!5861287 (= e!3593787 e!3593786)))

(declare-fun c!1039874 () Bool)

(assert (=> b!5861287 (= c!1039874 ((_ is Union!15927) lt!2305415))))

(declare-fun b!5861288 () Bool)

(declare-fun e!3593788 () Bool)

(declare-fun call!459715 () Bool)

(assert (=> b!5861288 (= e!3593788 call!459715)))

(declare-fun b!5861289 () Bool)

(declare-fun e!3593789 () Bool)

(declare-fun e!3593785 () Bool)

(assert (=> b!5861289 (= e!3593789 e!3593785)))

(declare-fun res!2466315 () Bool)

(assert (=> b!5861289 (=> (not res!2466315) (not e!3593785))))

(declare-fun call!459714 () Bool)

(assert (=> b!5861289 (= res!2466315 call!459714)))

(declare-fun b!5861290 () Bool)

(declare-fun res!2466317 () Bool)

(declare-fun e!3593791 () Bool)

(assert (=> b!5861290 (=> (not res!2466317) (not e!3593791))))

(assert (=> b!5861290 (= res!2466317 call!459714)))

(assert (=> b!5861290 (= e!3593786 e!3593791)))

(declare-fun b!5861291 () Bool)

(declare-fun e!3593790 () Bool)

(assert (=> b!5861291 (= e!3593790 e!3593787)))

(declare-fun c!1039875 () Bool)

(assert (=> b!5861291 (= c!1039875 ((_ is Star!15927) lt!2305415))))

(declare-fun b!5861292 () Bool)

(declare-fun res!2466314 () Bool)

(assert (=> b!5861292 (=> res!2466314 e!3593789)))

(assert (=> b!5861292 (= res!2466314 (not ((_ is Concat!24772) lt!2305415)))))

(assert (=> b!5861292 (= e!3593786 e!3593789)))

(declare-fun b!5861293 () Bool)

(declare-fun call!459713 () Bool)

(assert (=> b!5861293 (= e!3593785 call!459713)))

(declare-fun bm!459708 () Bool)

(assert (=> bm!459708 (= call!459713 call!459715)))

(declare-fun d!1840763 () Bool)

(declare-fun res!2466316 () Bool)

(assert (=> d!1840763 (=> res!2466316 e!3593790)))

(assert (=> d!1840763 (= res!2466316 ((_ is ElementMatch!15927) lt!2305415))))

(assert (=> d!1840763 (= (validRegex!7663 lt!2305415) e!3593790)))

(declare-fun b!5861294 () Bool)

(assert (=> b!5861294 (= e!3593787 e!3593788)))

(declare-fun res!2466313 () Bool)

(assert (=> b!5861294 (= res!2466313 (not (nullable!5927 (reg!16256 lt!2305415))))))

(assert (=> b!5861294 (=> (not res!2466313) (not e!3593788))))

(declare-fun b!5861295 () Bool)

(assert (=> b!5861295 (= e!3593791 call!459713)))

(declare-fun bm!459709 () Bool)

(assert (=> bm!459709 (= call!459714 (validRegex!7663 (ite c!1039874 (regOne!32367 lt!2305415) (regOne!32366 lt!2305415))))))

(declare-fun bm!459710 () Bool)

(assert (=> bm!459710 (= call!459715 (validRegex!7663 (ite c!1039875 (reg!16256 lt!2305415) (ite c!1039874 (regTwo!32367 lt!2305415) (regTwo!32366 lt!2305415)))))))

(assert (= (and d!1840763 (not res!2466316)) b!5861291))

(assert (= (and b!5861291 c!1039875) b!5861294))

(assert (= (and b!5861291 (not c!1039875)) b!5861287))

(assert (= (and b!5861294 res!2466313) b!5861288))

(assert (= (and b!5861287 c!1039874) b!5861290))

(assert (= (and b!5861287 (not c!1039874)) b!5861292))

(assert (= (and b!5861290 res!2466317) b!5861295))

(assert (= (and b!5861292 (not res!2466314)) b!5861289))

(assert (= (and b!5861289 res!2466315) b!5861293))

(assert (= (or b!5861295 b!5861293) bm!459708))

(assert (= (or b!5861290 b!5861289) bm!459709))

(assert (= (or b!5861288 bm!459708) bm!459710))

(declare-fun m!6778312 () Bool)

(assert (=> b!5861294 m!6778312))

(declare-fun m!6778314 () Bool)

(assert (=> bm!459709 m!6778314))

(declare-fun m!6778316 () Bool)

(assert (=> bm!459710 m!6778316))

(assert (=> d!1840297 d!1840763))

(declare-fun d!1840765 () Bool)

(declare-fun res!2466318 () Bool)

(declare-fun e!3593792 () Bool)

(assert (=> d!1840765 (=> res!2466318 e!3593792)))

(assert (=> d!1840765 (= res!2466318 ((_ is Nil!63956) (unfocusZipperList!1348 zl!343)))))

(assert (=> d!1840765 (= (forall!15014 (unfocusZipperList!1348 zl!343) lambda!320432) e!3593792)))

(declare-fun b!5861296 () Bool)

(declare-fun e!3593793 () Bool)

(assert (=> b!5861296 (= e!3593792 e!3593793)))

(declare-fun res!2466319 () Bool)

(assert (=> b!5861296 (=> (not res!2466319) (not e!3593793))))

(assert (=> b!5861296 (= res!2466319 (dynLambda!25010 lambda!320432 (h!70404 (unfocusZipperList!1348 zl!343))))))

(declare-fun b!5861297 () Bool)

(assert (=> b!5861297 (= e!3593793 (forall!15014 (t!377451 (unfocusZipperList!1348 zl!343)) lambda!320432))))

(assert (= (and d!1840765 (not res!2466318)) b!5861296))

(assert (= (and b!5861296 res!2466319) b!5861297))

(declare-fun b_lambda!220629 () Bool)

(assert (=> (not b_lambda!220629) (not b!5861296)))

(declare-fun m!6778318 () Bool)

(assert (=> b!5861296 m!6778318))

(declare-fun m!6778320 () Bool)

(assert (=> b!5861297 m!6778320))

(assert (=> d!1840297 d!1840765))

(declare-fun b!5861298 () Bool)

(declare-fun e!3593796 () Bool)

(declare-fun e!3593795 () Bool)

(assert (=> b!5861298 (= e!3593796 e!3593795)))

(declare-fun c!1039876 () Bool)

(assert (=> b!5861298 (= c!1039876 ((_ is Union!15927) (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292)))))))

(declare-fun b!5861299 () Bool)

(declare-fun e!3593797 () Bool)

(declare-fun call!459718 () Bool)

(assert (=> b!5861299 (= e!3593797 call!459718)))

(declare-fun b!5861300 () Bool)

(declare-fun e!3593798 () Bool)

(declare-fun e!3593794 () Bool)

(assert (=> b!5861300 (= e!3593798 e!3593794)))

(declare-fun res!2466322 () Bool)

(assert (=> b!5861300 (=> (not res!2466322) (not e!3593794))))

(declare-fun call!459717 () Bool)

(assert (=> b!5861300 (= res!2466322 call!459717)))

(declare-fun b!5861301 () Bool)

(declare-fun res!2466324 () Bool)

(declare-fun e!3593800 () Bool)

(assert (=> b!5861301 (=> (not res!2466324) (not e!3593800))))

(assert (=> b!5861301 (= res!2466324 call!459717)))

(assert (=> b!5861301 (= e!3593795 e!3593800)))

(declare-fun b!5861302 () Bool)

(declare-fun e!3593799 () Bool)

(assert (=> b!5861302 (= e!3593799 e!3593796)))

(declare-fun c!1039877 () Bool)

(assert (=> b!5861302 (= c!1039877 ((_ is Star!15927) (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292)))))))

(declare-fun b!5861303 () Bool)

(declare-fun res!2466321 () Bool)

(assert (=> b!5861303 (=> res!2466321 e!3593798)))

(assert (=> b!5861303 (= res!2466321 (not ((_ is Concat!24772) (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292))))))))

(assert (=> b!5861303 (= e!3593795 e!3593798)))

(declare-fun b!5861304 () Bool)

(declare-fun call!459716 () Bool)

(assert (=> b!5861304 (= e!3593794 call!459716)))

(declare-fun bm!459711 () Bool)

(assert (=> bm!459711 (= call!459716 call!459718)))

(declare-fun d!1840767 () Bool)

(declare-fun res!2466323 () Bool)

(assert (=> d!1840767 (=> res!2466323 e!3593799)))

(assert (=> d!1840767 (= res!2466323 ((_ is ElementMatch!15927) (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292)))))))

(assert (=> d!1840767 (= (validRegex!7663 (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292)))) e!3593799)))

(declare-fun b!5861305 () Bool)

(assert (=> b!5861305 (= e!3593796 e!3593797)))

(declare-fun res!2466320 () Bool)

(assert (=> b!5861305 (= res!2466320 (not (nullable!5927 (reg!16256 (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292)))))))))

(assert (=> b!5861305 (=> (not res!2466320) (not e!3593797))))

(declare-fun b!5861306 () Bool)

(assert (=> b!5861306 (= e!3593800 call!459716)))

(declare-fun bm!459712 () Bool)

(assert (=> bm!459712 (= call!459717 (validRegex!7663 (ite c!1039876 (regOne!32367 (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292)))) (regOne!32366 (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292)))))))))

(declare-fun bm!459713 () Bool)

(assert (=> bm!459713 (= call!459718 (validRegex!7663 (ite c!1039877 (reg!16256 (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292)))) (ite c!1039876 (regTwo!32367 (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292)))) (regTwo!32366 (ite c!1039585 (reg!16256 r!7292) (ite c!1039584 (regTwo!32367 r!7292) (regTwo!32366 r!7292))))))))))

(assert (= (and d!1840767 (not res!2466323)) b!5861302))

(assert (= (and b!5861302 c!1039877) b!5861305))

(assert (= (and b!5861302 (not c!1039877)) b!5861298))

(assert (= (and b!5861305 res!2466320) b!5861299))

(assert (= (and b!5861298 c!1039876) b!5861301))

(assert (= (and b!5861298 (not c!1039876)) b!5861303))

(assert (= (and b!5861301 res!2466324) b!5861306))

(assert (= (and b!5861303 (not res!2466321)) b!5861300))

(assert (= (and b!5861300 res!2466322) b!5861304))

(assert (= (or b!5861306 b!5861304) bm!459711))

(assert (= (or b!5861301 b!5861300) bm!459712))

(assert (= (or b!5861299 bm!459711) bm!459713))

(declare-fun m!6778322 () Bool)

(assert (=> b!5861305 m!6778322))

(declare-fun m!6778324 () Bool)

(assert (=> bm!459712 m!6778324))

(declare-fun m!6778326 () Bool)

(assert (=> bm!459713 m!6778326))

(assert (=> bm!459491 d!1840767))

(assert (=> b!5860344 d!1840281))

(declare-fun c!1039881 () Bool)

(declare-fun d!1840769 () Bool)

(assert (=> d!1840769 (= c!1039881 (and ((_ is ElementMatch!15927) (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292))) (= (c!1039387 (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292))) (h!70406 s!2326))))))

(declare-fun e!3593806 () (InoxSet Context!10622))

(assert (=> d!1840769 (= (derivationStepZipperDown!1193 (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292)) (ite c!1039541 lt!2305344 (Context!10623 call!459470)) (h!70406 s!2326)) e!3593806)))

(declare-fun b!5861307 () Bool)

(declare-fun e!3593805 () (InoxSet Context!10622))

(declare-fun call!459719 () (InoxSet Context!10622))

(assert (=> b!5861307 (= e!3593805 call!459719)))

(declare-fun b!5861308 () Bool)

(declare-fun e!3593804 () (InoxSet Context!10622))

(assert (=> b!5861308 (= e!3593804 call!459719)))

(declare-fun b!5861309 () Bool)

(assert (=> b!5861309 (= e!3593805 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459714 () Bool)

(declare-fun call!459721 () (InoxSet Context!10622))

(assert (=> bm!459714 (= call!459719 call!459721)))

(declare-fun c!1039880 () Bool)

(declare-fun bm!459715 () Bool)

(declare-fun call!459722 () List!64080)

(declare-fun call!459720 () (InoxSet Context!10622))

(assert (=> bm!459715 (= call!459720 (derivationStepZipperDown!1193 (ite c!1039880 (regOne!32367 (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292))) (regOne!32366 (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292)))) (ite c!1039880 (ite c!1039541 lt!2305344 (Context!10623 call!459470)) (Context!10623 call!459722)) (h!70406 s!2326)))))

(declare-fun c!1039879 () Bool)

(declare-fun call!459724 () List!64080)

(declare-fun bm!459716 () Bool)

(declare-fun c!1039882 () Bool)

(declare-fun call!459723 () (InoxSet Context!10622))

(assert (=> bm!459716 (= call!459723 (derivationStepZipperDown!1193 (ite c!1039880 (regTwo!32367 (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292))) (ite c!1039882 (regTwo!32366 (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292))) (ite c!1039879 (regOne!32366 (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292))) (reg!16256 (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292)))))) (ite (or c!1039880 c!1039882) (ite c!1039541 lt!2305344 (Context!10623 call!459470)) (Context!10623 call!459724)) (h!70406 s!2326)))))

(declare-fun b!5861310 () Bool)

(declare-fun c!1039878 () Bool)

(assert (=> b!5861310 (= c!1039878 ((_ is Star!15927) (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292))))))

(assert (=> b!5861310 (= e!3593804 e!3593805)))

(declare-fun b!5861311 () Bool)

(declare-fun e!3593803 () Bool)

(assert (=> b!5861311 (= e!3593803 (nullable!5927 (regOne!32366 (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292)))))))

(declare-fun b!5861312 () Bool)

(declare-fun e!3593801 () (InoxSet Context!10622))

(assert (=> b!5861312 (= e!3593806 e!3593801)))

(assert (=> b!5861312 (= c!1039880 ((_ is Union!15927) (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292))))))

(declare-fun b!5861313 () Bool)

(declare-fun e!3593802 () (InoxSet Context!10622))

(assert (=> b!5861313 (= e!3593802 ((_ map or) call!459720 call!459721))))

(declare-fun b!5861314 () Bool)

(assert (=> b!5861314 (= e!3593802 e!3593804)))

(assert (=> b!5861314 (= c!1039879 ((_ is Concat!24772) (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292))))))

(declare-fun b!5861315 () Bool)

(assert (=> b!5861315 (= e!3593806 (store ((as const (Array Context!10622 Bool)) false) (ite c!1039541 lt!2305344 (Context!10623 call!459470)) true))))

(declare-fun bm!459717 () Bool)

(assert (=> bm!459717 (= call!459722 ($colon$colon!1832 (exprs!5811 (ite c!1039541 lt!2305344 (Context!10623 call!459470))) (ite (or c!1039882 c!1039879) (regTwo!32366 (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292))) (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292)))))))

(declare-fun bm!459718 () Bool)

(assert (=> bm!459718 (= call!459721 call!459723)))

(declare-fun bm!459719 () Bool)

(assert (=> bm!459719 (= call!459724 call!459722)))

(declare-fun b!5861316 () Bool)

(assert (=> b!5861316 (= c!1039882 e!3593803)))

(declare-fun res!2466325 () Bool)

(assert (=> b!5861316 (=> (not res!2466325) (not e!3593803))))

(assert (=> b!5861316 (= res!2466325 ((_ is Concat!24772) (ite c!1039541 (regOne!32367 r!7292) (regOne!32366 r!7292))))))

(assert (=> b!5861316 (= e!3593801 e!3593802)))

(declare-fun b!5861317 () Bool)

(assert (=> b!5861317 (= e!3593801 ((_ map or) call!459720 call!459723))))

(assert (= (and d!1840769 c!1039881) b!5861315))

(assert (= (and d!1840769 (not c!1039881)) b!5861312))

(assert (= (and b!5861312 c!1039880) b!5861317))

(assert (= (and b!5861312 (not c!1039880)) b!5861316))

(assert (= (and b!5861316 res!2466325) b!5861311))

(assert (= (and b!5861316 c!1039882) b!5861313))

(assert (= (and b!5861316 (not c!1039882)) b!5861314))

(assert (= (and b!5861314 c!1039879) b!5861308))

(assert (= (and b!5861314 (not c!1039879)) b!5861310))

(assert (= (and b!5861310 c!1039878) b!5861307))

(assert (= (and b!5861310 (not c!1039878)) b!5861309))

(assert (= (or b!5861308 b!5861307) bm!459719))

(assert (= (or b!5861308 b!5861307) bm!459714))

(assert (= (or b!5861313 bm!459719) bm!459717))

(assert (= (or b!5861313 bm!459714) bm!459718))

(assert (= (or b!5861317 bm!459718) bm!459716))

(assert (= (or b!5861317 b!5861313) bm!459715))

(declare-fun m!6778328 () Bool)

(assert (=> b!5861311 m!6778328))

(declare-fun m!6778330 () Bool)

(assert (=> bm!459717 m!6778330))

(declare-fun m!6778332 () Bool)

(assert (=> bm!459716 m!6778332))

(declare-fun m!6778334 () Bool)

(assert (=> b!5861315 m!6778334))

(declare-fun m!6778336 () Bool)

(assert (=> bm!459715 m!6778336))

(assert (=> bm!459463 d!1840769))

(assert (=> d!1840323 d!1840313))

(declare-fun d!1840771 () Bool)

(assert (=> d!1840771 (= (flatMap!1458 lt!2305347 lambda!320394) (dynLambda!25008 lambda!320394 lt!2305367))))

(assert (=> d!1840771 true))

(declare-fun _$13!2588 () Unit!157125)

(assert (=> d!1840771 (= (choose!44431 lt!2305347 lt!2305367 lambda!320394) _$13!2588)))

(declare-fun b_lambda!220631 () Bool)

(assert (=> (not b_lambda!220631) (not d!1840771)))

(declare-fun bs!1381014 () Bool)

(assert (= bs!1381014 d!1840771))

(assert (=> bs!1381014 m!6777074))

(assert (=> bs!1381014 m!6777480))

(assert (=> d!1840323 d!1840771))

(assert (=> d!1840335 d!1840333))

(assert (=> d!1840335 d!1840331))

(declare-fun d!1840773 () Bool)

(assert (=> d!1840773 (= (matchR!8110 r!7292 s!2326) (matchRSpec!3028 r!7292 s!2326))))

(assert (=> d!1840773 true))

(declare-fun _$88!4300 () Unit!157125)

(assert (=> d!1840773 (= (choose!44429 r!7292 s!2326) _$88!4300)))

(declare-fun bs!1381015 () Bool)

(assert (= bs!1381015 d!1840773))

(assert (=> bs!1381015 m!6777034))

(assert (=> bs!1381015 m!6777032))

(assert (=> d!1840335 d!1840773))

(assert (=> d!1840335 d!1840307))

(declare-fun call!459725 () (InoxSet Context!10622))

(declare-fun b!5861318 () Bool)

(declare-fun e!3593808 () (InoxSet Context!10622))

(assert (=> b!5861318 (= e!3593808 ((_ map or) call!459725 (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343))))))) (h!70406 s!2326))))))

(declare-fun b!5861319 () Bool)

(declare-fun e!3593809 () (InoxSet Context!10622))

(assert (=> b!5861319 (= e!3593809 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459720 () Bool)

(assert (=> bm!459720 (= call!459725 (derivationStepZipperDown!1193 (h!70404 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343)))))) (Context!10623 (t!377451 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343))))))) (h!70406 s!2326)))))

(declare-fun b!5861320 () Bool)

(assert (=> b!5861320 (= e!3593808 e!3593809)))

(declare-fun c!1039884 () Bool)

(assert (=> b!5861320 (= c!1039884 ((_ is Cons!63956) (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343)))))))))

(declare-fun d!1840775 () Bool)

(declare-fun c!1039883 () Bool)

(declare-fun e!3593807 () Bool)

(assert (=> d!1840775 (= c!1039883 e!3593807)))

(declare-fun res!2466326 () Bool)

(assert (=> d!1840775 (=> (not res!2466326) (not e!3593807))))

(assert (=> d!1840775 (= res!2466326 ((_ is Cons!63956) (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343)))))))))

(assert (=> d!1840775 (= (derivationStepZipperUp!1119 (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343)))) (h!70406 s!2326)) e!3593808)))

(declare-fun b!5861321 () Bool)

(assert (=> b!5861321 (= e!3593807 (nullable!5927 (h!70404 (exprs!5811 (Context!10623 (t!377451 (exprs!5811 (h!70405 zl!343))))))))))

(declare-fun b!5861322 () Bool)

(assert (=> b!5861322 (= e!3593809 call!459725)))

(assert (= (and d!1840775 res!2466326) b!5861321))

(assert (= (and d!1840775 c!1039883) b!5861318))

(assert (= (and d!1840775 (not c!1039883)) b!5861320))

(assert (= (and b!5861320 c!1039884) b!5861322))

(assert (= (and b!5861320 (not c!1039884)) b!5861319))

(assert (= (or b!5861318 b!5861322) bm!459720))

(declare-fun m!6778338 () Bool)

(assert (=> b!5861318 m!6778338))

(declare-fun m!6778340 () Bool)

(assert (=> bm!459720 m!6778340))

(declare-fun m!6778342 () Bool)

(assert (=> b!5861321 m!6778342))

(assert (=> b!5860366 d!1840775))

(assert (=> bm!459449 d!1840597))

(declare-fun bs!1381016 () Bool)

(declare-fun d!1840777 () Bool)

(assert (= bs!1381016 (and d!1840777 d!1840675)))

(declare-fun lambda!320493 () Int)

(assert (=> bs!1381016 (= lambda!320493 lambda!320484)))

(declare-fun bs!1381017 () Bool)

(assert (= bs!1381017 (and d!1840777 d!1840757)))

(assert (=> bs!1381017 (= lambda!320493 lambda!320492)))

(declare-fun bs!1381018 () Bool)

(assert (= bs!1381018 (and d!1840777 d!1840329)))

(assert (=> bs!1381018 (= lambda!320493 lambda!320442)))

(declare-fun bs!1381019 () Bool)

(assert (= bs!1381019 (and d!1840777 d!1840337)))

(assert (=> bs!1381019 (= lambda!320493 lambda!320445)))

(declare-fun bs!1381020 () Bool)

(assert (= bs!1381020 (and d!1840777 d!1840319)))

(assert (=> bs!1381020 (= lambda!320493 lambda!320439)))

(declare-fun bs!1381021 () Bool)

(assert (= bs!1381021 (and d!1840777 d!1840309)))

(assert (=> bs!1381021 (= lambda!320493 lambda!320438)))

(declare-fun bs!1381022 () Bool)

(assert (= bs!1381022 (and d!1840777 d!1840297)))

(assert (=> bs!1381022 (= lambda!320493 lambda!320432)))

(declare-fun bs!1381023 () Bool)

(assert (= bs!1381023 (and d!1840777 d!1840681)))

(assert (=> bs!1381023 (= lambda!320493 lambda!320486)))

(declare-fun bs!1381024 () Bool)

(assert (= bs!1381024 (and d!1840777 d!1840299)))

(assert (=> bs!1381024 (= lambda!320493 lambda!320435)))

(declare-fun bs!1381025 () Bool)

(assert (= bs!1381025 (and d!1840777 d!1840717)))

(assert (=> bs!1381025 (= lambda!320493 lambda!320490)))

(declare-fun b!5861323 () Bool)

(declare-fun e!3593810 () Bool)

(declare-fun lt!2305456 () Regex!15927)

(assert (=> b!5861323 (= e!3593810 (= lt!2305456 (head!12409 (t!377451 (unfocusZipperList!1348 zl!343)))))))

(declare-fun b!5861324 () Bool)

(declare-fun e!3593814 () Regex!15927)

(assert (=> b!5861324 (= e!3593814 (h!70404 (t!377451 (unfocusZipperList!1348 zl!343))))))

(declare-fun b!5861325 () Bool)

(assert (=> b!5861325 (= e!3593810 (isUnion!800 lt!2305456))))

(declare-fun e!3593812 () Bool)

(assert (=> d!1840777 e!3593812))

(declare-fun res!2466328 () Bool)

(assert (=> d!1840777 (=> (not res!2466328) (not e!3593812))))

(assert (=> d!1840777 (= res!2466328 (validRegex!7663 lt!2305456))))

(assert (=> d!1840777 (= lt!2305456 e!3593814)))

(declare-fun c!1039888 () Bool)

(declare-fun e!3593815 () Bool)

(assert (=> d!1840777 (= c!1039888 e!3593815)))

(declare-fun res!2466327 () Bool)

(assert (=> d!1840777 (=> (not res!2466327) (not e!3593815))))

(assert (=> d!1840777 (= res!2466327 ((_ is Cons!63956) (t!377451 (unfocusZipperList!1348 zl!343))))))

(assert (=> d!1840777 (forall!15014 (t!377451 (unfocusZipperList!1348 zl!343)) lambda!320493)))

(assert (=> d!1840777 (= (generalisedUnion!1771 (t!377451 (unfocusZipperList!1348 zl!343))) lt!2305456)))

(declare-fun b!5861326 () Bool)

(declare-fun e!3593811 () Bool)

(assert (=> b!5861326 (= e!3593812 e!3593811)))

(declare-fun c!1039887 () Bool)

(assert (=> b!5861326 (= c!1039887 (isEmpty!35818 (t!377451 (unfocusZipperList!1348 zl!343))))))

(declare-fun b!5861327 () Bool)

(declare-fun e!3593813 () Regex!15927)

(assert (=> b!5861327 (= e!3593814 e!3593813)))

(declare-fun c!1039886 () Bool)

(assert (=> b!5861327 (= c!1039886 ((_ is Cons!63956) (t!377451 (unfocusZipperList!1348 zl!343))))))

(declare-fun b!5861328 () Bool)

(assert (=> b!5861328 (= e!3593811 e!3593810)))

(declare-fun c!1039885 () Bool)

(assert (=> b!5861328 (= c!1039885 (isEmpty!35818 (tail!11494 (t!377451 (unfocusZipperList!1348 zl!343)))))))

(declare-fun b!5861329 () Bool)

(assert (=> b!5861329 (= e!3593811 (isEmptyLang!1370 lt!2305456))))

(declare-fun b!5861330 () Bool)

(assert (=> b!5861330 (= e!3593813 EmptyLang!15927)))

(declare-fun b!5861331 () Bool)

(assert (=> b!5861331 (= e!3593815 (isEmpty!35818 (t!377451 (t!377451 (unfocusZipperList!1348 zl!343)))))))

(declare-fun b!5861332 () Bool)

(assert (=> b!5861332 (= e!3593813 (Union!15927 (h!70404 (t!377451 (unfocusZipperList!1348 zl!343))) (generalisedUnion!1771 (t!377451 (t!377451 (unfocusZipperList!1348 zl!343))))))))

(assert (= (and d!1840777 res!2466327) b!5861331))

(assert (= (and d!1840777 c!1039888) b!5861324))

(assert (= (and d!1840777 (not c!1039888)) b!5861327))

(assert (= (and b!5861327 c!1039886) b!5861332))

(assert (= (and b!5861327 (not c!1039886)) b!5861330))

(assert (= (and d!1840777 res!2466328) b!5861326))

(assert (= (and b!5861326 c!1039887) b!5861329))

(assert (= (and b!5861326 (not c!1039887)) b!5861328))

(assert (= (and b!5861328 c!1039885) b!5861323))

(assert (= (and b!5861328 (not c!1039885)) b!5861325))

(declare-fun m!6778344 () Bool)

(assert (=> b!5861329 m!6778344))

(assert (=> b!5861326 m!6777410))

(declare-fun m!6778346 () Bool)

(assert (=> b!5861328 m!6778346))

(assert (=> b!5861328 m!6778346))

(declare-fun m!6778348 () Bool)

(assert (=> b!5861328 m!6778348))

(declare-fun m!6778350 () Bool)

(assert (=> b!5861331 m!6778350))

(declare-fun m!6778352 () Bool)

(assert (=> b!5861332 m!6778352))

(declare-fun m!6778354 () Bool)

(assert (=> d!1840777 m!6778354))

(declare-fun m!6778356 () Bool)

(assert (=> d!1840777 m!6778356))

(declare-fun m!6778358 () Bool)

(assert (=> b!5861325 m!6778358))

(declare-fun m!6778360 () Bool)

(assert (=> b!5861323 m!6778360))

(assert (=> b!5860250 d!1840777))

(assert (=> b!5860112 d!1840503))

(declare-fun b!5861333 () Bool)

(declare-fun e!3593818 () Bool)

(declare-fun e!3593817 () Bool)

(assert (=> b!5861333 (= e!3593818 e!3593817)))

(declare-fun c!1039889 () Bool)

(assert (=> b!5861333 (= c!1039889 ((_ is Union!15927) lt!2305433))))

(declare-fun b!5861334 () Bool)

(declare-fun e!3593819 () Bool)

(declare-fun call!459728 () Bool)

(assert (=> b!5861334 (= e!3593819 call!459728)))

(declare-fun b!5861335 () Bool)

(declare-fun e!3593820 () Bool)

(declare-fun e!3593816 () Bool)

(assert (=> b!5861335 (= e!3593820 e!3593816)))

(declare-fun res!2466331 () Bool)

(assert (=> b!5861335 (=> (not res!2466331) (not e!3593816))))

(declare-fun call!459727 () Bool)

(assert (=> b!5861335 (= res!2466331 call!459727)))

(declare-fun b!5861336 () Bool)

(declare-fun res!2466333 () Bool)

(declare-fun e!3593822 () Bool)

(assert (=> b!5861336 (=> (not res!2466333) (not e!3593822))))

(assert (=> b!5861336 (= res!2466333 call!459727)))

(assert (=> b!5861336 (= e!3593817 e!3593822)))

(declare-fun b!5861337 () Bool)

(declare-fun e!3593821 () Bool)

(assert (=> b!5861337 (= e!3593821 e!3593818)))

(declare-fun c!1039890 () Bool)

(assert (=> b!5861337 (= c!1039890 ((_ is Star!15927) lt!2305433))))

(declare-fun b!5861338 () Bool)

(declare-fun res!2466330 () Bool)

(assert (=> b!5861338 (=> res!2466330 e!3593820)))

(assert (=> b!5861338 (= res!2466330 (not ((_ is Concat!24772) lt!2305433)))))

(assert (=> b!5861338 (= e!3593817 e!3593820)))

(declare-fun b!5861339 () Bool)

(declare-fun call!459726 () Bool)

(assert (=> b!5861339 (= e!3593816 call!459726)))

(declare-fun bm!459721 () Bool)

(assert (=> bm!459721 (= call!459726 call!459728)))

(declare-fun d!1840779 () Bool)

(declare-fun res!2466332 () Bool)

(assert (=> d!1840779 (=> res!2466332 e!3593821)))

(assert (=> d!1840779 (= res!2466332 ((_ is ElementMatch!15927) lt!2305433))))

(assert (=> d!1840779 (= (validRegex!7663 lt!2305433) e!3593821)))

(declare-fun b!5861340 () Bool)

(assert (=> b!5861340 (= e!3593818 e!3593819)))

(declare-fun res!2466329 () Bool)

(assert (=> b!5861340 (= res!2466329 (not (nullable!5927 (reg!16256 lt!2305433))))))

(assert (=> b!5861340 (=> (not res!2466329) (not e!3593819))))

(declare-fun b!5861341 () Bool)

(assert (=> b!5861341 (= e!3593822 call!459726)))

(declare-fun bm!459722 () Bool)

(assert (=> bm!459722 (= call!459727 (validRegex!7663 (ite c!1039889 (regOne!32367 lt!2305433) (regOne!32366 lt!2305433))))))

(declare-fun bm!459723 () Bool)

(assert (=> bm!459723 (= call!459728 (validRegex!7663 (ite c!1039890 (reg!16256 lt!2305433) (ite c!1039889 (regTwo!32367 lt!2305433) (regTwo!32366 lt!2305433)))))))

(assert (= (and d!1840779 (not res!2466332)) b!5861337))

(assert (= (and b!5861337 c!1039890) b!5861340))

(assert (= (and b!5861337 (not c!1039890)) b!5861333))

(assert (= (and b!5861340 res!2466329) b!5861334))

(assert (= (and b!5861333 c!1039889) b!5861336))

(assert (= (and b!5861333 (not c!1039889)) b!5861338))

(assert (= (and b!5861336 res!2466333) b!5861341))

(assert (= (and b!5861338 (not res!2466330)) b!5861335))

(assert (= (and b!5861335 res!2466331) b!5861339))

(assert (= (or b!5861341 b!5861339) bm!459721))

(assert (= (or b!5861336 b!5861335) bm!459722))

(assert (= (or b!5861334 bm!459721) bm!459723))

(declare-fun m!6778362 () Bool)

(assert (=> b!5861340 m!6778362))

(declare-fun m!6778364 () Bool)

(assert (=> bm!459722 m!6778364))

(declare-fun m!6778366 () Bool)

(assert (=> bm!459723 m!6778366))

(assert (=> d!1840339 d!1840779))

(assert (=> d!1840339 d!1840297))

(assert (=> d!1840339 d!1840299))

(declare-fun d!1840781 () Bool)

(assert (=> d!1840781 (= (nullable!5927 (regOne!32366 (regTwo!32367 r!7292))) (nullableFct!1913 (regOne!32366 (regTwo!32367 r!7292))))))

(declare-fun bs!1381026 () Bool)

(assert (= bs!1381026 d!1840781))

(declare-fun m!6778368 () Bool)

(assert (=> bs!1381026 m!6778368))

(assert (=> b!5860200 d!1840781))

(declare-fun d!1840783 () Bool)

(declare-fun c!1039894 () Bool)

(assert (=> d!1840783 (= c!1039894 (and ((_ is ElementMatch!15927) (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))) (= (c!1039387 (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))) (h!70406 s!2326))))))

(declare-fun e!3593828 () (InoxSet Context!10622))

(assert (=> d!1840783 (= (derivationStepZipperDown!1193 (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292))) (ite c!1039557 lt!2305344 (Context!10623 call!459485)) (h!70406 s!2326)) e!3593828)))

(declare-fun b!5861342 () Bool)

(declare-fun e!3593827 () (InoxSet Context!10622))

(declare-fun call!459729 () (InoxSet Context!10622))

(assert (=> b!5861342 (= e!3593827 call!459729)))

(declare-fun b!5861343 () Bool)

(declare-fun e!3593826 () (InoxSet Context!10622))

(assert (=> b!5861343 (= e!3593826 call!459729)))

(declare-fun b!5861344 () Bool)

(assert (=> b!5861344 (= e!3593827 ((as const (Array Context!10622 Bool)) false))))

(declare-fun bm!459724 () Bool)

(declare-fun call!459731 () (InoxSet Context!10622))

(assert (=> bm!459724 (= call!459729 call!459731)))

(declare-fun bm!459725 () Bool)

(declare-fun c!1039893 () Bool)

(declare-fun call!459732 () List!64080)

(declare-fun call!459730 () (InoxSet Context!10622))

(assert (=> bm!459725 (= call!459730 (derivationStepZipperDown!1193 (ite c!1039893 (regOne!32367 (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))) (regOne!32366 (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292))))) (ite c!1039893 (ite c!1039557 lt!2305344 (Context!10623 call!459485)) (Context!10623 call!459732)) (h!70406 s!2326)))))

(declare-fun bm!459726 () Bool)

(declare-fun c!1039892 () Bool)

(declare-fun call!459734 () List!64080)

(declare-fun c!1039895 () Bool)

(declare-fun call!459733 () (InoxSet Context!10622))

(assert (=> bm!459726 (= call!459733 (derivationStepZipperDown!1193 (ite c!1039893 (regTwo!32367 (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))) (ite c!1039895 (regTwo!32366 (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))) (ite c!1039892 (regOne!32366 (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))) (reg!16256 (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292))))))) (ite (or c!1039893 c!1039895) (ite c!1039557 lt!2305344 (Context!10623 call!459485)) (Context!10623 call!459734)) (h!70406 s!2326)))))

(declare-fun b!5861345 () Bool)

(declare-fun c!1039891 () Bool)

(assert (=> b!5861345 (= c!1039891 ((_ is Star!15927) (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))))))

(assert (=> b!5861345 (= e!3593826 e!3593827)))

(declare-fun b!5861346 () Bool)

(declare-fun e!3593825 () Bool)

(assert (=> b!5861346 (= e!3593825 (nullable!5927 (regOne!32366 (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292))))))))

(declare-fun b!5861347 () Bool)

(declare-fun e!3593823 () (InoxSet Context!10622))

(assert (=> b!5861347 (= e!3593828 e!3593823)))

(assert (=> b!5861347 (= c!1039893 ((_ is Union!15927) (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))))))

(declare-fun b!5861348 () Bool)

(declare-fun e!3593824 () (InoxSet Context!10622))

(assert (=> b!5861348 (= e!3593824 ((_ map or) call!459730 call!459731))))

(declare-fun b!5861349 () Bool)

(assert (=> b!5861349 (= e!3593824 e!3593826)))

(assert (=> b!5861349 (= c!1039892 ((_ is Concat!24772) (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))))))

(declare-fun b!5861350 () Bool)

(assert (=> b!5861350 (= e!3593828 (store ((as const (Array Context!10622 Bool)) false) (ite c!1039557 lt!2305344 (Context!10623 call!459485)) true))))

(declare-fun bm!459727 () Bool)

(assert (=> bm!459727 (= call!459732 ($colon$colon!1832 (exprs!5811 (ite c!1039557 lt!2305344 (Context!10623 call!459485))) (ite (or c!1039895 c!1039892) (regTwo!32366 (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))) (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292))))))))

(declare-fun bm!459728 () Bool)

(assert (=> bm!459728 (= call!459731 call!459733)))

(declare-fun bm!459729 () Bool)

(assert (=> bm!459729 (= call!459734 call!459732)))

(declare-fun b!5861351 () Bool)

(assert (=> b!5861351 (= c!1039895 e!3593825)))

(declare-fun res!2466334 () Bool)

(assert (=> b!5861351 (=> (not res!2466334) (not e!3593825))))

(assert (=> b!5861351 (= res!2466334 ((_ is Concat!24772) (ite c!1039557 (regOne!32367 (regOne!32367 r!7292)) (regOne!32366 (regOne!32367 r!7292)))))))

(assert (=> b!5861351 (= e!3593823 e!3593824)))

(declare-fun b!5861352 () Bool)

(assert (=> b!5861352 (= e!3593823 ((_ map or) call!459730 call!459733))))

(assert (= (and d!1840783 c!1039894) b!5861350))

(assert (= (and d!1840783 (not c!1039894)) b!5861347))

(assert (= (and b!5861347 c!1039893) b!5861352))

(assert (= (and b!5861347 (not c!1039893)) b!5861351))

(assert (= (and b!5861351 res!2466334) b!5861346))

(assert (= (and b!5861351 c!1039895) b!5861348))

(assert (= (and b!5861351 (not c!1039895)) b!5861349))

(assert (= (and b!5861349 c!1039892) b!5861343))

(assert (= (and b!5861349 (not c!1039892)) b!5861345))

(assert (= (and b!5861345 c!1039891) b!5861342))

(assert (= (and b!5861345 (not c!1039891)) b!5861344))

(assert (= (or b!5861343 b!5861342) bm!459729))

(assert (= (or b!5861343 b!5861342) bm!459724))

(assert (= (or b!5861348 bm!459729) bm!459727))

(assert (= (or b!5861348 bm!459724) bm!459728))

(assert (= (or b!5861352 bm!459728) bm!459726))

(assert (= (or b!5861352 b!5861348) bm!459725))

(declare-fun m!6778370 () Bool)

(assert (=> b!5861346 m!6778370))

(declare-fun m!6778372 () Bool)

(assert (=> bm!459727 m!6778372))

(declare-fun m!6778374 () Bool)

(assert (=> bm!459726 m!6778374))

(declare-fun m!6778376 () Bool)

(assert (=> b!5861350 m!6778376))

(declare-fun m!6778378 () Bool)

(assert (=> bm!459725 m!6778378))

(assert (=> bm!459478 d!1840783))

(declare-fun d!1840785 () Bool)

(assert (=> d!1840785 (= (isEmpty!35818 (tail!11494 (unfocusZipperList!1348 zl!343))) ((_ is Nil!63956) (tail!11494 (unfocusZipperList!1348 zl!343))))))

(assert (=> b!5860246 d!1840785))

(declare-fun d!1840787 () Bool)

(assert (=> d!1840787 (= (tail!11494 (unfocusZipperList!1348 zl!343)) (t!377451 (unfocusZipperList!1348 zl!343)))))

(assert (=> b!5860246 d!1840787))

(assert (=> b!5860363 d!1840503))

(declare-fun bs!1381027 () Bool)

(declare-fun d!1840789 () Bool)

(assert (= bs!1381027 (and d!1840789 d!1840563)))

(declare-fun lambda!320494 () Int)

(assert (=> bs!1381027 (= lambda!320494 lambda!320475)))

(declare-fun bs!1381028 () Bool)

(assert (= bs!1381028 (and d!1840789 d!1840653)))

(assert (=> bs!1381028 (= lambda!320494 lambda!320480)))

(declare-fun bs!1381029 () Bool)

(assert (= bs!1381029 (and d!1840789 d!1840677)))

(assert (=> bs!1381029 (= lambda!320494 lambda!320485)))

(assert (=> d!1840789 (= (nullableZipper!1766 lt!2305359) (exists!2311 lt!2305359 lambda!320494))))

(declare-fun bs!1381030 () Bool)

(assert (= bs!1381030 d!1840789))

(declare-fun m!6778380 () Bool)

(assert (=> bs!1381030 m!6778380))

(assert (=> b!5860304 d!1840789))

(assert (=> b!5860137 d!1840503))

(assert (=> d!1840347 d!1840343))

(declare-fun d!1840791 () Bool)

(assert (=> d!1840791 (= (flatMap!1458 z!1189 lambda!320394) (dynLambda!25008 lambda!320394 (h!70405 zl!343)))))

(assert (=> d!1840791 true))

(declare-fun _$13!2589 () Unit!157125)

(assert (=> d!1840791 (= (choose!44431 z!1189 (h!70405 zl!343) lambda!320394) _$13!2589)))

(declare-fun b_lambda!220633 () Bool)

(assert (=> (not b_lambda!220633) (not d!1840791)))

(declare-fun bs!1381031 () Bool)

(assert (= bs!1381031 d!1840791))

(assert (=> bs!1381031 m!6777056))

(assert (=> bs!1381031 m!6777538))

(assert (=> d!1840347 d!1840791))

(declare-fun d!1840793 () Bool)

(assert (=> d!1840793 (= (isEmpty!35818 (t!377451 (exprs!5811 (h!70405 zl!343)))) ((_ is Nil!63956) (t!377451 (exprs!5811 (h!70405 zl!343)))))))

(assert (=> b!5860335 d!1840793))

(declare-fun b!5861356 () Bool)

(declare-fun e!3593829 () Bool)

(declare-fun tp!1621222 () Bool)

(declare-fun tp!1621224 () Bool)

(assert (=> b!5861356 (= e!3593829 (and tp!1621222 tp!1621224))))

(declare-fun b!5861353 () Bool)

(assert (=> b!5861353 (= e!3593829 tp_is_empty!41107)))

(declare-fun b!5861355 () Bool)

(declare-fun tp!1621223 () Bool)

(assert (=> b!5861355 (= e!3593829 tp!1621223)))

(declare-fun b!5861354 () Bool)

(declare-fun tp!1621221 () Bool)

(declare-fun tp!1621225 () Bool)

(assert (=> b!5861354 (= e!3593829 (and tp!1621221 tp!1621225))))

(assert (=> b!5860418 (= tp!1621032 e!3593829)))

(assert (= (and b!5860418 ((_ is ElementMatch!15927) (reg!16256 (reg!16256 r!7292)))) b!5861353))

(assert (= (and b!5860418 ((_ is Concat!24772) (reg!16256 (reg!16256 r!7292)))) b!5861354))

(assert (= (and b!5860418 ((_ is Star!15927) (reg!16256 (reg!16256 r!7292)))) b!5861355))

(assert (= (and b!5860418 ((_ is Union!15927) (reg!16256 (reg!16256 r!7292)))) b!5861356))

(declare-fun b!5861360 () Bool)

(declare-fun e!3593830 () Bool)

(declare-fun tp!1621227 () Bool)

(declare-fun tp!1621229 () Bool)

(assert (=> b!5861360 (= e!3593830 (and tp!1621227 tp!1621229))))

(declare-fun b!5861357 () Bool)

(assert (=> b!5861357 (= e!3593830 tp_is_empty!41107)))

(declare-fun b!5861359 () Bool)

(declare-fun tp!1621228 () Bool)

(assert (=> b!5861359 (= e!3593830 tp!1621228)))

(declare-fun b!5861358 () Bool)

(declare-fun tp!1621226 () Bool)

(declare-fun tp!1621230 () Bool)

(assert (=> b!5861358 (= e!3593830 (and tp!1621226 tp!1621230))))

(assert (=> b!5860417 (= tp!1621030 e!3593830)))

(assert (= (and b!5860417 ((_ is ElementMatch!15927) (regOne!32366 (reg!16256 r!7292)))) b!5861357))

(assert (= (and b!5860417 ((_ is Concat!24772) (regOne!32366 (reg!16256 r!7292)))) b!5861358))

(assert (= (and b!5860417 ((_ is Star!15927) (regOne!32366 (reg!16256 r!7292)))) b!5861359))

(assert (= (and b!5860417 ((_ is Union!15927) (regOne!32366 (reg!16256 r!7292)))) b!5861360))

(declare-fun b!5861364 () Bool)

(declare-fun e!3593831 () Bool)

(declare-fun tp!1621232 () Bool)

(declare-fun tp!1621234 () Bool)

(assert (=> b!5861364 (= e!3593831 (and tp!1621232 tp!1621234))))

(declare-fun b!5861361 () Bool)

(assert (=> b!5861361 (= e!3593831 tp_is_empty!41107)))

(declare-fun b!5861363 () Bool)

(declare-fun tp!1621233 () Bool)

(assert (=> b!5861363 (= e!3593831 tp!1621233)))

(declare-fun b!5861362 () Bool)

(declare-fun tp!1621231 () Bool)

(declare-fun tp!1621235 () Bool)

(assert (=> b!5861362 (= e!3593831 (and tp!1621231 tp!1621235))))

(assert (=> b!5860417 (= tp!1621034 e!3593831)))

(assert (= (and b!5860417 ((_ is ElementMatch!15927) (regTwo!32366 (reg!16256 r!7292)))) b!5861361))

(assert (= (and b!5860417 ((_ is Concat!24772) (regTwo!32366 (reg!16256 r!7292)))) b!5861362))

(assert (= (and b!5860417 ((_ is Star!15927) (regTwo!32366 (reg!16256 r!7292)))) b!5861363))

(assert (= (and b!5860417 ((_ is Union!15927) (regTwo!32366 (reg!16256 r!7292)))) b!5861364))

(declare-fun b!5861368 () Bool)

(declare-fun e!3593832 () Bool)

(declare-fun tp!1621237 () Bool)

(declare-fun tp!1621239 () Bool)

(assert (=> b!5861368 (= e!3593832 (and tp!1621237 tp!1621239))))

(declare-fun b!5861365 () Bool)

(assert (=> b!5861365 (= e!3593832 tp_is_empty!41107)))

(declare-fun b!5861367 () Bool)

(declare-fun tp!1621238 () Bool)

(assert (=> b!5861367 (= e!3593832 tp!1621238)))

(declare-fun b!5861366 () Bool)

(declare-fun tp!1621236 () Bool)

(declare-fun tp!1621240 () Bool)

(assert (=> b!5861366 (= e!3593832 (and tp!1621236 tp!1621240))))

(assert (=> b!5860394 (= tp!1621003 e!3593832)))

(assert (= (and b!5860394 ((_ is ElementMatch!15927) (regOne!32367 (regOne!32366 r!7292)))) b!5861365))

(assert (= (and b!5860394 ((_ is Concat!24772) (regOne!32367 (regOne!32366 r!7292)))) b!5861366))

(assert (= (and b!5860394 ((_ is Star!15927) (regOne!32367 (regOne!32366 r!7292)))) b!5861367))

(assert (= (and b!5860394 ((_ is Union!15927) (regOne!32367 (regOne!32366 r!7292)))) b!5861368))

(declare-fun b!5861372 () Bool)

(declare-fun e!3593833 () Bool)

(declare-fun tp!1621242 () Bool)

(declare-fun tp!1621244 () Bool)

(assert (=> b!5861372 (= e!3593833 (and tp!1621242 tp!1621244))))

(declare-fun b!5861369 () Bool)

(assert (=> b!5861369 (= e!3593833 tp_is_empty!41107)))

(declare-fun b!5861371 () Bool)

(declare-fun tp!1621243 () Bool)

(assert (=> b!5861371 (= e!3593833 tp!1621243)))

(declare-fun b!5861370 () Bool)

(declare-fun tp!1621241 () Bool)

(declare-fun tp!1621245 () Bool)

(assert (=> b!5861370 (= e!3593833 (and tp!1621241 tp!1621245))))

(assert (=> b!5860394 (= tp!1621005 e!3593833)))

(assert (= (and b!5860394 ((_ is ElementMatch!15927) (regTwo!32367 (regOne!32366 r!7292)))) b!5861369))

(assert (= (and b!5860394 ((_ is Concat!24772) (regTwo!32367 (regOne!32366 r!7292)))) b!5861370))

(assert (= (and b!5860394 ((_ is Star!15927) (regTwo!32367 (regOne!32366 r!7292)))) b!5861371))

(assert (= (and b!5860394 ((_ is Union!15927) (regTwo!32367 (regOne!32366 r!7292)))) b!5861372))

(declare-fun b!5861373 () Bool)

(declare-fun e!3593834 () Bool)

(declare-fun tp!1621246 () Bool)

(declare-fun tp!1621247 () Bool)

(assert (=> b!5861373 (= e!3593834 (and tp!1621246 tp!1621247))))

(assert (=> b!5860424 (= tp!1621040 e!3593834)))

(assert (= (and b!5860424 ((_ is Cons!63956) (exprs!5811 setElem!39738))) b!5861373))

(declare-fun b!5861377 () Bool)

(declare-fun e!3593835 () Bool)

(declare-fun tp!1621249 () Bool)

(declare-fun tp!1621251 () Bool)

(assert (=> b!5861377 (= e!3593835 (and tp!1621249 tp!1621251))))

(declare-fun b!5861374 () Bool)

(assert (=> b!5861374 (= e!3593835 tp_is_empty!41107)))

(declare-fun b!5861376 () Bool)

(declare-fun tp!1621250 () Bool)

(assert (=> b!5861376 (= e!3593835 tp!1621250)))

(declare-fun b!5861375 () Bool)

(declare-fun tp!1621248 () Bool)

(declare-fun tp!1621252 () Bool)

(assert (=> b!5861375 (= e!3593835 (and tp!1621248 tp!1621252))))

(assert (=> b!5860393 (= tp!1621004 e!3593835)))

(assert (= (and b!5860393 ((_ is ElementMatch!15927) (reg!16256 (regOne!32366 r!7292)))) b!5861374))

(assert (= (and b!5860393 ((_ is Concat!24772) (reg!16256 (regOne!32366 r!7292)))) b!5861375))

(assert (= (and b!5860393 ((_ is Star!15927) (reg!16256 (regOne!32366 r!7292)))) b!5861376))

(assert (= (and b!5860393 ((_ is Union!15927) (reg!16256 (regOne!32366 r!7292)))) b!5861377))

(declare-fun b!5861381 () Bool)

(declare-fun e!3593836 () Bool)

(declare-fun tp!1621254 () Bool)

(declare-fun tp!1621256 () Bool)

(assert (=> b!5861381 (= e!3593836 (and tp!1621254 tp!1621256))))

(declare-fun b!5861378 () Bool)

(assert (=> b!5861378 (= e!3593836 tp_is_empty!41107)))

(declare-fun b!5861380 () Bool)

(declare-fun tp!1621255 () Bool)

(assert (=> b!5861380 (= e!3593836 tp!1621255)))

(declare-fun b!5861379 () Bool)

(declare-fun tp!1621253 () Bool)

(declare-fun tp!1621257 () Bool)

(assert (=> b!5861379 (= e!3593836 (and tp!1621253 tp!1621257))))

(assert (=> b!5860392 (= tp!1621002 e!3593836)))

(assert (= (and b!5860392 ((_ is ElementMatch!15927) (regOne!32366 (regOne!32366 r!7292)))) b!5861378))

(assert (= (and b!5860392 ((_ is Concat!24772) (regOne!32366 (regOne!32366 r!7292)))) b!5861379))

(assert (= (and b!5860392 ((_ is Star!15927) (regOne!32366 (regOne!32366 r!7292)))) b!5861380))

(assert (= (and b!5860392 ((_ is Union!15927) (regOne!32366 (regOne!32366 r!7292)))) b!5861381))

(declare-fun b!5861385 () Bool)

(declare-fun e!3593837 () Bool)

(declare-fun tp!1621259 () Bool)

(declare-fun tp!1621261 () Bool)

(assert (=> b!5861385 (= e!3593837 (and tp!1621259 tp!1621261))))

(declare-fun b!5861382 () Bool)

(assert (=> b!5861382 (= e!3593837 tp_is_empty!41107)))

(declare-fun b!5861384 () Bool)

(declare-fun tp!1621260 () Bool)

(assert (=> b!5861384 (= e!3593837 tp!1621260)))

(declare-fun b!5861383 () Bool)

(declare-fun tp!1621258 () Bool)

(declare-fun tp!1621262 () Bool)

(assert (=> b!5861383 (= e!3593837 (and tp!1621258 tp!1621262))))

(assert (=> b!5860392 (= tp!1621006 e!3593837)))

(assert (= (and b!5860392 ((_ is ElementMatch!15927) (regTwo!32366 (regOne!32366 r!7292)))) b!5861382))

(assert (= (and b!5860392 ((_ is Concat!24772) (regTwo!32366 (regOne!32366 r!7292)))) b!5861383))

(assert (= (and b!5860392 ((_ is Star!15927) (regTwo!32366 (regOne!32366 r!7292)))) b!5861384))

(assert (= (and b!5860392 ((_ is Union!15927) (regTwo!32366 (regOne!32366 r!7292)))) b!5861385))

(declare-fun condSetEmpty!39750 () Bool)

(assert (=> setNonEmpty!39738 (= condSetEmpty!39750 (= setRest!39738 ((as const (Array Context!10622 Bool)) false)))))

(declare-fun setRes!39750 () Bool)

(assert (=> setNonEmpty!39738 (= tp!1621039 setRes!39750)))

(declare-fun setIsEmpty!39750 () Bool)

(assert (=> setIsEmpty!39750 setRes!39750))

(declare-fun setElem!39750 () Context!10622)

(declare-fun e!3593838 () Bool)

(declare-fun setNonEmpty!39750 () Bool)

(declare-fun tp!1621263 () Bool)

(assert (=> setNonEmpty!39750 (= setRes!39750 (and tp!1621263 (inv!83064 setElem!39750) e!3593838))))

(declare-fun setRest!39750 () (InoxSet Context!10622))

(assert (=> setNonEmpty!39750 (= setRest!39738 ((_ map or) (store ((as const (Array Context!10622 Bool)) false) setElem!39750 true) setRest!39750))))

(declare-fun b!5861386 () Bool)

(declare-fun tp!1621264 () Bool)

(assert (=> b!5861386 (= e!3593838 tp!1621264)))

(assert (= (and setNonEmpty!39738 condSetEmpty!39750) setIsEmpty!39750))

(assert (= (and setNonEmpty!39738 (not condSetEmpty!39750)) setNonEmpty!39750))

(assert (= setNonEmpty!39750 b!5861386))

(declare-fun m!6778382 () Bool)

(assert (=> setNonEmpty!39750 m!6778382))

(declare-fun b!5861390 () Bool)

(declare-fun e!3593839 () Bool)

(declare-fun tp!1621266 () Bool)

(declare-fun tp!1621268 () Bool)

(assert (=> b!5861390 (= e!3593839 (and tp!1621266 tp!1621268))))

(declare-fun b!5861387 () Bool)

(assert (=> b!5861387 (= e!3593839 tp_is_empty!41107)))

(declare-fun b!5861389 () Bool)

(declare-fun tp!1621267 () Bool)

(assert (=> b!5861389 (= e!3593839 tp!1621267)))

(declare-fun b!5861388 () Bool)

(declare-fun tp!1621265 () Bool)

(declare-fun tp!1621269 () Bool)

(assert (=> b!5861388 (= e!3593839 (and tp!1621265 tp!1621269))))

(assert (=> b!5860415 (= tp!1621026 e!3593839)))

(assert (= (and b!5860415 ((_ is ElementMatch!15927) (regOne!32367 (regTwo!32367 r!7292)))) b!5861387))

(assert (= (and b!5860415 ((_ is Concat!24772) (regOne!32367 (regTwo!32367 r!7292)))) b!5861388))

(assert (= (and b!5860415 ((_ is Star!15927) (regOne!32367 (regTwo!32367 r!7292)))) b!5861389))

(assert (= (and b!5860415 ((_ is Union!15927) (regOne!32367 (regTwo!32367 r!7292)))) b!5861390))

(declare-fun b!5861394 () Bool)

(declare-fun e!3593840 () Bool)

(declare-fun tp!1621271 () Bool)

(declare-fun tp!1621273 () Bool)

(assert (=> b!5861394 (= e!3593840 (and tp!1621271 tp!1621273))))

(declare-fun b!5861391 () Bool)

(assert (=> b!5861391 (= e!3593840 tp_is_empty!41107)))

(declare-fun b!5861393 () Bool)

(declare-fun tp!1621272 () Bool)

(assert (=> b!5861393 (= e!3593840 tp!1621272)))

(declare-fun b!5861392 () Bool)

(declare-fun tp!1621270 () Bool)

(declare-fun tp!1621274 () Bool)

(assert (=> b!5861392 (= e!3593840 (and tp!1621270 tp!1621274))))

(assert (=> b!5860415 (= tp!1621028 e!3593840)))

(assert (= (and b!5860415 ((_ is ElementMatch!15927) (regTwo!32367 (regTwo!32367 r!7292)))) b!5861391))

(assert (= (and b!5860415 ((_ is Concat!24772) (regTwo!32367 (regTwo!32367 r!7292)))) b!5861392))

(assert (= (and b!5860415 ((_ is Star!15927) (regTwo!32367 (regTwo!32367 r!7292)))) b!5861393))

(assert (= (and b!5860415 ((_ is Union!15927) (regTwo!32367 (regTwo!32367 r!7292)))) b!5861394))

(declare-fun b!5861395 () Bool)

(declare-fun e!3593841 () Bool)

(declare-fun tp!1621275 () Bool)

(declare-fun tp!1621276 () Bool)

(assert (=> b!5861395 (= e!3593841 (and tp!1621275 tp!1621276))))

(assert (=> b!5860407 (= tp!1621018 e!3593841)))

(assert (= (and b!5860407 ((_ is Cons!63956) (exprs!5811 (h!70405 (t!377452 zl!343))))) b!5861395))

(declare-fun b!5861399 () Bool)

(declare-fun e!3593842 () Bool)

(declare-fun tp!1621278 () Bool)

(declare-fun tp!1621280 () Bool)

(assert (=> b!5861399 (= e!3593842 (and tp!1621278 tp!1621280))))

(declare-fun b!5861396 () Bool)

(assert (=> b!5861396 (= e!3593842 tp_is_empty!41107)))

(declare-fun b!5861398 () Bool)

(declare-fun tp!1621279 () Bool)

(assert (=> b!5861398 (= e!3593842 tp!1621279)))

(declare-fun b!5861397 () Bool)

(declare-fun tp!1621277 () Bool)

(declare-fun tp!1621281 () Bool)

(assert (=> b!5861397 (= e!3593842 (and tp!1621277 tp!1621281))))

(assert (=> b!5860414 (= tp!1621027 e!3593842)))

(assert (= (and b!5860414 ((_ is ElementMatch!15927) (reg!16256 (regTwo!32367 r!7292)))) b!5861396))

(assert (= (and b!5860414 ((_ is Concat!24772) (reg!16256 (regTwo!32367 r!7292)))) b!5861397))

(assert (= (and b!5860414 ((_ is Star!15927) (reg!16256 (regTwo!32367 r!7292)))) b!5861398))

(assert (= (and b!5860414 ((_ is Union!15927) (reg!16256 (regTwo!32367 r!7292)))) b!5861399))

(declare-fun b!5861403 () Bool)

(declare-fun e!3593843 () Bool)

(declare-fun tp!1621283 () Bool)

(declare-fun tp!1621285 () Bool)

(assert (=> b!5861403 (= e!3593843 (and tp!1621283 tp!1621285))))

(declare-fun b!5861400 () Bool)

(assert (=> b!5861400 (= e!3593843 tp_is_empty!41107)))

(declare-fun b!5861402 () Bool)

(declare-fun tp!1621284 () Bool)

(assert (=> b!5861402 (= e!3593843 tp!1621284)))

(declare-fun b!5861401 () Bool)

(declare-fun tp!1621282 () Bool)

(declare-fun tp!1621286 () Bool)

(assert (=> b!5861401 (= e!3593843 (and tp!1621282 tp!1621286))))

(assert (=> b!5860413 (= tp!1621025 e!3593843)))

(assert (= (and b!5860413 ((_ is ElementMatch!15927) (regOne!32366 (regTwo!32367 r!7292)))) b!5861400))

(assert (= (and b!5860413 ((_ is Concat!24772) (regOne!32366 (regTwo!32367 r!7292)))) b!5861401))

(assert (= (and b!5860413 ((_ is Star!15927) (regOne!32366 (regTwo!32367 r!7292)))) b!5861402))

(assert (= (and b!5860413 ((_ is Union!15927) (regOne!32366 (regTwo!32367 r!7292)))) b!5861403))

(declare-fun b!5861407 () Bool)

(declare-fun e!3593844 () Bool)

(declare-fun tp!1621288 () Bool)

(declare-fun tp!1621290 () Bool)

(assert (=> b!5861407 (= e!3593844 (and tp!1621288 tp!1621290))))

(declare-fun b!5861404 () Bool)

(assert (=> b!5861404 (= e!3593844 tp_is_empty!41107)))

(declare-fun b!5861406 () Bool)

(declare-fun tp!1621289 () Bool)

(assert (=> b!5861406 (= e!3593844 tp!1621289)))

(declare-fun b!5861405 () Bool)

(declare-fun tp!1621287 () Bool)

(declare-fun tp!1621291 () Bool)

(assert (=> b!5861405 (= e!3593844 (and tp!1621287 tp!1621291))))

(assert (=> b!5860413 (= tp!1621029 e!3593844)))

(assert (= (and b!5860413 ((_ is ElementMatch!15927) (regTwo!32366 (regTwo!32367 r!7292)))) b!5861404))

(assert (= (and b!5860413 ((_ is Concat!24772) (regTwo!32366 (regTwo!32367 r!7292)))) b!5861405))

(assert (= (and b!5860413 ((_ is Star!15927) (regTwo!32366 (regTwo!32367 r!7292)))) b!5861406))

(assert (= (and b!5860413 ((_ is Union!15927) (regTwo!32366 (regTwo!32367 r!7292)))) b!5861407))

(declare-fun b!5861409 () Bool)

(declare-fun e!3593846 () Bool)

(declare-fun tp!1621292 () Bool)

(assert (=> b!5861409 (= e!3593846 tp!1621292)))

(declare-fun tp!1621293 () Bool)

(declare-fun e!3593845 () Bool)

(declare-fun b!5861408 () Bool)

(assert (=> b!5861408 (= e!3593845 (and (inv!83064 (h!70405 (t!377452 (t!377452 zl!343)))) e!3593846 tp!1621293))))

(assert (=> b!5860406 (= tp!1621019 e!3593845)))

(assert (= b!5861408 b!5861409))

(assert (= (and b!5860406 ((_ is Cons!63957) (t!377452 (t!377452 zl!343)))) b!5861408))

(declare-fun m!6778384 () Bool)

(assert (=> b!5861408 m!6778384))

(declare-fun b!5861413 () Bool)

(declare-fun e!3593847 () Bool)

(declare-fun tp!1621295 () Bool)

(declare-fun tp!1621297 () Bool)

(assert (=> b!5861413 (= e!3593847 (and tp!1621295 tp!1621297))))

(declare-fun b!5861410 () Bool)

(assert (=> b!5861410 (= e!3593847 tp_is_empty!41107)))

(declare-fun b!5861412 () Bool)

(declare-fun tp!1621296 () Bool)

(assert (=> b!5861412 (= e!3593847 tp!1621296)))

(declare-fun b!5861411 () Bool)

(declare-fun tp!1621294 () Bool)

(declare-fun tp!1621298 () Bool)

(assert (=> b!5861411 (= e!3593847 (and tp!1621294 tp!1621298))))

(assert (=> b!5860399 (= tp!1621012 e!3593847)))

(assert (= (and b!5860399 ((_ is ElementMatch!15927) (h!70404 (exprs!5811 (h!70405 zl!343))))) b!5861410))

(assert (= (and b!5860399 ((_ is Concat!24772) (h!70404 (exprs!5811 (h!70405 zl!343))))) b!5861411))

(assert (= (and b!5860399 ((_ is Star!15927) (h!70404 (exprs!5811 (h!70405 zl!343))))) b!5861412))

(assert (= (and b!5860399 ((_ is Union!15927) (h!70404 (exprs!5811 (h!70405 zl!343))))) b!5861413))

(declare-fun b!5861414 () Bool)

(declare-fun e!3593848 () Bool)

(declare-fun tp!1621299 () Bool)

(declare-fun tp!1621300 () Bool)

(assert (=> b!5861414 (= e!3593848 (and tp!1621299 tp!1621300))))

(assert (=> b!5860399 (= tp!1621013 e!3593848)))

(assert (= (and b!5860399 ((_ is Cons!63956) (t!377451 (exprs!5811 (h!70405 zl!343))))) b!5861414))

(declare-fun b!5861418 () Bool)

(declare-fun e!3593849 () Bool)

(declare-fun tp!1621302 () Bool)

(declare-fun tp!1621304 () Bool)

(assert (=> b!5861418 (= e!3593849 (and tp!1621302 tp!1621304))))

(declare-fun b!5861415 () Bool)

(assert (=> b!5861415 (= e!3593849 tp_is_empty!41107)))

(declare-fun b!5861417 () Bool)

(declare-fun tp!1621303 () Bool)

(assert (=> b!5861417 (= e!3593849 tp!1621303)))

(declare-fun b!5861416 () Bool)

(declare-fun tp!1621301 () Bool)

(declare-fun tp!1621305 () Bool)

(assert (=> b!5861416 (= e!3593849 (and tp!1621301 tp!1621305))))

(assert (=> b!5860398 (= tp!1621008 e!3593849)))

(assert (= (and b!5860398 ((_ is ElementMatch!15927) (regOne!32367 (regTwo!32366 r!7292)))) b!5861415))

(assert (= (and b!5860398 ((_ is Concat!24772) (regOne!32367 (regTwo!32366 r!7292)))) b!5861416))

(assert (= (and b!5860398 ((_ is Star!15927) (regOne!32367 (regTwo!32366 r!7292)))) b!5861417))

(assert (= (and b!5860398 ((_ is Union!15927) (regOne!32367 (regTwo!32366 r!7292)))) b!5861418))

(declare-fun b!5861422 () Bool)

(declare-fun e!3593850 () Bool)

(declare-fun tp!1621307 () Bool)

(declare-fun tp!1621309 () Bool)

(assert (=> b!5861422 (= e!3593850 (and tp!1621307 tp!1621309))))

(declare-fun b!5861419 () Bool)

(assert (=> b!5861419 (= e!3593850 tp_is_empty!41107)))

(declare-fun b!5861421 () Bool)

(declare-fun tp!1621308 () Bool)

(assert (=> b!5861421 (= e!3593850 tp!1621308)))

(declare-fun b!5861420 () Bool)

(declare-fun tp!1621306 () Bool)

(declare-fun tp!1621310 () Bool)

(assert (=> b!5861420 (= e!3593850 (and tp!1621306 tp!1621310))))

(assert (=> b!5860398 (= tp!1621010 e!3593850)))

(assert (= (and b!5860398 ((_ is ElementMatch!15927) (regTwo!32367 (regTwo!32366 r!7292)))) b!5861419))

(assert (= (and b!5860398 ((_ is Concat!24772) (regTwo!32367 (regTwo!32366 r!7292)))) b!5861420))

(assert (= (and b!5860398 ((_ is Star!15927) (regTwo!32367 (regTwo!32366 r!7292)))) b!5861421))

(assert (= (and b!5860398 ((_ is Union!15927) (regTwo!32367 (regTwo!32366 r!7292)))) b!5861422))

(declare-fun b!5861423 () Bool)

(declare-fun e!3593851 () Bool)

(declare-fun tp!1621311 () Bool)

(assert (=> b!5861423 (= e!3593851 (and tp_is_empty!41107 tp!1621311))))

(assert (=> b!5860375 (= tp!1620985 e!3593851)))

(assert (= (and b!5860375 ((_ is Cons!63958) (t!377453 (t!377453 s!2326)))) b!5861423))

(declare-fun b!5861427 () Bool)

(declare-fun e!3593852 () Bool)

(declare-fun tp!1621313 () Bool)

(declare-fun tp!1621315 () Bool)

(assert (=> b!5861427 (= e!3593852 (and tp!1621313 tp!1621315))))

(declare-fun b!5861424 () Bool)

(assert (=> b!5861424 (= e!3593852 tp_is_empty!41107)))

(declare-fun b!5861426 () Bool)

(declare-fun tp!1621314 () Bool)

(assert (=> b!5861426 (= e!3593852 tp!1621314)))

(declare-fun b!5861425 () Bool)

(declare-fun tp!1621312 () Bool)

(declare-fun tp!1621316 () Bool)

(assert (=> b!5861425 (= e!3593852 (and tp!1621312 tp!1621316))))

(assert (=> b!5860397 (= tp!1621009 e!3593852)))

(assert (= (and b!5860397 ((_ is ElementMatch!15927) (reg!16256 (regTwo!32366 r!7292)))) b!5861424))

(assert (= (and b!5860397 ((_ is Concat!24772) (reg!16256 (regTwo!32366 r!7292)))) b!5861425))

(assert (= (and b!5860397 ((_ is Star!15927) (reg!16256 (regTwo!32366 r!7292)))) b!5861426))

(assert (= (and b!5860397 ((_ is Union!15927) (reg!16256 (regTwo!32366 r!7292)))) b!5861427))

(declare-fun b!5861431 () Bool)

(declare-fun e!3593853 () Bool)

(declare-fun tp!1621318 () Bool)

(declare-fun tp!1621320 () Bool)

(assert (=> b!5861431 (= e!3593853 (and tp!1621318 tp!1621320))))

(declare-fun b!5861428 () Bool)

(assert (=> b!5861428 (= e!3593853 tp_is_empty!41107)))

(declare-fun b!5861430 () Bool)

(declare-fun tp!1621319 () Bool)

(assert (=> b!5861430 (= e!3593853 tp!1621319)))

(declare-fun b!5861429 () Bool)

(declare-fun tp!1621317 () Bool)

(declare-fun tp!1621321 () Bool)

(assert (=> b!5861429 (= e!3593853 (and tp!1621317 tp!1621321))))

(assert (=> b!5860396 (= tp!1621007 e!3593853)))

(assert (= (and b!5860396 ((_ is ElementMatch!15927) (regOne!32366 (regTwo!32366 r!7292)))) b!5861428))

(assert (= (and b!5860396 ((_ is Concat!24772) (regOne!32366 (regTwo!32366 r!7292)))) b!5861429))

(assert (= (and b!5860396 ((_ is Star!15927) (regOne!32366 (regTwo!32366 r!7292)))) b!5861430))

(assert (= (and b!5860396 ((_ is Union!15927) (regOne!32366 (regTwo!32366 r!7292)))) b!5861431))

(declare-fun b!5861435 () Bool)

(declare-fun e!3593854 () Bool)

(declare-fun tp!1621323 () Bool)

(declare-fun tp!1621325 () Bool)

(assert (=> b!5861435 (= e!3593854 (and tp!1621323 tp!1621325))))

(declare-fun b!5861432 () Bool)

(assert (=> b!5861432 (= e!3593854 tp_is_empty!41107)))

(declare-fun b!5861434 () Bool)

(declare-fun tp!1621324 () Bool)

(assert (=> b!5861434 (= e!3593854 tp!1621324)))

(declare-fun b!5861433 () Bool)

(declare-fun tp!1621322 () Bool)

(declare-fun tp!1621326 () Bool)

(assert (=> b!5861433 (= e!3593854 (and tp!1621322 tp!1621326))))

(assert (=> b!5860396 (= tp!1621011 e!3593854)))

(assert (= (and b!5860396 ((_ is ElementMatch!15927) (regTwo!32366 (regTwo!32366 r!7292)))) b!5861432))

(assert (= (and b!5860396 ((_ is Concat!24772) (regTwo!32366 (regTwo!32366 r!7292)))) b!5861433))

(assert (= (and b!5860396 ((_ is Star!15927) (regTwo!32366 (regTwo!32366 r!7292)))) b!5861434))

(assert (= (and b!5860396 ((_ is Union!15927) (regTwo!32366 (regTwo!32366 r!7292)))) b!5861435))

(declare-fun b!5861439 () Bool)

(declare-fun e!3593855 () Bool)

(declare-fun tp!1621328 () Bool)

(declare-fun tp!1621330 () Bool)

(assert (=> b!5861439 (= e!3593855 (and tp!1621328 tp!1621330))))

(declare-fun b!5861436 () Bool)

(assert (=> b!5861436 (= e!3593855 tp_is_empty!41107)))

(declare-fun b!5861438 () Bool)

(declare-fun tp!1621329 () Bool)

(assert (=> b!5861438 (= e!3593855 tp!1621329)))

(declare-fun b!5861437 () Bool)

(declare-fun tp!1621327 () Bool)

(declare-fun tp!1621331 () Bool)

(assert (=> b!5861437 (= e!3593855 (and tp!1621327 tp!1621331))))

(assert (=> b!5860411 (= tp!1621021 e!3593855)))

(assert (= (and b!5860411 ((_ is ElementMatch!15927) (regOne!32367 (regOne!32367 r!7292)))) b!5861436))

(assert (= (and b!5860411 ((_ is Concat!24772) (regOne!32367 (regOne!32367 r!7292)))) b!5861437))

(assert (= (and b!5860411 ((_ is Star!15927) (regOne!32367 (regOne!32367 r!7292)))) b!5861438))

(assert (= (and b!5860411 ((_ is Union!15927) (regOne!32367 (regOne!32367 r!7292)))) b!5861439))

(declare-fun b!5861443 () Bool)

(declare-fun e!3593856 () Bool)

(declare-fun tp!1621333 () Bool)

(declare-fun tp!1621335 () Bool)

(assert (=> b!5861443 (= e!3593856 (and tp!1621333 tp!1621335))))

(declare-fun b!5861440 () Bool)

(assert (=> b!5861440 (= e!3593856 tp_is_empty!41107)))

(declare-fun b!5861442 () Bool)

(declare-fun tp!1621334 () Bool)

(assert (=> b!5861442 (= e!3593856 tp!1621334)))

(declare-fun b!5861441 () Bool)

(declare-fun tp!1621332 () Bool)

(declare-fun tp!1621336 () Bool)

(assert (=> b!5861441 (= e!3593856 (and tp!1621332 tp!1621336))))

(assert (=> b!5860411 (= tp!1621023 e!3593856)))

(assert (= (and b!5860411 ((_ is ElementMatch!15927) (regTwo!32367 (regOne!32367 r!7292)))) b!5861440))

(assert (= (and b!5860411 ((_ is Concat!24772) (regTwo!32367 (regOne!32367 r!7292)))) b!5861441))

(assert (= (and b!5860411 ((_ is Star!15927) (regTwo!32367 (regOne!32367 r!7292)))) b!5861442))

(assert (= (and b!5860411 ((_ is Union!15927) (regTwo!32367 (regOne!32367 r!7292)))) b!5861443))

(declare-fun b!5861447 () Bool)

(declare-fun e!3593857 () Bool)

(declare-fun tp!1621338 () Bool)

(declare-fun tp!1621340 () Bool)

(assert (=> b!5861447 (= e!3593857 (and tp!1621338 tp!1621340))))

(declare-fun b!5861444 () Bool)

(assert (=> b!5861444 (= e!3593857 tp_is_empty!41107)))

(declare-fun b!5861446 () Bool)

(declare-fun tp!1621339 () Bool)

(assert (=> b!5861446 (= e!3593857 tp!1621339)))

(declare-fun b!5861445 () Bool)

(declare-fun tp!1621337 () Bool)

(declare-fun tp!1621341 () Bool)

(assert (=> b!5861445 (= e!3593857 (and tp!1621337 tp!1621341))))

(assert (=> b!5860380 (= tp!1620990 e!3593857)))

(assert (= (and b!5860380 ((_ is ElementMatch!15927) (h!70404 (exprs!5811 setElem!39732)))) b!5861444))

(assert (= (and b!5860380 ((_ is Concat!24772) (h!70404 (exprs!5811 setElem!39732)))) b!5861445))

(assert (= (and b!5860380 ((_ is Star!15927) (h!70404 (exprs!5811 setElem!39732)))) b!5861446))

(assert (= (and b!5860380 ((_ is Union!15927) (h!70404 (exprs!5811 setElem!39732)))) b!5861447))

(declare-fun b!5861448 () Bool)

(declare-fun e!3593858 () Bool)

(declare-fun tp!1621342 () Bool)

(declare-fun tp!1621343 () Bool)

(assert (=> b!5861448 (= e!3593858 (and tp!1621342 tp!1621343))))

(assert (=> b!5860380 (= tp!1620991 e!3593858)))

(assert (= (and b!5860380 ((_ is Cons!63956) (t!377451 (exprs!5811 setElem!39732)))) b!5861448))

(declare-fun b!5861452 () Bool)

(declare-fun e!3593859 () Bool)

(declare-fun tp!1621345 () Bool)

(declare-fun tp!1621347 () Bool)

(assert (=> b!5861452 (= e!3593859 (and tp!1621345 tp!1621347))))

(declare-fun b!5861449 () Bool)

(assert (=> b!5861449 (= e!3593859 tp_is_empty!41107)))

(declare-fun b!5861451 () Bool)

(declare-fun tp!1621346 () Bool)

(assert (=> b!5861451 (= e!3593859 tp!1621346)))

(declare-fun b!5861450 () Bool)

(declare-fun tp!1621344 () Bool)

(declare-fun tp!1621348 () Bool)

(assert (=> b!5861450 (= e!3593859 (and tp!1621344 tp!1621348))))

(assert (=> b!5860419 (= tp!1621031 e!3593859)))

(assert (= (and b!5860419 ((_ is ElementMatch!15927) (regOne!32367 (reg!16256 r!7292)))) b!5861449))

(assert (= (and b!5860419 ((_ is Concat!24772) (regOne!32367 (reg!16256 r!7292)))) b!5861450))

(assert (= (and b!5860419 ((_ is Star!15927) (regOne!32367 (reg!16256 r!7292)))) b!5861451))

(assert (= (and b!5860419 ((_ is Union!15927) (regOne!32367 (reg!16256 r!7292)))) b!5861452))

(declare-fun b!5861456 () Bool)

(declare-fun e!3593860 () Bool)

(declare-fun tp!1621350 () Bool)

(declare-fun tp!1621352 () Bool)

(assert (=> b!5861456 (= e!3593860 (and tp!1621350 tp!1621352))))

(declare-fun b!5861453 () Bool)

(assert (=> b!5861453 (= e!3593860 tp_is_empty!41107)))

(declare-fun b!5861455 () Bool)

(declare-fun tp!1621351 () Bool)

(assert (=> b!5861455 (= e!3593860 tp!1621351)))

(declare-fun b!5861454 () Bool)

(declare-fun tp!1621349 () Bool)

(declare-fun tp!1621353 () Bool)

(assert (=> b!5861454 (= e!3593860 (and tp!1621349 tp!1621353))))

(assert (=> b!5860419 (= tp!1621033 e!3593860)))

(assert (= (and b!5860419 ((_ is ElementMatch!15927) (regTwo!32367 (reg!16256 r!7292)))) b!5861453))

(assert (= (and b!5860419 ((_ is Concat!24772) (regTwo!32367 (reg!16256 r!7292)))) b!5861454))

(assert (= (and b!5860419 ((_ is Star!15927) (regTwo!32367 (reg!16256 r!7292)))) b!5861455))

(assert (= (and b!5860419 ((_ is Union!15927) (regTwo!32367 (reg!16256 r!7292)))) b!5861456))

(declare-fun b!5861460 () Bool)

(declare-fun e!3593861 () Bool)

(declare-fun tp!1621355 () Bool)

(declare-fun tp!1621357 () Bool)

(assert (=> b!5861460 (= e!3593861 (and tp!1621355 tp!1621357))))

(declare-fun b!5861457 () Bool)

(assert (=> b!5861457 (= e!3593861 tp_is_empty!41107)))

(declare-fun b!5861459 () Bool)

(declare-fun tp!1621356 () Bool)

(assert (=> b!5861459 (= e!3593861 tp!1621356)))

(declare-fun b!5861458 () Bool)

(declare-fun tp!1621354 () Bool)

(declare-fun tp!1621358 () Bool)

(assert (=> b!5861458 (= e!3593861 (and tp!1621354 tp!1621358))))

(assert (=> b!5860410 (= tp!1621022 e!3593861)))

(assert (= (and b!5860410 ((_ is ElementMatch!15927) (reg!16256 (regOne!32367 r!7292)))) b!5861457))

(assert (= (and b!5860410 ((_ is Concat!24772) (reg!16256 (regOne!32367 r!7292)))) b!5861458))

(assert (= (and b!5860410 ((_ is Star!15927) (reg!16256 (regOne!32367 r!7292)))) b!5861459))

(assert (= (and b!5860410 ((_ is Union!15927) (reg!16256 (regOne!32367 r!7292)))) b!5861460))

(declare-fun b!5861464 () Bool)

(declare-fun e!3593862 () Bool)

(declare-fun tp!1621360 () Bool)

(declare-fun tp!1621362 () Bool)

(assert (=> b!5861464 (= e!3593862 (and tp!1621360 tp!1621362))))

(declare-fun b!5861461 () Bool)

(assert (=> b!5861461 (= e!3593862 tp_is_empty!41107)))

(declare-fun b!5861463 () Bool)

(declare-fun tp!1621361 () Bool)

(assert (=> b!5861463 (= e!3593862 tp!1621361)))

(declare-fun b!5861462 () Bool)

(declare-fun tp!1621359 () Bool)

(declare-fun tp!1621363 () Bool)

(assert (=> b!5861462 (= e!3593862 (and tp!1621359 tp!1621363))))

(assert (=> b!5860409 (= tp!1621020 e!3593862)))

(assert (= (and b!5860409 ((_ is ElementMatch!15927) (regOne!32366 (regOne!32367 r!7292)))) b!5861461))

(assert (= (and b!5860409 ((_ is Concat!24772) (regOne!32366 (regOne!32367 r!7292)))) b!5861462))

(assert (= (and b!5860409 ((_ is Star!15927) (regOne!32366 (regOne!32367 r!7292)))) b!5861463))

(assert (= (and b!5860409 ((_ is Union!15927) (regOne!32366 (regOne!32367 r!7292)))) b!5861464))

(declare-fun b!5861468 () Bool)

(declare-fun e!3593863 () Bool)

(declare-fun tp!1621365 () Bool)

(declare-fun tp!1621367 () Bool)

(assert (=> b!5861468 (= e!3593863 (and tp!1621365 tp!1621367))))

(declare-fun b!5861465 () Bool)

(assert (=> b!5861465 (= e!3593863 tp_is_empty!41107)))

(declare-fun b!5861467 () Bool)

(declare-fun tp!1621366 () Bool)

(assert (=> b!5861467 (= e!3593863 tp!1621366)))

(declare-fun b!5861466 () Bool)

(declare-fun tp!1621364 () Bool)

(declare-fun tp!1621368 () Bool)

(assert (=> b!5861466 (= e!3593863 (and tp!1621364 tp!1621368))))

(assert (=> b!5860409 (= tp!1621024 e!3593863)))

(assert (= (and b!5860409 ((_ is ElementMatch!15927) (regTwo!32366 (regOne!32367 r!7292)))) b!5861465))

(assert (= (and b!5860409 ((_ is Concat!24772) (regTwo!32366 (regOne!32367 r!7292)))) b!5861466))

(assert (= (and b!5860409 ((_ is Star!15927) (regTwo!32366 (regOne!32367 r!7292)))) b!5861467))

(assert (= (and b!5860409 ((_ is Union!15927) (regTwo!32366 (regOne!32367 r!7292)))) b!5861468))

(declare-fun b_lambda!220635 () Bool)

(assert (= b_lambda!220621 (or d!1840299 b_lambda!220635)))

(declare-fun bs!1381032 () Bool)

(declare-fun d!1840795 () Bool)

(assert (= bs!1381032 (and d!1840795 d!1840299)))

(assert (=> bs!1381032 (= (dynLambda!25010 lambda!320435 (h!70404 lt!2305418)) (validRegex!7663 (h!70404 lt!2305418)))))

(declare-fun m!6778386 () Bool)

(assert (=> bs!1381032 m!6778386))

(assert (=> b!5861176 d!1840795))

(declare-fun b_lambda!220637 () Bool)

(assert (= b_lambda!220625 (or d!1840319 b_lambda!220637)))

(declare-fun bs!1381033 () Bool)

(declare-fun d!1840797 () Bool)

(assert (= bs!1381033 (and d!1840797 d!1840319)))

(assert (=> bs!1381033 (= (dynLambda!25010 lambda!320439 (h!70404 (exprs!5811 lt!2305344))) (validRegex!7663 (h!70404 (exprs!5811 lt!2305344))))))

(declare-fun m!6778388 () Bool)

(assert (=> bs!1381033 m!6778388))

(assert (=> b!5861271 d!1840797))

(declare-fun b_lambda!220639 () Bool)

(assert (= b_lambda!220627 (or d!1840309 b_lambda!220639)))

(declare-fun bs!1381034 () Bool)

(declare-fun d!1840799 () Bool)

(assert (= bs!1381034 (and d!1840799 d!1840309)))

(assert (=> bs!1381034 (= (dynLambda!25010 lambda!320438 (h!70404 (exprs!5811 setElem!39732))) (validRegex!7663 (h!70404 (exprs!5811 setElem!39732))))))

(declare-fun m!6778390 () Bool)

(assert (=> bs!1381034 m!6778390))

(assert (=> b!5861279 d!1840799))

(declare-fun b_lambda!220641 () Bool)

(assert (= b_lambda!220617 (or d!1840337 b_lambda!220641)))

(declare-fun bs!1381035 () Bool)

(declare-fun d!1840801 () Bool)

(assert (= bs!1381035 (and d!1840801 d!1840337)))

(assert (=> bs!1381035 (= (dynLambda!25010 lambda!320445 (h!70404 (exprs!5811 (h!70405 zl!343)))) (validRegex!7663 (h!70404 (exprs!5811 (h!70405 zl!343)))))))

(declare-fun m!6778392 () Bool)

(assert (=> bs!1381035 m!6778392))

(assert (=> b!5861138 d!1840801))

(declare-fun b_lambda!220643 () Bool)

(assert (= b_lambda!220633 (or b!5859627 b_lambda!220643)))

(assert (=> d!1840791 d!1840353))

(declare-fun b_lambda!220645 () Bool)

(assert (= b_lambda!220619 (or b!5859627 b_lambda!220645)))

(assert (=> d!1840657 d!1840351))

(declare-fun b_lambda!220647 () Bool)

(assert (= b_lambda!220623 (or d!1840329 b_lambda!220647)))

(declare-fun bs!1381036 () Bool)

(declare-fun d!1840803 () Bool)

(assert (= bs!1381036 (and d!1840803 d!1840329)))

(assert (=> bs!1381036 (= (dynLambda!25010 lambda!320442 (h!70404 (exprs!5811 (h!70405 zl!343)))) (validRegex!7663 (h!70404 (exprs!5811 (h!70405 zl!343)))))))

(assert (=> bs!1381036 m!6778392))

(assert (=> b!5861248 d!1840803))

(declare-fun b_lambda!220649 () Bool)

(assert (= b_lambda!220629 (or d!1840297 b_lambda!220649)))

(declare-fun bs!1381037 () Bool)

(declare-fun d!1840805 () Bool)

(assert (= bs!1381037 (and d!1840805 d!1840297)))

(assert (=> bs!1381037 (= (dynLambda!25010 lambda!320432 (h!70404 (unfocusZipperList!1348 zl!343))) (validRegex!7663 (h!70404 (unfocusZipperList!1348 zl!343))))))

(declare-fun m!6778394 () Bool)

(assert (=> bs!1381037 m!6778394))

(assert (=> b!5861296 d!1840805))

(declare-fun b_lambda!220651 () Bool)

(assert (= b_lambda!220631 (or b!5859627 b_lambda!220651)))

(assert (=> d!1840771 d!1840349))

(check-sat (not b!5861002) (not b!5861139) (not bm!459598) (not bm!459648) (not b!5860880) (not d!1840791) (not bm!459659) (not b!5860714) (not setNonEmpty!39750) (not bm!459698) (not b!5861246) (not d!1840757) (not bm!459618) (not b!5861403) (not b!5861318) (not bm!459717) (not b!5861286) (not d!1840703) (not b!5861175) (not b!5861429) (not b!5861025) (not b!5861414) (not b!5860855) (not bm!459716) (not b!5861376) (not b!5860899) (not d!1840547) (not d!1840741) (not b!5861393) (not b!5861437) (not bm!459695) (not bm!459697) (not bm!459595) (not b!5861332) (not bm!459572) (not b!5861326) (not b!5861214) (not b!5861272) (not d!1840709) (not b_lambda!220645) (not b!5861443) (not bm!459573) (not b!5861199) (not b!5861212) (not b!5861323) (not b!5861328) (not bm!459680) (not d!1840491) (not b!5861055) (not b!5861448) (not b_lambda!220639) (not b!5861204) (not bm!459727) (not b!5861468) (not b!5861431) (not d!1840789) (not d!1840493) (not d!1840699) (not b!5861423) (not d!1840587) (not bm!459619) (not b!5861281) (not b!5861371) (not bm!459706) (not d!1840685) (not b!5861450) (not b!5860690) (not b!5861422) (not d!1840781) (not b!5861358) (not d!1840725) (not b!5861385) (not b!5861412) (not b!5861406) (not bm!459689) (not b!5860877) (not b!5861270) (not b!5861398) (not b!5861454) (not b!5860743) (not b!5861466) (not bm!459600) (not b!5861211) (not b!5860683) (not b!5861462) (not bm!459649) (not b!5861388) (not b!5861418) (not b!5861210) (not b!5861377) (not d!1840771) (not bm!459705) (not b!5861381) (not b!5861132) (not d!1840653) (not b!5861249) (not b!5861354) (not d!1840579) (not d!1840663) (not b!5861397) (not b!5861413) (not b!5861373) (not d!1840617) (not bm!459661) (not b!5861004) (not bm!459676) (not b!5861384) (not bm!459720) (not d!1840773) (not bm!459679) (not b!5861026) (not b!5861184) (not bs!1381034) (not b!5861464) (not bm!459635) (not b_lambda!220637) (not b!5861364) (not b!5861389) (not b!5861408) (not b!5861359) (not d!1840659) (not bm!459611) (not b!5861445) (not bm!459715) (not b!5861321) (not b!5861463) (not bm!459722) (not b!5861425) (not bm!459650) (not b!5861197) (not b!5861409) (not b!5861191) (not b_lambda!220647) (not bm!459725) (not b!5861421) (not b!5861427) (not bm!459665) (not b!5861416) (not d!1840707) (not b!5861167) (not b!5861411) (not d!1840595) (not b!5861362) (not b!5861155) (not b!5861438) (not b!5861237) (not b_lambda!220641) (not bm!459723) (not d!1840717) (not b!5861238) (not b_lambda!220579) (not bm!459710) (not b!5861434) (not bm!459673) (not b!5860964) (not b!5861230) (not b!5861370) (not b!5860779) (not b!5861196) (not bm!459687) (not b!5861460) (not bm!459692) (not b!5861392) (not b!5861379) (not bs!1381032) (not bm!459660) (not bm!459703) (not b!5861360) (not b!5861305) (not b!5861325) (not bm!459688) (not b!5861407) (not b!5861259) (not bm!459668) (not bm!459713) (not b!5861355) (not b!5861401) (not d!1840729) (not b!5860840) (not b!5860740) (not b!5861096) (not b!5861458) (not b_lambda!220643) (not b!5860693) (not b!5861356) (not b!5860689) (not b!5861394) (not bs!1381033) (not b!5861386) (not b_lambda!220577) (not b!5861150) (not b!5861430) (not b!5861311) (not bm!459707) (not d!1840649) (not b!5861375) (not b_lambda!220651) (not b!5861003) (not setNonEmpty!39747) (not bs!1381037) (not b!5861383) (not b!5860821) (not b!5861441) (not d!1840619) (not b_lambda!220649) (not b!5861267) (not d!1840695) (not b!5860691) (not d!1840693) (not d!1840731) (not b!5861346) (not b!5860885) (not b!5861178) (not b!5861215) (not b!5861380) (not b!5861262) (not b!5861170) (not b!5861366) (not b!5861420) (not b!5861193) (not b!5861367) (not setNonEmpty!39748) (not b!5860887) (not bm!459704) (not bm!459669) (not b!5860928) (not bm!459561) (not bm!459667) (not bm!459696) (not bm!459644) (not bm!459677) (not d!1840613) (not b!5861284) (not b!5861405) (not b!5861442) (not b!5861278) (not d!1840705) (not b!5861264) (not d!1840675) (not bm!459612) (not b!5861147) (not d!1840657) (not b!5861417) (not b!5860805) (not d!1840687) (not b_lambda!220575) (not d!1840677) (not bm!459726) (not bm!459581) (not bm!459674) (not b!5861297) (not d!1840759) (not b!5861280) (not b!5861426) (not b_lambda!220635) (not bm!459617) (not bm!459701) (not b!5861446) (not bm!459700) (not b!5861452) (not bm!459685) (not bs!1381035) (not b!5861340) (not b!5861329) tp_is_empty!41107 (not b!5860883) (not d!1840727) (not b!5861331) (not b!5861177) (not b!5860963) (not b!5861233) (not b!5861402) (not d!1840691) (not b!5861456) (not b!5861198) (not d!1840681) (not b!5861439) (not b!5861433) (not bm!459645) (not b!5861236) (not b!5860884) (not b!5861257) (not b!5861118) (not d!1840777) (not b!5861269) (not d!1840719) (not b!5861395) (not b!5861459) (not d!1840549) (not b!5861372) (not setNonEmpty!39749) (not b!5860686) (not bm!459664) (not bm!459681) (not b!5860841) (not b!5861447) (not b!5861368) (not bm!459709) (not b!5861455) (not d!1840593) (not b!5861451) (not b!5861363) (not b!5861467) (not d!1840563) (not b!5861294) (not bm!459580) (not bm!459684) (not b!5861390) (not b!5861399) (not bm!459712) (not b!5861099) (not d!1840485) (not b!5861435) (not d!1840665) (not bm!459610) (not b!5861200) (not bs!1381036) (not b!5861207) (not b!5861149))
(check-sat)
