; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561462 () Bool)

(assert start!561462)

(declare-fun b!5326224 () Bool)

(assert (=> b!5326224 true))

(assert (=> b!5326224 true))

(declare-fun lambda!271900 () Int)

(declare-fun lambda!271899 () Int)

(assert (=> b!5326224 (not (= lambda!271900 lambda!271899))))

(assert (=> b!5326224 true))

(assert (=> b!5326224 true))

(declare-fun b!5326192 () Bool)

(assert (=> b!5326192 true))

(declare-fun e!3308557 () Bool)

(declare-fun e!3308550 () Bool)

(assert (=> b!5326192 (= e!3308557 e!3308550)))

(declare-fun res!2259063 () Bool)

(assert (=> b!5326192 (=> res!2259063 e!3308550)))

(declare-datatypes ((C!30244 0))(
  ( (C!30245 (val!24824 Int)) )
))
(declare-datatypes ((Regex!14987 0))(
  ( (ElementMatch!14987 (c!926007 C!30244)) (Concat!23832 (regOne!30486 Regex!14987) (regTwo!30486 Regex!14987)) (EmptyExpr!14987) (Star!14987 (reg!15316 Regex!14987)) (EmptyLang!14987) (Union!14987 (regOne!30487 Regex!14987) (regTwo!30487 Regex!14987)) )
))
(declare-fun r!7292 () Regex!14987)

(declare-datatypes ((List!61260 0))(
  ( (Nil!61136) (Cons!61136 (h!67584 C!30244) (t!374475 List!61260)) )
))
(declare-fun s!2326 () List!61260)

(get-info :version)

(assert (=> b!5326192 (= res!2259063 (or (and ((_ is ElementMatch!14987) (regOne!30486 r!7292)) (= (c!926007 (regOne!30486 r!7292)) (h!67584 s!2326))) ((_ is Union!14987) (regOne!30486 r!7292))))))

(declare-datatypes ((Unit!153466 0))(
  ( (Unit!153467) )
))
(declare-fun lt!2173134 () Unit!153466)

(declare-fun e!3308547 () Unit!153466)

(assert (=> b!5326192 (= lt!2173134 e!3308547)))

(declare-fun c!926006 () Bool)

(declare-datatypes ((List!61261 0))(
  ( (Nil!61137) (Cons!61137 (h!67585 Regex!14987) (t!374476 List!61261)) )
))
(declare-datatypes ((Context!8742 0))(
  ( (Context!8743 (exprs!4871 List!61261)) )
))
(declare-datatypes ((List!61262 0))(
  ( (Nil!61138) (Cons!61138 (h!67586 Context!8742) (t!374477 List!61262)) )
))
(declare-fun zl!343 () List!61262)

(declare-fun nullable!5156 (Regex!14987) Bool)

(assert (=> b!5326192 (= c!926006 (nullable!5156 (h!67585 (exprs!4871 (h!67586 zl!343)))))))

(declare-fun lambda!271901 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8742))

(declare-fun flatMap!714 ((InoxSet Context!8742) Int) (InoxSet Context!8742))

(declare-fun derivationStepZipperUp!359 (Context!8742 C!30244) (InoxSet Context!8742))

(assert (=> b!5326192 (= (flatMap!714 z!1189 lambda!271901) (derivationStepZipperUp!359 (h!67586 zl!343) (h!67584 s!2326)))))

(declare-fun lt!2173144 () Unit!153466)

(declare-fun lemmaFlatMapOnSingletonSet!246 ((InoxSet Context!8742) Context!8742 Int) Unit!153466)

(assert (=> b!5326192 (= lt!2173144 (lemmaFlatMapOnSingletonSet!246 z!1189 (h!67586 zl!343) lambda!271901))))

(declare-fun lt!2173128 () (InoxSet Context!8742))

(declare-fun lt!2173151 () Context!8742)

(assert (=> b!5326192 (= lt!2173128 (derivationStepZipperUp!359 lt!2173151 (h!67584 s!2326)))))

(declare-fun lt!2173149 () (InoxSet Context!8742))

