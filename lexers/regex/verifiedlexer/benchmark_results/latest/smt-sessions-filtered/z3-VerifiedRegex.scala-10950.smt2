; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566834 () Bool)

(assert start!566834)

(declare-fun b!5394847 () Bool)

(assert (=> b!5394847 true))

(assert (=> b!5394847 true))

(declare-fun lambda!280450 () Int)

(declare-fun lambda!280449 () Int)

(assert (=> b!5394847 (not (= lambda!280450 lambda!280449))))

(assert (=> b!5394847 true))

(assert (=> b!5394847 true))

(declare-fun b!5394844 () Bool)

(assert (=> b!5394844 true))

(declare-fun b!5394874 () Bool)

(assert (=> b!5394874 true))

(declare-fun b!5394835 () Bool)

(declare-fun res!2292627 () Bool)

(declare-fun e!3345423 () Bool)

(assert (=> b!5394835 (=> res!2292627 e!3345423)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30564 0))(
  ( (C!30565 (val!24984 Int)) )
))
(declare-datatypes ((Regex!15147 0))(
  ( (ElementMatch!15147 (c!940227 C!30564)) (Concat!23992 (regOne!30806 Regex!15147) (regTwo!30806 Regex!15147)) (EmptyExpr!15147) (Star!15147 (reg!15476 Regex!15147)) (EmptyLang!15147) (Union!15147 (regOne!30807 Regex!15147) (regTwo!30807 Regex!15147)) )
))
(declare-datatypes ((List!61740 0))(
  ( (Nil!61616) (Cons!61616 (h!68064 Regex!15147) (t!374963 List!61740)) )
))
(declare-datatypes ((Context!9062 0))(
  ( (Context!9063 (exprs!5031 List!61740)) )
))
(declare-fun z!1189 () (InoxSet Context!9062))

(declare-datatypes ((List!61741 0))(
  ( (Nil!61617) (Cons!61617 (h!68065 C!30564) (t!374964 List!61741)) )
))
(declare-fun s!2326 () List!61741)

(declare-fun matchZipper!1391 ((InoxSet Context!9062) List!61741) Bool)

(assert (=> b!5394835 (= res!2292627 (not (matchZipper!1391 z!1189 s!2326)))))

(declare-fun b!5394836 () Bool)

(declare-fun e!3345425 () Bool)

(declare-fun tp_is_empty!39547 () Bool)

(assert (=> b!5394836 (= e!3345425 tp_is_empty!39547)))

(declare-fun b!5394837 () Bool)

(declare-fun e!3345439 () Bool)

(declare-fun e!3345422 () Bool)

(assert (=> b!5394837 (= e!3345439 e!3345422)))

(declare-fun res!2292626 () Bool)

(assert (=> b!5394837 (=> res!2292626 e!3345422)))

(declare-fun lt!2198098 () (InoxSet Context!9062))

(declare-fun lt!2198107 () Bool)

(assert (=> b!5394837 (= res!2292626 (not (= lt!2198107 (matchZipper!1391 lt!2198098 (t!374964 s!2326)))))))

(declare-fun lt!2198104 () (InoxSet Context!9062))

(assert (=> b!5394837 (= lt!2198107 (matchZipper!1391 lt!2198104 s!2326))))

(declare-fun b!5394838 () Bool)

(declare-fun e!3345429 () Bool)

(declare-fun lt!2198101 () (InoxSet Context!9062))

(assert (=> b!5394838 (= e!3345429 (not (matchZipper!1391 lt!2198101 (t!374964 s!2326))))))

(declare-fun b!5394839 () Bool)

(declare-fun e!3345427 () Bool)

(declare-fun tp!1493422 () Bool)

(assert (=> b!5394839 (= e!3345427 tp!1493422)))

(declare-fun b!5394840 () Bool)

(declare-fun e!3345440 () Bool)

(declare-fun e!3345432 () Bool)

(assert (=> b!5394840 (= e!3345440 e!3345432)))

(declare-fun res!2292617 () Bool)

(assert (=> b!5394840 (=> (not res!2292617) (not e!3345432))))

(declare-fun r!7292 () Regex!15147)

(declare-fun lt!2198112 () Regex!15147)

(assert (=> b!5394840 (= res!2292617 (= r!7292 lt!2198112))))

(declare-datatypes ((List!61742 0))(
  ( (Nil!61618) (Cons!61618 (h!68066 Context!9062) (t!374965 List!61742)) )
))
(declare-fun zl!343 () List!61742)

(declare-fun unfocusZipper!889 (List!61742) Regex!15147)

(assert (=> b!5394840 (= lt!2198112 (unfocusZipper!889 zl!343))))

(declare-fun b!5394841 () Bool)

(declare-fun tp!1493421 () Bool)

(declare-fun tp!1493423 () Bool)

(assert (=> b!5394841 (= e!3345425 (and tp!1493421 tp!1493423))))

(declare-fun b!5394842 () Bool)

(declare-fun res!2292641 () Bool)

(declare-fun e!3345433 () Bool)

