; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574578 () Bool)

(assert start!574578)

(declare-fun b!5500992 () Bool)

(assert (=> b!5500992 true))

(declare-fun b!5500987 () Bool)

(declare-fun e!3402721 () Bool)

(declare-fun e!3402733 () Bool)

(assert (=> b!5500987 (= e!3402721 e!3402733)))

(declare-fun res!2344880 () Bool)

(assert (=> b!5500987 (=> res!2344880 e!3402733)))

(declare-fun lt!2243515 () Bool)

(declare-datatypes ((C!31224 0))(
  ( (C!31225 (val!25314 Int)) )
))
(declare-datatypes ((List!62730 0))(
  ( (Nil!62606) (Cons!62606 (h!69054 C!31224) (t!375967 List!62730)) )
))
(declare-fun s!2326 () List!62730)

(declare-fun lt!2243516 () Bool)

(declare-fun lt!2243517 () Bool)

(get-info :version)

(assert (=> b!5500987 (= res!2344880 (or (not (= lt!2243516 (or lt!2243517 lt!2243515))) ((_ is Nil!62606) s!2326)))))

(declare-datatypes ((Regex!15477 0))(
  ( (ElementMatch!15477 (c!960787 C!31224)) (Concat!24322 (regOne!31466 Regex!15477) (regTwo!31466 Regex!15477)) (EmptyExpr!15477) (Star!15477 (reg!15806 Regex!15477)) (EmptyLang!15477) (Union!15477 (regOne!31467 Regex!15477) (regTwo!31467 Regex!15477)) )
))
(declare-fun r!7292 () Regex!15477)

(declare-fun matchRSpec!2580 (Regex!15477 List!62730) Bool)

(assert (=> b!5500987 (= lt!2243515 (matchRSpec!2580 (regTwo!31467 r!7292) s!2326))))

(declare-fun matchR!7662 (Regex!15477 List!62730) Bool)

(assert (=> b!5500987 (= lt!2243515 (matchR!7662 (regTwo!31467 r!7292) s!2326))))

(declare-datatypes ((Unit!155414 0))(
  ( (Unit!155415) )
))
(declare-fun lt!2243512 () Unit!155414)

(declare-fun mainMatchTheorem!2580 (Regex!15477 List!62730) Unit!155414)

(assert (=> b!5500987 (= lt!2243512 (mainMatchTheorem!2580 (regTwo!31467 r!7292) s!2326))))

(assert (=> b!5500987 (= lt!2243517 (matchRSpec!2580 (regOne!31467 r!7292) s!2326))))

(assert (=> b!5500987 (= lt!2243517 (matchR!7662 (regOne!31467 r!7292) s!2326))))

(declare-fun lt!2243521 () Unit!155414)

(assert (=> b!5500987 (= lt!2243521 (mainMatchTheorem!2580 (regOne!31467 r!7292) s!2326))))

(declare-fun b!5500988 () Bool)

(declare-fun e!3402730 () Bool)

(declare-fun tp!1513674 () Bool)

(declare-fun tp!1513678 () Bool)

(assert (=> b!5500988 (= e!3402730 (and tp!1513674 tp!1513678))))

(declare-fun tp!1513677 () Bool)

(declare-fun e!3402724 () Bool)

(declare-fun b!5500989 () Bool)

(declare-datatypes ((List!62731 0))(
  ( (Nil!62607) (Cons!62607 (h!69055 Regex!15477) (t!375968 List!62731)) )
))
(declare-datatypes ((Context!9722 0))(
  ( (Context!9723 (exprs!5361 List!62731)) )
))
(declare-datatypes ((List!62732 0))(
  ( (Nil!62608) (Cons!62608 (h!69056 Context!9722) (t!375969 List!62732)) )
))
(declare-fun zl!343 () List!62732)

(declare-fun e!3402723 () Bool)

(declare-fun inv!81939 (Context!9722) Bool)

(assert (=> b!5500989 (= e!3402723 (and (inv!81939 (h!69056 zl!343)) e!3402724 tp!1513677))))