(declare-fun derivationStepZipperDown!435 (Regex!14987 Context!8742 C!30244) (InoxSet Context!8742))

(assert (=> b!5326192 (= lt!2173149 (derivationStepZipperDown!435 (h!67585 (exprs!4871 (h!67586 zl!343))) lt!2173151 (h!67584 s!2326)))))

(assert (=> b!5326192 (= lt!2173151 (Context!8743 (t!374476 (exprs!4871 (h!67586 zl!343)))))))

(declare-fun lt!2173142 () (InoxSet Context!8742))

(assert (=> b!5326192 (= lt!2173142 (derivationStepZipperUp!359 (Context!8743 (Cons!61137 (h!67585 (exprs!4871 (h!67586 zl!343))) (t!374476 (exprs!4871 (h!67586 zl!343))))) (h!67584 s!2326)))))

(declare-fun b!5326193 () Bool)

(declare-fun res!2259073 () Bool)

(declare-fun e!3308551 () Bool)

(assert (=> b!5326193 (=> res!2259073 e!3308551)))

(declare-fun generalisedConcat!656 (List!61261) Regex!14987)

(assert (=> b!5326193 (= res!2259073 (not (= r!7292 (generalisedConcat!656 (exprs!4871 (h!67586 zl!343))))))))

(declare-fun b!5326194 () Bool)

(declare-fun tp!1482773 () Bool)

(declare-fun e!3308560 () Bool)

(declare-fun e!3308558 () Bool)

(declare-fun inv!80714 (Context!8742) Bool)

(assert (=> b!5326194 (= e!3308560 (and (inv!80714 (h!67586 zl!343)) e!3308558 tp!1482773))))

(declare-fun b!5326195 () Bool)

(declare-fun e!3308553 () Bool)

(declare-fun tp!1482768 () Bool)

(declare-fun tp!1482777 () Bool)

(assert (=> b!5326195 (= e!3308553 (and tp!1482768 tp!1482777))))

(declare-fun b!5326196 () Bool)

(declare-fun res!2259076 () Bool)

(declare-fun e!3308554 () Bool)

(assert (=> b!5326196 (=> (not res!2259076) (not e!3308554))))

(declare-fun unfocusZipper!729 (List!61262) Regex!14987)

(assert (=> b!5326196 (= res!2259076 (= r!7292 (unfocusZipper!729 zl!343)))))

(declare-fun b!5326197 () Bool)

(declare-fun e!3308545 () Bool)

(assert (=> b!5326197 (= e!3308545 true)))

(declare-fun lt!2173136 () Regex!14987)

(declare-fun lt!2173137 () List!61261)

(assert (=> b!5326197 (= lt!2173136 (generalisedConcat!656 lt!2173137))))

(declare-fun lt!2173150 () Bool)

(declare-fun lt!2173131 () Regex!14987)

(declare-fun matchRSpec!2090 (Regex!14987 List!61260) Bool)

(assert (=> b!5326197 (= lt!2173150 (matchRSpec!2090 lt!2173131 s!2326))))

(declare-fun lt!2173147 () Unit!153466)

(declare-fun mainMatchTheorem!2090 (Regex!14987 List!61260) Unit!153466)

(assert (=> b!5326197 (= lt!2173147 (mainMatchTheorem!2090 lt!2173131 s!2326))))

(declare-fun lt!2173138 () (InoxSet Context!8742))

(declare-fun matchZipper!1231 ((InoxSet Context!8742) List!61260) Bool)

(assert (=> b!5326197 (= lt!2173150 (matchZipper!1231 lt!2173138 s!2326))))

(declare-fun matchR!7172 (Regex!14987 List!61260) Bool)

(assert (=> b!5326197 (= lt!2173150 (matchR!7172 lt!2173131 s!2326))))

(declare-fun lt!2173140 () List!61262)

(declare-fun lt!2173126 () Unit!153466)

(declare-fun theoremZipperRegexEquiv!385 ((InoxSet Context!8742) List!61262 Regex!14987 List!61260) Unit!153466)

