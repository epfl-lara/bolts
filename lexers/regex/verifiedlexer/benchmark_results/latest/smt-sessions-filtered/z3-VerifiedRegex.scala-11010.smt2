; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570858 () Bool)

(assert start!570858)

(declare-fun b!5444053 () Bool)

(assert (=> b!5444053 true))

(assert (=> b!5444053 true))

(declare-fun lambda!286588 () Int)

(declare-fun lambda!286587 () Int)

(assert (=> b!5444053 (not (= lambda!286588 lambda!286587))))

(assert (=> b!5444053 true))

(assert (=> b!5444053 true))

(declare-fun b!5444056 () Bool)

(assert (=> b!5444056 true))

(declare-fun e!3372223 () Bool)

(declare-fun b!5444034 () Bool)

(declare-datatypes ((C!30804 0))(
  ( (C!30805 (val!25104 Int)) )
))
(declare-datatypes ((Regex!15267 0))(
  ( (ElementMatch!15267 (c!950107 C!30804)) (Concat!24112 (regOne!31046 Regex!15267) (regTwo!31046 Regex!15267)) (EmptyExpr!15267) (Star!15267 (reg!15596 Regex!15267)) (EmptyLang!15267) (Union!15267 (regOne!31047 Regex!15267) (regTwo!31047 Regex!15267)) )
))
(declare-datatypes ((List!62100 0))(
  ( (Nil!61976) (Cons!61976 (h!68424 Regex!15267) (t!375327 List!62100)) )
))
(declare-datatypes ((Context!9302 0))(
  ( (Context!9303 (exprs!5151 List!62100)) )
))
(declare-datatypes ((List!62101 0))(
  ( (Nil!61977) (Cons!61977 (h!68425 Context!9302) (t!375328 List!62101)) )
))
(declare-fun zl!343 () List!62101)

(declare-fun e!3372219 () Bool)

(declare-fun tp!1500700 () Bool)

(declare-fun inv!81414 (Context!9302) Bool)

(assert (=> b!5444034 (= e!3372219 (and (inv!81414 (h!68425 zl!343)) e!3372223 tp!1500700))))

(declare-fun b!5444035 () Bool)

(declare-fun e!3372218 () Bool)

(declare-fun r!7292 () Regex!15267)

(declare-fun nullable!5436 (Regex!15267) Bool)

(assert (=> b!5444035 (= e!3372218 (nullable!5436 (regOne!31046 (regOne!31046 r!7292))))))

(declare-fun b!5444036 () Bool)

(declare-fun e!3372224 () Bool)

(declare-fun e!3372216 () Bool)

(assert (=> b!5444036 (= e!3372224 (not e!3372216))))

(declare-fun res!2317784 () Bool)

(assert (=> b!5444036 (=> res!2317784 e!3372216)))

(get-info :version)

(assert (=> b!5444036 (= res!2317784 (not ((_ is Cons!61977) zl!343)))))

(declare-fun lt!2219636 () Bool)

(declare-datatypes ((List!62102 0))(
  ( (Nil!61978) (Cons!61978 (h!68426 C!30804) (t!375329 List!62102)) )
))
(declare-fun s!2326 () List!62102)

(declare-fun matchRSpec!2370 (Regex!15267 List!62102) Bool)

(assert (=> b!5444036 (= lt!2219636 (matchRSpec!2370 r!7292 s!2326))))

(declare-fun matchR!7452 (Regex!15267 List!62102) Bool)

(assert (=> b!5444036 (= lt!2219636 (matchR!7452 r!7292 s!2326))))

(declare-datatypes ((Unit!154610 0))(
  ( (Unit!154611) )
))
(declare-fun lt!2219629 () Unit!154610)

(declare-fun mainMatchTheorem!2370 (Regex!15267 List!62102) Unit!154610)

(assert (=> b!5444036 (= lt!2219629 (mainMatchTheorem!2370 r!7292 s!2326))))

(declare-fun b!5444037 () Bool)

