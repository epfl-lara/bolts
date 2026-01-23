; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711612 () Bool)

(assert start!711612)

(declare-fun b!7298177 () Bool)

(assert (=> b!7298177 true))

(declare-fun b!7298172 () Bool)

(declare-fun e!4371151 () Bool)

(declare-fun e!4371147 () Bool)

(assert (=> b!7298172 (= e!4371151 e!4371147)))

(declare-fun res!2951715 () Bool)

(assert (=> b!7298172 (=> res!2951715 e!4371147)))

(declare-datatypes ((C!38030 0))(
  ( (C!38031 (val!28963 Int)) )
))
(declare-datatypes ((Regex!18878 0))(
  ( (ElementMatch!18878 (c!1356740 C!38030)) (Concat!27723 (regOne!38268 Regex!18878) (regTwo!38268 Regex!18878)) (EmptyExpr!18878) (Star!18878 (reg!19207 Regex!18878)) (EmptyLang!18878) (Union!18878 (regOne!38269 Regex!18878) (regTwo!38269 Regex!18878)) )
))
(declare-datatypes ((List!71073 0))(
  ( (Nil!70949) (Cons!70949 (h!77397 Regex!18878) (t!385151 List!71073)) )
))
(declare-datatypes ((Context!15636 0))(
  ( (Context!15637 (exprs!8318 List!71073)) )
))
(declare-fun lt!2599279 () (Set Context!15636))

(declare-datatypes ((List!71074 0))(
  ( (Nil!70950) (Cons!70950 (h!77398 C!38030) (t!385152 List!71074)) )
))
(declare-fun s!7854 () List!71074)

(declare-fun matchZipper!3782 ((Set Context!15636) List!71074) Bool)

(assert (=> b!7298172 (= res!2951715 (not (matchZipper!3782 lt!2599279 s!7854)))))

(declare-fun lambda!450972 () Int)

(declare-fun ct1!250 () Context!15636)

(declare-datatypes ((Unit!164354 0))(
  ( (Unit!164355) )
))
(declare-fun lt!2599274 () Unit!164354)

(declare-fun ct2!346 () Context!15636)

(declare-fun lemmaConcatPreservesForall!1625 (List!71073 List!71073 Int) Unit!164354)

(assert (=> b!7298172 (= lt!2599274 (lemmaConcatPreservesForall!1625 (exprs!8318 ct1!250) (exprs!8318 ct2!346) lambda!450972))))

(declare-fun lt!2599257 () (Set Context!15636))

(assert (=> b!7298172 (matchZipper!3782 lt!2599257 (t!385152 s!7854))))

(declare-fun lt!2599254 () Bool)

(declare-fun lt!2599260 () (Set Context!15636))

(assert (=> b!7298172 (= lt!2599254 (matchZipper!3782 lt!2599260 (t!385152 s!7854)))))

(declare-fun lt!2599272 () (Set Context!15636))

(declare-fun lt!2599266 () Unit!164354)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1785 ((Set Context!15636) (Set Context!15636) List!71074) Unit!164354)

(assert (=> b!7298172 (= lt!2599266 (lemmaZipperConcatMatchesSameAsBothZippers!1785 lt!2599260 lt!2599272 (t!385152 s!7854)))))

(declare-fun lt!2599278 () List!71073)

(declare-fun lt!2599280 () Unit!164354)

(assert (=> b!7298172 (= lt!2599280 (lemmaConcatPreservesForall!1625 lt!2599278 (exprs!8318 ct2!346) lambda!450972))))

(declare-fun lt!2599263 () Unit!164354)

(assert (=> b!7298172 (= lt!2599263 (lemmaConcatPreservesForall!1625 lt!2599278 (exprs!8318 ct2!346) lambda!450972))))

(declare-fun b!7298173 () Bool)

(declare-fun e!4371150 () Bool)

(declare-fun tp!2062673 () Bool)

(assert (=> b!7298173 (= e!4371150 tp!2062673)))

(declare-fun b!7298174 () Bool)

(declare-fun e!4371149 () Bool)

(declare-fun e!4371152 () Bool)

(assert (=> b!7298174 (= e!4371149 e!4371152)))

(declare-fun res!2951708 () Bool)

(assert (=> b!7298174 (=> res!2951708 e!4371152)))

(declare-fun nullable!8055 (Regex!18878) Bool)

(assert (=> b!7298174 (= res!2951708 (not (nullable!8055 (h!77397 (exprs!8318 ct1!250)))))))

(declare-fun lt!2599267 () (Set Context!15636))

(declare-fun derivationStepZipperUp!2628 (Context!15636 C!38030) (Set Context!15636))

(assert (=> b!7298174 (= lt!2599267 (derivationStepZipperUp!2628 ct1!250 (h!77398 s!7854)))))

(declare-fun lt!2599284 () Context!15636)

(assert (=> b!7298174 (= lt!2599284 (Context!15637 lt!2599278))))

(declare-fun tail!14602 (List!71073) List!71073)

(assert (=> b!7298174 (= lt!2599278 (tail!14602 (exprs!8318 ct1!250)))))

(declare-fun b!7298175 () Bool)

(declare-fun e!4371146 () Bool)

(declare-fun tp_is_empty!47221 () Bool)

(declare-fun tp!2062672 () Bool)

(assert (=> b!7298175 (= e!4371146 (and tp_is_empty!47221 tp!2062672))))

(declare-fun b!7298176 () Bool)

(declare-fun e!4371144 () Bool)

(assert (=> b!7298176 (= e!4371144 e!4371151)))

(declare-fun res!2951711 () Bool)

(assert (=> b!7298176 (=> res!2951711 e!4371151)))

(assert (=> b!7298176 (= res!2951711 (not (matchZipper!3782 lt!2599272 (t!385152 s!7854))))))

(declare-fun lt!2599281 () Unit!164354)

(assert (=> b!7298176 (= lt!2599281 (lemmaConcatPreservesForall!1625 lt!2599278 (exprs!8318 ct2!346) lambda!450972))))

(declare-fun lt!2599264 () (Set Context!15636))

(declare-fun lambda!450973 () Int)

(declare-fun lt!2599277 () Context!15636)

(declare-fun flatMap!2973 ((Set Context!15636) Int) (Set Context!15636))

(assert (=> b!7298176 (= (flatMap!2973 lt!2599264 lambda!450973) (derivationStepZipperUp!2628 lt!2599277 (h!77398 s!7854)))))

(declare-fun lt!2599268 () Unit!164354)

(declare-fun lemmaFlatMapOnSingletonSet!2371 ((Set Context!15636) Context!15636 Int) Unit!164354)

(assert (=> b!7298176 (= lt!2599268 (lemmaFlatMapOnSingletonSet!2371 lt!2599264 lt!2599277 lambda!450973))))

(declare-fun lt!2599262 () Unit!164354)

(assert (=> b!7298176 (= lt!2599262 (lemmaConcatPreservesForall!1625 lt!2599278 (exprs!8318 ct2!346) lambda!450972))))

(declare-fun lt!2599261 () Unit!164354)

(assert (=> b!7298176 (= lt!2599261 (lemmaConcatPreservesForall!1625 lt!2599278 (exprs!8318 ct2!346) lambda!450972))))

(declare-fun lt!2599271 () Unit!164354)

(assert (=> b!7298176 (= lt!2599271 (lemmaConcatPreservesForall!1625 lt!2599278 (exprs!8318 ct2!346) lambda!450972))))

(assert (=> b!7298176 (matchZipper!3782 lt!2599264 s!7854)))

(assert (=> b!7298176 (= lt!2599264 (set.insert lt!2599277 (as set.empty (Set Context!15636))))))

(declare-fun lt!2599256 () Unit!164354)

(assert (=> b!7298176 (= lt!2599256 (lemmaConcatPreservesForall!1625 lt!2599278 (exprs!8318 ct2!346) lambda!450972))))

(declare-fun lt!2599273 () Unit!164354)

(declare-fun lemmaPrependingNullableCtxStillMatches!61 (Context!15636 Context!15636 List!71074) Unit!164354)

(assert (=> b!7298176 (= lt!2599273 (lemmaPrependingNullableCtxStillMatches!61 lt!2599284 ct2!346 s!7854))))

(declare-fun e!4371148 () Bool)

(assert (=> b!7298177 (= e!4371148 (not e!4371149))))

(declare-fun res!2951714 () Bool)

(assert (=> b!7298177 (=> res!2951714 e!4371149)))

(declare-fun lt!2599269 () (Set Context!15636))

(declare-fun derivationStepZipper!3611 ((Set Context!15636) C!38030) (Set Context!15636))

(assert (=> b!7298177 (= res!2951714 (not (= lt!2599269 (derivationStepZipper!3611 lt!2599279 (h!77398 s!7854)))))))

(declare-fun lt!2599275 () Unit!164354)

(assert (=> b!7298177 (= lt!2599275 (lemmaConcatPreservesForall!1625 (exprs!8318 ct1!250) (exprs!8318 ct2!346) lambda!450972))))

(declare-fun lt!2599252 () Context!15636)

(assert (=> b!7298177 (= (flatMap!2973 lt!2599279 lambda!450973) (derivationStepZipperUp!2628 lt!2599252 (h!77398 s!7854)))))

(declare-fun lt!2599255 () Unit!164354)

(assert (=> b!7298177 (= lt!2599255 (lemmaFlatMapOnSingletonSet!2371 lt!2599279 lt!2599252 lambda!450973))))

(assert (=> b!7298177 (= lt!2599279 (set.insert lt!2599252 (as set.empty (Set Context!15636))))))

(declare-fun lt!2599270 () Unit!164354)

(assert (=> b!7298177 (= lt!2599270 (lemmaConcatPreservesForall!1625 (exprs!8318 ct1!250) (exprs!8318 ct2!346) lambda!450972))))

(declare-fun lt!2599265 () Unit!164354)

(assert (=> b!7298177 (= lt!2599265 (lemmaConcatPreservesForall!1625 (exprs!8318 ct1!250) (exprs!8318 ct2!346) lambda!450972))))

(declare-fun lt!2599282 () (Set Context!15636))

(assert (=> b!7298177 (= (flatMap!2973 lt!2599282 lambda!450973) (derivationStepZipperUp!2628 ct1!250 (h!77398 s!7854)))))

(declare-fun lt!2599259 () Unit!164354)

(assert (=> b!7298177 (= lt!2599259 (lemmaFlatMapOnSingletonSet!2371 lt!2599282 ct1!250 lambda!450973))))