(assert (=> b!5326197 (= lt!2173126 (theoremZipperRegexEquiv!385 lt!2173138 lt!2173140 lt!2173131 s!2326))))

(declare-fun lt!2173127 () List!61261)

(assert (=> b!5326197 (= lt!2173131 (generalisedConcat!656 lt!2173127))))

(declare-fun b!5326198 () Bool)

(declare-fun e!3308556 () Bool)

(declare-fun e!3308555 () Bool)

(assert (=> b!5326198 (= e!3308556 e!3308555)))

(declare-fun res!2259085 () Bool)

(assert (=> b!5326198 (=> res!2259085 e!3308555)))

(declare-fun lt!2173135 () (InoxSet Context!8742))

(declare-fun lt!2173130 () (InoxSet Context!8742))

(assert (=> b!5326198 (= res!2259085 (not (= lt!2173135 lt!2173130)))))

(declare-fun lt!2173139 () Context!8742)

(assert (=> b!5326198 (= (flatMap!714 lt!2173138 lambda!271901) (derivationStepZipperUp!359 lt!2173139 (h!67584 s!2326)))))

(declare-fun lt!2173148 () Unit!153466)

(assert (=> b!5326198 (= lt!2173148 (lemmaFlatMapOnSingletonSet!246 lt!2173138 lt!2173139 lambda!271901))))

(declare-fun lt!2173145 () (InoxSet Context!8742))

(assert (=> b!5326198 (= lt!2173145 (derivationStepZipperUp!359 lt!2173139 (h!67584 s!2326)))))

(declare-fun derivationStepZipper!1228 ((InoxSet Context!8742) C!30244) (InoxSet Context!8742))

(assert (=> b!5326198 (= lt!2173135 (derivationStepZipper!1228 lt!2173138 (h!67584 s!2326)))))

(assert (=> b!5326198 (= lt!2173138 (store ((as const (Array Context!8742 Bool)) false) lt!2173139 true))))

(assert (=> b!5326198 (= lt!2173139 (Context!8743 lt!2173127))))

(assert (=> b!5326198 (= lt!2173127 (Cons!61137 (regOne!30486 (regOne!30486 r!7292)) lt!2173137))))

(declare-fun b!5326199 () Bool)

(declare-fun tp!1482770 () Bool)

(assert (=> b!5326199 (= e!3308553 tp!1482770)))

(declare-fun b!5326200 () Bool)

(declare-fun res!2259078 () Bool)

(assert (=> b!5326200 (=> res!2259078 e!3308550)))

(assert (=> b!5326200 (= res!2259078 (not ((_ is Concat!23832) (regOne!30486 r!7292))))))

(declare-fun setIsEmpty!34311 () Bool)

(declare-fun setRes!34311 () Bool)

(assert (=> setIsEmpty!34311 setRes!34311))

(declare-fun b!5326201 () Bool)

(declare-fun res!2259062 () Bool)

(assert (=> b!5326201 (=> res!2259062 e!3308551)))

(assert (=> b!5326201 (= res!2259062 (not ((_ is Cons!61137) (exprs!4871 (h!67586 zl!343)))))))

(declare-fun b!5326202 () Bool)

(declare-fun res!2259068 () Bool)

(assert (=> b!5326202 (=> res!2259068 e!3308555)))

(declare-fun contextDepthTotal!120 (Context!8742) Int)

(assert (=> b!5326202 (= res!2259068 (>= (contextDepthTotal!120 lt!2173139) (contextDepthTotal!120 (h!67586 zl!343))))))

(declare-fun b!5326203 () Bool)

(declare-fun res!2259065 () Bool)

(assert (=> b!5326203 (=> res!2259065 e!3308551)))

(declare-fun isEmpty!33107 (List!61262) Bool)

(assert (=> b!5326203 (= res!2259065 (not (isEmpty!33107 (t!374477 zl!343))))))

(declare-fun b!5326204 () Bool)

(declare-fun e!3308549 () Bool)

(assert (=> b!5326204 (= e!3308549 e!3308556)))

