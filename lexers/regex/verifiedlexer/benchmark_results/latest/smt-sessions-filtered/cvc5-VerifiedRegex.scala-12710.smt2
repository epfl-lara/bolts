; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!702746 () Bool)

(assert start!702746)

(declare-fun b!7236980 () Bool)

(assert (=> b!7236980 true))

(declare-fun b!7236986 () Bool)

(assert (=> b!7236986 true))

(declare-fun b!7236972 () Bool)

(declare-fun e!4338695 () Bool)

(declare-fun tp_is_empty!46521 () Bool)

(declare-fun tp!2034705 () Bool)

(assert (=> b!7236972 (= e!4338695 (and tp_is_empty!46521 tp!2034705))))

(declare-fun b!7236973 () Bool)

(declare-fun e!4338702 () Bool)

(declare-fun e!4338699 () Bool)

(assert (=> b!7236973 (= e!4338702 e!4338699)))

(declare-fun res!2935970 () Bool)

(assert (=> b!7236973 (=> res!2935970 e!4338699)))

(declare-datatypes ((C!37330 0))(
  ( (C!37331 (val!28613 Int)) )
))
(declare-datatypes ((Regex!18528 0))(
  ( (ElementMatch!18528 (c!1343326 C!37330)) (Concat!27373 (regOne!37568 Regex!18528) (regTwo!37568 Regex!18528)) (EmptyExpr!18528) (Star!18528 (reg!18857 Regex!18528)) (EmptyLang!18528) (Union!18528 (regOne!37569 Regex!18528) (regTwo!37569 Regex!18528)) )
))
(declare-datatypes ((List!70192 0))(
  ( (Nil!70068) (Cons!70068 (h!76516 Regex!18528) (t!384243 List!70192)) )
))
(declare-datatypes ((Context!14936 0))(
  ( (Context!14937 (exprs!7968 List!70192)) )
))
(declare-fun lt!2576290 () Context!14936)

(declare-datatypes ((List!70193 0))(
  ( (Nil!70069) (Cons!70069 (h!76517 C!37330) (t!384244 List!70193)) )
))
(declare-fun s1!1971 () List!70193)

(declare-fun lt!2576273 () (Set Context!14936))

(declare-fun lt!2576280 () (Set Context!14936))

(declare-fun derivationStepZipperUp!2402 (Context!14936 C!37330) (Set Context!14936))

(assert (=> b!7236973 (= res!2935970 (not (= lt!2576280 (set.union lt!2576273 (derivationStepZipperUp!2402 lt!2576290 (h!76517 s1!1971))))))))

(declare-fun lambda!440604 () Int)

(declare-fun ct1!232 () Context!14936)

(declare-datatypes ((Unit!163594 0))(
  ( (Unit!163595) )
))
(declare-fun lt!2576268 () Unit!163594)

(declare-fun ct2!328 () Context!14936)

(declare-fun lemmaConcatPreservesForall!1337 (List!70192 List!70192 Int) Unit!163594)

(assert (=> b!7236973 (= lt!2576268 (lemmaConcatPreservesForall!1337 (exprs!7968 ct1!232) (exprs!7968 ct2!328) lambda!440604))))

(declare-fun b!7236974 () Bool)

(declare-fun e!4338692 () Bool)

(declare-fun e!4338701 () Bool)

(assert (=> b!7236974 (= e!4338692 e!4338701)))

(declare-fun res!2935969 () Bool)

(assert (=> b!7236974 (=> (not res!2935969) (not e!4338701))))

(declare-fun lt!2576265 () (Set Context!14936))

(declare-fun matchZipper!3438 ((Set Context!14936) List!70193) Bool)

(assert (=> b!7236974 (= res!2935969 (matchZipper!3438 lt!2576265 (t!384244 s1!1971)))))

(declare-fun lt!2576287 () (Set Context!14936))

(declare-fun derivationStepZipper!3320 ((Set Context!14936) C!37330) (Set Context!14936))

(assert (=> b!7236974 (= lt!2576265 (derivationStepZipper!3320 lt!2576287 (h!76517 s1!1971)))))

(declare-fun b!7236976 () Bool)

(declare-fun res!2935962 () Bool)

(declare-fun e!4338693 () Bool)

(assert (=> b!7236976 (=> (not res!2935962) (not e!4338693))))

(declare-fun s2!1849 () List!70193)

(assert (=> b!7236976 (= res!2935962 (matchZipper!3438 (set.insert ct2!328 (as set.empty (Set Context!14936))) s2!1849))))

(declare-fun b!7236977 () Bool)

(declare-fun e!4338694 () Bool)

(assert (=> b!7236977 (= e!4338694 e!4338702)))

(declare-fun res!2935961 () Bool)

(assert (=> b!7236977 (=> res!2935961 e!4338702)))

(declare-fun lt!2576272 () (Set Context!14936))

(declare-fun lt!2576288 () (Set Context!14936))

(assert (=> b!7236977 (= res!2935961 (or (not (= lt!2576288 lt!2576272)) (not (= lt!2576265 lt!2576288))))))

(declare-fun lt!2576274 () (Set Context!14936))

(declare-fun lt!2576270 () (Set Context!14936))

(assert (=> b!7236977 (= lt!2576272 (set.union lt!2576274 lt!2576270))))

(declare-fun lt!2576291 () Context!14936)

(assert (=> b!7236977 (= lt!2576270 (derivationStepZipperUp!2402 lt!2576291 (h!76517 s1!1971)))))

(declare-fun b!7236978 () Bool)

(declare-fun e!4338697 () Bool)

(declare-fun e!4338696 () Bool)

(assert (=> b!7236978 (= e!4338697 e!4338696)))

(declare-fun res!2935966 () Bool)

(assert (=> b!7236978 (=> res!2935966 e!4338696)))

(declare-fun lt!2576275 () List!70192)

(declare-fun isEmpty!40383 (List!70192) Bool)

(assert (=> b!7236978 (= res!2935966 (isEmpty!40383 lt!2576275))))

(declare-fun lt!2576276 () Unit!163594)

(assert (=> b!7236978 (= lt!2576276 (lemmaConcatPreservesForall!1337 (exprs!7968 ct1!232) (exprs!7968 ct2!328) lambda!440604))))

(declare-fun lt!2576284 () Context!14936)

(assert (=> b!7236978 (= lt!2576280 (derivationStepZipperUp!2402 lt!2576284 (h!76517 s1!1971)))))

(declare-fun lt!2576279 () Unit!163594)

(assert (=> b!7236978 (= lt!2576279 (lemmaConcatPreservesForall!1337 (exprs!7968 ct1!232) (exprs!7968 ct2!328) lambda!440604))))

(declare-fun derivationStepZipperDown!2572 (Regex!18528 Context!14936 C!37330) (Set Context!14936))

(assert (=> b!7236978 (= lt!2576274 (derivationStepZipperDown!2572 (h!76516 (exprs!7968 ct1!232)) lt!2576291 (h!76517 s1!1971)))))

(declare-fun tail!14169 (List!70192) List!70192)

(assert (=> b!7236978 (= lt!2576291 (Context!14937 (tail!14169 (exprs!7968 ct1!232))))))

(declare-fun b!7236979 () Bool)

(declare-fun e!4338690 () Bool)

(declare-fun tp!2034707 () Bool)

(assert (=> b!7236979 (= e!4338690 (and tp_is_empty!46521 tp!2034707))))

(declare-fun e!4338691 () Bool)

(assert (=> b!7236980 (= e!4338701 (not e!4338691))))

(declare-fun res!2935963 () Bool)

(assert (=> b!7236980 (=> res!2935963 e!4338691)))

(declare-fun lambda!440605 () Int)

(declare-fun exists!4199 ((Set Context!14936) Int) Bool)

(assert (=> b!7236980 (= res!2935963 (not (exists!4199 lt!2576265 lambda!440605)))))

(declare-datatypes ((List!70194 0))(
  ( (Nil!70070) (Cons!70070 (h!76518 Context!14936) (t!384245 List!70194)) )
))
(declare-fun lt!2576269 () List!70194)

(declare-fun exists!4200 (List!70194 Int) Bool)

(assert (=> b!7236980 (exists!4200 lt!2576269 lambda!440605)))

(declare-fun lt!2576286 () Unit!163594)

(declare-fun lemmaZipperMatchesExistsMatchingContext!671 (List!70194 List!70193) Unit!163594)

(assert (=> b!7236980 (= lt!2576286 (lemmaZipperMatchesExistsMatchingContext!671 lt!2576269 (t!384244 s1!1971)))))

(declare-fun toList!11385 ((Set Context!14936)) List!70194)

(assert (=> b!7236980 (= lt!2576269 (toList!11385 lt!2576265))))

(declare-fun b!7236981 () Bool)

(assert (=> b!7236981 (= e!4338691 e!4338697)))

(declare-fun res!2935964 () Bool)

(assert (=> b!7236981 (=> res!2935964 e!4338697)))

(assert (=> b!7236981 (= res!2935964 (isEmpty!40383 (exprs!7968 ct1!232)))))

(assert (=> b!7236981 (= lt!2576288 (derivationStepZipperUp!2402 ct1!232 (h!76517 s1!1971)))))

(declare-fun lt!2576267 () Context!14936)

(declare-fun lt!2576277 () Unit!163594)

(assert (=> b!7236981 (= lt!2576277 (lemmaConcatPreservesForall!1337 (exprs!7968 lt!2576267) (exprs!7968 ct2!328) lambda!440604))))

(declare-fun ++!16356 (List!70192 List!70192) List!70192)

(declare-fun ++!16357 (List!70193 List!70193) List!70193)

(assert (=> b!7236981 (matchZipper!3438 (set.insert (Context!14937 (++!16356 (exprs!7968 lt!2576267) (exprs!7968 ct2!328))) (as set.empty (Set Context!14936))) (++!16357 (t!384244 s1!1971) s2!1849))))

(declare-fun lt!2576289 () Unit!163594)

(assert (=> b!7236981 (= lt!2576289 (lemmaConcatPreservesForall!1337 (exprs!7968 lt!2576267) (exprs!7968 ct2!328) lambda!440604))))

(declare-fun lt!2576278 () Unit!163594)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!319 (Context!14936 Context!14936 List!70193 List!70193) Unit!163594)

(assert (=> b!7236981 (= lt!2576278 (lemmaConcatenateContextMatchesConcatOfStrings!319 lt!2576267 ct2!328 (t!384244 s1!1971) s2!1849))))

(declare-fun getWitness!2067 ((Set Context!14936) Int) Context!14936)

(assert (=> b!7236981 (= lt!2576267 (getWitness!2067 lt!2576265 lambda!440605))))

(declare-fun b!7236982 () Bool)

(assert (=> b!7236982 (= e!4338693 e!4338692)))

(declare-fun res!2935967 () Bool)

(assert (=> b!7236982 (=> (not res!2935967) (not e!4338692))))

(assert (=> b!7236982 (= res!2935967 (and (not (is-Nil!70068 (exprs!7968 ct1!232))) (is-Cons!70069 s1!1971)))))

(declare-fun lt!2576285 () (Set Context!14936))

(assert (=> b!7236982 (= lt!2576285 (set.insert lt!2576284 (as set.empty (Set Context!14936))))))

(assert (=> b!7236982 (= lt!2576284 (Context!14937 lt!2576275))))

(assert (=> b!7236982 (= lt!2576275 (++!16356 (exprs!7968 ct1!232) (exprs!7968 ct2!328)))))

(declare-fun lt!2576283 () Unit!163594)

(assert (=> b!7236982 (= lt!2576283 (lemmaConcatPreservesForall!1337 (exprs!7968 ct1!232) (exprs!7968 ct2!328) lambda!440604))))

(declare-fun b!7236983 () Bool)

(declare-fun e!4338700 () Bool)

(assert (=> b!7236983 (= e!4338700 (matchZipper!3438 lt!2576270 (t!384244 s1!1971)))))

(declare-fun b!7236975 () Bool)

(declare-fun e!4338689 () Bool)