(declare-fun e!3372220 () Unit!154610)

(declare-fun Unit!154612 () Unit!154610)

(assert (=> b!5444037 (= e!3372220 Unit!154612)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2219634 () (InoxSet Context!9302))

(declare-fun lt!2219628 () (InoxSet Context!9302))

(declare-fun lt!2219627 () Unit!154610)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!504 ((InoxSet Context!9302) (InoxSet Context!9302) List!62102) Unit!154610)

(assert (=> b!5444037 (= lt!2219627 (lemmaZipperConcatMatchesSameAsBothZippers!504 lt!2219634 lt!2219628 (t!375329 s!2326)))))

(declare-fun res!2317781 () Bool)

(declare-fun matchZipper!1511 ((InoxSet Context!9302) List!62102) Bool)

(assert (=> b!5444037 (= res!2317781 (matchZipper!1511 lt!2219634 (t!375329 s!2326)))))

(declare-fun e!3372226 () Bool)

(assert (=> b!5444037 (=> res!2317781 e!3372226)))

(assert (=> b!5444037 (= (matchZipper!1511 ((_ map or) lt!2219634 lt!2219628) (t!375329 s!2326)) e!3372226)))

(declare-fun b!5444038 () Bool)

(declare-fun res!2317774 () Bool)

(assert (=> b!5444038 (=> res!2317774 e!3372216)))

(declare-fun generalisedUnion!1196 (List!62100) Regex!15267)

(declare-fun unfocusZipperList!709 (List!62101) List!62100)

(assert (=> b!5444038 (= res!2317774 (not (= r!7292 (generalisedUnion!1196 (unfocusZipperList!709 zl!343)))))))

(declare-fun b!5444039 () Bool)

(declare-fun res!2317780 () Bool)

(assert (=> b!5444039 (=> res!2317780 e!3372216)))

(declare-fun generalisedConcat!936 (List!62100) Regex!15267)

(assert (=> b!5444039 (= res!2317780 (not (= r!7292 (generalisedConcat!936 (exprs!5151 (h!68425 zl!343))))))))

(declare-fun b!5444040 () Bool)

(declare-fun res!2317772 () Bool)

(assert (=> b!5444040 (=> res!2317772 e!3372216)))

(assert (=> b!5444040 (= res!2317772 (not ((_ is Cons!61976) (exprs!5151 (h!68425 zl!343)))))))

(declare-fun b!5444041 () Bool)

(declare-fun e!3372222 () Bool)

(declare-fun tp!1500701 () Bool)

(declare-fun tp!1500695 () Bool)

(assert (=> b!5444041 (= e!3372222 (and tp!1500701 tp!1500695))))

(declare-fun b!5444042 () Bool)

(declare-fun res!2317778 () Bool)

(assert (=> b!5444042 (=> (not res!2317778) (not e!3372224))))

(declare-fun unfocusZipper!1009 (List!62101) Regex!15267)

(assert (=> b!5444042 (= res!2317778 (= r!7292 (unfocusZipper!1009 zl!343)))))

(declare-fun b!5444043 () Bool)

(declare-fun res!2317785 () Bool)

(declare-fun e!3372217 () Bool)

(assert (=> b!5444043 (=> res!2317785 e!3372217)))

(declare-fun isEmpty!33962 (List!62100) Bool)

(assert (=> b!5444043 (= res!2317785 (isEmpty!33962 (t!375327 (exprs!5151 (h!68425 zl!343)))))))

(declare-fun b!5444044 () Bool)

(declare-fun tp!1500692 () Bool)

(assert (=> b!5444044 (= e!3372222 tp!1500692)))

(declare-fun b!5444046 () Bool)

(declare-fun e!3372221 () Bool)

(assert (=> b!5444046 (= e!3372221 true)))

(assert (=> b!5444046 (not (matchZipper!1511 lt!2219634 (t!375329 s!2326)))))

(declare-fun lt!2219630 () Unit!154610)

