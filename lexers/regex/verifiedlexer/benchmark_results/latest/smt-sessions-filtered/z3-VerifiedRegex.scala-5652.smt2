; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282342 () Bool)

(assert start!282342)

(declare-fun res!1198397 () Bool)

(declare-fun e!1831215 () Bool)

(assert (=> start!282342 (=> (not res!1198397) (not e!1831215))))

(declare-datatypes ((C!17900 0))(
  ( (C!17901 (val!10984 Int)) )
))
(declare-datatypes ((Regex!8859 0))(
  ( (ElementMatch!8859 (c!472212 C!17900)) (Concat!14180 (regOne!18230 Regex!8859) (regTwo!18230 Regex!8859)) (EmptyExpr!8859) (Star!8859 (reg!9188 Regex!8859)) (EmptyLang!8859) (Union!8859 (regOne!18231 Regex!8859) (regTwo!18231 Regex!8859)) )
))
(declare-fun r!23079 () Regex!8859)

(declare-fun validRegex!3632 (Regex!8859) Bool)

(assert (=> start!282342 (= res!1198397 (validRegex!3632 r!23079))))

(assert (=> start!282342 e!1831215))

(declare-fun e!1831216 () Bool)

(assert (=> start!282342 e!1831216))

(declare-fun b!2899199 () Bool)

(declare-fun e!1831214 () Bool)

(assert (=> b!2899199 (= e!1831214 (validRegex!3632 (regTwo!18230 r!23079)))))

(declare-fun b!2899200 () Bool)

(declare-fun res!1198393 () Bool)

(assert (=> b!2899200 (=> (not res!1198393) (not e!1831215))))

(declare-datatypes ((List!34660 0))(
  ( (Nil!34536) (Cons!34536 (h!39956 C!17900) (t!233703 List!34660)) )
))
(declare-datatypes ((Option!6532 0))(
  ( (None!6531) (Some!6531 (v!34657 List!34660)) )
))
(declare-fun isDefined!5096 (Option!6532) Bool)

(declare-fun getLanguageWitness!566 (Regex!8859) Option!6532)

(assert (=> b!2899200 (= res!1198393 (isDefined!5096 (getLanguageWitness!566 r!23079)))))

(declare-fun b!2899201 () Bool)

(declare-fun tp_is_empty!15305 () Bool)

(assert (=> b!2899201 (= e!1831216 tp_is_empty!15305)))

(declare-fun b!2899202 () Bool)

(declare-fun e!1831218 () Bool)

(declare-fun e!1831219 () Bool)

(assert (=> b!2899202 (= e!1831218 (not e!1831219))))

(declare-fun res!1198399 () Bool)

(assert (=> b!2899202 (=> res!1198399 e!1831219)))

(declare-fun lt!1021951 () Option!6532)

(declare-fun matchR!3817 (Regex!8859 List!34660) Bool)

(assert (=> b!2899202 (= res!1198399 (not (matchR!3817 (regOne!18230 r!23079) (v!34657 lt!1021951))))))

(declare-fun lt!1021954 () Option!6532)

(declare-fun get!10479 (Option!6532) List!34660)

(assert (=> b!2899202 (matchR!3817 (regTwo!18230 r!23079) (get!10479 lt!1021954))))

(declare-datatypes ((Unit!48123 0))(
  ( (Unit!48124) )
))
(declare-fun lt!1021953 () Unit!48123)

(declare-fun lemmaGetWitnessMatches!116 (Regex!8859) Unit!48123)

(assert (=> b!2899202 (= lt!1021953 (lemmaGetWitnessMatches!116 (regTwo!18230 r!23079)))))

(assert (=> b!2899202 (matchR!3817 (regOne!18230 r!23079) (get!10479 lt!1021951))))

(declare-fun lt!1021952 () Unit!48123)

(assert (=> b!2899202 (= lt!1021952 (lemmaGetWitnessMatches!116 (regOne!18230 r!23079)))))

(declare-fun b!2899203 () Bool)

(declare-fun tp!930476 () Bool)

(declare-fun tp!930475 () Bool)

(assert (=> b!2899203 (= e!1831216 (and tp!930476 tp!930475))))

(declare-fun b!2899204 () Bool)

(declare-fun res!1198398 () Bool)

(assert (=> b!2899204 (=> (not res!1198398) (not e!1831215))))

(get-info :version)

(assert (=> b!2899204 (= res!1198398 (and (not ((_ is EmptyExpr!8859) r!23079)) (not ((_ is EmptyLang!8859) r!23079)) (not ((_ is ElementMatch!8859) r!23079)) (not ((_ is Star!8859) r!23079)) (not ((_ is Union!8859) r!23079))))))

(declare-fun b!2899205 () Bool)

(assert (=> b!2899205 (= e!1831219 e!1831214)))

(declare-fun res!1198394 () Bool)

(assert (=> b!2899205 (=> (not res!1198394) (not e!1831214))))

(assert (=> b!2899205 (= res!1198394 (validRegex!3632 (regOne!18230 r!23079)))))

(declare-fun b!2899206 () Bool)

(declare-fun e!1831217 () Bool)

(assert (=> b!2899206 (= e!1831217 e!1831218)))

(declare-fun res!1198392 () Bool)

(assert (=> b!2899206 (=> (not res!1198392) (not e!1831218))))

(assert (=> b!2899206 (= res!1198392 ((_ is Some!6531) lt!1021954))))

(assert (=> b!2899206 (= lt!1021954 (getLanguageWitness!566 (regTwo!18230 r!23079)))))

(declare-fun b!2899207 () Bool)

(declare-fun tp!930478 () Bool)

(assert (=> b!2899207 (= e!1831216 tp!930478)))

(declare-fun b!2899208 () Bool)

(declare-fun tp!930477 () Bool)

(declare-fun tp!930479 () Bool)

(assert (=> b!2899208 (= e!1831216 (and tp!930477 tp!930479))))

(declare-fun b!2899209 () Bool)

(declare-fun res!1198396 () Bool)

(assert (=> b!2899209 (=> res!1198396 e!1831219)))

(assert (=> b!2899209 (= res!1198396 (not (matchR!3817 (regTwo!18230 r!23079) (v!34657 lt!1021954))))))

(declare-fun b!2899210 () Bool)

(assert (=> b!2899210 (= e!1831215 e!1831217)))

(declare-fun res!1198395 () Bool)

(assert (=> b!2899210 (=> (not res!1198395) (not e!1831217))))

(assert (=> b!2899210 (= res!1198395 ((_ is Some!6531) lt!1021951))))

(assert (=> b!2899210 (= lt!1021951 (getLanguageWitness!566 (regOne!18230 r!23079)))))

(assert (= (and start!282342 res!1198397) b!2899200))

(assert (= (and b!2899200 res!1198393) b!2899204))

(assert (= (and b!2899204 res!1198398) b!2899210))

(assert (= (and b!2899210 res!1198395) b!2899206))

(assert (= (and b!2899206 res!1198392) b!2899202))

(assert (= (and b!2899202 (not res!1198399)) b!2899209))

(assert (= (and b!2899209 (not res!1198396)) b!2899205))

(assert (= (and b!2899205 res!1198394) b!2899199))

(assert (= (and start!282342 ((_ is ElementMatch!8859) r!23079)) b!2899201))

(assert (= (and start!282342 ((_ is Concat!14180) r!23079)) b!2899208))

(assert (= (and start!282342 ((_ is Star!8859) r!23079)) b!2899207))

(assert (= (and start!282342 ((_ is Union!8859) r!23079)) b!2899203))

(declare-fun m!3305345 () Bool)

(assert (=> b!2899200 m!3305345))

(assert (=> b!2899200 m!3305345))

(declare-fun m!3305347 () Bool)

(assert (=> b!2899200 m!3305347))

(declare-fun m!3305349 () Bool)

(assert (=> b!2899209 m!3305349))

(declare-fun m!3305351 () Bool)

(assert (=> start!282342 m!3305351))

(declare-fun m!3305353 () Bool)

(assert (=> b!2899206 m!3305353))

(declare-fun m!3305355 () Bool)

(assert (=> b!2899205 m!3305355))

(declare-fun m!3305357 () Bool)

(assert (=> b!2899199 m!3305357))

(declare-fun m!3305359 () Bool)

(assert (=> b!2899202 m!3305359))

(declare-fun m!3305361 () Bool)

(assert (=> b!2899202 m!3305361))

(declare-fun m!3305363 () Bool)

(assert (=> b!2899202 m!3305363))

(declare-fun m!3305365 () Bool)

(assert (=> b!2899202 m!3305365))

(declare-fun m!3305367 () Bool)

(assert (=> b!2899202 m!3305367))

(assert (=> b!2899202 m!3305363))

(declare-fun m!3305369 () Bool)

(assert (=> b!2899202 m!3305369))

(assert (=> b!2899202 m!3305369))

(declare-fun m!3305371 () Bool)

(assert (=> b!2899202 m!3305371))

(declare-fun m!3305373 () Bool)

(assert (=> b!2899210 m!3305373))

(check-sat (not b!2899210) (not b!2899205) (not b!2899200) (not b!2899207) (not b!2899199) (not b!2899209) (not b!2899208) tp_is_empty!15305 (not b!2899202) (not b!2899203) (not start!282342) (not b!2899206))
(check-sat)
(get-model)

(declare-fun b!2899285 () Bool)

(declare-fun c!472240 () Bool)

(assert (=> b!2899285 (= c!472240 ((_ is Union!8859) (regOne!18230 r!23079)))))

(declare-fun e!1831263 () Option!6532)

(declare-fun e!1831258 () Option!6532)

(assert (=> b!2899285 (= e!1831263 e!1831258)))

(declare-fun b!2899286 () Bool)

(declare-fun e!1831259 () Option!6532)

(assert (=> b!2899286 (= e!1831258 e!1831259)))

(declare-fun lt!1021966 () Option!6532)

(declare-fun call!188831 () Option!6532)

(assert (=> b!2899286 (= lt!1021966 call!188831)))

(declare-fun c!472245 () Bool)

(assert (=> b!2899286 (= c!472245 ((_ is Some!6531) lt!1021966))))

(declare-fun d!835231 () Bool)

(declare-fun c!472242 () Bool)

(assert (=> d!835231 (= c!472242 ((_ is EmptyExpr!8859) (regOne!18230 r!23079)))))

(declare-fun e!1831257 () Option!6532)