(declare-fun b!5500990 () Bool)

(declare-fun tp!1513676 () Bool)

(assert (=> b!5500990 (= e!3402724 tp!1513676)))

(declare-fun b!5500991 () Bool)

(declare-fun tp_is_empty!40207 () Bool)

(assert (=> b!5500991 (= e!3402730 tp_is_empty!40207)))

(declare-fun e!3402725 () Bool)

(declare-fun e!3402731 () Bool)

(assert (=> b!5500992 (= e!3402725 e!3402731)))

(declare-fun res!2344878 () Bool)

(assert (=> b!5500992 (=> res!2344878 e!3402731)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2243522 () (InoxSet Context!9722))

(declare-fun z!1189 () (InoxSet Context!9722))

(declare-fun derivationStepZipper!1588 ((InoxSet Context!9722) C!31224) (InoxSet Context!9722))

(assert (=> b!5500992 (= res!2344878 (not (= (derivationStepZipper!1588 z!1189 (h!69054 s!2326)) lt!2243522)))))

(declare-fun lambda!294501 () Int)

(declare-fun flatMap!1096 ((InoxSet Context!9722) Int) (InoxSet Context!9722))

(declare-fun derivationStepZipperUp!749 (Context!9722 C!31224) (InoxSet Context!9722))

(assert (=> b!5500992 (= (flatMap!1096 z!1189 lambda!294501) (derivationStepZipperUp!749 (h!69056 zl!343) (h!69054 s!2326)))))

(declare-fun lt!2243503 () Unit!155414)

(declare-fun lemmaFlatMapOnSingletonSet!628 ((InoxSet Context!9722) Context!9722 Int) Unit!155414)

(assert (=> b!5500992 (= lt!2243503 (lemmaFlatMapOnSingletonSet!628 z!1189 (h!69056 zl!343) lambda!294501))))

(declare-fun b!5500993 () Bool)

(declare-fun res!2344873 () Bool)

(declare-fun e!3402732 () Bool)

(assert (=> b!5500993 (=> (not res!2344873) (not e!3402732))))

(declare-fun unfocusZipper!1219 (List!62732) Regex!15477)

(assert (=> b!5500993 (= res!2344873 (= r!7292 (unfocusZipper!1219 zl!343)))))

(declare-fun b!5500994 () Bool)

(declare-fun tp!1513672 () Bool)

(declare-fun tp!1513675 () Bool)

(assert (=> b!5500994 (= e!3402730 (and tp!1513672 tp!1513675))))

(declare-fun b!5500995 () Bool)

(declare-fun res!2344884 () Bool)

(assert (=> b!5500995 (=> res!2344884 e!3402721)))

(declare-fun generalisedUnion!1340 (List!62731) Regex!15477)

(declare-fun unfocusZipperList!905 (List!62732) List!62731)

(assert (=> b!5500995 (= res!2344884 (not (= r!7292 (generalisedUnion!1340 (unfocusZipperList!905 zl!343)))))))

(declare-fun b!5500996 () Bool)

(declare-fun e!3402734 () Bool)

(declare-fun tp!1513673 () Bool)

(assert (=> b!5500996 (= e!3402734 tp!1513673)))

(declare-fun b!5500997 () Bool)

(declare-fun e!3402728 () Bool)

(assert (=> b!5500997 (= e!3402728 e!3402725)))

(declare-fun res!2344877 () Bool)

(assert (=> b!5500997 (=> res!2344877 e!3402725)))

(declare-fun lt!2243505 () (InoxSet Context!9722))

(assert (=> b!5500997 (= res!2344877 (not (= lt!2243505 lt!2243522)))))

(declare-fun lt!2243511 () (InoxSet Context!9722))

(declare-fun lt!2243526 () (InoxSet Context!9722))

(assert (=> b!5500997 (= lt!2243522 ((_ map or) lt!2243511 lt!2243526))))

(declare-fun lt!2243518 () Context!9722)

(declare-fun derivationStepZipperDown!823 (Regex!15477 Context!9722 C!31224) (InoxSet Context!9722))

(assert (=> b!5500997 (= lt!2243526 (derivationStepZipperDown!823 (regTwo!31467 r!7292) lt!2243518 (h!69054 s!2326)))))

(assert (=> b!5500997 (= lt!2243511 (derivationStepZipperDown!823 (regOne!31467 r!7292) lt!2243518 (h!69054 s!2326)))))

(declare-fun setIsEmpty!36463 () Bool)

(declare-fun setRes!36463 () Bool)

(assert (=> setIsEmpty!36463 setRes!36463))

(declare-fun b!5500998 () Bool)

(declare-fun res!2344881 () Bool)

(assert (=> b!5500998 (=> res!2344881 e!3402721)))

(assert (=> b!5500998 (= res!2344881 (not ((_ is Cons!62607) (exprs!5361 (h!69056 zl!343)))))))

(declare-fun b!5500999 () Bool)

(declare-fun res!2344879 () Bool)

(assert (=> b!5500999 (=> res!2344879 e!3402721)))

(assert (=> b!5500999 (= res!2344879 (or ((_ is EmptyExpr!15477) r!7292) ((_ is EmptyLang!15477) r!7292) ((_ is ElementMatch!15477) r!7292) (not ((_ is Union!15477) r!7292))))))

(declare-fun b!5501000 () Bool)

(assert (=> b!5501000 (= e!3402732 (not e!3402721))))

(declare-fun res!2344885 () Bool)

(assert (=> b!5501000 (=> res!2344885 e!3402721)))

(assert (=> b!5501000 (= res!2344885 (not ((_ is Cons!62608) zl!343)))))

(assert (=> b!5501000 (= lt!2243516 (matchRSpec!2580 r!7292 s!2326))))

(assert (=> b!5501000 (= lt!2243516 (matchR!7662 r!7292 s!2326))))

(declare-fun lt!2243524 () Unit!155414)

(assert (=> b!5501000 (= lt!2243524 (mainMatchTheorem!2580 r!7292 s!2326))))

(declare-fun b!5501001 () Bool)

(declare-fun e!3402727 () Bool)

(assert (=> b!5501001 (= e!3402731 e!3402727)))

(declare-fun res!2344874 () Bool)

(assert (=> b!5501001 (=> res!2344874 e!3402727)))

(declare-fun lt!2243519 () Bool)

(declare-fun lt!2243509 () Bool)

(assert (=> b!5501001 (= res!2344874 (not (= lt!2243519 lt!2243509)))))

(declare-fun matchZipper!1645 ((InoxSet Context!9722) List!62730) Bool)

(assert (=> b!5501001 (= lt!2243509 (matchZipper!1645 z!1189 s!2326))))

(assert (=> b!5501001 (= lt!2243519 (matchZipper!1645 lt!2243522 (t!375967 s!2326)))))

(declare-fun b!5501002 () Bool)

(declare-fun tp!1513671 () Bool)

(assert (=> b!5501002 (= e!3402730 tp!1513671)))

(declare-fun b!5501003 () Bool)

(declare-fun e!3402729 () Bool)

(assert (=> b!5501003 (= e!3402729 true)))

(declare-fun lt!2243506 () (InoxSet Context!9722))

(declare-fun lt!2243525 () Context!9722)

(assert (=> b!5501003 (= (flatMap!1096 lt!2243506 lambda!294501) (derivationStepZipperUp!749 lt!2243525 (h!69054 s!2326)))))

(declare-fun lt!2243513 () Unit!155414)

(assert (=> b!5501003 (= lt!2243513 (lemmaFlatMapOnSingletonSet!628 lt!2243506 lt!2243525 lambda!294501))))

(declare-fun lt!2243507 () Context!9722)

(declare-fun lt!2243520 () (InoxSet Context!9722))

(assert (=> b!5501003 (= (flatMap!1096 lt!2243520 lambda!294501) (derivationStepZipperUp!749 lt!2243507 (h!69054 s!2326)))))

(declare-fun lt!2243523 () Unit!155414)

(assert (=> b!5501003 (= lt!2243523 (lemmaFlatMapOnSingletonSet!628 lt!2243520 lt!2243507 lambda!294501))))

(declare-fun lt!2243514 () (InoxSet Context!9722))

(assert (=> b!5501003 (= lt!2243514 (derivationStepZipperUp!749 lt!2243525 (h!69054 s!2326)))))

(declare-fun lt!2243527 () (InoxSet Context!9722))

(assert (=> b!5501003 (= lt!2243527 (derivationStepZipperUp!749 lt!2243507 (h!69054 s!2326)))))

(assert (=> b!5501003 (= lt!2243506 (store ((as const (Array Context!9722 Bool)) false) lt!2243525 true))))

(assert (=> b!5501003 (= lt!2243525 (Context!9723 (Cons!62607 (regTwo!31467 r!7292) Nil!62607)))))

(assert (=> b!5501003 (= lt!2243520 (store ((as const (Array Context!9722 Bool)) false) lt!2243507 true))))

(assert (=> b!5501003 (= lt!2243507 (Context!9723 (Cons!62607 (regOne!31467 r!7292) Nil!62607)))))

(declare-fun setNonEmpty!36463 () Bool)

(declare-fun setElem!36463 () Context!9722)

(declare-fun tp!1513670 () Bool)

(assert (=> setNonEmpty!36463 (= setRes!36463 (and tp!1513670 (inv!81939 setElem!36463) e!3402734))))

(declare-fun setRest!36463 () (InoxSet Context!9722))

(assert (=> setNonEmpty!36463 (= z!1189 ((_ map or) (store ((as const (Array Context!9722 Bool)) false) setElem!36463 true) setRest!36463))))

(declare-fun b!5501004 () Bool)

(declare-fun res!2344882 () Bool)

(assert (=> b!5501004 (=> (not res!2344882) (not e!3402732))))

(declare-fun toList!9261 ((InoxSet Context!9722)) List!62732)

(assert (=> b!5501004 (= res!2344882 (= (toList!9261 z!1189) zl!343))))

(declare-fun b!5501005 () Bool)

(declare-fun e!3402726 () Bool)

(assert (=> b!5501005 (= e!3402726 (matchZipper!1645 lt!2243526 (t!375967 s!2326)))))

(declare-fun b!5501006 () Bool)

(assert (=> b!5501006 (= e!3402733 e!3402728)))

(declare-fun res!2344875 () Bool)

(assert (=> b!5501006 (=> res!2344875 e!3402728)))

(declare-fun lt!2243508 () (InoxSet Context!9722))

(assert (=> b!5501006 (= res!2344875 (not (= lt!2243508 lt!2243505)))))

(assert (=> b!5501006 (= lt!2243505 (derivationStepZipperDown!823 r!7292 lt!2243518 (h!69054 s!2326)))))

(assert (=> b!5501006 (= lt!2243518 (Context!9723 Nil!62607))))

(assert (=> b!5501006 (= lt!2243508 (derivationStepZipperUp!749 (Context!9723 (Cons!62607 r!7292 Nil!62607)) (h!69054 s!2326)))))

(declare-fun b!5501007 () Bool)

(declare-fun res!2344872 () Bool)

(assert (=> b!5501007 (=> res!2344872 e!3402721)))

(declare-fun generalisedConcat!1092 (List!62731) Regex!15477)

(assert (=> b!5501007 (= res!2344872 (not (= r!7292 (generalisedConcat!1092 (exprs!5361 (h!69056 zl!343))))))))

(declare-fun b!5501008 () Bool)

(assert (=> b!5501008 (= e!3402727 e!3402729)))

(declare-fun res!2344876 () Bool)

(assert (=> b!5501008 (=> res!2344876 e!3402729)))

(declare-fun lt!2243504 () Bool)

(assert (=> b!5501008 (= res!2344876 (or (not (= lt!2243504 lt!2243519)) (not (= lt!2243504 lt!2243509))))))

(assert (=> b!5501008 (= lt!2243519 lt!2243504)))

(assert (=> b!5501008 (= lt!2243504 e!3402726)))

(declare-fun res!2344871 () Bool)

(assert (=> b!5501008 (=> res!2344871 e!3402726)))

(assert (=> b!5501008 (= res!2344871 (matchZipper!1645 lt!2243511 (t!375967 s!2326)))))

(declare-fun lt!2243510 () Unit!155414)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!534 ((InoxSet Context!9722) (InoxSet Context!9722) List!62730) Unit!155414)