(assert (=> b!5394842 (=> res!2292641 e!3345433)))

(declare-fun lt!2198085 () Context!9062)

(declare-fun lt!2198091 () Regex!15147)

(assert (=> b!5394842 (= res!2292641 (not (= (unfocusZipper!889 (Cons!61618 lt!2198085 Nil!61618)) lt!2198091)))))

(declare-fun b!5394843 () Bool)

(declare-fun e!3345428 () Bool)

(assert (=> b!5394843 (= e!3345432 (not e!3345428))))

(declare-fun res!2292632 () Bool)

(assert (=> b!5394843 (=> res!2292632 e!3345428)))

(get-info :version)

(assert (=> b!5394843 (= res!2292632 (not ((_ is Cons!61618) zl!343)))))

(declare-fun lt!2198090 () Bool)

(declare-fun matchRSpec!2250 (Regex!15147 List!61741) Bool)

(assert (=> b!5394843 (= lt!2198090 (matchRSpec!2250 r!7292 s!2326))))

(declare-fun matchR!7332 (Regex!15147 List!61741) Bool)

(assert (=> b!5394843 (= lt!2198090 (matchR!7332 r!7292 s!2326))))

(declare-datatypes ((Unit!154110 0))(
  ( (Unit!154111) )
))
(declare-fun lt!2198102 () Unit!154110)

(declare-fun mainMatchTheorem!2250 (Regex!15147 List!61741) Unit!154110)

(assert (=> b!5394843 (= lt!2198102 (mainMatchTheorem!2250 r!7292 s!2326))))

(declare-fun e!3345424 () Bool)

(declare-fun e!3345431 () Bool)

(assert (=> b!5394844 (= e!3345424 e!3345431)))

(declare-fun res!2292629 () Bool)

(assert (=> b!5394844 (=> res!2292629 e!3345431)))

(assert (=> b!5394844 (= res!2292629 (or (and ((_ is ElementMatch!15147) (regOne!30806 r!7292)) (= (c!940227 (regOne!30806 r!7292)) (h!68065 s!2326))) ((_ is Union!15147) (regOne!30806 r!7292))))))

(declare-fun lt!2198087 () Unit!154110)

(declare-fun e!3345441 () Unit!154110)

(assert (=> b!5394844 (= lt!2198087 e!3345441)))

(declare-fun c!940226 () Bool)

(declare-fun lt!2198105 () Bool)

(assert (=> b!5394844 (= c!940226 lt!2198105)))

(declare-fun nullable!5316 (Regex!15147) Bool)

(assert (=> b!5394844 (= lt!2198105 (nullable!5316 (h!68064 (exprs!5031 (h!68066 zl!343)))))))

(declare-fun lambda!280451 () Int)

(declare-fun flatMap!874 ((InoxSet Context!9062) Int) (InoxSet Context!9062))

(declare-fun derivationStepZipperUp!519 (Context!9062 C!30564) (InoxSet Context!9062))

(assert (=> b!5394844 (= (flatMap!874 z!1189 lambda!280451) (derivationStepZipperUp!519 (h!68066 zl!343) (h!68065 s!2326)))))

(declare-fun lt!2198084 () Unit!154110)

(declare-fun lemmaFlatMapOnSingletonSet!406 ((InoxSet Context!9062) Context!9062 Int) Unit!154110)

(assert (=> b!5394844 (= lt!2198084 (lemmaFlatMapOnSingletonSet!406 z!1189 (h!68066 zl!343) lambda!280451))))

(declare-fun lt!2198089 () Context!9062)

(assert (=> b!5394844 (= lt!2198101 (derivationStepZipperUp!519 lt!2198089 (h!68065 s!2326)))))

(declare-fun lt!2198116 () (InoxSet Context!9062))

(declare-fun derivationStepZipperDown!595 (Regex!15147 Context!9062 C!30564) (InoxSet Context!9062))

(assert (=> b!5394844 (= lt!2198116 (derivationStepZipperDown!595 (h!68064 (exprs!5031 (h!68066 zl!343))) lt!2198089 (h!68065 s!2326)))))

(assert (=> b!5394844 (= lt!2198089 (Context!9063 (t!374963 (exprs!5031 (h!68066 zl!343)))))))

(declare-fun lt!2198086 () (InoxSet Context!9062))

(assert (=> b!5394844 (= lt!2198086 (derivationStepZipperUp!519 (Context!9063 (Cons!61616 (h!68064 (exprs!5031 (h!68066 zl!343))) (t!374963 (exprs!5031 (h!68066 zl!343))))) (h!68065 s!2326)))))

(declare-fun setElem!35069 () Context!9062)

(declare-fun setNonEmpty!35069 () Bool)

(declare-fun tp!1493417 () Bool)

(declare-fun setRes!35069 () Bool)

(declare-fun inv!81114 (Context!9062) Bool)

(assert (=> setNonEmpty!35069 (= setRes!35069 (and tp!1493417 (inv!81114 setElem!35069) e!3345427))))

(declare-fun setRest!35069 () (InoxSet Context!9062))