(declare-fun tp!2034708 () Bool)

(assert (=> b!7236975 (= e!4338689 tp!2034708)))

(declare-fun res!2935972 () Bool)

(assert (=> start!702746 (=> (not res!2935972) (not e!4338693))))

(assert (=> start!702746 (= res!2935972 (matchZipper!3438 lt!2576287 s1!1971))))

(assert (=> start!702746 (= lt!2576287 (set.insert ct1!232 (as set.empty (Set Context!14936))))))

(assert (=> start!702746 e!4338693))

(declare-fun inv!89331 (Context!14936) Bool)

(assert (=> start!702746 (and (inv!89331 ct1!232) e!4338689)))

(assert (=> start!702746 e!4338690))

(assert (=> start!702746 e!4338695))

(declare-fun e!4338698 () Bool)

(assert (=> start!702746 (and (inv!89331 ct2!328) e!4338698)))

(declare-fun b!7236984 () Bool)

(declare-fun tp!2034706 () Bool)

(assert (=> b!7236984 (= e!4338698 tp!2034706)))

(declare-fun b!7236985 () Bool)

(declare-fun res!2935965 () Bool)

(assert (=> b!7236985 (=> res!2935965 e!4338699)))

(assert (=> b!7236985 (= res!2935965 (not (= (derivationStepZipper!3320 lt!2576285 (h!76517 s1!1971)) lt!2576280)))))

(assert (=> b!7236986 (= e!4338696 e!4338694)))

(declare-fun res!2935968 () Bool)

(assert (=> b!7236986 (=> res!2935968 e!4338694)))

(declare-fun nullable!7841 (Regex!18528) Bool)

(assert (=> b!7236986 (= res!2935968 (not (nullable!7841 (h!76516 (exprs!7968 ct1!232)))))))

(declare-fun lambda!440606 () Int)

(declare-fun flatMap!2732 ((Set Context!14936) Int) (Set Context!14936))

(assert (=> b!7236986 (= (flatMap!2732 lt!2576285 lambda!440606) (derivationStepZipperUp!2402 lt!2576284 (h!76517 s1!1971)))))

(declare-fun lt!2576264 () Unit!163594)

(declare-fun lemmaFlatMapOnSingletonSet!2159 ((Set Context!14936) Context!14936 Int) Unit!163594)

(assert (=> b!7236986 (= lt!2576264 (lemmaFlatMapOnSingletonSet!2159 lt!2576285 lt!2576284 lambda!440606))))

(declare-fun lt!2576266 () Unit!163594)

(assert (=> b!7236986 (= lt!2576266 (lemmaConcatPreservesForall!1337 (exprs!7968 ct1!232) (exprs!7968 ct2!328) lambda!440604))))

(assert (=> b!7236986 (= (flatMap!2732 lt!2576287 lambda!440606) (derivationStepZipperUp!2402 ct1!232 (h!76517 s1!1971)))))

(declare-fun lt!2576281 () Unit!163594)

(assert (=> b!7236986 (= lt!2576281 (lemmaFlatMapOnSingletonSet!2159 lt!2576287 ct1!232 lambda!440606))))

(assert (=> b!7236986 (= lt!2576273 (derivationStepZipperDown!2572 (h!76516 (exprs!7968 ct1!232)) lt!2576290 (h!76517 s1!1971)))))

(assert (=> b!7236986 (= lt!2576290 (Context!14937 (tail!14169 lt!2576275)))))

(declare-fun b!7236987 () Bool)

(assert (=> b!7236987 (= e!4338699 (not (= lt!2576275 Nil!70068)))))

(declare-fun lt!2576271 () Unit!163594)

(assert (=> b!7236987 (= lt!2576271 (lemmaConcatPreservesForall!1337 (exprs!7968 ct1!232) (exprs!7968 ct2!328) lambda!440604))))

(assert (=> b!7236987 (= (matchZipper!3438 lt!2576272 (t!384244 s1!1971)) e!4338700)))

(declare-fun res!2935971 () Bool)

(assert (=> b!7236987 (=> res!2935971 e!4338700)))

(assert (=> b!7236987 (= res!2935971 (matchZipper!3438 lt!2576274 (t!384244 s1!1971)))))

(declare-fun lt!2576282 () Unit!163594)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1675 ((Set Context!14936) (Set Context!14936) List!70193) Unit!163594)

(assert (=> b!7236987 (= lt!2576282 (lemmaZipperConcatMatchesSameAsBothZippers!1675 lt!2576274 lt!2576270 (t!384244 s1!1971)))))

(assert (= (and start!702746 res!2935972) b!7236976))

(assert (= (and b!7236976 res!2935962) b!7236982))

(assert (= (and b!7236982 res!2935967) b!7236974))

(assert (= (and b!7236974 res!2935969) b!7236980))

(assert (= (and b!7236980 (not res!2935963)) b!7236981))

(assert (= (and b!7236981 (not res!2935964)) b!7236978))

(assert (= (and b!7236978 (not res!2935966)) b!7236986))

(assert (= (and b!7236986 (not res!2935968)) b!7236977))

(assert (= (and b!7236977 (not res!2935961)) b!7236973))

(assert (= (and b!7236973 (not res!2935970)) b!7236985))

(assert (= (and b!7236985 (not res!2935965)) b!7236987))

(assert (= (and b!7236987 (not res!2935971)) b!7236983))

(assert (= start!702746 b!7236975))

(assert (= (and start!702746 (is-Cons!70069 s1!1971)) b!7236979))

(assert (= (and start!702746 (is-Cons!70069 s2!1849)) b!7236972))

(assert (= start!702746 b!7236984))

(declare-fun m!7908272 () Bool)

(assert (=> b!7236974 m!7908272))

(declare-fun m!7908274 () Bool)

(assert (=> b!7236974 m!7908274))

(declare-fun m!7908276 () Bool)

(assert (=> b!7236973 m!7908276))

(declare-fun m!7908278 () Bool)

(assert (=> b!7236973 m!7908278))

(declare-fun m!7908280 () Bool)

(assert (=> b!7236986 m!7908280))

(declare-fun m!7908282 () Bool)

(assert (=> b!7236986 m!7908282))

(declare-fun m!7908284 () Bool)

(assert (=> b!7236986 m!7908284))

(declare-fun m!7908286 () Bool)

(assert (=> b!7236986 m!7908286))

(declare-fun m!7908288 () Bool)

(assert (=> b!7236986 m!7908288))

(declare-fun m!7908290 () Bool)

(assert (=> b!7236986 m!7908290))

(assert (=> b!7236986 m!7908278))

(declare-fun m!7908292 () Bool)

(assert (=> b!7236986 m!7908292))

(declare-fun m!7908294 () Bool)

(assert (=> b!7236986 m!7908294))

(declare-fun m!7908296 () Bool)

(assert (=> b!7236986 m!7908296))

(assert (=> b!7236987 m!7908278))

(declare-fun m!7908298 () Bool)

(assert (=> b!7236987 m!7908298))

(declare-fun m!7908300 () Bool)

(assert (=> b!7236987 m!7908300))

(declare-fun m!7908302 () Bool)

(assert (=> b!7236987 m!7908302))

(declare-fun m!7908304 () Bool)

(assert (=> b!7236981 m!7908304))

(declare-fun m!7908306 () Bool)

(assert (=> b!7236981 m!7908306))

(declare-fun m!7908308 () Bool)

(assert (=> b!7236981 m!7908308))

(declare-fun m!7908310 () Bool)

(assert (=> b!7236981 m!7908310))

(assert (=> b!7236981 m!7908288))

(declare-fun m!7908312 () Bool)

(assert (=> b!7236981 m!7908312))

(declare-fun m!7908314 () Bool)

(assert (=> b!7236981 m!7908314))

(assert (=> b!7236981 m!7908304))

(declare-fun m!7908316 () Bool)

(assert (=> b!7236981 m!7908316))

(assert (=> b!7236981 m!7908314))

(assert (=> b!7236981 m!7908312))

(declare-fun m!7908318 () Bool)

(assert (=> b!7236981 m!7908318))

(declare-fun m!7908320 () Bool)

(assert (=> b!7236982 m!7908320))

(declare-fun m!7908322 () Bool)

(assert (=> b!7236982 m!7908322))

(assert (=> b!7236982 m!7908278))

(declare-fun m!7908324 () Bool)

(assert (=> b!7236985 m!7908324))

(assert (=> b!7236978 m!7908282))

(assert (=> b!7236978 m!7908278))

(declare-fun m!7908326 () Bool)

(assert (=> b!7236978 m!7908326))

(assert (=> b!7236978 m!7908278))

(declare-fun m!7908328 () Bool)

(assert (=> b!7236978 m!7908328))

(declare-fun m!7908330 () Bool)

(assert (=> b!7236978 m!7908330))

(declare-fun m!7908332 () Bool)

(assert (=> b!7236976 m!7908332))

(assert (=> b!7236976 m!7908332))

(declare-fun m!7908334 () Bool)

(assert (=> b!7236976 m!7908334))

(declare-fun m!7908336 () Bool)

(assert (=> start!702746 m!7908336))

(declare-fun m!7908338 () Bool)

(assert (=> start!702746 m!7908338))

(declare-fun m!7908340 () Bool)

(assert (=> start!702746 m!7908340))

(declare-fun m!7908342 () Bool)

(assert (=> start!702746 m!7908342))

(declare-fun m!7908344 () Bool)

(assert (=> b!7236980 m!7908344))

(declare-fun m!7908346 () Bool)

(assert (=> b!7236980 m!7908346))

(declare-fun m!7908348 () Bool)

(assert (=> b!7236980 m!7908348))

(declare-fun m!7908350 () Bool)

(assert (=> b!7236980 m!7908350))

(declare-fun m!7908352 () Bool)

(assert (=> b!7236977 m!7908352))

(declare-fun m!7908354 () Bool)

(assert (=> b!7236983 m!7908354))

(push 1)

(assert (not b!7236979))

(assert (not b!7236978))

(assert (not b!7236981))

(assert (not b!7236977))

(assert tp_is_empty!46521)

(assert (not b!7236984))

(assert (not b!7236980))

(assert (not b!7236974))

(assert (not b!7236982))

(assert (not b!7236983))

(assert (not b!7236975))

(assert (not b!7236986))

(assert (not b!7236987))

(assert (not start!702746))

(assert (not b!7236973))

(assert (not b!7236985))

(assert (not b!7236972))