(assert (=> b!7298177 (= lt!2599282 (set.insert ct1!250 (as set.empty (Set Context!15636))))))

(assert (=> b!7298177 (= lt!2599269 (derivationStepZipperUp!2628 lt!2599252 (h!77398 s!7854)))))

(declare-fun ++!16768 (List!71073 List!71073) List!71073)

(assert (=> b!7298177 (= lt!2599252 (Context!15637 (++!16768 (exprs!8318 ct1!250) (exprs!8318 ct2!346))))))

(declare-fun lt!2599276 () Unit!164354)

(assert (=> b!7298177 (= lt!2599276 (lemmaConcatPreservesForall!1625 (exprs!8318 ct1!250) (exprs!8318 ct2!346) lambda!450972))))

(declare-fun b!7298178 () Bool)

(assert (=> b!7298178 (= e!4371152 e!4371144)))

(declare-fun res!2951709 () Bool)

(assert (=> b!7298178 (=> res!2951709 e!4371144)))

(assert (=> b!7298178 (= res!2951709 (not (= lt!2599269 lt!2599257)))))

(assert (=> b!7298178 (= lt!2599257 (set.union lt!2599260 lt!2599272))))

(assert (=> b!7298178 (= lt!2599272 (derivationStepZipperUp!2628 lt!2599277 (h!77398 s!7854)))))

(declare-fun derivationStepZipperDown!2784 (Regex!18878 Context!15636 C!38030) (Set Context!15636))

(assert (=> b!7298178 (= lt!2599260 (derivationStepZipperDown!2784 (h!77397 (exprs!8318 ct1!250)) lt!2599277 (h!77398 s!7854)))))

(assert (=> b!7298178 (= lt!2599277 (Context!15637 (++!16768 lt!2599278 (exprs!8318 ct2!346))))))

(declare-fun lt!2599283 () Unit!164354)

(assert (=> b!7298178 (= lt!2599283 (lemmaConcatPreservesForall!1625 lt!2599278 (exprs!8318 ct2!346) lambda!450972))))

(declare-fun lt!2599253 () Unit!164354)

(assert (=> b!7298178 (= lt!2599253 (lemmaConcatPreservesForall!1625 lt!2599278 (exprs!8318 ct2!346) lambda!450972))))

(declare-fun b!7298179 () Bool)

(declare-fun res!2951706 () Bool)

(assert (=> b!7298179 (=> (not res!2951706) (not e!4371148))))

(declare-fun nullableContext!368 (Context!15636) Bool)

(assert (=> b!7298179 (= res!2951706 (nullableContext!368 ct1!250))))

(declare-fun b!7298180 () Bool)

(declare-fun res!2951713 () Bool)

(assert (=> b!7298180 (=> (not res!2951713) (not e!4371148))))

(assert (=> b!7298180 (= res!2951713 (is-Cons!70950 s!7854))))

(declare-fun b!7298181 () Bool)

(declare-fun res!2951716 () Bool)

(assert (=> b!7298181 (=> res!2951716 e!4371152)))

(assert (=> b!7298181 (= res!2951716 (not (= lt!2599267 (set.union (derivationStepZipperDown!2784 (h!77397 (exprs!8318 ct1!250)) lt!2599284 (h!77398 s!7854)) (derivationStepZipperUp!2628 lt!2599284 (h!77398 s!7854))))))))

(declare-fun b!7298182 () Bool)

(declare-fun res!2951707 () Bool)

(assert (=> b!7298182 (=> res!2951707 e!4371149)))

(declare-fun isEmpty!40819 (List!71073) Bool)

(assert (=> b!7298182 (= res!2951707 (isEmpty!40819 (exprs!8318 ct1!250)))))

(declare-fun b!7298183 () Bool)

(declare-fun e!4371145 () Bool)

(declare-fun tp!2062671 () Bool)

(assert (=> b!7298183 (= e!4371145 tp!2062671)))

(declare-fun b!7298184 () Bool)

(declare-fun inv!90206 (Context!15636) Bool)

(assert (=> b!7298184 (= e!4371147 (inv!90206 lt!2599252))))

(declare-fun lt!2599258 () Unit!164354)

(assert (=> b!7298184 (= lt!2599258 (lemmaConcatPreservesForall!1625 (exprs!8318 ct1!250) (exprs!8318 ct2!346) lambda!450972))))

(declare-fun res!2951710 () Bool)

(assert (=> start!711612 (=> (not res!2951710) (not e!4371148))))

(assert (=> start!711612 (= res!2951710 (matchZipper!3782 (set.insert ct2!346 (as set.empty (Set Context!15636))) s!7854))))

(assert (=> start!711612 e!4371148))

(assert (=> start!711612 (and (inv!90206 ct2!346) e!4371150)))

(assert (=> start!711612 e!4371146))

(assert (=> start!711612 (and (inv!90206 ct1!250) e!4371145)))

(declare-fun b!7298185 () Bool)

(declare-fun res!2951712 () Bool)

(assert (=> b!7298185 (=> res!2951712 e!4371149)))

(assert (=> b!7298185 (= res!2951712 (not (is-Cons!70949 (exprs!8318 ct1!250))))))

(assert (= (and start!711612 res!2951710) b!7298179))

(assert (= (and b!7298179 res!2951706) b!7298180))

(assert (= (and b!7298180 res!2951713) b!7298177))

(assert (= (and b!7298177 (not res!2951714)) b!7298185))

(assert (= (and b!7298185 (not res!2951712)) b!7298182))

(assert (= (and b!7298182 (not res!2951707)) b!7298174))

(assert (= (and b!7298174 (not res!2951708)) b!7298181))

(assert (= (and b!7298181 (not res!2951716)) b!7298178))

(assert (= (and b!7298178 (not res!2951709)) b!7298176))

(assert (= (and b!7298176 (not res!2951711)) b!7298172))

(assert (= (and b!7298172 (not res!2951715)) b!7298184))

(assert (= start!711612 b!7298173))

(assert (= (and start!711612 (is-Cons!70950 s!7854)) b!7298175))

(assert (= start!711612 b!7298183))

(declare-fun m!7970586 () Bool)

(assert (=> b!7298184 m!7970586))

(declare-fun m!7970588 () Bool)

(assert (=> b!7298184 m!7970588))

(declare-fun m!7970590 () Bool)

(assert (=> b!7298181 m!7970590))

(declare-fun m!7970592 () Bool)

(assert (=> b!7298181 m!7970592))

(declare-fun m!7970594 () Bool)

(assert (=> start!711612 m!7970594))

(assert (=> start!711612 m!7970594))

(declare-fun m!7970596 () Bool)

(assert (=> start!711612 m!7970596))

(declare-fun m!7970598 () Bool)

(assert (=> start!711612 m!7970598))

(declare-fun m!7970600 () Bool)

(assert (=> start!711612 m!7970600))

(assert (=> b!7298177 m!7970588))

(declare-fun m!7970602 () Bool)

(assert (=> b!7298177 m!7970602))

(declare-fun m!7970604 () Bool)

(assert (=> b!7298177 m!7970604))

(declare-fun m!7970606 () Bool)

(assert (=> b!7298177 m!7970606))

(declare-fun m!7970608 () Bool)

(assert (=> b!7298177 m!7970608))

(declare-fun m!7970610 () Bool)

(assert (=> b!7298177 m!7970610))

(declare-fun m!7970612 () Bool)

(assert (=> b!7298177 m!7970612))

(assert (=> b!7298177 m!7970588))

(assert (=> b!7298177 m!7970588))

(assert (=> b!7298177 m!7970588))

(declare-fun m!7970614 () Bool)

(assert (=> b!7298177 m!7970614))

(declare-fun m!7970616 () Bool)

(assert (=> b!7298177 m!7970616))

(declare-fun m!7970618 () Bool)

(assert (=> b!7298177 m!7970618))

(declare-fun m!7970620 () Bool)

(assert (=> b!7298177 m!7970620))

(declare-fun m!7970622 () Bool)

(assert (=> b!7298172 m!7970622))

(assert (=> b!7298172 m!7970588))

(declare-fun m!7970624 () Bool)

(assert (=> b!7298172 m!7970624))

(declare-fun m!7970626 () Bool)

(assert (=> b!7298172 m!7970626))

(declare-fun m!7970628 () Bool)

(assert (=> b!7298172 m!7970628))

(declare-fun m!7970630 () Bool)

(assert (=> b!7298172 m!7970630))

(assert (=> b!7298172 m!7970624))

(declare-fun m!7970632 () Bool)

(assert (=> b!7298182 m!7970632))

(assert (=> b!7298176 m!7970624))

(declare-fun m!7970634 () Bool)

(assert (=> b!7298176 m!7970634))

(assert (=> b!7298176 m!7970624))

(declare-fun m!7970636 () Bool)

(assert (=> b!7298176 m!7970636))

(declare-fun m!7970638 () Bool)

(assert (=> b!7298176 m!7970638))

(declare-fun m!7970640 () Bool)

(assert (=> b!7298176 m!7970640))

(assert (=> b!7298176 m!7970624))

(assert (=> b!7298176 m!7970624))

(declare-fun m!7970642 () Bool)

(assert (=> b!7298176 m!7970642))

(assert (=> b!7298176 m!7970624))

(declare-fun m!7970644 () Bool)

(assert (=> b!7298176 m!7970644))

(declare-fun m!7970646 () Bool)

(assert (=> b!7298176 m!7970646))

(declare-fun m!7970648 () Bool)

(assert (=> b!7298179 m!7970648))

(declare-fun m!7970650 () Bool)

(assert (=> b!7298178 m!7970650))

(assert (=> b!7298178 m!7970624))

(declare-fun m!7970652 () Bool)

(assert (=> b!7298178 m!7970652))

(assert (=> b!7298178 m!7970624))

(assert (=> b!7298178 m!7970642))

(declare-fun m!7970654 () Bool)

(assert (=> b!7298174 m!7970654))

(assert (=> b!7298174 m!7970614))

(declare-fun m!7970656 () Bool)

(assert (=> b!7298174 m!7970656))

(push 1)

(assert (not b!7298182))

(assert (not b!7298184))

(assert (not b!7298176))

(assert (not b!7298175))

(assert (not b!7298178))

(assert (not b!7298174))

(assert (not b!7298183))

(assert tp_is_empty!47221)

(assert (not b!7298172))

(assert (not b!7298177))

(assert (not start!711612))

(assert (not b!7298179))

(assert (not b!7298181))

