; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!643294 () Bool)

(assert start!643294)

(declare-fun b!6565238 () Bool)

(assert (=> b!6565238 true))

(assert (=> b!6565238 true))

(declare-fun lambda!365369 () Int)

(declare-fun lambda!365368 () Int)

(assert (=> b!6565238 (not (= lambda!365369 lambda!365368))))

(assert (=> b!6565238 true))

(assert (=> b!6565238 true))

(declare-fun b!6565242 () Bool)

(assert (=> b!6565242 true))

(declare-fun b!6565269 () Bool)

(assert (=> b!6565269 true))

(declare-fun bs!1676893 () Bool)

(declare-fun b!6565271 () Bool)

(assert (= bs!1676893 (and b!6565271 b!6565238)))

(declare-datatypes ((C!33152 0))(
  ( (C!33153 (val!26278 Int)) )
))
(declare-datatypes ((Regex!16441 0))(
  ( (ElementMatch!16441 (c!1206624 C!33152)) (Concat!25286 (regOne!33394 Regex!16441) (regTwo!33394 Regex!16441)) (EmptyExpr!16441) (Star!16441 (reg!16770 Regex!16441)) (EmptyLang!16441) (Union!16441 (regOne!33395 Regex!16441) (regTwo!33395 Regex!16441)) )
))
(declare-fun r!7292 () Regex!16441)

(declare-fun lt!2407124 () Regex!16441)

(declare-fun lambda!365373 () Int)

(assert (=> bs!1676893 (= (= lt!2407124 (regOne!33394 r!7292)) (= lambda!365373 lambda!365368))))

(assert (=> bs!1676893 (not (= lambda!365373 lambda!365369))))

(assert (=> b!6565271 true))

(assert (=> b!6565271 true))

(assert (=> b!6565271 true))

(declare-fun lambda!365374 () Int)

(assert (=> bs!1676893 (not (= lambda!365374 lambda!365368))))

(assert (=> bs!1676893 (= (= lt!2407124 (regOne!33394 r!7292)) (= lambda!365374 lambda!365369))))

(assert (=> b!6565271 (not (= lambda!365374 lambda!365373))))

(assert (=> b!6565271 true))

(assert (=> b!6565271 true))

(assert (=> b!6565271 true))

(declare-fun bs!1676894 () Bool)

(declare-fun b!6565241 () Bool)

(assert (= bs!1676894 (and b!6565241 b!6565238)))

(declare-datatypes ((List!65622 0))(
  ( (Nil!65498) (Cons!65498 (h!71946 C!33152) (t!379266 List!65622)) )
))
(declare-fun s!2326 () List!65622)

(declare-fun lambda!365375 () Int)

(declare-fun lt!2407122 () Regex!16441)

(declare-datatypes ((tuple2!66840 0))(
  ( (tuple2!66841 (_1!36723 List!65622) (_2!36723 List!65622)) )
))
(declare-fun lt!2407152 () tuple2!66840)

(assert (=> bs!1676894 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365375 lambda!365368))))

(assert (=> bs!1676894 (not (= lambda!365375 lambda!365369))))

(declare-fun bs!1676895 () Bool)

(assert (= bs!1676895 (and b!6565241 b!6565271)))

(assert (=> bs!1676895 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) lt!2407124) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365375 lambda!365373))))

(assert (=> bs!1676895 (not (= lambda!365375 lambda!365374))))

(assert (=> b!6565241 true))

(assert (=> b!6565241 true))

(assert (=> b!6565241 true))

(declare-fun lambda!365376 () Int)

(assert (=> bs!1676894 (not (= lambda!365376 lambda!365368))))

(assert (=> bs!1676895 (not (= lambda!365376 lambda!365373))))

(assert (=> bs!1676894 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365376 lambda!365369))))

(assert (=> b!6565241 (not (= lambda!365376 lambda!365375))))

(assert (=> bs!1676895 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) lt!2407124) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365376 lambda!365374))))

(assert (=> b!6565241 true))

(assert (=> b!6565241 true))

(assert (=> b!6565241 true))

(declare-fun lambda!365377 () Int)

(assert (=> bs!1676894 (not (= lambda!365377 lambda!365368))))

(assert (=> bs!1676895 (not (= lambda!365377 lambda!365373))))

(assert (=> bs!1676894 (not (= lambda!365377 lambda!365369))))

(assert (=> b!6565241 (not (= lambda!365377 lambda!365376))))

(assert (=> b!6565241 (not (= lambda!365377 lambda!365375))))

(assert (=> bs!1676895 (not (= lambda!365377 lambda!365374))))

(assert (=> b!6565241 true))

(assert (=> b!6565241 true))

(assert (=> b!6565241 true))

(declare-fun b!6565237 () Bool)

(declare-fun res!2694132 () Bool)

(declare-fun e!3974174 () Bool)

(assert (=> b!6565237 (=> res!2694132 e!3974174)))

(get-info :version)

(assert (=> b!6565237 (= res!2694132 (or ((_ is EmptyExpr!16441) r!7292) ((_ is EmptyLang!16441) r!7292) ((_ is ElementMatch!16441) r!7292) ((_ is Union!16441) r!7292) (not ((_ is Concat!25286) r!7292))))))

(declare-fun e!3974164 () Bool)

(assert (=> b!6565238 (= e!3974174 e!3974164)))

(declare-fun res!2694118 () Bool)

(assert (=> b!6565238 (=> res!2694118 e!3974164)))

(declare-fun lt!2407162 () Bool)

(declare-fun lt!2407157 () Bool)

(assert (=> b!6565238 (= res!2694118 (or (not (= lt!2407157 lt!2407162)) ((_ is Nil!65498) s!2326)))))

(declare-fun Exists!3511 (Int) Bool)

(assert (=> b!6565238 (= (Exists!3511 lambda!365368) (Exists!3511 lambda!365369))))

(declare-datatypes ((Unit!159099 0))(
  ( (Unit!159100) )
))
(declare-fun lt!2407183 () Unit!159099)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2048 (Regex!16441 Regex!16441 List!65622) Unit!159099)

(assert (=> b!6565238 (= lt!2407183 (lemmaExistCutMatchRandMatchRSpecEquivalent!2048 (regOne!33394 r!7292) (regTwo!33394 r!7292) s!2326))))

(assert (=> b!6565238 (= lt!2407162 (Exists!3511 lambda!365368))))

(declare-datatypes ((Option!16332 0))(
  ( (None!16331) (Some!16331 (v!52516 tuple2!66840)) )
))
(declare-fun isDefined!13035 (Option!16332) Bool)

(declare-fun findConcatSeparation!2746 (Regex!16441 Regex!16441 List!65622 List!65622 List!65622) Option!16332)

(assert (=> b!6565238 (= lt!2407162 (isDefined!13035 (findConcatSeparation!2746 (regOne!33394 r!7292) (regTwo!33394 r!7292) Nil!65498 s!2326 s!2326)))))

(declare-fun lt!2407176 () Unit!159099)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2510 (Regex!16441 Regex!16441 List!65622) Unit!159099)

(assert (=> b!6565238 (= lt!2407176 (lemmaFindConcatSeparationEquivalentToExists!2510 (regOne!33394 r!7292) (regTwo!33394 r!7292) s!2326))))

(declare-fun b!6565239 () Bool)

(declare-fun e!3974161 () Bool)

(declare-fun e!3974181 () Bool)

(assert (=> b!6565239 (= e!3974161 e!3974181)))

(declare-fun res!2694137 () Bool)

(assert (=> b!6565239 (=> res!2694137 e!3974181)))

(declare-datatypes ((List!65623 0))(
  ( (Nil!65499) (Cons!65499 (h!71947 Regex!16441) (t!379267 List!65623)) )
))
(declare-datatypes ((Context!11650 0))(
  ( (Context!11651 (exprs!6325 List!65623)) )
))
(declare-datatypes ((List!65624 0))(
  ( (Nil!65500) (Cons!65500 (h!71948 Context!11650) (t!379268 List!65624)) )
))
(declare-fun lt!2407134 () List!65624)

(declare-fun unfocusZipper!2183 (List!65624) Regex!16441)

(assert (=> b!6565239 (= res!2694137 (not (= (unfocusZipper!2183 lt!2407134) (reg!16770 (regOne!33394 r!7292)))))))

(declare-fun lt!2407138 () Context!11650)

(assert (=> b!6565239 (= lt!2407134 (Cons!65500 lt!2407138 Nil!65500))))

(declare-fun lambda!365370 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2407129 () (InoxSet Context!11650))

(declare-fun lt!2407173 () Context!11650)

(declare-fun flatMap!1946 ((InoxSet Context!11650) Int) (InoxSet Context!11650))

(declare-fun derivationStepZipperUp!1615 (Context!11650 C!33152) (InoxSet Context!11650))

(assert (=> b!6565239 (= (flatMap!1946 lt!2407129 lambda!365370) (derivationStepZipperUp!1615 lt!2407173 (h!71946 s!2326)))))

(declare-fun lt!2407151 () Unit!159099)

(declare-fun lemmaFlatMapOnSingletonSet!1472 ((InoxSet Context!11650) Context!11650 Int) Unit!159099)

(assert (=> b!6565239 (= lt!2407151 (lemmaFlatMapOnSingletonSet!1472 lt!2407129 lt!2407173 lambda!365370))))

(declare-fun lt!2407140 () (InoxSet Context!11650))

(assert (=> b!6565239 (= (flatMap!1946 lt!2407140 lambda!365370) (derivationStepZipperUp!1615 lt!2407138 (h!71946 s!2326)))))

(declare-fun lt!2407181 () Unit!159099)

(assert (=> b!6565239 (= lt!2407181 (lemmaFlatMapOnSingletonSet!1472 lt!2407140 lt!2407138 lambda!365370))))

(declare-fun lt!2407155 () (InoxSet Context!11650))

(assert (=> b!6565239 (= lt!2407155 (derivationStepZipperUp!1615 lt!2407173 (h!71946 s!2326)))))

(declare-fun lt!2407123 () (InoxSet Context!11650))

(assert (=> b!6565239 (= lt!2407123 (derivationStepZipperUp!1615 lt!2407138 (h!71946 s!2326)))))

(assert (=> b!6565239 (= lt!2407129 (store ((as const (Array Context!11650 Bool)) false) lt!2407173 true))))

(assert (=> b!6565239 (= lt!2407140 (store ((as const (Array Context!11650 Bool)) false) lt!2407138 true))))

(declare-fun lt!2407132 () List!65623)

(assert (=> b!6565239 (= lt!2407138 (Context!11651 lt!2407132))))

(assert (=> b!6565239 (= lt!2407132 (Cons!65499 (reg!16770 (regOne!33394 r!7292)) Nil!65499))))

(declare-fun b!6565240 () Bool)

(declare-fun res!2694145 () Bool)

(declare-fun e!3974186 () Bool)

(assert (=> b!6565240 (=> res!2694145 e!3974186)))

(declare-fun lt!2407180 () Bool)

(declare-fun lt!2407150 () Bool)

(assert (=> b!6565240 (= res!2694145 (or (not lt!2407180) (not lt!2407150)))))

(declare-fun e!3974188 () Bool)

(declare-fun e!3974163 () Bool)

(assert (=> b!6565241 (= e!3974188 e!3974163)))

(declare-fun res!2694119 () Bool)

(assert (=> b!6565241 (=> res!2694119 e!3974163)))

(declare-fun lt!2407169 () tuple2!66840)

(declare-fun matchR!8624 (Regex!16441 List!65622) Bool)

(assert (=> b!6565241 (= res!2694119 (not (matchR!8624 (reg!16770 (regOne!33394 r!7292)) (_1!36723 lt!2407169))))))

(declare-fun ++!14584 (List!65622 List!65622) List!65622)

(assert (=> b!6565241 (= (++!14584 (++!14584 (_1!36723 lt!2407169) (_2!36723 lt!2407169)) (_2!36723 lt!2407152)) (++!14584 (_1!36723 lt!2407169) (++!14584 (_2!36723 lt!2407169) (_2!36723 lt!2407152))))))

(declare-fun lt!2407160 () Unit!159099)

(declare-fun lemmaConcatAssociativity!2944 (List!65622 List!65622 List!65622) Unit!159099)

(assert (=> b!6565241 (= lt!2407160 (lemmaConcatAssociativity!2944 (_1!36723 lt!2407169) (_2!36723 lt!2407169) (_2!36723 lt!2407152)))))

(declare-fun lt!2407128 () Option!16332)

(declare-fun get!22743 (Option!16332) tuple2!66840)

(assert (=> b!6565241 (= lt!2407169 (get!22743 lt!2407128))))

(assert (=> b!6565241 (= (Exists!3511 lambda!365375) (Exists!3511 lambda!365377))))

(declare-fun lt!2407178 () Unit!159099)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!664 (Regex!16441 List!65622) Unit!159099)

(assert (=> b!6565241 (= lt!2407178 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!664 (reg!16770 (regOne!33394 r!7292)) (_1!36723 lt!2407152)))))

(assert (=> b!6565241 (= (Exists!3511 lambda!365375) (Exists!3511 lambda!365376))))

(declare-fun lt!2407170 () Unit!159099)

(assert (=> b!6565241 (= lt!2407170 (lemmaExistCutMatchRandMatchRSpecEquivalent!2048 (reg!16770 (regOne!33394 r!7292)) lt!2407122 (_1!36723 lt!2407152)))))

(assert (=> b!6565241 (= (isDefined!13035 lt!2407128) (Exists!3511 lambda!365375))))

(assert (=> b!6565241 (= lt!2407128 (findConcatSeparation!2746 (reg!16770 (regOne!33394 r!7292)) lt!2407122 Nil!65498 (_1!36723 lt!2407152) (_1!36723 lt!2407152)))))

(declare-fun lt!2407159 () Unit!159099)

(assert (=> b!6565241 (= lt!2407159 (lemmaFindConcatSeparationEquivalentToExists!2510 (reg!16770 (regOne!33394 r!7292)) lt!2407122 (_1!36723 lt!2407152)))))

(declare-fun matchRSpec!3542 (Regex!16441 List!65622) Bool)

(assert (=> b!6565241 (matchRSpec!3542 lt!2407124 (_1!36723 lt!2407152))))

(declare-fun lt!2407156 () Unit!159099)

(declare-fun mainMatchTheorem!3542 (Regex!16441 List!65622) Unit!159099)

(assert (=> b!6565241 (= lt!2407156 (mainMatchTheorem!3542 lt!2407124 (_1!36723 lt!2407152)))))

(declare-fun e!3974171 () Bool)

(assert (=> b!6565242 (= e!3974164 e!3974171)))

(declare-fun res!2694144 () Bool)

(assert (=> b!6565242 (=> res!2694144 e!3974171)))

(assert (=> b!6565242 (= res!2694144 (or (and ((_ is ElementMatch!16441) (regOne!33394 r!7292)) (= (c!1206624 (regOne!33394 r!7292)) (h!71946 s!2326))) ((_ is Union!16441) (regOne!33394 r!7292))))))

(declare-fun lt!2407165 () Unit!159099)

(declare-fun e!3974183 () Unit!159099)

(assert (=> b!6565242 (= lt!2407165 e!3974183)))

(declare-fun c!1206623 () Bool)

(declare-fun lt!2407175 () Bool)

(assert (=> b!6565242 (= c!1206623 lt!2407175)))

(declare-fun zl!343 () List!65624)

(declare-fun nullable!6434 (Regex!16441) Bool)

(assert (=> b!6565242 (= lt!2407175 (nullable!6434 (h!71947 (exprs!6325 (h!71948 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11650))

(assert (=> b!6565242 (= (flatMap!1946 z!1189 lambda!365370) (derivationStepZipperUp!1615 (h!71948 zl!343) (h!71946 s!2326)))))

(declare-fun lt!2407145 () Unit!159099)

(assert (=> b!6565242 (= lt!2407145 (lemmaFlatMapOnSingletonSet!1472 z!1189 (h!71948 zl!343) lambda!365370))))

(declare-fun lt!2407127 () (InoxSet Context!11650))

(declare-fun lt!2407148 () Context!11650)

(assert (=> b!6565242 (= lt!2407127 (derivationStepZipperUp!1615 lt!2407148 (h!71946 s!2326)))))

(declare-fun lt!2407125 () (InoxSet Context!11650))

(declare-fun derivationStepZipperDown!1689 (Regex!16441 Context!11650 C!33152) (InoxSet Context!11650))

(assert (=> b!6565242 (= lt!2407125 (derivationStepZipperDown!1689 (h!71947 (exprs!6325 (h!71948 zl!343))) lt!2407148 (h!71946 s!2326)))))

(assert (=> b!6565242 (= lt!2407148 (Context!11651 (t!379267 (exprs!6325 (h!71948 zl!343)))))))

(declare-fun lt!2407163 () (InoxSet Context!11650))

(assert (=> b!6565242 (= lt!2407163 (derivationStepZipperUp!1615 (Context!11651 (Cons!65499 (h!71947 (exprs!6325 (h!71948 zl!343))) (t!379267 (exprs!6325 (h!71948 zl!343))))) (h!71946 s!2326)))))

(declare-fun b!6565243 () Bool)

(declare-fun e!3974180 () Bool)

(declare-fun e!3974179 () Bool)

(assert (=> b!6565243 (= e!3974180 e!3974179)))

(declare-fun res!2694122 () Bool)

(assert (=> b!6565243 (=> res!2694122 e!3974179)))

(declare-fun lt!2407168 () (InoxSet Context!11650))

(declare-fun lt!2407184 () (InoxSet Context!11650))

(assert (=> b!6565243 (= res!2694122 (not (= lt!2407168 lt!2407184)))))

(declare-fun lt!2407139 () Context!11650)

(declare-fun lt!2407147 () (InoxSet Context!11650))

(assert (=> b!6565243 (= (flatMap!1946 lt!2407147 lambda!365370) (derivationStepZipperUp!1615 lt!2407139 (h!71946 s!2326)))))

(declare-fun lt!2407153 () Unit!159099)

(assert (=> b!6565243 (= lt!2407153 (lemmaFlatMapOnSingletonSet!1472 lt!2407147 lt!2407139 lambda!365370))))

(declare-fun lt!2407149 () (InoxSet Context!11650))

(assert (=> b!6565243 (= lt!2407149 (derivationStepZipperUp!1615 lt!2407139 (h!71946 s!2326)))))

(declare-fun derivationStepZipper!2407 ((InoxSet Context!11650) C!33152) (InoxSet Context!11650))

(assert (=> b!6565243 (= lt!2407168 (derivationStepZipper!2407 lt!2407147 (h!71946 s!2326)))))

(assert (=> b!6565243 (= lt!2407147 (store ((as const (Array Context!11650 Bool)) false) lt!2407139 true))))

(declare-fun lt!2407171 () List!65623)

(assert (=> b!6565243 (= lt!2407139 (Context!11651 (Cons!65499 (reg!16770 (regOne!33394 r!7292)) lt!2407171)))))

(declare-fun b!6565244 () Bool)

(declare-fun e!3974184 () Bool)

(assert (=> b!6565244 (= e!3974181 e!3974184)))

(declare-fun res!2694116 () Bool)

(assert (=> b!6565244 (=> res!2694116 e!3974184)))

(declare-fun lt!2407158 () List!65624)

(declare-fun lt!2407120 () Regex!16441)

(assert (=> b!6565244 (= res!2694116 (not (= (unfocusZipper!2183 lt!2407158) lt!2407120)))))

(assert (=> b!6565244 (= lt!2407158 (Cons!65500 lt!2407173 Nil!65500))))

(declare-fun b!6565245 () Bool)

(declare-fun e!3974187 () Bool)

(declare-fun matchZipper!2453 ((InoxSet Context!11650) List!65622) Bool)

(assert (=> b!6565245 (= e!3974187 (matchZipper!2453 lt!2407127 (t!379266 s!2326)))))

(declare-fun b!6565246 () Bool)

(declare-fun e!3974185 () Bool)

(declare-fun tp!1813163 () Bool)

(assert (=> b!6565246 (= e!3974185 tp!1813163)))

(declare-fun b!6565247 () Bool)

(declare-fun res!2694113 () Bool)

(assert (=> b!6565247 (=> res!2694113 e!3974164)))

(declare-fun isEmpty!37741 (List!65623) Bool)

(assert (=> b!6565247 (= res!2694113 (isEmpty!37741 (t!379267 (exprs!6325 (h!71948 zl!343)))))))

(declare-fun b!6565248 () Bool)

(declare-fun res!2694130 () Bool)

(assert (=> b!6565248 (=> res!2694130 e!3974174)))

(declare-fun generalisedConcat!2038 (List!65623) Regex!16441)

(assert (=> b!6565248 (= res!2694130 (not (= r!7292 (generalisedConcat!2038 (exprs!6325 (h!71948 zl!343))))))))

(declare-fun setIsEmpty!44822 () Bool)

(declare-fun setRes!44822 () Bool)

(assert (=> setIsEmpty!44822 setRes!44822))

(declare-fun b!6565249 () Bool)

(declare-fun e!3974168 () Bool)

(assert (=> b!6565249 (= e!3974168 (not e!3974174))))

(declare-fun res!2694131 () Bool)

(assert (=> b!6565249 (=> res!2694131 e!3974174)))

(assert (=> b!6565249 (= res!2694131 (not ((_ is Cons!65500) zl!343)))))

(assert (=> b!6565249 (= lt!2407157 (matchRSpec!3542 r!7292 s!2326))))

(assert (=> b!6565249 (= lt!2407157 (matchR!8624 r!7292 s!2326))))

(declare-fun lt!2407182 () Unit!159099)

(assert (=> b!6565249 (= lt!2407182 (mainMatchTheorem!3542 r!7292 s!2326))))

(declare-fun b!6565250 () Bool)

(declare-fun res!2694128 () Bool)

(declare-fun e!3974173 () Bool)

(assert (=> b!6565250 (=> res!2694128 e!3974173)))

(assert (=> b!6565250 (= res!2694128 (not (matchZipper!2453 z!1189 s!2326)))))

(declare-fun b!6565251 () Bool)

(assert (=> b!6565251 (= e!3974184 e!3974173)))

(declare-fun res!2694124 () Bool)

(assert (=> b!6565251 (=> res!2694124 e!3974173)))

(assert (=> b!6565251 (= res!2694124 lt!2407157)))

(declare-fun lt!2407174 () Bool)

(declare-fun lt!2407161 () Regex!16441)

(assert (=> b!6565251 (= lt!2407174 (matchRSpec!3542 lt!2407161 s!2326))))

(assert (=> b!6565251 (= lt!2407174 (matchR!8624 lt!2407161 s!2326))))

(declare-fun lt!2407179 () Unit!159099)

(assert (=> b!6565251 (= lt!2407179 (mainMatchTheorem!3542 lt!2407161 s!2326))))

(declare-fun b!6565252 () Bool)

(declare-fun res!2694111 () Bool)

(assert (=> b!6565252 (=> res!2694111 e!3974174)))

(declare-fun generalisedUnion!2285 (List!65623) Regex!16441)

(declare-fun unfocusZipperList!1862 (List!65624) List!65623)

(assert (=> b!6565252 (= res!2694111 (not (= r!7292 (generalisedUnion!2285 (unfocusZipperList!1862 zl!343)))))))

(declare-fun b!6565253 () Bool)

(declare-fun e!3974172 () Bool)

(declare-fun e!3974175 () Bool)

(assert (=> b!6565253 (= e!3974172 e!3974175)))

(declare-fun res!2694112 () Bool)

(assert (=> b!6565253 (=> res!2694112 e!3974175)))

(declare-fun lt!2407144 () List!65622)

(assert (=> b!6565253 (= res!2694112 (not (= s!2326 lt!2407144)))))

(declare-fun lt!2407137 () tuple2!66840)

(assert (=> b!6565253 (= lt!2407144 (++!14584 (_1!36723 lt!2407137) (_2!36723 lt!2407137)))))

(declare-fun lt!2407141 () Option!16332)

(assert (=> b!6565253 (= lt!2407137 (get!22743 lt!2407141))))

(assert (=> b!6565253 (isDefined!13035 lt!2407141)))

(declare-fun findConcatSeparationZippers!206 ((InoxSet Context!11650) (InoxSet Context!11650) List!65622 List!65622 List!65622) Option!16332)

(assert (=> b!6565253 (= lt!2407141 (findConcatSeparationZippers!206 lt!2407140 lt!2407129 Nil!65498 s!2326 s!2326))))

(declare-fun lt!2407126 () Unit!159099)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!206 ((InoxSet Context!11650) Context!11650 List!65622) Unit!159099)

(assert (=> b!6565253 (= lt!2407126 (lemmaConcatZipperMatchesStringThenFindConcatDefined!206 lt!2407140 lt!2407173 s!2326))))

(declare-fun b!6565254 () Bool)

(assert (=> b!6565254 (= e!3974173 e!3974186)))

(declare-fun res!2694126 () Bool)

(assert (=> b!6565254 (=> res!2694126 e!3974186)))

(declare-fun e!3974182 () Bool)

(assert (=> b!6565254 (= res!2694126 e!3974182)))

(declare-fun res!2694139 () Bool)

(assert (=> b!6565254 (=> (not res!2694139) (not e!3974182))))

(assert (=> b!6565254 (= res!2694139 (not lt!2407180))))

(assert (=> b!6565254 (= lt!2407180 (matchZipper!2453 lt!2407125 (t!379266 s!2326)))))

(declare-fun b!6565255 () Bool)

(declare-fun res!2694120 () Bool)

(assert (=> b!6565255 (=> res!2694120 e!3974175)))

(assert (=> b!6565255 (= res!2694120 (not (matchZipper!2453 lt!2407129 (_2!36723 lt!2407137))))))

(declare-fun b!6565256 () Bool)

(assert (=> b!6565256 (= e!3974171 e!3974180)))

(declare-fun res!2694136 () Bool)

(assert (=> b!6565256 (=> res!2694136 e!3974180)))

(assert (=> b!6565256 (= res!2694136 (not (= lt!2407125 lt!2407184)))))

(assert (=> b!6565256 (= lt!2407184 (derivationStepZipperDown!1689 (reg!16770 (regOne!33394 r!7292)) lt!2407173 (h!71946 s!2326)))))

(assert (=> b!6565256 (= lt!2407173 (Context!11651 lt!2407171))))

(assert (=> b!6565256 (= lt!2407171 (Cons!65499 lt!2407122 (t!379267 (exprs!6325 (h!71948 zl!343)))))))

(assert (=> b!6565256 (= lt!2407122 (Star!16441 (reg!16770 (regOne!33394 r!7292))))))

(declare-fun b!6565257 () Bool)

(declare-fun e!3974170 () Bool)

(assert (=> b!6565257 (= e!3974179 e!3974170)))

(declare-fun res!2694143 () Bool)

(assert (=> b!6565257 (=> res!2694143 e!3974170)))

(assert (=> b!6565257 (= res!2694143 (not (= lt!2407150 (matchZipper!2453 lt!2407168 (t!379266 s!2326)))))))

(assert (=> b!6565257 (= lt!2407150 (matchZipper!2453 lt!2407147 s!2326))))

(declare-fun b!6565258 () Bool)

(assert (=> b!6565258 (= e!3974182 (not (matchZipper!2453 lt!2407127 (t!379266 s!2326))))))

(declare-fun b!6565259 () Bool)

(declare-fun res!2694114 () Bool)

(assert (=> b!6565259 (=> res!2694114 e!3974170)))

(declare-fun lt!2407133 () Regex!16441)

(assert (=> b!6565259 (= res!2694114 (not (= lt!2407133 r!7292)))))

(declare-fun b!6565260 () Bool)

(declare-fun res!2694129 () Bool)

(assert (=> b!6565260 (=> res!2694129 e!3974163)))

(assert (=> b!6565260 (= res!2694129 (not (matchR!8624 lt!2407122 (_2!36723 lt!2407169))))))

(declare-fun b!6565261 () Bool)

(declare-fun tp!1813167 () Bool)

(declare-fun tp!1813164 () Bool)

(assert (=> b!6565261 (= e!3974185 (and tp!1813167 tp!1813164))))

(declare-fun b!6565262 () Bool)

(declare-fun e!3974165 () Bool)

(assert (=> b!6565262 (= e!3974170 e!3974165)))

(declare-fun res!2694147 () Bool)

(assert (=> b!6565262 (=> res!2694147 e!3974165)))

(assert (=> b!6565262 (= res!2694147 (not (= r!7292 lt!2407120)))))

(assert (=> b!6565262 (= lt!2407120 (Concat!25286 lt!2407122 (regTwo!33394 r!7292)))))

(declare-fun b!6565263 () Bool)

(declare-fun e!3974167 () Bool)

(declare-fun tp_is_empty!42135 () Bool)

(declare-fun tp!1813162 () Bool)

(assert (=> b!6565263 (= e!3974167 (and tp_is_empty!42135 tp!1813162))))

(declare-fun b!6565264 () Bool)

(declare-fun validRegex!8177 (Regex!16441) Bool)

(assert (=> b!6565264 (= e!3974163 (validRegex!8177 lt!2407122))))

(declare-fun b!6565265 () Bool)

(declare-fun e!3974166 () Bool)

(declare-fun tp!1813165 () Bool)

(assert (=> b!6565265 (= e!3974166 tp!1813165)))

(declare-fun b!6565266 () Bool)

(assert (=> b!6565266 (= e!3974185 tp_is_empty!42135)))

(declare-fun b!6565267 () Bool)

(declare-fun res!2694121 () Bool)

(assert (=> b!6565267 (=> res!2694121 e!3974174)))

(declare-fun isEmpty!37742 (List!65624) Bool)

(assert (=> b!6565267 (= res!2694121 (not (isEmpty!37742 (t!379268 zl!343))))))

(declare-fun b!6565268 () Bool)

(assert (=> b!6565268 (= e!3974165 e!3974161)))

(declare-fun res!2694142 () Bool)

(assert (=> b!6565268 (=> res!2694142 e!3974161)))

(assert (=> b!6565268 (= res!2694142 (not (= (unfocusZipper!2183 (Cons!65500 lt!2407139 Nil!65500)) lt!2407161)))))

(assert (=> b!6565268 (= lt!2407161 (Concat!25286 (reg!16770 (regOne!33394 r!7292)) lt!2407120))))

(assert (=> b!6565269 (= e!3974186 e!3974172)))

(declare-fun res!2694141 () Bool)

(assert (=> b!6565269 (=> res!2694141 e!3974172)))

(declare-fun appendTo!202 ((InoxSet Context!11650) Context!11650) (InoxSet Context!11650))

(assert (=> b!6565269 (= res!2694141 (not (= (appendTo!202 lt!2407140 lt!2407173) lt!2407147)))))

(declare-fun lambda!365371 () Int)

(declare-fun map!14970 ((InoxSet Context!11650) Int) (InoxSet Context!11650))

(declare-fun ++!14585 (List!65623 List!65623) List!65623)

(assert (=> b!6565269 (= (map!14970 lt!2407140 lambda!365371) (store ((as const (Array Context!11650 Bool)) false) (Context!11651 (++!14585 lt!2407132 lt!2407171)) true))))

(declare-fun lambda!365372 () Int)

(declare-fun lt!2407130 () Unit!159099)

(declare-fun lemmaConcatPreservesForall!414 (List!65623 List!65623 Int) Unit!159099)

(assert (=> b!6565269 (= lt!2407130 (lemmaConcatPreservesForall!414 lt!2407132 lt!2407171 lambda!365372))))

(declare-fun lt!2407172 () Unit!159099)

(declare-fun lemmaMapOnSingletonSet!224 ((InoxSet Context!11650) Context!11650 Int) Unit!159099)

(assert (=> b!6565269 (= lt!2407172 (lemmaMapOnSingletonSet!224 lt!2407140 lt!2407138 lambda!365371))))

(declare-fun b!6565270 () Bool)

(declare-fun e!3974178 () Bool)

(assert (=> b!6565270 (= e!3974178 e!3974168)))

(declare-fun res!2694140 () Bool)

(assert (=> b!6565270 (=> (not res!2694140) (not e!3974168))))

(assert (=> b!6565270 (= res!2694140 (= r!7292 lt!2407133))))

(assert (=> b!6565270 (= lt!2407133 (unfocusZipper!2183 zl!343))))

(assert (=> b!6565271 (= e!3974175 e!3974188)))

(declare-fun res!2694146 () Bool)

(assert (=> b!6565271 (=> res!2694146 e!3974188)))

(assert (=> b!6565271 (= res!2694146 (not (matchR!8624 lt!2407124 (_1!36723 lt!2407152))))))

(declare-fun lt!2407142 () Option!16332)

(assert (=> b!6565271 (= lt!2407152 (get!22743 lt!2407142))))

(assert (=> b!6565271 (= (Exists!3511 lambda!365373) (Exists!3511 lambda!365374))))

(declare-fun lt!2407166 () Unit!159099)

(assert (=> b!6565271 (= lt!2407166 (lemmaExistCutMatchRandMatchRSpecEquivalent!2048 lt!2407124 (regTwo!33394 r!7292) s!2326))))

(assert (=> b!6565271 (= (isDefined!13035 lt!2407142) (Exists!3511 lambda!365373))))

(assert (=> b!6565271 (= lt!2407142 (findConcatSeparation!2746 lt!2407124 (regTwo!33394 r!7292) Nil!65498 s!2326 s!2326))))

(declare-fun lt!2407177 () Unit!159099)

(assert (=> b!6565271 (= lt!2407177 (lemmaFindConcatSeparationEquivalentToExists!2510 lt!2407124 (regTwo!33394 r!7292) s!2326))))

(declare-fun lt!2407164 () Regex!16441)

(assert (=> b!6565271 (matchRSpec!3542 lt!2407164 s!2326)))

(declare-fun lt!2407121 () Unit!159099)

(assert (=> b!6565271 (= lt!2407121 (mainMatchTheorem!3542 lt!2407164 s!2326))))

(assert (=> b!6565271 (matchR!8624 lt!2407164 s!2326)))

(assert (=> b!6565271 (= lt!2407164 (Concat!25286 lt!2407124 (regTwo!33394 r!7292)))))

(assert (=> b!6565271 (= lt!2407124 (Concat!25286 (reg!16770 (regOne!33394 r!7292)) lt!2407122))))

(declare-fun lt!2407146 () Unit!159099)

(declare-fun lemmaConcatAssociative!138 (Regex!16441 Regex!16441 Regex!16441 List!65622) Unit!159099)

(assert (=> b!6565271 (= lt!2407146 (lemmaConcatAssociative!138 (reg!16770 (regOne!33394 r!7292)) lt!2407122 (regTwo!33394 r!7292) s!2326))))

(declare-fun e!3974177 () Bool)

(assert (=> b!6565271 e!3974177))

(declare-fun res!2694117 () Bool)

(assert (=> b!6565271 (=> (not res!2694117) (not e!3974177))))

(assert (=> b!6565271 (= res!2694117 (matchR!8624 lt!2407161 lt!2407144))))

(declare-fun lt!2407136 () Unit!159099)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!362 (Regex!16441 Regex!16441 List!65622 List!65622) Unit!159099)

(assert (=> b!6565271 (= lt!2407136 (lemmaTwoRegexMatchThenConcatMatchesConcatString!362 (reg!16770 (regOne!33394 r!7292)) lt!2407120 (_1!36723 lt!2407137) (_2!36723 lt!2407137)))))

(assert (=> b!6565271 (matchR!8624 lt!2407120 (_2!36723 lt!2407137))))

(declare-fun lt!2407135 () Unit!159099)

(declare-fun theoremZipperRegexEquiv!877 ((InoxSet Context!11650) List!65624 Regex!16441 List!65622) Unit!159099)

(assert (=> b!6565271 (= lt!2407135 (theoremZipperRegexEquiv!877 lt!2407129 lt!2407158 lt!2407120 (_2!36723 lt!2407137)))))

(assert (=> b!6565271 (matchR!8624 (reg!16770 (regOne!33394 r!7292)) (_1!36723 lt!2407137))))

(declare-fun lt!2407167 () Unit!159099)

(assert (=> b!6565271 (= lt!2407167 (theoremZipperRegexEquiv!877 lt!2407140 lt!2407134 (reg!16770 (regOne!33394 r!7292)) (_1!36723 lt!2407137)))))

(assert (=> b!6565271 (matchZipper!2453 (store ((as const (Array Context!11650 Bool)) false) (Context!11651 (++!14585 lt!2407132 lt!2407171)) true) lt!2407144)))

(declare-fun lt!2407154 () Unit!159099)

(assert (=> b!6565271 (= lt!2407154 (lemmaConcatPreservesForall!414 lt!2407132 lt!2407171 lambda!365372))))

(declare-fun lt!2407131 () Unit!159099)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!222 (Context!11650 Context!11650 List!65622 List!65622) Unit!159099)

(assert (=> b!6565271 (= lt!2407131 (lemmaConcatenateContextMatchesConcatOfStrings!222 lt!2407138 lt!2407173 (_1!36723 lt!2407137) (_2!36723 lt!2407137)))))

(declare-fun b!6565272 () Bool)

(declare-fun Unit!159101 () Unit!159099)

(assert (=> b!6565272 (= e!3974183 Unit!159101)))

(declare-fun b!6565273 () Bool)

(declare-fun e!3974162 () Bool)

(assert (=> b!6565273 (= e!3974162 (nullable!6434 (regOne!33394 (regOne!33394 r!7292))))))

(declare-fun b!6565274 () Bool)

(declare-fun tp!1813160 () Bool)

(declare-fun tp!1813159 () Bool)

(assert (=> b!6565274 (= e!3974185 (and tp!1813160 tp!1813159))))

(declare-fun b!6565275 () Bool)

(declare-fun e!3974176 () Bool)

(declare-fun tp!1813161 () Bool)

(assert (=> b!6565275 (= e!3974176 tp!1813161)))

(declare-fun b!6565276 () Bool)

(declare-fun res!2694134 () Bool)

(assert (=> b!6565276 (=> res!2694134 e!3974175)))

(assert (=> b!6565276 (= res!2694134 (not (matchZipper!2453 lt!2407140 (_1!36723 lt!2407137))))))

(declare-fun b!6565277 () Bool)

(declare-fun res!2694115 () Bool)

(assert (=> b!6565277 (=> res!2694115 e!3974171)))

(assert (=> b!6565277 (= res!2694115 e!3974162)))

(declare-fun res!2694123 () Bool)

(assert (=> b!6565277 (=> (not res!2694123) (not e!3974162))))

(assert (=> b!6565277 (= res!2694123 ((_ is Concat!25286) (regOne!33394 r!7292)))))

(declare-fun b!6565278 () Bool)

(declare-fun res!2694138 () Bool)

(assert (=> b!6565278 (=> (not res!2694138) (not e!3974178))))

(declare-fun toList!10225 ((InoxSet Context!11650)) List!65624)

(assert (=> b!6565278 (= res!2694138 (= (toList!10225 z!1189) zl!343))))

(declare-fun b!6565279 () Bool)

(assert (=> b!6565279 (= e!3974177 lt!2407174)))

(declare-fun tp!1813158 () Bool)

(declare-fun e!3974169 () Bool)

(declare-fun b!6565280 () Bool)

(declare-fun inv!84349 (Context!11650) Bool)

(assert (=> b!6565280 (= e!3974169 (and (inv!84349 (h!71948 zl!343)) e!3974176 tp!1813158))))

(declare-fun tp!1813166 () Bool)

(declare-fun setElem!44822 () Context!11650)

(declare-fun setNonEmpty!44822 () Bool)

(assert (=> setNonEmpty!44822 (= setRes!44822 (and tp!1813166 (inv!84349 setElem!44822) e!3974166))))

(declare-fun setRest!44822 () (InoxSet Context!11650))

(assert (=> setNonEmpty!44822 (= z!1189 ((_ map or) (store ((as const (Array Context!11650 Bool)) false) setElem!44822 true) setRest!44822))))

(declare-fun b!6565281 () Bool)

(declare-fun res!2694135 () Bool)

(assert (=> b!6565281 (=> res!2694135 e!3974173)))

(assert (=> b!6565281 (= res!2694135 (not lt!2407175))))

(declare-fun b!6565282 () Bool)

(declare-fun res!2694127 () Bool)

(assert (=> b!6565282 (=> res!2694127 e!3974174)))

(assert (=> b!6565282 (= res!2694127 (not ((_ is Cons!65499) (exprs!6325 (h!71948 zl!343)))))))

(declare-fun res!2694148 () Bool)

(assert (=> start!643294 (=> (not res!2694148) (not e!3974178))))

(assert (=> start!643294 (= res!2694148 (validRegex!8177 r!7292))))

(assert (=> start!643294 e!3974178))

(assert (=> start!643294 e!3974185))

(declare-fun condSetEmpty!44822 () Bool)

(assert (=> start!643294 (= condSetEmpty!44822 (= z!1189 ((as const (Array Context!11650 Bool)) false)))))

(assert (=> start!643294 setRes!44822))

(assert (=> start!643294 e!3974169))

(assert (=> start!643294 e!3974167))

(declare-fun b!6565283 () Bool)

(declare-fun res!2694133 () Bool)

(assert (=> b!6565283 (=> res!2694133 e!3974171)))

(assert (=> b!6565283 (= res!2694133 (or ((_ is Concat!25286) (regOne!33394 r!7292)) (not ((_ is Star!16441) (regOne!33394 r!7292)))))))

(declare-fun b!6565284 () Bool)

(declare-fun Unit!159102 () Unit!159099)

(assert (=> b!6565284 (= e!3974183 Unit!159102)))

(declare-fun lt!2407143 () Unit!159099)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1272 ((InoxSet Context!11650) (InoxSet Context!11650) List!65622) Unit!159099)

(assert (=> b!6565284 (= lt!2407143 (lemmaZipperConcatMatchesSameAsBothZippers!1272 lt!2407125 lt!2407127 (t!379266 s!2326)))))

(declare-fun res!2694125 () Bool)

(assert (=> b!6565284 (= res!2694125 (matchZipper!2453 lt!2407125 (t!379266 s!2326)))))

(assert (=> b!6565284 (=> res!2694125 e!3974187)))

(assert (=> b!6565284 (= (matchZipper!2453 ((_ map or) lt!2407125 lt!2407127) (t!379266 s!2326)) e!3974187)))

(assert (= (and start!643294 res!2694148) b!6565278))

(assert (= (and b!6565278 res!2694138) b!6565270))

(assert (= (and b!6565270 res!2694140) b!6565249))

(assert (= (and b!6565249 (not res!2694131)) b!6565267))

(assert (= (and b!6565267 (not res!2694121)) b!6565248))

(assert (= (and b!6565248 (not res!2694130)) b!6565282))

(assert (= (and b!6565282 (not res!2694127)) b!6565252))

(assert (= (and b!6565252 (not res!2694111)) b!6565237))

(assert (= (and b!6565237 (not res!2694132)) b!6565238))

(assert (= (and b!6565238 (not res!2694118)) b!6565247))

(assert (= (and b!6565247 (not res!2694113)) b!6565242))

(assert (= (and b!6565242 c!1206623) b!6565284))

(assert (= (and b!6565242 (not c!1206623)) b!6565272))

(assert (= (and b!6565284 (not res!2694125)) b!6565245))

(assert (= (and b!6565242 (not res!2694144)) b!6565277))

(assert (= (and b!6565277 res!2694123) b!6565273))

(assert (= (and b!6565277 (not res!2694115)) b!6565283))

(assert (= (and b!6565283 (not res!2694133)) b!6565256))

(assert (= (and b!6565256 (not res!2694136)) b!6565243))

(assert (= (and b!6565243 (not res!2694122)) b!6565257))

(assert (= (and b!6565257 (not res!2694143)) b!6565259))

(assert (= (and b!6565259 (not res!2694114)) b!6565262))

(assert (= (and b!6565262 (not res!2694147)) b!6565268))

(assert (= (and b!6565268 (not res!2694142)) b!6565239))

(assert (= (and b!6565239 (not res!2694137)) b!6565244))

(assert (= (and b!6565244 (not res!2694116)) b!6565251))

(assert (= (and b!6565251 (not res!2694124)) b!6565250))

(assert (= (and b!6565250 (not res!2694128)) b!6565281))

(assert (= (and b!6565281 (not res!2694135)) b!6565254))

(assert (= (and b!6565254 res!2694139) b!6565258))

(assert (= (and b!6565254 (not res!2694126)) b!6565240))

(assert (= (and b!6565240 (not res!2694145)) b!6565269))

(assert (= (and b!6565269 (not res!2694141)) b!6565253))

(assert (= (and b!6565253 (not res!2694112)) b!6565276))

(assert (= (and b!6565276 (not res!2694134)) b!6565255))

(assert (= (and b!6565255 (not res!2694120)) b!6565271))

(assert (= (and b!6565271 res!2694117) b!6565279))

(assert (= (and b!6565271 (not res!2694146)) b!6565241))

(assert (= (and b!6565241 (not res!2694119)) b!6565260))

(assert (= (and b!6565260 (not res!2694129)) b!6565264))

(assert (= (and start!643294 ((_ is ElementMatch!16441) r!7292)) b!6565266))

(assert (= (and start!643294 ((_ is Concat!25286) r!7292)) b!6565261))

(assert (= (and start!643294 ((_ is Star!16441) r!7292)) b!6565246))

(assert (= (and start!643294 ((_ is Union!16441) r!7292)) b!6565274))

(assert (= (and start!643294 condSetEmpty!44822) setIsEmpty!44822))

(assert (= (and start!643294 (not condSetEmpty!44822)) setNonEmpty!44822))

(assert (= setNonEmpty!44822 b!6565265))

(assert (= b!6565280 b!6565275))

(assert (= (and start!643294 ((_ is Cons!65500) zl!343)) b!6565280))

(assert (= (and start!643294 ((_ is Cons!65498) s!2326)) b!6565263))

(declare-fun m!7347304 () Bool)

(assert (=> b!6565254 m!7347304))

(declare-fun m!7347306 () Bool)

(assert (=> b!6565247 m!7347306))

(declare-fun m!7347308 () Bool)

(assert (=> start!643294 m!7347308))

(declare-fun m!7347310 () Bool)

(assert (=> b!6565264 m!7347310))

(declare-fun m!7347312 () Bool)

(assert (=> b!6565249 m!7347312))

(declare-fun m!7347314 () Bool)

(assert (=> b!6565249 m!7347314))

(declare-fun m!7347316 () Bool)

(assert (=> b!6565249 m!7347316))

(declare-fun m!7347318 () Bool)

(assert (=> b!6565248 m!7347318))

(declare-fun m!7347320 () Bool)

(assert (=> b!6565243 m!7347320))

(declare-fun m!7347322 () Bool)

(assert (=> b!6565243 m!7347322))

(declare-fun m!7347324 () Bool)

(assert (=> b!6565243 m!7347324))

(declare-fun m!7347326 () Bool)

(assert (=> b!6565243 m!7347326))

(declare-fun m!7347328 () Bool)

(assert (=> b!6565243 m!7347328))

(declare-fun m!7347330 () Bool)

(assert (=> b!6565269 m!7347330))

(declare-fun m!7347332 () Bool)

(assert (=> b!6565269 m!7347332))

(declare-fun m!7347334 () Bool)

(assert (=> b!6565269 m!7347334))

(declare-fun m!7347336 () Bool)

(assert (=> b!6565269 m!7347336))

(declare-fun m!7347338 () Bool)

(assert (=> b!6565269 m!7347338))

(declare-fun m!7347340 () Bool)

(assert (=> b!6565269 m!7347340))

(declare-fun m!7347342 () Bool)

(assert (=> b!6565273 m!7347342))

(declare-fun m!7347344 () Bool)

(assert (=> b!6565278 m!7347344))

(declare-fun m!7347346 () Bool)

(assert (=> b!6565245 m!7347346))

(declare-fun m!7347348 () Bool)

(assert (=> b!6565244 m!7347348))

(assert (=> b!6565258 m!7347346))

(declare-fun m!7347350 () Bool)

(assert (=> b!6565268 m!7347350))

(declare-fun m!7347352 () Bool)

(assert (=> b!6565250 m!7347352))

(declare-fun m!7347354 () Bool)

(assert (=> b!6565239 m!7347354))

(declare-fun m!7347356 () Bool)

(assert (=> b!6565239 m!7347356))

(declare-fun m!7347358 () Bool)

(assert (=> b!6565239 m!7347358))

(declare-fun m!7347360 () Bool)

(assert (=> b!6565239 m!7347360))

(declare-fun m!7347362 () Bool)

(assert (=> b!6565239 m!7347362))

(declare-fun m!7347364 () Bool)

(assert (=> b!6565239 m!7347364))

(declare-fun m!7347366 () Bool)

(assert (=> b!6565239 m!7347366))

(declare-fun m!7347368 () Bool)

(assert (=> b!6565239 m!7347368))

(declare-fun m!7347370 () Bool)

(assert (=> b!6565239 m!7347370))

(declare-fun m!7347372 () Bool)

(assert (=> b!6565260 m!7347372))

(declare-fun m!7347374 () Bool)

(assert (=> b!6565284 m!7347374))

(assert (=> b!6565284 m!7347304))

(declare-fun m!7347376 () Bool)

(assert (=> b!6565284 m!7347376))

(declare-fun m!7347378 () Bool)

(assert (=> b!6565270 m!7347378))

(declare-fun m!7347380 () Bool)

(assert (=> b!6565267 m!7347380))

(declare-fun m!7347382 () Bool)

(assert (=> b!6565256 m!7347382))

(declare-fun m!7347384 () Bool)

(assert (=> b!6565251 m!7347384))

(declare-fun m!7347386 () Bool)

(assert (=> b!6565251 m!7347386))

(declare-fun m!7347388 () Bool)

(assert (=> b!6565251 m!7347388))

(declare-fun m!7347390 () Bool)

(assert (=> b!6565252 m!7347390))

(assert (=> b!6565252 m!7347390))

(declare-fun m!7347392 () Bool)

(assert (=> b!6565252 m!7347392))

(declare-fun m!7347394 () Bool)

(assert (=> setNonEmpty!44822 m!7347394))

(declare-fun m!7347396 () Bool)

(assert (=> b!6565276 m!7347396))

(declare-fun m!7347398 () Bool)

(assert (=> b!6565271 m!7347398))

(declare-fun m!7347400 () Bool)

(assert (=> b!6565271 m!7347400))

(declare-fun m!7347402 () Bool)

(assert (=> b!6565271 m!7347402))

(declare-fun m!7347404 () Bool)

(assert (=> b!6565271 m!7347404))

(assert (=> b!6565271 m!7347340))

(declare-fun m!7347406 () Bool)

(assert (=> b!6565271 m!7347406))

(declare-fun m!7347408 () Bool)

(assert (=> b!6565271 m!7347408))

(declare-fun m!7347410 () Bool)

(assert (=> b!6565271 m!7347410))

(declare-fun m!7347412 () Bool)

(assert (=> b!6565271 m!7347412))

(declare-fun m!7347414 () Bool)

(assert (=> b!6565271 m!7347414))

(declare-fun m!7347416 () Bool)

(assert (=> b!6565271 m!7347416))

(assert (=> b!6565271 m!7347408))

(assert (=> b!6565271 m!7347330))

(declare-fun m!7347418 () Bool)

(assert (=> b!6565271 m!7347418))

(declare-fun m!7347420 () Bool)

(assert (=> b!6565271 m!7347420))

(assert (=> b!6565271 m!7347332))

(declare-fun m!7347422 () Bool)

(assert (=> b!6565271 m!7347422))

(declare-fun m!7347424 () Bool)

(assert (=> b!6565271 m!7347424))

(assert (=> b!6565271 m!7347340))

(declare-fun m!7347426 () Bool)

(assert (=> b!6565271 m!7347426))

(declare-fun m!7347428 () Bool)

(assert (=> b!6565271 m!7347428))

(declare-fun m!7347430 () Bool)

(assert (=> b!6565271 m!7347430))

(declare-fun m!7347432 () Bool)

(assert (=> b!6565271 m!7347432))

(declare-fun m!7347434 () Bool)

(assert (=> b!6565271 m!7347434))

(declare-fun m!7347436 () Bool)

(assert (=> b!6565271 m!7347436))

(declare-fun m!7347438 () Bool)

(assert (=> b!6565280 m!7347438))

(declare-fun m!7347440 () Bool)

(assert (=> b!6565238 m!7347440))

(declare-fun m!7347442 () Bool)

(assert (=> b!6565238 m!7347442))

(declare-fun m!7347444 () Bool)

(assert (=> b!6565238 m!7347444))

(assert (=> b!6565238 m!7347444))

(assert (=> b!6565238 m!7347440))

(declare-fun m!7347446 () Bool)

(assert (=> b!6565238 m!7347446))

(declare-fun m!7347448 () Bool)

(assert (=> b!6565238 m!7347448))

(declare-fun m!7347450 () Bool)

(assert (=> b!6565238 m!7347450))

(declare-fun m!7347452 () Bool)

(assert (=> b!6565253 m!7347452))

(declare-fun m!7347454 () Bool)

(assert (=> b!6565253 m!7347454))

(declare-fun m!7347456 () Bool)

(assert (=> b!6565253 m!7347456))

(declare-fun m!7347458 () Bool)

(assert (=> b!6565253 m!7347458))

(declare-fun m!7347460 () Bool)

(assert (=> b!6565253 m!7347460))

(declare-fun m!7347462 () Bool)

(assert (=> b!6565257 m!7347462))

(declare-fun m!7347464 () Bool)

(assert (=> b!6565257 m!7347464))

(declare-fun m!7347466 () Bool)

(assert (=> b!6565242 m!7347466))

(declare-fun m!7347468 () Bool)

(assert (=> b!6565242 m!7347468))

(declare-fun m!7347470 () Bool)

(assert (=> b!6565242 m!7347470))

(declare-fun m!7347472 () Bool)

(assert (=> b!6565242 m!7347472))

(declare-fun m!7347474 () Bool)

(assert (=> b!6565242 m!7347474))

(declare-fun m!7347476 () Bool)

(assert (=> b!6565242 m!7347476))

(declare-fun m!7347478 () Bool)

(assert (=> b!6565242 m!7347478))

(declare-fun m!7347480 () Bool)

(assert (=> b!6565255 m!7347480))

(declare-fun m!7347482 () Bool)

(assert (=> b!6565241 m!7347482))

(declare-fun m!7347484 () Bool)

(assert (=> b!6565241 m!7347484))

(declare-fun m!7347486 () Bool)

(assert (=> b!6565241 m!7347486))

(declare-fun m!7347488 () Bool)

(assert (=> b!6565241 m!7347488))

(declare-fun m!7347490 () Bool)

(assert (=> b!6565241 m!7347490))

(declare-fun m!7347492 () Bool)

(assert (=> b!6565241 m!7347492))

(declare-fun m!7347494 () Bool)

(assert (=> b!6565241 m!7347494))

(declare-fun m!7347496 () Bool)

(assert (=> b!6565241 m!7347496))

(declare-fun m!7347498 () Bool)

(assert (=> b!6565241 m!7347498))

(declare-fun m!7347500 () Bool)

(assert (=> b!6565241 m!7347500))

(declare-fun m!7347502 () Bool)

(assert (=> b!6565241 m!7347502))

(assert (=> b!6565241 m!7347486))

(assert (=> b!6565241 m!7347492))

(declare-fun m!7347504 () Bool)

(assert (=> b!6565241 m!7347504))

(declare-fun m!7347506 () Bool)

(assert (=> b!6565241 m!7347506))

(declare-fun m!7347508 () Bool)

(assert (=> b!6565241 m!7347508))

(declare-fun m!7347510 () Bool)

(assert (=> b!6565241 m!7347510))

(assert (=> b!6565241 m!7347508))

(declare-fun m!7347512 () Bool)

(assert (=> b!6565241 m!7347512))

(declare-fun m!7347514 () Bool)

(assert (=> b!6565241 m!7347514))

(assert (=> b!6565241 m!7347492))

(check-sat (not b!6565273) (not b!6565247) (not b!6565260) (not b!6565269) (not b!6565244) (not b!6565241) (not b!6565261) (not b!6565255) (not b!6565252) (not b!6565258) (not b!6565265) (not b!6565276) (not b!6565251) (not b!6565257) tp_is_empty!42135 (not b!6565239) (not b!6565238) (not b!6565248) (not b!6565253) (not b!6565284) (not b!6565268) (not b!6565274) (not b!6565243) (not b!6565256) (not b!6565280) (not b!6565267) (not start!643294) (not b!6565254) (not b!6565245) (not b!6565275) (not b!6565271) (not setNonEmpty!44822) (not b!6565264) (not b!6565278) (not b!6565270) (not b!6565242) (not b!6565250) (not b!6565246) (not b!6565249) (not b!6565263))
(check-sat)
(get-model)

(declare-fun d!2060012 () Bool)

(declare-fun e!3974191 () Bool)

(assert (=> d!2060012 e!3974191))

(declare-fun res!2694152 () Bool)

(assert (=> d!2060012 (=> (not res!2694152) (not e!3974191))))

(declare-fun lt!2407187 () List!65624)

(declare-fun noDuplicate!2245 (List!65624) Bool)

(assert (=> d!2060012 (= res!2694152 (noDuplicate!2245 lt!2407187))))

(declare-fun choose!48985 ((InoxSet Context!11650)) List!65624)

(assert (=> d!2060012 (= lt!2407187 (choose!48985 z!1189))))

(assert (=> d!2060012 (= (toList!10225 z!1189) lt!2407187)))

(declare-fun b!6565297 () Bool)

(declare-fun content!12601 (List!65624) (InoxSet Context!11650))

(assert (=> b!6565297 (= e!3974191 (= (content!12601 lt!2407187) z!1189))))

(assert (= (and d!2060012 res!2694152) b!6565297))

(declare-fun m!7347516 () Bool)

(assert (=> d!2060012 m!7347516))

(declare-fun m!7347518 () Bool)

(assert (=> d!2060012 m!7347518))

(declare-fun m!7347520 () Bool)

(assert (=> b!6565297 m!7347520))

(assert (=> b!6565278 d!2060012))

(declare-fun b!6565316 () Bool)

(declare-fun e!3974210 () Bool)

(declare-fun e!3974208 () Bool)

(assert (=> b!6565316 (= e!3974210 e!3974208)))

(declare-fun c!1206630 () Bool)

(assert (=> b!6565316 (= c!1206630 ((_ is Star!16441) r!7292))))

(declare-fun d!2060014 () Bool)

(declare-fun res!2694165 () Bool)

(assert (=> d!2060014 (=> res!2694165 e!3974210)))

(assert (=> d!2060014 (= res!2694165 ((_ is ElementMatch!16441) r!7292))))

(assert (=> d!2060014 (= (validRegex!8177 r!7292) e!3974210)))

(declare-fun b!6565317 () Bool)

(declare-fun e!3974207 () Bool)

(declare-fun call!571190 () Bool)

(assert (=> b!6565317 (= e!3974207 call!571190)))

(declare-fun b!6565318 () Bool)

(declare-fun e!3974206 () Bool)

(assert (=> b!6565318 (= e!3974206 call!571190)))

(declare-fun b!6565319 () Bool)

(declare-fun res!2694167 () Bool)

(assert (=> b!6565319 (=> (not res!2694167) (not e!3974207))))

(declare-fun call!571188 () Bool)

(assert (=> b!6565319 (= res!2694167 call!571188)))

(declare-fun e!3974211 () Bool)

(assert (=> b!6565319 (= e!3974211 e!3974207)))

(declare-fun b!6565320 () Bool)

(declare-fun e!3974209 () Bool)

(declare-fun call!571189 () Bool)

(assert (=> b!6565320 (= e!3974209 call!571189)))

(declare-fun bm!571183 () Bool)

(assert (=> bm!571183 (= call!571188 call!571189)))

(declare-fun b!6565321 () Bool)

(assert (=> b!6565321 (= e!3974208 e!3974211)))

(declare-fun c!1206629 () Bool)

(assert (=> b!6565321 (= c!1206629 ((_ is Union!16441) r!7292))))

(declare-fun b!6565322 () Bool)

(assert (=> b!6565322 (= e!3974208 e!3974209)))

(declare-fun res!2694163 () Bool)

(assert (=> b!6565322 (= res!2694163 (not (nullable!6434 (reg!16770 r!7292))))))

(assert (=> b!6565322 (=> (not res!2694163) (not e!3974209))))

(declare-fun b!6565323 () Bool)

(declare-fun res!2694164 () Bool)

(declare-fun e!3974212 () Bool)

(assert (=> b!6565323 (=> res!2694164 e!3974212)))

(assert (=> b!6565323 (= res!2694164 (not ((_ is Concat!25286) r!7292)))))

(assert (=> b!6565323 (= e!3974211 e!3974212)))

(declare-fun b!6565324 () Bool)

(assert (=> b!6565324 (= e!3974212 e!3974206)))

(declare-fun res!2694166 () Bool)

(assert (=> b!6565324 (=> (not res!2694166) (not e!3974206))))

(assert (=> b!6565324 (= res!2694166 call!571188)))

(declare-fun bm!571184 () Bool)

(assert (=> bm!571184 (= call!571190 (validRegex!8177 (ite c!1206629 (regTwo!33395 r!7292) (regTwo!33394 r!7292))))))

(declare-fun bm!571185 () Bool)

(assert (=> bm!571185 (= call!571189 (validRegex!8177 (ite c!1206630 (reg!16770 r!7292) (ite c!1206629 (regOne!33395 r!7292) (regOne!33394 r!7292)))))))

(assert (= (and d!2060014 (not res!2694165)) b!6565316))

(assert (= (and b!6565316 c!1206630) b!6565322))

(assert (= (and b!6565316 (not c!1206630)) b!6565321))

(assert (= (and b!6565322 res!2694163) b!6565320))

(assert (= (and b!6565321 c!1206629) b!6565319))

(assert (= (and b!6565321 (not c!1206629)) b!6565323))

(assert (= (and b!6565319 res!2694167) b!6565317))

(assert (= (and b!6565323 (not res!2694164)) b!6565324))

(assert (= (and b!6565324 res!2694166) b!6565318))

(assert (= (or b!6565317 b!6565318) bm!571184))

(assert (= (or b!6565319 b!6565324) bm!571183))

(assert (= (or b!6565320 bm!571183) bm!571185))

(declare-fun m!7347522 () Bool)

(assert (=> b!6565322 m!7347522))

(declare-fun m!7347524 () Bool)

(assert (=> bm!571184 m!7347524))

(declare-fun m!7347526 () Bool)

(assert (=> bm!571185 m!7347526))

(assert (=> start!643294 d!2060014))

(declare-fun c!1206643 () Bool)

(declare-fun bm!571198 () Bool)

(declare-fun call!571205 () List!65623)

(declare-fun c!1206645 () Bool)

(declare-fun call!571207 () (InoxSet Context!11650))

(declare-fun c!1206642 () Bool)

(assert (=> bm!571198 (= call!571207 (derivationStepZipperDown!1689 (ite c!1206645 (regOne!33395 (reg!16770 (regOne!33394 r!7292))) (ite c!1206643 (regTwo!33394 (reg!16770 (regOne!33394 r!7292))) (ite c!1206642 (regOne!33394 (reg!16770 (regOne!33394 r!7292))) (reg!16770 (reg!16770 (regOne!33394 r!7292)))))) (ite (or c!1206645 c!1206643) lt!2407173 (Context!11651 call!571205)) (h!71946 s!2326)))))

(declare-fun b!6565347 () Bool)

(declare-fun e!3974229 () (InoxSet Context!11650))

(assert (=> b!6565347 (= e!3974229 (store ((as const (Array Context!11650 Bool)) false) lt!2407173 true))))

(declare-fun bm!571199 () Bool)

(declare-fun call!571203 () List!65623)

(assert (=> bm!571199 (= call!571205 call!571203)))

(declare-fun bm!571200 () Bool)

(declare-fun $colon$colon!2281 (List!65623 Regex!16441) List!65623)

(assert (=> bm!571200 (= call!571203 ($colon$colon!2281 (exprs!6325 lt!2407173) (ite (or c!1206643 c!1206642) (regTwo!33394 (reg!16770 (regOne!33394 r!7292))) (reg!16770 (regOne!33394 r!7292)))))))

(declare-fun b!6565348 () Bool)

(declare-fun c!1206641 () Bool)

(assert (=> b!6565348 (= c!1206641 ((_ is Star!16441) (reg!16770 (regOne!33394 r!7292))))))

(declare-fun e!3974227 () (InoxSet Context!11650))

(declare-fun e!3974230 () (InoxSet Context!11650))

(assert (=> b!6565348 (= e!3974227 e!3974230)))

(declare-fun bm!571201 () Bool)

(declare-fun call!571206 () (InoxSet Context!11650))

(assert (=> bm!571201 (= call!571206 call!571207)))

(declare-fun b!6565349 () Bool)

(declare-fun e!3974226 () (InoxSet Context!11650))

(assert (=> b!6565349 (= e!3974226 e!3974227)))

(assert (=> b!6565349 (= c!1206642 ((_ is Concat!25286) (reg!16770 (regOne!33394 r!7292))))))

(declare-fun b!6565350 () Bool)

(declare-fun call!571204 () (InoxSet Context!11650))

(assert (=> b!6565350 (= e!3974227 call!571204)))

(declare-fun bm!571202 () Bool)

(assert (=> bm!571202 (= call!571204 call!571206)))

(declare-fun call!571208 () (InoxSet Context!11650))

(declare-fun bm!571203 () Bool)

(assert (=> bm!571203 (= call!571208 (derivationStepZipperDown!1689 (ite c!1206645 (regTwo!33395 (reg!16770 (regOne!33394 r!7292))) (regOne!33394 (reg!16770 (regOne!33394 r!7292)))) (ite c!1206645 lt!2407173 (Context!11651 call!571203)) (h!71946 s!2326)))))

(declare-fun b!6565351 () Bool)

(declare-fun e!3974225 () Bool)

(assert (=> b!6565351 (= e!3974225 (nullable!6434 (regOne!33394 (reg!16770 (regOne!33394 r!7292)))))))

(declare-fun b!6565352 () Bool)

(declare-fun e!3974228 () (InoxSet Context!11650))

(assert (=> b!6565352 (= e!3974229 e!3974228)))

(assert (=> b!6565352 (= c!1206645 ((_ is Union!16441) (reg!16770 (regOne!33394 r!7292))))))

(declare-fun b!6565353 () Bool)

(assert (=> b!6565353 (= e!3974230 call!571204)))

(declare-fun b!6565354 () Bool)

(assert (=> b!6565354 (= c!1206643 e!3974225)))

(declare-fun res!2694170 () Bool)

(assert (=> b!6565354 (=> (not res!2694170) (not e!3974225))))

(assert (=> b!6565354 (= res!2694170 ((_ is Concat!25286) (reg!16770 (regOne!33394 r!7292))))))

(assert (=> b!6565354 (= e!3974228 e!3974226)))

(declare-fun b!6565355 () Bool)

(assert (=> b!6565355 (= e!3974228 ((_ map or) call!571207 call!571208))))

(declare-fun b!6565356 () Bool)

(assert (=> b!6565356 (= e!3974230 ((as const (Array Context!11650 Bool)) false))))

(declare-fun d!2060016 () Bool)

(declare-fun c!1206644 () Bool)

(assert (=> d!2060016 (= c!1206644 (and ((_ is ElementMatch!16441) (reg!16770 (regOne!33394 r!7292))) (= (c!1206624 (reg!16770 (regOne!33394 r!7292))) (h!71946 s!2326))))))

(assert (=> d!2060016 (= (derivationStepZipperDown!1689 (reg!16770 (regOne!33394 r!7292)) lt!2407173 (h!71946 s!2326)) e!3974229)))

(declare-fun b!6565357 () Bool)

(assert (=> b!6565357 (= e!3974226 ((_ map or) call!571208 call!571206))))

(assert (= (and d!2060016 c!1206644) b!6565347))

(assert (= (and d!2060016 (not c!1206644)) b!6565352))

(assert (= (and b!6565352 c!1206645) b!6565355))

(assert (= (and b!6565352 (not c!1206645)) b!6565354))

(assert (= (and b!6565354 res!2694170) b!6565351))

(assert (= (and b!6565354 c!1206643) b!6565357))

(assert (= (and b!6565354 (not c!1206643)) b!6565349))

(assert (= (and b!6565349 c!1206642) b!6565350))

(assert (= (and b!6565349 (not c!1206642)) b!6565348))

(assert (= (and b!6565348 c!1206641) b!6565353))

(assert (= (and b!6565348 (not c!1206641)) b!6565356))

(assert (= (or b!6565350 b!6565353) bm!571199))

(assert (= (or b!6565350 b!6565353) bm!571202))

(assert (= (or b!6565357 bm!571199) bm!571200))

(assert (= (or b!6565357 bm!571202) bm!571201))

(assert (= (or b!6565355 b!6565357) bm!571203))

(assert (= (or b!6565355 bm!571201) bm!571198))

(declare-fun m!7347528 () Bool)

(assert (=> bm!571200 m!7347528))

(declare-fun m!7347530 () Bool)

(assert (=> bm!571203 m!7347530))

(declare-fun m!7347532 () Bool)

(assert (=> b!6565351 m!7347532))

(declare-fun m!7347534 () Bool)

(assert (=> bm!571198 m!7347534))

(assert (=> b!6565347 m!7347360))

(assert (=> b!6565256 d!2060016))

(declare-fun d!2060018 () Bool)

(declare-fun c!1206648 () Bool)

(declare-fun isEmpty!37743 (List!65622) Bool)

(assert (=> d!2060018 (= c!1206648 (isEmpty!37743 (t!379266 s!2326)))))

(declare-fun e!3974233 () Bool)

(assert (=> d!2060018 (= (matchZipper!2453 lt!2407127 (t!379266 s!2326)) e!3974233)))

(declare-fun b!6565362 () Bool)

(declare-fun nullableZipper!2185 ((InoxSet Context!11650)) Bool)

(assert (=> b!6565362 (= e!3974233 (nullableZipper!2185 lt!2407127))))

(declare-fun b!6565363 () Bool)

(declare-fun head!13331 (List!65622) C!33152)

(declare-fun tail!12416 (List!65622) List!65622)

(assert (=> b!6565363 (= e!3974233 (matchZipper!2453 (derivationStepZipper!2407 lt!2407127 (head!13331 (t!379266 s!2326))) (tail!12416 (t!379266 s!2326))))))

(assert (= (and d!2060018 c!1206648) b!6565362))

(assert (= (and d!2060018 (not c!1206648)) b!6565363))

(declare-fun m!7347536 () Bool)

(assert (=> d!2060018 m!7347536))

(declare-fun m!7347538 () Bool)

(assert (=> b!6565362 m!7347538))

(declare-fun m!7347540 () Bool)

(assert (=> b!6565363 m!7347540))

(assert (=> b!6565363 m!7347540))

(declare-fun m!7347542 () Bool)

(assert (=> b!6565363 m!7347542))

(declare-fun m!7347544 () Bool)

(assert (=> b!6565363 m!7347544))

(assert (=> b!6565363 m!7347542))

(assert (=> b!6565363 m!7347544))

(declare-fun m!7347546 () Bool)

(assert (=> b!6565363 m!7347546))

(assert (=> b!6565258 d!2060018))

(declare-fun d!2060020 () Bool)

(declare-fun c!1206649 () Bool)

(assert (=> d!2060020 (= c!1206649 (isEmpty!37743 (t!379266 s!2326)))))

(declare-fun e!3974234 () Bool)

(assert (=> d!2060020 (= (matchZipper!2453 lt!2407168 (t!379266 s!2326)) e!3974234)))

(declare-fun b!6565364 () Bool)

(assert (=> b!6565364 (= e!3974234 (nullableZipper!2185 lt!2407168))))

(declare-fun b!6565365 () Bool)

(assert (=> b!6565365 (= e!3974234 (matchZipper!2453 (derivationStepZipper!2407 lt!2407168 (head!13331 (t!379266 s!2326))) (tail!12416 (t!379266 s!2326))))))

(assert (= (and d!2060020 c!1206649) b!6565364))

(assert (= (and d!2060020 (not c!1206649)) b!6565365))

(assert (=> d!2060020 m!7347536))

(declare-fun m!7347548 () Bool)

(assert (=> b!6565364 m!7347548))

(assert (=> b!6565365 m!7347540))

(assert (=> b!6565365 m!7347540))

(declare-fun m!7347550 () Bool)

(assert (=> b!6565365 m!7347550))

(assert (=> b!6565365 m!7347544))

(assert (=> b!6565365 m!7347550))

(assert (=> b!6565365 m!7347544))

(declare-fun m!7347552 () Bool)

(assert (=> b!6565365 m!7347552))

(assert (=> b!6565257 d!2060020))

(declare-fun d!2060022 () Bool)

(declare-fun c!1206650 () Bool)

(assert (=> d!2060022 (= c!1206650 (isEmpty!37743 s!2326))))

(declare-fun e!3974235 () Bool)

(assert (=> d!2060022 (= (matchZipper!2453 lt!2407147 s!2326) e!3974235)))

(declare-fun b!6565366 () Bool)

(assert (=> b!6565366 (= e!3974235 (nullableZipper!2185 lt!2407147))))

(declare-fun b!6565367 () Bool)

(assert (=> b!6565367 (= e!3974235 (matchZipper!2453 (derivationStepZipper!2407 lt!2407147 (head!13331 s!2326)) (tail!12416 s!2326)))))

(assert (= (and d!2060022 c!1206650) b!6565366))

(assert (= (and d!2060022 (not c!1206650)) b!6565367))

(declare-fun m!7347554 () Bool)

(assert (=> d!2060022 m!7347554))

(declare-fun m!7347556 () Bool)

(assert (=> b!6565366 m!7347556))

(declare-fun m!7347558 () Bool)

(assert (=> b!6565367 m!7347558))

(assert (=> b!6565367 m!7347558))

(declare-fun m!7347560 () Bool)

(assert (=> b!6565367 m!7347560))

(declare-fun m!7347562 () Bool)

(assert (=> b!6565367 m!7347562))

(assert (=> b!6565367 m!7347560))

(assert (=> b!6565367 m!7347562))

(declare-fun m!7347564 () Bool)

(assert (=> b!6565367 m!7347564))

(assert (=> b!6565257 d!2060022))

(declare-fun d!2060024 () Bool)

(declare-fun dynLambda!26054 (Int Context!11650) (InoxSet Context!11650))

(assert (=> d!2060024 (= (flatMap!1946 lt!2407129 lambda!365370) (dynLambda!26054 lambda!365370 lt!2407173))))

(declare-fun lt!2407190 () Unit!159099)

(declare-fun choose!48986 ((InoxSet Context!11650) Context!11650 Int) Unit!159099)

(assert (=> d!2060024 (= lt!2407190 (choose!48986 lt!2407129 lt!2407173 lambda!365370))))

(assert (=> d!2060024 (= lt!2407129 (store ((as const (Array Context!11650 Bool)) false) lt!2407173 true))))

(assert (=> d!2060024 (= (lemmaFlatMapOnSingletonSet!1472 lt!2407129 lt!2407173 lambda!365370) lt!2407190)))

(declare-fun b_lambda!248337 () Bool)

(assert (=> (not b_lambda!248337) (not d!2060024)))

(declare-fun bs!1676896 () Bool)

(assert (= bs!1676896 d!2060024))

(assert (=> bs!1676896 m!7347364))

(declare-fun m!7347566 () Bool)

(assert (=> bs!1676896 m!7347566))

(declare-fun m!7347568 () Bool)

(assert (=> bs!1676896 m!7347568))

(assert (=> bs!1676896 m!7347360))

(assert (=> b!6565239 d!2060024))

(declare-fun d!2060026 () Bool)

(declare-fun lt!2407193 () Regex!16441)

(assert (=> d!2060026 (validRegex!8177 lt!2407193)))

(assert (=> d!2060026 (= lt!2407193 (generalisedUnion!2285 (unfocusZipperList!1862 lt!2407134)))))

(assert (=> d!2060026 (= (unfocusZipper!2183 lt!2407134) lt!2407193)))

(declare-fun bs!1676897 () Bool)

(assert (= bs!1676897 d!2060026))

(declare-fun m!7347570 () Bool)

(assert (=> bs!1676897 m!7347570))

(declare-fun m!7347572 () Bool)

(assert (=> bs!1676897 m!7347572))

(assert (=> bs!1676897 m!7347572))

(declare-fun m!7347574 () Bool)

(assert (=> bs!1676897 m!7347574))

(assert (=> b!6565239 d!2060026))

(declare-fun d!2060028 () Bool)

(declare-fun choose!48987 ((InoxSet Context!11650) Int) (InoxSet Context!11650))

(assert (=> d!2060028 (= (flatMap!1946 lt!2407129 lambda!365370) (choose!48987 lt!2407129 lambda!365370))))

(declare-fun bs!1676898 () Bool)

(assert (= bs!1676898 d!2060028))

(declare-fun m!7347576 () Bool)

(assert (=> bs!1676898 m!7347576))

(assert (=> b!6565239 d!2060028))

(declare-fun d!2060030 () Bool)

(assert (=> d!2060030 (= (flatMap!1946 lt!2407140 lambda!365370) (choose!48987 lt!2407140 lambda!365370))))

(declare-fun bs!1676899 () Bool)

(assert (= bs!1676899 d!2060030))

(declare-fun m!7347578 () Bool)

(assert (=> bs!1676899 m!7347578))

(assert (=> b!6565239 d!2060030))

(declare-fun d!2060032 () Bool)

(assert (=> d!2060032 (= (flatMap!1946 lt!2407140 lambda!365370) (dynLambda!26054 lambda!365370 lt!2407138))))

(declare-fun lt!2407194 () Unit!159099)

(assert (=> d!2060032 (= lt!2407194 (choose!48986 lt!2407140 lt!2407138 lambda!365370))))

(assert (=> d!2060032 (= lt!2407140 (store ((as const (Array Context!11650 Bool)) false) lt!2407138 true))))

(assert (=> d!2060032 (= (lemmaFlatMapOnSingletonSet!1472 lt!2407140 lt!2407138 lambda!365370) lt!2407194)))

(declare-fun b_lambda!248339 () Bool)

(assert (=> (not b_lambda!248339) (not d!2060032)))

(declare-fun bs!1676900 () Bool)

(assert (= bs!1676900 d!2060032))

(assert (=> bs!1676900 m!7347362))

(declare-fun m!7347580 () Bool)

(assert (=> bs!1676900 m!7347580))

(declare-fun m!7347582 () Bool)

(assert (=> bs!1676900 m!7347582))

(assert (=> bs!1676900 m!7347354))

(assert (=> b!6565239 d!2060032))

(declare-fun b!6565378 () Bool)

(declare-fun e!3974242 () Bool)

(assert (=> b!6565378 (= e!3974242 (nullable!6434 (h!71947 (exprs!6325 lt!2407138))))))

(declare-fun b!6565380 () Bool)

(declare-fun e!3974244 () (InoxSet Context!11650))

(declare-fun e!3974243 () (InoxSet Context!11650))

(assert (=> b!6565380 (= e!3974244 e!3974243)))

(declare-fun c!1206656 () Bool)

(assert (=> b!6565380 (= c!1206656 ((_ is Cons!65499) (exprs!6325 lt!2407138)))))

(declare-fun b!6565381 () Bool)

(declare-fun call!571211 () (InoxSet Context!11650))

(assert (=> b!6565381 (= e!3974243 call!571211)))

(declare-fun b!6565382 () Bool)

(assert (=> b!6565382 (= e!3974244 ((_ map or) call!571211 (derivationStepZipperUp!1615 (Context!11651 (t!379267 (exprs!6325 lt!2407138))) (h!71946 s!2326))))))

(declare-fun bm!571206 () Bool)

(assert (=> bm!571206 (= call!571211 (derivationStepZipperDown!1689 (h!71947 (exprs!6325 lt!2407138)) (Context!11651 (t!379267 (exprs!6325 lt!2407138))) (h!71946 s!2326)))))

(declare-fun b!6565379 () Bool)

(assert (=> b!6565379 (= e!3974243 ((as const (Array Context!11650 Bool)) false))))

(declare-fun d!2060034 () Bool)

(declare-fun c!1206655 () Bool)

(assert (=> d!2060034 (= c!1206655 e!3974242)))

(declare-fun res!2694173 () Bool)

(assert (=> d!2060034 (=> (not res!2694173) (not e!3974242))))

(assert (=> d!2060034 (= res!2694173 ((_ is Cons!65499) (exprs!6325 lt!2407138)))))

(assert (=> d!2060034 (= (derivationStepZipperUp!1615 lt!2407138 (h!71946 s!2326)) e!3974244)))

(assert (= (and d!2060034 res!2694173) b!6565378))

(assert (= (and d!2060034 c!1206655) b!6565382))

(assert (= (and d!2060034 (not c!1206655)) b!6565380))

(assert (= (and b!6565380 c!1206656) b!6565381))

(assert (= (and b!6565380 (not c!1206656)) b!6565379))

(assert (= (or b!6565382 b!6565381) bm!571206))

(declare-fun m!7347584 () Bool)

(assert (=> b!6565378 m!7347584))

(declare-fun m!7347586 () Bool)

(assert (=> b!6565382 m!7347586))

(declare-fun m!7347588 () Bool)

(assert (=> bm!571206 m!7347588))

(assert (=> b!6565239 d!2060034))

(declare-fun b!6565383 () Bool)

(declare-fun e!3974245 () Bool)

(assert (=> b!6565383 (= e!3974245 (nullable!6434 (h!71947 (exprs!6325 lt!2407173))))))

(declare-fun b!6565385 () Bool)

(declare-fun e!3974247 () (InoxSet Context!11650))

(declare-fun e!3974246 () (InoxSet Context!11650))

(assert (=> b!6565385 (= e!3974247 e!3974246)))

(declare-fun c!1206658 () Bool)

(assert (=> b!6565385 (= c!1206658 ((_ is Cons!65499) (exprs!6325 lt!2407173)))))

(declare-fun b!6565386 () Bool)

(declare-fun call!571212 () (InoxSet Context!11650))

(assert (=> b!6565386 (= e!3974246 call!571212)))

(declare-fun b!6565387 () Bool)

(assert (=> b!6565387 (= e!3974247 ((_ map or) call!571212 (derivationStepZipperUp!1615 (Context!11651 (t!379267 (exprs!6325 lt!2407173))) (h!71946 s!2326))))))

(declare-fun bm!571207 () Bool)

(assert (=> bm!571207 (= call!571212 (derivationStepZipperDown!1689 (h!71947 (exprs!6325 lt!2407173)) (Context!11651 (t!379267 (exprs!6325 lt!2407173))) (h!71946 s!2326)))))

(declare-fun b!6565384 () Bool)

(assert (=> b!6565384 (= e!3974246 ((as const (Array Context!11650 Bool)) false))))

(declare-fun d!2060036 () Bool)

(declare-fun c!1206657 () Bool)

(assert (=> d!2060036 (= c!1206657 e!3974245)))

(declare-fun res!2694174 () Bool)

(assert (=> d!2060036 (=> (not res!2694174) (not e!3974245))))

(assert (=> d!2060036 (= res!2694174 ((_ is Cons!65499) (exprs!6325 lt!2407173)))))

(assert (=> d!2060036 (= (derivationStepZipperUp!1615 lt!2407173 (h!71946 s!2326)) e!3974247)))

(assert (= (and d!2060036 res!2694174) b!6565383))

(assert (= (and d!2060036 c!1206657) b!6565387))

(assert (= (and d!2060036 (not c!1206657)) b!6565385))

(assert (= (and b!6565385 c!1206658) b!6565386))

(assert (= (and b!6565385 (not c!1206658)) b!6565384))

(assert (= (or b!6565387 b!6565386) bm!571207))

(declare-fun m!7347590 () Bool)

(assert (=> b!6565383 m!7347590))

(declare-fun m!7347592 () Bool)

(assert (=> b!6565387 m!7347592))

(declare-fun m!7347594 () Bool)

(assert (=> bm!571207 m!7347594))

(assert (=> b!6565239 d!2060036))

(declare-fun b!6565406 () Bool)

(declare-fun lt!2407201 () Unit!159099)

(declare-fun lt!2407202 () Unit!159099)

(assert (=> b!6565406 (= lt!2407201 lt!2407202)))

(assert (=> b!6565406 (= (++!14584 (++!14584 Nil!65498 (Cons!65498 (h!71946 s!2326) Nil!65498)) (t!379266 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2583 (List!65622 C!33152 List!65622 List!65622) Unit!159099)

(assert (=> b!6565406 (= lt!2407202 (lemmaMoveElementToOtherListKeepsConcatEq!2583 Nil!65498 (h!71946 s!2326) (t!379266 s!2326) s!2326))))

(declare-fun e!3974262 () Option!16332)

(assert (=> b!6565406 (= e!3974262 (findConcatSeparation!2746 (regOne!33394 r!7292) (regTwo!33394 r!7292) (++!14584 Nil!65498 (Cons!65498 (h!71946 s!2326) Nil!65498)) (t!379266 s!2326) s!2326))))

(declare-fun b!6565407 () Bool)

(assert (=> b!6565407 (= e!3974262 None!16331)))

(declare-fun b!6565408 () Bool)

(declare-fun e!3974258 () Option!16332)

(assert (=> b!6565408 (= e!3974258 (Some!16331 (tuple2!66841 Nil!65498 s!2326)))))

(declare-fun b!6565409 () Bool)

(declare-fun res!2694190 () Bool)

(declare-fun e!3974261 () Bool)

(assert (=> b!6565409 (=> (not res!2694190) (not e!3974261))))

(declare-fun lt!2407203 () Option!16332)

(assert (=> b!6565409 (= res!2694190 (matchR!8624 (regTwo!33394 r!7292) (_2!36723 (get!22743 lt!2407203))))))

(declare-fun b!6565410 () Bool)

(assert (=> b!6565410 (= e!3974261 (= (++!14584 (_1!36723 (get!22743 lt!2407203)) (_2!36723 (get!22743 lt!2407203))) s!2326))))

(declare-fun b!6565411 () Bool)

(declare-fun e!3974259 () Bool)

(assert (=> b!6565411 (= e!3974259 (not (isDefined!13035 lt!2407203)))))

(declare-fun b!6565412 () Bool)

(declare-fun e!3974260 () Bool)

(assert (=> b!6565412 (= e!3974260 (matchR!8624 (regTwo!33394 r!7292) s!2326))))

(declare-fun d!2060038 () Bool)

(assert (=> d!2060038 e!3974259))

(declare-fun res!2694187 () Bool)

(assert (=> d!2060038 (=> res!2694187 e!3974259)))

(assert (=> d!2060038 (= res!2694187 e!3974261)))

(declare-fun res!2694189 () Bool)

(assert (=> d!2060038 (=> (not res!2694189) (not e!3974261))))

(assert (=> d!2060038 (= res!2694189 (isDefined!13035 lt!2407203))))

(assert (=> d!2060038 (= lt!2407203 e!3974258)))

(declare-fun c!1206663 () Bool)

(assert (=> d!2060038 (= c!1206663 e!3974260)))

(declare-fun res!2694186 () Bool)

(assert (=> d!2060038 (=> (not res!2694186) (not e!3974260))))

(assert (=> d!2060038 (= res!2694186 (matchR!8624 (regOne!33394 r!7292) Nil!65498))))

(assert (=> d!2060038 (validRegex!8177 (regOne!33394 r!7292))))

(assert (=> d!2060038 (= (findConcatSeparation!2746 (regOne!33394 r!7292) (regTwo!33394 r!7292) Nil!65498 s!2326 s!2326) lt!2407203)))

(declare-fun b!6565413 () Bool)

(assert (=> b!6565413 (= e!3974258 e!3974262)))

(declare-fun c!1206664 () Bool)

(assert (=> b!6565413 (= c!1206664 ((_ is Nil!65498) s!2326))))

(declare-fun b!6565414 () Bool)

(declare-fun res!2694188 () Bool)

(assert (=> b!6565414 (=> (not res!2694188) (not e!3974261))))

(assert (=> b!6565414 (= res!2694188 (matchR!8624 (regOne!33394 r!7292) (_1!36723 (get!22743 lt!2407203))))))

(assert (= (and d!2060038 res!2694186) b!6565412))

(assert (= (and d!2060038 c!1206663) b!6565408))

(assert (= (and d!2060038 (not c!1206663)) b!6565413))

(assert (= (and b!6565413 c!1206664) b!6565407))

(assert (= (and b!6565413 (not c!1206664)) b!6565406))

(assert (= (and d!2060038 res!2694189) b!6565414))

(assert (= (and b!6565414 res!2694188) b!6565409))

(assert (= (and b!6565409 res!2694190) b!6565410))

(assert (= (and d!2060038 (not res!2694187)) b!6565411))

(declare-fun m!7347596 () Bool)

(assert (=> d!2060038 m!7347596))

(declare-fun m!7347598 () Bool)

(assert (=> d!2060038 m!7347598))

(declare-fun m!7347600 () Bool)

(assert (=> d!2060038 m!7347600))

(assert (=> b!6565411 m!7347596))

(declare-fun m!7347602 () Bool)

(assert (=> b!6565406 m!7347602))

(assert (=> b!6565406 m!7347602))

(declare-fun m!7347604 () Bool)

(assert (=> b!6565406 m!7347604))

(declare-fun m!7347606 () Bool)

(assert (=> b!6565406 m!7347606))

(assert (=> b!6565406 m!7347602))

(declare-fun m!7347608 () Bool)

(assert (=> b!6565406 m!7347608))

(declare-fun m!7347610 () Bool)

(assert (=> b!6565410 m!7347610))

(declare-fun m!7347612 () Bool)

(assert (=> b!6565410 m!7347612))

(assert (=> b!6565409 m!7347610))

(declare-fun m!7347614 () Bool)

(assert (=> b!6565409 m!7347614))

(assert (=> b!6565414 m!7347610))

(declare-fun m!7347616 () Bool)

(assert (=> b!6565414 m!7347616))

(declare-fun m!7347618 () Bool)

(assert (=> b!6565412 m!7347618))

(assert (=> b!6565238 d!2060038))

(declare-fun d!2060042 () Bool)

(declare-fun choose!48988 (Int) Bool)

(assert (=> d!2060042 (= (Exists!3511 lambda!365369) (choose!48988 lambda!365369))))

(declare-fun bs!1676901 () Bool)

(assert (= bs!1676901 d!2060042))

(declare-fun m!7347620 () Bool)

(assert (=> bs!1676901 m!7347620))

(assert (=> b!6565238 d!2060042))

(declare-fun d!2060044 () Bool)

(assert (=> d!2060044 (= (Exists!3511 lambda!365368) (choose!48988 lambda!365368))))

(declare-fun bs!1676902 () Bool)

(assert (= bs!1676902 d!2060044))

(declare-fun m!7347622 () Bool)

(assert (=> bs!1676902 m!7347622))

(assert (=> b!6565238 d!2060044))

(declare-fun bs!1676903 () Bool)

(declare-fun d!2060046 () Bool)

(assert (= bs!1676903 (and d!2060046 b!6565271)))

(declare-fun lambda!365380 () Int)

(assert (=> bs!1676903 (= (= (regOne!33394 r!7292) lt!2407124) (= lambda!365380 lambda!365373))))

(declare-fun bs!1676904 () Bool)

(assert (= bs!1676904 (and d!2060046 b!6565238)))

(assert (=> bs!1676904 (not (= lambda!365380 lambda!365369))))

(declare-fun bs!1676905 () Bool)

(assert (= bs!1676905 (and d!2060046 b!6565241)))

(assert (=> bs!1676905 (not (= lambda!365380 lambda!365376))))

(assert (=> bs!1676905 (not (= lambda!365380 lambda!365377))))

(assert (=> bs!1676904 (= lambda!365380 lambda!365368)))

(assert (=> bs!1676905 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 r!7292) (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365380 lambda!365375))))

(assert (=> bs!1676903 (not (= lambda!365380 lambda!365374))))

(assert (=> d!2060046 true))

(assert (=> d!2060046 true))

(assert (=> d!2060046 true))

(assert (=> d!2060046 (= (isDefined!13035 (findConcatSeparation!2746 (regOne!33394 r!7292) (regTwo!33394 r!7292) Nil!65498 s!2326 s!2326)) (Exists!3511 lambda!365380))))

(declare-fun lt!2407209 () Unit!159099)

(declare-fun choose!48991 (Regex!16441 Regex!16441 List!65622) Unit!159099)

(assert (=> d!2060046 (= lt!2407209 (choose!48991 (regOne!33394 r!7292) (regTwo!33394 r!7292) s!2326))))

(assert (=> d!2060046 (validRegex!8177 (regOne!33394 r!7292))))

(assert (=> d!2060046 (= (lemmaFindConcatSeparationEquivalentToExists!2510 (regOne!33394 r!7292) (regTwo!33394 r!7292) s!2326) lt!2407209)))

(declare-fun bs!1676906 () Bool)

(assert (= bs!1676906 d!2060046))

(assert (=> bs!1676906 m!7347440))

(declare-fun m!7347638 () Bool)

(assert (=> bs!1676906 m!7347638))

(declare-fun m!7347640 () Bool)

(assert (=> bs!1676906 m!7347640))

(assert (=> bs!1676906 m!7347600))

(assert (=> bs!1676906 m!7347440))

(assert (=> bs!1676906 m!7347442))

(assert (=> b!6565238 d!2060046))

(declare-fun bs!1676913 () Bool)

(declare-fun d!2060050 () Bool)

(assert (= bs!1676913 (and d!2060050 d!2060046)))

(declare-fun lambda!365388 () Int)

(assert (=> bs!1676913 (= lambda!365388 lambda!365380)))

(declare-fun bs!1676914 () Bool)

(assert (= bs!1676914 (and d!2060050 b!6565271)))

(assert (=> bs!1676914 (= (= (regOne!33394 r!7292) lt!2407124) (= lambda!365388 lambda!365373))))

(declare-fun bs!1676915 () Bool)

(assert (= bs!1676915 (and d!2060050 b!6565238)))

(assert (=> bs!1676915 (not (= lambda!365388 lambda!365369))))

(declare-fun bs!1676916 () Bool)

(assert (= bs!1676916 (and d!2060050 b!6565241)))

(assert (=> bs!1676916 (not (= lambda!365388 lambda!365376))))

(assert (=> bs!1676916 (not (= lambda!365388 lambda!365377))))

(assert (=> bs!1676915 (= lambda!365388 lambda!365368)))

(assert (=> bs!1676916 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 r!7292) (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365388 lambda!365375))))

(assert (=> bs!1676914 (not (= lambda!365388 lambda!365374))))

(assert (=> d!2060050 true))

(assert (=> d!2060050 true))

(assert (=> d!2060050 true))

(declare-fun lambda!365389 () Int)

(assert (=> bs!1676913 (not (= lambda!365389 lambda!365380))))

(assert (=> bs!1676914 (not (= lambda!365389 lambda!365373))))

(assert (=> bs!1676915 (= lambda!365389 lambda!365369)))

(assert (=> bs!1676916 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 r!7292) (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365389 lambda!365376))))

(declare-fun bs!1676917 () Bool)

(assert (= bs!1676917 d!2060050))

(assert (=> bs!1676917 (not (= lambda!365389 lambda!365388))))

(assert (=> bs!1676916 (not (= lambda!365389 lambda!365377))))

(assert (=> bs!1676915 (not (= lambda!365389 lambda!365368))))

(assert (=> bs!1676916 (not (= lambda!365389 lambda!365375))))

(assert (=> bs!1676914 (= (= (regOne!33394 r!7292) lt!2407124) (= lambda!365389 lambda!365374))))

(assert (=> d!2060050 true))

(assert (=> d!2060050 true))

(assert (=> d!2060050 true))

(assert (=> d!2060050 (= (Exists!3511 lambda!365388) (Exists!3511 lambda!365389))))

(declare-fun lt!2407215 () Unit!159099)

(declare-fun choose!48992 (Regex!16441 Regex!16441 List!65622) Unit!159099)

(assert (=> d!2060050 (= lt!2407215 (choose!48992 (regOne!33394 r!7292) (regTwo!33394 r!7292) s!2326))))

(assert (=> d!2060050 (validRegex!8177 (regOne!33394 r!7292))))

(assert (=> d!2060050 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2048 (regOne!33394 r!7292) (regTwo!33394 r!7292) s!2326) lt!2407215)))

(declare-fun m!7347654 () Bool)

(assert (=> bs!1676917 m!7347654))

(declare-fun m!7347656 () Bool)

(assert (=> bs!1676917 m!7347656))

(declare-fun m!7347658 () Bool)

(assert (=> bs!1676917 m!7347658))

(assert (=> bs!1676917 m!7347600))

(assert (=> b!6565238 d!2060050))

(declare-fun d!2060058 () Bool)

(declare-fun isEmpty!37744 (Option!16332) Bool)

(assert (=> d!2060058 (= (isDefined!13035 (findConcatSeparation!2746 (regOne!33394 r!7292) (regTwo!33394 r!7292) Nil!65498 s!2326 s!2326)) (not (isEmpty!37744 (findConcatSeparation!2746 (regOne!33394 r!7292) (regTwo!33394 r!7292) Nil!65498 s!2326 s!2326))))))

(declare-fun bs!1676918 () Bool)

(assert (= bs!1676918 d!2060058))

(assert (=> bs!1676918 m!7347440))

(declare-fun m!7347660 () Bool)

(assert (=> bs!1676918 m!7347660))

(assert (=> b!6565238 d!2060058))

(declare-fun bs!1676919 () Bool)

(declare-fun d!2060060 () Bool)

(assert (= bs!1676919 (and d!2060060 b!6565269)))

(declare-fun lambda!365396 () Int)

(assert (=> bs!1676919 (= lambda!365396 lambda!365372)))

(declare-fun forall!15612 (List!65623 Int) Bool)

(assert (=> d!2060060 (= (inv!84349 (h!71948 zl!343)) (forall!15612 (exprs!6325 (h!71948 zl!343)) lambda!365396))))

(declare-fun bs!1676920 () Bool)

(assert (= bs!1676920 d!2060060))

(declare-fun m!7347662 () Bool)

(assert (=> bs!1676920 m!7347662))

(assert (=> b!6565280 d!2060060))

(declare-fun bs!1676921 () Bool)

(declare-fun d!2060062 () Bool)

(assert (= bs!1676921 (and d!2060062 b!6565269)))

(declare-fun lambda!365397 () Int)

(assert (=> bs!1676921 (= lambda!365397 lambda!365372)))

(declare-fun bs!1676922 () Bool)

(assert (= bs!1676922 (and d!2060062 d!2060060)))

(assert (=> bs!1676922 (= lambda!365397 lambda!365396)))

(assert (=> d!2060062 (= (inv!84349 setElem!44822) (forall!15612 (exprs!6325 setElem!44822) lambda!365397))))

(declare-fun bs!1676923 () Bool)

(assert (= bs!1676923 d!2060062))

(declare-fun m!7347664 () Bool)

(assert (=> bs!1676923 m!7347664))

(assert (=> setNonEmpty!44822 d!2060062))

(declare-fun b!6565518 () Bool)

(declare-fun e!3974322 () Bool)

(declare-fun e!3974323 () Bool)

(assert (=> b!6565518 (= e!3974322 e!3974323)))

(declare-fun res!2694251 () Bool)

(assert (=> b!6565518 (=> (not res!2694251) (not e!3974323))))

(declare-fun lt!2407219 () Bool)

(assert (=> b!6565518 (= res!2694251 (not lt!2407219))))

(declare-fun b!6565519 () Bool)

(declare-fun e!3974324 () Bool)

(assert (=> b!6565519 (= e!3974324 (not lt!2407219))))

(declare-fun b!6565520 () Bool)

(declare-fun res!2694256 () Bool)

(assert (=> b!6565520 (=> res!2694256 e!3974322)))

(declare-fun e!3974318 () Bool)

(assert (=> b!6565520 (= res!2694256 e!3974318)))

(declare-fun res!2694255 () Bool)

(assert (=> b!6565520 (=> (not res!2694255) (not e!3974318))))

(assert (=> b!6565520 (= res!2694255 lt!2407219)))

(declare-fun b!6565521 () Bool)

(declare-fun res!2694257 () Bool)

(declare-fun e!3974319 () Bool)

(assert (=> b!6565521 (=> res!2694257 e!3974319)))

(assert (=> b!6565521 (= res!2694257 (not (isEmpty!37743 (tail!12416 (_2!36723 lt!2407169)))))))

(declare-fun b!6565522 () Bool)

(assert (=> b!6565522 (= e!3974323 e!3974319)))

(declare-fun res!2694250 () Bool)

(assert (=> b!6565522 (=> res!2694250 e!3974319)))

(declare-fun call!571221 () Bool)

(assert (=> b!6565522 (= res!2694250 call!571221)))

(declare-fun b!6565523 () Bool)

(assert (=> b!6565523 (= e!3974319 (not (= (head!13331 (_2!36723 lt!2407169)) (c!1206624 lt!2407122))))))

(declare-fun b!6565524 () Bool)

(declare-fun res!2694253 () Bool)

(assert (=> b!6565524 (=> (not res!2694253) (not e!3974318))))

(assert (=> b!6565524 (= res!2694253 (isEmpty!37743 (tail!12416 (_2!36723 lt!2407169))))))

(declare-fun b!6565525 () Bool)

(declare-fun e!3974320 () Bool)

(assert (=> b!6565525 (= e!3974320 (nullable!6434 lt!2407122))))

(declare-fun b!6565526 () Bool)

(declare-fun e!3974321 () Bool)

(assert (=> b!6565526 (= e!3974321 e!3974324)))

(declare-fun c!1206689 () Bool)

(assert (=> b!6565526 (= c!1206689 ((_ is EmptyLang!16441) lt!2407122))))

(declare-fun b!6565527 () Bool)

(declare-fun res!2694254 () Bool)

(assert (=> b!6565527 (=> (not res!2694254) (not e!3974318))))

(assert (=> b!6565527 (= res!2694254 (not call!571221))))

(declare-fun b!6565528 () Bool)

(declare-fun res!2694252 () Bool)

(assert (=> b!6565528 (=> res!2694252 e!3974322)))

(assert (=> b!6565528 (= res!2694252 (not ((_ is ElementMatch!16441) lt!2407122)))))

(assert (=> b!6565528 (= e!3974324 e!3974322)))

(declare-fun b!6565529 () Bool)

(assert (=> b!6565529 (= e!3974321 (= lt!2407219 call!571221))))

(declare-fun b!6565530 () Bool)

(assert (=> b!6565530 (= e!3974318 (= (head!13331 (_2!36723 lt!2407169)) (c!1206624 lt!2407122)))))

(declare-fun b!6565531 () Bool)

(declare-fun derivativeStep!5124 (Regex!16441 C!33152) Regex!16441)

(assert (=> b!6565531 (= e!3974320 (matchR!8624 (derivativeStep!5124 lt!2407122 (head!13331 (_2!36723 lt!2407169))) (tail!12416 (_2!36723 lt!2407169))))))

(declare-fun bm!571216 () Bool)

(assert (=> bm!571216 (= call!571221 (isEmpty!37743 (_2!36723 lt!2407169)))))

(declare-fun d!2060064 () Bool)

(assert (=> d!2060064 e!3974321))

(declare-fun c!1206687 () Bool)

(assert (=> d!2060064 (= c!1206687 ((_ is EmptyExpr!16441) lt!2407122))))

(assert (=> d!2060064 (= lt!2407219 e!3974320)))

(declare-fun c!1206688 () Bool)

(assert (=> d!2060064 (= c!1206688 (isEmpty!37743 (_2!36723 lt!2407169)))))

(assert (=> d!2060064 (validRegex!8177 lt!2407122)))

(assert (=> d!2060064 (= (matchR!8624 lt!2407122 (_2!36723 lt!2407169)) lt!2407219)))

(assert (= (and d!2060064 c!1206688) b!6565525))

(assert (= (and d!2060064 (not c!1206688)) b!6565531))

(assert (= (and d!2060064 c!1206687) b!6565529))

(assert (= (and d!2060064 (not c!1206687)) b!6565526))

(assert (= (and b!6565526 c!1206689) b!6565519))

(assert (= (and b!6565526 (not c!1206689)) b!6565528))

(assert (= (and b!6565528 (not res!2694252)) b!6565520))

(assert (= (and b!6565520 res!2694255) b!6565527))

(assert (= (and b!6565527 res!2694254) b!6565524))

(assert (= (and b!6565524 res!2694253) b!6565530))

(assert (= (and b!6565520 (not res!2694256)) b!6565518))

(assert (= (and b!6565518 res!2694251) b!6565522))

(assert (= (and b!6565522 (not res!2694250)) b!6565521))

(assert (= (and b!6565521 (not res!2694257)) b!6565523))

(assert (= (or b!6565529 b!6565522 b!6565527) bm!571216))

(declare-fun m!7347686 () Bool)

(assert (=> b!6565530 m!7347686))

(assert (=> b!6565531 m!7347686))

(assert (=> b!6565531 m!7347686))

(declare-fun m!7347688 () Bool)

(assert (=> b!6565531 m!7347688))

(declare-fun m!7347690 () Bool)

(assert (=> b!6565531 m!7347690))

(assert (=> b!6565531 m!7347688))

(assert (=> b!6565531 m!7347690))

(declare-fun m!7347692 () Bool)

(assert (=> b!6565531 m!7347692))

(assert (=> b!6565524 m!7347690))

(assert (=> b!6565524 m!7347690))

(declare-fun m!7347696 () Bool)

(assert (=> b!6565524 m!7347696))

(assert (=> b!6565521 m!7347690))

(assert (=> b!6565521 m!7347690))

(assert (=> b!6565521 m!7347696))

(assert (=> b!6565523 m!7347686))

(declare-fun m!7347700 () Bool)

(assert (=> d!2060064 m!7347700))

(assert (=> d!2060064 m!7347310))

(declare-fun m!7347702 () Bool)

(assert (=> b!6565525 m!7347702))

(assert (=> bm!571216 m!7347700))

(assert (=> b!6565260 d!2060064))

(declare-fun bs!1676935 () Bool)

(declare-fun d!2060076 () Bool)

(assert (= bs!1676935 (and d!2060076 d!2060046)))

(declare-fun lambda!365404 () Int)

(assert (=> bs!1676935 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= (Star!16441 (reg!16770 (regOne!33394 r!7292))) (regTwo!33394 r!7292))) (= lambda!365404 lambda!365380))))

(declare-fun bs!1676936 () Bool)

(assert (= bs!1676936 (and d!2060076 d!2060050)))

(assert (=> bs!1676936 (not (= lambda!365404 lambda!365389))))

(declare-fun bs!1676937 () Bool)

(assert (= bs!1676937 (and d!2060076 b!6565271)))

(assert (=> bs!1676937 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) lt!2407124) (= (Star!16441 (reg!16770 (regOne!33394 r!7292))) (regTwo!33394 r!7292))) (= lambda!365404 lambda!365373))))

(declare-fun bs!1676938 () Bool)

(assert (= bs!1676938 (and d!2060076 b!6565238)))

(assert (=> bs!1676938 (not (= lambda!365404 lambda!365369))))

(declare-fun bs!1676939 () Bool)

(assert (= bs!1676939 (and d!2060076 b!6565241)))

(assert (=> bs!1676939 (not (= lambda!365404 lambda!365376))))

(assert (=> bs!1676936 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= (Star!16441 (reg!16770 (regOne!33394 r!7292))) (regTwo!33394 r!7292))) (= lambda!365404 lambda!365388))))

(assert (=> bs!1676939 (not (= lambda!365404 lambda!365377))))

(assert (=> bs!1676938 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= (Star!16441 (reg!16770 (regOne!33394 r!7292))) (regTwo!33394 r!7292))) (= lambda!365404 lambda!365368))))

(assert (=> bs!1676939 (= (= (Star!16441 (reg!16770 (regOne!33394 r!7292))) lt!2407122) (= lambda!365404 lambda!365375))))

(assert (=> bs!1676937 (not (= lambda!365404 lambda!365374))))

(assert (=> d!2060076 true))

(assert (=> d!2060076 true))

(declare-fun bs!1676940 () Bool)

(assert (= bs!1676940 d!2060076))

(declare-fun lambda!365405 () Int)

(assert (=> bs!1676940 (not (= lambda!365405 lambda!365404))))

(assert (=> bs!1676935 (not (= lambda!365405 lambda!365380))))

(assert (=> bs!1676936 (not (= lambda!365405 lambda!365389))))

(assert (=> bs!1676937 (not (= lambda!365405 lambda!365373))))

(assert (=> bs!1676938 (not (= lambda!365405 lambda!365369))))

(assert (=> bs!1676939 (not (= lambda!365405 lambda!365376))))

(assert (=> bs!1676936 (not (= lambda!365405 lambda!365388))))

(assert (=> bs!1676939 (= (= (Star!16441 (reg!16770 (regOne!33394 r!7292))) lt!2407122) (= lambda!365405 lambda!365377))))

(assert (=> bs!1676938 (not (= lambda!365405 lambda!365368))))

(assert (=> bs!1676939 (not (= lambda!365405 lambda!365375))))

(assert (=> bs!1676937 (not (= lambda!365405 lambda!365374))))

(assert (=> d!2060076 true))

(assert (=> d!2060076 true))

(assert (=> d!2060076 (= (Exists!3511 lambda!365404) (Exists!3511 lambda!365405))))

(declare-fun lt!2407228 () Unit!159099)

(declare-fun choose!48994 (Regex!16441 List!65622) Unit!159099)

(assert (=> d!2060076 (= lt!2407228 (choose!48994 (reg!16770 (regOne!33394 r!7292)) (_1!36723 lt!2407152)))))

(assert (=> d!2060076 (validRegex!8177 (reg!16770 (regOne!33394 r!7292)))))

(assert (=> d!2060076 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!664 (reg!16770 (regOne!33394 r!7292)) (_1!36723 lt!2407152)) lt!2407228)))

(declare-fun m!7347718 () Bool)

(assert (=> bs!1676940 m!7347718))

(declare-fun m!7347720 () Bool)

(assert (=> bs!1676940 m!7347720))

(declare-fun m!7347722 () Bool)

(assert (=> bs!1676940 m!7347722))

(declare-fun m!7347724 () Bool)

(assert (=> bs!1676940 m!7347724))

(assert (=> b!6565241 d!2060076))

(declare-fun b!6565595 () Bool)

(declare-fun e!3974355 () Bool)

(declare-fun lt!2407231 () List!65622)

(assert (=> b!6565595 (= e!3974355 (or (not (= (_2!36723 lt!2407152) Nil!65498)) (= lt!2407231 (_2!36723 lt!2407169))))))

(declare-fun d!2060080 () Bool)

(assert (=> d!2060080 e!3974355))

(declare-fun res!2694297 () Bool)

(assert (=> d!2060080 (=> (not res!2694297) (not e!3974355))))

(declare-fun content!12603 (List!65622) (InoxSet C!33152))

(assert (=> d!2060080 (= res!2694297 (= (content!12603 lt!2407231) ((_ map or) (content!12603 (_2!36723 lt!2407169)) (content!12603 (_2!36723 lt!2407152)))))))

(declare-fun e!3974354 () List!65622)

(assert (=> d!2060080 (= lt!2407231 e!3974354)))

(declare-fun c!1206701 () Bool)

(assert (=> d!2060080 (= c!1206701 ((_ is Nil!65498) (_2!36723 lt!2407169)))))

(assert (=> d!2060080 (= (++!14584 (_2!36723 lt!2407169) (_2!36723 lt!2407152)) lt!2407231)))

(declare-fun b!6565594 () Bool)

(declare-fun res!2694296 () Bool)

(assert (=> b!6565594 (=> (not res!2694296) (not e!3974355))))

(declare-fun size!40530 (List!65622) Int)

(assert (=> b!6565594 (= res!2694296 (= (size!40530 lt!2407231) (+ (size!40530 (_2!36723 lt!2407169)) (size!40530 (_2!36723 lt!2407152)))))))

(declare-fun b!6565592 () Bool)

(assert (=> b!6565592 (= e!3974354 (_2!36723 lt!2407152))))

(declare-fun b!6565593 () Bool)

(assert (=> b!6565593 (= e!3974354 (Cons!65498 (h!71946 (_2!36723 lt!2407169)) (++!14584 (t!379266 (_2!36723 lt!2407169)) (_2!36723 lt!2407152))))))

(assert (= (and d!2060080 c!1206701) b!6565592))

(assert (= (and d!2060080 (not c!1206701)) b!6565593))

(assert (= (and d!2060080 res!2694297) b!6565594))

(assert (= (and b!6565594 res!2694296) b!6565595))

(declare-fun m!7347726 () Bool)

(assert (=> d!2060080 m!7347726))

(declare-fun m!7347728 () Bool)

(assert (=> d!2060080 m!7347728))

(declare-fun m!7347730 () Bool)

(assert (=> d!2060080 m!7347730))

(declare-fun m!7347732 () Bool)

(assert (=> b!6565594 m!7347732))

(declare-fun m!7347734 () Bool)

(assert (=> b!6565594 m!7347734))

(declare-fun m!7347736 () Bool)

(assert (=> b!6565594 m!7347736))

(declare-fun m!7347738 () Bool)

(assert (=> b!6565593 m!7347738))

(assert (=> b!6565241 d!2060080))

(declare-fun d!2060082 () Bool)

(assert (=> d!2060082 (= (++!14584 (++!14584 (_1!36723 lt!2407169) (_2!36723 lt!2407169)) (_2!36723 lt!2407152)) (++!14584 (_1!36723 lt!2407169) (++!14584 (_2!36723 lt!2407169) (_2!36723 lt!2407152))))))

(declare-fun lt!2407240 () Unit!159099)

(declare-fun choose!48995 (List!65622 List!65622 List!65622) Unit!159099)

(assert (=> d!2060082 (= lt!2407240 (choose!48995 (_1!36723 lt!2407169) (_2!36723 lt!2407169) (_2!36723 lt!2407152)))))

(assert (=> d!2060082 (= (lemmaConcatAssociativity!2944 (_1!36723 lt!2407169) (_2!36723 lt!2407169) (_2!36723 lt!2407152)) lt!2407240)))

(declare-fun bs!1676941 () Bool)

(assert (= bs!1676941 d!2060082))

(assert (=> bs!1676941 m!7347486))

(assert (=> bs!1676941 m!7347486))

(assert (=> bs!1676941 m!7347488))

(assert (=> bs!1676941 m!7347508))

(assert (=> bs!1676941 m!7347508))

(assert (=> bs!1676941 m!7347512))

(declare-fun m!7347740 () Bool)

(assert (=> bs!1676941 m!7347740))

(assert (=> b!6565241 d!2060082))

(declare-fun bs!1676942 () Bool)

(declare-fun d!2060084 () Bool)

(assert (= bs!1676942 (and d!2060084 d!2060076)))

(declare-fun lambda!365406 () Int)

(assert (=> bs!1676942 (= (= lt!2407122 (Star!16441 (reg!16770 (regOne!33394 r!7292)))) (= lambda!365406 lambda!365404))))

(assert (=> bs!1676942 (not (= lambda!365406 lambda!365405))))

(declare-fun bs!1676943 () Bool)

(assert (= bs!1676943 (and d!2060084 d!2060046)))

(assert (=> bs!1676943 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365406 lambda!365380))))

(declare-fun bs!1676944 () Bool)

(assert (= bs!1676944 (and d!2060084 d!2060050)))

(assert (=> bs!1676944 (not (= lambda!365406 lambda!365389))))

(declare-fun bs!1676945 () Bool)

(assert (= bs!1676945 (and d!2060084 b!6565271)))

(assert (=> bs!1676945 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) lt!2407124) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365406 lambda!365373))))

(declare-fun bs!1676946 () Bool)

(assert (= bs!1676946 (and d!2060084 b!6565238)))

(assert (=> bs!1676946 (not (= lambda!365406 lambda!365369))))

(declare-fun bs!1676947 () Bool)

(assert (= bs!1676947 (and d!2060084 b!6565241)))

(assert (=> bs!1676947 (not (= lambda!365406 lambda!365376))))

(assert (=> bs!1676944 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365406 lambda!365388))))

(assert (=> bs!1676947 (not (= lambda!365406 lambda!365377))))

(assert (=> bs!1676946 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365406 lambda!365368))))

(assert (=> bs!1676947 (= lambda!365406 lambda!365375)))

(assert (=> bs!1676945 (not (= lambda!365406 lambda!365374))))

(assert (=> d!2060084 true))

(assert (=> d!2060084 true))

(assert (=> d!2060084 true))

(declare-fun lambda!365407 () Int)

(assert (=> bs!1676942 (not (= lambda!365407 lambda!365404))))

(assert (=> bs!1676942 (not (= lambda!365407 lambda!365405))))

(assert (=> bs!1676943 (not (= lambda!365407 lambda!365380))))

(assert (=> bs!1676944 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365407 lambda!365389))))

(assert (=> bs!1676945 (not (= lambda!365407 lambda!365373))))

(declare-fun bs!1676948 () Bool)

(assert (= bs!1676948 d!2060084))

(assert (=> bs!1676948 (not (= lambda!365407 lambda!365406))))

(assert (=> bs!1676946 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365407 lambda!365369))))

(assert (=> bs!1676947 (= lambda!365407 lambda!365376)))

(assert (=> bs!1676944 (not (= lambda!365407 lambda!365388))))

(assert (=> bs!1676947 (not (= lambda!365407 lambda!365377))))

(assert (=> bs!1676946 (not (= lambda!365407 lambda!365368))))

(assert (=> bs!1676947 (not (= lambda!365407 lambda!365375))))

(assert (=> bs!1676945 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) lt!2407124) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365407 lambda!365374))))

(assert (=> d!2060084 true))

(assert (=> d!2060084 true))

(assert (=> d!2060084 true))

(assert (=> d!2060084 (= (Exists!3511 lambda!365406) (Exists!3511 lambda!365407))))

(declare-fun lt!2407241 () Unit!159099)

(assert (=> d!2060084 (= lt!2407241 (choose!48992 (reg!16770 (regOne!33394 r!7292)) lt!2407122 (_1!36723 lt!2407152)))))

(assert (=> d!2060084 (validRegex!8177 (reg!16770 (regOne!33394 r!7292)))))

(assert (=> d!2060084 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2048 (reg!16770 (regOne!33394 r!7292)) lt!2407122 (_1!36723 lt!2407152)) lt!2407241)))

(declare-fun m!7347742 () Bool)

(assert (=> bs!1676948 m!7347742))

(declare-fun m!7347744 () Bool)

(assert (=> bs!1676948 m!7347744))

(declare-fun m!7347746 () Bool)

(assert (=> bs!1676948 m!7347746))

(assert (=> bs!1676948 m!7347724))

(assert (=> b!6565241 d!2060084))

(declare-fun lt!2407245 () List!65622)

(declare-fun e!3974372 () Bool)

(declare-fun b!6565626 () Bool)

(assert (=> b!6565626 (= e!3974372 (or (not (= (++!14584 (_2!36723 lt!2407169) (_2!36723 lt!2407152)) Nil!65498)) (= lt!2407245 (_1!36723 lt!2407169))))))

(declare-fun d!2060086 () Bool)

(assert (=> d!2060086 e!3974372))

(declare-fun res!2694314 () Bool)

(assert (=> d!2060086 (=> (not res!2694314) (not e!3974372))))

(assert (=> d!2060086 (= res!2694314 (= (content!12603 lt!2407245) ((_ map or) (content!12603 (_1!36723 lt!2407169)) (content!12603 (++!14584 (_2!36723 lt!2407169) (_2!36723 lt!2407152))))))))

(declare-fun e!3974371 () List!65622)

(assert (=> d!2060086 (= lt!2407245 e!3974371)))

(declare-fun c!1206708 () Bool)

(assert (=> d!2060086 (= c!1206708 ((_ is Nil!65498) (_1!36723 lt!2407169)))))

(assert (=> d!2060086 (= (++!14584 (_1!36723 lt!2407169) (++!14584 (_2!36723 lt!2407169) (_2!36723 lt!2407152))) lt!2407245)))

(declare-fun b!6565625 () Bool)

(declare-fun res!2694313 () Bool)

(assert (=> b!6565625 (=> (not res!2694313) (not e!3974372))))

(assert (=> b!6565625 (= res!2694313 (= (size!40530 lt!2407245) (+ (size!40530 (_1!36723 lt!2407169)) (size!40530 (++!14584 (_2!36723 lt!2407169) (_2!36723 lt!2407152))))))))

(declare-fun b!6565623 () Bool)

(assert (=> b!6565623 (= e!3974371 (++!14584 (_2!36723 lt!2407169) (_2!36723 lt!2407152)))))

(declare-fun b!6565624 () Bool)

(assert (=> b!6565624 (= e!3974371 (Cons!65498 (h!71946 (_1!36723 lt!2407169)) (++!14584 (t!379266 (_1!36723 lt!2407169)) (++!14584 (_2!36723 lt!2407169) (_2!36723 lt!2407152)))))))

(assert (= (and d!2060086 c!1206708) b!6565623))

(assert (= (and d!2060086 (not c!1206708)) b!6565624))

(assert (= (and d!2060086 res!2694314) b!6565625))

(assert (= (and b!6565625 res!2694313) b!6565626))

(declare-fun m!7347750 () Bool)

(assert (=> d!2060086 m!7347750))

(declare-fun m!7347752 () Bool)

(assert (=> d!2060086 m!7347752))

(assert (=> d!2060086 m!7347486))

(declare-fun m!7347758 () Bool)

(assert (=> d!2060086 m!7347758))

(declare-fun m!7347760 () Bool)

(assert (=> b!6565625 m!7347760))

(declare-fun m!7347762 () Bool)

(assert (=> b!6565625 m!7347762))

(assert (=> b!6565625 m!7347486))

(declare-fun m!7347766 () Bool)

(assert (=> b!6565625 m!7347766))

(assert (=> b!6565624 m!7347486))

(declare-fun m!7347770 () Bool)

(assert (=> b!6565624 m!7347770))

(assert (=> b!6565241 d!2060086))

(declare-fun d!2060088 () Bool)

(assert (=> d!2060088 (= (Exists!3511 lambda!365375) (choose!48988 lambda!365375))))

(declare-fun bs!1676949 () Bool)

(assert (= bs!1676949 d!2060088))

(declare-fun m!7347780 () Bool)

(assert (=> bs!1676949 m!7347780))

(assert (=> b!6565241 d!2060088))

(declare-fun bs!1676950 () Bool)

(declare-fun d!2060090 () Bool)

(assert (= bs!1676950 (and d!2060090 d!2060076)))

(declare-fun lambda!365408 () Int)

(assert (=> bs!1676950 (= (= lt!2407122 (Star!16441 (reg!16770 (regOne!33394 r!7292)))) (= lambda!365408 lambda!365404))))

(assert (=> bs!1676950 (not (= lambda!365408 lambda!365405))))

(declare-fun bs!1676951 () Bool)

(assert (= bs!1676951 (and d!2060090 d!2060046)))

(assert (=> bs!1676951 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365408 lambda!365380))))

(declare-fun bs!1676952 () Bool)

(assert (= bs!1676952 (and d!2060090 d!2060050)))

(assert (=> bs!1676952 (not (= lambda!365408 lambda!365389))))

(declare-fun bs!1676953 () Bool)

(assert (= bs!1676953 (and d!2060090 b!6565271)))

(assert (=> bs!1676953 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) lt!2407124) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365408 lambda!365373))))

(declare-fun bs!1676954 () Bool)

(assert (= bs!1676954 (and d!2060090 d!2060084)))

(assert (=> bs!1676954 (= lambda!365408 lambda!365406)))

(declare-fun bs!1676955 () Bool)

(assert (= bs!1676955 (and d!2060090 b!6565238)))

(assert (=> bs!1676955 (not (= lambda!365408 lambda!365369))))

(declare-fun bs!1676956 () Bool)

(assert (= bs!1676956 (and d!2060090 b!6565241)))

(assert (=> bs!1676956 (not (= lambda!365408 lambda!365376))))

(assert (=> bs!1676954 (not (= lambda!365408 lambda!365407))))

(assert (=> bs!1676952 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365408 lambda!365388))))

(assert (=> bs!1676956 (not (= lambda!365408 lambda!365377))))

(assert (=> bs!1676955 (= (and (= (_1!36723 lt!2407152) s!2326) (= (reg!16770 (regOne!33394 r!7292)) (regOne!33394 r!7292)) (= lt!2407122 (regTwo!33394 r!7292))) (= lambda!365408 lambda!365368))))

(assert (=> bs!1676956 (= lambda!365408 lambda!365375)))

(assert (=> bs!1676953 (not (= lambda!365408 lambda!365374))))

(assert (=> d!2060090 true))

(assert (=> d!2060090 true))

(assert (=> d!2060090 true))

(assert (=> d!2060090 (= (isDefined!13035 (findConcatSeparation!2746 (reg!16770 (regOne!33394 r!7292)) lt!2407122 Nil!65498 (_1!36723 lt!2407152) (_1!36723 lt!2407152))) (Exists!3511 lambda!365408))))

(declare-fun lt!2407246 () Unit!159099)

(assert (=> d!2060090 (= lt!2407246 (choose!48991 (reg!16770 (regOne!33394 r!7292)) lt!2407122 (_1!36723 lt!2407152)))))

(assert (=> d!2060090 (validRegex!8177 (reg!16770 (regOne!33394 r!7292)))))

(assert (=> d!2060090 (= (lemmaFindConcatSeparationEquivalentToExists!2510 (reg!16770 (regOne!33394 r!7292)) lt!2407122 (_1!36723 lt!2407152)) lt!2407246)))

(declare-fun bs!1676957 () Bool)

(assert (= bs!1676957 d!2060090))

(assert (=> bs!1676957 m!7347494))

(declare-fun m!7347796 () Bool)

(assert (=> bs!1676957 m!7347796))

(declare-fun m!7347798 () Bool)

(assert (=> bs!1676957 m!7347798))

(assert (=> bs!1676957 m!7347724))

(assert (=> bs!1676957 m!7347494))

(declare-fun m!7347800 () Bool)

(assert (=> bs!1676957 m!7347800))

(assert (=> b!6565241 d!2060090))

(declare-fun b!6565631 () Bool)

(declare-fun lt!2407251 () Unit!159099)

(declare-fun lt!2407252 () Unit!159099)

(assert (=> b!6565631 (= lt!2407251 lt!2407252)))

(assert (=> b!6565631 (= (++!14584 (++!14584 Nil!65498 (Cons!65498 (h!71946 (_1!36723 lt!2407152)) Nil!65498)) (t!379266 (_1!36723 lt!2407152))) (_1!36723 lt!2407152))))

(assert (=> b!6565631 (= lt!2407252 (lemmaMoveElementToOtherListKeepsConcatEq!2583 Nil!65498 (h!71946 (_1!36723 lt!2407152)) (t!379266 (_1!36723 lt!2407152)) (_1!36723 lt!2407152)))))

(declare-fun e!3974379 () Option!16332)

(assert (=> b!6565631 (= e!3974379 (findConcatSeparation!2746 (reg!16770 (regOne!33394 r!7292)) lt!2407122 (++!14584 Nil!65498 (Cons!65498 (h!71946 (_1!36723 lt!2407152)) Nil!65498)) (t!379266 (_1!36723 lt!2407152)) (_1!36723 lt!2407152)))))

(declare-fun b!6565632 () Bool)

(assert (=> b!6565632 (= e!3974379 None!16331)))

(declare-fun b!6565633 () Bool)

(declare-fun e!3974375 () Option!16332)

(assert (=> b!6565633 (= e!3974375 (Some!16331 (tuple2!66841 Nil!65498 (_1!36723 lt!2407152))))))

(declare-fun b!6565634 () Bool)

(declare-fun res!2694321 () Bool)

(declare-fun e!3974378 () Bool)

(assert (=> b!6565634 (=> (not res!2694321) (not e!3974378))))

(declare-fun lt!2407253 () Option!16332)

(assert (=> b!6565634 (= res!2694321 (matchR!8624 lt!2407122 (_2!36723 (get!22743 lt!2407253))))))

(declare-fun b!6565635 () Bool)

(assert (=> b!6565635 (= e!3974378 (= (++!14584 (_1!36723 (get!22743 lt!2407253)) (_2!36723 (get!22743 lt!2407253))) (_1!36723 lt!2407152)))))

(declare-fun b!6565636 () Bool)

(declare-fun e!3974376 () Bool)

(assert (=> b!6565636 (= e!3974376 (not (isDefined!13035 lt!2407253)))))

(declare-fun b!6565637 () Bool)

(declare-fun e!3974377 () Bool)

(assert (=> b!6565637 (= e!3974377 (matchR!8624 lt!2407122 (_1!36723 lt!2407152)))))

(declare-fun d!2060096 () Bool)

(assert (=> d!2060096 e!3974376))

(declare-fun res!2694318 () Bool)

(assert (=> d!2060096 (=> res!2694318 e!3974376)))

(assert (=> d!2060096 (= res!2694318 e!3974378)))

(declare-fun res!2694320 () Bool)

(assert (=> d!2060096 (=> (not res!2694320) (not e!3974378))))

(assert (=> d!2060096 (= res!2694320 (isDefined!13035 lt!2407253))))

(assert (=> d!2060096 (= lt!2407253 e!3974375)))

(declare-fun c!1206710 () Bool)

(assert (=> d!2060096 (= c!1206710 e!3974377)))

(declare-fun res!2694317 () Bool)

(assert (=> d!2060096 (=> (not res!2694317) (not e!3974377))))

(assert (=> d!2060096 (= res!2694317 (matchR!8624 (reg!16770 (regOne!33394 r!7292)) Nil!65498))))

(assert (=> d!2060096 (validRegex!8177 (reg!16770 (regOne!33394 r!7292)))))

(assert (=> d!2060096 (= (findConcatSeparation!2746 (reg!16770 (regOne!33394 r!7292)) lt!2407122 Nil!65498 (_1!36723 lt!2407152) (_1!36723 lt!2407152)) lt!2407253)))

(declare-fun b!6565638 () Bool)

(assert (=> b!6565638 (= e!3974375 e!3974379)))

(declare-fun c!1206711 () Bool)

(assert (=> b!6565638 (= c!1206711 ((_ is Nil!65498) (_1!36723 lt!2407152)))))

(declare-fun b!6565639 () Bool)

(declare-fun res!2694319 () Bool)

(assert (=> b!6565639 (=> (not res!2694319) (not e!3974378))))

(assert (=> b!6565639 (= res!2694319 (matchR!8624 (reg!16770 (regOne!33394 r!7292)) (_1!36723 (get!22743 lt!2407253))))))

(assert (= (and d!2060096 res!2694317) b!6565637))

(assert (= (and d!2060096 c!1206710) b!6565633))

(assert (= (and d!2060096 (not c!1206710)) b!6565638))

(assert (= (and b!6565638 c!1206711) b!6565632))

(assert (= (and b!6565638 (not c!1206711)) b!6565631))

(assert (= (and d!2060096 res!2694320) b!6565639))

(assert (= (and b!6565639 res!2694319) b!6565634))

(assert (= (and b!6565634 res!2694321) b!6565635))

(assert (= (and d!2060096 (not res!2694318)) b!6565636))

(declare-fun m!7347814 () Bool)

(assert (=> d!2060096 m!7347814))

(declare-fun m!7347816 () Bool)

(assert (=> d!2060096 m!7347816))

(assert (=> d!2060096 m!7347724))

(assert (=> b!6565636 m!7347814))

(declare-fun m!7347818 () Bool)

(assert (=> b!6565631 m!7347818))

(assert (=> b!6565631 m!7347818))

(declare-fun m!7347820 () Bool)

(assert (=> b!6565631 m!7347820))

(declare-fun m!7347822 () Bool)

(assert (=> b!6565631 m!7347822))

(assert (=> b!6565631 m!7347818))

(declare-fun m!7347824 () Bool)

(assert (=> b!6565631 m!7347824))

(declare-fun m!7347826 () Bool)

(assert (=> b!6565635 m!7347826))

(declare-fun m!7347828 () Bool)

(assert (=> b!6565635 m!7347828))

(assert (=> b!6565634 m!7347826))

(declare-fun m!7347830 () Bool)

(assert (=> b!6565634 m!7347830))

(assert (=> b!6565639 m!7347826))

(declare-fun m!7347832 () Bool)

(assert (=> b!6565639 m!7347832))

(declare-fun m!7347834 () Bool)

(assert (=> b!6565637 m!7347834))

(assert (=> b!6565241 d!2060096))

(declare-fun b!6565644 () Bool)

(declare-fun e!3974386 () Bool)

(declare-fun e!3974387 () Bool)

(assert (=> b!6565644 (= e!3974386 e!3974387)))

(declare-fun res!2694325 () Bool)

(assert (=> b!6565644 (=> (not res!2694325) (not e!3974387))))

(declare-fun lt!2407255 () Bool)

(assert (=> b!6565644 (= res!2694325 (not lt!2407255))))

(declare-fun b!6565645 () Bool)

(declare-fun e!3974388 () Bool)

(assert (=> b!6565645 (= e!3974388 (not lt!2407255))))

(declare-fun b!6565646 () Bool)

(declare-fun res!2694330 () Bool)

(assert (=> b!6565646 (=> res!2694330 e!3974386)))

(declare-fun e!3974382 () Bool)

(assert (=> b!6565646 (= res!2694330 e!3974382)))

(declare-fun res!2694329 () Bool)

(assert (=> b!6565646 (=> (not res!2694329) (not e!3974382))))

(assert (=> b!6565646 (= res!2694329 lt!2407255)))

(declare-fun b!6565647 () Bool)

(declare-fun res!2694331 () Bool)

(declare-fun e!3974383 () Bool)

(assert (=> b!6565647 (=> res!2694331 e!3974383)))

(assert (=> b!6565647 (= res!2694331 (not (isEmpty!37743 (tail!12416 (_1!36723 lt!2407169)))))))

(declare-fun b!6565648 () Bool)

(assert (=> b!6565648 (= e!3974387 e!3974383)))

(declare-fun res!2694324 () Bool)

(assert (=> b!6565648 (=> res!2694324 e!3974383)))

(declare-fun call!571225 () Bool)

(assert (=> b!6565648 (= res!2694324 call!571225)))

(declare-fun b!6565649 () Bool)

(assert (=> b!6565649 (= e!3974383 (not (= (head!13331 (_1!36723 lt!2407169)) (c!1206624 (reg!16770 (regOne!33394 r!7292))))))))

(declare-fun b!6565650 () Bool)

(declare-fun res!2694327 () Bool)

(assert (=> b!6565650 (=> (not res!2694327) (not e!3974382))))

(assert (=> b!6565650 (= res!2694327 (isEmpty!37743 (tail!12416 (_1!36723 lt!2407169))))))

(declare-fun b!6565651 () Bool)

(declare-fun e!3974384 () Bool)

(assert (=> b!6565651 (= e!3974384 (nullable!6434 (reg!16770 (regOne!33394 r!7292))))))

(declare-fun b!6565652 () Bool)

(declare-fun e!3974385 () Bool)

(assert (=> b!6565652 (= e!3974385 e!3974388)))

(declare-fun c!1206715 () Bool)

(assert (=> b!6565652 (= c!1206715 ((_ is EmptyLang!16441) (reg!16770 (regOne!33394 r!7292))))))

(declare-fun b!6565653 () Bool)

(declare-fun res!2694328 () Bool)

(assert (=> b!6565653 (=> (not res!2694328) (not e!3974382))))

(assert (=> b!6565653 (= res!2694328 (not call!571225))))

(declare-fun b!6565654 () Bool)

(declare-fun res!2694326 () Bool)

(assert (=> b!6565654 (=> res!2694326 e!3974386)))

(assert (=> b!6565654 (= res!2694326 (not ((_ is ElementMatch!16441) (reg!16770 (regOne!33394 r!7292)))))))

(assert (=> b!6565654 (= e!3974388 e!3974386)))

(declare-fun b!6565655 () Bool)

(assert (=> b!6565655 (= e!3974385 (= lt!2407255 call!571225))))

(declare-fun b!6565656 () Bool)

(assert (=> b!6565656 (= e!3974382 (= (head!13331 (_1!36723 lt!2407169)) (c!1206624 (reg!16770 (regOne!33394 r!7292)))))))

(declare-fun b!6565657 () Bool)

(assert (=> b!6565657 (= e!3974384 (matchR!8624 (derivativeStep!5124 (reg!16770 (regOne!33394 r!7292)) (head!13331 (_1!36723 lt!2407169))) (tail!12416 (_1!36723 lt!2407169))))))

(declare-fun bm!571220 () Bool)

(assert (=> bm!571220 (= call!571225 (isEmpty!37743 (_1!36723 lt!2407169)))))

(declare-fun d!2060102 () Bool)

(assert (=> d!2060102 e!3974385))

(declare-fun c!1206713 () Bool)

(assert (=> d!2060102 (= c!1206713 ((_ is EmptyExpr!16441) (reg!16770 (regOne!33394 r!7292))))))

(assert (=> d!2060102 (= lt!2407255 e!3974384)))

(declare-fun c!1206714 () Bool)

(assert (=> d!2060102 (= c!1206714 (isEmpty!37743 (_1!36723 lt!2407169)))))

(assert (=> d!2060102 (validRegex!8177 (reg!16770 (regOne!33394 r!7292)))))

(assert (=> d!2060102 (= (matchR!8624 (reg!16770 (regOne!33394 r!7292)) (_1!36723 lt!2407169)) lt!2407255)))

(assert (= (and d!2060102 c!1206714) b!6565651))

(assert (= (and d!2060102 (not c!1206714)) b!6565657))

(assert (= (and d!2060102 c!1206713) b!6565655))

(assert (= (and d!2060102 (not c!1206713)) b!6565652))

(assert (= (and b!6565652 c!1206715) b!6565645))

(assert (= (and b!6565652 (not c!1206715)) b!6565654))

(assert (= (and b!6565654 (not res!2694326)) b!6565646))

(assert (= (and b!6565646 res!2694329) b!6565653))

(assert (= (and b!6565653 res!2694328) b!6565650))

(assert (= (and b!6565650 res!2694327) b!6565656))

(assert (= (and b!6565646 (not res!2694330)) b!6565644))

(assert (= (and b!6565644 res!2694325) b!6565648))

(assert (= (and b!6565648 (not res!2694324)) b!6565647))

(assert (= (and b!6565647 (not res!2694331)) b!6565649))

(assert (= (or b!6565655 b!6565648 b!6565653) bm!571220))

(declare-fun m!7347836 () Bool)

(assert (=> b!6565656 m!7347836))

(assert (=> b!6565657 m!7347836))

(assert (=> b!6565657 m!7347836))

(declare-fun m!7347838 () Bool)

(assert (=> b!6565657 m!7347838))

(declare-fun m!7347840 () Bool)

(assert (=> b!6565657 m!7347840))

(assert (=> b!6565657 m!7347838))

(assert (=> b!6565657 m!7347840))

(declare-fun m!7347842 () Bool)

(assert (=> b!6565657 m!7347842))

(assert (=> b!6565650 m!7347840))

(assert (=> b!6565650 m!7347840))

(declare-fun m!7347844 () Bool)

(assert (=> b!6565650 m!7347844))

(assert (=> b!6565647 m!7347840))

(assert (=> b!6565647 m!7347840))

(assert (=> b!6565647 m!7347844))

(assert (=> b!6565649 m!7347836))

(declare-fun m!7347846 () Bool)

(assert (=> d!2060102 m!7347846))

(assert (=> d!2060102 m!7347724))

(declare-fun m!7347848 () Bool)

(assert (=> b!6565651 m!7347848))

(assert (=> bm!571220 m!7347846))

(assert (=> b!6565241 d!2060102))

(declare-fun d!2060104 () Bool)

(assert (=> d!2060104 (= (get!22743 lt!2407128) (v!52516 lt!2407128))))

(assert (=> b!6565241 d!2060104))

(declare-fun d!2060106 () Bool)

(assert (=> d!2060106 (= (isDefined!13035 lt!2407128) (not (isEmpty!37744 lt!2407128)))))

(declare-fun bs!1676959 () Bool)

(assert (= bs!1676959 d!2060106))

(declare-fun m!7347850 () Bool)

(assert (=> bs!1676959 m!7347850))

(assert (=> b!6565241 d!2060106))

(declare-fun d!2060108 () Bool)

(assert (=> d!2060108 (= (matchR!8624 lt!2407124 (_1!36723 lt!2407152)) (matchRSpec!3542 lt!2407124 (_1!36723 lt!2407152)))))

(declare-fun lt!2407260 () Unit!159099)

(declare-fun choose!48999 (Regex!16441 List!65622) Unit!159099)

(assert (=> d!2060108 (= lt!2407260 (choose!48999 lt!2407124 (_1!36723 lt!2407152)))))

(assert (=> d!2060108 (validRegex!8177 lt!2407124)))

(assert (=> d!2060108 (= (mainMatchTheorem!3542 lt!2407124 (_1!36723 lt!2407152)) lt!2407260)))

(declare-fun bs!1676960 () Bool)

(assert (= bs!1676960 d!2060108))

(assert (=> bs!1676960 m!7347406))

(assert (=> bs!1676960 m!7347502))

(declare-fun m!7347852 () Bool)

(assert (=> bs!1676960 m!7347852))

(declare-fun m!7347854 () Bool)

(assert (=> bs!1676960 m!7347854))

(assert (=> b!6565241 d!2060108))

(declare-fun b!6565665 () Bool)

(declare-fun lt!2407261 () List!65622)

(declare-fun e!3974392 () Bool)

(assert (=> b!6565665 (= e!3974392 (or (not (= (_2!36723 lt!2407152) Nil!65498)) (= lt!2407261 (++!14584 (_1!36723 lt!2407169) (_2!36723 lt!2407169)))))))

(declare-fun d!2060110 () Bool)

(assert (=> d!2060110 e!3974392))

(declare-fun res!2694337 () Bool)

(assert (=> d!2060110 (=> (not res!2694337) (not e!3974392))))

(assert (=> d!2060110 (= res!2694337 (= (content!12603 lt!2407261) ((_ map or) (content!12603 (++!14584 (_1!36723 lt!2407169) (_2!36723 lt!2407169))) (content!12603 (_2!36723 lt!2407152)))))))

(declare-fun e!3974391 () List!65622)

(assert (=> d!2060110 (= lt!2407261 e!3974391)))

(declare-fun c!1206716 () Bool)

(assert (=> d!2060110 (= c!1206716 ((_ is Nil!65498) (++!14584 (_1!36723 lt!2407169) (_2!36723 lt!2407169))))))

(assert (=> d!2060110 (= (++!14584 (++!14584 (_1!36723 lt!2407169) (_2!36723 lt!2407169)) (_2!36723 lt!2407152)) lt!2407261)))

(declare-fun b!6565664 () Bool)

(declare-fun res!2694336 () Bool)

(assert (=> b!6565664 (=> (not res!2694336) (not e!3974392))))

(assert (=> b!6565664 (= res!2694336 (= (size!40530 lt!2407261) (+ (size!40530 (++!14584 (_1!36723 lt!2407169) (_2!36723 lt!2407169))) (size!40530 (_2!36723 lt!2407152)))))))

(declare-fun b!6565662 () Bool)

(assert (=> b!6565662 (= e!3974391 (_2!36723 lt!2407152))))

(declare-fun b!6565663 () Bool)

(assert (=> b!6565663 (= e!3974391 (Cons!65498 (h!71946 (++!14584 (_1!36723 lt!2407169) (_2!36723 lt!2407169))) (++!14584 (t!379266 (++!14584 (_1!36723 lt!2407169) (_2!36723 lt!2407169))) (_2!36723 lt!2407152))))))

(assert (= (and d!2060110 c!1206716) b!6565662))

(assert (= (and d!2060110 (not c!1206716)) b!6565663))

(assert (= (and d!2060110 res!2694337) b!6565664))

(assert (= (and b!6565664 res!2694336) b!6565665))

(declare-fun m!7347856 () Bool)

(assert (=> d!2060110 m!7347856))

(assert (=> d!2060110 m!7347508))

(declare-fun m!7347858 () Bool)

(assert (=> d!2060110 m!7347858))

(assert (=> d!2060110 m!7347730))

(declare-fun m!7347860 () Bool)

(assert (=> b!6565664 m!7347860))

(assert (=> b!6565664 m!7347508))

(declare-fun m!7347862 () Bool)

(assert (=> b!6565664 m!7347862))

(assert (=> b!6565664 m!7347736))

(declare-fun m!7347864 () Bool)

(assert (=> b!6565663 m!7347864))

(assert (=> b!6565241 d!2060110))

(declare-fun d!2060112 () Bool)

(assert (=> d!2060112 (= (Exists!3511 lambda!365377) (choose!48988 lambda!365377))))

(declare-fun bs!1676961 () Bool)

(assert (= bs!1676961 d!2060112))

(declare-fun m!7347866 () Bool)

(assert (=> bs!1676961 m!7347866))

(assert (=> b!6565241 d!2060112))

(declare-fun b!6565669 () Bool)

(declare-fun e!3974394 () Bool)

(declare-fun lt!2407262 () List!65622)

(assert (=> b!6565669 (= e!3974394 (or (not (= (_2!36723 lt!2407169) Nil!65498)) (= lt!2407262 (_1!36723 lt!2407169))))))

(declare-fun d!2060114 () Bool)

(assert (=> d!2060114 e!3974394))

(declare-fun res!2694339 () Bool)

(assert (=> d!2060114 (=> (not res!2694339) (not e!3974394))))

(assert (=> d!2060114 (= res!2694339 (= (content!12603 lt!2407262) ((_ map or) (content!12603 (_1!36723 lt!2407169)) (content!12603 (_2!36723 lt!2407169)))))))

(declare-fun e!3974393 () List!65622)

(assert (=> d!2060114 (= lt!2407262 e!3974393)))

(declare-fun c!1206717 () Bool)

(assert (=> d!2060114 (= c!1206717 ((_ is Nil!65498) (_1!36723 lt!2407169)))))

(assert (=> d!2060114 (= (++!14584 (_1!36723 lt!2407169) (_2!36723 lt!2407169)) lt!2407262)))

(declare-fun b!6565668 () Bool)

(declare-fun res!2694338 () Bool)

(assert (=> b!6565668 (=> (not res!2694338) (not e!3974394))))

(assert (=> b!6565668 (= res!2694338 (= (size!40530 lt!2407262) (+ (size!40530 (_1!36723 lt!2407169)) (size!40530 (_2!36723 lt!2407169)))))))

(declare-fun b!6565666 () Bool)

(assert (=> b!6565666 (= e!3974393 (_2!36723 lt!2407169))))

(declare-fun b!6565667 () Bool)

(assert (=> b!6565667 (= e!3974393 (Cons!65498 (h!71946 (_1!36723 lt!2407169)) (++!14584 (t!379266 (_1!36723 lt!2407169)) (_2!36723 lt!2407169))))))

(assert (= (and d!2060114 c!1206717) b!6565666))

(assert (= (and d!2060114 (not c!1206717)) b!6565667))

(assert (= (and d!2060114 res!2694339) b!6565668))

(assert (= (and b!6565668 res!2694338) b!6565669))

(declare-fun m!7347868 () Bool)

(assert (=> d!2060114 m!7347868))

(assert (=> d!2060114 m!7347752))

(assert (=> d!2060114 m!7347728))

(declare-fun m!7347870 () Bool)

(assert (=> b!6565668 m!7347870))

(assert (=> b!6565668 m!7347762))

(assert (=> b!6565668 m!7347734))

(declare-fun m!7347872 () Bool)

(assert (=> b!6565667 m!7347872))

(assert (=> b!6565241 d!2060114))

(declare-fun d!2060116 () Bool)

(assert (=> d!2060116 (= (Exists!3511 lambda!365376) (choose!48988 lambda!365376))))

(declare-fun bs!1676962 () Bool)

(assert (= bs!1676962 d!2060116))

(declare-fun m!7347874 () Bool)

(assert (=> bs!1676962 m!7347874))

(assert (=> b!6565241 d!2060116))

(declare-fun bs!1676971 () Bool)

(declare-fun b!6565714 () Bool)

(assert (= bs!1676971 (and b!6565714 d!2060076)))

(declare-fun lambda!365421 () Int)

(assert (=> bs!1676971 (not (= lambda!365421 lambda!365404))))

(assert (=> bs!1676971 (= (and (= (reg!16770 lt!2407124) (reg!16770 (regOne!33394 r!7292))) (= lt!2407124 (Star!16441 (reg!16770 (regOne!33394 r!7292))))) (= lambda!365421 lambda!365405))))

(declare-fun bs!1676972 () Bool)

(assert (= bs!1676972 (and b!6565714 d!2060050)))

(assert (=> bs!1676972 (not (= lambda!365421 lambda!365389))))

(declare-fun bs!1676973 () Bool)

(assert (= bs!1676973 (and b!6565714 b!6565271)))

(assert (=> bs!1676973 (not (= lambda!365421 lambda!365373))))

(declare-fun bs!1676974 () Bool)

(assert (= bs!1676974 (and b!6565714 d!2060084)))

(assert (=> bs!1676974 (not (= lambda!365421 lambda!365406))))

(declare-fun bs!1676975 () Bool)

(assert (= bs!1676975 (and b!6565714 b!6565238)))

(assert (=> bs!1676975 (not (= lambda!365421 lambda!365369))))

(declare-fun bs!1676976 () Bool)

(assert (= bs!1676976 (and b!6565714 b!6565241)))

(assert (=> bs!1676976 (not (= lambda!365421 lambda!365376))))

(assert (=> bs!1676974 (not (= lambda!365421 lambda!365407))))

(assert (=> bs!1676972 (not (= lambda!365421 lambda!365388))))

(assert (=> bs!1676976 (= (and (= (reg!16770 lt!2407124) (reg!16770 (regOne!33394 r!7292))) (= lt!2407124 lt!2407122)) (= lambda!365421 lambda!365377))))

(assert (=> bs!1676975 (not (= lambda!365421 lambda!365368))))

(declare-fun bs!1676977 () Bool)

(assert (= bs!1676977 (and b!6565714 d!2060090)))

(assert (=> bs!1676977 (not (= lambda!365421 lambda!365408))))

(declare-fun bs!1676978 () Bool)

(assert (= bs!1676978 (and b!6565714 d!2060046)))

(assert (=> bs!1676978 (not (= lambda!365421 lambda!365380))))

(assert (=> bs!1676976 (not (= lambda!365421 lambda!365375))))

(assert (=> bs!1676973 (not (= lambda!365421 lambda!365374))))

(assert (=> b!6565714 true))

(assert (=> b!6565714 true))

(declare-fun bs!1676979 () Bool)

(declare-fun b!6565719 () Bool)

(assert (= bs!1676979 (and b!6565719 d!2060076)))

(declare-fun lambda!365424 () Int)

(assert (=> bs!1676979 (not (= lambda!365424 lambda!365404))))

(assert (=> bs!1676979 (not (= lambda!365424 lambda!365405))))

(declare-fun bs!1676980 () Bool)

(assert (= bs!1676980 (and b!6565719 d!2060050)))

(assert (=> bs!1676980 (= (and (= (_1!36723 lt!2407152) s!2326) (= (regOne!33394 lt!2407124) (regOne!33394 r!7292)) (= (regTwo!33394 lt!2407124) (regTwo!33394 r!7292))) (= lambda!365424 lambda!365389))))

(declare-fun bs!1676981 () Bool)

(assert (= bs!1676981 (and b!6565719 b!6565271)))

(assert (=> bs!1676981 (not (= lambda!365424 lambda!365373))))

(declare-fun bs!1676982 () Bool)

(assert (= bs!1676982 (and b!6565719 d!2060084)))

(assert (=> bs!1676982 (not (= lambda!365424 lambda!365406))))

(declare-fun bs!1676983 () Bool)

(assert (= bs!1676983 (and b!6565719 b!6565238)))

(assert (=> bs!1676983 (= (and (= (_1!36723 lt!2407152) s!2326) (= (regOne!33394 lt!2407124) (regOne!33394 r!7292)) (= (regTwo!33394 lt!2407124) (regTwo!33394 r!7292))) (= lambda!365424 lambda!365369))))

(declare-fun bs!1676984 () Bool)

(assert (= bs!1676984 (and b!6565719 b!6565241)))

(assert (=> bs!1676984 (= (and (= (regOne!33394 lt!2407124) (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 lt!2407124) lt!2407122)) (= lambda!365424 lambda!365376))))

(assert (=> bs!1676982 (= (and (= (regOne!33394 lt!2407124) (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 lt!2407124) lt!2407122)) (= lambda!365424 lambda!365407))))

(assert (=> bs!1676980 (not (= lambda!365424 lambda!365388))))

(declare-fun bs!1676988 () Bool)

(assert (= bs!1676988 (and b!6565719 b!6565714)))

(assert (=> bs!1676988 (not (= lambda!365424 lambda!365421))))

(assert (=> bs!1676984 (not (= lambda!365424 lambda!365377))))

(assert (=> bs!1676983 (not (= lambda!365424 lambda!365368))))

(declare-fun bs!1676990 () Bool)

(assert (= bs!1676990 (and b!6565719 d!2060090)))

(assert (=> bs!1676990 (not (= lambda!365424 lambda!365408))))

(declare-fun bs!1676992 () Bool)

(assert (= bs!1676992 (and b!6565719 d!2060046)))

(assert (=> bs!1676992 (not (= lambda!365424 lambda!365380))))

(assert (=> bs!1676984 (not (= lambda!365424 lambda!365375))))

(assert (=> bs!1676981 (= (and (= (_1!36723 lt!2407152) s!2326) (= (regOne!33394 lt!2407124) lt!2407124) (= (regTwo!33394 lt!2407124) (regTwo!33394 r!7292))) (= lambda!365424 lambda!365374))))

(assert (=> b!6565719 true))

(assert (=> b!6565719 true))

(declare-fun d!2060118 () Bool)

(declare-fun c!1206728 () Bool)

(assert (=> d!2060118 (= c!1206728 ((_ is EmptyExpr!16441) lt!2407124))))

(declare-fun e!3974422 () Bool)

(assert (=> d!2060118 (= (matchRSpec!3542 lt!2407124 (_1!36723 lt!2407152)) e!3974422)))

(declare-fun b!6565710 () Bool)

(declare-fun call!571230 () Bool)

(assert (=> b!6565710 (= e!3974422 call!571230)))

(declare-fun b!6565711 () Bool)

(declare-fun c!1206727 () Bool)

(assert (=> b!6565711 (= c!1206727 ((_ is ElementMatch!16441) lt!2407124))))

(declare-fun e!3974423 () Bool)

(declare-fun e!3974419 () Bool)

(assert (=> b!6565711 (= e!3974423 e!3974419)))

(declare-fun b!6565712 () Bool)

(assert (=> b!6565712 (= e!3974422 e!3974423)))

(declare-fun res!2694364 () Bool)

(assert (=> b!6565712 (= res!2694364 (not ((_ is EmptyLang!16441) lt!2407124)))))

(assert (=> b!6565712 (=> (not res!2694364) (not e!3974423))))

(declare-fun b!6565713 () Bool)

(declare-fun e!3974421 () Bool)

(declare-fun e!3974420 () Bool)

(assert (=> b!6565713 (= e!3974421 e!3974420)))

(declare-fun c!1206729 () Bool)

(assert (=> b!6565713 (= c!1206729 ((_ is Star!16441) lt!2407124))))

(declare-fun e!3974418 () Bool)

(declare-fun call!571231 () Bool)

(assert (=> b!6565714 (= e!3974418 call!571231)))

(declare-fun b!6565715 () Bool)

(assert (=> b!6565715 (= e!3974419 (= (_1!36723 lt!2407152) (Cons!65498 (c!1206624 lt!2407124) Nil!65498)))))

(declare-fun b!6565716 () Bool)

(declare-fun res!2694365 () Bool)

(assert (=> b!6565716 (=> res!2694365 e!3974418)))

(assert (=> b!6565716 (= res!2694365 call!571230)))

(assert (=> b!6565716 (= e!3974420 e!3974418)))

(declare-fun b!6565717 () Bool)

(declare-fun c!1206726 () Bool)

(assert (=> b!6565717 (= c!1206726 ((_ is Union!16441) lt!2407124))))

(assert (=> b!6565717 (= e!3974419 e!3974421)))

(declare-fun bm!571225 () Bool)

(assert (=> bm!571225 (= call!571230 (isEmpty!37743 (_1!36723 lt!2407152)))))

(declare-fun b!6565718 () Bool)

(declare-fun e!3974417 () Bool)

(assert (=> b!6565718 (= e!3974417 (matchRSpec!3542 (regTwo!33395 lt!2407124) (_1!36723 lt!2407152)))))

(assert (=> b!6565719 (= e!3974420 call!571231)))

(declare-fun bm!571226 () Bool)

(assert (=> bm!571226 (= call!571231 (Exists!3511 (ite c!1206729 lambda!365421 lambda!365424)))))

(declare-fun b!6565720 () Bool)

(assert (=> b!6565720 (= e!3974421 e!3974417)))

(declare-fun res!2694366 () Bool)

(assert (=> b!6565720 (= res!2694366 (matchRSpec!3542 (regOne!33395 lt!2407124) (_1!36723 lt!2407152)))))

(assert (=> b!6565720 (=> res!2694366 e!3974417)))

(assert (= (and d!2060118 c!1206728) b!6565710))

(assert (= (and d!2060118 (not c!1206728)) b!6565712))

(assert (= (and b!6565712 res!2694364) b!6565711))

(assert (= (and b!6565711 c!1206727) b!6565715))

(assert (= (and b!6565711 (not c!1206727)) b!6565717))

(assert (= (and b!6565717 c!1206726) b!6565720))

(assert (= (and b!6565717 (not c!1206726)) b!6565713))

(assert (= (and b!6565720 (not res!2694366)) b!6565718))

(assert (= (and b!6565713 c!1206729) b!6565716))

(assert (= (and b!6565713 (not c!1206729)) b!6565719))

(assert (= (and b!6565716 (not res!2694365)) b!6565714))

(assert (= (or b!6565714 b!6565719) bm!571226))

(assert (= (or b!6565710 b!6565716) bm!571225))

(declare-fun m!7347884 () Bool)

(assert (=> bm!571225 m!7347884))

(declare-fun m!7347886 () Bool)

(assert (=> b!6565718 m!7347886))

(declare-fun m!7347888 () Bool)

(assert (=> bm!571226 m!7347888))

(declare-fun m!7347890 () Bool)

(assert (=> b!6565720 m!7347890))

(assert (=> b!6565241 d!2060118))

(declare-fun d!2060124 () Bool)

(assert (=> d!2060124 (= (flatMap!1946 lt!2407147 lambda!365370) (choose!48987 lt!2407147 lambda!365370))))

(declare-fun bs!1676995 () Bool)

(assert (= bs!1676995 d!2060124))

(declare-fun m!7347892 () Bool)

(assert (=> bs!1676995 m!7347892))

(assert (=> b!6565243 d!2060124))

(declare-fun b!6565727 () Bool)

(declare-fun e!3974426 () Bool)

(assert (=> b!6565727 (= e!3974426 (nullable!6434 (h!71947 (exprs!6325 lt!2407139))))))

(declare-fun b!6565729 () Bool)

(declare-fun e!3974428 () (InoxSet Context!11650))

(declare-fun e!3974427 () (InoxSet Context!11650))

(assert (=> b!6565729 (= e!3974428 e!3974427)))

(declare-fun c!1206731 () Bool)

(assert (=> b!6565729 (= c!1206731 ((_ is Cons!65499) (exprs!6325 lt!2407139)))))

(declare-fun b!6565730 () Bool)

(declare-fun call!571232 () (InoxSet Context!11650))

(assert (=> b!6565730 (= e!3974427 call!571232)))

(declare-fun b!6565731 () Bool)

(assert (=> b!6565731 (= e!3974428 ((_ map or) call!571232 (derivationStepZipperUp!1615 (Context!11651 (t!379267 (exprs!6325 lt!2407139))) (h!71946 s!2326))))))

(declare-fun bm!571227 () Bool)

(assert (=> bm!571227 (= call!571232 (derivationStepZipperDown!1689 (h!71947 (exprs!6325 lt!2407139)) (Context!11651 (t!379267 (exprs!6325 lt!2407139))) (h!71946 s!2326)))))

(declare-fun b!6565728 () Bool)

(assert (=> b!6565728 (= e!3974427 ((as const (Array Context!11650 Bool)) false))))

(declare-fun d!2060126 () Bool)

(declare-fun c!1206730 () Bool)

(assert (=> d!2060126 (= c!1206730 e!3974426)))

(declare-fun res!2694373 () Bool)

(assert (=> d!2060126 (=> (not res!2694373) (not e!3974426))))

(assert (=> d!2060126 (= res!2694373 ((_ is Cons!65499) (exprs!6325 lt!2407139)))))

(assert (=> d!2060126 (= (derivationStepZipperUp!1615 lt!2407139 (h!71946 s!2326)) e!3974428)))

(assert (= (and d!2060126 res!2694373) b!6565727))

(assert (= (and d!2060126 c!1206730) b!6565731))

(assert (= (and d!2060126 (not c!1206730)) b!6565729))

(assert (= (and b!6565729 c!1206731) b!6565730))

(assert (= (and b!6565729 (not c!1206731)) b!6565728))

(assert (= (or b!6565731 b!6565730) bm!571227))

(declare-fun m!7347894 () Bool)

(assert (=> b!6565727 m!7347894))

(declare-fun m!7347896 () Bool)

(assert (=> b!6565731 m!7347896))

(declare-fun m!7347898 () Bool)

(assert (=> bm!571227 m!7347898))

(assert (=> b!6565243 d!2060126))

(declare-fun d!2060128 () Bool)

(assert (=> d!2060128 (= (flatMap!1946 lt!2407147 lambda!365370) (dynLambda!26054 lambda!365370 lt!2407139))))

(declare-fun lt!2407267 () Unit!159099)

(assert (=> d!2060128 (= lt!2407267 (choose!48986 lt!2407147 lt!2407139 lambda!365370))))

(assert (=> d!2060128 (= lt!2407147 (store ((as const (Array Context!11650 Bool)) false) lt!2407139 true))))

(assert (=> d!2060128 (= (lemmaFlatMapOnSingletonSet!1472 lt!2407147 lt!2407139 lambda!365370) lt!2407267)))

(declare-fun b_lambda!248341 () Bool)

(assert (=> (not b_lambda!248341) (not d!2060128)))

(declare-fun bs!1676997 () Bool)

(assert (= bs!1676997 d!2060128))

(assert (=> bs!1676997 m!7347328))

(declare-fun m!7347900 () Bool)

(assert (=> bs!1676997 m!7347900))

(declare-fun m!7347902 () Bool)

(assert (=> bs!1676997 m!7347902))

(assert (=> bs!1676997 m!7347322))

(assert (=> b!6565243 d!2060128))

(declare-fun bs!1676998 () Bool)

(declare-fun d!2060130 () Bool)

(assert (= bs!1676998 (and d!2060130 b!6565242)))

(declare-fun lambda!365429 () Int)

(assert (=> bs!1676998 (= lambda!365429 lambda!365370)))

(assert (=> d!2060130 true))

(assert (=> d!2060130 (= (derivationStepZipper!2407 lt!2407147 (h!71946 s!2326)) (flatMap!1946 lt!2407147 lambda!365429))))

(declare-fun bs!1676999 () Bool)

(assert (= bs!1676999 d!2060130))

(declare-fun m!7347910 () Bool)

(assert (=> bs!1676999 m!7347910))

(assert (=> b!6565243 d!2060130))

(declare-fun d!2060134 () Bool)

(assert (=> d!2060134 (= (flatMap!1946 z!1189 lambda!365370) (choose!48987 z!1189 lambda!365370))))

(declare-fun bs!1677000 () Bool)

(assert (= bs!1677000 d!2060134))

(declare-fun m!7347912 () Bool)

(assert (=> bs!1677000 m!7347912))

(assert (=> b!6565242 d!2060134))

(declare-fun d!2060136 () Bool)

(declare-fun nullableFct!2360 (Regex!16441) Bool)

(assert (=> d!2060136 (= (nullable!6434 (h!71947 (exprs!6325 (h!71948 zl!343)))) (nullableFct!2360 (h!71947 (exprs!6325 (h!71948 zl!343)))))))

(declare-fun bs!1677001 () Bool)

(assert (= bs!1677001 d!2060136))

(declare-fun m!7347914 () Bool)

(assert (=> bs!1677001 m!7347914))

(assert (=> b!6565242 d!2060136))

(declare-fun b!6565736 () Bool)

(declare-fun e!3974429 () Bool)

(assert (=> b!6565736 (= e!3974429 (nullable!6434 (h!71947 (exprs!6325 (Context!11651 (Cons!65499 (h!71947 (exprs!6325 (h!71948 zl!343))) (t!379267 (exprs!6325 (h!71948 zl!343)))))))))))

(declare-fun b!6565738 () Bool)

(declare-fun e!3974431 () (InoxSet Context!11650))

(declare-fun e!3974430 () (InoxSet Context!11650))

(assert (=> b!6565738 (= e!3974431 e!3974430)))

(declare-fun c!1206735 () Bool)

(assert (=> b!6565738 (= c!1206735 ((_ is Cons!65499) (exprs!6325 (Context!11651 (Cons!65499 (h!71947 (exprs!6325 (h!71948 zl!343))) (t!379267 (exprs!6325 (h!71948 zl!343))))))))))

(declare-fun b!6565739 () Bool)

(declare-fun call!571233 () (InoxSet Context!11650))

(assert (=> b!6565739 (= e!3974430 call!571233)))

(declare-fun b!6565740 () Bool)

(assert (=> b!6565740 (= e!3974431 ((_ map or) call!571233 (derivationStepZipperUp!1615 (Context!11651 (t!379267 (exprs!6325 (Context!11651 (Cons!65499 (h!71947 (exprs!6325 (h!71948 zl!343))) (t!379267 (exprs!6325 (h!71948 zl!343)))))))) (h!71946 s!2326))))))

(declare-fun bm!571228 () Bool)

(assert (=> bm!571228 (= call!571233 (derivationStepZipperDown!1689 (h!71947 (exprs!6325 (Context!11651 (Cons!65499 (h!71947 (exprs!6325 (h!71948 zl!343))) (t!379267 (exprs!6325 (h!71948 zl!343))))))) (Context!11651 (t!379267 (exprs!6325 (Context!11651 (Cons!65499 (h!71947 (exprs!6325 (h!71948 zl!343))) (t!379267 (exprs!6325 (h!71948 zl!343)))))))) (h!71946 s!2326)))))

(declare-fun b!6565737 () Bool)

(assert (=> b!6565737 (= e!3974430 ((as const (Array Context!11650 Bool)) false))))

(declare-fun d!2060138 () Bool)

(declare-fun c!1206734 () Bool)

(assert (=> d!2060138 (= c!1206734 e!3974429)))

(declare-fun res!2694374 () Bool)

(assert (=> d!2060138 (=> (not res!2694374) (not e!3974429))))

(assert (=> d!2060138 (= res!2694374 ((_ is Cons!65499) (exprs!6325 (Context!11651 (Cons!65499 (h!71947 (exprs!6325 (h!71948 zl!343))) (t!379267 (exprs!6325 (h!71948 zl!343))))))))))

(assert (=> d!2060138 (= (derivationStepZipperUp!1615 (Context!11651 (Cons!65499 (h!71947 (exprs!6325 (h!71948 zl!343))) (t!379267 (exprs!6325 (h!71948 zl!343))))) (h!71946 s!2326)) e!3974431)))

(assert (= (and d!2060138 res!2694374) b!6565736))

(assert (= (and d!2060138 c!1206734) b!6565740))

(assert (= (and d!2060138 (not c!1206734)) b!6565738))

(assert (= (and b!6565738 c!1206735) b!6565739))

(assert (= (and b!6565738 (not c!1206735)) b!6565737))

(assert (= (or b!6565740 b!6565739) bm!571228))

(declare-fun m!7347916 () Bool)

(assert (=> b!6565736 m!7347916))

(declare-fun m!7347918 () Bool)

(assert (=> b!6565740 m!7347918))

(declare-fun m!7347920 () Bool)

(assert (=> bm!571228 m!7347920))

(assert (=> b!6565242 d!2060138))

(declare-fun call!571240 () (InoxSet Context!11650))

(declare-fun c!1206741 () Bool)

(declare-fun c!1206742 () Bool)

(declare-fun call!571238 () List!65623)

(declare-fun c!1206744 () Bool)

(declare-fun bm!571231 () Bool)

(assert (=> bm!571231 (= call!571240 (derivationStepZipperDown!1689 (ite c!1206744 (regOne!33395 (h!71947 (exprs!6325 (h!71948 zl!343)))) (ite c!1206742 (regTwo!33394 (h!71947 (exprs!6325 (h!71948 zl!343)))) (ite c!1206741 (regOne!33394 (h!71947 (exprs!6325 (h!71948 zl!343)))) (reg!16770 (h!71947 (exprs!6325 (h!71948 zl!343))))))) (ite (or c!1206744 c!1206742) lt!2407148 (Context!11651 call!571238)) (h!71946 s!2326)))))

(declare-fun b!6565749 () Bool)

(declare-fun e!3974442 () (InoxSet Context!11650))

(assert (=> b!6565749 (= e!3974442 (store ((as const (Array Context!11650 Bool)) false) lt!2407148 true))))

(declare-fun bm!571232 () Bool)

(declare-fun call!571236 () List!65623)

(assert (=> bm!571232 (= call!571238 call!571236)))

(declare-fun bm!571233 () Bool)

(assert (=> bm!571233 (= call!571236 ($colon$colon!2281 (exprs!6325 lt!2407148) (ite (or c!1206742 c!1206741) (regTwo!33394 (h!71947 (exprs!6325 (h!71948 zl!343)))) (h!71947 (exprs!6325 (h!71948 zl!343))))))))

(declare-fun b!6565750 () Bool)

(declare-fun c!1206740 () Bool)

(assert (=> b!6565750 (= c!1206740 ((_ is Star!16441) (h!71947 (exprs!6325 (h!71948 zl!343)))))))

(declare-fun e!3974440 () (InoxSet Context!11650))

(declare-fun e!3974443 () (InoxSet Context!11650))

(assert (=> b!6565750 (= e!3974440 e!3974443)))

(declare-fun bm!571234 () Bool)

(declare-fun call!571239 () (InoxSet Context!11650))

(assert (=> bm!571234 (= call!571239 call!571240)))

(declare-fun b!6565751 () Bool)

(declare-fun e!3974439 () (InoxSet Context!11650))

(assert (=> b!6565751 (= e!3974439 e!3974440)))

(assert (=> b!6565751 (= c!1206741 ((_ is Concat!25286) (h!71947 (exprs!6325 (h!71948 zl!343)))))))

(declare-fun b!6565752 () Bool)

(declare-fun call!571237 () (InoxSet Context!11650))

(assert (=> b!6565752 (= e!3974440 call!571237)))

(declare-fun bm!571235 () Bool)

(assert (=> bm!571235 (= call!571237 call!571239)))

(declare-fun bm!571236 () Bool)

(declare-fun call!571241 () (InoxSet Context!11650))

(assert (=> bm!571236 (= call!571241 (derivationStepZipperDown!1689 (ite c!1206744 (regTwo!33395 (h!71947 (exprs!6325 (h!71948 zl!343)))) (regOne!33394 (h!71947 (exprs!6325 (h!71948 zl!343))))) (ite c!1206744 lt!2407148 (Context!11651 call!571236)) (h!71946 s!2326)))))

(declare-fun b!6565753 () Bool)

(declare-fun e!3974438 () Bool)

(assert (=> b!6565753 (= e!3974438 (nullable!6434 (regOne!33394 (h!71947 (exprs!6325 (h!71948 zl!343))))))))

(declare-fun b!6565754 () Bool)

(declare-fun e!3974441 () (InoxSet Context!11650))

(assert (=> b!6565754 (= e!3974442 e!3974441)))

(assert (=> b!6565754 (= c!1206744 ((_ is Union!16441) (h!71947 (exprs!6325 (h!71948 zl!343)))))))

(declare-fun b!6565755 () Bool)

(assert (=> b!6565755 (= e!3974443 call!571237)))

(declare-fun b!6565756 () Bool)

(assert (=> b!6565756 (= c!1206742 e!3974438)))

(declare-fun res!2694377 () Bool)

(assert (=> b!6565756 (=> (not res!2694377) (not e!3974438))))

(assert (=> b!6565756 (= res!2694377 ((_ is Concat!25286) (h!71947 (exprs!6325 (h!71948 zl!343)))))))

(assert (=> b!6565756 (= e!3974441 e!3974439)))

(declare-fun b!6565757 () Bool)

(assert (=> b!6565757 (= e!3974441 ((_ map or) call!571240 call!571241))))

(declare-fun b!6565758 () Bool)

(assert (=> b!6565758 (= e!3974443 ((as const (Array Context!11650 Bool)) false))))

(declare-fun d!2060140 () Bool)

(declare-fun c!1206743 () Bool)

(assert (=> d!2060140 (= c!1206743 (and ((_ is ElementMatch!16441) (h!71947 (exprs!6325 (h!71948 zl!343)))) (= (c!1206624 (h!71947 (exprs!6325 (h!71948 zl!343)))) (h!71946 s!2326))))))

(assert (=> d!2060140 (= (derivationStepZipperDown!1689 (h!71947 (exprs!6325 (h!71948 zl!343))) lt!2407148 (h!71946 s!2326)) e!3974442)))

(declare-fun b!6565759 () Bool)

(assert (=> b!6565759 (= e!3974439 ((_ map or) call!571241 call!571239))))

(assert (= (and d!2060140 c!1206743) b!6565749))

(assert (= (and d!2060140 (not c!1206743)) b!6565754))

(assert (= (and b!6565754 c!1206744) b!6565757))

(assert (= (and b!6565754 (not c!1206744)) b!6565756))

(assert (= (and b!6565756 res!2694377) b!6565753))

(assert (= (and b!6565756 c!1206742) b!6565759))

(assert (= (and b!6565756 (not c!1206742)) b!6565751))

(assert (= (and b!6565751 c!1206741) b!6565752))

(assert (= (and b!6565751 (not c!1206741)) b!6565750))

(assert (= (and b!6565750 c!1206740) b!6565755))

(assert (= (and b!6565750 (not c!1206740)) b!6565758))

(assert (= (or b!6565752 b!6565755) bm!571232))

(assert (= (or b!6565752 b!6565755) bm!571235))

(assert (= (or b!6565759 bm!571232) bm!571233))

(assert (= (or b!6565759 bm!571235) bm!571234))

(assert (= (or b!6565757 b!6565759) bm!571236))

(assert (= (or b!6565757 bm!571234) bm!571231))

(declare-fun m!7347922 () Bool)

(assert (=> bm!571233 m!7347922))

(declare-fun m!7347924 () Bool)

(assert (=> bm!571236 m!7347924))

(declare-fun m!7347926 () Bool)

(assert (=> b!6565753 m!7347926))

(declare-fun m!7347928 () Bool)

(assert (=> bm!571231 m!7347928))

(declare-fun m!7347930 () Bool)

(assert (=> b!6565749 m!7347930))

(assert (=> b!6565242 d!2060140))

(declare-fun d!2060142 () Bool)

(assert (=> d!2060142 (= (flatMap!1946 z!1189 lambda!365370) (dynLambda!26054 lambda!365370 (h!71948 zl!343)))))

(declare-fun lt!2407268 () Unit!159099)

(assert (=> d!2060142 (= lt!2407268 (choose!48986 z!1189 (h!71948 zl!343) lambda!365370))))

(assert (=> d!2060142 (= z!1189 (store ((as const (Array Context!11650 Bool)) false) (h!71948 zl!343) true))))

(assert (=> d!2060142 (= (lemmaFlatMapOnSingletonSet!1472 z!1189 (h!71948 zl!343) lambda!365370) lt!2407268)))

(declare-fun b_lambda!248343 () Bool)

(assert (=> (not b_lambda!248343) (not d!2060142)))

(declare-fun bs!1677002 () Bool)

(assert (= bs!1677002 d!2060142))

(assert (=> bs!1677002 m!7347468))

(declare-fun m!7347932 () Bool)

(assert (=> bs!1677002 m!7347932))

(declare-fun m!7347934 () Bool)

(assert (=> bs!1677002 m!7347934))

(declare-fun m!7347936 () Bool)

(assert (=> bs!1677002 m!7347936))

(assert (=> b!6565242 d!2060142))

(declare-fun b!6565760 () Bool)

(declare-fun e!3974444 () Bool)

(assert (=> b!6565760 (= e!3974444 (nullable!6434 (h!71947 (exprs!6325 (h!71948 zl!343)))))))

(declare-fun b!6565762 () Bool)

(declare-fun e!3974446 () (InoxSet Context!11650))

(declare-fun e!3974445 () (InoxSet Context!11650))

(assert (=> b!6565762 (= e!3974446 e!3974445)))

(declare-fun c!1206746 () Bool)

(assert (=> b!6565762 (= c!1206746 ((_ is Cons!65499) (exprs!6325 (h!71948 zl!343))))))

(declare-fun b!6565763 () Bool)

(declare-fun call!571242 () (InoxSet Context!11650))

(assert (=> b!6565763 (= e!3974445 call!571242)))

(declare-fun b!6565764 () Bool)

(assert (=> b!6565764 (= e!3974446 ((_ map or) call!571242 (derivationStepZipperUp!1615 (Context!11651 (t!379267 (exprs!6325 (h!71948 zl!343)))) (h!71946 s!2326))))))

(declare-fun bm!571237 () Bool)

(assert (=> bm!571237 (= call!571242 (derivationStepZipperDown!1689 (h!71947 (exprs!6325 (h!71948 zl!343))) (Context!11651 (t!379267 (exprs!6325 (h!71948 zl!343)))) (h!71946 s!2326)))))

(declare-fun b!6565761 () Bool)

(assert (=> b!6565761 (= e!3974445 ((as const (Array Context!11650 Bool)) false))))

(declare-fun d!2060144 () Bool)

(declare-fun c!1206745 () Bool)

(assert (=> d!2060144 (= c!1206745 e!3974444)))

(declare-fun res!2694378 () Bool)

(assert (=> d!2060144 (=> (not res!2694378) (not e!3974444))))

(assert (=> d!2060144 (= res!2694378 ((_ is Cons!65499) (exprs!6325 (h!71948 zl!343))))))

(assert (=> d!2060144 (= (derivationStepZipperUp!1615 (h!71948 zl!343) (h!71946 s!2326)) e!3974446)))

(assert (= (and d!2060144 res!2694378) b!6565760))

(assert (= (and d!2060144 c!1206745) b!6565764))

(assert (= (and d!2060144 (not c!1206745)) b!6565762))

(assert (= (and b!6565762 c!1206746) b!6565763))

(assert (= (and b!6565762 (not c!1206746)) b!6565761))

(assert (= (or b!6565764 b!6565763) bm!571237))

(assert (=> b!6565760 m!7347472))

(declare-fun m!7347938 () Bool)

(assert (=> b!6565764 m!7347938))

(declare-fun m!7347940 () Bool)

(assert (=> bm!571237 m!7347940))

(assert (=> b!6565242 d!2060144))

(declare-fun b!6565770 () Bool)

(declare-fun e!3974450 () Bool)

(assert (=> b!6565770 (= e!3974450 (nullable!6434 (h!71947 (exprs!6325 lt!2407148))))))

(declare-fun b!6565772 () Bool)

(declare-fun e!3974452 () (InoxSet Context!11650))

(declare-fun e!3974451 () (InoxSet Context!11650))

(assert (=> b!6565772 (= e!3974452 e!3974451)))

(declare-fun c!1206750 () Bool)

(assert (=> b!6565772 (= c!1206750 ((_ is Cons!65499) (exprs!6325 lt!2407148)))))

(declare-fun b!6565773 () Bool)

(declare-fun call!571244 () (InoxSet Context!11650))

(assert (=> b!6565773 (= e!3974451 call!571244)))

(declare-fun b!6565774 () Bool)

(assert (=> b!6565774 (= e!3974452 ((_ map or) call!571244 (derivationStepZipperUp!1615 (Context!11651 (t!379267 (exprs!6325 lt!2407148))) (h!71946 s!2326))))))

(declare-fun bm!571239 () Bool)

(assert (=> bm!571239 (= call!571244 (derivationStepZipperDown!1689 (h!71947 (exprs!6325 lt!2407148)) (Context!11651 (t!379267 (exprs!6325 lt!2407148))) (h!71946 s!2326)))))

(declare-fun b!6565771 () Bool)

(assert (=> b!6565771 (= e!3974451 ((as const (Array Context!11650 Bool)) false))))

(declare-fun d!2060146 () Bool)

(declare-fun c!1206749 () Bool)

(assert (=> d!2060146 (= c!1206749 e!3974450)))

(declare-fun res!2694380 () Bool)

(assert (=> d!2060146 (=> (not res!2694380) (not e!3974450))))

(assert (=> d!2060146 (= res!2694380 ((_ is Cons!65499) (exprs!6325 lt!2407148)))))

(assert (=> d!2060146 (= (derivationStepZipperUp!1615 lt!2407148 (h!71946 s!2326)) e!3974452)))

(assert (= (and d!2060146 res!2694380) b!6565770))

(assert (= (and d!2060146 c!1206749) b!6565774))

(assert (= (and d!2060146 (not c!1206749)) b!6565772))

(assert (= (and b!6565772 c!1206750) b!6565773))

(assert (= (and b!6565772 (not c!1206750)) b!6565771))

(assert (= (or b!6565774 b!6565773) bm!571239))

(declare-fun m!7347948 () Bool)

(assert (=> b!6565770 m!7347948))

(declare-fun m!7347950 () Bool)

(assert (=> b!6565774 m!7347950))

(declare-fun m!7347952 () Bool)

(assert (=> bm!571239 m!7347952))

(assert (=> b!6565242 d!2060146))

(declare-fun d!2060150 () Bool)

(declare-fun lt!2407269 () Regex!16441)

(assert (=> d!2060150 (validRegex!8177 lt!2407269)))

(assert (=> d!2060150 (= lt!2407269 (generalisedUnion!2285 (unfocusZipperList!1862 lt!2407158)))))

(assert (=> d!2060150 (= (unfocusZipper!2183 lt!2407158) lt!2407269)))

(declare-fun bs!1677003 () Bool)

(assert (= bs!1677003 d!2060150))

(declare-fun m!7347954 () Bool)

(assert (=> bs!1677003 m!7347954))

(declare-fun m!7347956 () Bool)

(assert (=> bs!1677003 m!7347956))

(assert (=> bs!1677003 m!7347956))

(declare-fun m!7347958 () Bool)

(assert (=> bs!1677003 m!7347958))

(assert (=> b!6565244 d!2060150))

(declare-fun e!3974458 () Bool)

(declare-fun d!2060152 () Bool)

(assert (=> d!2060152 (= (matchZipper!2453 ((_ map or) lt!2407125 lt!2407127) (t!379266 s!2326)) e!3974458)))

(declare-fun res!2694384 () Bool)

(assert (=> d!2060152 (=> res!2694384 e!3974458)))

(assert (=> d!2060152 (= res!2694384 (matchZipper!2453 lt!2407125 (t!379266 s!2326)))))

(declare-fun lt!2407272 () Unit!159099)

(declare-fun choose!49002 ((InoxSet Context!11650) (InoxSet Context!11650) List!65622) Unit!159099)

(assert (=> d!2060152 (= lt!2407272 (choose!49002 lt!2407125 lt!2407127 (t!379266 s!2326)))))

(assert (=> d!2060152 (= (lemmaZipperConcatMatchesSameAsBothZippers!1272 lt!2407125 lt!2407127 (t!379266 s!2326)) lt!2407272)))

(declare-fun b!6565782 () Bool)

(assert (=> b!6565782 (= e!3974458 (matchZipper!2453 lt!2407127 (t!379266 s!2326)))))

(assert (= (and d!2060152 (not res!2694384)) b!6565782))

(assert (=> d!2060152 m!7347376))

(assert (=> d!2060152 m!7347304))

(declare-fun m!7347968 () Bool)

(assert (=> d!2060152 m!7347968))

(assert (=> b!6565782 m!7347346))

(assert (=> b!6565284 d!2060152))

(declare-fun d!2060158 () Bool)

(declare-fun c!1206753 () Bool)

(assert (=> d!2060158 (= c!1206753 (isEmpty!37743 (t!379266 s!2326)))))

(declare-fun e!3974459 () Bool)

(assert (=> d!2060158 (= (matchZipper!2453 lt!2407125 (t!379266 s!2326)) e!3974459)))

(declare-fun b!6565783 () Bool)

(assert (=> b!6565783 (= e!3974459 (nullableZipper!2185 lt!2407125))))

(declare-fun b!6565784 () Bool)

(assert (=> b!6565784 (= e!3974459 (matchZipper!2453 (derivationStepZipper!2407 lt!2407125 (head!13331 (t!379266 s!2326))) (tail!12416 (t!379266 s!2326))))))

(assert (= (and d!2060158 c!1206753) b!6565783))

(assert (= (and d!2060158 (not c!1206753)) b!6565784))

(assert (=> d!2060158 m!7347536))

(declare-fun m!7347970 () Bool)

(assert (=> b!6565783 m!7347970))

(assert (=> b!6565784 m!7347540))

(assert (=> b!6565784 m!7347540))

(declare-fun m!7347972 () Bool)

(assert (=> b!6565784 m!7347972))

(assert (=> b!6565784 m!7347544))

(assert (=> b!6565784 m!7347972))

(assert (=> b!6565784 m!7347544))

(declare-fun m!7347974 () Bool)

(assert (=> b!6565784 m!7347974))

(assert (=> b!6565284 d!2060158))

(declare-fun d!2060160 () Bool)

(declare-fun c!1206756 () Bool)

(assert (=> d!2060160 (= c!1206756 (isEmpty!37743 (t!379266 s!2326)))))

(declare-fun e!3974462 () Bool)

(assert (=> d!2060160 (= (matchZipper!2453 ((_ map or) lt!2407125 lt!2407127) (t!379266 s!2326)) e!3974462)))

(declare-fun b!6565789 () Bool)

(assert (=> b!6565789 (= e!3974462 (nullableZipper!2185 ((_ map or) lt!2407125 lt!2407127)))))

(declare-fun b!6565790 () Bool)

(assert (=> b!6565790 (= e!3974462 (matchZipper!2453 (derivationStepZipper!2407 ((_ map or) lt!2407125 lt!2407127) (head!13331 (t!379266 s!2326))) (tail!12416 (t!379266 s!2326))))))

(assert (= (and d!2060160 c!1206756) b!6565789))

(assert (= (and d!2060160 (not c!1206756)) b!6565790))

(assert (=> d!2060160 m!7347536))

(declare-fun m!7347976 () Bool)

(assert (=> b!6565789 m!7347976))

(assert (=> b!6565790 m!7347540))

(assert (=> b!6565790 m!7347540))

(declare-fun m!7347978 () Bool)

(assert (=> b!6565790 m!7347978))

(assert (=> b!6565790 m!7347544))

(assert (=> b!6565790 m!7347978))

(assert (=> b!6565790 m!7347544))

(declare-fun m!7347980 () Bool)

(assert (=> b!6565790 m!7347980))

(assert (=> b!6565284 d!2060160))

(declare-fun b!6565809 () Bool)

(declare-fun e!3974477 () Bool)

(declare-fun e!3974475 () Bool)

(assert (=> b!6565809 (= e!3974477 e!3974475)))

(declare-fun c!1206766 () Bool)

(assert (=> b!6565809 (= c!1206766 ((_ is Star!16441) lt!2407122))))

(declare-fun d!2060162 () Bool)

(declare-fun res!2694389 () Bool)

(assert (=> d!2060162 (=> res!2694389 e!3974477)))

(assert (=> d!2060162 (= res!2694389 ((_ is ElementMatch!16441) lt!2407122))))

(assert (=> d!2060162 (= (validRegex!8177 lt!2407122) e!3974477)))

(declare-fun b!6565810 () Bool)

(declare-fun e!3974474 () Bool)

(declare-fun call!571248 () Bool)

(assert (=> b!6565810 (= e!3974474 call!571248)))

(declare-fun b!6565811 () Bool)

(declare-fun e!3974473 () Bool)

(assert (=> b!6565811 (= e!3974473 call!571248)))

(declare-fun b!6565812 () Bool)

(declare-fun res!2694391 () Bool)

(assert (=> b!6565812 (=> (not res!2694391) (not e!3974474))))

(declare-fun call!571246 () Bool)

(assert (=> b!6565812 (= res!2694391 call!571246)))

(declare-fun e!3974478 () Bool)

(assert (=> b!6565812 (= e!3974478 e!3974474)))

(declare-fun b!6565813 () Bool)

(declare-fun e!3974476 () Bool)

(declare-fun call!571247 () Bool)

(assert (=> b!6565813 (= e!3974476 call!571247)))

(declare-fun bm!571241 () Bool)

(assert (=> bm!571241 (= call!571246 call!571247)))

(declare-fun b!6565814 () Bool)

(assert (=> b!6565814 (= e!3974475 e!3974478)))

(declare-fun c!1206765 () Bool)

(assert (=> b!6565814 (= c!1206765 ((_ is Union!16441) lt!2407122))))

(declare-fun b!6565815 () Bool)

(assert (=> b!6565815 (= e!3974475 e!3974476)))

(declare-fun res!2694387 () Bool)

(assert (=> b!6565815 (= res!2694387 (not (nullable!6434 (reg!16770 lt!2407122))))))

(assert (=> b!6565815 (=> (not res!2694387) (not e!3974476))))

(declare-fun b!6565816 () Bool)

(declare-fun res!2694388 () Bool)

(declare-fun e!3974479 () Bool)

(assert (=> b!6565816 (=> res!2694388 e!3974479)))

(assert (=> b!6565816 (= res!2694388 (not ((_ is Concat!25286) lt!2407122)))))

(assert (=> b!6565816 (= e!3974478 e!3974479)))

(declare-fun b!6565817 () Bool)

(assert (=> b!6565817 (= e!3974479 e!3974473)))

(declare-fun res!2694390 () Bool)

(assert (=> b!6565817 (=> (not res!2694390) (not e!3974473))))

(assert (=> b!6565817 (= res!2694390 call!571246)))

(declare-fun bm!571242 () Bool)

(assert (=> bm!571242 (= call!571248 (validRegex!8177 (ite c!1206765 (regTwo!33395 lt!2407122) (regTwo!33394 lt!2407122))))))

(declare-fun bm!571243 () Bool)

(assert (=> bm!571243 (= call!571247 (validRegex!8177 (ite c!1206766 (reg!16770 lt!2407122) (ite c!1206765 (regOne!33395 lt!2407122) (regOne!33394 lt!2407122)))))))

(assert (= (and d!2060162 (not res!2694389)) b!6565809))

(assert (= (and b!6565809 c!1206766) b!6565815))

(assert (= (and b!6565809 (not c!1206766)) b!6565814))

(assert (= (and b!6565815 res!2694387) b!6565813))

(assert (= (and b!6565814 c!1206765) b!6565812))

(assert (= (and b!6565814 (not c!1206765)) b!6565816))

(assert (= (and b!6565812 res!2694391) b!6565810))

(assert (= (and b!6565816 (not res!2694388)) b!6565817))

(assert (= (and b!6565817 res!2694390) b!6565811))

(assert (= (or b!6565810 b!6565811) bm!571242))

(assert (= (or b!6565812 b!6565817) bm!571241))

(assert (= (or b!6565813 bm!571241) bm!571243))

(declare-fun m!7347982 () Bool)

(assert (=> b!6565815 m!7347982))

(declare-fun m!7347984 () Bool)

(assert (=> bm!571242 m!7347984))

(declare-fun m!7347986 () Bool)

(assert (=> bm!571243 m!7347986))

(assert (=> b!6565264 d!2060162))

(assert (=> b!6565245 d!2060018))

(declare-fun d!2060164 () Bool)

(assert (=> d!2060164 (= (isEmpty!37742 (t!379268 zl!343)) ((_ is Nil!65500) (t!379268 zl!343)))))

(assert (=> b!6565267 d!2060164))

(declare-fun d!2060166 () Bool)

(assert (=> d!2060166 (= (isEmpty!37741 (t!379267 (exprs!6325 (h!71948 zl!343)))) ((_ is Nil!65499) (t!379267 (exprs!6325 (h!71948 zl!343)))))))

(assert (=> b!6565247 d!2060166))

(declare-fun bs!1677006 () Bool)

(declare-fun d!2060168 () Bool)

(assert (= bs!1677006 (and d!2060168 b!6565269)))

(declare-fun lambda!365432 () Int)

(assert (=> bs!1677006 (= lambda!365432 lambda!365372)))

(declare-fun bs!1677007 () Bool)

(assert (= bs!1677007 (and d!2060168 d!2060060)))

(assert (=> bs!1677007 (= lambda!365432 lambda!365396)))

(declare-fun bs!1677008 () Bool)

(assert (= bs!1677008 (and d!2060168 d!2060062)))

(assert (=> bs!1677008 (= lambda!365432 lambda!365397)))

(declare-fun b!6565854 () Bool)

(declare-fun e!3974503 () Bool)

(assert (=> b!6565854 (= e!3974503 (isEmpty!37741 (t!379267 (exprs!6325 (h!71948 zl!343)))))))

(declare-fun b!6565855 () Bool)

(declare-fun e!3974505 () Bool)

(declare-fun lt!2407275 () Regex!16441)

(declare-fun isEmptyExpr!1818 (Regex!16441) Bool)

(assert (=> b!6565855 (= e!3974505 (isEmptyExpr!1818 lt!2407275))))

(declare-fun b!6565856 () Bool)

(declare-fun e!3974506 () Bool)

(assert (=> b!6565856 (= e!3974506 e!3974505)))

(declare-fun c!1206785 () Bool)

(assert (=> b!6565856 (= c!1206785 (isEmpty!37741 (exprs!6325 (h!71948 zl!343))))))

(declare-fun b!6565858 () Bool)

(declare-fun e!3974504 () Regex!16441)

(assert (=> b!6565858 (= e!3974504 EmptyExpr!16441)))

(declare-fun b!6565859 () Bool)

(declare-fun e!3974501 () Bool)

(declare-fun isConcat!1341 (Regex!16441) Bool)

(assert (=> b!6565859 (= e!3974501 (isConcat!1341 lt!2407275))))

(declare-fun b!6565860 () Bool)

(assert (=> b!6565860 (= e!3974504 (Concat!25286 (h!71947 (exprs!6325 (h!71948 zl!343))) (generalisedConcat!2038 (t!379267 (exprs!6325 (h!71948 zl!343))))))))

(declare-fun b!6565861 () Bool)

(assert (=> b!6565861 (= e!3974505 e!3974501)))

(declare-fun c!1206784 () Bool)

(declare-fun tail!12418 (List!65623) List!65623)

(assert (=> b!6565861 (= c!1206784 (isEmpty!37741 (tail!12418 (exprs!6325 (h!71948 zl!343)))))))

(declare-fun b!6565857 () Bool)

(declare-fun e!3974502 () Regex!16441)

(assert (=> b!6565857 (= e!3974502 (h!71947 (exprs!6325 (h!71948 zl!343))))))

(assert (=> d!2060168 e!3974506))

(declare-fun res!2694398 () Bool)

(assert (=> d!2060168 (=> (not res!2694398) (not e!3974506))))

(assert (=> d!2060168 (= res!2694398 (validRegex!8177 lt!2407275))))

(assert (=> d!2060168 (= lt!2407275 e!3974502)))

(declare-fun c!1206782 () Bool)

(assert (=> d!2060168 (= c!1206782 e!3974503)))

(declare-fun res!2694399 () Bool)

(assert (=> d!2060168 (=> (not res!2694399) (not e!3974503))))

(assert (=> d!2060168 (= res!2694399 ((_ is Cons!65499) (exprs!6325 (h!71948 zl!343))))))

(assert (=> d!2060168 (forall!15612 (exprs!6325 (h!71948 zl!343)) lambda!365432)))

(assert (=> d!2060168 (= (generalisedConcat!2038 (exprs!6325 (h!71948 zl!343))) lt!2407275)))

(declare-fun b!6565862 () Bool)

(declare-fun head!13333 (List!65623) Regex!16441)

(assert (=> b!6565862 (= e!3974501 (= lt!2407275 (head!13333 (exprs!6325 (h!71948 zl!343)))))))

(declare-fun b!6565863 () Bool)

(assert (=> b!6565863 (= e!3974502 e!3974504)))

(declare-fun c!1206783 () Bool)

(assert (=> b!6565863 (= c!1206783 ((_ is Cons!65499) (exprs!6325 (h!71948 zl!343))))))

(assert (= (and d!2060168 res!2694399) b!6565854))

(assert (= (and d!2060168 c!1206782) b!6565857))

(assert (= (and d!2060168 (not c!1206782)) b!6565863))

(assert (= (and b!6565863 c!1206783) b!6565860))

(assert (= (and b!6565863 (not c!1206783)) b!6565858))

(assert (= (and d!2060168 res!2694398) b!6565856))

(assert (= (and b!6565856 c!1206785) b!6565855))

(assert (= (and b!6565856 (not c!1206785)) b!6565861))

(assert (= (and b!6565861 c!1206784) b!6565862))

(assert (= (and b!6565861 (not c!1206784)) b!6565859))

(assert (=> b!6565854 m!7347306))

(declare-fun m!7348004 () Bool)

(assert (=> b!6565859 m!7348004))

(declare-fun m!7348006 () Bool)

(assert (=> b!6565855 m!7348006))

(declare-fun m!7348008 () Bool)

(assert (=> d!2060168 m!7348008))

(declare-fun m!7348010 () Bool)

(assert (=> d!2060168 m!7348010))

(declare-fun m!7348012 () Bool)

(assert (=> b!6565861 m!7348012))

(assert (=> b!6565861 m!7348012))

(declare-fun m!7348014 () Bool)

(assert (=> b!6565861 m!7348014))

(declare-fun m!7348016 () Bool)

(assert (=> b!6565856 m!7348016))

(declare-fun m!7348018 () Bool)

(assert (=> b!6565860 m!7348018))

(declare-fun m!7348020 () Bool)

(assert (=> b!6565862 m!7348020))

(assert (=> b!6565248 d!2060168))

(declare-fun d!2060176 () Bool)

(declare-fun lt!2407278 () Regex!16441)

(assert (=> d!2060176 (validRegex!8177 lt!2407278)))

(assert (=> d!2060176 (= lt!2407278 (generalisedUnion!2285 (unfocusZipperList!1862 (Cons!65500 lt!2407139 Nil!65500))))))

(assert (=> d!2060176 (= (unfocusZipper!2183 (Cons!65500 lt!2407139 Nil!65500)) lt!2407278)))

(declare-fun bs!1677009 () Bool)

(assert (= bs!1677009 d!2060176))

(declare-fun m!7348022 () Bool)

(assert (=> bs!1677009 m!7348022))

(declare-fun m!7348024 () Bool)

(assert (=> bs!1677009 m!7348024))

(assert (=> bs!1677009 m!7348024))

(declare-fun m!7348026 () Bool)

(assert (=> bs!1677009 m!7348026))

(assert (=> b!6565268 d!2060176))

(declare-fun d!2060178 () Bool)

(declare-fun lt!2407280 () Regex!16441)

(assert (=> d!2060178 (validRegex!8177 lt!2407280)))

(assert (=> d!2060178 (= lt!2407280 (generalisedUnion!2285 (unfocusZipperList!1862 zl!343)))))

(assert (=> d!2060178 (= (unfocusZipper!2183 zl!343) lt!2407280)))

(declare-fun bs!1677010 () Bool)

(assert (= bs!1677010 d!2060178))

(declare-fun m!7348028 () Bool)

(assert (=> bs!1677010 m!7348028))

(assert (=> bs!1677010 m!7347390))

(assert (=> bs!1677010 m!7347390))

(assert (=> bs!1677010 m!7347392))

(assert (=> b!6565270 d!2060178))

(declare-fun b!6565883 () Bool)

(declare-fun e!3974518 () List!65623)

(assert (=> b!6565883 (= e!3974518 lt!2407171)))

(declare-fun e!3974519 () Bool)

(declare-fun lt!2407283 () List!65623)

(declare-fun b!6565886 () Bool)

(assert (=> b!6565886 (= e!3974519 (or (not (= lt!2407171 Nil!65499)) (= lt!2407283 lt!2407132)))))

(declare-fun b!6565885 () Bool)

(declare-fun res!2694407 () Bool)

(assert (=> b!6565885 (=> (not res!2694407) (not e!3974519))))

(declare-fun size!40531 (List!65623) Int)

(assert (=> b!6565885 (= res!2694407 (= (size!40531 lt!2407283) (+ (size!40531 lt!2407132) (size!40531 lt!2407171))))))

(declare-fun d!2060180 () Bool)

(assert (=> d!2060180 e!3974519))

(declare-fun res!2694408 () Bool)

(assert (=> d!2060180 (=> (not res!2694408) (not e!3974519))))

(declare-fun content!12604 (List!65623) (InoxSet Regex!16441))

(assert (=> d!2060180 (= res!2694408 (= (content!12604 lt!2407283) ((_ map or) (content!12604 lt!2407132) (content!12604 lt!2407171))))))

(assert (=> d!2060180 (= lt!2407283 e!3974518)))

(declare-fun c!1206792 () Bool)

(assert (=> d!2060180 (= c!1206792 ((_ is Nil!65499) lt!2407132))))

(assert (=> d!2060180 (= (++!14585 lt!2407132 lt!2407171) lt!2407283)))

(declare-fun b!6565884 () Bool)

(assert (=> b!6565884 (= e!3974518 (Cons!65499 (h!71947 lt!2407132) (++!14585 (t!379267 lt!2407132) lt!2407171)))))

(assert (= (and d!2060180 c!1206792) b!6565883))

(assert (= (and d!2060180 (not c!1206792)) b!6565884))

(assert (= (and d!2060180 res!2694408) b!6565885))

(assert (= (and b!6565885 res!2694407) b!6565886))

(declare-fun m!7348036 () Bool)

(assert (=> b!6565885 m!7348036))

(declare-fun m!7348038 () Bool)

(assert (=> b!6565885 m!7348038))

(declare-fun m!7348040 () Bool)

(assert (=> b!6565885 m!7348040))

(declare-fun m!7348042 () Bool)

(assert (=> d!2060180 m!7348042))

(declare-fun m!7348044 () Bool)

(assert (=> d!2060180 m!7348044))

(declare-fun m!7348046 () Bool)

(assert (=> d!2060180 m!7348046))

(declare-fun m!7348048 () Bool)

(assert (=> b!6565884 m!7348048))

(assert (=> b!6565269 d!2060180))

(declare-fun d!2060184 () Bool)

(declare-fun dynLambda!26056 (Int Context!11650) Context!11650)

(assert (=> d!2060184 (= (map!14970 lt!2407140 lambda!365371) (store ((as const (Array Context!11650 Bool)) false) (dynLambda!26056 lambda!365371 lt!2407138) true))))

(declare-fun lt!2407288 () Unit!159099)

(declare-fun choose!49003 ((InoxSet Context!11650) Context!11650 Int) Unit!159099)

(assert (=> d!2060184 (= lt!2407288 (choose!49003 lt!2407140 lt!2407138 lambda!365371))))

(assert (=> d!2060184 (= lt!2407140 (store ((as const (Array Context!11650 Bool)) false) lt!2407138 true))))

(assert (=> d!2060184 (= (lemmaMapOnSingletonSet!224 lt!2407140 lt!2407138 lambda!365371) lt!2407288)))

(declare-fun b_lambda!248347 () Bool)

(assert (=> (not b_lambda!248347) (not d!2060184)))

(declare-fun bs!1677030 () Bool)

(assert (= bs!1677030 d!2060184))

(declare-fun m!7348074 () Bool)

(assert (=> bs!1677030 m!7348074))

(assert (=> bs!1677030 m!7347354))

(assert (=> bs!1677030 m!7347334))

(declare-fun m!7348076 () Bool)

(assert (=> bs!1677030 m!7348076))

(assert (=> bs!1677030 m!7348076))

(declare-fun m!7348078 () Bool)

(assert (=> bs!1677030 m!7348078))

(assert (=> b!6565269 d!2060184))

(declare-fun bs!1677031 () Bool)

(declare-fun d!2060192 () Bool)

(assert (= bs!1677031 (and d!2060192 b!6565269)))

(declare-fun lambda!365439 () Int)

(assert (=> bs!1677031 (= (= (exprs!6325 lt!2407173) lt!2407171) (= lambda!365439 lambda!365371))))

(assert (=> d!2060192 true))

(assert (=> d!2060192 (= (appendTo!202 lt!2407140 lt!2407173) (map!14970 lt!2407140 lambda!365439))))

(declare-fun bs!1677032 () Bool)

(assert (= bs!1677032 d!2060192))

(declare-fun m!7348092 () Bool)

(assert (=> bs!1677032 m!7348092))

(assert (=> b!6565269 d!2060192))

(declare-fun d!2060196 () Bool)

(assert (=> d!2060196 (forall!15612 (++!14585 lt!2407132 lt!2407171) lambda!365372)))

(declare-fun lt!2407296 () Unit!159099)

(declare-fun choose!49004 (List!65623 List!65623 Int) Unit!159099)

(assert (=> d!2060196 (= lt!2407296 (choose!49004 lt!2407132 lt!2407171 lambda!365372))))

(assert (=> d!2060196 (forall!15612 lt!2407132 lambda!365372)))

(assert (=> d!2060196 (= (lemmaConcatPreservesForall!414 lt!2407132 lt!2407171 lambda!365372) lt!2407296)))

(declare-fun bs!1677034 () Bool)

(assert (= bs!1677034 d!2060196))

(assert (=> bs!1677034 m!7347332))

(assert (=> bs!1677034 m!7347332))

(declare-fun m!7348096 () Bool)

(assert (=> bs!1677034 m!7348096))

(declare-fun m!7348098 () Bool)

(assert (=> bs!1677034 m!7348098))

(declare-fun m!7348100 () Bool)

(assert (=> bs!1677034 m!7348100))

(assert (=> b!6565269 d!2060196))

(declare-fun d!2060200 () Bool)

(declare-fun choose!49005 ((InoxSet Context!11650) Int) (InoxSet Context!11650))

(assert (=> d!2060200 (= (map!14970 lt!2407140 lambda!365371) (choose!49005 lt!2407140 lambda!365371))))

(declare-fun bs!1677035 () Bool)

(assert (= bs!1677035 d!2060200))

(declare-fun m!7348102 () Bool)

(assert (=> bs!1677035 m!7348102))

(assert (=> b!6565269 d!2060200))

(declare-fun d!2060202 () Bool)

(assert (=> d!2060202 (= (get!22743 lt!2407142) (v!52516 lt!2407142))))

(assert (=> b!6565271 d!2060202))

(assert (=> b!6565271 d!2060180))

(declare-fun d!2060204 () Bool)

(declare-fun c!1206804 () Bool)

(assert (=> d!2060204 (= c!1206804 (isEmpty!37743 lt!2407144))))

(declare-fun e!3974544 () Bool)

(assert (=> d!2060204 (= (matchZipper!2453 (store ((as const (Array Context!11650 Bool)) false) (Context!11651 (++!14585 lt!2407132 lt!2407171)) true) lt!2407144) e!3974544)))

(declare-fun b!6565927 () Bool)

(assert (=> b!6565927 (= e!3974544 (nullableZipper!2185 (store ((as const (Array Context!11650 Bool)) false) (Context!11651 (++!14585 lt!2407132 lt!2407171)) true)))))

(declare-fun b!6565928 () Bool)

(assert (=> b!6565928 (= e!3974544 (matchZipper!2453 (derivationStepZipper!2407 (store ((as const (Array Context!11650 Bool)) false) (Context!11651 (++!14585 lt!2407132 lt!2407171)) true) (head!13331 lt!2407144)) (tail!12416 lt!2407144)))))

(assert (= (and d!2060204 c!1206804) b!6565927))

(assert (= (and d!2060204 (not c!1206804)) b!6565928))

(declare-fun m!7348104 () Bool)

(assert (=> d!2060204 m!7348104))

(assert (=> b!6565927 m!7347340))

(declare-fun m!7348106 () Bool)

(assert (=> b!6565927 m!7348106))

(declare-fun m!7348108 () Bool)

(assert (=> b!6565928 m!7348108))

(assert (=> b!6565928 m!7347340))

(assert (=> b!6565928 m!7348108))

(declare-fun m!7348110 () Bool)

(assert (=> b!6565928 m!7348110))

(declare-fun m!7348112 () Bool)

(assert (=> b!6565928 m!7348112))

(assert (=> b!6565928 m!7348110))

(assert (=> b!6565928 m!7348112))

(declare-fun m!7348114 () Bool)

(assert (=> b!6565928 m!7348114))

(assert (=> b!6565271 d!2060204))

(declare-fun bs!1677036 () Bool)

(declare-fun d!2060206 () Bool)

(assert (= bs!1677036 (and d!2060206 d!2060076)))

(declare-fun lambda!365440 () Int)

(assert (=> bs!1677036 (= (and (= s!2326 (_1!36723 lt!2407152)) (= lt!2407124 (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) (Star!16441 (reg!16770 (regOne!33394 r!7292))))) (= lambda!365440 lambda!365404))))

(assert (=> bs!1677036 (not (= lambda!365440 lambda!365405))))

(declare-fun bs!1677037 () Bool)

(assert (= bs!1677037 (and d!2060206 d!2060050)))

(assert (=> bs!1677037 (not (= lambda!365440 lambda!365389))))

(declare-fun bs!1677038 () Bool)

(assert (= bs!1677038 (and d!2060206 b!6565271)))

(assert (=> bs!1677038 (= lambda!365440 lambda!365373)))

(declare-fun bs!1677039 () Bool)

(assert (= bs!1677039 (and d!2060206 d!2060084)))

(assert (=> bs!1677039 (= (and (= s!2326 (_1!36723 lt!2407152)) (= lt!2407124 (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365440 lambda!365406))))

(declare-fun bs!1677040 () Bool)

(assert (= bs!1677040 (and d!2060206 b!6565238)))

(assert (=> bs!1677040 (not (= lambda!365440 lambda!365369))))

(declare-fun bs!1677041 () Bool)

(assert (= bs!1677041 (and d!2060206 b!6565241)))

(assert (=> bs!1677041 (not (= lambda!365440 lambda!365376))))

(assert (=> bs!1677039 (not (= lambda!365440 lambda!365407))))

(declare-fun bs!1677042 () Bool)

(assert (= bs!1677042 (and d!2060206 b!6565719)))

(assert (=> bs!1677042 (not (= lambda!365440 lambda!365424))))

(assert (=> bs!1677037 (= (= lt!2407124 (regOne!33394 r!7292)) (= lambda!365440 lambda!365388))))

(declare-fun bs!1677043 () Bool)

(assert (= bs!1677043 (and d!2060206 b!6565714)))

(assert (=> bs!1677043 (not (= lambda!365440 lambda!365421))))

(assert (=> bs!1677041 (not (= lambda!365440 lambda!365377))))

(assert (=> bs!1677040 (= (= lt!2407124 (regOne!33394 r!7292)) (= lambda!365440 lambda!365368))))

(declare-fun bs!1677044 () Bool)

(assert (= bs!1677044 (and d!2060206 d!2060090)))

(assert (=> bs!1677044 (= (and (= s!2326 (_1!36723 lt!2407152)) (= lt!2407124 (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365440 lambda!365408))))

(declare-fun bs!1677045 () Bool)

(assert (= bs!1677045 (and d!2060206 d!2060046)))

(assert (=> bs!1677045 (= (= lt!2407124 (regOne!33394 r!7292)) (= lambda!365440 lambda!365380))))

(assert (=> bs!1677041 (= (and (= s!2326 (_1!36723 lt!2407152)) (= lt!2407124 (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365440 lambda!365375))))

(assert (=> bs!1677038 (not (= lambda!365440 lambda!365374))))

(assert (=> d!2060206 true))

(assert (=> d!2060206 true))

(assert (=> d!2060206 true))

(declare-fun lambda!365441 () Int)

(assert (=> bs!1677036 (not (= lambda!365441 lambda!365404))))

(assert (=> bs!1677037 (= (= lt!2407124 (regOne!33394 r!7292)) (= lambda!365441 lambda!365389))))

(assert (=> bs!1677038 (not (= lambda!365441 lambda!365373))))

(assert (=> bs!1677039 (not (= lambda!365441 lambda!365406))))

(assert (=> bs!1677040 (= (= lt!2407124 (regOne!33394 r!7292)) (= lambda!365441 lambda!365369))))

(assert (=> bs!1677041 (= (and (= s!2326 (_1!36723 lt!2407152)) (= lt!2407124 (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365441 lambda!365376))))

(assert (=> bs!1677039 (= (and (= s!2326 (_1!36723 lt!2407152)) (= lt!2407124 (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365441 lambda!365407))))

(assert (=> bs!1677042 (= (and (= s!2326 (_1!36723 lt!2407152)) (= lt!2407124 (regOne!33394 lt!2407124)) (= (regTwo!33394 r!7292) (regTwo!33394 lt!2407124))) (= lambda!365441 lambda!365424))))

(assert (=> bs!1677037 (not (= lambda!365441 lambda!365388))))

(assert (=> bs!1677043 (not (= lambda!365441 lambda!365421))))

(assert (=> bs!1677041 (not (= lambda!365441 lambda!365377))))

(assert (=> bs!1677040 (not (= lambda!365441 lambda!365368))))

(assert (=> bs!1677036 (not (= lambda!365441 lambda!365405))))

(declare-fun bs!1677046 () Bool)

(assert (= bs!1677046 d!2060206))

(assert (=> bs!1677046 (not (= lambda!365441 lambda!365440))))

(assert (=> bs!1677044 (not (= lambda!365441 lambda!365408))))

(assert (=> bs!1677045 (not (= lambda!365441 lambda!365380))))

(assert (=> bs!1677041 (not (= lambda!365441 lambda!365375))))

(assert (=> bs!1677038 (= lambda!365441 lambda!365374)))

(assert (=> d!2060206 true))

(assert (=> d!2060206 true))

(assert (=> d!2060206 true))

(assert (=> d!2060206 (= (Exists!3511 lambda!365440) (Exists!3511 lambda!365441))))

(declare-fun lt!2407297 () Unit!159099)

(assert (=> d!2060206 (= lt!2407297 (choose!48992 lt!2407124 (regTwo!33394 r!7292) s!2326))))

(assert (=> d!2060206 (validRegex!8177 lt!2407124)))

(assert (=> d!2060206 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2048 lt!2407124 (regTwo!33394 r!7292) s!2326) lt!2407297)))

(declare-fun m!7348146 () Bool)

(assert (=> bs!1677046 m!7348146))

(declare-fun m!7348148 () Bool)

(assert (=> bs!1677046 m!7348148))

(declare-fun m!7348150 () Bool)

(assert (=> bs!1677046 m!7348150))

(assert (=> bs!1677046 m!7347854))

(assert (=> b!6565271 d!2060206))

(declare-fun b!6565947 () Bool)

(declare-fun lt!2407301 () Unit!159099)

(declare-fun lt!2407302 () Unit!159099)

(assert (=> b!6565947 (= lt!2407301 lt!2407302)))

(assert (=> b!6565947 (= (++!14584 (++!14584 Nil!65498 (Cons!65498 (h!71946 s!2326) Nil!65498)) (t!379266 s!2326)) s!2326)))

(assert (=> b!6565947 (= lt!2407302 (lemmaMoveElementToOtherListKeepsConcatEq!2583 Nil!65498 (h!71946 s!2326) (t!379266 s!2326) s!2326))))

(declare-fun e!3974561 () Option!16332)

(assert (=> b!6565947 (= e!3974561 (findConcatSeparation!2746 lt!2407124 (regTwo!33394 r!7292) (++!14584 Nil!65498 (Cons!65498 (h!71946 s!2326) Nil!65498)) (t!379266 s!2326) s!2326))))

(declare-fun b!6565948 () Bool)

(assert (=> b!6565948 (= e!3974561 None!16331)))

(declare-fun b!6565949 () Bool)

(declare-fun e!3974557 () Option!16332)

(assert (=> b!6565949 (= e!3974557 (Some!16331 (tuple2!66841 Nil!65498 s!2326)))))

(declare-fun b!6565950 () Bool)

(declare-fun res!2694441 () Bool)

(declare-fun e!3974560 () Bool)

(assert (=> b!6565950 (=> (not res!2694441) (not e!3974560))))

(declare-fun lt!2407304 () Option!16332)

(assert (=> b!6565950 (= res!2694441 (matchR!8624 (regTwo!33394 r!7292) (_2!36723 (get!22743 lt!2407304))))))

(declare-fun b!6565951 () Bool)

(assert (=> b!6565951 (= e!3974560 (= (++!14584 (_1!36723 (get!22743 lt!2407304)) (_2!36723 (get!22743 lt!2407304))) s!2326))))

(declare-fun b!6565952 () Bool)

(declare-fun e!3974558 () Bool)

(assert (=> b!6565952 (= e!3974558 (not (isDefined!13035 lt!2407304)))))

(declare-fun b!6565953 () Bool)

(declare-fun e!3974559 () Bool)

(assert (=> b!6565953 (= e!3974559 (matchR!8624 (regTwo!33394 r!7292) s!2326))))

(declare-fun d!2060212 () Bool)

(assert (=> d!2060212 e!3974558))

(declare-fun res!2694438 () Bool)

(assert (=> d!2060212 (=> res!2694438 e!3974558)))

(assert (=> d!2060212 (= res!2694438 e!3974560)))

(declare-fun res!2694440 () Bool)

(assert (=> d!2060212 (=> (not res!2694440) (not e!3974560))))

(assert (=> d!2060212 (= res!2694440 (isDefined!13035 lt!2407304))))

(assert (=> d!2060212 (= lt!2407304 e!3974557)))

(declare-fun c!1206809 () Bool)

(assert (=> d!2060212 (= c!1206809 e!3974559)))

(declare-fun res!2694437 () Bool)

(assert (=> d!2060212 (=> (not res!2694437) (not e!3974559))))

(assert (=> d!2060212 (= res!2694437 (matchR!8624 lt!2407124 Nil!65498))))

(assert (=> d!2060212 (validRegex!8177 lt!2407124)))

(assert (=> d!2060212 (= (findConcatSeparation!2746 lt!2407124 (regTwo!33394 r!7292) Nil!65498 s!2326 s!2326) lt!2407304)))

(declare-fun b!6565954 () Bool)

(assert (=> b!6565954 (= e!3974557 e!3974561)))

(declare-fun c!1206810 () Bool)

(assert (=> b!6565954 (= c!1206810 ((_ is Nil!65498) s!2326))))

(declare-fun b!6565955 () Bool)

(declare-fun res!2694439 () Bool)

(assert (=> b!6565955 (=> (not res!2694439) (not e!3974560))))

(assert (=> b!6565955 (= res!2694439 (matchR!8624 lt!2407124 (_1!36723 (get!22743 lt!2407304))))))

(assert (= (and d!2060212 res!2694437) b!6565953))

(assert (= (and d!2060212 c!1206809) b!6565949))

(assert (= (and d!2060212 (not c!1206809)) b!6565954))

(assert (= (and b!6565954 c!1206810) b!6565948))

(assert (= (and b!6565954 (not c!1206810)) b!6565947))

(assert (= (and d!2060212 res!2694440) b!6565955))

(assert (= (and b!6565955 res!2694439) b!6565950))

(assert (= (and b!6565950 res!2694441) b!6565951))

(assert (= (and d!2060212 (not res!2694438)) b!6565952))

(declare-fun m!7348156 () Bool)

(assert (=> d!2060212 m!7348156))

(declare-fun m!7348158 () Bool)

(assert (=> d!2060212 m!7348158))

(assert (=> d!2060212 m!7347854))

(assert (=> b!6565952 m!7348156))

(assert (=> b!6565947 m!7347602))

(assert (=> b!6565947 m!7347602))

(assert (=> b!6565947 m!7347604))

(assert (=> b!6565947 m!7347606))

(assert (=> b!6565947 m!7347602))

(declare-fun m!7348160 () Bool)

(assert (=> b!6565947 m!7348160))

(declare-fun m!7348162 () Bool)

(assert (=> b!6565951 m!7348162))

(declare-fun m!7348164 () Bool)

(assert (=> b!6565951 m!7348164))

(assert (=> b!6565950 m!7348162))

(declare-fun m!7348166 () Bool)

(assert (=> b!6565950 m!7348166))

(assert (=> b!6565955 m!7348162))

(declare-fun m!7348168 () Bool)

(assert (=> b!6565955 m!7348168))

(assert (=> b!6565953 m!7347618))

(assert (=> b!6565271 d!2060212))

(declare-fun bs!1677073 () Bool)

(declare-fun d!2060218 () Bool)

(assert (= bs!1677073 (and d!2060218 b!6565269)))

(declare-fun lambda!365447 () Int)

(assert (=> bs!1677073 (= lambda!365447 lambda!365372)))

(declare-fun bs!1677074 () Bool)

(assert (= bs!1677074 (and d!2060218 d!2060060)))

(assert (=> bs!1677074 (= lambda!365447 lambda!365396)))

(declare-fun bs!1677075 () Bool)

(assert (= bs!1677075 (and d!2060218 d!2060062)))

(assert (=> bs!1677075 (= lambda!365447 lambda!365397)))

(declare-fun bs!1677076 () Bool)

(assert (= bs!1677076 (and d!2060218 d!2060168)))

(assert (=> bs!1677076 (= lambda!365447 lambda!365432)))

(assert (=> d!2060218 (matchZipper!2453 (store ((as const (Array Context!11650 Bool)) false) (Context!11651 (++!14585 (exprs!6325 lt!2407138) (exprs!6325 lt!2407173))) true) (++!14584 (_1!36723 lt!2407137) (_2!36723 lt!2407137)))))

(declare-fun lt!2407311 () Unit!159099)

(assert (=> d!2060218 (= lt!2407311 (lemmaConcatPreservesForall!414 (exprs!6325 lt!2407138) (exprs!6325 lt!2407173) lambda!365447))))

(declare-fun lt!2407310 () Unit!159099)

(declare-fun choose!49006 (Context!11650 Context!11650 List!65622 List!65622) Unit!159099)

(assert (=> d!2060218 (= lt!2407310 (choose!49006 lt!2407138 lt!2407173 (_1!36723 lt!2407137) (_2!36723 lt!2407137)))))

(assert (=> d!2060218 (matchZipper!2453 (store ((as const (Array Context!11650 Bool)) false) lt!2407138 true) (_1!36723 lt!2407137))))

(assert (=> d!2060218 (= (lemmaConcatenateContextMatchesConcatOfStrings!222 lt!2407138 lt!2407173 (_1!36723 lt!2407137) (_2!36723 lt!2407137)) lt!2407310)))

(declare-fun bs!1677077 () Bool)

(assert (= bs!1677077 d!2060218))

(assert (=> bs!1677077 m!7347354))

(declare-fun m!7348188 () Bool)

(assert (=> bs!1677077 m!7348188))

(assert (=> bs!1677077 m!7347452))

(declare-fun m!7348190 () Bool)

(assert (=> bs!1677077 m!7348190))

(assert (=> bs!1677077 m!7347354))

(declare-fun m!7348192 () Bool)

(assert (=> bs!1677077 m!7348192))

(declare-fun m!7348194 () Bool)

(assert (=> bs!1677077 m!7348194))

(declare-fun m!7348196 () Bool)

(assert (=> bs!1677077 m!7348196))

(assert (=> bs!1677077 m!7348192))

(assert (=> bs!1677077 m!7347452))

(declare-fun m!7348198 () Bool)

(assert (=> bs!1677077 m!7348198))

(assert (=> b!6565271 d!2060218))

(assert (=> b!6565271 d!2060196))

(declare-fun d!2060228 () Bool)

(assert (=> d!2060228 (= (Exists!3511 lambda!365374) (choose!48988 lambda!365374))))

(declare-fun bs!1677078 () Bool)

(assert (= bs!1677078 d!2060228))

(declare-fun m!7348200 () Bool)

(assert (=> bs!1677078 m!7348200))

(assert (=> b!6565271 d!2060228))

(declare-fun d!2060230 () Bool)

(assert (=> d!2060230 (= (matchR!8624 (Concat!25286 (Concat!25286 (reg!16770 (regOne!33394 r!7292)) lt!2407122) (regTwo!33394 r!7292)) s!2326) (matchR!8624 (Concat!25286 (reg!16770 (regOne!33394 r!7292)) (Concat!25286 lt!2407122 (regTwo!33394 r!7292))) s!2326))))

(declare-fun lt!2407316 () Unit!159099)

(declare-fun choose!49007 (Regex!16441 Regex!16441 Regex!16441 List!65622) Unit!159099)

(assert (=> d!2060230 (= lt!2407316 (choose!49007 (reg!16770 (regOne!33394 r!7292)) lt!2407122 (regTwo!33394 r!7292) s!2326))))

(declare-fun e!3974577 () Bool)

(assert (=> d!2060230 e!3974577))

(declare-fun res!2694453 () Bool)

(assert (=> d!2060230 (=> (not res!2694453) (not e!3974577))))

(assert (=> d!2060230 (= res!2694453 (validRegex!8177 (reg!16770 (regOne!33394 r!7292))))))

(assert (=> d!2060230 (= (lemmaConcatAssociative!138 (reg!16770 (regOne!33394 r!7292)) lt!2407122 (regTwo!33394 r!7292) s!2326) lt!2407316)))

(declare-fun b!6565979 () Bool)

(declare-fun res!2694454 () Bool)

(assert (=> b!6565979 (=> (not res!2694454) (not e!3974577))))

(assert (=> b!6565979 (= res!2694454 (validRegex!8177 lt!2407122))))

(declare-fun b!6565980 () Bool)

(assert (=> b!6565980 (= e!3974577 (validRegex!8177 (regTwo!33394 r!7292)))))

(assert (= (and d!2060230 res!2694453) b!6565979))

(assert (= (and b!6565979 res!2694454) b!6565980))

(declare-fun m!7348202 () Bool)

(assert (=> d!2060230 m!7348202))

(declare-fun m!7348204 () Bool)

(assert (=> d!2060230 m!7348204))

(declare-fun m!7348206 () Bool)

(assert (=> d!2060230 m!7348206))

(assert (=> d!2060230 m!7347724))

(assert (=> b!6565979 m!7347310))

(declare-fun m!7348208 () Bool)

(assert (=> b!6565980 m!7348208))

(assert (=> b!6565271 d!2060230))

(declare-fun bs!1677079 () Bool)

(declare-fun b!6565995 () Bool)

(assert (= bs!1677079 (and b!6565995 d!2060050)))

(declare-fun lambda!365450 () Int)

(assert (=> bs!1677079 (not (= lambda!365450 lambda!365389))))

(declare-fun bs!1677080 () Bool)

(assert (= bs!1677080 (and b!6565995 b!6565271)))

(assert (=> bs!1677080 (not (= lambda!365450 lambda!365373))))

(declare-fun bs!1677081 () Bool)

(assert (= bs!1677081 (and b!6565995 d!2060084)))

(assert (=> bs!1677081 (not (= lambda!365450 lambda!365406))))

(declare-fun bs!1677082 () Bool)

(assert (= bs!1677082 (and b!6565995 b!6565238)))

(assert (=> bs!1677082 (not (= lambda!365450 lambda!365369))))

(declare-fun bs!1677083 () Bool)

(assert (= bs!1677083 (and b!6565995 b!6565241)))

(assert (=> bs!1677083 (not (= lambda!365450 lambda!365376))))

(assert (=> bs!1677081 (not (= lambda!365450 lambda!365407))))

(declare-fun bs!1677084 () Bool)

(assert (= bs!1677084 (and b!6565995 b!6565719)))

(assert (=> bs!1677084 (not (= lambda!365450 lambda!365424))))

(assert (=> bs!1677079 (not (= lambda!365450 lambda!365388))))

(declare-fun bs!1677085 () Bool)

(assert (= bs!1677085 (and b!6565995 b!6565714)))

(assert (=> bs!1677085 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (reg!16770 lt!2407164) (reg!16770 lt!2407124)) (= lt!2407164 lt!2407124)) (= lambda!365450 lambda!365421))))

(assert (=> bs!1677083 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (reg!16770 lt!2407164) (reg!16770 (regOne!33394 r!7292))) (= lt!2407164 lt!2407122)) (= lambda!365450 lambda!365377))))

(assert (=> bs!1677082 (not (= lambda!365450 lambda!365368))))

(declare-fun bs!1677086 () Bool)

(assert (= bs!1677086 (and b!6565995 d!2060206)))

(assert (=> bs!1677086 (not (= lambda!365450 lambda!365441))))

(declare-fun bs!1677087 () Bool)

(assert (= bs!1677087 (and b!6565995 d!2060076)))

(assert (=> bs!1677087 (not (= lambda!365450 lambda!365404))))

(assert (=> bs!1677087 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (reg!16770 lt!2407164) (reg!16770 (regOne!33394 r!7292))) (= lt!2407164 (Star!16441 (reg!16770 (regOne!33394 r!7292))))) (= lambda!365450 lambda!365405))))

(assert (=> bs!1677086 (not (= lambda!365450 lambda!365440))))

(declare-fun bs!1677088 () Bool)

(assert (= bs!1677088 (and b!6565995 d!2060090)))

(assert (=> bs!1677088 (not (= lambda!365450 lambda!365408))))

(declare-fun bs!1677090 () Bool)

(assert (= bs!1677090 (and b!6565995 d!2060046)))

(assert (=> bs!1677090 (not (= lambda!365450 lambda!365380))))

(assert (=> bs!1677083 (not (= lambda!365450 lambda!365375))))

(assert (=> bs!1677080 (not (= lambda!365450 lambda!365374))))

(assert (=> b!6565995 true))

(assert (=> b!6565995 true))

(declare-fun bs!1677091 () Bool)

(declare-fun b!6566000 () Bool)

(assert (= bs!1677091 (and b!6566000 b!6565995)))

(declare-fun lambda!365452 () Int)

(assert (=> bs!1677091 (not (= lambda!365452 lambda!365450))))

(declare-fun bs!1677092 () Bool)

(assert (= bs!1677092 (and b!6566000 d!2060050)))

(assert (=> bs!1677092 (= (and (= (regOne!33394 lt!2407164) (regOne!33394 r!7292)) (= (regTwo!33394 lt!2407164) (regTwo!33394 r!7292))) (= lambda!365452 lambda!365389))))

(declare-fun bs!1677093 () Bool)

(assert (= bs!1677093 (and b!6566000 b!6565271)))

(assert (=> bs!1677093 (not (= lambda!365452 lambda!365373))))

(declare-fun bs!1677094 () Bool)

(assert (= bs!1677094 (and b!6566000 d!2060084)))

(assert (=> bs!1677094 (not (= lambda!365452 lambda!365406))))

(declare-fun bs!1677095 () Bool)

(assert (= bs!1677095 (and b!6566000 b!6565238)))

(assert (=> bs!1677095 (= (and (= (regOne!33394 lt!2407164) (regOne!33394 r!7292)) (= (regTwo!33394 lt!2407164) (regTwo!33394 r!7292))) (= lambda!365452 lambda!365369))))

(declare-fun bs!1677096 () Bool)

(assert (= bs!1677096 (and b!6566000 b!6565241)))

(assert (=> bs!1677096 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 lt!2407164) (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 lt!2407164) lt!2407122)) (= lambda!365452 lambda!365376))))

(assert (=> bs!1677094 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 lt!2407164) (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 lt!2407164) lt!2407122)) (= lambda!365452 lambda!365407))))

(declare-fun bs!1677097 () Bool)

(assert (= bs!1677097 (and b!6566000 b!6565719)))

(assert (=> bs!1677097 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 lt!2407164) (regOne!33394 lt!2407124)) (= (regTwo!33394 lt!2407164) (regTwo!33394 lt!2407124))) (= lambda!365452 lambda!365424))))

(assert (=> bs!1677092 (not (= lambda!365452 lambda!365388))))

(declare-fun bs!1677098 () Bool)

(assert (= bs!1677098 (and b!6566000 b!6565714)))

(assert (=> bs!1677098 (not (= lambda!365452 lambda!365421))))

(assert (=> bs!1677096 (not (= lambda!365452 lambda!365377))))

(assert (=> bs!1677095 (not (= lambda!365452 lambda!365368))))

(declare-fun bs!1677100 () Bool)

(assert (= bs!1677100 (and b!6566000 d!2060206)))

(assert (=> bs!1677100 (= (and (= (regOne!33394 lt!2407164) lt!2407124) (= (regTwo!33394 lt!2407164) (regTwo!33394 r!7292))) (= lambda!365452 lambda!365441))))

(declare-fun bs!1677102 () Bool)

(assert (= bs!1677102 (and b!6566000 d!2060076)))

(assert (=> bs!1677102 (not (= lambda!365452 lambda!365404))))

(assert (=> bs!1677102 (not (= lambda!365452 lambda!365405))))

(assert (=> bs!1677100 (not (= lambda!365452 lambda!365440))))

(declare-fun bs!1677104 () Bool)

(assert (= bs!1677104 (and b!6566000 d!2060090)))

(assert (=> bs!1677104 (not (= lambda!365452 lambda!365408))))

(declare-fun bs!1677105 () Bool)

(assert (= bs!1677105 (and b!6566000 d!2060046)))

(assert (=> bs!1677105 (not (= lambda!365452 lambda!365380))))

(assert (=> bs!1677096 (not (= lambda!365452 lambda!365375))))

(assert (=> bs!1677093 (= (and (= (regOne!33394 lt!2407164) lt!2407124) (= (regTwo!33394 lt!2407164) (regTwo!33394 r!7292))) (= lambda!365452 lambda!365374))))

(assert (=> b!6566000 true))

(assert (=> b!6566000 true))

(declare-fun d!2060232 () Bool)

(declare-fun c!1206823 () Bool)

(assert (=> d!2060232 (= c!1206823 ((_ is EmptyExpr!16441) lt!2407164))))

(declare-fun e!3974589 () Bool)

(assert (=> d!2060232 (= (matchRSpec!3542 lt!2407164 s!2326) e!3974589)))

(declare-fun b!6565991 () Bool)

(declare-fun call!571283 () Bool)

(assert (=> b!6565991 (= e!3974589 call!571283)))

(declare-fun b!6565992 () Bool)

(declare-fun c!1206822 () Bool)

(assert (=> b!6565992 (= c!1206822 ((_ is ElementMatch!16441) lt!2407164))))

(declare-fun e!3974590 () Bool)

(declare-fun e!3974586 () Bool)

(assert (=> b!6565992 (= e!3974590 e!3974586)))

(declare-fun b!6565993 () Bool)

(assert (=> b!6565993 (= e!3974589 e!3974590)))

(declare-fun res!2694457 () Bool)

(assert (=> b!6565993 (= res!2694457 (not ((_ is EmptyLang!16441) lt!2407164)))))

(assert (=> b!6565993 (=> (not res!2694457) (not e!3974590))))

(declare-fun b!6565994 () Bool)

(declare-fun e!3974588 () Bool)

(declare-fun e!3974587 () Bool)

(assert (=> b!6565994 (= e!3974588 e!3974587)))

(declare-fun c!1206824 () Bool)

(assert (=> b!6565994 (= c!1206824 ((_ is Star!16441) lt!2407164))))

(declare-fun e!3974585 () Bool)

(declare-fun call!571284 () Bool)

(assert (=> b!6565995 (= e!3974585 call!571284)))

(declare-fun b!6565996 () Bool)

(assert (=> b!6565996 (= e!3974586 (= s!2326 (Cons!65498 (c!1206624 lt!2407164) Nil!65498)))))

(declare-fun b!6565997 () Bool)

(declare-fun res!2694458 () Bool)

(assert (=> b!6565997 (=> res!2694458 e!3974585)))

(assert (=> b!6565997 (= res!2694458 call!571283)))

(assert (=> b!6565997 (= e!3974587 e!3974585)))

(declare-fun b!6565998 () Bool)

(declare-fun c!1206821 () Bool)

(assert (=> b!6565998 (= c!1206821 ((_ is Union!16441) lt!2407164))))

(assert (=> b!6565998 (= e!3974586 e!3974588)))

(declare-fun bm!571278 () Bool)

(assert (=> bm!571278 (= call!571283 (isEmpty!37743 s!2326))))

(declare-fun b!6565999 () Bool)

(declare-fun e!3974584 () Bool)

(assert (=> b!6565999 (= e!3974584 (matchRSpec!3542 (regTwo!33395 lt!2407164) s!2326))))

(assert (=> b!6566000 (= e!3974587 call!571284)))

(declare-fun bm!571279 () Bool)

(assert (=> bm!571279 (= call!571284 (Exists!3511 (ite c!1206824 lambda!365450 lambda!365452)))))

(declare-fun b!6566001 () Bool)

(assert (=> b!6566001 (= e!3974588 e!3974584)))

(declare-fun res!2694459 () Bool)

(assert (=> b!6566001 (= res!2694459 (matchRSpec!3542 (regOne!33395 lt!2407164) s!2326))))

(assert (=> b!6566001 (=> res!2694459 e!3974584)))

(assert (= (and d!2060232 c!1206823) b!6565991))

(assert (= (and d!2060232 (not c!1206823)) b!6565993))

(assert (= (and b!6565993 res!2694457) b!6565992))

(assert (= (and b!6565992 c!1206822) b!6565996))

(assert (= (and b!6565992 (not c!1206822)) b!6565998))

(assert (= (and b!6565998 c!1206821) b!6566001))

(assert (= (and b!6565998 (not c!1206821)) b!6565994))

(assert (= (and b!6566001 (not res!2694459)) b!6565999))

(assert (= (and b!6565994 c!1206824) b!6565997))

(assert (= (and b!6565994 (not c!1206824)) b!6566000))

(assert (= (and b!6565997 (not res!2694458)) b!6565995))

(assert (= (or b!6565995 b!6566000) bm!571279))

(assert (= (or b!6565991 b!6565997) bm!571278))

(assert (=> bm!571278 m!7347554))

(declare-fun m!7348258 () Bool)

(assert (=> b!6565999 m!7348258))

(declare-fun m!7348260 () Bool)

(assert (=> bm!571279 m!7348260))

(declare-fun m!7348262 () Bool)

(assert (=> b!6566001 m!7348262))

(assert (=> b!6565271 d!2060232))

(declare-fun b!6566022 () Bool)

(declare-fun e!3974607 () Bool)

(declare-fun e!3974608 () Bool)

(assert (=> b!6566022 (= e!3974607 e!3974608)))

(declare-fun res!2694465 () Bool)

(assert (=> b!6566022 (=> (not res!2694465) (not e!3974608))))

(declare-fun lt!2407321 () Bool)

(assert (=> b!6566022 (= res!2694465 (not lt!2407321))))

(declare-fun b!6566023 () Bool)

(declare-fun e!3974609 () Bool)

(assert (=> b!6566023 (= e!3974609 (not lt!2407321))))

(declare-fun b!6566024 () Bool)

(declare-fun res!2694470 () Bool)

(assert (=> b!6566024 (=> res!2694470 e!3974607)))

(declare-fun e!3974603 () Bool)

(assert (=> b!6566024 (= res!2694470 e!3974603)))

(declare-fun res!2694469 () Bool)

(assert (=> b!6566024 (=> (not res!2694469) (not e!3974603))))

(assert (=> b!6566024 (= res!2694469 lt!2407321)))

(declare-fun b!6566025 () Bool)

(declare-fun res!2694471 () Bool)

(declare-fun e!3974604 () Bool)

(assert (=> b!6566025 (=> res!2694471 e!3974604)))

(assert (=> b!6566025 (= res!2694471 (not (isEmpty!37743 (tail!12416 s!2326))))))

(declare-fun b!6566026 () Bool)

(assert (=> b!6566026 (= e!3974608 e!3974604)))

(declare-fun res!2694464 () Bool)

(assert (=> b!6566026 (=> res!2694464 e!3974604)))

(declare-fun call!571287 () Bool)

(assert (=> b!6566026 (= res!2694464 call!571287)))

(declare-fun b!6566027 () Bool)

(assert (=> b!6566027 (= e!3974604 (not (= (head!13331 s!2326) (c!1206624 lt!2407164))))))

(declare-fun b!6566028 () Bool)

(declare-fun res!2694467 () Bool)

(assert (=> b!6566028 (=> (not res!2694467) (not e!3974603))))

(assert (=> b!6566028 (= res!2694467 (isEmpty!37743 (tail!12416 s!2326)))))

(declare-fun b!6566029 () Bool)

(declare-fun e!3974605 () Bool)

(assert (=> b!6566029 (= e!3974605 (nullable!6434 lt!2407164))))

(declare-fun b!6566030 () Bool)

(declare-fun e!3974606 () Bool)

(assert (=> b!6566030 (= e!3974606 e!3974609)))

(declare-fun c!1206835 () Bool)

(assert (=> b!6566030 (= c!1206835 ((_ is EmptyLang!16441) lt!2407164))))

(declare-fun b!6566031 () Bool)

(declare-fun res!2694468 () Bool)

(assert (=> b!6566031 (=> (not res!2694468) (not e!3974603))))

(assert (=> b!6566031 (= res!2694468 (not call!571287))))

(declare-fun b!6566032 () Bool)

(declare-fun res!2694466 () Bool)

(assert (=> b!6566032 (=> res!2694466 e!3974607)))

(assert (=> b!6566032 (= res!2694466 (not ((_ is ElementMatch!16441) lt!2407164)))))

(assert (=> b!6566032 (= e!3974609 e!3974607)))

(declare-fun b!6566033 () Bool)

(assert (=> b!6566033 (= e!3974606 (= lt!2407321 call!571287))))

(declare-fun b!6566034 () Bool)

(assert (=> b!6566034 (= e!3974603 (= (head!13331 s!2326) (c!1206624 lt!2407164)))))

(declare-fun b!6566035 () Bool)

(assert (=> b!6566035 (= e!3974605 (matchR!8624 (derivativeStep!5124 lt!2407164 (head!13331 s!2326)) (tail!12416 s!2326)))))

(declare-fun bm!571282 () Bool)

(assert (=> bm!571282 (= call!571287 (isEmpty!37743 s!2326))))

(declare-fun d!2060250 () Bool)

(assert (=> d!2060250 e!3974606))

(declare-fun c!1206833 () Bool)

(assert (=> d!2060250 (= c!1206833 ((_ is EmptyExpr!16441) lt!2407164))))

(assert (=> d!2060250 (= lt!2407321 e!3974605)))

(declare-fun c!1206834 () Bool)

(assert (=> d!2060250 (= c!1206834 (isEmpty!37743 s!2326))))

(assert (=> d!2060250 (validRegex!8177 lt!2407164)))

(assert (=> d!2060250 (= (matchR!8624 lt!2407164 s!2326) lt!2407321)))

(assert (= (and d!2060250 c!1206834) b!6566029))

(assert (= (and d!2060250 (not c!1206834)) b!6566035))

(assert (= (and d!2060250 c!1206833) b!6566033))

(assert (= (and d!2060250 (not c!1206833)) b!6566030))

(assert (= (and b!6566030 c!1206835) b!6566023))

(assert (= (and b!6566030 (not c!1206835)) b!6566032))

(assert (= (and b!6566032 (not res!2694466)) b!6566024))

(assert (= (and b!6566024 res!2694469) b!6566031))

(assert (= (and b!6566031 res!2694468) b!6566028))

(assert (= (and b!6566028 res!2694467) b!6566034))

(assert (= (and b!6566024 (not res!2694470)) b!6566022))

(assert (= (and b!6566022 res!2694465) b!6566026))

(assert (= (and b!6566026 (not res!2694464)) b!6566025))

(assert (= (and b!6566025 (not res!2694471)) b!6566027))

(assert (= (or b!6566033 b!6566026 b!6566031) bm!571282))

(assert (=> b!6566034 m!7347558))

(assert (=> b!6566035 m!7347558))

(assert (=> b!6566035 m!7347558))

(declare-fun m!7348264 () Bool)

(assert (=> b!6566035 m!7348264))

(assert (=> b!6566035 m!7347562))

(assert (=> b!6566035 m!7348264))

(assert (=> b!6566035 m!7347562))

(declare-fun m!7348268 () Bool)

(assert (=> b!6566035 m!7348268))

(assert (=> b!6566028 m!7347562))

(assert (=> b!6566028 m!7347562))

(declare-fun m!7348270 () Bool)

(assert (=> b!6566028 m!7348270))

(assert (=> b!6566025 m!7347562))

(assert (=> b!6566025 m!7347562))

(assert (=> b!6566025 m!7348270))

(assert (=> b!6566027 m!7347558))

(assert (=> d!2060250 m!7347554))

(declare-fun m!7348272 () Bool)

(assert (=> d!2060250 m!7348272))

(declare-fun m!7348274 () Bool)

(assert (=> b!6566029 m!7348274))

(assert (=> bm!571282 m!7347554))

(assert (=> b!6565271 d!2060250))

(declare-fun d!2060254 () Bool)

(assert (=> d!2060254 (= (matchR!8624 (reg!16770 (regOne!33394 r!7292)) (_1!36723 lt!2407137)) (matchZipper!2453 lt!2407140 (_1!36723 lt!2407137)))))

(declare-fun lt!2407329 () Unit!159099)

(declare-fun choose!49009 ((InoxSet Context!11650) List!65624 Regex!16441 List!65622) Unit!159099)

(assert (=> d!2060254 (= lt!2407329 (choose!49009 lt!2407140 lt!2407134 (reg!16770 (regOne!33394 r!7292)) (_1!36723 lt!2407137)))))

(assert (=> d!2060254 (validRegex!8177 (reg!16770 (regOne!33394 r!7292)))))

(assert (=> d!2060254 (= (theoremZipperRegexEquiv!877 lt!2407140 lt!2407134 (reg!16770 (regOne!33394 r!7292)) (_1!36723 lt!2407137)) lt!2407329)))

(declare-fun bs!1677114 () Bool)

(assert (= bs!1677114 d!2060254))

(assert (=> bs!1677114 m!7347398))

(assert (=> bs!1677114 m!7347396))

(declare-fun m!7348318 () Bool)

(assert (=> bs!1677114 m!7348318))

(assert (=> bs!1677114 m!7347724))

(assert (=> b!6565271 d!2060254))

(declare-fun b!6566060 () Bool)

(declare-fun e!3974628 () Bool)

(declare-fun e!3974629 () Bool)

(assert (=> b!6566060 (= e!3974628 e!3974629)))

(declare-fun res!2694485 () Bool)

(assert (=> b!6566060 (=> (not res!2694485) (not e!3974629))))

(declare-fun lt!2407330 () Bool)

(assert (=> b!6566060 (= res!2694485 (not lt!2407330))))

(declare-fun b!6566061 () Bool)

(declare-fun e!3974630 () Bool)

(assert (=> b!6566061 (= e!3974630 (not lt!2407330))))

(declare-fun b!6566062 () Bool)

(declare-fun res!2694490 () Bool)

(assert (=> b!6566062 (=> res!2694490 e!3974628)))

(declare-fun e!3974624 () Bool)

(assert (=> b!6566062 (= res!2694490 e!3974624)))

(declare-fun res!2694489 () Bool)

(assert (=> b!6566062 (=> (not res!2694489) (not e!3974624))))

(assert (=> b!6566062 (= res!2694489 lt!2407330)))

(declare-fun b!6566063 () Bool)

(declare-fun res!2694491 () Bool)

(declare-fun e!3974625 () Bool)

(assert (=> b!6566063 (=> res!2694491 e!3974625)))

(assert (=> b!6566063 (= res!2694491 (not (isEmpty!37743 (tail!12416 (_1!36723 lt!2407152)))))))

(declare-fun b!6566064 () Bool)

(assert (=> b!6566064 (= e!3974629 e!3974625)))

(declare-fun res!2694484 () Bool)

(assert (=> b!6566064 (=> res!2694484 e!3974625)))

(declare-fun call!571290 () Bool)

(assert (=> b!6566064 (= res!2694484 call!571290)))

(declare-fun b!6566065 () Bool)

(assert (=> b!6566065 (= e!3974625 (not (= (head!13331 (_1!36723 lt!2407152)) (c!1206624 lt!2407124))))))

(declare-fun b!6566066 () Bool)

(declare-fun res!2694487 () Bool)

(assert (=> b!6566066 (=> (not res!2694487) (not e!3974624))))

(assert (=> b!6566066 (= res!2694487 (isEmpty!37743 (tail!12416 (_1!36723 lt!2407152))))))

(declare-fun b!6566067 () Bool)

(declare-fun e!3974626 () Bool)

(assert (=> b!6566067 (= e!3974626 (nullable!6434 lt!2407124))))

(declare-fun b!6566068 () Bool)

(declare-fun e!3974627 () Bool)

(assert (=> b!6566068 (= e!3974627 e!3974630)))

(declare-fun c!1206844 () Bool)

(assert (=> b!6566068 (= c!1206844 ((_ is EmptyLang!16441) lt!2407124))))

(declare-fun b!6566069 () Bool)

(declare-fun res!2694488 () Bool)

(assert (=> b!6566069 (=> (not res!2694488) (not e!3974624))))

(assert (=> b!6566069 (= res!2694488 (not call!571290))))

(declare-fun b!6566070 () Bool)

(declare-fun res!2694486 () Bool)

(assert (=> b!6566070 (=> res!2694486 e!3974628)))

(assert (=> b!6566070 (= res!2694486 (not ((_ is ElementMatch!16441) lt!2407124)))))

(assert (=> b!6566070 (= e!3974630 e!3974628)))

(declare-fun b!6566071 () Bool)

(assert (=> b!6566071 (= e!3974627 (= lt!2407330 call!571290))))

(declare-fun b!6566072 () Bool)

(assert (=> b!6566072 (= e!3974624 (= (head!13331 (_1!36723 lt!2407152)) (c!1206624 lt!2407124)))))

(declare-fun b!6566073 () Bool)

(assert (=> b!6566073 (= e!3974626 (matchR!8624 (derivativeStep!5124 lt!2407124 (head!13331 (_1!36723 lt!2407152))) (tail!12416 (_1!36723 lt!2407152))))))

(declare-fun bm!571285 () Bool)

(assert (=> bm!571285 (= call!571290 (isEmpty!37743 (_1!36723 lt!2407152)))))

(declare-fun d!2060270 () Bool)

(assert (=> d!2060270 e!3974627))

(declare-fun c!1206842 () Bool)

(assert (=> d!2060270 (= c!1206842 ((_ is EmptyExpr!16441) lt!2407124))))

(assert (=> d!2060270 (= lt!2407330 e!3974626)))

(declare-fun c!1206843 () Bool)

(assert (=> d!2060270 (= c!1206843 (isEmpty!37743 (_1!36723 lt!2407152)))))

(assert (=> d!2060270 (validRegex!8177 lt!2407124)))

(assert (=> d!2060270 (= (matchR!8624 lt!2407124 (_1!36723 lt!2407152)) lt!2407330)))

(assert (= (and d!2060270 c!1206843) b!6566067))

(assert (= (and d!2060270 (not c!1206843)) b!6566073))

(assert (= (and d!2060270 c!1206842) b!6566071))

(assert (= (and d!2060270 (not c!1206842)) b!6566068))

(assert (= (and b!6566068 c!1206844) b!6566061))

(assert (= (and b!6566068 (not c!1206844)) b!6566070))

(assert (= (and b!6566070 (not res!2694486)) b!6566062))

(assert (= (and b!6566062 res!2694489) b!6566069))

(assert (= (and b!6566069 res!2694488) b!6566066))

(assert (= (and b!6566066 res!2694487) b!6566072))

(assert (= (and b!6566062 (not res!2694490)) b!6566060))

(assert (= (and b!6566060 res!2694485) b!6566064))

(assert (= (and b!6566064 (not res!2694484)) b!6566063))

(assert (= (and b!6566063 (not res!2694491)) b!6566065))

(assert (= (or b!6566071 b!6566064 b!6566069) bm!571285))

(declare-fun m!7348330 () Bool)

(assert (=> b!6566072 m!7348330))

(assert (=> b!6566073 m!7348330))

(assert (=> b!6566073 m!7348330))

(declare-fun m!7348332 () Bool)

(assert (=> b!6566073 m!7348332))

(declare-fun m!7348334 () Bool)

(assert (=> b!6566073 m!7348334))

(assert (=> b!6566073 m!7348332))

(assert (=> b!6566073 m!7348334))

(declare-fun m!7348336 () Bool)

(assert (=> b!6566073 m!7348336))

(assert (=> b!6566066 m!7348334))

(assert (=> b!6566066 m!7348334))

(declare-fun m!7348338 () Bool)

(assert (=> b!6566066 m!7348338))

(assert (=> b!6566063 m!7348334))

(assert (=> b!6566063 m!7348334))

(assert (=> b!6566063 m!7348338))

(assert (=> b!6566065 m!7348330))

(assert (=> d!2060270 m!7347884))

(assert (=> d!2060270 m!7347854))

(declare-fun m!7348340 () Bool)

(assert (=> b!6566067 m!7348340))

(assert (=> bm!571285 m!7347884))

(assert (=> b!6565271 d!2060270))

(declare-fun d!2060276 () Bool)

(assert (=> d!2060276 (= (matchR!8624 lt!2407164 s!2326) (matchRSpec!3542 lt!2407164 s!2326))))

(declare-fun lt!2407332 () Unit!159099)

(assert (=> d!2060276 (= lt!2407332 (choose!48999 lt!2407164 s!2326))))

(assert (=> d!2060276 (validRegex!8177 lt!2407164)))

(assert (=> d!2060276 (= (mainMatchTheorem!3542 lt!2407164 s!2326) lt!2407332)))

(declare-fun bs!1677116 () Bool)

(assert (= bs!1677116 d!2060276))

(assert (=> bs!1677116 m!7347412))

(assert (=> bs!1677116 m!7347404))

(declare-fun m!7348342 () Bool)

(assert (=> bs!1677116 m!7348342))

(assert (=> bs!1677116 m!7348272))

(assert (=> b!6565271 d!2060276))

(declare-fun bs!1677117 () Bool)

(declare-fun d!2060278 () Bool)

(assert (= bs!1677117 (and d!2060278 b!6565995)))

(declare-fun lambda!365458 () Int)

(assert (=> bs!1677117 (not (= lambda!365458 lambda!365450))))

(declare-fun bs!1677118 () Bool)

(assert (= bs!1677118 (and d!2060278 d!2060050)))

(assert (=> bs!1677118 (not (= lambda!365458 lambda!365389))))

(declare-fun bs!1677120 () Bool)

(assert (= bs!1677120 (and d!2060278 b!6565271)))

(assert (=> bs!1677120 (= lambda!365458 lambda!365373)))

(declare-fun bs!1677121 () Bool)

(assert (= bs!1677121 (and d!2060278 d!2060084)))

(assert (=> bs!1677121 (= (and (= s!2326 (_1!36723 lt!2407152)) (= lt!2407124 (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365458 lambda!365406))))

(declare-fun bs!1677123 () Bool)

(assert (= bs!1677123 (and d!2060278 b!6565238)))

(assert (=> bs!1677123 (not (= lambda!365458 lambda!365369))))

(declare-fun bs!1677124 () Bool)

(assert (= bs!1677124 (and d!2060278 b!6565241)))

(assert (=> bs!1677124 (not (= lambda!365458 lambda!365376))))

(assert (=> bs!1677121 (not (= lambda!365458 lambda!365407))))

(declare-fun bs!1677125 () Bool)

(assert (= bs!1677125 (and d!2060278 b!6565719)))

(assert (=> bs!1677125 (not (= lambda!365458 lambda!365424))))

(assert (=> bs!1677118 (= (= lt!2407124 (regOne!33394 r!7292)) (= lambda!365458 lambda!365388))))

(declare-fun bs!1677126 () Bool)

(assert (= bs!1677126 (and d!2060278 b!6565714)))

(assert (=> bs!1677126 (not (= lambda!365458 lambda!365421))))

(assert (=> bs!1677124 (not (= lambda!365458 lambda!365377))))

(assert (=> bs!1677123 (= (= lt!2407124 (regOne!33394 r!7292)) (= lambda!365458 lambda!365368))))

(declare-fun bs!1677127 () Bool)

(assert (= bs!1677127 (and d!2060278 d!2060206)))

(assert (=> bs!1677127 (not (= lambda!365458 lambda!365441))))

(declare-fun bs!1677128 () Bool)

(assert (= bs!1677128 (and d!2060278 d!2060076)))

(assert (=> bs!1677128 (= (and (= s!2326 (_1!36723 lt!2407152)) (= lt!2407124 (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) (Star!16441 (reg!16770 (regOne!33394 r!7292))))) (= lambda!365458 lambda!365404))))

(assert (=> bs!1677128 (not (= lambda!365458 lambda!365405))))

(assert (=> bs!1677127 (= lambda!365458 lambda!365440)))

(declare-fun bs!1677129 () Bool)

(assert (= bs!1677129 (and d!2060278 d!2060090)))

(assert (=> bs!1677129 (= (and (= s!2326 (_1!36723 lt!2407152)) (= lt!2407124 (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365458 lambda!365408))))

(declare-fun bs!1677130 () Bool)

(assert (= bs!1677130 (and d!2060278 d!2060046)))

(assert (=> bs!1677130 (= (= lt!2407124 (regOne!33394 r!7292)) (= lambda!365458 lambda!365380))))

(declare-fun bs!1677131 () Bool)

(assert (= bs!1677131 (and d!2060278 b!6566000)))

(assert (=> bs!1677131 (not (= lambda!365458 lambda!365452))))

(assert (=> bs!1677124 (= (and (= s!2326 (_1!36723 lt!2407152)) (= lt!2407124 (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365458 lambda!365375))))

(assert (=> bs!1677120 (not (= lambda!365458 lambda!365374))))

(assert (=> d!2060278 true))

(assert (=> d!2060278 true))

(assert (=> d!2060278 true))

(assert (=> d!2060278 (= (isDefined!13035 (findConcatSeparation!2746 lt!2407124 (regTwo!33394 r!7292) Nil!65498 s!2326 s!2326)) (Exists!3511 lambda!365458))))

(declare-fun lt!2407333 () Unit!159099)

(assert (=> d!2060278 (= lt!2407333 (choose!48991 lt!2407124 (regTwo!33394 r!7292) s!2326))))

(assert (=> d!2060278 (validRegex!8177 lt!2407124)))

(assert (=> d!2060278 (= (lemmaFindConcatSeparationEquivalentToExists!2510 lt!2407124 (regTwo!33394 r!7292) s!2326) lt!2407333)))

(declare-fun bs!1677132 () Bool)

(assert (= bs!1677132 d!2060278))

(assert (=> bs!1677132 m!7347436))

(declare-fun m!7348352 () Bool)

(assert (=> bs!1677132 m!7348352))

(declare-fun m!7348354 () Bool)

(assert (=> bs!1677132 m!7348354))

(assert (=> bs!1677132 m!7347854))

(assert (=> bs!1677132 m!7347436))

(declare-fun m!7348356 () Bool)

(assert (=> bs!1677132 m!7348356))

(assert (=> b!6565271 d!2060278))

(declare-fun b!6566078 () Bool)

(declare-fun e!3974636 () Bool)

(declare-fun e!3974637 () Bool)

(assert (=> b!6566078 (= e!3974636 e!3974637)))

(declare-fun res!2694493 () Bool)

(assert (=> b!6566078 (=> (not res!2694493) (not e!3974637))))

(declare-fun lt!2407334 () Bool)

(assert (=> b!6566078 (= res!2694493 (not lt!2407334))))

(declare-fun b!6566079 () Bool)

(declare-fun e!3974638 () Bool)

(assert (=> b!6566079 (= e!3974638 (not lt!2407334))))

(declare-fun b!6566080 () Bool)

(declare-fun res!2694498 () Bool)

(assert (=> b!6566080 (=> res!2694498 e!3974636)))

(declare-fun e!3974632 () Bool)

(assert (=> b!6566080 (= res!2694498 e!3974632)))

(declare-fun res!2694497 () Bool)

(assert (=> b!6566080 (=> (not res!2694497) (not e!3974632))))

(assert (=> b!6566080 (= res!2694497 lt!2407334)))

(declare-fun b!6566081 () Bool)

(declare-fun res!2694499 () Bool)

(declare-fun e!3974633 () Bool)

(assert (=> b!6566081 (=> res!2694499 e!3974633)))

(assert (=> b!6566081 (= res!2694499 (not (isEmpty!37743 (tail!12416 lt!2407144))))))

(declare-fun b!6566082 () Bool)

(assert (=> b!6566082 (= e!3974637 e!3974633)))

(declare-fun res!2694492 () Bool)

(assert (=> b!6566082 (=> res!2694492 e!3974633)))

(declare-fun call!571291 () Bool)

(assert (=> b!6566082 (= res!2694492 call!571291)))

(declare-fun b!6566083 () Bool)

(assert (=> b!6566083 (= e!3974633 (not (= (head!13331 lt!2407144) (c!1206624 lt!2407161))))))

(declare-fun b!6566084 () Bool)

(declare-fun res!2694495 () Bool)

(assert (=> b!6566084 (=> (not res!2694495) (not e!3974632))))

(assert (=> b!6566084 (= res!2694495 (isEmpty!37743 (tail!12416 lt!2407144)))))

(declare-fun b!6566085 () Bool)

(declare-fun e!3974634 () Bool)

(assert (=> b!6566085 (= e!3974634 (nullable!6434 lt!2407161))))

(declare-fun b!6566086 () Bool)

(declare-fun e!3974635 () Bool)

(assert (=> b!6566086 (= e!3974635 e!3974638)))

(declare-fun c!1206850 () Bool)

(assert (=> b!6566086 (= c!1206850 ((_ is EmptyLang!16441) lt!2407161))))

(declare-fun b!6566087 () Bool)

(declare-fun res!2694496 () Bool)

(assert (=> b!6566087 (=> (not res!2694496) (not e!3974632))))

(assert (=> b!6566087 (= res!2694496 (not call!571291))))

(declare-fun b!6566088 () Bool)

(declare-fun res!2694494 () Bool)

(assert (=> b!6566088 (=> res!2694494 e!3974636)))

(assert (=> b!6566088 (= res!2694494 (not ((_ is ElementMatch!16441) lt!2407161)))))

(assert (=> b!6566088 (= e!3974638 e!3974636)))

(declare-fun b!6566089 () Bool)

(assert (=> b!6566089 (= e!3974635 (= lt!2407334 call!571291))))

(declare-fun b!6566090 () Bool)

(assert (=> b!6566090 (= e!3974632 (= (head!13331 lt!2407144) (c!1206624 lt!2407161)))))

(declare-fun b!6566091 () Bool)

(assert (=> b!6566091 (= e!3974634 (matchR!8624 (derivativeStep!5124 lt!2407161 (head!13331 lt!2407144)) (tail!12416 lt!2407144)))))

(declare-fun bm!571286 () Bool)

(assert (=> bm!571286 (= call!571291 (isEmpty!37743 lt!2407144))))

(declare-fun d!2060284 () Bool)

(assert (=> d!2060284 e!3974635))

(declare-fun c!1206848 () Bool)

(assert (=> d!2060284 (= c!1206848 ((_ is EmptyExpr!16441) lt!2407161))))

(assert (=> d!2060284 (= lt!2407334 e!3974634)))

(declare-fun c!1206849 () Bool)

(assert (=> d!2060284 (= c!1206849 (isEmpty!37743 lt!2407144))))

(assert (=> d!2060284 (validRegex!8177 lt!2407161)))

(assert (=> d!2060284 (= (matchR!8624 lt!2407161 lt!2407144) lt!2407334)))

(assert (= (and d!2060284 c!1206849) b!6566085))

(assert (= (and d!2060284 (not c!1206849)) b!6566091))

(assert (= (and d!2060284 c!1206848) b!6566089))

(assert (= (and d!2060284 (not c!1206848)) b!6566086))

(assert (= (and b!6566086 c!1206850) b!6566079))

(assert (= (and b!6566086 (not c!1206850)) b!6566088))

(assert (= (and b!6566088 (not res!2694494)) b!6566080))

(assert (= (and b!6566080 res!2694497) b!6566087))

(assert (= (and b!6566087 res!2694496) b!6566084))

(assert (= (and b!6566084 res!2694495) b!6566090))

(assert (= (and b!6566080 (not res!2694498)) b!6566078))

(assert (= (and b!6566078 res!2694493) b!6566082))

(assert (= (and b!6566082 (not res!2694492)) b!6566081))

(assert (= (and b!6566081 (not res!2694499)) b!6566083))

(assert (= (or b!6566089 b!6566082 b!6566087) bm!571286))

(assert (=> b!6566090 m!7348108))

(assert (=> b!6566091 m!7348108))

(assert (=> b!6566091 m!7348108))

(declare-fun m!7348358 () Bool)

(assert (=> b!6566091 m!7348358))

(assert (=> b!6566091 m!7348112))

(assert (=> b!6566091 m!7348358))

(assert (=> b!6566091 m!7348112))

(declare-fun m!7348360 () Bool)

(assert (=> b!6566091 m!7348360))

(assert (=> b!6566084 m!7348112))

(assert (=> b!6566084 m!7348112))

(declare-fun m!7348362 () Bool)

(assert (=> b!6566084 m!7348362))

(assert (=> b!6566081 m!7348112))

(assert (=> b!6566081 m!7348112))

(assert (=> b!6566081 m!7348362))

(assert (=> b!6566083 m!7348108))

(assert (=> d!2060284 m!7348104))

(declare-fun m!7348364 () Bool)

(assert (=> d!2060284 m!7348364))

(declare-fun m!7348366 () Bool)

(assert (=> b!6566085 m!7348366))

(assert (=> bm!571286 m!7348104))

(assert (=> b!6565271 d!2060284))

(declare-fun b!6566094 () Bool)

(declare-fun e!3974645 () Bool)

(declare-fun e!3974646 () Bool)

(assert (=> b!6566094 (= e!3974645 e!3974646)))

(declare-fun res!2694503 () Bool)

(assert (=> b!6566094 (=> (not res!2694503) (not e!3974646))))

(declare-fun lt!2407337 () Bool)

(assert (=> b!6566094 (= res!2694503 (not lt!2407337))))

(declare-fun b!6566095 () Bool)

(declare-fun e!3974647 () Bool)

(assert (=> b!6566095 (= e!3974647 (not lt!2407337))))

(declare-fun b!6566096 () Bool)

(declare-fun res!2694508 () Bool)

(assert (=> b!6566096 (=> res!2694508 e!3974645)))

(declare-fun e!3974641 () Bool)

(assert (=> b!6566096 (= res!2694508 e!3974641)))

(declare-fun res!2694507 () Bool)

(assert (=> b!6566096 (=> (not res!2694507) (not e!3974641))))

(assert (=> b!6566096 (= res!2694507 lt!2407337)))

(declare-fun b!6566097 () Bool)

(declare-fun res!2694509 () Bool)

(declare-fun e!3974642 () Bool)

(assert (=> b!6566097 (=> res!2694509 e!3974642)))

(assert (=> b!6566097 (= res!2694509 (not (isEmpty!37743 (tail!12416 (_2!36723 lt!2407137)))))))

(declare-fun b!6566098 () Bool)

(assert (=> b!6566098 (= e!3974646 e!3974642)))

(declare-fun res!2694502 () Bool)

(assert (=> b!6566098 (=> res!2694502 e!3974642)))

(declare-fun call!571292 () Bool)

(assert (=> b!6566098 (= res!2694502 call!571292)))

(declare-fun b!6566099 () Bool)

(assert (=> b!6566099 (= e!3974642 (not (= (head!13331 (_2!36723 lt!2407137)) (c!1206624 lt!2407120))))))

(declare-fun b!6566100 () Bool)

(declare-fun res!2694505 () Bool)

(assert (=> b!6566100 (=> (not res!2694505) (not e!3974641))))

(assert (=> b!6566100 (= res!2694505 (isEmpty!37743 (tail!12416 (_2!36723 lt!2407137))))))

(declare-fun b!6566101 () Bool)

(declare-fun e!3974643 () Bool)

(assert (=> b!6566101 (= e!3974643 (nullable!6434 lt!2407120))))

(declare-fun b!6566102 () Bool)

(declare-fun e!3974644 () Bool)

(assert (=> b!6566102 (= e!3974644 e!3974647)))

(declare-fun c!1206853 () Bool)

(assert (=> b!6566102 (= c!1206853 ((_ is EmptyLang!16441) lt!2407120))))

(declare-fun b!6566103 () Bool)

(declare-fun res!2694506 () Bool)

(assert (=> b!6566103 (=> (not res!2694506) (not e!3974641))))

(assert (=> b!6566103 (= res!2694506 (not call!571292))))

(declare-fun b!6566104 () Bool)

(declare-fun res!2694504 () Bool)

(assert (=> b!6566104 (=> res!2694504 e!3974645)))

(assert (=> b!6566104 (= res!2694504 (not ((_ is ElementMatch!16441) lt!2407120)))))

(assert (=> b!6566104 (= e!3974647 e!3974645)))

(declare-fun b!6566105 () Bool)

(assert (=> b!6566105 (= e!3974644 (= lt!2407337 call!571292))))

(declare-fun b!6566106 () Bool)

(assert (=> b!6566106 (= e!3974641 (= (head!13331 (_2!36723 lt!2407137)) (c!1206624 lt!2407120)))))

(declare-fun b!6566107 () Bool)

(assert (=> b!6566107 (= e!3974643 (matchR!8624 (derivativeStep!5124 lt!2407120 (head!13331 (_2!36723 lt!2407137))) (tail!12416 (_2!36723 lt!2407137))))))

(declare-fun bm!571287 () Bool)

(assert (=> bm!571287 (= call!571292 (isEmpty!37743 (_2!36723 lt!2407137)))))

(declare-fun d!2060286 () Bool)

(assert (=> d!2060286 e!3974644))

(declare-fun c!1206851 () Bool)

(assert (=> d!2060286 (= c!1206851 ((_ is EmptyExpr!16441) lt!2407120))))

(assert (=> d!2060286 (= lt!2407337 e!3974643)))

(declare-fun c!1206852 () Bool)

(assert (=> d!2060286 (= c!1206852 (isEmpty!37743 (_2!36723 lt!2407137)))))

(assert (=> d!2060286 (validRegex!8177 lt!2407120)))

(assert (=> d!2060286 (= (matchR!8624 lt!2407120 (_2!36723 lt!2407137)) lt!2407337)))

(assert (= (and d!2060286 c!1206852) b!6566101))

(assert (= (and d!2060286 (not c!1206852)) b!6566107))

(assert (= (and d!2060286 c!1206851) b!6566105))

(assert (= (and d!2060286 (not c!1206851)) b!6566102))

(assert (= (and b!6566102 c!1206853) b!6566095))

(assert (= (and b!6566102 (not c!1206853)) b!6566104))

(assert (= (and b!6566104 (not res!2694504)) b!6566096))

(assert (= (and b!6566096 res!2694507) b!6566103))

(assert (= (and b!6566103 res!2694506) b!6566100))

(assert (= (and b!6566100 res!2694505) b!6566106))

(assert (= (and b!6566096 (not res!2694508)) b!6566094))

(assert (= (and b!6566094 res!2694503) b!6566098))

(assert (= (and b!6566098 (not res!2694502)) b!6566097))

(assert (= (and b!6566097 (not res!2694509)) b!6566099))

(assert (= (or b!6566105 b!6566098 b!6566103) bm!571287))

(declare-fun m!7348368 () Bool)

(assert (=> b!6566106 m!7348368))

(assert (=> b!6566107 m!7348368))

(assert (=> b!6566107 m!7348368))

(declare-fun m!7348370 () Bool)

(assert (=> b!6566107 m!7348370))

(declare-fun m!7348372 () Bool)

(assert (=> b!6566107 m!7348372))

(assert (=> b!6566107 m!7348370))

(assert (=> b!6566107 m!7348372))

(declare-fun m!7348374 () Bool)

(assert (=> b!6566107 m!7348374))

(assert (=> b!6566100 m!7348372))

(assert (=> b!6566100 m!7348372))

(declare-fun m!7348376 () Bool)

(assert (=> b!6566100 m!7348376))

(assert (=> b!6566097 m!7348372))

(assert (=> b!6566097 m!7348372))

(assert (=> b!6566097 m!7348376))

(assert (=> b!6566099 m!7348368))

(declare-fun m!7348378 () Bool)

(assert (=> d!2060286 m!7348378))

(declare-fun m!7348380 () Bool)

(assert (=> d!2060286 m!7348380))

(declare-fun m!7348382 () Bool)

(assert (=> b!6566101 m!7348382))

(assert (=> bm!571287 m!7348378))

(assert (=> b!6565271 d!2060286))

(declare-fun d!2060288 () Bool)

(assert (=> d!2060288 (= (Exists!3511 lambda!365373) (choose!48988 lambda!365373))))

(declare-fun bs!1677133 () Bool)

(assert (= bs!1677133 d!2060288))

(declare-fun m!7348386 () Bool)

(assert (=> bs!1677133 m!7348386))

(assert (=> b!6565271 d!2060288))

(declare-fun b!6566111 () Bool)

(declare-fun e!3974654 () Bool)

(declare-fun e!3974655 () Bool)

(assert (=> b!6566111 (= e!3974654 e!3974655)))

(declare-fun res!2694512 () Bool)

(assert (=> b!6566111 (=> (not res!2694512) (not e!3974655))))

(declare-fun lt!2407339 () Bool)

(assert (=> b!6566111 (= res!2694512 (not lt!2407339))))

(declare-fun b!6566112 () Bool)

(declare-fun e!3974656 () Bool)

(assert (=> b!6566112 (= e!3974656 (not lt!2407339))))

(declare-fun b!6566113 () Bool)

(declare-fun res!2694517 () Bool)

(assert (=> b!6566113 (=> res!2694517 e!3974654)))

(declare-fun e!3974650 () Bool)

(assert (=> b!6566113 (= res!2694517 e!3974650)))

(declare-fun res!2694516 () Bool)

(assert (=> b!6566113 (=> (not res!2694516) (not e!3974650))))

(assert (=> b!6566113 (= res!2694516 lt!2407339)))

(declare-fun b!6566114 () Bool)

(declare-fun res!2694518 () Bool)

(declare-fun e!3974651 () Bool)

(assert (=> b!6566114 (=> res!2694518 e!3974651)))

(assert (=> b!6566114 (= res!2694518 (not (isEmpty!37743 (tail!12416 (_1!36723 lt!2407137)))))))

(declare-fun b!6566115 () Bool)

(assert (=> b!6566115 (= e!3974655 e!3974651)))

(declare-fun res!2694511 () Bool)

(assert (=> b!6566115 (=> res!2694511 e!3974651)))

(declare-fun call!571293 () Bool)

(assert (=> b!6566115 (= res!2694511 call!571293)))

(declare-fun b!6566116 () Bool)

(assert (=> b!6566116 (= e!3974651 (not (= (head!13331 (_1!36723 lt!2407137)) (c!1206624 (reg!16770 (regOne!33394 r!7292))))))))

(declare-fun b!6566117 () Bool)

(declare-fun res!2694514 () Bool)

(assert (=> b!6566117 (=> (not res!2694514) (not e!3974650))))

(assert (=> b!6566117 (= res!2694514 (isEmpty!37743 (tail!12416 (_1!36723 lt!2407137))))))

(declare-fun b!6566118 () Bool)

(declare-fun e!3974652 () Bool)

(assert (=> b!6566118 (= e!3974652 (nullable!6434 (reg!16770 (regOne!33394 r!7292))))))

(declare-fun b!6566119 () Bool)

(declare-fun e!3974653 () Bool)

(assert (=> b!6566119 (= e!3974653 e!3974656)))

(declare-fun c!1206857 () Bool)

(assert (=> b!6566119 (= c!1206857 ((_ is EmptyLang!16441) (reg!16770 (regOne!33394 r!7292))))))

(declare-fun b!6566120 () Bool)

(declare-fun res!2694515 () Bool)

(assert (=> b!6566120 (=> (not res!2694515) (not e!3974650))))

(assert (=> b!6566120 (= res!2694515 (not call!571293))))

(declare-fun b!6566121 () Bool)

(declare-fun res!2694513 () Bool)

(assert (=> b!6566121 (=> res!2694513 e!3974654)))

(assert (=> b!6566121 (= res!2694513 (not ((_ is ElementMatch!16441) (reg!16770 (regOne!33394 r!7292)))))))

(assert (=> b!6566121 (= e!3974656 e!3974654)))

(declare-fun b!6566122 () Bool)

(assert (=> b!6566122 (= e!3974653 (= lt!2407339 call!571293))))

(declare-fun b!6566123 () Bool)

(assert (=> b!6566123 (= e!3974650 (= (head!13331 (_1!36723 lt!2407137)) (c!1206624 (reg!16770 (regOne!33394 r!7292)))))))

(declare-fun b!6566124 () Bool)

(assert (=> b!6566124 (= e!3974652 (matchR!8624 (derivativeStep!5124 (reg!16770 (regOne!33394 r!7292)) (head!13331 (_1!36723 lt!2407137))) (tail!12416 (_1!36723 lt!2407137))))))

(declare-fun bm!571288 () Bool)

(assert (=> bm!571288 (= call!571293 (isEmpty!37743 (_1!36723 lt!2407137)))))

(declare-fun d!2060292 () Bool)

(assert (=> d!2060292 e!3974653))

(declare-fun c!1206855 () Bool)

(assert (=> d!2060292 (= c!1206855 ((_ is EmptyExpr!16441) (reg!16770 (regOne!33394 r!7292))))))

(assert (=> d!2060292 (= lt!2407339 e!3974652)))

(declare-fun c!1206856 () Bool)

(assert (=> d!2060292 (= c!1206856 (isEmpty!37743 (_1!36723 lt!2407137)))))

(assert (=> d!2060292 (validRegex!8177 (reg!16770 (regOne!33394 r!7292)))))

(assert (=> d!2060292 (= (matchR!8624 (reg!16770 (regOne!33394 r!7292)) (_1!36723 lt!2407137)) lt!2407339)))

(assert (= (and d!2060292 c!1206856) b!6566118))

(assert (= (and d!2060292 (not c!1206856)) b!6566124))

(assert (= (and d!2060292 c!1206855) b!6566122))

(assert (= (and d!2060292 (not c!1206855)) b!6566119))

(assert (= (and b!6566119 c!1206857) b!6566112))

(assert (= (and b!6566119 (not c!1206857)) b!6566121))

(assert (= (and b!6566121 (not res!2694513)) b!6566113))

(assert (= (and b!6566113 res!2694516) b!6566120))

(assert (= (and b!6566120 res!2694515) b!6566117))

(assert (= (and b!6566117 res!2694514) b!6566123))

(assert (= (and b!6566113 (not res!2694517)) b!6566111))

(assert (= (and b!6566111 res!2694512) b!6566115))

(assert (= (and b!6566115 (not res!2694511)) b!6566114))

(assert (= (and b!6566114 (not res!2694518)) b!6566116))

(assert (= (or b!6566122 b!6566115 b!6566120) bm!571288))

(declare-fun m!7348400 () Bool)

(assert (=> b!6566123 m!7348400))

(assert (=> b!6566124 m!7348400))

(assert (=> b!6566124 m!7348400))

(declare-fun m!7348402 () Bool)

(assert (=> b!6566124 m!7348402))

(declare-fun m!7348404 () Bool)

(assert (=> b!6566124 m!7348404))

(assert (=> b!6566124 m!7348402))

(assert (=> b!6566124 m!7348404))

(declare-fun m!7348406 () Bool)

(assert (=> b!6566124 m!7348406))

(assert (=> b!6566117 m!7348404))

(assert (=> b!6566117 m!7348404))

(declare-fun m!7348408 () Bool)

(assert (=> b!6566117 m!7348408))

(assert (=> b!6566114 m!7348404))

(assert (=> b!6566114 m!7348404))

(assert (=> b!6566114 m!7348408))

(assert (=> b!6566116 m!7348400))

(declare-fun m!7348410 () Bool)

(assert (=> d!2060292 m!7348410))

(assert (=> d!2060292 m!7347724))

(assert (=> b!6566118 m!7347848))

(assert (=> bm!571288 m!7348410))

(assert (=> b!6565271 d!2060292))

(declare-fun d!2060300 () Bool)

(assert (=> d!2060300 (= (isDefined!13035 lt!2407142) (not (isEmpty!37744 lt!2407142)))))

(declare-fun bs!1677134 () Bool)

(assert (= bs!1677134 d!2060300))

(declare-fun m!7348412 () Bool)

(assert (=> bs!1677134 m!7348412))

(assert (=> b!6565271 d!2060300))

(declare-fun d!2060302 () Bool)

(assert (=> d!2060302 (= (matchR!8624 lt!2407120 (_2!36723 lt!2407137)) (matchZipper!2453 lt!2407129 (_2!36723 lt!2407137)))))

(declare-fun lt!2407340 () Unit!159099)

(assert (=> d!2060302 (= lt!2407340 (choose!49009 lt!2407129 lt!2407158 lt!2407120 (_2!36723 lt!2407137)))))

(assert (=> d!2060302 (validRegex!8177 lt!2407120)))

(assert (=> d!2060302 (= (theoremZipperRegexEquiv!877 lt!2407129 lt!2407158 lt!2407120 (_2!36723 lt!2407137)) lt!2407340)))

(declare-fun bs!1677135 () Bool)

(assert (= bs!1677135 d!2060302))

(assert (=> bs!1677135 m!7347432))

(assert (=> bs!1677135 m!7347480))

(declare-fun m!7348414 () Bool)

(assert (=> bs!1677135 m!7348414))

(assert (=> bs!1677135 m!7348380))

(assert (=> b!6565271 d!2060302))

(declare-fun d!2060304 () Bool)

(assert (=> d!2060304 (matchR!8624 (Concat!25286 (reg!16770 (regOne!33394 r!7292)) lt!2407120) (++!14584 (_1!36723 lt!2407137) (_2!36723 lt!2407137)))))

(declare-fun lt!2407343 () Unit!159099)

(declare-fun choose!49012 (Regex!16441 Regex!16441 List!65622 List!65622) Unit!159099)

(assert (=> d!2060304 (= lt!2407343 (choose!49012 (reg!16770 (regOne!33394 r!7292)) lt!2407120 (_1!36723 lt!2407137) (_2!36723 lt!2407137)))))

(declare-fun e!3974666 () Bool)

(assert (=> d!2060304 e!3974666))

(declare-fun res!2694522 () Bool)

(assert (=> d!2060304 (=> (not res!2694522) (not e!3974666))))

(assert (=> d!2060304 (= res!2694522 (validRegex!8177 (reg!16770 (regOne!33394 r!7292))))))

(assert (=> d!2060304 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!362 (reg!16770 (regOne!33394 r!7292)) lt!2407120 (_1!36723 lt!2407137) (_2!36723 lt!2407137)) lt!2407343)))

(declare-fun b!6566140 () Bool)

(assert (=> b!6566140 (= e!3974666 (validRegex!8177 lt!2407120))))

(assert (= (and d!2060304 res!2694522) b!6566140))

(assert (=> d!2060304 m!7347452))

(assert (=> d!2060304 m!7347452))

(declare-fun m!7348426 () Bool)

(assert (=> d!2060304 m!7348426))

(declare-fun m!7348428 () Bool)

(assert (=> d!2060304 m!7348428))

(assert (=> d!2060304 m!7347724))

(assert (=> b!6566140 m!7348380))

(assert (=> b!6565271 d!2060304))

(declare-fun d!2060310 () Bool)

(declare-fun c!1206864 () Bool)

(assert (=> d!2060310 (= c!1206864 (isEmpty!37743 s!2326))))

(declare-fun e!3974667 () Bool)

(assert (=> d!2060310 (= (matchZipper!2453 z!1189 s!2326) e!3974667)))

(declare-fun b!6566141 () Bool)

(assert (=> b!6566141 (= e!3974667 (nullableZipper!2185 z!1189))))

(declare-fun b!6566142 () Bool)

(assert (=> b!6566142 (= e!3974667 (matchZipper!2453 (derivationStepZipper!2407 z!1189 (head!13331 s!2326)) (tail!12416 s!2326)))))

(assert (= (and d!2060310 c!1206864) b!6566141))

(assert (= (and d!2060310 (not c!1206864)) b!6566142))

(assert (=> d!2060310 m!7347554))

(declare-fun m!7348430 () Bool)

(assert (=> b!6566141 m!7348430))

(assert (=> b!6566142 m!7347558))

(assert (=> b!6566142 m!7347558))

(declare-fun m!7348432 () Bool)

(assert (=> b!6566142 m!7348432))

(assert (=> b!6566142 m!7347562))

(assert (=> b!6566142 m!7348432))

(assert (=> b!6566142 m!7347562))

(declare-fun m!7348434 () Bool)

(assert (=> b!6566142 m!7348434))

(assert (=> b!6565250 d!2060310))

(declare-fun bs!1677140 () Bool)

(declare-fun b!6566147 () Bool)

(assert (= bs!1677140 (and b!6566147 b!6565995)))

(declare-fun lambda!365461 () Int)

(assert (=> bs!1677140 (= (and (= (reg!16770 r!7292) (reg!16770 lt!2407164)) (= r!7292 lt!2407164)) (= lambda!365461 lambda!365450))))

(declare-fun bs!1677141 () Bool)

(assert (= bs!1677141 (and b!6566147 b!6565271)))

(assert (=> bs!1677141 (not (= lambda!365461 lambda!365373))))

(declare-fun bs!1677142 () Bool)

(assert (= bs!1677142 (and b!6566147 d!2060084)))

(assert (=> bs!1677142 (not (= lambda!365461 lambda!365406))))

(declare-fun bs!1677143 () Bool)

(assert (= bs!1677143 (and b!6566147 b!6565238)))

(assert (=> bs!1677143 (not (= lambda!365461 lambda!365369))))

(declare-fun bs!1677144 () Bool)

(assert (= bs!1677144 (and b!6566147 b!6565241)))

(assert (=> bs!1677144 (not (= lambda!365461 lambda!365376))))

(assert (=> bs!1677142 (not (= lambda!365461 lambda!365407))))

(declare-fun bs!1677145 () Bool)

(assert (= bs!1677145 (and b!6566147 b!6565719)))

(assert (=> bs!1677145 (not (= lambda!365461 lambda!365424))))

(declare-fun bs!1677146 () Bool)

(assert (= bs!1677146 (and b!6566147 d!2060050)))

(assert (=> bs!1677146 (not (= lambda!365461 lambda!365388))))

(declare-fun bs!1677147 () Bool)

(assert (= bs!1677147 (and b!6566147 b!6565714)))

(assert (=> bs!1677147 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (reg!16770 r!7292) (reg!16770 lt!2407124)) (= r!7292 lt!2407124)) (= lambda!365461 lambda!365421))))

(assert (=> bs!1677144 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (reg!16770 r!7292) (reg!16770 (regOne!33394 r!7292))) (= r!7292 lt!2407122)) (= lambda!365461 lambda!365377))))

(assert (=> bs!1677143 (not (= lambda!365461 lambda!365368))))

(declare-fun bs!1677148 () Bool)

(assert (= bs!1677148 (and b!6566147 d!2060206)))

(assert (=> bs!1677148 (not (= lambda!365461 lambda!365441))))

(declare-fun bs!1677149 () Bool)

(assert (= bs!1677149 (and b!6566147 d!2060076)))

(assert (=> bs!1677149 (not (= lambda!365461 lambda!365404))))

(assert (=> bs!1677149 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (reg!16770 r!7292) (reg!16770 (regOne!33394 r!7292))) (= r!7292 (Star!16441 (reg!16770 (regOne!33394 r!7292))))) (= lambda!365461 lambda!365405))))

(assert (=> bs!1677148 (not (= lambda!365461 lambda!365440))))

(declare-fun bs!1677150 () Bool)

(assert (= bs!1677150 (and b!6566147 d!2060090)))

(assert (=> bs!1677150 (not (= lambda!365461 lambda!365408))))

(declare-fun bs!1677151 () Bool)

(assert (= bs!1677151 (and b!6566147 d!2060046)))

(assert (=> bs!1677151 (not (= lambda!365461 lambda!365380))))

(declare-fun bs!1677152 () Bool)

(assert (= bs!1677152 (and b!6566147 b!6566000)))

(assert (=> bs!1677152 (not (= lambda!365461 lambda!365452))))

(assert (=> bs!1677144 (not (= lambda!365461 lambda!365375))))

(assert (=> bs!1677141 (not (= lambda!365461 lambda!365374))))

(assert (=> bs!1677146 (not (= lambda!365461 lambda!365389))))

(declare-fun bs!1677153 () Bool)

(assert (= bs!1677153 (and b!6566147 d!2060278)))

(assert (=> bs!1677153 (not (= lambda!365461 lambda!365458))))

(assert (=> b!6566147 true))

(assert (=> b!6566147 true))

(declare-fun bs!1677154 () Bool)

(declare-fun b!6566152 () Bool)

(assert (= bs!1677154 (and b!6566152 b!6565995)))

(declare-fun lambda!365464 () Int)

(assert (=> bs!1677154 (not (= lambda!365464 lambda!365450))))

(declare-fun bs!1677155 () Bool)

(assert (= bs!1677155 (and b!6566152 b!6565271)))

(assert (=> bs!1677155 (not (= lambda!365464 lambda!365373))))

(declare-fun bs!1677156 () Bool)

(assert (= bs!1677156 (and b!6566152 b!6566147)))

(assert (=> bs!1677156 (not (= lambda!365464 lambda!365461))))

(declare-fun bs!1677157 () Bool)

(assert (= bs!1677157 (and b!6566152 d!2060084)))

(assert (=> bs!1677157 (not (= lambda!365464 lambda!365406))))

(declare-fun bs!1677158 () Bool)

(assert (= bs!1677158 (and b!6566152 b!6565238)))

(assert (=> bs!1677158 (= lambda!365464 lambda!365369)))

(declare-fun bs!1677159 () Bool)

(assert (= bs!1677159 (and b!6566152 b!6565241)))

(assert (=> bs!1677159 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 r!7292) (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365464 lambda!365376))))

(assert (=> bs!1677157 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 r!7292) (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 r!7292) lt!2407122)) (= lambda!365464 lambda!365407))))

(declare-fun bs!1677160 () Bool)

(assert (= bs!1677160 (and b!6566152 b!6565719)))

(assert (=> bs!1677160 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 r!7292) (regOne!33394 lt!2407124)) (= (regTwo!33394 r!7292) (regTwo!33394 lt!2407124))) (= lambda!365464 lambda!365424))))

(declare-fun bs!1677161 () Bool)

(assert (= bs!1677161 (and b!6566152 d!2060050)))

(assert (=> bs!1677161 (not (= lambda!365464 lambda!365388))))

(declare-fun bs!1677162 () Bool)

(assert (= bs!1677162 (and b!6566152 b!6565714)))

(assert (=> bs!1677162 (not (= lambda!365464 lambda!365421))))

(assert (=> bs!1677159 (not (= lambda!365464 lambda!365377))))

(assert (=> bs!1677158 (not (= lambda!365464 lambda!365368))))

(declare-fun bs!1677167 () Bool)

(assert (= bs!1677167 (and b!6566152 d!2060206)))

(assert (=> bs!1677167 (= (= (regOne!33394 r!7292) lt!2407124) (= lambda!365464 lambda!365441))))

(declare-fun bs!1677168 () Bool)

(assert (= bs!1677168 (and b!6566152 d!2060076)))

(assert (=> bs!1677168 (not (= lambda!365464 lambda!365404))))

(assert (=> bs!1677168 (not (= lambda!365464 lambda!365405))))

(assert (=> bs!1677167 (not (= lambda!365464 lambda!365440))))

(declare-fun bs!1677169 () Bool)

(assert (= bs!1677169 (and b!6566152 d!2060090)))

(assert (=> bs!1677169 (not (= lambda!365464 lambda!365408))))

(declare-fun bs!1677170 () Bool)

(assert (= bs!1677170 (and b!6566152 d!2060046)))

(assert (=> bs!1677170 (not (= lambda!365464 lambda!365380))))

(declare-fun bs!1677171 () Bool)

(assert (= bs!1677171 (and b!6566152 b!6566000)))

(assert (=> bs!1677171 (= (and (= (regOne!33394 r!7292) (regOne!33394 lt!2407164)) (= (regTwo!33394 r!7292) (regTwo!33394 lt!2407164))) (= lambda!365464 lambda!365452))))

(assert (=> bs!1677159 (not (= lambda!365464 lambda!365375))))

(assert (=> bs!1677155 (= (= (regOne!33394 r!7292) lt!2407124) (= lambda!365464 lambda!365374))))

(assert (=> bs!1677161 (= lambda!365464 lambda!365389)))

(declare-fun bs!1677172 () Bool)

(assert (= bs!1677172 (and b!6566152 d!2060278)))

(assert (=> bs!1677172 (not (= lambda!365464 lambda!365458))))

(assert (=> b!6566152 true))

(assert (=> b!6566152 true))

(declare-fun d!2060312 () Bool)

(declare-fun c!1206867 () Bool)

(assert (=> d!2060312 (= c!1206867 ((_ is EmptyExpr!16441) r!7292))))

(declare-fun e!3974673 () Bool)

(assert (=> d!2060312 (= (matchRSpec!3542 r!7292 s!2326) e!3974673)))

(declare-fun b!6566143 () Bool)

(declare-fun call!571300 () Bool)

(assert (=> b!6566143 (= e!3974673 call!571300)))

(declare-fun b!6566144 () Bool)

(declare-fun c!1206866 () Bool)

(assert (=> b!6566144 (= c!1206866 ((_ is ElementMatch!16441) r!7292))))

(declare-fun e!3974674 () Bool)

(declare-fun e!3974670 () Bool)

(assert (=> b!6566144 (= e!3974674 e!3974670)))

(declare-fun b!6566145 () Bool)

(assert (=> b!6566145 (= e!3974673 e!3974674)))

(declare-fun res!2694523 () Bool)

(assert (=> b!6566145 (= res!2694523 (not ((_ is EmptyLang!16441) r!7292)))))

(assert (=> b!6566145 (=> (not res!2694523) (not e!3974674))))

(declare-fun b!6566146 () Bool)

(declare-fun e!3974672 () Bool)

(declare-fun e!3974671 () Bool)

(assert (=> b!6566146 (= e!3974672 e!3974671)))

(declare-fun c!1206868 () Bool)

(assert (=> b!6566146 (= c!1206868 ((_ is Star!16441) r!7292))))

(declare-fun e!3974669 () Bool)

(declare-fun call!571301 () Bool)

(assert (=> b!6566147 (= e!3974669 call!571301)))

(declare-fun b!6566148 () Bool)

(assert (=> b!6566148 (= e!3974670 (= s!2326 (Cons!65498 (c!1206624 r!7292) Nil!65498)))))

(declare-fun b!6566149 () Bool)

(declare-fun res!2694524 () Bool)

(assert (=> b!6566149 (=> res!2694524 e!3974669)))

(assert (=> b!6566149 (= res!2694524 call!571300)))

(assert (=> b!6566149 (= e!3974671 e!3974669)))

(declare-fun b!6566150 () Bool)

(declare-fun c!1206865 () Bool)

(assert (=> b!6566150 (= c!1206865 ((_ is Union!16441) r!7292))))

(assert (=> b!6566150 (= e!3974670 e!3974672)))

(declare-fun bm!571295 () Bool)

(assert (=> bm!571295 (= call!571300 (isEmpty!37743 s!2326))))

(declare-fun b!6566151 () Bool)

(declare-fun e!3974668 () Bool)

(assert (=> b!6566151 (= e!3974668 (matchRSpec!3542 (regTwo!33395 r!7292) s!2326))))

(assert (=> b!6566152 (= e!3974671 call!571301)))

(declare-fun bm!571296 () Bool)

(assert (=> bm!571296 (= call!571301 (Exists!3511 (ite c!1206868 lambda!365461 lambda!365464)))))

(declare-fun b!6566153 () Bool)

(assert (=> b!6566153 (= e!3974672 e!3974668)))

(declare-fun res!2694525 () Bool)

(assert (=> b!6566153 (= res!2694525 (matchRSpec!3542 (regOne!33395 r!7292) s!2326))))

(assert (=> b!6566153 (=> res!2694525 e!3974668)))

(assert (= (and d!2060312 c!1206867) b!6566143))

(assert (= (and d!2060312 (not c!1206867)) b!6566145))

(assert (= (and b!6566145 res!2694523) b!6566144))

(assert (= (and b!6566144 c!1206866) b!6566148))

(assert (= (and b!6566144 (not c!1206866)) b!6566150))

(assert (= (and b!6566150 c!1206865) b!6566153))

(assert (= (and b!6566150 (not c!1206865)) b!6566146))

(assert (= (and b!6566153 (not res!2694525)) b!6566151))

(assert (= (and b!6566146 c!1206868) b!6566149))

(assert (= (and b!6566146 (not c!1206868)) b!6566152))

(assert (= (and b!6566149 (not res!2694524)) b!6566147))

(assert (= (or b!6566147 b!6566152) bm!571296))

(assert (= (or b!6566143 b!6566149) bm!571295))

(assert (=> bm!571295 m!7347554))

(declare-fun m!7348456 () Bool)

(assert (=> b!6566151 m!7348456))

(declare-fun m!7348458 () Bool)

(assert (=> bm!571296 m!7348458))

(declare-fun m!7348460 () Bool)

(assert (=> b!6566153 m!7348460))

(assert (=> b!6565249 d!2060312))

(declare-fun b!6566184 () Bool)

(declare-fun e!3974697 () Bool)

(declare-fun e!3974698 () Bool)

(assert (=> b!6566184 (= e!3974697 e!3974698)))

(declare-fun res!2694533 () Bool)

(assert (=> b!6566184 (=> (not res!2694533) (not e!3974698))))

(declare-fun lt!2407347 () Bool)

(assert (=> b!6566184 (= res!2694533 (not lt!2407347))))

(declare-fun b!6566185 () Bool)

(declare-fun e!3974699 () Bool)

(assert (=> b!6566185 (= e!3974699 (not lt!2407347))))

(declare-fun b!6566186 () Bool)

(declare-fun res!2694538 () Bool)

(assert (=> b!6566186 (=> res!2694538 e!3974697)))

(declare-fun e!3974693 () Bool)

(assert (=> b!6566186 (= res!2694538 e!3974693)))

(declare-fun res!2694537 () Bool)

(assert (=> b!6566186 (=> (not res!2694537) (not e!3974693))))

(assert (=> b!6566186 (= res!2694537 lt!2407347)))

(declare-fun b!6566187 () Bool)

(declare-fun res!2694539 () Bool)

(declare-fun e!3974694 () Bool)

(assert (=> b!6566187 (=> res!2694539 e!3974694)))

(assert (=> b!6566187 (= res!2694539 (not (isEmpty!37743 (tail!12416 s!2326))))))

(declare-fun b!6566188 () Bool)

(assert (=> b!6566188 (= e!3974698 e!3974694)))

(declare-fun res!2694532 () Bool)

(assert (=> b!6566188 (=> res!2694532 e!3974694)))

(declare-fun call!571302 () Bool)

(assert (=> b!6566188 (= res!2694532 call!571302)))

(declare-fun b!6566189 () Bool)

(assert (=> b!6566189 (= e!3974694 (not (= (head!13331 s!2326) (c!1206624 r!7292))))))

(declare-fun b!6566190 () Bool)

(declare-fun res!2694535 () Bool)

(assert (=> b!6566190 (=> (not res!2694535) (not e!3974693))))

(assert (=> b!6566190 (= res!2694535 (isEmpty!37743 (tail!12416 s!2326)))))

(declare-fun b!6566191 () Bool)

(declare-fun e!3974695 () Bool)

(assert (=> b!6566191 (= e!3974695 (nullable!6434 r!7292))))

(declare-fun b!6566192 () Bool)

(declare-fun e!3974696 () Bool)

(assert (=> b!6566192 (= e!3974696 e!3974699)))

(declare-fun c!1206883 () Bool)

(assert (=> b!6566192 (= c!1206883 ((_ is EmptyLang!16441) r!7292))))

(declare-fun b!6566193 () Bool)

(declare-fun res!2694536 () Bool)

(assert (=> b!6566193 (=> (not res!2694536) (not e!3974693))))

(assert (=> b!6566193 (= res!2694536 (not call!571302))))

(declare-fun b!6566194 () Bool)

(declare-fun res!2694534 () Bool)

(assert (=> b!6566194 (=> res!2694534 e!3974697)))

(assert (=> b!6566194 (= res!2694534 (not ((_ is ElementMatch!16441) r!7292)))))

(assert (=> b!6566194 (= e!3974699 e!3974697)))

(declare-fun b!6566195 () Bool)

(assert (=> b!6566195 (= e!3974696 (= lt!2407347 call!571302))))

(declare-fun b!6566196 () Bool)

(assert (=> b!6566196 (= e!3974693 (= (head!13331 s!2326) (c!1206624 r!7292)))))

(declare-fun b!6566197 () Bool)

(assert (=> b!6566197 (= e!3974695 (matchR!8624 (derivativeStep!5124 r!7292 (head!13331 s!2326)) (tail!12416 s!2326)))))

(declare-fun bm!571297 () Bool)

(assert (=> bm!571297 (= call!571302 (isEmpty!37743 s!2326))))

(declare-fun d!2060316 () Bool)

(assert (=> d!2060316 e!3974696))

(declare-fun c!1206881 () Bool)

(assert (=> d!2060316 (= c!1206881 ((_ is EmptyExpr!16441) r!7292))))

(assert (=> d!2060316 (= lt!2407347 e!3974695)))

(declare-fun c!1206882 () Bool)

(assert (=> d!2060316 (= c!1206882 (isEmpty!37743 s!2326))))

(assert (=> d!2060316 (validRegex!8177 r!7292)))

(assert (=> d!2060316 (= (matchR!8624 r!7292 s!2326) lt!2407347)))

(assert (= (and d!2060316 c!1206882) b!6566191))

(assert (= (and d!2060316 (not c!1206882)) b!6566197))

(assert (= (and d!2060316 c!1206881) b!6566195))

(assert (= (and d!2060316 (not c!1206881)) b!6566192))

(assert (= (and b!6566192 c!1206883) b!6566185))

(assert (= (and b!6566192 (not c!1206883)) b!6566194))

(assert (= (and b!6566194 (not res!2694534)) b!6566186))

(assert (= (and b!6566186 res!2694537) b!6566193))

(assert (= (and b!6566193 res!2694536) b!6566190))

(assert (= (and b!6566190 res!2694535) b!6566196))

(assert (= (and b!6566186 (not res!2694538)) b!6566184))

(assert (= (and b!6566184 res!2694533) b!6566188))

(assert (= (and b!6566188 (not res!2694532)) b!6566187))

(assert (= (and b!6566187 (not res!2694539)) b!6566189))

(assert (= (or b!6566195 b!6566188 b!6566193) bm!571297))

(assert (=> b!6566196 m!7347558))

(assert (=> b!6566197 m!7347558))

(assert (=> b!6566197 m!7347558))

(declare-fun m!7348462 () Bool)

(assert (=> b!6566197 m!7348462))

(assert (=> b!6566197 m!7347562))

(assert (=> b!6566197 m!7348462))

(assert (=> b!6566197 m!7347562))

(declare-fun m!7348464 () Bool)

(assert (=> b!6566197 m!7348464))

(assert (=> b!6566190 m!7347562))

(assert (=> b!6566190 m!7347562))

(assert (=> b!6566190 m!7348270))

(assert (=> b!6566187 m!7347562))

(assert (=> b!6566187 m!7347562))

(assert (=> b!6566187 m!7348270))

(assert (=> b!6566189 m!7347558))

(assert (=> d!2060316 m!7347554))

(assert (=> d!2060316 m!7347308))

(declare-fun m!7348466 () Bool)

(assert (=> b!6566191 m!7348466))

(assert (=> bm!571297 m!7347554))

(assert (=> b!6565249 d!2060316))

(declare-fun d!2060318 () Bool)

(assert (=> d!2060318 (= (matchR!8624 r!7292 s!2326) (matchRSpec!3542 r!7292 s!2326))))

(declare-fun lt!2407350 () Unit!159099)

(assert (=> d!2060318 (= lt!2407350 (choose!48999 r!7292 s!2326))))

(assert (=> d!2060318 (validRegex!8177 r!7292)))

(assert (=> d!2060318 (= (mainMatchTheorem!3542 r!7292 s!2326) lt!2407350)))

(declare-fun bs!1677173 () Bool)

(assert (= bs!1677173 d!2060318))

(assert (=> bs!1677173 m!7347314))

(assert (=> bs!1677173 m!7347312))

(declare-fun m!7348468 () Bool)

(assert (=> bs!1677173 m!7348468))

(assert (=> bs!1677173 m!7347308))

(assert (=> b!6565249 d!2060318))

(declare-fun bs!1677174 () Bool)

(declare-fun b!6566206 () Bool)

(assert (= bs!1677174 (and b!6566206 b!6565995)))

(declare-fun lambda!365468 () Int)

(assert (=> bs!1677174 (= (and (= (reg!16770 lt!2407161) (reg!16770 lt!2407164)) (= lt!2407161 lt!2407164)) (= lambda!365468 lambda!365450))))

(declare-fun bs!1677175 () Bool)

(assert (= bs!1677175 (and b!6566206 b!6565271)))

(assert (=> bs!1677175 (not (= lambda!365468 lambda!365373))))

(declare-fun bs!1677176 () Bool)

(assert (= bs!1677176 (and b!6566206 b!6566147)))

(assert (=> bs!1677176 (= (and (= (reg!16770 lt!2407161) (reg!16770 r!7292)) (= lt!2407161 r!7292)) (= lambda!365468 lambda!365461))))

(declare-fun bs!1677177 () Bool)

(assert (= bs!1677177 (and b!6566206 b!6566152)))

(assert (=> bs!1677177 (not (= lambda!365468 lambda!365464))))

(declare-fun bs!1677178 () Bool)

(assert (= bs!1677178 (and b!6566206 d!2060084)))

(assert (=> bs!1677178 (not (= lambda!365468 lambda!365406))))

(declare-fun bs!1677180 () Bool)

(assert (= bs!1677180 (and b!6566206 b!6565238)))

(assert (=> bs!1677180 (not (= lambda!365468 lambda!365369))))

(declare-fun bs!1677182 () Bool)

(assert (= bs!1677182 (and b!6566206 b!6565241)))

(assert (=> bs!1677182 (not (= lambda!365468 lambda!365376))))

(assert (=> bs!1677178 (not (= lambda!365468 lambda!365407))))

(declare-fun bs!1677186 () Bool)

(assert (= bs!1677186 (and b!6566206 b!6565719)))

(assert (=> bs!1677186 (not (= lambda!365468 lambda!365424))))

(declare-fun bs!1677187 () Bool)

(assert (= bs!1677187 (and b!6566206 d!2060050)))

(assert (=> bs!1677187 (not (= lambda!365468 lambda!365388))))

(declare-fun bs!1677188 () Bool)

(assert (= bs!1677188 (and b!6566206 b!6565714)))

(assert (=> bs!1677188 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (reg!16770 lt!2407161) (reg!16770 lt!2407124)) (= lt!2407161 lt!2407124)) (= lambda!365468 lambda!365421))))

(assert (=> bs!1677182 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (reg!16770 lt!2407161) (reg!16770 (regOne!33394 r!7292))) (= lt!2407161 lt!2407122)) (= lambda!365468 lambda!365377))))

(assert (=> bs!1677180 (not (= lambda!365468 lambda!365368))))

(declare-fun bs!1677189 () Bool)

(assert (= bs!1677189 (and b!6566206 d!2060206)))

(assert (=> bs!1677189 (not (= lambda!365468 lambda!365441))))

(declare-fun bs!1677190 () Bool)

(assert (= bs!1677190 (and b!6566206 d!2060076)))

(assert (=> bs!1677190 (not (= lambda!365468 lambda!365404))))

(assert (=> bs!1677190 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (reg!16770 lt!2407161) (reg!16770 (regOne!33394 r!7292))) (= lt!2407161 (Star!16441 (reg!16770 (regOne!33394 r!7292))))) (= lambda!365468 lambda!365405))))

(assert (=> bs!1677189 (not (= lambda!365468 lambda!365440))))

(declare-fun bs!1677191 () Bool)

(assert (= bs!1677191 (and b!6566206 d!2060090)))

(assert (=> bs!1677191 (not (= lambda!365468 lambda!365408))))

(declare-fun bs!1677192 () Bool)

(assert (= bs!1677192 (and b!6566206 d!2060046)))

(assert (=> bs!1677192 (not (= lambda!365468 lambda!365380))))

(declare-fun bs!1677193 () Bool)

(assert (= bs!1677193 (and b!6566206 b!6566000)))

(assert (=> bs!1677193 (not (= lambda!365468 lambda!365452))))

(assert (=> bs!1677182 (not (= lambda!365468 lambda!365375))))

(assert (=> bs!1677175 (not (= lambda!365468 lambda!365374))))

(assert (=> bs!1677187 (not (= lambda!365468 lambda!365389))))

(declare-fun bs!1677194 () Bool)

(assert (= bs!1677194 (and b!6566206 d!2060278)))

(assert (=> bs!1677194 (not (= lambda!365468 lambda!365458))))

(assert (=> b!6566206 true))

(assert (=> b!6566206 true))

(declare-fun bs!1677196 () Bool)

(declare-fun b!6566211 () Bool)

(assert (= bs!1677196 (and b!6566211 b!6565995)))

(declare-fun lambda!365470 () Int)

(assert (=> bs!1677196 (not (= lambda!365470 lambda!365450))))

(declare-fun bs!1677197 () Bool)

(assert (= bs!1677197 (and b!6566211 b!6565271)))

(assert (=> bs!1677197 (not (= lambda!365470 lambda!365373))))

(declare-fun bs!1677198 () Bool)

(assert (= bs!1677198 (and b!6566211 b!6566147)))

(assert (=> bs!1677198 (not (= lambda!365470 lambda!365461))))

(declare-fun bs!1677199 () Bool)

(assert (= bs!1677199 (and b!6566211 b!6566152)))

(assert (=> bs!1677199 (= (and (= (regOne!33394 lt!2407161) (regOne!33394 r!7292)) (= (regTwo!33394 lt!2407161) (regTwo!33394 r!7292))) (= lambda!365470 lambda!365464))))

(declare-fun bs!1677200 () Bool)

(assert (= bs!1677200 (and b!6566211 d!2060084)))

(assert (=> bs!1677200 (not (= lambda!365470 lambda!365406))))

(declare-fun bs!1677201 () Bool)

(assert (= bs!1677201 (and b!6566211 b!6565238)))

(assert (=> bs!1677201 (= (and (= (regOne!33394 lt!2407161) (regOne!33394 r!7292)) (= (regTwo!33394 lt!2407161) (regTwo!33394 r!7292))) (= lambda!365470 lambda!365369))))

(declare-fun bs!1677202 () Bool)

(assert (= bs!1677202 (and b!6566211 b!6565241)))

(assert (=> bs!1677202 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 lt!2407161) (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 lt!2407161) lt!2407122)) (= lambda!365470 lambda!365376))))

(assert (=> bs!1677200 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 lt!2407161) (reg!16770 (regOne!33394 r!7292))) (= (regTwo!33394 lt!2407161) lt!2407122)) (= lambda!365470 lambda!365407))))

(declare-fun bs!1677203 () Bool)

(assert (= bs!1677203 (and b!6566211 b!6565719)))

(assert (=> bs!1677203 (= (and (= s!2326 (_1!36723 lt!2407152)) (= (regOne!33394 lt!2407161) (regOne!33394 lt!2407124)) (= (regTwo!33394 lt!2407161) (regTwo!33394 lt!2407124))) (= lambda!365470 lambda!365424))))

(declare-fun bs!1677204 () Bool)

(assert (= bs!1677204 (and b!6566211 d!2060050)))

(assert (=> bs!1677204 (not (= lambda!365470 lambda!365388))))

(declare-fun bs!1677205 () Bool)

(assert (= bs!1677205 (and b!6566211 b!6565714)))

(assert (=> bs!1677205 (not (= lambda!365470 lambda!365421))))

(assert (=> bs!1677202 (not (= lambda!365470 lambda!365377))))

(assert (=> bs!1677201 (not (= lambda!365470 lambda!365368))))

(declare-fun bs!1677206 () Bool)

(assert (= bs!1677206 (and b!6566211 d!2060206)))

(assert (=> bs!1677206 (= (and (= (regOne!33394 lt!2407161) lt!2407124) (= (regTwo!33394 lt!2407161) (regTwo!33394 r!7292))) (= lambda!365470 lambda!365441))))

(declare-fun bs!1677207 () Bool)

(assert (= bs!1677207 (and b!6566211 d!2060076)))

(assert (=> bs!1677207 (not (= lambda!365470 lambda!365404))))

(assert (=> bs!1677207 (not (= lambda!365470 lambda!365405))))

(assert (=> bs!1677206 (not (= lambda!365470 lambda!365440))))

(declare-fun bs!1677208 () Bool)

(assert (= bs!1677208 (and b!6566211 d!2060090)))

(assert (=> bs!1677208 (not (= lambda!365470 lambda!365408))))

(declare-fun bs!1677209 () Bool)

(assert (= bs!1677209 (and b!6566211 d!2060046)))

(assert (=> bs!1677209 (not (= lambda!365470 lambda!365380))))

(declare-fun bs!1677210 () Bool)

(assert (= bs!1677210 (and b!6566211 b!6566000)))

(assert (=> bs!1677210 (= (and (= (regOne!33394 lt!2407161) (regOne!33394 lt!2407164)) (= (regTwo!33394 lt!2407161) (regTwo!33394 lt!2407164))) (= lambda!365470 lambda!365452))))

(assert (=> bs!1677202 (not (= lambda!365470 lambda!365375))))

(assert (=> bs!1677197 (= (and (= (regOne!33394 lt!2407161) lt!2407124) (= (regTwo!33394 lt!2407161) (regTwo!33394 r!7292))) (= lambda!365470 lambda!365374))))

(declare-fun bs!1677211 () Bool)

(assert (= bs!1677211 (and b!6566211 b!6566206)))

(assert (=> bs!1677211 (not (= lambda!365470 lambda!365468))))

(assert (=> bs!1677204 (= (and (= (regOne!33394 lt!2407161) (regOne!33394 r!7292)) (= (regTwo!33394 lt!2407161) (regTwo!33394 r!7292))) (= lambda!365470 lambda!365389))))

(declare-fun bs!1677212 () Bool)

(assert (= bs!1677212 (and b!6566211 d!2060278)))

(assert (=> bs!1677212 (not (= lambda!365470 lambda!365458))))

(assert (=> b!6566211 true))

(assert (=> b!6566211 true))

(declare-fun d!2060320 () Bool)

(declare-fun c!1206888 () Bool)

(assert (=> d!2060320 (= c!1206888 ((_ is EmptyExpr!16441) lt!2407161))))

(declare-fun e!3974707 () Bool)

(assert (=> d!2060320 (= (matchRSpec!3542 lt!2407161 s!2326) e!3974707)))

(declare-fun b!6566202 () Bool)

(declare-fun call!571303 () Bool)

(assert (=> b!6566202 (= e!3974707 call!571303)))

(declare-fun b!6566203 () Bool)

(declare-fun c!1206887 () Bool)

(assert (=> b!6566203 (= c!1206887 ((_ is ElementMatch!16441) lt!2407161))))

(declare-fun e!3974708 () Bool)

(declare-fun e!3974704 () Bool)

(assert (=> b!6566203 (= e!3974708 e!3974704)))

(declare-fun b!6566204 () Bool)

(assert (=> b!6566204 (= e!3974707 e!3974708)))

(declare-fun res!2694540 () Bool)

(assert (=> b!6566204 (= res!2694540 (not ((_ is EmptyLang!16441) lt!2407161)))))

(assert (=> b!6566204 (=> (not res!2694540) (not e!3974708))))

(declare-fun b!6566205 () Bool)

(declare-fun e!3974706 () Bool)

(declare-fun e!3974705 () Bool)

(assert (=> b!6566205 (= e!3974706 e!3974705)))

(declare-fun c!1206889 () Bool)

(assert (=> b!6566205 (= c!1206889 ((_ is Star!16441) lt!2407161))))

(declare-fun e!3974703 () Bool)

(declare-fun call!571304 () Bool)

(assert (=> b!6566206 (= e!3974703 call!571304)))

(declare-fun b!6566207 () Bool)

(assert (=> b!6566207 (= e!3974704 (= s!2326 (Cons!65498 (c!1206624 lt!2407161) Nil!65498)))))

(declare-fun b!6566208 () Bool)

(declare-fun res!2694541 () Bool)

(assert (=> b!6566208 (=> res!2694541 e!3974703)))

(assert (=> b!6566208 (= res!2694541 call!571303)))

(assert (=> b!6566208 (= e!3974705 e!3974703)))

(declare-fun b!6566209 () Bool)

(declare-fun c!1206886 () Bool)

(assert (=> b!6566209 (= c!1206886 ((_ is Union!16441) lt!2407161))))

(assert (=> b!6566209 (= e!3974704 e!3974706)))

(declare-fun bm!571298 () Bool)

(assert (=> bm!571298 (= call!571303 (isEmpty!37743 s!2326))))

(declare-fun b!6566210 () Bool)

(declare-fun e!3974702 () Bool)

(assert (=> b!6566210 (= e!3974702 (matchRSpec!3542 (regTwo!33395 lt!2407161) s!2326))))

(assert (=> b!6566211 (= e!3974705 call!571304)))

(declare-fun bm!571299 () Bool)

(assert (=> bm!571299 (= call!571304 (Exists!3511 (ite c!1206889 lambda!365468 lambda!365470)))))

(declare-fun b!6566212 () Bool)

(assert (=> b!6566212 (= e!3974706 e!3974702)))

(declare-fun res!2694542 () Bool)

(assert (=> b!6566212 (= res!2694542 (matchRSpec!3542 (regOne!33395 lt!2407161) s!2326))))

(assert (=> b!6566212 (=> res!2694542 e!3974702)))

(assert (= (and d!2060320 c!1206888) b!6566202))

(assert (= (and d!2060320 (not c!1206888)) b!6566204))

(assert (= (and b!6566204 res!2694540) b!6566203))

(assert (= (and b!6566203 c!1206887) b!6566207))

(assert (= (and b!6566203 (not c!1206887)) b!6566209))

(assert (= (and b!6566209 c!1206886) b!6566212))

(assert (= (and b!6566209 (not c!1206886)) b!6566205))

(assert (= (and b!6566212 (not res!2694542)) b!6566210))

(assert (= (and b!6566205 c!1206889) b!6566208))

(assert (= (and b!6566205 (not c!1206889)) b!6566211))

(assert (= (and b!6566208 (not res!2694541)) b!6566206))

(assert (= (or b!6566206 b!6566211) bm!571299))

(assert (= (or b!6566202 b!6566208) bm!571298))

(assert (=> bm!571298 m!7347554))

(declare-fun m!7348502 () Bool)

(assert (=> b!6566210 m!7348502))

(declare-fun m!7348504 () Bool)

(assert (=> bm!571299 m!7348504))

(declare-fun m!7348506 () Bool)

(assert (=> b!6566212 m!7348506))

(assert (=> b!6565251 d!2060320))

(declare-fun b!6566223 () Bool)

(declare-fun e!3974718 () Bool)

(declare-fun e!3974719 () Bool)

(assert (=> b!6566223 (= e!3974718 e!3974719)))

(declare-fun res!2694546 () Bool)

(assert (=> b!6566223 (=> (not res!2694546) (not e!3974719))))

(declare-fun lt!2407353 () Bool)

(assert (=> b!6566223 (= res!2694546 (not lt!2407353))))

(declare-fun b!6566224 () Bool)

(declare-fun e!3974720 () Bool)

(assert (=> b!6566224 (= e!3974720 (not lt!2407353))))

(declare-fun b!6566225 () Bool)

(declare-fun res!2694551 () Bool)

(assert (=> b!6566225 (=> res!2694551 e!3974718)))

(declare-fun e!3974714 () Bool)

(assert (=> b!6566225 (= res!2694551 e!3974714)))

(declare-fun res!2694550 () Bool)

(assert (=> b!6566225 (=> (not res!2694550) (not e!3974714))))

(assert (=> b!6566225 (= res!2694550 lt!2407353)))

(declare-fun b!6566226 () Bool)

(declare-fun res!2694552 () Bool)

(declare-fun e!3974715 () Bool)

(assert (=> b!6566226 (=> res!2694552 e!3974715)))

(assert (=> b!6566226 (= res!2694552 (not (isEmpty!37743 (tail!12416 s!2326))))))

(declare-fun b!6566227 () Bool)

(assert (=> b!6566227 (= e!3974719 e!3974715)))

(declare-fun res!2694545 () Bool)

(assert (=> b!6566227 (=> res!2694545 e!3974715)))

(declare-fun call!571305 () Bool)

(assert (=> b!6566227 (= res!2694545 call!571305)))

(declare-fun b!6566228 () Bool)

(assert (=> b!6566228 (= e!3974715 (not (= (head!13331 s!2326) (c!1206624 lt!2407161))))))

(declare-fun b!6566229 () Bool)

(declare-fun res!2694548 () Bool)

(assert (=> b!6566229 (=> (not res!2694548) (not e!3974714))))

(assert (=> b!6566229 (= res!2694548 (isEmpty!37743 (tail!12416 s!2326)))))

(declare-fun b!6566230 () Bool)

(declare-fun e!3974716 () Bool)

(assert (=> b!6566230 (= e!3974716 (nullable!6434 lt!2407161))))

(declare-fun b!6566231 () Bool)

(declare-fun e!3974717 () Bool)

(assert (=> b!6566231 (= e!3974717 e!3974720)))

(declare-fun c!1206896 () Bool)

(assert (=> b!6566231 (= c!1206896 ((_ is EmptyLang!16441) lt!2407161))))

(declare-fun b!6566232 () Bool)

(declare-fun res!2694549 () Bool)

(assert (=> b!6566232 (=> (not res!2694549) (not e!3974714))))

(assert (=> b!6566232 (= res!2694549 (not call!571305))))

(declare-fun b!6566233 () Bool)

(declare-fun res!2694547 () Bool)

(assert (=> b!6566233 (=> res!2694547 e!3974718)))

(assert (=> b!6566233 (= res!2694547 (not ((_ is ElementMatch!16441) lt!2407161)))))

(assert (=> b!6566233 (= e!3974720 e!3974718)))

(declare-fun b!6566234 () Bool)

(assert (=> b!6566234 (= e!3974717 (= lt!2407353 call!571305))))

(declare-fun b!6566235 () Bool)

(assert (=> b!6566235 (= e!3974714 (= (head!13331 s!2326) (c!1206624 lt!2407161)))))

(declare-fun b!6566236 () Bool)

(assert (=> b!6566236 (= e!3974716 (matchR!8624 (derivativeStep!5124 lt!2407161 (head!13331 s!2326)) (tail!12416 s!2326)))))

(declare-fun bm!571300 () Bool)

(assert (=> bm!571300 (= call!571305 (isEmpty!37743 s!2326))))

(declare-fun d!2060332 () Bool)

(assert (=> d!2060332 e!3974717))

(declare-fun c!1206894 () Bool)

(assert (=> d!2060332 (= c!1206894 ((_ is EmptyExpr!16441) lt!2407161))))

(assert (=> d!2060332 (= lt!2407353 e!3974716)))

(declare-fun c!1206895 () Bool)

(assert (=> d!2060332 (= c!1206895 (isEmpty!37743 s!2326))))

(assert (=> d!2060332 (validRegex!8177 lt!2407161)))

(assert (=> d!2060332 (= (matchR!8624 lt!2407161 s!2326) lt!2407353)))

(assert (= (and d!2060332 c!1206895) b!6566230))

(assert (= (and d!2060332 (not c!1206895)) b!6566236))

(assert (= (and d!2060332 c!1206894) b!6566234))

(assert (= (and d!2060332 (not c!1206894)) b!6566231))

(assert (= (and b!6566231 c!1206896) b!6566224))

(assert (= (and b!6566231 (not c!1206896)) b!6566233))

(assert (= (and b!6566233 (not res!2694547)) b!6566225))

(assert (= (and b!6566225 res!2694550) b!6566232))

(assert (= (and b!6566232 res!2694549) b!6566229))

(assert (= (and b!6566229 res!2694548) b!6566235))

(assert (= (and b!6566225 (not res!2694551)) b!6566223))

(assert (= (and b!6566223 res!2694546) b!6566227))

(assert (= (and b!6566227 (not res!2694545)) b!6566226))

(assert (= (and b!6566226 (not res!2694552)) b!6566228))

(assert (= (or b!6566234 b!6566227 b!6566232) bm!571300))

(assert (=> b!6566235 m!7347558))

(assert (=> b!6566236 m!7347558))

(assert (=> b!6566236 m!7347558))

(declare-fun m!7348508 () Bool)

(assert (=> b!6566236 m!7348508))

(assert (=> b!6566236 m!7347562))

(assert (=> b!6566236 m!7348508))

(assert (=> b!6566236 m!7347562))

(declare-fun m!7348510 () Bool)

(assert (=> b!6566236 m!7348510))

(assert (=> b!6566229 m!7347562))

(assert (=> b!6566229 m!7347562))

(assert (=> b!6566229 m!7348270))

(assert (=> b!6566226 m!7347562))

(assert (=> b!6566226 m!7347562))

(assert (=> b!6566226 m!7348270))

(assert (=> b!6566228 m!7347558))

(assert (=> d!2060332 m!7347554))

(assert (=> d!2060332 m!7348364))

(assert (=> b!6566230 m!7348366))

(assert (=> bm!571300 m!7347554))

(assert (=> b!6565251 d!2060332))

(declare-fun d!2060334 () Bool)

(assert (=> d!2060334 (= (matchR!8624 lt!2407161 s!2326) (matchRSpec!3542 lt!2407161 s!2326))))

(declare-fun lt!2407354 () Unit!159099)

(assert (=> d!2060334 (= lt!2407354 (choose!48999 lt!2407161 s!2326))))

(assert (=> d!2060334 (validRegex!8177 lt!2407161)))

(assert (=> d!2060334 (= (mainMatchTheorem!3542 lt!2407161 s!2326) lt!2407354)))

(declare-fun bs!1677213 () Bool)

(assert (= bs!1677213 d!2060334))

(assert (=> bs!1677213 m!7347386))

(assert (=> bs!1677213 m!7347384))

(declare-fun m!7348512 () Bool)

(assert (=> bs!1677213 m!7348512))

(assert (=> bs!1677213 m!7348364))

(assert (=> b!6565251 d!2060334))

(declare-fun d!2060336 () Bool)

(assert (=> d!2060336 (= (nullable!6434 (regOne!33394 (regOne!33394 r!7292))) (nullableFct!2360 (regOne!33394 (regOne!33394 r!7292))))))

(declare-fun bs!1677214 () Bool)

(assert (= bs!1677214 d!2060336))

(declare-fun m!7348514 () Bool)

(assert (=> bs!1677214 m!7348514))

(assert (=> b!6565273 d!2060336))

(declare-fun bs!1677216 () Bool)

(declare-fun d!2060338 () Bool)

(assert (= bs!1677216 (and d!2060338 d!2060062)))

(declare-fun lambda!365473 () Int)

(assert (=> bs!1677216 (= lambda!365473 lambda!365397)))

(declare-fun bs!1677217 () Bool)

(assert (= bs!1677217 (and d!2060338 d!2060218)))

(assert (=> bs!1677217 (= lambda!365473 lambda!365447)))

(declare-fun bs!1677218 () Bool)

(assert (= bs!1677218 (and d!2060338 b!6565269)))

(assert (=> bs!1677218 (= lambda!365473 lambda!365372)))

(declare-fun bs!1677219 () Bool)

(assert (= bs!1677219 (and d!2060338 d!2060168)))

(assert (=> bs!1677219 (= lambda!365473 lambda!365432)))

(declare-fun bs!1677220 () Bool)

(assert (= bs!1677220 (and d!2060338 d!2060060)))

(assert (=> bs!1677220 (= lambda!365473 lambda!365396)))

(declare-fun b!6566257 () Bool)

(declare-fun e!3974733 () Bool)

(declare-fun lt!2407360 () Regex!16441)

(assert (=> b!6566257 (= e!3974733 (= lt!2407360 (head!13333 (unfocusZipperList!1862 zl!343))))))

(declare-fun b!6566258 () Bool)

(declare-fun e!3974738 () Regex!16441)

(declare-fun e!3974734 () Regex!16441)

(assert (=> b!6566258 (= e!3974738 e!3974734)))

(declare-fun c!1206908 () Bool)

(assert (=> b!6566258 (= c!1206908 ((_ is Cons!65499) (unfocusZipperList!1862 zl!343)))))

(declare-fun b!6566259 () Bool)

(assert (=> b!6566259 (= e!3974734 (Union!16441 (h!71947 (unfocusZipperList!1862 zl!343)) (generalisedUnion!2285 (t!379267 (unfocusZipperList!1862 zl!343)))))))

(declare-fun b!6566260 () Bool)

(declare-fun isUnion!1258 (Regex!16441) Bool)

(assert (=> b!6566260 (= e!3974733 (isUnion!1258 lt!2407360))))

(declare-fun b!6566261 () Bool)

(declare-fun e!3974736 () Bool)

(declare-fun isEmptyLang!1828 (Regex!16441) Bool)

(assert (=> b!6566261 (= e!3974736 (isEmptyLang!1828 lt!2407360))))

(declare-fun b!6566262 () Bool)

(assert (=> b!6566262 (= e!3974734 EmptyLang!16441)))

(declare-fun e!3974737 () Bool)

(assert (=> d!2060338 e!3974737))

(declare-fun res!2694558 () Bool)

(assert (=> d!2060338 (=> (not res!2694558) (not e!3974737))))

(assert (=> d!2060338 (= res!2694558 (validRegex!8177 lt!2407360))))

(assert (=> d!2060338 (= lt!2407360 e!3974738)))

(declare-fun c!1206906 () Bool)

(declare-fun e!3974735 () Bool)

(assert (=> d!2060338 (= c!1206906 e!3974735)))

(declare-fun res!2694557 () Bool)

(assert (=> d!2060338 (=> (not res!2694557) (not e!3974735))))

(assert (=> d!2060338 (= res!2694557 ((_ is Cons!65499) (unfocusZipperList!1862 zl!343)))))

(assert (=> d!2060338 (forall!15612 (unfocusZipperList!1862 zl!343) lambda!365473)))

(assert (=> d!2060338 (= (generalisedUnion!2285 (unfocusZipperList!1862 zl!343)) lt!2407360)))

(declare-fun b!6566263 () Bool)

(assert (=> b!6566263 (= e!3974735 (isEmpty!37741 (t!379267 (unfocusZipperList!1862 zl!343))))))

(declare-fun b!6566264 () Bool)

(assert (=> b!6566264 (= e!3974737 e!3974736)))

(declare-fun c!1206907 () Bool)

(assert (=> b!6566264 (= c!1206907 (isEmpty!37741 (unfocusZipperList!1862 zl!343)))))

(declare-fun b!6566265 () Bool)

(assert (=> b!6566265 (= e!3974738 (h!71947 (unfocusZipperList!1862 zl!343)))))

(declare-fun b!6566266 () Bool)

(assert (=> b!6566266 (= e!3974736 e!3974733)))

(declare-fun c!1206905 () Bool)

(assert (=> b!6566266 (= c!1206905 (isEmpty!37741 (tail!12418 (unfocusZipperList!1862 zl!343))))))

(assert (= (and d!2060338 res!2694557) b!6566263))

(assert (= (and d!2060338 c!1206906) b!6566265))

(assert (= (and d!2060338 (not c!1206906)) b!6566258))

(assert (= (and b!6566258 c!1206908) b!6566259))

(assert (= (and b!6566258 (not c!1206908)) b!6566262))

(assert (= (and d!2060338 res!2694558) b!6566264))

(assert (= (and b!6566264 c!1206907) b!6566261))

(assert (= (and b!6566264 (not c!1206907)) b!6566266))

(assert (= (and b!6566266 c!1206905) b!6566257))

(assert (= (and b!6566266 (not c!1206905)) b!6566260))

(assert (=> b!6566266 m!7347390))

(declare-fun m!7348524 () Bool)

(assert (=> b!6566266 m!7348524))

(assert (=> b!6566266 m!7348524))

(declare-fun m!7348526 () Bool)

(assert (=> b!6566266 m!7348526))

(declare-fun m!7348528 () Bool)

(assert (=> b!6566259 m!7348528))

(declare-fun m!7348530 () Bool)

(assert (=> b!6566260 m!7348530))

(declare-fun m!7348532 () Bool)

(assert (=> d!2060338 m!7348532))

(assert (=> d!2060338 m!7347390))

(declare-fun m!7348534 () Bool)

(assert (=> d!2060338 m!7348534))

(declare-fun m!7348536 () Bool)

(assert (=> b!6566263 m!7348536))

(assert (=> b!6566264 m!7347390))

(declare-fun m!7348538 () Bool)

(assert (=> b!6566264 m!7348538))

(declare-fun m!7348540 () Bool)

(assert (=> b!6566261 m!7348540))

(assert (=> b!6566257 m!7347390))

(declare-fun m!7348542 () Bool)

(assert (=> b!6566257 m!7348542))

(assert (=> b!6565252 d!2060338))

(declare-fun bs!1677221 () Bool)

(declare-fun d!2060344 () Bool)

(assert (= bs!1677221 (and d!2060344 d!2060062)))

(declare-fun lambda!365476 () Int)

(assert (=> bs!1677221 (= lambda!365476 lambda!365397)))

(declare-fun bs!1677222 () Bool)

(assert (= bs!1677222 (and d!2060344 d!2060338)))

(assert (=> bs!1677222 (= lambda!365476 lambda!365473)))

(declare-fun bs!1677223 () Bool)

(assert (= bs!1677223 (and d!2060344 d!2060218)))

(assert (=> bs!1677223 (= lambda!365476 lambda!365447)))

(declare-fun bs!1677224 () Bool)

(assert (= bs!1677224 (and d!2060344 b!6565269)))

(assert (=> bs!1677224 (= lambda!365476 lambda!365372)))

(declare-fun bs!1677225 () Bool)

(assert (= bs!1677225 (and d!2060344 d!2060168)))

(assert (=> bs!1677225 (= lambda!365476 lambda!365432)))

(declare-fun bs!1677226 () Bool)

(assert (= bs!1677226 (and d!2060344 d!2060060)))

(assert (=> bs!1677226 (= lambda!365476 lambda!365396)))

(declare-fun lt!2407369 () List!65623)

(assert (=> d!2060344 (forall!15612 lt!2407369 lambda!365476)))

(declare-fun e!3974751 () List!65623)

(assert (=> d!2060344 (= lt!2407369 e!3974751)))

(declare-fun c!1206915 () Bool)

(assert (=> d!2060344 (= c!1206915 ((_ is Cons!65500) zl!343))))

(assert (=> d!2060344 (= (unfocusZipperList!1862 zl!343) lt!2407369)))

(declare-fun b!6566289 () Bool)

(assert (=> b!6566289 (= e!3974751 (Cons!65499 (generalisedConcat!2038 (exprs!6325 (h!71948 zl!343))) (unfocusZipperList!1862 (t!379268 zl!343))))))

(declare-fun b!6566290 () Bool)

(assert (=> b!6566290 (= e!3974751 Nil!65499)))

(assert (= (and d!2060344 c!1206915) b!6566289))

(assert (= (and d!2060344 (not c!1206915)) b!6566290))

(declare-fun m!7348544 () Bool)

(assert (=> d!2060344 m!7348544))

(assert (=> b!6566289 m!7347318))

(declare-fun m!7348546 () Bool)

(assert (=> b!6566289 m!7348546))

(assert (=> b!6565252 d!2060344))

(assert (=> b!6565254 d!2060158))

(declare-fun d!2060346 () Bool)

(assert (=> d!2060346 (= (isDefined!13035 lt!2407141) (not (isEmpty!37744 lt!2407141)))))

(declare-fun bs!1677227 () Bool)

(assert (= bs!1677227 d!2060346))

(declare-fun m!7348548 () Bool)

(assert (=> bs!1677227 m!7348548))

(assert (=> b!6565253 d!2060346))

(declare-fun d!2060348 () Bool)

(assert (=> d!2060348 (isDefined!13035 (findConcatSeparationZippers!206 lt!2407140 (store ((as const (Array Context!11650 Bool)) false) lt!2407173 true) Nil!65498 s!2326 s!2326))))

(declare-fun lt!2407376 () Unit!159099)

(declare-fun choose!49017 ((InoxSet Context!11650) Context!11650 List!65622) Unit!159099)

(assert (=> d!2060348 (= lt!2407376 (choose!49017 lt!2407140 lt!2407173 s!2326))))

(assert (=> d!2060348 (matchZipper!2453 (appendTo!202 lt!2407140 lt!2407173) s!2326)))

(assert (=> d!2060348 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!206 lt!2407140 lt!2407173 s!2326) lt!2407376)))

(declare-fun bs!1677235 () Bool)

(assert (= bs!1677235 d!2060348))

(assert (=> bs!1677235 m!7347360))

(assert (=> bs!1677235 m!7347338))

(declare-fun m!7348586 () Bool)

(assert (=> bs!1677235 m!7348586))

(assert (=> bs!1677235 m!7347338))

(declare-fun m!7348588 () Bool)

(assert (=> bs!1677235 m!7348588))

(declare-fun m!7348590 () Bool)

(assert (=> bs!1677235 m!7348590))

(declare-fun m!7348592 () Bool)

(assert (=> bs!1677235 m!7348592))

(assert (=> bs!1677235 m!7347360))

(assert (=> bs!1677235 m!7348588))

(assert (=> b!6565253 d!2060348))

(declare-fun d!2060356 () Bool)

(assert (=> d!2060356 (= (get!22743 lt!2407141) (v!52516 lt!2407141))))

(assert (=> b!6565253 d!2060356))

(declare-fun b!6566347 () Bool)

(declare-fun e!3974786 () Option!16332)

(declare-fun e!3974782 () Option!16332)

(assert (=> b!6566347 (= e!3974786 e!3974782)))

(declare-fun c!1206931 () Bool)

(assert (=> b!6566347 (= c!1206931 ((_ is Nil!65498) s!2326))))

(declare-fun b!6566348 () Bool)

(declare-fun res!2694596 () Bool)

(declare-fun e!3974783 () Bool)

(assert (=> b!6566348 (=> (not res!2694596) (not e!3974783))))

(declare-fun lt!2407390 () Option!16332)

(assert (=> b!6566348 (= res!2694596 (matchZipper!2453 lt!2407140 (_1!36723 (get!22743 lt!2407390))))))

(declare-fun b!6566349 () Bool)

(declare-fun e!3974784 () Bool)

(assert (=> b!6566349 (= e!3974784 (matchZipper!2453 lt!2407129 s!2326))))

(declare-fun b!6566350 () Bool)

(declare-fun e!3974785 () Bool)

(assert (=> b!6566350 (= e!3974785 (not (isDefined!13035 lt!2407390)))))

(declare-fun b!6566351 () Bool)

(assert (=> b!6566351 (= e!3974783 (= (++!14584 (_1!36723 (get!22743 lt!2407390)) (_2!36723 (get!22743 lt!2407390))) s!2326))))

(declare-fun b!6566353 () Bool)

(declare-fun res!2694598 () Bool)

(assert (=> b!6566353 (=> (not res!2694598) (not e!3974783))))

(assert (=> b!6566353 (= res!2694598 (matchZipper!2453 lt!2407129 (_2!36723 (get!22743 lt!2407390))))))

(declare-fun b!6566354 () Bool)

(assert (=> b!6566354 (= e!3974782 None!16331)))

(declare-fun b!6566355 () Bool)

(assert (=> b!6566355 (= e!3974786 (Some!16331 (tuple2!66841 Nil!65498 s!2326)))))

(declare-fun d!2060358 () Bool)

(assert (=> d!2060358 e!3974785))

(declare-fun res!2694595 () Bool)

(assert (=> d!2060358 (=> res!2694595 e!3974785)))

(assert (=> d!2060358 (= res!2694595 e!3974783)))

(declare-fun res!2694597 () Bool)

(assert (=> d!2060358 (=> (not res!2694597) (not e!3974783))))

(assert (=> d!2060358 (= res!2694597 (isDefined!13035 lt!2407390))))

(assert (=> d!2060358 (= lt!2407390 e!3974786)))

(declare-fun c!1206932 () Bool)

(assert (=> d!2060358 (= c!1206932 e!3974784)))

(declare-fun res!2694599 () Bool)

(assert (=> d!2060358 (=> (not res!2694599) (not e!3974784))))

(assert (=> d!2060358 (= res!2694599 (matchZipper!2453 lt!2407140 Nil!65498))))

(assert (=> d!2060358 (= (++!14584 Nil!65498 s!2326) s!2326)))

(assert (=> d!2060358 (= (findConcatSeparationZippers!206 lt!2407140 lt!2407129 Nil!65498 s!2326 s!2326) lt!2407390)))

(declare-fun b!6566352 () Bool)

(declare-fun lt!2407392 () Unit!159099)

(declare-fun lt!2407391 () Unit!159099)

(assert (=> b!6566352 (= lt!2407392 lt!2407391)))

(assert (=> b!6566352 (= (++!14584 (++!14584 Nil!65498 (Cons!65498 (h!71946 s!2326) Nil!65498)) (t!379266 s!2326)) s!2326)))

(assert (=> b!6566352 (= lt!2407391 (lemmaMoveElementToOtherListKeepsConcatEq!2583 Nil!65498 (h!71946 s!2326) (t!379266 s!2326) s!2326))))

(assert (=> b!6566352 (= e!3974782 (findConcatSeparationZippers!206 lt!2407140 lt!2407129 (++!14584 Nil!65498 (Cons!65498 (h!71946 s!2326) Nil!65498)) (t!379266 s!2326) s!2326))))

(assert (= (and d!2060358 res!2694599) b!6566349))

(assert (= (and d!2060358 c!1206932) b!6566355))

(assert (= (and d!2060358 (not c!1206932)) b!6566347))

(assert (= (and b!6566347 c!1206931) b!6566354))

(assert (= (and b!6566347 (not c!1206931)) b!6566352))

(assert (= (and d!2060358 res!2694597) b!6566348))

(assert (= (and b!6566348 res!2694596) b!6566353))

(assert (= (and b!6566353 res!2694598) b!6566351))

(assert (= (and d!2060358 (not res!2694595)) b!6566350))

(declare-fun m!7348618 () Bool)

(assert (=> b!6566349 m!7348618))

(declare-fun m!7348620 () Bool)

(assert (=> b!6566348 m!7348620))

(declare-fun m!7348622 () Bool)

(assert (=> b!6566348 m!7348622))

(assert (=> b!6566352 m!7347602))

(assert (=> b!6566352 m!7347602))

(assert (=> b!6566352 m!7347604))

(assert (=> b!6566352 m!7347606))

(assert (=> b!6566352 m!7347602))

(declare-fun m!7348624 () Bool)

(assert (=> b!6566352 m!7348624))

(declare-fun m!7348626 () Bool)

(assert (=> b!6566350 m!7348626))

(assert (=> b!6566351 m!7348620))

(declare-fun m!7348630 () Bool)

(assert (=> b!6566351 m!7348630))

(assert (=> b!6566353 m!7348620))

(declare-fun m!7348632 () Bool)

(assert (=> b!6566353 m!7348632))

(assert (=> d!2060358 m!7348626))

(declare-fun m!7348634 () Bool)

(assert (=> d!2060358 m!7348634))

(declare-fun m!7348638 () Bool)

(assert (=> d!2060358 m!7348638))

(assert (=> b!6565253 d!2060358))

(declare-fun b!6566359 () Bool)

(declare-fun e!3974788 () Bool)

(declare-fun lt!2407396 () List!65622)

(assert (=> b!6566359 (= e!3974788 (or (not (= (_2!36723 lt!2407137) Nil!65498)) (= lt!2407396 (_1!36723 lt!2407137))))))

(declare-fun d!2060372 () Bool)

(assert (=> d!2060372 e!3974788))

(declare-fun res!2694601 () Bool)

(assert (=> d!2060372 (=> (not res!2694601) (not e!3974788))))

(assert (=> d!2060372 (= res!2694601 (= (content!12603 lt!2407396) ((_ map or) (content!12603 (_1!36723 lt!2407137)) (content!12603 (_2!36723 lt!2407137)))))))

(declare-fun e!3974787 () List!65622)

(assert (=> d!2060372 (= lt!2407396 e!3974787)))

(declare-fun c!1206933 () Bool)

(assert (=> d!2060372 (= c!1206933 ((_ is Nil!65498) (_1!36723 lt!2407137)))))

(assert (=> d!2060372 (= (++!14584 (_1!36723 lt!2407137) (_2!36723 lt!2407137)) lt!2407396)))

(declare-fun b!6566358 () Bool)

(declare-fun res!2694600 () Bool)

(assert (=> b!6566358 (=> (not res!2694600) (not e!3974788))))

(assert (=> b!6566358 (= res!2694600 (= (size!40530 lt!2407396) (+ (size!40530 (_1!36723 lt!2407137)) (size!40530 (_2!36723 lt!2407137)))))))

(declare-fun b!6566356 () Bool)

(assert (=> b!6566356 (= e!3974787 (_2!36723 lt!2407137))))

(declare-fun b!6566357 () Bool)

(assert (=> b!6566357 (= e!3974787 (Cons!65498 (h!71946 (_1!36723 lt!2407137)) (++!14584 (t!379266 (_1!36723 lt!2407137)) (_2!36723 lt!2407137))))))

(assert (= (and d!2060372 c!1206933) b!6566356))

(assert (= (and d!2060372 (not c!1206933)) b!6566357))

(assert (= (and d!2060372 res!2694601) b!6566358))

(assert (= (and b!6566358 res!2694600) b!6566359))

(declare-fun m!7348642 () Bool)

(assert (=> d!2060372 m!7348642))

(declare-fun m!7348644 () Bool)

(assert (=> d!2060372 m!7348644))

(declare-fun m!7348646 () Bool)

(assert (=> d!2060372 m!7348646))

(declare-fun m!7348648 () Bool)

(assert (=> b!6566358 m!7348648))

(declare-fun m!7348650 () Bool)

(assert (=> b!6566358 m!7348650))

(declare-fun m!7348652 () Bool)

(assert (=> b!6566358 m!7348652))

(declare-fun m!7348654 () Bool)

(assert (=> b!6566357 m!7348654))

(assert (=> b!6565253 d!2060372))

(declare-fun d!2060376 () Bool)

(declare-fun c!1206934 () Bool)

(assert (=> d!2060376 (= c!1206934 (isEmpty!37743 (_2!36723 lt!2407137)))))

(declare-fun e!3974789 () Bool)

(assert (=> d!2060376 (= (matchZipper!2453 lt!2407129 (_2!36723 lt!2407137)) e!3974789)))

(declare-fun b!6566360 () Bool)

(assert (=> b!6566360 (= e!3974789 (nullableZipper!2185 lt!2407129))))

(declare-fun b!6566361 () Bool)

(assert (=> b!6566361 (= e!3974789 (matchZipper!2453 (derivationStepZipper!2407 lt!2407129 (head!13331 (_2!36723 lt!2407137))) (tail!12416 (_2!36723 lt!2407137))))))

(assert (= (and d!2060376 c!1206934) b!6566360))

(assert (= (and d!2060376 (not c!1206934)) b!6566361))

(assert (=> d!2060376 m!7348378))

(declare-fun m!7348656 () Bool)

(assert (=> b!6566360 m!7348656))

(assert (=> b!6566361 m!7348368))

(assert (=> b!6566361 m!7348368))

(declare-fun m!7348658 () Bool)

(assert (=> b!6566361 m!7348658))

(assert (=> b!6566361 m!7348372))

(assert (=> b!6566361 m!7348658))

(assert (=> b!6566361 m!7348372))

(declare-fun m!7348660 () Bool)

(assert (=> b!6566361 m!7348660))

(assert (=> b!6565255 d!2060376))

(declare-fun d!2060378 () Bool)

(declare-fun c!1206935 () Bool)

(assert (=> d!2060378 (= c!1206935 (isEmpty!37743 (_1!36723 lt!2407137)))))

(declare-fun e!3974790 () Bool)

(assert (=> d!2060378 (= (matchZipper!2453 lt!2407140 (_1!36723 lt!2407137)) e!3974790)))

(declare-fun b!6566362 () Bool)

(assert (=> b!6566362 (= e!3974790 (nullableZipper!2185 lt!2407140))))

(declare-fun b!6566363 () Bool)

(assert (=> b!6566363 (= e!3974790 (matchZipper!2453 (derivationStepZipper!2407 lt!2407140 (head!13331 (_1!36723 lt!2407137))) (tail!12416 (_1!36723 lt!2407137))))))

(assert (= (and d!2060378 c!1206935) b!6566362))

(assert (= (and d!2060378 (not c!1206935)) b!6566363))

(assert (=> d!2060378 m!7348410))

(declare-fun m!7348662 () Bool)

(assert (=> b!6566362 m!7348662))

(assert (=> b!6566363 m!7348400))

(assert (=> b!6566363 m!7348400))

(declare-fun m!7348664 () Bool)

(assert (=> b!6566363 m!7348664))

(assert (=> b!6566363 m!7348404))

(assert (=> b!6566363 m!7348664))

(assert (=> b!6566363 m!7348404))

(declare-fun m!7348666 () Bool)

(assert (=> b!6566363 m!7348666))

(assert (=> b!6565276 d!2060378))

(declare-fun b!6566381 () Bool)

(declare-fun e!3974795 () Bool)

(declare-fun tp!1813181 () Bool)

(declare-fun tp!1813180 () Bool)

(assert (=> b!6566381 (= e!3974795 (and tp!1813181 tp!1813180))))

(declare-fun b!6566378 () Bool)

(assert (=> b!6566378 (= e!3974795 tp_is_empty!42135)))

(declare-fun b!6566379 () Bool)

(declare-fun tp!1813179 () Bool)

(declare-fun tp!1813182 () Bool)

(assert (=> b!6566379 (= e!3974795 (and tp!1813179 tp!1813182))))

(assert (=> b!6565261 (= tp!1813167 e!3974795)))

(declare-fun b!6566380 () Bool)

(declare-fun tp!1813178 () Bool)

(assert (=> b!6566380 (= e!3974795 tp!1813178)))

(assert (= (and b!6565261 ((_ is ElementMatch!16441) (regOne!33394 r!7292))) b!6566378))

(assert (= (and b!6565261 ((_ is Concat!25286) (regOne!33394 r!7292))) b!6566379))

(assert (= (and b!6565261 ((_ is Star!16441) (regOne!33394 r!7292))) b!6566380))

(assert (= (and b!6565261 ((_ is Union!16441) (regOne!33394 r!7292))) b!6566381))

(declare-fun b!6566389 () Bool)

(declare-fun e!3974798 () Bool)

(declare-fun tp!1813186 () Bool)

(declare-fun tp!1813185 () Bool)

(assert (=> b!6566389 (= e!3974798 (and tp!1813186 tp!1813185))))

(declare-fun b!6566386 () Bool)

(assert (=> b!6566386 (= e!3974798 tp_is_empty!42135)))

(declare-fun b!6566387 () Bool)

(declare-fun tp!1813184 () Bool)

(declare-fun tp!1813187 () Bool)

(assert (=> b!6566387 (= e!3974798 (and tp!1813184 tp!1813187))))

(assert (=> b!6565261 (= tp!1813164 e!3974798)))

(declare-fun b!6566388 () Bool)

(declare-fun tp!1813183 () Bool)

(assert (=> b!6566388 (= e!3974798 tp!1813183)))

(assert (= (and b!6565261 ((_ is ElementMatch!16441) (regTwo!33394 r!7292))) b!6566386))

(assert (= (and b!6565261 ((_ is Concat!25286) (regTwo!33394 r!7292))) b!6566387))

(assert (= (and b!6565261 ((_ is Star!16441) (regTwo!33394 r!7292))) b!6566388))

(assert (= (and b!6565261 ((_ is Union!16441) (regTwo!33394 r!7292))) b!6566389))

(declare-fun b!6566393 () Bool)

(declare-fun e!3974799 () Bool)

(declare-fun tp!1813191 () Bool)

(declare-fun tp!1813190 () Bool)

(assert (=> b!6566393 (= e!3974799 (and tp!1813191 tp!1813190))))

(declare-fun b!6566390 () Bool)

(assert (=> b!6566390 (= e!3974799 tp_is_empty!42135)))

(declare-fun b!6566391 () Bool)

(declare-fun tp!1813189 () Bool)

(declare-fun tp!1813192 () Bool)

(assert (=> b!6566391 (= e!3974799 (and tp!1813189 tp!1813192))))

(assert (=> b!6565246 (= tp!1813163 e!3974799)))

(declare-fun b!6566392 () Bool)

(declare-fun tp!1813188 () Bool)

(assert (=> b!6566392 (= e!3974799 tp!1813188)))

(assert (= (and b!6565246 ((_ is ElementMatch!16441) (reg!16770 r!7292))) b!6566390))

(assert (= (and b!6565246 ((_ is Concat!25286) (reg!16770 r!7292))) b!6566391))

(assert (= (and b!6565246 ((_ is Star!16441) (reg!16770 r!7292))) b!6566392))

(assert (= (and b!6565246 ((_ is Union!16441) (reg!16770 r!7292))) b!6566393))

(declare-fun b!6566398 () Bool)

(declare-fun e!3974802 () Bool)

(declare-fun tp!1813195 () Bool)

(assert (=> b!6566398 (= e!3974802 (and tp_is_empty!42135 tp!1813195))))

(assert (=> b!6565263 (= tp!1813162 e!3974802)))

(assert (= (and b!6565263 ((_ is Cons!65498) (t!379266 s!2326))) b!6566398))

(declare-fun b!6566402 () Bool)

(declare-fun e!3974803 () Bool)

(declare-fun tp!1813199 () Bool)

(declare-fun tp!1813198 () Bool)

(assert (=> b!6566402 (= e!3974803 (and tp!1813199 tp!1813198))))

(declare-fun b!6566399 () Bool)

(assert (=> b!6566399 (= e!3974803 tp_is_empty!42135)))

(declare-fun b!6566400 () Bool)

(declare-fun tp!1813197 () Bool)

(declare-fun tp!1813200 () Bool)

(assert (=> b!6566400 (= e!3974803 (and tp!1813197 tp!1813200))))

(assert (=> b!6565274 (= tp!1813160 e!3974803)))

(declare-fun b!6566401 () Bool)

(declare-fun tp!1813196 () Bool)

(assert (=> b!6566401 (= e!3974803 tp!1813196)))

(assert (= (and b!6565274 ((_ is ElementMatch!16441) (regOne!33395 r!7292))) b!6566399))

(assert (= (and b!6565274 ((_ is Concat!25286) (regOne!33395 r!7292))) b!6566400))

(assert (= (and b!6565274 ((_ is Star!16441) (regOne!33395 r!7292))) b!6566401))

(assert (= (and b!6565274 ((_ is Union!16441) (regOne!33395 r!7292))) b!6566402))

(declare-fun b!6566406 () Bool)

(declare-fun e!3974804 () Bool)

(declare-fun tp!1813204 () Bool)

(declare-fun tp!1813203 () Bool)

(assert (=> b!6566406 (= e!3974804 (and tp!1813204 tp!1813203))))

(declare-fun b!6566403 () Bool)

(assert (=> b!6566403 (= e!3974804 tp_is_empty!42135)))

(declare-fun b!6566404 () Bool)

(declare-fun tp!1813202 () Bool)

(declare-fun tp!1813205 () Bool)

(assert (=> b!6566404 (= e!3974804 (and tp!1813202 tp!1813205))))

(assert (=> b!6565274 (= tp!1813159 e!3974804)))

(declare-fun b!6566405 () Bool)

(declare-fun tp!1813201 () Bool)

(assert (=> b!6566405 (= e!3974804 tp!1813201)))

(assert (= (and b!6565274 ((_ is ElementMatch!16441) (regTwo!33395 r!7292))) b!6566403))

(assert (= (and b!6565274 ((_ is Concat!25286) (regTwo!33395 r!7292))) b!6566404))

(assert (= (and b!6565274 ((_ is Star!16441) (regTwo!33395 r!7292))) b!6566405))

(assert (= (and b!6565274 ((_ is Union!16441) (regTwo!33395 r!7292))) b!6566406))

(declare-fun b!6566415 () Bool)

(declare-fun e!3974809 () Bool)

(declare-fun tp!1813210 () Bool)

(declare-fun tp!1813211 () Bool)

(assert (=> b!6566415 (= e!3974809 (and tp!1813210 tp!1813211))))

(assert (=> b!6565275 (= tp!1813161 e!3974809)))

(assert (= (and b!6565275 ((_ is Cons!65499) (exprs!6325 (h!71948 zl!343)))) b!6566415))

(declare-fun b!6566423 () Bool)

(declare-fun e!3974815 () Bool)

(declare-fun tp!1813216 () Bool)

(assert (=> b!6566423 (= e!3974815 tp!1813216)))

(declare-fun tp!1813217 () Bool)

(declare-fun e!3974814 () Bool)

(declare-fun b!6566422 () Bool)

(assert (=> b!6566422 (= e!3974814 (and (inv!84349 (h!71948 (t!379268 zl!343))) e!3974815 tp!1813217))))

(assert (=> b!6565280 (= tp!1813158 e!3974814)))

(assert (= b!6566422 b!6566423))

(assert (= (and b!6565280 ((_ is Cons!65500) (t!379268 zl!343))) b!6566422))

(declare-fun m!7348684 () Bool)

(assert (=> b!6566422 m!7348684))

(declare-fun condSetEmpty!44825 () Bool)

(assert (=> setNonEmpty!44822 (= condSetEmpty!44825 (= setRest!44822 ((as const (Array Context!11650 Bool)) false)))))

(declare-fun setRes!44825 () Bool)

(assert (=> setNonEmpty!44822 (= tp!1813166 setRes!44825)))

(declare-fun setIsEmpty!44825 () Bool)

(assert (=> setIsEmpty!44825 setRes!44825))

(declare-fun tp!1813223 () Bool)

(declare-fun setNonEmpty!44825 () Bool)

(declare-fun setElem!44825 () Context!11650)

(declare-fun e!3974825 () Bool)

(assert (=> setNonEmpty!44825 (= setRes!44825 (and tp!1813223 (inv!84349 setElem!44825) e!3974825))))

(declare-fun setRest!44825 () (InoxSet Context!11650))

(assert (=> setNonEmpty!44825 (= setRest!44822 ((_ map or) (store ((as const (Array Context!11650 Bool)) false) setElem!44825 true) setRest!44825))))

(declare-fun b!6566442 () Bool)

(declare-fun tp!1813222 () Bool)

(assert (=> b!6566442 (= e!3974825 tp!1813222)))

(assert (= (and setNonEmpty!44822 condSetEmpty!44825) setIsEmpty!44825))

(assert (= (and setNonEmpty!44822 (not condSetEmpty!44825)) setNonEmpty!44825))

(assert (= setNonEmpty!44825 b!6566442))

(declare-fun m!7348696 () Bool)

(assert (=> setNonEmpty!44825 m!7348696))

(declare-fun b!6566443 () Bool)

(declare-fun e!3974826 () Bool)

(declare-fun tp!1813224 () Bool)

(declare-fun tp!1813225 () Bool)

(assert (=> b!6566443 (= e!3974826 (and tp!1813224 tp!1813225))))

(assert (=> b!6565265 (= tp!1813165 e!3974826)))

(assert (= (and b!6565265 ((_ is Cons!65499) (exprs!6325 setElem!44822))) b!6566443))

(declare-fun b_lambda!248357 () Bool)

(assert (= b_lambda!248337 (or b!6565242 b_lambda!248357)))

(declare-fun bs!1677262 () Bool)

(declare-fun d!2060386 () Bool)

(assert (= bs!1677262 (and d!2060386 b!6565242)))

(assert (=> bs!1677262 (= (dynLambda!26054 lambda!365370 lt!2407173) (derivationStepZipperUp!1615 lt!2407173 (h!71946 s!2326)))))

(assert (=> bs!1677262 m!7347356))

(assert (=> d!2060024 d!2060386))

(declare-fun b_lambda!248359 () Bool)

(assert (= b_lambda!248343 (or b!6565242 b_lambda!248359)))

(declare-fun bs!1677263 () Bool)

(declare-fun d!2060388 () Bool)

(assert (= bs!1677263 (and d!2060388 b!6565242)))

(assert (=> bs!1677263 (= (dynLambda!26054 lambda!365370 (h!71948 zl!343)) (derivationStepZipperUp!1615 (h!71948 zl!343) (h!71946 s!2326)))))

(assert (=> bs!1677263 m!7347470))

(assert (=> d!2060142 d!2060388))

(declare-fun b_lambda!248361 () Bool)

(assert (= b_lambda!248347 (or b!6565269 b_lambda!248361)))

(declare-fun bs!1677264 () Bool)

(declare-fun d!2060390 () Bool)

(assert (= bs!1677264 (and d!2060390 b!6565269)))

(declare-fun lt!2407401 () Unit!159099)

(assert (=> bs!1677264 (= lt!2407401 (lemmaConcatPreservesForall!414 (exprs!6325 lt!2407138) lt!2407171 lambda!365372))))

(assert (=> bs!1677264 (= (dynLambda!26056 lambda!365371 lt!2407138) (Context!11651 (++!14585 (exprs!6325 lt!2407138) lt!2407171)))))

(declare-fun m!7348698 () Bool)

(assert (=> bs!1677264 m!7348698))

(declare-fun m!7348700 () Bool)

(assert (=> bs!1677264 m!7348700))

(assert (=> d!2060184 d!2060390))

(declare-fun b_lambda!248363 () Bool)

(assert (= b_lambda!248341 (or b!6565242 b_lambda!248363)))

(declare-fun bs!1677265 () Bool)

(declare-fun d!2060392 () Bool)

(assert (= bs!1677265 (and d!2060392 b!6565242)))

(assert (=> bs!1677265 (= (dynLambda!26054 lambda!365370 lt!2407139) (derivationStepZipperUp!1615 lt!2407139 (h!71946 s!2326)))))

(assert (=> bs!1677265 m!7347324))

(assert (=> d!2060128 d!2060392))

(declare-fun b_lambda!248365 () Bool)

(assert (= b_lambda!248339 (or b!6565242 b_lambda!248365)))

(declare-fun bs!1677266 () Bool)

(declare-fun d!2060394 () Bool)

(assert (= bs!1677266 (and d!2060394 b!6565242)))

(assert (=> bs!1677266 (= (dynLambda!26054 lambda!365370 lt!2407138) (derivationStepZipperUp!1615 lt!2407138 (h!71946 s!2326)))))

(assert (=> bs!1677266 m!7347366))

(assert (=> d!2060032 d!2060394))

(check-sat (not d!2060088) (not b!6565667) (not b!6565860) (not d!2060160) (not b!6566361) (not b!6566357) (not b!6566114) (not b_lambda!248359) (not b!6566230) (not b!6566380) (not d!2060124) (not b!6565663) (not b!6566090) (not bm!571295) (not b!6566101) tp_is_empty!42135 (not b!6566350) (not b!6565525) (not b!6566398) (not b!6565639) (not bm!571243) (not b!6566067) (not d!2060192) (not b!6566083) (not b!6566141) (not b!6566190) (not b!6566259) (not b!6565668) (not b!6566443) (not d!2060050) (not bm!571237) (not bm!571203) (not d!2060348) (not b!6565884) (not b!6565955) (not b!6565782) (not b!6566387) (not bm!571207) (not b!6565411) (not d!2060060) (not b!6566142) (not b!6565412) (not d!2060184) (not b!6565999) (not b!6565409) (not b!6566363) (not b!6566197) (not b!6565783) (not b!6565764) (not b!6566001) (not b!6566035) (not d!2060376) (not d!2060080) (not d!2060180) (not bm!571231) (not b!6566358) (not d!2060358) (not d!2060046) (not d!2060042) (not b!6566084) (not b!6566353) (not d!2060090) (not d!2060076) (not d!2060114) (not b!6566072) (not b!6565649) (not b!6565410) (not b!6565856) (not b!6565631) (not d!2060344) (not b!6565414) (not b!6566117) (not bm!571287) (not b!6565657) (not bm!571299) (not b!6565789) (not b!6566196) (not d!2060310) (not b!6565364) (not d!2060026) (not b!6566348) (not d!2060168) (not b!6566261) (not d!2060112) (not b!6565624) (not b!6566362) (not d!2060300) (not b!6565720) (not bm!571286) (not b!6566107) (not d!2060024) (not d!2060022) (not b!6566260) (not d!2060028) (not b!6565365) (not d!2060158) (not b!6565790) (not d!2060020) (not d!2060096) (not bm!571278) (not d!2060178) (not b!6565950) (not b!6566124) (not d!2060012) (not b!6566085) (not b!6566263) (not b!6566235) (not b_lambda!248365) (not b!6565383) (not bs!1677265) (not b!6565521) (not d!2060200) (not b!6566151) (not b_lambda!248357) (not bm!571288) (not bm!571228) (not b!6565637) (not bm!571233) (not b!6566257) (not b!6566210) (not b!6566073) (not b!6566081) (not b!6566118) (not b!6566187) (not bm!571239) (not bm!571206) (not b!6566229) (not b!6565406) (not d!2060084) (not d!2060116) (not bm!571285) (not b!6565523) (not bm!571225) (not b!6566066) (not bm!571298) (not bm!571198) (not b!6565297) (not b!6566212) (not bm!571185) (not b!6566393) (not d!2060204) (not b!6565947) (not b!6566352) (not d!2060150) (not b!6565367) (not b!6565862) (not b!6565650) (not d!2060130) (not d!2060030) (not b!6565753) (not b!6566402) (not bm!571220) (not d!2060288) (not d!2060304) (not d!2060110) (not b!6565731) (not b!6566442) (not d!2060142) (not d!2060086) (not b!6566388) (not b!6566289) (not b!6565382) (not b!6566034) (not b!6565387) (not b!6566423) (not bs!1677262) (not b!6566405) (not d!2060196) (not b!6566379) (not b!6566264) (not b!6565861) (not d!2060102) (not b!6565635) (not d!2060082) (not bm!571227) (not b!6565362) (not bs!1677264) (not d!2060062) (not bm!571236) (not d!2060250) (not b!6566100) (not b!6565951) (not b!6565770) (not b!6565740) (not d!2060044) (not d!2060276) (not b!6565815) (not b!6565855) (not b!6565594) (not b!6566123) (not b!6565647) (not d!2060292) (not b_lambda!248363) (not b!6566099) (not b!6565363) (not bm!571226) (not b!6566226) (not b!6566153) (not b!6565636) (not b!6566065) (not b_lambda!248361) (not b!6565760) (not d!2060038) (not b!6566106) (not d!2060018) (not bm!571279) (not bs!1677266) (not b!6565784) (not d!2060346) (not b!6566401) (not d!2060336) (not d!2060270) (not b!6566404) (not d!2060334) (not b!6565854) (not b!6566415) (not d!2060206) (not b!6565656) (not b!6566028) (not d!2060378) (not d!2060176) (not bm!571296) (not b!6565885) (not b!6566140) (not b!6566236) (not b!6565651) (not b!6566266) (not d!2060106) (not b!6566097) (not b!6566091) (not b!6565774) (not b!6566400) (not b!6565524) (not b!6565351) (not b!6566191) (not d!2060278) (not b!6565634) (not b!6566349) (not d!2060254) (not b!6565530) (not d!2060058) (not b!6565718) (not b!6565736) (not b!6565531) (not b!6566360) (not b!6565664) (not b!6565378) (not d!2060228) (not bm!571242) (not b!6566389) (not d!2060230) (not b!6565593) (not d!2060212) (not bm!571282) (not b!6566228) (not d!2060316) (not d!2060338) (not b!6565953) (not b!6565625) (not b!6566406) (not b!6565980) (not bm!571297) (not d!2060372) (not b!6565366) (not d!2060032) (not b!6566351) (not d!2060318) (not d!2060286) (not d!2060218) (not b!6565859) (not b!6566189) (not bm!571216) (not b!6565322) (not b!6566392) (not b!6566422) (not b!6565727) (not b!6565928) (not d!2060152) (not b!6566025) (not b!6566027) (not b!6565927) (not b!6565952) (not d!2060134) (not d!2060064) (not bm!571200) (not b!6566381) (not b!6566391) (not bm!571300) (not b!6566063) (not bm!571184) (not b!6566029) (not bs!1677263) (not b!6565979) (not d!2060128) (not d!2060332) (not setNonEmpty!44825) (not b!6566116) (not d!2060302) (not d!2060108) (not d!2060284) (not d!2060136))
(check-sat)
