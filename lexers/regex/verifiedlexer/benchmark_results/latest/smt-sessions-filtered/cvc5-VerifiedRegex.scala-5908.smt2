; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!289294 () Bool)

(assert start!289294)

(declare-fun b!3001206 () Bool)

(assert (=> b!3001206 true))

(assert (=> b!3001206 true))

(assert (=> b!3001206 true))

(declare-fun lambda!112094 () Int)

(declare-fun lambda!112093 () Int)

(assert (=> b!3001206 (not (= lambda!112094 lambda!112093))))

(assert (=> b!3001206 true))

(assert (=> b!3001206 true))

(assert (=> b!3001206 true))

(declare-fun b!3001196 () Bool)

(declare-fun res!1236812 () Bool)

(declare-fun e!1885302 () Bool)

(assert (=> b!3001196 (=> res!1236812 e!1885302)))

(declare-datatypes ((C!18918 0))(
  ( (C!18919 (val!11495 Int)) )
))
(declare-datatypes ((Regex!9366 0))(
  ( (ElementMatch!9366 (c!493882 C!18918)) (Concat!14687 (regOne!19244 Regex!9366) (regTwo!19244 Regex!9366)) (EmptyExpr!9366) (Star!9366 (reg!9695 Regex!9366)) (EmptyLang!9366) (Union!9366 (regOne!19245 Regex!9366) (regTwo!19245 Regex!9366)) )
))
(declare-fun lt!1041877 () Regex!9366)

(declare-fun isEmptyExpr!473 (Regex!9366) Bool)

(assert (=> b!3001196 (= res!1236812 (isEmptyExpr!473 lt!1041877))))

(declare-fun b!3001197 () Bool)

(declare-fun res!1236811 () Bool)

(assert (=> b!3001197 (=> res!1236811 e!1885302)))

(declare-fun lt!1041875 () Regex!9366)

(assert (=> b!3001197 (= res!1236811 (isEmptyExpr!473 lt!1041875))))

(declare-fun b!3001198 () Bool)

(declare-fun res!1236808 () Bool)

(declare-fun e!1885300 () Bool)

(assert (=> b!3001198 (=> res!1236808 e!1885300)))

(declare-datatypes ((List!35231 0))(
  ( (Nil!35107) (Cons!35107 (h!40527 C!18918) (t!234296 List!35231)) )
))
(declare-fun s!11993 () List!35231)

(declare-fun isEmpty!19381 (List!35231) Bool)

(assert (=> b!3001198 (= res!1236808 (isEmpty!19381 s!11993))))

(declare-fun b!3001199 () Bool)

(declare-fun e!1885298 () Bool)

(assert (=> b!3001199 (= e!1885298 (not e!1885300))))

(declare-fun res!1236805 () Bool)

(assert (=> b!3001199 (=> res!1236805 e!1885300)))

(declare-fun lt!1041874 () Bool)

(declare-fun r!17423 () Regex!9366)

(assert (=> b!3001199 (= res!1236805 (or lt!1041874 (not (is-Concat!14687 r!17423))))))

(declare-fun matchRSpec!1503 (Regex!9366 List!35231) Bool)

(assert (=> b!3001199 (= lt!1041874 (matchRSpec!1503 r!17423 s!11993))))

(declare-fun matchR!4248 (Regex!9366 List!35231) Bool)

(assert (=> b!3001199 (= lt!1041874 (matchR!4248 r!17423 s!11993))))

(declare-datatypes ((Unit!49147 0))(
  ( (Unit!49148) )
))
(declare-fun lt!1041873 () Unit!49147)

(declare-fun mainMatchTheorem!1503 (Regex!9366 List!35231) Unit!49147)

(assert (=> b!3001199 (= lt!1041873 (mainMatchTheorem!1503 r!17423 s!11993))))

(declare-fun res!1236806 () Bool)

(assert (=> start!289294 (=> (not res!1236806) (not e!1885298))))

(declare-fun validRegex!4099 (Regex!9366) Bool)

(assert (=> start!289294 (= res!1236806 (validRegex!4099 r!17423))))

(assert (=> start!289294 e!1885298))

(declare-fun e!1885303 () Bool)

(assert (=> start!289294 e!1885303))

(declare-fun e!1885299 () Bool)

(assert (=> start!289294 e!1885299))

(declare-fun b!3001200 () Bool)

(declare-fun tp!953918 () Bool)

(assert (=> b!3001200 (= e!1885303 tp!953918)))

(declare-fun b!3001201 () Bool)

(declare-fun res!1236810 () Bool)

(assert (=> b!3001201 (=> res!1236810 e!1885302)))

(declare-fun isEmptyLang!456 (Regex!9366) Bool)

(assert (=> b!3001201 (= res!1236810 (isEmptyLang!456 lt!1041877))))

(declare-fun b!3001202 () Bool)

(assert (=> b!3001202 (= e!1885300 e!1885302)))

(declare-fun res!1236809 () Bool)

(assert (=> b!3001202 (=> res!1236809 e!1885302)))

(assert (=> b!3001202 (= res!1236809 (isEmptyLang!456 lt!1041875))))

(declare-fun simplify!357 (Regex!9366) Regex!9366)

(assert (=> b!3001202 (= lt!1041877 (simplify!357 (regTwo!19244 r!17423)))))

(assert (=> b!3001202 (= lt!1041875 (simplify!357 (regOne!19244 r!17423)))))

(declare-fun b!3001203 () Bool)

(declare-fun tp_is_empty!16295 () Bool)

(assert (=> b!3001203 (= e!1885303 tp_is_empty!16295)))

(declare-fun b!3001204 () Bool)

(declare-fun e!1885301 () Bool)

(assert (=> b!3001204 (= e!1885302 e!1885301)))

(declare-fun res!1236807 () Bool)

(assert (=> b!3001204 (=> res!1236807 e!1885301)))

(declare-fun lt!1041878 () Regex!9366)

(assert (=> b!3001204 (= res!1236807 (not (matchR!4248 lt!1041878 s!11993)))))

(assert (=> b!3001204 (= lt!1041878 (Concat!14687 lt!1041875 lt!1041877))))

(declare-fun b!3001205 () Bool)

(declare-fun tp!953921 () Bool)

(declare-fun tp!953919 () Bool)

(assert (=> b!3001205 (= e!1885303 (and tp!953921 tp!953919))))

(declare-fun lt!1041876 () Bool)

(assert (=> b!3001206 (= e!1885301 lt!1041876)))

(declare-fun Exists!1639 (Int) Bool)

(assert (=> b!3001206 (= (Exists!1639 lambda!112093) (Exists!1639 lambda!112094))))

(declare-fun lt!1041880 () Unit!49147)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!543 (Regex!9366 Regex!9366 List!35231) Unit!49147)

(assert (=> b!3001206 (= lt!1041880 (lemmaExistCutMatchRandMatchRSpecEquivalent!543 lt!1041875 lt!1041877 s!11993))))

(assert (=> b!3001206 (= lt!1041876 (Exists!1639 lambda!112093))))

(declare-datatypes ((tuple2!34034 0))(
  ( (tuple2!34035 (_1!20149 List!35231) (_2!20149 List!35231)) )
))
(declare-datatypes ((Option!6749 0))(
  ( (None!6748) (Some!6748 (v!34882 tuple2!34034)) )
))
(declare-fun isDefined!5300 (Option!6749) Bool)

(declare-fun findConcatSeparation!1143 (Regex!9366 Regex!9366 List!35231 List!35231 List!35231) Option!6749)

(assert (=> b!3001206 (= lt!1041876 (isDefined!5300 (findConcatSeparation!1143 lt!1041875 lt!1041877 Nil!35107 s!11993 s!11993)))))

(declare-fun lt!1041881 () Unit!49147)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!921 (Regex!9366 Regex!9366 List!35231) Unit!49147)

(assert (=> b!3001206 (= lt!1041881 (lemmaFindConcatSeparationEquivalentToExists!921 lt!1041875 lt!1041877 s!11993))))

(assert (=> b!3001206 (matchRSpec!1503 lt!1041878 s!11993)))

(declare-fun lt!1041879 () Unit!49147)

(assert (=> b!3001206 (= lt!1041879 (mainMatchTheorem!1503 lt!1041878 s!11993))))

(declare-fun b!3001207 () Bool)

(declare-fun tp!953922 () Bool)

(assert (=> b!3001207 (= e!1885299 (and tp_is_empty!16295 tp!953922))))

(declare-fun b!3001208 () Bool)

(declare-fun tp!953920 () Bool)

(declare-fun tp!953923 () Bool)

(assert (=> b!3001208 (= e!1885303 (and tp!953920 tp!953923))))

(assert (= (and start!289294 res!1236806) b!3001199))

(assert (= (and b!3001199 (not res!1236805)) b!3001198))

(assert (= (and b!3001198 (not res!1236808)) b!3001202))

(assert (= (and b!3001202 (not res!1236809)) b!3001201))

(assert (= (and b!3001201 (not res!1236810)) b!3001197))

(assert (= (and b!3001197 (not res!1236811)) b!3001196))

(assert (= (and b!3001196 (not res!1236812)) b!3001204))

(assert (= (and b!3001204 (not res!1236807)) b!3001206))

(assert (= (and start!289294 (is-ElementMatch!9366 r!17423)) b!3001203))

(assert (= (and start!289294 (is-Concat!14687 r!17423)) b!3001205))

(assert (= (and start!289294 (is-Star!9366 r!17423)) b!3001200))

(assert (= (and start!289294 (is-Union!9366 r!17423)) b!3001208))

(assert (= (and start!289294 (is-Cons!35107 s!11993)) b!3001207))

(declare-fun m!3352313 () Bool)

(assert (=> b!3001201 m!3352313))

(declare-fun m!3352315 () Bool)

(assert (=> b!3001204 m!3352315))

(declare-fun m!3352317 () Bool)

(assert (=> b!3001196 m!3352317))

(declare-fun m!3352319 () Bool)

(assert (=> b!3001198 m!3352319))

(declare-fun m!3352321 () Bool)

(assert (=> b!3001199 m!3352321))

(declare-fun m!3352323 () Bool)

(assert (=> b!3001199 m!3352323))

(declare-fun m!3352325 () Bool)

(assert (=> b!3001199 m!3352325))

(declare-fun m!3352327 () Bool)

(assert (=> b!3001202 m!3352327))

(declare-fun m!3352329 () Bool)

(assert (=> b!3001202 m!3352329))

(declare-fun m!3352331 () Bool)

(assert (=> b!3001202 m!3352331))

(declare-fun m!3352333 () Bool)

(assert (=> b!3001197 m!3352333))

(declare-fun m!3352335 () Bool)

(assert (=> start!289294 m!3352335))

(declare-fun m!3352337 () Bool)

(assert (=> b!3001206 m!3352337))

(declare-fun m!3352339 () Bool)

(assert (=> b!3001206 m!3352339))

(declare-fun m!3352341 () Bool)

(assert (=> b!3001206 m!3352341))

(declare-fun m!3352343 () Bool)

(assert (=> b!3001206 m!3352343))

(declare-fun m!3352345 () Bool)

(assert (=> b!3001206 m!3352345))

(assert (=> b!3001206 m!3352343))

(declare-fun m!3352347 () Bool)

(assert (=> b!3001206 m!3352347))

(assert (=> b!3001206 m!3352337))

(declare-fun m!3352349 () Bool)

