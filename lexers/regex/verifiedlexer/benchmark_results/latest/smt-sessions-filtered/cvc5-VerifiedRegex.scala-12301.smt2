; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690866 () Bool)

(assert start!690866)

(declare-fun res!2898163 () Bool)

(declare-fun e!4266192 () Bool)

(assert (=> start!690866 (=> (not res!2898163) (not e!4266192))))

(declare-datatypes ((C!35958 0))(
  ( (C!35959 (val!27685 Int)) )
))
(declare-datatypes ((Regex!17844 0))(
  ( (ElementMatch!17844 (c!1324387 C!35958)) (Concat!26689 (regOne!36200 Regex!17844) (regTwo!36200 Regex!17844)) (EmptyExpr!17844) (Star!17844 (reg!18173 Regex!17844)) (EmptyLang!17844) (Union!17844 (regOne!36201 Regex!17844) (regTwo!36201 Regex!17844)) )
))
(declare-fun r!11554 () Regex!17844)

(declare-fun validRegex!9119 (Regex!17844) Bool)

(assert (=> start!690866 (= res!2898163 (validRegex!9119 r!11554))))

(assert (=> start!690866 e!4266192))

(declare-fun e!4266189 () Bool)

(assert (=> start!690866 e!4266189))

(declare-fun tp_is_empty!44921 () Bool)

(assert (=> start!690866 tp_is_empty!44921))

(declare-datatypes ((List!68807 0))(
  ( (Nil!68683) (Cons!68683 (h!75131 Regex!17844) (t!382610 List!68807)) )
))
(declare-datatypes ((Context!13680 0))(
  ( (Context!13681 (exprs!7340 List!68807)) )
))
(declare-fun c!9994 () Context!13680)

(declare-fun e!4266187 () Bool)

(declare-fun inv!87476 (Context!13680) Bool)

(assert (=> start!690866 (and (inv!87476 c!9994) e!4266187)))

(declare-fun auxCtx!45 () Context!13680)

(declare-fun e!4266190 () Bool)

(assert (=> start!690866 (and (inv!87476 auxCtx!45) e!4266190)))

(declare-fun b!7097301 () Bool)

(declare-fun res!2898167 () Bool)

(assert (=> b!7097301 (=> (not res!2898167) (not e!4266192))))

(declare-fun e!4266188 () Bool)

(assert (=> b!7097301 (= res!2898167 e!4266188)))

(declare-fun res!2898165 () Bool)

(assert (=> b!7097301 (=> res!2898165 e!4266188)))

(assert (=> b!7097301 (= res!2898165 (not (is-Concat!26689 r!11554)))))

(declare-fun b!7097302 () Bool)

(declare-fun e!4266191 () Bool)

(declare-fun lambda!430594 () Int)

(declare-fun forall!16764 (List!68807 Int) Bool)

(assert (=> b!7097302 (= e!4266191 (not (forall!16764 (exprs!7340 auxCtx!45) lambda!430594)))))

(declare-fun b!7097303 () Bool)

(declare-fun tp!1950562 () Bool)

(assert (=> b!7097303 (= e!4266190 tp!1950562)))

(declare-fun b!7097304 () Bool)

(declare-fun res!2898168 () Bool)

(assert (=> b!7097304 (=> (not res!2898168) (not e!4266192))))

(assert (=> b!7097304 (= res!2898168 (and (not (is-Concat!26689 r!11554)) (is-Star!17844 r!11554)))))

(declare-fun b!7097305 () Bool)

(declare-fun tp!1950559 () Bool)

(declare-fun tp!1950561 () Bool)

(assert (=> b!7097305 (= e!4266189 (and tp!1950559 tp!1950561))))

(declare-fun b!7097306 () Bool)

(declare-fun tp!1950563 () Bool)

(declare-fun tp!1950560 () Bool)

(assert (=> b!7097306 (= e!4266189 (and tp!1950563 tp!1950560))))

(declare-fun b!7097307 () Bool)

(declare-fun tp!1950558 () Bool)

(assert (=> b!7097307 (= e!4266187 tp!1950558)))

(declare-fun b!7097308 () Bool)