(assert (=> setNonEmpty!35069 (= z!1189 ((_ map or) (store ((as const (Array Context!9062 Bool)) false) setElem!35069 true) setRest!35069))))

(declare-fun b!5394845 () Bool)

(declare-fun e!3345420 () Bool)

(declare-fun e!3345435 () Bool)

(assert (=> b!5394845 (= e!3345420 e!3345435)))

(declare-fun res!2292647 () Bool)

(assert (=> b!5394845 (=> res!2292647 e!3345435)))

(declare-fun lt!2198097 () Context!9062)

(declare-fun lt!2198094 () Regex!15147)

(assert (=> b!5394845 (= res!2292647 (not (= (unfocusZipper!889 (Cons!61618 lt!2198097 Nil!61618)) lt!2198094)))))

(assert (=> b!5394845 (= lt!2198094 (Concat!23992 (reg!15476 (regOne!30806 r!7292)) lt!2198091))))

(declare-fun b!5394846 () Bool)

(declare-fun res!2292630 () Bool)

(assert (=> b!5394846 (=> res!2292630 e!3345423)))

(assert (=> b!5394846 (= res!2292630 (not lt!2198105))))

(assert (=> b!5394847 (= e!3345428 e!3345424)))

(declare-fun res!2292640 () Bool)

(assert (=> b!5394847 (=> res!2292640 e!3345424)))

(declare-fun lt!2198117 () Bool)

(assert (=> b!5394847 (= res!2292640 (or (not (= lt!2198090 lt!2198117)) ((_ is Nil!61617) s!2326)))))

(declare-fun Exists!2328 (Int) Bool)

(assert (=> b!5394847 (= (Exists!2328 lambda!280449) (Exists!2328 lambda!280450))))

(declare-fun lt!2198113 () Unit!154110)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!982 (Regex!15147 Regex!15147 List!61741) Unit!154110)

(assert (=> b!5394847 (= lt!2198113 (lemmaExistCutMatchRandMatchRSpecEquivalent!982 (regOne!30806 r!7292) (regTwo!30806 r!7292) s!2326))))

(assert (=> b!5394847 (= lt!2198117 (Exists!2328 lambda!280449))))

(declare-datatypes ((tuple2!64692 0))(
  ( (tuple2!64693 (_1!35649 List!61741) (_2!35649 List!61741)) )
))
(declare-datatypes ((Option!15258 0))(
  ( (None!15257) (Some!15257 (v!51286 tuple2!64692)) )
))
(declare-fun isDefined!11961 (Option!15258) Bool)

(declare-fun findConcatSeparation!1672 (Regex!15147 Regex!15147 List!61741 List!61741 List!61741) Option!15258)

(assert (=> b!5394847 (= lt!2198117 (isDefined!11961 (findConcatSeparation!1672 (regOne!30806 r!7292) (regTwo!30806 r!7292) Nil!61617 s!2326 s!2326)))))

(declare-fun lt!2198110 () Unit!154110)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1436 (Regex!15147 Regex!15147 List!61741) Unit!154110)

(assert (=> b!5394847 (= lt!2198110 (lemmaFindConcatSeparationEquivalentToExists!1436 (regOne!30806 r!7292) (regTwo!30806 r!7292) s!2326))))

(declare-fun b!5394848 () Bool)

(declare-fun e!3345436 () Bool)

(assert (=> b!5394848 (= e!3345436 true)))

(declare-fun lt!2198096 () (InoxSet Context!9062))

(declare-fun lt!2198095 () (InoxSet Context!9062))

(declare-fun findConcatSeparationZippers!4 ((InoxSet Context!9062) (InoxSet Context!9062) List!61741 List!61741 List!61741) Option!15258)

(assert (=> b!5394848 (isDefined!11961 (findConcatSeparationZippers!4 lt!2198096 lt!2198095 Nil!61617 s!2326 s!2326))))

(declare-fun lt!2198099 () Unit!154110)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!4 ((InoxSet Context!9062) Context!9062 List!61741) Unit!154110)

(assert (=> b!5394848 (= lt!2198099 (lemmaConcatZipperMatchesStringThenFindConcatDefined!4 lt!2198096 lt!2198085 s!2326))))

(declare-fun b!5394849 () Bool)

(declare-fun res!2292625 () Bool)

(declare-fun e!3345438 () Bool)

(assert (=> b!5394849 (=> res!2292625 e!3345438)))

(declare-fun lt!2198083 () Bool)

(assert (=> b!5394849 (= res!2292625 (or (not lt!2198083) (not lt!2198107)))))

(declare-fun b!5394850 () Bool)

(declare-fun res!2292628 () Bool)

(assert (=> b!5394850 (=> res!2292628 e!3345431)))

(assert (=> b!5394850 (= res!2292628 (or ((_ is Concat!23992) (regOne!30806 r!7292)) (not ((_ is Star!15147) (regOne!30806 r!7292)))))))

(declare-fun b!5394851 () Bool)

(declare-fun res!2292635 () Bool)