(assert (=> b!3001206 m!3352349))

(declare-fun m!3352351 () Bool)

(assert (=> b!3001206 m!3352351))

(push 1)

(assert (not b!3001196))

(assert tp_is_empty!16295)

(assert (not start!289294))

(assert (not b!3001197))

(assert (not b!3001201))

(assert (not b!3001205))

(assert (not b!3001200))

(assert (not b!3001208))

(assert (not b!3001202))

(assert (not b!3001204))

(assert (not b!3001207))

(assert (not b!3001198))

(assert (not b!3001199))

(assert (not b!3001206))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!846311 () Bool)

(assert (=> d!846311 (= (isEmptyLang!456 lt!1041875) (is-EmptyLang!9366 lt!1041875))))

(assert (=> b!3001202 d!846311))

(declare-fun lt!1041926 () Regex!9366)

(declare-fun c!493919 () Bool)

(declare-fun lt!1041923 () Regex!9366)

(declare-fun c!493914 () Bool)

(declare-fun bm!201702 () Bool)

(declare-fun lt!1041924 () Regex!9366)

(declare-fun call!201713 () Bool)

(assert (=> bm!201702 (= call!201713 (isEmptyLang!456 (ite c!493919 lt!1041924 (ite c!493914 lt!1041923 lt!1041926))))))

(declare-fun d!846313 () Bool)

(declare-fun e!1885379 () Bool)

(assert (=> d!846313 e!1885379))

(declare-fun res!1236867 () Bool)

(assert (=> d!846313 (=> (not res!1236867) (not e!1885379))))

(declare-fun lt!1041925 () Regex!9366)

(assert (=> d!846313 (= res!1236867 (validRegex!4099 lt!1041925))))

(declare-fun e!1885372 () Regex!9366)

(assert (=> d!846313 (= lt!1041925 e!1885372)))

(declare-fun c!493912 () Bool)

(assert (=> d!846313 (= c!493912 (is-EmptyLang!9366 (regTwo!19244 r!17423)))))

(assert (=> d!846313 (validRegex!4099 (regTwo!19244 r!17423))))

(assert (=> d!846313 (= (simplify!357 (regTwo!19244 r!17423)) lt!1041925)))

(declare-fun b!3001336 () Bool)

(declare-fun c!493917 () Bool)

(declare-fun call!201712 () Bool)

(assert (=> b!3001336 (= c!493917 call!201712)))

(declare-fun e!1885370 () Regex!9366)

(declare-fun e!1885376 () Regex!9366)

(assert (=> b!3001336 (= e!1885370 e!1885376)))

(declare-fun b!3001337 () Bool)

(declare-fun e!1885380 () Regex!9366)

(assert (=> b!3001337 (= e!1885372 e!1885380)))

(declare-fun c!493913 () Bool)

(assert (=> b!3001337 (= c!493913 (is-ElementMatch!9366 (regTwo!19244 r!17423)))))

(declare-fun b!3001338 () Bool)

(declare-fun e!1885374 () Regex!9366)

(assert (=> b!3001338 (= e!1885374 EmptyExpr!9366)))

(declare-fun b!3001339 () Bool)

(assert (=> b!3001339 (= c!493914 (is-Union!9366 (regTwo!19244 r!17423)))))

(declare-fun e!1885382 () Regex!9366)

(declare-fun e!1885383 () Regex!9366)

(assert (=> b!3001339 (= e!1885382 e!1885383)))

(declare-fun bm!201703 () Bool)

(declare-fun call!201707 () Regex!9366)

(assert (=> bm!201703 (= call!201707 (simplify!357 (ite c!493914 (regOne!19245 (regTwo!19244 r!17423)) (regTwo!19244 (regTwo!19244 r!17423)))))))

(declare-fun b!3001340 () Bool)

(declare-fun lt!1041921 () Regex!9366)

(assert (=> b!3001340 (= e!1885376 (Union!9366 lt!1041921 lt!1041923))))

(declare-fun call!201711 () Regex!9366)

(declare-fun bm!201704 () Bool)

(assert (=> bm!201704 (= call!201711 (simplify!357 (ite c!493919 (reg!9695 (regTwo!19244 r!17423)) (ite c!493914 (regTwo!19245 (regTwo!19244 r!17423)) (regOne!19244 (regTwo!19244 r!17423))))))))

(declare-fun bm!201705 () Bool)

(declare-fun lt!1041922 () Regex!9366)

(declare-fun call!201709 () Bool)

(assert (=> bm!201705 (= call!201709 (isEmptyLang!456 (ite c!493914 lt!1041921 lt!1041922)))))

(declare-fun b!3001341 () Bool)

(assert (=> b!3001341 (= e!1885370 lt!1041923)))

(declare-fun b!3001342 () Bool)

(declare-fun e!1885381 () Regex!9366)

(assert (=> b!3001342 (= e!1885381 (Star!9366 lt!1041924))))

(declare-fun b!3001343 () Bool)

(declare-fun e!1885378 () Regex!9366)

(assert (=> b!3001343 (= e!1885378 lt!1041926)))

(declare-fun b!3001344 () Bool)

(assert (=> b!3001344 (= e!1885378 (Concat!14687 lt!1041926 lt!1041922))))

(declare-fun b!3001345 () Bool)

(declare-fun e!1885371 () Regex!9366)

(assert (=> b!3001345 (= e!1885371 lt!1041922)))

(declare-fun b!3001346 () Bool)

(declare-fun nullable!3029 (Regex!9366) Bool)

(assert (=> b!3001346 (= e!1885379 (= (nullable!3029 lt!1041925) (nullable!3029 (regTwo!19244 r!17423))))))

(declare-fun b!3001347 () Bool)

(assert (=> b!3001347 (= e!1885376 lt!1041921)))

(declare-fun b!3001348 () Bool)

(declare-fun e!1885375 () Bool)

(assert (=> b!3001348 (= e!1885375 call!201709)))

(declare-fun b!3001349 () Bool)

(assert (=> b!3001349 (= e!1885383 e!1885370)))

(assert (=> b!3001349 (= lt!1041921 call!201707)))

(declare-fun call!201710 () Regex!9366)

(assert (=> b!3001349 (= lt!1041923 call!201710)))

(declare-fun c!493916 () Bool)

(assert (=> b!3001349 (= c!493916 call!201709)))

(declare-fun b!3001350 () Bool)

(assert (=> b!3001350 (= e!1885372 EmptyLang!9366)))

(declare-fun b!3001351 () Bool)

(declare-fun c!493911 () Bool)

(assert (=> b!3001351 (= c!493911 (isEmptyExpr!473 lt!1041926))))

(declare-fun e!1885377 () Regex!9366)

(assert (=> b!3001351 (= e!1885377 e!1885371)))

(declare-fun b!3001352 () Bool)

(declare-fun e!1885373 () Bool)

(declare-fun call!201708 () Bool)

(assert (=> b!3001352 (= e!1885373 call!201708)))

(declare-fun b!3001353 () Bool)

(assert (=> b!3001353 (= e!1885371 e!1885378)))

(declare-fun c!493915 () Bool)

(assert (=> b!3001353 (= c!493915 call!201708)))

(declare-fun b!3001354 () Bool)

(declare-fun c!493910 () Bool)

(assert (=> b!3001354 (= c!493910 (is-EmptyExpr!9366 (regTwo!19244 r!17423)))))

(assert (=> b!3001354 (= e!1885380 e!1885374)))

(declare-fun b!3001355 () Bool)

(assert (=> b!3001355 (= e!1885383 e!1885377)))

(assert (=> b!3001355 (= lt!1041926 call!201710)))

(assert (=> b!3001355 (= lt!1041922 call!201707)))

(declare-fun res!1236865 () Bool)

(assert (=> b!3001355 (= res!1236865 call!201712)))

(assert (=> b!3001355 (=> res!1236865 e!1885375)))

(declare-fun c!493920 () Bool)

(assert (=> b!3001355 (= c!493920 e!1885375)))

(declare-fun bm!201706 () Bool)

(assert (=> bm!201706 (= call!201712 call!201713)))

(declare-fun bm!201707 () Bool)

(assert (=> bm!201707 (= call!201708 (isEmptyExpr!473 (ite c!493919 lt!1041924 lt!1041922)))))

(declare-fun bm!201708 () Bool)

(assert (=> bm!201708 (= call!201710 call!201711)))

(declare-fun b!3001356 () Bool)

(declare-fun c!493918 () Bool)

(assert (=> b!3001356 (= c!493918 e!1885373)))

(declare-fun res!1236866 () Bool)

(assert (=> b!3001356 (=> res!1236866 e!1885373)))

(assert (=> b!3001356 (= res!1236866 call!201713)))

(assert (=> b!3001356 (= lt!1041924 call!201711)))

(assert (=> b!3001356 (= e!1885382 e!1885381)))

(declare-fun b!3001357 () Bool)

(assert (=> b!3001357 (= e!1885380 (regTwo!19244 r!17423))))

(declare-fun b!3001358 () Bool)

(assert (=> b!3001358 (= e!1885381 EmptyExpr!9366)))

(declare-fun b!3001359 () Bool)

(assert (=> b!3001359 (= e!1885377 EmptyLang!9366)))

(declare-fun b!3001360 () Bool)

(assert (=> b!3001360 (= e!1885374 e!1885382)))

(assert (=> b!3001360 (= c!493919 (is-Star!9366 (regTwo!19244 r!17423)))))

(assert (= (and d!846313 c!493912) b!3001350))

(assert (= (and d!846313 (not c!493912)) b!3001337))

(assert (= (and b!3001337 c!493913) b!3001357))

(assert (= (and b!3001337 (not c!493913)) b!3001354))

(assert (= (and b!3001354 c!493910) b!3001338))

(assert (= (and b!3001354 (not c!493910)) b!3001360))

(assert (= (and b!3001360 c!493919) b!3001356))

(assert (= (and b!3001360 (not c!493919)) b!3001339))

(assert (= (and b!3001356 (not res!1236866)) b!3001352))

(assert (= (and b!3001356 c!493918) b!3001358))

(assert (= (and b!3001356 (not c!493918)) b!3001342))

(assert (= (and b!3001339 c!493914) b!3001349))

(assert (= (and b!3001339 (not c!493914)) b!3001355))

(assert (= (and b!3001349 c!493916) b!3001341))

(assert (= (and b!3001349 (not c!493916)) b!3001336))

(assert (= (and b!3001336 c!493917) b!3001347))

(assert (= (and b!3001336 (not c!493917)) b!3001340))

(assert (= (and b!3001355 (not res!1236865)) b!3001348))

(assert (= (and b!3001355 c!493920) b!3001359))

(assert (= (and b!3001355 (not c!493920)) b!3001351))

(assert (= (and b!3001351 c!493911) b!3001345))

(assert (= (and b!3001351 (not c!493911)) b!3001353))

(assert (= (and b!3001353 c!493915) b!3001343))

(assert (= (and b!3001353 (not c!493915)) b!3001344))

(assert (= (or b!3001349 b!3001355) bm!201703))

(assert (= (or b!3001349 b!3001355) bm!201708))

(assert (= (or b!3001349 b!3001348) bm!201705))

(assert (= (or b!3001336 b!3001355) bm!201706))

(assert (= (or b!3001352 b!3001353) bm!201707))

(assert (= (or b!3001356 bm!201708) bm!201704))