(assert (=> b!5501008 (= lt!2243510 (lemmaZipperConcatMatchesSameAsBothZippers!534 lt!2243511 lt!2243526 (t!375967 s!2326)))))

(declare-fun res!2344886 () Bool)

(assert (=> start!574578 (=> (not res!2344886) (not e!3402732))))

(declare-fun validRegex!7213 (Regex!15477) Bool)

(assert (=> start!574578 (= res!2344886 (validRegex!7213 r!7292))))

(assert (=> start!574578 e!3402732))

(assert (=> start!574578 e!3402730))

(declare-fun condSetEmpty!36463 () Bool)

(assert (=> start!574578 (= condSetEmpty!36463 (= z!1189 ((as const (Array Context!9722 Bool)) false)))))

(assert (=> start!574578 setRes!36463))

(assert (=> start!574578 e!3402723))

(declare-fun e!3402722 () Bool)

(assert (=> start!574578 e!3402722))

(declare-fun b!5501009 () Bool)

(declare-fun res!2344883 () Bool)

(assert (=> b!5501009 (=> res!2344883 e!3402721)))

(declare-fun isEmpty!34393 (List!62732) Bool)

(assert (=> b!5501009 (= res!2344883 (not (isEmpty!34393 (t!375969 zl!343))))))

(declare-fun b!5501010 () Bool)