(declare-fun lemmaEmptyZipperMatchesNothing!22 ((InoxSet Context!9302) List!62102) Unit!154610)

(assert (=> b!5444046 (= lt!2219630 (lemmaEmptyZipperMatchesNothing!22 lt!2219634 (t!375329 s!2326)))))

(declare-fun b!5444047 () Bool)

(declare-fun res!2317783 () Bool)

(assert (=> b!5444047 (=> res!2317783 e!3372221)))

(assert (=> b!5444047 (= res!2317783 (or ((_ is Concat!24112) (regOne!31046 r!7292)) ((_ is Star!15267) (regOne!31046 r!7292)) ((_ is EmptyExpr!15267) (regOne!31046 r!7292))))))

(declare-fun b!5444048 () Bool)

(declare-fun res!2317773 () Bool)

(assert (=> b!5444048 (=> res!2317773 e!3372221)))

(assert (=> b!5444048 (= res!2317773 e!3372218)))

(declare-fun res!2317782 () Bool)

(assert (=> b!5444048 (=> (not res!2317782) (not e!3372218))))

(assert (=> b!5444048 (= res!2317782 ((_ is Concat!24112) (regOne!31046 r!7292)))))

(declare-fun b!5444049 () Bool)

(declare-fun e!3372215 () Bool)

(declare-fun tp_is_empty!39787 () Bool)

(declare-fun tp!1500697 () Bool)

(assert (=> b!5444049 (= e!3372215 (and tp_is_empty!39787 tp!1500697))))

(declare-fun setNonEmpty!35611 () Bool)

(declare-fun tp!1500698 () Bool)

(declare-fun e!3372225 () Bool)

(declare-fun setRes!35611 () Bool)

(declare-fun setElem!35611 () Context!9302)

(assert (=> setNonEmpty!35611 (= setRes!35611 (and tp!1500698 (inv!81414 setElem!35611) e!3372225))))

(declare-fun z!1189 () (InoxSet Context!9302))

(declare-fun setRest!35611 () (InoxSet Context!9302))

(assert (=> setNonEmpty!35611 (= z!1189 ((_ map or) (store ((as const (Array Context!9302 Bool)) false) setElem!35611 true) setRest!35611))))

(declare-fun b!5444050 () Bool)

(assert (=> b!5444050 (= e!3372222 tp_is_empty!39787)))

(declare-fun b!5444051 () Bool)

(declare-fun res!2317771 () Bool)

(assert (=> b!5444051 (=> (not res!2317771) (not e!3372224))))

(declare-fun toList!9051 ((InoxSet Context!9302)) List!62101)

(assert (=> b!5444051 (= res!2317771 (= (toList!9051 z!1189) zl!343))))

(declare-fun setIsEmpty!35611 () Bool)

(assert (=> setIsEmpty!35611 setRes!35611))

(declare-fun b!5444052 () Bool)

(assert (=> b!5444052 (= e!3372226 (matchZipper!1511 lt!2219628 (t!375329 s!2326)))))

(assert (=> b!5444053 (= e!3372216 e!3372217)))

(declare-fun res!2317770 () Bool)

(assert (=> b!5444053 (=> res!2317770 e!3372217)))

(declare-fun lt!2219632 () Bool)

(assert (=> b!5444053 (= res!2317770 (or (not (= lt!2219636 lt!2219632)) ((_ is Nil!61978) s!2326)))))

(declare-fun Exists!2448 (Int) Bool)

(assert (=> b!5444053 (= (Exists!2448 lambda!286587) (Exists!2448 lambda!286588))))

(declare-fun lt!2219626 () Unit!154610)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1102 (Regex!15267 Regex!15267 List!62102) Unit!154610)

(assert (=> b!5444053 (= lt!2219626 (lemmaExistCutMatchRandMatchRSpecEquivalent!1102 (regOne!31046 r!7292) (regTwo!31046 r!7292) s!2326))))