(assert (= (or b!3001356 bm!201706) bm!201702))

(assert (= (and d!846313 res!1236867) b!3001346))

(declare-fun m!3352393 () Bool)

(assert (=> d!846313 m!3352393))

(declare-fun m!3352395 () Bool)

(assert (=> d!846313 m!3352395))

(declare-fun m!3352397 () Bool)

(assert (=> bm!201704 m!3352397))

(declare-fun m!3352399 () Bool)

(assert (=> b!3001351 m!3352399))

(declare-fun m!3352401 () Bool)

(assert (=> bm!201702 m!3352401))

(declare-fun m!3352403 () Bool)

(assert (=> bm!201707 m!3352403))

(declare-fun m!3352405 () Bool)

(assert (=> b!3001346 m!3352405))

(declare-fun m!3352407 () Bool)

(assert (=> b!3001346 m!3352407))

(declare-fun m!3352409 () Bool)

(assert (=> bm!201703 m!3352409))

(declare-fun m!3352411 () Bool)

(assert (=> bm!201705 m!3352411))

(assert (=> b!3001202 d!846313))

(declare-fun lt!1041929 () Regex!9366)

(declare-fun bm!201709 () Bool)

(declare-fun c!493925 () Bool)

(declare-fun lt!1041930 () Regex!9366)

(declare-fun c!493930 () Bool)

(declare-fun lt!1041932 () Regex!9366)

(declare-fun call!201720 () Bool)

(assert (=> bm!201709 (= call!201720 (isEmptyLang!456 (ite c!493930 lt!1041930 (ite c!493925 lt!1041929 lt!1041932))))))

(declare-fun d!846323 () Bool)

(declare-fun e!1885393 () Bool)

(assert (=> d!846323 e!1885393))

(declare-fun res!1236870 () Bool)

(assert (=> d!846323 (=> (not res!1236870) (not e!1885393))))

(declare-fun lt!1041931 () Regex!9366)

(assert (=> d!846323 (= res!1236870 (validRegex!4099 lt!1041931))))

(declare-fun e!1885386 () Regex!9366)

(assert (=> d!846323 (= lt!1041931 e!1885386)))

(declare-fun c!493923 () Bool)

(assert (=> d!846323 (= c!493923 (is-EmptyLang!9366 (regOne!19244 r!17423)))))

(assert (=> d!846323 (validRegex!4099 (regOne!19244 r!17423))))

(assert (=> d!846323 (= (simplify!357 (regOne!19244 r!17423)) lt!1041931)))

(declare-fun b!3001361 () Bool)

(declare-fun c!493928 () Bool)

(declare-fun call!201719 () Bool)

(assert (=> b!3001361 (= c!493928 call!201719)))

(declare-fun e!1885384 () Regex!9366)

(declare-fun e!1885390 () Regex!9366)

(assert (=> b!3001361 (= e!1885384 e!1885390)))

(declare-fun b!3001362 () Bool)

(declare-fun e!1885394 () Regex!9366)

(assert (=> b!3001362 (= e!1885386 e!1885394)))

(declare-fun c!493924 () Bool)

(assert (=> b!3001362 (= c!493924 (is-ElementMatch!9366 (regOne!19244 r!17423)))))

(declare-fun b!3001363 () Bool)

(declare-fun e!1885388 () Regex!9366)

(assert (=> b!3001363 (= e!1885388 EmptyExpr!9366)))

(declare-fun b!3001364 () Bool)

(assert (=> b!3001364 (= c!493925 (is-Union!9366 (regOne!19244 r!17423)))))

(declare-fun e!1885396 () Regex!9366)

(declare-fun e!1885397 () Regex!9366)

(assert (=> b!3001364 (= e!1885396 e!1885397)))

(declare-fun bm!201710 () Bool)

(declare-fun call!201714 () Regex!9366)

(assert (=> bm!201710 (= call!201714 (simplify!357 (ite c!493925 (regOne!19245 (regOne!19244 r!17423)) (regTwo!19244 (regOne!19244 r!17423)))))))

(declare-fun b!3001365 () Bool)

(declare-fun lt!1041927 () Regex!9366)

(assert (=> b!3001365 (= e!1885390 (Union!9366 lt!1041927 lt!1041929))))

(declare-fun call!201718 () Regex!9366)

(declare-fun bm!201711 () Bool)

(assert (=> bm!201711 (= call!201718 (simplify!357 (ite c!493930 (reg!9695 (regOne!19244 r!17423)) (ite c!493925 (regTwo!19245 (regOne!19244 r!17423)) (regOne!19244 (regOne!19244 r!17423))))))))

(declare-fun lt!1041928 () Regex!9366)

(declare-fun call!201716 () Bool)

(declare-fun bm!201712 () Bool)

(assert (=> bm!201712 (= call!201716 (isEmptyLang!456 (ite c!493925 lt!1041927 lt!1041928)))))

(declare-fun b!3001366 () Bool)

(assert (=> b!3001366 (= e!1885384 lt!1041929)))

(declare-fun b!3001367 () Bool)

(declare-fun e!1885395 () Regex!9366)

(assert (=> b!3001367 (= e!1885395 (Star!9366 lt!1041930))))

(declare-fun b!3001368 () Bool)

(declare-fun e!1885392 () Regex!9366)

(assert (=> b!3001368 (= e!1885392 lt!1041932)))

(declare-fun b!3001369 () Bool)

(assert (=> b!3001369 (= e!1885392 (Concat!14687 lt!1041932 lt!1041928))))

(declare-fun b!3001370 () Bool)

(declare-fun e!1885385 () Regex!9366)

(assert (=> b!3001370 (= e!1885385 lt!1041928)))

(declare-fun b!3001371 () Bool)

(assert (=> b!3001371 (= e!1885393 (= (nullable!3029 lt!1041931) (nullable!3029 (regOne!19244 r!17423))))))

(declare-fun b!3001372 () Bool)

(assert (=> b!3001372 (= e!1885390 lt!1041927)))

(declare-fun b!3001373 () Bool)

(declare-fun e!1885389 () Bool)

(assert (=> b!3001373 (= e!1885389 call!201716)))

(declare-fun b!3001374 () Bool)

(assert (=> b!3001374 (= e!1885397 e!1885384)))

(assert (=> b!3001374 (= lt!1041927 call!201714)))

(declare-fun call!201717 () Regex!9366)

(assert (=> b!3001374 (= lt!1041929 call!201717)))

(declare-fun c!493927 () Bool)

(assert (=> b!3001374 (= c!493927 call!201716)))

(declare-fun b!3001375 () Bool)

(assert (=> b!3001375 (= e!1885386 EmptyLang!9366)))

(declare-fun b!3001376 () Bool)

(declare-fun c!493922 () Bool)

(assert (=> b!3001376 (= c!493922 (isEmptyExpr!473 lt!1041932))))

(declare-fun e!1885391 () Regex!9366)

(assert (=> b!3001376 (= e!1885391 e!1885385)))

(declare-fun b!3001377 () Bool)

(declare-fun e!1885387 () Bool)

(declare-fun call!201715 () Bool)

(assert (=> b!3001377 (= e!1885387 call!201715)))

(declare-fun b!3001378 () Bool)

(assert (=> b!3001378 (= e!1885385 e!1885392)))

(declare-fun c!493926 () Bool)

(assert (=> b!3001378 (= c!493926 call!201715)))

(declare-fun b!3001379 () Bool)

(declare-fun c!493921 () Bool)

(assert (=> b!3001379 (= c!493921 (is-EmptyExpr!9366 (regOne!19244 r!17423)))))

(assert (=> b!3001379 (= e!1885394 e!1885388)))

(declare-fun b!3001380 () Bool)

(assert (=> b!3001380 (= e!1885397 e!1885391)))

(assert (=> b!3001380 (= lt!1041932 call!201717)))

(assert (=> b!3001380 (= lt!1041928 call!201714)))

(declare-fun res!1236868 () Bool)

(assert (=> b!3001380 (= res!1236868 call!201719)))

(assert (=> b!3001380 (=> res!1236868 e!1885389)))

(declare-fun c!493931 () Bool)

(assert (=> b!3001380 (= c!493931 e!1885389)))

(declare-fun bm!201713 () Bool)

(assert (=> bm!201713 (= call!201719 call!201720)))

(declare-fun bm!201714 () Bool)

(assert (=> bm!201714 (= call!201715 (isEmptyExpr!473 (ite c!493930 lt!1041930 lt!1041928)))))

(declare-fun bm!201715 () Bool)

(assert (=> bm!201715 (= call!201717 call!201718)))

(declare-fun b!3001381 () Bool)

(declare-fun c!493929 () Bool)

(assert (=> b!3001381 (= c!493929 e!1885387)))

(declare-fun res!1236869 () Bool)

(assert (=> b!3001381 (=> res!1236869 e!1885387)))

(assert (=> b!3001381 (= res!1236869 call!201720)))

(assert (=> b!3001381 (= lt!1041930 call!201718)))

(assert (=> b!3001381 (= e!1885396 e!1885395)))

(declare-fun b!3001382 () Bool)

(assert (=> b!3001382 (= e!1885394 (regOne!19244 r!17423))))

(declare-fun b!3001383 () Bool)

(assert (=> b!3001383 (= e!1885395 EmptyExpr!9366)))

(declare-fun b!3001384 () Bool)

(assert (=> b!3001384 (= e!1885391 EmptyLang!9366)))

(declare-fun b!3001385 () Bool)

(assert (=> b!3001385 (= e!1885388 e!1885396)))

(assert (=> b!3001385 (= c!493930 (is-Star!9366 (regOne!19244 r!17423)))))

(assert (= (and d!846323 c!493923) b!3001375))

(assert (= (and d!846323 (not c!493923)) b!3001362))

(assert (= (and b!3001362 c!493924) b!3001382))

(assert (= (and b!3001362 (not c!493924)) b!3001379))

(assert (= (and b!3001379 c!493921) b!3001363))

(assert (= (and b!3001379 (not c!493921)) b!3001385))

(assert (= (and b!3001385 c!493930) b!3001381))

(assert (= (and b!3001385 (not c!493930)) b!3001364))

(assert (= (and b!3001381 (not res!1236869)) b!3001377))

(assert (= (and b!3001381 c!493929) b!3001383))

(assert (= (and b!3001381 (not c!493929)) b!3001367))

(assert (= (and b!3001364 c!493925) b!3001374))

(assert (= (and b!3001364 (not c!493925)) b!3001380))

(assert (= (and b!3001374 c!493927) b!3001366))

(assert (= (and b!3001374 (not c!493927)) b!3001361))

(assert (= (and b!3001361 c!493928) b!3001372))

(assert (= (and b!3001361 (not c!493928)) b!3001365))

(assert (= (and b!3001380 (not res!1236868)) b!3001373))

(assert (= (and b!3001380 c!493931) b!3001384))

(assert (= (and b!3001380 (not c!493931)) b!3001376))

(assert (= (and b!3001376 c!493922) b!3001370))

(assert (= (and b!3001376 (not c!493922)) b!3001378))

(assert (= (and b!3001378 c!493926) b!3001368))

(assert (= (and b!3001378 (not c!493926)) b!3001369))

(assert (= (or b!3001374 b!3001380) bm!201710))

(assert (= (or b!3001374 b!3001380) bm!201715))

(assert (= (or b!3001374 b!3001373) bm!201712))

(assert (= (or b!3001361 b!3001380) bm!201713))