(assert (=> b!7097308 (= e!4266192 e!4266191)))

(declare-fun res!2898164 () Bool)

(assert (=> b!7097308 (=> (not res!2898164) (not e!4266191))))

(assert (=> b!7097308 (= res!2898164 (forall!16764 (exprs!7340 c!9994) lambda!430594))))

(declare-datatypes ((Unit!162363 0))(
  ( (Unit!162364) )
))
(declare-fun lt!2557455 () Unit!162363)

(declare-fun lemmaConcatPreservesForall!1135 (List!68807 List!68807 Int) Unit!162363)

(assert (=> b!7097308 (= lt!2557455 (lemmaConcatPreservesForall!1135 (exprs!7340 c!9994) (exprs!7340 auxCtx!45) lambda!430594))))

(declare-fun b!7097309 () Bool)

(declare-fun tp!1950557 () Bool)

(assert (=> b!7097309 (= e!4266189 tp!1950557)))

(declare-fun b!7097310 () Bool)

(assert (=> b!7097310 (= e!4266189 tp_is_empty!44921)))

(declare-fun b!7097311 () Bool)

(declare-fun res!2898166 () Bool)

(assert (=> b!7097311 (=> (not res!2898166) (not e!4266192))))

(declare-fun a!1901 () C!35958)

(assert (=> b!7097311 (= res!2898166 (and (or (not (is-ElementMatch!17844 r!11554)) (not (= (c!1324387 r!11554) a!1901))) (not (is-Union!17844 r!11554))))))

(declare-fun b!7097312 () Bool)

(declare-fun nullable!7484 (Regex!17844) Bool)

(assert (=> b!7097312 (= e!4266188 (not (nullable!7484 (regOne!36200 r!11554))))))

(assert (= (and start!690866 res!2898163) b!7097311))

(assert (= (and b!7097311 res!2898166) b!7097301))

(assert (= (and b!7097301 (not res!2898165)) b!7097312))

(assert (= (and b!7097301 res!2898167) b!7097304))

(assert (= (and b!7097304 res!2898168) b!7097308))

(assert (= (and b!7097308 res!2898164) b!7097302))

(assert (= (and start!690866 (is-ElementMatch!17844 r!11554)) b!7097310))

(assert (= (and start!690866 (is-Concat!26689 r!11554)) b!7097306))

(assert (= (and start!690866 (is-Star!17844 r!11554)) b!7097309))

(assert (= (and start!690866 (is-Union!17844 r!11554)) b!7097305))

(assert (= start!690866 b!7097307))

(assert (= start!690866 b!7097303))

(declare-fun m!7824288 () Bool)

(assert (=> start!690866 m!7824288))

(declare-fun m!7824290 () Bool)

(assert (=> start!690866 m!7824290))

(declare-fun m!7824292 () Bool)

(assert (=> start!690866 m!7824292))

(declare-fun m!7824294 () Bool)

(assert (=> b!7097302 m!7824294))

(declare-fun m!7824296 () Bool)

(assert (=> b!7097308 m!7824296))

(declare-fun m!7824298 () Bool)

(assert (=> b!7097308 m!7824298))

(declare-fun m!7824300 () Bool)

(assert (=> b!7097312 m!7824300))

(push 1)

(assert tp_is_empty!44921)

(assert (not b!7097307))

(assert (not b!7097308))

(assert (not b!7097302))

(assert (not b!7097306))

(assert (not b!7097309))

(assert (not b!7097305))

(assert (not b!7097312))

(assert (not start!690866))

(assert (not b!7097303))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7097367 () Bool)

(declare-fun e!4266230 () Bool)

(declare-fun e!4266228 () Bool)

(assert (=> b!7097367 (= e!4266230 e!4266228)))

(declare-fun c!1324394 () Bool)

(assert (=> b!7097367 (= c!1324394 (is-Star!17844 r!11554))))

(declare-fun bm!645961 () Bool)

(declare-fun call!645967 () Bool)

(declare-fun c!1324393 () Bool)

(assert (=> bm!645961 (= call!645967 (validRegex!9119 (ite c!1324393 (regOne!36201 r!11554) (regTwo!36200 r!11554))))))

