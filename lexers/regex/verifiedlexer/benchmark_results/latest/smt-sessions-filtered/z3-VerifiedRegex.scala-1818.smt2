; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90726 () Bool)

(assert start!90726)

(declare-fun b!1053202 () Bool)

(assert (=> b!1053202 true))

(assert (=> b!1053202 true))

(declare-fun lambda!37976 () Int)

(declare-fun lambda!37975 () Int)

(assert (=> b!1053202 (not (= lambda!37976 lambda!37975))))

(assert (=> b!1053202 true))

(assert (=> b!1053202 true))

(declare-fun bs!251309 () Bool)

(declare-fun b!1053205 () Bool)

(assert (= bs!251309 (and b!1053205 b!1053202)))

(declare-fun lambda!37977 () Int)

(declare-datatypes ((C!6360 0))(
  ( (C!6361 (val!3428 Int)) )
))
(declare-datatypes ((Regex!2895 0))(
  ( (ElementMatch!2895 (c!176112 C!6360)) (Concat!4728 (regOne!6302 Regex!2895) (regTwo!6302 Regex!2895)) (EmptyExpr!2895) (Star!2895 (reg!3224 Regex!2895)) (EmptyLang!2895) (Union!2895 (regOne!6303 Regex!2895) (regTwo!6303 Regex!2895)) )
))
(declare-fun r!15766 () Regex!2895)

(declare-fun lt!358537 () Regex!2895)

(declare-fun lt!358545 () Regex!2895)

(assert (=> bs!251309 (= (and (= lt!358545 (regOne!6302 r!15766)) (= lt!358537 (regTwo!6302 r!15766))) (= lambda!37977 lambda!37975))))

(assert (=> bs!251309 (not (= lambda!37977 lambda!37976))))

(assert (=> b!1053205 true))

(assert (=> b!1053205 true))

(assert (=> b!1053205 true))

(declare-fun lambda!37978 () Int)

(assert (=> bs!251309 (not (= lambda!37978 lambda!37975))))

(assert (=> bs!251309 (= (and (= lt!358545 (regOne!6302 r!15766)) (= lt!358537 (regTwo!6302 r!15766))) (= lambda!37978 lambda!37976))))

(assert (=> b!1053205 (not (= lambda!37978 lambda!37977))))

(assert (=> b!1053205 true))

(assert (=> b!1053205 true))

(assert (=> b!1053205 true))

(declare-fun b!1053200 () Bool)

(declare-fun res!470965 () Bool)

(declare-fun e!669027 () Bool)

(assert (=> b!1053200 (=> res!470965 e!669027)))

(declare-fun validRegex!1364 (Regex!2895) Bool)

(assert (=> b!1053200 (= res!470965 (not (validRegex!1364 (regTwo!6302 r!15766))))))

(declare-fun b!1053201 () Bool)

(declare-fun e!669029 () Bool)

(declare-fun tp_is_empty!5433 () Bool)

(declare-fun tp!317440 () Bool)

(assert (=> b!1053201 (= e!669029 (and tp_is_empty!5433 tp!317440))))

(declare-fun e!669032 () Bool)

(declare-fun e!669030 () Bool)

(assert (=> b!1053202 (= e!669032 e!669030)))

(declare-fun res!470962 () Bool)

(assert (=> b!1053202 (=> res!470962 e!669030)))

(declare-datatypes ((List!10125 0))(
  ( (Nil!10109) (Cons!10109 (h!15510 C!6360) (t!101171 List!10125)) )
))
(declare-fun s!10566 () List!10125)

(declare-fun isEmpty!6519 (List!10125) Bool)

(assert (=> b!1053202 (= res!470962 (isEmpty!6519 s!10566))))

(declare-fun Exists!622 (Int) Bool)

(assert (=> b!1053202 (= (Exists!622 lambda!37975) (Exists!622 lambda!37976))))

(declare-datatypes ((Unit!15465 0))(
  ( (Unit!15466) )
))
(declare-fun lt!358539 () Unit!15465)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!310 (Regex!2895 Regex!2895 List!10125) Unit!15465)

(assert (=> b!1053202 (= lt!358539 (lemmaExistCutMatchRandMatchRSpecEquivalent!310 (regOne!6302 r!15766) (regTwo!6302 r!15766) s!10566))))

(declare-datatypes ((tuple2!11556 0))(
  ( (tuple2!11557 (_1!6604 List!10125) (_2!6604 List!10125)) )
))
(declare-datatypes ((Option!2420 0))(
  ( (None!2419) (Some!2419 (v!19836 tuple2!11556)) )
))
(declare-fun isDefined!2062 (Option!2420) Bool)

(declare-fun findConcatSeparation!526 (Regex!2895 Regex!2895 List!10125 List!10125 List!10125) Option!2420)

(assert (=> b!1053202 (= (isDefined!2062 (findConcatSeparation!526 (regOne!6302 r!15766) (regTwo!6302 r!15766) Nil!10109 s!10566 s!10566)) (Exists!622 lambda!37975))))

(declare-fun lt!358542 () Unit!15465)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!526 (Regex!2895 Regex!2895 List!10125) Unit!15465)

(assert (=> b!1053202 (= lt!358542 (lemmaFindConcatSeparationEquivalentToExists!526 (regOne!6302 r!15766) (regTwo!6302 r!15766) s!10566))))

(declare-fun b!1053203 () Bool)

(declare-fun e!669028 () Bool)

(declare-fun tp!317442 () Bool)

(declare-fun tp!317443 () Bool)

(assert (=> b!1053203 (= e!669028 (and tp!317442 tp!317443))))

(declare-fun b!1053204 () Bool)

(declare-fun tp!317444 () Bool)

(assert (=> b!1053204 (= e!669028 tp!317444)))

(declare-fun b!1053206 () Bool)

(declare-fun e!669031 () Bool)

(assert (=> b!1053206 (= e!669031 e!669027)))

(declare-fun res!470966 () Bool)

(assert (=> b!1053206 (=> res!470966 e!669027)))

(assert (=> b!1053206 (= res!470966 (not (validRegex!1364 (regOne!6302 r!15766))))))

(declare-fun lt!358547 () tuple2!11556)

(declare-fun matchR!1431 (Regex!2895 List!10125) Bool)

(assert (=> b!1053206 (= (matchR!1431 (regTwo!6302 r!15766) (_2!6604 lt!358547)) (matchR!1431 lt!358537 (_2!6604 lt!358547)))))

(declare-fun lt!358546 () Unit!15465)

(declare-fun lemmaRemoveUselessConcatSound!268 (Regex!2895 List!10125) Unit!15465)

(assert (=> b!1053206 (= lt!358546 (lemmaRemoveUselessConcatSound!268 (regTwo!6302 r!15766) (_2!6604 lt!358547)))))

(declare-fun lt!358538 () Bool)

(assert (=> b!1053206 (= lt!358538 (matchR!1431 lt!358545 (_1!6604 lt!358547)))))

(assert (=> b!1053206 (= lt!358538 (matchR!1431 (regOne!6302 r!15766) (_1!6604 lt!358547)))))

(declare-fun lt!358533 () Unit!15465)

(assert (=> b!1053206 (= lt!358533 (lemmaRemoveUselessConcatSound!268 (regOne!6302 r!15766) (_1!6604 lt!358547)))))

(declare-fun lt!358540 () Option!2420)

(declare-fun get!3620 (Option!2420) tuple2!11556)

(assert (=> b!1053206 (= lt!358547 (get!3620 lt!358540))))

(declare-fun b!1053207 () Bool)

(declare-fun e!669033 () Bool)

(assert (=> b!1053207 (= e!669030 e!669033)))

(declare-fun res!470968 () Bool)

(assert (=> b!1053207 (=> res!470968 e!669033)))

(declare-fun lt!358532 () Regex!2895)

(assert (=> b!1053207 (= res!470968 (not (matchR!1431 lt!358532 s!10566)))))

(assert (=> b!1053207 (= lt!358532 (Concat!4728 lt!358545 lt!358537))))

(declare-fun removeUselessConcat!444 (Regex!2895) Regex!2895)

(assert (=> b!1053207 (= lt!358537 (removeUselessConcat!444 (regTwo!6302 r!15766)))))

(assert (=> b!1053207 (= lt!358545 (removeUselessConcat!444 (regOne!6302 r!15766)))))

(declare-fun b!1053208 () Bool)

(assert (=> b!1053208 (= e!669027 lt!358538)))

(declare-fun b!1053209 () Bool)

(assert (=> b!1053209 (= e!669028 tp_is_empty!5433)))

(declare-fun b!1053210 () Bool)

(declare-fun e!669026 () Bool)

(assert (=> b!1053210 (= e!669026 (not e!669032))))

(declare-fun res!470967 () Bool)

(assert (=> b!1053210 (=> res!470967 e!669032)))

(declare-fun lt!358535 () Bool)

(get-info :version)

(assert (=> b!1053210 (= res!470967 (or lt!358535 (and ((_ is Concat!4728) r!15766) ((_ is EmptyExpr!2895) (regOne!6302 r!15766))) (and ((_ is Concat!4728) r!15766) ((_ is EmptyExpr!2895) (regTwo!6302 r!15766))) (not ((_ is Concat!4728) r!15766))))))

(declare-fun matchRSpec!694 (Regex!2895 List!10125) Bool)

(assert (=> b!1053210 (= lt!358535 (matchRSpec!694 r!15766 s!10566))))

(assert (=> b!1053210 (= lt!358535 (matchR!1431 r!15766 s!10566))))

(declare-fun lt!358534 () Unit!15465)

(declare-fun mainMatchTheorem!694 (Regex!2895 List!10125) Unit!15465)

(assert (=> b!1053210 (= lt!358534 (mainMatchTheorem!694 r!15766 s!10566))))

(declare-fun b!1053211 () Bool)

(declare-fun tp!317441 () Bool)

(declare-fun tp!317439 () Bool)

(assert (=> b!1053211 (= e!669028 (and tp!317441 tp!317439))))

(assert (=> b!1053205 (= e!669033 e!669031)))

(declare-fun res!470964 () Bool)

(assert (=> b!1053205 (=> res!470964 e!669031)))

(declare-fun lt!358541 () Bool)

(assert (=> b!1053205 (= res!470964 (not lt!358541))))

(assert (=> b!1053205 (= (Exists!622 lambda!37977) (Exists!622 lambda!37978))))

(declare-fun lt!358543 () Unit!15465)

(assert (=> b!1053205 (= lt!358543 (lemmaExistCutMatchRandMatchRSpecEquivalent!310 lt!358545 lt!358537 s!10566))))

(assert (=> b!1053205 (= lt!358541 (Exists!622 lambda!37977))))

(assert (=> b!1053205 (= lt!358541 (isDefined!2062 lt!358540))))

(assert (=> b!1053205 (= lt!358540 (findConcatSeparation!526 lt!358545 lt!358537 Nil!10109 s!10566 s!10566))))

(declare-fun lt!358536 () Unit!15465)

(assert (=> b!1053205 (= lt!358536 (lemmaFindConcatSeparationEquivalentToExists!526 lt!358545 lt!358537 s!10566))))

(assert (=> b!1053205 (matchRSpec!694 lt!358532 s!10566)))

(declare-fun lt!358544 () Unit!15465)

(assert (=> b!1053205 (= lt!358544 (mainMatchTheorem!694 lt!358532 s!10566))))

(declare-fun res!470963 () Bool)

(assert (=> start!90726 (=> (not res!470963) (not e!669026))))

(assert (=> start!90726 (= res!470963 (validRegex!1364 r!15766))))

(assert (=> start!90726 e!669026))

(assert (=> start!90726 e!669028))

(assert (=> start!90726 e!669029))

(assert (= (and start!90726 res!470963) b!1053210))

(assert (= (and b!1053210 (not res!470967)) b!1053202))

(assert (= (and b!1053202 (not res!470962)) b!1053207))

(assert (= (and b!1053207 (not res!470968)) b!1053205))

(assert (= (and b!1053205 (not res!470964)) b!1053206))

(assert (= (and b!1053206 (not res!470966)) b!1053200))

(assert (= (and b!1053200 (not res!470965)) b!1053208))

(assert (= (and start!90726 ((_ is ElementMatch!2895) r!15766)) b!1053209))

(assert (= (and start!90726 ((_ is Concat!4728) r!15766)) b!1053203))

(assert (= (and start!90726 ((_ is Star!2895) r!15766)) b!1053204))

(assert (= (and start!90726 ((_ is Union!2895) r!15766)) b!1053211))

(assert (= (and start!90726 ((_ is Cons!10109) s!10566)) b!1053201))

(declare-fun m!1217295 () Bool)

(assert (=> start!90726 m!1217295))

(declare-fun m!1217297 () Bool)

(assert (=> b!1053206 m!1217297))

(declare-fun m!1217299 () Bool)

(assert (=> b!1053206 m!1217299))

(declare-fun m!1217301 () Bool)

(assert (=> b!1053206 m!1217301))

(declare-fun m!1217303 () Bool)

(assert (=> b!1053206 m!1217303))

(declare-fun m!1217305 () Bool)

(assert (=> b!1053206 m!1217305))

(declare-fun m!1217307 () Bool)

(assert (=> b!1053206 m!1217307))

(declare-fun m!1217309 () Bool)

(assert (=> b!1053206 m!1217309))

(declare-fun m!1217311 () Bool)

(assert (=> b!1053206 m!1217311))

(declare-fun m!1217313 () Bool)

(assert (=> b!1053202 m!1217313))

(declare-fun m!1217315 () Bool)

(assert (=> b!1053202 m!1217315))

(declare-fun m!1217317 () Bool)

(assert (=> b!1053202 m!1217317))

(declare-fun m!1217319 () Bool)

(assert (=> b!1053202 m!1217319))

(assert (=> b!1053202 m!1217313))

(declare-fun m!1217321 () Bool)

(assert (=> b!1053202 m!1217321))

(declare-fun m!1217323 () Bool)

(assert (=> b!1053202 m!1217323))

(declare-fun m!1217325 () Bool)

(assert (=> b!1053202 m!1217325))

(assert (=> b!1053202 m!1217321))

(declare-fun m!1217327 () Bool)

(assert (=> b!1053210 m!1217327))

(declare-fun m!1217329 () Bool)

(assert (=> b!1053210 m!1217329))

(declare-fun m!1217331 () Bool)

(assert (=> b!1053210 m!1217331))

(declare-fun m!1217333 () Bool)

(assert (=> b!1053205 m!1217333))

(declare-fun m!1217335 () Bool)

(assert (=> b!1053205 m!1217335))

(declare-fun m!1217337 () Bool)

(assert (=> b!1053205 m!1217337))

(declare-fun m!1217339 () Bool)

(assert (=> b!1053205 m!1217339))

(declare-fun m!1217341 () Bool)

(assert (=> b!1053205 m!1217341))

(declare-fun m!1217343 () Bool)

(assert (=> b!1053205 m!1217343))

(declare-fun m!1217345 () Bool)

(assert (=> b!1053205 m!1217345))

(assert (=> b!1053205 m!1217337))

(declare-fun m!1217347 () Bool)

(assert (=> b!1053205 m!1217347))

(declare-fun m!1217349 () Bool)

(assert (=> b!1053200 m!1217349))

(declare-fun m!1217351 () Bool)

(assert (=> b!1053207 m!1217351))

(declare-fun m!1217353 () Bool)

(assert (=> b!1053207 m!1217353))

(declare-fun m!1217355 () Bool)

(assert (=> b!1053207 m!1217355))

(check-sat (not b!1053206) (not b!1053211) (not b!1053204) (not b!1053202) (not b!1053205) (not b!1053200) (not b!1053210) (not b!1053203) (not b!1053201) tp_is_empty!5433 (not b!1053207) (not start!90726))
(check-sat)
(get-model)

(declare-fun c!176136 () Bool)

(declare-fun call!75050 () Bool)

(declare-fun c!176135 () Bool)

(declare-fun bm!75045 () Bool)

(assert (=> bm!75045 (= call!75050 (validRegex!1364 (ite c!176136 (reg!3224 (regTwo!6302 r!15766)) (ite c!176135 (regOne!6303 (regTwo!6302 r!15766)) (regOne!6302 (regTwo!6302 r!15766))))))))

(declare-fun b!1053318 () Bool)

(declare-fun e!669092 () Bool)

(declare-fun call!75051 () Bool)

(assert (=> b!1053318 (= e!669092 call!75051)))

(declare-fun b!1053319 () Bool)

(declare-fun e!669090 () Bool)

(declare-fun e!669094 () Bool)

(assert (=> b!1053319 (= e!669090 e!669094)))

(declare-fun res!471030 () Bool)

(declare-fun nullable!987 (Regex!2895) Bool)

(assert (=> b!1053319 (= res!471030 (not (nullable!987 (reg!3224 (regTwo!6302 r!15766)))))))

(assert (=> b!1053319 (=> (not res!471030) (not e!669094))))

(declare-fun b!1053320 () Bool)

(declare-fun e!669096 () Bool)

(assert (=> b!1053320 (= e!669096 call!75051)))

(declare-fun b!1053321 () Bool)

(assert (=> b!1053321 (= e!669094 call!75050)))

(declare-fun b!1053322 () Bool)

(declare-fun e!669093 () Bool)