(assert (not b!7236976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7237054 () Bool)

(declare-fun e!4338753 () Bool)

(assert (=> b!7237054 (= e!4338753 (nullable!7841 (h!76516 (exprs!7968 lt!2576291))))))

(declare-fun b!7237055 () Bool)

(declare-fun e!4338751 () (Set Context!14936))

(declare-fun call!658943 () (Set Context!14936))

(assert (=> b!7237055 (= e!4338751 call!658943)))

(declare-fun b!7237056 () Bool)

(assert (=> b!7237056 (= e!4338751 (as set.empty (Set Context!14936)))))

(declare-fun bm!658938 () Bool)

(assert (=> bm!658938 (= call!658943 (derivationStepZipperDown!2572 (h!76516 (exprs!7968 lt!2576291)) (Context!14937 (t!384243 (exprs!7968 lt!2576291))) (h!76517 s1!1971)))))

(declare-fun d!2248081 () Bool)

(declare-fun c!1343343 () Bool)

(assert (=> d!2248081 (= c!1343343 e!4338753)))

(declare-fun res!2936011 () Bool)

(assert (=> d!2248081 (=> (not res!2936011) (not e!4338753))))

(assert (=> d!2248081 (= res!2936011 (is-Cons!70068 (exprs!7968 lt!2576291)))))

(declare-fun e!4338752 () (Set Context!14936))

(assert (=> d!2248081 (= (derivationStepZipperUp!2402 lt!2576291 (h!76517 s1!1971)) e!4338752)))

(declare-fun b!7237057 () Bool)

(assert (=> b!7237057 (= e!4338752 e!4338751)))

(declare-fun c!1343342 () Bool)

(assert (=> b!7237057 (= c!1343342 (is-Cons!70068 (exprs!7968 lt!2576291)))))

(declare-fun b!7237058 () Bool)

(assert (=> b!7237058 (= e!4338752 (set.union call!658943 (derivationStepZipperUp!2402 (Context!14937 (t!384243 (exprs!7968 lt!2576291))) (h!76517 s1!1971))))))

(assert (= (and d!2248081 res!2936011) b!7237054))

(assert (= (and d!2248081 c!1343343) b!7237058))

(assert (= (and d!2248081 (not c!1343343)) b!7237057))

(assert (= (and b!7237057 c!1343342) b!7237055))

(assert (= (and b!7237057 (not c!1343342)) b!7237056))

(assert (= (or b!7237058 b!7237055) bm!658938))

(declare-fun m!7908440 () Bool)

(assert (=> b!7237054 m!7908440))

(declare-fun m!7908442 () Bool)

(assert (=> bm!658938 m!7908442))

(declare-fun m!7908444 () Bool)

(assert (=> b!7237058 m!7908444))

(assert (=> b!7236977 d!2248081))

(declare-fun d!2248083 () Bool)

(declare-fun choose!55667 ((Set Context!14936) Int) (Set Context!14936))

(assert (=> d!2248083 (= (flatMap!2732 lt!2576285 lambda!440606) (choose!55667 lt!2576285 lambda!440606))))

(declare-fun bs!1903537 () Bool)

(assert (= bs!1903537 d!2248083))

(declare-fun m!7908446 () Bool)

(assert (=> bs!1903537 m!7908446))

(assert (=> b!7236986 d!2248083))

(declare-fun d!2248085 () Bool)

(assert (=> d!2248085 (= (tail!14169 lt!2576275) (t!384243 lt!2576275))))

(assert (=> b!7236986 d!2248085))

(declare-fun d!2248087 () Bool)

(declare-fun nullableFct!3074 (Regex!18528) Bool)

(assert (=> d!2248087 (= (nullable!7841 (h!76516 (exprs!7968 ct1!232))) (nullableFct!3074 (h!76516 (exprs!7968 ct1!232))))))

(declare-fun bs!1903538 () Bool)

(assert (= bs!1903538 d!2248087))

(declare-fun m!7908448 () Bool)

(assert (=> bs!1903538 m!7908448))

(assert (=> b!7236986 d!2248087))

(declare-fun d!2248089 () Bool)

(assert (=> d!2248089 (= (flatMap!2732 lt!2576287 lambda!440606) (choose!55667 lt!2576287 lambda!440606))))

(declare-fun bs!1903539 () Bool)

(assert (= bs!1903539 d!2248089))

(declare-fun m!7908450 () Bool)

(assert (=> bs!1903539 m!7908450))

(assert (=> b!7236986 d!2248089))

(declare-fun b!7237059 () Bool)

(declare-fun e!4338756 () Bool)

(assert (=> b!7237059 (= e!4338756 (nullable!7841 (h!76516 (exprs!7968 ct1!232))))))

(declare-fun b!7237060 () Bool)

(declare-fun e!4338754 () (Set Context!14936))

(declare-fun call!658944 () (Set Context!14936))

(assert (=> b!7237060 (= e!4338754 call!658944)))

(declare-fun b!7237061 () Bool)

(assert (=> b!7237061 (= e!4338754 (as set.empty (Set Context!14936)))))

(declare-fun bm!658939 () Bool)

(assert (=> bm!658939 (= call!658944 (derivationStepZipperDown!2572 (h!76516 (exprs!7968 ct1!232)) (Context!14937 (t!384243 (exprs!7968 ct1!232))) (h!76517 s1!1971)))))

(declare-fun d!2248091 () Bool)

(declare-fun c!1343345 () Bool)

(assert (=> d!2248091 (= c!1343345 e!4338756)))

(declare-fun res!2936012 () Bool)

(assert (=> d!2248091 (=> (not res!2936012) (not e!4338756))))

(assert (=> d!2248091 (= res!2936012 (is-Cons!70068 (exprs!7968 ct1!232)))))

(declare-fun e!4338755 () (Set Context!14936))

(assert (=> d!2248091 (= (derivationStepZipperUp!2402 ct1!232 (h!76517 s1!1971)) e!4338755)))

(declare-fun b!7237062 () Bool)

(assert (=> b!7237062 (= e!4338755 e!4338754)))

(declare-fun c!1343344 () Bool)

(assert (=> b!7237062 (= c!1343344 (is-Cons!70068 (exprs!7968 ct1!232)))))

(declare-fun b!7237063 () Bool)

(assert (=> b!7237063 (= e!4338755 (set.union call!658944 (derivationStepZipperUp!2402 (Context!14937 (t!384243 (exprs!7968 ct1!232))) (h!76517 s1!1971))))))

(assert (= (and d!2248091 res!2936012) b!7237059))

(assert (= (and d!2248091 c!1343345) b!7237063))

(assert (= (and d!2248091 (not c!1343345)) b!7237062))

(assert (= (and b!7237062 c!1343344) b!7237060))

(assert (= (and b!7237062 (not c!1343344)) b!7237061))

(assert (= (or b!7237063 b!7237060) bm!658939))

(assert (=> b!7237059 m!7908284))

(declare-fun m!7908452 () Bool)

(assert (=> bm!658939 m!7908452))

(declare-fun m!7908454 () Bool)

(assert (=> b!7237063 m!7908454))

(assert (=> b!7236986 d!2248091))

(declare-fun b!7237064 () Bool)

(declare-fun e!4338759 () Bool)

(assert (=> b!7237064 (= e!4338759 (nullable!7841 (h!76516 (exprs!7968 lt!2576284))))))

(declare-fun b!7237065 () Bool)

(declare-fun e!4338757 () (Set Context!14936))

(declare-fun call!658945 () (Set Context!14936))

(assert (=> b!7237065 (= e!4338757 call!658945)))

(declare-fun b!7237066 () Bool)

(assert (=> b!7237066 (= e!4338757 (as set.empty (Set Context!14936)))))

(declare-fun bm!658940 () Bool)

(assert (=> bm!658940 (= call!658945 (derivationStepZipperDown!2572 (h!76516 (exprs!7968 lt!2576284)) (Context!14937 (t!384243 (exprs!7968 lt!2576284))) (h!76517 s1!1971)))))

(declare-fun d!2248093 () Bool)

(declare-fun c!1343347 () Bool)

(assert (=> d!2248093 (= c!1343347 e!4338759)))

(declare-fun res!2936013 () Bool)

(assert (=> d!2248093 (=> (not res!2936013) (not e!4338759))))

(assert (=> d!2248093 (= res!2936013 (is-Cons!70068 (exprs!7968 lt!2576284)))))

(declare-fun e!4338758 () (Set Context!14936))

(assert (=> d!2248093 (= (derivationStepZipperUp!2402 lt!2576284 (h!76517 s1!1971)) e!4338758)))

(declare-fun b!7237067 () Bool)

(assert (=> b!7237067 (= e!4338758 e!4338757)))

(declare-fun c!1343346 () Bool)

(assert (=> b!7237067 (= c!1343346 (is-Cons!70068 (exprs!7968 lt!2576284)))))

(declare-fun b!7237068 () Bool)

(assert (=> b!7237068 (= e!4338758 (set.union call!658945 (derivationStepZipperUp!2402 (Context!14937 (t!384243 (exprs!7968 lt!2576284))) (h!76517 s1!1971))))))

(assert (= (and d!2248093 res!2936013) b!7237064))

(assert (= (and d!2248093 c!1343347) b!7237068))

(assert (= (and d!2248093 (not c!1343347)) b!7237067))

(assert (= (and b!7237067 c!1343346) b!7237065))

(assert (= (and b!7237067 (not c!1343346)) b!7237066))

(assert (= (or b!7237068 b!7237065) bm!658940))

(declare-fun m!7908456 () Bool)

(assert (=> b!7237064 m!7908456))

(declare-fun m!7908458 () Bool)

(assert (=> bm!658940 m!7908458))

(declare-fun m!7908460 () Bool)

(assert (=> b!7237068 m!7908460))

(assert (=> b!7236986 d!2248093))

(declare-fun b!7237091 () Bool)

(declare-fun e!4338772 () (Set Context!14936))

(declare-fun call!658963 () (Set Context!14936))

(declare-fun call!658960 () (Set Context!14936))

(assert (=> b!7237091 (= e!4338772 (set.union call!658963 call!658960))))

(declare-fun b!7237092 () Bool)

(declare-fun e!4338775 () Bool)

(assert (=> b!7237092 (= e!4338775 (nullable!7841 (regOne!37568 (h!76516 (exprs!7968 ct1!232)))))))

(declare-fun bm!658953 () Bool)

(declare-fun call!658962 () (Set Context!14936))

(declare-fun call!658958 () (Set Context!14936))

(assert (=> bm!658953 (= call!658962 call!658958)))

(declare-fun bm!658954 () Bool)

(declare-fun call!658959 () List!70192)

(declare-fun call!658961 () List!70192)

(assert (=> bm!658954 (= call!658959 call!658961)))

(declare-fun bm!658955 () Bool)

(assert (=> bm!658955 (= call!658958 call!658963)))

(declare-fun b!7237093 () Bool)

(declare-fun e!4338777 () (Set Context!14936))

(assert (=> b!7237093 (= e!4338777 (as set.empty (Set Context!14936)))))

(declare-fun b!7237094 () Bool)

(declare-fun e!4338776 () (Set Context!14936))

(assert (=> b!7237094 (= e!4338776 e!4338772)))

(declare-fun c!1343360 () Bool)

(assert (=> b!7237094 (= c!1343360 (is-Union!18528 (h!76516 (exprs!7968 ct1!232))))))

(declare-fun d!2248095 () Bool)

(declare-fun c!1343358 () Bool)

(assert (=> d!2248095 (= c!1343358 (and (is-ElementMatch!18528 (h!76516 (exprs!7968 ct1!232))) (= (c!1343326 (h!76516 (exprs!7968 ct1!232))) (h!76517 s1!1971))))))

(assert (=> d!2248095 (= (derivationStepZipperDown!2572 (h!76516 (exprs!7968 ct1!232)) lt!2576290 (h!76517 s1!1971)) e!4338776)))

(declare-fun b!7237095 () Bool)

(declare-fun c!1343359 () Bool)

(assert (=> b!7237095 (= c!1343359 (is-Star!18528 (h!76516 (exprs!7968 ct1!232))))))

(declare-fun e!4338774 () (Set Context!14936))

(assert (=> b!7237095 (= e!4338774 e!4338777)))

(declare-fun b!7237096 () Bool)

(declare-fun e!4338773 () (Set Context!14936))

(assert (=> b!7237096 (= e!4338773 e!4338774)))

(declare-fun c!1343361 () Bool)

(assert (=> b!7237096 (= c!1343361 (is-Concat!27373 (h!76516 (exprs!7968 ct1!232))))))

(declare-fun c!1343362 () Bool)

(declare-fun bm!658956 () Bool)

(assert (=> bm!658956 (= call!658963 (derivationStepZipperDown!2572 (ite c!1343360 (regOne!37569 (h!76516 (exprs!7968 ct1!232))) (ite c!1343362 (regTwo!37568 (h!76516 (exprs!7968 ct1!232))) (ite c!1343361 (regOne!37568 (h!76516 (exprs!7968 ct1!232))) (reg!18857 (h!76516 (exprs!7968 ct1!232)))))) (ite (or c!1343360 c!1343362) lt!2576290 (Context!14937 call!658959)) (h!76517 s1!1971)))))

(declare-fun b!7237097 () Bool)

(assert (=> b!7237097 (= c!1343362 e!4338775)))

(declare-fun res!2936016 () Bool)

(assert (=> b!7237097 (=> (not res!2936016) (not e!4338775))))

(assert (=> b!7237097 (= res!2936016 (is-Concat!27373 (h!76516 (exprs!7968 ct1!232))))))

(assert (=> b!7237097 (= e!4338772 e!4338773)))

(declare-fun b!7237098 () Bool)

(assert (=> b!7237098 (= e!4338773 (set.union call!658960 call!658958))))

(declare-fun bm!658957 () Bool)

(declare-fun $colon$colon!2881 (List!70192 Regex!18528) List!70192)

(assert (=> bm!658957 (= call!658961 ($colon$colon!2881 (exprs!7968 lt!2576290) (ite (or c!1343362 c!1343361) (regTwo!37568 (h!76516 (exprs!7968 ct1!232))) (h!76516 (exprs!7968 ct1!232)))))))

(declare-fun b!7237099 () Bool)

(assert (=> b!7237099 (= e!4338777 call!658962)))

(declare-fun b!7237100 () Bool)

(assert (=> b!7237100 (= e!4338774 call!658962)))

(declare-fun b!7237101 () Bool)

(assert (=> b!7237101 (= e!4338776 (set.insert lt!2576290 (as set.empty (Set Context!14936))))))

(declare-fun bm!658958 () Bool)

(assert (=> bm!658958 (= call!658960 (derivationStepZipperDown!2572 (ite c!1343360 (regTwo!37569 (h!76516 (exprs!7968 ct1!232))) (regOne!37568 (h!76516 (exprs!7968 ct1!232)))) (ite c!1343360 lt!2576290 (Context!14937 call!658961)) (h!76517 s1!1971)))))

(assert (= (and d!2248095 c!1343358) b!7237101))

(assert (= (and d!2248095 (not c!1343358)) b!7237094))

(assert (= (and b!7237094 c!1343360) b!7237091))

(assert (= (and b!7237094 (not c!1343360)) b!7237097))

(assert (= (and b!7237097 res!2936016) b!7237092))

(assert (= (and b!7237097 c!1343362) b!7237098))

(assert (= (and b!7237097 (not c!1343362)) b!7237096))

(assert (= (and b!7237096 c!1343361) b!7237100))

(assert (= (and b!7237096 (not c!1343361)) b!7237095))

(assert (= (and b!7237095 c!1343359) b!7237099))

(assert (= (and b!7237095 (not c!1343359)) b!7237093))

(assert (= (or b!7237100 b!7237099) bm!658954))

(assert (= (or b!7237100 b!7237099) bm!658953))

(assert (= (or b!7237098 bm!658954) bm!658957))

(assert (= (or b!7237098 bm!658953) bm!658955))

(assert (= (or b!7237091 b!7237098) bm!658958))

(assert (= (or b!7237091 bm!658955) bm!658956))

(declare-fun m!7908462 () Bool)

(assert (=> bm!658957 m!7908462))

(declare-fun m!7908464 () Bool)

(assert (=> bm!658958 m!7908464))

(declare-fun m!7908466 () Bool)

(assert (=> bm!658956 m!7908466))

(declare-fun m!7908468 () Bool)

(assert (=> b!7237101 m!7908468))

(declare-fun m!7908470 () Bool)

(assert (=> b!7237092 m!7908470))

(assert (=> b!7236986 d!2248095))

(declare-fun d!2248097 () Bool)

(declare-fun forall!17366 (List!70192 Int) Bool)

(assert (=> d!2248097 (forall!17366 (++!16356 (exprs!7968 ct1!232) (exprs!7968 ct2!328)) lambda!440604)))

(declare-fun lt!2576378 () Unit!163594)

(declare-fun choose!55668 (List!70192 List!70192 Int) Unit!163594)

(assert (=> d!2248097 (= lt!2576378 (choose!55668 (exprs!7968 ct1!232) (exprs!7968 ct2!328) lambda!440604))))

(assert (=> d!2248097 (forall!17366 (exprs!7968 ct1!232) lambda!440604)))

(assert (=> d!2248097 (= (lemmaConcatPreservesForall!1337 (exprs!7968 ct1!232) (exprs!7968 ct2!328) lambda!440604) lt!2576378)))

(declare-fun bs!1903540 () Bool)

(assert (= bs!1903540 d!2248097))

(assert (=> bs!1903540 m!7908322))

(assert (=> bs!1903540 m!7908322))

(declare-fun m!7908472 () Bool)

(assert (=> bs!1903540 m!7908472))

(declare-fun m!7908474 () Bool)

(assert (=> bs!1903540 m!7908474))

(declare-fun m!7908476 () Bool)

(assert (=> bs!1903540 m!7908476))

(assert (=> b!7236986 d!2248097))

(declare-fun d!2248099 () Bool)

(declare-fun dynLambda!28595 (Int Context!14936) (Set Context!14936))

(assert (=> d!2248099 (= (flatMap!2732 lt!2576287 lambda!440606) (dynLambda!28595 lambda!440606 ct1!232))))

(declare-fun lt!2576381 () Unit!163594)

(declare-fun choose!55669 ((Set Context!14936) Context!14936 Int) Unit!163594)

(assert (=> d!2248099 (= lt!2576381 (choose!55669 lt!2576287 ct1!232 lambda!440606))))

(assert (=> d!2248099 (= lt!2576287 (set.insert ct1!232 (as set.empty (Set Context!14936))))))

(assert (=> d!2248099 (= (lemmaFlatMapOnSingletonSet!2159 lt!2576287 ct1!232 lambda!440606) lt!2576381)))

(declare-fun b_lambda!277539 () Bool)

(assert (=> (not b_lambda!277539) (not d!2248099)))

(declare-fun bs!1903541 () Bool)

(assert (= bs!1903541 d!2248099))

(assert (=> bs!1903541 m!7908280))

(declare-fun m!7908478 () Bool)

(assert (=> bs!1903541 m!7908478))

(declare-fun m!7908480 () Bool)

(assert (=> bs!1903541 m!7908480))

(assert (=> bs!1903541 m!7908338))

(assert (=> b!7236986 d!2248099))

(declare-fun d!2248101 () Bool)

(assert (=> d!2248101 (= (flatMap!2732 lt!2576285 lambda!440606) (dynLambda!28595 lambda!440606 lt!2576284))))

(declare-fun lt!2576382 () Unit!163594)

(assert (=> d!2248101 (= lt!2576382 (choose!55669 lt!2576285 lt!2576284 lambda!440606))))

(assert (=> d!2248101 (= lt!2576285 (set.insert lt!2576284 (as set.empty (Set Context!14936))))))

(assert (=> d!2248101 (= (lemmaFlatMapOnSingletonSet!2159 lt!2576285 lt!2576284 lambda!440606) lt!2576382)))

(declare-fun b_lambda!277541 () Bool)

(assert (=> (not b_lambda!277541) (not d!2248101)))

(declare-fun bs!1903542 () Bool)

(assert (= bs!1903542 d!2248101))

(assert (=> bs!1903542 m!7908290))

(declare-fun m!7908482 () Bool)

(assert (=> bs!1903542 m!7908482))

(declare-fun m!7908484 () Bool)

(assert (=> bs!1903542 m!7908484))

(assert (=> bs!1903542 m!7908320))

(assert (=> b!7236986 d!2248101))

(assert (=> b!7236987 d!2248097))

(declare-fun d!2248103 () Bool)

(declare-fun c!1343365 () Bool)

(declare-fun isEmpty!40385 (List!70193) Bool)

(assert (=> d!2248103 (= c!1343365 (isEmpty!40385 (t!384244 s1!1971)))))

(declare-fun e!4338780 () Bool)

(assert (=> d!2248103 (= (matchZipper!3438 lt!2576272 (t!384244 s1!1971)) e!4338780)))

(declare-fun b!7237106 () Bool)

(declare-fun nullableZipper!2834 ((Set Context!14936)) Bool)

(assert (=> b!7237106 (= e!4338780 (nullableZipper!2834 lt!2576272))))

(declare-fun b!7237107 () Bool)

(declare-fun head!14823 (List!70193) C!37330)

(declare-fun tail!14171 (List!70193) List!70193)

(assert (=> b!7237107 (= e!4338780 (matchZipper!3438 (derivationStepZipper!3320 lt!2576272 (head!14823 (t!384244 s1!1971))) (tail!14171 (t!384244 s1!1971))))))

(assert (= (and d!2248103 c!1343365) b!7237106))

(assert (= (and d!2248103 (not c!1343365)) b!7237107))

(declare-fun m!7908486 () Bool)

(assert (=> d!2248103 m!7908486))

(declare-fun m!7908488 () Bool)

(assert (=> b!7237106 m!7908488))

(declare-fun m!7908490 () Bool)

(assert (=> b!7237107 m!7908490))

(assert (=> b!7237107 m!7908490))

(declare-fun m!7908492 () Bool)

(assert (=> b!7237107 m!7908492))

(declare-fun m!7908494 () Bool)

(assert (=> b!7237107 m!7908494))

(assert (=> b!7237107 m!7908492))

(assert (=> b!7237107 m!7908494))

(declare-fun m!7908496 () Bool)

(assert (=> b!7237107 m!7908496))

(assert (=> b!7236987 d!2248103))

(declare-fun d!2248105 () Bool)

(declare-fun c!1343366 () Bool)

(assert (=> d!2248105 (= c!1343366 (isEmpty!40385 (t!384244 s1!1971)))))

(declare-fun e!4338781 () Bool)

(assert (=> d!2248105 (= (matchZipper!3438 lt!2576274 (t!384244 s1!1971)) e!4338781)))

(declare-fun b!7237108 () Bool)

(assert (=> b!7237108 (= e!4338781 (nullableZipper!2834 lt!2576274))))

(declare-fun b!7237109 () Bool)

(assert (=> b!7237109 (= e!4338781 (matchZipper!3438 (derivationStepZipper!3320 lt!2576274 (head!14823 (t!384244 s1!1971))) (tail!14171 (t!384244 s1!1971))))))

(assert (= (and d!2248105 c!1343366) b!7237108))

(assert (= (and d!2248105 (not c!1343366)) b!7237109))

(assert (=> d!2248105 m!7908486))

(declare-fun m!7908498 () Bool)

(assert (=> b!7237108 m!7908498))

(assert (=> b!7237109 m!7908490))

(assert (=> b!7237109 m!7908490))

(declare-fun m!7908500 () Bool)

(assert (=> b!7237109 m!7908500))

(assert (=> b!7237109 m!7908494))

(assert (=> b!7237109 m!7908500))

(assert (=> b!7237109 m!7908494))

(declare-fun m!7908502 () Bool)

(assert (=> b!7237109 m!7908502))

(assert (=> b!7236987 d!2248105))

(declare-fun d!2248107 () Bool)

(declare-fun e!4338784 () Bool)

(assert (=> d!2248107 (= (matchZipper!3438 (set.union lt!2576274 lt!2576270) (t!384244 s1!1971)) e!4338784)))

(declare-fun res!2936019 () Bool)

(assert (=> d!2248107 (=> res!2936019 e!4338784)))

(assert (=> d!2248107 (= res!2936019 (matchZipper!3438 lt!2576274 (t!384244 s1!1971)))))

(declare-fun lt!2576385 () Unit!163594)

(declare-fun choose!55670 ((Set Context!14936) (Set Context!14936) List!70193) Unit!163594)

(assert (=> d!2248107 (= lt!2576385 (choose!55670 lt!2576274 lt!2576270 (t!384244 s1!1971)))))

(assert (=> d!2248107 (= (lemmaZipperConcatMatchesSameAsBothZippers!1675 lt!2576274 lt!2576270 (t!384244 s1!1971)) lt!2576385)))

(declare-fun b!7237112 () Bool)

(assert (=> b!7237112 (= e!4338784 (matchZipper!3438 lt!2576270 (t!384244 s1!1971)))))

(assert (= (and d!2248107 (not res!2936019)) b!7237112))

(declare-fun m!7908504 () Bool)

(assert (=> d!2248107 m!7908504))

(assert (=> d!2248107 m!7908300))

(declare-fun m!7908506 () Bool)

(assert (=> d!2248107 m!7908506))

(assert (=> b!7237112 m!7908354))

(assert (=> b!7236987 d!2248107))

(declare-fun d!2248109 () Bool)

(declare-fun c!1343367 () Bool)

(assert (=> d!2248109 (= c!1343367 (isEmpty!40385 s2!1849))))

(declare-fun e!4338785 () Bool)

(assert (=> d!2248109 (= (matchZipper!3438 (set.insert ct2!328 (as set.empty (Set Context!14936))) s2!1849) e!4338785)))

(declare-fun b!7237113 () Bool)

(assert (=> b!7237113 (= e!4338785 (nullableZipper!2834 (set.insert ct2!328 (as set.empty (Set Context!14936)))))))

(declare-fun b!7237114 () Bool)

(assert (=> b!7237114 (= e!4338785 (matchZipper!3438 (derivationStepZipper!3320 (set.insert ct2!328 (as set.empty (Set Context!14936))) (head!14823 s2!1849)) (tail!14171 s2!1849)))))

(assert (= (and d!2248109 c!1343367) b!7237113))

(assert (= (and d!2248109 (not c!1343367)) b!7237114))

(declare-fun m!7908508 () Bool)

(assert (=> d!2248109 m!7908508))

(assert (=> b!7237113 m!7908332))

(declare-fun m!7908510 () Bool)

(assert (=> b!7237113 m!7908510))

(declare-fun m!7908512 () Bool)

(assert (=> b!7237114 m!7908512))

(assert (=> b!7237114 m!7908332))

(assert (=> b!7237114 m!7908512))

(declare-fun m!7908514 () Bool)

(assert (=> b!7237114 m!7908514))

(declare-fun m!7908516 () Bool)

(assert (=> b!7237114 m!7908516))

(assert (=> b!7237114 m!7908514))

(assert (=> b!7237114 m!7908516))

(declare-fun m!7908518 () Bool)

(assert (=> b!7237114 m!7908518))

(assert (=> b!7236976 d!2248109))

(declare-fun d!2248111 () Bool)

(declare-fun lt!2576388 () Bool)

(assert (=> d!2248111 (= lt!2576388 (exists!4200 (toList!11385 lt!2576265) lambda!440605))))

(declare-fun choose!55671 ((Set Context!14936) Int) Bool)

(assert (=> d!2248111 (= lt!2576388 (choose!55671 lt!2576265 lambda!440605))))

(assert (=> d!2248111 (= (exists!4199 lt!2576265 lambda!440605) lt!2576388)))

(declare-fun bs!1903543 () Bool)

(assert (= bs!1903543 d!2248111))

(assert (=> bs!1903543 m!7908350))

(assert (=> bs!1903543 m!7908350))

(declare-fun m!7908520 () Bool)

(assert (=> bs!1903543 m!7908520))

(declare-fun m!7908522 () Bool)

(assert (=> bs!1903543 m!7908522))

(assert (=> b!7236980 d!2248111))

(declare-fun bs!1903544 () Bool)

(declare-fun d!2248113 () Bool)

(assert (= bs!1903544 (and d!2248113 b!7236980)))

(declare-fun lambda!440638 () Int)

(assert (=> bs!1903544 (not (= lambda!440638 lambda!440605))))

(assert (=> d!2248113 true))

(declare-fun order!28867 () Int)

(declare-fun dynLambda!28596 (Int Int) Int)

(assert (=> d!2248113 (< (dynLambda!28596 order!28867 lambda!440605) (dynLambda!28596 order!28867 lambda!440638))))

(declare-fun forall!17367 (List!70194 Int) Bool)

(assert (=> d!2248113 (= (exists!4200 lt!2576269 lambda!440605) (not (forall!17367 lt!2576269 lambda!440638)))))

(declare-fun bs!1903545 () Bool)

(assert (= bs!1903545 d!2248113))

(declare-fun m!7908524 () Bool)

(assert (=> bs!1903545 m!7908524))

(assert (=> b!7236980 d!2248113))

(declare-fun bs!1903546 () Bool)

(declare-fun d!2248115 () Bool)

(assert (= bs!1903546 (and d!2248115 b!7236980)))

(declare-fun lambda!440641 () Int)

(assert (=> bs!1903546 (= lambda!440641 lambda!440605)))

(declare-fun bs!1903547 () Bool)

(assert (= bs!1903547 (and d!2248115 d!2248113)))

(assert (=> bs!1903547 (not (= lambda!440641 lambda!440638))))

(assert (=> d!2248115 true))

(assert (=> d!2248115 (exists!4200 lt!2576269 lambda!440641)))

(declare-fun lt!2576391 () Unit!163594)

(declare-fun choose!55672 (List!70194 List!70193) Unit!163594)

(assert (=> d!2248115 (= lt!2576391 (choose!55672 lt!2576269 (t!384244 s1!1971)))))

(declare-fun content!14449 (List!70194) (Set Context!14936))

(assert (=> d!2248115 (matchZipper!3438 (content!14449 lt!2576269) (t!384244 s1!1971))))

(assert (=> d!2248115 (= (lemmaZipperMatchesExistsMatchingContext!671 lt!2576269 (t!384244 s1!1971)) lt!2576391)))

(declare-fun bs!1903548 () Bool)

(assert (= bs!1903548 d!2248115))

(declare-fun m!7908526 () Bool)

(assert (=> bs!1903548 m!7908526))

(declare-fun m!7908528 () Bool)

(assert (=> bs!1903548 m!7908528))

(declare-fun m!7908530 () Bool)

(assert (=> bs!1903548 m!7908530))

(assert (=> bs!1903548 m!7908530))

(declare-fun m!7908532 () Bool)

(assert (=> bs!1903548 m!7908532))

(assert (=> b!7236980 d!2248115))

(declare-fun d!2248117 () Bool)

(declare-fun e!4338788 () Bool)

(assert (=> d!2248117 e!4338788))

(declare-fun res!2936022 () Bool)

(assert (=> d!2248117 (=> (not res!2936022) (not e!4338788))))

(declare-fun lt!2576394 () List!70194)

(declare-fun noDuplicate!2943 (List!70194) Bool)

(assert (=> d!2248117 (= res!2936022 (noDuplicate!2943 lt!2576394))))

(declare-fun choose!55673 ((Set Context!14936)) List!70194)

(assert (=> d!2248117 (= lt!2576394 (choose!55673 lt!2576265))))

(assert (=> d!2248117 (= (toList!11385 lt!2576265) lt!2576394)))

(declare-fun b!7237119 () Bool)

(assert (=> b!7237119 (= e!4338788 (= (content!14449 lt!2576394) lt!2576265))))

(assert (= (and d!2248117 res!2936022) b!7237119))

(declare-fun m!7908534 () Bool)

(assert (=> d!2248117 m!7908534))

(declare-fun m!7908536 () Bool)

(assert (=> d!2248117 m!7908536))

(declare-fun m!7908538 () Bool)

(assert (=> b!7237119 m!7908538))

(assert (=> b!7236980 d!2248117))

(declare-fun d!2248119 () Bool)

(declare-fun c!1343370 () Bool)

(assert (=> d!2248119 (= c!1343370 (isEmpty!40385 s1!1971))))

(declare-fun e!4338789 () Bool)

(assert (=> d!2248119 (= (matchZipper!3438 lt!2576287 s1!1971) e!4338789)))

(declare-fun b!7237120 () Bool)

(assert (=> b!7237120 (= e!4338789 (nullableZipper!2834 lt!2576287))))

(declare-fun b!7237121 () Bool)

(assert (=> b!7237121 (= e!4338789 (matchZipper!3438 (derivationStepZipper!3320 lt!2576287 (head!14823 s1!1971)) (tail!14171 s1!1971)))))

(assert (= (and d!2248119 c!1343370) b!7237120))

(assert (= (and d!2248119 (not c!1343370)) b!7237121))

(declare-fun m!7908540 () Bool)

(assert (=> d!2248119 m!7908540))

(declare-fun m!7908542 () Bool)

(assert (=> b!7237120 m!7908542))

(declare-fun m!7908544 () Bool)

(assert (=> b!7237121 m!7908544))

(assert (=> b!7237121 m!7908544))

(declare-fun m!7908546 () Bool)

(assert (=> b!7237121 m!7908546))

(declare-fun m!7908548 () Bool)

(assert (=> b!7237121 m!7908548))

(assert (=> b!7237121 m!7908546))

(assert (=> b!7237121 m!7908548))

(declare-fun m!7908550 () Bool)

(assert (=> b!7237121 m!7908550))

(assert (=> start!702746 d!2248119))

(declare-fun bs!1903549 () Bool)

(declare-fun d!2248121 () Bool)

(assert (= bs!1903549 (and d!2248121 b!7236982)))

(declare-fun lambda!440644 () Int)

(assert (=> bs!1903549 (= lambda!440644 lambda!440604)))

(assert (=> d!2248121 (= (inv!89331 ct1!232) (forall!17366 (exprs!7968 ct1!232) lambda!440644))))

(declare-fun bs!1903550 () Bool)

(assert (= bs!1903550 d!2248121))

(declare-fun m!7908552 () Bool)

(assert (=> bs!1903550 m!7908552))

(assert (=> start!702746 d!2248121))

(declare-fun bs!1903551 () Bool)

(declare-fun d!2248123 () Bool)

(assert (= bs!1903551 (and d!2248123 b!7236982)))

(declare-fun lambda!440645 () Int)

(assert (=> bs!1903551 (= lambda!440645 lambda!440604)))

(declare-fun bs!1903552 () Bool)

(assert (= bs!1903552 (and d!2248123 d!2248121)))

(assert (=> bs!1903552 (= lambda!440645 lambda!440644)))

(assert (=> d!2248123 (= (inv!89331 ct2!328) (forall!17366 (exprs!7968 ct2!328) lambda!440645))))

(declare-fun bs!1903553 () Bool)

(assert (= bs!1903553 d!2248123))

(declare-fun m!7908554 () Bool)

(assert (=> bs!1903553 m!7908554))

(assert (=> start!702746 d!2248123))

(declare-fun d!2248125 () Bool)

(assert (=> d!2248125 (= (tail!14169 (exprs!7968 ct1!232)) (t!384243 (exprs!7968 ct1!232)))))

(assert (=> b!7236978 d!2248125))

(declare-fun d!2248127 () Bool)

(assert (=> d!2248127 (= (isEmpty!40383 lt!2576275) (is-Nil!70068 lt!2576275))))

(assert (=> b!7236978 d!2248127))

(assert (=> b!7236978 d!2248097))

(declare-fun b!7237122 () Bool)

(declare-fun e!4338790 () (Set Context!14936))

(declare-fun call!658969 () (Set Context!14936))

(declare-fun call!658966 () (Set Context!14936))

(assert (=> b!7237122 (= e!4338790 (set.union call!658969 call!658966))))

(declare-fun b!7237123 () Bool)

(declare-fun e!4338793 () Bool)

(assert (=> b!7237123 (= e!4338793 (nullable!7841 (regOne!37568 (h!76516 (exprs!7968 ct1!232)))))))

(declare-fun bm!658959 () Bool)

(declare-fun call!658968 () (Set Context!14936))

(declare-fun call!658964 () (Set Context!14936))

(assert (=> bm!658959 (= call!658968 call!658964)))

(declare-fun bm!658960 () Bool)

(declare-fun call!658965 () List!70192)

(declare-fun call!658967 () List!70192)

(assert (=> bm!658960 (= call!658965 call!658967)))

(declare-fun bm!658961 () Bool)

(assert (=> bm!658961 (= call!658964 call!658969)))

(declare-fun b!7237124 () Bool)

(declare-fun e!4338795 () (Set Context!14936))

(assert (=> b!7237124 (= e!4338795 (as set.empty (Set Context!14936)))))

(declare-fun b!7237125 () Bool)

(declare-fun e!4338794 () (Set Context!14936))

(assert (=> b!7237125 (= e!4338794 e!4338790)))

(declare-fun c!1343373 () Bool)

(assert (=> b!7237125 (= c!1343373 (is-Union!18528 (h!76516 (exprs!7968 ct1!232))))))

(declare-fun d!2248129 () Bool)

(declare-fun c!1343371 () Bool)

(assert (=> d!2248129 (= c!1343371 (and (is-ElementMatch!18528 (h!76516 (exprs!7968 ct1!232))) (= (c!1343326 (h!76516 (exprs!7968 ct1!232))) (h!76517 s1!1971))))))

(assert (=> d!2248129 (= (derivationStepZipperDown!2572 (h!76516 (exprs!7968 ct1!232)) lt!2576291 (h!76517 s1!1971)) e!4338794)))

(declare-fun b!7237126 () Bool)

(declare-fun c!1343372 () Bool)

(assert (=> b!7237126 (= c!1343372 (is-Star!18528 (h!76516 (exprs!7968 ct1!232))))))

(declare-fun e!4338792 () (Set Context!14936))

(assert (=> b!7237126 (= e!4338792 e!4338795)))

(declare-fun b!7237127 () Bool)

(declare-fun e!4338791 () (Set Context!14936))

(assert (=> b!7237127 (= e!4338791 e!4338792)))

(declare-fun c!1343374 () Bool)

(assert (=> b!7237127 (= c!1343374 (is-Concat!27373 (h!76516 (exprs!7968 ct1!232))))))

(declare-fun bm!658962 () Bool)

(declare-fun c!1343375 () Bool)

(assert (=> bm!658962 (= call!658969 (derivationStepZipperDown!2572 (ite c!1343373 (regOne!37569 (h!76516 (exprs!7968 ct1!232))) (ite c!1343375 (regTwo!37568 (h!76516 (exprs!7968 ct1!232))) (ite c!1343374 (regOne!37568 (h!76516 (exprs!7968 ct1!232))) (reg!18857 (h!76516 (exprs!7968 ct1!232)))))) (ite (or c!1343373 c!1343375) lt!2576291 (Context!14937 call!658965)) (h!76517 s1!1971)))))

(declare-fun b!7237128 () Bool)

(assert (=> b!7237128 (= c!1343375 e!4338793)))

(declare-fun res!2936023 () Bool)

(assert (=> b!7237128 (=> (not res!2936023) (not e!4338793))))

(assert (=> b!7237128 (= res!2936023 (is-Concat!27373 (h!76516 (exprs!7968 ct1!232))))))

(assert (=> b!7237128 (= e!4338790 e!4338791)))

(declare-fun b!7237129 () Bool)

(assert (=> b!7237129 (= e!4338791 (set.union call!658966 call!658964))))

(declare-fun bm!658963 () Bool)

(assert (=> bm!658963 (= call!658967 ($colon$colon!2881 (exprs!7968 lt!2576291) (ite (or c!1343375 c!1343374) (regTwo!37568 (h!76516 (exprs!7968 ct1!232))) (h!76516 (exprs!7968 ct1!232)))))))

(declare-fun b!7237130 () Bool)

(assert (=> b!7237130 (= e!4338795 call!658968)))

(declare-fun b!7237131 () Bool)

(assert (=> b!7237131 (= e!4338792 call!658968)))

(declare-fun b!7237132 () Bool)

(assert (=> b!7237132 (= e!4338794 (set.insert lt!2576291 (as set.empty (Set Context!14936))))))

(declare-fun bm!658964 () Bool)

(assert (=> bm!658964 (= call!658966 (derivationStepZipperDown!2572 (ite c!1343373 (regTwo!37569 (h!76516 (exprs!7968 ct1!232))) (regOne!37568 (h!76516 (exprs!7968 ct1!232)))) (ite c!1343373 lt!2576291 (Context!14937 call!658967)) (h!76517 s1!1971)))))

(assert (= (and d!2248129 c!1343371) b!7237132))

(assert (= (and d!2248129 (not c!1343371)) b!7237125))

(assert (= (and b!7237125 c!1343373) b!7237122))

(assert (= (and b!7237125 (not c!1343373)) b!7237128))

(assert (= (and b!7237128 res!2936023) b!7237123))

(assert (= (and b!7237128 c!1343375) b!7237129))

(assert (= (and b!7237128 (not c!1343375)) b!7237127))

(assert (= (and b!7237127 c!1343374) b!7237131))

(assert (= (and b!7237127 (not c!1343374)) b!7237126))

(assert (= (and b!7237126 c!1343372) b!7237130))

(assert (= (and b!7237126 (not c!1343372)) b!7237124))

(assert (= (or b!7237131 b!7237130) bm!658960))

(assert (= (or b!7237131 b!7237130) bm!658959))

(assert (= (or b!7237129 bm!658960) bm!658963))

(assert (= (or b!7237129 bm!658959) bm!658961))

(assert (= (or b!7237122 b!7237129) bm!658964))

(assert (= (or b!7237122 bm!658961) bm!658962))

(declare-fun m!7908556 () Bool)

(assert (=> bm!658963 m!7908556))

(declare-fun m!7908558 () Bool)

(assert (=> bm!658964 m!7908558))

(declare-fun m!7908560 () Bool)

(assert (=> bm!658962 m!7908560))

(declare-fun m!7908562 () Bool)

(assert (=> b!7237132 m!7908562))

(assert (=> b!7237123 m!7908470))

(assert (=> b!7236978 d!2248129))

(assert (=> b!7236978 d!2248093))

(declare-fun b!7237144 () Bool)

(declare-fun lt!2576397 () List!70192)

(declare-fun e!4338800 () Bool)

(assert (=> b!7237144 (= e!4338800 (or (not (= (exprs!7968 ct2!328) Nil!70068)) (= lt!2576397 (exprs!7968 ct1!232))))))

(declare-fun b!7237141 () Bool)

(declare-fun e!4338801 () List!70192)

(assert (=> b!7237141 (= e!4338801 (exprs!7968 ct2!328))))

(declare-fun b!7237142 () Bool)

(assert (=> b!7237142 (= e!4338801 (Cons!70068 (h!76516 (exprs!7968 ct1!232)) (++!16356 (t!384243 (exprs!7968 ct1!232)) (exprs!7968 ct2!328))))))

(declare-fun b!7237143 () Bool)

(declare-fun res!2936029 () Bool)

(assert (=> b!7237143 (=> (not res!2936029) (not e!4338800))))

(declare-fun size!41600 (List!70192) Int)

(assert (=> b!7237143 (= res!2936029 (= (size!41600 lt!2576397) (+ (size!41600 (exprs!7968 ct1!232)) (size!41600 (exprs!7968 ct2!328)))))))

(declare-fun d!2248131 () Bool)

(assert (=> d!2248131 e!4338800))

(declare-fun res!2936028 () Bool)

(assert (=> d!2248131 (=> (not res!2936028) (not e!4338800))))

(declare-fun content!14450 (List!70192) (Set Regex!18528))

(assert (=> d!2248131 (= res!2936028 (= (content!14450 lt!2576397) (set.union (content!14450 (exprs!7968 ct1!232)) (content!14450 (exprs!7968 ct2!328)))))))

(assert (=> d!2248131 (= lt!2576397 e!4338801)))

(declare-fun c!1343378 () Bool)

(assert (=> d!2248131 (= c!1343378 (is-Nil!70068 (exprs!7968 ct1!232)))))

(assert (=> d!2248131 (= (++!16356 (exprs!7968 ct1!232) (exprs!7968 ct2!328)) lt!2576397)))

(assert (= (and d!2248131 c!1343378) b!7237141))

(assert (= (and d!2248131 (not c!1343378)) b!7237142))

(assert (= (and d!2248131 res!2936028) b!7237143))

(assert (= (and b!7237143 res!2936029) b!7237144))

(declare-fun m!7908564 () Bool)

(assert (=> b!7237142 m!7908564))

(declare-fun m!7908566 () Bool)

(assert (=> b!7237143 m!7908566))

(declare-fun m!7908568 () Bool)

(assert (=> b!7237143 m!7908568))

(declare-fun m!7908570 () Bool)

(assert (=> b!7237143 m!7908570))

(declare-fun m!7908572 () Bool)

(assert (=> d!2248131 m!7908572))

(declare-fun m!7908574 () Bool)

(assert (=> d!2248131 m!7908574))

(declare-fun m!7908576 () Bool)

(assert (=> d!2248131 m!7908576))

(assert (=> b!7236982 d!2248131))

(assert (=> b!7236982 d!2248097))

(declare-fun d!2248133 () Bool)

(declare-fun c!1343379 () Bool)

(assert (=> d!2248133 (= c!1343379 (isEmpty!40385 (t!384244 s1!1971)))))

(declare-fun e!4338802 () Bool)

(assert (=> d!2248133 (= (matchZipper!3438 lt!2576270 (t!384244 s1!1971)) e!4338802)))

(declare-fun b!7237145 () Bool)

(assert (=> b!7237145 (= e!4338802 (nullableZipper!2834 lt!2576270))))

(declare-fun b!7237146 () Bool)

(assert (=> b!7237146 (= e!4338802 (matchZipper!3438 (derivationStepZipper!3320 lt!2576270 (head!14823 (t!384244 s1!1971))) (tail!14171 (t!384244 s1!1971))))))

(assert (= (and d!2248133 c!1343379) b!7237145))

(assert (= (and d!2248133 (not c!1343379)) b!7237146))

(assert (=> d!2248133 m!7908486))

(declare-fun m!7908578 () Bool)

(assert (=> b!7237145 m!7908578))

(assert (=> b!7237146 m!7908490))

(assert (=> b!7237146 m!7908490))

(declare-fun m!7908580 () Bool)

(assert (=> b!7237146 m!7908580))

(assert (=> b!7237146 m!7908494))

(assert (=> b!7237146 m!7908580))

(assert (=> b!7237146 m!7908494))

(declare-fun m!7908582 () Bool)

(assert (=> b!7237146 m!7908582))

(assert (=> b!7236983 d!2248133))

(declare-fun e!4338803 () Bool)

(declare-fun lt!2576398 () List!70192)

(declare-fun b!7237150 () Bool)

(assert (=> b!7237150 (= e!4338803 (or (not (= (exprs!7968 ct2!328) Nil!70068)) (= lt!2576398 (exprs!7968 lt!2576267))))))

(declare-fun b!7237147 () Bool)

(declare-fun e!4338804 () List!70192)

(assert (=> b!7237147 (= e!4338804 (exprs!7968 ct2!328))))

(declare-fun b!7237148 () Bool)

(assert (=> b!7237148 (= e!4338804 (Cons!70068 (h!76516 (exprs!7968 lt!2576267)) (++!16356 (t!384243 (exprs!7968 lt!2576267)) (exprs!7968 ct2!328))))))

(declare-fun b!7237149 () Bool)

(declare-fun res!2936031 () Bool)

(assert (=> b!7237149 (=> (not res!2936031) (not e!4338803))))

(assert (=> b!7237149 (= res!2936031 (= (size!41600 lt!2576398) (+ (size!41600 (exprs!7968 lt!2576267)) (size!41600 (exprs!7968 ct2!328)))))))

(declare-fun d!2248135 () Bool)

(assert (=> d!2248135 e!4338803))

(declare-fun res!2936030 () Bool)

(assert (=> d!2248135 (=> (not res!2936030) (not e!4338803))))

(assert (=> d!2248135 (= res!2936030 (= (content!14450 lt!2576398) (set.union (content!14450 (exprs!7968 lt!2576267)) (content!14450 (exprs!7968 ct2!328)))))))

(assert (=> d!2248135 (= lt!2576398 e!4338804)))

(declare-fun c!1343380 () Bool)

(assert (=> d!2248135 (= c!1343380 (is-Nil!70068 (exprs!7968 lt!2576267)))))

(assert (=> d!2248135 (= (++!16356 (exprs!7968 lt!2576267) (exprs!7968 ct2!328)) lt!2576398)))

(assert (= (and d!2248135 c!1343380) b!7237147))

(assert (= (and d!2248135 (not c!1343380)) b!7237148))

(assert (= (and d!2248135 res!2936030) b!7237149))

(assert (= (and b!7237149 res!2936031) b!7237150))

(declare-fun m!7908584 () Bool)

(assert (=> b!7237148 m!7908584))

(declare-fun m!7908586 () Bool)

(assert (=> b!7237149 m!7908586))

(declare-fun m!7908588 () Bool)

(assert (=> b!7237149 m!7908588))

(assert (=> b!7237149 m!7908570))

(declare-fun m!7908590 () Bool)

(assert (=> d!2248135 m!7908590))

(declare-fun m!7908592 () Bool)

(assert (=> d!2248135 m!7908592))

(assert (=> d!2248135 m!7908576))

(assert (=> b!7236981 d!2248135))

(declare-fun d!2248137 () Bool)

(declare-fun c!1343381 () Bool)

(assert (=> d!2248137 (= c!1343381 (isEmpty!40385 (++!16357 (t!384244 s1!1971) s2!1849)))))

(declare-fun e!4338805 () Bool)

(assert (=> d!2248137 (= (matchZipper!3438 (set.insert (Context!14937 (++!16356 (exprs!7968 lt!2576267) (exprs!7968 ct2!328))) (as set.empty (Set Context!14936))) (++!16357 (t!384244 s1!1971) s2!1849)) e!4338805)))

(declare-fun b!7237151 () Bool)

(assert (=> b!7237151 (= e!4338805 (nullableZipper!2834 (set.insert (Context!14937 (++!16356 (exprs!7968 lt!2576267) (exprs!7968 ct2!328))) (as set.empty (Set Context!14936)))))))

(declare-fun b!7237152 () Bool)

(assert (=> b!7237152 (= e!4338805 (matchZipper!3438 (derivationStepZipper!3320 (set.insert (Context!14937 (++!16356 (exprs!7968 lt!2576267) (exprs!7968 ct2!328))) (as set.empty (Set Context!14936))) (head!14823 (++!16357 (t!384244 s1!1971) s2!1849))) (tail!14171 (++!16357 (t!384244 s1!1971) s2!1849))))))

(assert (= (and d!2248137 c!1343381) b!7237151))

(assert (= (and d!2248137 (not c!1343381)) b!7237152))

(assert (=> d!2248137 m!7908312))

(declare-fun m!7908594 () Bool)

(assert (=> d!2248137 m!7908594))

(assert (=> b!7237151 m!7908314))

(declare-fun m!7908596 () Bool)

(assert (=> b!7237151 m!7908596))

(assert (=> b!7237152 m!7908312))

(declare-fun m!7908598 () Bool)

(assert (=> b!7237152 m!7908598))

(assert (=> b!7237152 m!7908314))

(assert (=> b!7237152 m!7908598))

(declare-fun m!7908600 () Bool)

(assert (=> b!7237152 m!7908600))

(assert (=> b!7237152 m!7908312))

(declare-fun m!7908602 () Bool)

(assert (=> b!7237152 m!7908602))

(assert (=> b!7237152 m!7908600))

(assert (=> b!7237152 m!7908602))

(declare-fun m!7908604 () Bool)

(assert (=> b!7237152 m!7908604))

(assert (=> b!7236981 d!2248137))

(declare-fun d!2248139 () Bool)

(assert (=> d!2248139 (forall!17366 (++!16356 (exprs!7968 lt!2576267) (exprs!7968 ct2!328)) lambda!440604)))

(declare-fun lt!2576399 () Unit!163594)

(assert (=> d!2248139 (= lt!2576399 (choose!55668 (exprs!7968 lt!2576267) (exprs!7968 ct2!328) lambda!440604))))

(assert (=> d!2248139 (forall!17366 (exprs!7968 lt!2576267) lambda!440604)))

(assert (=> d!2248139 (= (lemmaConcatPreservesForall!1337 (exprs!7968 lt!2576267) (exprs!7968 ct2!328) lambda!440604) lt!2576399)))

(declare-fun bs!1903554 () Bool)

(assert (= bs!1903554 d!2248139))

(assert (=> bs!1903554 m!7908310))

(assert (=> bs!1903554 m!7908310))

(declare-fun m!7908606 () Bool)

(assert (=> bs!1903554 m!7908606))

(declare-fun m!7908608 () Bool)

(assert (=> bs!1903554 m!7908608))

(declare-fun m!7908610 () Bool)

(assert (=> bs!1903554 m!7908610))

(assert (=> b!7236981 d!2248139))

(declare-fun d!2248141 () Bool)

(assert (=> d!2248141 (= (isEmpty!40383 (exprs!7968 ct1!232)) (is-Nil!70068 (exprs!7968 ct1!232)))))

(assert (=> b!7236981 d!2248141))

(declare-fun d!2248143 () Bool)

(declare-fun e!4338808 () Bool)

(assert (=> d!2248143 e!4338808))

(declare-fun res!2936034 () Bool)

(assert (=> d!2248143 (=> (not res!2936034) (not e!4338808))))

(declare-fun lt!2576402 () Context!14936)

(declare-fun dynLambda!28597 (Int Context!14936) Bool)

(assert (=> d!2248143 (= res!2936034 (dynLambda!28597 lambda!440605 lt!2576402))))

(declare-fun getWitness!2069 (List!70194 Int) Context!14936)

(assert (=> d!2248143 (= lt!2576402 (getWitness!2069 (toList!11385 lt!2576265) lambda!440605))))

(assert (=> d!2248143 (exists!4199 lt!2576265 lambda!440605)))

(assert (=> d!2248143 (= (getWitness!2067 lt!2576265 lambda!440605) lt!2576402)))

(declare-fun b!7237155 () Bool)

(assert (=> b!7237155 (= e!4338808 (set.member lt!2576402 lt!2576265))))

(assert (= (and d!2248143 res!2936034) b!7237155))

(declare-fun b_lambda!277543 () Bool)

(assert (=> (not b_lambda!277543) (not d!2248143)))

(declare-fun m!7908612 () Bool)

(assert (=> d!2248143 m!7908612))

(assert (=> d!2248143 m!7908350))

(assert (=> d!2248143 m!7908350))

(declare-fun m!7908614 () Bool)

(assert (=> d!2248143 m!7908614))

(assert (=> d!2248143 m!7908344))

(declare-fun m!7908616 () Bool)

(assert (=> b!7237155 m!7908616))

(assert (=> b!7236981 d!2248143))

(declare-fun b!7237164 () Bool)

(declare-fun e!4338814 () List!70193)

(assert (=> b!7237164 (= e!4338814 s2!1849)))

(declare-fun b!7237165 () Bool)

(assert (=> b!7237165 (= e!4338814 (Cons!70069 (h!76517 (t!384244 s1!1971)) (++!16357 (t!384244 (t!384244 s1!1971)) s2!1849)))))

(declare-fun b!7237166 () Bool)

(declare-fun res!2936040 () Bool)

(declare-fun e!4338813 () Bool)

(assert (=> b!7237166 (=> (not res!2936040) (not e!4338813))))

(declare-fun lt!2576405 () List!70193)

(declare-fun size!41601 (List!70193) Int)

(assert (=> b!7237166 (= res!2936040 (= (size!41601 lt!2576405) (+ (size!41601 (t!384244 s1!1971)) (size!41601 s2!1849))))))

(declare-fun b!7237167 () Bool)

(assert (=> b!7237167 (= e!4338813 (or (not (= s2!1849 Nil!70069)) (= lt!2576405 (t!384244 s1!1971))))))

(declare-fun d!2248145 () Bool)

(assert (=> d!2248145 e!4338813))

(declare-fun res!2936039 () Bool)

(assert (=> d!2248145 (=> (not res!2936039) (not e!4338813))))

(declare-fun content!14451 (List!70193) (Set C!37330))

(assert (=> d!2248145 (= res!2936039 (= (content!14451 lt!2576405) (set.union (content!14451 (t!384244 s1!1971)) (content!14451 s2!1849))))))

(assert (=> d!2248145 (= lt!2576405 e!4338814)))

(declare-fun c!1343384 () Bool)

(assert (=> d!2248145 (= c!1343384 (is-Nil!70069 (t!384244 s1!1971)))))

(assert (=> d!2248145 (= (++!16357 (t!384244 s1!1971) s2!1849) lt!2576405)))

(assert (= (and d!2248145 c!1343384) b!7237164))

(assert (= (and d!2248145 (not c!1343384)) b!7237165))

(assert (= (and d!2248145 res!2936039) b!7237166))

(assert (= (and b!7237166 res!2936040) b!7237167))

(declare-fun m!7908618 () Bool)

(assert (=> b!7237165 m!7908618))

(declare-fun m!7908620 () Bool)

(assert (=> b!7237166 m!7908620))

(declare-fun m!7908622 () Bool)

(assert (=> b!7237166 m!7908622))

(declare-fun m!7908624 () Bool)

(assert (=> b!7237166 m!7908624))

(declare-fun m!7908626 () Bool)

(assert (=> d!2248145 m!7908626))

(declare-fun m!7908628 () Bool)

(assert (=> d!2248145 m!7908628))

(declare-fun m!7908630 () Bool)

(assert (=> d!2248145 m!7908630))

(assert (=> b!7236981 d!2248145))

(declare-fun bs!1903555 () Bool)

(declare-fun d!2248147 () Bool)

(assert (= bs!1903555 (and d!2248147 b!7236982)))

(declare-fun lambda!440648 () Int)

(assert (=> bs!1903555 (= lambda!440648 lambda!440604)))

(declare-fun bs!1903556 () Bool)

(assert (= bs!1903556 (and d!2248147 d!2248121)))

(assert (=> bs!1903556 (= lambda!440648 lambda!440644)))

(declare-fun bs!1903557 () Bool)

(assert (= bs!1903557 (and d!2248147 d!2248123)))

(assert (=> bs!1903557 (= lambda!440648 lambda!440645)))

(assert (=> d!2248147 (matchZipper!3438 (set.insert (Context!14937 (++!16356 (exprs!7968 lt!2576267) (exprs!7968 ct2!328))) (as set.empty (Set Context!14936))) (++!16357 (t!384244 s1!1971) s2!1849))))

(declare-fun lt!2576411 () Unit!163594)

(assert (=> d!2248147 (= lt!2576411 (lemmaConcatPreservesForall!1337 (exprs!7968 lt!2576267) (exprs!7968 ct2!328) lambda!440648))))

(declare-fun lt!2576410 () Unit!163594)

(declare-fun choose!55674 (Context!14936 Context!14936 List!70193 List!70193) Unit!163594)

(assert (=> d!2248147 (= lt!2576410 (choose!55674 lt!2576267 ct2!328 (t!384244 s1!1971) s2!1849))))

(assert (=> d!2248147 (matchZipper!3438 (set.insert lt!2576267 (as set.empty (Set Context!14936))) (t!384244 s1!1971))))

(assert (=> d!2248147 (= (lemmaConcatenateContextMatchesConcatOfStrings!319 lt!2576267 ct2!328 (t!384244 s1!1971) s2!1849) lt!2576410)))

(declare-fun bs!1903558 () Bool)

(assert (= bs!1903558 d!2248147))

(assert (=> bs!1903558 m!7908310))

(assert (=> bs!1903558 m!7908314))

(assert (=> bs!1903558 m!7908312))

(assert (=> bs!1903558 m!7908318))

(declare-fun m!7908632 () Bool)

(assert (=> bs!1903558 m!7908632))

(assert (=> bs!1903558 m!7908312))

(declare-fun m!7908634 () Bool)

(assert (=> bs!1903558 m!7908634))

(assert (=> bs!1903558 m!7908314))

(assert (=> bs!1903558 m!7908634))

(declare-fun m!7908636 () Bool)

(assert (=> bs!1903558 m!7908636))

(declare-fun m!7908638 () Bool)

(assert (=> bs!1903558 m!7908638))

(assert (=> b!7236981 d!2248147))

(assert (=> b!7236981 d!2248091))

(declare-fun bs!1903559 () Bool)

(declare-fun d!2248149 () Bool)

(assert (= bs!1903559 (and d!2248149 b!7236986)))

(declare-fun lambda!440651 () Int)

(assert (=> bs!1903559 (= lambda!440651 lambda!440606)))

(assert (=> d!2248149 true))

(assert (=> d!2248149 (= (derivationStepZipper!3320 lt!2576285 (h!76517 s1!1971)) (flatMap!2732 lt!2576285 lambda!440651))))

(declare-fun bs!1903560 () Bool)

(assert (= bs!1903560 d!2248149))

(declare-fun m!7908640 () Bool)

(assert (=> bs!1903560 m!7908640))

(assert (=> b!7236985 d!2248149))

(declare-fun d!2248151 () Bool)

(declare-fun c!1343387 () Bool)

(assert (=> d!2248151 (= c!1343387 (isEmpty!40385 (t!384244 s1!1971)))))

(declare-fun e!4338815 () Bool)

(assert (=> d!2248151 (= (matchZipper!3438 lt!2576265 (t!384244 s1!1971)) e!4338815)))

(declare-fun b!7237170 () Bool)

(assert (=> b!7237170 (= e!4338815 (nullableZipper!2834 lt!2576265))))

(declare-fun b!7237171 () Bool)

(assert (=> b!7237171 (= e!4338815 (matchZipper!3438 (derivationStepZipper!3320 lt!2576265 (head!14823 (t!384244 s1!1971))) (tail!14171 (t!384244 s1!1971))))))

(assert (= (and d!2248151 c!1343387) b!7237170))

(assert (= (and d!2248151 (not c!1343387)) b!7237171))

(assert (=> d!2248151 m!7908486))

(declare-fun m!7908642 () Bool)

(assert (=> b!7237170 m!7908642))

(assert (=> b!7237171 m!7908490))

(assert (=> b!7237171 m!7908490))

(declare-fun m!7908644 () Bool)

(assert (=> b!7237171 m!7908644))

(assert (=> b!7237171 m!7908494))

(assert (=> b!7237171 m!7908644))

(assert (=> b!7237171 m!7908494))

(declare-fun m!7908646 () Bool)

(assert (=> b!7237171 m!7908646))

(assert (=> b!7236974 d!2248151))

(declare-fun bs!1903561 () Bool)

(declare-fun d!2248153 () Bool)

(assert (= bs!1903561 (and d!2248153 b!7236986)))

(declare-fun lambda!440652 () Int)

(assert (=> bs!1903561 (= lambda!440652 lambda!440606)))

(declare-fun bs!1903562 () Bool)

(assert (= bs!1903562 (and d!2248153 d!2248149)))

(assert (=> bs!1903562 (= lambda!440652 lambda!440651)))

(assert (=> d!2248153 true))

(assert (=> d!2248153 (= (derivationStepZipper!3320 lt!2576287 (h!76517 s1!1971)) (flatMap!2732 lt!2576287 lambda!440652))))

(declare-fun bs!1903563 () Bool)

(assert (= bs!1903563 d!2248153))

(declare-fun m!7908648 () Bool)

(assert (=> bs!1903563 m!7908648))

(assert (=> b!7236974 d!2248153))

(declare-fun b!7237172 () Bool)

(declare-fun e!4338818 () Bool)

(assert (=> b!7237172 (= e!4338818 (nullable!7841 (h!76516 (exprs!7968 lt!2576290))))))

(declare-fun b!7237173 () Bool)

(declare-fun e!4338816 () (Set Context!14936))

(declare-fun call!658970 () (Set Context!14936))

(assert (=> b!7237173 (= e!4338816 call!658970)))

(declare-fun b!7237174 () Bool)

(assert (=> b!7237174 (= e!4338816 (as set.empty (Set Context!14936)))))

(declare-fun bm!658965 () Bool)

(assert (=> bm!658965 (= call!658970 (derivationStepZipperDown!2572 (h!76516 (exprs!7968 lt!2576290)) (Context!14937 (t!384243 (exprs!7968 lt!2576290))) (h!76517 s1!1971)))))

(declare-fun d!2248155 () Bool)

(declare-fun c!1343389 () Bool)

(assert (=> d!2248155 (= c!1343389 e!4338818)))

(declare-fun res!2936041 () Bool)

(assert (=> d!2248155 (=> (not res!2936041) (not e!4338818))))

(assert (=> d!2248155 (= res!2936041 (is-Cons!70068 (exprs!7968 lt!2576290)))))

(declare-fun e!4338817 () (Set Context!14936))

(assert (=> d!2248155 (= (derivationStepZipperUp!2402 lt!2576290 (h!76517 s1!1971)) e!4338817)))

(declare-fun b!7237175 () Bool)

(assert (=> b!7237175 (= e!4338817 e!4338816)))

(declare-fun c!1343388 () Bool)

(assert (=> b!7237175 (= c!1343388 (is-Cons!70068 (exprs!7968 lt!2576290)))))

(declare-fun b!7237176 () Bool)

(assert (=> b!7237176 (= e!4338817 (set.union call!658970 (derivationStepZipperUp!2402 (Context!14937 (t!384243 (exprs!7968 lt!2576290))) (h!76517 s1!1971))))))

(assert (= (and d!2248155 res!2936041) b!7237172))

(assert (= (and d!2248155 c!1343389) b!7237176))

(assert (= (and d!2248155 (not c!1343389)) b!7237175))

(assert (= (and b!7237175 c!1343388) b!7237173))

(assert (= (and b!7237175 (not c!1343388)) b!7237174))

(assert (= (or b!7237176 b!7237173) bm!658965))

(declare-fun m!7908650 () Bool)

(assert (=> b!7237172 m!7908650))

(declare-fun m!7908652 () Bool)

(assert (=> bm!658965 m!7908652))

(declare-fun m!7908654 () Bool)

(assert (=> b!7237176 m!7908654))

(assert (=> b!7236973 d!2248155))

(assert (=> b!7236973 d!2248097))

(declare-fun b!7237181 () Bool)

(declare-fun e!4338821 () Bool)

(declare-fun tp!2034723 () Bool)

(assert (=> b!7237181 (= e!4338821 (and tp_is_empty!46521 tp!2034723))))

(assert (=> b!7236972 (= tp!2034705 e!4338821)))

(assert (= (and b!7236972 (is-Cons!70069 (t!384244 s2!1849))) b!7237181))

(declare-fun b!7237186 () Bool)

(declare-fun e!4338824 () Bool)

(declare-fun tp!2034728 () Bool)

(declare-fun tp!2034729 () Bool)

(assert (=> b!7237186 (= e!4338824 (and tp!2034728 tp!2034729))))

(assert (=> b!7236975 (= tp!2034708 e!4338824)))

(assert (= (and b!7236975 (is-Cons!70068 (exprs!7968 ct1!232))) b!7237186))

(declare-fun b!7237187 () Bool)

(declare-fun e!4338825 () Bool)

(declare-fun tp!2034730 () Bool)

(assert (=> b!7237187 (= e!4338825 (and tp_is_empty!46521 tp!2034730))))

(assert (=> b!7236979 (= tp!2034707 e!4338825)))

(assert (= (and b!7236979 (is-Cons!70069 (t!384244 s1!1971))) b!7237187))

(declare-fun b!7237188 () Bool)

(declare-fun e!4338826 () Bool)

(declare-fun tp!2034731 () Bool)

(declare-fun tp!2034732 () Bool)

(assert (=> b!7237188 (= e!4338826 (and tp!2034731 tp!2034732))))

(assert (=> b!7236984 (= tp!2034706 e!4338826)))

(assert (= (and b!7236984 (is-Cons!70068 (exprs!7968 ct2!328))) b!7237188))

(declare-fun b_lambda!277545 () Bool)

(assert (= b_lambda!277539 (or b!7236986 b_lambda!277545)))

(declare-fun bs!1903564 () Bool)

(declare-fun d!2248157 () Bool)

(assert (= bs!1903564 (and d!2248157 b!7236986)))

(assert (=> bs!1903564 (= (dynLambda!28595 lambda!440606 ct1!232) (derivationStepZipperUp!2402 ct1!232 (h!76517 s1!1971)))))

(assert (=> bs!1903564 m!7908288))

(assert (=> d!2248099 d!2248157))

(declare-fun b_lambda!277547 () Bool)

(assert (= b_lambda!277541 (or b!7236986 b_lambda!277547)))

(declare-fun bs!1903565 () Bool)

(declare-fun d!2248159 () Bool)

(assert (= bs!1903565 (and d!2248159 b!7236986)))

(assert (=> bs!1903565 (= (dynLambda!28595 lambda!440606 lt!2576284) (derivationStepZipperUp!2402 lt!2576284 (h!76517 s1!1971)))))

(assert (=> bs!1903565 m!7908282))

(assert (=> d!2248101 d!2248159))

(declare-fun b_lambda!277549 () Bool)

(assert (= b_lambda!277543 (or b!7236980 b_lambda!277549)))

(declare-fun bs!1903566 () Bool)

(declare-fun d!2248161 () Bool)

(assert (= bs!1903566 (and d!2248161 b!7236980)))

(assert (=> bs!1903566 (= (dynLambda!28597 lambda!440605 lt!2576402) (matchZipper!3438 (set.insert lt!2576402 (as set.empty (Set Context!14936))) (t!384244 s1!1971)))))

(declare-fun m!7908656 () Bool)

(assert (=> bs!1903566 m!7908656))

(assert (=> bs!1903566 m!7908656))

(declare-fun m!7908658 () Bool)

(assert (=> bs!1903566 m!7908658))

(assert (=> d!2248143 d!2248161))

(push 1)

(assert (not b_lambda!277547))

(assert (not bm!658938))

(assert (not b!7237146))

(assert (not d!2248107))

(assert (not d!2248115))

(assert (not b!7237170))

(assert (not bm!658957))

(assert tp_is_empty!46521)

(assert (not b!7237176))

(assert (not d!2248153))

(assert (not d!2248111))

(assert (not b!7237120))

(assert (not b!7237123))

(assert (not b!7237188))

(assert (not d!2248099))

(assert (not d!2248105))

(assert (not b!7237064))

(assert (not d!2248101))

(assert (not bm!658956))

(assert (not d!2248133))

(assert (not bm!658958))

(assert (not b!7237108))

(assert (not d!2248139))

(assert (not bs!1903566))

(assert (not b!7237109))

(assert (not b_lambda!277549))

(assert (not b!7237143))

(assert (not b!7237166))

(assert (not bs!1903564))

(assert (not d!2248143))

(assert (not d!2248145))

(assert (not b!7237145))

(assert (not b!7237187))

(assert (not d!2248083))

(assert (not d!2248109))

(assert (not d!2248117))

(assert (not b!7237107))

(assert (not b!7237092))

(assert (not d!2248103))

(assert (not b!7237121))

(assert (not b!7237181))

(assert (not bm!658963))

(assert (not b!7237058))

(assert (not d!2248147))

(assert (not d!2248137))

(assert (not b!7237142))

(assert (not b!7237113))

(assert (not d!2248149))

(assert (not b!7237059))

(assert (not b!7237148))

(assert (not d!2248151))

(assert (not b!7237114))

(assert (not b!7237171))

(assert (not b!7237172))

(assert (not bm!658964))

(assert (not d!2248113))

(assert (not d!2248097))

(assert (not b!7237186))

(assert (not d!2248131))

(assert (not d!2248089))

(assert (not d!2248087))

(assert (not b!7237063))

(assert (not bs!1903565))

(assert (not d!2248121))

(assert (not b!7237054))

(assert (not b!7237106))

(assert (not bm!658940))

(assert (not b!7237165))

(assert (not bm!658962))

(assert (not d!2248119))

(assert (not b_lambda!277545))

(assert (not b!7237119))

(assert (not bm!658965))

(assert (not b!7237112))

(assert (not d!2248123))

(assert (not b!7237149))

(assert (not b!7237151))

(assert (not d!2248135))

(assert (not b!7237152))

(assert (not b!7237068))

(assert (not bm!658939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