(assert (=> b!5394851 (=> res!2292635 e!3345428)))

(assert (=> b!5394851 (= res!2292635 (not ((_ is Cons!61616) (exprs!5031 (h!68066 zl!343)))))))

(declare-fun b!5394852 () Bool)

(declare-fun e!3345421 () Bool)

(assert (=> b!5394852 (= e!3345421 e!3345439)))

(declare-fun res!2292621 () Bool)

(assert (=> b!5394852 (=> res!2292621 e!3345439)))

(declare-fun lt!2198109 () (InoxSet Context!9062))

(assert (=> b!5394852 (= res!2292621 (not (= lt!2198098 lt!2198109)))))

(assert (=> b!5394852 (= (flatMap!874 lt!2198104 lambda!280451) (derivationStepZipperUp!519 lt!2198097 (h!68065 s!2326)))))

(declare-fun lt!2198108 () Unit!154110)

(assert (=> b!5394852 (= lt!2198108 (lemmaFlatMapOnSingletonSet!406 lt!2198104 lt!2198097 lambda!280451))))

(declare-fun lt!2198100 () (InoxSet Context!9062))

(assert (=> b!5394852 (= lt!2198100 (derivationStepZipperUp!519 lt!2198097 (h!68065 s!2326)))))

(declare-fun derivationStepZipper!1386 ((InoxSet Context!9062) C!30564) (InoxSet Context!9062))

(assert (=> b!5394852 (= lt!2198098 (derivationStepZipper!1386 lt!2198104 (h!68065 s!2326)))))

(assert (=> b!5394852 (= lt!2198104 (store ((as const (Array Context!9062 Bool)) false) lt!2198097 true))))

(declare-fun lt!2198115 () List!61740)

(assert (=> b!5394852 (= lt!2198097 (Context!9063 (Cons!61616 (reg!15476 (regOne!30806 r!7292)) lt!2198115)))))

(declare-fun b!5394853 () Bool)

(declare-fun res!2292622 () Bool)

(assert (=> b!5394853 (=> res!2292622 e!3345428)))

(declare-fun isEmpty!33617 (List!61742) Bool)

(assert (=> b!5394853 (= res!2292622 (not (isEmpty!33617 (t!374965 zl!343))))))

(declare-fun b!5394854 () Bool)

(declare-fun res!2292619 () Bool)

(assert (=> b!5394854 (=> res!2292619 e!3345428)))

(declare-fun generalisedConcat!816 (List!61740) Regex!15147)

(assert (=> b!5394854 (= res!2292619 (not (= r!7292 (generalisedConcat!816 (exprs!5031 (h!68066 zl!343))))))))

(declare-fun b!5394855 () Bool)

(declare-fun res!2292646 () Bool)

(assert (=> b!5394855 (=> res!2292646 e!3345424)))

(declare-fun isEmpty!33618 (List!61740) Bool)

(assert (=> b!5394855 (= res!2292646 (isEmpty!33618 (t!374963 (exprs!5031 (h!68066 zl!343)))))))

(declare-fun tp!1493416 () Bool)

(declare-fun e!3345434 () Bool)

(declare-fun b!5394856 () Bool)

(declare-fun e!3345426 () Bool)

(assert (=> b!5394856 (= e!3345426 (and (inv!81114 (h!68066 zl!343)) e!3345434 tp!1493416))))

(declare-fun b!5394857 () Bool)

(declare-fun res!2292636 () Bool)

(assert (=> b!5394857 (=> res!2292636 e!3345431)))

(declare-fun e!3345442 () Bool)

(assert (=> b!5394857 (= res!2292636 e!3345442)))

(declare-fun res!2292645 () Bool)

(assert (=> b!5394857 (=> (not res!2292645) (not e!3345442))))

(assert (=> b!5394857 (= res!2292645 ((_ is Concat!23992) (regOne!30806 r!7292)))))

(declare-fun b!5394858 () Bool)

(assert (=> b!5394858 (= e!3345422 e!3345420)))

(declare-fun res!2292643 () Bool)

(assert (=> b!5394858 (=> res!2292643 e!3345420)))

(assert (=> b!5394858 (= res!2292643 (not (= r!7292 lt!2198091)))))

(declare-fun lt!2198118 () Regex!15147)

(assert (=> b!5394858 (= lt!2198091 (Concat!23992 lt!2198118 (regTwo!30806 r!7292)))))

(declare-fun b!5394859 () Bool)

(declare-fun tp!1493420 () Bool)

(declare-fun tp!1493418 () Bool)

(assert (=> b!5394859 (= e!3345425 (and tp!1493420 tp!1493418))))

(declare-fun b!5394860 () Bool)

(assert (=> b!5394860 (= e!3345435 e!3345433)))

(declare-fun res!2292638 () Bool)

(assert (=> b!5394860 (=> res!2292638 e!3345433)))

(declare-fun lt!2198092 () Context!9062)

(assert (=> b!5394860 (= res!2292638 (not (= (unfocusZipper!889 (Cons!61618 lt!2198092 Nil!61618)) (reg!15476 (regOne!30806 r!7292)))))))