(declare-fun res!2259064 () Bool)

(assert (=> b!5326204 (=> res!2259064 e!3308556)))

(declare-fun lt!2173143 () Bool)

(assert (=> b!5326204 (= res!2259064 (not (= lt!2173143 (matchZipper!1231 lt!2173130 (t!374475 s!2326)))))))

(assert (=> b!5326204 (= lt!2173143 (matchZipper!1231 lt!2173149 (t!374475 s!2326)))))

(declare-fun b!5326205 () Bool)

(declare-fun res!2259077 () Bool)

(assert (=> b!5326205 (=> (not res!2259077) (not e!3308554))))

(declare-fun toList!8771 ((InoxSet Context!8742)) List!61262)

(assert (=> b!5326205 (= res!2259077 (= (toList!8771 z!1189) zl!343))))

(declare-fun b!5326206 () Bool)

(declare-fun res!2259084 () Bool)

(assert (=> b!5326206 (=> res!2259084 e!3308555)))

(assert (=> b!5326206 (= res!2259084 (not (= (exprs!4871 (h!67586 zl!343)) (Cons!61137 (Concat!23832 (regOne!30486 (regOne!30486 r!7292)) (regTwo!30486 (regOne!30486 r!7292))) (t!374476 (exprs!4871 (h!67586 zl!343)))))))))

(declare-fun b!5326207 () Bool)

(declare-fun res!2259072 () Bool)

(assert (=> b!5326207 (=> res!2259072 e!3308551)))

(declare-fun generalisedUnion!916 (List!61261) Regex!14987)

(declare-fun unfocusZipperList!429 (List!61262) List!61261)

(assert (=> b!5326207 (= res!2259072 (not (= r!7292 (generalisedUnion!916 (unfocusZipperList!429 zl!343)))))))

(declare-fun b!5326208 () Bool)

(declare-fun res!2259074 () Bool)

(assert (=> b!5326208 (=> res!2259074 e!3308551)))

(assert (=> b!5326208 (= res!2259074 (or ((_ is EmptyExpr!14987) r!7292) ((_ is EmptyLang!14987) r!7292) ((_ is ElementMatch!14987) r!7292) ((_ is Union!14987) r!7292) (not ((_ is Concat!23832) r!7292))))))

(declare-fun b!5326210 () Bool)

(declare-fun res!2259075 () Bool)

(assert (=> b!5326210 (=> res!2259075 e!3308557)))

(declare-fun isEmpty!33108 (List!61261) Bool)

(assert (=> b!5326210 (= res!2259075 (isEmpty!33108 (t!374476 (exprs!4871 (h!67586 zl!343)))))))

(declare-fun b!5326211 () Bool)

(declare-fun tp!1482769 () Bool)

(declare-fun tp!1482776 () Bool)

(assert (=> b!5326211 (= e!3308553 (and tp!1482769 tp!1482776))))

(declare-fun b!5326212 () Bool)

(declare-fun e!3308548 () Bool)

(assert (=> b!5326212 (= e!3308548 (nullable!5156 (regOne!30486 (regOne!30486 r!7292))))))

(declare-fun b!5326213 () Bool)

(declare-fun res!2259079 () Bool)

(assert (=> b!5326213 (=> res!2259079 e!3308545)))

(declare-fun zipperDepth!96 (List!61262) Int)

(assert (=> b!5326213 (= res!2259079 (> (zipperDepth!96 lt!2173140) (zipperDepth!96 zl!343)))))

(declare-fun b!5326214 () Bool)

(declare-fun tp!1482772 () Bool)

(assert (=> b!5326214 (= e!3308558 tp!1482772)))

(declare-fun b!5326215 () Bool)

(assert (=> b!5326215 (= e!3308550 e!3308549)))

(declare-fun res!2259080 () Bool)

(assert (=> b!5326215 (=> res!2259080 e!3308549)))

(assert (=> b!5326215 (= res!2259080 (not (= lt!2173149 lt!2173130)))))