(declare-fun tp!1513679 () Bool)

(assert (=> b!5501010 (= e!3402722 (and tp_is_empty!40207 tp!1513679))))

(assert (= (and start!574578 res!2344886) b!5501004))

(assert (= (and b!5501004 res!2344882) b!5500993))

(assert (= (and b!5500993 res!2344873) b!5501000))

(assert (= (and b!5501000 (not res!2344885)) b!5501009))

(assert (= (and b!5501009 (not res!2344883)) b!5501007))

(assert (= (and b!5501007 (not res!2344872)) b!5500998))

(assert (= (and b!5500998 (not res!2344881)) b!5500995))

(assert (= (and b!5500995 (not res!2344884)) b!5500999))

(assert (= (and b!5500999 (not res!2344879)) b!5500987))

(assert (= (and b!5500987 (not res!2344880)) b!5501006))

(assert (= (and b!5501006 (not res!2344875)) b!5500997))

(assert (= (and b!5500997 (not res!2344877)) b!5500992))

(assert (= (and b!5500992 (not res!2344878)) b!5501001))

(assert (= (and b!5501001 (not res!2344874)) b!5501008))

(assert (= (and b!5501008 (not res!2344871)) b!5501005))

(assert (= (and b!5501008 (not res!2344876)) b!5501003))