(assert (=> b!5394860 (= (flatMap!874 lt!2198095 lambda!280451) (derivationStepZipperUp!519 lt!2198085 (h!68065 s!2326)))))

(declare-fun lt!2198120 () Unit!154110)

(assert (=> b!5394860 (= lt!2198120 (lemmaFlatMapOnSingletonSet!406 lt!2198095 lt!2198085 lambda!280451))))

(assert (=> b!5394860 (= (flatMap!874 lt!2198096 lambda!280451) (derivationStepZipperUp!519 lt!2198092 (h!68065 s!2326)))))

(declare-fun lt!2198114 () Unit!154110)

(assert (=> b!5394860 (= lt!2198114 (lemmaFlatMapOnSingletonSet!406 lt!2198096 lt!2198092 lambda!280451))))

(declare-fun lt!2198088 () (InoxSet Context!9062))

(assert (=> b!5394860 (= lt!2198088 (derivationStepZipperUp!519 lt!2198085 (h!68065 s!2326)))))

(declare-fun lt!2198103 () (InoxSet Context!9062))

(assert (=> b!5394860 (= lt!2198103 (derivationStepZipperUp!519 lt!2198092 (h!68065 s!2326)))))

(assert (=> b!5394860 (= lt!2198095 (store ((as const (Array Context!9062 Bool)) false) lt!2198085 true))))

(assert (=> b!5394860 (= lt!2198096 (store ((as const (Array Context!9062 Bool)) false) lt!2198092 true))))

(assert (=> b!5394860 (= lt!2198092 (Context!9063 (Cons!61616 (reg!15476 (regOne!30806 r!7292)) Nil!61616)))))

(declare-fun b!5394861 () Bool)

(assert (=> b!5394861 (= e!3345442 (nullable!5316 (regOne!30806 (regOne!30806 r!7292))))))

(declare-fun b!5394862 () Bool)

(declare-fun Unit!154112 () Unit!154110)

(assert (=> b!5394862 (= e!3345441 Unit!154112)))

(declare-fun lt!2198119 () Unit!154110)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!384 ((InoxSet Context!9062) (InoxSet Context!9062) List!61741) Unit!154110)

(assert (=> b!5394862 (= lt!2198119 (lemmaZipperConcatMatchesSameAsBothZippers!384 lt!2198116 lt!2198101 (t!374964 s!2326)))))

(declare-fun res!2292618 () Bool)

(assert (=> b!5394862 (= res!2292618 (matchZipper!1391 lt!2198116 (t!374964 s!2326)))))

(declare-fun e!3345437 () Bool)

(assert (=> b!5394862 (=> res!2292618 e!3345437)))

(assert (=> b!5394862 (= (matchZipper!1391 ((_ map or) lt!2198116 lt!2198101) (t!374964 s!2326)) e!3345437)))

(declare-fun b!5394863 () Bool)

(declare-fun res!2292639 () Bool)

(assert (=> b!5394863 (=> res!2292639 e!3345422)))

(assert (=> b!5394863 (= res!2292639 (not (= lt!2198112 r!7292)))))

(declare-fun b!5394864 () Bool)

(assert (=> b!5394864 (= e!3345423 e!3345438)))

(declare-fun res!2292644 () Bool)

(assert (=> b!5394864 (=> res!2292644 e!3345438)))

(assert (=> b!5394864 (= res!2292644 e!3345429)))

(declare-fun res!2292633 () Bool)

(assert (=> b!5394864 (=> (not res!2292633) (not e!3345429))))

(assert (=> b!5394864 (= res!2292633 (not lt!2198083))))

(assert (=> b!5394864 (= lt!2198083 (matchZipper!1391 lt!2198116 (t!374964 s!2326)))))

(declare-fun setIsEmpty!35069 () Bool)

(assert (=> setIsEmpty!35069 setRes!35069))

(declare-fun b!5394865 () Bool)

(declare-fun res!2292623 () Bool)

(assert (=> b!5394865 (=> res!2292623 e!3345428)))

(assert (=> b!5394865 (= res!2292623 (or ((_ is EmptyExpr!15147) r!7292) ((_ is EmptyLang!15147) r!7292) ((_ is ElementMatch!15147) r!7292) ((_ is Union!15147) r!7292) (not ((_ is Concat!23992) r!7292))))))

(declare-fun b!5394866 () Bool)

(assert (=> b!5394866 (= e!3345431 e!3345421)))

(declare-fun res!2292620 () Bool)

(assert (=> b!5394866 (=> res!2292620 e!3345421)))

(assert (=> b!5394866 (= res!2292620 (not (= lt!2198116 lt!2198109)))))

(assert (=> b!5394866 (= lt!2198109 (derivationStepZipperDown!595 (reg!15476 (regOne!30806 r!7292)) lt!2198085 (h!68065 s!2326)))))

(assert (=> b!5394866 (= lt!2198085 (Context!9063 lt!2198115))))

(assert (=> b!5394866 (= lt!2198115 (Cons!61616 lt!2198118 (t!374963 (exprs!5031 (h!68066 zl!343)))))))