(assert (=> b!5444053 (= lt!2219632 (Exists!2448 lambda!286587))))

(declare-datatypes ((tuple2!64932 0))(
  ( (tuple2!64933 (_1!35769 List!62102) (_2!35769 List!62102)) )
))
(declare-datatypes ((Option!15378 0))(
  ( (None!15377) (Some!15377 (v!51406 tuple2!64932)) )
))
(declare-fun isDefined!12081 (Option!15378) Bool)

(declare-fun findConcatSeparation!1792 (Regex!15267 Regex!15267 List!62102 List!62102 List!62102) Option!15378)

(assert (=> b!5444053 (= lt!2219632 (isDefined!12081 (findConcatSeparation!1792 (regOne!31046 r!7292) (regTwo!31046 r!7292) Nil!61978 s!2326 s!2326)))))

(declare-fun lt!2219635 () Unit!154610)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1556 (Regex!15267 Regex!15267 List!62102) Unit!154610)

(assert (=> b!5444053 (= lt!2219635 (lemmaFindConcatSeparationEquivalentToExists!1556 (regOne!31046 r!7292) (regTwo!31046 r!7292) s!2326))))

(declare-fun b!5444054 () Bool)

(declare-fun res!2317779 () Bool)

(assert (=> b!5444054 (=> res!2317779 e!3372216)))

(assert (=> b!5444054 (= res!2317779 (or ((_ is EmptyExpr!15267) r!7292) ((_ is EmptyLang!15267) r!7292) ((_ is ElementMatch!15267) r!7292) ((_ is Union!15267) r!7292) (not ((_ is Concat!24112) r!7292))))))

(declare-fun b!5444055 () Bool)

(declare-fun tp!1500693 () Bool)

(assert (=> b!5444055 (= e!3372223 tp!1500693)))

(assert (=> b!5444056 (= e!3372217 e!3372221)))

(declare-fun res!2317775 () Bool)

(assert (=> b!5444056 (=> res!2317775 e!3372221)))

(assert (=> b!5444056 (= res!2317775 (or (and ((_ is ElementMatch!15267) (regOne!31046 r!7292)) (= (c!950107 (regOne!31046 r!7292)) (h!68426 s!2326))) ((_ is Union!15267) (regOne!31046 r!7292))))))

(declare-fun lt!2219633 () Unit!154610)

(assert (=> b!5444056 (= lt!2219633 e!3372220)))

(declare-fun c!950106 () Bool)

(assert (=> b!5444056 (= c!950106 (nullable!5436 (h!68424 (exprs!5151 (h!68425 zl!343)))))))

(declare-fun lambda!286589 () Int)

(declare-fun flatMap!994 ((InoxSet Context!9302) Int) (InoxSet Context!9302))

(declare-fun derivationStepZipperUp!639 (Context!9302 C!30804) (InoxSet Context!9302))

(assert (=> b!5444056 (= (flatMap!994 z!1189 lambda!286589) (derivationStepZipperUp!639 (h!68425 zl!343) (h!68426 s!2326)))))

(declare-fun lt!2219631 () Unit!154610)

(declare-fun lemmaFlatMapOnSingletonSet!526 ((InoxSet Context!9302) Context!9302 Int) Unit!154610)

(assert (=> b!5444056 (= lt!2219631 (lemmaFlatMapOnSingletonSet!526 z!1189 (h!68425 zl!343) lambda!286589))))

(declare-fun lt!2219625 () Context!9302)

(assert (=> b!5444056 (= lt!2219628 (derivationStepZipperUp!639 lt!2219625 (h!68426 s!2326)))))

(declare-fun derivationStepZipperDown!715 (Regex!15267 Context!9302 C!30804) (InoxSet Context!9302))

(assert (=> b!5444056 (= lt!2219634 (derivationStepZipperDown!715 (h!68424 (exprs!5151 (h!68425 zl!343))) lt!2219625 (h!68426 s!2326)))))