(assert (= (and start!574578 ((_ is ElementMatch!15477) r!7292)) b!5500991))

(assert (= (and start!574578 ((_ is Concat!24322) r!7292)) b!5500994))

(assert (= (and start!574578 ((_ is Star!15477) r!7292)) b!5501002))

(assert (= (and start!574578 ((_ is Union!15477) r!7292)) b!5500988))

(assert (= (and start!574578 condSetEmpty!36463) setIsEmpty!36463))

(assert (= (and start!574578 (not condSetEmpty!36463)) setNonEmpty!36463))

(assert (= setNonEmpty!36463 b!5500996))

(assert (= b!5500989 b!5500990))

(assert (= (and start!574578 ((_ is Cons!62608) zl!343)) b!5500989))

(assert (= (and start!574578 ((_ is Cons!62606) s!2326)) b!5501010))

(declare-fun m!6509098 () Bool)

(assert (=> setNonEmpty!36463 m!6509098))

(declare-fun m!6509100 () Bool)

(assert (=> b!5500997 m!6509100))

(declare-fun m!6509102 () Bool)

(assert (=> b!5500997 m!6509102))

(declare-fun m!6509104 () Bool)

(assert (=> start!574578 m!6509104))

(declare-fun m!6509106 () Bool)

(assert (=> b!5500989 m!6509106))