(assert (=> d!835231 (= (getLanguageWitness!566 (regOne!18230 r!23079)) e!1831257)))

(declare-fun bm!188825 () Bool)

(declare-fun call!188830 () Option!6532)

(assert (=> bm!188825 (= call!188830 (getLanguageWitness!566 (ite c!472240 (regOne!18231 (regOne!18230 r!23079)) (regTwo!18230 (regOne!18230 r!23079)))))))

(declare-fun b!2899287 () Bool)

(declare-fun e!1831264 () Option!6532)

(assert (=> b!2899287 (= e!1831258 e!1831264)))

(declare-fun lt!1021964 () Option!6532)

(assert (=> b!2899287 (= lt!1021964 call!188830)))

(declare-fun c!472239 () Bool)

(assert (=> b!2899287 (= c!472239 ((_ is Some!6531) lt!1021964))))

(declare-fun b!2899288 () Bool)

(declare-fun e!1831261 () Option!6532)

(declare-fun lt!1021965 () Option!6532)

(declare-fun ++!8256 (List!34660 List!34660) List!34660)

(assert (=> b!2899288 (= e!1831261 (Some!6531 (++!8256 (v!34657 lt!1021966) (v!34657 lt!1021965))))))

(declare-fun b!2899289 () Bool)

(assert (=> b!2899289 (= e!1831257 (Some!6531 Nil!34536))))

(declare-fun b!2899290 () Bool)

(declare-fun c!472243 () Bool)

(assert (=> b!2899290 (= c!472243 ((_ is ElementMatch!8859) (regOne!18230 r!23079)))))

(declare-fun e!1831260 () Option!6532)

(declare-fun e!1831262 () Option!6532)

(assert (=> b!2899290 (= e!1831260 e!1831262)))

(declare-fun b!2899291 () Bool)

(assert (=> b!2899291 (= e!1831259 None!6531)))

(declare-fun b!2899292 () Bool)

(assert (=> b!2899292 (= e!1831257 e!1831260)))

(declare-fun c!472238 () Bool)

(assert (=> b!2899292 (= c!472238 ((_ is EmptyLang!8859) (regOne!18230 r!23079)))))

(declare-fun b!2899293 () Bool)

(assert (=> b!2899293 (= e!1831263 (Some!6531 Nil!34536))))

(declare-fun b!2899294 () Bool)

(assert (=> b!2899294 (= e!1831261 None!6531)))

(declare-fun b!2899295 () Bool)

(assert (=> b!2899295 (= e!1831264 call!188831)))

(declare-fun b!2899296 () Bool)

(assert (=> b!2899296 (= e!1831260 None!6531)))

(declare-fun b!2899297 () Bool)

(assert (=> b!2899297 (= e!1831262 e!1831263)))

(declare-fun c!472241 () Bool)

(assert (=> b!2899297 (= c!472241 ((_ is Star!8859) (regOne!18230 r!23079)))))

(declare-fun b!2899298 () Bool)

(declare-fun c!472244 () Bool)

(assert (=> b!2899298 (= c!472244 ((_ is Some!6531) lt!1021965))))

(assert (=> b!2899298 (= lt!1021965 call!188830)))

(assert (=> b!2899298 (= e!1831259 e!1831261)))

(declare-fun b!2899299 () Bool)

(assert (=> b!2899299 (= e!1831262 (Some!6531 (Cons!34536 (c!472212 (regOne!18230 r!23079)) Nil!34536)))))

(declare-fun b!2899300 () Bool)

(assert (=> b!2899300 (= e!1831264 lt!1021964)))

(declare-fun bm!188826 () Bool)

(assert (=> bm!188826 (= call!188831 (getLanguageWitness!566 (ite c!472240 (regTwo!18231 (regOne!18230 r!23079)) (regOne!18230 (regOne!18230 r!23079)))))))

(assert (= (and d!835231 c!472242) b!2899289))

(assert (= (and d!835231 (not c!472242)) b!2899292))

(assert (= (and b!2899292 c!472238) b!2899296))

(assert (= (and b!2899292 (not c!472238)) b!2899290))

(assert (= (and b!2899290 c!472243) b!2899299))

(assert (= (and b!2899290 (not c!472243)) b!2899297))

(assert (= (and b!2899297 c!472241) b!2899293))

(assert (= (and b!2899297 (not c!472241)) b!2899285))

(assert (= (and b!2899285 c!472240) b!2899287))

(assert (= (and b!2899285 (not c!472240)) b!2899286))

(assert (= (and b!2899287 c!472239) b!2899300))

(assert (= (and b!2899287 (not c!472239)) b!2899295))

(assert (= (and b!2899286 c!472245) b!2899298))

(assert (= (and b!2899286 (not c!472245)) b!2899291))

(assert (= (and b!2899298 c!472244) b!2899288))

(assert (= (and b!2899298 (not c!472244)) b!2899294))

(assert (= (or b!2899295 b!2899286) bm!188826))

(assert (= (or b!2899287 b!2899298) bm!188825))

(declare-fun m!3305387 () Bool)

(assert (=> bm!188825 m!3305387))

(declare-fun m!3305389 () Bool)

(assert (=> b!2899288 m!3305389))

(declare-fun m!3305393 () Bool)

(assert (=> bm!188826 m!3305393))

(assert (=> b!2899210 d!835231))

(declare-fun b!2899346 () Bool)

(declare-fun e!1831302 () Bool)

(declare-fun e!1831304 () Bool)

(assert (=> b!2899346 (= e!1831302 e!1831304)))

(declare-fun res!1198451 () Bool)

(declare-fun nullable!2759 (Regex!8859) Bool)

(assert (=> b!2899346 (= res!1198451 (not (nullable!2759 (reg!9188 (regOne!18230 r!23079)))))))

(assert (=> b!2899346 (=> (not res!1198451) (not e!1831304))))

(declare-fun bm!188842 () Bool)

(declare-fun call!188849 () Bool)

(declare-fun call!188847 () Bool)

(assert (=> bm!188842 (= call!188849 call!188847)))

(declare-fun c!472257 () Bool)

(declare-fun c!472256 () Bool)

(declare-fun bm!188843 () Bool)

(assert (=> bm!188843 (= call!188847 (validRegex!3632 (ite c!472257 (reg!9188 (regOne!18230 r!23079)) (ite c!472256 (regTwo!18231 (regOne!18230 r!23079)) (regTwo!18230 (regOne!18230 r!23079))))))))

(declare-fun b!2899347 () Bool)

(assert (=> b!2899347 (= e!1831304 call!188847)))

(declare-fun b!2899348 () Bool)

(declare-fun e!1831306 () Bool)

(assert (=> b!2899348 (= e!1831306 call!188849)))

(declare-fun bm!188844 () Bool)

(declare-fun call!188848 () Bool)

(assert (=> bm!188844 (= call!188848 (validRegex!3632 (ite c!472256 (regOne!18231 (regOne!18230 r!23079)) (regOne!18230 (regOne!18230 r!23079)))))))

(declare-fun b!2899349 () Bool)

(declare-fun e!1831301 () Bool)

(assert (=> b!2899349 (= e!1831301 e!1831302)))

(assert (=> b!2899349 (= c!472257 ((_ is Star!8859) (regOne!18230 r!23079)))))

(declare-fun b!2899350 () Bool)

(declare-fun res!1198450 () Bool)

(declare-fun e!1831300 () Bool)

(assert (=> b!2899350 (=> res!1198450 e!1831300)))

(assert (=> b!2899350 (= res!1198450 (not ((_ is Concat!14180) (regOne!18230 r!23079))))))

(declare-fun e!1831305 () Bool)

(assert (=> b!2899350 (= e!1831305 e!1831300)))

(declare-fun d!835233 () Bool)

(declare-fun res!1198452 () Bool)

(assert (=> d!835233 (=> res!1198452 e!1831301)))

(assert (=> d!835233 (= res!1198452 ((_ is ElementMatch!8859) (regOne!18230 r!23079)))))

(assert (=> d!835233 (= (validRegex!3632 (regOne!18230 r!23079)) e!1831301)))

(declare-fun b!2899351 () Bool)

(declare-fun e!1831303 () Bool)

(assert (=> b!2899351 (= e!1831303 call!188849)))

(declare-fun b!2899352 () Bool)

(assert (=> b!2899352 (= e!1831300 e!1831306)))

(declare-fun res!1198453 () Bool)

(assert (=> b!2899352 (=> (not res!1198453) (not e!1831306))))

(assert (=> b!2899352 (= res!1198453 call!188848)))

(declare-fun b!2899353 () Bool)

(declare-fun res!1198449 () Bool)

(assert (=> b!2899353 (=> (not res!1198449) (not e!1831303))))

(assert (=> b!2899353 (= res!1198449 call!188848)))

(assert (=> b!2899353 (= e!1831305 e!1831303)))

(declare-fun b!2899354 () Bool)

(assert (=> b!2899354 (= e!1831302 e!1831305)))

(assert (=> b!2899354 (= c!472256 ((_ is Union!8859) (regOne!18230 r!23079)))))

(assert (= (and d!835233 (not res!1198452)) b!2899349))

(assert (= (and b!2899349 c!472257) b!2899346))

(assert (= (and b!2899349 (not c!472257)) b!2899354))

(assert (= (and b!2899346 res!1198451) b!2899347))

(assert (= (and b!2899354 c!472256) b!2899353))

(assert (= (and b!2899354 (not c!472256)) b!2899350))

(assert (= (and b!2899353 res!1198449) b!2899351))

(assert (= (and b!2899350 (not res!1198450)) b!2899352))

(assert (= (and b!2899352 res!1198453) b!2899348))

(assert (= (or b!2899351 b!2899348) bm!188842))

(assert (= (or b!2899353 b!2899352) bm!188844))

(assert (= (or b!2899347 bm!188842) bm!188843))

(declare-fun m!3305397 () Bool)

(assert (=> b!2899346 m!3305397))

(declare-fun m!3305401 () Bool)

(assert (=> bm!188843 m!3305401))

(declare-fun m!3305405 () Bool)

(assert (=> bm!188844 m!3305405))

(assert (=> b!2899205 d!835233))

(declare-fun b!2899355 () Bool)

(declare-fun e!1831309 () Bool)

(declare-fun e!1831311 () Bool)

(assert (=> b!2899355 (= e!1831309 e!1831311)))

(declare-fun res!1198456 () Bool)