(assert (= (or b!3001377 b!3001378) bm!201714))

(assert (= (or b!3001381 bm!201715) bm!201711))

(assert (= (or b!3001381 bm!201713) bm!201709))

(assert (= (and d!846323 res!1236870) b!3001371))

(declare-fun m!3352413 () Bool)

(assert (=> d!846323 m!3352413))

(declare-fun m!3352415 () Bool)

(assert (=> d!846323 m!3352415))

(declare-fun m!3352417 () Bool)

(assert (=> bm!201711 m!3352417))

(declare-fun m!3352419 () Bool)

(assert (=> b!3001376 m!3352419))

(declare-fun m!3352421 () Bool)

(assert (=> bm!201709 m!3352421))

(declare-fun m!3352423 () Bool)

(assert (=> bm!201714 m!3352423))

(declare-fun m!3352425 () Bool)

(assert (=> b!3001371 m!3352425))

(declare-fun m!3352427 () Bool)

(assert (=> b!3001371 m!3352427))

(declare-fun m!3352429 () Bool)

(assert (=> bm!201710 m!3352429))

(declare-fun m!3352431 () Bool)

(assert (=> bm!201712 m!3352431))

(assert (=> b!3001202 d!846323))

(declare-fun d!846325 () Bool)

(assert (=> d!846325 (= (isEmptyExpr!473 lt!1041875) (is-EmptyExpr!9366 lt!1041875))))

(assert (=> b!3001197 d!846325))

(declare-fun d!846327 () Bool)

(assert (=> d!846327 (= (isEmptyExpr!473 lt!1041877) (is-EmptyExpr!9366 lt!1041877))))

(assert (=> b!3001196 d!846327))

(declare-fun b!3001413 () Bool)

(declare-fun e!1885419 () Bool)

(declare-fun e!1885423 () Bool)

(assert (=> b!3001413 (= e!1885419 e!1885423)))

(declare-fun c!493939 () Bool)

(assert (=> b!3001413 (= c!493939 (is-Union!9366 r!17423))))

(declare-fun call!201732 () Bool)

(declare-fun bm!201725 () Bool)

(declare-fun c!493938 () Bool)

(assert (=> bm!201725 (= call!201732 (validRegex!4099 (ite c!493938 (reg!9695 r!17423) (ite c!493939 (regOne!19245 r!17423) (regTwo!19244 r!17423)))))))

(declare-fun bm!201726 () Bool)

(declare-fun call!201730 () Bool)

(assert (=> bm!201726 (= call!201730 (validRegex!4099 (ite c!493939 (regTwo!19245 r!17423) (regOne!19244 r!17423))))))

(declare-fun b!3001414 () Bool)

(declare-fun e!1885420 () Bool)

(assert (=> b!3001414 (= e!1885420 call!201732)))

(declare-fun b!3001415 () Bool)

(declare-fun e!1885425 () Bool)

(assert (=> b!3001415 (= e!1885425 call!201730)))

(declare-fun b!3001416 () Bool)

(assert (=> b!3001416 (= e!1885419 e!1885420)))

(declare-fun res!1236886 () Bool)

(assert (=> b!3001416 (= res!1236886 (not (nullable!3029 (reg!9695 r!17423))))))

(assert (=> b!3001416 (=> (not res!1236886) (not e!1885420))))

(declare-fun b!3001417 () Bool)

(declare-fun e!1885421 () Bool)

(assert (=> b!3001417 (= e!1885421 e!1885419)))

(assert (=> b!3001417 (= c!493938 (is-Star!9366 r!17423))))

(declare-fun d!846329 () Bool)

(declare-fun res!1236889 () Bool)

(assert (=> d!846329 (=> res!1236889 e!1885421)))

(assert (=> d!846329 (= res!1236889 (is-ElementMatch!9366 r!17423))))

(assert (=> d!846329 (= (validRegex!4099 r!17423) e!1885421)))

(declare-fun b!3001418 () Bool)

(declare-fun res!1236887 () Bool)

(declare-fun e!1885422 () Bool)

(assert (=> b!3001418 (=> res!1236887 e!1885422)))

(assert (=> b!3001418 (= res!1236887 (not (is-Concat!14687 r!17423)))))

(assert (=> b!3001418 (= e!1885423 e!1885422)))

(declare-fun b!3001419 () Bool)

(declare-fun res!1236888 () Bool)

(assert (=> b!3001419 (=> (not res!1236888) (not e!1885425))))

(declare-fun call!201731 () Bool)

(assert (=> b!3001419 (= res!1236888 call!201731)))

(assert (=> b!3001419 (= e!1885423 e!1885425)))

(declare-fun b!3001420 () Bool)

(declare-fun e!1885424 () Bool)

(assert (=> b!3001420 (= e!1885424 call!201731)))

(declare-fun b!3001421 () Bool)

(assert (=> b!3001421 (= e!1885422 e!1885424)))

(declare-fun res!1236890 () Bool)

(assert (=> b!3001421 (=> (not res!1236890) (not e!1885424))))

(assert (=> b!3001421 (= res!1236890 call!201730)))

(declare-fun bm!201727 () Bool)

(assert (=> bm!201727 (= call!201731 call!201732)))

(assert (= (and d!846329 (not res!1236889)) b!3001417))

(assert (= (and b!3001417 c!493938) b!3001416))

(assert (= (and b!3001417 (not c!493938)) b!3001413))

(assert (= (and b!3001416 res!1236886) b!3001414))

(assert (= (and b!3001413 c!493939) b!3001419))

(assert (= (and b!3001413 (not c!493939)) b!3001418))

(assert (= (and b!3001419 res!1236888) b!3001415))

(assert (= (and b!3001418 (not res!1236887)) b!3001421))

(assert (= (and b!3001421 res!1236890) b!3001420))

(assert (= (or b!3001419 b!3001420) bm!201727))

(assert (= (or b!3001415 b!3001421) bm!201726))

(assert (= (or b!3001414 bm!201727) bm!201725))

(declare-fun m!3352439 () Bool)

(assert (=> bm!201725 m!3352439))

(declare-fun m!3352441 () Bool)

(assert (=> bm!201726 m!3352441))

(declare-fun m!3352443 () Bool)

(assert (=> b!3001416 m!3352443))

(assert (=> start!289294 d!846329))

(declare-fun bs!528392 () Bool)

(declare-fun b!3001461 () Bool)

(assert (= bs!528392 (and b!3001461 b!3001206)))

(declare-fun lambda!112107 () Int)

(assert (=> bs!528392 (not (= lambda!112107 lambda!112093))))

(assert (=> bs!528392 (not (= lambda!112107 lambda!112094))))

(assert (=> b!3001461 true))

(assert (=> b!3001461 true))

(declare-fun bs!528393 () Bool)

(declare-fun b!3001464 () Bool)

(assert (= bs!528393 (and b!3001464 b!3001206)))

(declare-fun lambda!112108 () Int)

(assert (=> bs!528393 (not (= lambda!112108 lambda!112093))))

(assert (=> bs!528393 (= (and (= (regOne!19244 lt!1041878) lt!1041875) (= (regTwo!19244 lt!1041878) lt!1041877)) (= lambda!112108 lambda!112094))))

(declare-fun bs!528394 () Bool)

(assert (= bs!528394 (and b!3001464 b!3001461)))

(assert (=> bs!528394 (not (= lambda!112108 lambda!112107))))

(assert (=> b!3001464 true))

(assert (=> b!3001464 true))

(declare-fun b!3001454 () Bool)

(declare-fun e!1885446 () Bool)

(declare-fun e!1885447 () Bool)

(assert (=> b!3001454 (= e!1885446 e!1885447)))

(declare-fun res!1236908 () Bool)

(assert (=> b!3001454 (= res!1236908 (matchRSpec!1503 (regOne!19245 lt!1041878) s!11993))))

(assert (=> b!3001454 (=> res!1236908 e!1885447)))

(declare-fun b!3001455 () Bool)

(declare-fun res!1236909 () Bool)

(declare-fun e!1885444 () Bool)

(assert (=> b!3001455 (=> res!1236909 e!1885444)))

(declare-fun call!201737 () Bool)

(assert (=> b!3001455 (= res!1236909 call!201737)))

(declare-fun e!1885445 () Bool)

(assert (=> b!3001455 (= e!1885445 e!1885444)))

(declare-fun b!3001456 () Bool)

(declare-fun e!1885450 () Bool)

(assert (=> b!3001456 (= e!1885450 call!201737)))

(declare-fun b!3001457 () Bool)

(declare-fun c!493951 () Bool)

(assert (=> b!3001457 (= c!493951 (is-ElementMatch!9366 lt!1041878))))

(declare-fun e!1885449 () Bool)

(declare-fun e!1885448 () Bool)

(assert (=> b!3001457 (= e!1885449 e!1885448)))

(declare-fun b!3001458 () Bool)

(assert (=> b!3001458 (= e!1885446 e!1885445)))

(declare-fun c!493948 () Bool)

(assert (=> b!3001458 (= c!493948 (is-Star!9366 lt!1041878))))

(declare-fun b!3001459 () Bool)

(declare-fun c!493949 () Bool)

(assert (=> b!3001459 (= c!493949 (is-Union!9366 lt!1041878))))

(assert (=> b!3001459 (= e!1885448 e!1885446)))

(declare-fun d!846337 () Bool)

(declare-fun c!493950 () Bool)

(assert (=> d!846337 (= c!493950 (is-EmptyExpr!9366 lt!1041878))))

(assert (=> d!846337 (= (matchRSpec!1503 lt!1041878 s!11993) e!1885450)))

(declare-fun b!3001460 () Bool)

(assert (=> b!3001460 (= e!1885448 (= s!11993 (Cons!35107 (c!493882 lt!1041878) Nil!35107)))))

(declare-fun call!201738 () Bool)

(assert (=> b!3001461 (= e!1885444 call!201738)))

(declare-fun bm!201732 () Bool)

(assert (=> bm!201732 (= call!201737 (isEmpty!19381 s!11993))))

(declare-fun b!3001462 () Bool)

(assert (=> b!3001462 (= e!1885450 e!1885449)))

(declare-fun res!1236907 () Bool)

(assert (=> b!3001462 (= res!1236907 (not (is-EmptyLang!9366 lt!1041878)))))

(assert (=> b!3001462 (=> (not res!1236907) (not e!1885449))))

(declare-fun b!3001463 () Bool)

(assert (=> b!3001463 (= e!1885447 (matchRSpec!1503 (regTwo!19245 lt!1041878) s!11993))))

(assert (=> b!3001464 (= e!1885445 call!201738)))

(declare-fun bm!201733 () Bool)

(assert (=> bm!201733 (= call!201738 (Exists!1639 (ite c!493948 lambda!112107 lambda!112108)))))

(assert (= (and d!846337 c!493950) b!3001456))

(assert (= (and d!846337 (not c!493950)) b!3001462))

(assert (= (and b!3001462 res!1236907) b!3001457))

(assert (= (and b!3001457 c!493951) b!3001460))

(assert (= (and b!3001457 (not c!493951)) b!3001459))

(assert (= (and b!3001459 c!493949) b!3001454))

(assert (= (and b!3001459 (not c!493949)) b!3001458))

(assert (= (and b!3001454 (not res!1236908)) b!3001463))

(assert (= (and b!3001458 c!493948) b!3001455))