(assert (=> b!5326215 (= lt!2173130 (derivationStepZipperDown!435 (regOne!30486 (regOne!30486 r!7292)) (Context!8743 lt!2173137) (h!67584 s!2326)))))

(assert (=> b!5326215 (= lt!2173137 (Cons!61137 (regTwo!30486 (regOne!30486 r!7292)) (t!374476 (exprs!4871 (h!67586 zl!343)))))))

(declare-fun b!5326216 () Bool)

(assert (=> b!5326216 (= e!3308554 (not e!3308551))))

(declare-fun res!2259083 () Bool)

(assert (=> b!5326216 (=> res!2259083 e!3308551)))

(assert (=> b!5326216 (= res!2259083 (not ((_ is Cons!61138) zl!343)))))

(declare-fun lt!2173129 () Bool)

(assert (=> b!5326216 (= lt!2173129 (matchRSpec!2090 r!7292 s!2326))))

(assert (=> b!5326216 (= lt!2173129 (matchR!7172 r!7292 s!2326))))

(declare-fun lt!2173146 () Unit!153466)

(assert (=> b!5326216 (= lt!2173146 (mainMatchTheorem!2090 r!7292 s!2326))))

(declare-fun b!5326217 () Bool)

(assert (=> b!5326217 (= e!3308555 e!3308545)))

(declare-fun res!2259082 () Bool)

(assert (=> b!5326217 (=> res!2259082 e!3308545)))

(declare-fun zipperDepthTotal!140 (List!61262) Int)

(assert (=> b!5326217 (= res!2259082 (>= (zipperDepthTotal!140 lt!2173140) (zipperDepthTotal!140 zl!343)))))

(assert (=> b!5326217 (= lt!2173140 (Cons!61138 lt!2173139 Nil!61138))))

(declare-fun b!5326218 () Bool)

(declare-fun res!2259067 () Bool)

(assert (=> b!5326218 (=> res!2259067 e!3308555)))

(assert (=> b!5326218 (= res!2259067 (not (= lt!2173143 (matchZipper!1231 lt!2173135 (t!374475 s!2326)))))))

(declare-fun b!5326219 () Bool)

(declare-fun e!3308559 () Bool)

(assert (=> b!5326219 (= e!3308559 (matchZipper!1231 lt!2173128 (t!374475 s!2326)))))

(declare-fun b!5326220 () Bool)

(declare-fun Unit!153468 () Unit!153466)

(assert (=> b!5326220 (= e!3308547 Unit!153468)))

(declare-fun b!5326221 () Bool)

(declare-fun Unit!153469 () Unit!153466)

(assert (=> b!5326221 (= e!3308547 Unit!153469)))

(declare-fun lt!2173141 () Unit!153466)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!224 ((InoxSet Context!8742) (InoxSet Context!8742) List!61260) Unit!153466)

(assert (=> b!5326221 (= lt!2173141 (lemmaZipperConcatMatchesSameAsBothZippers!224 lt!2173149 lt!2173128 (t!374475 s!2326)))))

(declare-fun res!2259066 () Bool)

(assert (=> b!5326221 (= res!2259066 (matchZipper!1231 lt!2173149 (t!374475 s!2326)))))

(assert (=> b!5326221 (=> res!2259066 e!3308559)))

(assert (=> b!5326221 (= (matchZipper!1231 ((_ map or) lt!2173149 lt!2173128) (t!374475 s!2326)) e!3308559)))

(declare-fun b!5326222 () Bool)

(declare-fun res!2259071 () Bool)

(assert (=> b!5326222 (=> res!2259071 e!3308550)))

(assert (=> b!5326222 (= res!2259071 e!3308548)))

(declare-fun res!2259069 () Bool)

(assert (=> b!5326222 (=> (not res!2259069) (not e!3308548))))

(assert (=> b!5326222 (= res!2259069 ((_ is Concat!23832) (regOne!30486 r!7292)))))

(declare-fun setNonEmpty!34311 () Bool)

(declare-fun e!3308552 () Bool)

(declare-fun setElem!34311 () Context!8742)

(declare-fun tp!1482775 () Bool)