(assert (=> b!2899355 (= res!1198456 (not (nullable!2759 (reg!9188 (regTwo!18230 r!23079)))))))

(assert (=> b!2899355 (=> (not res!1198456) (not e!1831311))))

(declare-fun bm!188845 () Bool)

(declare-fun call!188852 () Bool)

(declare-fun call!188850 () Bool)

(assert (=> bm!188845 (= call!188852 call!188850)))

(declare-fun c!472258 () Bool)

(declare-fun c!472259 () Bool)

(declare-fun bm!188846 () Bool)

(assert (=> bm!188846 (= call!188850 (validRegex!3632 (ite c!472259 (reg!9188 (regTwo!18230 r!23079)) (ite c!472258 (regTwo!18231 (regTwo!18230 r!23079)) (regTwo!18230 (regTwo!18230 r!23079))))))))

(declare-fun b!2899356 () Bool)

(assert (=> b!2899356 (= e!1831311 call!188850)))

(declare-fun b!2899357 () Bool)

(declare-fun e!1831313 () Bool)

(assert (=> b!2899357 (= e!1831313 call!188852)))

(declare-fun bm!188847 () Bool)

(declare-fun call!188851 () Bool)

(assert (=> bm!188847 (= call!188851 (validRegex!3632 (ite c!472258 (regOne!18231 (regTwo!18230 r!23079)) (regOne!18230 (regTwo!18230 r!23079)))))))

(declare-fun b!2899358 () Bool)

(declare-fun e!1831308 () Bool)

(assert (=> b!2899358 (= e!1831308 e!1831309)))

(assert (=> b!2899358 (= c!472259 ((_ is Star!8859) (regTwo!18230 r!23079)))))

(declare-fun b!2899359 () Bool)

(declare-fun res!1198455 () Bool)

(declare-fun e!1831307 () Bool)

(assert (=> b!2899359 (=> res!1198455 e!1831307)))

(assert (=> b!2899359 (= res!1198455 (not ((_ is Concat!14180) (regTwo!18230 r!23079))))))

(declare-fun e!1831312 () Bool)

(assert (=> b!2899359 (= e!1831312 e!1831307)))

(declare-fun d!835239 () Bool)

(declare-fun res!1198457 () Bool)

(assert (=> d!835239 (=> res!1198457 e!1831308)))

(assert (=> d!835239 (= res!1198457 ((_ is ElementMatch!8859) (regTwo!18230 r!23079)))))

(assert (=> d!835239 (= (validRegex!3632 (regTwo!18230 r!23079)) e!1831308)))

(declare-fun b!2899360 () Bool)

(declare-fun e!1831310 () Bool)

(assert (=> b!2899360 (= e!1831310 call!188852)))

(declare-fun b!2899361 () Bool)

(assert (=> b!2899361 (= e!1831307 e!1831313)))

(declare-fun res!1198458 () Bool)

(assert (=> b!2899361 (=> (not res!1198458) (not e!1831313))))

(assert (=> b!2899361 (= res!1198458 call!188851)))

(declare-fun b!2899362 () Bool)

(declare-fun res!1198454 () Bool)

(assert (=> b!2899362 (=> (not res!1198454) (not e!1831310))))

(assert (=> b!2899362 (= res!1198454 call!188851)))

(assert (=> b!2899362 (= e!1831312 e!1831310)))

(declare-fun b!2899363 () Bool)

(assert (=> b!2899363 (= e!1831309 e!1831312)))

(assert (=> b!2899363 (= c!472258 ((_ is Union!8859) (regTwo!18230 r!23079)))))

(assert (= (and d!835239 (not res!1198457)) b!2899358))

(assert (= (and b!2899358 c!472259) b!2899355))

(assert (= (and b!2899358 (not c!472259)) b!2899363))

(assert (= (and b!2899355 res!1198456) b!2899356))

(assert (= (and b!2899363 c!472258) b!2899362))

(assert (= (and b!2899363 (not c!472258)) b!2899359))

(assert (= (and b!2899362 res!1198454) b!2899360))

(assert (= (and b!2899359 (not res!1198455)) b!2899361))

(assert (= (and b!2899361 res!1198458) b!2899357))

(assert (= (or b!2899360 b!2899357) bm!188845))

(assert (= (or b!2899362 b!2899361) bm!188847))

(assert (= (or b!2899356 bm!188845) bm!188846))

(declare-fun m!3305407 () Bool)

(assert (=> b!2899355 m!3305407))

(declare-fun m!3305409 () Bool)

(assert (=> bm!188846 m!3305409))

(declare-fun m!3305411 () Bool)

(assert (=> bm!188847 m!3305411))

(assert (=> b!2899199 d!835239))

(declare-fun b!2899364 () Bool)

(declare-fun e!1831316 () Bool)

(declare-fun e!1831318 () Bool)

(assert (=> b!2899364 (= e!1831316 e!1831318)))

(declare-fun res!1198461 () Bool)

(assert (=> b!2899364 (= res!1198461 (not (nullable!2759 (reg!9188 r!23079))))))

(assert (=> b!2899364 (=> (not res!1198461) (not e!1831318))))

(declare-fun bm!188848 () Bool)

(declare-fun call!188855 () Bool)

(declare-fun call!188853 () Bool)

(assert (=> bm!188848 (= call!188855 call!188853)))

(declare-fun c!472260 () Bool)

(declare-fun bm!188849 () Bool)

(declare-fun c!472261 () Bool)

(assert (=> bm!188849 (= call!188853 (validRegex!3632 (ite c!472261 (reg!9188 r!23079) (ite c!472260 (regTwo!18231 r!23079) (regTwo!18230 r!23079)))))))

(declare-fun b!2899365 () Bool)

(assert (=> b!2899365 (= e!1831318 call!188853)))

(declare-fun b!2899366 () Bool)

(declare-fun e!1831320 () Bool)

(assert (=> b!2899366 (= e!1831320 call!188855)))

(declare-fun bm!188850 () Bool)

(declare-fun call!188854 () Bool)

(assert (=> bm!188850 (= call!188854 (validRegex!3632 (ite c!472260 (regOne!18231 r!23079) (regOne!18230 r!23079))))))

(declare-fun b!2899367 () Bool)

(declare-fun e!1831315 () Bool)

(assert (=> b!2899367 (= e!1831315 e!1831316)))

(assert (=> b!2899367 (= c!472261 ((_ is Star!8859) r!23079))))

(declare-fun b!2899368 () Bool)

(declare-fun res!1198460 () Bool)

(declare-fun e!1831314 () Bool)

(assert (=> b!2899368 (=> res!1198460 e!1831314)))

(assert (=> b!2899368 (= res!1198460 (not ((_ is Concat!14180) r!23079)))))

(declare-fun e!1831319 () Bool)

(assert (=> b!2899368 (= e!1831319 e!1831314)))

(declare-fun d!835241 () Bool)

(declare-fun res!1198462 () Bool)

(assert (=> d!835241 (=> res!1198462 e!1831315)))

(assert (=> d!835241 (= res!1198462 ((_ is ElementMatch!8859) r!23079))))

(assert (=> d!835241 (= (validRegex!3632 r!23079) e!1831315)))

(declare-fun b!2899369 () Bool)

(declare-fun e!1831317 () Bool)

(assert (=> b!2899369 (= e!1831317 call!188855)))

(declare-fun b!2899370 () Bool)

(assert (=> b!2899370 (= e!1831314 e!1831320)))

(declare-fun res!1198463 () Bool)

(assert (=> b!2899370 (=> (not res!1198463) (not e!1831320))))

(assert (=> b!2899370 (= res!1198463 call!188854)))

(declare-fun b!2899371 () Bool)

(declare-fun res!1198459 () Bool)

(assert (=> b!2899371 (=> (not res!1198459) (not e!1831317))))

(assert (=> b!2899371 (= res!1198459 call!188854)))

(assert (=> b!2899371 (= e!1831319 e!1831317)))

(declare-fun b!2899372 () Bool)

(assert (=> b!2899372 (= e!1831316 e!1831319)))

(assert (=> b!2899372 (= c!472260 ((_ is Union!8859) r!23079))))

(assert (= (and d!835241 (not res!1198462)) b!2899367))

(assert (= (and b!2899367 c!472261) b!2899364))

(assert (= (and b!2899367 (not c!472261)) b!2899372))

(assert (= (and b!2899364 res!1198461) b!2899365))

(assert (= (and b!2899372 c!472260) b!2899371))

(assert (= (and b!2899372 (not c!472260)) b!2899368))

(assert (= (and b!2899371 res!1198459) b!2899369))

(assert (= (and b!2899368 (not res!1198460)) b!2899370))

(assert (= (and b!2899370 res!1198463) b!2899366))

(assert (= (or b!2899369 b!2899366) bm!188848))

(assert (= (or b!2899371 b!2899370) bm!188850))

(assert (= (or b!2899365 bm!188848) bm!188849))

(declare-fun m!3305413 () Bool)

(assert (=> b!2899364 m!3305413))

(declare-fun m!3305415 () Bool)

(assert (=> bm!188849 m!3305415))

(declare-fun m!3305417 () Bool)

(assert (=> bm!188850 m!3305417))

(assert (=> start!282342 d!835241))

(declare-fun b!2899373 () Bool)

(declare-fun c!472264 () Bool)

(assert (=> b!2899373 (= c!472264 ((_ is Union!8859) (regTwo!18230 r!23079)))))

(declare-fun e!1831327 () Option!6532)

(declare-fun e!1831322 () Option!6532)

(assert (=> b!2899373 (= e!1831327 e!1831322)))

(declare-fun b!2899374 () Bool)

(declare-fun e!1831323 () Option!6532)

(assert (=> b!2899374 (= e!1831322 e!1831323)))

(declare-fun lt!1021969 () Option!6532)

(declare-fun call!188857 () Option!6532)

(assert (=> b!2899374 (= lt!1021969 call!188857)))

(declare-fun c!472269 () Bool)

(assert (=> b!2899374 (= c!472269 ((_ is Some!6531) lt!1021969))))

(declare-fun d!835243 () Bool)

(declare-fun c!472266 () Bool)

(assert (=> d!835243 (= c!472266 ((_ is EmptyExpr!8859) (regTwo!18230 r!23079)))))

(declare-fun e!1831321 () Option!6532)

(assert (=> d!835243 (= (getLanguageWitness!566 (regTwo!18230 r!23079)) e!1831321)))