(declare-fun m!6509108 () Bool)

(assert (=> b!5501007 m!6509108))

(declare-fun m!6509110 () Bool)

(assert (=> b!5501006 m!6509110))

(declare-fun m!6509112 () Bool)

(assert (=> b!5501006 m!6509112))

(declare-fun m!6509114 () Bool)

(assert (=> b!5501001 m!6509114))

(declare-fun m!6509116 () Bool)

(assert (=> b!5501001 m!6509116))

(declare-fun m!6509118 () Bool)

(assert (=> b!5501003 m!6509118))

(declare-fun m!6509120 () Bool)

(assert (=> b!5501003 m!6509120))

(declare-fun m!6509122 () Bool)

(assert (=> b!5501003 m!6509122))

(declare-fun m!6509124 () Bool)

(assert (=> b!5501003 m!6509124))

(declare-fun m!6509126 () Bool)

(assert (=> b!5501003 m!6509126))

(declare-fun m!6509128 () Bool)

(assert (=> b!5501003 m!6509128))

(declare-fun m!6509130 () Bool)

(assert (=> b!5501003 m!6509130))

(declare-fun m!6509132 () Bool)

(assert (=> b!5501003 m!6509132))

(declare-fun m!6509134 () Bool)

(assert (=> b!5501000 m!6509134))

(declare-fun m!6509136 () Bool)

(assert (=> b!5501000 m!6509136))

(declare-fun m!6509138 () Bool)

(assert (=> b!5501000 m!6509138))

(declare-fun m!6509140 () Bool)

(assert (=> b!5500993 m!6509140))

(declare-fun m!6509142 () Bool)

(assert (=> b!5501008 m!6509142))

(declare-fun m!6509144 () Bool)

(assert (=> b!5501008 m!6509144))

(declare-fun m!6509146 () Bool)

(assert (=> b!5501005 m!6509146))

(declare-fun m!6509148 () Bool)

(assert (=> b!5501004 m!6509148))

(declare-fun m!6509150 () Bool)

(assert (=> b!5500995 m!6509150))

(assert (=> b!5500995 m!6509150))

(declare-fun m!6509152 () Bool)

(assert (=> b!5500995 m!6509152))

(declare-fun m!6509154 () Bool)

(assert (=> b!5500987 m!6509154))

(declare-fun m!6509156 () Bool)

(assert (=> b!5500987 m!6509156))

(declare-fun m!6509158 () Bool)

(assert (=> b!5500987 m!6509158))

(declare-fun m!6509160 () Bool)

(assert (=> b!5500987 m!6509160))

(declare-fun m!6509162 () Bool)

(assert (=> b!5500987 m!6509162))

(declare-fun m!6509164 () Bool)

(assert (=> b!5500987 m!6509164))

(declare-fun m!6509166 () Bool)

(assert (=> b!5501009 m!6509166))

(declare-fun m!6509168 () Bool)

(assert (=> b!5500992 m!6509168))

(declare-fun m!6509170 () Bool)

(assert (=> b!5500992 m!6509170))

(declare-fun m!6509172 () Bool)

(assert (=> b!5500992 m!6509172))

(declare-fun m!6509174 () Bool)

(assert (=> b!5500992 m!6509174))

(check-sat (not b!5501003) (not b!5501004) (not b!5501001) (not b!5500990) (not b!5500987) (not b!5500993) (not b!5500995) (not b!5500997) (not b!5500996) (not b!5501006) (not b!5501008) (not b!5501007) (not b!5500989) (not b!5501009) (not b!5500992) tp_is_empty!40207 (not b!5501002) (not b!5501010) (not b!5500994) (not b!5501000) (not b!5501005) (not start!574578) (not setNonEmpty!36463) (not b!5500988))
(check-sat)