(assert (=> setNonEmpty!34311 (= setRes!34311 (and tp!1482775 (inv!80714 setElem!34311) e!3308552))))

(declare-fun setRest!34311 () (InoxSet Context!8742))

(assert (=> setNonEmpty!34311 (= z!1189 ((_ map or) (store ((as const (Array Context!8742 Bool)) false) setElem!34311 true) setRest!34311))))

(declare-fun b!5326223 () Bool)

(declare-fun tp!1482771 () Bool)

(assert (=> b!5326223 (= e!3308552 tp!1482771)))

(assert (=> b!5326224 (= e!3308551 e!3308557)))

(declare-fun res!2259070 () Bool)

(assert (=> b!5326224 (=> res!2259070 e!3308557)))

(declare-fun lt!2173133 () Bool)

(assert (=> b!5326224 (= res!2259070 (or (not (= lt!2173129 lt!2173133)) ((_ is Nil!61136) s!2326)))))

(declare-fun Exists!2168 (Int) Bool)

(assert (=> b!5326224 (= (Exists!2168 lambda!271899) (Exists!2168 lambda!271900))))

(declare-fun lt!2173132 () Unit!153466)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!822 (Regex!14987 Regex!14987 List!61260) Unit!153466)

(assert (=> b!5326224 (= lt!2173132 (lemmaExistCutMatchRandMatchRSpecEquivalent!822 (regOne!30486 r!7292) (regTwo!30486 r!7292) s!2326))))

(assert (=> b!5326224 (= lt!2173133 (Exists!2168 lambda!271899))))

(declare-datatypes ((tuple2!64372 0))(
  ( (tuple2!64373 (_1!35489 List!61260) (_2!35489 List!61260)) )
))
(declare-datatypes ((Option!15098 0))(
  ( (None!15097) (Some!15097 (v!51126 tuple2!64372)) )
))
(declare-fun isDefined!11801 (Option!15098) Bool)

(declare-fun findConcatSeparation!1512 (Regex!14987 Regex!14987 List!61260 List!61260 List!61260) Option!15098)

(assert (=> b!5326224 (= lt!2173133 (isDefined!11801 (findConcatSeparation!1512 (regOne!30486 r!7292) (regTwo!30486 r!7292) Nil!61136 s!2326 s!2326)))))

(declare-fun lt!2173152 () Unit!153466)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1276 (Regex!14987 Regex!14987 List!61260) Unit!153466)

(assert (=> b!5326224 (= lt!2173152 (lemmaFindConcatSeparationEquivalentToExists!1276 (regOne!30486 r!7292) (regTwo!30486 r!7292) s!2326))))

(declare-fun b!5326225 () Bool)

(declare-fun tp_is_empty!39227 () Bool)

(assert (=> b!5326225 (= e!3308553 tp_is_empty!39227)))

(declare-fun b!5326209 () Bool)

(declare-fun e!3308546 () Bool)

(declare-fun tp!1482774 () Bool)

(assert (=> b!5326209 (= e!3308546 (and tp_is_empty!39227 tp!1482774))))

(declare-fun res!2259081 () Bool)

(assert (=> start!561462 (=> (not res!2259081) (not e!3308554))))

(declare-fun validRegex!6723 (Regex!14987) Bool)

(assert (=> start!561462 (= res!2259081 (validRegex!6723 r!7292))))

(assert (=> start!561462 e!3308554))

(assert (=> start!561462 e!3308553))

(declare-fun condSetEmpty!34311 () Bool)

(assert (=> start!561462 (= condSetEmpty!34311 (= z!1189 ((as const (Array Context!8742 Bool)) false)))))

(assert (=> start!561462 setRes!34311))

(assert (=> start!561462 e!3308560))

(assert (=> start!561462 e!3308546))

(assert (= (and start!561462 res!2259081) b!5326205))

(assert (= (and b!5326205 res!2259077) b!5326196))

(assert (= (and b!5326196 res!2259076) b!5326216))

(assert (= (and b!5326216 (not res!2259083)) b!5326203))

(assert (= (and b!5326203 (not res!2259065)) b!5326193))