(declare-fun bm!188851 () Bool)

(declare-fun call!188856 () Option!6532)

(assert (=> bm!188851 (= call!188856 (getLanguageWitness!566 (ite c!472264 (regOne!18231 (regTwo!18230 r!23079)) (regTwo!18230 (regTwo!18230 r!23079)))))))

(declare-fun b!2899375 () Bool)

(declare-fun e!1831328 () Option!6532)

(assert (=> b!2899375 (= e!1831322 e!1831328)))

(declare-fun lt!1021967 () Option!6532)

(assert (=> b!2899375 (= lt!1021967 call!188856)))

(declare-fun c!472263 () Bool)

(assert (=> b!2899375 (= c!472263 ((_ is Some!6531) lt!1021967))))

(declare-fun b!2899376 () Bool)

(declare-fun e!1831325 () Option!6532)

(declare-fun lt!1021968 () Option!6532)

(assert (=> b!2899376 (= e!1831325 (Some!6531 (++!8256 (v!34657 lt!1021969) (v!34657 lt!1021968))))))

(declare-fun b!2899377 () Bool)

(assert (=> b!2899377 (= e!1831321 (Some!6531 Nil!34536))))

(declare-fun b!2899378 () Bool)

(declare-fun c!472267 () Bool)

(assert (=> b!2899378 (= c!472267 ((_ is ElementMatch!8859) (regTwo!18230 r!23079)))))

(declare-fun e!1831324 () Option!6532)

(declare-fun e!1831326 () Option!6532)

(assert (=> b!2899378 (= e!1831324 e!1831326)))

(declare-fun b!2899379 () Bool)

(assert (=> b!2899379 (= e!1831323 None!6531)))

(declare-fun b!2899380 () Bool)

(assert (=> b!2899380 (= e!1831321 e!1831324)))

(declare-fun c!472262 () Bool)

(assert (=> b!2899380 (= c!472262 ((_ is EmptyLang!8859) (regTwo!18230 r!23079)))))

(declare-fun b!2899381 () Bool)

(assert (=> b!2899381 (= e!1831327 (Some!6531 Nil!34536))))

(declare-fun b!2899382 () Bool)

(assert (=> b!2899382 (= e!1831325 None!6531)))

(declare-fun b!2899383 () Bool)

(assert (=> b!2899383 (= e!1831328 call!188857)))

(declare-fun b!2899384 () Bool)

(assert (=> b!2899384 (= e!1831324 None!6531)))

(declare-fun b!2899385 () Bool)

(assert (=> b!2899385 (= e!1831326 e!1831327)))

(declare-fun c!472265 () Bool)

(assert (=> b!2899385 (= c!472265 ((_ is Star!8859) (regTwo!18230 r!23079)))))

(declare-fun b!2899386 () Bool)

(declare-fun c!472268 () Bool)

(assert (=> b!2899386 (= c!472268 ((_ is Some!6531) lt!1021968))))

(assert (=> b!2899386 (= lt!1021968 call!188856)))

(assert (=> b!2899386 (= e!1831323 e!1831325)))

(declare-fun b!2899387 () Bool)

(assert (=> b!2899387 (= e!1831326 (Some!6531 (Cons!34536 (c!472212 (regTwo!18230 r!23079)) Nil!34536)))))

(declare-fun b!2899388 () Bool)

(assert (=> b!2899388 (= e!1831328 lt!1021967)))

(declare-fun bm!188852 () Bool)

(assert (=> bm!188852 (= call!188857 (getLanguageWitness!566 (ite c!472264 (regTwo!18231 (regTwo!18230 r!23079)) (regOne!18230 (regTwo!18230 r!23079)))))))

(assert (= (and d!835243 c!472266) b!2899377))

(assert (= (and d!835243 (not c!472266)) b!2899380))

(assert (= (and b!2899380 c!472262) b!2899384))

(assert (= (and b!2899380 (not c!472262)) b!2899378))

(assert (= (and b!2899378 c!472267) b!2899387))

(assert (= (and b!2899378 (not c!472267)) b!2899385))

(assert (= (and b!2899385 c!472265) b!2899381))

(assert (= (and b!2899385 (not c!472265)) b!2899373))

(assert (= (and b!2899373 c!472264) b!2899375))

(assert (= (and b!2899373 (not c!472264)) b!2899374))

(assert (= (and b!2899375 c!472263) b!2899388))

(assert (= (and b!2899375 (not c!472263)) b!2899383))

(assert (= (and b!2899374 c!472269) b!2899386))

(assert (= (and b!2899374 (not c!472269)) b!2899379))

(assert (= (and b!2899386 c!472268) b!2899376))

(assert (= (and b!2899386 (not c!472268)) b!2899382))

(assert (= (or b!2899383 b!2899374) bm!188852))

(assert (= (or b!2899375 b!2899386) bm!188851))

(declare-fun m!3305419 () Bool)

(assert (=> bm!188851 m!3305419))

(declare-fun m!3305421 () Bool)

(assert (=> b!2899376 m!3305421))

(declare-fun m!3305423 () Bool)

(assert (=> bm!188852 m!3305423))

(assert (=> b!2899206 d!835243))

(declare-fun d!835245 () Bool)

(declare-fun isEmpty!18850 (Option!6532) Bool)

(assert (=> d!835245 (= (isDefined!5096 (getLanguageWitness!566 r!23079)) (not (isEmpty!18850 (getLanguageWitness!566 r!23079))))))

(declare-fun bs!523991 () Bool)

(assert (= bs!523991 d!835245))

(assert (=> bs!523991 m!3305345))

(declare-fun m!3305425 () Bool)

(assert (=> bs!523991 m!3305425))

(assert (=> b!2899200 d!835245))

(declare-fun b!2899389 () Bool)

(declare-fun c!472272 () Bool)

(assert (=> b!2899389 (= c!472272 ((_ is Union!8859) r!23079))))

(declare-fun e!1831335 () Option!6532)

(declare-fun e!1831330 () Option!6532)

(assert (=> b!2899389 (= e!1831335 e!1831330)))

(declare-fun b!2899390 () Bool)

(declare-fun e!1831331 () Option!6532)

(assert (=> b!2899390 (= e!1831330 e!1831331)))

(declare-fun lt!1021972 () Option!6532)

(declare-fun call!188859 () Option!6532)

(assert (=> b!2899390 (= lt!1021972 call!188859)))

(declare-fun c!472277 () Bool)

(assert (=> b!2899390 (= c!472277 ((_ is Some!6531) lt!1021972))))

(declare-fun d!835247 () Bool)

(declare-fun c!472274 () Bool)

(assert (=> d!835247 (= c!472274 ((_ is EmptyExpr!8859) r!23079))))

(declare-fun e!1831329 () Option!6532)

(assert (=> d!835247 (= (getLanguageWitness!566 r!23079) e!1831329)))

(declare-fun bm!188853 () Bool)

(declare-fun call!188858 () Option!6532)

(assert (=> bm!188853 (= call!188858 (getLanguageWitness!566 (ite c!472272 (regOne!18231 r!23079) (regTwo!18230 r!23079))))))

(declare-fun b!2899391 () Bool)

(declare-fun e!1831336 () Option!6532)

(assert (=> b!2899391 (= e!1831330 e!1831336)))

(declare-fun lt!1021970 () Option!6532)

(assert (=> b!2899391 (= lt!1021970 call!188858)))

(declare-fun c!472271 () Bool)

(assert (=> b!2899391 (= c!472271 ((_ is Some!6531) lt!1021970))))

(declare-fun b!2899392 () Bool)

(declare-fun e!1831333 () Option!6532)

(declare-fun lt!1021971 () Option!6532)

(assert (=> b!2899392 (= e!1831333 (Some!6531 (++!8256 (v!34657 lt!1021972) (v!34657 lt!1021971))))))

(declare-fun b!2899393 () Bool)

(assert (=> b!2899393 (= e!1831329 (Some!6531 Nil!34536))))

(declare-fun b!2899394 () Bool)

(declare-fun c!472275 () Bool)

(assert (=> b!2899394 (= c!472275 ((_ is ElementMatch!8859) r!23079))))

(declare-fun e!1831332 () Option!6532)

(declare-fun e!1831334 () Option!6532)

(assert (=> b!2899394 (= e!1831332 e!1831334)))

(declare-fun b!2899395 () Bool)

(assert (=> b!2899395 (= e!1831331 None!6531)))

(declare-fun b!2899396 () Bool)

(assert (=> b!2899396 (= e!1831329 e!1831332)))

(declare-fun c!472270 () Bool)

(assert (=> b!2899396 (= c!472270 ((_ is EmptyLang!8859) r!23079))))

(declare-fun b!2899397 () Bool)

(assert (=> b!2899397 (= e!1831335 (Some!6531 Nil!34536))))

(declare-fun b!2899398 () Bool)

(assert (=> b!2899398 (= e!1831333 None!6531)))

(declare-fun b!2899399 () Bool)

(assert (=> b!2899399 (= e!1831336 call!188859)))

(declare-fun b!2899400 () Bool)

(assert (=> b!2899400 (= e!1831332 None!6531)))

(declare-fun b!2899401 () Bool)

(assert (=> b!2899401 (= e!1831334 e!1831335)))

(declare-fun c!472273 () Bool)

(assert (=> b!2899401 (= c!472273 ((_ is Star!8859) r!23079))))

(declare-fun b!2899402 () Bool)

(declare-fun c!472276 () Bool)

(assert (=> b!2899402 (= c!472276 ((_ is Some!6531) lt!1021971))))

(assert (=> b!2899402 (= lt!1021971 call!188858)))

(assert (=> b!2899402 (= e!1831331 e!1831333)))

(declare-fun b!2899403 () Bool)

(assert (=> b!2899403 (= e!1831334 (Some!6531 (Cons!34536 (c!472212 r!23079) Nil!34536)))))

(declare-fun b!2899404 () Bool)

(assert (=> b!2899404 (= e!1831336 lt!1021970)))

(declare-fun bm!188854 () Bool)

(assert (=> bm!188854 (= call!188859 (getLanguageWitness!566 (ite c!472272 (regTwo!18231 r!23079) (regOne!18230 r!23079))))))

(assert (= (and d!835247 c!472274) b!2899393))

(assert (= (and d!835247 (not c!472274)) b!2899396))