(assert (=> b!5394866 (= lt!2198118 (Star!15147 (reg!15476 (regOne!30806 r!7292))))))

(declare-fun b!5394867 () Bool)

(declare-fun res!2292624 () Bool)

(assert (=> b!5394867 (=> (not res!2292624) (not e!3345440))))

(declare-fun toList!8931 ((InoxSet Context!9062)) List!61742)

(assert (=> b!5394867 (= res!2292624 (= (toList!8931 z!1189) zl!343))))

(declare-fun b!5394868 () Bool)

(assert (=> b!5394868 (= e!3345433 e!3345423)))

(declare-fun res!2292642 () Bool)

(assert (=> b!5394868 (=> res!2292642 e!3345423)))

(assert (=> b!5394868 (= res!2292642 lt!2198090)))

(assert (=> b!5394868 (= (matchR!7332 lt!2198094 s!2326) (matchRSpec!2250 lt!2198094 s!2326))))

(declare-fun lt!2198111 () Unit!154110)

(assert (=> b!5394868 (= lt!2198111 (mainMatchTheorem!2250 lt!2198094 s!2326))))

(declare-fun b!5394869 () Bool)

(declare-fun Unit!154113 () Unit!154110)

(assert (=> b!5394869 (= e!3345441 Unit!154113)))

(declare-fun res!2292637 () Bool)

(assert (=> start!566834 (=> (not res!2292637) (not e!3345440))))

(declare-fun validRegex!6883 (Regex!15147) Bool)

(assert (=> start!566834 (= res!2292637 (validRegex!6883 r!7292))))

(assert (=> start!566834 e!3345440))

(assert (=> start!566834 e!3345425))

(declare-fun condSetEmpty!35069 () Bool)

(assert (=> start!566834 (= condSetEmpty!35069 (= z!1189 ((as const (Array Context!9062 Bool)) false)))))

(assert (=> start!566834 setRes!35069))

(assert (=> start!566834 e!3345426))

(declare-fun e!3345430 () Bool)

(assert (=> start!566834 e!3345430))

(declare-fun b!5394870 () Bool)

(declare-fun tp!1493424 () Bool)

(assert (=> b!5394870 (= e!3345425 tp!1493424)))

(declare-fun b!5394871 () Bool)

(assert (=> b!5394871 (= e!3345437 (matchZipper!1391 lt!2198101 (t!374964 s!2326)))))

(declare-fun b!5394872 () Bool)

(declare-fun tp!1493425 () Bool)

(assert (=> b!5394872 (= e!3345434 tp!1493425)))

(declare-fun b!5394873 () Bool)

(declare-fun res!2292631 () Bool)

(assert (=> b!5394873 (=> res!2292631 e!3345428)))

(declare-fun generalisedUnion!1076 (List!61740) Regex!15147)

(declare-fun unfocusZipperList!589 (List!61742) List!61740)

(assert (=> b!5394873 (= res!2292631 (not (= r!7292 (generalisedUnion!1076 (unfocusZipperList!589 zl!343)))))))

(assert (=> b!5394874 (= e!3345438 e!3345436)))

(declare-fun res!2292634 () Bool)

(assert (=> b!5394874 (=> res!2292634 e!3345436)))

(declare-fun appendTo!6 ((InoxSet Context!9062) Context!9062) (InoxSet Context!9062))

(assert (=> b!5394874 (= res!2292634 (not (= (appendTo!6 lt!2198096 lt!2198085) lt!2198104)))))

(declare-fun lambda!280452 () Int)

(declare-fun map!14105 ((InoxSet Context!9062) Int) (InoxSet Context!9062))

(declare-fun ++!13468 (List!61740 List!61740) List!61740)

(assert (=> b!5394874 (= (map!14105 lt!2198096 lambda!280452) (store ((as const (Array Context!9062 Bool)) false) (Context!9063 (++!13468 (Cons!61616 (reg!15476 (regOne!30806 r!7292)) Nil!61616) lt!2198115)) true))))

(declare-fun lambda!280453 () Int)

(declare-fun lt!2198093 () Unit!154110)

(declare-fun lemmaConcatPreservesForall!172 (List!61740 List!61740 Int) Unit!154110)

(assert (=> b!5394874 (= lt!2198093 (lemmaConcatPreservesForall!172 (Cons!61616 (reg!15476 (regOne!30806 r!7292)) Nil!61616) lt!2198115 lambda!280453))))

(declare-fun lt!2198106 () Unit!154110)

(declare-fun lemmaMapOnSingletonSet!6 ((InoxSet Context!9062) Context!9062 Int) Unit!154110)

(assert (=> b!5394874 (= lt!2198106 (lemmaMapOnSingletonSet!6 lt!2198096 lt!2198092 lambda!280452))))

(declare-fun b!5394875 () Bool)

(declare-fun tp!1493419 () Bool)

(assert (=> b!5394875 (= e!3345430 (and tp_is_empty!39547 tp!1493419))))