(assert (=> b!1053322 (= e!669090 e!669093)))

(assert (=> b!1053322 (= c!176135 ((_ is Union!2895) (regTwo!6302 r!15766)))))

(declare-fun d!299789 () Bool)

(declare-fun res!471028 () Bool)

(declare-fun e!669091 () Bool)

(assert (=> d!299789 (=> res!471028 e!669091)))

(assert (=> d!299789 (= res!471028 ((_ is ElementMatch!2895) (regTwo!6302 r!15766)))))

(assert (=> d!299789 (= (validRegex!1364 (regTwo!6302 r!15766)) e!669091)))

(declare-fun b!1053323 () Bool)

(assert (=> b!1053323 (= e!669091 e!669090)))

(assert (=> b!1053323 (= c!176136 ((_ is Star!2895) (regTwo!6302 r!15766)))))

(declare-fun b!1053324 () Bool)

(declare-fun res!471031 () Bool)

(declare-fun e!669095 () Bool)

(assert (=> b!1053324 (=> res!471031 e!669095)))

(assert (=> b!1053324 (= res!471031 (not ((_ is Concat!4728) (regTwo!6302 r!15766))))))

(assert (=> b!1053324 (= e!669093 e!669095)))

(declare-fun bm!75046 () Bool)

(declare-fun call!75052 () Bool)

(assert (=> bm!75046 (= call!75052 call!75050)))

(declare-fun bm!75047 () Bool)

(assert (=> bm!75047 (= call!75051 (validRegex!1364 (ite c!176135 (regTwo!6303 (regTwo!6302 r!15766)) (regTwo!6302 (regTwo!6302 r!15766)))))))

(declare-fun b!1053325 () Bool)

(declare-fun res!471029 () Bool)

(assert (=> b!1053325 (=> (not res!471029) (not e!669092))))

(assert (=> b!1053325 (= res!471029 call!75052)))

(assert (=> b!1053325 (= e!669093 e!669092)))

(declare-fun b!1053326 () Bool)

(assert (=> b!1053326 (= e!669095 e!669096)))

(declare-fun res!471027 () Bool)

(assert (=> b!1053326 (=> (not res!471027) (not e!669096))))

(assert (=> b!1053326 (= res!471027 call!75052)))

(assert (= (and d!299789 (not res!471028)) b!1053323))

(assert (= (and b!1053323 c!176136) b!1053319))

(assert (= (and b!1053323 (not c!176136)) b!1053322))

(assert (= (and b!1053319 res!471030) b!1053321))

(assert (= (and b!1053322 c!176135) b!1053325))

(assert (= (and b!1053322 (not c!176135)) b!1053324))

(assert (= (and b!1053325 res!471029) b!1053318))

(assert (= (and b!1053324 (not res!471031)) b!1053326))

(assert (= (and b!1053326 res!471027) b!1053320))

(assert (= (or b!1053318 b!1053320) bm!75047))

(assert (= (or b!1053325 b!1053326) bm!75046))

(assert (= (or b!1053321 bm!75046) bm!75045))

(declare-fun m!1217409 () Bool)

(assert (=> bm!75045 m!1217409))

(declare-fun m!1217411 () Bool)

(assert (=> b!1053319 m!1217411))

(declare-fun m!1217413 () Bool)

(assert (=> bm!75047 m!1217413))

(assert (=> b!1053200 d!299789))

(declare-fun bs!251312 () Bool)

(declare-fun d!299801 () Bool)

(assert (= bs!251312 (and d!299801 b!1053202)))

(declare-fun lambda!37985 () Int)

(assert (=> bs!251312 (= (and (= lt!358545 (regOne!6302 r!15766)) (= lt!358537 (regTwo!6302 r!15766))) (= lambda!37985 lambda!37975))))

(assert (=> bs!251312 (not (= lambda!37985 lambda!37976))))

(declare-fun bs!251313 () Bool)

(assert (= bs!251313 (and d!299801 b!1053205)))

(assert (=> bs!251313 (= lambda!37985 lambda!37977)))

(assert (=> bs!251313 (not (= lambda!37985 lambda!37978))))

(assert (=> d!299801 true))

(assert (=> d!299801 true))

(assert (=> d!299801 true))

(declare-fun lambda!37988 () Int)

(assert (=> bs!251313 (not (= lambda!37988 lambda!37977))))

(assert (=> bs!251312 (not (= lambda!37988 lambda!37975))))

(declare-fun bs!251314 () Bool)

(assert (= bs!251314 d!299801))

(assert (=> bs!251314 (not (= lambda!37988 lambda!37985))))

(assert (=> bs!251313 (= lambda!37988 lambda!37978)))

(assert (=> bs!251312 (= (and (= lt!358545 (regOne!6302 r!15766)) (= lt!358537 (regTwo!6302 r!15766))) (= lambda!37988 lambda!37976))))

(assert (=> d!299801 true))

(assert (=> d!299801 true))

(assert (=> d!299801 true))

(assert (=> d!299801 (= (Exists!622 lambda!37985) (Exists!622 lambda!37988))))

(declare-fun lt!358565 () Unit!15465)

(declare-fun choose!6688 (Regex!2895 Regex!2895 List!10125) Unit!15465)

(assert (=> d!299801 (= lt!358565 (choose!6688 lt!358545 lt!358537 s!10566))))

(assert (=> d!299801 (validRegex!1364 lt!358545)))

(assert (=> d!299801 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!310 lt!358545 lt!358537 s!10566) lt!358565)))

(declare-fun m!1217457 () Bool)

(assert (=> bs!251314 m!1217457))

(declare-fun m!1217459 () Bool)

(assert (=> bs!251314 m!1217459))

(declare-fun m!1217461 () Bool)

(assert (=> bs!251314 m!1217461))

(declare-fun m!1217463 () Bool)

(assert (=> bs!251314 m!1217463))

(assert (=> b!1053205 d!299801))

(declare-fun d!299813 () Bool)

(declare-fun choose!6689 (Int) Bool)

(assert (=> d!299813 (= (Exists!622 lambda!37977) (choose!6689 lambda!37977))))

(declare-fun bs!251315 () Bool)

(assert (= bs!251315 d!299813))

(declare-fun m!1217465 () Bool)

(assert (=> bs!251315 m!1217465))

(assert (=> b!1053205 d!299813))

(declare-fun b!1053535 () Bool)

(declare-fun e!669221 () Bool)

(declare-fun lt!358587 () Option!2420)

(assert (=> b!1053535 (= e!669221 (not (isDefined!2062 lt!358587)))))

(declare-fun b!1053536 () Bool)

(declare-fun lt!358585 () Unit!15465)

(declare-fun lt!358586 () Unit!15465)

(assert (=> b!1053536 (= lt!358585 lt!358586)))

(declare-fun ++!2794 (List!10125 List!10125) List!10125)