(assert (= (and b!2899396 c!472270) b!2899400))

(assert (= (and b!2899396 (not c!472270)) b!2899394))

(assert (= (and b!2899394 c!472275) b!2899403))

(assert (= (and b!2899394 (not c!472275)) b!2899401))

(assert (= (and b!2899401 c!472273) b!2899397))

(assert (= (and b!2899401 (not c!472273)) b!2899389))

(assert (= (and b!2899389 c!472272) b!2899391))

(assert (= (and b!2899389 (not c!472272)) b!2899390))

(assert (= (and b!2899391 c!472271) b!2899404))

(assert (= (and b!2899391 (not c!472271)) b!2899399))

(assert (= (and b!2899390 c!472277) b!2899402))

(assert (= (and b!2899390 (not c!472277)) b!2899395))

(assert (= (and b!2899402 c!472276) b!2899392))

(assert (= (and b!2899402 (not c!472276)) b!2899398))

(assert (= (or b!2899399 b!2899390) bm!188854))

(assert (= (or b!2899391 b!2899402) bm!188853))

(declare-fun m!3305427 () Bool)

(assert (=> bm!188853 m!3305427))

(declare-fun m!3305429 () Bool)

(assert (=> b!2899392 m!3305429))

(declare-fun m!3305431 () Bool)

(assert (=> bm!188854 m!3305431))

(assert (=> b!2899200 d!835247))

(declare-fun b!2899497 () Bool)

(declare-fun e!1831387 () Bool)

(declare-fun lt!1021990 () Bool)

(declare-fun call!188870 () Bool)

(assert (=> b!2899497 (= e!1831387 (= lt!1021990 call!188870))))

(declare-fun bm!188865 () Bool)

(declare-fun isEmpty!18851 (List!34660) Bool)

(assert (=> bm!188865 (= call!188870 (isEmpty!18851 (v!34657 lt!1021951)))))

(declare-fun b!2899498 () Bool)

(declare-fun e!1831389 () Bool)

(declare-fun head!6401 (List!34660) C!17900)

(assert (=> b!2899498 (= e!1831389 (not (= (head!6401 (v!34657 lt!1021951)) (c!472212 (regOne!18230 r!23079)))))))

(declare-fun b!2899499 () Bool)

(declare-fun res!1198484 () Bool)

(assert (=> b!2899499 (=> res!1198484 e!1831389)))

(declare-fun tail!4626 (List!34660) List!34660)

(assert (=> b!2899499 (= res!1198484 (not (isEmpty!18851 (tail!4626 (v!34657 lt!1021951)))))))

(declare-fun d!835249 () Bool)

(assert (=> d!835249 e!1831387))

(declare-fun c!472316 () Bool)

(assert (=> d!835249 (= c!472316 ((_ is EmptyExpr!8859) (regOne!18230 r!23079)))))

(declare-fun e!1831383 () Bool)

(assert (=> d!835249 (= lt!1021990 e!1831383)))

(declare-fun c!472318 () Bool)

(assert (=> d!835249 (= c!472318 (isEmpty!18851 (v!34657 lt!1021951)))))

(assert (=> d!835249 (validRegex!3632 (regOne!18230 r!23079))))

(assert (=> d!835249 (= (matchR!3817 (regOne!18230 r!23079) (v!34657 lt!1021951)) lt!1021990)))

(declare-fun b!2899500 () Bool)

(declare-fun e!1831388 () Bool)

(assert (=> b!2899500 (= e!1831387 e!1831388)))

(declare-fun c!472317 () Bool)

(assert (=> b!2899500 (= c!472317 ((_ is EmptyLang!8859) (regOne!18230 r!23079)))))

(declare-fun b!2899501 () Bool)

(declare-fun e!1831386 () Bool)

(declare-fun e!1831384 () Bool)

(assert (=> b!2899501 (= e!1831386 e!1831384)))

(declare-fun res!1198486 () Bool)

(assert (=> b!2899501 (=> (not res!1198486) (not e!1831384))))

(assert (=> b!2899501 (= res!1198486 (not lt!1021990))))

(declare-fun b!2899502 () Bool)

(declare-fun res!1198482 () Bool)

(declare-fun e!1831385 () Bool)

(assert (=> b!2899502 (=> (not res!1198482) (not e!1831385))))

(assert (=> b!2899502 (= res!1198482 (not call!188870))))

(declare-fun b!2899503 () Bool)

(assert (=> b!2899503 (= e!1831383 (nullable!2759 (regOne!18230 r!23079)))))

(declare-fun b!2899504 () Bool)

(assert (=> b!2899504 (= e!1831385 (= (head!6401 (v!34657 lt!1021951)) (c!472212 (regOne!18230 r!23079))))))

(declare-fun b!2899505 () Bool)

(assert (=> b!2899505 (= e!1831388 (not lt!1021990))))

(declare-fun b!2899506 () Bool)

(declare-fun res!1198480 () Bool)

(assert (=> b!2899506 (=> (not res!1198480) (not e!1831385))))

(assert (=> b!2899506 (= res!1198480 (isEmpty!18851 (tail!4626 (v!34657 lt!1021951))))))

(declare-fun b!2899507 () Bool)

(declare-fun derivativeStep!2372 (Regex!8859 C!17900) Regex!8859)

(assert (=> b!2899507 (= e!1831383 (matchR!3817 (derivativeStep!2372 (regOne!18230 r!23079) (head!6401 (v!34657 lt!1021951))) (tail!4626 (v!34657 lt!1021951))))))

(declare-fun b!2899508 () Bool)

(assert (=> b!2899508 (= e!1831384 e!1831389)))

(declare-fun res!1198483 () Bool)

(assert (=> b!2899508 (=> res!1198483 e!1831389)))

(assert (=> b!2899508 (= res!1198483 call!188870)))

(declare-fun b!2899509 () Bool)

(declare-fun res!1198481 () Bool)

(assert (=> b!2899509 (=> res!1198481 e!1831386)))

(assert (=> b!2899509 (= res!1198481 e!1831385)))

(declare-fun res!1198485 () Bool)

(assert (=> b!2899509 (=> (not res!1198485) (not e!1831385))))

(assert (=> b!2899509 (= res!1198485 lt!1021990)))

(declare-fun b!2899510 () Bool)

(declare-fun res!1198487 () Bool)

(assert (=> b!2899510 (=> res!1198487 e!1831386)))

(assert (=> b!2899510 (= res!1198487 (not ((_ is ElementMatch!8859) (regOne!18230 r!23079))))))

(assert (=> b!2899510 (= e!1831388 e!1831386)))

(assert (= (and d!835249 c!472318) b!2899503))

(assert (= (and d!835249 (not c!472318)) b!2899507))

(assert (= (and d!835249 c!472316) b!2899497))

(assert (= (and d!835249 (not c!472316)) b!2899500))

(assert (= (and b!2899500 c!472317) b!2899505))

(assert (= (and b!2899500 (not c!472317)) b!2899510))

(assert (= (and b!2899510 (not res!1198487)) b!2899509))

(assert (= (and b!2899509 res!1198485) b!2899502))

(assert (= (and b!2899502 res!1198482) b!2899506))

(assert (= (and b!2899506 res!1198480) b!2899504))

(assert (= (and b!2899509 (not res!1198481)) b!2899501))

(assert (= (and b!2899501 res!1198486) b!2899508))

(assert (= (and b!2899508 (not res!1198483)) b!2899499))

(assert (= (and b!2899499 (not res!1198484)) b!2899498))

(assert (= (or b!2899497 b!2899502 b!2899508) bm!188865))

(declare-fun m!3305453 () Bool)

(assert (=> b!2899499 m!3305453))

(assert (=> b!2899499 m!3305453))

(declare-fun m!3305455 () Bool)

(assert (=> b!2899499 m!3305455))

(declare-fun m!3305457 () Bool)

(assert (=> b!2899503 m!3305457))

(declare-fun m!3305461 () Bool)

(assert (=> d!835249 m!3305461))

(assert (=> d!835249 m!3305355))

(declare-fun m!3305465 () Bool)

(assert (=> b!2899498 m!3305465))

(assert (=> b!2899506 m!3305453))

(assert (=> b!2899506 m!3305453))

(assert (=> b!2899506 m!3305455))

(assert (=> b!2899507 m!3305465))

(assert (=> b!2899507 m!3305465))

(declare-fun m!3305471 () Bool)

(assert (=> b!2899507 m!3305471))

(assert (=> b!2899507 m!3305453))

(assert (=> b!2899507 m!3305471))

(assert (=> b!2899507 m!3305453))

(declare-fun m!3305475 () Bool)

(assert (=> b!2899507 m!3305475))

(assert (=> b!2899504 m!3305465))

(assert (=> bm!188865 m!3305461))

(assert (=> b!2899202 d!835249))

(declare-fun d!835263 () Bool)

(assert (=> d!835263 (matchR!3817 (regTwo!18230 r!23079) (get!10479 (getLanguageWitness!566 (regTwo!18230 r!23079))))))

(declare-fun lt!1022000 () Unit!48123)

(declare-fun choose!17082 (Regex!8859) Unit!48123)

(assert (=> d!835263 (= lt!1022000 (choose!17082 (regTwo!18230 r!23079)))))

(assert (=> d!835263 (validRegex!3632 (regTwo!18230 r!23079))))

(assert (=> d!835263 (= (lemmaGetWitnessMatches!116 (regTwo!18230 r!23079)) lt!1022000)))

(declare-fun bs!523995 () Bool)

(assert (= bs!523995 d!835263))

(assert (=> bs!523995 m!3305357))

(declare-fun m!3305517 () Bool)

(assert (=> bs!523995 m!3305517))

(declare-fun m!3305519 () Bool)

(assert (=> bs!523995 m!3305519))

(assert (=> bs!523995 m!3305353))

(assert (=> bs!523995 m!3305353))

(assert (=> bs!523995 m!3305517))

(declare-fun m!3305521 () Bool)

(assert (=> bs!523995 m!3305521))

(assert (=> b!2899202 d!835263))

(declare-fun d!835275 () Bool)

(assert (=> d!835275 (= (get!10479 lt!1021954) (v!34657 lt!1021954))))

(assert (=> b!2899202 d!835275))

(declare-fun b!2899587 () Bool)

(declare-fun e!1831437 () Bool)

(declare-fun lt!1022001 () Bool)

(declare-fun call!188882 () Bool)