(assert (= (and b!5326193 (not res!2259073)) b!5326201))

(assert (= (and b!5326201 (not res!2259062)) b!5326207))

(assert (= (and b!5326207 (not res!2259072)) b!5326208))

(assert (= (and b!5326208 (not res!2259074)) b!5326224))

(assert (= (and b!5326224 (not res!2259070)) b!5326210))

(assert (= (and b!5326210 (not res!2259075)) b!5326192))

(assert (= (and b!5326192 c!926006) b!5326221))

(assert (= (and b!5326192 (not c!926006)) b!5326220))

(assert (= (and b!5326221 (not res!2259066)) b!5326219))

(assert (= (and b!5326192 (not res!2259063)) b!5326222))

(assert (= (and b!5326222 res!2259069) b!5326212))

(assert (= (and b!5326222 (not res!2259071)) b!5326200))

(assert (= (and b!5326200 (not res!2259078)) b!5326215))

(assert (= (and b!5326215 (not res!2259080)) b!5326204))

(assert (= (and b!5326204 (not res!2259064)) b!5326198))

(assert (= (and b!5326198 (not res!2259085)) b!5326218))

(assert (= (and b!5326218 (not res!2259067)) b!5326206))

(assert (= (and b!5326206 (not res!2259084)) b!5326202))

(assert (= (and b!5326202 (not res!2259068)) b!5326217))

(assert (= (and b!5326217 (not res!2259082)) b!5326213))

(assert (= (and b!5326213 (not res!2259079)) b!5326197))

(assert (= (and start!561462 ((_ is ElementMatch!14987) r!7292)) b!5326225))

(assert (= (and start!561462 ((_ is Concat!23832) r!7292)) b!5326195))

(assert (= (and start!561462 ((_ is Star!14987) r!7292)) b!5326199))

(assert (= (and start!561462 ((_ is Union!14987) r!7292)) b!5326211))

(assert (= (and start!561462 condSetEmpty!34311) setIsEmpty!34311))

(assert (= (and start!561462 (not condSetEmpty!34311)) setNonEmpty!34311))

(assert (= setNonEmpty!34311 b!5326223))

(assert (= b!5326194 b!5326214))

(assert (= (and start!561462 ((_ is Cons!61138) zl!343)) b!5326194))

(assert (= (and start!561462 ((_ is Cons!61136) s!2326)) b!5326209))

(declare-fun m!6360272 () Bool)

(assert (=> b!5326212 m!6360272))

(declare-fun m!6360274 () Bool)

(assert (=> b!5326215 m!6360274))

(declare-fun m!6360276 () Bool)

(assert (=> b!5326202 m!6360276))

(declare-fun m!6360278 () Bool)

(assert (=> b!5326202 m!6360278))

(declare-fun m!6360280 () Bool)

(assert (=> b!5326217 m!6360280))

(declare-fun m!6360282 () Bool)

(assert (=> b!5326217 m!6360282))

(declare-fun m!6360284 () Bool)

(assert (=> b!5326216 m!6360284))

(declare-fun m!6360286 () Bool)

(assert (=> b!5326216 m!6360286))

(declare-fun m!6360288 () Bool)

(assert (=> b!5326216 m!6360288))

(declare-fun m!6360290 () Bool)

(assert (=> b!5326218 m!6360290))

(declare-fun m!6360292 () Bool)

(assert (=> b!5326204 m!6360292))

(declare-fun m!6360294 () Bool)

(assert (=> b!5326204 m!6360294))

(declare-fun m!6360296 () Bool)

(assert (=> b!5326207 m!6360296))

(assert (=> b!5326207 m!6360296))

(declare-fun m!6360298 () Bool)

(assert (=> b!5326207 m!6360298))

(declare-fun m!6360300 () Bool)

(assert (=> b!5326210 m!6360300))

(declare-fun m!6360302 () Bool)

(assert (=> b!5326219 m!6360302))

(declare-fun m!6360304 () Bool)

(assert (=> setNonEmpty!34311 m!6360304))