(assert (=> b!1053536 (= (++!2794 (++!2794 Nil!10109 (Cons!10109 (h!15510 s!10566) Nil!10109)) (t!101171 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!387 (List!10125 C!6360 List!10125 List!10125) Unit!15465)

(assert (=> b!1053536 (= lt!358586 (lemmaMoveElementToOtherListKeepsConcatEq!387 Nil!10109 (h!15510 s!10566) (t!101171 s!10566) s!10566))))

(declare-fun e!669222 () Option!2420)

(assert (=> b!1053536 (= e!669222 (findConcatSeparation!526 lt!358545 lt!358537 (++!2794 Nil!10109 (Cons!10109 (h!15510 s!10566) Nil!10109)) (t!101171 s!10566) s!10566))))

(declare-fun d!299815 () Bool)

(assert (=> d!299815 e!669221))

(declare-fun res!471131 () Bool)

(assert (=> d!299815 (=> res!471131 e!669221)))

(declare-fun e!669224 () Bool)

(assert (=> d!299815 (= res!471131 e!669224)))

(declare-fun res!471130 () Bool)

(assert (=> d!299815 (=> (not res!471130) (not e!669224))))

(assert (=> d!299815 (= res!471130 (isDefined!2062 lt!358587))))

(declare-fun e!669223 () Option!2420)

(assert (=> d!299815 (= lt!358587 e!669223)))

(declare-fun c!176193 () Bool)

(declare-fun e!669225 () Bool)

(assert (=> d!299815 (= c!176193 e!669225)))

(declare-fun res!471128 () Bool)

(assert (=> d!299815 (=> (not res!471128) (not e!669225))))

(assert (=> d!299815 (= res!471128 (matchR!1431 lt!358545 Nil!10109))))

(assert (=> d!299815 (validRegex!1364 lt!358545)))

(assert (=> d!299815 (= (findConcatSeparation!526 lt!358545 lt!358537 Nil!10109 s!10566 s!10566) lt!358587)))

(declare-fun b!1053537 () Bool)

(assert (=> b!1053537 (= e!669223 (Some!2419 (tuple2!11557 Nil!10109 s!10566)))))

(declare-fun b!1053538 () Bool)

(declare-fun res!471132 () Bool)

(assert (=> b!1053538 (=> (not res!471132) (not e!669224))))

(assert (=> b!1053538 (= res!471132 (matchR!1431 lt!358537 (_2!6604 (get!3620 lt!358587))))))

(declare-fun b!1053539 () Bool)

(declare-fun res!471129 () Bool)

(assert (=> b!1053539 (=> (not res!471129) (not e!669224))))

(assert (=> b!1053539 (= res!471129 (matchR!1431 lt!358545 (_1!6604 (get!3620 lt!358587))))))

(declare-fun b!1053540 () Bool)

(assert (=> b!1053540 (= e!669225 (matchR!1431 lt!358537 s!10566))))

(declare-fun b!1053541 () Bool)

(assert (=> b!1053541 (= e!669223 e!669222)))

(declare-fun c!176194 () Bool)

(assert (=> b!1053541 (= c!176194 ((_ is Nil!10109) s!10566))))

(declare-fun b!1053542 () Bool)

(assert (=> b!1053542 (= e!669224 (= (++!2794 (_1!6604 (get!3620 lt!358587)) (_2!6604 (get!3620 lt!358587))) s!10566))))

(declare-fun b!1053543 () Bool)

(assert (=> b!1053543 (= e!669222 None!2419)))

(assert (= (and d!299815 res!471128) b!1053540))

(assert (= (and d!299815 c!176193) b!1053537))

(assert (= (and d!299815 (not c!176193)) b!1053541))

(assert (= (and b!1053541 c!176194) b!1053543))

(assert (= (and b!1053541 (not c!176194)) b!1053536))

(assert (= (and d!299815 res!471130) b!1053539))

(assert (= (and b!1053539 res!471129) b!1053538))

(assert (= (and b!1053538 res!471132) b!1053542))

(assert (= (and d!299815 (not res!471131)) b!1053535))

(declare-fun m!1217519 () Bool)

(assert (=> b!1053538 m!1217519))

(declare-fun m!1217521 () Bool)

(assert (=> b!1053538 m!1217521))

(declare-fun m!1217523 () Bool)

(assert (=> b!1053536 m!1217523))

(assert (=> b!1053536 m!1217523))

(declare-fun m!1217525 () Bool)

(assert (=> b!1053536 m!1217525))

(declare-fun m!1217527 () Bool)

(assert (=> b!1053536 m!1217527))

(assert (=> b!1053536 m!1217523))

(declare-fun m!1217529 () Bool)

(assert (=> b!1053536 m!1217529))

(assert (=> b!1053539 m!1217519))

(declare-fun m!1217531 () Bool)

(assert (=> b!1053539 m!1217531))

(assert (=> b!1053542 m!1217519))

(declare-fun m!1217533 () Bool)

(assert (=> b!1053542 m!1217533))

(declare-fun m!1217535 () Bool)

(assert (=> b!1053540 m!1217535))

(declare-fun m!1217537 () Bool)

(assert (=> b!1053535 m!1217537))

(assert (=> d!299815 m!1217537))

(declare-fun m!1217539 () Bool)

(assert (=> d!299815 m!1217539))

(assert (=> d!299815 m!1217463))

(assert (=> b!1053205 d!299815))

(declare-fun d!299837 () Bool)

(declare-fun isEmpty!6520 (Option!2420) Bool)

(assert (=> d!299837 (= (isDefined!2062 lt!358540) (not (isEmpty!6520 lt!358540)))))

(declare-fun bs!251330 () Bool)

(assert (= bs!251330 d!299837))

(declare-fun m!1217541 () Bool)

(assert (=> bs!251330 m!1217541))

(assert (=> b!1053205 d!299837))

(declare-fun bs!251359 () Bool)

(declare-fun d!299839 () Bool)

(assert (= bs!251359 (and d!299839 b!1053205)))

(declare-fun lambda!38006 () Int)

(assert (=> bs!251359 (= lambda!38006 lambda!37977)))

(declare-fun bs!251362 () Bool)

(assert (= bs!251362 (and d!299839 b!1053202)))

(assert (=> bs!251362 (= (and (= lt!358545 (regOne!6302 r!15766)) (= lt!358537 (regTwo!6302 r!15766))) (= lambda!38006 lambda!37975))))

(declare-fun bs!251364 () Bool)

(assert (= bs!251364 (and d!299839 d!299801)))

(assert (=> bs!251364 (= lambda!38006 lambda!37985)))

(assert (=> bs!251359 (not (= lambda!38006 lambda!37978))))

(assert (=> bs!251362 (not (= lambda!38006 lambda!37976))))

(assert (=> bs!251364 (not (= lambda!38006 lambda!37988))))

(assert (=> d!299839 true))

(assert (=> d!299839 true))

(assert (=> d!299839 true))

(assert (=> d!299839 (= (isDefined!2062 (findConcatSeparation!526 lt!358545 lt!358537 Nil!10109 s!10566 s!10566)) (Exists!622 lambda!38006))))

(declare-fun lt!358602 () Unit!15465)

(declare-fun choose!6690 (Regex!2895 Regex!2895 List!10125) Unit!15465)

(assert (=> d!299839 (= lt!358602 (choose!6690 lt!358545 lt!358537 s!10566))))

(assert (=> d!299839 (validRegex!1364 lt!358545)))

(assert (=> d!299839 (= (lemmaFindConcatSeparationEquivalentToExists!526 lt!358545 lt!358537 s!10566) lt!358602)))

(declare-fun bs!251371 () Bool)

(assert (= bs!251371 d!299839))

(assert (=> bs!251371 m!1217463))

(declare-fun m!1217585 () Bool)

(assert (=> bs!251371 m!1217585))

(assert (=> bs!251371 m!1217335))

(declare-fun m!1217587 () Bool)

(assert (=> bs!251371 m!1217587))

(assert (=> bs!251371 m!1217335))

(declare-fun m!1217589 () Bool)

(assert (=> bs!251371 m!1217589))

(assert (=> b!1053205 d!299839))

(declare-fun d!299857 () Bool)

(assert (=> d!299857 (= (Exists!622 lambda!37978) (choose!6689 lambda!37978))))

(declare-fun bs!251376 () Bool)

(assert (= bs!251376 d!299857))

(declare-fun m!1217591 () Bool)

(assert (=> bs!251376 m!1217591))

(assert (=> b!1053205 d!299857))

(declare-fun d!299859 () Bool)

(assert (=> d!299859 (= (matchR!1431 lt!358532 s!10566) (matchRSpec!694 lt!358532 s!10566))))

(declare-fun lt!358605 () Unit!15465)

(declare-fun choose!6691 (Regex!2895 List!10125) Unit!15465)

(assert (=> d!299859 (= lt!358605 (choose!6691 lt!358532 s!10566))))

(assert (=> d!299859 (validRegex!1364 lt!358532)))

(assert (=> d!299859 (= (mainMatchTheorem!694 lt!358532 s!10566) lt!358605)))

(declare-fun bs!251378 () Bool)

(assert (= bs!251378 d!299859))

(assert (=> bs!251378 m!1217351))

(assert (=> bs!251378 m!1217345))

(declare-fun m!1217599 () Bool)

(assert (=> bs!251378 m!1217599))

(declare-fun m!1217601 () Bool)

(assert (=> bs!251378 m!1217601))

(assert (=> b!1053205 d!299859))

(declare-fun bs!251379 () Bool)

(declare-fun b!1053657 () Bool)

(assert (= bs!251379 (and b!1053657 b!1053205)))

(declare-fun lambda!38012 () Int)

(assert (=> bs!251379 (not (= lambda!38012 lambda!37977))))

(declare-fun bs!251380 () Bool)

(assert (= bs!251380 (and b!1053657 b!1053202)))

(assert (=> bs!251380 (not (= lambda!38012 lambda!37975))))

(declare-fun bs!251381 () Bool)

(assert (= bs!251381 (and b!1053657 d!299839)))

(assert (=> bs!251381 (not (= lambda!38012 lambda!38006))))

(declare-fun bs!251382 () Bool)

(assert (= bs!251382 (and b!1053657 d!299801)))

(assert (=> bs!251382 (not (= lambda!38012 lambda!37985))))

(assert (=> bs!251379 (not (= lambda!38012 lambda!37978))))

(assert (=> bs!251380 (not (= lambda!38012 lambda!37976))))

(assert (=> bs!251382 (not (= lambda!38012 lambda!37988))))

(assert (=> b!1053657 true))

(assert (=> b!1053657 true))

(declare-fun bs!251383 () Bool)

(declare-fun b!1053661 () Bool)

(assert (= bs!251383 (and b!1053661 b!1053205)))

(declare-fun lambda!38013 () Int)

(assert (=> bs!251383 (not (= lambda!38013 lambda!37977))))

(declare-fun bs!251384 () Bool)

(assert (= bs!251384 (and b!1053661 b!1053202)))

(assert (=> bs!251384 (not (= lambda!38013 lambda!37975))))

(declare-fun bs!251385 () Bool)

(assert (= bs!251385 (and b!1053661 d!299839)))

(assert (=> bs!251385 (not (= lambda!38013 lambda!38006))))

(declare-fun bs!251386 () Bool)

(assert (= bs!251386 (and b!1053661 d!299801)))

(assert (=> bs!251386 (not (= lambda!38013 lambda!37985))))

(declare-fun bs!251387 () Bool)

(assert (= bs!251387 (and b!1053661 b!1053657)))

(assert (=> bs!251387 (not (= lambda!38013 lambda!38012))))

(assert (=> bs!251383 (= (and (= (regOne!6302 lt!358532) lt!358545) (= (regTwo!6302 lt!358532) lt!358537)) (= lambda!38013 lambda!37978))))

(assert (=> bs!251384 (= (and (= (regOne!6302 lt!358532) (regOne!6302 r!15766)) (= (regTwo!6302 lt!358532) (regTwo!6302 r!15766))) (= lambda!38013 lambda!37976))))

(assert (=> bs!251386 (= (and (= (regOne!6302 lt!358532) lt!358545) (= (regTwo!6302 lt!358532) lt!358537)) (= lambda!38013 lambda!37988))))

(assert (=> b!1053661 true))

(assert (=> b!1053661 true))

(declare-fun b!1053652 () Bool)

(declare-fun res!471174 () Bool)

(declare-fun e!669278 () Bool)

(assert (=> b!1053652 (=> res!471174 e!669278)))

(declare-fun call!75102 () Bool)

(assert (=> b!1053652 (= res!471174 call!75102)))

(declare-fun e!669280 () Bool)

(assert (=> b!1053652 (= e!669280 e!669278)))

(declare-fun b!1053653 () Bool)

(declare-fun e!669281 () Bool)

(declare-fun e!669277 () Bool)

(assert (=> b!1053653 (= e!669281 e!669277)))

(declare-fun res!471176 () Bool)

(assert (=> b!1053653 (= res!471176 (not ((_ is EmptyLang!2895) lt!358532)))))

(assert (=> b!1053653 (=> (not res!471176) (not e!669277))))

(declare-fun b!1053654 () Bool)

(declare-fun c!176212 () Bool)

(assert (=> b!1053654 (= c!176212 ((_ is ElementMatch!2895) lt!358532))))

(declare-fun e!669279 () Bool)

(assert (=> b!1053654 (= e!669277 e!669279)))

(declare-fun b!1053655 () Bool)

(assert (=> b!1053655 (= e!669281 call!75102)))

(declare-fun bm!75097 () Bool)

(assert (=> bm!75097 (= call!75102 (isEmpty!6519 s!10566))))

(declare-fun d!299861 () Bool)

(declare-fun c!176211 () Bool)

(assert (=> d!299861 (= c!176211 ((_ is EmptyExpr!2895) lt!358532))))

(assert (=> d!299861 (= (matchRSpec!694 lt!358532 s!10566) e!669281)))

(declare-fun bm!75098 () Bool)

(declare-fun call!75103 () Bool)

(declare-fun c!176213 () Bool)

(assert (=> bm!75098 (= call!75103 (Exists!622 (ite c!176213 lambda!38012 lambda!38013)))))

(declare-fun b!1053656 () Bool)

(declare-fun e!669282 () Bool)

(assert (=> b!1053656 (= e!669282 e!669280)))

(assert (=> b!1053656 (= c!176213 ((_ is Star!2895) lt!358532))))

(assert (=> b!1053657 (= e!669278 call!75103)))

(declare-fun b!1053658 () Bool)

(declare-fun c!176214 () Bool)

(assert (=> b!1053658 (= c!176214 ((_ is Union!2895) lt!358532))))

(assert (=> b!1053658 (= e!669279 e!669282)))

(declare-fun b!1053659 () Bool)

(declare-fun e!669283 () Bool)

(assert (=> b!1053659 (= e!669282 e!669283)))

(declare-fun res!471175 () Bool)

(assert (=> b!1053659 (= res!471175 (matchRSpec!694 (regOne!6303 lt!358532) s!10566))))

(assert (=> b!1053659 (=> res!471175 e!669283)))

(declare-fun b!1053660 () Bool)

(assert (=> b!1053660 (= e!669279 (= s!10566 (Cons!10109 (c!176112 lt!358532) Nil!10109)))))

(assert (=> b!1053661 (= e!669280 call!75103)))

(declare-fun b!1053662 () Bool)

(assert (=> b!1053662 (= e!669283 (matchRSpec!694 (regTwo!6303 lt!358532) s!10566))))

(assert (= (and d!299861 c!176211) b!1053655))

(assert (= (and d!299861 (not c!176211)) b!1053653))

(assert (= (and b!1053653 res!471176) b!1053654))

(assert (= (and b!1053654 c!176212) b!1053660))

(assert (= (and b!1053654 (not c!176212)) b!1053658))

(assert (= (and b!1053658 c!176214) b!1053659))

(assert (= (and b!1053658 (not c!176214)) b!1053656))

(assert (= (and b!1053659 (not res!471175)) b!1053662))

(assert (= (and b!1053656 c!176213) b!1053652))

(assert (= (and b!1053656 (not c!176213)) b!1053661))

(assert (= (and b!1053652 (not res!471174)) b!1053657))

(assert (= (or b!1053657 b!1053661) bm!75098))

(assert (= (or b!1053655 b!1053652) bm!75097))

(assert (=> bm!75097 m!1217317))

(declare-fun m!1217603 () Bool)

(assert (=> bm!75098 m!1217603))

(declare-fun m!1217605 () Bool)

(assert (=> b!1053659 m!1217605))

(declare-fun m!1217607 () Bool)

(assert (=> b!1053662 m!1217607))

(assert (=> b!1053205 d!299861))

(declare-fun bs!251388 () Bool)

(declare-fun b!1053668 () Bool)

(assert (= bs!251388 (and b!1053668 b!1053205)))

(declare-fun lambda!38014 () Int)

(assert (=> bs!251388 (not (= lambda!38014 lambda!37977))))

(declare-fun bs!251389 () Bool)

(assert (= bs!251389 (and b!1053668 b!1053661)))

(assert (=> bs!251389 (not (= lambda!38014 lambda!38013))))

(declare-fun bs!251390 () Bool)

(assert (= bs!251390 (and b!1053668 b!1053202)))

(assert (=> bs!251390 (not (= lambda!38014 lambda!37975))))

(declare-fun bs!251391 () Bool)

(assert (= bs!251391 (and b!1053668 d!299839)))

(assert (=> bs!251391 (not (= lambda!38014 lambda!38006))))

(declare-fun bs!251392 () Bool)

(assert (= bs!251392 (and b!1053668 d!299801)))

(assert (=> bs!251392 (not (= lambda!38014 lambda!37985))))

(declare-fun bs!251393 () Bool)

(assert (= bs!251393 (and b!1053668 b!1053657)))

(assert (=> bs!251393 (= (and (= (reg!3224 r!15766) (reg!3224 lt!358532)) (= r!15766 lt!358532)) (= lambda!38014 lambda!38012))))

(assert (=> bs!251388 (not (= lambda!38014 lambda!37978))))

(assert (=> bs!251390 (not (= lambda!38014 lambda!37976))))

(assert (=> bs!251392 (not (= lambda!38014 lambda!37988))))

(assert (=> b!1053668 true))

(assert (=> b!1053668 true))

(declare-fun bs!251394 () Bool)

(declare-fun b!1053672 () Bool)

(assert (= bs!251394 (and b!1053672 b!1053205)))

(declare-fun lambda!38015 () Int)

(assert (=> bs!251394 (not (= lambda!38015 lambda!37977))))

(declare-fun bs!251395 () Bool)

(assert (= bs!251395 (and b!1053672 b!1053661)))

(assert (=> bs!251395 (= (and (= (regOne!6302 r!15766) (regOne!6302 lt!358532)) (= (regTwo!6302 r!15766) (regTwo!6302 lt!358532))) (= lambda!38015 lambda!38013))))

(declare-fun bs!251396 () Bool)

(assert (= bs!251396 (and b!1053672 b!1053202)))

(assert (=> bs!251396 (not (= lambda!38015 lambda!37975))))

(declare-fun bs!251397 () Bool)

(assert (= bs!251397 (and b!1053672 d!299839)))

(assert (=> bs!251397 (not (= lambda!38015 lambda!38006))))

(declare-fun bs!251398 () Bool)

(assert (= bs!251398 (and b!1053672 d!299801)))

(assert (=> bs!251398 (not (= lambda!38015 lambda!37985))))

(declare-fun bs!251399 () Bool)

(assert (= bs!251399 (and b!1053672 b!1053657)))

(assert (=> bs!251399 (not (= lambda!38015 lambda!38012))))

(assert (=> bs!251394 (= (and (= (regOne!6302 r!15766) lt!358545) (= (regTwo!6302 r!15766) lt!358537)) (= lambda!38015 lambda!37978))))

(declare-fun bs!251400 () Bool)

(assert (= bs!251400 (and b!1053672 b!1053668)))

(assert (=> bs!251400 (not (= lambda!38015 lambda!38014))))

(assert (=> bs!251396 (= lambda!38015 lambda!37976)))

(assert (=> bs!251398 (= (and (= (regOne!6302 r!15766) lt!358545) (= (regTwo!6302 r!15766) lt!358537)) (= lambda!38015 lambda!37988))))

(assert (=> b!1053672 true))

(assert (=> b!1053672 true))

(declare-fun b!1053663 () Bool)

(declare-fun res!471177 () Bool)

(declare-fun e!669285 () Bool)

(assert (=> b!1053663 (=> res!471177 e!669285)))

(declare-fun call!75104 () Bool)

(assert (=> b!1053663 (= res!471177 call!75104)))

(declare-fun e!669287 () Bool)

(assert (=> b!1053663 (= e!669287 e!669285)))

(declare-fun b!1053664 () Bool)

(declare-fun e!669288 () Bool)

(declare-fun e!669284 () Bool)

(assert (=> b!1053664 (= e!669288 e!669284)))

(declare-fun res!471179 () Bool)

(assert (=> b!1053664 (= res!471179 (not ((_ is EmptyLang!2895) r!15766)))))

(assert (=> b!1053664 (=> (not res!471179) (not e!669284))))

(declare-fun b!1053665 () Bool)

(declare-fun c!176216 () Bool)

(assert (=> b!1053665 (= c!176216 ((_ is ElementMatch!2895) r!15766))))

(declare-fun e!669286 () Bool)

(assert (=> b!1053665 (= e!669284 e!669286)))

(declare-fun b!1053666 () Bool)

(assert (=> b!1053666 (= e!669288 call!75104)))

(declare-fun bm!75099 () Bool)

(assert (=> bm!75099 (= call!75104 (isEmpty!6519 s!10566))))

(declare-fun d!299863 () Bool)

(declare-fun c!176215 () Bool)

(assert (=> d!299863 (= c!176215 ((_ is EmptyExpr!2895) r!15766))))

(assert (=> d!299863 (= (matchRSpec!694 r!15766 s!10566) e!669288)))

(declare-fun call!75105 () Bool)

(declare-fun bm!75100 () Bool)

(declare-fun c!176217 () Bool)

(assert (=> bm!75100 (= call!75105 (Exists!622 (ite c!176217 lambda!38014 lambda!38015)))))

(declare-fun b!1053667 () Bool)

(declare-fun e!669289 () Bool)

(assert (=> b!1053667 (= e!669289 e!669287)))

(assert (=> b!1053667 (= c!176217 ((_ is Star!2895) r!15766))))

(assert (=> b!1053668 (= e!669285 call!75105)))

(declare-fun b!1053669 () Bool)

(declare-fun c!176218 () Bool)

(assert (=> b!1053669 (= c!176218 ((_ is Union!2895) r!15766))))

(assert (=> b!1053669 (= e!669286 e!669289)))

(declare-fun b!1053670 () Bool)

(declare-fun e!669290 () Bool)

(assert (=> b!1053670 (= e!669289 e!669290)))

(declare-fun res!471178 () Bool)

(assert (=> b!1053670 (= res!471178 (matchRSpec!694 (regOne!6303 r!15766) s!10566))))

(assert (=> b!1053670 (=> res!471178 e!669290)))

(declare-fun b!1053671 () Bool)

(assert (=> b!1053671 (= e!669286 (= s!10566 (Cons!10109 (c!176112 r!15766) Nil!10109)))))

(assert (=> b!1053672 (= e!669287 call!75105)))

(declare-fun b!1053673 () Bool)

(assert (=> b!1053673 (= e!669290 (matchRSpec!694 (regTwo!6303 r!15766) s!10566))))

(assert (= (and d!299863 c!176215) b!1053666))

(assert (= (and d!299863 (not c!176215)) b!1053664))

(assert (= (and b!1053664 res!471179) b!1053665))

(assert (= (and b!1053665 c!176216) b!1053671))

(assert (= (and b!1053665 (not c!176216)) b!1053669))

(assert (= (and b!1053669 c!176218) b!1053670))

(assert (= (and b!1053669 (not c!176218)) b!1053667))

(assert (= (and b!1053670 (not res!471178)) b!1053673))

(assert (= (and b!1053667 c!176217) b!1053663))

(assert (= (and b!1053667 (not c!176217)) b!1053672))

(assert (= (and b!1053663 (not res!471177)) b!1053668))

(assert (= (or b!1053668 b!1053672) bm!75100))

(assert (= (or b!1053666 b!1053663) bm!75099))

(assert (=> bm!75099 m!1217317))

(declare-fun m!1217609 () Bool)

(assert (=> bm!75100 m!1217609))

(declare-fun m!1217611 () Bool)

(assert (=> b!1053670 m!1217611))

(declare-fun m!1217613 () Bool)

(assert (=> b!1053673 m!1217613))

(assert (=> b!1053210 d!299863))

(declare-fun d!299865 () Bool)

(declare-fun e!669309 () Bool)

(assert (=> d!299865 e!669309))

(declare-fun c!176226 () Bool)

(assert (=> d!299865 (= c!176226 ((_ is EmptyExpr!2895) r!15766))))

(declare-fun lt!358608 () Bool)

(declare-fun e!669311 () Bool)

(assert (=> d!299865 (= lt!358608 e!669311)))

(declare-fun c!176225 () Bool)

(assert (=> d!299865 (= c!176225 (isEmpty!6519 s!10566))))

(assert (=> d!299865 (validRegex!1364 r!15766)))

(assert (=> d!299865 (= (matchR!1431 r!15766 s!10566) lt!358608)))

(declare-fun b!1053702 () Bool)

(assert (=> b!1053702 (= e!669311 (nullable!987 r!15766))))

(declare-fun b!1053703 () Bool)

(declare-fun e!669307 () Bool)

(declare-fun e!669306 () Bool)

(assert (=> b!1053703 (= e!669307 e!669306)))

(declare-fun res!471196 () Bool)

(assert (=> b!1053703 (=> (not res!471196) (not e!669306))))

(assert (=> b!1053703 (= res!471196 (not lt!358608))))

(declare-fun b!1053704 () Bool)

(declare-fun derivativeStep!787 (Regex!2895 C!6360) Regex!2895)

(declare-fun head!1942 (List!10125) C!6360)

(declare-fun tail!1504 (List!10125) List!10125)

(assert (=> b!1053704 (= e!669311 (matchR!1431 (derivativeStep!787 r!15766 (head!1942 s!10566)) (tail!1504 s!10566)))))

(declare-fun bm!75103 () Bool)

(declare-fun call!75108 () Bool)

(assert (=> bm!75103 (= call!75108 (isEmpty!6519 s!10566))))

(declare-fun b!1053705 () Bool)

(declare-fun e!669305 () Bool)

(assert (=> b!1053705 (= e!669305 (not (= (head!1942 s!10566) (c!176112 r!15766))))))

(declare-fun b!1053706 () Bool)

(declare-fun res!471198 () Bool)

(assert (=> b!1053706 (=> res!471198 e!669307)))

(declare-fun e!669310 () Bool)

(assert (=> b!1053706 (= res!471198 e!669310)))

(declare-fun res!471203 () Bool)

(assert (=> b!1053706 (=> (not res!471203) (not e!669310))))

(assert (=> b!1053706 (= res!471203 lt!358608)))

(declare-fun b!1053707 () Bool)

(declare-fun res!471200 () Bool)

(assert (=> b!1053707 (=> res!471200 e!669305)))

(assert (=> b!1053707 (= res!471200 (not (isEmpty!6519 (tail!1504 s!10566))))))

(declare-fun b!1053708 () Bool)

(assert (=> b!1053708 (= e!669309 (= lt!358608 call!75108))))

(declare-fun b!1053709 () Bool)

(declare-fun e!669308 () Bool)

(assert (=> b!1053709 (= e!669308 (not lt!358608))))

(declare-fun b!1053710 () Bool)

(assert (=> b!1053710 (= e!669310 (= (head!1942 s!10566) (c!176112 r!15766)))))

(declare-fun b!1053711 () Bool)

(declare-fun res!471199 () Bool)

(assert (=> b!1053711 (=> (not res!471199) (not e!669310))))

(assert (=> b!1053711 (= res!471199 (isEmpty!6519 (tail!1504 s!10566)))))

(declare-fun b!1053712 () Bool)

(assert (=> b!1053712 (= e!669306 e!669305)))

(declare-fun res!471202 () Bool)

(assert (=> b!1053712 (=> res!471202 e!669305)))

(assert (=> b!1053712 (= res!471202 call!75108)))

(declare-fun b!1053713 () Bool)

(assert (=> b!1053713 (= e!669309 e!669308)))

(declare-fun c!176227 () Bool)

(assert (=> b!1053713 (= c!176227 ((_ is EmptyLang!2895) r!15766))))

(declare-fun b!1053714 () Bool)

(declare-fun res!471201 () Bool)

(assert (=> b!1053714 (=> res!471201 e!669307)))

(assert (=> b!1053714 (= res!471201 (not ((_ is ElementMatch!2895) r!15766)))))

(assert (=> b!1053714 (= e!669308 e!669307)))

(declare-fun b!1053715 () Bool)

(declare-fun res!471197 () Bool)

(assert (=> b!1053715 (=> (not res!471197) (not e!669310))))

(assert (=> b!1053715 (= res!471197 (not call!75108))))

(assert (= (and d!299865 c!176225) b!1053702))

(assert (= (and d!299865 (not c!176225)) b!1053704))

(assert (= (and d!299865 c!176226) b!1053708))

(assert (= (and d!299865 (not c!176226)) b!1053713))

(assert (= (and b!1053713 c!176227) b!1053709))

(assert (= (and b!1053713 (not c!176227)) b!1053714))

(assert (= (and b!1053714 (not res!471201)) b!1053706))

(assert (= (and b!1053706 res!471203) b!1053715))

(assert (= (and b!1053715 res!471197) b!1053711))

(assert (= (and b!1053711 res!471199) b!1053710))

(assert (= (and b!1053706 (not res!471198)) b!1053703))

(assert (= (and b!1053703 res!471196) b!1053712))

(assert (= (and b!1053712 (not res!471202)) b!1053707))

(assert (= (and b!1053707 (not res!471200)) b!1053705))

(assert (= (or b!1053708 b!1053712 b!1053715) bm!75103))

(declare-fun m!1217615 () Bool)

(assert (=> b!1053707 m!1217615))

(assert (=> b!1053707 m!1217615))

(declare-fun m!1217617 () Bool)

(assert (=> b!1053707 m!1217617))

(declare-fun m!1217619 () Bool)

(assert (=> b!1053705 m!1217619))

(assert (=> b!1053711 m!1217615))

(assert (=> b!1053711 m!1217615))

(assert (=> b!1053711 m!1217617))

(assert (=> b!1053710 m!1217619))

(assert (=> bm!75103 m!1217317))

(assert (=> d!299865 m!1217317))

(assert (=> d!299865 m!1217295))

(assert (=> b!1053704 m!1217619))

(assert (=> b!1053704 m!1217619))

(declare-fun m!1217621 () Bool)

(assert (=> b!1053704 m!1217621))

(assert (=> b!1053704 m!1217615))

(assert (=> b!1053704 m!1217621))

(assert (=> b!1053704 m!1217615))

(declare-fun m!1217623 () Bool)

(assert (=> b!1053704 m!1217623))

(declare-fun m!1217625 () Bool)

(assert (=> b!1053702 m!1217625))

(assert (=> b!1053210 d!299865))

(declare-fun d!299867 () Bool)

(assert (=> d!299867 (= (matchR!1431 r!15766 s!10566) (matchRSpec!694 r!15766 s!10566))))

(declare-fun lt!358609 () Unit!15465)

(assert (=> d!299867 (= lt!358609 (choose!6691 r!15766 s!10566))))

(assert (=> d!299867 (validRegex!1364 r!15766)))

(assert (=> d!299867 (= (mainMatchTheorem!694 r!15766 s!10566) lt!358609)))

(declare-fun bs!251401 () Bool)

(assert (= bs!251401 d!299867))

(assert (=> bs!251401 m!1217329))

(assert (=> bs!251401 m!1217327))

(declare-fun m!1217627 () Bool)

(assert (=> bs!251401 m!1217627))

(assert (=> bs!251401 m!1217295))

(assert (=> b!1053210 d!299867))

(declare-fun d!299869 () Bool)

(assert (=> d!299869 (= (isEmpty!6519 s!10566) ((_ is Nil!10109) s!10566))))

(assert (=> b!1053202 d!299869))

(declare-fun d!299871 () Bool)

(assert (=> d!299871 (= (isDefined!2062 (findConcatSeparation!526 (regOne!6302 r!15766) (regTwo!6302 r!15766) Nil!10109 s!10566 s!10566)) (not (isEmpty!6520 (findConcatSeparation!526 (regOne!6302 r!15766) (regTwo!6302 r!15766) Nil!10109 s!10566 s!10566))))))

(declare-fun bs!251402 () Bool)

(assert (= bs!251402 d!299871))

(assert (=> bs!251402 m!1217313))

(declare-fun m!1217629 () Bool)

(assert (=> bs!251402 m!1217629))

(assert (=> b!1053202 d!299871))

(declare-fun d!299873 () Bool)

(assert (=> d!299873 (= (Exists!622 lambda!37976) (choose!6689 lambda!37976))))

(declare-fun bs!251403 () Bool)

(assert (= bs!251403 d!299873))

(declare-fun m!1217631 () Bool)

(assert (=> bs!251403 m!1217631))

(assert (=> b!1053202 d!299873))

(declare-fun d!299875 () Bool)

(assert (=> d!299875 (= (Exists!622 lambda!37975) (choose!6689 lambda!37975))))

(declare-fun bs!251404 () Bool)

(assert (= bs!251404 d!299875))

(declare-fun m!1217633 () Bool)

(assert (=> bs!251404 m!1217633))

(assert (=> b!1053202 d!299875))

(declare-fun bs!251405 () Bool)

(declare-fun d!299877 () Bool)

(assert (= bs!251405 (and d!299877 b!1053205)))

(declare-fun lambda!38016 () Int)

(assert (=> bs!251405 (= (and (= (regOne!6302 r!15766) lt!358545) (= (regTwo!6302 r!15766) lt!358537)) (= lambda!38016 lambda!37977))))

(declare-fun bs!251406 () Bool)

(assert (= bs!251406 (and d!299877 b!1053661)))

(assert (=> bs!251406 (not (= lambda!38016 lambda!38013))))

(declare-fun bs!251407 () Bool)

(assert (= bs!251407 (and d!299877 b!1053202)))

(assert (=> bs!251407 (= lambda!38016 lambda!37975)))

(declare-fun bs!251408 () Bool)

(assert (= bs!251408 (and d!299877 b!1053672)))

(assert (=> bs!251408 (not (= lambda!38016 lambda!38015))))

(declare-fun bs!251409 () Bool)

(assert (= bs!251409 (and d!299877 d!299839)))

(assert (=> bs!251409 (= (and (= (regOne!6302 r!15766) lt!358545) (= (regTwo!6302 r!15766) lt!358537)) (= lambda!38016 lambda!38006))))

(declare-fun bs!251410 () Bool)

(assert (= bs!251410 (and d!299877 d!299801)))

(assert (=> bs!251410 (= (and (= (regOne!6302 r!15766) lt!358545) (= (regTwo!6302 r!15766) lt!358537)) (= lambda!38016 lambda!37985))))

(declare-fun bs!251411 () Bool)

(assert (= bs!251411 (and d!299877 b!1053657)))

(assert (=> bs!251411 (not (= lambda!38016 lambda!38012))))

(assert (=> bs!251405 (not (= lambda!38016 lambda!37978))))

(declare-fun bs!251412 () Bool)

(assert (= bs!251412 (and d!299877 b!1053668)))

(assert (=> bs!251412 (not (= lambda!38016 lambda!38014))))

(assert (=> bs!251407 (not (= lambda!38016 lambda!37976))))

(assert (=> bs!251410 (not (= lambda!38016 lambda!37988))))

(assert (=> d!299877 true))

(assert (=> d!299877 true))

(assert (=> d!299877 true))

(assert (=> d!299877 (= (isDefined!2062 (findConcatSeparation!526 (regOne!6302 r!15766) (regTwo!6302 r!15766) Nil!10109 s!10566 s!10566)) (Exists!622 lambda!38016))))

(declare-fun lt!358610 () Unit!15465)

(assert (=> d!299877 (= lt!358610 (choose!6690 (regOne!6302 r!15766) (regTwo!6302 r!15766) s!10566))))

(assert (=> d!299877 (validRegex!1364 (regOne!6302 r!15766))))

(assert (=> d!299877 (= (lemmaFindConcatSeparationEquivalentToExists!526 (regOne!6302 r!15766) (regTwo!6302 r!15766) s!10566) lt!358610)))

(declare-fun bs!251413 () Bool)

(assert (= bs!251413 d!299877))

(assert (=> bs!251413 m!1217309))

(declare-fun m!1217635 () Bool)

(assert (=> bs!251413 m!1217635))

(assert (=> bs!251413 m!1217313))

(declare-fun m!1217637 () Bool)

(assert (=> bs!251413 m!1217637))

(assert (=> bs!251413 m!1217313))

(assert (=> bs!251413 m!1217315))

(assert (=> b!1053202 d!299877))

(declare-fun b!1053716 () Bool)

(declare-fun e!669312 () Bool)

(declare-fun lt!358613 () Option!2420)

(assert (=> b!1053716 (= e!669312 (not (isDefined!2062 lt!358613)))))

(declare-fun b!1053717 () Bool)

(declare-fun lt!358611 () Unit!15465)

(declare-fun lt!358612 () Unit!15465)

(assert (=> b!1053717 (= lt!358611 lt!358612)))

(assert (=> b!1053717 (= (++!2794 (++!2794 Nil!10109 (Cons!10109 (h!15510 s!10566) Nil!10109)) (t!101171 s!10566)) s!10566)))

(assert (=> b!1053717 (= lt!358612 (lemmaMoveElementToOtherListKeepsConcatEq!387 Nil!10109 (h!15510 s!10566) (t!101171 s!10566) s!10566))))

(declare-fun e!669313 () Option!2420)

(assert (=> b!1053717 (= e!669313 (findConcatSeparation!526 (regOne!6302 r!15766) (regTwo!6302 r!15766) (++!2794 Nil!10109 (Cons!10109 (h!15510 s!10566) Nil!10109)) (t!101171 s!10566) s!10566))))

(declare-fun d!299879 () Bool)

(assert (=> d!299879 e!669312))

(declare-fun res!471207 () Bool)

(assert (=> d!299879 (=> res!471207 e!669312)))

(declare-fun e!669315 () Bool)

(assert (=> d!299879 (= res!471207 e!669315)))

(declare-fun res!471206 () Bool)

(assert (=> d!299879 (=> (not res!471206) (not e!669315))))

(assert (=> d!299879 (= res!471206 (isDefined!2062 lt!358613))))

(declare-fun e!669314 () Option!2420)

(assert (=> d!299879 (= lt!358613 e!669314)))

(declare-fun c!176228 () Bool)

(declare-fun e!669316 () Bool)

(assert (=> d!299879 (= c!176228 e!669316)))

(declare-fun res!471204 () Bool)

(assert (=> d!299879 (=> (not res!471204) (not e!669316))))

(assert (=> d!299879 (= res!471204 (matchR!1431 (regOne!6302 r!15766) Nil!10109))))

(assert (=> d!299879 (validRegex!1364 (regOne!6302 r!15766))))

(assert (=> d!299879 (= (findConcatSeparation!526 (regOne!6302 r!15766) (regTwo!6302 r!15766) Nil!10109 s!10566 s!10566) lt!358613)))

(declare-fun b!1053718 () Bool)

(assert (=> b!1053718 (= e!669314 (Some!2419 (tuple2!11557 Nil!10109 s!10566)))))

(declare-fun b!1053719 () Bool)

(declare-fun res!471208 () Bool)

(assert (=> b!1053719 (=> (not res!471208) (not e!669315))))

(assert (=> b!1053719 (= res!471208 (matchR!1431 (regTwo!6302 r!15766) (_2!6604 (get!3620 lt!358613))))))

(declare-fun b!1053720 () Bool)

(declare-fun res!471205 () Bool)

(assert (=> b!1053720 (=> (not res!471205) (not e!669315))))

(assert (=> b!1053720 (= res!471205 (matchR!1431 (regOne!6302 r!15766) (_1!6604 (get!3620 lt!358613))))))

(declare-fun b!1053721 () Bool)

(assert (=> b!1053721 (= e!669316 (matchR!1431 (regTwo!6302 r!15766) s!10566))))

(declare-fun b!1053722 () Bool)

(assert (=> b!1053722 (= e!669314 e!669313)))

(declare-fun c!176229 () Bool)

(assert (=> b!1053722 (= c!176229 ((_ is Nil!10109) s!10566))))

(declare-fun b!1053723 () Bool)

(assert (=> b!1053723 (= e!669315 (= (++!2794 (_1!6604 (get!3620 lt!358613)) (_2!6604 (get!3620 lt!358613))) s!10566))))

(declare-fun b!1053724 () Bool)

(assert (=> b!1053724 (= e!669313 None!2419)))

(assert (= (and d!299879 res!471204) b!1053721))

(assert (= (and d!299879 c!176228) b!1053718))

(assert (= (and d!299879 (not c!176228)) b!1053722))

(assert (= (and b!1053722 c!176229) b!1053724))

(assert (= (and b!1053722 (not c!176229)) b!1053717))

(assert (= (and d!299879 res!471206) b!1053720))

(assert (= (and b!1053720 res!471205) b!1053719))

(assert (= (and b!1053719 res!471208) b!1053723))

(assert (= (and d!299879 (not res!471207)) b!1053716))

(declare-fun m!1217639 () Bool)

(assert (=> b!1053719 m!1217639))

(declare-fun m!1217641 () Bool)

(assert (=> b!1053719 m!1217641))

(assert (=> b!1053717 m!1217523))

(assert (=> b!1053717 m!1217523))

(assert (=> b!1053717 m!1217525))

(assert (=> b!1053717 m!1217527))

(assert (=> b!1053717 m!1217523))

(declare-fun m!1217643 () Bool)

(assert (=> b!1053717 m!1217643))

(assert (=> b!1053720 m!1217639))

(declare-fun m!1217645 () Bool)

(assert (=> b!1053720 m!1217645))

(assert (=> b!1053723 m!1217639))

(declare-fun m!1217647 () Bool)

(assert (=> b!1053723 m!1217647))

(declare-fun m!1217649 () Bool)

(assert (=> b!1053721 m!1217649))

(declare-fun m!1217651 () Bool)

(assert (=> b!1053716 m!1217651))

(assert (=> d!299879 m!1217651))

(declare-fun m!1217653 () Bool)

(assert (=> d!299879 m!1217653))

(assert (=> d!299879 m!1217309))

(assert (=> b!1053202 d!299879))

(declare-fun bs!251414 () Bool)

(declare-fun d!299881 () Bool)

(assert (= bs!251414 (and d!299881 b!1053205)))

(declare-fun lambda!38017 () Int)

(assert (=> bs!251414 (= (and (= (regOne!6302 r!15766) lt!358545) (= (regTwo!6302 r!15766) lt!358537)) (= lambda!38017 lambda!37977))))

(declare-fun bs!251415 () Bool)

(assert (= bs!251415 (and d!299881 b!1053661)))

(assert (=> bs!251415 (not (= lambda!38017 lambda!38013))))

(declare-fun bs!251416 () Bool)

(assert (= bs!251416 (and d!299881 b!1053202)))

(assert (=> bs!251416 (= lambda!38017 lambda!37975)))

(declare-fun bs!251417 () Bool)

(assert (= bs!251417 (and d!299881 b!1053672)))

(assert (=> bs!251417 (not (= lambda!38017 lambda!38015))))

(declare-fun bs!251418 () Bool)

(assert (= bs!251418 (and d!299881 d!299839)))

(assert (=> bs!251418 (= (and (= (regOne!6302 r!15766) lt!358545) (= (regTwo!6302 r!15766) lt!358537)) (= lambda!38017 lambda!38006))))

(declare-fun bs!251419 () Bool)

(assert (= bs!251419 (and d!299881 d!299877)))

(assert (=> bs!251419 (= lambda!38017 lambda!38016)))

(declare-fun bs!251420 () Bool)

(assert (= bs!251420 (and d!299881 d!299801)))

(assert (=> bs!251420 (= (and (= (regOne!6302 r!15766) lt!358545) (= (regTwo!6302 r!15766) lt!358537)) (= lambda!38017 lambda!37985))))

(declare-fun bs!251421 () Bool)

(assert (= bs!251421 (and d!299881 b!1053657)))

(assert (=> bs!251421 (not (= lambda!38017 lambda!38012))))

(assert (=> bs!251414 (not (= lambda!38017 lambda!37978))))

(declare-fun bs!251422 () Bool)

(assert (= bs!251422 (and d!299881 b!1053668)))

(assert (=> bs!251422 (not (= lambda!38017 lambda!38014))))

(assert (=> bs!251416 (not (= lambda!38017 lambda!37976))))

(assert (=> bs!251420 (not (= lambda!38017 lambda!37988))))

(assert (=> d!299881 true))

(assert (=> d!299881 true))

(assert (=> d!299881 true))

(declare-fun lambda!38018 () Int)

(assert (=> bs!251414 (not (= lambda!38018 lambda!37977))))

(assert (=> bs!251415 (= (and (= (regOne!6302 r!15766) (regOne!6302 lt!358532)) (= (regTwo!6302 r!15766) (regTwo!6302 lt!358532))) (= lambda!38018 lambda!38013))))

(assert (=> bs!251416 (not (= lambda!38018 lambda!37975))))

(assert (=> bs!251418 (not (= lambda!38018 lambda!38006))))

(assert (=> bs!251419 (not (= lambda!38018 lambda!38016))))

(assert (=> bs!251420 (not (= lambda!38018 lambda!37985))))

(assert (=> bs!251421 (not (= lambda!38018 lambda!38012))))

(assert (=> bs!251414 (= (and (= (regOne!6302 r!15766) lt!358545) (= (regTwo!6302 r!15766) lt!358537)) (= lambda!38018 lambda!37978))))

(assert (=> bs!251422 (not (= lambda!38018 lambda!38014))))

(assert (=> bs!251416 (= lambda!38018 lambda!37976)))

(assert (=> bs!251420 (= (and (= (regOne!6302 r!15766) lt!358545) (= (regTwo!6302 r!15766) lt!358537)) (= lambda!38018 lambda!37988))))

(declare-fun bs!251423 () Bool)

(assert (= bs!251423 d!299881))

(assert (=> bs!251423 (not (= lambda!38018 lambda!38017))))

(assert (=> bs!251417 (= lambda!38018 lambda!38015)))

(assert (=> d!299881 true))

(assert (=> d!299881 true))

(assert (=> d!299881 true))

(assert (=> d!299881 (= (Exists!622 lambda!38017) (Exists!622 lambda!38018))))

(declare-fun lt!358614 () Unit!15465)

(assert (=> d!299881 (= lt!358614 (choose!6688 (regOne!6302 r!15766) (regTwo!6302 r!15766) s!10566))))

(assert (=> d!299881 (validRegex!1364 (regOne!6302 r!15766))))

(assert (=> d!299881 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!310 (regOne!6302 r!15766) (regTwo!6302 r!15766) s!10566) lt!358614)))

(declare-fun m!1217655 () Bool)

(assert (=> bs!251423 m!1217655))

(declare-fun m!1217657 () Bool)

(assert (=> bs!251423 m!1217657))

(declare-fun m!1217659 () Bool)

(assert (=> bs!251423 m!1217659))

(assert (=> bs!251423 m!1217309))

(assert (=> b!1053202 d!299881))

(declare-fun d!299883 () Bool)

(declare-fun e!669321 () Bool)

(assert (=> d!299883 e!669321))

(declare-fun c!176231 () Bool)

(assert (=> d!299883 (= c!176231 ((_ is EmptyExpr!2895) lt!358532))))

(declare-fun lt!358615 () Bool)

(declare-fun e!669323 () Bool)

(assert (=> d!299883 (= lt!358615 e!669323)))

(declare-fun c!176230 () Bool)

(assert (=> d!299883 (= c!176230 (isEmpty!6519 s!10566))))

(assert (=> d!299883 (validRegex!1364 lt!358532)))

(assert (=> d!299883 (= (matchR!1431 lt!358532 s!10566) lt!358615)))

(declare-fun b!1053725 () Bool)

(assert (=> b!1053725 (= e!669323 (nullable!987 lt!358532))))

(declare-fun b!1053726 () Bool)

(declare-fun e!669319 () Bool)

(declare-fun e!669318 () Bool)

(assert (=> b!1053726 (= e!669319 e!669318)))

(declare-fun res!471209 () Bool)

(assert (=> b!1053726 (=> (not res!471209) (not e!669318))))

(assert (=> b!1053726 (= res!471209 (not lt!358615))))

(declare-fun b!1053727 () Bool)

(assert (=> b!1053727 (= e!669323 (matchR!1431 (derivativeStep!787 lt!358532 (head!1942 s!10566)) (tail!1504 s!10566)))))

(declare-fun bm!75104 () Bool)

(declare-fun call!75109 () Bool)

(assert (=> bm!75104 (= call!75109 (isEmpty!6519 s!10566))))

(declare-fun b!1053728 () Bool)

(declare-fun e!669317 () Bool)

(assert (=> b!1053728 (= e!669317 (not (= (head!1942 s!10566) (c!176112 lt!358532))))))

(declare-fun b!1053729 () Bool)

(declare-fun res!471211 () Bool)

(assert (=> b!1053729 (=> res!471211 e!669319)))

(declare-fun e!669322 () Bool)

(assert (=> b!1053729 (= res!471211 e!669322)))

(declare-fun res!471216 () Bool)

(assert (=> b!1053729 (=> (not res!471216) (not e!669322))))

(assert (=> b!1053729 (= res!471216 lt!358615)))

(declare-fun b!1053730 () Bool)

(declare-fun res!471213 () Bool)

(assert (=> b!1053730 (=> res!471213 e!669317)))

(assert (=> b!1053730 (= res!471213 (not (isEmpty!6519 (tail!1504 s!10566))))))

(declare-fun b!1053731 () Bool)

(assert (=> b!1053731 (= e!669321 (= lt!358615 call!75109))))

(declare-fun b!1053732 () Bool)

(declare-fun e!669320 () Bool)

(assert (=> b!1053732 (= e!669320 (not lt!358615))))

(declare-fun b!1053733 () Bool)

(assert (=> b!1053733 (= e!669322 (= (head!1942 s!10566) (c!176112 lt!358532)))))

(declare-fun b!1053734 () Bool)

(declare-fun res!471212 () Bool)

(assert (=> b!1053734 (=> (not res!471212) (not e!669322))))

(assert (=> b!1053734 (= res!471212 (isEmpty!6519 (tail!1504 s!10566)))))

(declare-fun b!1053735 () Bool)

(assert (=> b!1053735 (= e!669318 e!669317)))

(declare-fun res!471215 () Bool)

(assert (=> b!1053735 (=> res!471215 e!669317)))

(assert (=> b!1053735 (= res!471215 call!75109)))

(declare-fun b!1053736 () Bool)

(assert (=> b!1053736 (= e!669321 e!669320)))

(declare-fun c!176232 () Bool)

(assert (=> b!1053736 (= c!176232 ((_ is EmptyLang!2895) lt!358532))))

(declare-fun b!1053737 () Bool)

(declare-fun res!471214 () Bool)

(assert (=> b!1053737 (=> res!471214 e!669319)))

(assert (=> b!1053737 (= res!471214 (not ((_ is ElementMatch!2895) lt!358532)))))

(assert (=> b!1053737 (= e!669320 e!669319)))

(declare-fun b!1053738 () Bool)

(declare-fun res!471210 () Bool)

(assert (=> b!1053738 (=> (not res!471210) (not e!669322))))

(assert (=> b!1053738 (= res!471210 (not call!75109))))

(assert (= (and d!299883 c!176230) b!1053725))

(assert (= (and d!299883 (not c!176230)) b!1053727))

(assert (= (and d!299883 c!176231) b!1053731))

(assert (= (and d!299883 (not c!176231)) b!1053736))

(assert (= (and b!1053736 c!176232) b!1053732))

(assert (= (and b!1053736 (not c!176232)) b!1053737))

(assert (= (and b!1053737 (not res!471214)) b!1053729))

(assert (= (and b!1053729 res!471216) b!1053738))

(assert (= (and b!1053738 res!471210) b!1053734))

(assert (= (and b!1053734 res!471212) b!1053733))

(assert (= (and b!1053729 (not res!471211)) b!1053726))

(assert (= (and b!1053726 res!471209) b!1053735))

(assert (= (and b!1053735 (not res!471215)) b!1053730))

(assert (= (and b!1053730 (not res!471213)) b!1053728))

(assert (= (or b!1053731 b!1053735 b!1053738) bm!75104))

(assert (=> b!1053730 m!1217615))

(assert (=> b!1053730 m!1217615))

(assert (=> b!1053730 m!1217617))

(assert (=> b!1053728 m!1217619))

(assert (=> b!1053734 m!1217615))

(assert (=> b!1053734 m!1217615))

(assert (=> b!1053734 m!1217617))

(assert (=> b!1053733 m!1217619))

(assert (=> bm!75104 m!1217317))

(assert (=> d!299883 m!1217317))

(assert (=> d!299883 m!1217601))

(assert (=> b!1053727 m!1217619))

(assert (=> b!1053727 m!1217619))

(declare-fun m!1217661 () Bool)

(assert (=> b!1053727 m!1217661))

(assert (=> b!1053727 m!1217615))

(assert (=> b!1053727 m!1217661))

(assert (=> b!1053727 m!1217615))

(declare-fun m!1217663 () Bool)

(assert (=> b!1053727 m!1217663))

(declare-fun m!1217665 () Bool)

(assert (=> b!1053725 m!1217665))

(assert (=> b!1053207 d!299883))

(declare-fun b!1053761 () Bool)

(declare-fun e!669336 () Regex!2895)

(declare-fun call!75121 () Regex!2895)

(assert (=> b!1053761 (= e!669336 call!75121)))

(declare-fun b!1053762 () Bool)

(declare-fun e!669340 () Regex!2895)

(declare-fun call!75120 () Regex!2895)

(assert (=> b!1053762 (= e!669340 call!75120)))

(declare-fun b!1053763 () Bool)

(declare-fun c!176243 () Bool)

(assert (=> b!1053763 (= c!176243 ((_ is Concat!4728) (regTwo!6302 r!15766)))))

(declare-fun e!669337 () Regex!2895)

(assert (=> b!1053763 (= e!669340 e!669337)))

(declare-fun b!1053764 () Bool)

(declare-fun c!176245 () Bool)

(assert (=> b!1053764 (= c!176245 ((_ is Star!2895) (regTwo!6302 r!15766)))))

(declare-fun e!669339 () Regex!2895)

(declare-fun e!669338 () Regex!2895)

(assert (=> b!1053764 (= e!669339 e!669338)))

(declare-fun b!1053765 () Bool)

(assert (=> b!1053765 (= e!669337 e!669339)))

(declare-fun c!176247 () Bool)

(assert (=> b!1053765 (= c!176247 ((_ is Union!2895) (regTwo!6302 r!15766)))))

(declare-fun b!1053766 () Bool)

(declare-fun call!75122 () Regex!2895)

(declare-fun call!75124 () Regex!2895)

(assert (=> b!1053766 (= e!669337 (Concat!4728 call!75122 call!75124))))

(declare-fun bm!75115 () Bool)

(assert (=> bm!75115 (= call!75122 call!75120)))

(declare-fun bm!75116 () Bool)

(declare-fun call!75123 () Regex!2895)

(assert (=> bm!75116 (= call!75123 call!75124)))

(declare-fun d!299885 () Bool)

(declare-fun e!669341 () Bool)

(assert (=> d!299885 e!669341))

(declare-fun res!471219 () Bool)

(assert (=> d!299885 (=> (not res!471219) (not e!669341))))

(declare-fun lt!358618 () Regex!2895)

(assert (=> d!299885 (= res!471219 (validRegex!1364 lt!358618))))

(assert (=> d!299885 (= lt!358618 e!669336)))

(declare-fun c!176246 () Bool)

(assert (=> d!299885 (= c!176246 (and ((_ is Concat!4728) (regTwo!6302 r!15766)) ((_ is EmptyExpr!2895) (regOne!6302 (regTwo!6302 r!15766)))))))

(assert (=> d!299885 (validRegex!1364 (regTwo!6302 r!15766))))

(assert (=> d!299885 (= (removeUselessConcat!444 (regTwo!6302 r!15766)) lt!358618)))

(declare-fun c!176244 () Bool)

(declare-fun bm!75117 () Bool)

(assert (=> bm!75117 (= call!75120 (removeUselessConcat!444 (ite (or c!176244 c!176243) (regOne!6302 (regTwo!6302 r!15766)) (regOne!6303 (regTwo!6302 r!15766)))))))

(declare-fun b!1053767 () Bool)

(assert (=> b!1053767 (= e!669338 (regTwo!6302 r!15766))))

(declare-fun b!1053768 () Bool)

(assert (=> b!1053768 (= e!669338 (Star!2895 call!75123))))

(declare-fun b!1053769 () Bool)

(assert (=> b!1053769 (= e!669336 e!669340)))

(assert (=> b!1053769 (= c!176244 (and ((_ is Concat!4728) (regTwo!6302 r!15766)) ((_ is EmptyExpr!2895) (regTwo!6302 (regTwo!6302 r!15766)))))))

(declare-fun bm!75118 () Bool)

(assert (=> bm!75118 (= call!75121 (removeUselessConcat!444 (ite (or c!176246 c!176243) (regTwo!6302 (regTwo!6302 r!15766)) (ite c!176247 (regTwo!6303 (regTwo!6302 r!15766)) (reg!3224 (regTwo!6302 r!15766))))))))

(declare-fun b!1053770 () Bool)

(assert (=> b!1053770 (= e!669339 (Union!2895 call!75122 call!75123))))

(declare-fun bm!75119 () Bool)

(assert (=> bm!75119 (= call!75124 call!75121)))

(declare-fun b!1053771 () Bool)

(assert (=> b!1053771 (= e!669341 (= (nullable!987 lt!358618) (nullable!987 (regTwo!6302 r!15766))))))

(assert (= (and d!299885 c!176246) b!1053761))

(assert (= (and d!299885 (not c!176246)) b!1053769))

(assert (= (and b!1053769 c!176244) b!1053762))

(assert (= (and b!1053769 (not c!176244)) b!1053763))

(assert (= (and b!1053763 c!176243) b!1053766))

(assert (= (and b!1053763 (not c!176243)) b!1053765))

(assert (= (and b!1053765 c!176247) b!1053770))

(assert (= (and b!1053765 (not c!176247)) b!1053764))

(assert (= (and b!1053764 c!176245) b!1053768))

(assert (= (and b!1053764 (not c!176245)) b!1053767))

(assert (= (or b!1053770 b!1053768) bm!75116))

(assert (= (or b!1053766 bm!75116) bm!75119))

(assert (= (or b!1053766 b!1053770) bm!75115))

(assert (= (or b!1053762 bm!75115) bm!75117))

(assert (= (or b!1053761 bm!75119) bm!75118))

(assert (= (and d!299885 res!471219) b!1053771))

(declare-fun m!1217667 () Bool)

(assert (=> d!299885 m!1217667))

(assert (=> d!299885 m!1217349))

(declare-fun m!1217669 () Bool)

(assert (=> bm!75117 m!1217669))

(declare-fun m!1217671 () Bool)

(assert (=> bm!75118 m!1217671))

(declare-fun m!1217673 () Bool)

(assert (=> b!1053771 m!1217673))

(declare-fun m!1217675 () Bool)

(assert (=> b!1053771 m!1217675))

(assert (=> b!1053207 d!299885))

(declare-fun b!1053772 () Bool)

(declare-fun e!669342 () Regex!2895)

(declare-fun call!75126 () Regex!2895)

(assert (=> b!1053772 (= e!669342 call!75126)))

(declare-fun b!1053773 () Bool)

(declare-fun e!669346 () Regex!2895)

(declare-fun call!75125 () Regex!2895)

(assert (=> b!1053773 (= e!669346 call!75125)))

(declare-fun b!1053774 () Bool)

(declare-fun c!176248 () Bool)

(assert (=> b!1053774 (= c!176248 ((_ is Concat!4728) (regOne!6302 r!15766)))))

(declare-fun e!669343 () Regex!2895)

(assert (=> b!1053774 (= e!669346 e!669343)))

(declare-fun b!1053775 () Bool)

(declare-fun c!176250 () Bool)

(assert (=> b!1053775 (= c!176250 ((_ is Star!2895) (regOne!6302 r!15766)))))

(declare-fun e!669345 () Regex!2895)

(declare-fun e!669344 () Regex!2895)

(assert (=> b!1053775 (= e!669345 e!669344)))

(declare-fun b!1053776 () Bool)

(assert (=> b!1053776 (= e!669343 e!669345)))

(declare-fun c!176252 () Bool)

(assert (=> b!1053776 (= c!176252 ((_ is Union!2895) (regOne!6302 r!15766)))))

(declare-fun b!1053777 () Bool)

(declare-fun call!75127 () Regex!2895)

(declare-fun call!75129 () Regex!2895)

(assert (=> b!1053777 (= e!669343 (Concat!4728 call!75127 call!75129))))

(declare-fun bm!75120 () Bool)

(assert (=> bm!75120 (= call!75127 call!75125)))

(declare-fun bm!75121 () Bool)

(declare-fun call!75128 () Regex!2895)

(assert (=> bm!75121 (= call!75128 call!75129)))

(declare-fun d!299887 () Bool)

(declare-fun e!669347 () Bool)

(assert (=> d!299887 e!669347))

(declare-fun res!471220 () Bool)

(assert (=> d!299887 (=> (not res!471220) (not e!669347))))

(declare-fun lt!358619 () Regex!2895)

(assert (=> d!299887 (= res!471220 (validRegex!1364 lt!358619))))

(assert (=> d!299887 (= lt!358619 e!669342)))

(declare-fun c!176251 () Bool)

(assert (=> d!299887 (= c!176251 (and ((_ is Concat!4728) (regOne!6302 r!15766)) ((_ is EmptyExpr!2895) (regOne!6302 (regOne!6302 r!15766)))))))

(assert (=> d!299887 (validRegex!1364 (regOne!6302 r!15766))))

(assert (=> d!299887 (= (removeUselessConcat!444 (regOne!6302 r!15766)) lt!358619)))

(declare-fun c!176249 () Bool)

(declare-fun bm!75122 () Bool)

(assert (=> bm!75122 (= call!75125 (removeUselessConcat!444 (ite (or c!176249 c!176248) (regOne!6302 (regOne!6302 r!15766)) (regOne!6303 (regOne!6302 r!15766)))))))

(declare-fun b!1053778 () Bool)

(assert (=> b!1053778 (= e!669344 (regOne!6302 r!15766))))

(declare-fun b!1053779 () Bool)

(assert (=> b!1053779 (= e!669344 (Star!2895 call!75128))))

(declare-fun b!1053780 () Bool)

(assert (=> b!1053780 (= e!669342 e!669346)))

(assert (=> b!1053780 (= c!176249 (and ((_ is Concat!4728) (regOne!6302 r!15766)) ((_ is EmptyExpr!2895) (regTwo!6302 (regOne!6302 r!15766)))))))

(declare-fun bm!75123 () Bool)

(assert (=> bm!75123 (= call!75126 (removeUselessConcat!444 (ite (or c!176251 c!176248) (regTwo!6302 (regOne!6302 r!15766)) (ite c!176252 (regTwo!6303 (regOne!6302 r!15766)) (reg!3224 (regOne!6302 r!15766))))))))

(declare-fun b!1053781 () Bool)

(assert (=> b!1053781 (= e!669345 (Union!2895 call!75127 call!75128))))

(declare-fun bm!75124 () Bool)

(assert (=> bm!75124 (= call!75129 call!75126)))

(declare-fun b!1053782 () Bool)

(assert (=> b!1053782 (= e!669347 (= (nullable!987 lt!358619) (nullable!987 (regOne!6302 r!15766))))))

(assert (= (and d!299887 c!176251) b!1053772))

(assert (= (and d!299887 (not c!176251)) b!1053780))

(assert (= (and b!1053780 c!176249) b!1053773))

(assert (= (and b!1053780 (not c!176249)) b!1053774))

(assert (= (and b!1053774 c!176248) b!1053777))

(assert (= (and b!1053774 (not c!176248)) b!1053776))

(assert (= (and b!1053776 c!176252) b!1053781))

(assert (= (and b!1053776 (not c!176252)) b!1053775))

(assert (= (and b!1053775 c!176250) b!1053779))

(assert (= (and b!1053775 (not c!176250)) b!1053778))

(assert (= (or b!1053781 b!1053779) bm!75121))

(assert (= (or b!1053777 bm!75121) bm!75124))

(assert (= (or b!1053777 b!1053781) bm!75120))

(assert (= (or b!1053773 bm!75120) bm!75122))

(assert (= (or b!1053772 bm!75124) bm!75123))

(assert (= (and d!299887 res!471220) b!1053782))

(declare-fun m!1217677 () Bool)

(assert (=> d!299887 m!1217677))

(assert (=> d!299887 m!1217309))

(declare-fun m!1217679 () Bool)

(assert (=> bm!75122 m!1217679))

(declare-fun m!1217681 () Bool)

(assert (=> bm!75123 m!1217681))

(declare-fun m!1217683 () Bool)

(assert (=> b!1053782 m!1217683))

(declare-fun m!1217685 () Bool)

(assert (=> b!1053782 m!1217685))

(assert (=> b!1053207 d!299887))

(declare-fun bm!75125 () Bool)

(declare-fun c!176254 () Bool)

(declare-fun call!75130 () Bool)

(declare-fun c!176253 () Bool)

(assert (=> bm!75125 (= call!75130 (validRegex!1364 (ite c!176254 (reg!3224 r!15766) (ite c!176253 (regOne!6303 r!15766) (regOne!6302 r!15766)))))))

(declare-fun b!1053783 () Bool)

(declare-fun e!669350 () Bool)

(declare-fun call!75131 () Bool)

(assert (=> b!1053783 (= e!669350 call!75131)))

(declare-fun b!1053784 () Bool)

(declare-fun e!669348 () Bool)

(declare-fun e!669352 () Bool)

(assert (=> b!1053784 (= e!669348 e!669352)))

(declare-fun res!471224 () Bool)

(assert (=> b!1053784 (= res!471224 (not (nullable!987 (reg!3224 r!15766))))))

(assert (=> b!1053784 (=> (not res!471224) (not e!669352))))

(declare-fun b!1053785 () Bool)

(declare-fun e!669354 () Bool)

(assert (=> b!1053785 (= e!669354 call!75131)))

(declare-fun b!1053786 () Bool)

(assert (=> b!1053786 (= e!669352 call!75130)))

(declare-fun b!1053787 () Bool)

(declare-fun e!669351 () Bool)

(assert (=> b!1053787 (= e!669348 e!669351)))

(assert (=> b!1053787 (= c!176253 ((_ is Union!2895) r!15766))))

(declare-fun d!299889 () Bool)

(declare-fun res!471222 () Bool)

(declare-fun e!669349 () Bool)

(assert (=> d!299889 (=> res!471222 e!669349)))

(assert (=> d!299889 (= res!471222 ((_ is ElementMatch!2895) r!15766))))

(assert (=> d!299889 (= (validRegex!1364 r!15766) e!669349)))

(declare-fun b!1053788 () Bool)

(assert (=> b!1053788 (= e!669349 e!669348)))

(assert (=> b!1053788 (= c!176254 ((_ is Star!2895) r!15766))))

(declare-fun b!1053789 () Bool)

(declare-fun res!471225 () Bool)

(declare-fun e!669353 () Bool)

(assert (=> b!1053789 (=> res!471225 e!669353)))

(assert (=> b!1053789 (= res!471225 (not ((_ is Concat!4728) r!15766)))))

(assert (=> b!1053789 (= e!669351 e!669353)))

(declare-fun bm!75126 () Bool)

(declare-fun call!75132 () Bool)

(assert (=> bm!75126 (= call!75132 call!75130)))

(declare-fun bm!75127 () Bool)

(assert (=> bm!75127 (= call!75131 (validRegex!1364 (ite c!176253 (regTwo!6303 r!15766) (regTwo!6302 r!15766))))))

(declare-fun b!1053790 () Bool)

(declare-fun res!471223 () Bool)

(assert (=> b!1053790 (=> (not res!471223) (not e!669350))))

(assert (=> b!1053790 (= res!471223 call!75132)))

(assert (=> b!1053790 (= e!669351 e!669350)))

(declare-fun b!1053791 () Bool)

(assert (=> b!1053791 (= e!669353 e!669354)))

(declare-fun res!471221 () Bool)

(assert (=> b!1053791 (=> (not res!471221) (not e!669354))))

(assert (=> b!1053791 (= res!471221 call!75132)))

(assert (= (and d!299889 (not res!471222)) b!1053788))

(assert (= (and b!1053788 c!176254) b!1053784))

(assert (= (and b!1053788 (not c!176254)) b!1053787))

(assert (= (and b!1053784 res!471224) b!1053786))

(assert (= (and b!1053787 c!176253) b!1053790))

(assert (= (and b!1053787 (not c!176253)) b!1053789))

(assert (= (and b!1053790 res!471223) b!1053783))

(assert (= (and b!1053789 (not res!471225)) b!1053791))

(assert (= (and b!1053791 res!471221) b!1053785))

(assert (= (or b!1053783 b!1053785) bm!75127))

(assert (= (or b!1053790 b!1053791) bm!75126))

(assert (= (or b!1053786 bm!75126) bm!75125))

(declare-fun m!1217687 () Bool)

(assert (=> bm!75125 m!1217687))

(declare-fun m!1217689 () Bool)

(assert (=> b!1053784 m!1217689))

(declare-fun m!1217691 () Bool)

(assert (=> bm!75127 m!1217691))

(assert (=> start!90726 d!299889))

(declare-fun c!176255 () Bool)

(declare-fun c!176256 () Bool)

(declare-fun bm!75128 () Bool)

(declare-fun call!75133 () Bool)

(assert (=> bm!75128 (= call!75133 (validRegex!1364 (ite c!176256 (reg!3224 (regOne!6302 r!15766)) (ite c!176255 (regOne!6303 (regOne!6302 r!15766)) (regOne!6302 (regOne!6302 r!15766))))))))

(declare-fun b!1053792 () Bool)

(declare-fun e!669357 () Bool)

(declare-fun call!75134 () Bool)

(assert (=> b!1053792 (= e!669357 call!75134)))

(declare-fun b!1053793 () Bool)

(declare-fun e!669355 () Bool)

(declare-fun e!669359 () Bool)

(assert (=> b!1053793 (= e!669355 e!669359)))

(declare-fun res!471229 () Bool)

(assert (=> b!1053793 (= res!471229 (not (nullable!987 (reg!3224 (regOne!6302 r!15766)))))))

(assert (=> b!1053793 (=> (not res!471229) (not e!669359))))

(declare-fun b!1053794 () Bool)

(declare-fun e!669361 () Bool)

(assert (=> b!1053794 (= e!669361 call!75134)))

(declare-fun b!1053795 () Bool)

(assert (=> b!1053795 (= e!669359 call!75133)))

(declare-fun b!1053796 () Bool)

(declare-fun e!669358 () Bool)

(assert (=> b!1053796 (= e!669355 e!669358)))

(assert (=> b!1053796 (= c!176255 ((_ is Union!2895) (regOne!6302 r!15766)))))

(declare-fun d!299891 () Bool)

(declare-fun res!471227 () Bool)

(declare-fun e!669356 () Bool)

(assert (=> d!299891 (=> res!471227 e!669356)))

(assert (=> d!299891 (= res!471227 ((_ is ElementMatch!2895) (regOne!6302 r!15766)))))

(assert (=> d!299891 (= (validRegex!1364 (regOne!6302 r!15766)) e!669356)))

(declare-fun b!1053797 () Bool)

(assert (=> b!1053797 (= e!669356 e!669355)))

(assert (=> b!1053797 (= c!176256 ((_ is Star!2895) (regOne!6302 r!15766)))))

(declare-fun b!1053798 () Bool)

(declare-fun res!471230 () Bool)

(declare-fun e!669360 () Bool)

(assert (=> b!1053798 (=> res!471230 e!669360)))

(assert (=> b!1053798 (= res!471230 (not ((_ is Concat!4728) (regOne!6302 r!15766))))))

(assert (=> b!1053798 (= e!669358 e!669360)))

(declare-fun bm!75129 () Bool)

(declare-fun call!75135 () Bool)

(assert (=> bm!75129 (= call!75135 call!75133)))

(declare-fun bm!75130 () Bool)

(assert (=> bm!75130 (= call!75134 (validRegex!1364 (ite c!176255 (regTwo!6303 (regOne!6302 r!15766)) (regTwo!6302 (regOne!6302 r!15766)))))))

(declare-fun b!1053799 () Bool)

(declare-fun res!471228 () Bool)

(assert (=> b!1053799 (=> (not res!471228) (not e!669357))))

(assert (=> b!1053799 (= res!471228 call!75135)))

(assert (=> b!1053799 (= e!669358 e!669357)))

(declare-fun b!1053800 () Bool)

(assert (=> b!1053800 (= e!669360 e!669361)))

(declare-fun res!471226 () Bool)

(assert (=> b!1053800 (=> (not res!471226) (not e!669361))))

(assert (=> b!1053800 (= res!471226 call!75135)))

(assert (= (and d!299891 (not res!471227)) b!1053797))

(assert (= (and b!1053797 c!176256) b!1053793))

(assert (= (and b!1053797 (not c!176256)) b!1053796))

(assert (= (and b!1053793 res!471229) b!1053795))

(assert (= (and b!1053796 c!176255) b!1053799))

(assert (= (and b!1053796 (not c!176255)) b!1053798))

(assert (= (and b!1053799 res!471228) b!1053792))

(assert (= (and b!1053798 (not res!471230)) b!1053800))

(assert (= (and b!1053800 res!471226) b!1053794))

(assert (= (or b!1053792 b!1053794) bm!75130))

(assert (= (or b!1053799 b!1053800) bm!75129))

(assert (= (or b!1053795 bm!75129) bm!75128))

(declare-fun m!1217693 () Bool)

(assert (=> bm!75128 m!1217693))

(declare-fun m!1217695 () Bool)

(assert (=> b!1053793 m!1217695))

(declare-fun m!1217697 () Bool)

(assert (=> bm!75130 m!1217697))

(assert (=> b!1053206 d!299891))

(declare-fun d!299893 () Bool)

(declare-fun e!669366 () Bool)

(assert (=> d!299893 e!669366))

(declare-fun c!176258 () Bool)

(assert (=> d!299893 (= c!176258 ((_ is EmptyExpr!2895) (regOne!6302 r!15766)))))

(declare-fun lt!358620 () Bool)

(declare-fun e!669368 () Bool)

(assert (=> d!299893 (= lt!358620 e!669368)))

(declare-fun c!176257 () Bool)

(assert (=> d!299893 (= c!176257 (isEmpty!6519 (_1!6604 lt!358547)))))

(assert (=> d!299893 (validRegex!1364 (regOne!6302 r!15766))))

(assert (=> d!299893 (= (matchR!1431 (regOne!6302 r!15766) (_1!6604 lt!358547)) lt!358620)))

(declare-fun b!1053801 () Bool)

(assert (=> b!1053801 (= e!669368 (nullable!987 (regOne!6302 r!15766)))))

(declare-fun b!1053802 () Bool)

(declare-fun e!669364 () Bool)

(declare-fun e!669363 () Bool)

(assert (=> b!1053802 (= e!669364 e!669363)))

(declare-fun res!471231 () Bool)

(assert (=> b!1053802 (=> (not res!471231) (not e!669363))))

(assert (=> b!1053802 (= res!471231 (not lt!358620))))

(declare-fun b!1053803 () Bool)

(assert (=> b!1053803 (= e!669368 (matchR!1431 (derivativeStep!787 (regOne!6302 r!15766) (head!1942 (_1!6604 lt!358547))) (tail!1504 (_1!6604 lt!358547))))))

(declare-fun bm!75131 () Bool)

(declare-fun call!75136 () Bool)

(assert (=> bm!75131 (= call!75136 (isEmpty!6519 (_1!6604 lt!358547)))))

(declare-fun b!1053804 () Bool)

(declare-fun e!669362 () Bool)

(assert (=> b!1053804 (= e!669362 (not (= (head!1942 (_1!6604 lt!358547)) (c!176112 (regOne!6302 r!15766)))))))

(declare-fun b!1053805 () Bool)

(declare-fun res!471233 () Bool)

(assert (=> b!1053805 (=> res!471233 e!669364)))

(declare-fun e!669367 () Bool)

(assert (=> b!1053805 (= res!471233 e!669367)))

(declare-fun res!471238 () Bool)

(assert (=> b!1053805 (=> (not res!471238) (not e!669367))))

(assert (=> b!1053805 (= res!471238 lt!358620)))

(declare-fun b!1053806 () Bool)

(declare-fun res!471235 () Bool)

(assert (=> b!1053806 (=> res!471235 e!669362)))

(assert (=> b!1053806 (= res!471235 (not (isEmpty!6519 (tail!1504 (_1!6604 lt!358547)))))))

(declare-fun b!1053807 () Bool)

(assert (=> b!1053807 (= e!669366 (= lt!358620 call!75136))))

(declare-fun b!1053808 () Bool)

(declare-fun e!669365 () Bool)

(assert (=> b!1053808 (= e!669365 (not lt!358620))))

(declare-fun b!1053809 () Bool)

(assert (=> b!1053809 (= e!669367 (= (head!1942 (_1!6604 lt!358547)) (c!176112 (regOne!6302 r!15766))))))

(declare-fun b!1053810 () Bool)

(declare-fun res!471234 () Bool)

(assert (=> b!1053810 (=> (not res!471234) (not e!669367))))

(assert (=> b!1053810 (= res!471234 (isEmpty!6519 (tail!1504 (_1!6604 lt!358547))))))

(declare-fun b!1053811 () Bool)

(assert (=> b!1053811 (= e!669363 e!669362)))

(declare-fun res!471237 () Bool)

(assert (=> b!1053811 (=> res!471237 e!669362)))

(assert (=> b!1053811 (= res!471237 call!75136)))

(declare-fun b!1053812 () Bool)

(assert (=> b!1053812 (= e!669366 e!669365)))

(declare-fun c!176259 () Bool)

(assert (=> b!1053812 (= c!176259 ((_ is EmptyLang!2895) (regOne!6302 r!15766)))))

(declare-fun b!1053813 () Bool)

(declare-fun res!471236 () Bool)

(assert (=> b!1053813 (=> res!471236 e!669364)))

(assert (=> b!1053813 (= res!471236 (not ((_ is ElementMatch!2895) (regOne!6302 r!15766))))))

(assert (=> b!1053813 (= e!669365 e!669364)))

(declare-fun b!1053814 () Bool)

(declare-fun res!471232 () Bool)

(assert (=> b!1053814 (=> (not res!471232) (not e!669367))))

(assert (=> b!1053814 (= res!471232 (not call!75136))))

(assert (= (and d!299893 c!176257) b!1053801))

(assert (= (and d!299893 (not c!176257)) b!1053803))

(assert (= (and d!299893 c!176258) b!1053807))

(assert (= (and d!299893 (not c!176258)) b!1053812))

(assert (= (and b!1053812 c!176259) b!1053808))

(assert (= (and b!1053812 (not c!176259)) b!1053813))

(assert (= (and b!1053813 (not res!471236)) b!1053805))

(assert (= (and b!1053805 res!471238) b!1053814))

(assert (= (and b!1053814 res!471232) b!1053810))

(assert (= (and b!1053810 res!471234) b!1053809))

(assert (= (and b!1053805 (not res!471233)) b!1053802))

(assert (= (and b!1053802 res!471231) b!1053811))

(assert (= (and b!1053811 (not res!471237)) b!1053806))

(assert (= (and b!1053806 (not res!471235)) b!1053804))

(assert (= (or b!1053807 b!1053811 b!1053814) bm!75131))

(declare-fun m!1217699 () Bool)

(assert (=> b!1053806 m!1217699))

(assert (=> b!1053806 m!1217699))

(declare-fun m!1217701 () Bool)

(assert (=> b!1053806 m!1217701))

(declare-fun m!1217703 () Bool)

(assert (=> b!1053804 m!1217703))

(assert (=> b!1053810 m!1217699))

(assert (=> b!1053810 m!1217699))

(assert (=> b!1053810 m!1217701))

(assert (=> b!1053809 m!1217703))

(declare-fun m!1217705 () Bool)

(assert (=> bm!75131 m!1217705))

(assert (=> d!299893 m!1217705))

(assert (=> d!299893 m!1217309))

(assert (=> b!1053803 m!1217703))

(assert (=> b!1053803 m!1217703))

(declare-fun m!1217707 () Bool)

(assert (=> b!1053803 m!1217707))

(assert (=> b!1053803 m!1217699))

(assert (=> b!1053803 m!1217707))

(assert (=> b!1053803 m!1217699))

(declare-fun m!1217709 () Bool)

(assert (=> b!1053803 m!1217709))

(assert (=> b!1053801 m!1217685))

(assert (=> b!1053206 d!299893))

(declare-fun d!299895 () Bool)

(assert (=> d!299895 (= (get!3620 lt!358540) (v!19836 lt!358540))))

(assert (=> b!1053206 d!299895))

(declare-fun d!299897 () Bool)

(assert (=> d!299897 (= (matchR!1431 (regTwo!6302 r!15766) (_2!6604 lt!358547)) (matchR!1431 (removeUselessConcat!444 (regTwo!6302 r!15766)) (_2!6604 lt!358547)))))

(declare-fun lt!358623 () Unit!15465)

(declare-fun choose!6696 (Regex!2895 List!10125) Unit!15465)

(assert (=> d!299897 (= lt!358623 (choose!6696 (regTwo!6302 r!15766) (_2!6604 lt!358547)))))

(assert (=> d!299897 (validRegex!1364 (regTwo!6302 r!15766))))

(assert (=> d!299897 (= (lemmaRemoveUselessConcatSound!268 (regTwo!6302 r!15766) (_2!6604 lt!358547)) lt!358623)))

(declare-fun bs!251424 () Bool)

(assert (= bs!251424 d!299897))

(assert (=> bs!251424 m!1217353))

(declare-fun m!1217711 () Bool)

(assert (=> bs!251424 m!1217711))

(assert (=> bs!251424 m!1217353))

(assert (=> bs!251424 m!1217297))

(declare-fun m!1217713 () Bool)

(assert (=> bs!251424 m!1217713))

(assert (=> bs!251424 m!1217349))

(assert (=> b!1053206 d!299897))

(declare-fun d!299899 () Bool)

(declare-fun e!669373 () Bool)

(assert (=> d!299899 e!669373))

(declare-fun c!176261 () Bool)

(assert (=> d!299899 (= c!176261 ((_ is EmptyExpr!2895) lt!358545))))

(declare-fun lt!358624 () Bool)

(declare-fun e!669375 () Bool)

(assert (=> d!299899 (= lt!358624 e!669375)))

(declare-fun c!176260 () Bool)

(assert (=> d!299899 (= c!176260 (isEmpty!6519 (_1!6604 lt!358547)))))

(assert (=> d!299899 (validRegex!1364 lt!358545)))

(assert (=> d!299899 (= (matchR!1431 lt!358545 (_1!6604 lt!358547)) lt!358624)))

(declare-fun b!1053815 () Bool)

(assert (=> b!1053815 (= e!669375 (nullable!987 lt!358545))))

(declare-fun b!1053816 () Bool)

(declare-fun e!669371 () Bool)

(declare-fun e!669370 () Bool)

(assert (=> b!1053816 (= e!669371 e!669370)))

(declare-fun res!471239 () Bool)

(assert (=> b!1053816 (=> (not res!471239) (not e!669370))))

(assert (=> b!1053816 (= res!471239 (not lt!358624))))

(declare-fun b!1053817 () Bool)

(assert (=> b!1053817 (= e!669375 (matchR!1431 (derivativeStep!787 lt!358545 (head!1942 (_1!6604 lt!358547))) (tail!1504 (_1!6604 lt!358547))))))

(declare-fun bm!75132 () Bool)

(declare-fun call!75137 () Bool)

(assert (=> bm!75132 (= call!75137 (isEmpty!6519 (_1!6604 lt!358547)))))

(declare-fun b!1053818 () Bool)

(declare-fun e!669369 () Bool)

(assert (=> b!1053818 (= e!669369 (not (= (head!1942 (_1!6604 lt!358547)) (c!176112 lt!358545))))))

(declare-fun b!1053819 () Bool)

(declare-fun res!471241 () Bool)

(assert (=> b!1053819 (=> res!471241 e!669371)))

(declare-fun e!669374 () Bool)

(assert (=> b!1053819 (= res!471241 e!669374)))

(declare-fun res!471246 () Bool)

(assert (=> b!1053819 (=> (not res!471246) (not e!669374))))

(assert (=> b!1053819 (= res!471246 lt!358624)))

(declare-fun b!1053820 () Bool)

(declare-fun res!471243 () Bool)

(assert (=> b!1053820 (=> res!471243 e!669369)))

(assert (=> b!1053820 (= res!471243 (not (isEmpty!6519 (tail!1504 (_1!6604 lt!358547)))))))

(declare-fun b!1053821 () Bool)

(assert (=> b!1053821 (= e!669373 (= lt!358624 call!75137))))

(declare-fun b!1053822 () Bool)

(declare-fun e!669372 () Bool)

(assert (=> b!1053822 (= e!669372 (not lt!358624))))

(declare-fun b!1053823 () Bool)

(assert (=> b!1053823 (= e!669374 (= (head!1942 (_1!6604 lt!358547)) (c!176112 lt!358545)))))

(declare-fun b!1053824 () Bool)

(declare-fun res!471242 () Bool)

(assert (=> b!1053824 (=> (not res!471242) (not e!669374))))

(assert (=> b!1053824 (= res!471242 (isEmpty!6519 (tail!1504 (_1!6604 lt!358547))))))

(declare-fun b!1053825 () Bool)

(assert (=> b!1053825 (= e!669370 e!669369)))

(declare-fun res!471245 () Bool)

(assert (=> b!1053825 (=> res!471245 e!669369)))

(assert (=> b!1053825 (= res!471245 call!75137)))

(declare-fun b!1053826 () Bool)

(assert (=> b!1053826 (= e!669373 e!669372)))

(declare-fun c!176262 () Bool)

(assert (=> b!1053826 (= c!176262 ((_ is EmptyLang!2895) lt!358545))))

(declare-fun b!1053827 () Bool)

(declare-fun res!471244 () Bool)

(assert (=> b!1053827 (=> res!471244 e!669371)))

(assert (=> b!1053827 (= res!471244 (not ((_ is ElementMatch!2895) lt!358545)))))

(assert (=> b!1053827 (= e!669372 e!669371)))

(declare-fun b!1053828 () Bool)

(declare-fun res!471240 () Bool)

(assert (=> b!1053828 (=> (not res!471240) (not e!669374))))

(assert (=> b!1053828 (= res!471240 (not call!75137))))

(assert (= (and d!299899 c!176260) b!1053815))

(assert (= (and d!299899 (not c!176260)) b!1053817))

(assert (= (and d!299899 c!176261) b!1053821))

(assert (= (and d!299899 (not c!176261)) b!1053826))

(assert (= (and b!1053826 c!176262) b!1053822))

(assert (= (and b!1053826 (not c!176262)) b!1053827))

(assert (= (and b!1053827 (not res!471244)) b!1053819))

(assert (= (and b!1053819 res!471246) b!1053828))

(assert (= (and b!1053828 res!471240) b!1053824))

(assert (= (and b!1053824 res!471242) b!1053823))

(assert (= (and b!1053819 (not res!471241)) b!1053816))

(assert (= (and b!1053816 res!471239) b!1053825))

(assert (= (and b!1053825 (not res!471245)) b!1053820))

(assert (= (and b!1053820 (not res!471243)) b!1053818))

(assert (= (or b!1053821 b!1053825 b!1053828) bm!75132))

(assert (=> b!1053820 m!1217699))

(assert (=> b!1053820 m!1217699))

(assert (=> b!1053820 m!1217701))

(assert (=> b!1053818 m!1217703))

(assert (=> b!1053824 m!1217699))

(assert (=> b!1053824 m!1217699))

(assert (=> b!1053824 m!1217701))

(assert (=> b!1053823 m!1217703))

(assert (=> bm!75132 m!1217705))

(assert (=> d!299899 m!1217705))

(assert (=> d!299899 m!1217463))

(assert (=> b!1053817 m!1217703))

(assert (=> b!1053817 m!1217703))

(declare-fun m!1217715 () Bool)

(assert (=> b!1053817 m!1217715))

(assert (=> b!1053817 m!1217699))

(assert (=> b!1053817 m!1217715))

(assert (=> b!1053817 m!1217699))

(declare-fun m!1217717 () Bool)

(assert (=> b!1053817 m!1217717))

(declare-fun m!1217719 () Bool)

(assert (=> b!1053815 m!1217719))

(assert (=> b!1053206 d!299899))

(declare-fun d!299901 () Bool)

(declare-fun e!669380 () Bool)

(assert (=> d!299901 e!669380))

(declare-fun c!176264 () Bool)

(assert (=> d!299901 (= c!176264 ((_ is EmptyExpr!2895) lt!358537))))

(declare-fun lt!358625 () Bool)

(declare-fun e!669382 () Bool)

(assert (=> d!299901 (= lt!358625 e!669382)))

(declare-fun c!176263 () Bool)

(assert (=> d!299901 (= c!176263 (isEmpty!6519 (_2!6604 lt!358547)))))

(assert (=> d!299901 (validRegex!1364 lt!358537)))

(assert (=> d!299901 (= (matchR!1431 lt!358537 (_2!6604 lt!358547)) lt!358625)))

(declare-fun b!1053829 () Bool)

(assert (=> b!1053829 (= e!669382 (nullable!987 lt!358537))))

(declare-fun b!1053830 () Bool)

(declare-fun e!669378 () Bool)

(declare-fun e!669377 () Bool)

(assert (=> b!1053830 (= e!669378 e!669377)))

(declare-fun res!471247 () Bool)

(assert (=> b!1053830 (=> (not res!471247) (not e!669377))))

(assert (=> b!1053830 (= res!471247 (not lt!358625))))

(declare-fun b!1053831 () Bool)

(assert (=> b!1053831 (= e!669382 (matchR!1431 (derivativeStep!787 lt!358537 (head!1942 (_2!6604 lt!358547))) (tail!1504 (_2!6604 lt!358547))))))

(declare-fun bm!75133 () Bool)

(declare-fun call!75138 () Bool)

(assert (=> bm!75133 (= call!75138 (isEmpty!6519 (_2!6604 lt!358547)))))

(declare-fun b!1053832 () Bool)

(declare-fun e!669376 () Bool)

(assert (=> b!1053832 (= e!669376 (not (= (head!1942 (_2!6604 lt!358547)) (c!176112 lt!358537))))))

(declare-fun b!1053833 () Bool)

(declare-fun res!471249 () Bool)

(assert (=> b!1053833 (=> res!471249 e!669378)))

(declare-fun e!669381 () Bool)

(assert (=> b!1053833 (= res!471249 e!669381)))

(declare-fun res!471254 () Bool)

(assert (=> b!1053833 (=> (not res!471254) (not e!669381))))

(assert (=> b!1053833 (= res!471254 lt!358625)))

(declare-fun b!1053834 () Bool)

(declare-fun res!471251 () Bool)

(assert (=> b!1053834 (=> res!471251 e!669376)))

(assert (=> b!1053834 (= res!471251 (not (isEmpty!6519 (tail!1504 (_2!6604 lt!358547)))))))

(declare-fun b!1053835 () Bool)

(assert (=> b!1053835 (= e!669380 (= lt!358625 call!75138))))

(declare-fun b!1053836 () Bool)

(declare-fun e!669379 () Bool)

(assert (=> b!1053836 (= e!669379 (not lt!358625))))

(declare-fun b!1053837 () Bool)

(assert (=> b!1053837 (= e!669381 (= (head!1942 (_2!6604 lt!358547)) (c!176112 lt!358537)))))

(declare-fun b!1053838 () Bool)

(declare-fun res!471250 () Bool)

(assert (=> b!1053838 (=> (not res!471250) (not e!669381))))

(assert (=> b!1053838 (= res!471250 (isEmpty!6519 (tail!1504 (_2!6604 lt!358547))))))

(declare-fun b!1053839 () Bool)

(assert (=> b!1053839 (= e!669377 e!669376)))

(declare-fun res!471253 () Bool)

(assert (=> b!1053839 (=> res!471253 e!669376)))

(assert (=> b!1053839 (= res!471253 call!75138)))

(declare-fun b!1053840 () Bool)

(assert (=> b!1053840 (= e!669380 e!669379)))

(declare-fun c!176265 () Bool)

(assert (=> b!1053840 (= c!176265 ((_ is EmptyLang!2895) lt!358537))))

(declare-fun b!1053841 () Bool)

(declare-fun res!471252 () Bool)

(assert (=> b!1053841 (=> res!471252 e!669378)))

(assert (=> b!1053841 (= res!471252 (not ((_ is ElementMatch!2895) lt!358537)))))

(assert (=> b!1053841 (= e!669379 e!669378)))

(declare-fun b!1053842 () Bool)

(declare-fun res!471248 () Bool)

(assert (=> b!1053842 (=> (not res!471248) (not e!669381))))

(assert (=> b!1053842 (= res!471248 (not call!75138))))

(assert (= (and d!299901 c!176263) b!1053829))

(assert (= (and d!299901 (not c!176263)) b!1053831))

(assert (= (and d!299901 c!176264) b!1053835))

(assert (= (and d!299901 (not c!176264)) b!1053840))

(assert (= (and b!1053840 c!176265) b!1053836))

(assert (= (and b!1053840 (not c!176265)) b!1053841))

(assert (= (and b!1053841 (not res!471252)) b!1053833))

(assert (= (and b!1053833 res!471254) b!1053842))

(assert (= (and b!1053842 res!471248) b!1053838))

(assert (= (and b!1053838 res!471250) b!1053837))

(assert (= (and b!1053833 (not res!471249)) b!1053830))

(assert (= (and b!1053830 res!471247) b!1053839))

(assert (= (and b!1053839 (not res!471253)) b!1053834))

(assert (= (and b!1053834 (not res!471251)) b!1053832))

(assert (= (or b!1053835 b!1053839 b!1053842) bm!75133))

(declare-fun m!1217721 () Bool)

(assert (=> b!1053834 m!1217721))

(assert (=> b!1053834 m!1217721))

(declare-fun m!1217723 () Bool)

(assert (=> b!1053834 m!1217723))

(declare-fun m!1217725 () Bool)

(assert (=> b!1053832 m!1217725))

(assert (=> b!1053838 m!1217721))

(assert (=> b!1053838 m!1217721))

(assert (=> b!1053838 m!1217723))

(assert (=> b!1053837 m!1217725))

(declare-fun m!1217727 () Bool)

(assert (=> bm!75133 m!1217727))

(assert (=> d!299901 m!1217727))

(declare-fun m!1217729 () Bool)

(assert (=> d!299901 m!1217729))

(assert (=> b!1053831 m!1217725))

(assert (=> b!1053831 m!1217725))

(declare-fun m!1217731 () Bool)

(assert (=> b!1053831 m!1217731))

(assert (=> b!1053831 m!1217721))

(assert (=> b!1053831 m!1217731))

(assert (=> b!1053831 m!1217721))

(declare-fun m!1217733 () Bool)

(assert (=> b!1053831 m!1217733))

(declare-fun m!1217735 () Bool)

(assert (=> b!1053829 m!1217735))

(assert (=> b!1053206 d!299901))

(declare-fun d!299903 () Bool)

(assert (=> d!299903 (= (matchR!1431 (regOne!6302 r!15766) (_1!6604 lt!358547)) (matchR!1431 (removeUselessConcat!444 (regOne!6302 r!15766)) (_1!6604 lt!358547)))))

(declare-fun lt!358626 () Unit!15465)

(assert (=> d!299903 (= lt!358626 (choose!6696 (regOne!6302 r!15766) (_1!6604 lt!358547)))))

(assert (=> d!299903 (validRegex!1364 (regOne!6302 r!15766))))

(assert (=> d!299903 (= (lemmaRemoveUselessConcatSound!268 (regOne!6302 r!15766) (_1!6604 lt!358547)) lt!358626)))

(declare-fun bs!251425 () Bool)

(assert (= bs!251425 d!299903))

(assert (=> bs!251425 m!1217355))

(declare-fun m!1217737 () Bool)

(assert (=> bs!251425 m!1217737))

(assert (=> bs!251425 m!1217355))

(assert (=> bs!251425 m!1217307))

(declare-fun m!1217739 () Bool)

(assert (=> bs!251425 m!1217739))

(assert (=> bs!251425 m!1217309))

(assert (=> b!1053206 d!299903))

(declare-fun d!299905 () Bool)

(declare-fun e!669387 () Bool)

(assert (=> d!299905 e!669387))

(declare-fun c!176267 () Bool)

(assert (=> d!299905 (= c!176267 ((_ is EmptyExpr!2895) (regTwo!6302 r!15766)))))

(declare-fun lt!358627 () Bool)

(declare-fun e!669389 () Bool)

(assert (=> d!299905 (= lt!358627 e!669389)))

(declare-fun c!176266 () Bool)

(assert (=> d!299905 (= c!176266 (isEmpty!6519 (_2!6604 lt!358547)))))

(assert (=> d!299905 (validRegex!1364 (regTwo!6302 r!15766))))

(assert (=> d!299905 (= (matchR!1431 (regTwo!6302 r!15766) (_2!6604 lt!358547)) lt!358627)))

(declare-fun b!1053843 () Bool)

(assert (=> b!1053843 (= e!669389 (nullable!987 (regTwo!6302 r!15766)))))

(declare-fun b!1053844 () Bool)

(declare-fun e!669385 () Bool)

(declare-fun e!669384 () Bool)

(assert (=> b!1053844 (= e!669385 e!669384)))

(declare-fun res!471255 () Bool)

(assert (=> b!1053844 (=> (not res!471255) (not e!669384))))

(assert (=> b!1053844 (= res!471255 (not lt!358627))))

(declare-fun b!1053845 () Bool)

(assert (=> b!1053845 (= e!669389 (matchR!1431 (derivativeStep!787 (regTwo!6302 r!15766) (head!1942 (_2!6604 lt!358547))) (tail!1504 (_2!6604 lt!358547))))))

(declare-fun bm!75134 () Bool)

(declare-fun call!75139 () Bool)

(assert (=> bm!75134 (= call!75139 (isEmpty!6519 (_2!6604 lt!358547)))))

(declare-fun b!1053846 () Bool)

(declare-fun e!669383 () Bool)

(assert (=> b!1053846 (= e!669383 (not (= (head!1942 (_2!6604 lt!358547)) (c!176112 (regTwo!6302 r!15766)))))))

(declare-fun b!1053847 () Bool)

(declare-fun res!471257 () Bool)

(assert (=> b!1053847 (=> res!471257 e!669385)))

(declare-fun e!669388 () Bool)

(assert (=> b!1053847 (= res!471257 e!669388)))

(declare-fun res!471262 () Bool)

(assert (=> b!1053847 (=> (not res!471262) (not e!669388))))

(assert (=> b!1053847 (= res!471262 lt!358627)))

(declare-fun b!1053848 () Bool)

(declare-fun res!471259 () Bool)

(assert (=> b!1053848 (=> res!471259 e!669383)))

(assert (=> b!1053848 (= res!471259 (not (isEmpty!6519 (tail!1504 (_2!6604 lt!358547)))))))

(declare-fun b!1053849 () Bool)

(assert (=> b!1053849 (= e!669387 (= lt!358627 call!75139))))

(declare-fun b!1053850 () Bool)

(declare-fun e!669386 () Bool)

(assert (=> b!1053850 (= e!669386 (not lt!358627))))

(declare-fun b!1053851 () Bool)

(assert (=> b!1053851 (= e!669388 (= (head!1942 (_2!6604 lt!358547)) (c!176112 (regTwo!6302 r!15766))))))

(declare-fun b!1053852 () Bool)

(declare-fun res!471258 () Bool)

(assert (=> b!1053852 (=> (not res!471258) (not e!669388))))

(assert (=> b!1053852 (= res!471258 (isEmpty!6519 (tail!1504 (_2!6604 lt!358547))))))

(declare-fun b!1053853 () Bool)

(assert (=> b!1053853 (= e!669384 e!669383)))

(declare-fun res!471261 () Bool)

(assert (=> b!1053853 (=> res!471261 e!669383)))

(assert (=> b!1053853 (= res!471261 call!75139)))

(declare-fun b!1053854 () Bool)

(assert (=> b!1053854 (= e!669387 e!669386)))

(declare-fun c!176268 () Bool)

(assert (=> b!1053854 (= c!176268 ((_ is EmptyLang!2895) (regTwo!6302 r!15766)))))

(declare-fun b!1053855 () Bool)

(declare-fun res!471260 () Bool)

(assert (=> b!1053855 (=> res!471260 e!669385)))

(assert (=> b!1053855 (= res!471260 (not ((_ is ElementMatch!2895) (regTwo!6302 r!15766))))))

(assert (=> b!1053855 (= e!669386 e!669385)))

(declare-fun b!1053856 () Bool)

(declare-fun res!471256 () Bool)

(assert (=> b!1053856 (=> (not res!471256) (not e!669388))))

(assert (=> b!1053856 (= res!471256 (not call!75139))))

(assert (= (and d!299905 c!176266) b!1053843))

(assert (= (and d!299905 (not c!176266)) b!1053845))

(assert (= (and d!299905 c!176267) b!1053849))

(assert (= (and d!299905 (not c!176267)) b!1053854))

(assert (= (and b!1053854 c!176268) b!1053850))

(assert (= (and b!1053854 (not c!176268)) b!1053855))

(assert (= (and b!1053855 (not res!471260)) b!1053847))

(assert (= (and b!1053847 res!471262) b!1053856))

(assert (= (and b!1053856 res!471256) b!1053852))

(assert (= (and b!1053852 res!471258) b!1053851))

(assert (= (and b!1053847 (not res!471257)) b!1053844))

(assert (= (and b!1053844 res!471255) b!1053853))

(assert (= (and b!1053853 (not res!471261)) b!1053848))

(assert (= (and b!1053848 (not res!471259)) b!1053846))

(assert (= (or b!1053849 b!1053853 b!1053856) bm!75134))

(assert (=> b!1053848 m!1217721))

(assert (=> b!1053848 m!1217721))

(assert (=> b!1053848 m!1217723))

(assert (=> b!1053846 m!1217725))

(assert (=> b!1053852 m!1217721))

(assert (=> b!1053852 m!1217721))

(assert (=> b!1053852 m!1217723))

(assert (=> b!1053851 m!1217725))

(assert (=> bm!75134 m!1217727))

(assert (=> d!299905 m!1217727))

(assert (=> d!299905 m!1217349))

(assert (=> b!1053845 m!1217725))

(assert (=> b!1053845 m!1217725))

(declare-fun m!1217741 () Bool)

(assert (=> b!1053845 m!1217741))

(assert (=> b!1053845 m!1217721))

(assert (=> b!1053845 m!1217741))

(assert (=> b!1053845 m!1217721))

(declare-fun m!1217743 () Bool)

(assert (=> b!1053845 m!1217743))

(assert (=> b!1053843 m!1217675))

(assert (=> b!1053206 d!299905))

(declare-fun b!1053870 () Bool)

(declare-fun e!669392 () Bool)

(declare-fun tp!317493 () Bool)

(declare-fun tp!317496 () Bool)

(assert (=> b!1053870 (= e!669392 (and tp!317493 tp!317496))))

(assert (=> b!1053204 (= tp!317444 e!669392)))

(declare-fun b!1053867 () Bool)

(assert (=> b!1053867 (= e!669392 tp_is_empty!5433)))

(declare-fun b!1053869 () Bool)

(declare-fun tp!317494 () Bool)

(assert (=> b!1053869 (= e!669392 tp!317494)))

(declare-fun b!1053868 () Bool)

(declare-fun tp!317497 () Bool)

(declare-fun tp!317495 () Bool)

(assert (=> b!1053868 (= e!669392 (and tp!317497 tp!317495))))

(assert (= (and b!1053204 ((_ is ElementMatch!2895) (reg!3224 r!15766))) b!1053867))

(assert (= (and b!1053204 ((_ is Concat!4728) (reg!3224 r!15766))) b!1053868))

(assert (= (and b!1053204 ((_ is Star!2895) (reg!3224 r!15766))) b!1053869))

(assert (= (and b!1053204 ((_ is Union!2895) (reg!3224 r!15766))) b!1053870))

(declare-fun b!1053874 () Bool)

(declare-fun e!669393 () Bool)

(declare-fun tp!317498 () Bool)

(declare-fun tp!317501 () Bool)

(assert (=> b!1053874 (= e!669393 (and tp!317498 tp!317501))))

(assert (=> b!1053203 (= tp!317442 e!669393)))

(declare-fun b!1053871 () Bool)

(assert (=> b!1053871 (= e!669393 tp_is_empty!5433)))

(declare-fun b!1053873 () Bool)

(declare-fun tp!317499 () Bool)

(assert (=> b!1053873 (= e!669393 tp!317499)))

(declare-fun b!1053872 () Bool)

(declare-fun tp!317502 () Bool)

(declare-fun tp!317500 () Bool)

(assert (=> b!1053872 (= e!669393 (and tp!317502 tp!317500))))

(assert (= (and b!1053203 ((_ is ElementMatch!2895) (regOne!6302 r!15766))) b!1053871))

(assert (= (and b!1053203 ((_ is Concat!4728) (regOne!6302 r!15766))) b!1053872))

(assert (= (and b!1053203 ((_ is Star!2895) (regOne!6302 r!15766))) b!1053873))

(assert (= (and b!1053203 ((_ is Union!2895) (regOne!6302 r!15766))) b!1053874))

(declare-fun b!1053878 () Bool)

(declare-fun e!669394 () Bool)

(declare-fun tp!317503 () Bool)

(declare-fun tp!317506 () Bool)

(assert (=> b!1053878 (= e!669394 (and tp!317503 tp!317506))))

(assert (=> b!1053203 (= tp!317443 e!669394)))

(declare-fun b!1053875 () Bool)

(assert (=> b!1053875 (= e!669394 tp_is_empty!5433)))

(declare-fun b!1053877 () Bool)

(declare-fun tp!317504 () Bool)

(assert (=> b!1053877 (= e!669394 tp!317504)))

(declare-fun b!1053876 () Bool)

(declare-fun tp!317507 () Bool)

(declare-fun tp!317505 () Bool)

(assert (=> b!1053876 (= e!669394 (and tp!317507 tp!317505))))

(assert (= (and b!1053203 ((_ is ElementMatch!2895) (regTwo!6302 r!15766))) b!1053875))

(assert (= (and b!1053203 ((_ is Concat!4728) (regTwo!6302 r!15766))) b!1053876))

(assert (= (and b!1053203 ((_ is Star!2895) (regTwo!6302 r!15766))) b!1053877))

(assert (= (and b!1053203 ((_ is Union!2895) (regTwo!6302 r!15766))) b!1053878))

(declare-fun b!1053883 () Bool)

(declare-fun e!669397 () Bool)

(declare-fun tp!317510 () Bool)

(assert (=> b!1053883 (= e!669397 (and tp_is_empty!5433 tp!317510))))

(assert (=> b!1053201 (= tp!317440 e!669397)))

(assert (= (and b!1053201 ((_ is Cons!10109) (t!101171 s!10566))) b!1053883))

(declare-fun b!1053887 () Bool)

(declare-fun e!669398 () Bool)

(declare-fun tp!317511 () Bool)

(declare-fun tp!317514 () Bool)

(assert (=> b!1053887 (= e!669398 (and tp!317511 tp!317514))))

(assert (=> b!1053211 (= tp!317441 e!669398)))

(declare-fun b!1053884 () Bool)

(assert (=> b!1053884 (= e!669398 tp_is_empty!5433)))

(declare-fun b!1053886 () Bool)

(declare-fun tp!317512 () Bool)

(assert (=> b!1053886 (= e!669398 tp!317512)))

(declare-fun b!1053885 () Bool)

(declare-fun tp!317515 () Bool)

(declare-fun tp!317513 () Bool)

(assert (=> b!1053885 (= e!669398 (and tp!317515 tp!317513))))

(assert (= (and b!1053211 ((_ is ElementMatch!2895) (regOne!6303 r!15766))) b!1053884))

(assert (= (and b!1053211 ((_ is Concat!4728) (regOne!6303 r!15766))) b!1053885))

(assert (= (and b!1053211 ((_ is Star!2895) (regOne!6303 r!15766))) b!1053886))

(assert (= (and b!1053211 ((_ is Union!2895) (regOne!6303 r!15766))) b!1053887))

(declare-fun b!1053891 () Bool)

(declare-fun e!669399 () Bool)

(declare-fun tp!317516 () Bool)

(declare-fun tp!317519 () Bool)

(assert (=> b!1053891 (= e!669399 (and tp!317516 tp!317519))))

(assert (=> b!1053211 (= tp!317439 e!669399)))

(declare-fun b!1053888 () Bool)

(assert (=> b!1053888 (= e!669399 tp_is_empty!5433)))

(declare-fun b!1053890 () Bool)

(declare-fun tp!317517 () Bool)

(assert (=> b!1053890 (= e!669399 tp!317517)))

(declare-fun b!1053889 () Bool)

(declare-fun tp!317520 () Bool)

(declare-fun tp!317518 () Bool)

(assert (=> b!1053889 (= e!669399 (and tp!317520 tp!317518))))

(assert (= (and b!1053211 ((_ is ElementMatch!2895) (regTwo!6303 r!15766))) b!1053888))

(assert (= (and b!1053211 ((_ is Concat!4728) (regTwo!6303 r!15766))) b!1053889))

(assert (= (and b!1053211 ((_ is Star!2895) (regTwo!6303 r!15766))) b!1053890))

(assert (= (and b!1053211 ((_ is Union!2895) (regTwo!6303 r!15766))) b!1053891))

(check-sat (not b!1053810) (not d!299879) (not bm!75098) (not b!1053782) (not b!1053823) (not bm!75132) (not b!1053818) (not b!1053873) (not d!299813) (not bm!75100) (not b!1053670) (not d!299903) (not b!1053673) (not b!1053540) (not bm!75122) (not bm!75127) (not bm!75130) (not d!299877) (not b!1053890) (not b!1053804) (not b!1053891) (not b!1053817) (not b!1053716) (not d!299885) (not b!1053878) (not b!1053319) (not b!1053887) (not d!299893) (not b!1053711) (not b!1053829) (not d!299901) (not b!1053793) (not d!299857) (not d!299899) (not bm!75045) (not b!1053539) (not d!299887) (not d!299839) (not b!1053727) (not bm!75128) (not b!1053734) (not b!1053832) (not d!299859) (not b!1053704) (not bm!75117) (not b!1053806) (not d!299905) (not b!1053803) (not d!299897) (not bm!75104) (not b!1053883) (not bm!75099) (not b!1053820) (not b!1053662) (not b!1053710) (not bm!75131) (not b!1053535) (not b!1053659) (not bm!75047) (not bm!75133) (not b!1053868) (not b!1053707) (not bm!75103) (not d!299837) (not bm!75125) (not b!1053815) (not b!1053725) (not b!1053886) (not d!299881) (not b!1053717) (not d!299875) (not bm!75097) (not b!1053705) (not bm!75118) (not b!1053885) (not b!1053538) (not b!1053719) (not bm!75123) (not b!1053837) (not d!299815) (not b!1053801) (not b!1053536) (not b!1053877) (not b!1053831) (not b!1053843) (not b!1053846) (not b!1053723) (not b!1053889) (not b!1053869) (not b!1053838) (not b!1053809) (not b!1053834) (not b!1053730) (not d!299883) (not d!299867) (not b!1053874) (not b!1053784) (not b!1053824) (not b!1053851) (not b!1053702) (not b!1053845) (not b!1053542) (not b!1053720) (not bm!75134) (not b!1053771) (not b!1053852) (not d!299865) (not d!299801) tp_is_empty!5433 (not d!299871) (not d!299873) (not b!1053872) (not b!1053728) (not b!1053721) (not b!1053848) (not b!1053733) (not b!1053870) (not b!1053876))
(check-sat)