(assert (=> b!2899587 (= e!1831437 (= lt!1022001 call!188882))))

(declare-fun bm!188877 () Bool)

(assert (=> bm!188877 (= call!188882 (isEmpty!18851 (get!10479 lt!1021951)))))

(declare-fun b!2899588 () Bool)

(declare-fun e!1831439 () Bool)

(assert (=> b!2899588 (= e!1831439 (not (= (head!6401 (get!10479 lt!1021951)) (c!472212 (regOne!18230 r!23079)))))))

(declare-fun b!2899589 () Bool)

(declare-fun res!1198526 () Bool)

(assert (=> b!2899589 (=> res!1198526 e!1831439)))

(assert (=> b!2899589 (= res!1198526 (not (isEmpty!18851 (tail!4626 (get!10479 lt!1021951)))))))

(declare-fun d!835279 () Bool)

(assert (=> d!835279 e!1831437))

(declare-fun c!472340 () Bool)

(assert (=> d!835279 (= c!472340 ((_ is EmptyExpr!8859) (regOne!18230 r!23079)))))

(declare-fun e!1831433 () Bool)

(assert (=> d!835279 (= lt!1022001 e!1831433)))

(declare-fun c!472342 () Bool)

(assert (=> d!835279 (= c!472342 (isEmpty!18851 (get!10479 lt!1021951)))))

(assert (=> d!835279 (validRegex!3632 (regOne!18230 r!23079))))

(assert (=> d!835279 (= (matchR!3817 (regOne!18230 r!23079) (get!10479 lt!1021951)) lt!1022001)))

(declare-fun b!2899590 () Bool)

(declare-fun e!1831438 () Bool)

(assert (=> b!2899590 (= e!1831437 e!1831438)))

(declare-fun c!472341 () Bool)

(assert (=> b!2899590 (= c!472341 ((_ is EmptyLang!8859) (regOne!18230 r!23079)))))

(declare-fun b!2899591 () Bool)

(declare-fun e!1831436 () Bool)

(declare-fun e!1831434 () Bool)

(assert (=> b!2899591 (= e!1831436 e!1831434)))

(declare-fun res!1198528 () Bool)

(assert (=> b!2899591 (=> (not res!1198528) (not e!1831434))))

(assert (=> b!2899591 (= res!1198528 (not lt!1022001))))

(declare-fun b!2899592 () Bool)

(declare-fun res!1198524 () Bool)

(declare-fun e!1831435 () Bool)

(assert (=> b!2899592 (=> (not res!1198524) (not e!1831435))))

(assert (=> b!2899592 (= res!1198524 (not call!188882))))

(declare-fun b!2899593 () Bool)

(assert (=> b!2899593 (= e!1831433 (nullable!2759 (regOne!18230 r!23079)))))

(declare-fun b!2899594 () Bool)

(assert (=> b!2899594 (= e!1831435 (= (head!6401 (get!10479 lt!1021951)) (c!472212 (regOne!18230 r!23079))))))

(declare-fun b!2899595 () Bool)

(assert (=> b!2899595 (= e!1831438 (not lt!1022001))))

(declare-fun b!2899596 () Bool)

(declare-fun res!1198522 () Bool)

(assert (=> b!2899596 (=> (not res!1198522) (not e!1831435))))

(assert (=> b!2899596 (= res!1198522 (isEmpty!18851 (tail!4626 (get!10479 lt!1021951))))))

(declare-fun b!2899597 () Bool)

(assert (=> b!2899597 (= e!1831433 (matchR!3817 (derivativeStep!2372 (regOne!18230 r!23079) (head!6401 (get!10479 lt!1021951))) (tail!4626 (get!10479 lt!1021951))))))

(declare-fun b!2899598 () Bool)

(assert (=> b!2899598 (= e!1831434 e!1831439)))

(declare-fun res!1198525 () Bool)

(assert (=> b!2899598 (=> res!1198525 e!1831439)))

(assert (=> b!2899598 (= res!1198525 call!188882)))

(declare-fun b!2899599 () Bool)

(declare-fun res!1198523 () Bool)

(assert (=> b!2899599 (=> res!1198523 e!1831436)))

(assert (=> b!2899599 (= res!1198523 e!1831435)))

(declare-fun res!1198527 () Bool)

(assert (=> b!2899599 (=> (not res!1198527) (not e!1831435))))

(assert (=> b!2899599 (= res!1198527 lt!1022001)))

(declare-fun b!2899600 () Bool)

(declare-fun res!1198529 () Bool)

(assert (=> b!2899600 (=> res!1198529 e!1831436)))

(assert (=> b!2899600 (= res!1198529 (not ((_ is ElementMatch!8859) (regOne!18230 r!23079))))))

(assert (=> b!2899600 (= e!1831438 e!1831436)))

(assert (= (and d!835279 c!472342) b!2899593))

(assert (= (and d!835279 (not c!472342)) b!2899597))

(assert (= (and d!835279 c!472340) b!2899587))

(assert (= (and d!835279 (not c!472340)) b!2899590))

(assert (= (and b!2899590 c!472341) b!2899595))

(assert (= (and b!2899590 (not c!472341)) b!2899600))

(assert (= (and b!2899600 (not res!1198529)) b!2899599))

(assert (= (and b!2899599 res!1198527) b!2899592))

(assert (= (and b!2899592 res!1198524) b!2899596))

(assert (= (and b!2899596 res!1198522) b!2899594))

(assert (= (and b!2899599 (not res!1198523)) b!2899591))

(assert (= (and b!2899591 res!1198528) b!2899598))

(assert (= (and b!2899598 (not res!1198525)) b!2899589))

(assert (= (and b!2899589 (not res!1198526)) b!2899588))

(assert (= (or b!2899587 b!2899592 b!2899598) bm!188877))

(assert (=> b!2899589 m!3305369))

(declare-fun m!3305535 () Bool)

(assert (=> b!2899589 m!3305535))

(assert (=> b!2899589 m!3305535))

(declare-fun m!3305537 () Bool)

(assert (=> b!2899589 m!3305537))

(assert (=> b!2899593 m!3305457))

(assert (=> d!835279 m!3305369))

(declare-fun m!3305539 () Bool)

(assert (=> d!835279 m!3305539))

(assert (=> d!835279 m!3305355))

(assert (=> b!2899588 m!3305369))

(declare-fun m!3305541 () Bool)

(assert (=> b!2899588 m!3305541))

(assert (=> b!2899596 m!3305369))

(assert (=> b!2899596 m!3305535))

(assert (=> b!2899596 m!3305535))

(assert (=> b!2899596 m!3305537))

(assert (=> b!2899597 m!3305369))

(assert (=> b!2899597 m!3305541))

(assert (=> b!2899597 m!3305541))

(declare-fun m!3305543 () Bool)

(assert (=> b!2899597 m!3305543))

(assert (=> b!2899597 m!3305369))

(assert (=> b!2899597 m!3305535))

(assert (=> b!2899597 m!3305543))

(assert (=> b!2899597 m!3305535))

(declare-fun m!3305545 () Bool)

(assert (=> b!2899597 m!3305545))

(assert (=> b!2899594 m!3305369))

(assert (=> b!2899594 m!3305541))

(assert (=> bm!188877 m!3305369))

(assert (=> bm!188877 m!3305539))

(assert (=> b!2899202 d!835279))

(declare-fun d!835281 () Bool)

(assert (=> d!835281 (matchR!3817 (regOne!18230 r!23079) (get!10479 (getLanguageWitness!566 (regOne!18230 r!23079))))))

(declare-fun lt!1022002 () Unit!48123)

(assert (=> d!835281 (= lt!1022002 (choose!17082 (regOne!18230 r!23079)))))

(assert (=> d!835281 (validRegex!3632 (regOne!18230 r!23079))))

(assert (=> d!835281 (= (lemmaGetWitnessMatches!116 (regOne!18230 r!23079)) lt!1022002)))

(declare-fun bs!523996 () Bool)

(assert (= bs!523996 d!835281))

(assert (=> bs!523996 m!3305355))

(declare-fun m!3305547 () Bool)

(assert (=> bs!523996 m!3305547))

(declare-fun m!3305549 () Bool)

(assert (=> bs!523996 m!3305549))

(assert (=> bs!523996 m!3305373))

(assert (=> bs!523996 m!3305373))

(assert (=> bs!523996 m!3305547))

(declare-fun m!3305551 () Bool)

(assert (=> bs!523996 m!3305551))

(assert (=> b!2899202 d!835281))

(declare-fun b!2899622 () Bool)

(declare-fun e!1831448 () Bool)

(declare-fun lt!1022003 () Bool)

(declare-fun call!188883 () Bool)

(assert (=> b!2899622 (= e!1831448 (= lt!1022003 call!188883))))

(declare-fun bm!188878 () Bool)

(assert (=> bm!188878 (= call!188883 (isEmpty!18851 (get!10479 lt!1021954)))))

(declare-fun b!2899624 () Bool)

(declare-fun e!1831451 () Bool)

(assert (=> b!2899624 (= e!1831451 (not (= (head!6401 (get!10479 lt!1021954)) (c!472212 (regTwo!18230 r!23079)))))))

(declare-fun b!2899625 () Bool)

(declare-fun res!1198534 () Bool)

(assert (=> b!2899625 (=> res!1198534 e!1831451)))

(assert (=> b!2899625 (= res!1198534 (not (isEmpty!18851 (tail!4626 (get!10479 lt!1021954)))))))

(declare-fun d!835283 () Bool)

(assert (=> d!835283 e!1831448))

(declare-fun c!472343 () Bool)

(assert (=> d!835283 (= c!472343 ((_ is EmptyExpr!8859) (regTwo!18230 r!23079)))))

(declare-fun e!1831444 () Bool)

(assert (=> d!835283 (= lt!1022003 e!1831444)))

(declare-fun c!472345 () Bool)

(assert (=> d!835283 (= c!472345 (isEmpty!18851 (get!10479 lt!1021954)))))

(assert (=> d!835283 (validRegex!3632 (regTwo!18230 r!23079))))

(assert (=> d!835283 (= (matchR!3817 (regTwo!18230 r!23079) (get!10479 lt!1021954)) lt!1022003)))

(declare-fun b!2899626 () Bool)

(declare-fun e!1831450 () Bool)

(assert (=> b!2899626 (= e!1831448 e!1831450)))

(declare-fun c!472344 () Bool)