(declare-fun b!7097368 () Bool)

(declare-fun e!4266226 () Bool)

(assert (=> b!7097368 (= e!4266226 call!645967)))

(declare-fun b!7097369 () Bool)

(declare-fun res!2898201 () Bool)

(declare-fun e!4266225 () Bool)

(assert (=> b!7097369 (=> res!2898201 e!4266225)))

(assert (=> b!7097369 (= res!2898201 (not (is-Concat!26689 r!11554)))))

(declare-fun e!4266231 () Bool)

(assert (=> b!7097369 (= e!4266231 e!4266225)))

(declare-fun d!2218016 () Bool)

(declare-fun res!2898200 () Bool)

(assert (=> d!2218016 (=> res!2898200 e!4266230)))

(assert (=> d!2218016 (= res!2898200 (is-ElementMatch!17844 r!11554))))

(assert (=> d!2218016 (= (validRegex!9119 r!11554) e!4266230)))

(declare-fun b!7097370 () Bool)

(declare-fun e!4266227 () Bool)

(assert (=> b!7097370 (= e!4266228 e!4266227)))

(declare-fun res!2898198 () Bool)

(assert (=> b!7097370 (= res!2898198 (not (nullable!7484 (reg!18173 r!11554))))))

(assert (=> b!7097370 (=> (not res!2898198) (not e!4266227))))

(declare-fun b!7097371 () Bool)

(declare-fun e!4266229 () Bool)

(declare-fun call!645968 () Bool)

(assert (=> b!7097371 (= e!4266229 call!645968)))

(declare-fun b!7097372 () Bool)

(declare-fun res!2898197 () Bool)

(assert (=> b!7097372 (=> (not res!2898197) (not e!4266229))))

(assert (=> b!7097372 (= res!2898197 call!645967)))

(assert (=> b!7097372 (= e!4266231 e!4266229)))

(declare-fun b!7097373 () Bool)

(declare-fun call!645966 () Bool)

(assert (=> b!7097373 (= e!4266227 call!645966)))

(declare-fun bm!645962 () Bool)

(assert (=> bm!645962 (= call!645968 call!645966)))

(declare-fun b!7097374 () Bool)

(assert (=> b!7097374 (= e!4266225 e!4266226)))

(declare-fun res!2898199 () Bool)

(assert (=> b!7097374 (=> (not res!2898199) (not e!4266226))))

(assert (=> b!7097374 (= res!2898199 call!645968)))

(declare-fun b!7097375 () Bool)

(assert (=> b!7097375 (= e!4266228 e!4266231)))

(assert (=> b!7097375 (= c!1324393 (is-Union!17844 r!11554))))

(declare-fun bm!645963 () Bool)

(assert (=> bm!645963 (= call!645966 (validRegex!9119 (ite c!1324394 (reg!18173 r!11554) (ite c!1324393 (regTwo!36201 r!11554) (regOne!36200 r!11554)))))))

(assert (= (and d!2218016 (not res!2898200)) b!7097367))

(assert (= (and b!7097367 c!1324394) b!7097370))

(assert (= (and b!7097367 (not c!1324394)) b!7097375))

(assert (= (and b!7097370 res!2898198) b!7097373))

(assert (= (and b!7097375 c!1324393) b!7097372))

(assert (= (and b!7097375 (not c!1324393)) b!7097369))

(assert (= (and b!7097372 res!2898197) b!7097371))

(assert (= (and b!7097369 (not res!2898201)) b!7097374))

(assert (= (and b!7097374 res!2898199) b!7097368))

(assert (= (or b!7097372 b!7097368) bm!645961))

(assert (= (or b!7097371 b!7097374) bm!645962))

(assert (= (or b!7097373 bm!645962) bm!645963))

(declare-fun m!7824316 () Bool)

(assert (=> bm!645961 m!7824316))

(declare-fun m!7824318 () Bool)

(assert (=> b!7097370 m!7824318))

(declare-fun m!7824320 () Bool)

(assert (=> bm!645963 m!7824320))

(assert (=> start!690866 d!2218016))

(declare-fun bs!1884019 () Bool)

