; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!569264 () Bool)

(assert start!569264)

(declare-fun b!5422277 () Bool)

(assert (=> b!5422277 true))

(assert (=> b!5422277 true))

(declare-fun lambda!284041 () Int)

(declare-fun lambda!284040 () Int)

(assert (=> b!5422277 (not (= lambda!284041 lambda!284040))))

(assert (=> b!5422277 true))

(assert (=> b!5422277 true))

(declare-fun b!5422255 () Bool)

(assert (=> b!5422255 true))

(declare-fun b!5422280 () Bool)

(assert (=> b!5422280 true))

(declare-fun bs!1252775 () Bool)

(declare-fun b!5422286 () Bool)

(assert (= bs!1252775 (and b!5422286 b!5422277)))

(declare-datatypes ((C!30682 0))(
  ( (C!30683 (val!25043 Int)) )
))
(declare-datatypes ((Regex!15206 0))(
  ( (ElementMatch!15206 (c!945702 C!30682)) (Concat!24051 (regOne!30924 Regex!15206) (regTwo!30924 Regex!15206)) (EmptyExpr!15206) (Star!15206 (reg!15535 Regex!15206)) (EmptyLang!15206) (Union!15206 (regOne!30925 Regex!15206) (regTwo!30925 Regex!15206)) )
))
(declare-fun r!7292 () Regex!15206)

(declare-fun lambda!284045 () Int)

(declare-fun lt!2211321 () Regex!15206)

(assert (=> bs!1252775 (= (= lt!2211321 (regOne!30924 r!7292)) (= lambda!284045 lambda!284040))))

(assert (=> bs!1252775 (not (= lambda!284045 lambda!284041))))

(assert (=> b!5422286 true))

(assert (=> b!5422286 true))

(assert (=> b!5422286 true))

(declare-fun lambda!284046 () Int)

(assert (=> bs!1252775 (not (= lambda!284046 lambda!284040))))

(assert (=> bs!1252775 (= (= lt!2211321 (regOne!30924 r!7292)) (= lambda!284046 lambda!284041))))

(assert (=> b!5422286 (not (= lambda!284046 lambda!284045))))

(assert (=> b!5422286 true))

(assert (=> b!5422286 true))

(assert (=> b!5422286 true))

(declare-fun bs!1252776 () Bool)

(declare-fun b!5422281 () Bool)

(assert (= bs!1252776 (and b!5422281 b!5422277)))

(declare-datatypes ((List!61917 0))(
  ( (Nil!61793) (Cons!61793 (h!68241 C!30682) (t!375140 List!61917)) )
))
(declare-fun s!2326 () List!61917)

(declare-fun lt!2211306 () Regex!15206)

(declare-fun lambda!284047 () Int)

(declare-datatypes ((tuple2!64810 0))(
  ( (tuple2!64811 (_1!35708 List!61917) (_2!35708 List!61917)) )
))
(declare-fun lt!2211317 () tuple2!64810)

(assert (=> bs!1252776 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) (regOne!30924 r!7292)) (= lt!2211306 (regTwo!30924 r!7292))) (= lambda!284047 lambda!284040))))

(assert (=> bs!1252776 (not (= lambda!284047 lambda!284041))))

(declare-fun bs!1252777 () Bool)

(assert (= bs!1252777 (and b!5422281 b!5422286)))

(assert (=> bs!1252777 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) lt!2211321) (= lt!2211306 (regTwo!30924 r!7292))) (= lambda!284047 lambda!284045))))

(assert (=> bs!1252777 (not (= lambda!284047 lambda!284046))))

(assert (=> b!5422281 true))

(assert (=> b!5422281 true))

(assert (=> b!5422281 true))

(declare-fun lambda!284048 () Int)

(assert (=> b!5422281 (not (= lambda!284048 lambda!284047))))

(assert (=> bs!1252776 (not (= lambda!284048 lambda!284040))))

(assert (=> bs!1252776 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) (regOne!30924 r!7292)) (= lt!2211306 (regTwo!30924 r!7292))) (= lambda!284048 lambda!284041))))

(assert (=> bs!1252777 (not (= lambda!284048 lambda!284045))))

(assert (=> bs!1252777 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) lt!2211321) (= lt!2211306 (regTwo!30924 r!7292))) (= lambda!284048 lambda!284046))))

(assert (=> b!5422281 true))

(assert (=> b!5422281 true))

(assert (=> b!5422281 true))

(declare-fun lambda!284049 () Int)

(assert (=> b!5422281 (not (= lambda!284049 lambda!284047))))

(assert (=> bs!1252776 (not (= lambda!284049 lambda!284040))))

(assert (=> bs!1252776 (not (= lambda!284049 lambda!284041))))

(assert (=> bs!1252777 (not (= lambda!284049 lambda!284045))))

(assert (=> bs!1252777 (not (= lambda!284049 lambda!284046))))

(assert (=> b!5422281 (not (= lambda!284049 lambda!284048))))

(assert (=> b!5422281 true))

(assert (=> b!5422281 true))

(assert (=> b!5422281 true))

(declare-fun b!5422246 () Bool)

(declare-fun res!2307067 () Bool)

(declare-fun e!3360415 () Bool)

(assert (=> b!5422246 (=> res!2307067 e!3360415)))

(declare-datatypes ((List!61918 0))(
  ( (Nil!61794) (Cons!61794 (h!68242 Regex!15206) (t!375141 List!61918)) )
))
(declare-datatypes ((Context!9180 0))(
  ( (Context!9181 (exprs!5090 List!61918)) )
))
(declare-fun lt!2211320 () (Set Context!9180))

(declare-fun lt!2211279 () tuple2!64810)

(declare-fun matchZipper!1450 ((Set Context!9180) List!61917) Bool)

(assert (=> b!5422246 (= res!2307067 (not (matchZipper!1450 lt!2211320 (_2!35708 lt!2211279))))))

(declare-fun b!5422247 () Bool)

(declare-fun res!2307061 () Bool)

(declare-fun e!3360421 () Bool)

(assert (=> b!5422247 (=> res!2307061 e!3360421)))

(declare-fun lt!2211275 () Bool)

(declare-fun lt!2211300 () Bool)

(assert (=> b!5422247 (= res!2307061 (or (not lt!2211275) (not lt!2211300)))))

(declare-fun b!5422248 () Bool)

(declare-fun e!3360425 () Bool)

(declare-fun tp_is_empty!39665 () Bool)

(assert (=> b!5422248 (= e!3360425 tp_is_empty!39665)))

(declare-fun b!5422249 () Bool)

(declare-fun e!3360413 () Bool)

(declare-fun lt!2211269 () Bool)

(assert (=> b!5422249 (= e!3360413 lt!2211269)))

(declare-fun b!5422250 () Bool)

(declare-fun e!3360433 () Bool)

(assert (=> b!5422250 (= e!3360433 e!3360421)))

(declare-fun res!2307053 () Bool)

(assert (=> b!5422250 (=> res!2307053 e!3360421)))

(declare-fun e!3360414 () Bool)

(assert (=> b!5422250 (= res!2307053 e!3360414)))

(declare-fun res!2307071 () Bool)

(assert (=> b!5422250 (=> (not res!2307071) (not e!3360414))))

(assert (=> b!5422250 (= res!2307071 (not lt!2211275))))

(declare-fun lt!2211315 () (Set Context!9180))

(assert (=> b!5422250 (= lt!2211275 (matchZipper!1450 lt!2211315 (t!375140 s!2326)))))

(declare-fun setRes!35336 () Bool)

(declare-fun setNonEmpty!35336 () Bool)

(declare-fun setElem!35336 () Context!9180)

(declare-fun e!3360419 () Bool)

(declare-fun tp!1496928 () Bool)

(declare-fun inv!81263 (Context!9180) Bool)

(assert (=> setNonEmpty!35336 (= setRes!35336 (and tp!1496928 (inv!81263 setElem!35336) e!3360419))))

(declare-fun z!1189 () (Set Context!9180))

(declare-fun setRest!35336 () (Set Context!9180))

(assert (=> setNonEmpty!35336 (= z!1189 (set.union (set.insert setElem!35336 (as set.empty (Set Context!9180))) setRest!35336))))

(declare-fun b!5422251 () Bool)

(declare-fun lt!2211285 () (Set Context!9180))

(assert (=> b!5422251 (= e!3360414 (not (matchZipper!1450 lt!2211285 (t!375140 s!2326))))))

(declare-fun b!5422252 () Bool)

(declare-fun e!3360407 () Bool)

(declare-fun e!3360434 () Bool)

(assert (=> b!5422252 (= e!3360407 e!3360434)))

(declare-fun res!2307064 () Bool)

(assert (=> b!5422252 (=> res!2307064 e!3360434)))

(declare-fun lt!2211268 () Regex!15206)

(assert (=> b!5422252 (= res!2307064 (not (= r!7292 lt!2211268)))))

(assert (=> b!5422252 (= lt!2211268 (Concat!24051 lt!2211306 (regTwo!30924 r!7292)))))

(declare-fun b!5422253 () Bool)

(declare-fun e!3360432 () Bool)

(declare-fun tp!1496932 () Bool)

(assert (=> b!5422253 (= e!3360432 (and tp_is_empty!39665 tp!1496932))))

(declare-fun b!5422254 () Bool)

(declare-fun e!3360423 () Bool)

(assert (=> b!5422254 (= e!3360423 e!3360415)))

(declare-fun res!2307063 () Bool)

(assert (=> b!5422254 (=> res!2307063 e!3360415)))

(declare-fun lt!2211264 () List!61917)

(assert (=> b!5422254 (= res!2307063 (not (= s!2326 lt!2211264)))))

(declare-fun ++!13585 (List!61917 List!61917) List!61917)

(assert (=> b!5422254 (= lt!2211264 (++!13585 (_1!35708 lt!2211279) (_2!35708 lt!2211279)))))

(declare-datatypes ((Option!15317 0))(
  ( (None!15316) (Some!15316 (v!51345 tuple2!64810)) )
))
(declare-fun lt!2211274 () Option!15317)

(declare-fun get!21312 (Option!15317) tuple2!64810)

(assert (=> b!5422254 (= lt!2211279 (get!21312 lt!2211274))))

(declare-fun isDefined!12020 (Option!15317) Bool)

(assert (=> b!5422254 (isDefined!12020 lt!2211274)))

(declare-fun lt!2211293 () (Set Context!9180))

(declare-fun findConcatSeparationZippers!63 ((Set Context!9180) (Set Context!9180) List!61917 List!61917 List!61917) Option!15317)

(assert (=> b!5422254 (= lt!2211274 (findConcatSeparationZippers!63 lt!2211293 lt!2211320 Nil!61793 s!2326 s!2326))))

(declare-fun lt!2211266 () Context!9180)

(declare-datatypes ((Unit!154346 0))(
  ( (Unit!154347) )
))
(declare-fun lt!2211272 () Unit!154346)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!63 ((Set Context!9180) Context!9180 List!61917) Unit!154346)

(assert (=> b!5422254 (= lt!2211272 (lemmaConcatZipperMatchesStringThenFindConcatDefined!63 lt!2211293 lt!2211266 s!2326))))

(declare-fun e!3360428 () Bool)

(declare-fun e!3360417 () Bool)

(assert (=> b!5422255 (= e!3360428 e!3360417)))

(declare-fun res!2307068 () Bool)

(assert (=> b!5422255 (=> res!2307068 e!3360417)))

(assert (=> b!5422255 (= res!2307068 (or (and (is-ElementMatch!15206 (regOne!30924 r!7292)) (= (c!945702 (regOne!30924 r!7292)) (h!68241 s!2326))) (is-Union!15206 (regOne!30924 r!7292))))))

(declare-fun lt!2211304 () Unit!154346)

(declare-fun e!3360408 () Unit!154346)

(assert (=> b!5422255 (= lt!2211304 e!3360408)))

(declare-fun c!945701 () Bool)

(declare-fun lt!2211286 () Bool)

(assert (=> b!5422255 (= c!945701 lt!2211286)))

(declare-datatypes ((List!61919 0))(
  ( (Nil!61795) (Cons!61795 (h!68243 Context!9180) (t!375142 List!61919)) )
))
(declare-fun zl!343 () List!61919)

(declare-fun nullable!5375 (Regex!15206) Bool)

(assert (=> b!5422255 (= lt!2211286 (nullable!5375 (h!68242 (exprs!5090 (h!68243 zl!343)))))))

(declare-fun lambda!284042 () Int)

(declare-fun flatMap!933 ((Set Context!9180) Int) (Set Context!9180))

(declare-fun derivationStepZipperUp!578 (Context!9180 C!30682) (Set Context!9180))

(assert (=> b!5422255 (= (flatMap!933 z!1189 lambda!284042) (derivationStepZipperUp!578 (h!68243 zl!343) (h!68241 s!2326)))))

(declare-fun lt!2211303 () Unit!154346)

(declare-fun lemmaFlatMapOnSingletonSet!465 ((Set Context!9180) Context!9180 Int) Unit!154346)

(assert (=> b!5422255 (= lt!2211303 (lemmaFlatMapOnSingletonSet!465 z!1189 (h!68243 zl!343) lambda!284042))))

(declare-fun lt!2211267 () Context!9180)

(assert (=> b!5422255 (= lt!2211285 (derivationStepZipperUp!578 lt!2211267 (h!68241 s!2326)))))

(declare-fun derivationStepZipperDown!654 (Regex!15206 Context!9180 C!30682) (Set Context!9180))

(assert (=> b!5422255 (= lt!2211315 (derivationStepZipperDown!654 (h!68242 (exprs!5090 (h!68243 zl!343))) lt!2211267 (h!68241 s!2326)))))

(assert (=> b!5422255 (= lt!2211267 (Context!9181 (t!375141 (exprs!5090 (h!68243 zl!343)))))))

(declare-fun lt!2211312 () (Set Context!9180))

(assert (=> b!5422255 (= lt!2211312 (derivationStepZipperUp!578 (Context!9181 (Cons!61794 (h!68242 (exprs!5090 (h!68243 zl!343))) (t!375141 (exprs!5090 (h!68243 zl!343))))) (h!68241 s!2326)))))

(declare-fun b!5422256 () Bool)

(declare-fun res!2307051 () Bool)

(assert (=> b!5422256 (=> res!2307051 e!3360407)))

(declare-fun lt!2211261 () Regex!15206)

(assert (=> b!5422256 (= res!2307051 (not (= lt!2211261 r!7292)))))

(declare-fun b!5422257 () Bool)

(declare-fun res!2307073 () Bool)

(declare-fun e!3360412 () Bool)

(assert (=> b!5422257 (=> res!2307073 e!3360412)))

(assert (=> b!5422257 (= res!2307073 (or (is-EmptyExpr!15206 r!7292) (is-EmptyLang!15206 r!7292) (is-ElementMatch!15206 r!7292) (is-Union!15206 r!7292) (not (is-Concat!24051 r!7292))))))

(declare-fun b!5422258 () Bool)

(declare-fun e!3360424 () Bool)

(assert (=> b!5422258 (= e!3360424 (nullable!5375 (regOne!30924 (regOne!30924 r!7292))))))

(declare-fun b!5422259 () Bool)

(declare-fun res!2307066 () Bool)

(assert (=> b!5422259 (=> res!2307066 e!3360428)))

(declare-fun isEmpty!33794 (List!61918) Bool)

(assert (=> b!5422259 (= res!2307066 (isEmpty!33794 (t!375141 (exprs!5090 (h!68243 zl!343)))))))

(declare-fun b!5422260 () Bool)

(declare-fun e!3360427 () Bool)

(assert (=> b!5422260 (= e!3360417 e!3360427)))

(declare-fun res!2307072 () Bool)

(assert (=> b!5422260 (=> res!2307072 e!3360427)))

(declare-fun lt!2211276 () (Set Context!9180))

(assert (=> b!5422260 (= res!2307072 (not (= lt!2211315 lt!2211276)))))

(assert (=> b!5422260 (= lt!2211276 (derivationStepZipperDown!654 (reg!15535 (regOne!30924 r!7292)) lt!2211266 (h!68241 s!2326)))))

(declare-fun lt!2211262 () List!61918)

(assert (=> b!5422260 (= lt!2211266 (Context!9181 lt!2211262))))

(assert (=> b!5422260 (= lt!2211262 (Cons!61794 lt!2211306 (t!375141 (exprs!5090 (h!68243 zl!343)))))))

(assert (=> b!5422260 (= lt!2211306 (Star!15206 (reg!15535 (regOne!30924 r!7292))))))

(declare-fun b!5422261 () Bool)

(declare-fun e!3360410 () Bool)

(assert (=> b!5422261 (= e!3360410 e!3360433)))

(declare-fun res!2307049 () Bool)

(assert (=> b!5422261 (=> res!2307049 e!3360433)))

(declare-fun lt!2211311 () Bool)

(assert (=> b!5422261 (= res!2307049 lt!2211311)))

(declare-fun lt!2211288 () Regex!15206)

(declare-fun matchRSpec!2309 (Regex!15206 List!61917) Bool)

(assert (=> b!5422261 (= lt!2211269 (matchRSpec!2309 lt!2211288 s!2326))))

(declare-fun matchR!7391 (Regex!15206 List!61917) Bool)

(assert (=> b!5422261 (= lt!2211269 (matchR!7391 lt!2211288 s!2326))))

(declare-fun lt!2211284 () Unit!154346)

(declare-fun mainMatchTheorem!2309 (Regex!15206 List!61917) Unit!154346)

(assert (=> b!5422261 (= lt!2211284 (mainMatchTheorem!2309 lt!2211288 s!2326))))

(declare-fun b!5422262 () Bool)

(declare-fun res!2307038 () Bool)

(assert (=> b!5422262 (=> res!2307038 e!3360412)))

(declare-fun generalisedUnion!1135 (List!61918) Regex!15206)

(declare-fun unfocusZipperList!648 (List!61919) List!61918)

(assert (=> b!5422262 (= res!2307038 (not (= r!7292 (generalisedUnion!1135 (unfocusZipperList!648 zl!343)))))))

(declare-fun b!5422263 () Bool)

(declare-fun res!2307058 () Bool)

(assert (=> b!5422263 (=> res!2307058 e!3360433)))

(assert (=> b!5422263 (= res!2307058 (not lt!2211286))))

(declare-fun b!5422264 () Bool)

(declare-fun tp!1496929 () Bool)

(assert (=> b!5422264 (= e!3360419 tp!1496929)))

(declare-fun tp!1496926 () Bool)

(declare-fun b!5422265 () Bool)

(declare-fun e!3360409 () Bool)

(declare-fun e!3360411 () Bool)

(assert (=> b!5422265 (= e!3360411 (and (inv!81263 (h!68243 zl!343)) e!3360409 tp!1496926))))

(declare-fun b!5422266 () Bool)

(declare-fun tp!1496930 () Bool)

(assert (=> b!5422266 (= e!3360425 tp!1496930)))

(declare-fun b!5422267 () Bool)

(declare-fun res!2307050 () Bool)

(assert (=> b!5422267 (=> res!2307050 e!3360415)))

(assert (=> b!5422267 (= res!2307050 (not (matchZipper!1450 lt!2211293 (_1!35708 lt!2211279))))))

(declare-fun b!5422268 () Bool)

(declare-fun res!2307047 () Bool)

(declare-fun e!3360430 () Bool)

(assert (=> b!5422268 (=> res!2307047 e!3360430)))

(declare-fun lt!2211270 () tuple2!64810)

(assert (=> b!5422268 (= res!2307047 (not (matchR!7391 lt!2211306 (_2!35708 lt!2211270))))))

(declare-fun b!5422269 () Bool)

(declare-fun e!3360420 () Bool)

(assert (=> b!5422269 (= e!3360420 (matchZipper!1450 lt!2211285 (t!375140 s!2326)))))

(declare-fun b!5422270 () Bool)

(declare-fun Unit!154348 () Unit!154346)

(assert (=> b!5422270 (= e!3360408 Unit!154348)))

(declare-fun b!5422271 () Bool)

(declare-fun tp!1496934 () Bool)

(declare-fun tp!1496931 () Bool)

(assert (=> b!5422271 (= e!3360425 (and tp!1496934 tp!1496931))))

(declare-fun b!5422272 () Bool)

(declare-fun validRegex!6942 (Regex!15206) Bool)

(assert (=> b!5422272 (= e!3360430 (validRegex!6942 (regTwo!30924 r!7292)))))

(declare-fun lt!2211281 () List!61917)

(assert (=> b!5422272 (matchR!7391 lt!2211306 lt!2211281)))

(declare-fun lt!2211277 () Unit!154346)

(declare-fun lemmaStarApp!59 (Regex!15206 List!61917 List!61917) Unit!154346)

(assert (=> b!5422272 (= lt!2211277 (lemmaStarApp!59 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211270) (_2!35708 lt!2211270)))))

(declare-fun b!5422273 () Bool)

(declare-fun e!3360429 () Bool)

(assert (=> b!5422273 (= e!3360429 e!3360410)))

(declare-fun res!2307052 () Bool)

(assert (=> b!5422273 (=> res!2307052 e!3360410)))

(declare-fun lt!2211295 () List!61919)

(declare-fun unfocusZipper!948 (List!61919) Regex!15206)

(assert (=> b!5422273 (= res!2307052 (not (= (unfocusZipper!948 lt!2211295) lt!2211268)))))

(assert (=> b!5422273 (= lt!2211295 (Cons!61795 lt!2211266 Nil!61795))))

(declare-fun setIsEmpty!35336 () Bool)

(assert (=> setIsEmpty!35336 setRes!35336))

(declare-fun b!5422274 () Bool)

(declare-fun res!2307059 () Bool)

(declare-fun e!3360426 () Bool)

(assert (=> b!5422274 (=> (not res!2307059) (not e!3360426))))

(declare-fun toList!8990 ((Set Context!9180)) List!61919)

(assert (=> b!5422274 (= res!2307059 (= (toList!8990 z!1189) zl!343))))

(declare-fun b!5422275 () Bool)

(declare-fun tp!1496935 () Bool)

(declare-fun tp!1496933 () Bool)

(assert (=> b!5422275 (= e!3360425 (and tp!1496935 tp!1496933))))

(declare-fun b!5422276 () Bool)

(declare-fun e!3360431 () Bool)

(assert (=> b!5422276 (= e!3360427 e!3360431)))

(declare-fun res!2307036 () Bool)

(assert (=> b!5422276 (=> res!2307036 e!3360431)))

(declare-fun lt!2211271 () (Set Context!9180))

(assert (=> b!5422276 (= res!2307036 (not (= lt!2211271 lt!2211276)))))

(declare-fun lt!2211294 () (Set Context!9180))

(declare-fun lt!2211305 () Context!9180)

(assert (=> b!5422276 (= (flatMap!933 lt!2211294 lambda!284042) (derivationStepZipperUp!578 lt!2211305 (h!68241 s!2326)))))

(declare-fun lt!2211290 () Unit!154346)

(assert (=> b!5422276 (= lt!2211290 (lemmaFlatMapOnSingletonSet!465 lt!2211294 lt!2211305 lambda!284042))))

(declare-fun lt!2211308 () (Set Context!9180))

(assert (=> b!5422276 (= lt!2211308 (derivationStepZipperUp!578 lt!2211305 (h!68241 s!2326)))))

(declare-fun derivationStepZipper!1445 ((Set Context!9180) C!30682) (Set Context!9180))

(assert (=> b!5422276 (= lt!2211271 (derivationStepZipper!1445 lt!2211294 (h!68241 s!2326)))))

(assert (=> b!5422276 (= lt!2211294 (set.insert lt!2211305 (as set.empty (Set Context!9180))))))

(assert (=> b!5422276 (= lt!2211305 (Context!9181 (Cons!61794 (reg!15535 (regOne!30924 r!7292)) lt!2211262)))))

(declare-fun res!2307044 () Bool)

(assert (=> start!569264 (=> (not res!2307044) (not e!3360426))))

(assert (=> start!569264 (= res!2307044 (validRegex!6942 r!7292))))

(assert (=> start!569264 e!3360426))

(assert (=> start!569264 e!3360425))

(declare-fun condSetEmpty!35336 () Bool)

(assert (=> start!569264 (= condSetEmpty!35336 (= z!1189 (as set.empty (Set Context!9180))))))

(assert (=> start!569264 setRes!35336))

(assert (=> start!569264 e!3360411))

(assert (=> start!569264 e!3360432))

(assert (=> b!5422277 (= e!3360412 e!3360428)))

(declare-fun res!2307070 () Bool)

(assert (=> b!5422277 (=> res!2307070 e!3360428)))

(declare-fun lt!2211298 () Bool)

(assert (=> b!5422277 (= res!2307070 (or (not (= lt!2211311 lt!2211298)) (is-Nil!61793 s!2326)))))

(declare-fun Exists!2387 (Int) Bool)

(assert (=> b!5422277 (= (Exists!2387 lambda!284040) (Exists!2387 lambda!284041))))

(declare-fun lt!2211302 () Unit!154346)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1041 (Regex!15206 Regex!15206 List!61917) Unit!154346)

(assert (=> b!5422277 (= lt!2211302 (lemmaExistCutMatchRandMatchRSpecEquivalent!1041 (regOne!30924 r!7292) (regTwo!30924 r!7292) s!2326))))

(assert (=> b!5422277 (= lt!2211298 (Exists!2387 lambda!284040))))

(declare-fun findConcatSeparation!1731 (Regex!15206 Regex!15206 List!61917 List!61917 List!61917) Option!15317)

(assert (=> b!5422277 (= lt!2211298 (isDefined!12020 (findConcatSeparation!1731 (regOne!30924 r!7292) (regTwo!30924 r!7292) Nil!61793 s!2326 s!2326)))))

(declare-fun lt!2211283 () Unit!154346)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1495 (Regex!15206 Regex!15206 List!61917) Unit!154346)

(assert (=> b!5422277 (= lt!2211283 (lemmaFindConcatSeparationEquivalentToExists!1495 (regOne!30924 r!7292) (regTwo!30924 r!7292) s!2326))))

(declare-fun b!5422278 () Bool)

(declare-fun tp!1496927 () Bool)

(assert (=> b!5422278 (= e!3360409 tp!1496927)))

(declare-fun b!5422279 () Bool)

(declare-fun res!2307045 () Bool)

(assert (=> b!5422279 (=> res!2307045 e!3360433)))

(assert (=> b!5422279 (= res!2307045 (not (matchZipper!1450 z!1189 s!2326)))))

(assert (=> b!5422280 (= e!3360421 e!3360423)))

(declare-fun res!2307040 () Bool)

(assert (=> b!5422280 (=> res!2307040 e!3360423)))

(declare-fun appendTo!65 ((Set Context!9180) Context!9180) (Set Context!9180))

(assert (=> b!5422280 (= res!2307040 (not (= (appendTo!65 lt!2211293 lt!2211266) lt!2211294)))))

(declare-fun lt!2211280 () List!61918)

(declare-fun lambda!284043 () Int)

(declare-fun map!14194 ((Set Context!9180) Int) (Set Context!9180))

(declare-fun ++!13586 (List!61918 List!61918) List!61918)

(assert (=> b!5422280 (= (map!14194 lt!2211293 lambda!284043) (set.insert (Context!9181 (++!13586 lt!2211280 lt!2211262)) (as set.empty (Set Context!9180))))))

(declare-fun lambda!284044 () Int)

(declare-fun lt!2211259 () Unit!154346)

(declare-fun lemmaConcatPreservesForall!231 (List!61918 List!61918 Int) Unit!154346)

(assert (=> b!5422280 (= lt!2211259 (lemmaConcatPreservesForall!231 lt!2211280 lt!2211262 lambda!284044))))

(declare-fun lt!2211323 () Context!9180)

(declare-fun lt!2211278 () Unit!154346)

(declare-fun lemmaMapOnSingletonSet!65 ((Set Context!9180) Context!9180 Int) Unit!154346)

(assert (=> b!5422280 (= lt!2211278 (lemmaMapOnSingletonSet!65 lt!2211293 lt!2211323 lambda!284043))))

(declare-fun e!3360422 () Bool)

(assert (=> b!5422281 (= e!3360422 e!3360430)))

(declare-fun res!2307060 () Bool)

(assert (=> b!5422281 (=> res!2307060 e!3360430)))

(assert (=> b!5422281 (= res!2307060 (not (matchR!7391 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211270))))))

(assert (=> b!5422281 (= (++!13585 lt!2211281 (_2!35708 lt!2211317)) (++!13585 (_1!35708 lt!2211270) (++!13585 (_2!35708 lt!2211270) (_2!35708 lt!2211317))))))

(assert (=> b!5422281 (= lt!2211281 (++!13585 (_1!35708 lt!2211270) (_2!35708 lt!2211270)))))

(declare-fun lt!2211297 () Unit!154346)

(declare-fun lemmaConcatAssociativity!2841 (List!61917 List!61917 List!61917) Unit!154346)

(assert (=> b!5422281 (= lt!2211297 (lemmaConcatAssociativity!2841 (_1!35708 lt!2211270) (_2!35708 lt!2211270) (_2!35708 lt!2211317)))))

(declare-fun lt!2211318 () Option!15317)

(assert (=> b!5422281 (= lt!2211270 (get!21312 lt!2211318))))

(assert (=> b!5422281 (= (Exists!2387 lambda!284047) (Exists!2387 lambda!284049))))

(declare-fun lt!2211287 () Unit!154346)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!417 (Regex!15206 List!61917) Unit!154346)

(assert (=> b!5422281 (= lt!2211287 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!417 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211317)))))

(assert (=> b!5422281 (= (Exists!2387 lambda!284047) (Exists!2387 lambda!284048))))

(declare-fun lt!2211322 () Unit!154346)

(assert (=> b!5422281 (= lt!2211322 (lemmaExistCutMatchRandMatchRSpecEquivalent!1041 (reg!15535 (regOne!30924 r!7292)) lt!2211306 (_1!35708 lt!2211317)))))

(assert (=> b!5422281 (= (isDefined!12020 lt!2211318) (Exists!2387 lambda!284047))))

(assert (=> b!5422281 (= lt!2211318 (findConcatSeparation!1731 (reg!15535 (regOne!30924 r!7292)) lt!2211306 Nil!61793 (_1!35708 lt!2211317) (_1!35708 lt!2211317)))))

(declare-fun lt!2211282 () Unit!154346)

(assert (=> b!5422281 (= lt!2211282 (lemmaFindConcatSeparationEquivalentToExists!1495 (reg!15535 (regOne!30924 r!7292)) lt!2211306 (_1!35708 lt!2211317)))))

(assert (=> b!5422281 (matchRSpec!2309 lt!2211321 (_1!35708 lt!2211317))))

(declare-fun lt!2211260 () Unit!154346)

(assert (=> b!5422281 (= lt!2211260 (mainMatchTheorem!2309 lt!2211321 (_1!35708 lt!2211317)))))

(declare-fun b!5422282 () Bool)

(declare-fun res!2307069 () Bool)

(assert (=> b!5422282 (=> res!2307069 e!3360412)))

(declare-fun generalisedConcat!875 (List!61918) Regex!15206)

(assert (=> b!5422282 (= res!2307069 (not (= r!7292 (generalisedConcat!875 (exprs!5090 (h!68243 zl!343))))))))

(declare-fun b!5422283 () Bool)

(declare-fun Unit!154349 () Unit!154346)

(assert (=> b!5422283 (= e!3360408 Unit!154349)))

(declare-fun lt!2211263 () Unit!154346)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!443 ((Set Context!9180) (Set Context!9180) List!61917) Unit!154346)

(assert (=> b!5422283 (= lt!2211263 (lemmaZipperConcatMatchesSameAsBothZippers!443 lt!2211315 lt!2211285 (t!375140 s!2326)))))

(declare-fun res!2307043 () Bool)

(assert (=> b!5422283 (= res!2307043 (matchZipper!1450 lt!2211315 (t!375140 s!2326)))))

(assert (=> b!5422283 (=> res!2307043 e!3360420)))

(assert (=> b!5422283 (= (matchZipper!1450 (set.union lt!2211315 lt!2211285) (t!375140 s!2326)) e!3360420)))

(declare-fun b!5422284 () Bool)

(declare-fun res!2307039 () Bool)

(assert (=> b!5422284 (=> res!2307039 e!3360417)))

(assert (=> b!5422284 (= res!2307039 e!3360424)))

(declare-fun res!2307057 () Bool)

(assert (=> b!5422284 (=> (not res!2307057) (not e!3360424))))

(assert (=> b!5422284 (= res!2307057 (is-Concat!24051 (regOne!30924 r!7292)))))

(declare-fun b!5422285 () Bool)

(declare-fun res!2307056 () Bool)

(assert (=> b!5422285 (=> res!2307056 e!3360412)))

(assert (=> b!5422285 (= res!2307056 (not (is-Cons!61794 (exprs!5090 (h!68243 zl!343)))))))

(assert (=> b!5422286 (= e!3360415 e!3360422)))

(declare-fun res!2307046 () Bool)

(assert (=> b!5422286 (=> res!2307046 e!3360422)))

(assert (=> b!5422286 (= res!2307046 (not (matchR!7391 lt!2211321 (_1!35708 lt!2211317))))))

(declare-fun lt!2211309 () Option!15317)

(assert (=> b!5422286 (= lt!2211317 (get!21312 lt!2211309))))

(assert (=> b!5422286 (= (Exists!2387 lambda!284045) (Exists!2387 lambda!284046))))

(declare-fun lt!2211296 () Unit!154346)

(assert (=> b!5422286 (= lt!2211296 (lemmaExistCutMatchRandMatchRSpecEquivalent!1041 lt!2211321 (regTwo!30924 r!7292) s!2326))))

(assert (=> b!5422286 (= (isDefined!12020 lt!2211309) (Exists!2387 lambda!284045))))

(assert (=> b!5422286 (= lt!2211309 (findConcatSeparation!1731 lt!2211321 (regTwo!30924 r!7292) Nil!61793 s!2326 s!2326))))

(declare-fun lt!2211319 () Unit!154346)

(assert (=> b!5422286 (= lt!2211319 (lemmaFindConcatSeparationEquivalentToExists!1495 lt!2211321 (regTwo!30924 r!7292) s!2326))))

(declare-fun lt!2211310 () Regex!15206)

(assert (=> b!5422286 (matchRSpec!2309 lt!2211310 s!2326)))

(declare-fun lt!2211307 () Unit!154346)

(assert (=> b!5422286 (= lt!2211307 (mainMatchTheorem!2309 lt!2211310 s!2326))))

(assert (=> b!5422286 (matchR!7391 lt!2211310 s!2326)))

(assert (=> b!5422286 (= lt!2211310 (Concat!24051 lt!2211321 (regTwo!30924 r!7292)))))

(assert (=> b!5422286 (= lt!2211321 (Concat!24051 (reg!15535 (regOne!30924 r!7292)) lt!2211306))))

(declare-fun lt!2211265 () Unit!154346)

(declare-fun lemmaConcatAssociative!59 (Regex!15206 Regex!15206 Regex!15206 List!61917) Unit!154346)

(assert (=> b!5422286 (= lt!2211265 (lemmaConcatAssociative!59 (reg!15535 (regOne!30924 r!7292)) lt!2211306 (regTwo!30924 r!7292) s!2326))))

(assert (=> b!5422286 e!3360413))

(declare-fun res!2307041 () Bool)

(assert (=> b!5422286 (=> (not res!2307041) (not e!3360413))))

(assert (=> b!5422286 (= res!2307041 (matchR!7391 lt!2211288 lt!2211264))))

(declare-fun lt!2211292 () Unit!154346)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!229 (Regex!15206 Regex!15206 List!61917 List!61917) Unit!154346)

(assert (=> b!5422286 (= lt!2211292 (lemmaTwoRegexMatchThenConcatMatchesConcatString!229 (reg!15535 (regOne!30924 r!7292)) lt!2211268 (_1!35708 lt!2211279) (_2!35708 lt!2211279)))))

(assert (=> b!5422286 (matchR!7391 lt!2211268 (_2!35708 lt!2211279))))

(declare-fun lt!2211291 () Unit!154346)

(declare-fun theoremZipperRegexEquiv!520 ((Set Context!9180) List!61919 Regex!15206 List!61917) Unit!154346)

(assert (=> b!5422286 (= lt!2211291 (theoremZipperRegexEquiv!520 lt!2211320 lt!2211295 lt!2211268 (_2!35708 lt!2211279)))))

(assert (=> b!5422286 (matchR!7391 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211279))))

(declare-fun lt!2211313 () Unit!154346)

(declare-fun lt!2211301 () List!61919)

(assert (=> b!5422286 (= lt!2211313 (theoremZipperRegexEquiv!520 lt!2211293 lt!2211301 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211279)))))

(assert (=> b!5422286 (matchZipper!1450 (set.insert (Context!9181 (++!13586 lt!2211280 lt!2211262)) (as set.empty (Set Context!9180))) lt!2211264)))

(declare-fun lt!2211314 () Unit!154346)

(assert (=> b!5422286 (= lt!2211314 (lemmaConcatPreservesForall!231 lt!2211280 lt!2211262 lambda!284044))))

(declare-fun lt!2211258 () Unit!154346)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!79 (Context!9180 Context!9180 List!61917 List!61917) Unit!154346)

(assert (=> b!5422286 (= lt!2211258 (lemmaConcatenateContextMatchesConcatOfStrings!79 lt!2211323 lt!2211266 (_1!35708 lt!2211279) (_2!35708 lt!2211279)))))

(declare-fun b!5422287 () Bool)

(declare-fun e!3360418 () Bool)

(assert (=> b!5422287 (= e!3360426 e!3360418)))

(declare-fun res!2307054 () Bool)

(assert (=> b!5422287 (=> (not res!2307054) (not e!3360418))))

(assert (=> b!5422287 (= res!2307054 (= r!7292 lt!2211261))))

(assert (=> b!5422287 (= lt!2211261 (unfocusZipper!948 zl!343))))

(declare-fun b!5422288 () Bool)

(declare-fun e!3360416 () Bool)

(assert (=> b!5422288 (= e!3360416 e!3360429)))

(declare-fun res!2307055 () Bool)

(assert (=> b!5422288 (=> res!2307055 e!3360429)))

(assert (=> b!5422288 (= res!2307055 (not (= (unfocusZipper!948 lt!2211301) (reg!15535 (regOne!30924 r!7292)))))))

(assert (=> b!5422288 (= lt!2211301 (Cons!61795 lt!2211323 Nil!61795))))

(assert (=> b!5422288 (= (flatMap!933 lt!2211320 lambda!284042) (derivationStepZipperUp!578 lt!2211266 (h!68241 s!2326)))))

(declare-fun lt!2211289 () Unit!154346)

(assert (=> b!5422288 (= lt!2211289 (lemmaFlatMapOnSingletonSet!465 lt!2211320 lt!2211266 lambda!284042))))

(assert (=> b!5422288 (= (flatMap!933 lt!2211293 lambda!284042) (derivationStepZipperUp!578 lt!2211323 (h!68241 s!2326)))))

(declare-fun lt!2211316 () Unit!154346)

(assert (=> b!5422288 (= lt!2211316 (lemmaFlatMapOnSingletonSet!465 lt!2211293 lt!2211323 lambda!284042))))

(declare-fun lt!2211299 () (Set Context!9180))

(assert (=> b!5422288 (= lt!2211299 (derivationStepZipperUp!578 lt!2211266 (h!68241 s!2326)))))

(declare-fun lt!2211257 () (Set Context!9180))

(assert (=> b!5422288 (= lt!2211257 (derivationStepZipperUp!578 lt!2211323 (h!68241 s!2326)))))

(assert (=> b!5422288 (= lt!2211320 (set.insert lt!2211266 (as set.empty (Set Context!9180))))))

(assert (=> b!5422288 (= lt!2211293 (set.insert lt!2211323 (as set.empty (Set Context!9180))))))

(assert (=> b!5422288 (= lt!2211323 (Context!9181 lt!2211280))))

(assert (=> b!5422288 (= lt!2211280 (Cons!61794 (reg!15535 (regOne!30924 r!7292)) Nil!61794))))

(declare-fun b!5422289 () Bool)

(declare-fun res!2307048 () Bool)

(assert (=> b!5422289 (=> res!2307048 e!3360417)))

(assert (=> b!5422289 (= res!2307048 (or (is-Concat!24051 (regOne!30924 r!7292)) (not (is-Star!15206 (regOne!30924 r!7292)))))))

(declare-fun b!5422290 () Bool)

(assert (=> b!5422290 (= e!3360434 e!3360416)))

(declare-fun res!2307042 () Bool)

(assert (=> b!5422290 (=> res!2307042 e!3360416)))

(assert (=> b!5422290 (= res!2307042 (not (= (unfocusZipper!948 (Cons!61795 lt!2211305 Nil!61795)) lt!2211288)))))

(assert (=> b!5422290 (= lt!2211288 (Concat!24051 (reg!15535 (regOne!30924 r!7292)) lt!2211268))))

(declare-fun b!5422291 () Bool)

(assert (=> b!5422291 (= e!3360431 e!3360407)))

(declare-fun res!2307062 () Bool)

(assert (=> b!5422291 (=> res!2307062 e!3360407)))

(assert (=> b!5422291 (= res!2307062 (not (= lt!2211300 (matchZipper!1450 lt!2211271 (t!375140 s!2326)))))))

(assert (=> b!5422291 (= lt!2211300 (matchZipper!1450 lt!2211294 s!2326))))

(declare-fun b!5422292 () Bool)

(declare-fun res!2307065 () Bool)

(assert (=> b!5422292 (=> res!2307065 e!3360412)))

(declare-fun isEmpty!33795 (List!61919) Bool)

(assert (=> b!5422292 (= res!2307065 (not (isEmpty!33795 (t!375142 zl!343))))))

(declare-fun b!5422293 () Bool)

(assert (=> b!5422293 (= e!3360418 (not e!3360412))))

(declare-fun res!2307037 () Bool)

(assert (=> b!5422293 (=> res!2307037 e!3360412)))

(assert (=> b!5422293 (= res!2307037 (not (is-Cons!61795 zl!343)))))

(assert (=> b!5422293 (= lt!2211311 (matchRSpec!2309 r!7292 s!2326))))

(assert (=> b!5422293 (= lt!2211311 (matchR!7391 r!7292 s!2326))))

(declare-fun lt!2211273 () Unit!154346)

(assert (=> b!5422293 (= lt!2211273 (mainMatchTheorem!2309 r!7292 s!2326))))

(assert (= (and start!569264 res!2307044) b!5422274))

(assert (= (and b!5422274 res!2307059) b!5422287))

(assert (= (and b!5422287 res!2307054) b!5422293))

(assert (= (and b!5422293 (not res!2307037)) b!5422292))

(assert (= (and b!5422292 (not res!2307065)) b!5422282))

(assert (= (and b!5422282 (not res!2307069)) b!5422285))

(assert (= (and b!5422285 (not res!2307056)) b!5422262))

(assert (= (and b!5422262 (not res!2307038)) b!5422257))

(assert (= (and b!5422257 (not res!2307073)) b!5422277))

(assert (= (and b!5422277 (not res!2307070)) b!5422259))

(assert (= (and b!5422259 (not res!2307066)) b!5422255))

(assert (= (and b!5422255 c!945701) b!5422283))

(assert (= (and b!5422255 (not c!945701)) b!5422270))

(assert (= (and b!5422283 (not res!2307043)) b!5422269))

(assert (= (and b!5422255 (not res!2307068)) b!5422284))

(assert (= (and b!5422284 res!2307057) b!5422258))

(assert (= (and b!5422284 (not res!2307039)) b!5422289))

(assert (= (and b!5422289 (not res!2307048)) b!5422260))

(assert (= (and b!5422260 (not res!2307072)) b!5422276))

(assert (= (and b!5422276 (not res!2307036)) b!5422291))

(assert (= (and b!5422291 (not res!2307062)) b!5422256))

(assert (= (and b!5422256 (not res!2307051)) b!5422252))

(assert (= (and b!5422252 (not res!2307064)) b!5422290))

(assert (= (and b!5422290 (not res!2307042)) b!5422288))

(assert (= (and b!5422288 (not res!2307055)) b!5422273))

(assert (= (and b!5422273 (not res!2307052)) b!5422261))

(assert (= (and b!5422261 (not res!2307049)) b!5422279))

(assert (= (and b!5422279 (not res!2307045)) b!5422263))

(assert (= (and b!5422263 (not res!2307058)) b!5422250))

(assert (= (and b!5422250 res!2307071) b!5422251))

(assert (= (and b!5422250 (not res!2307053)) b!5422247))

(assert (= (and b!5422247 (not res!2307061)) b!5422280))

(assert (= (and b!5422280 (not res!2307040)) b!5422254))

(assert (= (and b!5422254 (not res!2307063)) b!5422267))

(assert (= (and b!5422267 (not res!2307050)) b!5422246))

(assert (= (and b!5422246 (not res!2307067)) b!5422286))

(assert (= (and b!5422286 res!2307041) b!5422249))

(assert (= (and b!5422286 (not res!2307046)) b!5422281))

(assert (= (and b!5422281 (not res!2307060)) b!5422268))

(assert (= (and b!5422268 (not res!2307047)) b!5422272))

(assert (= (and start!569264 (is-ElementMatch!15206 r!7292)) b!5422248))

(assert (= (and start!569264 (is-Concat!24051 r!7292)) b!5422275))

(assert (= (and start!569264 (is-Star!15206 r!7292)) b!5422266))

(assert (= (and start!569264 (is-Union!15206 r!7292)) b!5422271))

(assert (= (and start!569264 condSetEmpty!35336) setIsEmpty!35336))

(assert (= (and start!569264 (not condSetEmpty!35336)) setNonEmpty!35336))

(assert (= setNonEmpty!35336 b!5422264))

(assert (= b!5422265 b!5422278))

(assert (= (and start!569264 (is-Cons!61795 zl!343)) b!5422265))

(assert (= (and start!569264 (is-Cons!61793 s!2326)) b!5422253))

(declare-fun m!6446264 () Bool)

(assert (=> b!5422280 m!6446264))

(declare-fun m!6446266 () Bool)

(assert (=> b!5422280 m!6446266))

(declare-fun m!6446268 () Bool)

(assert (=> b!5422280 m!6446268))

(declare-fun m!6446270 () Bool)

(assert (=> b!5422280 m!6446270))

(declare-fun m!6446272 () Bool)

(assert (=> b!5422280 m!6446272))

(declare-fun m!6446274 () Bool)

(assert (=> b!5422280 m!6446274))

(declare-fun m!6446276 () Bool)

(assert (=> b!5422267 m!6446276))

(declare-fun m!6446278 () Bool)

(assert (=> b!5422293 m!6446278))

(declare-fun m!6446280 () Bool)

(assert (=> b!5422293 m!6446280))

(declare-fun m!6446282 () Bool)

(assert (=> b!5422293 m!6446282))

(declare-fun m!6446284 () Bool)

(assert (=> setNonEmpty!35336 m!6446284))

(declare-fun m!6446286 () Bool)

(assert (=> b!5422268 m!6446286))

(declare-fun m!6446288 () Bool)

(assert (=> b!5422260 m!6446288))

(declare-fun m!6446290 () Bool)

(assert (=> b!5422288 m!6446290))

(declare-fun m!6446292 () Bool)

(assert (=> b!5422288 m!6446292))

(declare-fun m!6446294 () Bool)

(assert (=> b!5422288 m!6446294))

(declare-fun m!6446296 () Bool)

(assert (=> b!5422288 m!6446296))

(declare-fun m!6446298 () Bool)

(assert (=> b!5422288 m!6446298))

(declare-fun m!6446300 () Bool)

(assert (=> b!5422288 m!6446300))

(declare-fun m!6446302 () Bool)

(assert (=> b!5422288 m!6446302))

(declare-fun m!6446304 () Bool)

(assert (=> b!5422288 m!6446304))

(declare-fun m!6446306 () Bool)

(assert (=> b!5422288 m!6446306))

(declare-fun m!6446308 () Bool)

(assert (=> b!5422265 m!6446308))

(declare-fun m!6446310 () Bool)

(assert (=> b!5422282 m!6446310))

(declare-fun m!6446312 () Bool)

(assert (=> b!5422246 m!6446312))

(declare-fun m!6446314 () Bool)

(assert (=> start!569264 m!6446314))

(declare-fun m!6446316 () Bool)

(assert (=> b!5422269 m!6446316))

(declare-fun m!6446318 () Bool)

(assert (=> b!5422255 m!6446318))

(declare-fun m!6446320 () Bool)

(assert (=> b!5422255 m!6446320))

(declare-fun m!6446322 () Bool)

(assert (=> b!5422255 m!6446322))

(declare-fun m!6446324 () Bool)

(assert (=> b!5422255 m!6446324))

(declare-fun m!6446326 () Bool)

(assert (=> b!5422255 m!6446326))

(declare-fun m!6446328 () Bool)

(assert (=> b!5422255 m!6446328))

(declare-fun m!6446330 () Bool)

(assert (=> b!5422255 m!6446330))

(declare-fun m!6446332 () Bool)

(assert (=> b!5422276 m!6446332))

(declare-fun m!6446334 () Bool)

(assert (=> b!5422276 m!6446334))

(declare-fun m!6446336 () Bool)

(assert (=> b!5422276 m!6446336))

(declare-fun m!6446338 () Bool)

(assert (=> b!5422276 m!6446338))

(declare-fun m!6446340 () Bool)

(assert (=> b!5422276 m!6446340))

(declare-fun m!6446342 () Bool)

(assert (=> b!5422262 m!6446342))

(assert (=> b!5422262 m!6446342))

(declare-fun m!6446344 () Bool)

(assert (=> b!5422262 m!6446344))

(assert (=> b!5422251 m!6446316))

(declare-fun m!6446346 () Bool)

(assert (=> b!5422273 m!6446346))

(declare-fun m!6446348 () Bool)

(assert (=> b!5422291 m!6446348))

(declare-fun m!6446350 () Bool)

(assert (=> b!5422291 m!6446350))

(declare-fun m!6446352 () Bool)

(assert (=> b!5422259 m!6446352))

(declare-fun m!6446354 () Bool)

(assert (=> b!5422287 m!6446354))

(declare-fun m!6446356 () Bool)

(assert (=> b!5422254 m!6446356))

(declare-fun m!6446358 () Bool)

(assert (=> b!5422254 m!6446358))

(declare-fun m!6446360 () Bool)

(assert (=> b!5422254 m!6446360))

(declare-fun m!6446362 () Bool)

(assert (=> b!5422254 m!6446362))

(declare-fun m!6446364 () Bool)

(assert (=> b!5422254 m!6446364))

(declare-fun m!6446366 () Bool)

(assert (=> b!5422286 m!6446366))

(declare-fun m!6446368 () Bool)

(assert (=> b!5422286 m!6446368))

(declare-fun m!6446370 () Bool)

(assert (=> b!5422286 m!6446370))

(declare-fun m!6446372 () Bool)

(assert (=> b!5422286 m!6446372))

(assert (=> b!5422286 m!6446266))

(declare-fun m!6446374 () Bool)

(assert (=> b!5422286 m!6446374))

(declare-fun m!6446376 () Bool)

(assert (=> b!5422286 m!6446376))

(declare-fun m!6446378 () Bool)

(assert (=> b!5422286 m!6446378))

(declare-fun m!6446380 () Bool)

(assert (=> b!5422286 m!6446380))

(declare-fun m!6446382 () Bool)

(assert (=> b!5422286 m!6446382))

(declare-fun m!6446384 () Bool)

(assert (=> b!5422286 m!6446384))

(assert (=> b!5422286 m!6446272))

(declare-fun m!6446386 () Bool)

(assert (=> b!5422286 m!6446386))

(assert (=> b!5422286 m!6446272))

(assert (=> b!5422286 m!6446268))

(declare-fun m!6446388 () Bool)

(assert (=> b!5422286 m!6446388))

(declare-fun m!6446390 () Bool)

(assert (=> b!5422286 m!6446390))

(declare-fun m!6446392 () Bool)

(assert (=> b!5422286 m!6446392))

(declare-fun m!6446394 () Bool)

(assert (=> b!5422286 m!6446394))

(declare-fun m!6446396 () Bool)

(assert (=> b!5422286 m!6446396))

(declare-fun m!6446398 () Bool)

(assert (=> b!5422286 m!6446398))

(declare-fun m!6446400 () Bool)

(assert (=> b!5422286 m!6446400))

(declare-fun m!6446402 () Bool)

(assert (=> b!5422286 m!6446402))

(declare-fun m!6446404 () Bool)

(assert (=> b!5422286 m!6446404))

(assert (=> b!5422286 m!6446382))

(declare-fun m!6446406 () Bool)

(assert (=> b!5422281 m!6446406))

(declare-fun m!6446408 () Bool)

(assert (=> b!5422281 m!6446408))

(declare-fun m!6446410 () Bool)

(assert (=> b!5422281 m!6446410))

(declare-fun m!6446412 () Bool)

(assert (=> b!5422281 m!6446412))

(declare-fun m!6446414 () Bool)

(assert (=> b!5422281 m!6446414))

(declare-fun m!6446416 () Bool)

(assert (=> b!5422281 m!6446416))

(declare-fun m!6446418 () Bool)

(assert (=> b!5422281 m!6446418))

(declare-fun m!6446420 () Bool)

(assert (=> b!5422281 m!6446420))

(declare-fun m!6446422 () Bool)

(assert (=> b!5422281 m!6446422))

(assert (=> b!5422281 m!6446420))

(declare-fun m!6446424 () Bool)

(assert (=> b!5422281 m!6446424))

(declare-fun m!6446426 () Bool)

(assert (=> b!5422281 m!6446426))

(declare-fun m!6446428 () Bool)

(assert (=> b!5422281 m!6446428))

(declare-fun m!6446430 () Bool)

(assert (=> b!5422281 m!6446430))

(declare-fun m!6446432 () Bool)

(assert (=> b!5422281 m!6446432))

(declare-fun m!6446434 () Bool)

(assert (=> b!5422281 m!6446434))

(assert (=> b!5422281 m!6446412))

(assert (=> b!5422281 m!6446412))

(declare-fun m!6446436 () Bool)

(assert (=> b!5422281 m!6446436))

(declare-fun m!6446438 () Bool)

(assert (=> b!5422281 m!6446438))

(declare-fun m!6446440 () Bool)

(assert (=> b!5422279 m!6446440))

(declare-fun m!6446442 () Bool)

(assert (=> b!5422272 m!6446442))

(declare-fun m!6446444 () Bool)

(assert (=> b!5422272 m!6446444))

(declare-fun m!6446446 () Bool)

(assert (=> b!5422272 m!6446446))

(declare-fun m!6446448 () Bool)

(assert (=> b!5422258 m!6446448))

(declare-fun m!6446450 () Bool)

(assert (=> b!5422292 m!6446450))

(declare-fun m!6446452 () Bool)

(assert (=> b!5422290 m!6446452))

(declare-fun m!6446454 () Bool)

(assert (=> b!5422277 m!6446454))

(declare-fun m!6446456 () Bool)

(assert (=> b!5422277 m!6446456))

(declare-fun m!6446458 () Bool)

(assert (=> b!5422277 m!6446458))

(declare-fun m!6446460 () Bool)

(assert (=> b!5422277 m!6446460))

(assert (=> b!5422277 m!6446454))

(declare-fun m!6446462 () Bool)

(assert (=> b!5422277 m!6446462))

(assert (=> b!5422277 m!6446458))

(declare-fun m!6446464 () Bool)

(assert (=> b!5422277 m!6446464))

(declare-fun m!6446466 () Bool)

(assert (=> b!5422261 m!6446466))

(declare-fun m!6446468 () Bool)

(assert (=> b!5422261 m!6446468))

(declare-fun m!6446470 () Bool)

(assert (=> b!5422261 m!6446470))

(declare-fun m!6446472 () Bool)

(assert (=> b!5422274 m!6446472))

(declare-fun m!6446474 () Bool)

(assert (=> b!5422283 m!6446474))

(declare-fun m!6446476 () Bool)

(assert (=> b!5422283 m!6446476))

(declare-fun m!6446478 () Bool)

(assert (=> b!5422283 m!6446478))

(assert (=> b!5422250 m!6446476))

(push 1)

(assert (not b!5422258))

(assert (not b!5422266))

(assert (not b!5422286))

(assert (not b!5422259))

(assert (not b!5422255))

(assert (not setNonEmpty!35336))

(assert (not b!5422262))

(assert (not b!5422288))

(assert (not b!5422276))

(assert (not b!5422264))

(assert (not b!5422280))

(assert (not b!5422265))

(assert (not b!5422267))

(assert (not b!5422292))

(assert (not start!569264))

(assert (not b!5422281))

(assert (not b!5422274))

(assert (not b!5422261))

(assert (not b!5422278))

(assert (not b!5422268))

(assert (not b!5422273))

(assert (not b!5422251))

(assert (not b!5422277))

(assert (not b!5422290))

(assert (not b!5422254))

(assert (not b!5422269))

(assert (not b!5422275))

(assert (not b!5422293))

(assert (not b!5422272))

(assert (not b!5422291))

(assert (not b!5422250))

(assert (not b!5422279))

(assert (not b!5422287))

(assert (not b!5422253))

(assert (not b!5422271))

(assert (not b!5422246))

(assert tp_is_empty!39665)

(assert (not b!5422282))

(assert (not b!5422260))

(assert (not b!5422283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1252781 () Bool)

(declare-fun d!1729711 () Bool)

(assert (= bs!1252781 (and d!1729711 b!5422280)))

(declare-fun lambda!284100 () Int)

(assert (=> bs!1252781 (= lambda!284100 lambda!284044)))

(declare-fun b!5422524 () Bool)

(declare-fun e!3360555 () Bool)

(declare-fun e!3360553 () Bool)

(assert (=> b!5422524 (= e!3360555 e!3360553)))

(declare-fun c!945728 () Bool)

(declare-fun tail!10728 (List!61918) List!61918)

(assert (=> b!5422524 (= c!945728 (isEmpty!33794 (tail!10728 (exprs!5090 (h!68243 zl!343)))))))

(declare-fun b!5422525 () Bool)

(declare-fun lt!2211529 () Regex!15206)

(declare-fun isEmptyExpr!989 (Regex!15206) Bool)

(assert (=> b!5422525 (= e!3360555 (isEmptyExpr!989 lt!2211529))))

(declare-fun b!5422526 () Bool)

(declare-fun isConcat!512 (Regex!15206) Bool)

(assert (=> b!5422526 (= e!3360553 (isConcat!512 lt!2211529))))

(declare-fun b!5422527 () Bool)

(declare-fun e!3360558 () Bool)

(assert (=> b!5422527 (= e!3360558 e!3360555)))

(declare-fun c!945726 () Bool)

(assert (=> b!5422527 (= c!945726 (isEmpty!33794 (exprs!5090 (h!68243 zl!343))))))

(declare-fun b!5422528 () Bool)

(declare-fun head!11631 (List!61918) Regex!15206)

(assert (=> b!5422528 (= e!3360553 (= lt!2211529 (head!11631 (exprs!5090 (h!68243 zl!343)))))))

(assert (=> d!1729711 e!3360558))

(declare-fun res!2307240 () Bool)

(assert (=> d!1729711 (=> (not res!2307240) (not e!3360558))))

(assert (=> d!1729711 (= res!2307240 (validRegex!6942 lt!2211529))))

(declare-fun e!3360556 () Regex!15206)

(assert (=> d!1729711 (= lt!2211529 e!3360556)))

(declare-fun c!945729 () Bool)

(declare-fun e!3360557 () Bool)

(assert (=> d!1729711 (= c!945729 e!3360557)))

(declare-fun res!2307239 () Bool)

(assert (=> d!1729711 (=> (not res!2307239) (not e!3360557))))

(assert (=> d!1729711 (= res!2307239 (is-Cons!61794 (exprs!5090 (h!68243 zl!343))))))

(declare-fun forall!14550 (List!61918 Int) Bool)

(assert (=> d!1729711 (forall!14550 (exprs!5090 (h!68243 zl!343)) lambda!284100)))

(assert (=> d!1729711 (= (generalisedConcat!875 (exprs!5090 (h!68243 zl!343))) lt!2211529)))

(declare-fun b!5422529 () Bool)

(assert (=> b!5422529 (= e!3360557 (isEmpty!33794 (t!375141 (exprs!5090 (h!68243 zl!343)))))))

(declare-fun b!5422530 () Bool)

(declare-fun e!3360554 () Regex!15206)

(assert (=> b!5422530 (= e!3360554 (Concat!24051 (h!68242 (exprs!5090 (h!68243 zl!343))) (generalisedConcat!875 (t!375141 (exprs!5090 (h!68243 zl!343))))))))

(declare-fun b!5422531 () Bool)

(assert (=> b!5422531 (= e!3360556 e!3360554)))

(declare-fun c!945727 () Bool)

(assert (=> b!5422531 (= c!945727 (is-Cons!61794 (exprs!5090 (h!68243 zl!343))))))

(declare-fun b!5422532 () Bool)

(assert (=> b!5422532 (= e!3360556 (h!68242 (exprs!5090 (h!68243 zl!343))))))

(declare-fun b!5422533 () Bool)

(assert (=> b!5422533 (= e!3360554 EmptyExpr!15206)))

(assert (= (and d!1729711 res!2307239) b!5422529))

(assert (= (and d!1729711 c!945729) b!5422532))

(assert (= (and d!1729711 (not c!945729)) b!5422531))

(assert (= (and b!5422531 c!945727) b!5422530))

(assert (= (and b!5422531 (not c!945727)) b!5422533))

(assert (= (and d!1729711 res!2307240) b!5422527))

(assert (= (and b!5422527 c!945726) b!5422525))

(assert (= (and b!5422527 (not c!945726)) b!5422524))

(assert (= (and b!5422524 c!945728) b!5422528))

(assert (= (and b!5422524 (not c!945728)) b!5422526))

(declare-fun m!6446696 () Bool)

(assert (=> b!5422527 m!6446696))

(declare-fun m!6446698 () Bool)

(assert (=> b!5422526 m!6446698))

(assert (=> b!5422529 m!6446352))

(declare-fun m!6446700 () Bool)

(assert (=> b!5422530 m!6446700))

(declare-fun m!6446702 () Bool)

(assert (=> b!5422528 m!6446702))

(declare-fun m!6446704 () Bool)

(assert (=> b!5422525 m!6446704))

(declare-fun m!6446706 () Bool)

(assert (=> d!1729711 m!6446706))

(declare-fun m!6446708 () Bool)

(assert (=> d!1729711 m!6446708))

(declare-fun m!6446710 () Bool)

(assert (=> b!5422524 m!6446710))

(assert (=> b!5422524 m!6446710))

(declare-fun m!6446712 () Bool)

(assert (=> b!5422524 m!6446712))

(assert (=> b!5422282 d!1729711))

(declare-fun bs!1252782 () Bool)

(declare-fun d!1729713 () Bool)

(assert (= bs!1252782 (and d!1729713 b!5422280)))

(declare-fun lambda!284103 () Int)

(assert (=> bs!1252782 (= lambda!284103 lambda!284044)))

(declare-fun bs!1252783 () Bool)

(assert (= bs!1252783 (and d!1729713 d!1729711)))

(assert (=> bs!1252783 (= lambda!284103 lambda!284100)))

(declare-fun b!5422554 () Bool)

(declare-fun e!3360573 () Bool)

(declare-fun lt!2211532 () Regex!15206)

(declare-fun isUnion!430 (Regex!15206) Bool)

(assert (=> b!5422554 (= e!3360573 (isUnion!430 lt!2211532))))

(declare-fun b!5422555 () Bool)

(declare-fun e!3360572 () Regex!15206)

(assert (=> b!5422555 (= e!3360572 (Union!15206 (h!68242 (unfocusZipperList!648 zl!343)) (generalisedUnion!1135 (t!375141 (unfocusZipperList!648 zl!343)))))))

(declare-fun b!5422556 () Bool)

(assert (=> b!5422556 (= e!3360573 (= lt!2211532 (head!11631 (unfocusZipperList!648 zl!343))))))

(declare-fun b!5422557 () Bool)

(declare-fun e!3360571 () Bool)

(declare-fun e!3360575 () Bool)

(assert (=> b!5422557 (= e!3360571 e!3360575)))

(declare-fun c!945738 () Bool)

(assert (=> b!5422557 (= c!945738 (isEmpty!33794 (unfocusZipperList!648 zl!343)))))

(declare-fun b!5422558 () Bool)

(assert (=> b!5422558 (= e!3360572 EmptyLang!15206)))

(declare-fun b!5422559 () Bool)

(assert (=> b!5422559 (= e!3360575 e!3360573)))

(declare-fun c!945741 () Bool)

(assert (=> b!5422559 (= c!945741 (isEmpty!33794 (tail!10728 (unfocusZipperList!648 zl!343))))))

(declare-fun b!5422560 () Bool)

(declare-fun e!3360576 () Regex!15206)

(assert (=> b!5422560 (= e!3360576 e!3360572)))

(declare-fun c!945740 () Bool)

(assert (=> b!5422560 (= c!945740 (is-Cons!61794 (unfocusZipperList!648 zl!343)))))

(declare-fun b!5422561 () Bool)

(declare-fun isEmptyLang!998 (Regex!15206) Bool)

(assert (=> b!5422561 (= e!3360575 (isEmptyLang!998 lt!2211532))))

(declare-fun b!5422563 () Bool)

(declare-fun e!3360574 () Bool)

(assert (=> b!5422563 (= e!3360574 (isEmpty!33794 (t!375141 (unfocusZipperList!648 zl!343))))))

(assert (=> d!1729713 e!3360571))

(declare-fun res!2307246 () Bool)

(assert (=> d!1729713 (=> (not res!2307246) (not e!3360571))))

(assert (=> d!1729713 (= res!2307246 (validRegex!6942 lt!2211532))))

(assert (=> d!1729713 (= lt!2211532 e!3360576)))

(declare-fun c!945739 () Bool)

(assert (=> d!1729713 (= c!945739 e!3360574)))

(declare-fun res!2307245 () Bool)

(assert (=> d!1729713 (=> (not res!2307245) (not e!3360574))))

(assert (=> d!1729713 (= res!2307245 (is-Cons!61794 (unfocusZipperList!648 zl!343)))))

(assert (=> d!1729713 (forall!14550 (unfocusZipperList!648 zl!343) lambda!284103)))

(assert (=> d!1729713 (= (generalisedUnion!1135 (unfocusZipperList!648 zl!343)) lt!2211532)))

(declare-fun b!5422562 () Bool)

(assert (=> b!5422562 (= e!3360576 (h!68242 (unfocusZipperList!648 zl!343)))))

(assert (= (and d!1729713 res!2307245) b!5422563))

(assert (= (and d!1729713 c!945739) b!5422562))

(assert (= (and d!1729713 (not c!945739)) b!5422560))

(assert (= (and b!5422560 c!945740) b!5422555))

(assert (= (and b!5422560 (not c!945740)) b!5422558))

(assert (= (and d!1729713 res!2307246) b!5422557))

(assert (= (and b!5422557 c!945738) b!5422561))

(assert (= (and b!5422557 (not c!945738)) b!5422559))

(assert (= (and b!5422559 c!945741) b!5422556))

(assert (= (and b!5422559 (not c!945741)) b!5422554))

(declare-fun m!6446714 () Bool)

(assert (=> b!5422555 m!6446714))

(declare-fun m!6446716 () Bool)

(assert (=> d!1729713 m!6446716))

(assert (=> d!1729713 m!6446342))

(declare-fun m!6446718 () Bool)

(assert (=> d!1729713 m!6446718))

(declare-fun m!6446720 () Bool)

(assert (=> b!5422563 m!6446720))

(assert (=> b!5422556 m!6446342))

(declare-fun m!6446722 () Bool)

(assert (=> b!5422556 m!6446722))

(assert (=> b!5422557 m!6446342))

(declare-fun m!6446724 () Bool)

(assert (=> b!5422557 m!6446724))

(assert (=> b!5422559 m!6446342))

(declare-fun m!6446726 () Bool)

(assert (=> b!5422559 m!6446726))

(assert (=> b!5422559 m!6446726))

(declare-fun m!6446728 () Bool)

(assert (=> b!5422559 m!6446728))

(declare-fun m!6446730 () Bool)

(assert (=> b!5422554 m!6446730))

(declare-fun m!6446732 () Bool)

(assert (=> b!5422561 m!6446732))

(assert (=> b!5422262 d!1729713))

(declare-fun bs!1252784 () Bool)

(declare-fun d!1729715 () Bool)

(assert (= bs!1252784 (and d!1729715 b!5422280)))

(declare-fun lambda!284106 () Int)

(assert (=> bs!1252784 (= lambda!284106 lambda!284044)))

(declare-fun bs!1252785 () Bool)

(assert (= bs!1252785 (and d!1729715 d!1729711)))

(assert (=> bs!1252785 (= lambda!284106 lambda!284100)))

(declare-fun bs!1252786 () Bool)

(assert (= bs!1252786 (and d!1729715 d!1729713)))

(assert (=> bs!1252786 (= lambda!284106 lambda!284103)))

(declare-fun lt!2211535 () List!61918)

(assert (=> d!1729715 (forall!14550 lt!2211535 lambda!284106)))

(declare-fun e!3360579 () List!61918)

(assert (=> d!1729715 (= lt!2211535 e!3360579)))

(declare-fun c!945744 () Bool)

(assert (=> d!1729715 (= c!945744 (is-Cons!61795 zl!343))))

(assert (=> d!1729715 (= (unfocusZipperList!648 zl!343) lt!2211535)))

(declare-fun b!5422568 () Bool)

(assert (=> b!5422568 (= e!3360579 (Cons!61794 (generalisedConcat!875 (exprs!5090 (h!68243 zl!343))) (unfocusZipperList!648 (t!375142 zl!343))))))

(declare-fun b!5422569 () Bool)

(assert (=> b!5422569 (= e!3360579 Nil!61794)))

(assert (= (and d!1729715 c!945744) b!5422568))

(assert (= (and d!1729715 (not c!945744)) b!5422569))

(declare-fun m!6446734 () Bool)

(assert (=> d!1729715 m!6446734))

(assert (=> b!5422568 m!6446310))

(declare-fun m!6446736 () Bool)

(assert (=> b!5422568 m!6446736))

(assert (=> b!5422262 d!1729715))

(declare-fun b!5422592 () Bool)

(declare-fun e!3360593 () (Set Context!9180))

(assert (=> b!5422592 (= e!3360593 (as set.empty (Set Context!9180)))))

(declare-fun b!5422593 () Bool)

(declare-fun e!3360596 () (Set Context!9180))

(declare-fun call!388076 () (Set Context!9180))

(declare-fun call!388080 () (Set Context!9180))

(assert (=> b!5422593 (= e!3360596 (set.union call!388076 call!388080))))

(declare-fun bm!388070 () Bool)

(declare-fun call!388075 () List!61918)

(declare-fun call!388077 () List!61918)

(assert (=> bm!388070 (= call!388075 call!388077)))

(declare-fun b!5422594 () Bool)

(declare-fun e!3360592 () (Set Context!9180))

(declare-fun call!388078 () (Set Context!9180))

(assert (=> b!5422594 (= e!3360592 (set.union call!388076 call!388078))))

(declare-fun b!5422595 () Bool)

(declare-fun e!3360595 () (Set Context!9180))

(assert (=> b!5422595 (= e!3360595 (set.insert lt!2211266 (as set.empty (Set Context!9180))))))

(declare-fun b!5422596 () Bool)

(declare-fun call!388079 () (Set Context!9180))

(assert (=> b!5422596 (= e!3360593 call!388079)))

(declare-fun b!5422597 () Bool)

(declare-fun c!945758 () Bool)

(declare-fun e!3360594 () Bool)

(assert (=> b!5422597 (= c!945758 e!3360594)))

(declare-fun res!2307250 () Bool)

(assert (=> b!5422597 (=> (not res!2307250) (not e!3360594))))

(assert (=> b!5422597 (= res!2307250 (is-Concat!24051 (reg!15535 (regOne!30924 r!7292))))))

(assert (=> b!5422597 (= e!3360592 e!3360596)))

(declare-fun b!5422598 () Bool)

(declare-fun e!3360597 () (Set Context!9180))

(assert (=> b!5422598 (= e!3360597 call!388079)))

(declare-fun bm!388071 () Bool)

(assert (=> bm!388071 (= call!388080 call!388078)))

(declare-fun b!5422599 () Bool)

(assert (=> b!5422599 (= e!3360596 e!3360597)))

(declare-fun c!945755 () Bool)

(assert (=> b!5422599 (= c!945755 (is-Concat!24051 (reg!15535 (regOne!30924 r!7292))))))

(declare-fun bm!388072 () Bool)

(declare-fun c!945756 () Bool)

(assert (=> bm!388072 (= call!388078 (derivationStepZipperDown!654 (ite c!945756 (regTwo!30925 (reg!15535 (regOne!30924 r!7292))) (ite c!945758 (regTwo!30924 (reg!15535 (regOne!30924 r!7292))) (ite c!945755 (regOne!30924 (reg!15535 (regOne!30924 r!7292))) (reg!15535 (reg!15535 (regOne!30924 r!7292)))))) (ite (or c!945756 c!945758) lt!2211266 (Context!9181 call!388075)) (h!68241 s!2326)))))

(declare-fun b!5422600 () Bool)

(assert (=> b!5422600 (= e!3360595 e!3360592)))

(assert (=> b!5422600 (= c!945756 (is-Union!15206 (reg!15535 (regOne!30924 r!7292))))))

(declare-fun bm!388073 () Bool)

(assert (=> bm!388073 (= call!388079 call!388080)))

(declare-fun bm!388074 () Bool)

(assert (=> bm!388074 (= call!388076 (derivationStepZipperDown!654 (ite c!945756 (regOne!30925 (reg!15535 (regOne!30924 r!7292))) (regOne!30924 (reg!15535 (regOne!30924 r!7292)))) (ite c!945756 lt!2211266 (Context!9181 call!388077)) (h!68241 s!2326)))))

(declare-fun d!1729717 () Bool)

(declare-fun c!945759 () Bool)

(assert (=> d!1729717 (= c!945759 (and (is-ElementMatch!15206 (reg!15535 (regOne!30924 r!7292))) (= (c!945702 (reg!15535 (regOne!30924 r!7292))) (h!68241 s!2326))))))

(assert (=> d!1729717 (= (derivationStepZipperDown!654 (reg!15535 (regOne!30924 r!7292)) lt!2211266 (h!68241 s!2326)) e!3360595)))

(declare-fun b!5422601 () Bool)

(declare-fun c!945757 () Bool)

(assert (=> b!5422601 (= c!945757 (is-Star!15206 (reg!15535 (regOne!30924 r!7292))))))

(assert (=> b!5422601 (= e!3360597 e!3360593)))

(declare-fun bm!388075 () Bool)

(declare-fun $colon$colon!1507 (List!61918 Regex!15206) List!61918)

(assert (=> bm!388075 (= call!388077 ($colon$colon!1507 (exprs!5090 lt!2211266) (ite (or c!945758 c!945755) (regTwo!30924 (reg!15535 (regOne!30924 r!7292))) (reg!15535 (regOne!30924 r!7292)))))))

(declare-fun b!5422602 () Bool)

(assert (=> b!5422602 (= e!3360594 (nullable!5375 (regOne!30924 (reg!15535 (regOne!30924 r!7292)))))))

(assert (= (and d!1729717 c!945759) b!5422595))

(assert (= (and d!1729717 (not c!945759)) b!5422600))

(assert (= (and b!5422600 c!945756) b!5422594))

(assert (= (and b!5422600 (not c!945756)) b!5422597))

(assert (= (and b!5422597 res!2307250) b!5422602))

(assert (= (and b!5422597 c!945758) b!5422593))

(assert (= (and b!5422597 (not c!945758)) b!5422599))

(assert (= (and b!5422599 c!945755) b!5422598))

(assert (= (and b!5422599 (not c!945755)) b!5422601))

(assert (= (and b!5422601 c!945757) b!5422596))

(assert (= (and b!5422601 (not c!945757)) b!5422592))

(assert (= (or b!5422598 b!5422596) bm!388070))

(assert (= (or b!5422598 b!5422596) bm!388073))

(assert (= (or b!5422593 bm!388070) bm!388075))

(assert (= (or b!5422593 bm!388073) bm!388071))

(assert (= (or b!5422594 bm!388071) bm!388072))

(assert (= (or b!5422594 b!5422593) bm!388074))

(declare-fun m!6446738 () Bool)

(assert (=> bm!388075 m!6446738))

(declare-fun m!6446740 () Bool)

(assert (=> bm!388072 m!6446740))

(declare-fun m!6446742 () Bool)

(assert (=> bm!388074 m!6446742))

(declare-fun m!6446744 () Bool)

(assert (=> b!5422602 m!6446744))

(assert (=> b!5422595 m!6446296))

(assert (=> b!5422260 d!1729717))

(declare-fun bs!1252787 () Bool)

(declare-fun b!5422641 () Bool)

(assert (= bs!1252787 (and b!5422641 b!5422281)))

(declare-fun lambda!284111 () Int)

(assert (=> bs!1252787 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (reg!15535 lt!2211288) (reg!15535 (regOne!30924 r!7292))) (= lt!2211288 lt!2211306)) (= lambda!284111 lambda!284049))))

(assert (=> bs!1252787 (not (= lambda!284111 lambda!284047))))

(declare-fun bs!1252788 () Bool)

(assert (= bs!1252788 (and b!5422641 b!5422277)))

(assert (=> bs!1252788 (not (= lambda!284111 lambda!284040))))

(assert (=> bs!1252788 (not (= lambda!284111 lambda!284041))))

(declare-fun bs!1252789 () Bool)

(assert (= bs!1252789 (and b!5422641 b!5422286)))

(assert (=> bs!1252789 (not (= lambda!284111 lambda!284045))))

(assert (=> bs!1252789 (not (= lambda!284111 lambda!284046))))

(assert (=> bs!1252787 (not (= lambda!284111 lambda!284048))))

(assert (=> b!5422641 true))

(assert (=> b!5422641 true))

(declare-fun bs!1252790 () Bool)

(declare-fun b!5422640 () Bool)

(assert (= bs!1252790 (and b!5422640 b!5422281)))

(declare-fun lambda!284112 () Int)

(assert (=> bs!1252790 (not (= lambda!284112 lambda!284049))))

(assert (=> bs!1252790 (not (= lambda!284112 lambda!284047))))

(declare-fun bs!1252791 () Bool)

(assert (= bs!1252791 (and b!5422640 b!5422277)))

(assert (=> bs!1252791 (not (= lambda!284112 lambda!284040))))

(declare-fun bs!1252792 () Bool)

(assert (= bs!1252792 (and b!5422640 b!5422641)))

(assert (=> bs!1252792 (not (= lambda!284112 lambda!284111))))

(assert (=> bs!1252791 (= (and (= (regOne!30924 lt!2211288) (regOne!30924 r!7292)) (= (regTwo!30924 lt!2211288) (regTwo!30924 r!7292))) (= lambda!284112 lambda!284041))))

(declare-fun bs!1252793 () Bool)

(assert (= bs!1252793 (and b!5422640 b!5422286)))

(assert (=> bs!1252793 (not (= lambda!284112 lambda!284045))))

(assert (=> bs!1252793 (= (and (= (regOne!30924 lt!2211288) lt!2211321) (= (regTwo!30924 lt!2211288) (regTwo!30924 r!7292))) (= lambda!284112 lambda!284046))))

(assert (=> bs!1252790 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 lt!2211288) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 lt!2211288) lt!2211306)) (= lambda!284112 lambda!284048))))

(assert (=> b!5422640 true))

(assert (=> b!5422640 true))

(declare-fun b!5422635 () Bool)

(declare-fun e!3360620 () Bool)

(assert (=> b!5422635 (= e!3360620 (= s!2326 (Cons!61793 (c!945702 lt!2211288) Nil!61793)))))

(declare-fun b!5422636 () Bool)

(declare-fun e!3360621 () Bool)

(assert (=> b!5422636 (= e!3360621 (matchRSpec!2309 (regTwo!30925 lt!2211288) s!2326))))

(declare-fun b!5422637 () Bool)

(declare-fun res!2307269 () Bool)

(declare-fun e!3360616 () Bool)

(assert (=> b!5422637 (=> res!2307269 e!3360616)))

(declare-fun call!388085 () Bool)

(assert (=> b!5422637 (= res!2307269 call!388085)))

(declare-fun e!3360617 () Bool)

(assert (=> b!5422637 (= e!3360617 e!3360616)))

(declare-fun b!5422638 () Bool)

(declare-fun c!945769 () Bool)

(assert (=> b!5422638 (= c!945769 (is-ElementMatch!15206 lt!2211288))))

(declare-fun e!3360619 () Bool)

(assert (=> b!5422638 (= e!3360619 e!3360620)))

(declare-fun b!5422639 () Bool)

(declare-fun e!3360622 () Bool)

(assert (=> b!5422639 (= e!3360622 call!388085)))

(declare-fun bm!388080 () Bool)

(declare-fun isEmpty!33798 (List!61917) Bool)

(assert (=> bm!388080 (= call!388085 (isEmpty!33798 s!2326))))

(declare-fun call!388086 () Bool)

(assert (=> b!5422641 (= e!3360616 call!388086)))

(declare-fun b!5422642 () Bool)

(declare-fun e!3360618 () Bool)

(assert (=> b!5422642 (= e!3360618 e!3360617)))

(declare-fun c!945771 () Bool)

(assert (=> b!5422642 (= c!945771 (is-Star!15206 lt!2211288))))

(declare-fun b!5422643 () Bool)

(assert (=> b!5422643 (= e!3360618 e!3360621)))

(declare-fun res!2307267 () Bool)

(assert (=> b!5422643 (= res!2307267 (matchRSpec!2309 (regOne!30925 lt!2211288) s!2326))))

(assert (=> b!5422643 (=> res!2307267 e!3360621)))

(declare-fun bm!388081 () Bool)

(assert (=> bm!388081 (= call!388086 (Exists!2387 (ite c!945771 lambda!284111 lambda!284112)))))

(declare-fun b!5422644 () Bool)

(assert (=> b!5422644 (= e!3360622 e!3360619)))

(declare-fun res!2307268 () Bool)

(assert (=> b!5422644 (= res!2307268 (not (is-EmptyLang!15206 lt!2211288)))))

(assert (=> b!5422644 (=> (not res!2307268) (not e!3360619))))

(declare-fun b!5422645 () Bool)

(declare-fun c!945770 () Bool)

(assert (=> b!5422645 (= c!945770 (is-Union!15206 lt!2211288))))

(assert (=> b!5422645 (= e!3360620 e!3360618)))

(assert (=> b!5422640 (= e!3360617 call!388086)))

(declare-fun d!1729719 () Bool)

(declare-fun c!945768 () Bool)

(assert (=> d!1729719 (= c!945768 (is-EmptyExpr!15206 lt!2211288))))

(assert (=> d!1729719 (= (matchRSpec!2309 lt!2211288 s!2326) e!3360622)))

(assert (= (and d!1729719 c!945768) b!5422639))

(assert (= (and d!1729719 (not c!945768)) b!5422644))

(assert (= (and b!5422644 res!2307268) b!5422638))

(assert (= (and b!5422638 c!945769) b!5422635))

(assert (= (and b!5422638 (not c!945769)) b!5422645))

(assert (= (and b!5422645 c!945770) b!5422643))

(assert (= (and b!5422645 (not c!945770)) b!5422642))

(assert (= (and b!5422643 (not res!2307267)) b!5422636))

(assert (= (and b!5422642 c!945771) b!5422637))

(assert (= (and b!5422642 (not c!945771)) b!5422640))

(assert (= (and b!5422637 (not res!2307269)) b!5422641))

(assert (= (or b!5422641 b!5422640) bm!388081))

(assert (= (or b!5422639 b!5422637) bm!388080))

(declare-fun m!6446746 () Bool)

(assert (=> b!5422636 m!6446746))

(declare-fun m!6446748 () Bool)

(assert (=> bm!388080 m!6446748))

(declare-fun m!6446750 () Bool)

(assert (=> b!5422643 m!6446750))

(declare-fun m!6446752 () Bool)

(assert (=> bm!388081 m!6446752))

(assert (=> b!5422261 d!1729719))

(declare-fun b!5422674 () Bool)

(declare-fun e!3360640 () Bool)

(declare-fun lt!2211538 () Bool)

(assert (=> b!5422674 (= e!3360640 (not lt!2211538))))

(declare-fun b!5422675 () Bool)

(declare-fun res!2307290 () Bool)

(declare-fun e!3360637 () Bool)

(assert (=> b!5422675 (=> (not res!2307290) (not e!3360637))))

(declare-fun call!388089 () Bool)

(assert (=> b!5422675 (= res!2307290 (not call!388089))))

(declare-fun b!5422676 () Bool)

(declare-fun res!2307286 () Bool)

(declare-fun e!3360642 () Bool)

(assert (=> b!5422676 (=> res!2307286 e!3360642)))

(declare-fun tail!10729 (List!61917) List!61917)

(assert (=> b!5422676 (= res!2307286 (not (isEmpty!33798 (tail!10729 s!2326))))))

(declare-fun b!5422677 () Bool)

(declare-fun e!3360641 () Bool)

(declare-fun e!3360643 () Bool)

(assert (=> b!5422677 (= e!3360641 e!3360643)))

(declare-fun res!2307288 () Bool)

(assert (=> b!5422677 (=> (not res!2307288) (not e!3360643))))

(assert (=> b!5422677 (= res!2307288 (not lt!2211538))))

(declare-fun b!5422678 () Bool)

(declare-fun res!2307291 () Bool)

(assert (=> b!5422678 (=> (not res!2307291) (not e!3360637))))

(assert (=> b!5422678 (= res!2307291 (isEmpty!33798 (tail!10729 s!2326)))))

(declare-fun b!5422680 () Bool)

(assert (=> b!5422680 (= e!3360643 e!3360642)))

(declare-fun res!2307289 () Bool)

(assert (=> b!5422680 (=> res!2307289 e!3360642)))

(assert (=> b!5422680 (= res!2307289 call!388089)))

(declare-fun b!5422681 () Bool)

(declare-fun e!3360638 () Bool)

(assert (=> b!5422681 (= e!3360638 (nullable!5375 lt!2211288))))

(declare-fun b!5422682 () Bool)

(declare-fun head!11632 (List!61917) C!30682)

(assert (=> b!5422682 (= e!3360637 (= (head!11632 s!2326) (c!945702 lt!2211288)))))

(declare-fun b!5422683 () Bool)

(assert (=> b!5422683 (= e!3360642 (not (= (head!11632 s!2326) (c!945702 lt!2211288))))))

(declare-fun bm!388084 () Bool)

(assert (=> bm!388084 (= call!388089 (isEmpty!33798 s!2326))))

(declare-fun b!5422684 () Bool)

(declare-fun res!2307293 () Bool)

(assert (=> b!5422684 (=> res!2307293 e!3360641)))

(assert (=> b!5422684 (= res!2307293 e!3360637)))

(declare-fun res!2307292 () Bool)

(assert (=> b!5422684 (=> (not res!2307292) (not e!3360637))))

(assert (=> b!5422684 (= res!2307292 lt!2211538)))

(declare-fun b!5422685 () Bool)

(declare-fun derivativeStep!4278 (Regex!15206 C!30682) Regex!15206)

(assert (=> b!5422685 (= e!3360638 (matchR!7391 (derivativeStep!4278 lt!2211288 (head!11632 s!2326)) (tail!10729 s!2326)))))

(declare-fun b!5422686 () Bool)

(declare-fun e!3360639 () Bool)

(assert (=> b!5422686 (= e!3360639 e!3360640)))

(declare-fun c!945780 () Bool)

(assert (=> b!5422686 (= c!945780 (is-EmptyLang!15206 lt!2211288))))

(declare-fun b!5422687 () Bool)

(declare-fun res!2307287 () Bool)

(assert (=> b!5422687 (=> res!2307287 e!3360641)))

(assert (=> b!5422687 (= res!2307287 (not (is-ElementMatch!15206 lt!2211288)))))

(assert (=> b!5422687 (= e!3360640 e!3360641)))

(declare-fun b!5422679 () Bool)

(assert (=> b!5422679 (= e!3360639 (= lt!2211538 call!388089))))

(declare-fun d!1729721 () Bool)

(assert (=> d!1729721 e!3360639))

(declare-fun c!945778 () Bool)

(assert (=> d!1729721 (= c!945778 (is-EmptyExpr!15206 lt!2211288))))

(assert (=> d!1729721 (= lt!2211538 e!3360638)))

(declare-fun c!945779 () Bool)

(assert (=> d!1729721 (= c!945779 (isEmpty!33798 s!2326))))

(assert (=> d!1729721 (validRegex!6942 lt!2211288)))

(assert (=> d!1729721 (= (matchR!7391 lt!2211288 s!2326) lt!2211538)))

(assert (= (and d!1729721 c!945779) b!5422681))

(assert (= (and d!1729721 (not c!945779)) b!5422685))

(assert (= (and d!1729721 c!945778) b!5422679))

(assert (= (and d!1729721 (not c!945778)) b!5422686))

(assert (= (and b!5422686 c!945780) b!5422674))

(assert (= (and b!5422686 (not c!945780)) b!5422687))

(assert (= (and b!5422687 (not res!2307287)) b!5422684))

(assert (= (and b!5422684 res!2307292) b!5422675))

(assert (= (and b!5422675 res!2307290) b!5422678))

(assert (= (and b!5422678 res!2307291) b!5422682))

(assert (= (and b!5422684 (not res!2307293)) b!5422677))

(assert (= (and b!5422677 res!2307288) b!5422680))

(assert (= (and b!5422680 (not res!2307289)) b!5422676))

(assert (= (and b!5422676 (not res!2307286)) b!5422683))

(assert (= (or b!5422679 b!5422675 b!5422680) bm!388084))

(assert (=> d!1729721 m!6446748))

(declare-fun m!6446754 () Bool)

(assert (=> d!1729721 m!6446754))

(declare-fun m!6446756 () Bool)

(assert (=> b!5422676 m!6446756))

(assert (=> b!5422676 m!6446756))

(declare-fun m!6446758 () Bool)

(assert (=> b!5422676 m!6446758))

(declare-fun m!6446760 () Bool)

(assert (=> b!5422685 m!6446760))

(assert (=> b!5422685 m!6446760))

(declare-fun m!6446762 () Bool)

(assert (=> b!5422685 m!6446762))

(assert (=> b!5422685 m!6446756))

(assert (=> b!5422685 m!6446762))

(assert (=> b!5422685 m!6446756))

(declare-fun m!6446764 () Bool)

(assert (=> b!5422685 m!6446764))

(assert (=> b!5422678 m!6446756))

(assert (=> b!5422678 m!6446756))

(assert (=> b!5422678 m!6446758))

(declare-fun m!6446766 () Bool)

(assert (=> b!5422681 m!6446766))

(assert (=> b!5422682 m!6446760))

(assert (=> b!5422683 m!6446760))

(assert (=> bm!388084 m!6446748))

(assert (=> b!5422261 d!1729721))

(declare-fun d!1729723 () Bool)

(assert (=> d!1729723 (= (matchR!7391 lt!2211288 s!2326) (matchRSpec!2309 lt!2211288 s!2326))))

(declare-fun lt!2211541 () Unit!154346)

(declare-fun choose!41093 (Regex!15206 List!61917) Unit!154346)

(assert (=> d!1729723 (= lt!2211541 (choose!41093 lt!2211288 s!2326))))

(assert (=> d!1729723 (validRegex!6942 lt!2211288)))

(assert (=> d!1729723 (= (mainMatchTheorem!2309 lt!2211288 s!2326) lt!2211541)))

(declare-fun bs!1252794 () Bool)

(assert (= bs!1252794 d!1729723))

(assert (=> bs!1252794 m!6446468))

(assert (=> bs!1252794 m!6446466))

(declare-fun m!6446768 () Bool)

(assert (=> bs!1252794 m!6446768))

(assert (=> bs!1252794 m!6446754))

(assert (=> b!5422261 d!1729723))

(declare-fun d!1729725 () Bool)

(declare-fun isEmpty!33799 (Option!15317) Bool)

(assert (=> d!1729725 (= (isDefined!12020 lt!2211318) (not (isEmpty!33799 lt!2211318)))))

(declare-fun bs!1252795 () Bool)

(assert (= bs!1252795 d!1729725))

(declare-fun m!6446770 () Bool)

(assert (=> bs!1252795 m!6446770))

(assert (=> b!5422281 d!1729725))

(declare-fun bs!1252796 () Bool)

(declare-fun d!1729727 () Bool)

(assert (= bs!1252796 (and d!1729727 b!5422281)))

(declare-fun lambda!284117 () Int)

(assert (=> bs!1252796 (not (= lambda!284117 lambda!284049))))

(assert (=> bs!1252796 (= lambda!284117 lambda!284047)))

(declare-fun bs!1252797 () Bool)

(assert (= bs!1252797 (and d!1729727 b!5422277)))

(assert (=> bs!1252797 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) (regOne!30924 r!7292)) (= lt!2211306 (regTwo!30924 r!7292))) (= lambda!284117 lambda!284040))))

(declare-fun bs!1252798 () Bool)

(assert (= bs!1252798 (and d!1729727 b!5422641)))

(assert (=> bs!1252798 (not (= lambda!284117 lambda!284111))))

(assert (=> bs!1252797 (not (= lambda!284117 lambda!284041))))

(declare-fun bs!1252799 () Bool)

(assert (= bs!1252799 (and d!1729727 b!5422286)))

(assert (=> bs!1252799 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) lt!2211321) (= lt!2211306 (regTwo!30924 r!7292))) (= lambda!284117 lambda!284045))))

(assert (=> bs!1252799 (not (= lambda!284117 lambda!284046))))

(declare-fun bs!1252800 () Bool)

(assert (= bs!1252800 (and d!1729727 b!5422640)))

(assert (=> bs!1252800 (not (= lambda!284117 lambda!284112))))

(assert (=> bs!1252796 (not (= lambda!284117 lambda!284048))))

(assert (=> d!1729727 true))

(assert (=> d!1729727 true))

(assert (=> d!1729727 true))

(declare-fun lambda!284118 () Int)

(assert (=> bs!1252796 (not (= lambda!284118 lambda!284049))))

(assert (=> bs!1252796 (not (= lambda!284118 lambda!284047))))

(assert (=> bs!1252797 (not (= lambda!284118 lambda!284040))))

(assert (=> bs!1252798 (not (= lambda!284118 lambda!284111))))

(declare-fun bs!1252801 () Bool)

(assert (= bs!1252801 d!1729727))

(assert (=> bs!1252801 (not (= lambda!284118 lambda!284117))))

(assert (=> bs!1252797 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) (regOne!30924 r!7292)) (= lt!2211306 (regTwo!30924 r!7292))) (= lambda!284118 lambda!284041))))

(assert (=> bs!1252799 (not (= lambda!284118 lambda!284045))))

(assert (=> bs!1252799 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) lt!2211321) (= lt!2211306 (regTwo!30924 r!7292))) (= lambda!284118 lambda!284046))))

(assert (=> bs!1252800 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) (regOne!30924 lt!2211288)) (= lt!2211306 (regTwo!30924 lt!2211288))) (= lambda!284118 lambda!284112))))

(assert (=> bs!1252796 (= lambda!284118 lambda!284048)))

(assert (=> d!1729727 true))

(assert (=> d!1729727 true))

(assert (=> d!1729727 true))

(assert (=> d!1729727 (= (Exists!2387 lambda!284117) (Exists!2387 lambda!284118))))

(declare-fun lt!2211544 () Unit!154346)

(declare-fun choose!41094 (Regex!15206 Regex!15206 List!61917) Unit!154346)

(assert (=> d!1729727 (= lt!2211544 (choose!41094 (reg!15535 (regOne!30924 r!7292)) lt!2211306 (_1!35708 lt!2211317)))))

(assert (=> d!1729727 (validRegex!6942 (reg!15535 (regOne!30924 r!7292)))))

(assert (=> d!1729727 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1041 (reg!15535 (regOne!30924 r!7292)) lt!2211306 (_1!35708 lt!2211317)) lt!2211544)))

(declare-fun m!6446772 () Bool)

(assert (=> bs!1252801 m!6446772))

(declare-fun m!6446774 () Bool)

(assert (=> bs!1252801 m!6446774))

(declare-fun m!6446776 () Bool)

(assert (=> bs!1252801 m!6446776))

(declare-fun m!6446778 () Bool)

(assert (=> bs!1252801 m!6446778))

(assert (=> b!5422281 d!1729727))

(declare-fun bs!1252802 () Bool)

(declare-fun d!1729729 () Bool)

(assert (= bs!1252802 (and d!1729729 b!5422281)))

(declare-fun lambda!284121 () Int)

(assert (=> bs!1252802 (not (= lambda!284121 lambda!284049))))

(assert (=> bs!1252802 (= lambda!284121 lambda!284047)))

(declare-fun bs!1252803 () Bool)

(assert (= bs!1252803 (and d!1729729 b!5422277)))

(assert (=> bs!1252803 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) (regOne!30924 r!7292)) (= lt!2211306 (regTwo!30924 r!7292))) (= lambda!284121 lambda!284040))))

(declare-fun bs!1252804 () Bool)

(assert (= bs!1252804 (and d!1729729 b!5422641)))

(assert (=> bs!1252804 (not (= lambda!284121 lambda!284111))))

(declare-fun bs!1252805 () Bool)

(assert (= bs!1252805 (and d!1729729 d!1729727)))

(assert (=> bs!1252805 (= lambda!284121 lambda!284117)))

(assert (=> bs!1252805 (not (= lambda!284121 lambda!284118))))

(assert (=> bs!1252803 (not (= lambda!284121 lambda!284041))))

(declare-fun bs!1252806 () Bool)

(assert (= bs!1252806 (and d!1729729 b!5422286)))

(assert (=> bs!1252806 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) lt!2211321) (= lt!2211306 (regTwo!30924 r!7292))) (= lambda!284121 lambda!284045))))

(assert (=> bs!1252806 (not (= lambda!284121 lambda!284046))))

(declare-fun bs!1252807 () Bool)

(assert (= bs!1252807 (and d!1729729 b!5422640)))

(assert (=> bs!1252807 (not (= lambda!284121 lambda!284112))))

(assert (=> bs!1252802 (not (= lambda!284121 lambda!284048))))

(assert (=> d!1729729 true))

(assert (=> d!1729729 true))

(assert (=> d!1729729 true))

(assert (=> d!1729729 (= (isDefined!12020 (findConcatSeparation!1731 (reg!15535 (regOne!30924 r!7292)) lt!2211306 Nil!61793 (_1!35708 lt!2211317) (_1!35708 lt!2211317))) (Exists!2387 lambda!284121))))

(declare-fun lt!2211547 () Unit!154346)

(declare-fun choose!41095 (Regex!15206 Regex!15206 List!61917) Unit!154346)

(assert (=> d!1729729 (= lt!2211547 (choose!41095 (reg!15535 (regOne!30924 r!7292)) lt!2211306 (_1!35708 lt!2211317)))))

(assert (=> d!1729729 (validRegex!6942 (reg!15535 (regOne!30924 r!7292)))))

(assert (=> d!1729729 (= (lemmaFindConcatSeparationEquivalentToExists!1495 (reg!15535 (regOne!30924 r!7292)) lt!2211306 (_1!35708 lt!2211317)) lt!2211547)))

(declare-fun bs!1252808 () Bool)

(assert (= bs!1252808 d!1729729))

(declare-fun m!6446780 () Bool)

(assert (=> bs!1252808 m!6446780))

(assert (=> bs!1252808 m!6446778))

(declare-fun m!6446782 () Bool)

(assert (=> bs!1252808 m!6446782))

(assert (=> bs!1252808 m!6446406))

(declare-fun m!6446784 () Bool)

(assert (=> bs!1252808 m!6446784))

(assert (=> bs!1252808 m!6446406))

(assert (=> b!5422281 d!1729729))

(declare-fun bs!1252809 () Bool)

(declare-fun d!1729731 () Bool)

(assert (= bs!1252809 (and d!1729731 b!5422281)))

(declare-fun lambda!284126 () Int)

(assert (=> bs!1252809 (not (= lambda!284126 lambda!284049))))

(declare-fun bs!1252810 () Bool)

(assert (= bs!1252810 (and d!1729731 d!1729729)))

(assert (=> bs!1252810 (= (= (Star!15206 (reg!15535 (regOne!30924 r!7292))) lt!2211306) (= lambda!284126 lambda!284121))))

(assert (=> bs!1252809 (= (= (Star!15206 (reg!15535 (regOne!30924 r!7292))) lt!2211306) (= lambda!284126 lambda!284047))))

(declare-fun bs!1252811 () Bool)

(assert (= bs!1252811 (and d!1729731 b!5422277)))

(assert (=> bs!1252811 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) (regOne!30924 r!7292)) (= (Star!15206 (reg!15535 (regOne!30924 r!7292))) (regTwo!30924 r!7292))) (= lambda!284126 lambda!284040))))

(declare-fun bs!1252812 () Bool)

(assert (= bs!1252812 (and d!1729731 b!5422641)))

(assert (=> bs!1252812 (not (= lambda!284126 lambda!284111))))

(declare-fun bs!1252813 () Bool)

(assert (= bs!1252813 (and d!1729731 d!1729727)))

(assert (=> bs!1252813 (= (= (Star!15206 (reg!15535 (regOne!30924 r!7292))) lt!2211306) (= lambda!284126 lambda!284117))))

(assert (=> bs!1252813 (not (= lambda!284126 lambda!284118))))

(assert (=> bs!1252811 (not (= lambda!284126 lambda!284041))))

(declare-fun bs!1252814 () Bool)

(assert (= bs!1252814 (and d!1729731 b!5422286)))

(assert (=> bs!1252814 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) lt!2211321) (= (Star!15206 (reg!15535 (regOne!30924 r!7292))) (regTwo!30924 r!7292))) (= lambda!284126 lambda!284045))))

(assert (=> bs!1252814 (not (= lambda!284126 lambda!284046))))

(declare-fun bs!1252815 () Bool)

(assert (= bs!1252815 (and d!1729731 b!5422640)))

(assert (=> bs!1252815 (not (= lambda!284126 lambda!284112))))

(assert (=> bs!1252809 (not (= lambda!284126 lambda!284048))))

(assert (=> d!1729731 true))

(assert (=> d!1729731 true))

(declare-fun lambda!284127 () Int)

(assert (=> bs!1252809 (= (= (Star!15206 (reg!15535 (regOne!30924 r!7292))) lt!2211306) (= lambda!284127 lambda!284049))))

(assert (=> bs!1252810 (not (= lambda!284127 lambda!284121))))

(assert (=> bs!1252809 (not (= lambda!284127 lambda!284047))))

(assert (=> bs!1252811 (not (= lambda!284127 lambda!284040))))

(assert (=> bs!1252812 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 (regOne!30924 r!7292)) (reg!15535 lt!2211288)) (= (Star!15206 (reg!15535 (regOne!30924 r!7292))) lt!2211288)) (= lambda!284127 lambda!284111))))

(assert (=> bs!1252813 (not (= lambda!284127 lambda!284117))))

(assert (=> bs!1252813 (not (= lambda!284127 lambda!284118))))

(assert (=> bs!1252814 (not (= lambda!284127 lambda!284045))))

(assert (=> bs!1252814 (not (= lambda!284127 lambda!284046))))

(assert (=> bs!1252815 (not (= lambda!284127 lambda!284112))))

(assert (=> bs!1252809 (not (= lambda!284127 lambda!284048))))

(assert (=> bs!1252811 (not (= lambda!284127 lambda!284041))))

(declare-fun bs!1252816 () Bool)

(assert (= bs!1252816 d!1729731))

(assert (=> bs!1252816 (not (= lambda!284127 lambda!284126))))

(assert (=> d!1729731 true))

(assert (=> d!1729731 true))

(assert (=> d!1729731 (= (Exists!2387 lambda!284126) (Exists!2387 lambda!284127))))

(declare-fun lt!2211550 () Unit!154346)

(declare-fun choose!41096 (Regex!15206 List!61917) Unit!154346)

(assert (=> d!1729731 (= lt!2211550 (choose!41096 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211317)))))

(assert (=> d!1729731 (validRegex!6942 (reg!15535 (regOne!30924 r!7292)))))

(assert (=> d!1729731 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!417 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211317)) lt!2211550)))

(declare-fun m!6446786 () Bool)

(assert (=> bs!1252816 m!6446786))

(declare-fun m!6446788 () Bool)

(assert (=> bs!1252816 m!6446788))

(declare-fun m!6446790 () Bool)

(assert (=> bs!1252816 m!6446790))

(assert (=> bs!1252816 m!6446778))

(assert (=> b!5422281 d!1729731))

(declare-fun d!1729733 () Bool)

(assert (=> d!1729733 (= (matchR!7391 lt!2211321 (_1!35708 lt!2211317)) (matchRSpec!2309 lt!2211321 (_1!35708 lt!2211317)))))

(declare-fun lt!2211551 () Unit!154346)

(assert (=> d!1729733 (= lt!2211551 (choose!41093 lt!2211321 (_1!35708 lt!2211317)))))

(assert (=> d!1729733 (validRegex!6942 lt!2211321)))

(assert (=> d!1729733 (= (mainMatchTheorem!2309 lt!2211321 (_1!35708 lt!2211317)) lt!2211551)))

(declare-fun bs!1252817 () Bool)

(assert (= bs!1252817 d!1729733))

(assert (=> bs!1252817 m!6446376))

(assert (=> bs!1252817 m!6446414))

(declare-fun m!6446792 () Bool)

(assert (=> bs!1252817 m!6446792))

(declare-fun m!6446794 () Bool)

(assert (=> bs!1252817 m!6446794))

(assert (=> b!5422281 d!1729733))

(declare-fun d!1729735 () Bool)

(declare-fun e!3360658 () Bool)

(assert (=> d!1729735 e!3360658))

(declare-fun res!2307321 () Bool)

(assert (=> d!1729735 (=> (not res!2307321) (not e!3360658))))

(declare-fun lt!2211554 () List!61917)

(declare-fun content!11118 (List!61917) (Set C!30682))

(assert (=> d!1729735 (= res!2307321 (= (content!11118 lt!2211554) (set.union (content!11118 (_2!35708 lt!2211270)) (content!11118 (_2!35708 lt!2211317)))))))

(declare-fun e!3360659 () List!61917)

(assert (=> d!1729735 (= lt!2211554 e!3360659)))

(declare-fun c!945783 () Bool)

(assert (=> d!1729735 (= c!945783 (is-Nil!61793 (_2!35708 lt!2211270)))))

(assert (=> d!1729735 (= (++!13585 (_2!35708 lt!2211270) (_2!35708 lt!2211317)) lt!2211554)))

(declare-fun b!5422720 () Bool)

(declare-fun res!2307320 () Bool)

(assert (=> b!5422720 (=> (not res!2307320) (not e!3360658))))

(declare-fun size!39881 (List!61917) Int)

(assert (=> b!5422720 (= res!2307320 (= (size!39881 lt!2211554) (+ (size!39881 (_2!35708 lt!2211270)) (size!39881 (_2!35708 lt!2211317)))))))

(declare-fun b!5422718 () Bool)

(assert (=> b!5422718 (= e!3360659 (_2!35708 lt!2211317))))

(declare-fun b!5422719 () Bool)

(assert (=> b!5422719 (= e!3360659 (Cons!61793 (h!68241 (_2!35708 lt!2211270)) (++!13585 (t!375140 (_2!35708 lt!2211270)) (_2!35708 lt!2211317))))))

(declare-fun b!5422721 () Bool)

(assert (=> b!5422721 (= e!3360658 (or (not (= (_2!35708 lt!2211317) Nil!61793)) (= lt!2211554 (_2!35708 lt!2211270))))))

(assert (= (and d!1729735 c!945783) b!5422718))

(assert (= (and d!1729735 (not c!945783)) b!5422719))

(assert (= (and d!1729735 res!2307321) b!5422720))

(assert (= (and b!5422720 res!2307320) b!5422721))

(declare-fun m!6446796 () Bool)

(assert (=> d!1729735 m!6446796))

(declare-fun m!6446798 () Bool)

(assert (=> d!1729735 m!6446798))

(declare-fun m!6446800 () Bool)

(assert (=> d!1729735 m!6446800))

(declare-fun m!6446802 () Bool)

(assert (=> b!5422720 m!6446802))

(declare-fun m!6446804 () Bool)

(assert (=> b!5422720 m!6446804))

(declare-fun m!6446806 () Bool)

(assert (=> b!5422720 m!6446806))

(declare-fun m!6446808 () Bool)

(assert (=> b!5422719 m!6446808))

(assert (=> b!5422281 d!1729735))

(declare-fun d!1729737 () Bool)

(assert (=> d!1729737 (= (++!13585 (++!13585 (_1!35708 lt!2211270) (_2!35708 lt!2211270)) (_2!35708 lt!2211317)) (++!13585 (_1!35708 lt!2211270) (++!13585 (_2!35708 lt!2211270) (_2!35708 lt!2211317))))))

(declare-fun lt!2211557 () Unit!154346)

(declare-fun choose!41097 (List!61917 List!61917 List!61917) Unit!154346)

(assert (=> d!1729737 (= lt!2211557 (choose!41097 (_1!35708 lt!2211270) (_2!35708 lt!2211270) (_2!35708 lt!2211317)))))

(assert (=> d!1729737 (= (lemmaConcatAssociativity!2841 (_1!35708 lt!2211270) (_2!35708 lt!2211270) (_2!35708 lt!2211317)) lt!2211557)))

(declare-fun bs!1252818 () Bool)

(assert (= bs!1252818 d!1729737))

(assert (=> bs!1252818 m!6446434))

(declare-fun m!6446810 () Bool)

(assert (=> bs!1252818 m!6446810))

(assert (=> bs!1252818 m!6446434))

(declare-fun m!6446812 () Bool)

(assert (=> bs!1252818 m!6446812))

(assert (=> bs!1252818 m!6446420))

(assert (=> bs!1252818 m!6446422))

(assert (=> bs!1252818 m!6446420))

(assert (=> b!5422281 d!1729737))

(declare-fun d!1729739 () Bool)

(declare-fun e!3360660 () Bool)

(assert (=> d!1729739 e!3360660))

(declare-fun res!2307323 () Bool)

(assert (=> d!1729739 (=> (not res!2307323) (not e!3360660))))

(declare-fun lt!2211558 () List!61917)

(assert (=> d!1729739 (= res!2307323 (= (content!11118 lt!2211558) (set.union (content!11118 (_1!35708 lt!2211270)) (content!11118 (_2!35708 lt!2211270)))))))

(declare-fun e!3360661 () List!61917)

(assert (=> d!1729739 (= lt!2211558 e!3360661)))

(declare-fun c!945784 () Bool)

(assert (=> d!1729739 (= c!945784 (is-Nil!61793 (_1!35708 lt!2211270)))))

(assert (=> d!1729739 (= (++!13585 (_1!35708 lt!2211270) (_2!35708 lt!2211270)) lt!2211558)))

(declare-fun b!5422724 () Bool)

(declare-fun res!2307322 () Bool)

(assert (=> b!5422724 (=> (not res!2307322) (not e!3360660))))

(assert (=> b!5422724 (= res!2307322 (= (size!39881 lt!2211558) (+ (size!39881 (_1!35708 lt!2211270)) (size!39881 (_2!35708 lt!2211270)))))))

(declare-fun b!5422722 () Bool)

(assert (=> b!5422722 (= e!3360661 (_2!35708 lt!2211270))))

(declare-fun b!5422723 () Bool)

(assert (=> b!5422723 (= e!3360661 (Cons!61793 (h!68241 (_1!35708 lt!2211270)) (++!13585 (t!375140 (_1!35708 lt!2211270)) (_2!35708 lt!2211270))))))

(declare-fun b!5422725 () Bool)

(assert (=> b!5422725 (= e!3360660 (or (not (= (_2!35708 lt!2211270) Nil!61793)) (= lt!2211558 (_1!35708 lt!2211270))))))

(assert (= (and d!1729739 c!945784) b!5422722))

(assert (= (and d!1729739 (not c!945784)) b!5422723))

(assert (= (and d!1729739 res!2307323) b!5422724))

(assert (= (and b!5422724 res!2307322) b!5422725))

(declare-fun m!6446814 () Bool)

(assert (=> d!1729739 m!6446814))

(declare-fun m!6446816 () Bool)

(assert (=> d!1729739 m!6446816))

(assert (=> d!1729739 m!6446798))

(declare-fun m!6446818 () Bool)

(assert (=> b!5422724 m!6446818))

(declare-fun m!6446820 () Bool)

(assert (=> b!5422724 m!6446820))

(assert (=> b!5422724 m!6446804))

(declare-fun m!6446822 () Bool)

(assert (=> b!5422723 m!6446822))

(assert (=> b!5422281 d!1729739))

(declare-fun d!1729741 () Bool)

(declare-fun choose!41098 (Int) Bool)

(assert (=> d!1729741 (= (Exists!2387 lambda!284049) (choose!41098 lambda!284049))))

(declare-fun bs!1252819 () Bool)

(assert (= bs!1252819 d!1729741))

(declare-fun m!6446824 () Bool)

(assert (=> bs!1252819 m!6446824))

(assert (=> b!5422281 d!1729741))

(declare-fun d!1729743 () Bool)

(assert (=> d!1729743 (= (Exists!2387 lambda!284047) (choose!41098 lambda!284047))))

(declare-fun bs!1252820 () Bool)

(assert (= bs!1252820 d!1729743))

(declare-fun m!6446826 () Bool)

(assert (=> bs!1252820 m!6446826))

(assert (=> b!5422281 d!1729743))

(declare-fun bs!1252821 () Bool)

(declare-fun b!5422732 () Bool)

(assert (= bs!1252821 (and b!5422732 b!5422281)))

(declare-fun lambda!284128 () Int)

(assert (=> bs!1252821 (= (and (= (reg!15535 lt!2211321) (reg!15535 (regOne!30924 r!7292))) (= lt!2211321 lt!2211306)) (= lambda!284128 lambda!284049))))

(declare-fun bs!1252822 () Bool)

(assert (= bs!1252822 (and b!5422732 d!1729729)))

(assert (=> bs!1252822 (not (= lambda!284128 lambda!284121))))

(assert (=> bs!1252821 (not (= lambda!284128 lambda!284047))))

(declare-fun bs!1252823 () Bool)

(assert (= bs!1252823 (and b!5422732 b!5422641)))

(assert (=> bs!1252823 (= (and (= (_1!35708 lt!2211317) s!2326) (= (reg!15535 lt!2211321) (reg!15535 lt!2211288)) (= lt!2211321 lt!2211288)) (= lambda!284128 lambda!284111))))

(declare-fun bs!1252824 () Bool)

(assert (= bs!1252824 (and b!5422732 d!1729727)))

(assert (=> bs!1252824 (not (= lambda!284128 lambda!284117))))

(assert (=> bs!1252824 (not (= lambda!284128 lambda!284118))))

(declare-fun bs!1252825 () Bool)

(assert (= bs!1252825 (and b!5422732 b!5422286)))

(assert (=> bs!1252825 (not (= lambda!284128 lambda!284045))))

(assert (=> bs!1252825 (not (= lambda!284128 lambda!284046))))

(declare-fun bs!1252826 () Bool)

(assert (= bs!1252826 (and b!5422732 b!5422640)))

(assert (=> bs!1252826 (not (= lambda!284128 lambda!284112))))

(assert (=> bs!1252821 (not (= lambda!284128 lambda!284048))))

(declare-fun bs!1252827 () Bool)

(assert (= bs!1252827 (and b!5422732 d!1729731)))

(assert (=> bs!1252827 (= (and (= (reg!15535 lt!2211321) (reg!15535 (regOne!30924 r!7292))) (= lt!2211321 (Star!15206 (reg!15535 (regOne!30924 r!7292))))) (= lambda!284128 lambda!284127))))

(declare-fun bs!1252828 () Bool)

(assert (= bs!1252828 (and b!5422732 b!5422277)))

(assert (=> bs!1252828 (not (= lambda!284128 lambda!284040))))

(assert (=> bs!1252828 (not (= lambda!284128 lambda!284041))))

(assert (=> bs!1252827 (not (= lambda!284128 lambda!284126))))

(assert (=> b!5422732 true))

(assert (=> b!5422732 true))

(declare-fun bs!1252829 () Bool)

(declare-fun b!5422731 () Bool)

(assert (= bs!1252829 (and b!5422731 b!5422281)))

(declare-fun lambda!284129 () Int)

(assert (=> bs!1252829 (not (= lambda!284129 lambda!284049))))

(declare-fun bs!1252830 () Bool)

(assert (= bs!1252830 (and b!5422731 d!1729729)))

(assert (=> bs!1252830 (not (= lambda!284129 lambda!284121))))

(assert (=> bs!1252829 (not (= lambda!284129 lambda!284047))))

(declare-fun bs!1252831 () Bool)

(assert (= bs!1252831 (and b!5422731 b!5422641)))

(assert (=> bs!1252831 (not (= lambda!284129 lambda!284111))))

(declare-fun bs!1252832 () Bool)

(assert (= bs!1252832 (and b!5422731 d!1729727)))

(assert (=> bs!1252832 (not (= lambda!284129 lambda!284117))))

(declare-fun bs!1252833 () Bool)

(assert (= bs!1252833 (and b!5422731 b!5422732)))

(assert (=> bs!1252833 (not (= lambda!284129 lambda!284128))))

(assert (=> bs!1252832 (= (and (= (regOne!30924 lt!2211321) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 lt!2211321) lt!2211306)) (= lambda!284129 lambda!284118))))

(declare-fun bs!1252834 () Bool)

(assert (= bs!1252834 (and b!5422731 b!5422286)))

(assert (=> bs!1252834 (not (= lambda!284129 lambda!284045))))

(assert (=> bs!1252834 (= (and (= (_1!35708 lt!2211317) s!2326) (= (regOne!30924 lt!2211321) lt!2211321) (= (regTwo!30924 lt!2211321) (regTwo!30924 r!7292))) (= lambda!284129 lambda!284046))))

(declare-fun bs!1252835 () Bool)

(assert (= bs!1252835 (and b!5422731 b!5422640)))

(assert (=> bs!1252835 (= (and (= (_1!35708 lt!2211317) s!2326) (= (regOne!30924 lt!2211321) (regOne!30924 lt!2211288)) (= (regTwo!30924 lt!2211321) (regTwo!30924 lt!2211288))) (= lambda!284129 lambda!284112))))

(assert (=> bs!1252829 (= (and (= (regOne!30924 lt!2211321) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 lt!2211321) lt!2211306)) (= lambda!284129 lambda!284048))))

(declare-fun bs!1252836 () Bool)

(assert (= bs!1252836 (and b!5422731 d!1729731)))

(assert (=> bs!1252836 (not (= lambda!284129 lambda!284127))))

(declare-fun bs!1252837 () Bool)

(assert (= bs!1252837 (and b!5422731 b!5422277)))

(assert (=> bs!1252837 (not (= lambda!284129 lambda!284040))))

(assert (=> bs!1252837 (= (and (= (_1!35708 lt!2211317) s!2326) (= (regOne!30924 lt!2211321) (regOne!30924 r!7292)) (= (regTwo!30924 lt!2211321) (regTwo!30924 r!7292))) (= lambda!284129 lambda!284041))))

(assert (=> bs!1252836 (not (= lambda!284129 lambda!284126))))

(assert (=> b!5422731 true))

(assert (=> b!5422731 true))

(declare-fun b!5422726 () Bool)

(declare-fun e!3360666 () Bool)

(assert (=> b!5422726 (= e!3360666 (= (_1!35708 lt!2211317) (Cons!61793 (c!945702 lt!2211321) Nil!61793)))))

(declare-fun b!5422727 () Bool)

(declare-fun e!3360667 () Bool)

(assert (=> b!5422727 (= e!3360667 (matchRSpec!2309 (regTwo!30925 lt!2211321) (_1!35708 lt!2211317)))))

(declare-fun b!5422728 () Bool)

(declare-fun res!2307326 () Bool)

(declare-fun e!3360662 () Bool)

(assert (=> b!5422728 (=> res!2307326 e!3360662)))

(declare-fun call!388090 () Bool)

(assert (=> b!5422728 (= res!2307326 call!388090)))

(declare-fun e!3360663 () Bool)

(assert (=> b!5422728 (= e!3360663 e!3360662)))

(declare-fun b!5422729 () Bool)

(declare-fun c!945786 () Bool)

(assert (=> b!5422729 (= c!945786 (is-ElementMatch!15206 lt!2211321))))

(declare-fun e!3360665 () Bool)

(assert (=> b!5422729 (= e!3360665 e!3360666)))

(declare-fun b!5422730 () Bool)

(declare-fun e!3360668 () Bool)

(assert (=> b!5422730 (= e!3360668 call!388090)))

(declare-fun bm!388085 () Bool)

(assert (=> bm!388085 (= call!388090 (isEmpty!33798 (_1!35708 lt!2211317)))))

(declare-fun call!388091 () Bool)

(assert (=> b!5422732 (= e!3360662 call!388091)))

(declare-fun b!5422733 () Bool)

(declare-fun e!3360664 () Bool)

(assert (=> b!5422733 (= e!3360664 e!3360663)))

(declare-fun c!945788 () Bool)

(assert (=> b!5422733 (= c!945788 (is-Star!15206 lt!2211321))))

(declare-fun b!5422734 () Bool)

(assert (=> b!5422734 (= e!3360664 e!3360667)))

(declare-fun res!2307324 () Bool)

(assert (=> b!5422734 (= res!2307324 (matchRSpec!2309 (regOne!30925 lt!2211321) (_1!35708 lt!2211317)))))

(assert (=> b!5422734 (=> res!2307324 e!3360667)))

(declare-fun bm!388086 () Bool)

(assert (=> bm!388086 (= call!388091 (Exists!2387 (ite c!945788 lambda!284128 lambda!284129)))))

(declare-fun b!5422735 () Bool)

(assert (=> b!5422735 (= e!3360668 e!3360665)))

(declare-fun res!2307325 () Bool)

(assert (=> b!5422735 (= res!2307325 (not (is-EmptyLang!15206 lt!2211321)))))

(assert (=> b!5422735 (=> (not res!2307325) (not e!3360665))))

(declare-fun b!5422736 () Bool)

(declare-fun c!945787 () Bool)

(assert (=> b!5422736 (= c!945787 (is-Union!15206 lt!2211321))))

(assert (=> b!5422736 (= e!3360666 e!3360664)))

(assert (=> b!5422731 (= e!3360663 call!388091)))

(declare-fun d!1729745 () Bool)

(declare-fun c!945785 () Bool)

(assert (=> d!1729745 (= c!945785 (is-EmptyExpr!15206 lt!2211321))))

(assert (=> d!1729745 (= (matchRSpec!2309 lt!2211321 (_1!35708 lt!2211317)) e!3360668)))

(assert (= (and d!1729745 c!945785) b!5422730))

(assert (= (and d!1729745 (not c!945785)) b!5422735))

(assert (= (and b!5422735 res!2307325) b!5422729))

(assert (= (and b!5422729 c!945786) b!5422726))

(assert (= (and b!5422729 (not c!945786)) b!5422736))

(assert (= (and b!5422736 c!945787) b!5422734))

(assert (= (and b!5422736 (not c!945787)) b!5422733))

(assert (= (and b!5422734 (not res!2307324)) b!5422727))

(assert (= (and b!5422733 c!945788) b!5422728))

(assert (= (and b!5422733 (not c!945788)) b!5422731))

(assert (= (and b!5422728 (not res!2307326)) b!5422732))

(assert (= (or b!5422732 b!5422731) bm!388086))

(assert (= (or b!5422730 b!5422728) bm!388085))

(declare-fun m!6446828 () Bool)

(assert (=> b!5422727 m!6446828))

(declare-fun m!6446830 () Bool)

(assert (=> bm!388085 m!6446830))

(declare-fun m!6446832 () Bool)

(assert (=> b!5422734 m!6446832))

(declare-fun m!6446834 () Bool)

(assert (=> bm!388086 m!6446834))

(assert (=> b!5422281 d!1729745))

(declare-fun d!1729749 () Bool)

(declare-fun e!3360669 () Bool)

(assert (=> d!1729749 e!3360669))

(declare-fun res!2307328 () Bool)

(assert (=> d!1729749 (=> (not res!2307328) (not e!3360669))))

(declare-fun lt!2211559 () List!61917)

(assert (=> d!1729749 (= res!2307328 (= (content!11118 lt!2211559) (set.union (content!11118 (_1!35708 lt!2211270)) (content!11118 (++!13585 (_2!35708 lt!2211270) (_2!35708 lt!2211317))))))))

(declare-fun e!3360670 () List!61917)

(assert (=> d!1729749 (= lt!2211559 e!3360670)))

(declare-fun c!945789 () Bool)

(assert (=> d!1729749 (= c!945789 (is-Nil!61793 (_1!35708 lt!2211270)))))

(assert (=> d!1729749 (= (++!13585 (_1!35708 lt!2211270) (++!13585 (_2!35708 lt!2211270) (_2!35708 lt!2211317))) lt!2211559)))

(declare-fun b!5422739 () Bool)

(declare-fun res!2307327 () Bool)

(assert (=> b!5422739 (=> (not res!2307327) (not e!3360669))))

(assert (=> b!5422739 (= res!2307327 (= (size!39881 lt!2211559) (+ (size!39881 (_1!35708 lt!2211270)) (size!39881 (++!13585 (_2!35708 lt!2211270) (_2!35708 lt!2211317))))))))

(declare-fun b!5422737 () Bool)

(assert (=> b!5422737 (= e!3360670 (++!13585 (_2!35708 lt!2211270) (_2!35708 lt!2211317)))))

(declare-fun b!5422738 () Bool)

(assert (=> b!5422738 (= e!3360670 (Cons!61793 (h!68241 (_1!35708 lt!2211270)) (++!13585 (t!375140 (_1!35708 lt!2211270)) (++!13585 (_2!35708 lt!2211270) (_2!35708 lt!2211317)))))))

(declare-fun b!5422740 () Bool)

(assert (=> b!5422740 (= e!3360669 (or (not (= (++!13585 (_2!35708 lt!2211270) (_2!35708 lt!2211317)) Nil!61793)) (= lt!2211559 (_1!35708 lt!2211270))))))

(assert (= (and d!1729749 c!945789) b!5422737))

(assert (= (and d!1729749 (not c!945789)) b!5422738))

(assert (= (and d!1729749 res!2307328) b!5422739))

(assert (= (and b!5422739 res!2307327) b!5422740))

(declare-fun m!6446836 () Bool)

(assert (=> d!1729749 m!6446836))

(assert (=> d!1729749 m!6446816))

(assert (=> d!1729749 m!6446420))

(declare-fun m!6446838 () Bool)

(assert (=> d!1729749 m!6446838))

(declare-fun m!6446840 () Bool)

(assert (=> b!5422739 m!6446840))

(assert (=> b!5422739 m!6446820))

(assert (=> b!5422739 m!6446420))

(declare-fun m!6446842 () Bool)

(assert (=> b!5422739 m!6446842))

(assert (=> b!5422738 m!6446420))

(declare-fun m!6446844 () Bool)

(assert (=> b!5422738 m!6446844))

(assert (=> b!5422281 d!1729749))

(declare-fun d!1729751 () Bool)

(assert (=> d!1729751 (= (Exists!2387 lambda!284048) (choose!41098 lambda!284048))))

(declare-fun bs!1252838 () Bool)

(assert (= bs!1252838 d!1729751))

(declare-fun m!6446846 () Bool)

(assert (=> bs!1252838 m!6446846))

(assert (=> b!5422281 d!1729751))

(declare-fun b!5422762 () Bool)

(declare-fun res!2307346 () Bool)

(declare-fun e!3360684 () Bool)

(assert (=> b!5422762 (=> (not res!2307346) (not e!3360684))))

(declare-fun lt!2211571 () Option!15317)

(assert (=> b!5422762 (= res!2307346 (matchR!7391 lt!2211306 (_2!35708 (get!21312 lt!2211571))))))

(declare-fun b!5422763 () Bool)

(declare-fun lt!2211570 () Unit!154346)

(declare-fun lt!2211569 () Unit!154346)

(assert (=> b!5422763 (= lt!2211570 lt!2211569)))

(assert (=> b!5422763 (= (++!13585 (++!13585 Nil!61793 (Cons!61793 (h!68241 (_1!35708 lt!2211317)) Nil!61793)) (t!375140 (_1!35708 lt!2211317))) (_1!35708 lt!2211317))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1852 (List!61917 C!30682 List!61917 List!61917) Unit!154346)

(assert (=> b!5422763 (= lt!2211569 (lemmaMoveElementToOtherListKeepsConcatEq!1852 Nil!61793 (h!68241 (_1!35708 lt!2211317)) (t!375140 (_1!35708 lt!2211317)) (_1!35708 lt!2211317)))))

(declare-fun e!3360688 () Option!15317)

(assert (=> b!5422763 (= e!3360688 (findConcatSeparation!1731 (reg!15535 (regOne!30924 r!7292)) lt!2211306 (++!13585 Nil!61793 (Cons!61793 (h!68241 (_1!35708 lt!2211317)) Nil!61793)) (t!375140 (_1!35708 lt!2211317)) (_1!35708 lt!2211317)))))

(declare-fun b!5422764 () Bool)

(assert (=> b!5422764 (= e!3360684 (= (++!13585 (_1!35708 (get!21312 lt!2211571)) (_2!35708 (get!21312 lt!2211571))) (_1!35708 lt!2211317)))))

(declare-fun b!5422765 () Bool)

(declare-fun e!3360686 () Option!15317)

(assert (=> b!5422765 (= e!3360686 (Some!15316 (tuple2!64811 Nil!61793 (_1!35708 lt!2211317))))))

(declare-fun b!5422766 () Bool)

(assert (=> b!5422766 (= e!3360686 e!3360688)))

(declare-fun c!945794 () Bool)

(assert (=> b!5422766 (= c!945794 (is-Nil!61793 (_1!35708 lt!2211317)))))

(declare-fun b!5422768 () Bool)

(declare-fun e!3360687 () Bool)

(assert (=> b!5422768 (= e!3360687 (not (isDefined!12020 lt!2211571)))))

(declare-fun b!5422769 () Bool)

(declare-fun res!2307344 () Bool)

(assert (=> b!5422769 (=> (not res!2307344) (not e!3360684))))

(assert (=> b!5422769 (= res!2307344 (matchR!7391 (reg!15535 (regOne!30924 r!7292)) (_1!35708 (get!21312 lt!2211571))))))

(declare-fun b!5422770 () Bool)

(assert (=> b!5422770 (= e!3360688 None!15316)))

(declare-fun b!5422767 () Bool)

(declare-fun e!3360685 () Bool)

(assert (=> b!5422767 (= e!3360685 (matchR!7391 lt!2211306 (_1!35708 lt!2211317)))))

(declare-fun d!1729753 () Bool)

(assert (=> d!1729753 e!3360687))

(declare-fun res!2307345 () Bool)

(assert (=> d!1729753 (=> res!2307345 e!3360687)))

(assert (=> d!1729753 (= res!2307345 e!3360684)))

(declare-fun res!2307343 () Bool)

(assert (=> d!1729753 (=> (not res!2307343) (not e!3360684))))

(assert (=> d!1729753 (= res!2307343 (isDefined!12020 lt!2211571))))

(assert (=> d!1729753 (= lt!2211571 e!3360686)))

(declare-fun c!945795 () Bool)

(assert (=> d!1729753 (= c!945795 e!3360685)))

(declare-fun res!2307342 () Bool)

(assert (=> d!1729753 (=> (not res!2307342) (not e!3360685))))

(assert (=> d!1729753 (= res!2307342 (matchR!7391 (reg!15535 (regOne!30924 r!7292)) Nil!61793))))

(assert (=> d!1729753 (validRegex!6942 (reg!15535 (regOne!30924 r!7292)))))

(assert (=> d!1729753 (= (findConcatSeparation!1731 (reg!15535 (regOne!30924 r!7292)) lt!2211306 Nil!61793 (_1!35708 lt!2211317) (_1!35708 lt!2211317)) lt!2211571)))

(assert (= (and d!1729753 res!2307342) b!5422767))

(assert (= (and d!1729753 c!945795) b!5422765))

(assert (= (and d!1729753 (not c!945795)) b!5422766))

(assert (= (and b!5422766 c!945794) b!5422770))

(assert (= (and b!5422766 (not c!945794)) b!5422763))

(assert (= (and d!1729753 res!2307343) b!5422769))

(assert (= (and b!5422769 res!2307344) b!5422762))

(assert (= (and b!5422762 res!2307346) b!5422764))

(assert (= (and d!1729753 (not res!2307345)) b!5422768))

(declare-fun m!6446850 () Bool)

(assert (=> d!1729753 m!6446850))

(declare-fun m!6446852 () Bool)

(assert (=> d!1729753 m!6446852))

(assert (=> d!1729753 m!6446778))

(declare-fun m!6446854 () Bool)

(assert (=> b!5422763 m!6446854))

(assert (=> b!5422763 m!6446854))

(declare-fun m!6446856 () Bool)

(assert (=> b!5422763 m!6446856))

(declare-fun m!6446858 () Bool)

(assert (=> b!5422763 m!6446858))

(assert (=> b!5422763 m!6446854))

(declare-fun m!6446860 () Bool)

(assert (=> b!5422763 m!6446860))

(declare-fun m!6446862 () Bool)

(assert (=> b!5422767 m!6446862))

(assert (=> b!5422768 m!6446850))

(declare-fun m!6446864 () Bool)

(assert (=> b!5422769 m!6446864))

(declare-fun m!6446866 () Bool)

(assert (=> b!5422769 m!6446866))

(assert (=> b!5422764 m!6446864))

(declare-fun m!6446868 () Bool)

(assert (=> b!5422764 m!6446868))

(assert (=> b!5422762 m!6446864))

(declare-fun m!6446870 () Bool)

(assert (=> b!5422762 m!6446870))

(assert (=> b!5422281 d!1729753))

(declare-fun d!1729757 () Bool)

(assert (=> d!1729757 (= (get!21312 lt!2211318) (v!51345 lt!2211318))))

(assert (=> b!5422281 d!1729757))

(declare-fun d!1729759 () Bool)

(declare-fun e!3360692 () Bool)

(assert (=> d!1729759 e!3360692))

(declare-fun res!2307348 () Bool)

(assert (=> d!1729759 (=> (not res!2307348) (not e!3360692))))

(declare-fun lt!2211572 () List!61917)

(assert (=> d!1729759 (= res!2307348 (= (content!11118 lt!2211572) (set.union (content!11118 lt!2211281) (content!11118 (_2!35708 lt!2211317)))))))

(declare-fun e!3360693 () List!61917)

(assert (=> d!1729759 (= lt!2211572 e!3360693)))

(declare-fun c!945799 () Bool)

(assert (=> d!1729759 (= c!945799 (is-Nil!61793 lt!2211281))))

(assert (=> d!1729759 (= (++!13585 lt!2211281 (_2!35708 lt!2211317)) lt!2211572)))

(declare-fun b!5422779 () Bool)

(declare-fun res!2307347 () Bool)

(assert (=> b!5422779 (=> (not res!2307347) (not e!3360692))))

(assert (=> b!5422779 (= res!2307347 (= (size!39881 lt!2211572) (+ (size!39881 lt!2211281) (size!39881 (_2!35708 lt!2211317)))))))

(declare-fun b!5422777 () Bool)

(assert (=> b!5422777 (= e!3360693 (_2!35708 lt!2211317))))

(declare-fun b!5422778 () Bool)

(assert (=> b!5422778 (= e!3360693 (Cons!61793 (h!68241 lt!2211281) (++!13585 (t!375140 lt!2211281) (_2!35708 lt!2211317))))))

(declare-fun b!5422780 () Bool)

(assert (=> b!5422780 (= e!3360692 (or (not (= (_2!35708 lt!2211317) Nil!61793)) (= lt!2211572 lt!2211281)))))

(assert (= (and d!1729759 c!945799) b!5422777))

(assert (= (and d!1729759 (not c!945799)) b!5422778))

(assert (= (and d!1729759 res!2307348) b!5422779))

(assert (= (and b!5422779 res!2307347) b!5422780))

(declare-fun m!6446882 () Bool)

(assert (=> d!1729759 m!6446882))

(declare-fun m!6446884 () Bool)

(assert (=> d!1729759 m!6446884))

(assert (=> d!1729759 m!6446800))

(declare-fun m!6446888 () Bool)

(assert (=> b!5422779 m!6446888))

(declare-fun m!6446890 () Bool)

(assert (=> b!5422779 m!6446890))

(assert (=> b!5422779 m!6446806))

(declare-fun m!6446892 () Bool)

(assert (=> b!5422778 m!6446892))

(assert (=> b!5422281 d!1729759))

(declare-fun b!5422783 () Bool)

(declare-fun e!3360698 () Bool)

(declare-fun lt!2211573 () Bool)

(assert (=> b!5422783 (= e!3360698 (not lt!2211573))))

(declare-fun b!5422784 () Bool)

(declare-fun res!2307353 () Bool)

(declare-fun e!3360695 () Bool)

(assert (=> b!5422784 (=> (not res!2307353) (not e!3360695))))

(declare-fun call!388092 () Bool)

(assert (=> b!5422784 (= res!2307353 (not call!388092))))

(declare-fun b!5422785 () Bool)

(declare-fun res!2307349 () Bool)

(declare-fun e!3360700 () Bool)

(assert (=> b!5422785 (=> res!2307349 e!3360700)))

(assert (=> b!5422785 (= res!2307349 (not (isEmpty!33798 (tail!10729 (_1!35708 lt!2211270)))))))

(declare-fun b!5422786 () Bool)

(declare-fun e!3360699 () Bool)

(declare-fun e!3360701 () Bool)

(assert (=> b!5422786 (= e!3360699 e!3360701)))

(declare-fun res!2307351 () Bool)

(assert (=> b!5422786 (=> (not res!2307351) (not e!3360701))))

(assert (=> b!5422786 (= res!2307351 (not lt!2211573))))

(declare-fun b!5422787 () Bool)

(declare-fun res!2307354 () Bool)

(assert (=> b!5422787 (=> (not res!2307354) (not e!3360695))))

(assert (=> b!5422787 (= res!2307354 (isEmpty!33798 (tail!10729 (_1!35708 lt!2211270))))))

(declare-fun b!5422789 () Bool)

(assert (=> b!5422789 (= e!3360701 e!3360700)))

(declare-fun res!2307352 () Bool)

(assert (=> b!5422789 (=> res!2307352 e!3360700)))

(assert (=> b!5422789 (= res!2307352 call!388092)))

(declare-fun b!5422790 () Bool)

(declare-fun e!3360696 () Bool)

(assert (=> b!5422790 (= e!3360696 (nullable!5375 (reg!15535 (regOne!30924 r!7292))))))

(declare-fun b!5422791 () Bool)

(assert (=> b!5422791 (= e!3360695 (= (head!11632 (_1!35708 lt!2211270)) (c!945702 (reg!15535 (regOne!30924 r!7292)))))))

(declare-fun b!5422792 () Bool)

(assert (=> b!5422792 (= e!3360700 (not (= (head!11632 (_1!35708 lt!2211270)) (c!945702 (reg!15535 (regOne!30924 r!7292))))))))

(declare-fun bm!388087 () Bool)

(assert (=> bm!388087 (= call!388092 (isEmpty!33798 (_1!35708 lt!2211270)))))

(declare-fun b!5422793 () Bool)

(declare-fun res!2307356 () Bool)

(assert (=> b!5422793 (=> res!2307356 e!3360699)))

(assert (=> b!5422793 (= res!2307356 e!3360695)))

(declare-fun res!2307355 () Bool)

(assert (=> b!5422793 (=> (not res!2307355) (not e!3360695))))

(assert (=> b!5422793 (= res!2307355 lt!2211573)))

(declare-fun b!5422794 () Bool)

(assert (=> b!5422794 (= e!3360696 (matchR!7391 (derivativeStep!4278 (reg!15535 (regOne!30924 r!7292)) (head!11632 (_1!35708 lt!2211270))) (tail!10729 (_1!35708 lt!2211270))))))

(declare-fun b!5422795 () Bool)

(declare-fun e!3360697 () Bool)

(assert (=> b!5422795 (= e!3360697 e!3360698)))

(declare-fun c!945803 () Bool)

(assert (=> b!5422795 (= c!945803 (is-EmptyLang!15206 (reg!15535 (regOne!30924 r!7292))))))

(declare-fun b!5422796 () Bool)

(declare-fun res!2307350 () Bool)

(assert (=> b!5422796 (=> res!2307350 e!3360699)))

(assert (=> b!5422796 (= res!2307350 (not (is-ElementMatch!15206 (reg!15535 (regOne!30924 r!7292)))))))

(assert (=> b!5422796 (= e!3360698 e!3360699)))

(declare-fun b!5422788 () Bool)

(assert (=> b!5422788 (= e!3360697 (= lt!2211573 call!388092))))

(declare-fun d!1729763 () Bool)

(assert (=> d!1729763 e!3360697))

(declare-fun c!945801 () Bool)

(assert (=> d!1729763 (= c!945801 (is-EmptyExpr!15206 (reg!15535 (regOne!30924 r!7292))))))

(assert (=> d!1729763 (= lt!2211573 e!3360696)))

(declare-fun c!945802 () Bool)

(assert (=> d!1729763 (= c!945802 (isEmpty!33798 (_1!35708 lt!2211270)))))

(assert (=> d!1729763 (validRegex!6942 (reg!15535 (regOne!30924 r!7292)))))

(assert (=> d!1729763 (= (matchR!7391 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211270)) lt!2211573)))

(assert (= (and d!1729763 c!945802) b!5422790))

(assert (= (and d!1729763 (not c!945802)) b!5422794))

(assert (= (and d!1729763 c!945801) b!5422788))

(assert (= (and d!1729763 (not c!945801)) b!5422795))

(assert (= (and b!5422795 c!945803) b!5422783))

(assert (= (and b!5422795 (not c!945803)) b!5422796))

(assert (= (and b!5422796 (not res!2307350)) b!5422793))

(assert (= (and b!5422793 res!2307355) b!5422784))

(assert (= (and b!5422784 res!2307353) b!5422787))

(assert (= (and b!5422787 res!2307354) b!5422791))

(assert (= (and b!5422793 (not res!2307356)) b!5422786))

(assert (= (and b!5422786 res!2307351) b!5422789))

(assert (= (and b!5422789 (not res!2307352)) b!5422785))

(assert (= (and b!5422785 (not res!2307349)) b!5422792))

(assert (= (or b!5422788 b!5422784 b!5422789) bm!388087))

(declare-fun m!6446900 () Bool)

(assert (=> d!1729763 m!6446900))

(assert (=> d!1729763 m!6446778))

(declare-fun m!6446902 () Bool)

(assert (=> b!5422785 m!6446902))

(assert (=> b!5422785 m!6446902))

(declare-fun m!6446904 () Bool)

(assert (=> b!5422785 m!6446904))

(declare-fun m!6446906 () Bool)

(assert (=> b!5422794 m!6446906))

(assert (=> b!5422794 m!6446906))

(declare-fun m!6446908 () Bool)

(assert (=> b!5422794 m!6446908))

(assert (=> b!5422794 m!6446902))

(assert (=> b!5422794 m!6446908))

(assert (=> b!5422794 m!6446902))

(declare-fun m!6446910 () Bool)

(assert (=> b!5422794 m!6446910))

(assert (=> b!5422787 m!6446902))

(assert (=> b!5422787 m!6446902))

(assert (=> b!5422787 m!6446904))

(declare-fun m!6446912 () Bool)

(assert (=> b!5422790 m!6446912))

(assert (=> b!5422791 m!6446906))

(assert (=> b!5422792 m!6446906))

(assert (=> bm!388087 m!6446900))

(assert (=> b!5422281 d!1729763))

(declare-fun d!1729767 () Bool)

(assert (=> d!1729767 (= (isEmpty!33794 (t!375141 (exprs!5090 (h!68243 zl!343)))) (is-Nil!61794 (t!375141 (exprs!5090 (h!68243 zl!343)))))))

(assert (=> b!5422259 d!1729767))

(declare-fun bm!388100 () Bool)

(declare-fun c!945812 () Bool)

(declare-fun call!388107 () Bool)

(declare-fun c!945813 () Bool)

(assert (=> bm!388100 (= call!388107 (validRegex!6942 (ite c!945813 (reg!15535 r!7292) (ite c!945812 (regTwo!30925 r!7292) (regTwo!30924 r!7292)))))))

(declare-fun bm!388101 () Bool)

(declare-fun call!388105 () Bool)

(assert (=> bm!388101 (= call!388105 (validRegex!6942 (ite c!945812 (regOne!30925 r!7292) (regOne!30924 r!7292))))))

(declare-fun b!5422833 () Bool)

(declare-fun e!3360736 () Bool)

(declare-fun e!3360730 () Bool)

(assert (=> b!5422833 (= e!3360736 e!3360730)))

(declare-fun res!2307379 () Bool)

(assert (=> b!5422833 (=> (not res!2307379) (not e!3360730))))

(assert (=> b!5422833 (= res!2307379 call!388105)))

(declare-fun b!5422834 () Bool)

(declare-fun e!3360732 () Bool)

(declare-fun e!3360733 () Bool)

(assert (=> b!5422834 (= e!3360732 e!3360733)))

(assert (=> b!5422834 (= c!945813 (is-Star!15206 r!7292))))

(declare-fun d!1729769 () Bool)

(declare-fun res!2307377 () Bool)

(assert (=> d!1729769 (=> res!2307377 e!3360732)))

(assert (=> d!1729769 (= res!2307377 (is-ElementMatch!15206 r!7292))))

(assert (=> d!1729769 (= (validRegex!6942 r!7292) e!3360732)))

(declare-fun b!5422835 () Bool)

(declare-fun res!2307378 () Bool)

(assert (=> b!5422835 (=> res!2307378 e!3360736)))

(assert (=> b!5422835 (= res!2307378 (not (is-Concat!24051 r!7292)))))

(declare-fun e!3360735 () Bool)

(assert (=> b!5422835 (= e!3360735 e!3360736)))

(declare-fun b!5422836 () Bool)

(declare-fun call!388106 () Bool)

(assert (=> b!5422836 (= e!3360730 call!388106)))

(declare-fun b!5422837 () Bool)

(declare-fun res!2307381 () Bool)

(declare-fun e!3360734 () Bool)

(assert (=> b!5422837 (=> (not res!2307381) (not e!3360734))))

(assert (=> b!5422837 (= res!2307381 call!388105)))

(assert (=> b!5422837 (= e!3360735 e!3360734)))

(declare-fun b!5422838 () Bool)

(assert (=> b!5422838 (= e!3360734 call!388106)))

(declare-fun bm!388102 () Bool)

(assert (=> bm!388102 (= call!388106 call!388107)))

(declare-fun b!5422839 () Bool)

(assert (=> b!5422839 (= e!3360733 e!3360735)))

(assert (=> b!5422839 (= c!945812 (is-Union!15206 r!7292))))

(declare-fun b!5422840 () Bool)

(declare-fun e!3360731 () Bool)

(assert (=> b!5422840 (= e!3360733 e!3360731)))

(declare-fun res!2307380 () Bool)

(assert (=> b!5422840 (= res!2307380 (not (nullable!5375 (reg!15535 r!7292))))))

(assert (=> b!5422840 (=> (not res!2307380) (not e!3360731))))

(declare-fun b!5422841 () Bool)

(assert (=> b!5422841 (= e!3360731 call!388107)))

(assert (= (and d!1729769 (not res!2307377)) b!5422834))

(assert (= (and b!5422834 c!945813) b!5422840))

(assert (= (and b!5422834 (not c!945813)) b!5422839))

(assert (= (and b!5422840 res!2307380) b!5422841))

(assert (= (and b!5422839 c!945812) b!5422837))

(assert (= (and b!5422839 (not c!945812)) b!5422835))

(assert (= (and b!5422837 res!2307381) b!5422838))

(assert (= (and b!5422835 (not res!2307378)) b!5422833))

(assert (= (and b!5422833 res!2307379) b!5422836))

(assert (= (or b!5422838 b!5422836) bm!388102))

(assert (= (or b!5422837 b!5422833) bm!388101))

(assert (= (or b!5422841 bm!388102) bm!388100))

(declare-fun m!6446914 () Bool)

(assert (=> bm!388100 m!6446914))

(declare-fun m!6446916 () Bool)

(assert (=> bm!388101 m!6446916))

(declare-fun m!6446918 () Bool)

(assert (=> b!5422840 m!6446918))

(assert (=> start!569264 d!1729769))

(declare-fun d!1729771 () Bool)

(declare-fun c!945816 () Bool)

(assert (=> d!1729771 (= c!945816 (isEmpty!33798 s!2326))))

(declare-fun e!3360739 () Bool)

(assert (=> d!1729771 (= (matchZipper!1450 z!1189 s!2326) e!3360739)))

(declare-fun b!5422846 () Bool)

(declare-fun nullableZipper!1457 ((Set Context!9180)) Bool)

(assert (=> b!5422846 (= e!3360739 (nullableZipper!1457 z!1189))))

(declare-fun b!5422847 () Bool)

(assert (=> b!5422847 (= e!3360739 (matchZipper!1450 (derivationStepZipper!1445 z!1189 (head!11632 s!2326)) (tail!10729 s!2326)))))

(assert (= (and d!1729771 c!945816) b!5422846))

(assert (= (and d!1729771 (not c!945816)) b!5422847))

(assert (=> d!1729771 m!6446748))

(declare-fun m!6446920 () Bool)

(assert (=> b!5422846 m!6446920))

(assert (=> b!5422847 m!6446760))

(assert (=> b!5422847 m!6446760))

(declare-fun m!6446922 () Bool)

(assert (=> b!5422847 m!6446922))

(assert (=> b!5422847 m!6446756))

(assert (=> b!5422847 m!6446922))

(assert (=> b!5422847 m!6446756))

(declare-fun m!6446924 () Bool)

(assert (=> b!5422847 m!6446924))

(assert (=> b!5422279 d!1729771))

(declare-fun d!1729773 () Bool)

(assert (=> d!1729773 (forall!14550 (++!13586 lt!2211280 lt!2211262) lambda!284044)))

(declare-fun lt!2211576 () Unit!154346)

(declare-fun choose!41099 (List!61918 List!61918 Int) Unit!154346)

(assert (=> d!1729773 (= lt!2211576 (choose!41099 lt!2211280 lt!2211262 lambda!284044))))

(assert (=> d!1729773 (forall!14550 lt!2211280 lambda!284044)))

(assert (=> d!1729773 (= (lemmaConcatPreservesForall!231 lt!2211280 lt!2211262 lambda!284044) lt!2211576)))

(declare-fun bs!1252839 () Bool)

(assert (= bs!1252839 d!1729773))

(assert (=> bs!1252839 m!6446266))

(assert (=> bs!1252839 m!6446266))

(declare-fun m!6446938 () Bool)

(assert (=> bs!1252839 m!6446938))

(declare-fun m!6446940 () Bool)

(assert (=> bs!1252839 m!6446940))

(declare-fun m!6446942 () Bool)

(assert (=> bs!1252839 m!6446942))

(assert (=> b!5422280 d!1729773))

(declare-fun bs!1252840 () Bool)

(declare-fun d!1729779 () Bool)

(assert (= bs!1252840 (and d!1729779 b!5422280)))

(declare-fun lambda!284134 () Int)

(assert (=> bs!1252840 (= (= (exprs!5090 lt!2211266) lt!2211262) (= lambda!284134 lambda!284043))))

(assert (=> d!1729779 true))

(assert (=> d!1729779 (= (appendTo!65 lt!2211293 lt!2211266) (map!14194 lt!2211293 lambda!284134))))

(declare-fun bs!1252841 () Bool)

(assert (= bs!1252841 d!1729779))

(declare-fun m!6446944 () Bool)

(assert (=> bs!1252841 m!6446944))

(assert (=> b!5422280 d!1729779))

(declare-fun d!1729781 () Bool)

(declare-fun choose!41100 ((Set Context!9180) Int) (Set Context!9180))

(assert (=> d!1729781 (= (map!14194 lt!2211293 lambda!284043) (choose!41100 lt!2211293 lambda!284043))))

(declare-fun bs!1252842 () Bool)

(assert (= bs!1252842 d!1729781))

(declare-fun m!6446946 () Bool)

(assert (=> bs!1252842 m!6446946))

(assert (=> b!5422280 d!1729781))

(declare-fun b!5422881 () Bool)

(declare-fun e!3360760 () List!61918)

(assert (=> b!5422881 (= e!3360760 (Cons!61794 (h!68242 lt!2211280) (++!13586 (t!375141 lt!2211280) lt!2211262)))))

(declare-fun b!5422880 () Bool)

(assert (=> b!5422880 (= e!3360760 lt!2211262)))

(declare-fun b!5422882 () Bool)

(declare-fun res!2307397 () Bool)

(declare-fun e!3360761 () Bool)

(assert (=> b!5422882 (=> (not res!2307397) (not e!3360761))))

(declare-fun lt!2211583 () List!61918)

(declare-fun size!39882 (List!61918) Int)

(assert (=> b!5422882 (= res!2307397 (= (size!39882 lt!2211583) (+ (size!39882 lt!2211280) (size!39882 lt!2211262))))))

(declare-fun b!5422884 () Bool)

(assert (=> b!5422884 (= e!3360761 (or (not (= lt!2211262 Nil!61794)) (= lt!2211583 lt!2211280)))))

(declare-fun d!1729783 () Bool)

(assert (=> d!1729783 e!3360761))

(declare-fun res!2307396 () Bool)

(assert (=> d!1729783 (=> (not res!2307396) (not e!3360761))))

(declare-fun content!11119 (List!61918) (Set Regex!15206))

(assert (=> d!1729783 (= res!2307396 (= (content!11119 lt!2211583) (set.union (content!11119 lt!2211280) (content!11119 lt!2211262))))))

(assert (=> d!1729783 (= lt!2211583 e!3360760)))

(declare-fun c!945826 () Bool)

(assert (=> d!1729783 (= c!945826 (is-Nil!61794 lt!2211280))))

(assert (=> d!1729783 (= (++!13586 lt!2211280 lt!2211262) lt!2211583)))

(assert (= (and d!1729783 c!945826) b!5422880))

(assert (= (and d!1729783 (not c!945826)) b!5422881))

(assert (= (and d!1729783 res!2307396) b!5422882))

(assert (= (and b!5422882 res!2307397) b!5422884))

(declare-fun m!6446948 () Bool)

(assert (=> b!5422881 m!6446948))

(declare-fun m!6446950 () Bool)

(assert (=> b!5422882 m!6446950))

(declare-fun m!6446952 () Bool)

(assert (=> b!5422882 m!6446952))

(declare-fun m!6446954 () Bool)

(assert (=> b!5422882 m!6446954))

(declare-fun m!6446956 () Bool)

(assert (=> d!1729783 m!6446956))

(declare-fun m!6446958 () Bool)

(assert (=> d!1729783 m!6446958))

(declare-fun m!6446960 () Bool)

(assert (=> d!1729783 m!6446960))

(assert (=> b!5422280 d!1729783))

(declare-fun d!1729785 () Bool)

(declare-fun dynLambda!24353 (Int Context!9180) Context!9180)

(assert (=> d!1729785 (= (map!14194 lt!2211293 lambda!284043) (set.insert (dynLambda!24353 lambda!284043 lt!2211323) (as set.empty (Set Context!9180))))))

(declare-fun lt!2211586 () Unit!154346)

(declare-fun choose!41101 ((Set Context!9180) Context!9180 Int) Unit!154346)

(assert (=> d!1729785 (= lt!2211586 (choose!41101 lt!2211293 lt!2211323 lambda!284043))))

(assert (=> d!1729785 (= lt!2211293 (set.insert lt!2211323 (as set.empty (Set Context!9180))))))

(assert (=> d!1729785 (= (lemmaMapOnSingletonSet!65 lt!2211293 lt!2211323 lambda!284043) lt!2211586)))

(declare-fun b_lambda!206949 () Bool)

(assert (=> (not b_lambda!206949) (not d!1729785)))

(declare-fun bs!1252843 () Bool)

(assert (= bs!1252843 d!1729785))

(assert (=> bs!1252843 m!6446270))

(declare-fun m!6446962 () Bool)

(assert (=> bs!1252843 m!6446962))

(assert (=> bs!1252843 m!6446294))

(declare-fun m!6446964 () Bool)

(assert (=> bs!1252843 m!6446964))

(assert (=> bs!1252843 m!6446964))

(declare-fun m!6446966 () Bool)

(assert (=> bs!1252843 m!6446966))

(assert (=> b!5422280 d!1729785))

(declare-fun d!1729787 () Bool)

(declare-fun nullableFct!1608 (Regex!15206) Bool)

(assert (=> d!1729787 (= (nullable!5375 (regOne!30924 (regOne!30924 r!7292))) (nullableFct!1608 (regOne!30924 (regOne!30924 r!7292))))))

(declare-fun bs!1252844 () Bool)

(assert (= bs!1252844 d!1729787))

(declare-fun m!6446968 () Bool)

(assert (=> bs!1252844 m!6446968))

(assert (=> b!5422258 d!1729787))

(declare-fun d!1729789 () Bool)

(declare-fun c!945831 () Bool)

(assert (=> d!1729789 (= c!945831 (isEmpty!33798 (_1!35708 lt!2211279)))))

(declare-fun e!3360774 () Bool)

(assert (=> d!1729789 (= (matchZipper!1450 lt!2211293 (_1!35708 lt!2211279)) e!3360774)))

(declare-fun b!5422908 () Bool)

(assert (=> b!5422908 (= e!3360774 (nullableZipper!1457 lt!2211293))))

(declare-fun b!5422909 () Bool)

(assert (=> b!5422909 (= e!3360774 (matchZipper!1450 (derivationStepZipper!1445 lt!2211293 (head!11632 (_1!35708 lt!2211279))) (tail!10729 (_1!35708 lt!2211279))))))

(assert (= (and d!1729789 c!945831) b!5422908))

(assert (= (and d!1729789 (not c!945831)) b!5422909))

(declare-fun m!6446970 () Bool)

(assert (=> d!1729789 m!6446970))

(declare-fun m!6446972 () Bool)

(assert (=> b!5422908 m!6446972))

(declare-fun m!6446974 () Bool)

(assert (=> b!5422909 m!6446974))

(assert (=> b!5422909 m!6446974))

(declare-fun m!6446976 () Bool)

(assert (=> b!5422909 m!6446976))

(declare-fun m!6446978 () Bool)

(assert (=> b!5422909 m!6446978))

(assert (=> b!5422909 m!6446976))

(assert (=> b!5422909 m!6446978))

(declare-fun m!6446980 () Bool)

(assert (=> b!5422909 m!6446980))

(assert (=> b!5422267 d!1729789))

(declare-fun d!1729791 () Bool)

(declare-fun lt!2211589 () Regex!15206)

(assert (=> d!1729791 (validRegex!6942 lt!2211589)))

(assert (=> d!1729791 (= lt!2211589 (generalisedUnion!1135 (unfocusZipperList!648 zl!343)))))

(assert (=> d!1729791 (= (unfocusZipper!948 zl!343) lt!2211589)))

(declare-fun bs!1252845 () Bool)

(assert (= bs!1252845 d!1729791))

(declare-fun m!6446982 () Bool)

(assert (=> bs!1252845 m!6446982))

(assert (=> bs!1252845 m!6446342))

(assert (=> bs!1252845 m!6446342))

(assert (=> bs!1252845 m!6446344))

(assert (=> b!5422287 d!1729791))

(declare-fun d!1729793 () Bool)

(declare-fun dynLambda!24354 (Int Context!9180) (Set Context!9180))

(assert (=> d!1729793 (= (flatMap!933 lt!2211293 lambda!284042) (dynLambda!24354 lambda!284042 lt!2211323))))

(declare-fun lt!2211592 () Unit!154346)

(declare-fun choose!41103 ((Set Context!9180) Context!9180 Int) Unit!154346)

(assert (=> d!1729793 (= lt!2211592 (choose!41103 lt!2211293 lt!2211323 lambda!284042))))

(assert (=> d!1729793 (= lt!2211293 (set.insert lt!2211323 (as set.empty (Set Context!9180))))))

(assert (=> d!1729793 (= (lemmaFlatMapOnSingletonSet!465 lt!2211293 lt!2211323 lambda!284042) lt!2211592)))

(declare-fun b_lambda!206951 () Bool)

(assert (=> (not b_lambda!206951) (not d!1729793)))

(declare-fun bs!1252846 () Bool)

(assert (= bs!1252846 d!1729793))

(assert (=> bs!1252846 m!6446304))

(declare-fun m!6446984 () Bool)

(assert (=> bs!1252846 m!6446984))

(declare-fun m!6446986 () Bool)

(assert (=> bs!1252846 m!6446986))

(assert (=> bs!1252846 m!6446294))

(assert (=> b!5422288 d!1729793))

(declare-fun d!1729795 () Bool)

(declare-fun choose!41104 ((Set Context!9180) Int) (Set Context!9180))

(assert (=> d!1729795 (= (flatMap!933 lt!2211320 lambda!284042) (choose!41104 lt!2211320 lambda!284042))))

(declare-fun bs!1252847 () Bool)

(assert (= bs!1252847 d!1729795))

(declare-fun m!6446988 () Bool)

(assert (=> bs!1252847 m!6446988))

(assert (=> b!5422288 d!1729795))

(declare-fun d!1729797 () Bool)

(assert (=> d!1729797 (= (flatMap!933 lt!2211320 lambda!284042) (dynLambda!24354 lambda!284042 lt!2211266))))

(declare-fun lt!2211594 () Unit!154346)

(assert (=> d!1729797 (= lt!2211594 (choose!41103 lt!2211320 lt!2211266 lambda!284042))))

(assert (=> d!1729797 (= lt!2211320 (set.insert lt!2211266 (as set.empty (Set Context!9180))))))

(assert (=> d!1729797 (= (lemmaFlatMapOnSingletonSet!465 lt!2211320 lt!2211266 lambda!284042) lt!2211594)))

(declare-fun b_lambda!206953 () Bool)

(assert (=> (not b_lambda!206953) (not d!1729797)))

(declare-fun bs!1252848 () Bool)

(assert (= bs!1252848 d!1729797))

(assert (=> bs!1252848 m!6446290))

(declare-fun m!6446990 () Bool)

(assert (=> bs!1252848 m!6446990))

(declare-fun m!6446992 () Bool)

(assert (=> bs!1252848 m!6446992))

(assert (=> bs!1252848 m!6446296))

(assert (=> b!5422288 d!1729797))

(declare-fun d!1729799 () Bool)

(assert (=> d!1729799 (= (flatMap!933 lt!2211293 lambda!284042) (choose!41104 lt!2211293 lambda!284042))))

(declare-fun bs!1252849 () Bool)

(assert (= bs!1252849 d!1729799))

(declare-fun m!6446994 () Bool)

(assert (=> bs!1252849 m!6446994))

(assert (=> b!5422288 d!1729799))

(declare-fun d!1729801 () Bool)

(declare-fun lt!2211595 () Regex!15206)

(assert (=> d!1729801 (validRegex!6942 lt!2211595)))

(assert (=> d!1729801 (= lt!2211595 (generalisedUnion!1135 (unfocusZipperList!648 lt!2211301)))))

(assert (=> d!1729801 (= (unfocusZipper!948 lt!2211301) lt!2211595)))

(declare-fun bs!1252850 () Bool)

(assert (= bs!1252850 d!1729801))

(declare-fun m!6446996 () Bool)

(assert (=> bs!1252850 m!6446996))

(declare-fun m!6446998 () Bool)

(assert (=> bs!1252850 m!6446998))

(assert (=> bs!1252850 m!6446998))

(declare-fun m!6447000 () Bool)

(assert (=> bs!1252850 m!6447000))

(assert (=> b!5422288 d!1729801))

(declare-fun b!5422934 () Bool)

(declare-fun e!3360789 () (Set Context!9180))

(declare-fun e!3360790 () (Set Context!9180))

(assert (=> b!5422934 (= e!3360789 e!3360790)))

(declare-fun c!945840 () Bool)

(assert (=> b!5422934 (= c!945840 (is-Cons!61794 (exprs!5090 lt!2211323)))))

(declare-fun b!5422935 () Bool)

(declare-fun call!388119 () (Set Context!9180))

(assert (=> b!5422935 (= e!3360790 call!388119)))

(declare-fun b!5422936 () Bool)

(declare-fun e!3360788 () Bool)

(assert (=> b!5422936 (= e!3360788 (nullable!5375 (h!68242 (exprs!5090 lt!2211323))))))

(declare-fun b!5422937 () Bool)

(assert (=> b!5422937 (= e!3360789 (set.union call!388119 (derivationStepZipperUp!578 (Context!9181 (t!375141 (exprs!5090 lt!2211323))) (h!68241 s!2326))))))

(declare-fun b!5422938 () Bool)

(assert (=> b!5422938 (= e!3360790 (as set.empty (Set Context!9180)))))

(declare-fun bm!388114 () Bool)

(assert (=> bm!388114 (= call!388119 (derivationStepZipperDown!654 (h!68242 (exprs!5090 lt!2211323)) (Context!9181 (t!375141 (exprs!5090 lt!2211323))) (h!68241 s!2326)))))

(declare-fun d!1729803 () Bool)

(declare-fun c!945839 () Bool)

(assert (=> d!1729803 (= c!945839 e!3360788)))

(declare-fun res!2307424 () Bool)

(assert (=> d!1729803 (=> (not res!2307424) (not e!3360788))))

(assert (=> d!1729803 (= res!2307424 (is-Cons!61794 (exprs!5090 lt!2211323)))))

(assert (=> d!1729803 (= (derivationStepZipperUp!578 lt!2211323 (h!68241 s!2326)) e!3360789)))

(assert (= (and d!1729803 res!2307424) b!5422936))

(assert (= (and d!1729803 c!945839) b!5422937))

(assert (= (and d!1729803 (not c!945839)) b!5422934))

(assert (= (and b!5422934 c!945840) b!5422935))

(assert (= (and b!5422934 (not c!945840)) b!5422938))

(assert (= (or b!5422937 b!5422935) bm!388114))

(declare-fun m!6447018 () Bool)

(assert (=> b!5422936 m!6447018))

(declare-fun m!6447020 () Bool)

(assert (=> b!5422937 m!6447020))

(declare-fun m!6447022 () Bool)

(assert (=> bm!388114 m!6447022))

(assert (=> b!5422288 d!1729803))

(declare-fun b!5422939 () Bool)

(declare-fun e!3360792 () (Set Context!9180))

(declare-fun e!3360793 () (Set Context!9180))

(assert (=> b!5422939 (= e!3360792 e!3360793)))

(declare-fun c!945842 () Bool)

(assert (=> b!5422939 (= c!945842 (is-Cons!61794 (exprs!5090 lt!2211266)))))

(declare-fun b!5422940 () Bool)

(declare-fun call!388120 () (Set Context!9180))

(assert (=> b!5422940 (= e!3360793 call!388120)))

(declare-fun b!5422941 () Bool)

(declare-fun e!3360791 () Bool)

(assert (=> b!5422941 (= e!3360791 (nullable!5375 (h!68242 (exprs!5090 lt!2211266))))))

(declare-fun b!5422942 () Bool)

(assert (=> b!5422942 (= e!3360792 (set.union call!388120 (derivationStepZipperUp!578 (Context!9181 (t!375141 (exprs!5090 lt!2211266))) (h!68241 s!2326))))))

(declare-fun b!5422943 () Bool)

(assert (=> b!5422943 (= e!3360793 (as set.empty (Set Context!9180)))))

(declare-fun bm!388115 () Bool)

(assert (=> bm!388115 (= call!388120 (derivationStepZipperDown!654 (h!68242 (exprs!5090 lt!2211266)) (Context!9181 (t!375141 (exprs!5090 lt!2211266))) (h!68241 s!2326)))))

(declare-fun d!1729807 () Bool)

(declare-fun c!945841 () Bool)

(assert (=> d!1729807 (= c!945841 e!3360791)))

(declare-fun res!2307425 () Bool)

(assert (=> d!1729807 (=> (not res!2307425) (not e!3360791))))

(assert (=> d!1729807 (= res!2307425 (is-Cons!61794 (exprs!5090 lt!2211266)))))

(assert (=> d!1729807 (= (derivationStepZipperUp!578 lt!2211266 (h!68241 s!2326)) e!3360792)))

(assert (= (and d!1729807 res!2307425) b!5422941))

(assert (= (and d!1729807 c!945841) b!5422942))

(assert (= (and d!1729807 (not c!945841)) b!5422939))

(assert (= (and b!5422939 c!945842) b!5422940))

(assert (= (and b!5422939 (not c!945842)) b!5422943))

(assert (= (or b!5422942 b!5422940) bm!388115))

(declare-fun m!6447024 () Bool)

(assert (=> b!5422941 m!6447024))

(declare-fun m!6447026 () Bool)

(assert (=> b!5422942 m!6447026))

(declare-fun m!6447028 () Bool)

(assert (=> bm!388115 m!6447028))

(assert (=> b!5422288 d!1729807))

(declare-fun b!5422944 () Bool)

(declare-fun e!3360797 () Bool)

(declare-fun lt!2211598 () Bool)

(assert (=> b!5422944 (= e!3360797 (not lt!2211598))))

(declare-fun b!5422945 () Bool)

(declare-fun res!2307430 () Bool)

(declare-fun e!3360794 () Bool)

(assert (=> b!5422945 (=> (not res!2307430) (not e!3360794))))

(declare-fun call!388121 () Bool)

(assert (=> b!5422945 (= res!2307430 (not call!388121))))

(declare-fun b!5422946 () Bool)

(declare-fun res!2307426 () Bool)

(declare-fun e!3360799 () Bool)

(assert (=> b!5422946 (=> res!2307426 e!3360799)))

(assert (=> b!5422946 (= res!2307426 (not (isEmpty!33798 (tail!10729 (_1!35708 lt!2211317)))))))

(declare-fun b!5422947 () Bool)

(declare-fun e!3360798 () Bool)

(declare-fun e!3360800 () Bool)

(assert (=> b!5422947 (= e!3360798 e!3360800)))

(declare-fun res!2307428 () Bool)

(assert (=> b!5422947 (=> (not res!2307428) (not e!3360800))))

(assert (=> b!5422947 (= res!2307428 (not lt!2211598))))

(declare-fun b!5422948 () Bool)

(declare-fun res!2307431 () Bool)

(assert (=> b!5422948 (=> (not res!2307431) (not e!3360794))))

(assert (=> b!5422948 (= res!2307431 (isEmpty!33798 (tail!10729 (_1!35708 lt!2211317))))))

(declare-fun b!5422950 () Bool)

(assert (=> b!5422950 (= e!3360800 e!3360799)))

(declare-fun res!2307429 () Bool)

(assert (=> b!5422950 (=> res!2307429 e!3360799)))

(assert (=> b!5422950 (= res!2307429 call!388121)))

(declare-fun b!5422951 () Bool)

(declare-fun e!3360795 () Bool)

(assert (=> b!5422951 (= e!3360795 (nullable!5375 lt!2211321))))

(declare-fun b!5422952 () Bool)

(assert (=> b!5422952 (= e!3360794 (= (head!11632 (_1!35708 lt!2211317)) (c!945702 lt!2211321)))))

(declare-fun b!5422953 () Bool)

(assert (=> b!5422953 (= e!3360799 (not (= (head!11632 (_1!35708 lt!2211317)) (c!945702 lt!2211321))))))

(declare-fun bm!388116 () Bool)

(assert (=> bm!388116 (= call!388121 (isEmpty!33798 (_1!35708 lt!2211317)))))

(declare-fun b!5422954 () Bool)

(declare-fun res!2307433 () Bool)

(assert (=> b!5422954 (=> res!2307433 e!3360798)))

(assert (=> b!5422954 (= res!2307433 e!3360794)))

(declare-fun res!2307432 () Bool)

(assert (=> b!5422954 (=> (not res!2307432) (not e!3360794))))

(assert (=> b!5422954 (= res!2307432 lt!2211598)))

(declare-fun b!5422955 () Bool)

(assert (=> b!5422955 (= e!3360795 (matchR!7391 (derivativeStep!4278 lt!2211321 (head!11632 (_1!35708 lt!2211317))) (tail!10729 (_1!35708 lt!2211317))))))

(declare-fun b!5422956 () Bool)

(declare-fun e!3360796 () Bool)

(assert (=> b!5422956 (= e!3360796 e!3360797)))

(declare-fun c!945845 () Bool)

(assert (=> b!5422956 (= c!945845 (is-EmptyLang!15206 lt!2211321))))

(declare-fun b!5422957 () Bool)

(declare-fun res!2307427 () Bool)

(assert (=> b!5422957 (=> res!2307427 e!3360798)))

(assert (=> b!5422957 (= res!2307427 (not (is-ElementMatch!15206 lt!2211321)))))

(assert (=> b!5422957 (= e!3360797 e!3360798)))

(declare-fun b!5422949 () Bool)

(assert (=> b!5422949 (= e!3360796 (= lt!2211598 call!388121))))

(declare-fun d!1729809 () Bool)

(assert (=> d!1729809 e!3360796))

(declare-fun c!945843 () Bool)

(assert (=> d!1729809 (= c!945843 (is-EmptyExpr!15206 lt!2211321))))

(assert (=> d!1729809 (= lt!2211598 e!3360795)))

(declare-fun c!945844 () Bool)

(assert (=> d!1729809 (= c!945844 (isEmpty!33798 (_1!35708 lt!2211317)))))

(assert (=> d!1729809 (validRegex!6942 lt!2211321)))

(assert (=> d!1729809 (= (matchR!7391 lt!2211321 (_1!35708 lt!2211317)) lt!2211598)))

(assert (= (and d!1729809 c!945844) b!5422951))

(assert (= (and d!1729809 (not c!945844)) b!5422955))

(assert (= (and d!1729809 c!945843) b!5422949))

(assert (= (and d!1729809 (not c!945843)) b!5422956))

(assert (= (and b!5422956 c!945845) b!5422944))

(assert (= (and b!5422956 (not c!945845)) b!5422957))

(assert (= (and b!5422957 (not res!2307427)) b!5422954))

(assert (= (and b!5422954 res!2307432) b!5422945))

(assert (= (and b!5422945 res!2307430) b!5422948))

(assert (= (and b!5422948 res!2307431) b!5422952))

(assert (= (and b!5422954 (not res!2307433)) b!5422947))

(assert (= (and b!5422947 res!2307428) b!5422950))

(assert (= (and b!5422950 (not res!2307429)) b!5422946))

(assert (= (and b!5422946 (not res!2307426)) b!5422953))

(assert (= (or b!5422949 b!5422945 b!5422950) bm!388116))

(assert (=> d!1729809 m!6446830))

(assert (=> d!1729809 m!6446794))

(declare-fun m!6447030 () Bool)

(assert (=> b!5422946 m!6447030))

(assert (=> b!5422946 m!6447030))

(declare-fun m!6447032 () Bool)

(assert (=> b!5422946 m!6447032))

(declare-fun m!6447034 () Bool)

(assert (=> b!5422955 m!6447034))

(assert (=> b!5422955 m!6447034))

(declare-fun m!6447036 () Bool)

(assert (=> b!5422955 m!6447036))

(assert (=> b!5422955 m!6447030))

(assert (=> b!5422955 m!6447036))

(assert (=> b!5422955 m!6447030))

(declare-fun m!6447038 () Bool)

(assert (=> b!5422955 m!6447038))

(assert (=> b!5422948 m!6447030))

(assert (=> b!5422948 m!6447030))

(assert (=> b!5422948 m!6447032))

(declare-fun m!6447040 () Bool)

(assert (=> b!5422951 m!6447040))

(assert (=> b!5422952 m!6447034))

(assert (=> b!5422953 m!6447034))

(assert (=> bm!388116 m!6446830))

(assert (=> b!5422286 d!1729809))

(declare-fun b!5422958 () Bool)

(declare-fun e!3360804 () Bool)

(declare-fun lt!2211600 () Bool)

(assert (=> b!5422958 (= e!3360804 (not lt!2211600))))

(declare-fun b!5422959 () Bool)

(declare-fun res!2307438 () Bool)

(declare-fun e!3360801 () Bool)

(assert (=> b!5422959 (=> (not res!2307438) (not e!3360801))))

(declare-fun call!388122 () Bool)

(assert (=> b!5422959 (= res!2307438 (not call!388122))))

(declare-fun b!5422960 () Bool)

(declare-fun res!2307434 () Bool)

(declare-fun e!3360806 () Bool)

(assert (=> b!5422960 (=> res!2307434 e!3360806)))

(assert (=> b!5422960 (= res!2307434 (not (isEmpty!33798 (tail!10729 lt!2211264))))))

(declare-fun b!5422961 () Bool)

(declare-fun e!3360805 () Bool)

(declare-fun e!3360807 () Bool)

(assert (=> b!5422961 (= e!3360805 e!3360807)))

(declare-fun res!2307436 () Bool)

(assert (=> b!5422961 (=> (not res!2307436) (not e!3360807))))

(assert (=> b!5422961 (= res!2307436 (not lt!2211600))))

(declare-fun b!5422962 () Bool)

(declare-fun res!2307439 () Bool)

(assert (=> b!5422962 (=> (not res!2307439) (not e!3360801))))

(assert (=> b!5422962 (= res!2307439 (isEmpty!33798 (tail!10729 lt!2211264)))))

(declare-fun b!5422964 () Bool)

(assert (=> b!5422964 (= e!3360807 e!3360806)))

(declare-fun res!2307437 () Bool)

(assert (=> b!5422964 (=> res!2307437 e!3360806)))

(assert (=> b!5422964 (= res!2307437 call!388122)))

(declare-fun b!5422965 () Bool)

(declare-fun e!3360802 () Bool)

(assert (=> b!5422965 (= e!3360802 (nullable!5375 lt!2211288))))

(declare-fun b!5422966 () Bool)

(assert (=> b!5422966 (= e!3360801 (= (head!11632 lt!2211264) (c!945702 lt!2211288)))))

(declare-fun b!5422967 () Bool)

(assert (=> b!5422967 (= e!3360806 (not (= (head!11632 lt!2211264) (c!945702 lt!2211288))))))

(declare-fun bm!388117 () Bool)

(assert (=> bm!388117 (= call!388122 (isEmpty!33798 lt!2211264))))

(declare-fun b!5422968 () Bool)

(declare-fun res!2307441 () Bool)

(assert (=> b!5422968 (=> res!2307441 e!3360805)))

(assert (=> b!5422968 (= res!2307441 e!3360801)))

(declare-fun res!2307440 () Bool)

(assert (=> b!5422968 (=> (not res!2307440) (not e!3360801))))

(assert (=> b!5422968 (= res!2307440 lt!2211600)))

(declare-fun b!5422969 () Bool)

(assert (=> b!5422969 (= e!3360802 (matchR!7391 (derivativeStep!4278 lt!2211288 (head!11632 lt!2211264)) (tail!10729 lt!2211264)))))

(declare-fun b!5422970 () Bool)

(declare-fun e!3360803 () Bool)

(assert (=> b!5422970 (= e!3360803 e!3360804)))

(declare-fun c!945848 () Bool)

(assert (=> b!5422970 (= c!945848 (is-EmptyLang!15206 lt!2211288))))

(declare-fun b!5422971 () Bool)

(declare-fun res!2307435 () Bool)

(assert (=> b!5422971 (=> res!2307435 e!3360805)))

(assert (=> b!5422971 (= res!2307435 (not (is-ElementMatch!15206 lt!2211288)))))

(assert (=> b!5422971 (= e!3360804 e!3360805)))

(declare-fun b!5422963 () Bool)

(assert (=> b!5422963 (= e!3360803 (= lt!2211600 call!388122))))

(declare-fun d!1729811 () Bool)

(assert (=> d!1729811 e!3360803))

(declare-fun c!945846 () Bool)

(assert (=> d!1729811 (= c!945846 (is-EmptyExpr!15206 lt!2211288))))

(assert (=> d!1729811 (= lt!2211600 e!3360802)))

(declare-fun c!945847 () Bool)

(assert (=> d!1729811 (= c!945847 (isEmpty!33798 lt!2211264))))

(assert (=> d!1729811 (validRegex!6942 lt!2211288)))

(assert (=> d!1729811 (= (matchR!7391 lt!2211288 lt!2211264) lt!2211600)))

(assert (= (and d!1729811 c!945847) b!5422965))

(assert (= (and d!1729811 (not c!945847)) b!5422969))

(assert (= (and d!1729811 c!945846) b!5422963))

(assert (= (and d!1729811 (not c!945846)) b!5422970))

(assert (= (and b!5422970 c!945848) b!5422958))

(assert (= (and b!5422970 (not c!945848)) b!5422971))

(assert (= (and b!5422971 (not res!2307435)) b!5422968))

(assert (= (and b!5422968 res!2307440) b!5422959))

(assert (= (and b!5422959 res!2307438) b!5422962))

(assert (= (and b!5422962 res!2307439) b!5422966))

(assert (= (and b!5422968 (not res!2307441)) b!5422961))

(assert (= (and b!5422961 res!2307436) b!5422964))

(assert (= (and b!5422964 (not res!2307437)) b!5422960))

(assert (= (and b!5422960 (not res!2307434)) b!5422967))

(assert (= (or b!5422963 b!5422959 b!5422964) bm!388117))

(declare-fun m!6447048 () Bool)

(assert (=> d!1729811 m!6447048))

(assert (=> d!1729811 m!6446754))

(declare-fun m!6447050 () Bool)

(assert (=> b!5422960 m!6447050))

(assert (=> b!5422960 m!6447050))

(declare-fun m!6447052 () Bool)

(assert (=> b!5422960 m!6447052))

(declare-fun m!6447054 () Bool)

(assert (=> b!5422969 m!6447054))

(assert (=> b!5422969 m!6447054))

(declare-fun m!6447056 () Bool)

(assert (=> b!5422969 m!6447056))

(assert (=> b!5422969 m!6447050))

(assert (=> b!5422969 m!6447056))

(assert (=> b!5422969 m!6447050))

(declare-fun m!6447058 () Bool)

(assert (=> b!5422969 m!6447058))

(assert (=> b!5422962 m!6447050))

(assert (=> b!5422962 m!6447050))

(assert (=> b!5422962 m!6447052))

(assert (=> b!5422965 m!6446766))

(assert (=> b!5422966 m!6447054))

(assert (=> b!5422967 m!6447054))

(assert (=> bm!388117 m!6447048))

(assert (=> b!5422286 d!1729811))

(declare-fun bs!1252852 () Bool)

(declare-fun b!5422978 () Bool)

(assert (= bs!1252852 (and b!5422978 b!5422281)))

(declare-fun lambda!284135 () Int)

(assert (=> bs!1252852 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (reg!15535 lt!2211310) (reg!15535 (regOne!30924 r!7292))) (= lt!2211310 lt!2211306)) (= lambda!284135 lambda!284049))))

(declare-fun bs!1252853 () Bool)

(assert (= bs!1252853 (and b!5422978 d!1729729)))

(assert (=> bs!1252853 (not (= lambda!284135 lambda!284121))))

(assert (=> bs!1252852 (not (= lambda!284135 lambda!284047))))

(declare-fun bs!1252854 () Bool)

(assert (= bs!1252854 (and b!5422978 b!5422641)))

(assert (=> bs!1252854 (= (and (= (reg!15535 lt!2211310) (reg!15535 lt!2211288)) (= lt!2211310 lt!2211288)) (= lambda!284135 lambda!284111))))

(declare-fun bs!1252855 () Bool)

(assert (= bs!1252855 (and b!5422978 d!1729727)))

(assert (=> bs!1252855 (not (= lambda!284135 lambda!284117))))

(declare-fun bs!1252856 () Bool)

(assert (= bs!1252856 (and b!5422978 b!5422732)))

(assert (=> bs!1252856 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (reg!15535 lt!2211310) (reg!15535 lt!2211321)) (= lt!2211310 lt!2211321)) (= lambda!284135 lambda!284128))))

(assert (=> bs!1252855 (not (= lambda!284135 lambda!284118))))

(declare-fun bs!1252857 () Bool)

(assert (= bs!1252857 (and b!5422978 b!5422286)))

(assert (=> bs!1252857 (not (= lambda!284135 lambda!284045))))

(declare-fun bs!1252858 () Bool)

(assert (= bs!1252858 (and b!5422978 b!5422640)))

(assert (=> bs!1252858 (not (= lambda!284135 lambda!284112))))

(assert (=> bs!1252852 (not (= lambda!284135 lambda!284048))))

(declare-fun bs!1252859 () Bool)

(assert (= bs!1252859 (and b!5422978 d!1729731)))

(assert (=> bs!1252859 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (reg!15535 lt!2211310) (reg!15535 (regOne!30924 r!7292))) (= lt!2211310 (Star!15206 (reg!15535 (regOne!30924 r!7292))))) (= lambda!284135 lambda!284127))))

(declare-fun bs!1252860 () Bool)

(assert (= bs!1252860 (and b!5422978 b!5422277)))

(assert (=> bs!1252860 (not (= lambda!284135 lambda!284040))))

(assert (=> bs!1252860 (not (= lambda!284135 lambda!284041))))

(assert (=> bs!1252859 (not (= lambda!284135 lambda!284126))))

(declare-fun bs!1252861 () Bool)

(assert (= bs!1252861 (and b!5422978 b!5422731)))

(assert (=> bs!1252861 (not (= lambda!284135 lambda!284129))))

(assert (=> bs!1252857 (not (= lambda!284135 lambda!284046))))

(assert (=> b!5422978 true))

(assert (=> b!5422978 true))

(declare-fun bs!1252862 () Bool)

(declare-fun b!5422977 () Bool)

(assert (= bs!1252862 (and b!5422977 b!5422281)))

(declare-fun lambda!284136 () Int)

(assert (=> bs!1252862 (not (= lambda!284136 lambda!284049))))

(declare-fun bs!1252863 () Bool)

(assert (= bs!1252863 (and b!5422977 d!1729729)))

(assert (=> bs!1252863 (not (= lambda!284136 lambda!284121))))

(assert (=> bs!1252862 (not (= lambda!284136 lambda!284047))))

(declare-fun bs!1252864 () Bool)

(assert (= bs!1252864 (and b!5422977 d!1729727)))

(assert (=> bs!1252864 (not (= lambda!284136 lambda!284117))))

(declare-fun bs!1252865 () Bool)

(assert (= bs!1252865 (and b!5422977 b!5422732)))

(assert (=> bs!1252865 (not (= lambda!284136 lambda!284128))))

(assert (=> bs!1252864 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 lt!2211310) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 lt!2211310) lt!2211306)) (= lambda!284136 lambda!284118))))

(declare-fun bs!1252866 () Bool)

(assert (= bs!1252866 (and b!5422977 b!5422286)))

(assert (=> bs!1252866 (not (= lambda!284136 lambda!284045))))

(declare-fun bs!1252867 () Bool)

(assert (= bs!1252867 (and b!5422977 b!5422640)))

(assert (=> bs!1252867 (= (and (= (regOne!30924 lt!2211310) (regOne!30924 lt!2211288)) (= (regTwo!30924 lt!2211310) (regTwo!30924 lt!2211288))) (= lambda!284136 lambda!284112))))

(assert (=> bs!1252862 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 lt!2211310) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 lt!2211310) lt!2211306)) (= lambda!284136 lambda!284048))))

(declare-fun bs!1252868 () Bool)

(assert (= bs!1252868 (and b!5422977 d!1729731)))

(assert (=> bs!1252868 (not (= lambda!284136 lambda!284127))))

(declare-fun bs!1252869 () Bool)

(assert (= bs!1252869 (and b!5422977 b!5422277)))

(assert (=> bs!1252869 (not (= lambda!284136 lambda!284040))))

(declare-fun bs!1252870 () Bool)

(assert (= bs!1252870 (and b!5422977 b!5422641)))

(assert (=> bs!1252870 (not (= lambda!284136 lambda!284111))))

(declare-fun bs!1252871 () Bool)

(assert (= bs!1252871 (and b!5422977 b!5422978)))

(assert (=> bs!1252871 (not (= lambda!284136 lambda!284135))))

(assert (=> bs!1252869 (= (and (= (regOne!30924 lt!2211310) (regOne!30924 r!7292)) (= (regTwo!30924 lt!2211310) (regTwo!30924 r!7292))) (= lambda!284136 lambda!284041))))

(assert (=> bs!1252868 (not (= lambda!284136 lambda!284126))))

(declare-fun bs!1252872 () Bool)

(assert (= bs!1252872 (and b!5422977 b!5422731)))

(assert (=> bs!1252872 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 lt!2211310) (regOne!30924 lt!2211321)) (= (regTwo!30924 lt!2211310) (regTwo!30924 lt!2211321))) (= lambda!284136 lambda!284129))))

(assert (=> bs!1252866 (= (and (= (regOne!30924 lt!2211310) lt!2211321) (= (regTwo!30924 lt!2211310) (regTwo!30924 r!7292))) (= lambda!284136 lambda!284046))))

(assert (=> b!5422977 true))

(assert (=> b!5422977 true))

(declare-fun b!5422972 () Bool)

(declare-fun e!3360812 () Bool)

(assert (=> b!5422972 (= e!3360812 (= s!2326 (Cons!61793 (c!945702 lt!2211310) Nil!61793)))))

(declare-fun b!5422973 () Bool)

(declare-fun e!3360813 () Bool)

(assert (=> b!5422973 (= e!3360813 (matchRSpec!2309 (regTwo!30925 lt!2211310) s!2326))))

(declare-fun b!5422974 () Bool)

(declare-fun res!2307444 () Bool)

(declare-fun e!3360808 () Bool)

(assert (=> b!5422974 (=> res!2307444 e!3360808)))

(declare-fun call!388123 () Bool)

(assert (=> b!5422974 (= res!2307444 call!388123)))

(declare-fun e!3360809 () Bool)

(assert (=> b!5422974 (= e!3360809 e!3360808)))

(declare-fun b!5422975 () Bool)

(declare-fun c!945850 () Bool)

(assert (=> b!5422975 (= c!945850 (is-ElementMatch!15206 lt!2211310))))

(declare-fun e!3360811 () Bool)

(assert (=> b!5422975 (= e!3360811 e!3360812)))

(declare-fun b!5422976 () Bool)

(declare-fun e!3360814 () Bool)

(assert (=> b!5422976 (= e!3360814 call!388123)))

(declare-fun bm!388118 () Bool)

(assert (=> bm!388118 (= call!388123 (isEmpty!33798 s!2326))))

(declare-fun call!388124 () Bool)

(assert (=> b!5422978 (= e!3360808 call!388124)))

(declare-fun b!5422979 () Bool)

(declare-fun e!3360810 () Bool)

(assert (=> b!5422979 (= e!3360810 e!3360809)))

(declare-fun c!945852 () Bool)

(assert (=> b!5422979 (= c!945852 (is-Star!15206 lt!2211310))))

(declare-fun b!5422980 () Bool)

(assert (=> b!5422980 (= e!3360810 e!3360813)))

(declare-fun res!2307442 () Bool)

(assert (=> b!5422980 (= res!2307442 (matchRSpec!2309 (regOne!30925 lt!2211310) s!2326))))

(assert (=> b!5422980 (=> res!2307442 e!3360813)))

(declare-fun bm!388119 () Bool)

(assert (=> bm!388119 (= call!388124 (Exists!2387 (ite c!945852 lambda!284135 lambda!284136)))))

(declare-fun b!5422981 () Bool)

(assert (=> b!5422981 (= e!3360814 e!3360811)))

(declare-fun res!2307443 () Bool)

(assert (=> b!5422981 (= res!2307443 (not (is-EmptyLang!15206 lt!2211310)))))

(assert (=> b!5422981 (=> (not res!2307443) (not e!3360811))))

(declare-fun b!5422982 () Bool)

(declare-fun c!945851 () Bool)

(assert (=> b!5422982 (= c!945851 (is-Union!15206 lt!2211310))))

(assert (=> b!5422982 (= e!3360812 e!3360810)))

(assert (=> b!5422977 (= e!3360809 call!388124)))

(declare-fun d!1729815 () Bool)

(declare-fun c!945849 () Bool)

(assert (=> d!1729815 (= c!945849 (is-EmptyExpr!15206 lt!2211310))))

(assert (=> d!1729815 (= (matchRSpec!2309 lt!2211310 s!2326) e!3360814)))

(assert (= (and d!1729815 c!945849) b!5422976))

(assert (= (and d!1729815 (not c!945849)) b!5422981))

(assert (= (and b!5422981 res!2307443) b!5422975))

(assert (= (and b!5422975 c!945850) b!5422972))

(assert (= (and b!5422975 (not c!945850)) b!5422982))

(assert (= (and b!5422982 c!945851) b!5422980))

(assert (= (and b!5422982 (not c!945851)) b!5422979))

(assert (= (and b!5422980 (not res!2307442)) b!5422973))

(assert (= (and b!5422979 c!945852) b!5422974))

(assert (= (and b!5422979 (not c!945852)) b!5422977))

(assert (= (and b!5422974 (not res!2307444)) b!5422978))

(assert (= (or b!5422978 b!5422977) bm!388119))

(assert (= (or b!5422976 b!5422974) bm!388118))

(declare-fun m!6447060 () Bool)

(assert (=> b!5422973 m!6447060))

(assert (=> bm!388118 m!6446748))

(declare-fun m!6447062 () Bool)

(assert (=> b!5422980 m!6447062))

(declare-fun m!6447064 () Bool)

(assert (=> bm!388119 m!6447064))

(assert (=> b!5422286 d!1729815))

(declare-fun d!1729817 () Bool)

(declare-fun c!945853 () Bool)

(assert (=> d!1729817 (= c!945853 (isEmpty!33798 lt!2211264))))

(declare-fun e!3360815 () Bool)

(assert (=> d!1729817 (= (matchZipper!1450 (set.insert (Context!9181 (++!13586 lt!2211280 lt!2211262)) (as set.empty (Set Context!9180))) lt!2211264) e!3360815)))

(declare-fun b!5422983 () Bool)

(assert (=> b!5422983 (= e!3360815 (nullableZipper!1457 (set.insert (Context!9181 (++!13586 lt!2211280 lt!2211262)) (as set.empty (Set Context!9180)))))))

(declare-fun b!5422984 () Bool)

(assert (=> b!5422984 (= e!3360815 (matchZipper!1450 (derivationStepZipper!1445 (set.insert (Context!9181 (++!13586 lt!2211280 lt!2211262)) (as set.empty (Set Context!9180))) (head!11632 lt!2211264)) (tail!10729 lt!2211264)))))

(assert (= (and d!1729817 c!945853) b!5422983))

(assert (= (and d!1729817 (not c!945853)) b!5422984))

(assert (=> d!1729817 m!6447048))

(assert (=> b!5422983 m!6446272))

(declare-fun m!6447066 () Bool)

(assert (=> b!5422983 m!6447066))

(assert (=> b!5422984 m!6447054))

(assert (=> b!5422984 m!6446272))

(assert (=> b!5422984 m!6447054))

(declare-fun m!6447068 () Bool)

(assert (=> b!5422984 m!6447068))

(assert (=> b!5422984 m!6447050))

(assert (=> b!5422984 m!6447068))

(assert (=> b!5422984 m!6447050))

(declare-fun m!6447070 () Bool)

(assert (=> b!5422984 m!6447070))

(assert (=> b!5422286 d!1729817))

(declare-fun bs!1252873 () Bool)

(declare-fun d!1729819 () Bool)

(assert (= bs!1252873 (and d!1729819 b!5422281)))

(declare-fun lambda!284137 () Int)

(assert (=> bs!1252873 (not (= lambda!284137 lambda!284049))))

(declare-fun bs!1252874 () Bool)

(assert (= bs!1252874 (and d!1729819 d!1729729)))

(assert (=> bs!1252874 (= (and (= s!2326 (_1!35708 lt!2211317)) (= lt!2211321 (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284137 lambda!284121))))

(assert (=> bs!1252873 (= (and (= s!2326 (_1!35708 lt!2211317)) (= lt!2211321 (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284137 lambda!284047))))

(declare-fun bs!1252875 () Bool)

(assert (= bs!1252875 (and d!1729819 d!1729727)))

(assert (=> bs!1252875 (= (and (= s!2326 (_1!35708 lt!2211317)) (= lt!2211321 (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284137 lambda!284117))))

(declare-fun bs!1252876 () Bool)

(assert (= bs!1252876 (and d!1729819 b!5422732)))

(assert (=> bs!1252876 (not (= lambda!284137 lambda!284128))))

(assert (=> bs!1252875 (not (= lambda!284137 lambda!284118))))

(declare-fun bs!1252877 () Bool)

(assert (= bs!1252877 (and d!1729819 b!5422286)))

(assert (=> bs!1252877 (= lambda!284137 lambda!284045)))

(declare-fun bs!1252878 () Bool)

(assert (= bs!1252878 (and d!1729819 b!5422640)))

(assert (=> bs!1252878 (not (= lambda!284137 lambda!284112))))

(assert (=> bs!1252873 (not (= lambda!284137 lambda!284048))))

(declare-fun bs!1252879 () Bool)

(assert (= bs!1252879 (and d!1729819 d!1729731)))

(assert (=> bs!1252879 (not (= lambda!284137 lambda!284127))))

(declare-fun bs!1252880 () Bool)

(assert (= bs!1252880 (and d!1729819 b!5422277)))

(assert (=> bs!1252880 (= (= lt!2211321 (regOne!30924 r!7292)) (= lambda!284137 lambda!284040))))

(declare-fun bs!1252881 () Bool)

(assert (= bs!1252881 (and d!1729819 b!5422641)))

(assert (=> bs!1252881 (not (= lambda!284137 lambda!284111))))

(declare-fun bs!1252882 () Bool)

(assert (= bs!1252882 (and d!1729819 b!5422978)))

(assert (=> bs!1252882 (not (= lambda!284137 lambda!284135))))

(assert (=> bs!1252880 (not (= lambda!284137 lambda!284041))))

(assert (=> bs!1252879 (= (and (= s!2326 (_1!35708 lt!2211317)) (= lt!2211321 (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) (Star!15206 (reg!15535 (regOne!30924 r!7292))))) (= lambda!284137 lambda!284126))))

(declare-fun bs!1252883 () Bool)

(assert (= bs!1252883 (and d!1729819 b!5422977)))

(assert (=> bs!1252883 (not (= lambda!284137 lambda!284136))))

(declare-fun bs!1252884 () Bool)

(assert (= bs!1252884 (and d!1729819 b!5422731)))

(assert (=> bs!1252884 (not (= lambda!284137 lambda!284129))))

(assert (=> bs!1252877 (not (= lambda!284137 lambda!284046))))

(assert (=> d!1729819 true))

(assert (=> d!1729819 true))

(assert (=> d!1729819 true))

(assert (=> d!1729819 (= (isDefined!12020 (findConcatSeparation!1731 lt!2211321 (regTwo!30924 r!7292) Nil!61793 s!2326 s!2326)) (Exists!2387 lambda!284137))))

(declare-fun lt!2211601 () Unit!154346)

(assert (=> d!1729819 (= lt!2211601 (choose!41095 lt!2211321 (regTwo!30924 r!7292) s!2326))))

(assert (=> d!1729819 (validRegex!6942 lt!2211321)))

(assert (=> d!1729819 (= (lemmaFindConcatSeparationEquivalentToExists!1495 lt!2211321 (regTwo!30924 r!7292) s!2326) lt!2211601)))

(declare-fun bs!1252885 () Bool)

(assert (= bs!1252885 d!1729819))

(declare-fun m!6447072 () Bool)

(assert (=> bs!1252885 m!6447072))

(assert (=> bs!1252885 m!6446794))

(declare-fun m!6447074 () Bool)

(assert (=> bs!1252885 m!6447074))

(assert (=> bs!1252885 m!6446374))

(declare-fun m!6447076 () Bool)

(assert (=> bs!1252885 m!6447076))

(assert (=> bs!1252885 m!6446374))

(assert (=> b!5422286 d!1729819))

(declare-fun d!1729821 () Bool)

(assert (=> d!1729821 (= (matchR!7391 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211279)) (matchZipper!1450 lt!2211293 (_1!35708 lt!2211279)))))

(declare-fun lt!2211604 () Unit!154346)

(declare-fun choose!41106 ((Set Context!9180) List!61919 Regex!15206 List!61917) Unit!154346)

(assert (=> d!1729821 (= lt!2211604 (choose!41106 lt!2211293 lt!2211301 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211279)))))

(assert (=> d!1729821 (validRegex!6942 (reg!15535 (regOne!30924 r!7292)))))

(assert (=> d!1729821 (= (theoremZipperRegexEquiv!520 lt!2211293 lt!2211301 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211279)) lt!2211604)))

(declare-fun bs!1252886 () Bool)

(assert (= bs!1252886 d!1729821))

(assert (=> bs!1252886 m!6446370))

(assert (=> bs!1252886 m!6446276))

(declare-fun m!6447078 () Bool)

(assert (=> bs!1252886 m!6447078))

(assert (=> bs!1252886 m!6446778))

(assert (=> b!5422286 d!1729821))

(declare-fun d!1729823 () Bool)

(assert (=> d!1729823 (= (matchR!7391 lt!2211268 (_2!35708 lt!2211279)) (matchZipper!1450 lt!2211320 (_2!35708 lt!2211279)))))

(declare-fun lt!2211605 () Unit!154346)

(assert (=> d!1729823 (= lt!2211605 (choose!41106 lt!2211320 lt!2211295 lt!2211268 (_2!35708 lt!2211279)))))

(assert (=> d!1729823 (validRegex!6942 lt!2211268)))

(assert (=> d!1729823 (= (theoremZipperRegexEquiv!520 lt!2211320 lt!2211295 lt!2211268 (_2!35708 lt!2211279)) lt!2211605)))

(declare-fun bs!1252887 () Bool)

(assert (= bs!1252887 d!1729823))

(assert (=> bs!1252887 m!6446388))

(assert (=> bs!1252887 m!6446312))

(declare-fun m!6447080 () Bool)

(assert (=> bs!1252887 m!6447080))

(declare-fun m!6447082 () Bool)

(assert (=> bs!1252887 m!6447082))

(assert (=> b!5422286 d!1729823))

(declare-fun d!1729825 () Bool)

(assert (=> d!1729825 (= (isDefined!12020 lt!2211309) (not (isEmpty!33799 lt!2211309)))))

(declare-fun bs!1252888 () Bool)

(assert (= bs!1252888 d!1729825))

(declare-fun m!6447084 () Bool)

(assert (=> bs!1252888 m!6447084))

(assert (=> b!5422286 d!1729825))

(declare-fun d!1729827 () Bool)

(assert (=> d!1729827 (= (get!21312 lt!2211309) (v!51345 lt!2211309))))

(assert (=> b!5422286 d!1729827))

(declare-fun d!1729829 () Bool)

(assert (=> d!1729829 (matchR!7391 (Concat!24051 (reg!15535 (regOne!30924 r!7292)) lt!2211268) (++!13585 (_1!35708 lt!2211279) (_2!35708 lt!2211279)))))

(declare-fun lt!2211614 () Unit!154346)

(declare-fun choose!41108 (Regex!15206 Regex!15206 List!61917 List!61917) Unit!154346)

(assert (=> d!1729829 (= lt!2211614 (choose!41108 (reg!15535 (regOne!30924 r!7292)) lt!2211268 (_1!35708 lt!2211279) (_2!35708 lt!2211279)))))

(declare-fun e!3360828 () Bool)

(assert (=> d!1729829 e!3360828))

(declare-fun res!2307457 () Bool)

(assert (=> d!1729829 (=> (not res!2307457) (not e!3360828))))

(assert (=> d!1729829 (= res!2307457 (validRegex!6942 (reg!15535 (regOne!30924 r!7292))))))

(assert (=> d!1729829 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!229 (reg!15535 (regOne!30924 r!7292)) lt!2211268 (_1!35708 lt!2211279) (_2!35708 lt!2211279)) lt!2211614)))

(declare-fun b!5423005 () Bool)

(assert (=> b!5423005 (= e!3360828 (validRegex!6942 lt!2211268))))

(assert (= (and d!1729829 res!2307457) b!5423005))

(assert (=> d!1729829 m!6446362))

(assert (=> d!1729829 m!6446362))

(declare-fun m!6447086 () Bool)

(assert (=> d!1729829 m!6447086))

(declare-fun m!6447088 () Bool)

(assert (=> d!1729829 m!6447088))

(assert (=> d!1729829 m!6446778))

(assert (=> b!5423005 m!6447082))

(assert (=> b!5422286 d!1729829))

(assert (=> b!5422286 d!1729783))

(declare-fun d!1729831 () Bool)

(assert (=> d!1729831 (= (matchR!7391 (Concat!24051 (Concat!24051 (reg!15535 (regOne!30924 r!7292)) lt!2211306) (regTwo!30924 r!7292)) s!2326) (matchR!7391 (Concat!24051 (reg!15535 (regOne!30924 r!7292)) (Concat!24051 lt!2211306 (regTwo!30924 r!7292))) s!2326))))

(declare-fun lt!2211620 () Unit!154346)

(declare-fun choose!41109 (Regex!15206 Regex!15206 Regex!15206 List!61917) Unit!154346)

(assert (=> d!1729831 (= lt!2211620 (choose!41109 (reg!15535 (regOne!30924 r!7292)) lt!2211306 (regTwo!30924 r!7292) s!2326))))

(declare-fun e!3360836 () Bool)

(assert (=> d!1729831 e!3360836))

(declare-fun res!2307467 () Bool)

(assert (=> d!1729831 (=> (not res!2307467) (not e!3360836))))

(assert (=> d!1729831 (= res!2307467 (validRegex!6942 (reg!15535 (regOne!30924 r!7292))))))

(assert (=> d!1729831 (= (lemmaConcatAssociative!59 (reg!15535 (regOne!30924 r!7292)) lt!2211306 (regTwo!30924 r!7292) s!2326) lt!2211620)))

(declare-fun b!5423019 () Bool)

(declare-fun res!2307468 () Bool)

(assert (=> b!5423019 (=> (not res!2307468) (not e!3360836))))

(assert (=> b!5423019 (= res!2307468 (validRegex!6942 lt!2211306))))

(declare-fun b!5423020 () Bool)

(assert (=> b!5423020 (= e!3360836 (validRegex!6942 (regTwo!30924 r!7292)))))

(assert (= (and d!1729831 res!2307467) b!5423019))

(assert (= (and b!5423019 res!2307468) b!5423020))

(declare-fun m!6447114 () Bool)

(assert (=> d!1729831 m!6447114))

(declare-fun m!6447116 () Bool)

(assert (=> d!1729831 m!6447116))

(declare-fun m!6447118 () Bool)

(assert (=> d!1729831 m!6447118))

(assert (=> d!1729831 m!6446778))

(declare-fun m!6447120 () Bool)

(assert (=> b!5423019 m!6447120))

(assert (=> b!5423020 m!6446442))

(assert (=> b!5422286 d!1729831))

(declare-fun bs!1252890 () Bool)

(declare-fun d!1729835 () Bool)

(assert (= bs!1252890 (and d!1729835 b!5422280)))

(declare-fun lambda!284140 () Int)

(assert (=> bs!1252890 (= lambda!284140 lambda!284044)))

(declare-fun bs!1252891 () Bool)

(assert (= bs!1252891 (and d!1729835 d!1729711)))

(assert (=> bs!1252891 (= lambda!284140 lambda!284100)))

(declare-fun bs!1252892 () Bool)

(assert (= bs!1252892 (and d!1729835 d!1729713)))

(assert (=> bs!1252892 (= lambda!284140 lambda!284103)))

(declare-fun bs!1252893 () Bool)

(assert (= bs!1252893 (and d!1729835 d!1729715)))

(assert (=> bs!1252893 (= lambda!284140 lambda!284106)))

(assert (=> d!1729835 (matchZipper!1450 (set.insert (Context!9181 (++!13586 (exprs!5090 lt!2211323) (exprs!5090 lt!2211266))) (as set.empty (Set Context!9180))) (++!13585 (_1!35708 lt!2211279) (_2!35708 lt!2211279)))))

(declare-fun lt!2211629 () Unit!154346)

(assert (=> d!1729835 (= lt!2211629 (lemmaConcatPreservesForall!231 (exprs!5090 lt!2211323) (exprs!5090 lt!2211266) lambda!284140))))

(declare-fun lt!2211628 () Unit!154346)

(declare-fun choose!41110 (Context!9180 Context!9180 List!61917 List!61917) Unit!154346)

(assert (=> d!1729835 (= lt!2211628 (choose!41110 lt!2211323 lt!2211266 (_1!35708 lt!2211279) (_2!35708 lt!2211279)))))

(assert (=> d!1729835 (matchZipper!1450 (set.insert lt!2211323 (as set.empty (Set Context!9180))) (_1!35708 lt!2211279))))

(assert (=> d!1729835 (= (lemmaConcatenateContextMatchesConcatOfStrings!79 lt!2211323 lt!2211266 (_1!35708 lt!2211279) (_2!35708 lt!2211279)) lt!2211628)))

(declare-fun bs!1252894 () Bool)

(assert (= bs!1252894 d!1729835))

(assert (=> bs!1252894 m!6446294))

(declare-fun m!6447138 () Bool)

(assert (=> bs!1252894 m!6447138))

(assert (=> bs!1252894 m!6446362))

(declare-fun m!6447140 () Bool)

(assert (=> bs!1252894 m!6447140))

(declare-fun m!6447142 () Bool)

(assert (=> bs!1252894 m!6447142))

(declare-fun m!6447144 () Bool)

(assert (=> bs!1252894 m!6447144))

(assert (=> bs!1252894 m!6446362))

(declare-fun m!6447146 () Bool)

(assert (=> bs!1252894 m!6447146))

(assert (=> bs!1252894 m!6447138))

(assert (=> bs!1252894 m!6446294))

(declare-fun m!6447148 () Bool)

(assert (=> bs!1252894 m!6447148))

(assert (=> b!5422286 d!1729835))

(declare-fun d!1729843 () Bool)

(assert (=> d!1729843 (= (Exists!2387 lambda!284045) (choose!41098 lambda!284045))))

(declare-fun bs!1252895 () Bool)

(assert (= bs!1252895 d!1729843))

(declare-fun m!6447150 () Bool)

(assert (=> bs!1252895 m!6447150))

(assert (=> b!5422286 d!1729843))

(declare-fun bs!1252896 () Bool)

(declare-fun d!1729845 () Bool)

(assert (= bs!1252896 (and d!1729845 b!5422281)))

(declare-fun lambda!284141 () Int)

(assert (=> bs!1252896 (not (= lambda!284141 lambda!284049))))

(declare-fun bs!1252897 () Bool)

(assert (= bs!1252897 (and d!1729845 d!1729729)))

(assert (=> bs!1252897 (= (and (= s!2326 (_1!35708 lt!2211317)) (= lt!2211321 (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284141 lambda!284121))))

(assert (=> bs!1252896 (= (and (= s!2326 (_1!35708 lt!2211317)) (= lt!2211321 (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284141 lambda!284047))))

(declare-fun bs!1252898 () Bool)

(assert (= bs!1252898 (and d!1729845 d!1729727)))

(assert (=> bs!1252898 (= (and (= s!2326 (_1!35708 lt!2211317)) (= lt!2211321 (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284141 lambda!284117))))

(declare-fun bs!1252899 () Bool)

(assert (= bs!1252899 (and d!1729845 b!5422732)))

(assert (=> bs!1252899 (not (= lambda!284141 lambda!284128))))

(assert (=> bs!1252898 (not (= lambda!284141 lambda!284118))))

(declare-fun bs!1252900 () Bool)

(assert (= bs!1252900 (and d!1729845 b!5422286)))

(assert (=> bs!1252900 (= lambda!284141 lambda!284045)))

(declare-fun bs!1252901 () Bool)

(assert (= bs!1252901 (and d!1729845 b!5422640)))

(assert (=> bs!1252901 (not (= lambda!284141 lambda!284112))))

(declare-fun bs!1252902 () Bool)

(assert (= bs!1252902 (and d!1729845 d!1729731)))

(assert (=> bs!1252902 (not (= lambda!284141 lambda!284127))))

(declare-fun bs!1252903 () Bool)

(assert (= bs!1252903 (and d!1729845 b!5422277)))

(assert (=> bs!1252903 (= (= lt!2211321 (regOne!30924 r!7292)) (= lambda!284141 lambda!284040))))

(declare-fun bs!1252904 () Bool)

(assert (= bs!1252904 (and d!1729845 b!5422641)))

(assert (=> bs!1252904 (not (= lambda!284141 lambda!284111))))

(declare-fun bs!1252905 () Bool)

(assert (= bs!1252905 (and d!1729845 b!5422978)))

(assert (=> bs!1252905 (not (= lambda!284141 lambda!284135))))

(assert (=> bs!1252903 (not (= lambda!284141 lambda!284041))))

(assert (=> bs!1252902 (= (and (= s!2326 (_1!35708 lt!2211317)) (= lt!2211321 (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) (Star!15206 (reg!15535 (regOne!30924 r!7292))))) (= lambda!284141 lambda!284126))))

(declare-fun bs!1252906 () Bool)

(assert (= bs!1252906 (and d!1729845 b!5422977)))

(assert (=> bs!1252906 (not (= lambda!284141 lambda!284136))))

(declare-fun bs!1252907 () Bool)

(assert (= bs!1252907 (and d!1729845 b!5422731)))

(assert (=> bs!1252907 (not (= lambda!284141 lambda!284129))))

(assert (=> bs!1252900 (not (= lambda!284141 lambda!284046))))

(declare-fun bs!1252908 () Bool)

(assert (= bs!1252908 (and d!1729845 d!1729819)))

(assert (=> bs!1252908 (= lambda!284141 lambda!284137)))

(assert (=> bs!1252896 (not (= lambda!284141 lambda!284048))))

(assert (=> d!1729845 true))

(assert (=> d!1729845 true))

(assert (=> d!1729845 true))

(declare-fun lambda!284142 () Int)

(assert (=> bs!1252896 (not (= lambda!284142 lambda!284049))))

(assert (=> bs!1252897 (not (= lambda!284142 lambda!284121))))

(assert (=> bs!1252896 (not (= lambda!284142 lambda!284047))))

(assert (=> bs!1252898 (not (= lambda!284142 lambda!284117))))

(assert (=> bs!1252899 (not (= lambda!284142 lambda!284128))))

(assert (=> bs!1252900 (not (= lambda!284142 lambda!284045))))

(assert (=> bs!1252901 (= (and (= lt!2211321 (regOne!30924 lt!2211288)) (= (regTwo!30924 r!7292) (regTwo!30924 lt!2211288))) (= lambda!284142 lambda!284112))))

(assert (=> bs!1252902 (not (= lambda!284142 lambda!284127))))

(assert (=> bs!1252903 (not (= lambda!284142 lambda!284040))))

(assert (=> bs!1252904 (not (= lambda!284142 lambda!284111))))

(assert (=> bs!1252905 (not (= lambda!284142 lambda!284135))))

(assert (=> bs!1252898 (= (and (= s!2326 (_1!35708 lt!2211317)) (= lt!2211321 (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284142 lambda!284118))))

(declare-fun bs!1252910 () Bool)

(assert (= bs!1252910 d!1729845))

(assert (=> bs!1252910 (not (= lambda!284142 lambda!284141))))

(assert (=> bs!1252903 (= (= lt!2211321 (regOne!30924 r!7292)) (= lambda!284142 lambda!284041))))

(assert (=> bs!1252902 (not (= lambda!284142 lambda!284126))))

(assert (=> bs!1252906 (= (and (= lt!2211321 (regOne!30924 lt!2211310)) (= (regTwo!30924 r!7292) (regTwo!30924 lt!2211310))) (= lambda!284142 lambda!284136))))

(assert (=> bs!1252907 (= (and (= s!2326 (_1!35708 lt!2211317)) (= lt!2211321 (regOne!30924 lt!2211321)) (= (regTwo!30924 r!7292) (regTwo!30924 lt!2211321))) (= lambda!284142 lambda!284129))))

(assert (=> bs!1252900 (= lambda!284142 lambda!284046)))

(assert (=> bs!1252908 (not (= lambda!284142 lambda!284137))))

(assert (=> bs!1252896 (= (and (= s!2326 (_1!35708 lt!2211317)) (= lt!2211321 (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284142 lambda!284048))))

(assert (=> d!1729845 true))

(assert (=> d!1729845 true))

(assert (=> d!1729845 true))

(assert (=> d!1729845 (= (Exists!2387 lambda!284141) (Exists!2387 lambda!284142))))

(declare-fun lt!2211630 () Unit!154346)

(assert (=> d!1729845 (= lt!2211630 (choose!41094 lt!2211321 (regTwo!30924 r!7292) s!2326))))

(assert (=> d!1729845 (validRegex!6942 lt!2211321)))

(assert (=> d!1729845 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1041 lt!2211321 (regTwo!30924 r!7292) s!2326) lt!2211630)))

(declare-fun m!6447178 () Bool)

(assert (=> bs!1252910 m!6447178))

(declare-fun m!6447180 () Bool)

(assert (=> bs!1252910 m!6447180))

(declare-fun m!6447182 () Bool)

(assert (=> bs!1252910 m!6447182))

(assert (=> bs!1252910 m!6446794))

(assert (=> b!5422286 d!1729845))

(declare-fun b!5423035 () Bool)

(declare-fun e!3360847 () Bool)

(declare-fun lt!2211637 () Bool)

(assert (=> b!5423035 (= e!3360847 (not lt!2211637))))

(declare-fun b!5423036 () Bool)

(declare-fun res!2307479 () Bool)

(declare-fun e!3360844 () Bool)

(assert (=> b!5423036 (=> (not res!2307479) (not e!3360844))))

(declare-fun call!388125 () Bool)

(assert (=> b!5423036 (= res!2307479 (not call!388125))))

(declare-fun b!5423037 () Bool)

(declare-fun res!2307475 () Bool)

(declare-fun e!3360849 () Bool)

(assert (=> b!5423037 (=> res!2307475 e!3360849)))

(assert (=> b!5423037 (= res!2307475 (not (isEmpty!33798 (tail!10729 (_1!35708 lt!2211279)))))))

(declare-fun b!5423038 () Bool)

(declare-fun e!3360848 () Bool)

(declare-fun e!3360850 () Bool)

(assert (=> b!5423038 (= e!3360848 e!3360850)))

(declare-fun res!2307477 () Bool)

(assert (=> b!5423038 (=> (not res!2307477) (not e!3360850))))

(assert (=> b!5423038 (= res!2307477 (not lt!2211637))))

(declare-fun b!5423039 () Bool)

(declare-fun res!2307480 () Bool)

(assert (=> b!5423039 (=> (not res!2307480) (not e!3360844))))

(assert (=> b!5423039 (= res!2307480 (isEmpty!33798 (tail!10729 (_1!35708 lt!2211279))))))

(declare-fun b!5423041 () Bool)

(assert (=> b!5423041 (= e!3360850 e!3360849)))

(declare-fun res!2307478 () Bool)

(assert (=> b!5423041 (=> res!2307478 e!3360849)))

(assert (=> b!5423041 (= res!2307478 call!388125)))

(declare-fun b!5423042 () Bool)

(declare-fun e!3360845 () Bool)

(assert (=> b!5423042 (= e!3360845 (nullable!5375 (reg!15535 (regOne!30924 r!7292))))))

(declare-fun b!5423043 () Bool)

(assert (=> b!5423043 (= e!3360844 (= (head!11632 (_1!35708 lt!2211279)) (c!945702 (reg!15535 (regOne!30924 r!7292)))))))

(declare-fun b!5423044 () Bool)

(assert (=> b!5423044 (= e!3360849 (not (= (head!11632 (_1!35708 lt!2211279)) (c!945702 (reg!15535 (regOne!30924 r!7292))))))))

(declare-fun bm!388120 () Bool)

(assert (=> bm!388120 (= call!388125 (isEmpty!33798 (_1!35708 lt!2211279)))))

(declare-fun b!5423045 () Bool)

(declare-fun res!2307482 () Bool)

(assert (=> b!5423045 (=> res!2307482 e!3360848)))

(assert (=> b!5423045 (= res!2307482 e!3360844)))

(declare-fun res!2307481 () Bool)

(assert (=> b!5423045 (=> (not res!2307481) (not e!3360844))))

(assert (=> b!5423045 (= res!2307481 lt!2211637)))

(declare-fun b!5423046 () Bool)

(assert (=> b!5423046 (= e!3360845 (matchR!7391 (derivativeStep!4278 (reg!15535 (regOne!30924 r!7292)) (head!11632 (_1!35708 lt!2211279))) (tail!10729 (_1!35708 lt!2211279))))))

(declare-fun b!5423047 () Bool)

(declare-fun e!3360846 () Bool)

(assert (=> b!5423047 (= e!3360846 e!3360847)))

(declare-fun c!945866 () Bool)

(assert (=> b!5423047 (= c!945866 (is-EmptyLang!15206 (reg!15535 (regOne!30924 r!7292))))))

(declare-fun b!5423048 () Bool)

(declare-fun res!2307476 () Bool)

(assert (=> b!5423048 (=> res!2307476 e!3360848)))

(assert (=> b!5423048 (= res!2307476 (not (is-ElementMatch!15206 (reg!15535 (regOne!30924 r!7292)))))))

(assert (=> b!5423048 (= e!3360847 e!3360848)))

(declare-fun b!5423040 () Bool)

(assert (=> b!5423040 (= e!3360846 (= lt!2211637 call!388125))))

(declare-fun d!1729853 () Bool)

(assert (=> d!1729853 e!3360846))

(declare-fun c!945864 () Bool)

(assert (=> d!1729853 (= c!945864 (is-EmptyExpr!15206 (reg!15535 (regOne!30924 r!7292))))))

(assert (=> d!1729853 (= lt!2211637 e!3360845)))

(declare-fun c!945865 () Bool)

(assert (=> d!1729853 (= c!945865 (isEmpty!33798 (_1!35708 lt!2211279)))))

(assert (=> d!1729853 (validRegex!6942 (reg!15535 (regOne!30924 r!7292)))))

(assert (=> d!1729853 (= (matchR!7391 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211279)) lt!2211637)))

(assert (= (and d!1729853 c!945865) b!5423042))

(assert (= (and d!1729853 (not c!945865)) b!5423046))

(assert (= (and d!1729853 c!945864) b!5423040))

(assert (= (and d!1729853 (not c!945864)) b!5423047))

(assert (= (and b!5423047 c!945866) b!5423035))

(assert (= (and b!5423047 (not c!945866)) b!5423048))

(assert (= (and b!5423048 (not res!2307476)) b!5423045))

(assert (= (and b!5423045 res!2307481) b!5423036))

(assert (= (and b!5423036 res!2307479) b!5423039))

(assert (= (and b!5423039 res!2307480) b!5423043))

(assert (= (and b!5423045 (not res!2307482)) b!5423038))

(assert (= (and b!5423038 res!2307477) b!5423041))

(assert (= (and b!5423041 (not res!2307478)) b!5423037))

(assert (= (and b!5423037 (not res!2307475)) b!5423044))

(assert (= (or b!5423040 b!5423036 b!5423041) bm!388120))

(assert (=> d!1729853 m!6446970))

(assert (=> d!1729853 m!6446778))

(assert (=> b!5423037 m!6446978))

(assert (=> b!5423037 m!6446978))

(declare-fun m!6447186 () Bool)

(assert (=> b!5423037 m!6447186))

(assert (=> b!5423046 m!6446974))

(assert (=> b!5423046 m!6446974))

(declare-fun m!6447188 () Bool)

(assert (=> b!5423046 m!6447188))

(assert (=> b!5423046 m!6446978))

(assert (=> b!5423046 m!6447188))

(assert (=> b!5423046 m!6446978))

(declare-fun m!6447190 () Bool)

(assert (=> b!5423046 m!6447190))

(assert (=> b!5423039 m!6446978))

(assert (=> b!5423039 m!6446978))

(assert (=> b!5423039 m!6447186))

(assert (=> b!5423042 m!6446912))

(assert (=> b!5423043 m!6446974))

(assert (=> b!5423044 m!6446974))

(assert (=> bm!388120 m!6446970))

(assert (=> b!5422286 d!1729853))

(assert (=> b!5422286 d!1729773))

(declare-fun d!1729857 () Bool)

(assert (=> d!1729857 (= (Exists!2387 lambda!284046) (choose!41098 lambda!284046))))

(declare-fun bs!1252913 () Bool)

(assert (= bs!1252913 d!1729857))

(declare-fun m!6447192 () Bool)

(assert (=> bs!1252913 m!6447192))

(assert (=> b!5422286 d!1729857))

(declare-fun b!5423049 () Bool)

(declare-fun e!3360854 () Bool)

(declare-fun lt!2211638 () Bool)

(assert (=> b!5423049 (= e!3360854 (not lt!2211638))))

(declare-fun b!5423050 () Bool)

(declare-fun res!2307487 () Bool)

(declare-fun e!3360851 () Bool)

(assert (=> b!5423050 (=> (not res!2307487) (not e!3360851))))

(declare-fun call!388126 () Bool)

(assert (=> b!5423050 (= res!2307487 (not call!388126))))

(declare-fun b!5423051 () Bool)

(declare-fun res!2307483 () Bool)

(declare-fun e!3360856 () Bool)

(assert (=> b!5423051 (=> res!2307483 e!3360856)))

(assert (=> b!5423051 (= res!2307483 (not (isEmpty!33798 (tail!10729 s!2326))))))

(declare-fun b!5423052 () Bool)

(declare-fun e!3360855 () Bool)

(declare-fun e!3360857 () Bool)

(assert (=> b!5423052 (= e!3360855 e!3360857)))

(declare-fun res!2307485 () Bool)

(assert (=> b!5423052 (=> (not res!2307485) (not e!3360857))))

(assert (=> b!5423052 (= res!2307485 (not lt!2211638))))

(declare-fun b!5423053 () Bool)

(declare-fun res!2307488 () Bool)

(assert (=> b!5423053 (=> (not res!2307488) (not e!3360851))))

(assert (=> b!5423053 (= res!2307488 (isEmpty!33798 (tail!10729 s!2326)))))

(declare-fun b!5423055 () Bool)

(assert (=> b!5423055 (= e!3360857 e!3360856)))

(declare-fun res!2307486 () Bool)

(assert (=> b!5423055 (=> res!2307486 e!3360856)))

(assert (=> b!5423055 (= res!2307486 call!388126)))

(declare-fun b!5423056 () Bool)

(declare-fun e!3360852 () Bool)

(assert (=> b!5423056 (= e!3360852 (nullable!5375 lt!2211310))))

(declare-fun b!5423057 () Bool)

(assert (=> b!5423057 (= e!3360851 (= (head!11632 s!2326) (c!945702 lt!2211310)))))

(declare-fun b!5423058 () Bool)

(assert (=> b!5423058 (= e!3360856 (not (= (head!11632 s!2326) (c!945702 lt!2211310))))))

(declare-fun bm!388121 () Bool)

(assert (=> bm!388121 (= call!388126 (isEmpty!33798 s!2326))))

(declare-fun b!5423059 () Bool)

(declare-fun res!2307490 () Bool)

(assert (=> b!5423059 (=> res!2307490 e!3360855)))

(assert (=> b!5423059 (= res!2307490 e!3360851)))

(declare-fun res!2307489 () Bool)

(assert (=> b!5423059 (=> (not res!2307489) (not e!3360851))))

(assert (=> b!5423059 (= res!2307489 lt!2211638)))

(declare-fun b!5423060 () Bool)

(assert (=> b!5423060 (= e!3360852 (matchR!7391 (derivativeStep!4278 lt!2211310 (head!11632 s!2326)) (tail!10729 s!2326)))))

(declare-fun b!5423061 () Bool)

(declare-fun e!3360853 () Bool)

(assert (=> b!5423061 (= e!3360853 e!3360854)))

(declare-fun c!945869 () Bool)

(assert (=> b!5423061 (= c!945869 (is-EmptyLang!15206 lt!2211310))))

(declare-fun b!5423062 () Bool)

(declare-fun res!2307484 () Bool)

(assert (=> b!5423062 (=> res!2307484 e!3360855)))

(assert (=> b!5423062 (= res!2307484 (not (is-ElementMatch!15206 lt!2211310)))))

(assert (=> b!5423062 (= e!3360854 e!3360855)))

(declare-fun b!5423054 () Bool)

(assert (=> b!5423054 (= e!3360853 (= lt!2211638 call!388126))))

(declare-fun d!1729859 () Bool)

(assert (=> d!1729859 e!3360853))

(declare-fun c!945867 () Bool)

(assert (=> d!1729859 (= c!945867 (is-EmptyExpr!15206 lt!2211310))))

(assert (=> d!1729859 (= lt!2211638 e!3360852)))

(declare-fun c!945868 () Bool)

(assert (=> d!1729859 (= c!945868 (isEmpty!33798 s!2326))))

(assert (=> d!1729859 (validRegex!6942 lt!2211310)))

(assert (=> d!1729859 (= (matchR!7391 lt!2211310 s!2326) lt!2211638)))

(assert (= (and d!1729859 c!945868) b!5423056))

(assert (= (and d!1729859 (not c!945868)) b!5423060))

(assert (= (and d!1729859 c!945867) b!5423054))

(assert (= (and d!1729859 (not c!945867)) b!5423061))

(assert (= (and b!5423061 c!945869) b!5423049))

(assert (= (and b!5423061 (not c!945869)) b!5423062))

(assert (= (and b!5423062 (not res!2307484)) b!5423059))

(assert (= (and b!5423059 res!2307489) b!5423050))

(assert (= (and b!5423050 res!2307487) b!5423053))

(assert (= (and b!5423053 res!2307488) b!5423057))

(assert (= (and b!5423059 (not res!2307490)) b!5423052))

(assert (= (and b!5423052 res!2307485) b!5423055))

(assert (= (and b!5423055 (not res!2307486)) b!5423051))

(assert (= (and b!5423051 (not res!2307483)) b!5423058))

(assert (= (or b!5423054 b!5423050 b!5423055) bm!388121))

(assert (=> d!1729859 m!6446748))

(declare-fun m!6447194 () Bool)

(assert (=> d!1729859 m!6447194))

(assert (=> b!5423051 m!6446756))

(assert (=> b!5423051 m!6446756))

(assert (=> b!5423051 m!6446758))

(assert (=> b!5423060 m!6446760))

(assert (=> b!5423060 m!6446760))

(declare-fun m!6447196 () Bool)

(assert (=> b!5423060 m!6447196))

(assert (=> b!5423060 m!6446756))

(assert (=> b!5423060 m!6447196))

(assert (=> b!5423060 m!6446756))

(declare-fun m!6447198 () Bool)

(assert (=> b!5423060 m!6447198))

(assert (=> b!5423053 m!6446756))

(assert (=> b!5423053 m!6446756))

(assert (=> b!5423053 m!6446758))

(declare-fun m!6447200 () Bool)

(assert (=> b!5423056 m!6447200))

(assert (=> b!5423057 m!6446760))

(assert (=> b!5423058 m!6446760))

(assert (=> bm!388121 m!6446748))

(assert (=> b!5422286 d!1729859))

(declare-fun b!5423073 () Bool)

(declare-fun res!2307497 () Bool)

(declare-fun e!3360864 () Bool)

(assert (=> b!5423073 (=> (not res!2307497) (not e!3360864))))

(declare-fun lt!2211641 () Option!15317)

(assert (=> b!5423073 (= res!2307497 (matchR!7391 (regTwo!30924 r!7292) (_2!35708 (get!21312 lt!2211641))))))

(declare-fun b!5423074 () Bool)

(declare-fun lt!2211640 () Unit!154346)

(declare-fun lt!2211639 () Unit!154346)

(assert (=> b!5423074 (= lt!2211640 lt!2211639)))

(assert (=> b!5423074 (= (++!13585 (++!13585 Nil!61793 (Cons!61793 (h!68241 s!2326) Nil!61793)) (t!375140 s!2326)) s!2326)))

(assert (=> b!5423074 (= lt!2211639 (lemmaMoveElementToOtherListKeepsConcatEq!1852 Nil!61793 (h!68241 s!2326) (t!375140 s!2326) s!2326))))

(declare-fun e!3360868 () Option!15317)

(assert (=> b!5423074 (= e!3360868 (findConcatSeparation!1731 lt!2211321 (regTwo!30924 r!7292) (++!13585 Nil!61793 (Cons!61793 (h!68241 s!2326) Nil!61793)) (t!375140 s!2326) s!2326))))

(declare-fun b!5423075 () Bool)

(assert (=> b!5423075 (= e!3360864 (= (++!13585 (_1!35708 (get!21312 lt!2211641)) (_2!35708 (get!21312 lt!2211641))) s!2326))))

(declare-fun b!5423076 () Bool)

(declare-fun e!3360866 () Option!15317)

(assert (=> b!5423076 (= e!3360866 (Some!15316 (tuple2!64811 Nil!61793 s!2326)))))

(declare-fun b!5423077 () Bool)

(assert (=> b!5423077 (= e!3360866 e!3360868)))

(declare-fun c!945874 () Bool)

(assert (=> b!5423077 (= c!945874 (is-Nil!61793 s!2326))))

(declare-fun b!5423079 () Bool)

(declare-fun e!3360867 () Bool)

(assert (=> b!5423079 (= e!3360867 (not (isDefined!12020 lt!2211641)))))

(declare-fun b!5423080 () Bool)

(declare-fun res!2307495 () Bool)

(assert (=> b!5423080 (=> (not res!2307495) (not e!3360864))))

(assert (=> b!5423080 (= res!2307495 (matchR!7391 lt!2211321 (_1!35708 (get!21312 lt!2211641))))))

(declare-fun b!5423081 () Bool)

(assert (=> b!5423081 (= e!3360868 None!15316)))

(declare-fun b!5423078 () Bool)

(declare-fun e!3360865 () Bool)

(assert (=> b!5423078 (= e!3360865 (matchR!7391 (regTwo!30924 r!7292) s!2326))))

(declare-fun d!1729861 () Bool)

(assert (=> d!1729861 e!3360867))

(declare-fun res!2307496 () Bool)

(assert (=> d!1729861 (=> res!2307496 e!3360867)))

(assert (=> d!1729861 (= res!2307496 e!3360864)))

(declare-fun res!2307494 () Bool)

(assert (=> d!1729861 (=> (not res!2307494) (not e!3360864))))

(assert (=> d!1729861 (= res!2307494 (isDefined!12020 lt!2211641))))

(assert (=> d!1729861 (= lt!2211641 e!3360866)))

(declare-fun c!945875 () Bool)

(assert (=> d!1729861 (= c!945875 e!3360865)))

(declare-fun res!2307493 () Bool)

(assert (=> d!1729861 (=> (not res!2307493) (not e!3360865))))

(assert (=> d!1729861 (= res!2307493 (matchR!7391 lt!2211321 Nil!61793))))

(assert (=> d!1729861 (validRegex!6942 lt!2211321)))

(assert (=> d!1729861 (= (findConcatSeparation!1731 lt!2211321 (regTwo!30924 r!7292) Nil!61793 s!2326 s!2326) lt!2211641)))

(assert (= (and d!1729861 res!2307493) b!5423078))

(assert (= (and d!1729861 c!945875) b!5423076))

(assert (= (and d!1729861 (not c!945875)) b!5423077))

(assert (= (and b!5423077 c!945874) b!5423081))

(assert (= (and b!5423077 (not c!945874)) b!5423074))

(assert (= (and d!1729861 res!2307494) b!5423080))

(assert (= (and b!5423080 res!2307495) b!5423073))

(assert (= (and b!5423073 res!2307497) b!5423075))

(assert (= (and d!1729861 (not res!2307496)) b!5423079))

(declare-fun m!6447202 () Bool)

(assert (=> d!1729861 m!6447202))

(declare-fun m!6447204 () Bool)

(assert (=> d!1729861 m!6447204))

(assert (=> d!1729861 m!6446794))

(declare-fun m!6447206 () Bool)

(assert (=> b!5423074 m!6447206))

(assert (=> b!5423074 m!6447206))

(declare-fun m!6447208 () Bool)

(assert (=> b!5423074 m!6447208))

(declare-fun m!6447210 () Bool)

(assert (=> b!5423074 m!6447210))

(assert (=> b!5423074 m!6447206))

(declare-fun m!6447212 () Bool)

(assert (=> b!5423074 m!6447212))

(declare-fun m!6447214 () Bool)

(assert (=> b!5423078 m!6447214))

(assert (=> b!5423079 m!6447202))

(declare-fun m!6447216 () Bool)

(assert (=> b!5423080 m!6447216))

(declare-fun m!6447218 () Bool)

(assert (=> b!5423080 m!6447218))

(assert (=> b!5423075 m!6447216))

(declare-fun m!6447220 () Bool)

(assert (=> b!5423075 m!6447220))

(assert (=> b!5423073 m!6447216))

(declare-fun m!6447222 () Bool)

(assert (=> b!5423073 m!6447222))

(assert (=> b!5422286 d!1729861))

(declare-fun b!5423082 () Bool)

(declare-fun e!3360872 () Bool)

(declare-fun lt!2211642 () Bool)

(assert (=> b!5423082 (= e!3360872 (not lt!2211642))))

(declare-fun b!5423083 () Bool)

(declare-fun res!2307502 () Bool)

(declare-fun e!3360869 () Bool)

(assert (=> b!5423083 (=> (not res!2307502) (not e!3360869))))

(declare-fun call!388129 () Bool)

(assert (=> b!5423083 (= res!2307502 (not call!388129))))

(declare-fun b!5423084 () Bool)

(declare-fun res!2307498 () Bool)

(declare-fun e!3360874 () Bool)

(assert (=> b!5423084 (=> res!2307498 e!3360874)))

(assert (=> b!5423084 (= res!2307498 (not (isEmpty!33798 (tail!10729 (_2!35708 lt!2211279)))))))

(declare-fun b!5423085 () Bool)

(declare-fun e!3360873 () Bool)

(declare-fun e!3360875 () Bool)

(assert (=> b!5423085 (= e!3360873 e!3360875)))

(declare-fun res!2307500 () Bool)

(assert (=> b!5423085 (=> (not res!2307500) (not e!3360875))))

(assert (=> b!5423085 (= res!2307500 (not lt!2211642))))

(declare-fun b!5423086 () Bool)

(declare-fun res!2307503 () Bool)

(assert (=> b!5423086 (=> (not res!2307503) (not e!3360869))))

(assert (=> b!5423086 (= res!2307503 (isEmpty!33798 (tail!10729 (_2!35708 lt!2211279))))))

(declare-fun b!5423088 () Bool)

(assert (=> b!5423088 (= e!3360875 e!3360874)))

(declare-fun res!2307501 () Bool)

(assert (=> b!5423088 (=> res!2307501 e!3360874)))

(assert (=> b!5423088 (= res!2307501 call!388129)))

(declare-fun b!5423089 () Bool)

(declare-fun e!3360870 () Bool)

(assert (=> b!5423089 (= e!3360870 (nullable!5375 lt!2211268))))

(declare-fun b!5423090 () Bool)

(assert (=> b!5423090 (= e!3360869 (= (head!11632 (_2!35708 lt!2211279)) (c!945702 lt!2211268)))))

(declare-fun b!5423091 () Bool)

(assert (=> b!5423091 (= e!3360874 (not (= (head!11632 (_2!35708 lt!2211279)) (c!945702 lt!2211268))))))

(declare-fun bm!388124 () Bool)

(assert (=> bm!388124 (= call!388129 (isEmpty!33798 (_2!35708 lt!2211279)))))

(declare-fun b!5423092 () Bool)

(declare-fun res!2307505 () Bool)

(assert (=> b!5423092 (=> res!2307505 e!3360873)))

(assert (=> b!5423092 (= res!2307505 e!3360869)))

(declare-fun res!2307504 () Bool)

(assert (=> b!5423092 (=> (not res!2307504) (not e!3360869))))

(assert (=> b!5423092 (= res!2307504 lt!2211642)))

(declare-fun b!5423093 () Bool)

(assert (=> b!5423093 (= e!3360870 (matchR!7391 (derivativeStep!4278 lt!2211268 (head!11632 (_2!35708 lt!2211279))) (tail!10729 (_2!35708 lt!2211279))))))

(declare-fun b!5423094 () Bool)

(declare-fun e!3360871 () Bool)

(assert (=> b!5423094 (= e!3360871 e!3360872)))

(declare-fun c!945878 () Bool)

(assert (=> b!5423094 (= c!945878 (is-EmptyLang!15206 lt!2211268))))

(declare-fun b!5423095 () Bool)

(declare-fun res!2307499 () Bool)

(assert (=> b!5423095 (=> res!2307499 e!3360873)))

(assert (=> b!5423095 (= res!2307499 (not (is-ElementMatch!15206 lt!2211268)))))

(assert (=> b!5423095 (= e!3360872 e!3360873)))

(declare-fun b!5423087 () Bool)

(assert (=> b!5423087 (= e!3360871 (= lt!2211642 call!388129))))

(declare-fun d!1729863 () Bool)

(assert (=> d!1729863 e!3360871))

(declare-fun c!945876 () Bool)

(assert (=> d!1729863 (= c!945876 (is-EmptyExpr!15206 lt!2211268))))

(assert (=> d!1729863 (= lt!2211642 e!3360870)))

(declare-fun c!945877 () Bool)

(assert (=> d!1729863 (= c!945877 (isEmpty!33798 (_2!35708 lt!2211279)))))

(assert (=> d!1729863 (validRegex!6942 lt!2211268)))

(assert (=> d!1729863 (= (matchR!7391 lt!2211268 (_2!35708 lt!2211279)) lt!2211642)))

(assert (= (and d!1729863 c!945877) b!5423089))

(assert (= (and d!1729863 (not c!945877)) b!5423093))

(assert (= (and d!1729863 c!945876) b!5423087))

(assert (= (and d!1729863 (not c!945876)) b!5423094))

(assert (= (and b!5423094 c!945878) b!5423082))

(assert (= (and b!5423094 (not c!945878)) b!5423095))

(assert (= (and b!5423095 (not res!2307499)) b!5423092))

(assert (= (and b!5423092 res!2307504) b!5423083))

(assert (= (and b!5423083 res!2307502) b!5423086))

(assert (= (and b!5423086 res!2307503) b!5423090))

(assert (= (and b!5423092 (not res!2307505)) b!5423085))

(assert (= (and b!5423085 res!2307500) b!5423088))

(assert (= (and b!5423088 (not res!2307501)) b!5423084))

(assert (= (and b!5423084 (not res!2307498)) b!5423091))

(assert (= (or b!5423087 b!5423083 b!5423088) bm!388124))

(declare-fun m!6447230 () Bool)

(assert (=> d!1729863 m!6447230))

(assert (=> d!1729863 m!6447082))

(declare-fun m!6447232 () Bool)

(assert (=> b!5423084 m!6447232))

(assert (=> b!5423084 m!6447232))

(declare-fun m!6447234 () Bool)

(assert (=> b!5423084 m!6447234))

(declare-fun m!6447236 () Bool)

(assert (=> b!5423093 m!6447236))

(assert (=> b!5423093 m!6447236))

(declare-fun m!6447238 () Bool)

(assert (=> b!5423093 m!6447238))

(assert (=> b!5423093 m!6447232))

(assert (=> b!5423093 m!6447238))

(assert (=> b!5423093 m!6447232))

(declare-fun m!6447240 () Bool)

(assert (=> b!5423093 m!6447240))

(assert (=> b!5423086 m!6447232))

(assert (=> b!5423086 m!6447232))

(assert (=> b!5423086 m!6447234))

(declare-fun m!6447242 () Bool)

(assert (=> b!5423089 m!6447242))

(assert (=> b!5423090 m!6447236))

(assert (=> b!5423091 m!6447236))

(assert (=> bm!388124 m!6447230))

(assert (=> b!5422286 d!1729863))

(declare-fun d!1729867 () Bool)

(assert (=> d!1729867 (= (matchR!7391 lt!2211310 s!2326) (matchRSpec!2309 lt!2211310 s!2326))))

(declare-fun lt!2211643 () Unit!154346)

(assert (=> d!1729867 (= lt!2211643 (choose!41093 lt!2211310 s!2326))))

(assert (=> d!1729867 (validRegex!6942 lt!2211310)))

(assert (=> d!1729867 (= (mainMatchTheorem!2309 lt!2211310 s!2326) lt!2211643)))

(declare-fun bs!1252914 () Bool)

(assert (= bs!1252914 d!1729867))

(assert (=> bs!1252914 m!6446372))

(assert (=> bs!1252914 m!6446398))

(declare-fun m!6447244 () Bool)

(assert (=> bs!1252914 m!6447244))

(assert (=> bs!1252914 m!6447194))

(assert (=> b!5422286 d!1729867))

(declare-fun d!1729869 () Bool)

(declare-fun c!945881 () Bool)

(assert (=> d!1729869 (= c!945881 (isEmpty!33798 (_2!35708 lt!2211279)))))

(declare-fun e!3360879 () Bool)

(assert (=> d!1729869 (= (matchZipper!1450 lt!2211320 (_2!35708 lt!2211279)) e!3360879)))

(declare-fun b!5423101 () Bool)

(assert (=> b!5423101 (= e!3360879 (nullableZipper!1457 lt!2211320))))

(declare-fun b!5423102 () Bool)

(assert (=> b!5423102 (= e!3360879 (matchZipper!1450 (derivationStepZipper!1445 lt!2211320 (head!11632 (_2!35708 lt!2211279))) (tail!10729 (_2!35708 lt!2211279))))))

(assert (= (and d!1729869 c!945881) b!5423101))

(assert (= (and d!1729869 (not c!945881)) b!5423102))

(assert (=> d!1729869 m!6447230))

(declare-fun m!6447246 () Bool)

(assert (=> b!5423101 m!6447246))

(assert (=> b!5423102 m!6447236))

(assert (=> b!5423102 m!6447236))

(declare-fun m!6447248 () Bool)

(assert (=> b!5423102 m!6447248))

(assert (=> b!5423102 m!6447232))

(assert (=> b!5423102 m!6447248))

(assert (=> b!5423102 m!6447232))

(declare-fun m!6447250 () Bool)

(assert (=> b!5423102 m!6447250))

(assert (=> b!5422246 d!1729869))

(declare-fun bs!1252916 () Bool)

(declare-fun d!1729871 () Bool)

(assert (= bs!1252916 (and d!1729871 b!5422280)))

(declare-fun lambda!284145 () Int)

(assert (=> bs!1252916 (= lambda!284145 lambda!284044)))

(declare-fun bs!1252917 () Bool)

(assert (= bs!1252917 (and d!1729871 d!1729715)))

(assert (=> bs!1252917 (= lambda!284145 lambda!284106)))

(declare-fun bs!1252918 () Bool)

(assert (= bs!1252918 (and d!1729871 d!1729835)))

(assert (=> bs!1252918 (= lambda!284145 lambda!284140)))

(declare-fun bs!1252919 () Bool)

(assert (= bs!1252919 (and d!1729871 d!1729711)))

(assert (=> bs!1252919 (= lambda!284145 lambda!284100)))

(declare-fun bs!1252920 () Bool)

(assert (= bs!1252920 (and d!1729871 d!1729713)))

(assert (=> bs!1252920 (= lambda!284145 lambda!284103)))

(assert (=> d!1729871 (= (inv!81263 (h!68243 zl!343)) (forall!14550 (exprs!5090 (h!68243 zl!343)) lambda!284145))))

(declare-fun bs!1252921 () Bool)

(assert (= bs!1252921 d!1729871))

(declare-fun m!6447262 () Bool)

(assert (=> bs!1252921 m!6447262))

(assert (=> b!5422265 d!1729871))

(declare-fun d!1729877 () Bool)

(declare-fun e!3360897 () Bool)

(assert (=> d!1729877 (= (matchZipper!1450 (set.union lt!2211315 lt!2211285) (t!375140 s!2326)) e!3360897)))

(declare-fun res!2307512 () Bool)

(assert (=> d!1729877 (=> res!2307512 e!3360897)))

(assert (=> d!1729877 (= res!2307512 (matchZipper!1450 lt!2211315 (t!375140 s!2326)))))

(declare-fun lt!2211649 () Unit!154346)

(declare-fun choose!41113 ((Set Context!9180) (Set Context!9180) List!61917) Unit!154346)

(assert (=> d!1729877 (= lt!2211649 (choose!41113 lt!2211315 lt!2211285 (t!375140 s!2326)))))

(assert (=> d!1729877 (= (lemmaZipperConcatMatchesSameAsBothZippers!443 lt!2211315 lt!2211285 (t!375140 s!2326)) lt!2211649)))

(declare-fun b!5423132 () Bool)

(assert (=> b!5423132 (= e!3360897 (matchZipper!1450 lt!2211285 (t!375140 s!2326)))))

(assert (= (and d!1729877 (not res!2307512)) b!5423132))

(assert (=> d!1729877 m!6446478))

(assert (=> d!1729877 m!6446476))

(declare-fun m!6447264 () Bool)

(assert (=> d!1729877 m!6447264))

(assert (=> b!5423132 m!6446316))

(assert (=> b!5422283 d!1729877))

(declare-fun d!1729879 () Bool)

(declare-fun c!945894 () Bool)

(assert (=> d!1729879 (= c!945894 (isEmpty!33798 (t!375140 s!2326)))))

(declare-fun e!3360898 () Bool)

(assert (=> d!1729879 (= (matchZipper!1450 lt!2211315 (t!375140 s!2326)) e!3360898)))

(declare-fun b!5423133 () Bool)

(assert (=> b!5423133 (= e!3360898 (nullableZipper!1457 lt!2211315))))

(declare-fun b!5423134 () Bool)

(assert (=> b!5423134 (= e!3360898 (matchZipper!1450 (derivationStepZipper!1445 lt!2211315 (head!11632 (t!375140 s!2326))) (tail!10729 (t!375140 s!2326))))))

(assert (= (and d!1729879 c!945894) b!5423133))

(assert (= (and d!1729879 (not c!945894)) b!5423134))

(declare-fun m!6447266 () Bool)

(assert (=> d!1729879 m!6447266))

(declare-fun m!6447268 () Bool)

(assert (=> b!5423133 m!6447268))

(declare-fun m!6447270 () Bool)

(assert (=> b!5423134 m!6447270))

(assert (=> b!5423134 m!6447270))

(declare-fun m!6447272 () Bool)

(assert (=> b!5423134 m!6447272))

(declare-fun m!6447274 () Bool)

(assert (=> b!5423134 m!6447274))

(assert (=> b!5423134 m!6447272))

(assert (=> b!5423134 m!6447274))

(declare-fun m!6447276 () Bool)

(assert (=> b!5423134 m!6447276))

(assert (=> b!5422283 d!1729879))

(declare-fun d!1729881 () Bool)

(declare-fun c!945895 () Bool)

(assert (=> d!1729881 (= c!945895 (isEmpty!33798 (t!375140 s!2326)))))

(declare-fun e!3360899 () Bool)

(assert (=> d!1729881 (= (matchZipper!1450 (set.union lt!2211315 lt!2211285) (t!375140 s!2326)) e!3360899)))

(declare-fun b!5423135 () Bool)

(assert (=> b!5423135 (= e!3360899 (nullableZipper!1457 (set.union lt!2211315 lt!2211285)))))

(declare-fun b!5423136 () Bool)

(assert (=> b!5423136 (= e!3360899 (matchZipper!1450 (derivationStepZipper!1445 (set.union lt!2211315 lt!2211285) (head!11632 (t!375140 s!2326))) (tail!10729 (t!375140 s!2326))))))

(assert (= (and d!1729881 c!945895) b!5423135))

(assert (= (and d!1729881 (not c!945895)) b!5423136))

(assert (=> d!1729881 m!6447266))

(declare-fun m!6447278 () Bool)

(assert (=> b!5423135 m!6447278))

(assert (=> b!5423136 m!6447270))

(assert (=> b!5423136 m!6447270))

(declare-fun m!6447280 () Bool)

(assert (=> b!5423136 m!6447280))

(assert (=> b!5423136 m!6447274))

(assert (=> b!5423136 m!6447280))

(assert (=> b!5423136 m!6447274))

(declare-fun m!6447282 () Bool)

(assert (=> b!5423136 m!6447282))

(assert (=> b!5422283 d!1729881))

(declare-fun d!1729883 () Bool)

(declare-fun c!945896 () Bool)

(assert (=> d!1729883 (= c!945896 (isEmpty!33798 (t!375140 s!2326)))))

(declare-fun e!3360900 () Bool)

(assert (=> d!1729883 (= (matchZipper!1450 lt!2211285 (t!375140 s!2326)) e!3360900)))

(declare-fun b!5423137 () Bool)

(assert (=> b!5423137 (= e!3360900 (nullableZipper!1457 lt!2211285))))

(declare-fun b!5423138 () Bool)

(assert (=> b!5423138 (= e!3360900 (matchZipper!1450 (derivationStepZipper!1445 lt!2211285 (head!11632 (t!375140 s!2326))) (tail!10729 (t!375140 s!2326))))))

(assert (= (and d!1729883 c!945896) b!5423137))

(assert (= (and d!1729883 (not c!945896)) b!5423138))

(assert (=> d!1729883 m!6447266))

(declare-fun m!6447284 () Bool)

(assert (=> b!5423137 m!6447284))

(assert (=> b!5423138 m!6447270))

(assert (=> b!5423138 m!6447270))

(declare-fun m!6447286 () Bool)

(assert (=> b!5423138 m!6447286))

(assert (=> b!5423138 m!6447274))

(assert (=> b!5423138 m!6447286))

(assert (=> b!5423138 m!6447274))

(declare-fun m!6447288 () Bool)

(assert (=> b!5423138 m!6447288))

(assert (=> b!5422251 d!1729883))

(declare-fun c!945898 () Bool)

(declare-fun bm!388135 () Bool)

(declare-fun c!945897 () Bool)

(declare-fun call!388142 () Bool)

(assert (=> bm!388135 (= call!388142 (validRegex!6942 (ite c!945898 (reg!15535 (regTwo!30924 r!7292)) (ite c!945897 (regTwo!30925 (regTwo!30924 r!7292)) (regTwo!30924 (regTwo!30924 r!7292))))))))

(declare-fun bm!388136 () Bool)

(declare-fun call!388140 () Bool)

(assert (=> bm!388136 (= call!388140 (validRegex!6942 (ite c!945897 (regOne!30925 (regTwo!30924 r!7292)) (regOne!30924 (regTwo!30924 r!7292)))))))

(declare-fun b!5423139 () Bool)

(declare-fun e!3360907 () Bool)

(declare-fun e!3360901 () Bool)

(assert (=> b!5423139 (= e!3360907 e!3360901)))

(declare-fun res!2307515 () Bool)

(assert (=> b!5423139 (=> (not res!2307515) (not e!3360901))))

(assert (=> b!5423139 (= res!2307515 call!388140)))

(declare-fun b!5423140 () Bool)

(declare-fun e!3360903 () Bool)

(declare-fun e!3360904 () Bool)

(assert (=> b!5423140 (= e!3360903 e!3360904)))

(assert (=> b!5423140 (= c!945898 (is-Star!15206 (regTwo!30924 r!7292)))))

(declare-fun d!1729885 () Bool)

(declare-fun res!2307513 () Bool)

(assert (=> d!1729885 (=> res!2307513 e!3360903)))

(assert (=> d!1729885 (= res!2307513 (is-ElementMatch!15206 (regTwo!30924 r!7292)))))

(assert (=> d!1729885 (= (validRegex!6942 (regTwo!30924 r!7292)) e!3360903)))

(declare-fun b!5423141 () Bool)

(declare-fun res!2307514 () Bool)

(assert (=> b!5423141 (=> res!2307514 e!3360907)))

(assert (=> b!5423141 (= res!2307514 (not (is-Concat!24051 (regTwo!30924 r!7292))))))

(declare-fun e!3360906 () Bool)

(assert (=> b!5423141 (= e!3360906 e!3360907)))

(declare-fun b!5423142 () Bool)

(declare-fun call!388141 () Bool)

(assert (=> b!5423142 (= e!3360901 call!388141)))

(declare-fun b!5423143 () Bool)

(declare-fun res!2307517 () Bool)

(declare-fun e!3360905 () Bool)

(assert (=> b!5423143 (=> (not res!2307517) (not e!3360905))))

(assert (=> b!5423143 (= res!2307517 call!388140)))

(assert (=> b!5423143 (= e!3360906 e!3360905)))

(declare-fun b!5423144 () Bool)

(assert (=> b!5423144 (= e!3360905 call!388141)))

(declare-fun bm!388137 () Bool)

(assert (=> bm!388137 (= call!388141 call!388142)))

(declare-fun b!5423145 () Bool)

(assert (=> b!5423145 (= e!3360904 e!3360906)))

(assert (=> b!5423145 (= c!945897 (is-Union!15206 (regTwo!30924 r!7292)))))

(declare-fun b!5423146 () Bool)

(declare-fun e!3360902 () Bool)

(assert (=> b!5423146 (= e!3360904 e!3360902)))

(declare-fun res!2307516 () Bool)

(assert (=> b!5423146 (= res!2307516 (not (nullable!5375 (reg!15535 (regTwo!30924 r!7292)))))))

(assert (=> b!5423146 (=> (not res!2307516) (not e!3360902))))

(declare-fun b!5423147 () Bool)

(assert (=> b!5423147 (= e!3360902 call!388142)))

(assert (= (and d!1729885 (not res!2307513)) b!5423140))

(assert (= (and b!5423140 c!945898) b!5423146))

(assert (= (and b!5423140 (not c!945898)) b!5423145))

(assert (= (and b!5423146 res!2307516) b!5423147))

(assert (= (and b!5423145 c!945897) b!5423143))

(assert (= (and b!5423145 (not c!945897)) b!5423141))

(assert (= (and b!5423143 res!2307517) b!5423144))

(assert (= (and b!5423141 (not res!2307514)) b!5423139))

(assert (= (and b!5423139 res!2307515) b!5423142))

(assert (= (or b!5423144 b!5423142) bm!388137))

(assert (= (or b!5423143 b!5423139) bm!388136))

(assert (= (or b!5423147 bm!388137) bm!388135))

(declare-fun m!6447290 () Bool)

(assert (=> bm!388135 m!6447290))

(declare-fun m!6447292 () Bool)

(assert (=> bm!388136 m!6447292))

(declare-fun m!6447294 () Bool)

(assert (=> b!5423146 m!6447294))

(assert (=> b!5422272 d!1729885))

(declare-fun b!5423148 () Bool)

(declare-fun e!3360911 () Bool)

(declare-fun lt!2211650 () Bool)

(assert (=> b!5423148 (= e!3360911 (not lt!2211650))))

(declare-fun b!5423149 () Bool)

(declare-fun res!2307522 () Bool)

(declare-fun e!3360908 () Bool)

(assert (=> b!5423149 (=> (not res!2307522) (not e!3360908))))

(declare-fun call!388145 () Bool)

(assert (=> b!5423149 (= res!2307522 (not call!388145))))

(declare-fun b!5423150 () Bool)

(declare-fun res!2307518 () Bool)

(declare-fun e!3360913 () Bool)

(assert (=> b!5423150 (=> res!2307518 e!3360913)))

(assert (=> b!5423150 (= res!2307518 (not (isEmpty!33798 (tail!10729 lt!2211281))))))

(declare-fun b!5423151 () Bool)

(declare-fun e!3360912 () Bool)

(declare-fun e!3360914 () Bool)

(assert (=> b!5423151 (= e!3360912 e!3360914)))

(declare-fun res!2307520 () Bool)

(assert (=> b!5423151 (=> (not res!2307520) (not e!3360914))))

(assert (=> b!5423151 (= res!2307520 (not lt!2211650))))

(declare-fun b!5423152 () Bool)

(declare-fun res!2307523 () Bool)

(assert (=> b!5423152 (=> (not res!2307523) (not e!3360908))))

(assert (=> b!5423152 (= res!2307523 (isEmpty!33798 (tail!10729 lt!2211281)))))

(declare-fun b!5423154 () Bool)

(assert (=> b!5423154 (= e!3360914 e!3360913)))

(declare-fun res!2307521 () Bool)

(assert (=> b!5423154 (=> res!2307521 e!3360913)))

(assert (=> b!5423154 (= res!2307521 call!388145)))

(declare-fun b!5423155 () Bool)

(declare-fun e!3360909 () Bool)

(assert (=> b!5423155 (= e!3360909 (nullable!5375 lt!2211306))))

(declare-fun b!5423156 () Bool)

(assert (=> b!5423156 (= e!3360908 (= (head!11632 lt!2211281) (c!945702 lt!2211306)))))

(declare-fun b!5423157 () Bool)

(assert (=> b!5423157 (= e!3360913 (not (= (head!11632 lt!2211281) (c!945702 lt!2211306))))))

(declare-fun bm!388140 () Bool)

(assert (=> bm!388140 (= call!388145 (isEmpty!33798 lt!2211281))))

(declare-fun b!5423158 () Bool)

(declare-fun res!2307525 () Bool)

(assert (=> b!5423158 (=> res!2307525 e!3360912)))

(assert (=> b!5423158 (= res!2307525 e!3360908)))

(declare-fun res!2307524 () Bool)

(assert (=> b!5423158 (=> (not res!2307524) (not e!3360908))))

(assert (=> b!5423158 (= res!2307524 lt!2211650)))

(declare-fun b!5423159 () Bool)

(assert (=> b!5423159 (= e!3360909 (matchR!7391 (derivativeStep!4278 lt!2211306 (head!11632 lt!2211281)) (tail!10729 lt!2211281)))))

(declare-fun b!5423160 () Bool)

(declare-fun e!3360910 () Bool)

(assert (=> b!5423160 (= e!3360910 e!3360911)))

(declare-fun c!945901 () Bool)

(assert (=> b!5423160 (= c!945901 (is-EmptyLang!15206 lt!2211306))))

(declare-fun b!5423161 () Bool)

(declare-fun res!2307519 () Bool)

(assert (=> b!5423161 (=> res!2307519 e!3360912)))

(assert (=> b!5423161 (= res!2307519 (not (is-ElementMatch!15206 lt!2211306)))))

(assert (=> b!5423161 (= e!3360911 e!3360912)))

(declare-fun b!5423153 () Bool)

(assert (=> b!5423153 (= e!3360910 (= lt!2211650 call!388145))))

(declare-fun d!1729887 () Bool)

(assert (=> d!1729887 e!3360910))

(declare-fun c!945899 () Bool)

(assert (=> d!1729887 (= c!945899 (is-EmptyExpr!15206 lt!2211306))))

(assert (=> d!1729887 (= lt!2211650 e!3360909)))

(declare-fun c!945900 () Bool)

(assert (=> d!1729887 (= c!945900 (isEmpty!33798 lt!2211281))))

(assert (=> d!1729887 (validRegex!6942 lt!2211306)))

(assert (=> d!1729887 (= (matchR!7391 lt!2211306 lt!2211281) lt!2211650)))

(assert (= (and d!1729887 c!945900) b!5423155))

(assert (= (and d!1729887 (not c!945900)) b!5423159))

(assert (= (and d!1729887 c!945899) b!5423153))

(assert (= (and d!1729887 (not c!945899)) b!5423160))

(assert (= (and b!5423160 c!945901) b!5423148))

(assert (= (and b!5423160 (not c!945901)) b!5423161))

(assert (= (and b!5423161 (not res!2307519)) b!5423158))

(assert (= (and b!5423158 res!2307524) b!5423149))

(assert (= (and b!5423149 res!2307522) b!5423152))

(assert (= (and b!5423152 res!2307523) b!5423156))

(assert (= (and b!5423158 (not res!2307525)) b!5423151))

(assert (= (and b!5423151 res!2307520) b!5423154))

(assert (= (and b!5423154 (not res!2307521)) b!5423150))

(assert (= (and b!5423150 (not res!2307518)) b!5423157))

(assert (= (or b!5423153 b!5423149 b!5423154) bm!388140))

(declare-fun m!6447296 () Bool)

(assert (=> d!1729887 m!6447296))

(assert (=> d!1729887 m!6447120))

(declare-fun m!6447298 () Bool)

(assert (=> b!5423150 m!6447298))

(assert (=> b!5423150 m!6447298))

(declare-fun m!6447300 () Bool)

(assert (=> b!5423150 m!6447300))

(declare-fun m!6447302 () Bool)

(assert (=> b!5423159 m!6447302))

(assert (=> b!5423159 m!6447302))

(declare-fun m!6447304 () Bool)

(assert (=> b!5423159 m!6447304))

(assert (=> b!5423159 m!6447298))

(assert (=> b!5423159 m!6447304))

(assert (=> b!5423159 m!6447298))

(declare-fun m!6447306 () Bool)

(assert (=> b!5423159 m!6447306))

(assert (=> b!5423152 m!6447298))

(assert (=> b!5423152 m!6447298))

(assert (=> b!5423152 m!6447300))

(declare-fun m!6447308 () Bool)

(assert (=> b!5423155 m!6447308))

(assert (=> b!5423156 m!6447302))

(assert (=> b!5423157 m!6447302))

(assert (=> bm!388140 m!6447296))

(assert (=> b!5422272 d!1729887))

(declare-fun d!1729889 () Bool)

(assert (=> d!1729889 (matchR!7391 (Star!15206 (reg!15535 (regOne!30924 r!7292))) (++!13585 (_1!35708 lt!2211270) (_2!35708 lt!2211270)))))

(declare-fun lt!2211653 () Unit!154346)

(declare-fun choose!41117 (Regex!15206 List!61917 List!61917) Unit!154346)

(assert (=> d!1729889 (= lt!2211653 (choose!41117 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211270) (_2!35708 lt!2211270)))))

(assert (=> d!1729889 (validRegex!6942 (Star!15206 (reg!15535 (regOne!30924 r!7292))))))

(assert (=> d!1729889 (= (lemmaStarApp!59 (reg!15535 (regOne!30924 r!7292)) (_1!35708 lt!2211270) (_2!35708 lt!2211270)) lt!2211653)))

(declare-fun bs!1252922 () Bool)

(assert (= bs!1252922 d!1729889))

(assert (=> bs!1252922 m!6446434))

(assert (=> bs!1252922 m!6446434))

(declare-fun m!6447310 () Bool)

(assert (=> bs!1252922 m!6447310))

(declare-fun m!6447312 () Bool)

(assert (=> bs!1252922 m!6447312))

(declare-fun m!6447314 () Bool)

(assert (=> bs!1252922 m!6447314))

(assert (=> b!5422272 d!1729889))

(declare-fun d!1729891 () Bool)

(declare-fun lt!2211654 () Regex!15206)

(assert (=> d!1729891 (validRegex!6942 lt!2211654)))

(assert (=> d!1729891 (= lt!2211654 (generalisedUnion!1135 (unfocusZipperList!648 lt!2211295)))))

(assert (=> d!1729891 (= (unfocusZipper!948 lt!2211295) lt!2211654)))

(declare-fun bs!1252923 () Bool)

(assert (= bs!1252923 d!1729891))

(declare-fun m!6447316 () Bool)

(assert (=> bs!1252923 m!6447316))

(declare-fun m!6447318 () Bool)

(assert (=> bs!1252923 m!6447318))

(assert (=> bs!1252923 m!6447318))

(declare-fun m!6447320 () Bool)

(assert (=> bs!1252923 m!6447320))

(assert (=> b!5422273 d!1729891))

(declare-fun bs!1252924 () Bool)

(declare-fun b!5423179 () Bool)

(assert (= bs!1252924 (and b!5423179 b!5422281)))

(declare-fun lambda!284146 () Int)

(assert (=> bs!1252924 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (reg!15535 r!7292) (reg!15535 (regOne!30924 r!7292))) (= r!7292 lt!2211306)) (= lambda!284146 lambda!284049))))

(declare-fun bs!1252925 () Bool)

(assert (= bs!1252925 (and b!5423179 d!1729729)))

(assert (=> bs!1252925 (not (= lambda!284146 lambda!284121))))

(declare-fun bs!1252926 () Bool)

(assert (= bs!1252926 (and b!5423179 d!1729727)))

(assert (=> bs!1252926 (not (= lambda!284146 lambda!284117))))

(declare-fun bs!1252927 () Bool)

(assert (= bs!1252927 (and b!5423179 b!5422732)))

(assert (=> bs!1252927 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (reg!15535 r!7292) (reg!15535 lt!2211321)) (= r!7292 lt!2211321)) (= lambda!284146 lambda!284128))))

(declare-fun bs!1252929 () Bool)

(assert (= bs!1252929 (and b!5423179 b!5422286)))

(assert (=> bs!1252929 (not (= lambda!284146 lambda!284045))))

(declare-fun bs!1252930 () Bool)

(assert (= bs!1252930 (and b!5423179 b!5422640)))

(assert (=> bs!1252930 (not (= lambda!284146 lambda!284112))))

(declare-fun bs!1252931 () Bool)

(assert (= bs!1252931 (and b!5423179 d!1729845)))

(assert (=> bs!1252931 (not (= lambda!284146 lambda!284142))))

(assert (=> bs!1252924 (not (= lambda!284146 lambda!284047))))

(declare-fun bs!1252932 () Bool)

(assert (= bs!1252932 (and b!5423179 d!1729731)))

(assert (=> bs!1252932 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (reg!15535 r!7292) (reg!15535 (regOne!30924 r!7292))) (= r!7292 (Star!15206 (reg!15535 (regOne!30924 r!7292))))) (= lambda!284146 lambda!284127))))

(declare-fun bs!1252933 () Bool)

(assert (= bs!1252933 (and b!5423179 b!5422277)))

(assert (=> bs!1252933 (not (= lambda!284146 lambda!284040))))

(declare-fun bs!1252934 () Bool)

(assert (= bs!1252934 (and b!5423179 b!5422641)))

(assert (=> bs!1252934 (= (and (= (reg!15535 r!7292) (reg!15535 lt!2211288)) (= r!7292 lt!2211288)) (= lambda!284146 lambda!284111))))

(declare-fun bs!1252935 () Bool)

(assert (= bs!1252935 (and b!5423179 b!5422978)))

(assert (=> bs!1252935 (= (and (= (reg!15535 r!7292) (reg!15535 lt!2211310)) (= r!7292 lt!2211310)) (= lambda!284146 lambda!284135))))

(assert (=> bs!1252926 (not (= lambda!284146 lambda!284118))))

(assert (=> bs!1252931 (not (= lambda!284146 lambda!284141))))

(assert (=> bs!1252933 (not (= lambda!284146 lambda!284041))))

(assert (=> bs!1252932 (not (= lambda!284146 lambda!284126))))

(declare-fun bs!1252936 () Bool)

(assert (= bs!1252936 (and b!5423179 b!5422977)))

(assert (=> bs!1252936 (not (= lambda!284146 lambda!284136))))

(declare-fun bs!1252937 () Bool)

(assert (= bs!1252937 (and b!5423179 b!5422731)))

(assert (=> bs!1252937 (not (= lambda!284146 lambda!284129))))

(assert (=> bs!1252929 (not (= lambda!284146 lambda!284046))))

(declare-fun bs!1252938 () Bool)

(assert (= bs!1252938 (and b!5423179 d!1729819)))

(assert (=> bs!1252938 (not (= lambda!284146 lambda!284137))))

(assert (=> bs!1252924 (not (= lambda!284146 lambda!284048))))

(assert (=> b!5423179 true))

(assert (=> b!5423179 true))

(declare-fun bs!1252939 () Bool)

(declare-fun b!5423178 () Bool)

(assert (= bs!1252939 (and b!5423178 b!5422281)))

(declare-fun lambda!284147 () Int)

(assert (=> bs!1252939 (not (= lambda!284147 lambda!284049))))

(declare-fun bs!1252940 () Bool)

(assert (= bs!1252940 (and b!5423178 d!1729729)))

(assert (=> bs!1252940 (not (= lambda!284147 lambda!284121))))

(declare-fun bs!1252941 () Bool)

(assert (= bs!1252941 (and b!5423178 d!1729727)))

(assert (=> bs!1252941 (not (= lambda!284147 lambda!284117))))

(declare-fun bs!1252942 () Bool)

(assert (= bs!1252942 (and b!5423178 b!5422732)))

(assert (=> bs!1252942 (not (= lambda!284147 lambda!284128))))

(declare-fun bs!1252943 () Bool)

(assert (= bs!1252943 (and b!5423178 b!5422286)))

(assert (=> bs!1252943 (not (= lambda!284147 lambda!284045))))

(declare-fun bs!1252944 () Bool)

(assert (= bs!1252944 (and b!5423178 b!5422640)))

(assert (=> bs!1252944 (= (and (= (regOne!30924 r!7292) (regOne!30924 lt!2211288)) (= (regTwo!30924 r!7292) (regTwo!30924 lt!2211288))) (= lambda!284147 lambda!284112))))

(declare-fun bs!1252945 () Bool)

(assert (= bs!1252945 (and b!5423178 d!1729845)))

(assert (=> bs!1252945 (= (= (regOne!30924 r!7292) lt!2211321) (= lambda!284147 lambda!284142))))

(declare-fun bs!1252946 () Bool)

(assert (= bs!1252946 (and b!5423178 b!5423179)))

(assert (=> bs!1252946 (not (= lambda!284147 lambda!284146))))

(assert (=> bs!1252939 (not (= lambda!284147 lambda!284047))))

(declare-fun bs!1252947 () Bool)

(assert (= bs!1252947 (and b!5423178 d!1729731)))

(assert (=> bs!1252947 (not (= lambda!284147 lambda!284127))))

(declare-fun bs!1252948 () Bool)

(assert (= bs!1252948 (and b!5423178 b!5422277)))

(assert (=> bs!1252948 (not (= lambda!284147 lambda!284040))))

(declare-fun bs!1252949 () Bool)

(assert (= bs!1252949 (and b!5423178 b!5422641)))

(assert (=> bs!1252949 (not (= lambda!284147 lambda!284111))))

(declare-fun bs!1252950 () Bool)

(assert (= bs!1252950 (and b!5423178 b!5422978)))

(assert (=> bs!1252950 (not (= lambda!284147 lambda!284135))))

(assert (=> bs!1252941 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284147 lambda!284118))))

(assert (=> bs!1252945 (not (= lambda!284147 lambda!284141))))

(assert (=> bs!1252948 (= lambda!284147 lambda!284041)))

(assert (=> bs!1252947 (not (= lambda!284147 lambda!284126))))

(declare-fun bs!1252953 () Bool)

(assert (= bs!1252953 (and b!5423178 b!5422977)))

(assert (=> bs!1252953 (= (and (= (regOne!30924 r!7292) (regOne!30924 lt!2211310)) (= (regTwo!30924 r!7292) (regTwo!30924 lt!2211310))) (= lambda!284147 lambda!284136))))

(declare-fun bs!1252954 () Bool)

(assert (= bs!1252954 (and b!5423178 b!5422731)))

(assert (=> bs!1252954 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (regOne!30924 lt!2211321)) (= (regTwo!30924 r!7292) (regTwo!30924 lt!2211321))) (= lambda!284147 lambda!284129))))

(assert (=> bs!1252943 (= (= (regOne!30924 r!7292) lt!2211321) (= lambda!284147 lambda!284046))))

(declare-fun bs!1252955 () Bool)

(assert (= bs!1252955 (and b!5423178 d!1729819)))

(assert (=> bs!1252955 (not (= lambda!284147 lambda!284137))))

(assert (=> bs!1252939 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284147 lambda!284048))))

(assert (=> b!5423178 true))

(assert (=> b!5423178 true))

(declare-fun b!5423173 () Bool)

(declare-fun e!3360925 () Bool)

(assert (=> b!5423173 (= e!3360925 (= s!2326 (Cons!61793 (c!945702 r!7292) Nil!61793)))))

(declare-fun b!5423174 () Bool)

(declare-fun e!3360926 () Bool)

(assert (=> b!5423174 (= e!3360926 (matchRSpec!2309 (regTwo!30925 r!7292) s!2326))))

(declare-fun b!5423175 () Bool)

(declare-fun res!2307529 () Bool)

(declare-fun e!3360921 () Bool)

(assert (=> b!5423175 (=> res!2307529 e!3360921)))

(declare-fun call!388154 () Bool)

(assert (=> b!5423175 (= res!2307529 call!388154)))

(declare-fun e!3360922 () Bool)

(assert (=> b!5423175 (= e!3360922 e!3360921)))

(declare-fun b!5423176 () Bool)

(declare-fun c!945908 () Bool)

(assert (=> b!5423176 (= c!945908 (is-ElementMatch!15206 r!7292))))

(declare-fun e!3360924 () Bool)

(assert (=> b!5423176 (= e!3360924 e!3360925)))

(declare-fun b!5423177 () Bool)

(declare-fun e!3360927 () Bool)

(assert (=> b!5423177 (= e!3360927 call!388154)))

(declare-fun bm!388149 () Bool)

(assert (=> bm!388149 (= call!388154 (isEmpty!33798 s!2326))))

(declare-fun call!388155 () Bool)

(assert (=> b!5423179 (= e!3360921 call!388155)))

(declare-fun b!5423180 () Bool)

(declare-fun e!3360923 () Bool)

(assert (=> b!5423180 (= e!3360923 e!3360922)))

(declare-fun c!945910 () Bool)

(assert (=> b!5423180 (= c!945910 (is-Star!15206 r!7292))))

(declare-fun b!5423181 () Bool)

(assert (=> b!5423181 (= e!3360923 e!3360926)))

(declare-fun res!2307527 () Bool)

(assert (=> b!5423181 (= res!2307527 (matchRSpec!2309 (regOne!30925 r!7292) s!2326))))

(assert (=> b!5423181 (=> res!2307527 e!3360926)))

(declare-fun bm!388150 () Bool)

(assert (=> bm!388150 (= call!388155 (Exists!2387 (ite c!945910 lambda!284146 lambda!284147)))))

(declare-fun b!5423182 () Bool)

(assert (=> b!5423182 (= e!3360927 e!3360924)))

(declare-fun res!2307528 () Bool)

(assert (=> b!5423182 (= res!2307528 (not (is-EmptyLang!15206 r!7292)))))

(assert (=> b!5423182 (=> (not res!2307528) (not e!3360924))))

(declare-fun b!5423183 () Bool)

(declare-fun c!945909 () Bool)

(assert (=> b!5423183 (= c!945909 (is-Union!15206 r!7292))))

(assert (=> b!5423183 (= e!3360925 e!3360923)))

(assert (=> b!5423178 (= e!3360922 call!388155)))

(declare-fun d!1729893 () Bool)

(declare-fun c!945907 () Bool)

(assert (=> d!1729893 (= c!945907 (is-EmptyExpr!15206 r!7292))))

(assert (=> d!1729893 (= (matchRSpec!2309 r!7292 s!2326) e!3360927)))

(assert (= (and d!1729893 c!945907) b!5423177))

(assert (= (and d!1729893 (not c!945907)) b!5423182))

(assert (= (and b!5423182 res!2307528) b!5423176))

(assert (= (and b!5423176 c!945908) b!5423173))

(assert (= (and b!5423176 (not c!945908)) b!5423183))

(assert (= (and b!5423183 c!945909) b!5423181))

(assert (= (and b!5423183 (not c!945909)) b!5423180))

(assert (= (and b!5423181 (not res!2307527)) b!5423174))

(assert (= (and b!5423180 c!945910) b!5423175))

(assert (= (and b!5423180 (not c!945910)) b!5423178))

(assert (= (and b!5423175 (not res!2307529)) b!5423179))

(assert (= (or b!5423179 b!5423178) bm!388150))

(assert (= (or b!5423177 b!5423175) bm!388149))

(declare-fun m!6447372 () Bool)

(assert (=> b!5423174 m!6447372))

(assert (=> bm!388149 m!6446748))

(declare-fun m!6447374 () Bool)

(assert (=> b!5423181 m!6447374))

(declare-fun m!6447376 () Bool)

(assert (=> bm!388150 m!6447376))

(assert (=> b!5422293 d!1729893))

(declare-fun b!5423197 () Bool)

(declare-fun e!3360938 () Bool)

(declare-fun lt!2211655 () Bool)

(assert (=> b!5423197 (= e!3360938 (not lt!2211655))))

(declare-fun b!5423198 () Bool)

(declare-fun res!2307535 () Bool)

(declare-fun e!3360935 () Bool)

(assert (=> b!5423198 (=> (not res!2307535) (not e!3360935))))

(declare-fun call!388157 () Bool)

(assert (=> b!5423198 (= res!2307535 (not call!388157))))

(declare-fun b!5423199 () Bool)

(declare-fun res!2307531 () Bool)

(declare-fun e!3360940 () Bool)

(assert (=> b!5423199 (=> res!2307531 e!3360940)))

(assert (=> b!5423199 (= res!2307531 (not (isEmpty!33798 (tail!10729 s!2326))))))

(declare-fun b!5423200 () Bool)

(declare-fun e!3360939 () Bool)

(declare-fun e!3360941 () Bool)

(assert (=> b!5423200 (= e!3360939 e!3360941)))

(declare-fun res!2307533 () Bool)

(assert (=> b!5423200 (=> (not res!2307533) (not e!3360941))))

(assert (=> b!5423200 (= res!2307533 (not lt!2211655))))

(declare-fun b!5423201 () Bool)

(declare-fun res!2307536 () Bool)

(assert (=> b!5423201 (=> (not res!2307536) (not e!3360935))))

(assert (=> b!5423201 (= res!2307536 (isEmpty!33798 (tail!10729 s!2326)))))

(declare-fun b!5423203 () Bool)

(assert (=> b!5423203 (= e!3360941 e!3360940)))

(declare-fun res!2307534 () Bool)

(assert (=> b!5423203 (=> res!2307534 e!3360940)))

(assert (=> b!5423203 (= res!2307534 call!388157)))

(declare-fun b!5423204 () Bool)

(declare-fun e!3360936 () Bool)

(assert (=> b!5423204 (= e!3360936 (nullable!5375 r!7292))))

(declare-fun b!5423205 () Bool)

(assert (=> b!5423205 (= e!3360935 (= (head!11632 s!2326) (c!945702 r!7292)))))

(declare-fun b!5423206 () Bool)

(assert (=> b!5423206 (= e!3360940 (not (= (head!11632 s!2326) (c!945702 r!7292))))))

(declare-fun bm!388152 () Bool)

(assert (=> bm!388152 (= call!388157 (isEmpty!33798 s!2326))))

(declare-fun b!5423207 () Bool)

(declare-fun res!2307538 () Bool)

(assert (=> b!5423207 (=> res!2307538 e!3360939)))

(assert (=> b!5423207 (= res!2307538 e!3360935)))

(declare-fun res!2307537 () Bool)

(assert (=> b!5423207 (=> (not res!2307537) (not e!3360935))))

(assert (=> b!5423207 (= res!2307537 lt!2211655)))

(declare-fun b!5423208 () Bool)

(assert (=> b!5423208 (= e!3360936 (matchR!7391 (derivativeStep!4278 r!7292 (head!11632 s!2326)) (tail!10729 s!2326)))))

(declare-fun b!5423209 () Bool)

(declare-fun e!3360937 () Bool)

(assert (=> b!5423209 (= e!3360937 e!3360938)))

(declare-fun c!945919 () Bool)

(assert (=> b!5423209 (= c!945919 (is-EmptyLang!15206 r!7292))))

(declare-fun b!5423210 () Bool)

(declare-fun res!2307532 () Bool)

(assert (=> b!5423210 (=> res!2307532 e!3360939)))

(assert (=> b!5423210 (= res!2307532 (not (is-ElementMatch!15206 r!7292)))))

(assert (=> b!5423210 (= e!3360938 e!3360939)))

(declare-fun b!5423202 () Bool)

(assert (=> b!5423202 (= e!3360937 (= lt!2211655 call!388157))))

(declare-fun d!1729913 () Bool)

(assert (=> d!1729913 e!3360937))

(declare-fun c!945917 () Bool)

(assert (=> d!1729913 (= c!945917 (is-EmptyExpr!15206 r!7292))))

(assert (=> d!1729913 (= lt!2211655 e!3360936)))

(declare-fun c!945918 () Bool)

(assert (=> d!1729913 (= c!945918 (isEmpty!33798 s!2326))))

(assert (=> d!1729913 (validRegex!6942 r!7292)))

(assert (=> d!1729913 (= (matchR!7391 r!7292 s!2326) lt!2211655)))

(assert (= (and d!1729913 c!945918) b!5423204))

(assert (= (and d!1729913 (not c!945918)) b!5423208))

(assert (= (and d!1729913 c!945917) b!5423202))

(assert (= (and d!1729913 (not c!945917)) b!5423209))

(assert (= (and b!5423209 c!945919) b!5423197))

(assert (= (and b!5423209 (not c!945919)) b!5423210))

(assert (= (and b!5423210 (not res!2307532)) b!5423207))

(assert (= (and b!5423207 res!2307537) b!5423198))

(assert (= (and b!5423198 res!2307535) b!5423201))

(assert (= (and b!5423201 res!2307536) b!5423205))

(assert (= (and b!5423207 (not res!2307538)) b!5423200))

(assert (= (and b!5423200 res!2307533) b!5423203))

(assert (= (and b!5423203 (not res!2307534)) b!5423199))

(assert (= (and b!5423199 (not res!2307531)) b!5423206))

(assert (= (or b!5423202 b!5423198 b!5423203) bm!388152))

(assert (=> d!1729913 m!6446748))

(assert (=> d!1729913 m!6446314))

(assert (=> b!5423199 m!6446756))

(assert (=> b!5423199 m!6446756))

(assert (=> b!5423199 m!6446758))

(assert (=> b!5423208 m!6446760))

(assert (=> b!5423208 m!6446760))

(declare-fun m!6447378 () Bool)

(assert (=> b!5423208 m!6447378))

(assert (=> b!5423208 m!6446756))

(assert (=> b!5423208 m!6447378))

(assert (=> b!5423208 m!6446756))

(declare-fun m!6447380 () Bool)

(assert (=> b!5423208 m!6447380))

(assert (=> b!5423201 m!6446756))

(assert (=> b!5423201 m!6446756))

(assert (=> b!5423201 m!6446758))

(declare-fun m!6447382 () Bool)

(assert (=> b!5423204 m!6447382))

(assert (=> b!5423205 m!6446760))

(assert (=> b!5423206 m!6446760))

(assert (=> bm!388152 m!6446748))

(assert (=> b!5422293 d!1729913))

(declare-fun d!1729915 () Bool)

(assert (=> d!1729915 (= (matchR!7391 r!7292 s!2326) (matchRSpec!2309 r!7292 s!2326))))

(declare-fun lt!2211656 () Unit!154346)

(assert (=> d!1729915 (= lt!2211656 (choose!41093 r!7292 s!2326))))

(assert (=> d!1729915 (validRegex!6942 r!7292)))

(assert (=> d!1729915 (= (mainMatchTheorem!2309 r!7292 s!2326) lt!2211656)))

(declare-fun bs!1252956 () Bool)

(assert (= bs!1252956 d!1729915))

(assert (=> bs!1252956 m!6446280))

(assert (=> bs!1252956 m!6446278))

(declare-fun m!6447384 () Bool)

(assert (=> bs!1252956 m!6447384))

(assert (=> bs!1252956 m!6446314))

(assert (=> b!5422293 d!1729915))

(declare-fun d!1729917 () Bool)

(declare-fun c!945920 () Bool)

(assert (=> d!1729917 (= c!945920 (isEmpty!33798 (t!375140 s!2326)))))

(declare-fun e!3360942 () Bool)

(assert (=> d!1729917 (= (matchZipper!1450 lt!2211271 (t!375140 s!2326)) e!3360942)))

(declare-fun b!5423211 () Bool)

(assert (=> b!5423211 (= e!3360942 (nullableZipper!1457 lt!2211271))))

(declare-fun b!5423212 () Bool)

(assert (=> b!5423212 (= e!3360942 (matchZipper!1450 (derivationStepZipper!1445 lt!2211271 (head!11632 (t!375140 s!2326))) (tail!10729 (t!375140 s!2326))))))

(assert (= (and d!1729917 c!945920) b!5423211))

(assert (= (and d!1729917 (not c!945920)) b!5423212))

(assert (=> d!1729917 m!6447266))

(declare-fun m!6447386 () Bool)

(assert (=> b!5423211 m!6447386))

(assert (=> b!5423212 m!6447270))

(assert (=> b!5423212 m!6447270))

(declare-fun m!6447388 () Bool)

(assert (=> b!5423212 m!6447388))

(assert (=> b!5423212 m!6447274))

(assert (=> b!5423212 m!6447388))

(assert (=> b!5423212 m!6447274))

(declare-fun m!6447390 () Bool)

(assert (=> b!5423212 m!6447390))

(assert (=> b!5422291 d!1729917))

(declare-fun d!1729919 () Bool)

(declare-fun c!945921 () Bool)

(assert (=> d!1729919 (= c!945921 (isEmpty!33798 s!2326))))

(declare-fun e!3360943 () Bool)

(assert (=> d!1729919 (= (matchZipper!1450 lt!2211294 s!2326) e!3360943)))

(declare-fun b!5423213 () Bool)

(assert (=> b!5423213 (= e!3360943 (nullableZipper!1457 lt!2211294))))

(declare-fun b!5423214 () Bool)

(assert (=> b!5423214 (= e!3360943 (matchZipper!1450 (derivationStepZipper!1445 lt!2211294 (head!11632 s!2326)) (tail!10729 s!2326)))))

(assert (= (and d!1729919 c!945921) b!5423213))

(assert (= (and d!1729919 (not c!945921)) b!5423214))

(assert (=> d!1729919 m!6446748))

(declare-fun m!6447392 () Bool)

(assert (=> b!5423213 m!6447392))

(assert (=> b!5423214 m!6446760))

(assert (=> b!5423214 m!6446760))

(declare-fun m!6447394 () Bool)

(assert (=> b!5423214 m!6447394))

(assert (=> b!5423214 m!6446756))

(assert (=> b!5423214 m!6447394))

(assert (=> b!5423214 m!6446756))

(declare-fun m!6447396 () Bool)

(assert (=> b!5423214 m!6447396))

(assert (=> b!5422291 d!1729919))

(declare-fun bs!1252957 () Bool)

(declare-fun d!1729921 () Bool)

(assert (= bs!1252957 (and d!1729921 b!5422280)))

(declare-fun lambda!284151 () Int)

(assert (=> bs!1252957 (= lambda!284151 lambda!284044)))

(declare-fun bs!1252958 () Bool)

(assert (= bs!1252958 (and d!1729921 d!1729715)))

(assert (=> bs!1252958 (= lambda!284151 lambda!284106)))

(declare-fun bs!1252959 () Bool)

(assert (= bs!1252959 (and d!1729921 d!1729835)))

(assert (=> bs!1252959 (= lambda!284151 lambda!284140)))

(declare-fun bs!1252960 () Bool)

(assert (= bs!1252960 (and d!1729921 d!1729711)))

(assert (=> bs!1252960 (= lambda!284151 lambda!284100)))

(declare-fun bs!1252961 () Bool)

(assert (= bs!1252961 (and d!1729921 d!1729871)))

(assert (=> bs!1252961 (= lambda!284151 lambda!284145)))

(declare-fun bs!1252962 () Bool)

(assert (= bs!1252962 (and d!1729921 d!1729713)))

(assert (=> bs!1252962 (= lambda!284151 lambda!284103)))

(assert (=> d!1729921 (= (inv!81263 setElem!35336) (forall!14550 (exprs!5090 setElem!35336) lambda!284151))))

(declare-fun bs!1252963 () Bool)

(assert (= bs!1252963 d!1729921))

(declare-fun m!6447398 () Bool)

(assert (=> bs!1252963 m!6447398))

(assert (=> setNonEmpty!35336 d!1729921))

(declare-fun d!1729923 () Bool)

(assert (=> d!1729923 (= (isEmpty!33795 (t!375142 zl!343)) (is-Nil!61795 (t!375142 zl!343)))))

(assert (=> b!5422292 d!1729923))

(declare-fun d!1729925 () Bool)

(declare-fun lt!2211659 () Regex!15206)

(assert (=> d!1729925 (validRegex!6942 lt!2211659)))

(assert (=> d!1729925 (= lt!2211659 (generalisedUnion!1135 (unfocusZipperList!648 (Cons!61795 lt!2211305 Nil!61795))))))

(assert (=> d!1729925 (= (unfocusZipper!948 (Cons!61795 lt!2211305 Nil!61795)) lt!2211659)))

(declare-fun bs!1252964 () Bool)

(assert (= bs!1252964 d!1729925))

(declare-fun m!6447400 () Bool)

(assert (=> bs!1252964 m!6447400))

(declare-fun m!6447402 () Bool)

(assert (=> bs!1252964 m!6447402))

(assert (=> bs!1252964 m!6447402))

(declare-fun m!6447404 () Bool)

(assert (=> bs!1252964 m!6447404))

(assert (=> b!5422290 d!1729925))

(assert (=> b!5422250 d!1729879))

(declare-fun b!5423235 () Bool)

(declare-fun e!3360959 () Bool)

(declare-fun lt!2211660 () Bool)

(assert (=> b!5423235 (= e!3360959 (not lt!2211660))))

(declare-fun b!5423236 () Bool)

(declare-fun res!2307547 () Bool)

(declare-fun e!3360956 () Bool)

(assert (=> b!5423236 (=> (not res!2307547) (not e!3360956))))

(declare-fun call!388158 () Bool)

(assert (=> b!5423236 (= res!2307547 (not call!388158))))

(declare-fun b!5423237 () Bool)

(declare-fun res!2307543 () Bool)

(declare-fun e!3360961 () Bool)

(assert (=> b!5423237 (=> res!2307543 e!3360961)))

(assert (=> b!5423237 (= res!2307543 (not (isEmpty!33798 (tail!10729 (_2!35708 lt!2211270)))))))

(declare-fun b!5423238 () Bool)

(declare-fun e!3360960 () Bool)

(declare-fun e!3360962 () Bool)

(assert (=> b!5423238 (= e!3360960 e!3360962)))

(declare-fun res!2307545 () Bool)

(assert (=> b!5423238 (=> (not res!2307545) (not e!3360962))))

(assert (=> b!5423238 (= res!2307545 (not lt!2211660))))

(declare-fun b!5423239 () Bool)

(declare-fun res!2307548 () Bool)

(assert (=> b!5423239 (=> (not res!2307548) (not e!3360956))))

(assert (=> b!5423239 (= res!2307548 (isEmpty!33798 (tail!10729 (_2!35708 lt!2211270))))))

(declare-fun b!5423241 () Bool)

(assert (=> b!5423241 (= e!3360962 e!3360961)))

(declare-fun res!2307546 () Bool)

(assert (=> b!5423241 (=> res!2307546 e!3360961)))

(assert (=> b!5423241 (= res!2307546 call!388158)))

(declare-fun b!5423242 () Bool)

(declare-fun e!3360957 () Bool)

(assert (=> b!5423242 (= e!3360957 (nullable!5375 lt!2211306))))

(declare-fun b!5423243 () Bool)

(assert (=> b!5423243 (= e!3360956 (= (head!11632 (_2!35708 lt!2211270)) (c!945702 lt!2211306)))))

(declare-fun b!5423244 () Bool)

(assert (=> b!5423244 (= e!3360961 (not (= (head!11632 (_2!35708 lt!2211270)) (c!945702 lt!2211306))))))

(declare-fun bm!388153 () Bool)

(assert (=> bm!388153 (= call!388158 (isEmpty!33798 (_2!35708 lt!2211270)))))

(declare-fun b!5423245 () Bool)

(declare-fun res!2307550 () Bool)

(assert (=> b!5423245 (=> res!2307550 e!3360960)))

(assert (=> b!5423245 (= res!2307550 e!3360956)))

(declare-fun res!2307549 () Bool)

(assert (=> b!5423245 (=> (not res!2307549) (not e!3360956))))

(assert (=> b!5423245 (= res!2307549 lt!2211660)))

(declare-fun b!5423246 () Bool)

(assert (=> b!5423246 (= e!3360957 (matchR!7391 (derivativeStep!4278 lt!2211306 (head!11632 (_2!35708 lt!2211270))) (tail!10729 (_2!35708 lt!2211270))))))

(declare-fun b!5423247 () Bool)

(declare-fun e!3360958 () Bool)

(assert (=> b!5423247 (= e!3360958 e!3360959)))

(declare-fun c!945932 () Bool)

(assert (=> b!5423247 (= c!945932 (is-EmptyLang!15206 lt!2211306))))

(declare-fun b!5423248 () Bool)

(declare-fun res!2307544 () Bool)

(assert (=> b!5423248 (=> res!2307544 e!3360960)))

(assert (=> b!5423248 (= res!2307544 (not (is-ElementMatch!15206 lt!2211306)))))

(assert (=> b!5423248 (= e!3360959 e!3360960)))

(declare-fun b!5423240 () Bool)

(assert (=> b!5423240 (= e!3360958 (= lt!2211660 call!388158))))

(declare-fun d!1729927 () Bool)

(assert (=> d!1729927 e!3360958))

(declare-fun c!945930 () Bool)

(assert (=> d!1729927 (= c!945930 (is-EmptyExpr!15206 lt!2211306))))

(assert (=> d!1729927 (= lt!2211660 e!3360957)))

(declare-fun c!945931 () Bool)

(assert (=> d!1729927 (= c!945931 (isEmpty!33798 (_2!35708 lt!2211270)))))

(assert (=> d!1729927 (validRegex!6942 lt!2211306)))

(assert (=> d!1729927 (= (matchR!7391 lt!2211306 (_2!35708 lt!2211270)) lt!2211660)))

(assert (= (and d!1729927 c!945931) b!5423242))

(assert (= (and d!1729927 (not c!945931)) b!5423246))

(assert (= (and d!1729927 c!945930) b!5423240))

(assert (= (and d!1729927 (not c!945930)) b!5423247))

(assert (= (and b!5423247 c!945932) b!5423235))

(assert (= (and b!5423247 (not c!945932)) b!5423248))

(assert (= (and b!5423248 (not res!2307544)) b!5423245))

(assert (= (and b!5423245 res!2307549) b!5423236))

(assert (= (and b!5423236 res!2307547) b!5423239))

(assert (= (and b!5423239 res!2307548) b!5423243))

(assert (= (and b!5423245 (not res!2307550)) b!5423238))

(assert (= (and b!5423238 res!2307545) b!5423241))

(assert (= (and b!5423241 (not res!2307546)) b!5423237))

(assert (= (and b!5423237 (not res!2307543)) b!5423244))

(assert (= (or b!5423240 b!5423236 b!5423241) bm!388153))

(declare-fun m!6447406 () Bool)

(assert (=> d!1729927 m!6447406))

(assert (=> d!1729927 m!6447120))

(declare-fun m!6447408 () Bool)

(assert (=> b!5423237 m!6447408))

(assert (=> b!5423237 m!6447408))

(declare-fun m!6447410 () Bool)

(assert (=> b!5423237 m!6447410))

(declare-fun m!6447412 () Bool)

(assert (=> b!5423246 m!6447412))

(assert (=> b!5423246 m!6447412))

(declare-fun m!6447414 () Bool)

(assert (=> b!5423246 m!6447414))

(assert (=> b!5423246 m!6447408))

(assert (=> b!5423246 m!6447414))

(assert (=> b!5423246 m!6447408))

(declare-fun m!6447416 () Bool)

(assert (=> b!5423246 m!6447416))

(assert (=> b!5423239 m!6447408))

(assert (=> b!5423239 m!6447408))

(assert (=> b!5423239 m!6447410))

(assert (=> b!5423242 m!6447308))

(assert (=> b!5423243 m!6447412))

(assert (=> b!5423244 m!6447412))

(assert (=> bm!388153 m!6447406))

(assert (=> b!5422268 d!1729927))

(assert (=> b!5422269 d!1729883))

(declare-fun b!5423249 () Bool)

(declare-fun res!2307555 () Bool)

(declare-fun e!3360963 () Bool)

(assert (=> b!5423249 (=> (not res!2307555) (not e!3360963))))

(declare-fun lt!2211663 () Option!15317)

(assert (=> b!5423249 (= res!2307555 (matchR!7391 (regTwo!30924 r!7292) (_2!35708 (get!21312 lt!2211663))))))

(declare-fun b!5423250 () Bool)

(declare-fun lt!2211662 () Unit!154346)

(declare-fun lt!2211661 () Unit!154346)

(assert (=> b!5423250 (= lt!2211662 lt!2211661)))

(assert (=> b!5423250 (= (++!13585 (++!13585 Nil!61793 (Cons!61793 (h!68241 s!2326) Nil!61793)) (t!375140 s!2326)) s!2326)))

(assert (=> b!5423250 (= lt!2211661 (lemmaMoveElementToOtherListKeepsConcatEq!1852 Nil!61793 (h!68241 s!2326) (t!375140 s!2326) s!2326))))

(declare-fun e!3360967 () Option!15317)

(assert (=> b!5423250 (= e!3360967 (findConcatSeparation!1731 (regOne!30924 r!7292) (regTwo!30924 r!7292) (++!13585 Nil!61793 (Cons!61793 (h!68241 s!2326) Nil!61793)) (t!375140 s!2326) s!2326))))

(declare-fun b!5423251 () Bool)

(assert (=> b!5423251 (= e!3360963 (= (++!13585 (_1!35708 (get!21312 lt!2211663)) (_2!35708 (get!21312 lt!2211663))) s!2326))))

(declare-fun b!5423252 () Bool)

(declare-fun e!3360965 () Option!15317)

(assert (=> b!5423252 (= e!3360965 (Some!15316 (tuple2!64811 Nil!61793 s!2326)))))

(declare-fun b!5423253 () Bool)

(assert (=> b!5423253 (= e!3360965 e!3360967)))

(declare-fun c!945933 () Bool)

(assert (=> b!5423253 (= c!945933 (is-Nil!61793 s!2326))))

(declare-fun b!5423255 () Bool)

(declare-fun e!3360966 () Bool)

(assert (=> b!5423255 (= e!3360966 (not (isDefined!12020 lt!2211663)))))

(declare-fun b!5423256 () Bool)

(declare-fun res!2307553 () Bool)

(assert (=> b!5423256 (=> (not res!2307553) (not e!3360963))))

(assert (=> b!5423256 (= res!2307553 (matchR!7391 (regOne!30924 r!7292) (_1!35708 (get!21312 lt!2211663))))))

(declare-fun b!5423257 () Bool)

(assert (=> b!5423257 (= e!3360967 None!15316)))

(declare-fun b!5423254 () Bool)

(declare-fun e!3360964 () Bool)

(assert (=> b!5423254 (= e!3360964 (matchR!7391 (regTwo!30924 r!7292) s!2326))))

(declare-fun d!1729929 () Bool)

(assert (=> d!1729929 e!3360966))

(declare-fun res!2307554 () Bool)

(assert (=> d!1729929 (=> res!2307554 e!3360966)))

(assert (=> d!1729929 (= res!2307554 e!3360963)))

(declare-fun res!2307552 () Bool)

(assert (=> d!1729929 (=> (not res!2307552) (not e!3360963))))

(assert (=> d!1729929 (= res!2307552 (isDefined!12020 lt!2211663))))

(assert (=> d!1729929 (= lt!2211663 e!3360965)))

(declare-fun c!945934 () Bool)

(assert (=> d!1729929 (= c!945934 e!3360964)))

(declare-fun res!2307551 () Bool)

(assert (=> d!1729929 (=> (not res!2307551) (not e!3360964))))

(assert (=> d!1729929 (= res!2307551 (matchR!7391 (regOne!30924 r!7292) Nil!61793))))

(assert (=> d!1729929 (validRegex!6942 (regOne!30924 r!7292))))

(assert (=> d!1729929 (= (findConcatSeparation!1731 (regOne!30924 r!7292) (regTwo!30924 r!7292) Nil!61793 s!2326 s!2326) lt!2211663)))

(assert (= (and d!1729929 res!2307551) b!5423254))

(assert (= (and d!1729929 c!945934) b!5423252))

(assert (= (and d!1729929 (not c!945934)) b!5423253))

(assert (= (and b!5423253 c!945933) b!5423257))

(assert (= (and b!5423253 (not c!945933)) b!5423250))

(assert (= (and d!1729929 res!2307552) b!5423256))

(assert (= (and b!5423256 res!2307553) b!5423249))

(assert (= (and b!5423249 res!2307555) b!5423251))

(assert (= (and d!1729929 (not res!2307554)) b!5423255))

(declare-fun m!6447418 () Bool)

(assert (=> d!1729929 m!6447418))

(declare-fun m!6447420 () Bool)

(assert (=> d!1729929 m!6447420))

(declare-fun m!6447422 () Bool)

(assert (=> d!1729929 m!6447422))

(assert (=> b!5423250 m!6447206))

(assert (=> b!5423250 m!6447206))

(assert (=> b!5423250 m!6447208))

(assert (=> b!5423250 m!6447210))

(assert (=> b!5423250 m!6447206))

(declare-fun m!6447424 () Bool)

(assert (=> b!5423250 m!6447424))

(assert (=> b!5423254 m!6447214))

(assert (=> b!5423255 m!6447418))

(declare-fun m!6447426 () Bool)

(assert (=> b!5423256 m!6447426))

(declare-fun m!6447428 () Bool)

(assert (=> b!5423256 m!6447428))

(assert (=> b!5423251 m!6447426))

(declare-fun m!6447430 () Bool)

(assert (=> b!5423251 m!6447430))

(assert (=> b!5423249 m!6447426))

(declare-fun m!6447432 () Bool)

(assert (=> b!5423249 m!6447432))

(assert (=> b!5422277 d!1729929))

(declare-fun d!1729931 () Bool)

(assert (=> d!1729931 (= (Exists!2387 lambda!284040) (choose!41098 lambda!284040))))

(declare-fun bs!1252967 () Bool)

(assert (= bs!1252967 d!1729931))

(declare-fun m!6447434 () Bool)

(assert (=> bs!1252967 m!6447434))

(assert (=> b!5422277 d!1729931))

(declare-fun d!1729933 () Bool)

(assert (=> d!1729933 (= (Exists!2387 lambda!284041) (choose!41098 lambda!284041))))

(declare-fun bs!1252968 () Bool)

(assert (= bs!1252968 d!1729933))

(declare-fun m!6447436 () Bool)

(assert (=> bs!1252968 m!6447436))

(assert (=> b!5422277 d!1729933))

(declare-fun bs!1252969 () Bool)

(declare-fun d!1729935 () Bool)

(assert (= bs!1252969 (and d!1729935 b!5422281)))

(declare-fun lambda!284155 () Int)

(assert (=> bs!1252969 (not (= lambda!284155 lambda!284049))))

(declare-fun bs!1252970 () Bool)

(assert (= bs!1252970 (and d!1729935 d!1729729)))

(assert (=> bs!1252970 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284155 lambda!284121))))

(declare-fun bs!1252971 () Bool)

(assert (= bs!1252971 (and d!1729935 b!5423178)))

(assert (=> bs!1252971 (not (= lambda!284155 lambda!284147))))

(declare-fun bs!1252972 () Bool)

(assert (= bs!1252972 (and d!1729935 d!1729727)))

(assert (=> bs!1252972 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284155 lambda!284117))))

(declare-fun bs!1252973 () Bool)

(assert (= bs!1252973 (and d!1729935 b!5422732)))

(assert (=> bs!1252973 (not (= lambda!284155 lambda!284128))))

(declare-fun bs!1252974 () Bool)

(assert (= bs!1252974 (and d!1729935 b!5422286)))

(assert (=> bs!1252974 (= (= (regOne!30924 r!7292) lt!2211321) (= lambda!284155 lambda!284045))))

(declare-fun bs!1252975 () Bool)

(assert (= bs!1252975 (and d!1729935 b!5422640)))

(assert (=> bs!1252975 (not (= lambda!284155 lambda!284112))))

(declare-fun bs!1252976 () Bool)

(assert (= bs!1252976 (and d!1729935 d!1729845)))

(assert (=> bs!1252976 (not (= lambda!284155 lambda!284142))))

(declare-fun bs!1252977 () Bool)

(assert (= bs!1252977 (and d!1729935 b!5423179)))

(assert (=> bs!1252977 (not (= lambda!284155 lambda!284146))))

(assert (=> bs!1252969 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284155 lambda!284047))))

(declare-fun bs!1252978 () Bool)

(assert (= bs!1252978 (and d!1729935 d!1729731)))

(assert (=> bs!1252978 (not (= lambda!284155 lambda!284127))))

(declare-fun bs!1252979 () Bool)

(assert (= bs!1252979 (and d!1729935 b!5422277)))

(assert (=> bs!1252979 (= lambda!284155 lambda!284040)))

(declare-fun bs!1252980 () Bool)

(assert (= bs!1252980 (and d!1729935 b!5422641)))

(assert (=> bs!1252980 (not (= lambda!284155 lambda!284111))))

(declare-fun bs!1252981 () Bool)

(assert (= bs!1252981 (and d!1729935 b!5422978)))

(assert (=> bs!1252981 (not (= lambda!284155 lambda!284135))))

(assert (=> bs!1252972 (not (= lambda!284155 lambda!284118))))

(assert (=> bs!1252976 (= (= (regOne!30924 r!7292) lt!2211321) (= lambda!284155 lambda!284141))))

(assert (=> bs!1252979 (not (= lambda!284155 lambda!284041))))

(assert (=> bs!1252978 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) (Star!15206 (reg!15535 (regOne!30924 r!7292))))) (= lambda!284155 lambda!284126))))

(declare-fun bs!1252982 () Bool)

(assert (= bs!1252982 (and d!1729935 b!5422977)))

(assert (=> bs!1252982 (not (= lambda!284155 lambda!284136))))

(declare-fun bs!1252983 () Bool)

(assert (= bs!1252983 (and d!1729935 b!5422731)))

(assert (=> bs!1252983 (not (= lambda!284155 lambda!284129))))

(assert (=> bs!1252974 (not (= lambda!284155 lambda!284046))))

(declare-fun bs!1252984 () Bool)

(assert (= bs!1252984 (and d!1729935 d!1729819)))

(assert (=> bs!1252984 (= (= (regOne!30924 r!7292) lt!2211321) (= lambda!284155 lambda!284137))))

(assert (=> bs!1252969 (not (= lambda!284155 lambda!284048))))

(assert (=> d!1729935 true))

(assert (=> d!1729935 true))

(assert (=> d!1729935 true))

(assert (=> d!1729935 (= (isDefined!12020 (findConcatSeparation!1731 (regOne!30924 r!7292) (regTwo!30924 r!7292) Nil!61793 s!2326 s!2326)) (Exists!2387 lambda!284155))))

(declare-fun lt!2211665 () Unit!154346)

(assert (=> d!1729935 (= lt!2211665 (choose!41095 (regOne!30924 r!7292) (regTwo!30924 r!7292) s!2326))))

(assert (=> d!1729935 (validRegex!6942 (regOne!30924 r!7292))))

(assert (=> d!1729935 (= (lemmaFindConcatSeparationEquivalentToExists!1495 (regOne!30924 r!7292) (regTwo!30924 r!7292) s!2326) lt!2211665)))

(declare-fun bs!1252985 () Bool)

(assert (= bs!1252985 d!1729935))

(declare-fun m!6447458 () Bool)

(assert (=> bs!1252985 m!6447458))

(assert (=> bs!1252985 m!6447422))

(declare-fun m!6447460 () Bool)

(assert (=> bs!1252985 m!6447460))

(assert (=> bs!1252985 m!6446454))

(assert (=> bs!1252985 m!6446456))

(assert (=> bs!1252985 m!6446454))

(assert (=> b!5422277 d!1729935))

(declare-fun bs!1252989 () Bool)

(declare-fun d!1729939 () Bool)

(assert (= bs!1252989 (and d!1729939 b!5422281)))

(declare-fun lambda!284159 () Int)

(assert (=> bs!1252989 (not (= lambda!284159 lambda!284049))))

(declare-fun bs!1252990 () Bool)

(assert (= bs!1252990 (and d!1729939 d!1729729)))

(assert (=> bs!1252990 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284159 lambda!284121))))

(declare-fun bs!1252991 () Bool)

(assert (= bs!1252991 (and d!1729939 b!5423178)))

(assert (=> bs!1252991 (not (= lambda!284159 lambda!284147))))

(declare-fun bs!1252992 () Bool)

(assert (= bs!1252992 (and d!1729939 d!1729935)))

(assert (=> bs!1252992 (= lambda!284159 lambda!284155)))

(declare-fun bs!1252993 () Bool)

(assert (= bs!1252993 (and d!1729939 d!1729727)))

(assert (=> bs!1252993 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284159 lambda!284117))))

(declare-fun bs!1252994 () Bool)

(assert (= bs!1252994 (and d!1729939 b!5422732)))

(assert (=> bs!1252994 (not (= lambda!284159 lambda!284128))))

(declare-fun bs!1252995 () Bool)

(assert (= bs!1252995 (and d!1729939 b!5422286)))

(assert (=> bs!1252995 (= (= (regOne!30924 r!7292) lt!2211321) (= lambda!284159 lambda!284045))))

(declare-fun bs!1252996 () Bool)

(assert (= bs!1252996 (and d!1729939 b!5422640)))

(assert (=> bs!1252996 (not (= lambda!284159 lambda!284112))))

(declare-fun bs!1252997 () Bool)

(assert (= bs!1252997 (and d!1729939 d!1729845)))

(assert (=> bs!1252997 (not (= lambda!284159 lambda!284142))))

(declare-fun bs!1252998 () Bool)

(assert (= bs!1252998 (and d!1729939 b!5423179)))

(assert (=> bs!1252998 (not (= lambda!284159 lambda!284146))))

(assert (=> bs!1252989 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284159 lambda!284047))))

(declare-fun bs!1252999 () Bool)

(assert (= bs!1252999 (and d!1729939 d!1729731)))

(assert (=> bs!1252999 (not (= lambda!284159 lambda!284127))))

(declare-fun bs!1253000 () Bool)

(assert (= bs!1253000 (and d!1729939 b!5422277)))

(assert (=> bs!1253000 (= lambda!284159 lambda!284040)))

(declare-fun bs!1253001 () Bool)

(assert (= bs!1253001 (and d!1729939 b!5422641)))

(assert (=> bs!1253001 (not (= lambda!284159 lambda!284111))))

(declare-fun bs!1253002 () Bool)

(assert (= bs!1253002 (and d!1729939 b!5422978)))

(assert (=> bs!1253002 (not (= lambda!284159 lambda!284135))))

(assert (=> bs!1252993 (not (= lambda!284159 lambda!284118))))

(assert (=> bs!1252997 (= (= (regOne!30924 r!7292) lt!2211321) (= lambda!284159 lambda!284141))))

(assert (=> bs!1253000 (not (= lambda!284159 lambda!284041))))

(assert (=> bs!1252999 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) (Star!15206 (reg!15535 (regOne!30924 r!7292))))) (= lambda!284159 lambda!284126))))

(declare-fun bs!1253003 () Bool)

(assert (= bs!1253003 (and d!1729939 b!5422977)))

(assert (=> bs!1253003 (not (= lambda!284159 lambda!284136))))

(declare-fun bs!1253004 () Bool)

(assert (= bs!1253004 (and d!1729939 b!5422731)))

(assert (=> bs!1253004 (not (= lambda!284159 lambda!284129))))

(assert (=> bs!1252995 (not (= lambda!284159 lambda!284046))))

(declare-fun bs!1253005 () Bool)

(assert (= bs!1253005 (and d!1729939 d!1729819)))

(assert (=> bs!1253005 (= (= (regOne!30924 r!7292) lt!2211321) (= lambda!284159 lambda!284137))))

(assert (=> bs!1252989 (not (= lambda!284159 lambda!284048))))

(assert (=> d!1729939 true))

(assert (=> d!1729939 true))

(assert (=> d!1729939 true))

(declare-fun lambda!284160 () Int)

(assert (=> bs!1252989 (not (= lambda!284160 lambda!284049))))

(assert (=> bs!1252990 (not (= lambda!284160 lambda!284121))))

(assert (=> bs!1252991 (= lambda!284160 lambda!284147)))

(assert (=> bs!1252992 (not (= lambda!284160 lambda!284155))))

(assert (=> bs!1252993 (not (= lambda!284160 lambda!284117))))

(assert (=> bs!1252994 (not (= lambda!284160 lambda!284128))))

(assert (=> bs!1252995 (not (= lambda!284160 lambda!284045))))

(assert (=> bs!1252996 (= (and (= (regOne!30924 r!7292) (regOne!30924 lt!2211288)) (= (regTwo!30924 r!7292) (regTwo!30924 lt!2211288))) (= lambda!284160 lambda!284112))))

(assert (=> bs!1252997 (= (= (regOne!30924 r!7292) lt!2211321) (= lambda!284160 lambda!284142))))

(assert (=> bs!1252998 (not (= lambda!284160 lambda!284146))))

(assert (=> bs!1252989 (not (= lambda!284160 lambda!284047))))

(assert (=> bs!1252999 (not (= lambda!284160 lambda!284127))))

(declare-fun bs!1253006 () Bool)

(assert (= bs!1253006 d!1729939))

(assert (=> bs!1253006 (not (= lambda!284160 lambda!284159))))

(assert (=> bs!1253000 (not (= lambda!284160 lambda!284040))))

(assert (=> bs!1253001 (not (= lambda!284160 lambda!284111))))

(assert (=> bs!1253002 (not (= lambda!284160 lambda!284135))))

(assert (=> bs!1252993 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284160 lambda!284118))))

(assert (=> bs!1252997 (not (= lambda!284160 lambda!284141))))

(assert (=> bs!1253000 (= lambda!284160 lambda!284041)))

(assert (=> bs!1252999 (not (= lambda!284160 lambda!284126))))

(assert (=> bs!1253003 (= (and (= (regOne!30924 r!7292) (regOne!30924 lt!2211310)) (= (regTwo!30924 r!7292) (regTwo!30924 lt!2211310))) (= lambda!284160 lambda!284136))))

(assert (=> bs!1253004 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (regOne!30924 lt!2211321)) (= (regTwo!30924 r!7292) (regTwo!30924 lt!2211321))) (= lambda!284160 lambda!284129))))

(assert (=> bs!1252995 (= (= (regOne!30924 r!7292) lt!2211321) (= lambda!284160 lambda!284046))))

(assert (=> bs!1253005 (not (= lambda!284160 lambda!284137))))

(assert (=> bs!1252989 (= (and (= s!2326 (_1!35708 lt!2211317)) (= (regOne!30924 r!7292) (reg!15535 (regOne!30924 r!7292))) (= (regTwo!30924 r!7292) lt!2211306)) (= lambda!284160 lambda!284048))))

(assert (=> d!1729939 true))

(assert (=> d!1729939 true))

(assert (=> d!1729939 true))

(assert (=> d!1729939 (= (Exists!2387 lambda!284159) (Exists!2387 lambda!284160))))

(declare-fun lt!2211669 () Unit!154346)

(assert (=> d!1729939 (= lt!2211669 (choose!41094 (regOne!30924 r!7292) (regTwo!30924 r!7292) s!2326))))

(assert (=> d!1729939 (validRegex!6942 (regOne!30924 r!7292))))

(assert (=> d!1729939 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1041 (regOne!30924 r!7292) (regTwo!30924 r!7292) s!2326) lt!2211669)))

(declare-fun m!6447466 () Bool)

(assert (=> bs!1253006 m!6447466))

(declare-fun m!6447468 () Bool)

(assert (=> bs!1253006 m!6447468))

(declare-fun m!6447470 () Bool)

(assert (=> bs!1253006 m!6447470))

(assert (=> bs!1253006 m!6447422))

(assert (=> b!5422277 d!1729939))

(declare-fun d!1729943 () Bool)

(assert (=> d!1729943 (= (isDefined!12020 (findConcatSeparation!1731 (regOne!30924 r!7292) (regTwo!30924 r!7292) Nil!61793 s!2326 s!2326)) (not (isEmpty!33799 (findConcatSeparation!1731 (regOne!30924 r!7292) (regTwo!30924 r!7292) Nil!61793 s!2326 s!2326))))))

(declare-fun bs!1253007 () Bool)

(assert (= bs!1253007 d!1729943))

(assert (=> bs!1253007 m!6446454))

(declare-fun m!6447472 () Bool)

(assert (=> bs!1253007 m!6447472))

(assert (=> b!5422277 d!1729943))

(declare-fun d!1729945 () Bool)

(assert (=> d!1729945 (= (flatMap!933 z!1189 lambda!284042) (choose!41104 z!1189 lambda!284042))))

(declare-fun bs!1253008 () Bool)

(assert (= bs!1253008 d!1729945))

(declare-fun m!6447474 () Bool)

(assert (=> bs!1253008 m!6447474))

(assert (=> b!5422255 d!1729945))

(declare-fun d!1729947 () Bool)

(assert (=> d!1729947 (= (nullable!5375 (h!68242 (exprs!5090 (h!68243 zl!343)))) (nullableFct!1608 (h!68242 (exprs!5090 (h!68243 zl!343)))))))

(declare-fun bs!1253009 () Bool)

(assert (= bs!1253009 d!1729947))

(declare-fun m!6447476 () Bool)

(assert (=> bs!1253009 m!6447476))

(assert (=> b!5422255 d!1729947))

(declare-fun b!5423274 () Bool)

(declare-fun e!3360978 () (Set Context!9180))

(declare-fun e!3360979 () (Set Context!9180))

(assert (=> b!5423274 (= e!3360978 e!3360979)))

(declare-fun c!945943 () Bool)

(assert (=> b!5423274 (= c!945943 (is-Cons!61794 (exprs!5090 (Context!9181 (Cons!61794 (h!68242 (exprs!5090 (h!68243 zl!343))) (t!375141 (exprs!5090 (h!68243 zl!343))))))))))

(declare-fun b!5423275 () Bool)

(declare-fun call!388159 () (Set Context!9180))

(assert (=> b!5423275 (= e!3360979 call!388159)))

(declare-fun b!5423276 () Bool)

(declare-fun e!3360977 () Bool)

(assert (=> b!5423276 (= e!3360977 (nullable!5375 (h!68242 (exprs!5090 (Context!9181 (Cons!61794 (h!68242 (exprs!5090 (h!68243 zl!343))) (t!375141 (exprs!5090 (h!68243 zl!343)))))))))))

(declare-fun b!5423277 () Bool)

(assert (=> b!5423277 (= e!3360978 (set.union call!388159 (derivationStepZipperUp!578 (Context!9181 (t!375141 (exprs!5090 (Context!9181 (Cons!61794 (h!68242 (exprs!5090 (h!68243 zl!343))) (t!375141 (exprs!5090 (h!68243 zl!343)))))))) (h!68241 s!2326))))))

(declare-fun b!5423278 () Bool)

(assert (=> b!5423278 (= e!3360979 (as set.empty (Set Context!9180)))))

(declare-fun bm!388154 () Bool)

(assert (=> bm!388154 (= call!388159 (derivationStepZipperDown!654 (h!68242 (exprs!5090 (Context!9181 (Cons!61794 (h!68242 (exprs!5090 (h!68243 zl!343))) (t!375141 (exprs!5090 (h!68243 zl!343))))))) (Context!9181 (t!375141 (exprs!5090 (Context!9181 (Cons!61794 (h!68242 (exprs!5090 (h!68243 zl!343))) (t!375141 (exprs!5090 (h!68243 zl!343)))))))) (h!68241 s!2326)))))

(declare-fun d!1729949 () Bool)

(declare-fun c!945942 () Bool)

(assert (=> d!1729949 (= c!945942 e!3360977)))

(declare-fun res!2307558 () Bool)

(assert (=> d!1729949 (=> (not res!2307558) (not e!3360977))))

(assert (=> d!1729949 (= res!2307558 (is-Cons!61794 (exprs!5090 (Context!9181 (Cons!61794 (h!68242 (exprs!5090 (h!68243 zl!343))) (t!375141 (exprs!5090 (h!68243 zl!343))))))))))

(assert (=> d!1729949 (= (derivationStepZipperUp!578 (Context!9181 (Cons!61794 (h!68242 (exprs!5090 (h!68243 zl!343))) (t!375141 (exprs!5090 (h!68243 zl!343))))) (h!68241 s!2326)) e!3360978)))

(assert (= (and d!1729949 res!2307558) b!5423276))

(assert (= (and d!1729949 c!945942) b!5423277))

(assert (= (and d!1729949 (not c!945942)) b!5423274))

(assert (= (and b!5423274 c!945943) b!5423275))

(assert (= (and b!5423274 (not c!945943)) b!5423278))

(assert (= (or b!5423277 b!5423275) bm!388154))

(declare-fun m!6447478 () Bool)

(assert (=> b!5423276 m!6447478))

(declare-fun m!6447480 () Bool)

(assert (=> b!5423277 m!6447480))

(declare-fun m!6447482 () Bool)

(assert (=> bm!388154 m!6447482))

(assert (=> b!5422255 d!1729949))

(declare-fun b!5423279 () Bool)

(declare-fun e!3360981 () (Set Context!9180))

(declare-fun e!3360982 () (Set Context!9180))

(assert (=> b!5423279 (= e!3360981 e!3360982)))

(declare-fun c!945945 () Bool)

(assert (=> b!5423279 (= c!945945 (is-Cons!61794 (exprs!5090 lt!2211267)))))

(declare-fun b!5423280 () Bool)

(declare-fun call!388160 () (Set Context!9180))

(assert (=> b!5423280 (= e!3360982 call!388160)))

(declare-fun b!5423281 () Bool)

(declare-fun e!3360980 () Bool)

(assert (=> b!5423281 (= e!3360980 (nullable!5375 (h!68242 (exprs!5090 lt!2211267))))))

(declare-fun b!5423282 () Bool)

(assert (=> b!5423282 (= e!3360981 (set.union call!388160 (derivationStepZipperUp!578 (Context!9181 (t!375141 (exprs!5090 lt!2211267))) (h!68241 s!2326))))))

(declare-fun b!5423283 () Bool)

(assert (=> b!5423283 (= e!3360982 (as set.empty (Set Context!9180)))))

(declare-fun bm!388155 () Bool)

(assert (=> bm!388155 (= call!388160 (derivationStepZipperDown!654 (h!68242 (exprs!5090 lt!2211267)) (Context!9181 (t!375141 (exprs!5090 lt!2211267))) (h!68241 s!2326)))))

(declare-fun d!1729951 () Bool)

(declare-fun c!945944 () Bool)

(assert (=> d!1729951 (= c!945944 e!3360980)))

(declare-fun res!2307559 () Bool)

(assert (=> d!1729951 (=> (not res!2307559) (not e!3360980))))

(assert (=> d!1729951 (= res!2307559 (is-Cons!61794 (exprs!5090 lt!2211267)))))

(assert (=> d!1729951 (= (derivationStepZipperUp!578 lt!2211267 (h!68241 s!2326)) e!3360981)))

(assert (= (and d!1729951 res!2307559) b!5423281))

(assert (= (and d!1729951 c!945944) b!5423282))

(assert (= (and d!1729951 (not c!945944)) b!5423279))

(assert (= (and b!5423279 c!945945) b!5423280))

(assert (= (and b!5423279 (not c!945945)) b!5423283))

(assert (= (or b!5423282 b!5423280) bm!388155))

(declare-fun m!6447484 () Bool)

(assert (=> b!5423281 m!6447484))

(declare-fun m!6447486 () Bool)

(assert (=> b!5423282 m!6447486))

(declare-fun m!6447488 () Bool)

(assert (=> bm!388155 m!6447488))

(assert (=> b!5422255 d!1729951))

(declare-fun b!5423284 () Bool)

(declare-fun e!3360984 () (Set Context!9180))

(assert (=> b!5423284 (= e!3360984 (as set.empty (Set Context!9180)))))

(declare-fun b!5423285 () Bool)

(declare-fun e!3360987 () (Set Context!9180))

(declare-fun call!388162 () (Set Context!9180))

(declare-fun call!388166 () (Set Context!9180))

(assert (=> b!5423285 (= e!3360987 (set.union call!388162 call!388166))))

(declare-fun bm!388156 () Bool)

(declare-fun call!388161 () List!61918)

(declare-fun call!388163 () List!61918)

(assert (=> bm!388156 (= call!388161 call!388163)))

(declare-fun b!5423286 () Bool)

(declare-fun e!3360983 () (Set Context!9180))

(declare-fun call!388164 () (Set Context!9180))

(assert (=> b!5423286 (= e!3360983 (set.union call!388162 call!388164))))

(declare-fun b!5423287 () Bool)

(declare-fun e!3360986 () (Set Context!9180))

(assert (=> b!5423287 (= e!3360986 (set.insert lt!2211267 (as set.empty (Set Context!9180))))))

(declare-fun b!5423288 () Bool)

(declare-fun call!388165 () (Set Context!9180))

(assert (=> b!5423288 (= e!3360984 call!388165)))

(declare-fun b!5423289 () Bool)

(declare-fun c!945949 () Bool)

(declare-fun e!3360985 () Bool)

(assert (=> b!5423289 (= c!945949 e!3360985)))

(declare-fun res!2307560 () Bool)

(assert (=> b!5423289 (=> (not res!2307560) (not e!3360985))))

(assert (=> b!5423289 (= res!2307560 (is-Concat!24051 (h!68242 (exprs!5090 (h!68243 zl!343)))))))

(assert (=> b!5423289 (= e!3360983 e!3360987)))

(declare-fun b!5423290 () Bool)

(declare-fun e!3360988 () (Set Context!9180))

(assert (=> b!5423290 (= e!3360988 call!388165)))

(declare-fun bm!388157 () Bool)

(assert (=> bm!388157 (= call!388166 call!388164)))

(declare-fun b!5423291 () Bool)

(assert (=> b!5423291 (= e!3360987 e!3360988)))

(declare-fun c!945946 () Bool)

(assert (=> b!5423291 (= c!945946 (is-Concat!24051 (h!68242 (exprs!5090 (h!68243 zl!343)))))))

(declare-fun c!945947 () Bool)

(declare-fun bm!388158 () Bool)

(assert (=> bm!388158 (= call!388164 (derivationStepZipperDown!654 (ite c!945947 (regTwo!30925 (h!68242 (exprs!5090 (h!68243 zl!343)))) (ite c!945949 (regTwo!30924 (h!68242 (exprs!5090 (h!68243 zl!343)))) (ite c!945946 (regOne!30924 (h!68242 (exprs!5090 (h!68243 zl!343)))) (reg!15535 (h!68242 (exprs!5090 (h!68243 zl!343))))))) (ite (or c!945947 c!945949) lt!2211267 (Context!9181 call!388161)) (h!68241 s!2326)))))

(declare-fun b!5423292 () Bool)

(assert (=> b!5423292 (= e!3360986 e!3360983)))

(assert (=> b!5423292 (= c!945947 (is-Union!15206 (h!68242 (exprs!5090 (h!68243 zl!343)))))))

(declare-fun bm!388159 () Bool)

(assert (=> bm!388159 (= call!388165 call!388166)))

(declare-fun bm!388160 () Bool)

(assert (=> bm!388160 (= call!388162 (derivationStepZipperDown!654 (ite c!945947 (regOne!30925 (h!68242 (exprs!5090 (h!68243 zl!343)))) (regOne!30924 (h!68242 (exprs!5090 (h!68243 zl!343))))) (ite c!945947 lt!2211267 (Context!9181 call!388163)) (h!68241 s!2326)))))

(declare-fun d!1729953 () Bool)

(declare-fun c!945950 () Bool)

(assert (=> d!1729953 (= c!945950 (and (is-ElementMatch!15206 (h!68242 (exprs!5090 (h!68243 zl!343)))) (= (c!945702 (h!68242 (exprs!5090 (h!68243 zl!343)))) (h!68241 s!2326))))))

(assert (=> d!1729953 (= (derivationStepZipperDown!654 (h!68242 (exprs!5090 (h!68243 zl!343))) lt!2211267 (h!68241 s!2326)) e!3360986)))

(declare-fun b!5423293 () Bool)

(declare-fun c!945948 () Bool)

(assert (=> b!5423293 (= c!945948 (is-Star!15206 (h!68242 (exprs!5090 (h!68243 zl!343)))))))

(assert (=> b!5423293 (= e!3360988 e!3360984)))

(declare-fun bm!388161 () Bool)

(assert (=> bm!388161 (= call!388163 ($colon$colon!1507 (exprs!5090 lt!2211267) (ite (or c!945949 c!945946) (regTwo!30924 (h!68242 (exprs!5090 (h!68243 zl!343)))) (h!68242 (exprs!5090 (h!68243 zl!343))))))))

(declare-fun b!5423294 () Bool)

(assert (=> b!5423294 (= e!3360985 (nullable!5375 (regOne!30924 (h!68242 (exprs!5090 (h!68243 zl!343))))))))

(assert (= (and d!1729953 c!945950) b!5423287))

(assert (= (and d!1729953 (not c!945950)) b!5423292))

(assert (= (and b!5423292 c!945947) b!5423286))

(assert (= (and b!5423292 (not c!945947)) b!5423289))

(assert (= (and b!5423289 res!2307560) b!5423294))

(assert (= (and b!5423289 c!945949) b!5423285))

(assert (= (and b!5423289 (not c!945949)) b!5423291))

(assert (= (and b!5423291 c!945946) b!5423290))

(assert (= (and b!5423291 (not c!945946)) b!5423293))

(assert (= (and b!5423293 c!945948) b!5423288))

(assert (= (and b!5423293 (not c!945948)) b!5423284))

(assert (= (or b!5423290 b!5423288) bm!388156))

(assert (= (or b!5423290 b!5423288) bm!388159))

(assert (= (or b!5423285 bm!388156) bm!388161))

(assert (= (or b!5423285 bm!388159) bm!388157))

(assert (= (or b!5423286 bm!388157) bm!388158))

(assert (= (or b!5423286 b!5423285) bm!388160))

(declare-fun m!6447490 () Bool)

(assert (=> bm!388161 m!6447490))

(declare-fun m!6447492 () Bool)

(assert (=> bm!388158 m!6447492))

(declare-fun m!6447494 () Bool)

(assert (=> bm!388160 m!6447494))

(declare-fun m!6447496 () Bool)

(assert (=> b!5423294 m!6447496))

(declare-fun m!6447498 () Bool)

(assert (=> b!5423287 m!6447498))

(assert (=> b!5422255 d!1729953))

(declare-fun d!1729955 () Bool)

(assert (=> d!1729955 (= (flatMap!933 z!1189 lambda!284042) (dynLambda!24354 lambda!284042 (h!68243 zl!343)))))

(declare-fun lt!2211676 () Unit!154346)

(assert (=> d!1729955 (= lt!2211676 (choose!41103 z!1189 (h!68243 zl!343) lambda!284042))))

(assert (=> d!1729955 (= z!1189 (set.insert (h!68243 zl!343) (as set.empty (Set Context!9180))))))

(assert (=> d!1729955 (= (lemmaFlatMapOnSingletonSet!465 z!1189 (h!68243 zl!343) lambda!284042) lt!2211676)))

(declare-fun b_lambda!206957 () Bool)

(assert (=> (not b_lambda!206957) (not d!1729955)))

(declare-fun bs!1253010 () Bool)

(assert (= bs!1253010 d!1729955))

(assert (=> bs!1253010 m!6446326))

(declare-fun m!6447500 () Bool)

(assert (=> bs!1253010 m!6447500))

(declare-fun m!6447502 () Bool)

(assert (=> bs!1253010 m!6447502))

(declare-fun m!6447504 () Bool)

(assert (=> bs!1253010 m!6447504))

(assert (=> b!5422255 d!1729955))

(declare-fun b!5423313 () Bool)

(declare-fun e!3361000 () (Set Context!9180))

(declare-fun e!3361001 () (Set Context!9180))

(assert (=> b!5423313 (= e!3361000 e!3361001)))

(declare-fun c!945956 () Bool)

(assert (=> b!5423313 (= c!945956 (is-Cons!61794 (exprs!5090 (h!68243 zl!343))))))

(declare-fun b!5423314 () Bool)

(declare-fun call!388167 () (Set Context!9180))

(assert (=> b!5423314 (= e!3361001 call!388167)))

(declare-fun b!5423315 () Bool)

(declare-fun e!3360999 () Bool)

(assert (=> b!5423315 (= e!3360999 (nullable!5375 (h!68242 (exprs!5090 (h!68243 zl!343)))))))

(declare-fun b!5423316 () Bool)

(assert (=> b!5423316 (= e!3361000 (set.union call!388167 (derivationStepZipperUp!578 (Context!9181 (t!375141 (exprs!5090 (h!68243 zl!343)))) (h!68241 s!2326))))))

(declare-fun b!5423317 () Bool)

(assert (=> b!5423317 (= e!3361001 (as set.empty (Set Context!9180)))))

(declare-fun bm!388162 () Bool)

(assert (=> bm!388162 (= call!388167 (derivationStepZipperDown!654 (h!68242 (exprs!5090 (h!68243 zl!343))) (Context!9181 (t!375141 (exprs!5090 (h!68243 zl!343)))) (h!68241 s!2326)))))

(declare-fun d!1729957 () Bool)

(declare-fun c!945955 () Bool)

(assert (=> d!1729957 (= c!945955 e!3360999)))

(declare-fun res!2307571 () Bool)

(assert (=> d!1729957 (=> (not res!2307571) (not e!3360999))))

(assert (=> d!1729957 (= res!2307571 (is-Cons!61794 (exprs!5090 (h!68243 zl!343))))))

(assert (=> d!1729957 (= (derivationStepZipperUp!578 (h!68243 zl!343) (h!68241 s!2326)) e!3361000)))

(assert (= (and d!1729957 res!2307571) b!5423315))

(assert (= (and d!1729957 c!945955) b!5423316))

(assert (= (and d!1729957 (not c!945955)) b!5423313))

(assert (= (and b!5423313 c!945956) b!5423314))

(assert (= (and b!5423313 (not c!945956)) b!5423317))

(assert (= (or b!5423316 b!5423314) bm!388162))

(assert (=> b!5423315 m!6446328))

(declare-fun m!6447506 () Bool)

(assert (=> b!5423316 m!6447506))

(declare-fun m!6447508 () Bool)

(assert (=> bm!388162 m!6447508))

(assert (=> b!5422255 d!1729957))

(declare-fun d!1729959 () Bool)

(assert (=> d!1729959 (= (flatMap!933 lt!2211294 lambda!284042) (choose!41104 lt!2211294 lambda!284042))))

(declare-fun bs!1253011 () Bool)

(assert (= bs!1253011 d!1729959))

(declare-fun m!6447510 () Bool)

(assert (=> bs!1253011 m!6447510))

(assert (=> b!5422276 d!1729959))

(declare-fun b!5423318 () Bool)

(declare-fun e!3361003 () (Set Context!9180))

(declare-fun e!3361004 () (Set Context!9180))

(assert (=> b!5423318 (= e!3361003 e!3361004)))

(declare-fun c!945958 () Bool)

(assert (=> b!5423318 (= c!945958 (is-Cons!61794 (exprs!5090 lt!2211305)))))

(declare-fun b!5423319 () Bool)

(declare-fun call!388168 () (Set Context!9180))

(assert (=> b!5423319 (= e!3361004 call!388168)))

(declare-fun b!5423320 () Bool)

(declare-fun e!3361002 () Bool)

(assert (=> b!5423320 (= e!3361002 (nullable!5375 (h!68242 (exprs!5090 lt!2211305))))))

(declare-fun b!5423321 () Bool)

(assert (=> b!5423321 (= e!3361003 (set.union call!388168 (derivationStepZipperUp!578 (Context!9181 (t!375141 (exprs!5090 lt!2211305))) (h!68241 s!2326))))))

(declare-fun b!5423322 () Bool)

(assert (=> b!5423322 (= e!3361004 (as set.empty (Set Context!9180)))))

(declare-fun bm!388163 () Bool)

(assert (=> bm!388163 (= call!388168 (derivationStepZipperDown!654 (h!68242 (exprs!5090 lt!2211305)) (Context!9181 (t!375141 (exprs!5090 lt!2211305))) (h!68241 s!2326)))))

(declare-fun d!1729961 () Bool)

(declare-fun c!945957 () Bool)

(assert (=> d!1729961 (= c!945957 e!3361002)))

(declare-fun res!2307572 () Bool)

(assert (=> d!1729961 (=> (not res!2307572) (not e!3361002))))

(assert (=> d!1729961 (= res!2307572 (is-Cons!61794 (exprs!5090 lt!2211305)))))

(assert (=> d!1729961 (= (derivationStepZipperUp!578 lt!2211305 (h!68241 s!2326)) e!3361003)))

(assert (= (and d!1729961 res!2307572) b!5423320))

(assert (= (and d!1729961 c!945957) b!5423321))

(assert (= (and d!1729961 (not c!945957)) b!5423318))

(assert (= (and b!5423318 c!945958) b!5423319))

(assert (= (and b!5423318 (not c!945958)) b!5423322))

(assert (= (or b!5423321 b!5423319) bm!388163))

(declare-fun m!6447512 () Bool)

(assert (=> b!5423320 m!6447512))

(declare-fun m!6447514 () Bool)

(assert (=> b!5423321 m!6447514))

(declare-fun m!6447516 () Bool)

(assert (=> bm!388163 m!6447516))

(assert (=> b!5422276 d!1729961))

(declare-fun d!1729963 () Bool)

(assert (=> d!1729963 (= (flatMap!933 lt!2211294 lambda!284042) (dynLambda!24354 lambda!284042 lt!2211305))))

(declare-fun lt!2211677 () Unit!154346)

(assert (=> d!1729963 (= lt!2211677 (choose!41103 lt!2211294 lt!2211305 lambda!284042))))

(assert (=> d!1729963 (= lt!2211294 (set.insert lt!2211305 (as set.empty (Set Context!9180))))))

(assert (=> d!1729963 (= (lemmaFlatMapOnSingletonSet!465 lt!2211294 lt!2211305 lambda!284042) lt!2211677)))

(declare-fun b_lambda!206959 () Bool)

(assert (=> (not b_lambda!206959) (not d!1729963)))

(declare-fun bs!1253012 () Bool)

(assert (= bs!1253012 d!1729963))

(assert (=> bs!1253012 m!6446340))

(declare-fun m!6447518 () Bool)

(assert (=> bs!1253012 m!6447518))

(declare-fun m!6447520 () Bool)

(assert (=> bs!1253012 m!6447520))

(assert (=> bs!1253012 m!6446332))

(assert (=> b!5422276 d!1729963))

(declare-fun bs!1253013 () Bool)

(declare-fun d!1729965 () Bool)

(assert (= bs!1253013 (and d!1729965 b!5422255)))

(declare-fun lambda!284163 () Int)

(assert (=> bs!1253013 (= lambda!284163 lambda!284042)))

(assert (=> d!1729965 true))

(assert (=> d!1729965 (= (derivationStepZipper!1445 lt!2211294 (h!68241 s!2326)) (flatMap!933 lt!2211294 lambda!284163))))

(declare-fun bs!1253014 () Bool)

(assert (= bs!1253014 d!1729965))

(declare-fun m!6447522 () Bool)

(assert (=> bs!1253014 m!6447522))

(assert (=> b!5422276 d!1729965))

(declare-fun d!1729967 () Bool)

(declare-fun e!3361012 () Bool)

(assert (=> d!1729967 e!3361012))

(declare-fun res!2307580 () Bool)

(assert (=> d!1729967 (=> (not res!2307580) (not e!3361012))))

(declare-fun lt!2211683 () List!61919)

(declare-fun noDuplicate!1408 (List!61919) Bool)

(assert (=> d!1729967 (= res!2307580 (noDuplicate!1408 lt!2211683))))

(declare-fun choose!41123 ((Set Context!9180)) List!61919)

(assert (=> d!1729967 (= lt!2211683 (choose!41123 z!1189))))

(assert (=> d!1729967 (= (toList!8990 z!1189) lt!2211683)))

(declare-fun b!5423336 () Bool)

(declare-fun content!11123 (List!61919) (Set Context!9180))

(assert (=> b!5423336 (= e!3361012 (= (content!11123 lt!2211683) z!1189))))

(assert (= (and d!1729967 res!2307580) b!5423336))

(declare-fun m!6447542 () Bool)

(assert (=> d!1729967 m!6447542))

(declare-fun m!6447544 () Bool)

(assert (=> d!1729967 m!6447544))

(declare-fun m!6447548 () Bool)

(assert (=> b!5423336 m!6447548))

(assert (=> b!5422274 d!1729967))

(declare-fun d!1729971 () Bool)

(assert (=> d!1729971 (= (get!21312 lt!2211274) (v!51345 lt!2211274))))

(assert (=> b!5422254 d!1729971))

(declare-fun d!1729975 () Bool)

(assert (=> d!1729975 (isDefined!12020 (findConcatSeparationZippers!63 lt!2211293 (set.insert lt!2211266 (as set.empty (Set Context!9180))) Nil!61793 s!2326 s!2326))))

(declare-fun lt!2211688 () Unit!154346)

(declare-fun choose!41124 ((Set Context!9180) Context!9180 List!61917) Unit!154346)

(assert (=> d!1729975 (= lt!2211688 (choose!41124 lt!2211293 lt!2211266 s!2326))))

(assert (=> d!1729975 (matchZipper!1450 (appendTo!65 lt!2211293 lt!2211266) s!2326)))

(assert (=> d!1729975 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!63 lt!2211293 lt!2211266 s!2326) lt!2211688)))

(declare-fun bs!1253017 () Bool)

(assert (= bs!1253017 d!1729975))

(declare-fun m!6447552 () Bool)

(assert (=> bs!1253017 m!6447552))

(declare-fun m!6447554 () Bool)

(assert (=> bs!1253017 m!6447554))

(assert (=> bs!1253017 m!6446274))

(assert (=> bs!1253017 m!6446296))

(assert (=> bs!1253017 m!6447552))

(assert (=> bs!1253017 m!6446274))

(declare-fun m!6447556 () Bool)

(assert (=> bs!1253017 m!6447556))

(assert (=> bs!1253017 m!6446296))

(declare-fun m!6447558 () Bool)

(assert (=> bs!1253017 m!6447558))

(assert (=> b!5422254 d!1729975))

(declare-fun b!5423367 () Bool)

(declare-fun e!3361030 () Bool)

(assert (=> b!5423367 (= e!3361030 (matchZipper!1450 lt!2211320 s!2326))))

(declare-fun b!5423368 () Bool)

(declare-fun e!3361031 () Option!15317)

(assert (=> b!5423368 (= e!3361031 (Some!15316 (tuple2!64811 Nil!61793 s!2326)))))

(declare-fun b!5423369 () Bool)

(declare-fun res!2307604 () Bool)

(declare-fun e!3361029 () Bool)

(assert (=> b!5423369 (=> (not res!2307604) (not e!3361029))))

(declare-fun lt!2211700 () Option!15317)

(assert (=> b!5423369 (= res!2307604 (matchZipper!1450 lt!2211293 (_1!35708 (get!21312 lt!2211700))))))

(declare-fun b!5423370 () Bool)

(declare-fun lt!2211701 () Unit!154346)

(declare-fun lt!2211699 () Unit!154346)

(assert (=> b!5423370 (= lt!2211701 lt!2211699)))

(assert (=> b!5423370 (= (++!13585 (++!13585 Nil!61793 (Cons!61793 (h!68241 s!2326) Nil!61793)) (t!375140 s!2326)) s!2326)))

(assert (=> b!5423370 (= lt!2211699 (lemmaMoveElementToOtherListKeepsConcatEq!1852 Nil!61793 (h!68241 s!2326) (t!375140 s!2326) s!2326))))

(declare-fun e!3361033 () Option!15317)

(assert (=> b!5423370 (= e!3361033 (findConcatSeparationZippers!63 lt!2211293 lt!2211320 (++!13585 Nil!61793 (Cons!61793 (h!68241 s!2326) Nil!61793)) (t!375140 s!2326) s!2326))))

(declare-fun b!5423371 () Bool)

(declare-fun res!2307605 () Bool)

(assert (=> b!5423371 (=> (not res!2307605) (not e!3361029))))

(assert (=> b!5423371 (= res!2307605 (matchZipper!1450 lt!2211320 (_2!35708 (get!21312 lt!2211700))))))

(declare-fun b!5423372 () Bool)

(declare-fun e!3361032 () Bool)

(assert (=> b!5423372 (= e!3361032 (not (isDefined!12020 lt!2211700)))))

(declare-fun b!5423373 () Bool)

(assert (=> b!5423373 (= e!3361033 None!15316)))

(declare-fun d!1729979 () Bool)

(assert (=> d!1729979 e!3361032))

(declare-fun res!2307607 () Bool)

(assert (=> d!1729979 (=> res!2307607 e!3361032)))

(assert (=> d!1729979 (= res!2307607 e!3361029)))

(declare-fun res!2307603 () Bool)

(assert (=> d!1729979 (=> (not res!2307603) (not e!3361029))))

(assert (=> d!1729979 (= res!2307603 (isDefined!12020 lt!2211700))))

(assert (=> d!1729979 (= lt!2211700 e!3361031)))

(declare-fun c!945967 () Bool)

(assert (=> d!1729979 (= c!945967 e!3361030)))

(declare-fun res!2307606 () Bool)

(assert (=> d!1729979 (=> (not res!2307606) (not e!3361030))))

(assert (=> d!1729979 (= res!2307606 (matchZipper!1450 lt!2211293 Nil!61793))))

(assert (=> d!1729979 (= (++!13585 Nil!61793 s!2326) s!2326)))

(assert (=> d!1729979 (= (findConcatSeparationZippers!63 lt!2211293 lt!2211320 Nil!61793 s!2326 s!2326) lt!2211700)))

(declare-fun b!5423374 () Bool)

(assert (=> b!5423374 (= e!3361031 e!3361033)))

(declare-fun c!945968 () Bool)

(assert (=> b!5423374 (= c!945968 (is-Nil!61793 s!2326))))

(declare-fun b!5423375 () Bool)

(assert (=> b!5423375 (= e!3361029 (= (++!13585 (_1!35708 (get!21312 lt!2211700)) (_2!35708 (get!21312 lt!2211700))) s!2326))))

(assert (= (and d!1729979 res!2307606) b!5423367))

(assert (= (and d!1729979 c!945967) b!5423368))

(assert (= (and d!1729979 (not c!945967)) b!5423374))

(assert (= (and b!5423374 c!945968) b!5423373))

(assert (= (and b!5423374 (not c!945968)) b!5423370))

(assert (= (and d!1729979 res!2307603) b!5423369))

(assert (= (and b!5423369 res!2307604) b!5423371))

(assert (= (and b!5423371 res!2307605) b!5423375))

(assert (= (and d!1729979 (not res!2307607)) b!5423372))

(assert (=> b!5423370 m!6447206))

(assert (=> b!5423370 m!6447206))

(assert (=> b!5423370 m!6447208))

(assert (=> b!5423370 m!6447210))

(assert (=> b!5423370 m!6447206))

(declare-fun m!6447574 () Bool)

(assert (=> b!5423370 m!6447574))

(declare-fun m!6447576 () Bool)

(assert (=> b!5423375 m!6447576))

(declare-fun m!6447578 () Bool)

(assert (=> b!5423375 m!6447578))

(assert (=> b!5423371 m!6447576))

(declare-fun m!6447580 () Bool)

(assert (=> b!5423371 m!6447580))

(declare-fun m!6447582 () Bool)

(assert (=> d!1729979 m!6447582))

(declare-fun m!6447584 () Bool)

(assert (=> d!1729979 m!6447584))

(declare-fun m!6447586 () Bool)

(assert (=> d!1729979 m!6447586))

(declare-fun m!6447588 () Bool)

(assert (=> b!5423367 m!6447588))

(assert (=> b!5423369 m!6447576))

(declare-fun m!6447590 () Bool)

(assert (=> b!5423369 m!6447590))

(assert (=> b!5423372 m!6447582))

(assert (=> b!5422254 d!1729979))

(declare-fun d!1729991 () Bool)

(declare-fun e!3361034 () Bool)

(assert (=> d!1729991 e!3361034))

(declare-fun res!2307609 () Bool)

(assert (=> d!1729991 (=> (not res!2307609) (not e!3361034))))

(declare-fun lt!2211702 () List!61917)

(assert (=> d!1729991 (= res!2307609 (= (content!11118 lt!2211702) (set.union (content!11118 (_1!35708 lt!2211279)) (content!11118 (_2!35708 lt!2211279)))))))

(declare-fun e!3361035 () List!61917)

(assert (=> d!1729991 (= lt!2211702 e!3361035)))

(declare-fun c!945969 () Bool)

(assert (=> d!1729991 (= c!945969 (is-Nil!61793 (_1!35708 lt!2211279)))))

(assert (=> d!1729991 (= (++!13585 (_1!35708 lt!2211279) (_2!35708 lt!2211279)) lt!2211702)))

(declare-fun b!5423378 () Bool)

(declare-fun res!2307608 () Bool)

(assert (=> b!5423378 (=> (not res!2307608) (not e!3361034))))

(assert (=> b!5423378 (= res!2307608 (= (size!39881 lt!2211702) (+ (size!39881 (_1!35708 lt!2211279)) (size!39881 (_2!35708 lt!2211279)))))))

(declare-fun b!5423376 () Bool)

(assert (=> b!5423376 (= e!3361035 (_2!35708 lt!2211279))))

(declare-fun b!5423377 () Bool)

(assert (=> b!5423377 (= e!3361035 (Cons!61793 (h!68241 (_1!35708 lt!2211279)) (++!13585 (t!375140 (_1!35708 lt!2211279)) (_2!35708 lt!2211279))))))

(declare-fun b!5423379 () Bool)

(assert (=> b!5423379 (= e!3361034 (or (not (= (_2!35708 lt!2211279) Nil!61793)) (= lt!2211702 (_1!35708 lt!2211279))))))

(assert (= (and d!1729991 c!945969) b!5423376))

(assert (= (and d!1729991 (not c!945969)) b!5423377))

(assert (= (and d!1729991 res!2307609) b!5423378))

(assert (= (and b!5423378 res!2307608) b!5423379))

(declare-fun m!6447592 () Bool)

(assert (=> d!1729991 m!6447592))

(declare-fun m!6447594 () Bool)

(assert (=> d!1729991 m!6447594))

(declare-fun m!6447596 () Bool)

(assert (=> d!1729991 m!6447596))

(declare-fun m!6447598 () Bool)

(assert (=> b!5423378 m!6447598))

(declare-fun m!6447600 () Bool)

(assert (=> b!5423378 m!6447600))

(declare-fun m!6447602 () Bool)

(assert (=> b!5423378 m!6447602))

(declare-fun m!6447604 () Bool)

(assert (=> b!5423377 m!6447604))

(assert (=> b!5422254 d!1729991))

(declare-fun d!1729993 () Bool)

(assert (=> d!1729993 (= (isDefined!12020 lt!2211274) (not (isEmpty!33799 lt!2211274)))))

(declare-fun bs!1253033 () Bool)

(assert (= bs!1253033 d!1729993))

(declare-fun m!6447606 () Bool)

(assert (=> bs!1253033 m!6447606))

(assert (=> b!5422254 d!1729993))

(declare-fun b!5423393 () Bool)

(declare-fun e!3361041 () Bool)

(assert (=> b!5423393 (= e!3361041 tp_is_empty!39665)))

(declare-fun b!5423396 () Bool)

(declare-fun tp!1496980 () Bool)

(declare-fun tp!1496976 () Bool)

(assert (=> b!5423396 (= e!3361041 (and tp!1496980 tp!1496976))))

(declare-fun b!5423394 () Bool)

(declare-fun tp!1496978 () Bool)

(declare-fun tp!1496977 () Bool)

(assert (=> b!5423394 (= e!3361041 (and tp!1496978 tp!1496977))))

(declare-fun b!5423395 () Bool)

(declare-fun tp!1496979 () Bool)

(assert (=> b!5423395 (= e!3361041 tp!1496979)))

(assert (=> b!5422271 (= tp!1496934 e!3361041)))

(assert (= (and b!5422271 (is-ElementMatch!15206 (regOne!30925 r!7292))) b!5423393))

(assert (= (and b!5422271 (is-Concat!24051 (regOne!30925 r!7292))) b!5423394))

(assert (= (and b!5422271 (is-Star!15206 (regOne!30925 r!7292))) b!5423395))

(assert (= (and b!5422271 (is-Union!15206 (regOne!30925 r!7292))) b!5423396))

(declare-fun b!5423397 () Bool)

(declare-fun e!3361042 () Bool)

(assert (=> b!5423397 (= e!3361042 tp_is_empty!39665)))

(declare-fun b!5423400 () Bool)

(declare-fun tp!1496985 () Bool)

(declare-fun tp!1496981 () Bool)

(assert (=> b!5423400 (= e!3361042 (and tp!1496985 tp!1496981))))

(declare-fun b!5423398 () Bool)

(declare-fun tp!1496983 () Bool)

(declare-fun tp!1496982 () Bool)

(assert (=> b!5423398 (= e!3361042 (and tp!1496983 tp!1496982))))

(declare-fun b!5423399 () Bool)

(declare-fun tp!1496984 () Bool)

(assert (=> b!5423399 (= e!3361042 tp!1496984)))

(assert (=> b!5422271 (= tp!1496931 e!3361042)))

(assert (= (and b!5422271 (is-ElementMatch!15206 (regTwo!30925 r!7292))) b!5423397))

(assert (= (and b!5422271 (is-Concat!24051 (regTwo!30925 r!7292))) b!5423398))

(assert (= (and b!5422271 (is-Star!15206 (regTwo!30925 r!7292))) b!5423399))

(assert (= (and b!5422271 (is-Union!15206 (regTwo!30925 r!7292))) b!5423400))

(declare-fun b!5423401 () Bool)

(declare-fun e!3361043 () Bool)

(assert (=> b!5423401 (= e!3361043 tp_is_empty!39665)))

(declare-fun b!5423404 () Bool)

(declare-fun tp!1496990 () Bool)

(declare-fun tp!1496986 () Bool)

(assert (=> b!5423404 (= e!3361043 (and tp!1496990 tp!1496986))))

(declare-fun b!5423402 () Bool)

(declare-fun tp!1496988 () Bool)

(declare-fun tp!1496987 () Bool)

(assert (=> b!5423402 (= e!3361043 (and tp!1496988 tp!1496987))))

(declare-fun b!5423403 () Bool)

(declare-fun tp!1496989 () Bool)

(assert (=> b!5423403 (= e!3361043 tp!1496989)))

(assert (=> b!5422275 (= tp!1496935 e!3361043)))

(assert (= (and b!5422275 (is-ElementMatch!15206 (regOne!30924 r!7292))) b!5423401))

(assert (= (and b!5422275 (is-Concat!24051 (regOne!30924 r!7292))) b!5423402))

(assert (= (and b!5422275 (is-Star!15206 (regOne!30924 r!7292))) b!5423403))

(assert (= (and b!5422275 (is-Union!15206 (regOne!30924 r!7292))) b!5423404))

(declare-fun b!5423405 () Bool)

(declare-fun e!3361044 () Bool)

(assert (=> b!5423405 (= e!3361044 tp_is_empty!39665)))

(declare-fun b!5423408 () Bool)

(declare-fun tp!1496995 () Bool)

(declare-fun tp!1496991 () Bool)

(assert (=> b!5423408 (= e!3361044 (and tp!1496995 tp!1496991))))

(declare-fun b!5423406 () Bool)

(declare-fun tp!1496993 () Bool)

(declare-fun tp!1496992 () Bool)

(assert (=> b!5423406 (= e!3361044 (and tp!1496993 tp!1496992))))

(declare-fun b!5423407 () Bool)

(declare-fun tp!1496994 () Bool)

(assert (=> b!5423407 (= e!3361044 tp!1496994)))

(assert (=> b!5422275 (= tp!1496933 e!3361044)))

(assert (= (and b!5422275 (is-ElementMatch!15206 (regTwo!30924 r!7292))) b!5423405))

(assert (= (and b!5422275 (is-Concat!24051 (regTwo!30924 r!7292))) b!5423406))

(assert (= (and b!5422275 (is-Star!15206 (regTwo!30924 r!7292))) b!5423407))

(assert (= (and b!5422275 (is-Union!15206 (regTwo!30924 r!7292))) b!5423408))

(declare-fun b!5423409 () Bool)

(declare-fun e!3361045 () Bool)

(assert (=> b!5423409 (= e!3361045 tp_is_empty!39665)))

(declare-fun b!5423412 () Bool)

(declare-fun tp!1497000 () Bool)

(declare-fun tp!1496996 () Bool)

(assert (=> b!5423412 (= e!3361045 (and tp!1497000 tp!1496996))))

(declare-fun b!5423410 () Bool)

(declare-fun tp!1496998 () Bool)

(declare-fun tp!1496997 () Bool)

(assert (=> b!5423410 (= e!3361045 (and tp!1496998 tp!1496997))))

(declare-fun b!5423411 () Bool)

(declare-fun tp!1496999 () Bool)

(assert (=> b!5423411 (= e!3361045 tp!1496999)))

(assert (=> b!5422266 (= tp!1496930 e!3361045)))

(assert (= (and b!5422266 (is-ElementMatch!15206 (reg!15535 r!7292))) b!5423409))

(assert (= (and b!5422266 (is-Concat!24051 (reg!15535 r!7292))) b!5423410))

(assert (= (and b!5422266 (is-Star!15206 (reg!15535 r!7292))) b!5423411))

(assert (= (and b!5422266 (is-Union!15206 (reg!15535 r!7292))) b!5423412))

(declare-fun condSetEmpty!35342 () Bool)

(assert (=> setNonEmpty!35336 (= condSetEmpty!35342 (= setRest!35336 (as set.empty (Set Context!9180))))))

(declare-fun setRes!35342 () Bool)

(assert (=> setNonEmpty!35336 (= tp!1496928 setRes!35342)))

(declare-fun setIsEmpty!35342 () Bool)

(assert (=> setIsEmpty!35342 setRes!35342))

(declare-fun setNonEmpty!35342 () Bool)

(declare-fun e!3361048 () Bool)

(declare-fun setElem!35342 () Context!9180)

(declare-fun tp!1497006 () Bool)

(assert (=> setNonEmpty!35342 (= setRes!35342 (and tp!1497006 (inv!81263 setElem!35342) e!3361048))))

(declare-fun setRest!35342 () (Set Context!9180))

(assert (=> setNonEmpty!35342 (= setRest!35336 (set.union (set.insert setElem!35342 (as set.empty (Set Context!9180))) setRest!35342))))

(declare-fun b!5423417 () Bool)

(declare-fun tp!1497005 () Bool)

(assert (=> b!5423417 (= e!3361048 tp!1497005)))

(assert (= (and setNonEmpty!35336 condSetEmpty!35342) setIsEmpty!35342))

(assert (= (and setNonEmpty!35336 (not condSetEmpty!35342)) setNonEmpty!35342))

(assert (= setNonEmpty!35342 b!5423417))

(declare-fun m!6447616 () Bool)

(assert (=> setNonEmpty!35342 m!6447616))

(declare-fun b!5423422 () Bool)

(declare-fun e!3361051 () Bool)

(declare-fun tp!1497011 () Bool)

(declare-fun tp!1497012 () Bool)

(assert (=> b!5423422 (= e!3361051 (and tp!1497011 tp!1497012))))

(assert (=> b!5422264 (= tp!1496929 e!3361051)))

(assert (= (and b!5422264 (is-Cons!61794 (exprs!5090 setElem!35336))) b!5423422))

(declare-fun b!5423430 () Bool)

(declare-fun e!3361057 () Bool)

(declare-fun tp!1497017 () Bool)

(assert (=> b!5423430 (= e!3361057 tp!1497017)))

(declare-fun tp!1497018 () Bool)

(declare-fun b!5423429 () Bool)

(declare-fun e!3361056 () Bool)

(assert (=> b!5423429 (= e!3361056 (and (inv!81263 (h!68243 (t!375142 zl!343))) e!3361057 tp!1497018))))

(assert (=> b!5422265 (= tp!1496926 e!3361056)))

(assert (= b!5423429 b!5423430))

(assert (= (and b!5422265 (is-Cons!61795 (t!375142 zl!343))) b!5423429))

(declare-fun m!6447618 () Bool)

(assert (=> b!5423429 m!6447618))

(declare-fun b!5423431 () Bool)

(declare-fun e!3361058 () Bool)

(declare-fun tp!1497019 () Bool)

(declare-fun tp!1497020 () Bool)

(assert (=> b!5423431 (= e!3361058 (and tp!1497019 tp!1497020))))

(assert (=> b!5422278 (= tp!1496927 e!3361058)))

(assert (= (and b!5422278 (is-Cons!61794 (exprs!5090 (h!68243 zl!343)))) b!5423431))

(declare-fun b!5423436 () Bool)

(declare-fun e!3361061 () Bool)

(declare-fun tp!1497023 () Bool)

(assert (=> b!5423436 (= e!3361061 (and tp_is_empty!39665 tp!1497023))))

(assert (=> b!5422253 (= tp!1496932 e!3361061)))

(assert (= (and b!5422253 (is-Cons!61793 (t!375140 s!2326))) b!5423436))

(declare-fun b_lambda!206961 () Bool)

(assert (= b_lambda!206957 (or b!5422255 b_lambda!206961)))

(declare-fun bs!1253035 () Bool)

(declare-fun d!1729999 () Bool)

(assert (= bs!1253035 (and d!1729999 b!5422255)))

(assert (=> bs!1253035 (= (dynLambda!24354 lambda!284042 (h!68243 zl!343)) (derivationStepZipperUp!578 (h!68243 zl!343) (h!68241 s!2326)))))

(assert (=> bs!1253035 m!6446322))

(assert (=> d!1729955 d!1729999))

(declare-fun b_lambda!206963 () Bool)

(assert (= b_lambda!206959 (or b!5422255 b_lambda!206963)))

(declare-fun bs!1253036 () Bool)

(declare-fun d!1730001 () Bool)

(assert (= bs!1253036 (and d!1730001 b!5422255)))

(assert (=> bs!1253036 (= (dynLambda!24354 lambda!284042 lt!2211305) (derivationStepZipperUp!578 lt!2211305 (h!68241 s!2326)))))

(assert (=> bs!1253036 m!6446338))

(assert (=> d!1729963 d!1730001))

(declare-fun b_lambda!206965 () Bool)

(assert (= b_lambda!206953 (or b!5422255 b_lambda!206965)))

(declare-fun bs!1253037 () Bool)

(declare-fun d!1730003 () Bool)

(assert (= bs!1253037 (and d!1730003 b!5422255)))

(assert (=> bs!1253037 (= (dynLambda!24354 lambda!284042 lt!2211266) (derivationStepZipperUp!578 lt!2211266 (h!68241 s!2326)))))

(assert (=> bs!1253037 m!6446306))

(assert (=> d!1729797 d!1730003))

(declare-fun b_lambda!206967 () Bool)

(assert (= b_lambda!206949 (or b!5422280 b_lambda!206967)))

(declare-fun bs!1253039 () Bool)

(declare-fun d!1730005 () Bool)

(assert (= bs!1253039 (and d!1730005 b!5422280)))

(declare-fun lt!2211708 () Unit!154346)

(assert (=> bs!1253039 (= lt!2211708 (lemmaConcatPreservesForall!231 (exprs!5090 lt!2211323) lt!2211262 lambda!284044))))

(assert (=> bs!1253039 (= (dynLambda!24353 lambda!284043 lt!2211323) (Context!9181 (++!13586 (exprs!5090 lt!2211323) lt!2211262)))))

(declare-fun m!6447622 () Bool)

(assert (=> bs!1253039 m!6447622))

(declare-fun m!6447624 () Bool)

(assert (=> bs!1253039 m!6447624))

(assert (=> d!1729785 d!1730005))

(declare-fun b_lambda!206969 () Bool)

(assert (= b_lambda!206951 (or b!5422255 b_lambda!206969)))

(declare-fun bs!1253041 () Bool)

(declare-fun d!1730009 () Bool)

(assert (= bs!1253041 (and d!1730009 b!5422255)))

(assert (=> bs!1253041 (= (dynLambda!24354 lambda!284042 lt!2211323) (derivationStepZipperUp!578 lt!2211323 (h!68241 s!2326)))))

(assert (=> bs!1253041 m!6446292))

(assert (=> d!1729793 d!1730009))

(push 1)

(assert (not b!5422946))

(assert (not b!5423378))

(assert (not d!1729723))

(assert (not b!5423294))

(assert (not bs!1253039))

(assert (not d!1729791))

(assert (not b!5423316))

(assert (not b!5422908))

(assert (not b!5423156))

(assert (not b!5423091))

(assert (not bm!388162))

(assert (not b!5423243))

(assert (not d!1729963))

(assert (not bm!388101))

(assert (not d!1729929))

(assert (not d!1729931))

(assert (not b!5423181))

(assert (not b!5423138))

(assert (not b!5422555))

(assert (not b!5423037))

(assert (not b!5423075))

(assert (not bm!388155))

(assert (not b!5423132))

(assert (not d!1729821))

(assert (not b!5422936))

(assert (not b!5423370))

(assert (not b!5423157))

(assert (not d!1729881))

(assert (not d!1729921))

(assert (not b!5422636))

(assert (not b!5423371))

(assert (not b!5423057))

(assert (not b!5423204))

(assert (not b!5423237))

(assert (not b!5422727))

(assert (not b!5423394))

(assert (not b!5422678))

(assert (not d!1729887))

(assert (not b!5423395))

(assert (not b!5423242))

(assert (not d!1729825))

(assert (not d!1729801))

(assert (not b!5423372))

(assert (not bm!388152))

(assert (not bm!388119))

(assert (not b!5423080))

(assert (not b!5422723))

(assert (not b!5422882))

(assert (not d!1729835))

(assert (not b!5423133))

(assert (not d!1729831))

(assert (not b!5423206))

(assert (not b!5423089))

(assert (not d!1729753))

(assert (not b!5423155))

(assert (not b!5422767))

(assert (not b!5423377))

(assert (not b!5422973))

(assert (not b!5422787))

(assert (not b!5422529))

(assert (not b!5422764))

(assert (not bm!388136))

(assert (not b!5422643))

(assert (not d!1729959))

(assert (not b!5423375))

(assert (not b!5423321))

(assert (not b!5423430))

(assert (not b!5422557))

(assert (not b!5423152))

(assert (not d!1729845))

(assert (not bm!388072))

(assert (not b!5422847))

(assert (not b!5423046))

(assert (not d!1729771))

(assert (not d!1729727))

(assert (not b!5423398))

(assert (not d!1729935))

(assert (not b!5422794))

(assert (not bm!388154))

(assert (not d!1729751))

(assert (not bm!388115))

(assert (not b!5422984))

(assert (not b!5422953))

(assert (not b!5423256))

(assert (not b!5422909))

(assert (not b!5422969))

(assert (not d!1729917))

(assert (not b!5422955))

(assert (not d!1729955))

(assert (not b!5423320))

(assert (not d!1729823))

(assert (not d!1729945))

(assert (not b!5422769))

(assert (not d!1729991))

(assert (not b!5423422))

(assert (not b!5423429))

(assert (not b_lambda!206963))

(assert (not bm!388158))

(assert (not b!5423053))

(assert (not bm!388153))

(assert (not b!5423146))

(assert (not d!1729947))

(assert (not b!5422602))

(assert (not b!5422965))

(assert (not b!5423208))

(assert (not b!5423407))

(assert (not bm!388140))

(assert (not d!1729811))

(assert (not d!1729867))

(assert (not bm!388074))

(assert (not b!5423060))

(assert (not b!5422530))

(assert (not b!5423135))

(assert (not b!5422685))

(assert (not d!1729883))

(assert (not b!5423408))

(assert (not b!5423214))

(assert (not b!5423090))

(assert (not d!1729735))

(assert (not b!5422559))

(assert (not b_lambda!206969))

(assert (not b!5423201))

(assert (not b!5423400))

(assert (not b!5422682))

(assert (not d!1729913))

(assert (not d!1729785))

(assert (not b!5423102))

(assert (not b!5422937))

(assert (not b!5422792))

(assert (not d!1729915))

(assert (not b!5423246))

(assert (not b!5422524))

(assert (not b!5423399))

(assert (not b!5422840))

(assert (not b!5423213))

(assert (not b!5423212))

(assert (not d!1729797))

(assert (not setNonEmpty!35342))

(assert (not bs!1253036))

(assert (not b!5423276))

(assert (not d!1729715))

(assert (not b!5423211))

(assert (not bm!388080))

(assert (not d!1729739))

(assert (not b!5423005))

(assert (not d!1729763))

(assert (not bm!388161))

(assert (not b!5422738))

(assert (not b_lambda!206961))

(assert (not d!1729779))

(assert (not b_lambda!206967))

(assert (not b!5423020))

(assert (not b!5423417))

(assert (not b!5422561))

(assert (not bm!388081))

(assert (not d!1729799))

(assert (not b!5423411))

(assert (not bm!388135))

(assert (not bm!388150))

(assert (not b!5422967))

(assert (not b!5423250))

(assert (not d!1729789))

(assert (not b!5423251))

(assert (not b!5422763))

(assert (not bm!388084))

(assert (not b!5422676))

(assert (not b!5423403))

(assert (not b!5423134))

(assert (not b!5422966))

(assert (not d!1729993))

(assert (not b!5422785))

(assert (not b!5423199))

(assert (not bs!1253037))

(assert (not b!5422846))

(assert (not b!5422568))

(assert (not bs!1253041))

(assert (not b!5423239))

(assert (not b!5422556))

(assert (not d!1729879))

(assert (not b!5422983))

(assert (not bm!388163))

(assert (not b!5423404))

(assert (not b!5423150))

(assert (not bm!388087))

(assert (not d!1729965))

(assert (not bs!1253035))

(assert (not bm!388118))

(assert (not d!1729713))

(assert (not b!5423051))

(assert (not d!1729729))

(assert (not b!5423396))

(assert (not b!5423101))

(assert (not b!5422881))

(assert (not b!5423056))

(assert (not b!5423254))

(assert (not d!1729819))

(assert (not b!5423074))

(assert (not b!5423043))

(assert (not bm!388075))

(assert (not b!5423406))

(assert (not d!1729783))

(assert (not b!5423205))

(assert (not b!5423436))

(assert (not b!5422962))

(assert (not d!1729773))

(assert (not d!1729979))

(assert (not b!5423402))

(assert (not d!1729809))

(assert (not b!5423281))

(assert (not b!5423039))

(assert (not b!5422681))

(assert (not b!5423136))

(assert (not b!5422942))

(assert (not bm!388160))

(assert (not bm!388085))

(assert (not d!1729925))

(assert (not d!1729711))

(assert (not b!5423244))

(assert (not d!1729861))

(assert (not b!5422762))

(assert (not b!5422980))

(assert (not d!1729933))

(assert (not b!5422739))

(assert (not d!1729733))

(assert (not d!1729863))

(assert (not b!5422960))

(assert (not b!5423282))

(assert (not bm!388121))

(assert (not d!1729943))

(assert (not d!1729741))

(assert (not b!5422791))

(assert (not d!1729829))

(assert (not bm!388114))

(assert (not b!5422779))

(assert (not d!1729781))

(assert (not d!1729737))

(assert (not b!5422952))

(assert (not b!5423336))

(assert (not b!5423093))

(assert (not b!5423412))

(assert (not d!1729749))

(assert (not d!1729919))

(assert (not bm!388124))

(assert (not bm!388117))

(assert (not b!5422724))

(assert (not b_lambda!206965))

(assert (not d!1729967))

(assert (not b!5423174))

(assert (not d!1729939))

(assert (not b!5423019))

(assert (not b!5423042))

(assert (not b!5423058))

(assert (not d!1729857))

(assert (not bm!388100))

(assert (not d!1729817))

(assert (not bm!388120))

(assert (not b!5422948))

(assert (not d!1729743))

(assert (not d!1729843))

(assert (not b!5423277))

(assert (not b!5422525))

(assert (not d!1729793))

(assert (not b!5422951))

(assert (not d!1729975))

(assert (not d!1729927))

(assert (not b!5423410))

(assert (not b!5422719))

(assert (not b!5423137))

(assert (not bm!388086))

(assert (not bm!388116))

(assert (not b!5422941))

(assert (not b!5423367))

(assert (not b!5423086))

(assert (not b!5422683))

(assert (not b!5422768))

(assert (not b!5422554))

(assert (not b!5423073))

(assert tp_is_empty!39665)

(assert (not b!5423159))

(assert (not b!5422528))

(assert (not d!1729721))

(assert (not b!5422720))

(assert (not d!1729889))

(assert (not d!1729853))

(assert (not b!5423044))

(assert (not d!1729759))

(assert (not b!5422778))

(assert (not d!1729795))

(assert (not d!1729731))

(assert (not b!5422527))

(assert (not b!5423078))

(assert (not bm!388149))

(assert (not d!1729877))

(assert (not b!5423255))

(assert (not b!5422790))

(assert (not b!5422526))

(assert (not b!5423079))

(assert (not d!1729871))

(assert (not b!5422734))

(assert (not b!5423249))

(assert (not b!5422563))

(assert (not b!5423431))

(assert (not d!1729787))

(assert (not d!1729859))

(assert (not b!5423084))

(assert (not d!1729891))

(assert (not d!1729725))

(assert (not b!5423369))

(assert (not d!1729869))

(assert (not b!5423315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