(assert (=> b!2899626 (= c!472344 ((_ is EmptyLang!8859) (regTwo!18230 r!23079)))))

(declare-fun b!2899627 () Bool)

(declare-fun e!1831447 () Bool)

(declare-fun e!1831445 () Bool)

(assert (=> b!2899627 (= e!1831447 e!1831445)))

(declare-fun res!1198536 () Bool)

(assert (=> b!2899627 (=> (not res!1198536) (not e!1831445))))

(assert (=> b!2899627 (= res!1198536 (not lt!1022003))))

(declare-fun b!2899628 () Bool)

(declare-fun res!1198532 () Bool)

(declare-fun e!1831446 () Bool)

(assert (=> b!2899628 (=> (not res!1198532) (not e!1831446))))

(assert (=> b!2899628 (= res!1198532 (not call!188883))))

(declare-fun b!2899629 () Bool)

(assert (=> b!2899629 (= e!1831444 (nullable!2759 (regTwo!18230 r!23079)))))

(declare-fun b!2899630 () Bool)

(assert (=> b!2899630 (= e!1831446 (= (head!6401 (get!10479 lt!1021954)) (c!472212 (regTwo!18230 r!23079))))))

(declare-fun b!2899631 () Bool)

(assert (=> b!2899631 (= e!1831450 (not lt!1022003))))

(declare-fun b!2899632 () Bool)

(declare-fun res!1198530 () Bool)

(assert (=> b!2899632 (=> (not res!1198530) (not e!1831446))))

(assert (=> b!2899632 (= res!1198530 (isEmpty!18851 (tail!4626 (get!10479 lt!1021954))))))

(declare-fun b!2899633 () Bool)

(assert (=> b!2899633 (= e!1831444 (matchR!3817 (derivativeStep!2372 (regTwo!18230 r!23079) (head!6401 (get!10479 lt!1021954))) (tail!4626 (get!10479 lt!1021954))))))

(declare-fun b!2899634 () Bool)

(assert (=> b!2899634 (= e!1831445 e!1831451)))

(declare-fun res!1198533 () Bool)

(assert (=> b!2899634 (=> res!1198533 e!1831451)))

(assert (=> b!2899634 (= res!1198533 call!188883)))

(declare-fun b!2899635 () Bool)

(declare-fun res!1198531 () Bool)

(assert (=> b!2899635 (=> res!1198531 e!1831447)))

(assert (=> b!2899635 (= res!1198531 e!1831446)))

(declare-fun res!1198535 () Bool)

(assert (=> b!2899635 (=> (not res!1198535) (not e!1831446))))

(assert (=> b!2899635 (= res!1198535 lt!1022003)))

(declare-fun b!2899636 () Bool)

(declare-fun res!1198537 () Bool)

(assert (=> b!2899636 (=> res!1198537 e!1831447)))

(assert (=> b!2899636 (= res!1198537 (not ((_ is ElementMatch!8859) (regTwo!18230 r!23079))))))

(assert (=> b!2899636 (= e!1831450 e!1831447)))

(assert (= (and d!835283 c!472345) b!2899629))

(assert (= (and d!835283 (not c!472345)) b!2899633))

(assert (= (and d!835283 c!472343) b!2899622))

(assert (= (and d!835283 (not c!472343)) b!2899626))

(assert (= (and b!2899626 c!472344) b!2899631))

(assert (= (and b!2899626 (not c!472344)) b!2899636))

(assert (= (and b!2899636 (not res!1198537)) b!2899635))

(assert (= (and b!2899635 res!1198535) b!2899628))

(assert (= (and b!2899628 res!1198532) b!2899632))

(assert (= (and b!2899632 res!1198530) b!2899630))

(assert (= (and b!2899635 (not res!1198531)) b!2899627))

(assert (= (and b!2899627 res!1198536) b!2899634))

(assert (= (and b!2899634 (not res!1198533)) b!2899625))

(assert (= (and b!2899625 (not res!1198534)) b!2899624))

(assert (= (or b!2899622 b!2899628 b!2899634) bm!188878))

(assert (=> b!2899625 m!3305363))

(declare-fun m!3305553 () Bool)

(assert (=> b!2899625 m!3305553))

(assert (=> b!2899625 m!3305553))

(declare-fun m!3305555 () Bool)

(assert (=> b!2899625 m!3305555))

(declare-fun m!3305557 () Bool)

(assert (=> b!2899629 m!3305557))

(assert (=> d!835283 m!3305363))

(declare-fun m!3305559 () Bool)

(assert (=> d!835283 m!3305559))

(assert (=> d!835283 m!3305357))

(assert (=> b!2899624 m!3305363))

(declare-fun m!3305561 () Bool)

(assert (=> b!2899624 m!3305561))

(assert (=> b!2899632 m!3305363))

(assert (=> b!2899632 m!3305553))

(assert (=> b!2899632 m!3305553))

(assert (=> b!2899632 m!3305555))

(assert (=> b!2899633 m!3305363))

(assert (=> b!2899633 m!3305561))

(assert (=> b!2899633 m!3305561))

(declare-fun m!3305563 () Bool)

(assert (=> b!2899633 m!3305563))

(assert (=> b!2899633 m!3305363))

(assert (=> b!2899633 m!3305553))

(assert (=> b!2899633 m!3305563))

(assert (=> b!2899633 m!3305553))

(declare-fun m!3305565 () Bool)

(assert (=> b!2899633 m!3305565))

(assert (=> b!2899630 m!3305363))

(assert (=> b!2899630 m!3305561))

(assert (=> bm!188878 m!3305363))

(assert (=> bm!188878 m!3305559))

(assert (=> b!2899202 d!835283))

(declare-fun d!835285 () Bool)

(assert (=> d!835285 (= (get!10479 lt!1021951) (v!34657 lt!1021951))))

(assert (=> b!2899202 d!835285))

(declare-fun b!2899645 () Bool)

(declare-fun e!1831458 () Bool)

(declare-fun lt!1022004 () Bool)

(declare-fun call!188884 () Bool)

(assert (=> b!2899645 (= e!1831458 (= lt!1022004 call!188884))))

(declare-fun bm!188879 () Bool)

(assert (=> bm!188879 (= call!188884 (isEmpty!18851 (v!34657 lt!1021954)))))

(declare-fun b!2899646 () Bool)

(declare-fun e!1831460 () Bool)

(assert (=> b!2899646 (= e!1831460 (not (= (head!6401 (v!34657 lt!1021954)) (c!472212 (regTwo!18230 r!23079)))))))

(declare-fun b!2899647 () Bool)

(declare-fun res!1198542 () Bool)

(assert (=> b!2899647 (=> res!1198542 e!1831460)))

(assert (=> b!2899647 (= res!1198542 (not (isEmpty!18851 (tail!4626 (v!34657 lt!1021954)))))))

(declare-fun d!835287 () Bool)

(assert (=> d!835287 e!1831458))

(declare-fun c!472346 () Bool)

(assert (=> d!835287 (= c!472346 ((_ is EmptyExpr!8859) (regTwo!18230 r!23079)))))

(declare-fun e!1831454 () Bool)

(assert (=> d!835287 (= lt!1022004 e!1831454)))

(declare-fun c!472348 () Bool)

(assert (=> d!835287 (= c!472348 (isEmpty!18851 (v!34657 lt!1021954)))))

(assert (=> d!835287 (validRegex!3632 (regTwo!18230 r!23079))))

(assert (=> d!835287 (= (matchR!3817 (regTwo!18230 r!23079) (v!34657 lt!1021954)) lt!1022004)))

(declare-fun b!2899648 () Bool)

(declare-fun e!1831459 () Bool)

(assert (=> b!2899648 (= e!1831458 e!1831459)))

(declare-fun c!472347 () Bool)

(assert (=> b!2899648 (= c!472347 ((_ is EmptyLang!8859) (regTwo!18230 r!23079)))))

(declare-fun b!2899649 () Bool)

(declare-fun e!1831457 () Bool)

(declare-fun e!1831455 () Bool)

(assert (=> b!2899649 (= e!1831457 e!1831455)))

(declare-fun res!1198544 () Bool)

(assert (=> b!2899649 (=> (not res!1198544) (not e!1831455))))

(assert (=> b!2899649 (= res!1198544 (not lt!1022004))))

(declare-fun b!2899650 () Bool)

(declare-fun res!1198540 () Bool)

(declare-fun e!1831456 () Bool)

(assert (=> b!2899650 (=> (not res!1198540) (not e!1831456))))

(assert (=> b!2899650 (= res!1198540 (not call!188884))))

(declare-fun b!2899651 () Bool)

(assert (=> b!2899651 (= e!1831454 (nullable!2759 (regTwo!18230 r!23079)))))

(declare-fun b!2899652 () Bool)

(assert (=> b!2899652 (= e!1831456 (= (head!6401 (v!34657 lt!1021954)) (c!472212 (regTwo!18230 r!23079))))))

(declare-fun b!2899653 () Bool)

(assert (=> b!2899653 (= e!1831459 (not lt!1022004))))

(declare-fun b!2899654 () Bool)

(declare-fun res!1198538 () Bool)

(assert (=> b!2899654 (=> (not res!1198538) (not e!1831456))))

(assert (=> b!2899654 (= res!1198538 (isEmpty!18851 (tail!4626 (v!34657 lt!1021954))))))

(declare-fun b!2899655 () Bool)

(assert (=> b!2899655 (= e!1831454 (matchR!3817 (derivativeStep!2372 (regTwo!18230 r!23079) (head!6401 (v!34657 lt!1021954))) (tail!4626 (v!34657 lt!1021954))))))

(declare-fun b!2899656 () Bool)

(assert (=> b!2899656 (= e!1831455 e!1831460)))

(declare-fun res!1198541 () Bool)

(assert (=> b!2899656 (=> res!1198541 e!1831460)))

(assert (=> b!2899656 (= res!1198541 call!188884)))

(declare-fun b!2899657 () Bool)

(declare-fun res!1198539 () Bool)

(assert (=> b!2899657 (=> res!1198539 e!1831457)))

(assert (=> b!2899657 (= res!1198539 e!1831456)))

(declare-fun res!1198543 () Bool)

(assert (=> b!2899657 (=> (not res!1198543) (not e!1831456))))

(assert (=> b!2899657 (= res!1198543 lt!1022004)))

(declare-fun b!2899658 () Bool)

(declare-fun res!1198545 () Bool)