(declare-fun d!2218020 () Bool)

(assert (= bs!1884019 (and d!2218020 b!7097308)))

(declare-fun lambda!430602 () Int)

(assert (=> bs!1884019 (= lambda!430602 lambda!430594)))

(assert (=> d!2218020 (= (inv!87476 c!9994) (forall!16764 (exprs!7340 c!9994) lambda!430602))))

(declare-fun bs!1884020 () Bool)

(assert (= bs!1884020 d!2218020))

(declare-fun m!7824322 () Bool)

(assert (=> bs!1884020 m!7824322))

(assert (=> start!690866 d!2218020))

(declare-fun bs!1884021 () Bool)

(declare-fun d!2218022 () Bool)

(assert (= bs!1884021 (and d!2218022 b!7097308)))

(declare-fun lambda!430603 () Int)

(assert (=> bs!1884021 (= lambda!430603 lambda!430594)))

(declare-fun bs!1884022 () Bool)

(assert (= bs!1884022 (and d!2218022 d!2218020)))

(assert (=> bs!1884022 (= lambda!430603 lambda!430602)))

(assert (=> d!2218022 (= (inv!87476 auxCtx!45) (forall!16764 (exprs!7340 auxCtx!45) lambda!430603))))

(declare-fun bs!1884023 () Bool)

(assert (= bs!1884023 d!2218022))

(declare-fun m!7824324 () Bool)

(assert (=> bs!1884023 m!7824324))

(assert (=> start!690866 d!2218022))

(declare-fun d!2218024 () Bool)

(declare-fun res!2898212 () Bool)

(declare-fun e!4266242 () Bool)

(assert (=> d!2218024 (=> res!2898212 e!4266242)))

(assert (=> d!2218024 (= res!2898212 (is-Nil!68683 (exprs!7340 c!9994)))))

(assert (=> d!2218024 (= (forall!16764 (exprs!7340 c!9994) lambda!430594) e!4266242)))

(declare-fun b!7097386 () Bool)

(declare-fun e!4266243 () Bool)

(assert (=> b!7097386 (= e!4266242 e!4266243)))

(declare-fun res!2898213 () Bool)

(assert (=> b!7097386 (=> (not res!2898213) (not e!4266243))))

(declare-fun dynLambda!28029 (Int Regex!17844) Bool)

(assert (=> b!7097386 (= res!2898213 (dynLambda!28029 lambda!430594 (h!75131 (exprs!7340 c!9994))))))

(declare-fun b!7097387 () Bool)

(assert (=> b!7097387 (= e!4266243 (forall!16764 (t!382610 (exprs!7340 c!9994)) lambda!430594))))

(assert (= (and d!2218024 (not res!2898212)) b!7097386))

(assert (= (and b!7097386 res!2898213) b!7097387))

(declare-fun b_lambda!271203 () Bool)

(assert (=> (not b_lambda!271203) (not b!7097386)))

(declare-fun m!7824330 () Bool)

(assert (=> b!7097386 m!7824330))

(declare-fun m!7824332 () Bool)

(assert (=> b!7097387 m!7824332))

(assert (=> b!7097308 d!2218024))

(declare-fun d!2218028 () Bool)

(declare-fun ++!16004 (List!68807 List!68807) List!68807)

(assert (=> d!2218028 (forall!16764 (++!16004 (exprs!7340 c!9994) (exprs!7340 auxCtx!45)) lambda!430594)))

(declare-fun lt!2557461 () Unit!162363)

(declare-fun choose!54722 (List!68807 List!68807 Int) Unit!162363)

(assert (=> d!2218028 (= lt!2557461 (choose!54722 (exprs!7340 c!9994) (exprs!7340 auxCtx!45) lambda!430594))))

(assert (=> d!2218028 (forall!16764 (exprs!7340 c!9994) lambda!430594)))

(assert (=> d!2218028 (= (lemmaConcatPreservesForall!1135 (exprs!7340 c!9994) (exprs!7340 auxCtx!45) lambda!430594) lt!2557461)))

(declare-fun bs!1884024 () Bool)

(assert (= bs!1884024 d!2218028))

(declare-fun m!7824334 () Bool)