(declare-fun m!6360306 () Bool)

(assert (=> b!5326196 m!6360306))

(declare-fun m!6360308 () Bool)

(assert (=> b!5326221 m!6360308))

(assert (=> b!5326221 m!6360294))

(declare-fun m!6360310 () Bool)

(assert (=> b!5326221 m!6360310))

(declare-fun m!6360312 () Bool)

(assert (=> b!5326198 m!6360312))

(declare-fun m!6360314 () Bool)

(assert (=> b!5326198 m!6360314))

(declare-fun m!6360316 () Bool)

(assert (=> b!5326198 m!6360316))

(declare-fun m!6360318 () Bool)

(assert (=> b!5326198 m!6360318))

(declare-fun m!6360320 () Bool)

(assert (=> b!5326198 m!6360320))

(declare-fun m!6360322 () Bool)

(assert (=> b!5326205 m!6360322))

(declare-fun m!6360324 () Bool)

(assert (=> b!5326193 m!6360324))

(declare-fun m!6360326 () Bool)

(assert (=> b!5326203 m!6360326))

(declare-fun m!6360328 () Bool)

(assert (=> b!5326213 m!6360328))

(declare-fun m!6360330 () Bool)

(assert (=> b!5326213 m!6360330))

(declare-fun m!6360332 () Bool)

(assert (=> b!5326197 m!6360332))

(declare-fun m!6360334 () Bool)

(assert (=> b!5326197 m!6360334))

(declare-fun m!6360336 () Bool)

(assert (=> b!5326197 m!6360336))

(declare-fun m!6360338 () Bool)

(assert (=> b!5326197 m!6360338))

(declare-fun m!6360340 () Bool)

(assert (=> b!5326197 m!6360340))

(declare-fun m!6360342 () Bool)

(assert (=> b!5326197 m!6360342))

(declare-fun m!6360344 () Bool)

(assert (=> b!5326197 m!6360344))

(declare-fun m!6360346 () Bool)

(assert (=> b!5326192 m!6360346))

(declare-fun m!6360348 () Bool)

(assert (=> b!5326192 m!6360348))

(declare-fun m!6360350 () Bool)

(assert (=> b!5326192 m!6360350))

(declare-fun m!6360352 () Bool)

(assert (=> b!5326192 m!6360352))

(declare-fun m!6360354 () Bool)

(assert (=> b!5326192 m!6360354))

(declare-fun m!6360356 () Bool)

(assert (=> b!5326192 m!6360356))

(declare-fun m!6360358 () Bool)

(assert (=> b!5326192 m!6360358))

(declare-fun m!6360360 () Bool)

(assert (=> b!5326224 m!6360360))

(declare-fun m!6360362 () Bool)

(assert (=> b!5326224 m!6360362))

(declare-fun m!6360364 () Bool)

(assert (=> b!5326224 m!6360364))

(declare-fun m!6360366 () Bool)

(assert (=> b!5326224 m!6360366))

(assert (=> b!5326224 m!6360362))

(declare-fun m!6360368 () Bool)

(assert (=> b!5326224 m!6360368))

(assert (=> b!5326224 m!6360364))

(declare-fun m!6360370 () Bool)

(assert (=> b!5326224 m!6360370))

(declare-fun m!6360372 () Bool)

(assert (=> b!5326194 m!6360372))

(declare-fun m!6360374 () Bool)

(assert (=> start!561462 m!6360374))

(check-sat (not b!5326211) (not b!5326224) (not b!5326194) (not b!5326212) (not b!5326202) (not start!561462) (not b!5326199) (not b!5326221) (not b!5326215) (not b!5326210) (not b!5326196) (not b!5326204) tp_is_empty!39227 (not b!5326223) (not b!5326195) (not b!5326217) (not b!5326218) (not b!5326203) (not b!5326197) (not b!5326213) (not b!5326214) (not b!5326209) (not b!5326216) (not b!5326193) (not b!5326198) (not b!5326192) (not b!5326219) (not setNonEmpty!34311) (not b!5326207) (not b!5326205))
(check-sat)