(assert (=> b!5444056 (= lt!2219625 (Context!9303 (t!375327 (exprs!5151 (h!68425 zl!343)))))))

(declare-fun lt!2219624 () (InoxSet Context!9302))

(assert (=> b!5444056 (= lt!2219624 (derivationStepZipperUp!639 (Context!9303 (Cons!61976 (h!68424 (exprs!5151 (h!68425 zl!343))) (t!375327 (exprs!5151 (h!68425 zl!343))))) (h!68426 s!2326)))))

(declare-fun b!5444057 () Bool)

(declare-fun tp!1500694 () Bool)

(declare-fun tp!1500699 () Bool)

(assert (=> b!5444057 (= e!3372222 (and tp!1500694 tp!1500699))))

(declare-fun res!2317777 () Bool)

(assert (=> start!570858 (=> (not res!2317777) (not e!3372224))))

(declare-fun validRegex!7003 (Regex!15267) Bool)

(assert (=> start!570858 (= res!2317777 (validRegex!7003 r!7292))))

(assert (=> start!570858 e!3372224))

(assert (=> start!570858 e!3372222))

(declare-fun condSetEmpty!35611 () Bool)

(assert (=> start!570858 (= condSetEmpty!35611 (= z!1189 ((as const (Array Context!9302 Bool)) false)))))

(assert (=> start!570858 setRes!35611))

(assert (=> start!570858 e!3372219))

(assert (=> start!570858 e!3372215))

(declare-fun b!5444045 () Bool)

(declare-fun tp!1500696 () Bool)

(assert (=> b!5444045 (= e!3372225 tp!1500696)))

(declare-fun b!5444058 () Bool)

(declare-fun Unit!154613 () Unit!154610)

(assert (=> b!5444058 (= e!3372220 Unit!154613)))

(declare-fun b!5444059 () Bool)

(declare-fun res!2317776 () Bool)

(assert (=> b!5444059 (=> res!2317776 e!3372216)))

(declare-fun isEmpty!33963 (List!62101) Bool)

(assert (=> b!5444059 (= res!2317776 (not (isEmpty!33963 (t!375328 zl!343))))))

(assert (= (and start!570858 res!2317777) b!5444051))

(assert (= (and b!5444051 res!2317771) b!5444042))

(assert (= (and b!5444042 res!2317778) b!5444036))

(assert (= (and b!5444036 (not res!2317784)) b!5444059))

(assert (= (and b!5444059 (not res!2317776)) b!5444039))

(assert (= (and b!5444039 (not res!2317780)) b!5444040))

(assert (= (and b!5444040 (not res!2317772)) b!5444038))

(assert (= (and b!5444038 (not res!2317774)) b!5444054))

(assert (= (and b!5444054 (not res!2317779)) b!5444053))

(assert (= (and b!5444053 (not res!2317770)) b!5444043))

(assert (= (and b!5444043 (not res!2317785)) b!5444056))

(assert (= (and b!5444056 c!950106) b!5444037))

(assert (= (and b!5444056 (not c!950106)) b!5444058))

(assert (= (and b!5444037 (not res!2317781)) b!5444052))

(assert (= (and b!5444056 (not res!2317775)) b!5444048))

(assert (= (and b!5444048 res!2317782) b!5444035))

(assert (= (and b!5444048 (not res!2317773)) b!5444047))

(assert (= (and b!5444047 (not res!2317783)) b!5444046))

(assert (= (and start!570858 ((_ is ElementMatch!15267) r!7292)) b!5444050))

(assert (= (and start!570858 ((_ is Concat!24112) r!7292)) b!5444041))

(assert (= (and start!570858 ((_ is Star!15267) r!7292)) b!5444044))

(assert (= (and start!570858 ((_ is Union!15267) r!7292)) b!5444057))

(assert (= (and start!570858 condSetEmpty!35611) setIsEmpty!35611))

(assert (= (and start!570858 (not condSetEmpty!35611)) setNonEmpty!35611))

(assert (= setNonEmpty!35611 b!5444045))