(assert (=> bs!1884024 m!7824334))

(assert (=> bs!1884024 m!7824334))

(declare-fun m!7824336 () Bool)

(assert (=> bs!1884024 m!7824336))

(declare-fun m!7824338 () Bool)

(assert (=> bs!1884024 m!7824338))

(assert (=> bs!1884024 m!7824296))

(assert (=> b!7097308 d!2218028))

(declare-fun d!2218030 () Bool)

(declare-fun res!2898214 () Bool)

(declare-fun e!4266244 () Bool)

(assert (=> d!2218030 (=> res!2898214 e!4266244)))

(assert (=> d!2218030 (= res!2898214 (is-Nil!68683 (exprs!7340 auxCtx!45)))))

(assert (=> d!2218030 (= (forall!16764 (exprs!7340 auxCtx!45) lambda!430594) e!4266244)))

(declare-fun b!7097388 () Bool)

(declare-fun e!4266245 () Bool)

(assert (=> b!7097388 (= e!4266244 e!4266245)))

(declare-fun res!2898215 () Bool)

(assert (=> b!7097388 (=> (not res!2898215) (not e!4266245))))

(assert (=> b!7097388 (= res!2898215 (dynLambda!28029 lambda!430594 (h!75131 (exprs!7340 auxCtx!45))))))

(declare-fun b!7097389 () Bool)

(assert (=> b!7097389 (= e!4266245 (forall!16764 (t!382610 (exprs!7340 auxCtx!45)) lambda!430594))))

(assert (= (and d!2218030 (not res!2898214)) b!7097388))

(assert (= (and b!7097388 res!2898215) b!7097389))

(declare-fun b_lambda!271205 () Bool)

(assert (=> (not b_lambda!271205) (not b!7097388)))

(declare-fun m!7824340 () Bool)

(assert (=> b!7097388 m!7824340))

(declare-fun m!7824342 () Bool)

(assert (=> b!7097389 m!7824342))

(assert (=> b!7097302 d!2218030))

(declare-fun d!2218032 () Bool)

(declare-fun nullableFct!2881 (Regex!17844) Bool)

(assert (=> d!2218032 (= (nullable!7484 (regOne!36200 r!11554)) (nullableFct!2881 (regOne!36200 r!11554)))))

(declare-fun bs!1884025 () Bool)

(assert (= bs!1884025 d!2218032))

(declare-fun m!7824344 () Bool)

(assert (=> bs!1884025 m!7824344))

(assert (=> b!7097312 d!2218032))

(declare-fun b!7097402 () Bool)

(declare-fun e!4266248 () Bool)

(declare-fun tp!1950596 () Bool)

(assert (=> b!7097402 (= e!4266248 tp!1950596)))

(declare-fun b!7097401 () Bool)

(declare-fun tp!1950595 () Bool)

(declare-fun tp!1950598 () Bool)

(assert (=> b!7097401 (= e!4266248 (and tp!1950595 tp!1950598))))

(declare-fun b!7097400 () Bool)

(assert (=> b!7097400 (= e!4266248 tp_is_empty!44921)))

(assert (=> b!7097306 (= tp!1950563 e!4266248)))

(declare-fun b!7097403 () Bool)

(declare-fun tp!1950597 () Bool)

(declare-fun tp!1950599 () Bool)

(assert (=> b!7097403 (= e!4266248 (and tp!1950597 tp!1950599))))

(assert (= (and b!7097306 (is-ElementMatch!17844 (regOne!36200 r!11554))) b!7097400))

(assert (= (and b!7097306 (is-Concat!26689 (regOne!36200 r!11554))) b!7097401))

(assert (= (and b!7097306 (is-Star!17844 (regOne!36200 r!11554))) b!7097402))

(assert (= (and b!7097306 (is-Union!17844 (regOne!36200 r!11554))) b!7097403))

(declare-fun b!7097406 () Bool)

(declare-fun e!4266249 () Bool)

(declare-fun tp!1950601 () Bool)

(assert (=> b!7097406 (= e!4266249 tp!1950601)))

(declare-fun b!7097405 () Bool)

(declare-fun tp!1950600 () Bool)