(assert (not b!7298173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2267904 () Bool)

(declare-fun c!1356750 () Bool)

(declare-fun isEmpty!40821 (List!71074) Bool)

(assert (=> d!2267904 (= c!1356750 (isEmpty!40821 s!7854))))

(declare-fun e!4371182 () Bool)

(assert (=> d!2267904 (= (matchZipper!3782 (set.insert ct2!346 (as set.empty (Set Context!15636))) s!7854) e!4371182)))

(declare-fun b!7298236 () Bool)

(declare-fun nullableZipper!3067 ((Set Context!15636)) Bool)

(assert (=> b!7298236 (= e!4371182 (nullableZipper!3067 (set.insert ct2!346 (as set.empty (Set Context!15636)))))))

(declare-fun b!7298237 () Bool)

(declare-fun head!15065 (List!71074) C!38030)

(declare-fun tail!14604 (List!71074) List!71074)

(assert (=> b!7298237 (= e!4371182 (matchZipper!3782 (derivationStepZipper!3611 (set.insert ct2!346 (as set.empty (Set Context!15636))) (head!15065 s!7854)) (tail!14604 s!7854)))))

(assert (= (and d!2267904 c!1356750) b!7298236))

(assert (= (and d!2267904 (not c!1356750)) b!7298237))

(declare-fun m!7970730 () Bool)

(assert (=> d!2267904 m!7970730))

(assert (=> b!7298236 m!7970594))

(declare-fun m!7970732 () Bool)

(assert (=> b!7298236 m!7970732))

(declare-fun m!7970734 () Bool)

(assert (=> b!7298237 m!7970734))

(assert (=> b!7298237 m!7970594))

(assert (=> b!7298237 m!7970734))

(declare-fun m!7970736 () Bool)

(assert (=> b!7298237 m!7970736))

(declare-fun m!7970738 () Bool)

(assert (=> b!7298237 m!7970738))

(assert (=> b!7298237 m!7970736))

(assert (=> b!7298237 m!7970738))

(declare-fun m!7970740 () Bool)

(assert (=> b!7298237 m!7970740))

(assert (=> start!711612 d!2267904))

(declare-fun bs!1913457 () Bool)

(declare-fun d!2267906 () Bool)

(assert (= bs!1913457 (and d!2267906 b!7298177)))

(declare-fun lambda!451014 () Int)

(assert (=> bs!1913457 (= lambda!451014 lambda!450972)))

(declare-fun forall!17698 (List!71073 Int) Bool)

(assert (=> d!2267906 (= (inv!90206 ct2!346) (forall!17698 (exprs!8318 ct2!346) lambda!451014))))

(declare-fun bs!1913458 () Bool)

(assert (= bs!1913458 d!2267906))

(declare-fun m!7970742 () Bool)

(assert (=> bs!1913458 m!7970742))

(assert (=> start!711612 d!2267906))

(declare-fun bs!1913459 () Bool)

(declare-fun d!2267908 () Bool)

(assert (= bs!1913459 (and d!2267908 b!7298177)))

(declare-fun lambda!451015 () Int)

(assert (=> bs!1913459 (= lambda!451015 lambda!450972)))

(declare-fun bs!1913460 () Bool)

(assert (= bs!1913460 (and d!2267908 d!2267906)))

(assert (=> bs!1913460 (= lambda!451015 lambda!451014)))

(assert (=> d!2267908 (= (inv!90206 ct1!250) (forall!17698 (exprs!8318 ct1!250) lambda!451015))))

(declare-fun bs!1913461 () Bool)

(assert (= bs!1913461 d!2267908))

(declare-fun m!7970744 () Bool)

(assert (=> bs!1913461 m!7970744))

(assert (=> start!711612 d!2267908))

(declare-fun b!7298248 () Bool)

(declare-fun e!4371191 () (Set Context!15636))

(declare-fun call!665183 () (Set Context!15636))

(assert (=> b!7298248 (= e!4371191 (set.union call!665183 (derivationStepZipperUp!2628 (Context!15637 (t!385151 (exprs!8318 lt!2599277))) (h!77398 s!7854))))))

(declare-fun d!2267910 () Bool)

(declare-fun c!1356756 () Bool)

(declare-fun e!4371189 () Bool)

(assert (=> d!2267910 (= c!1356756 e!4371189)))

(declare-fun res!2951752 () Bool)

(assert (=> d!2267910 (=> (not res!2951752) (not e!4371189))))

(assert (=> d!2267910 (= res!2951752 (is-Cons!70949 (exprs!8318 lt!2599277)))))

(assert (=> d!2267910 (= (derivationStepZipperUp!2628 lt!2599277 (h!77398 s!7854)) e!4371191)))

(declare-fun bm!665178 () Bool)

(assert (=> bm!665178 (= call!665183 (derivationStepZipperDown!2784 (h!77397 (exprs!8318 lt!2599277)) (Context!15637 (t!385151 (exprs!8318 lt!2599277))) (h!77398 s!7854)))))

(declare-fun b!7298249 () Bool)

(declare-fun e!4371190 () (Set Context!15636))

(assert (=> b!7298249 (= e!4371191 e!4371190)))

(declare-fun c!1356755 () Bool)

(assert (=> b!7298249 (= c!1356755 (is-Cons!70949 (exprs!8318 lt!2599277)))))

(declare-fun b!7298250 () Bool)

(assert (=> b!7298250 (= e!4371189 (nullable!8055 (h!77397 (exprs!8318 lt!2599277))))))

(declare-fun b!7298251 () Bool)

(assert (=> b!7298251 (= e!4371190 (as set.empty (Set Context!15636)))))

(declare-fun b!7298252 () Bool)

(assert (=> b!7298252 (= e!4371190 call!665183)))

(assert (= (and d!2267910 res!2951752) b!7298250))

(assert (= (and d!2267910 c!1356756) b!7298248))

(assert (= (and d!2267910 (not c!1356756)) b!7298249))

(assert (= (and b!7298249 c!1356755) b!7298252))

(assert (= (and b!7298249 (not c!1356755)) b!7298251))

(assert (= (or b!7298248 b!7298252) bm!665178))

(declare-fun m!7970746 () Bool)

(assert (=> b!7298248 m!7970746))

(declare-fun m!7970748 () Bool)

(assert (=> bm!665178 m!7970748))

(declare-fun m!7970750 () Bool)

(assert (=> b!7298250 m!7970750))

(assert (=> b!7298178 d!2267910))

(declare-fun b!7298275 () Bool)

(declare-fun e!4371208 () (Set Context!15636))

(declare-fun call!665200 () (Set Context!15636))

(assert (=> b!7298275 (= e!4371208 call!665200)))

(declare-fun b!7298276 () Bool)

(declare-fun e!4371205 () (Set Context!15636))

(assert (=> b!7298276 (= e!4371205 (as set.empty (Set Context!15636)))))

(declare-fun b!7298277 () Bool)

(declare-fun e!4371206 () (Set Context!15636))

(declare-fun call!665199 () (Set Context!15636))

(declare-fun call!665201 () (Set Context!15636))

(assert (=> b!7298277 (= e!4371206 (set.union call!665199 call!665201))))

(declare-fun b!7298278 () Bool)

(declare-fun c!1356769 () Bool)

(declare-fun e!4371207 () Bool)

(assert (=> b!7298278 (= c!1356769 e!4371207)))

(declare-fun res!2951755 () Bool)

(assert (=> b!7298278 (=> (not res!2951755) (not e!4371207))))

(assert (=> b!7298278 (= res!2951755 (is-Concat!27723 (h!77397 (exprs!8318 ct1!250))))))

(declare-fun e!4371204 () (Set Context!15636))

(assert (=> b!7298278 (= e!4371204 e!4371206)))

(declare-fun d!2267912 () Bool)

(declare-fun c!1356767 () Bool)

(assert (=> d!2267912 (= c!1356767 (and (is-ElementMatch!18878 (h!77397 (exprs!8318 ct1!250))) (= (c!1356740 (h!77397 (exprs!8318 ct1!250))) (h!77398 s!7854))))))

(declare-fun e!4371209 () (Set Context!15636))

(assert (=> d!2267912 (= (derivationStepZipperDown!2784 (h!77397 (exprs!8318 ct1!250)) lt!2599277 (h!77398 s!7854)) e!4371209)))

(declare-fun b!7298279 () Bool)

(assert (=> b!7298279 (= e!4371206 e!4371208)))

(declare-fun c!1356768 () Bool)

(assert (=> b!7298279 (= c!1356768 (is-Concat!27723 (h!77397 (exprs!8318 ct1!250))))))

(declare-fun call!665197 () (Set Context!15636))

(declare-fun bm!665191 () Bool)

(declare-fun call!665198 () List!71073)

(declare-fun c!1356770 () Bool)

(assert (=> bm!665191 (= call!665197 (derivationStepZipperDown!2784 (ite c!1356770 (regTwo!38269 (h!77397 (exprs!8318 ct1!250))) (ite c!1356769 (regTwo!38268 (h!77397 (exprs!8318 ct1!250))) (ite c!1356768 (regOne!38268 (h!77397 (exprs!8318 ct1!250))) (reg!19207 (h!77397 (exprs!8318 ct1!250)))))) (ite (or c!1356770 c!1356769) lt!2599277 (Context!15637 call!665198)) (h!77398 s!7854)))))

(declare-fun b!7298280 () Bool)

(assert (=> b!7298280 (= e!4371209 (set.insert lt!2599277 (as set.empty (Set Context!15636))))))

(declare-fun bm!665192 () Bool)

(assert (=> bm!665192 (= call!665201 call!665197)))

(declare-fun bm!665193 () Bool)

(declare-fun call!665196 () List!71073)

(assert (=> bm!665193 (= call!665198 call!665196)))

(declare-fun b!7298281 () Bool)

(assert (=> b!7298281 (= e!4371205 call!665200)))

(declare-fun b!7298282 () Bool)

(assert (=> b!7298282 (= e!4371207 (nullable!8055 (regOne!38268 (h!77397 (exprs!8318 ct1!250)))))))

(declare-fun b!7298283 () Bool)

(declare-fun c!1356771 () Bool)

(assert (=> b!7298283 (= c!1356771 (is-Star!18878 (h!77397 (exprs!8318 ct1!250))))))

(assert (=> b!7298283 (= e!4371208 e!4371205)))

(declare-fun bm!665194 () Bool)

(assert (=> bm!665194 (= call!665200 call!665201)))

(declare-fun bm!665195 () Bool)

(declare-fun $colon$colon!3006 (List!71073 Regex!18878) List!71073)

(assert (=> bm!665195 (= call!665196 ($colon$colon!3006 (exprs!8318 lt!2599277) (ite (or c!1356769 c!1356768) (regTwo!38268 (h!77397 (exprs!8318 ct1!250))) (h!77397 (exprs!8318 ct1!250)))))))

(declare-fun b!7298284 () Bool)

(assert (=> b!7298284 (= e!4371209 e!4371204)))

(assert (=> b!7298284 (= c!1356770 (is-Union!18878 (h!77397 (exprs!8318 ct1!250))))))

(declare-fun bm!665196 () Bool)

(assert (=> bm!665196 (= call!665199 (derivationStepZipperDown!2784 (ite c!1356770 (regOne!38269 (h!77397 (exprs!8318 ct1!250))) (regOne!38268 (h!77397 (exprs!8318 ct1!250)))) (ite c!1356770 lt!2599277 (Context!15637 call!665196)) (h!77398 s!7854)))))

(declare-fun b!7298285 () Bool)

(assert (=> b!7298285 (= e!4371204 (set.union call!665199 call!665197))))

(assert (= (and d!2267912 c!1356767) b!7298280))

(assert (= (and d!2267912 (not c!1356767)) b!7298284))

(assert (= (and b!7298284 c!1356770) b!7298285))

(assert (= (and b!7298284 (not c!1356770)) b!7298278))

(assert (= (and b!7298278 res!2951755) b!7298282))

(assert (= (and b!7298278 c!1356769) b!7298277))

(assert (= (and b!7298278 (not c!1356769)) b!7298279))

(assert (= (and b!7298279 c!1356768) b!7298275))

(assert (= (and b!7298279 (not c!1356768)) b!7298283))

(assert (= (and b!7298283 c!1356771) b!7298281))

(assert (= (and b!7298283 (not c!1356771)) b!7298276))

(assert (= (or b!7298275 b!7298281) bm!665193))

(assert (= (or b!7298275 b!7298281) bm!665194))

(assert (= (or b!7298277 bm!665193) bm!665195))

(assert (= (or b!7298277 bm!665194) bm!665192))

(assert (= (or b!7298285 b!7298277) bm!665196))

(assert (= (or b!7298285 bm!665192) bm!665191))

(declare-fun m!7970752 () Bool)

(assert (=> bm!665195 m!7970752))

(declare-fun m!7970754 () Bool)

(assert (=> bm!665196 m!7970754))

(declare-fun m!7970756 () Bool)

(assert (=> bm!665191 m!7970756))

(declare-fun m!7970758 () Bool)

(assert (=> b!7298282 m!7970758))

(assert (=> b!7298280 m!7970644))

(assert (=> b!7298178 d!2267912))

(declare-fun d!2267914 () Bool)

(assert (=> d!2267914 (forall!17698 (++!16768 lt!2599278 (exprs!8318 ct2!346)) lambda!450972)))

(declare-fun lt!2599386 () Unit!164354)

(declare-fun choose!56569 (List!71073 List!71073 Int) Unit!164354)

(assert (=> d!2267914 (= lt!2599386 (choose!56569 lt!2599278 (exprs!8318 ct2!346) lambda!450972))))

(assert (=> d!2267914 (forall!17698 lt!2599278 lambda!450972)))

(assert (=> d!2267914 (= (lemmaConcatPreservesForall!1625 lt!2599278 (exprs!8318 ct2!346) lambda!450972) lt!2599386)))

(declare-fun bs!1913462 () Bool)

(assert (= bs!1913462 d!2267914))

(assert (=> bs!1913462 m!7970652))

(assert (=> bs!1913462 m!7970652))

(declare-fun m!7970760 () Bool)

(assert (=> bs!1913462 m!7970760))

(declare-fun m!7970762 () Bool)

(assert (=> bs!1913462 m!7970762))

(declare-fun m!7970764 () Bool)

(assert (=> bs!1913462 m!7970764))

(assert (=> b!7298178 d!2267914))

(declare-fun e!4371215 () Bool)

(declare-fun b!7298297 () Bool)

(declare-fun lt!2599389 () List!71073)

(assert (=> b!7298297 (= e!4371215 (or (not (= (exprs!8318 ct2!346) Nil!70949)) (= lt!2599389 lt!2599278)))))

(declare-fun b!7298294 () Bool)

(declare-fun e!4371214 () List!71073)

(assert (=> b!7298294 (= e!4371214 (exprs!8318 ct2!346))))

(declare-fun d!2267916 () Bool)

(assert (=> d!2267916 e!4371215))

(declare-fun res!2951761 () Bool)

(assert (=> d!2267916 (=> (not res!2951761) (not e!4371215))))

(declare-fun content!14825 (List!71073) (Set Regex!18878))

(assert (=> d!2267916 (= res!2951761 (= (content!14825 lt!2599389) (set.union (content!14825 lt!2599278) (content!14825 (exprs!8318 ct2!346)))))))

(assert (=> d!2267916 (= lt!2599389 e!4371214)))

(declare-fun c!1356774 () Bool)

(assert (=> d!2267916 (= c!1356774 (is-Nil!70949 lt!2599278))))

(assert (=> d!2267916 (= (++!16768 lt!2599278 (exprs!8318 ct2!346)) lt!2599389)))

(declare-fun b!7298295 () Bool)

(assert (=> b!7298295 (= e!4371214 (Cons!70949 (h!77397 lt!2599278) (++!16768 (t!385151 lt!2599278) (exprs!8318 ct2!346))))))

(declare-fun b!7298296 () Bool)

(declare-fun res!2951760 () Bool)

(assert (=> b!7298296 (=> (not res!2951760) (not e!4371215))))

(declare-fun size!41871 (List!71073) Int)

(assert (=> b!7298296 (= res!2951760 (= (size!41871 lt!2599389) (+ (size!41871 lt!2599278) (size!41871 (exprs!8318 ct2!346)))))))

(assert (= (and d!2267916 c!1356774) b!7298294))

(assert (= (and d!2267916 (not c!1356774)) b!7298295))

(assert (= (and d!2267916 res!2951761) b!7298296))

(assert (= (and b!7298296 res!2951760) b!7298297))

(declare-fun m!7970766 () Bool)

(assert (=> d!2267916 m!7970766))

(declare-fun m!7970768 () Bool)

(assert (=> d!2267916 m!7970768))

(declare-fun m!7970770 () Bool)

(assert (=> d!2267916 m!7970770))

(declare-fun m!7970772 () Bool)

(assert (=> b!7298295 m!7970772))

(declare-fun m!7970774 () Bool)

(assert (=> b!7298296 m!7970774))

(declare-fun m!7970776 () Bool)

(assert (=> b!7298296 m!7970776))

(declare-fun m!7970778 () Bool)

(assert (=> b!7298296 m!7970778))

(assert (=> b!7298178 d!2267916))

(declare-fun d!2267918 () Bool)

(declare-fun c!1356775 () Bool)

(assert (=> d!2267918 (= c!1356775 (isEmpty!40821 s!7854))))

(declare-fun e!4371216 () Bool)

(assert (=> d!2267918 (= (matchZipper!3782 lt!2599279 s!7854) e!4371216)))

(declare-fun b!7298298 () Bool)

(assert (=> b!7298298 (= e!4371216 (nullableZipper!3067 lt!2599279))))

(declare-fun b!7298299 () Bool)

(assert (=> b!7298299 (= e!4371216 (matchZipper!3782 (derivationStepZipper!3611 lt!2599279 (head!15065 s!7854)) (tail!14604 s!7854)))))

(assert (= (and d!2267918 c!1356775) b!7298298))

(assert (= (and d!2267918 (not c!1356775)) b!7298299))

(assert (=> d!2267918 m!7970730))

(declare-fun m!7970780 () Bool)

(assert (=> b!7298298 m!7970780))

(assert (=> b!7298299 m!7970734))

(assert (=> b!7298299 m!7970734))

(declare-fun m!7970782 () Bool)

(assert (=> b!7298299 m!7970782))

(assert (=> b!7298299 m!7970738))

(assert (=> b!7298299 m!7970782))

(assert (=> b!7298299 m!7970738))

(declare-fun m!7970784 () Bool)

(assert (=> b!7298299 m!7970784))

(assert (=> b!7298172 d!2267918))

(declare-fun d!2267920 () Bool)

(declare-fun c!1356776 () Bool)

(assert (=> d!2267920 (= c!1356776 (isEmpty!40821 (t!385152 s!7854)))))

(declare-fun e!4371217 () Bool)

(assert (=> d!2267920 (= (matchZipper!3782 lt!2599260 (t!385152 s!7854)) e!4371217)))

(declare-fun b!7298300 () Bool)

(assert (=> b!7298300 (= e!4371217 (nullableZipper!3067 lt!2599260))))

(declare-fun b!7298301 () Bool)

(assert (=> b!7298301 (= e!4371217 (matchZipper!3782 (derivationStepZipper!3611 lt!2599260 (head!15065 (t!385152 s!7854))) (tail!14604 (t!385152 s!7854))))))

(assert (= (and d!2267920 c!1356776) b!7298300))

(assert (= (and d!2267920 (not c!1356776)) b!7298301))

(declare-fun m!7970786 () Bool)

(assert (=> d!2267920 m!7970786))

(declare-fun m!7970788 () Bool)

(assert (=> b!7298300 m!7970788))

(declare-fun m!7970790 () Bool)

(assert (=> b!7298301 m!7970790))

(assert (=> b!7298301 m!7970790))

(declare-fun m!7970792 () Bool)

(assert (=> b!7298301 m!7970792))

(declare-fun m!7970794 () Bool)

(assert (=> b!7298301 m!7970794))

(assert (=> b!7298301 m!7970792))

(assert (=> b!7298301 m!7970794))

(declare-fun m!7970796 () Bool)

(assert (=> b!7298301 m!7970796))

(assert (=> b!7298172 d!2267920))

(declare-fun d!2267922 () Bool)

(assert (=> d!2267922 (forall!17698 (++!16768 (exprs!8318 ct1!250) (exprs!8318 ct2!346)) lambda!450972)))

(declare-fun lt!2599390 () Unit!164354)

(assert (=> d!2267922 (= lt!2599390 (choose!56569 (exprs!8318 ct1!250) (exprs!8318 ct2!346) lambda!450972))))

(assert (=> d!2267922 (forall!17698 (exprs!8318 ct1!250) lambda!450972)))

(assert (=> d!2267922 (= (lemmaConcatPreservesForall!1625 (exprs!8318 ct1!250) (exprs!8318 ct2!346) lambda!450972) lt!2599390)))

(declare-fun bs!1913463 () Bool)

(assert (= bs!1913463 d!2267922))

(assert (=> bs!1913463 m!7970608))

(assert (=> bs!1913463 m!7970608))

(declare-fun m!7970798 () Bool)

(assert (=> bs!1913463 m!7970798))

(declare-fun m!7970800 () Bool)

(assert (=> bs!1913463 m!7970800))

(declare-fun m!7970802 () Bool)

(assert (=> bs!1913463 m!7970802))

(assert (=> b!7298172 d!2267922))

(declare-fun d!2267924 () Bool)

(declare-fun c!1356777 () Bool)

(assert (=> d!2267924 (= c!1356777 (isEmpty!40821 (t!385152 s!7854)))))

(declare-fun e!4371218 () Bool)

(assert (=> d!2267924 (= (matchZipper!3782 lt!2599257 (t!385152 s!7854)) e!4371218)))

(declare-fun b!7298302 () Bool)

(assert (=> b!7298302 (= e!4371218 (nullableZipper!3067 lt!2599257))))

(declare-fun b!7298303 () Bool)

(assert (=> b!7298303 (= e!4371218 (matchZipper!3782 (derivationStepZipper!3611 lt!2599257 (head!15065 (t!385152 s!7854))) (tail!14604 (t!385152 s!7854))))))

(assert (= (and d!2267924 c!1356777) b!7298302))

(assert (= (and d!2267924 (not c!1356777)) b!7298303))

(assert (=> d!2267924 m!7970786))

(declare-fun m!7970804 () Bool)

(assert (=> b!7298302 m!7970804))

(assert (=> b!7298303 m!7970790))

(assert (=> b!7298303 m!7970790))

(declare-fun m!7970806 () Bool)

(assert (=> b!7298303 m!7970806))

(assert (=> b!7298303 m!7970794))

(assert (=> b!7298303 m!7970806))

(assert (=> b!7298303 m!7970794))

(declare-fun m!7970808 () Bool)

(assert (=> b!7298303 m!7970808))

(assert (=> b!7298172 d!2267924))

(declare-fun d!2267926 () Bool)

(declare-fun e!4371221 () Bool)

(assert (=> d!2267926 (= (matchZipper!3782 (set.union lt!2599260 lt!2599272) (t!385152 s!7854)) e!4371221)))

(declare-fun res!2951764 () Bool)

(assert (=> d!2267926 (=> res!2951764 e!4371221)))

(assert (=> d!2267926 (= res!2951764 (matchZipper!3782 lt!2599260 (t!385152 s!7854)))))

(declare-fun lt!2599393 () Unit!164354)

(declare-fun choose!56570 ((Set Context!15636) (Set Context!15636) List!71074) Unit!164354)

(assert (=> d!2267926 (= lt!2599393 (choose!56570 lt!2599260 lt!2599272 (t!385152 s!7854)))))

(assert (=> d!2267926 (= (lemmaZipperConcatMatchesSameAsBothZippers!1785 lt!2599260 lt!2599272 (t!385152 s!7854)) lt!2599393)))

(declare-fun b!7298306 () Bool)

(assert (=> b!7298306 (= e!4371221 (matchZipper!3782 lt!2599272 (t!385152 s!7854)))))

(assert (= (and d!2267926 (not res!2951764)) b!7298306))

(declare-fun m!7970810 () Bool)

(assert (=> d!2267926 m!7970810))

(assert (=> d!2267926 m!7970626))

(declare-fun m!7970812 () Bool)

(assert (=> d!2267926 m!7970812))

(assert (=> b!7298306 m!7970646))

(assert (=> b!7298172 d!2267926))

(assert (=> b!7298172 d!2267914))

(declare-fun d!2267928 () Bool)

(assert (=> d!2267928 (= (isEmpty!40819 (exprs!8318 ct1!250)) (is-Nil!70949 (exprs!8318 ct1!250)))))

(assert (=> b!7298182 d!2267928))

(declare-fun bs!1913464 () Bool)

(declare-fun d!2267930 () Bool)

(assert (= bs!1913464 (and d!2267930 b!7298177)))

(declare-fun lambda!451018 () Int)

(assert (=> bs!1913464 (= lambda!451018 lambda!450973)))

(assert (=> d!2267930 true))

(assert (=> d!2267930 (= (derivationStepZipper!3611 lt!2599279 (h!77398 s!7854)) (flatMap!2973 lt!2599279 lambda!451018))))

(declare-fun bs!1913465 () Bool)

(assert (= bs!1913465 d!2267930))

(declare-fun m!7970814 () Bool)

(assert (=> bs!1913465 m!7970814))

(assert (=> b!7298177 d!2267930))

(declare-fun e!4371224 () (Set Context!15636))

(declare-fun b!7298309 () Bool)

(declare-fun call!665202 () (Set Context!15636))

(assert (=> b!7298309 (= e!4371224 (set.union call!665202 (derivationStepZipperUp!2628 (Context!15637 (t!385151 (exprs!8318 ct1!250))) (h!77398 s!7854))))))

(declare-fun d!2267932 () Bool)

(declare-fun c!1356781 () Bool)

(declare-fun e!4371222 () Bool)

(assert (=> d!2267932 (= c!1356781 e!4371222)))

(declare-fun res!2951765 () Bool)

(assert (=> d!2267932 (=> (not res!2951765) (not e!4371222))))

(assert (=> d!2267932 (= res!2951765 (is-Cons!70949 (exprs!8318 ct1!250)))))

(assert (=> d!2267932 (= (derivationStepZipperUp!2628 ct1!250 (h!77398 s!7854)) e!4371224)))

(declare-fun bm!665197 () Bool)

(assert (=> bm!665197 (= call!665202 (derivationStepZipperDown!2784 (h!77397 (exprs!8318 ct1!250)) (Context!15637 (t!385151 (exprs!8318 ct1!250))) (h!77398 s!7854)))))

(declare-fun b!7298310 () Bool)

(declare-fun e!4371223 () (Set Context!15636))

(assert (=> b!7298310 (= e!4371224 e!4371223)))

(declare-fun c!1356780 () Bool)

(assert (=> b!7298310 (= c!1356780 (is-Cons!70949 (exprs!8318 ct1!250)))))

(declare-fun b!7298311 () Bool)

(assert (=> b!7298311 (= e!4371222 (nullable!8055 (h!77397 (exprs!8318 ct1!250))))))

(declare-fun b!7298312 () Bool)

(assert (=> b!7298312 (= e!4371223 (as set.empty (Set Context!15636)))))

(declare-fun b!7298313 () Bool)

(assert (=> b!7298313 (= e!4371223 call!665202)))

(assert (= (and d!2267932 res!2951765) b!7298311))

(assert (= (and d!2267932 c!1356781) b!7298309))

(assert (= (and d!2267932 (not c!1356781)) b!7298310))

(assert (= (and b!7298310 c!1356780) b!7298313))

(assert (= (and b!7298310 (not c!1356780)) b!7298312))

(assert (= (or b!7298309 b!7298313) bm!665197))

(declare-fun m!7970816 () Bool)

(assert (=> b!7298309 m!7970816))

(declare-fun m!7970818 () Bool)

(assert (=> bm!665197 m!7970818))

(assert (=> b!7298311 m!7970654))

(assert (=> b!7298177 d!2267932))

(declare-fun d!2267934 () Bool)

(declare-fun dynLambda!29015 (Int Context!15636) (Set Context!15636))

(assert (=> d!2267934 (= (flatMap!2973 lt!2599279 lambda!450973) (dynLambda!29015 lambda!450973 lt!2599252))))

(declare-fun lt!2599396 () Unit!164354)

(declare-fun choose!56571 ((Set Context!15636) Context!15636 Int) Unit!164354)

(assert (=> d!2267934 (= lt!2599396 (choose!56571 lt!2599279 lt!2599252 lambda!450973))))

(assert (=> d!2267934 (= lt!2599279 (set.insert lt!2599252 (as set.empty (Set Context!15636))))))

(assert (=> d!2267934 (= (lemmaFlatMapOnSingletonSet!2371 lt!2599279 lt!2599252 lambda!450973) lt!2599396)))

(declare-fun b_lambda!281577 () Bool)

(assert (=> (not b_lambda!281577) (not d!2267934)))

(declare-fun bs!1913466 () Bool)

(assert (= bs!1913466 d!2267934))

(assert (=> bs!1913466 m!7970612))

(declare-fun m!7970820 () Bool)

(assert (=> bs!1913466 m!7970820))

(declare-fun m!7970822 () Bool)

(assert (=> bs!1913466 m!7970822))

(assert (=> bs!1913466 m!7970604))

(assert (=> b!7298177 d!2267934))

(declare-fun b!7298317 () Bool)

(declare-fun lt!2599397 () List!71073)

(declare-fun e!4371226 () Bool)

(assert (=> b!7298317 (= e!4371226 (or (not (= (exprs!8318 ct2!346) Nil!70949)) (= lt!2599397 (exprs!8318 ct1!250))))))

(declare-fun b!7298314 () Bool)

(declare-fun e!4371225 () List!71073)

(assert (=> b!7298314 (= e!4371225 (exprs!8318 ct2!346))))

(declare-fun d!2267936 () Bool)

(assert (=> d!2267936 e!4371226))

(declare-fun res!2951767 () Bool)

(assert (=> d!2267936 (=> (not res!2951767) (not e!4371226))))

(assert (=> d!2267936 (= res!2951767 (= (content!14825 lt!2599397) (set.union (content!14825 (exprs!8318 ct1!250)) (content!14825 (exprs!8318 ct2!346)))))))

(assert (=> d!2267936 (= lt!2599397 e!4371225)))

(declare-fun c!1356782 () Bool)

(assert (=> d!2267936 (= c!1356782 (is-Nil!70949 (exprs!8318 ct1!250)))))

(assert (=> d!2267936 (= (++!16768 (exprs!8318 ct1!250) (exprs!8318 ct2!346)) lt!2599397)))

(declare-fun b!7298315 () Bool)

(assert (=> b!7298315 (= e!4371225 (Cons!70949 (h!77397 (exprs!8318 ct1!250)) (++!16768 (t!385151 (exprs!8318 ct1!250)) (exprs!8318 ct2!346))))))

(declare-fun b!7298316 () Bool)

(declare-fun res!2951766 () Bool)

(assert (=> b!7298316 (=> (not res!2951766) (not e!4371226))))

(assert (=> b!7298316 (= res!2951766 (= (size!41871 lt!2599397) (+ (size!41871 (exprs!8318 ct1!250)) (size!41871 (exprs!8318 ct2!346)))))))

(assert (= (and d!2267936 c!1356782) b!7298314))

(assert (= (and d!2267936 (not c!1356782)) b!7298315))

(assert (= (and d!2267936 res!2951767) b!7298316))

(assert (= (and b!7298316 res!2951766) b!7298317))

(declare-fun m!7970824 () Bool)

(assert (=> d!2267936 m!7970824))

(declare-fun m!7970826 () Bool)

(assert (=> d!2267936 m!7970826))

(assert (=> d!2267936 m!7970770))

(declare-fun m!7970828 () Bool)

(assert (=> b!7298315 m!7970828))

(declare-fun m!7970830 () Bool)

(assert (=> b!7298316 m!7970830))

(declare-fun m!7970832 () Bool)

(assert (=> b!7298316 m!7970832))

(assert (=> b!7298316 m!7970778))

(assert (=> b!7298177 d!2267936))

(declare-fun d!2267938 () Bool)

(declare-fun choose!56572 ((Set Context!15636) Int) (Set Context!15636))

(assert (=> d!2267938 (= (flatMap!2973 lt!2599282 lambda!450973) (choose!56572 lt!2599282 lambda!450973))))

(declare-fun bs!1913467 () Bool)

(assert (= bs!1913467 d!2267938))

(declare-fun m!7970834 () Bool)

(assert (=> bs!1913467 m!7970834))

(assert (=> b!7298177 d!2267938))

(declare-fun d!2267940 () Bool)

(assert (=> d!2267940 (= (flatMap!2973 lt!2599282 lambda!450973) (dynLambda!29015 lambda!450973 ct1!250))))

(declare-fun lt!2599398 () Unit!164354)

(assert (=> d!2267940 (= lt!2599398 (choose!56571 lt!2599282 ct1!250 lambda!450973))))

(assert (=> d!2267940 (= lt!2599282 (set.insert ct1!250 (as set.empty (Set Context!15636))))))

(assert (=> d!2267940 (= (lemmaFlatMapOnSingletonSet!2371 lt!2599282 ct1!250 lambda!450973) lt!2599398)))

(declare-fun b_lambda!281579 () Bool)

(assert (=> (not b_lambda!281579) (not d!2267940)))

(declare-fun bs!1913468 () Bool)

(assert (= bs!1913468 d!2267940))

(assert (=> bs!1913468 m!7970606))

(declare-fun m!7970836 () Bool)

(assert (=> bs!1913468 m!7970836))

(declare-fun m!7970838 () Bool)

(assert (=> bs!1913468 m!7970838))

(assert (=> bs!1913468 m!7970620))

(assert (=> b!7298177 d!2267940))

(assert (=> b!7298177 d!2267922))

(declare-fun d!2267942 () Bool)

(assert (=> d!2267942 (= (flatMap!2973 lt!2599279 lambda!450973) (choose!56572 lt!2599279 lambda!450973))))

(declare-fun bs!1913469 () Bool)

(assert (= bs!1913469 d!2267942))

(declare-fun m!7970840 () Bool)

(assert (=> bs!1913469 m!7970840))

(assert (=> b!7298177 d!2267942))

(declare-fun e!4371229 () (Set Context!15636))

(declare-fun call!665203 () (Set Context!15636))

(declare-fun b!7298318 () Bool)

(assert (=> b!7298318 (= e!4371229 (set.union call!665203 (derivationStepZipperUp!2628 (Context!15637 (t!385151 (exprs!8318 lt!2599252))) (h!77398 s!7854))))))

(declare-fun d!2267944 () Bool)

(declare-fun c!1356784 () Bool)

(declare-fun e!4371227 () Bool)

(assert (=> d!2267944 (= c!1356784 e!4371227)))

(declare-fun res!2951768 () Bool)

(assert (=> d!2267944 (=> (not res!2951768) (not e!4371227))))

(assert (=> d!2267944 (= res!2951768 (is-Cons!70949 (exprs!8318 lt!2599252)))))

(assert (=> d!2267944 (= (derivationStepZipperUp!2628 lt!2599252 (h!77398 s!7854)) e!4371229)))

(declare-fun bm!665198 () Bool)

(assert (=> bm!665198 (= call!665203 (derivationStepZipperDown!2784 (h!77397 (exprs!8318 lt!2599252)) (Context!15637 (t!385151 (exprs!8318 lt!2599252))) (h!77398 s!7854)))))

(declare-fun b!7298319 () Bool)

(declare-fun e!4371228 () (Set Context!15636))

(assert (=> b!7298319 (= e!4371229 e!4371228)))

(declare-fun c!1356783 () Bool)

(assert (=> b!7298319 (= c!1356783 (is-Cons!70949 (exprs!8318 lt!2599252)))))

(declare-fun b!7298320 () Bool)

(assert (=> b!7298320 (= e!4371227 (nullable!8055 (h!77397 (exprs!8318 lt!2599252))))))

(declare-fun b!7298321 () Bool)

(assert (=> b!7298321 (= e!4371228 (as set.empty (Set Context!15636)))))

(declare-fun b!7298322 () Bool)

(assert (=> b!7298322 (= e!4371228 call!665203)))

(assert (= (and d!2267944 res!2951768) b!7298320))

(assert (= (and d!2267944 c!1356784) b!7298318))

(assert (= (and d!2267944 (not c!1356784)) b!7298319))

(assert (= (and b!7298319 c!1356783) b!7298322))

(assert (= (and b!7298319 (not c!1356783)) b!7298321))

(assert (= (or b!7298318 b!7298322) bm!665198))

(declare-fun m!7970842 () Bool)

(assert (=> b!7298318 m!7970842))

(declare-fun m!7970844 () Bool)

(assert (=> bm!665198 m!7970844))

(declare-fun m!7970846 () Bool)

(assert (=> b!7298320 m!7970846))

(assert (=> b!7298177 d!2267944))

(declare-fun d!2267946 () Bool)

(assert (=> d!2267946 (= (flatMap!2973 lt!2599264 lambda!450973) (choose!56572 lt!2599264 lambda!450973))))

(declare-fun bs!1913470 () Bool)

(assert (= bs!1913470 d!2267946))

(declare-fun m!7970848 () Bool)

(assert (=> bs!1913470 m!7970848))

(assert (=> b!7298176 d!2267946))

(declare-fun d!2267948 () Bool)

(declare-fun c!1356785 () Bool)

(assert (=> d!2267948 (= c!1356785 (isEmpty!40821 (t!385152 s!7854)))))

(declare-fun e!4371230 () Bool)

(assert (=> d!2267948 (= (matchZipper!3782 lt!2599272 (t!385152 s!7854)) e!4371230)))

(declare-fun b!7298323 () Bool)

(assert (=> b!7298323 (= e!4371230 (nullableZipper!3067 lt!2599272))))

(declare-fun b!7298324 () Bool)

(assert (=> b!7298324 (= e!4371230 (matchZipper!3782 (derivationStepZipper!3611 lt!2599272 (head!15065 (t!385152 s!7854))) (tail!14604 (t!385152 s!7854))))))

(assert (= (and d!2267948 c!1356785) b!7298323))

(assert (= (and d!2267948 (not c!1356785)) b!7298324))

(assert (=> d!2267948 m!7970786))

(declare-fun m!7970850 () Bool)

(assert (=> b!7298323 m!7970850))

(assert (=> b!7298324 m!7970790))

(assert (=> b!7298324 m!7970790))

(declare-fun m!7970852 () Bool)

(assert (=> b!7298324 m!7970852))

(assert (=> b!7298324 m!7970794))

(assert (=> b!7298324 m!7970852))

(assert (=> b!7298324 m!7970794))

(declare-fun m!7970854 () Bool)

(assert (=> b!7298324 m!7970854))

(assert (=> b!7298176 d!2267948))

(declare-fun bs!1913471 () Bool)

(declare-fun d!2267950 () Bool)

(assert (= bs!1913471 (and d!2267950 b!7298177)))

(declare-fun lambda!451021 () Int)

(assert (=> bs!1913471 (= lambda!451021 lambda!450972)))

(declare-fun bs!1913472 () Bool)

(assert (= bs!1913472 (and d!2267950 d!2267906)))

(assert (=> bs!1913472 (= lambda!451021 lambda!451014)))

(declare-fun bs!1913473 () Bool)

(assert (= bs!1913473 (and d!2267950 d!2267908)))

(assert (=> bs!1913473 (= lambda!451021 lambda!451015)))

(assert (=> d!2267950 (matchZipper!3782 (set.insert (Context!15637 (++!16768 (exprs!8318 lt!2599284) (exprs!8318 ct2!346))) (as set.empty (Set Context!15636))) s!7854)))

(declare-fun lt!2599404 () Unit!164354)

(assert (=> d!2267950 (= lt!2599404 (lemmaConcatPreservesForall!1625 (exprs!8318 lt!2599284) (exprs!8318 ct2!346) lambda!451021))))

(declare-fun lt!2599403 () Unit!164354)

(declare-fun choose!56573 (Context!15636 Context!15636 List!71074) Unit!164354)

(assert (=> d!2267950 (= lt!2599403 (choose!56573 lt!2599284 ct2!346 s!7854))))

(assert (=> d!2267950 (matchZipper!3782 (set.insert ct2!346 (as set.empty (Set Context!15636))) s!7854)))

(assert (=> d!2267950 (= (lemmaPrependingNullableCtxStillMatches!61 lt!2599284 ct2!346 s!7854) lt!2599403)))

(declare-fun bs!1913474 () Bool)

(assert (= bs!1913474 d!2267950))

(assert (=> bs!1913474 m!7970594))

(declare-fun m!7970856 () Bool)

(assert (=> bs!1913474 m!7970856))

(declare-fun m!7970858 () Bool)

(assert (=> bs!1913474 m!7970858))

(assert (=> bs!1913474 m!7970594))

(assert (=> bs!1913474 m!7970596))

(assert (=> bs!1913474 m!7970856))

(declare-fun m!7970860 () Bool)

(assert (=> bs!1913474 m!7970860))

(declare-fun m!7970862 () Bool)

(assert (=> bs!1913474 m!7970862))

(declare-fun m!7970864 () Bool)

(assert (=> bs!1913474 m!7970864))

(assert (=> b!7298176 d!2267950))

(assert (=> b!7298176 d!2267914))

(assert (=> b!7298176 d!2267910))

(declare-fun d!2267954 () Bool)

(declare-fun c!1356786 () Bool)

(assert (=> d!2267954 (= c!1356786 (isEmpty!40821 s!7854))))

(declare-fun e!4371231 () Bool)

(assert (=> d!2267954 (= (matchZipper!3782 lt!2599264 s!7854) e!4371231)))

(declare-fun b!7298325 () Bool)

(assert (=> b!7298325 (= e!4371231 (nullableZipper!3067 lt!2599264))))

(declare-fun b!7298326 () Bool)

(assert (=> b!7298326 (= e!4371231 (matchZipper!3782 (derivationStepZipper!3611 lt!2599264 (head!15065 s!7854)) (tail!14604 s!7854)))))

(assert (= (and d!2267954 c!1356786) b!7298325))

(assert (= (and d!2267954 (not c!1356786)) b!7298326))

(assert (=> d!2267954 m!7970730))

(declare-fun m!7970866 () Bool)

(assert (=> b!7298325 m!7970866))

(assert (=> b!7298326 m!7970734))

(assert (=> b!7298326 m!7970734))

(declare-fun m!7970868 () Bool)

(assert (=> b!7298326 m!7970868))

(assert (=> b!7298326 m!7970738))

(assert (=> b!7298326 m!7970868))

(assert (=> b!7298326 m!7970738))

(declare-fun m!7970870 () Bool)

(assert (=> b!7298326 m!7970870))

(assert (=> b!7298176 d!2267954))

(declare-fun d!2267956 () Bool)

(assert (=> d!2267956 (= (flatMap!2973 lt!2599264 lambda!450973) (dynLambda!29015 lambda!450973 lt!2599277))))

(declare-fun lt!2599405 () Unit!164354)

(assert (=> d!2267956 (= lt!2599405 (choose!56571 lt!2599264 lt!2599277 lambda!450973))))

(assert (=> d!2267956 (= lt!2599264 (set.insert lt!2599277 (as set.empty (Set Context!15636))))))

(assert (=> d!2267956 (= (lemmaFlatMapOnSingletonSet!2371 lt!2599264 lt!2599277 lambda!450973) lt!2599405)))

(declare-fun b_lambda!281581 () Bool)

(assert (=> (not b_lambda!281581) (not d!2267956)))

(declare-fun bs!1913475 () Bool)

(assert (= bs!1913475 d!2267956))

(assert (=> bs!1913475 m!7970640))

(declare-fun m!7970872 () Bool)

(assert (=> bs!1913475 m!7970872))

(declare-fun m!7970874 () Bool)

(assert (=> bs!1913475 m!7970874))

(assert (=> bs!1913475 m!7970644))

(assert (=> b!7298176 d!2267956))

(declare-fun b!7298327 () Bool)

(declare-fun e!4371236 () (Set Context!15636))

(declare-fun call!665208 () (Set Context!15636))

(assert (=> b!7298327 (= e!4371236 call!665208)))

(declare-fun b!7298328 () Bool)

(declare-fun e!4371233 () (Set Context!15636))

(assert (=> b!7298328 (= e!4371233 (as set.empty (Set Context!15636)))))

(declare-fun b!7298329 () Bool)

(declare-fun e!4371234 () (Set Context!15636))

(declare-fun call!665207 () (Set Context!15636))

(declare-fun call!665209 () (Set Context!15636))

(assert (=> b!7298329 (= e!4371234 (set.union call!665207 call!665209))))

(declare-fun b!7298330 () Bool)

(declare-fun c!1356789 () Bool)

(declare-fun e!4371235 () Bool)

(assert (=> b!7298330 (= c!1356789 e!4371235)))

(declare-fun res!2951769 () Bool)

(assert (=> b!7298330 (=> (not res!2951769) (not e!4371235))))

(assert (=> b!7298330 (= res!2951769 (is-Concat!27723 (h!77397 (exprs!8318 ct1!250))))))

(declare-fun e!4371232 () (Set Context!15636))

(assert (=> b!7298330 (= e!4371232 e!4371234)))

(declare-fun d!2267958 () Bool)

(declare-fun c!1356787 () Bool)

(assert (=> d!2267958 (= c!1356787 (and (is-ElementMatch!18878 (h!77397 (exprs!8318 ct1!250))) (= (c!1356740 (h!77397 (exprs!8318 ct1!250))) (h!77398 s!7854))))))

(declare-fun e!4371237 () (Set Context!15636))

(assert (=> d!2267958 (= (derivationStepZipperDown!2784 (h!77397 (exprs!8318 ct1!250)) lt!2599284 (h!77398 s!7854)) e!4371237)))

(declare-fun b!7298331 () Bool)

(assert (=> b!7298331 (= e!4371234 e!4371236)))

(declare-fun c!1356788 () Bool)

(assert (=> b!7298331 (= c!1356788 (is-Concat!27723 (h!77397 (exprs!8318 ct1!250))))))

(declare-fun c!1356790 () Bool)

(declare-fun call!665205 () (Set Context!15636))

(declare-fun call!665206 () List!71073)

(declare-fun bm!665199 () Bool)

(assert (=> bm!665199 (= call!665205 (derivationStepZipperDown!2784 (ite c!1356790 (regTwo!38269 (h!77397 (exprs!8318 ct1!250))) (ite c!1356789 (regTwo!38268 (h!77397 (exprs!8318 ct1!250))) (ite c!1356788 (regOne!38268 (h!77397 (exprs!8318 ct1!250))) (reg!19207 (h!77397 (exprs!8318 ct1!250)))))) (ite (or c!1356790 c!1356789) lt!2599284 (Context!15637 call!665206)) (h!77398 s!7854)))))

(declare-fun b!7298332 () Bool)

(assert (=> b!7298332 (= e!4371237 (set.insert lt!2599284 (as set.empty (Set Context!15636))))))

(declare-fun bm!665200 () Bool)

(assert (=> bm!665200 (= call!665209 call!665205)))

(declare-fun bm!665201 () Bool)

(declare-fun call!665204 () List!71073)

(assert (=> bm!665201 (= call!665206 call!665204)))

(declare-fun b!7298333 () Bool)

(assert (=> b!7298333 (= e!4371233 call!665208)))

(declare-fun b!7298334 () Bool)

(assert (=> b!7298334 (= e!4371235 (nullable!8055 (regOne!38268 (h!77397 (exprs!8318 ct1!250)))))))

(declare-fun b!7298335 () Bool)

(declare-fun c!1356791 () Bool)

(assert (=> b!7298335 (= c!1356791 (is-Star!18878 (h!77397 (exprs!8318 ct1!250))))))

(assert (=> b!7298335 (= e!4371236 e!4371233)))

(declare-fun bm!665202 () Bool)

(assert (=> bm!665202 (= call!665208 call!665209)))

(declare-fun bm!665203 () Bool)

(assert (=> bm!665203 (= call!665204 ($colon$colon!3006 (exprs!8318 lt!2599284) (ite (or c!1356789 c!1356788) (regTwo!38268 (h!77397 (exprs!8318 ct1!250))) (h!77397 (exprs!8318 ct1!250)))))))

(declare-fun b!7298336 () Bool)

(assert (=> b!7298336 (= e!4371237 e!4371232)))

(assert (=> b!7298336 (= c!1356790 (is-Union!18878 (h!77397 (exprs!8318 ct1!250))))))

(declare-fun bm!665204 () Bool)

(assert (=> bm!665204 (= call!665207 (derivationStepZipperDown!2784 (ite c!1356790 (regOne!38269 (h!77397 (exprs!8318 ct1!250))) (regOne!38268 (h!77397 (exprs!8318 ct1!250)))) (ite c!1356790 lt!2599284 (Context!15637 call!665204)) (h!77398 s!7854)))))

(declare-fun b!7298337 () Bool)

(assert (=> b!7298337 (= e!4371232 (set.union call!665207 call!665205))))

(assert (= (and d!2267958 c!1356787) b!7298332))

(assert (= (and d!2267958 (not c!1356787)) b!7298336))

(assert (= (and b!7298336 c!1356790) b!7298337))

(assert (= (and b!7298336 (not c!1356790)) b!7298330))

(assert (= (and b!7298330 res!2951769) b!7298334))

(assert (= (and b!7298330 c!1356789) b!7298329))

(assert (= (and b!7298330 (not c!1356789)) b!7298331))

(assert (= (and b!7298331 c!1356788) b!7298327))

(assert (= (and b!7298331 (not c!1356788)) b!7298335))

(assert (= (and b!7298335 c!1356791) b!7298333))

(assert (= (and b!7298335 (not c!1356791)) b!7298328))

(assert (= (or b!7298327 b!7298333) bm!665201))

(assert (= (or b!7298327 b!7298333) bm!665202))

(assert (= (or b!7298329 bm!665201) bm!665203))

(assert (= (or b!7298329 bm!665202) bm!665200))

(assert (= (or b!7298337 b!7298329) bm!665204))

(assert (= (or b!7298337 bm!665200) bm!665199))

(declare-fun m!7970876 () Bool)

(assert (=> bm!665203 m!7970876))

(declare-fun m!7970878 () Bool)

(assert (=> bm!665204 m!7970878))

(declare-fun m!7970880 () Bool)

(assert (=> bm!665199 m!7970880))

(assert (=> b!7298334 m!7970758))

(declare-fun m!7970882 () Bool)

(assert (=> b!7298332 m!7970882))

(assert (=> b!7298181 d!2267958))

(declare-fun call!665210 () (Set Context!15636))

(declare-fun e!4371242 () (Set Context!15636))

(declare-fun b!7298342 () Bool)

(assert (=> b!7298342 (= e!4371242 (set.union call!665210 (derivationStepZipperUp!2628 (Context!15637 (t!385151 (exprs!8318 lt!2599284))) (h!77398 s!7854))))))

(declare-fun d!2267960 () Bool)

(declare-fun c!1356795 () Bool)

(declare-fun e!4371240 () Bool)

(assert (=> d!2267960 (= c!1356795 e!4371240)))

(declare-fun res!2951770 () Bool)

(assert (=> d!2267960 (=> (not res!2951770) (not e!4371240))))

(assert (=> d!2267960 (= res!2951770 (is-Cons!70949 (exprs!8318 lt!2599284)))))

(assert (=> d!2267960 (= (derivationStepZipperUp!2628 lt!2599284 (h!77398 s!7854)) e!4371242)))

(declare-fun bm!665205 () Bool)

(assert (=> bm!665205 (= call!665210 (derivationStepZipperDown!2784 (h!77397 (exprs!8318 lt!2599284)) (Context!15637 (t!385151 (exprs!8318 lt!2599284))) (h!77398 s!7854)))))

(declare-fun b!7298343 () Bool)

(declare-fun e!4371241 () (Set Context!15636))

(assert (=> b!7298343 (= e!4371242 e!4371241)))

(declare-fun c!1356794 () Bool)

(assert (=> b!7298343 (= c!1356794 (is-Cons!70949 (exprs!8318 lt!2599284)))))

(declare-fun b!7298344 () Bool)

(assert (=> b!7298344 (= e!4371240 (nullable!8055 (h!77397 (exprs!8318 lt!2599284))))))

(declare-fun b!7298345 () Bool)

(assert (=> b!7298345 (= e!4371241 (as set.empty (Set Context!15636)))))

(declare-fun b!7298346 () Bool)

(assert (=> b!7298346 (= e!4371241 call!665210)))

(assert (= (and d!2267960 res!2951770) b!7298344))

(assert (= (and d!2267960 c!1356795) b!7298342))

(assert (= (and d!2267960 (not c!1356795)) b!7298343))

(assert (= (and b!7298343 c!1356794) b!7298346))

(assert (= (and b!7298343 (not c!1356794)) b!7298345))

(assert (= (or b!7298342 b!7298346) bm!665205))

(declare-fun m!7970884 () Bool)

(assert (=> b!7298342 m!7970884))

(declare-fun m!7970886 () Bool)

(assert (=> bm!665205 m!7970886))

(declare-fun m!7970888 () Bool)

(assert (=> b!7298344 m!7970888))

(assert (=> b!7298181 d!2267960))

(declare-fun d!2267962 () Bool)

(declare-fun nullableFct!3188 (Regex!18878) Bool)

(assert (=> d!2267962 (= (nullable!8055 (h!77397 (exprs!8318 ct1!250))) (nullableFct!3188 (h!77397 (exprs!8318 ct1!250))))))

(declare-fun bs!1913476 () Bool)

(assert (= bs!1913476 d!2267962))

(declare-fun m!7970890 () Bool)

(assert (=> bs!1913476 m!7970890))

(assert (=> b!7298174 d!2267962))

(assert (=> b!7298174 d!2267932))

(declare-fun d!2267964 () Bool)

(assert (=> d!2267964 (= (tail!14602 (exprs!8318 ct1!250)) (t!385151 (exprs!8318 ct1!250)))))

(assert (=> b!7298174 d!2267964))

(declare-fun bs!1913477 () Bool)

(declare-fun d!2267966 () Bool)

(assert (= bs!1913477 (and d!2267966 b!7298177)))

(declare-fun lambda!451022 () Int)

(assert (=> bs!1913477 (= lambda!451022 lambda!450972)))

(declare-fun bs!1913478 () Bool)

(assert (= bs!1913478 (and d!2267966 d!2267906)))

(assert (=> bs!1913478 (= lambda!451022 lambda!451014)))

(declare-fun bs!1913479 () Bool)

(assert (= bs!1913479 (and d!2267966 d!2267908)))

(assert (=> bs!1913479 (= lambda!451022 lambda!451015)))

(declare-fun bs!1913480 () Bool)

(assert (= bs!1913480 (and d!2267966 d!2267950)))

(assert (=> bs!1913480 (= lambda!451022 lambda!451021)))

(assert (=> d!2267966 (= (inv!90206 lt!2599252) (forall!17698 (exprs!8318 lt!2599252) lambda!451022))))

(declare-fun bs!1913481 () Bool)

(assert (= bs!1913481 d!2267966))

(declare-fun m!7970892 () Bool)

(assert (=> bs!1913481 m!7970892))

(assert (=> b!7298184 d!2267966))

(assert (=> b!7298184 d!2267922))

(declare-fun bs!1913482 () Bool)

(declare-fun d!2267968 () Bool)

(assert (= bs!1913482 (and d!2267968 d!2267906)))

(declare-fun lambda!451025 () Int)

(assert (=> bs!1913482 (not (= lambda!451025 lambda!451014))))

(declare-fun bs!1913483 () Bool)

(assert (= bs!1913483 (and d!2267968 d!2267966)))

(assert (=> bs!1913483 (not (= lambda!451025 lambda!451022))))

(declare-fun bs!1913484 () Bool)

(assert (= bs!1913484 (and d!2267968 d!2267908)))

(assert (=> bs!1913484 (not (= lambda!451025 lambda!451015))))

(declare-fun bs!1913485 () Bool)

(assert (= bs!1913485 (and d!2267968 d!2267950)))

(assert (=> bs!1913485 (not (= lambda!451025 lambda!451021))))

(declare-fun bs!1913486 () Bool)

(assert (= bs!1913486 (and d!2267968 b!7298177)))

(assert (=> bs!1913486 (not (= lambda!451025 lambda!450972))))

(assert (=> d!2267968 (= (nullableContext!368 ct1!250) (forall!17698 (exprs!8318 ct1!250) lambda!451025))))

(declare-fun bs!1913487 () Bool)

(assert (= bs!1913487 d!2267968))

(declare-fun m!7970906 () Bool)

(assert (=> bs!1913487 m!7970906))

(assert (=> b!7298179 d!2267968))

(declare-fun b!7298353 () Bool)

(declare-fun e!4371246 () Bool)

(declare-fun tp!2062687 () Bool)

(declare-fun tp!2062688 () Bool)

(assert (=> b!7298353 (= e!4371246 (and tp!2062687 tp!2062688))))

(assert (=> b!7298173 (= tp!2062673 e!4371246)))

(assert (= (and b!7298173 (is-Cons!70949 (exprs!8318 ct2!346))) b!7298353))

(declare-fun b!7298354 () Bool)

(declare-fun e!4371247 () Bool)

(declare-fun tp!2062689 () Bool)

(declare-fun tp!2062690 () Bool)

(assert (=> b!7298354 (= e!4371247 (and tp!2062689 tp!2062690))))

(assert (=> b!7298183 (= tp!2062671 e!4371247)))

(assert (= (and b!7298183 (is-Cons!70949 (exprs!8318 ct1!250))) b!7298354))

(declare-fun b!7298359 () Bool)

(declare-fun e!4371250 () Bool)

(declare-fun tp!2062693 () Bool)

(assert (=> b!7298359 (= e!4371250 (and tp_is_empty!47221 tp!2062693))))

(assert (=> b!7298175 (= tp!2062672 e!4371250)))

(assert (= (and b!7298175 (is-Cons!70950 (t!385152 s!7854))) b!7298359))

(declare-fun b_lambda!281583 () Bool)

(assert (= b_lambda!281579 (or b!7298177 b_lambda!281583)))

(declare-fun bs!1913488 () Bool)

(declare-fun d!2267972 () Bool)

(assert (= bs!1913488 (and d!2267972 b!7298177)))

(assert (=> bs!1913488 (= (dynLambda!29015 lambda!450973 ct1!250) (derivationStepZipperUp!2628 ct1!250 (h!77398 s!7854)))))

(assert (=> bs!1913488 m!7970614))

(assert (=> d!2267940 d!2267972))

(declare-fun b_lambda!281585 () Bool)

(assert (= b_lambda!281577 (or b!7298177 b_lambda!281585)))

(declare-fun bs!1913489 () Bool)

(declare-fun d!2267974 () Bool)

(assert (= bs!1913489 (and d!2267974 b!7298177)))

(assert (=> bs!1913489 (= (dynLambda!29015 lambda!450973 lt!2599252) (derivationStepZipperUp!2628 lt!2599252 (h!77398 s!7854)))))

(assert (=> bs!1913489 m!7970610))

(assert (=> d!2267934 d!2267974))

(declare-fun b_lambda!281587 () Bool)

(assert (= b_lambda!281581 (or b!7298177 b_lambda!281587)))

(declare-fun bs!1913490 () Bool)

(declare-fun d!2267976 () Bool)

(assert (= bs!1913490 (and d!2267976 b!7298177)))

(assert (=> bs!1913490 (= (dynLambda!29015 lambda!450973 lt!2599277) (derivationStepZipperUp!2628 lt!2599277 (h!77398 s!7854)))))

(assert (=> bs!1913490 m!7970642))

(assert (=> d!2267956 d!2267976))

(push 1)

(assert (not b!7298342))

(assert (not bm!665198))

(assert (not b!7298296))

(assert (not bm!665199))

(assert (not d!2267906))

(assert (not bm!665205))

(assert (not b!7298306))

(assert (not bm!665203))

(assert (not b_lambda!281583))

(assert (not bm!665197))

(assert (not b!7298344))

(assert (not d!2267918))

(assert (not b!7298311))

(assert (not b!7298324))

(assert (not d!2267926))

(assert (not d!2267938))

(assert (not b!7298353))

(assert (not d!2267954))

(assert (not bm!665191))

(assert (not b!7298301))

(assert (not d!2267948))

(assert (not bm!665178))

(assert (not d!2267966))

(assert (not b!7298298))

(assert (not b!7298323))

(assert (not d!2267930))

(assert (not d!2267934))

(assert (not d!2267962))

(assert (not b!7298237))

(assert (not bs!1913490))

(assert (not b!7298309))

(assert (not b!7298295))

(assert (not bs!1913489))

(assert (not d!2267914))

(assert (not d!2267916))

(assert (not d!2267920))

(assert (not b!7298318))

(assert (not b!7298302))

(assert (not b!7298354))

(assert (not bm!665195))

(assert (not d!2267922))

(assert (not d!2267940))

(assert (not bm!665204))

(assert (not b_lambda!281587))

(assert (not b!7298236))

(assert (not d!2267956))

(assert (not d!2267950))

(assert (not b!7298315))

(assert (not bs!1913488))

(assert (not b!7298325))

(assert (not b!7298300))

(assert (not b!7298359))

(assert (not b!7298320))

(assert (not d!2267924))

(assert (not b_lambda!281585))

(assert (not b!7298299))

(assert (not b!7298250))

(assert (not d!2267946))

(assert tp_is_empty!47221)

(assert (not b!7298316))

(assert (not d!2267936))

(assert (not b!7298282))

(assert (not b!7298334))

(assert (not d!2267968))

(assert (not b!7298248))

(assert (not d!2267904))

(assert (not b!7298303))

(assert (not d!2267942))

(assert (not bm!665196))

(assert (not d!2267908))

(assert (not b!7298326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