(assert (= (and start!566834 res!2292637) b!5394867))

(assert (= (and b!5394867 res!2292624) b!5394840))

(assert (= (and b!5394840 res!2292617) b!5394843))

(assert (= (and b!5394843 (not res!2292632)) b!5394853))

(assert (= (and b!5394853 (not res!2292622)) b!5394854))

(assert (= (and b!5394854 (not res!2292619)) b!5394851))

(assert (= (and b!5394851 (not res!2292635)) b!5394873))

(assert (= (and b!5394873 (not res!2292631)) b!5394865))

(assert (= (and b!5394865 (not res!2292623)) b!5394847))

(assert (= (and b!5394847 (not res!2292640)) b!5394855))

(assert (= (and b!5394855 (not res!2292646)) b!5394844))

(assert (= (and b!5394844 c!940226) b!5394862))

(assert (= (and b!5394844 (not c!940226)) b!5394869))

(assert (= (and b!5394862 (not res!2292618)) b!5394871))

(assert (= (and b!5394844 (not res!2292629)) b!5394857))

(assert (= (and b!5394857 res!2292645) b!5394861))

(assert (= (and b!5394857 (not res!2292636)) b!5394850))

(assert (= (and b!5394850 (not res!2292628)) b!5394866))

(assert (= (and b!5394866 (not res!2292620)) b!5394852))

(assert (= (and b!5394852 (not res!2292621)) b!5394837))

(assert (= (and b!5394837 (not res!2292626)) b!5394863))

(assert (= (and b!5394863 (not res!2292639)) b!5394858))

(assert (= (and b!5394858 (not res!2292643)) b!5394845))

(assert (= (and b!5394845 (not res!2292647)) b!5394860))

(assert (= (and b!5394860 (not res!2292638)) b!5394842))

(assert (= (and b!5394842 (not res!2292641)) b!5394868))

(assert (= (and b!5394868 (not res!2292642)) b!5394835))

(assert (= (and b!5394835 (not res!2292627)) b!5394846))

(assert (= (and b!5394846 (not res!2292630)) b!5394864))

(assert (= (and b!5394864 res!2292633) b!5394838))

(assert (= (and b!5394864 (not res!2292644)) b!5394849))

(assert (= (and b!5394849 (not res!2292625)) b!5394874))

(assert (= (and b!5394874 (not res!2292634)) b!5394848))

(assert (= (and start!566834 ((_ is ElementMatch!15147) r!7292)) b!5394836))

(assert (= (and start!566834 ((_ is Concat!23992) r!7292)) b!5394859))

(assert (= (and start!566834 ((_ is Star!15147) r!7292)) b!5394870))

(assert (= (and start!566834 ((_ is Union!15147) r!7292)) b!5394841))

(assert (= (and start!566834 condSetEmpty!35069) setIsEmpty!35069))

(assert (= (and start!566834 (not condSetEmpty!35069)) setNonEmpty!35069))

(assert (= setNonEmpty!35069 b!5394839))

(assert (= b!5394856 b!5394872))

(assert (= (and start!566834 ((_ is Cons!61618) zl!343)) b!5394856))

(assert (= (and start!566834 ((_ is Cons!61617) s!2326)) b!5394875))

(declare-fun m!6419846 () Bool)

(assert (=> b!5394867 m!6419846))

(declare-fun m!6419848 () Bool)

(assert (=> b!5394848 m!6419848))

(assert (=> b!5394848 m!6419848))

(declare-fun m!6419850 () Bool)

(assert (=> b!5394848 m!6419850))

(declare-fun m!6419852 () Bool)

(assert (=> b!5394848 m!6419852))

(declare-fun m!6419854 () Bool)

(assert (=> b!5394837 m!6419854))

(declare-fun m!6419856 () Bool)

(assert (=> b!5394837 m!6419856))

(declare-fun m!6419858 () Bool)

(assert (=> b!5394854 m!6419858))

(declare-fun m!6419860 () Bool)

(assert (=> b!5394862 m!6419860))

(declare-fun m!6419862 () Bool)

(assert (=> b!5394862 m!6419862))

(declare-fun m!6419864 () Bool)

(assert (=> b!5394862 m!6419864))

(declare-fun m!6419866 () Bool)

(assert (=> b!5394840 m!6419866))

(declare-fun m!6419868 () Bool)

(assert (=> b!5394852 m!6419868))

(declare-fun m!6419870 () Bool)

(assert (=> b!5394852 m!6419870))

(declare-fun m!6419872 () Bool)

(assert (=> b!5394852 m!6419872))

(declare-fun m!6419874 () Bool)

(assert (=> b!5394852 m!6419874))

(declare-fun m!6419876 () Bool)

(assert (=> b!5394852 m!6419876))

(declare-fun m!6419878 () Bool)

(assert (=> b!5394844 m!6419878))

(declare-fun m!6419880 () Bool)

(assert (=> b!5394844 m!6419880))

(declare-fun m!6419882 () Bool)

(assert (=> b!5394844 m!6419882))

(declare-fun m!6419884 () Bool)