(declare-fun tp!1950603 () Bool)

(assert (=> b!7097405 (= e!4266249 (and tp!1950600 tp!1950603))))

(declare-fun b!7097404 () Bool)

(assert (=> b!7097404 (= e!4266249 tp_is_empty!44921)))

(assert (=> b!7097306 (= tp!1950560 e!4266249)))

(declare-fun b!7097407 () Bool)

(declare-fun tp!1950602 () Bool)

(declare-fun tp!1950604 () Bool)

(assert (=> b!7097407 (= e!4266249 (and tp!1950602 tp!1950604))))

(assert (= (and b!7097306 (is-ElementMatch!17844 (regTwo!36200 r!11554))) b!7097404))

(assert (= (and b!7097306 (is-Concat!26689 (regTwo!36200 r!11554))) b!7097405))

(assert (= (and b!7097306 (is-Star!17844 (regTwo!36200 r!11554))) b!7097406))

(assert (= (and b!7097306 (is-Union!17844 (regTwo!36200 r!11554))) b!7097407))

(declare-fun b!7097410 () Bool)

(declare-fun e!4266250 () Bool)

(declare-fun tp!1950606 () Bool)

(assert (=> b!7097410 (= e!4266250 tp!1950606)))

(declare-fun b!7097409 () Bool)

(declare-fun tp!1950605 () Bool)

(declare-fun tp!1950608 () Bool)

(assert (=> b!7097409 (= e!4266250 (and tp!1950605 tp!1950608))))

(declare-fun b!7097408 () Bool)

(assert (=> b!7097408 (= e!4266250 tp_is_empty!44921)))

(assert (=> b!7097305 (= tp!1950559 e!4266250)))

(declare-fun b!7097411 () Bool)

(declare-fun tp!1950607 () Bool)

(declare-fun tp!1950609 () Bool)

(assert (=> b!7097411 (= e!4266250 (and tp!1950607 tp!1950609))))

(assert (= (and b!7097305 (is-ElementMatch!17844 (regOne!36201 r!11554))) b!7097408))

(assert (= (and b!7097305 (is-Concat!26689 (regOne!36201 r!11554))) b!7097409))

(assert (= (and b!7097305 (is-Star!17844 (regOne!36201 r!11554))) b!7097410))

(assert (= (and b!7097305 (is-Union!17844 (regOne!36201 r!11554))) b!7097411))

(declare-fun b!7097414 () Bool)

(declare-fun e!4266251 () Bool)

(declare-fun tp!1950611 () Bool)

(assert (=> b!7097414 (= e!4266251 tp!1950611)))

(declare-fun b!7097413 () Bool)

(declare-fun tp!1950610 () Bool)

(declare-fun tp!1950613 () Bool)

(assert (=> b!7097413 (= e!4266251 (and tp!1950610 tp!1950613))))

(declare-fun b!7097412 () Bool)

(assert (=> b!7097412 (= e!4266251 tp_is_empty!44921)))

(assert (=> b!7097305 (= tp!1950561 e!4266251)))

(declare-fun b!7097415 () Bool)

(declare-fun tp!1950612 () Bool)

(declare-fun tp!1950614 () Bool)

(assert (=> b!7097415 (= e!4266251 (and tp!1950612 tp!1950614))))

(assert (= (and b!7097305 (is-ElementMatch!17844 (regTwo!36201 r!11554))) b!7097412))

(assert (= (and b!7097305 (is-Concat!26689 (regTwo!36201 r!11554))) b!7097413))

(assert (= (and b!7097305 (is-Star!17844 (regTwo!36201 r!11554))) b!7097414))

(assert (= (and b!7097305 (is-Union!17844 (regTwo!36201 r!11554))) b!7097415))

(declare-fun b!7097418 () Bool)

(declare-fun e!4266252 () Bool)

(declare-fun tp!1950616 () Bool)

(assert (=> b!7097418 (= e!4266252 tp!1950616)))

(declare-fun b!7097417 () Bool)

(declare-fun tp!1950615 () Bool)

(declare-fun tp!1950618 () Bool)

(assert (=> b!7097417 (= e!4266252 (and tp!1950615 tp!1950618))))