(assert (=> b!2899658 (=> res!1198545 e!1831457)))

(assert (=> b!2899658 (= res!1198545 (not ((_ is ElementMatch!8859) (regTwo!18230 r!23079))))))

(assert (=> b!2899658 (= e!1831459 e!1831457)))

(assert (= (and d!835287 c!472348) b!2899651))

(assert (= (and d!835287 (not c!472348)) b!2899655))

(assert (= (and d!835287 c!472346) b!2899645))

(assert (= (and d!835287 (not c!472346)) b!2899648))

(assert (= (and b!2899648 c!472347) b!2899653))

(assert (= (and b!2899648 (not c!472347)) b!2899658))

(assert (= (and b!2899658 (not res!1198545)) b!2899657))

(assert (= (and b!2899657 res!1198543) b!2899650))

(assert (= (and b!2899650 res!1198540) b!2899654))

(assert (= (and b!2899654 res!1198538) b!2899652))

(assert (= (and b!2899657 (not res!1198539)) b!2899649))

(assert (= (and b!2899649 res!1198544) b!2899656))

(assert (= (and b!2899656 (not res!1198541)) b!2899647))

(assert (= (and b!2899647 (not res!1198542)) b!2899646))

(assert (= (or b!2899645 b!2899650 b!2899656) bm!188879))

(declare-fun m!3305567 () Bool)

(assert (=> b!2899647 m!3305567))

(assert (=> b!2899647 m!3305567))

(declare-fun m!3305569 () Bool)

(assert (=> b!2899647 m!3305569))

(assert (=> b!2899651 m!3305557))

(declare-fun m!3305571 () Bool)

(assert (=> d!835287 m!3305571))

(assert (=> d!835287 m!3305357))

(declare-fun m!3305573 () Bool)

(assert (=> b!2899646 m!3305573))

(assert (=> b!2899654 m!3305567))

(assert (=> b!2899654 m!3305567))

(assert (=> b!2899654 m!3305569))

(assert (=> b!2899655 m!3305573))

(assert (=> b!2899655 m!3305573))

(declare-fun m!3305575 () Bool)

(assert (=> b!2899655 m!3305575))

(assert (=> b!2899655 m!3305567))

(assert (=> b!2899655 m!3305575))

(assert (=> b!2899655 m!3305567))

(declare-fun m!3305577 () Bool)

(assert (=> b!2899655 m!3305577))

(assert (=> b!2899652 m!3305573))

(assert (=> bm!188879 m!3305571))

(assert (=> b!2899209 d!835287))

(declare-fun e!1831463 () Bool)

(assert (=> b!2899207 (= tp!930478 e!1831463)))

(declare-fun b!2899669 () Bool)

(assert (=> b!2899669 (= e!1831463 tp_is_empty!15305)))

(declare-fun b!2899672 () Bool)

(declare-fun tp!930528 () Bool)

(declare-fun tp!930529 () Bool)

(assert (=> b!2899672 (= e!1831463 (and tp!930528 tp!930529))))

(declare-fun b!2899671 () Bool)

(declare-fun tp!930525 () Bool)

(assert (=> b!2899671 (= e!1831463 tp!930525)))

(declare-fun b!2899670 () Bool)

(declare-fun tp!930527 () Bool)

(declare-fun tp!930526 () Bool)

(assert (=> b!2899670 (= e!1831463 (and tp!930527 tp!930526))))

(assert (= (and b!2899207 ((_ is ElementMatch!8859) (reg!9188 r!23079))) b!2899669))

(assert (= (and b!2899207 ((_ is Concat!14180) (reg!9188 r!23079))) b!2899670))

(assert (= (and b!2899207 ((_ is Star!8859) (reg!9188 r!23079))) b!2899671))

(assert (= (and b!2899207 ((_ is Union!8859) (reg!9188 r!23079))) b!2899672))

(declare-fun e!1831464 () Bool)

(assert (=> b!2899208 (= tp!930477 e!1831464)))

(declare-fun b!2899673 () Bool)

(assert (=> b!2899673 (= e!1831464 tp_is_empty!15305)))

(declare-fun b!2899676 () Bool)

(declare-fun tp!930533 () Bool)

(declare-fun tp!930534 () Bool)

(assert (=> b!2899676 (= e!1831464 (and tp!930533 tp!930534))))

(declare-fun b!2899675 () Bool)

(declare-fun tp!930530 () Bool)

(assert (=> b!2899675 (= e!1831464 tp!930530)))

(declare-fun b!2899674 () Bool)

(declare-fun tp!930532 () Bool)

(declare-fun tp!930531 () Bool)

(assert (=> b!2899674 (= e!1831464 (and tp!930532 tp!930531))))

(assert (= (and b!2899208 ((_ is ElementMatch!8859) (regOne!18230 r!23079))) b!2899673))

(assert (= (and b!2899208 ((_ is Concat!14180) (regOne!18230 r!23079))) b!2899674))

(assert (= (and b!2899208 ((_ is Star!8859) (regOne!18230 r!23079))) b!2899675))

(assert (= (and b!2899208 ((_ is Union!8859) (regOne!18230 r!23079))) b!2899676))

(declare-fun e!1831465 () Bool)

(assert (=> b!2899208 (= tp!930479 e!1831465)))

(declare-fun b!2899677 () Bool)

(assert (=> b!2899677 (= e!1831465 tp_is_empty!15305)))

(declare-fun b!2899680 () Bool)

(declare-fun tp!930538 () Bool)

(declare-fun tp!930539 () Bool)

(assert (=> b!2899680 (= e!1831465 (and tp!930538 tp!930539))))

(declare-fun b!2899679 () Bool)

(declare-fun tp!930535 () Bool)

(assert (=> b!2899679 (= e!1831465 tp!930535)))

(declare-fun b!2899678 () Bool)

(declare-fun tp!930537 () Bool)

(declare-fun tp!930536 () Bool)

(assert (=> b!2899678 (= e!1831465 (and tp!930537 tp!930536))))

(assert (= (and b!2899208 ((_ is ElementMatch!8859) (regTwo!18230 r!23079))) b!2899677))

(assert (= (and b!2899208 ((_ is Concat!14180) (regTwo!18230 r!23079))) b!2899678))

(assert (= (and b!2899208 ((_ is Star!8859) (regTwo!18230 r!23079))) b!2899679))

(assert (= (and b!2899208 ((_ is Union!8859) (regTwo!18230 r!23079))) b!2899680))

(declare-fun e!1831466 () Bool)

(assert (=> b!2899203 (= tp!930476 e!1831466)))

(declare-fun b!2899681 () Bool)

(assert (=> b!2899681 (= e!1831466 tp_is_empty!15305)))

(declare-fun b!2899684 () Bool)

(declare-fun tp!930543 () Bool)

(declare-fun tp!930544 () Bool)

(assert (=> b!2899684 (= e!1831466 (and tp!930543 tp!930544))))

(declare-fun b!2899683 () Bool)

(declare-fun tp!930540 () Bool)

(assert (=> b!2899683 (= e!1831466 tp!930540)))

(declare-fun b!2899682 () Bool)

(declare-fun tp!930542 () Bool)

(declare-fun tp!930541 () Bool)

(assert (=> b!2899682 (= e!1831466 (and tp!930542 tp!930541))))

(assert (= (and b!2899203 ((_ is ElementMatch!8859) (regOne!18231 r!23079))) b!2899681))

(assert (= (and b!2899203 ((_ is Concat!14180) (regOne!18231 r!23079))) b!2899682))

(assert (= (and b!2899203 ((_ is Star!8859) (regOne!18231 r!23079))) b!2899683))

(assert (= (and b!2899203 ((_ is Union!8859) (regOne!18231 r!23079))) b!2899684))

(declare-fun e!1831467 () Bool)

(assert (=> b!2899203 (= tp!930475 e!1831467)))

(declare-fun b!2899685 () Bool)

(assert (=> b!2899685 (= e!1831467 tp_is_empty!15305)))

(declare-fun b!2899688 () Bool)

(declare-fun tp!930548 () Bool)

(declare-fun tp!930549 () Bool)

(assert (=> b!2899688 (= e!1831467 (and tp!930548 tp!930549))))

(declare-fun b!2899687 () Bool)

(declare-fun tp!930545 () Bool)

(assert (=> b!2899687 (= e!1831467 tp!930545)))

(declare-fun b!2899686 () Bool)

(declare-fun tp!930547 () Bool)

(declare-fun tp!930546 () Bool)

(assert (=> b!2899686 (= e!1831467 (and tp!930547 tp!930546))))

(assert (= (and b!2899203 ((_ is ElementMatch!8859) (regTwo!18231 r!23079))) b!2899685))

(assert (= (and b!2899203 ((_ is Concat!14180) (regTwo!18231 r!23079))) b!2899686))

(assert (= (and b!2899203 ((_ is Star!8859) (regTwo!18231 r!23079))) b!2899687))

(assert (= (and b!2899203 ((_ is Union!8859) (regTwo!18231 r!23079))) b!2899688))

(check-sat (not b!2899625) (not bm!188854) (not b!2899624) (not bm!188826) (not b!2899687) (not b!2899588) (not b!2899632) (not bm!188844) (not bm!188851) (not bm!188877) (not b!2899594) (not b!2899682) (not b!2899499) (not b!2899593) (not b!2899688) (not bm!188846) (not b!2899504) (not b!2899680) (not b!2899655) (not d!835245) (not b!2899674) (not b!2899392) (not b!2899678) (not bm!188849) (not d!835283) (not b!2899630) (not b!2899676) (not b!2899507) (not b!2899597) (not bm!188825) (not b!2899679) (not d!835249) (not bm!188850) (not b!2899498) (not b!2899651) (not b!2899629) (not b!2899654) (not b!2899364) (not b!2899596) (not b!2899672) (not bm!188878) (not b!2899683) (not d!835287) (not b!2899671) (not bm!188847) (not b!2899646) (not bm!188865) (not b!2899675) (not bm!188853) (not d!835281) (not b!2899589) (not b!2899288) (not bm!188843) (not b!2899506) (not b!2899355) (not b!2899647) (not b!2899376) (not bm!188879) (not d!835279) (not b!2899503) (not bm!188852) (not b!2899633) (not d!835263) tp_is_empty!15305 (not b!2899686) (not b!2899346) (not b!2899684) (not b!2899652) (not b!2899670))
(check-sat)