(assert (= (and b!3001458 (not c!493948)) b!3001464))

(assert (= (and b!3001455 (not res!1236909)) b!3001461))

(assert (= (or b!3001461 b!3001464) bm!201733))

(assert (= (or b!3001456 b!3001455) bm!201732))

(declare-fun m!3352445 () Bool)

(assert (=> b!3001454 m!3352445))

(assert (=> bm!201732 m!3352319))

(declare-fun m!3352447 () Bool)

(assert (=> b!3001463 m!3352447))

(declare-fun m!3352449 () Bool)

(assert (=> bm!201733 m!3352449))

(assert (=> b!3001206 d!846337))

(declare-fun b!3001531 () Bool)

(declare-fun e!1885487 () Option!6749)

(assert (=> b!3001531 (= e!1885487 None!6748)))

(declare-fun b!3001532 () Bool)

(declare-fun e!1885490 () Bool)

(declare-fun lt!1041952 () Option!6749)

(assert (=> b!3001532 (= e!1885490 (not (isDefined!5300 lt!1041952)))))

(declare-fun b!3001533 () Bool)

(declare-fun res!1236928 () Bool)

(declare-fun e!1885489 () Bool)

(assert (=> b!3001533 (=> (not res!1236928) (not e!1885489))))

(declare-fun get!10900 (Option!6749) tuple2!34034)

(assert (=> b!3001533 (= res!1236928 (matchR!4248 lt!1041875 (_1!20149 (get!10900 lt!1041952))))))

(declare-fun b!3001534 () Bool)

(declare-fun res!1236927 () Bool)

(assert (=> b!3001534 (=> (not res!1236927) (not e!1885489))))

(assert (=> b!3001534 (= res!1236927 (matchR!4248 lt!1041877 (_2!20149 (get!10900 lt!1041952))))))

(declare-fun b!3001535 () Bool)

(declare-fun lt!1041951 () Unit!49147)

(declare-fun lt!1041953 () Unit!49147)

(assert (=> b!3001535 (= lt!1041951 lt!1041953)))

(declare-fun ++!8398 (List!35231 List!35231) List!35231)