(assert (=> b!5394844 m!6419884))

(declare-fun m!6419886 () Bool)

(assert (=> b!5394844 m!6419886))

(declare-fun m!6419888 () Bool)

(assert (=> b!5394844 m!6419888))

(declare-fun m!6419890 () Bool)

(assert (=> b!5394844 m!6419890))

(declare-fun m!6419892 () Bool)

(assert (=> b!5394861 m!6419892))

(declare-fun m!6419894 () Bool)

(assert (=> b!5394835 m!6419894))

(declare-fun m!6419896 () Bool)

(assert (=> b!5394860 m!6419896))

(declare-fun m!6419898 () Bool)

(assert (=> b!5394860 m!6419898))

(declare-fun m!6419900 () Bool)

(assert (=> b!5394860 m!6419900))

(declare-fun m!6419902 () Bool)

(assert (=> b!5394860 m!6419902))

(declare-fun m!6419904 () Bool)

(assert (=> b!5394860 m!6419904))

(declare-fun m!6419906 () Bool)

(assert (=> b!5394860 m!6419906))

(declare-fun m!6419908 () Bool)

(assert (=> b!5394860 m!6419908))

(declare-fun m!6419910 () Bool)

(assert (=> b!5394860 m!6419910))

(declare-fun m!6419912 () Bool)

(assert (=> b!5394860 m!6419912))

(declare-fun m!6419914 () Bool)

(assert (=> b!5394847 m!6419914))

(declare-fun m!6419916 () Bool)

(assert (=> b!5394847 m!6419916))

(declare-fun m!6419918 () Bool)

(assert (=> b!5394847 m!6419918))

(declare-fun m!6419920 () Bool)

(assert (=> b!5394847 m!6419920))

(assert (=> b!5394847 m!6419914))

(declare-fun m!6419922 () Bool)

(assert (=> b!5394847 m!6419922))

(assert (=> b!5394847 m!6419916))

(declare-fun m!6419924 () Bool)

(assert (=> b!5394847 m!6419924))

(declare-fun m!6419926 () Bool)

(assert (=> start!566834 m!6419926))

(declare-fun m!6419928 () Bool)

(assert (=> b!5394855 m!6419928))

(declare-fun m!6419930 () Bool)

(assert (=> b!5394853 m!6419930))

(declare-fun m!6419932 () Bool)

(assert (=> b!5394845 m!6419932))

(assert (=> b!5394864 m!6419862))

(declare-fun m!6419934 () Bool)

(assert (=> b!5394868 m!6419934))

(declare-fun m!6419936 () Bool)

(assert (=> b!5394868 m!6419936))

(declare-fun m!6419938 () Bool)

(assert (=> b!5394868 m!6419938))

(declare-fun m!6419940 () Bool)

(assert (=> b!5394871 m!6419940))

(declare-fun m!6419942 () Bool)

(assert (=> b!5394873 m!6419942))

(assert (=> b!5394873 m!6419942))

(declare-fun m!6419944 () Bool)

(assert (=> b!5394873 m!6419944))

(declare-fun m!6419946 () Bool)

(assert (=> b!5394856 m!6419946))

(declare-fun m!6419948 () Bool)

(assert (=> b!5394866 m!6419948))

(declare-fun m!6419950 () Bool)

(assert (=> b!5394874 m!6419950))

(declare-fun m!6419952 () Bool)

(assert (=> b!5394874 m!6419952))

(declare-fun m!6419954 () Bool)

(assert (=> b!5394874 m!6419954))

(declare-fun m!6419956 () Bool)

(assert (=> b!5394874 m!6419956))

(declare-fun m!6419958 () Bool)

(assert (=> b!5394874 m!6419958))

(declare-fun m!6419960 () Bool)

(assert (=> b!5394874 m!6419960))

(assert (=> b!5394838 m!6419940))

(declare-fun m!6419962 () Bool)

(assert (=> b!5394843 m!6419962))

(declare-fun m!6419964 () Bool)

(assert (=> b!5394843 m!6419964))

(declare-fun m!6419966 () Bool)

(assert (=> b!5394843 m!6419966))

(declare-fun m!6419968 () Bool)

(assert (=> setNonEmpty!35069 m!6419968))

(declare-fun m!6419970 () Bool)

(assert (=> b!5394842 m!6419970))

(check-sat tp_is_empty!39547 (not b!5394861) (not b!5394860) (not b!5394864) (not b!5394852) (not b!5394838) (not b!5394840) (not b!5394873) (not b!5394847) (not b!5394853) (not setNonEmpty!35069) (not b!5394856) (not b!5394839) (not b!5394843) (not start!566834) (not b!5394874) (not b!5394842) (not b!5394870) (not b!5394835) (not b!5394867) (not b!5394854) (not b!5394845) (not b!5394837) (not b!5394872) (not b!5394848) (not b!5394844) (not b!5394859) (not b!5394875) (not b!5394862) (not b!5394868) (not b!5394855) (not b!5394866) (not b!5394871) (not b!5394841))
(check-sat)