(assert (= b!5444034 b!5444055))

(assert (= (and start!570858 ((_ is Cons!61977) zl!343)) b!5444034))

(assert (= (and start!570858 ((_ is Cons!61978) s!2326)) b!5444049))

(declare-fun m!6464076 () Bool)

(assert (=> b!5444035 m!6464076))

(declare-fun m!6464078 () Bool)

(assert (=> b!5444059 m!6464078))

(declare-fun m!6464080 () Bool)

(assert (=> b!5444052 m!6464080))

(declare-fun m!6464082 () Bool)

(assert (=> b!5444051 m!6464082))

(declare-fun m!6464084 () Bool)

(assert (=> b!5444039 m!6464084))

(declare-fun m!6464086 () Bool)

(assert (=> b!5444036 m!6464086))

(declare-fun m!6464088 () Bool)

(assert (=> b!5444036 m!6464088))

(declare-fun m!6464090 () Bool)

(assert (=> b!5444036 m!6464090))

(declare-fun m!6464092 () Bool)

(assert (=> b!5444034 m!6464092))

(declare-fun m!6464094 () Bool)

(assert (=> start!570858 m!6464094))

(declare-fun m!6464096 () Bool)

(assert (=> b!5444037 m!6464096))

(declare-fun m!6464098 () Bool)

(assert (=> b!5444037 m!6464098))

(declare-fun m!6464100 () Bool)

(assert (=> b!5444037 m!6464100))

(declare-fun m!6464102 () Bool)

(assert (=> b!5444043 m!6464102))

(declare-fun m!6464104 () Bool)

(assert (=> b!5444042 m!6464104))

(declare-fun m!6464106 () Bool)

(assert (=> b!5444053 m!6464106))

(declare-fun m!6464108 () Bool)

(assert (=> b!5444053 m!6464108))

(declare-fun m!6464110 () Bool)

(assert (=> b!5444053 m!6464110))

(declare-fun m!6464112 () Bool)

(assert (=> b!5444053 m!6464112))

(declare-fun m!6464114 () Bool)

(assert (=> b!5444053 m!6464114))

(assert (=> b!5444053 m!6464110))

(assert (=> b!5444053 m!6464106))

(declare-fun m!6464116 () Bool)

(assert (=> b!5444053 m!6464116))

(declare-fun m!6464118 () Bool)

(assert (=> setNonEmpty!35611 m!6464118))

(assert (=> b!5444046 m!6464098))

(declare-fun m!6464120 () Bool)

(assert (=> b!5444046 m!6464120))

(declare-fun m!6464122 () Bool)

(assert (=> b!5444056 m!6464122))

(declare-fun m!6464124 () Bool)

(assert (=> b!5444056 m!6464124))

(declare-fun m!6464126 () Bool)

(assert (=> b!5444056 m!6464126))

(declare-fun m!6464128 () Bool)

(assert (=> b!5444056 m!6464128))

(declare-fun m!6464130 () Bool)

(assert (=> b!5444056 m!6464130))

(declare-fun m!6464132 () Bool)

(assert (=> b!5444056 m!6464132))

(declare-fun m!6464134 () Bool)

(assert (=> b!5444056 m!6464134))

(declare-fun m!6464136 () Bool)

(assert (=> b!5444038 m!6464136))

(assert (=> b!5444038 m!6464136))

(declare-fun m!6464138 () Bool)

(assert (=> b!5444038 m!6464138))

(check-sat (not b!5444042) (not b!5444053) (not b!5444039) (not setNonEmpty!35611) (not b!5444052) (not b!5444037) (not b!5444057) (not b!5444045) (not b!5444041) (not b!5444036) (not b!5444034) (not b!5444059) tp_is_empty!39787 (not b!5444056) (not b!5444046) (not start!570858) (not b!5444043) (not b!5444049) (not b!5444035) (not b!5444051) (not b!5444038) (not b!5444044) (not b!5444055))
(check-sat)