(assert (=> b!3001535 (= (++!8398 (++!8398 Nil!35107 (Cons!35107 (h!40527 s!11993) Nil!35107)) (t!234296 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1009 (List!35231 C!18918 List!35231 List!35231) Unit!49147)

(assert (=> b!3001535 (= lt!1041953 (lemmaMoveElementToOtherListKeepsConcatEq!1009 Nil!35107 (h!40527 s!11993) (t!234296 s!11993) s!11993))))

(assert (=> b!3001535 (= e!1885487 (findConcatSeparation!1143 lt!1041875 lt!1041877 (++!8398 Nil!35107 (Cons!35107 (h!40527 s!11993) Nil!35107)) (t!234296 s!11993) s!11993))))

(declare-fun b!3001537 () Bool)

(declare-fun e!1885491 () Option!6749)

(assert (=> b!3001537 (= e!1885491 (Some!6748 (tuple2!34035 Nil!35107 s!11993)))))

(declare-fun b!3001536 () Bool)

(declare-fun e!1885488 () Bool)

(assert (=> b!3001536 (= e!1885488 (matchR!4248 lt!1041877 s!11993))))

(declare-fun d!846339 () Bool)

(assert (=> d!846339 e!1885490))

(declare-fun res!1236924 () Bool)

(assert (=> d!846339 (=> res!1236924 e!1885490)))

(assert (=> d!846339 (= res!1236924 e!1885489)))

(declare-fun res!1236926 () Bool)

(assert (=> d!846339 (=> (not res!1236926) (not e!1885489))))

(assert (=> d!846339 (= res!1236926 (isDefined!5300 lt!1041952))))

(assert (=> d!846339 (= lt!1041952 e!1885491)))

(declare-fun c!493978 () Bool)

(assert (=> d!846339 (= c!493978 e!1885488)))

(declare-fun res!1236925 () Bool)

(assert (=> d!846339 (=> (not res!1236925) (not e!1885488))))

(assert (=> d!846339 (= res!1236925 (matchR!4248 lt!1041875 Nil!35107))))

(assert (=> d!846339 (validRegex!4099 lt!1041875)))

(assert (=> d!846339 (= (findConcatSeparation!1143 lt!1041875 lt!1041877 Nil!35107 s!11993 s!11993) lt!1041952)))

(declare-fun b!3001538 () Bool)

(assert (=> b!3001538 (= e!1885491 e!1885487)))

(declare-fun c!493979 () Bool)

(assert (=> b!3001538 (= c!493979 (is-Nil!35107 s!11993))))

(declare-fun b!3001539 () Bool)

(assert (=> b!3001539 (= e!1885489 (= (++!8398 (_1!20149 (get!10900 lt!1041952)) (_2!20149 (get!10900 lt!1041952))) s!11993))))

(assert (= (and d!846339 res!1236925) b!3001536))

(assert (= (and d!846339 c!493978) b!3001537))

(assert (= (and d!846339 (not c!493978)) b!3001538))

(assert (= (and b!3001538 c!493979) b!3001531))

(assert (= (and b!3001538 (not c!493979)) b!3001535))

(assert (= (and d!846339 res!1236926) b!3001533))

(assert (= (and b!3001533 res!1236928) b!3001534))

(assert (= (and b!3001534 res!1236927) b!3001539))

(assert (= (and d!846339 (not res!1236924)) b!3001532))

(declare-fun m!3352451 () Bool)

(assert (=> b!3001535 m!3352451))

(assert (=> b!3001535 m!3352451))

(declare-fun m!3352453 () Bool)

(assert (=> b!3001535 m!3352453))

(declare-fun m!3352455 () Bool)

(assert (=> b!3001535 m!3352455))

(assert (=> b!3001535 m!3352451))

(declare-fun m!3352457 () Bool)

(assert (=> b!3001535 m!3352457))

(declare-fun m!3352459 () Bool)

(assert (=> b!3001536 m!3352459))

(declare-fun m!3352461 () Bool)

(assert (=> d!846339 m!3352461))

(declare-fun m!3352463 () Bool)

(assert (=> d!846339 m!3352463))

(declare-fun m!3352465 () Bool)

(assert (=> d!846339 m!3352465))

(declare-fun m!3352467 () Bool)

(assert (=> b!3001539 m!3352467))

(declare-fun m!3352469 () Bool)

(assert (=> b!3001539 m!3352469))

(assert (=> b!3001532 m!3352461))

(assert (=> b!3001533 m!3352467))

(declare-fun m!3352471 () Bool)

(assert (=> b!3001533 m!3352471))

(assert (=> b!3001534 m!3352467))

(declare-fun m!3352473 () Bool)

(assert (=> b!3001534 m!3352473))

(assert (=> b!3001206 d!846339))

(declare-fun bs!528395 () Bool)

(declare-fun d!846341 () Bool)

(assert (= bs!528395 (and d!846341 b!3001206)))

(declare-fun lambda!112111 () Int)

(assert (=> bs!528395 (= lambda!112111 lambda!112093)))

(assert (=> bs!528395 (not (= lambda!112111 lambda!112094))))

(declare-fun bs!528396 () Bool)

(assert (= bs!528396 (and d!846341 b!3001461)))

(assert (=> bs!528396 (not (= lambda!112111 lambda!112107))))

(declare-fun bs!528397 () Bool)

(assert (= bs!528397 (and d!846341 b!3001464)))

(assert (=> bs!528397 (not (= lambda!112111 lambda!112108))))

(assert (=> d!846341 true))

(assert (=> d!846341 true))

(assert (=> d!846341 true))

(assert (=> d!846341 (= (isDefined!5300 (findConcatSeparation!1143 lt!1041875 lt!1041877 Nil!35107 s!11993 s!11993)) (Exists!1639 lambda!112111))))

(declare-fun lt!1041956 () Unit!49147)

(declare-fun choose!17795 (Regex!9366 Regex!9366 List!35231) Unit!49147)

(assert (=> d!846341 (= lt!1041956 (choose!17795 lt!1041875 lt!1041877 s!11993))))

(assert (=> d!846341 (validRegex!4099 lt!1041875)))

(assert (=> d!846341 (= (lemmaFindConcatSeparationEquivalentToExists!921 lt!1041875 lt!1041877 s!11993) lt!1041956)))

(declare-fun bs!528398 () Bool)

(assert (= bs!528398 d!846341))

(assert (=> bs!528398 m!3352465))

(assert (=> bs!528398 m!3352337))

(assert (=> bs!528398 m!3352337))

(assert (=> bs!528398 m!3352339))

(declare-fun m!3352475 () Bool)

(assert (=> bs!528398 m!3352475))

(declare-fun m!3352477 () Bool)

(assert (=> bs!528398 m!3352477))

(assert (=> b!3001206 d!846341))

(declare-fun d!846343 () Bool)

(declare-fun isEmpty!19383 (Option!6749) Bool)

(assert (=> d!846343 (= (isDefined!5300 (findConcatSeparation!1143 lt!1041875 lt!1041877 Nil!35107 s!11993 s!11993)) (not (isEmpty!19383 (findConcatSeparation!1143 lt!1041875 lt!1041877 Nil!35107 s!11993 s!11993))))))

(declare-fun bs!528399 () Bool)

(assert (= bs!528399 d!846343))

(assert (=> bs!528399 m!3352337))

(declare-fun m!3352479 () Bool)

(assert (=> bs!528399 m!3352479))

(assert (=> b!3001206 d!846343))

(declare-fun d!846345 () Bool)

(assert (=> d!846345 (= (matchR!4248 lt!1041878 s!11993) (matchRSpec!1503 lt!1041878 s!11993))))

(declare-fun lt!1041959 () Unit!49147)

(declare-fun choose!17796 (Regex!9366 List!35231) Unit!49147)

(assert (=> d!846345 (= lt!1041959 (choose!17796 lt!1041878 s!11993))))

(assert (=> d!846345 (validRegex!4099 lt!1041878)))

(assert (=> d!846345 (= (mainMatchTheorem!1503 lt!1041878 s!11993) lt!1041959)))

(declare-fun bs!528400 () Bool)

(assert (= bs!528400 d!846345))

(assert (=> bs!528400 m!3352315))

(assert (=> bs!528400 m!3352345))

(declare-fun m!3352481 () Bool)

(assert (=> bs!528400 m!3352481))

(declare-fun m!3352483 () Bool)

(assert (=> bs!528400 m!3352483))

(assert (=> b!3001206 d!846345))

(declare-fun d!846347 () Bool)

(declare-fun choose!17797 (Int) Bool)

(assert (=> d!846347 (= (Exists!1639 lambda!112094) (choose!17797 lambda!112094))))

(declare-fun bs!528401 () Bool)

(assert (= bs!528401 d!846347))

(declare-fun m!3352485 () Bool)

(assert (=> bs!528401 m!3352485))

(assert (=> b!3001206 d!846347))

(declare-fun bs!528402 () Bool)

(declare-fun d!846349 () Bool)

(assert (= bs!528402 (and d!846349 d!846341)))

(declare-fun lambda!112116 () Int)

(assert (=> bs!528402 (= lambda!112116 lambda!112111)))

(declare-fun bs!528403 () Bool)

(assert (= bs!528403 (and d!846349 b!3001464)))

(assert (=> bs!528403 (not (= lambda!112116 lambda!112108))))

(declare-fun bs!528404 () Bool)

(assert (= bs!528404 (and d!846349 b!3001206)))

(assert (=> bs!528404 (= lambda!112116 lambda!112093)))

(assert (=> bs!528404 (not (= lambda!112116 lambda!112094))))

(declare-fun bs!528405 () Bool)

(assert (= bs!528405 (and d!846349 b!3001461)))

(assert (=> bs!528405 (not (= lambda!112116 lambda!112107))))

(assert (=> d!846349 true))

(assert (=> d!846349 true))

(assert (=> d!846349 true))

(declare-fun lambda!112117 () Int)

(assert (=> bs!528402 (not (= lambda!112117 lambda!112111))))

(assert (=> bs!528403 (= (and (= lt!1041875 (regOne!19244 lt!1041878)) (= lt!1041877 (regTwo!19244 lt!1041878))) (= lambda!112117 lambda!112108))))

(assert (=> bs!528404 (not (= lambda!112117 lambda!112093))))

(declare-fun bs!528406 () Bool)

(assert (= bs!528406 d!846349))

(assert (=> bs!528406 (not (= lambda!112117 lambda!112116))))

(assert (=> bs!528404 (= lambda!112117 lambda!112094)))

(assert (=> bs!528405 (not (= lambda!112117 lambda!112107))))

(assert (=> d!846349 true))

(assert (=> d!846349 true))

(assert (=> d!846349 true))

(assert (=> d!846349 (= (Exists!1639 lambda!112116) (Exists!1639 lambda!112117))))

(declare-fun lt!1041974 () Unit!49147)

(declare-fun choose!17798 (Regex!9366 Regex!9366 List!35231) Unit!49147)

(assert (=> d!846349 (= lt!1041974 (choose!17798 lt!1041875 lt!1041877 s!11993))))

(assert (=> d!846349 (validRegex!4099 lt!1041875)))

(assert (=> d!846349 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!543 lt!1041875 lt!1041877 s!11993) lt!1041974)))

(declare-fun m!3352527 () Bool)

(assert (=> bs!528406 m!3352527))

(declare-fun m!3352529 () Bool)

(assert (=> bs!528406 m!3352529))

(declare-fun m!3352531 () Bool)

(assert (=> bs!528406 m!3352531))

(assert (=> bs!528406 m!3352465))

(assert (=> b!3001206 d!846349))

(declare-fun d!846355 () Bool)

(assert (=> d!846355 (= (Exists!1639 lambda!112093) (choose!17797 lambda!112093))))

(declare-fun bs!528407 () Bool)

(assert (= bs!528407 d!846355))

(declare-fun m!3352533 () Bool)

(assert (=> bs!528407 m!3352533))

(assert (=> b!3001206 d!846355))

(declare-fun d!846357 () Bool)

(assert (=> d!846357 (= (isEmptyLang!456 lt!1041877) (is-EmptyLang!9366 lt!1041877))))

(assert (=> b!3001201 d!846357))

(declare-fun b!3001632 () Bool)

(declare-fun e!1885546 () Bool)

(declare-fun head!6686 (List!35231) C!18918)

(assert (=> b!3001632 (= e!1885546 (= (head!6686 s!11993) (c!493882 lt!1041878)))))

(declare-fun b!3001633 () Bool)

(declare-fun e!1885545 () Bool)

(declare-fun e!1885544 () Bool)

(assert (=> b!3001633 (= e!1885545 e!1885544)))

(declare-fun res!1236970 () Bool)

(assert (=> b!3001633 (=> (not res!1236970) (not e!1885544))))

(declare-fun lt!1041980 () Bool)

(assert (=> b!3001633 (= res!1236970 (not lt!1041980))))

(declare-fun b!3001634 () Bool)

(declare-fun e!1885542 () Bool)

(assert (=> b!3001634 (= e!1885542 (not (= (head!6686 s!11993) (c!493882 lt!1041878))))))

(declare-fun b!3001635 () Bool)

(declare-fun e!1885548 () Bool)

(declare-fun call!201769 () Bool)

(assert (=> b!3001635 (= e!1885548 (= lt!1041980 call!201769))))

(declare-fun b!3001636 () Bool)

(declare-fun e!1885543 () Bool)

(declare-fun derivativeStep!2627 (Regex!9366 C!18918) Regex!9366)

(declare-fun tail!4912 (List!35231) List!35231)

(assert (=> b!3001636 (= e!1885543 (matchR!4248 (derivativeStep!2627 lt!1041878 (head!6686 s!11993)) (tail!4912 s!11993)))))

(declare-fun b!3001637 () Bool)

(assert (=> b!3001637 (= e!1885544 e!1885542)))

(declare-fun res!1236965 () Bool)

(assert (=> b!3001637 (=> res!1236965 e!1885542)))

(assert (=> b!3001637 (= res!1236965 call!201769)))

(declare-fun b!3001638 () Bool)

(declare-fun res!1236966 () Bool)

(assert (=> b!3001638 (=> res!1236966 e!1885542)))

(assert (=> b!3001638 (= res!1236966 (not (isEmpty!19381 (tail!4912 s!11993))))))

(declare-fun d!846359 () Bool)

(assert (=> d!846359 e!1885548))

(declare-fun c!494009 () Bool)

(assert (=> d!846359 (= c!494009 (is-EmptyExpr!9366 lt!1041878))))

(assert (=> d!846359 (= lt!1041980 e!1885543)))

(declare-fun c!494010 () Bool)

(assert (=> d!846359 (= c!494010 (isEmpty!19381 s!11993))))

(assert (=> d!846359 (validRegex!4099 lt!1041878)))

(assert (=> d!846359 (= (matchR!4248 lt!1041878 s!11993) lt!1041980)))

(declare-fun b!3001639 () Bool)

(declare-fun res!1236972 () Bool)

(assert (=> b!3001639 (=> (not res!1236972) (not e!1885546))))

(assert (=> b!3001639 (= res!1236972 (isEmpty!19381 (tail!4912 s!11993)))))

(declare-fun b!3001640 () Bool)

(declare-fun e!1885547 () Bool)

(assert (=> b!3001640 (= e!1885547 (not lt!1041980))))

(declare-fun b!3001641 () Bool)

(declare-fun res!1236968 () Bool)

(assert (=> b!3001641 (=> res!1236968 e!1885545)))

(assert (=> b!3001641 (= res!1236968 e!1885546)))

(declare-fun res!1236969 () Bool)

(assert (=> b!3001641 (=> (not res!1236969) (not e!1885546))))

(assert (=> b!3001641 (= res!1236969 lt!1041980)))

(declare-fun b!3001642 () Bool)

(declare-fun res!1236971 () Bool)

(assert (=> b!3001642 (=> (not res!1236971) (not e!1885546))))

(assert (=> b!3001642 (= res!1236971 (not call!201769))))

(declare-fun b!3001643 () Bool)

(declare-fun res!1236967 () Bool)

(assert (=> b!3001643 (=> res!1236967 e!1885545)))

(assert (=> b!3001643 (= res!1236967 (not (is-ElementMatch!9366 lt!1041878)))))

(assert (=> b!3001643 (= e!1885547 e!1885545)))

(declare-fun b!3001644 () Bool)

(assert (=> b!3001644 (= e!1885548 e!1885547)))

(declare-fun c!494008 () Bool)

(assert (=> b!3001644 (= c!494008 (is-EmptyLang!9366 lt!1041878))))

(declare-fun b!3001645 () Bool)

(assert (=> b!3001645 (= e!1885543 (nullable!3029 lt!1041878))))

(declare-fun bm!201764 () Bool)

(assert (=> bm!201764 (= call!201769 (isEmpty!19381 s!11993))))

(assert (= (and d!846359 c!494010) b!3001645))

(assert (= (and d!846359 (not c!494010)) b!3001636))

(assert (= (and d!846359 c!494009) b!3001635))

(assert (= (and d!846359 (not c!494009)) b!3001644))

(assert (= (and b!3001644 c!494008) b!3001640))

(assert (= (and b!3001644 (not c!494008)) b!3001643))

(assert (= (and b!3001643 (not res!1236967)) b!3001641))

(assert (= (and b!3001641 res!1236969) b!3001642))

(assert (= (and b!3001642 res!1236971) b!3001639))

(assert (= (and b!3001639 res!1236972) b!3001632))

(assert (= (and b!3001641 (not res!1236968)) b!3001633))

(assert (= (and b!3001633 res!1236970) b!3001637))

(assert (= (and b!3001637 (not res!1236965)) b!3001638))

(assert (= (and b!3001638 (not res!1236966)) b!3001634))

(assert (= (or b!3001635 b!3001637 b!3001642) bm!201764))

(declare-fun m!3352541 () Bool)

(assert (=> b!3001639 m!3352541))

(assert (=> b!3001639 m!3352541))

(declare-fun m!3352543 () Bool)

(assert (=> b!3001639 m!3352543))

(assert (=> b!3001638 m!3352541))

(assert (=> b!3001638 m!3352541))

(assert (=> b!3001638 m!3352543))

(declare-fun m!3352545 () Bool)

(assert (=> b!3001636 m!3352545))

(assert (=> b!3001636 m!3352545))

(declare-fun m!3352547 () Bool)

(assert (=> b!3001636 m!3352547))

(assert (=> b!3001636 m!3352541))

(assert (=> b!3001636 m!3352547))

(assert (=> b!3001636 m!3352541))

(declare-fun m!3352549 () Bool)

(assert (=> b!3001636 m!3352549))

(assert (=> b!3001632 m!3352545))

(assert (=> b!3001634 m!3352545))

(assert (=> bm!201764 m!3352319))

(declare-fun m!3352551 () Bool)

(assert (=> b!3001645 m!3352551))

(assert (=> d!846359 m!3352319))

(assert (=> d!846359 m!3352483))

(assert (=> b!3001204 d!846359))

(declare-fun bs!528410 () Bool)

(declare-fun b!3001653 () Bool)

(assert (= bs!528410 (and b!3001653 d!846341)))

(declare-fun lambda!112118 () Int)

(assert (=> bs!528410 (not (= lambda!112118 lambda!112111))))

(declare-fun bs!528411 () Bool)

(assert (= bs!528411 (and b!3001653 b!3001464)))

(assert (=> bs!528411 (not (= lambda!112118 lambda!112108))))

(declare-fun bs!528412 () Bool)

(assert (= bs!528412 (and b!3001653 b!3001206)))

(assert (=> bs!528412 (not (= lambda!112118 lambda!112093))))

(declare-fun bs!528413 () Bool)

(assert (= bs!528413 (and b!3001653 d!846349)))

(assert (=> bs!528413 (not (= lambda!112118 lambda!112117))))

(assert (=> bs!528413 (not (= lambda!112118 lambda!112116))))

(assert (=> bs!528412 (not (= lambda!112118 lambda!112094))))

(declare-fun bs!528414 () Bool)

(assert (= bs!528414 (and b!3001653 b!3001461)))

(assert (=> bs!528414 (= (and (= (reg!9695 r!17423) (reg!9695 lt!1041878)) (= r!17423 lt!1041878)) (= lambda!112118 lambda!112107))))

(assert (=> b!3001653 true))

(assert (=> b!3001653 true))

(declare-fun bs!528415 () Bool)

(declare-fun b!3001656 () Bool)

(assert (= bs!528415 (and b!3001656 d!846341)))

(declare-fun lambda!112119 () Int)

(assert (=> bs!528415 (not (= lambda!112119 lambda!112111))))

(declare-fun bs!528416 () Bool)

(assert (= bs!528416 (and b!3001656 b!3001464)))

(assert (=> bs!528416 (= (and (= (regOne!19244 r!17423) (regOne!19244 lt!1041878)) (= (regTwo!19244 r!17423) (regTwo!19244 lt!1041878))) (= lambda!112119 lambda!112108))))

(declare-fun bs!528417 () Bool)

(assert (= bs!528417 (and b!3001656 b!3001206)))

(assert (=> bs!528417 (not (= lambda!112119 lambda!112093))))

(declare-fun bs!528418 () Bool)

(assert (= bs!528418 (and b!3001656 b!3001653)))

(assert (=> bs!528418 (not (= lambda!112119 lambda!112118))))

(declare-fun bs!528419 () Bool)

(assert (= bs!528419 (and b!3001656 d!846349)))

(assert (=> bs!528419 (= (and (= (regOne!19244 r!17423) lt!1041875) (= (regTwo!19244 r!17423) lt!1041877)) (= lambda!112119 lambda!112117))))

(assert (=> bs!528419 (not (= lambda!112119 lambda!112116))))

(assert (=> bs!528417 (= (and (= (regOne!19244 r!17423) lt!1041875) (= (regTwo!19244 r!17423) lt!1041877)) (= lambda!112119 lambda!112094))))

(declare-fun bs!528420 () Bool)

(assert (= bs!528420 (and b!3001656 b!3001461)))

(assert (=> bs!528420 (not (= lambda!112119 lambda!112107))))

(assert (=> b!3001656 true))

(assert (=> b!3001656 true))

(declare-fun b!3001646 () Bool)

(declare-fun e!1885551 () Bool)

(declare-fun e!1885552 () Bool)

(assert (=> b!3001646 (= e!1885551 e!1885552)))

(declare-fun res!1236974 () Bool)

(assert (=> b!3001646 (= res!1236974 (matchRSpec!1503 (regOne!19245 r!17423) s!11993))))

(assert (=> b!3001646 (=> res!1236974 e!1885552)))

(declare-fun b!3001647 () Bool)

(declare-fun res!1236975 () Bool)

(declare-fun e!1885549 () Bool)

(assert (=> b!3001647 (=> res!1236975 e!1885549)))

(declare-fun call!201770 () Bool)

(assert (=> b!3001647 (= res!1236975 call!201770)))

(declare-fun e!1885550 () Bool)

(assert (=> b!3001647 (= e!1885550 e!1885549)))

(declare-fun b!3001648 () Bool)

(declare-fun e!1885555 () Bool)

(assert (=> b!3001648 (= e!1885555 call!201770)))

(declare-fun b!3001649 () Bool)

(declare-fun c!494014 () Bool)

(assert (=> b!3001649 (= c!494014 (is-ElementMatch!9366 r!17423))))

(declare-fun e!1885554 () Bool)

(declare-fun e!1885553 () Bool)

(assert (=> b!3001649 (= e!1885554 e!1885553)))

(declare-fun b!3001650 () Bool)

(assert (=> b!3001650 (= e!1885551 e!1885550)))

(declare-fun c!494011 () Bool)

(assert (=> b!3001650 (= c!494011 (is-Star!9366 r!17423))))

(declare-fun b!3001651 () Bool)

(declare-fun c!494012 () Bool)

(assert (=> b!3001651 (= c!494012 (is-Union!9366 r!17423))))

(assert (=> b!3001651 (= e!1885553 e!1885551)))

(declare-fun d!846365 () Bool)

(declare-fun c!494013 () Bool)

(assert (=> d!846365 (= c!494013 (is-EmptyExpr!9366 r!17423))))

(assert (=> d!846365 (= (matchRSpec!1503 r!17423 s!11993) e!1885555)))

(declare-fun b!3001652 () Bool)

(assert (=> b!3001652 (= e!1885553 (= s!11993 (Cons!35107 (c!493882 r!17423) Nil!35107)))))

(declare-fun call!201771 () Bool)

(assert (=> b!3001653 (= e!1885549 call!201771)))

(declare-fun bm!201765 () Bool)

(assert (=> bm!201765 (= call!201770 (isEmpty!19381 s!11993))))

(declare-fun b!3001654 () Bool)

(assert (=> b!3001654 (= e!1885555 e!1885554)))

(declare-fun res!1236973 () Bool)

(assert (=> b!3001654 (= res!1236973 (not (is-EmptyLang!9366 r!17423)))))

(assert (=> b!3001654 (=> (not res!1236973) (not e!1885554))))

(declare-fun b!3001655 () Bool)

(assert (=> b!3001655 (= e!1885552 (matchRSpec!1503 (regTwo!19245 r!17423) s!11993))))

(assert (=> b!3001656 (= e!1885550 call!201771)))

(declare-fun bm!201766 () Bool)

(assert (=> bm!201766 (= call!201771 (Exists!1639 (ite c!494011 lambda!112118 lambda!112119)))))

(assert (= (and d!846365 c!494013) b!3001648))

(assert (= (and d!846365 (not c!494013)) b!3001654))

(assert (= (and b!3001654 res!1236973) b!3001649))

(assert (= (and b!3001649 c!494014) b!3001652))

(assert (= (and b!3001649 (not c!494014)) b!3001651))

(assert (= (and b!3001651 c!494012) b!3001646))

(assert (= (and b!3001651 (not c!494012)) b!3001650))

(assert (= (and b!3001646 (not res!1236974)) b!3001655))

(assert (= (and b!3001650 c!494011) b!3001647))

(assert (= (and b!3001650 (not c!494011)) b!3001656))

(assert (= (and b!3001647 (not res!1236975)) b!3001653))

(assert (= (or b!3001653 b!3001656) bm!201766))

(assert (= (or b!3001648 b!3001647) bm!201765))

(declare-fun m!3352553 () Bool)

(assert (=> b!3001646 m!3352553))

(assert (=> bm!201765 m!3352319))

(declare-fun m!3352555 () Bool)

(assert (=> b!3001655 m!3352555))

(declare-fun m!3352557 () Bool)

(assert (=> bm!201766 m!3352557))

(assert (=> b!3001199 d!846365))

(declare-fun b!3001657 () Bool)

(declare-fun e!1885560 () Bool)

(assert (=> b!3001657 (= e!1885560 (= (head!6686 s!11993) (c!493882 r!17423)))))

(declare-fun b!3001658 () Bool)

(declare-fun e!1885559 () Bool)

(declare-fun e!1885558 () Bool)

(assert (=> b!3001658 (= e!1885559 e!1885558)))

(declare-fun res!1236981 () Bool)

(assert (=> b!3001658 (=> (not res!1236981) (not e!1885558))))

(declare-fun lt!1041981 () Bool)

(assert (=> b!3001658 (= res!1236981 (not lt!1041981))))

(declare-fun b!3001659 () Bool)

(declare-fun e!1885556 () Bool)

(assert (=> b!3001659 (= e!1885556 (not (= (head!6686 s!11993) (c!493882 r!17423))))))

(declare-fun b!3001660 () Bool)

(declare-fun e!1885562 () Bool)

(declare-fun call!201772 () Bool)

(assert (=> b!3001660 (= e!1885562 (= lt!1041981 call!201772))))

(declare-fun b!3001661 () Bool)

(declare-fun e!1885557 () Bool)

(assert (=> b!3001661 (= e!1885557 (matchR!4248 (derivativeStep!2627 r!17423 (head!6686 s!11993)) (tail!4912 s!11993)))))

(declare-fun b!3001662 () Bool)

(assert (=> b!3001662 (= e!1885558 e!1885556)))

(declare-fun res!1236976 () Bool)

(assert (=> b!3001662 (=> res!1236976 e!1885556)))

(assert (=> b!3001662 (= res!1236976 call!201772)))

(declare-fun b!3001663 () Bool)

(declare-fun res!1236977 () Bool)

(assert (=> b!3001663 (=> res!1236977 e!1885556)))

(assert (=> b!3001663 (= res!1236977 (not (isEmpty!19381 (tail!4912 s!11993))))))

(declare-fun d!846367 () Bool)

(assert (=> d!846367 e!1885562))

(declare-fun c!494016 () Bool)

(assert (=> d!846367 (= c!494016 (is-EmptyExpr!9366 r!17423))))

(assert (=> d!846367 (= lt!1041981 e!1885557)))

(declare-fun c!494017 () Bool)

(assert (=> d!846367 (= c!494017 (isEmpty!19381 s!11993))))

(assert (=> d!846367 (validRegex!4099 r!17423)))

(assert (=> d!846367 (= (matchR!4248 r!17423 s!11993) lt!1041981)))

(declare-fun b!3001664 () Bool)

(declare-fun res!1236983 () Bool)

(assert (=> b!3001664 (=> (not res!1236983) (not e!1885560))))

(assert (=> b!3001664 (= res!1236983 (isEmpty!19381 (tail!4912 s!11993)))))

(declare-fun b!3001665 () Bool)

(declare-fun e!1885561 () Bool)

(assert (=> b!3001665 (= e!1885561 (not lt!1041981))))

(declare-fun b!3001666 () Bool)

(declare-fun res!1236979 () Bool)

(assert (=> b!3001666 (=> res!1236979 e!1885559)))

(assert (=> b!3001666 (= res!1236979 e!1885560)))

(declare-fun res!1236980 () Bool)

(assert (=> b!3001666 (=> (not res!1236980) (not e!1885560))))

(assert (=> b!3001666 (= res!1236980 lt!1041981)))

(declare-fun b!3001667 () Bool)

(declare-fun res!1236982 () Bool)

(assert (=> b!3001667 (=> (not res!1236982) (not e!1885560))))

(assert (=> b!3001667 (= res!1236982 (not call!201772))))

(declare-fun b!3001668 () Bool)

(declare-fun res!1236978 () Bool)

(assert (=> b!3001668 (=> res!1236978 e!1885559)))

(assert (=> b!3001668 (= res!1236978 (not (is-ElementMatch!9366 r!17423)))))

(assert (=> b!3001668 (= e!1885561 e!1885559)))

(declare-fun b!3001669 () Bool)

(assert (=> b!3001669 (= e!1885562 e!1885561)))

(declare-fun c!494015 () Bool)

(assert (=> b!3001669 (= c!494015 (is-EmptyLang!9366 r!17423))))

(declare-fun b!3001670 () Bool)

(assert (=> b!3001670 (= e!1885557 (nullable!3029 r!17423))))

(declare-fun bm!201767 () Bool)

(assert (=> bm!201767 (= call!201772 (isEmpty!19381 s!11993))))

(assert (= (and d!846367 c!494017) b!3001670))

(assert (= (and d!846367 (not c!494017)) b!3001661))

(assert (= (and d!846367 c!494016) b!3001660))

(assert (= (and d!846367 (not c!494016)) b!3001669))

(assert (= (and b!3001669 c!494015) b!3001665))

(assert (= (and b!3001669 (not c!494015)) b!3001668))

(assert (= (and b!3001668 (not res!1236978)) b!3001666))

(assert (= (and b!3001666 res!1236980) b!3001667))

(assert (= (and b!3001667 res!1236982) b!3001664))

(assert (= (and b!3001664 res!1236983) b!3001657))

(assert (= (and b!3001666 (not res!1236979)) b!3001658))

(assert (= (and b!3001658 res!1236981) b!3001662))

(assert (= (and b!3001662 (not res!1236976)) b!3001663))

(assert (= (and b!3001663 (not res!1236977)) b!3001659))

(assert (= (or b!3001660 b!3001662 b!3001667) bm!201767))

(assert (=> b!3001664 m!3352541))

(assert (=> b!3001664 m!3352541))

(assert (=> b!3001664 m!3352543))

(assert (=> b!3001663 m!3352541))

(assert (=> b!3001663 m!3352541))

(assert (=> b!3001663 m!3352543))

(assert (=> b!3001661 m!3352545))

(assert (=> b!3001661 m!3352545))

(declare-fun m!3352559 () Bool)

(assert (=> b!3001661 m!3352559))

(assert (=> b!3001661 m!3352541))

(assert (=> b!3001661 m!3352559))

(assert (=> b!3001661 m!3352541))

(declare-fun m!3352561 () Bool)

(assert (=> b!3001661 m!3352561))

(assert (=> b!3001657 m!3352545))

(assert (=> b!3001659 m!3352545))

(assert (=> bm!201767 m!3352319))

(declare-fun m!3352563 () Bool)

(assert (=> b!3001670 m!3352563))

(assert (=> d!846367 m!3352319))

(assert (=> d!846367 m!3352335))

(assert (=> b!3001199 d!846367))

(declare-fun d!846369 () Bool)

(assert (=> d!846369 (= (matchR!4248 r!17423 s!11993) (matchRSpec!1503 r!17423 s!11993))))

(declare-fun lt!1041982 () Unit!49147)

(assert (=> d!846369 (= lt!1041982 (choose!17796 r!17423 s!11993))))

(assert (=> d!846369 (validRegex!4099 r!17423)))

(assert (=> d!846369 (= (mainMatchTheorem!1503 r!17423 s!11993) lt!1041982)))

(declare-fun bs!528421 () Bool)

(assert (= bs!528421 d!846369))

(assert (=> bs!528421 m!3352323))

(assert (=> bs!528421 m!3352321))

(declare-fun m!3352565 () Bool)

(assert (=> bs!528421 m!3352565))

(assert (=> bs!528421 m!3352335))

(assert (=> b!3001199 d!846369))

(declare-fun d!846371 () Bool)

(assert (=> d!846371 (= (isEmpty!19381 s!11993) (is-Nil!35107 s!11993))))

(assert (=> b!3001198 d!846371))

(declare-fun b!3001675 () Bool)

(declare-fun e!1885565 () Bool)

(declare-fun tp!953944 () Bool)

(assert (=> b!3001675 (= e!1885565 (and tp_is_empty!16295 tp!953944))))

(assert (=> b!3001207 (= tp!953922 e!1885565)))

(assert (= (and b!3001207 (is-Cons!35107 (t!234296 s!11993))) b!3001675))

(declare-fun b!3001688 () Bool)

(declare-fun e!1885568 () Bool)

(declare-fun tp!953958 () Bool)

(assert (=> b!3001688 (= e!1885568 tp!953958)))

(declare-fun b!3001687 () Bool)

(declare-fun tp!953957 () Bool)

(declare-fun tp!953955 () Bool)

(assert (=> b!3001687 (= e!1885568 (and tp!953957 tp!953955))))

(assert (=> b!3001200 (= tp!953918 e!1885568)))

(declare-fun b!3001689 () Bool)

(declare-fun tp!953956 () Bool)

(declare-fun tp!953959 () Bool)

(assert (=> b!3001689 (= e!1885568 (and tp!953956 tp!953959))))

(declare-fun b!3001686 () Bool)

(assert (=> b!3001686 (= e!1885568 tp_is_empty!16295)))

(assert (= (and b!3001200 (is-ElementMatch!9366 (reg!9695 r!17423))) b!3001686))

(assert (= (and b!3001200 (is-Concat!14687 (reg!9695 r!17423))) b!3001687))

(assert (= (and b!3001200 (is-Star!9366 (reg!9695 r!17423))) b!3001688))

(assert (= (and b!3001200 (is-Union!9366 (reg!9695 r!17423))) b!3001689))

(declare-fun b!3001692 () Bool)

(declare-fun e!1885569 () Bool)

(declare-fun tp!953963 () Bool)

(assert (=> b!3001692 (= e!1885569 tp!953963)))

(declare-fun b!3001691 () Bool)

(declare-fun tp!953962 () Bool)

(declare-fun tp!953960 () Bool)

(assert (=> b!3001691 (= e!1885569 (and tp!953962 tp!953960))))

(assert (=> b!3001205 (= tp!953921 e!1885569)))

(declare-fun b!3001693 () Bool)

(declare-fun tp!953961 () Bool)

(declare-fun tp!953964 () Bool)

(assert (=> b!3001693 (= e!1885569 (and tp!953961 tp!953964))))

(declare-fun b!3001690 () Bool)

(assert (=> b!3001690 (= e!1885569 tp_is_empty!16295)))

(assert (= (and b!3001205 (is-ElementMatch!9366 (regOne!19244 r!17423))) b!3001690))

(assert (= (and b!3001205 (is-Concat!14687 (regOne!19244 r!17423))) b!3001691))

(assert (= (and b!3001205 (is-Star!9366 (regOne!19244 r!17423))) b!3001692))

(assert (= (and b!3001205 (is-Union!9366 (regOne!19244 r!17423))) b!3001693))

(declare-fun b!3001696 () Bool)

(declare-fun e!1885570 () Bool)

(declare-fun tp!953968 () Bool)

(assert (=> b!3001696 (= e!1885570 tp!953968)))

(declare-fun b!3001695 () Bool)

(declare-fun tp!953967 () Bool)

(declare-fun tp!953965 () Bool)

(assert (=> b!3001695 (= e!1885570 (and tp!953967 tp!953965))))

(assert (=> b!3001205 (= tp!953919 e!1885570)))

(declare-fun b!3001697 () Bool)

(declare-fun tp!953966 () Bool)

(declare-fun tp!953969 () Bool)

(assert (=> b!3001697 (= e!1885570 (and tp!953966 tp!953969))))

(declare-fun b!3001694 () Bool)

(assert (=> b!3001694 (= e!1885570 tp_is_empty!16295)))

(assert (= (and b!3001205 (is-ElementMatch!9366 (regTwo!19244 r!17423))) b!3001694))

(assert (= (and b!3001205 (is-Concat!14687 (regTwo!19244 r!17423))) b!3001695))

(assert (= (and b!3001205 (is-Star!9366 (regTwo!19244 r!17423))) b!3001696))

(assert (= (and b!3001205 (is-Union!9366 (regTwo!19244 r!17423))) b!3001697))

(declare-fun b!3001700 () Bool)

(declare-fun e!1885571 () Bool)

(declare-fun tp!953973 () Bool)

(assert (=> b!3001700 (= e!1885571 tp!953973)))

(declare-fun b!3001699 () Bool)

(declare-fun tp!953972 () Bool)

(declare-fun tp!953970 () Bool)

(assert (=> b!3001699 (= e!1885571 (and tp!953972 tp!953970))))

(assert (=> b!3001208 (= tp!953920 e!1885571)))

(declare-fun b!3001701 () Bool)

(declare-fun tp!953971 () Bool)

(declare-fun tp!953974 () Bool)

(assert (=> b!3001701 (= e!1885571 (and tp!953971 tp!953974))))

(declare-fun b!3001698 () Bool)

(assert (=> b!3001698 (= e!1885571 tp_is_empty!16295)))

(assert (= (and b!3001208 (is-ElementMatch!9366 (regOne!19245 r!17423))) b!3001698))

(assert (= (and b!3001208 (is-Concat!14687 (regOne!19245 r!17423))) b!3001699))

(assert (= (and b!3001208 (is-Star!9366 (regOne!19245 r!17423))) b!3001700))

(assert (= (and b!3001208 (is-Union!9366 (regOne!19245 r!17423))) b!3001701))

(declare-fun b!3001704 () Bool)

(declare-fun e!1885572 () Bool)

(declare-fun tp!953978 () Bool)

(assert (=> b!3001704 (= e!1885572 tp!953978)))

(declare-fun b!3001703 () Bool)

(declare-fun tp!953977 () Bool)

(declare-fun tp!953975 () Bool)

(assert (=> b!3001703 (= e!1885572 (and tp!953977 tp!953975))))

(assert (=> b!3001208 (= tp!953923 e!1885572)))

(declare-fun b!3001705 () Bool)

(declare-fun tp!953976 () Bool)

(declare-fun tp!953979 () Bool)

(assert (=> b!3001705 (= e!1885572 (and tp!953976 tp!953979))))

(declare-fun b!3001702 () Bool)

(assert (=> b!3001702 (= e!1885572 tp_is_empty!16295)))

(assert (= (and b!3001208 (is-ElementMatch!9366 (regTwo!19245 r!17423))) b!3001702))

(assert (= (and b!3001208 (is-Concat!14687 (regTwo!19245 r!17423))) b!3001703))

(assert (= (and b!3001208 (is-Star!9366 (regTwo!19245 r!17423))) b!3001704))

(assert (= (and b!3001208 (is-Union!9366 (regTwo!19245 r!17423))) b!3001705))

(push 1)

(assert (not d!846313))

(assert (not bm!201732))

(assert (not bm!201702))

(assert (not b!3001645))

(assert (not d!846347))

(assert (not b!3001534))

(assert (not b!3001376))

(assert (not d!846369))

(assert (not b!3001663))

(assert (not b!3001661))

(assert (not b!3001697))

(assert (not b!3001532))

(assert tp_is_empty!16295)

(assert (not d!846339))

(assert (not bm!201709))

(assert (not bm!201765))

(assert (not b!3001536))

(assert (not b!3001646))

(assert (not b!3001693))

(assert (not bm!201707))

(assert (not b!3001454))

(assert (not b!3001632))

(assert (not b!3001699))

(assert (not b!3001371))

(assert (not b!3001700))

(assert (not bm!201767))

(assert (not b!3001655))

(assert (not b!3001463))

(assert (not b!3001703))

(assert (not bm!201711))

(assert (not d!846341))

(assert (not bm!201725))

(assert (not b!3001659))

(assert (not b!3001533))

(assert (not d!846359))

(assert (not b!3001695))

(assert (not bm!201764))

(assert (not bm!201710))

(assert (not b!3001351))

(assert (not b!3001346))

(assert (not bm!201766))

(assert (not b!3001688))

(assert (not d!846367))

(assert (not b!3001701))

(assert (not b!3001657))

(assert (not b!3001639))

(assert (not b!3001687))

(assert (not d!846343))

(assert (not d!846323))

(assert (not b!3001691))

(assert (not bm!201726))

(assert (not bm!201703))

(assert (not b!3001692))

(assert (not b!3001704))

(assert (not d!846355))

(assert (not b!3001670))

(assert (not b!3001689))

(assert (not b!3001416))

(assert (not b!3001636))

(assert (not d!846345))

(assert (not b!3001675))

(assert (not b!3001638))

(assert (not b!3001696))

(assert (not b!3001634))

(assert (not d!846349))

(assert (not b!3001664))

(assert (not bm!201704))

(assert (not bm!201705))

(assert (not bm!201733))

(assert (not b!3001535))

(assert (not bm!201714))

(assert (not bm!201712))

(assert (not b!3001539))

(assert (not b!3001705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