(declare-fun b!7097416 () Bool)

(assert (=> b!7097416 (= e!4266252 tp_is_empty!44921)))

(assert (=> b!7097309 (= tp!1950557 e!4266252)))

(declare-fun b!7097419 () Bool)

(declare-fun tp!1950617 () Bool)

(declare-fun tp!1950619 () Bool)

(assert (=> b!7097419 (= e!4266252 (and tp!1950617 tp!1950619))))

(assert (= (and b!7097309 (is-ElementMatch!17844 (reg!18173 r!11554))) b!7097416))

(assert (= (and b!7097309 (is-Concat!26689 (reg!18173 r!11554))) b!7097417))

(assert (= (and b!7097309 (is-Star!17844 (reg!18173 r!11554))) b!7097418))

(assert (= (and b!7097309 (is-Union!17844 (reg!18173 r!11554))) b!7097419))

(declare-fun b!7097426 () Bool)

(declare-fun e!4266257 () Bool)

(declare-fun tp!1950624 () Bool)

(declare-fun tp!1950625 () Bool)

(assert (=> b!7097426 (= e!4266257 (and tp!1950624 tp!1950625))))

(assert (=> b!7097303 (= tp!1950562 e!4266257)))

(assert (= (and b!7097303 (is-Cons!68683 (exprs!7340 auxCtx!45))) b!7097426))

(declare-fun b!7097427 () Bool)

(declare-fun e!4266258 () Bool)

(declare-fun tp!1950626 () Bool)

(declare-fun tp!1950627 () Bool)

(assert (=> b!7097427 (= e!4266258 (and tp!1950626 tp!1950627))))

(assert (=> b!7097307 (= tp!1950558 e!4266258)))

(assert (= (and b!7097307 (is-Cons!68683 (exprs!7340 c!9994))) b!7097427))

(declare-fun b_lambda!271209 () Bool)

(assert (= b_lambda!271203 (or b!7097308 b_lambda!271209)))

(declare-fun bs!1884027 () Bool)

(declare-fun d!2218038 () Bool)

(assert (= bs!1884027 (and d!2218038 b!7097308)))

(assert (=> bs!1884027 (= (dynLambda!28029 lambda!430594 (h!75131 (exprs!7340 c!9994))) (validRegex!9119 (h!75131 (exprs!7340 c!9994))))))

(declare-fun m!7824356 () Bool)

(assert (=> bs!1884027 m!7824356))

(assert (=> b!7097386 d!2218038))

(declare-fun b_lambda!271211 () Bool)

(assert (= b_lambda!271205 (or b!7097308 b_lambda!271211)))

(declare-fun bs!1884028 () Bool)

(declare-fun d!2218040 () Bool)

(assert (= bs!1884028 (and d!2218040 b!7097308)))

(assert (=> bs!1884028 (= (dynLambda!28029 lambda!430594 (h!75131 (exprs!7340 auxCtx!45))) (validRegex!9119 (h!75131 (exprs!7340 auxCtx!45))))))

(declare-fun m!7824358 () Bool)

(assert (=> bs!1884028 m!7824358))

(assert (=> b!7097388 d!2218040))

(push 1)

(assert (not d!2218020))

(assert (not b!7097426))

(assert (not d!2218028))

(assert (not b!7097414))

(assert (not bs!1884027))

(assert (not b!7097418))

(assert (not b!7097401))

(assert (not b!7097389))

(assert (not b!7097407))

(assert (not bm!645963))

(assert (not b!7097410))

(assert tp_is_empty!44921)

(assert (not d!2218022))

(assert (not bs!1884028))

(assert (not b!7097419))

(assert (not b!7097409))

(assert (not b!7097415))

(assert (not b_lambda!271211))

(assert (not b!7097413))

(assert (not b!7097406))

(assert (not b!7097405))

(assert (not b!7097403))

(assert (not b!7097402))

(assert (not b!7097387))

(assert (not d!2218032))

(assert (not b!7097417))

(assert (not b!7097427))

(assert (not b_lambda!271209))

(assert (not b!7097411))

(assert (not b!7097370))

(assert (not bm!645961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

