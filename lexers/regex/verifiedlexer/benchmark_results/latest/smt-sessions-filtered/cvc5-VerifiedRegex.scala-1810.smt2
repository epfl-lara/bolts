; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!90172 () Bool)

(assert start!90172)

(declare-fun b!1036262 () Bool)

(assert (=> b!1036262 true))

(assert (=> b!1036262 true))

(declare-fun lambda!37306 () Int)

(declare-fun lambda!37305 () Int)

(assert (=> b!1036262 (not (= lambda!37306 lambda!37305))))

(assert (=> b!1036262 true))

(assert (=> b!1036262 true))

(declare-fun b!1036254 () Bool)

(declare-fun e!659990 () Bool)

(declare-fun tp_is_empty!5399 () Bool)

(declare-fun tp!313521 () Bool)

(assert (=> b!1036254 (= e!659990 (and tp_is_empty!5399 tp!313521))))

(declare-fun b!1036255 () Bool)

(declare-fun e!659991 () Bool)

(declare-fun tp!313520 () Bool)

(declare-fun tp!313519 () Bool)

(assert (=> b!1036255 (= e!659991 (and tp!313520 tp!313519))))

(declare-fun b!1036256 () Bool)

(declare-fun tp!313517 () Bool)

(assert (=> b!1036256 (= e!659991 tp!313517)))

(declare-fun b!1036257 () Bool)

(declare-fun e!659993 () Bool)

(declare-datatypes ((C!6326 0))(
  ( (C!6327 (val!3411 Int)) )
))
(declare-datatypes ((Regex!2878 0))(
  ( (ElementMatch!2878 (c!171999 C!6326)) (Concat!4711 (regOne!6268 Regex!2878) (regTwo!6268 Regex!2878)) (EmptyExpr!2878) (Star!2878 (reg!3207 Regex!2878)) (EmptyLang!2878) (Union!2878 (regOne!6269 Regex!2878) (regTwo!6269 Regex!2878)) )
))
(declare-fun lt!356796 () Regex!2878)

(declare-fun validRegex!1347 (Regex!2878) Bool)

(assert (=> b!1036257 (= e!659993 (validRegex!1347 lt!356796))))

(declare-fun lt!356798 () Regex!2878)

(declare-datatypes ((List!10108 0))(
  ( (Nil!10092) (Cons!10092 (h!15493 C!6326) (t!101154 List!10108)) )
))
(declare-fun s!10566 () List!10108)

(declare-fun matchRSpec!677 (Regex!2878 List!10108) Bool)

(assert (=> b!1036257 (matchRSpec!677 lt!356798 s!10566)))

(declare-datatypes ((Unit!15431 0))(
  ( (Unit!15432) )
))
(declare-fun lt!356802 () Unit!15431)

(declare-fun mainMatchTheorem!677 (Regex!2878 List!10108) Unit!15431)

(assert (=> b!1036257 (= lt!356802 (mainMatchTheorem!677 lt!356798 s!10566))))

(declare-fun b!1036258 () Bool)

(declare-fun tp!313522 () Bool)

(declare-fun tp!313518 () Bool)

(assert (=> b!1036258 (= e!659991 (and tp!313522 tp!313518))))

(declare-fun b!1036259 () Bool)

(assert (=> b!1036259 (= e!659991 tp_is_empty!5399)))

(declare-fun b!1036260 () Bool)

(declare-fun e!659994 () Bool)

(assert (=> b!1036260 (= e!659994 e!659993)))

(declare-fun res!465449 () Bool)

(assert (=> b!1036260 (=> res!465449 e!659993)))

(declare-fun matchR!1414 (Regex!2878 List!10108) Bool)

(assert (=> b!1036260 (= res!465449 (not (matchR!1414 lt!356798 s!10566)))))

(declare-fun r!15766 () Regex!2878)

(declare-fun removeUselessConcat!427 (Regex!2878) Regex!2878)

(assert (=> b!1036260 (= lt!356798 (Concat!4711 lt!356796 (removeUselessConcat!427 (regTwo!6268 r!15766))))))

(assert (=> b!1036260 (= lt!356796 (removeUselessConcat!427 (regOne!6268 r!15766)))))

(declare-fun res!465448 () Bool)

(declare-fun e!659992 () Bool)

(assert (=> start!90172 (=> (not res!465448) (not e!659992))))

(assert (=> start!90172 (= res!465448 (validRegex!1347 r!15766))))

(assert (=> start!90172 e!659992))

(assert (=> start!90172 e!659991))

(assert (=> start!90172 e!659990))

(declare-fun b!1036261 () Bool)

(declare-fun e!659995 () Bool)

(assert (=> b!1036261 (= e!659992 (not e!659995))))

(declare-fun res!465447 () Bool)

(assert (=> b!1036261 (=> res!465447 e!659995)))

(declare-fun lt!356800 () Bool)

(assert (=> b!1036261 (= res!465447 (or lt!356800 (and (is-Concat!4711 r!15766) (is-EmptyExpr!2878 (regOne!6268 r!15766))) (and (is-Concat!4711 r!15766) (is-EmptyExpr!2878 (regTwo!6268 r!15766))) (not (is-Concat!4711 r!15766))))))

(assert (=> b!1036261 (= lt!356800 (matchRSpec!677 r!15766 s!10566))))

(assert (=> b!1036261 (= lt!356800 (matchR!1414 r!15766 s!10566))))

(declare-fun lt!356797 () Unit!15431)

(assert (=> b!1036261 (= lt!356797 (mainMatchTheorem!677 r!15766 s!10566))))

(assert (=> b!1036262 (= e!659995 e!659994)))

(declare-fun res!465450 () Bool)

(assert (=> b!1036262 (=> res!465450 e!659994)))

(declare-fun isEmpty!6486 (List!10108) Bool)

(assert (=> b!1036262 (= res!465450 (isEmpty!6486 s!10566))))

(declare-fun Exists!605 (Int) Bool)

(assert (=> b!1036262 (= (Exists!605 lambda!37305) (Exists!605 lambda!37306))))

(declare-fun lt!356799 () Unit!15431)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!293 (Regex!2878 Regex!2878 List!10108) Unit!15431)

(assert (=> b!1036262 (= lt!356799 (lemmaExistCutMatchRandMatchRSpecEquivalent!293 (regOne!6268 r!15766) (regTwo!6268 r!15766) s!10566))))

(declare-datatypes ((tuple2!11522 0))(
  ( (tuple2!11523 (_1!6587 List!10108) (_2!6587 List!10108)) )
))
(declare-datatypes ((Option!2403 0))(
  ( (None!2402) (Some!2402 (v!19819 tuple2!11522)) )
))
(declare-fun isDefined!2045 (Option!2403) Bool)

(declare-fun findConcatSeparation!509 (Regex!2878 Regex!2878 List!10108 List!10108 List!10108) Option!2403)

(assert (=> b!1036262 (= (isDefined!2045 (findConcatSeparation!509 (regOne!6268 r!15766) (regTwo!6268 r!15766) Nil!10092 s!10566 s!10566)) (Exists!605 lambda!37305))))

(declare-fun lt!356801 () Unit!15431)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!509 (Regex!2878 Regex!2878 List!10108) Unit!15431)

(assert (=> b!1036262 (= lt!356801 (lemmaFindConcatSeparationEquivalentToExists!509 (regOne!6268 r!15766) (regTwo!6268 r!15766) s!10566))))

(assert (= (and start!90172 res!465448) b!1036261))

(assert (= (and b!1036261 (not res!465447)) b!1036262))

(assert (= (and b!1036262 (not res!465450)) b!1036260))

(assert (= (and b!1036260 (not res!465449)) b!1036257))

(assert (= (and start!90172 (is-ElementMatch!2878 r!15766)) b!1036259))

(assert (= (and start!90172 (is-Concat!4711 r!15766)) b!1036255))

(assert (= (and start!90172 (is-Star!2878 r!15766)) b!1036256))

(assert (= (and start!90172 (is-Union!2878 r!15766)) b!1036258))

(assert (= (and start!90172 (is-Cons!10092 s!10566)) b!1036254))

(declare-fun m!1206933 () Bool)

(assert (=> b!1036262 m!1206933))

(declare-fun m!1206935 () Bool)

(assert (=> b!1036262 m!1206935))

(declare-fun m!1206937 () Bool)

(assert (=> b!1036262 m!1206937))

(declare-fun m!1206939 () Bool)

(assert (=> b!1036262 m!1206939))

(declare-fun m!1206941 () Bool)

(assert (=> b!1036262 m!1206941))

(declare-fun m!1206943 () Bool)

(assert (=> b!1036262 m!1206943))

(declare-fun m!1206945 () Bool)

(assert (=> b!1036262 m!1206945))

(assert (=> b!1036262 m!1206937))

(assert (=> b!1036262 m!1206933))

(declare-fun m!1206947 () Bool)

(assert (=> b!1036257 m!1206947))

(declare-fun m!1206949 () Bool)

(assert (=> b!1036257 m!1206949))

(declare-fun m!1206951 () Bool)

(assert (=> b!1036257 m!1206951))

(declare-fun m!1206953 () Bool)

(assert (=> b!1036261 m!1206953))

(declare-fun m!1206955 () Bool)

(assert (=> b!1036261 m!1206955))

(declare-fun m!1206957 () Bool)

(assert (=> b!1036261 m!1206957))

(declare-fun m!1206959 () Bool)

(assert (=> b!1036260 m!1206959))

(declare-fun m!1206961 () Bool)

(assert (=> b!1036260 m!1206961))

(declare-fun m!1206963 () Bool)

(assert (=> b!1036260 m!1206963))

(declare-fun m!1206965 () Bool)

(assert (=> start!90172 m!1206965))

(push 1)

(assert (not b!1036262))

(assert (not b!1036256))

(assert (not b!1036257))

(assert (not b!1036254))

(assert tp_is_empty!5399)

(assert (not b!1036255))

(assert (not b!1036258))

(assert (not b!1036260))

(assert (not start!90172))

(assert (not b!1036261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1036338 () Bool)

(declare-fun e!660035 () Bool)

(declare-fun nullable!970 (Regex!2878) Bool)

(assert (=> b!1036338 (= e!660035 (nullable!970 lt!356798))))

(declare-fun b!1036339 () Bool)

(declare-fun derivativeStep!770 (Regex!2878 C!6326) Regex!2878)

(declare-fun head!1925 (List!10108) C!6326)

(declare-fun tail!1487 (List!10108) List!10108)

(assert (=> b!1036339 (= e!660035 (matchR!1414 (derivativeStep!770 lt!356798 (head!1925 s!10566)) (tail!1487 s!10566)))))

(declare-fun b!1036340 () Bool)

(declare-fun e!660038 () Bool)

(declare-fun lt!356826 () Bool)

(declare-fun call!71696 () Bool)

(assert (=> b!1036340 (= e!660038 (= lt!356826 call!71696))))

(declare-fun b!1036341 () Bool)

(declare-fun res!465492 () Bool)

(declare-fun e!660037 () Bool)

(assert (=> b!1036341 (=> res!465492 e!660037)))

(declare-fun e!660039 () Bool)

(assert (=> b!1036341 (= res!465492 e!660039)))

(declare-fun res!465493 () Bool)

(assert (=> b!1036341 (=> (not res!465493) (not e!660039))))

(assert (=> b!1036341 (= res!465493 lt!356826)))

(declare-fun bm!71691 () Bool)

(assert (=> bm!71691 (= call!71696 (isEmpty!6486 s!10566))))

(declare-fun b!1036342 () Bool)

(declare-fun res!465496 () Bool)

(assert (=> b!1036342 (=> (not res!465496) (not e!660039))))

(assert (=> b!1036342 (= res!465496 (isEmpty!6486 (tail!1487 s!10566)))))

(declare-fun b!1036343 () Bool)

(declare-fun e!660034 () Bool)

(assert (=> b!1036343 (= e!660034 (not (= (head!1925 s!10566) (c!171999 lt!356798))))))

(declare-fun b!1036344 () Bool)

(declare-fun res!465491 () Bool)

(assert (=> b!1036344 (=> (not res!465491) (not e!660039))))

(assert (=> b!1036344 (= res!465491 (not call!71696))))

(declare-fun b!1036345 () Bool)

(declare-fun e!660040 () Bool)

(assert (=> b!1036345 (= e!660038 e!660040)))

(declare-fun c!172009 () Bool)

(assert (=> b!1036345 (= c!172009 (is-EmptyLang!2878 lt!356798))))

(declare-fun b!1036346 () Bool)

(assert (=> b!1036346 (= e!660040 (not lt!356826))))

(declare-fun b!1036347 () Bool)

(declare-fun res!465498 () Bool)

(assert (=> b!1036347 (=> res!465498 e!660037)))

(assert (=> b!1036347 (= res!465498 (not (is-ElementMatch!2878 lt!356798)))))

(assert (=> b!1036347 (= e!660040 e!660037)))

(declare-fun b!1036348 () Bool)

(declare-fun e!660036 () Bool)

(assert (=> b!1036348 (= e!660036 e!660034)))

(declare-fun res!465494 () Bool)

(assert (=> b!1036348 (=> res!465494 e!660034)))

(assert (=> b!1036348 (= res!465494 call!71696)))

(declare-fun b!1036349 () Bool)

(declare-fun res!465497 () Bool)

(assert (=> b!1036349 (=> res!465497 e!660034)))

(assert (=> b!1036349 (= res!465497 (not (isEmpty!6486 (tail!1487 s!10566))))))

(declare-fun b!1036350 () Bool)

(assert (=> b!1036350 (= e!660039 (= (head!1925 s!10566) (c!171999 lt!356798)))))

(declare-fun b!1036351 () Bool)

(assert (=> b!1036351 (= e!660037 e!660036)))

(declare-fun res!465495 () Bool)

(assert (=> b!1036351 (=> (not res!465495) (not e!660036))))

(assert (=> b!1036351 (= res!465495 (not lt!356826))))

(declare-fun d!296307 () Bool)

(assert (=> d!296307 e!660038))

(declare-fun c!172007 () Bool)

(assert (=> d!296307 (= c!172007 (is-EmptyExpr!2878 lt!356798))))

(assert (=> d!296307 (= lt!356826 e!660035)))

(declare-fun c!172008 () Bool)

(assert (=> d!296307 (= c!172008 (isEmpty!6486 s!10566))))

(assert (=> d!296307 (validRegex!1347 lt!356798)))

(assert (=> d!296307 (= (matchR!1414 lt!356798 s!10566) lt!356826)))

(assert (= (and d!296307 c!172008) b!1036338))

(assert (= (and d!296307 (not c!172008)) b!1036339))

(assert (= (and d!296307 c!172007) b!1036340))

(assert (= (and d!296307 (not c!172007)) b!1036345))

(assert (= (and b!1036345 c!172009) b!1036346))

(assert (= (and b!1036345 (not c!172009)) b!1036347))

(assert (= (and b!1036347 (not res!465498)) b!1036341))

(assert (= (and b!1036341 res!465493) b!1036344))

(assert (= (and b!1036344 res!465491) b!1036342))

(assert (= (and b!1036342 res!465496) b!1036350))

(assert (= (and b!1036341 (not res!465492)) b!1036351))

(assert (= (and b!1036351 res!465495) b!1036348))

(assert (= (and b!1036348 (not res!465494)) b!1036349))

(assert (= (and b!1036349 (not res!465497)) b!1036343))

(assert (= (or b!1036340 b!1036344 b!1036348) bm!71691))

(declare-fun m!1207001 () Bool)

(assert (=> b!1036338 m!1207001))

(declare-fun m!1207003 () Bool)

(assert (=> b!1036349 m!1207003))

(assert (=> b!1036349 m!1207003))

(declare-fun m!1207005 () Bool)

(assert (=> b!1036349 m!1207005))

(declare-fun m!1207007 () Bool)

(assert (=> b!1036343 m!1207007))

(assert (=> b!1036342 m!1207003))

(assert (=> b!1036342 m!1207003))

(assert (=> b!1036342 m!1207005))

(assert (=> b!1036350 m!1207007))

(assert (=> d!296307 m!1206941))

(declare-fun m!1207009 () Bool)

(assert (=> d!296307 m!1207009))

(assert (=> b!1036339 m!1207007))

(assert (=> b!1036339 m!1207007))

(declare-fun m!1207011 () Bool)

(assert (=> b!1036339 m!1207011))

(assert (=> b!1036339 m!1207003))

(assert (=> b!1036339 m!1207011))

(assert (=> b!1036339 m!1207003))

(declare-fun m!1207013 () Bool)

(assert (=> b!1036339 m!1207013))

(assert (=> bm!71691 m!1206941))

(assert (=> b!1036260 d!296307))

(declare-fun b!1036374 () Bool)

(declare-fun c!172020 () Bool)

(assert (=> b!1036374 (= c!172020 (is-Concat!4711 (regTwo!6268 r!15766)))))

(declare-fun e!660056 () Regex!2878)

(declare-fun e!660054 () Regex!2878)

(assert (=> b!1036374 (= e!660056 e!660054)))

(declare-fun b!1036375 () Bool)

(declare-fun e!660055 () Regex!2878)

(assert (=> b!1036375 (= e!660055 e!660056)))

(declare-fun c!172022 () Bool)

(assert (=> b!1036375 (= c!172022 (and (is-Concat!4711 (regTwo!6268 r!15766)) (is-EmptyExpr!2878 (regTwo!6268 (regTwo!6268 r!15766)))))))

(declare-fun b!1036376 () Bool)

(declare-fun e!660057 () Regex!2878)

(assert (=> b!1036376 (= e!660054 e!660057)))

(declare-fun c!172024 () Bool)

(assert (=> b!1036376 (= c!172024 (is-Union!2878 (regTwo!6268 r!15766)))))

(declare-fun b!1036377 () Bool)

(declare-fun c!172021 () Bool)

(assert (=> b!1036377 (= c!172021 (is-Star!2878 (regTwo!6268 r!15766)))))

(declare-fun e!660058 () Regex!2878)

(assert (=> b!1036377 (= e!660057 e!660058)))

(declare-fun b!1036378 () Bool)

(declare-fun call!71709 () Regex!2878)

(assert (=> b!1036378 (= e!660058 (Star!2878 call!71709))))

(declare-fun d!296309 () Bool)

(declare-fun e!660053 () Bool)

(assert (=> d!296309 e!660053))

(declare-fun res!465501 () Bool)

(assert (=> d!296309 (=> (not res!465501) (not e!660053))))

(declare-fun lt!356829 () Regex!2878)

(assert (=> d!296309 (= res!465501 (validRegex!1347 lt!356829))))

(assert (=> d!296309 (= lt!356829 e!660055)))

(declare-fun c!172023 () Bool)

(assert (=> d!296309 (= c!172023 (and (is-Concat!4711 (regTwo!6268 r!15766)) (is-EmptyExpr!2878 (regOne!6268 (regTwo!6268 r!15766)))))))

(assert (=> d!296309 (validRegex!1347 (regTwo!6268 r!15766))))

(assert (=> d!296309 (= (removeUselessConcat!427 (regTwo!6268 r!15766)) lt!356829)))

(declare-fun bm!71702 () Bool)

(declare-fun call!71711 () Regex!2878)

(assert (=> bm!71702 (= call!71709 call!71711)))

(declare-fun b!1036379 () Bool)

(declare-fun call!71710 () Regex!2878)

(assert (=> b!1036379 (= e!660054 (Concat!4711 call!71710 call!71711))))

(declare-fun b!1036380 () Bool)

(assert (=> b!1036380 (= e!660058 (regTwo!6268 r!15766))))

(declare-fun bm!71703 () Bool)

(declare-fun call!71707 () Regex!2878)

(declare-fun call!71708 () Regex!2878)

(assert (=> bm!71703 (= call!71707 call!71708)))

(declare-fun bm!71704 () Bool)

(assert (=> bm!71704 (= call!71708 (removeUselessConcat!427 (ite c!172023 (regTwo!6268 (regTwo!6268 r!15766)) (ite c!172022 (regOne!6268 (regTwo!6268 r!15766)) (ite c!172020 (regTwo!6268 (regTwo!6268 r!15766)) (ite c!172024 (regTwo!6269 (regTwo!6268 r!15766)) (reg!3207 (regTwo!6268 r!15766))))))))))

(declare-fun bm!71705 () Bool)

(assert (=> bm!71705 (= call!71710 (removeUselessConcat!427 (ite c!172020 (regOne!6268 (regTwo!6268 r!15766)) (regOne!6269 (regTwo!6268 r!15766)))))))

(declare-fun b!1036381 () Bool)

(assert (=> b!1036381 (= e!660056 call!71707)))

(declare-fun b!1036382 () Bool)

(assert (=> b!1036382 (= e!660057 (Union!2878 call!71710 call!71709))))

(declare-fun b!1036383 () Bool)

(assert (=> b!1036383 (= e!660055 call!71708)))

(declare-fun bm!71706 () Bool)

(assert (=> bm!71706 (= call!71711 call!71707)))

(declare-fun b!1036384 () Bool)

(assert (=> b!1036384 (= e!660053 (= (nullable!970 lt!356829) (nullable!970 (regTwo!6268 r!15766))))))

(assert (= (and d!296309 c!172023) b!1036383))

(assert (= (and d!296309 (not c!172023)) b!1036375))

(assert (= (and b!1036375 c!172022) b!1036381))

(assert (= (and b!1036375 (not c!172022)) b!1036374))

(assert (= (and b!1036374 c!172020) b!1036379))

(assert (= (and b!1036374 (not c!172020)) b!1036376))

(assert (= (and b!1036376 c!172024) b!1036382))

(assert (= (and b!1036376 (not c!172024)) b!1036377))

(assert (= (and b!1036377 c!172021) b!1036378))

(assert (= (and b!1036377 (not c!172021)) b!1036380))

(assert (= (or b!1036382 b!1036378) bm!71702))

(assert (= (or b!1036379 bm!71702) bm!71706))

(assert (= (or b!1036379 b!1036382) bm!71705))

(assert (= (or b!1036381 bm!71706) bm!71703))

(assert (= (or b!1036383 bm!71703) bm!71704))

(assert (= (and d!296309 res!465501) b!1036384))

(declare-fun m!1207015 () Bool)

(assert (=> d!296309 m!1207015))

(declare-fun m!1207017 () Bool)

(assert (=> d!296309 m!1207017))

(declare-fun m!1207019 () Bool)

(assert (=> bm!71704 m!1207019))

(declare-fun m!1207021 () Bool)

(assert (=> bm!71705 m!1207021))

(declare-fun m!1207023 () Bool)

(assert (=> b!1036384 m!1207023))

(declare-fun m!1207025 () Bool)

(assert (=> b!1036384 m!1207025))

(assert (=> b!1036260 d!296309))

(declare-fun b!1036385 () Bool)

(declare-fun c!172025 () Bool)

(assert (=> b!1036385 (= c!172025 (is-Concat!4711 (regOne!6268 r!15766)))))

(declare-fun e!660062 () Regex!2878)

(declare-fun e!660060 () Regex!2878)

(assert (=> b!1036385 (= e!660062 e!660060)))

(declare-fun b!1036386 () Bool)

(declare-fun e!660061 () Regex!2878)

(assert (=> b!1036386 (= e!660061 e!660062)))

(declare-fun c!172027 () Bool)

(assert (=> b!1036386 (= c!172027 (and (is-Concat!4711 (regOne!6268 r!15766)) (is-EmptyExpr!2878 (regTwo!6268 (regOne!6268 r!15766)))))))

(declare-fun b!1036387 () Bool)

(declare-fun e!660063 () Regex!2878)

(assert (=> b!1036387 (= e!660060 e!660063)))

(declare-fun c!172029 () Bool)

(assert (=> b!1036387 (= c!172029 (is-Union!2878 (regOne!6268 r!15766)))))

(declare-fun b!1036388 () Bool)

(declare-fun c!172026 () Bool)

(assert (=> b!1036388 (= c!172026 (is-Star!2878 (regOne!6268 r!15766)))))

(declare-fun e!660064 () Regex!2878)

(assert (=> b!1036388 (= e!660063 e!660064)))

(declare-fun b!1036389 () Bool)

(declare-fun call!71714 () Regex!2878)

(assert (=> b!1036389 (= e!660064 (Star!2878 call!71714))))

(declare-fun d!296313 () Bool)

(declare-fun e!660059 () Bool)

(assert (=> d!296313 e!660059))

(declare-fun res!465502 () Bool)

(assert (=> d!296313 (=> (not res!465502) (not e!660059))))

(declare-fun lt!356830 () Regex!2878)

(assert (=> d!296313 (= res!465502 (validRegex!1347 lt!356830))))

(assert (=> d!296313 (= lt!356830 e!660061)))

(declare-fun c!172028 () Bool)

(assert (=> d!296313 (= c!172028 (and (is-Concat!4711 (regOne!6268 r!15766)) (is-EmptyExpr!2878 (regOne!6268 (regOne!6268 r!15766)))))))

(assert (=> d!296313 (validRegex!1347 (regOne!6268 r!15766))))

(assert (=> d!296313 (= (removeUselessConcat!427 (regOne!6268 r!15766)) lt!356830)))

(declare-fun bm!71707 () Bool)

(declare-fun call!71716 () Regex!2878)

(assert (=> bm!71707 (= call!71714 call!71716)))

(declare-fun b!1036390 () Bool)

(declare-fun call!71715 () Regex!2878)

(assert (=> b!1036390 (= e!660060 (Concat!4711 call!71715 call!71716))))

(declare-fun b!1036391 () Bool)

(assert (=> b!1036391 (= e!660064 (regOne!6268 r!15766))))

(declare-fun bm!71708 () Bool)

(declare-fun call!71712 () Regex!2878)

(declare-fun call!71713 () Regex!2878)

(assert (=> bm!71708 (= call!71712 call!71713)))

(declare-fun bm!71709 () Bool)

(assert (=> bm!71709 (= call!71713 (removeUselessConcat!427 (ite c!172028 (regTwo!6268 (regOne!6268 r!15766)) (ite c!172027 (regOne!6268 (regOne!6268 r!15766)) (ite c!172025 (regTwo!6268 (regOne!6268 r!15766)) (ite c!172029 (regTwo!6269 (regOne!6268 r!15766)) (reg!3207 (regOne!6268 r!15766))))))))))

(declare-fun bm!71710 () Bool)

(assert (=> bm!71710 (= call!71715 (removeUselessConcat!427 (ite c!172025 (regOne!6268 (regOne!6268 r!15766)) (regOne!6269 (regOne!6268 r!15766)))))))

(declare-fun b!1036392 () Bool)

(assert (=> b!1036392 (= e!660062 call!71712)))

(declare-fun b!1036393 () Bool)

(assert (=> b!1036393 (= e!660063 (Union!2878 call!71715 call!71714))))

(declare-fun b!1036394 () Bool)

(assert (=> b!1036394 (= e!660061 call!71713)))

(declare-fun bm!71711 () Bool)

(assert (=> bm!71711 (= call!71716 call!71712)))

(declare-fun b!1036395 () Bool)

(assert (=> b!1036395 (= e!660059 (= (nullable!970 lt!356830) (nullable!970 (regOne!6268 r!15766))))))

(assert (= (and d!296313 c!172028) b!1036394))

(assert (= (and d!296313 (not c!172028)) b!1036386))

(assert (= (and b!1036386 c!172027) b!1036392))

(assert (= (and b!1036386 (not c!172027)) b!1036385))

(assert (= (and b!1036385 c!172025) b!1036390))

(assert (= (and b!1036385 (not c!172025)) b!1036387))

(assert (= (and b!1036387 c!172029) b!1036393))

(assert (= (and b!1036387 (not c!172029)) b!1036388))

(assert (= (and b!1036388 c!172026) b!1036389))

(assert (= (and b!1036388 (not c!172026)) b!1036391))

(assert (= (or b!1036393 b!1036389) bm!71707))

(assert (= (or b!1036390 bm!71707) bm!71711))

(assert (= (or b!1036390 b!1036393) bm!71710))

(assert (= (or b!1036392 bm!71711) bm!71708))

(assert (= (or b!1036394 bm!71708) bm!71709))

(assert (= (and d!296313 res!465502) b!1036395))

(declare-fun m!1207027 () Bool)

(assert (=> d!296313 m!1207027))

(declare-fun m!1207029 () Bool)

(assert (=> d!296313 m!1207029))

(declare-fun m!1207031 () Bool)

(assert (=> bm!71709 m!1207031))

(declare-fun m!1207033 () Bool)

(assert (=> bm!71710 m!1207033))

(declare-fun m!1207035 () Bool)

(assert (=> b!1036395 m!1207035))

(declare-fun m!1207037 () Bool)

(assert (=> b!1036395 m!1207037))

(assert (=> b!1036260 d!296313))

(declare-fun bs!247640 () Bool)

(declare-fun b!1036463 () Bool)

(assert (= bs!247640 (and b!1036463 b!1036262)))

(declare-fun lambda!37319 () Int)

(assert (=> bs!247640 (not (= lambda!37319 lambda!37305))))

(assert (=> bs!247640 (not (= lambda!37319 lambda!37306))))

(assert (=> b!1036463 true))

(assert (=> b!1036463 true))

(declare-fun bs!247641 () Bool)

(declare-fun b!1036459 () Bool)

(assert (= bs!247641 (and b!1036459 b!1036262)))

(declare-fun lambda!37320 () Int)

(assert (=> bs!247641 (not (= lambda!37320 lambda!37305))))

(assert (=> bs!247641 (= lambda!37320 lambda!37306)))

(declare-fun bs!247642 () Bool)

(assert (= bs!247642 (and b!1036459 b!1036463)))

(assert (=> bs!247642 (not (= lambda!37320 lambda!37319))))

(assert (=> b!1036459 true))

(assert (=> b!1036459 true))

(declare-fun b!1036455 () Bool)

(declare-fun e!660110 () Bool)

(declare-fun e!660104 () Bool)

(assert (=> b!1036455 (= e!660110 e!660104)))

(declare-fun res!465534 () Bool)

(assert (=> b!1036455 (= res!465534 (not (is-EmptyLang!2878 r!15766)))))

(assert (=> b!1036455 (=> (not res!465534) (not e!660104))))

(declare-fun b!1036456 () Bool)

(declare-fun e!660106 () Bool)

(assert (=> b!1036456 (= e!660106 (= s!10566 (Cons!10092 (c!171999 r!15766) Nil!10092)))))

(declare-fun b!1036457 () Bool)

(declare-fun e!660107 () Bool)

(declare-fun e!660109 () Bool)

(assert (=> b!1036457 (= e!660107 e!660109)))

(declare-fun c!172045 () Bool)

(assert (=> b!1036457 (= c!172045 (is-Star!2878 r!15766))))

(declare-fun b!1036458 () Bool)

(declare-fun res!465536 () Bool)

(declare-fun e!660105 () Bool)

(assert (=> b!1036458 (=> res!465536 e!660105)))

(declare-fun call!71731 () Bool)

(assert (=> b!1036458 (= res!465536 call!71731)))

(assert (=> b!1036458 (= e!660109 e!660105)))

(declare-fun call!71730 () Bool)

(assert (=> b!1036459 (= e!660109 call!71730)))

(declare-fun d!296315 () Bool)

(declare-fun c!172047 () Bool)

(assert (=> d!296315 (= c!172047 (is-EmptyExpr!2878 r!15766))))

(assert (=> d!296315 (= (matchRSpec!677 r!15766 s!10566) e!660110)))

(declare-fun b!1036460 () Bool)

(assert (=> b!1036460 (= e!660110 call!71731)))

(declare-fun bm!71725 () Bool)

(assert (=> bm!71725 (= call!71730 (Exists!605 (ite c!172045 lambda!37319 lambda!37320)))))

(declare-fun b!1036461 () Bool)

(declare-fun e!660108 () Bool)

(assert (=> b!1036461 (= e!660107 e!660108)))

(declare-fun res!465535 () Bool)

(assert (=> b!1036461 (= res!465535 (matchRSpec!677 (regOne!6269 r!15766) s!10566))))

(assert (=> b!1036461 (=> res!465535 e!660108)))

(declare-fun b!1036462 () Bool)

(declare-fun c!172044 () Bool)

(assert (=> b!1036462 (= c!172044 (is-ElementMatch!2878 r!15766))))

(assert (=> b!1036462 (= e!660104 e!660106)))

(assert (=> b!1036463 (= e!660105 call!71730)))

(declare-fun b!1036464 () Bool)

(assert (=> b!1036464 (= e!660108 (matchRSpec!677 (regTwo!6269 r!15766) s!10566))))

(declare-fun bm!71726 () Bool)

(assert (=> bm!71726 (= call!71731 (isEmpty!6486 s!10566))))

(declare-fun b!1036465 () Bool)

(declare-fun c!172046 () Bool)

(assert (=> b!1036465 (= c!172046 (is-Union!2878 r!15766))))

(assert (=> b!1036465 (= e!660106 e!660107)))

(assert (= (and d!296315 c!172047) b!1036460))

(assert (= (and d!296315 (not c!172047)) b!1036455))

(assert (= (and b!1036455 res!465534) b!1036462))

(assert (= (and b!1036462 c!172044) b!1036456))

(assert (= (and b!1036462 (not c!172044)) b!1036465))

(assert (= (and b!1036465 c!172046) b!1036461))

(assert (= (and b!1036465 (not c!172046)) b!1036457))

(assert (= (and b!1036461 (not res!465535)) b!1036464))

(assert (= (and b!1036457 c!172045) b!1036458))

(assert (= (and b!1036457 (not c!172045)) b!1036459))

(assert (= (and b!1036458 (not res!465536)) b!1036463))

(assert (= (or b!1036463 b!1036459) bm!71725))

(assert (= (or b!1036460 b!1036458) bm!71726))

(declare-fun m!1207045 () Bool)

(assert (=> bm!71725 m!1207045))

(declare-fun m!1207047 () Bool)

(assert (=> b!1036461 m!1207047))

(declare-fun m!1207049 () Bool)

(assert (=> b!1036464 m!1207049))

(assert (=> bm!71726 m!1206941))

(assert (=> b!1036261 d!296315))

(declare-fun b!1036466 () Bool)

(declare-fun e!660112 () Bool)

(assert (=> b!1036466 (= e!660112 (nullable!970 r!15766))))

(declare-fun b!1036467 () Bool)

(assert (=> b!1036467 (= e!660112 (matchR!1414 (derivativeStep!770 r!15766 (head!1925 s!10566)) (tail!1487 s!10566)))))

(declare-fun b!1036468 () Bool)

(declare-fun e!660115 () Bool)

(declare-fun lt!356831 () Bool)

(declare-fun call!71732 () Bool)

(assert (=> b!1036468 (= e!660115 (= lt!356831 call!71732))))

(declare-fun b!1036469 () Bool)

(declare-fun res!465538 () Bool)

(declare-fun e!660114 () Bool)

(assert (=> b!1036469 (=> res!465538 e!660114)))

(declare-fun e!660116 () Bool)

(assert (=> b!1036469 (= res!465538 e!660116)))

(declare-fun res!465539 () Bool)

(assert (=> b!1036469 (=> (not res!465539) (not e!660116))))

(assert (=> b!1036469 (= res!465539 lt!356831)))

(declare-fun bm!71727 () Bool)

(assert (=> bm!71727 (= call!71732 (isEmpty!6486 s!10566))))

(declare-fun b!1036470 () Bool)

(declare-fun res!465542 () Bool)

(assert (=> b!1036470 (=> (not res!465542) (not e!660116))))

(assert (=> b!1036470 (= res!465542 (isEmpty!6486 (tail!1487 s!10566)))))

(declare-fun b!1036471 () Bool)

(declare-fun e!660111 () Bool)

(assert (=> b!1036471 (= e!660111 (not (= (head!1925 s!10566) (c!171999 r!15766))))))

(declare-fun b!1036472 () Bool)

(declare-fun res!465537 () Bool)

(assert (=> b!1036472 (=> (not res!465537) (not e!660116))))

(assert (=> b!1036472 (= res!465537 (not call!71732))))

(declare-fun b!1036473 () Bool)

(declare-fun e!660117 () Bool)

(assert (=> b!1036473 (= e!660115 e!660117)))

(declare-fun c!172050 () Bool)

(assert (=> b!1036473 (= c!172050 (is-EmptyLang!2878 r!15766))))

(declare-fun b!1036474 () Bool)

(assert (=> b!1036474 (= e!660117 (not lt!356831))))

(declare-fun b!1036475 () Bool)

(declare-fun res!465544 () Bool)

(assert (=> b!1036475 (=> res!465544 e!660114)))

(assert (=> b!1036475 (= res!465544 (not (is-ElementMatch!2878 r!15766)))))

(assert (=> b!1036475 (= e!660117 e!660114)))

(declare-fun b!1036476 () Bool)

(declare-fun e!660113 () Bool)

(assert (=> b!1036476 (= e!660113 e!660111)))

(declare-fun res!465540 () Bool)

(assert (=> b!1036476 (=> res!465540 e!660111)))

(assert (=> b!1036476 (= res!465540 call!71732)))

(declare-fun b!1036477 () Bool)

(declare-fun res!465543 () Bool)

(assert (=> b!1036477 (=> res!465543 e!660111)))

(assert (=> b!1036477 (= res!465543 (not (isEmpty!6486 (tail!1487 s!10566))))))

(declare-fun b!1036478 () Bool)

(assert (=> b!1036478 (= e!660116 (= (head!1925 s!10566) (c!171999 r!15766)))))

(declare-fun b!1036479 () Bool)

(assert (=> b!1036479 (= e!660114 e!660113)))

(declare-fun res!465541 () Bool)

(assert (=> b!1036479 (=> (not res!465541) (not e!660113))))

(assert (=> b!1036479 (= res!465541 (not lt!356831))))

(declare-fun d!296319 () Bool)

(assert (=> d!296319 e!660115))

(declare-fun c!172048 () Bool)

(assert (=> d!296319 (= c!172048 (is-EmptyExpr!2878 r!15766))))

(assert (=> d!296319 (= lt!356831 e!660112)))

(declare-fun c!172049 () Bool)

(assert (=> d!296319 (= c!172049 (isEmpty!6486 s!10566))))

(assert (=> d!296319 (validRegex!1347 r!15766)))

(assert (=> d!296319 (= (matchR!1414 r!15766 s!10566) lt!356831)))

(assert (= (and d!296319 c!172049) b!1036466))

(assert (= (and d!296319 (not c!172049)) b!1036467))

(assert (= (and d!296319 c!172048) b!1036468))

(assert (= (and d!296319 (not c!172048)) b!1036473))

(assert (= (and b!1036473 c!172050) b!1036474))

(assert (= (and b!1036473 (not c!172050)) b!1036475))

(assert (= (and b!1036475 (not res!465544)) b!1036469))

(assert (= (and b!1036469 res!465539) b!1036472))

(assert (= (and b!1036472 res!465537) b!1036470))

(assert (= (and b!1036470 res!465542) b!1036478))

(assert (= (and b!1036469 (not res!465538)) b!1036479))

(assert (= (and b!1036479 res!465541) b!1036476))

(assert (= (and b!1036476 (not res!465540)) b!1036477))

(assert (= (and b!1036477 (not res!465543)) b!1036471))

(assert (= (or b!1036468 b!1036472 b!1036476) bm!71727))

(declare-fun m!1207051 () Bool)

(assert (=> b!1036466 m!1207051))

(assert (=> b!1036477 m!1207003))

(assert (=> b!1036477 m!1207003))

(assert (=> b!1036477 m!1207005))

(assert (=> b!1036471 m!1207007))

(assert (=> b!1036470 m!1207003))

(assert (=> b!1036470 m!1207003))

(assert (=> b!1036470 m!1207005))

(assert (=> b!1036478 m!1207007))

(assert (=> d!296319 m!1206941))

(assert (=> d!296319 m!1206965))

(assert (=> b!1036467 m!1207007))

(assert (=> b!1036467 m!1207007))

(declare-fun m!1207053 () Bool)

(assert (=> b!1036467 m!1207053))

(assert (=> b!1036467 m!1207003))

(assert (=> b!1036467 m!1207053))

(assert (=> b!1036467 m!1207003))

(declare-fun m!1207055 () Bool)

(assert (=> b!1036467 m!1207055))

(assert (=> bm!71727 m!1206941))

(assert (=> b!1036261 d!296319))

(declare-fun d!296321 () Bool)

(assert (=> d!296321 (= (matchR!1414 r!15766 s!10566) (matchRSpec!677 r!15766 s!10566))))

(declare-fun lt!356834 () Unit!15431)

(declare-fun choose!6614 (Regex!2878 List!10108) Unit!15431)

(assert (=> d!296321 (= lt!356834 (choose!6614 r!15766 s!10566))))

(assert (=> d!296321 (validRegex!1347 r!15766)))

(assert (=> d!296321 (= (mainMatchTheorem!677 r!15766 s!10566) lt!356834)))

(declare-fun bs!247643 () Bool)

(assert (= bs!247643 d!296321))

(assert (=> bs!247643 m!1206955))

(assert (=> bs!247643 m!1206953))

(declare-fun m!1207057 () Bool)

(assert (=> bs!247643 m!1207057))

(assert (=> bs!247643 m!1206965))

(assert (=> b!1036261 d!296321))

(declare-fun d!296323 () Bool)

(assert (=> d!296323 (= (isEmpty!6486 s!10566) (is-Nil!10092 s!10566))))

(assert (=> b!1036262 d!296323))

(declare-fun d!296325 () Bool)

(declare-fun isEmpty!6488 (Option!2403) Bool)

(assert (=> d!296325 (= (isDefined!2045 (findConcatSeparation!509 (regOne!6268 r!15766) (regTwo!6268 r!15766) Nil!10092 s!10566 s!10566)) (not (isEmpty!6488 (findConcatSeparation!509 (regOne!6268 r!15766) (regTwo!6268 r!15766) Nil!10092 s!10566 s!10566))))))

(declare-fun bs!247644 () Bool)

(assert (= bs!247644 d!296325))

(assert (=> bs!247644 m!1206933))

(declare-fun m!1207059 () Bool)

(assert (=> bs!247644 m!1207059))

(assert (=> b!1036262 d!296325))

(declare-fun bs!247645 () Bool)

(declare-fun d!296327 () Bool)

(assert (= bs!247645 (and d!296327 b!1036262)))

(declare-fun lambda!37324 () Int)

(assert (=> bs!247645 (= lambda!37324 lambda!37305)))

(assert (=> bs!247645 (not (= lambda!37324 lambda!37306))))

(declare-fun bs!247646 () Bool)

(assert (= bs!247646 (and d!296327 b!1036463)))

(assert (=> bs!247646 (not (= lambda!37324 lambda!37319))))

(declare-fun bs!247647 () Bool)

(assert (= bs!247647 (and d!296327 b!1036459)))

(assert (=> bs!247647 (not (= lambda!37324 lambda!37320))))

(assert (=> d!296327 true))

(assert (=> d!296327 true))

(assert (=> d!296327 true))

(assert (=> d!296327 (= (isDefined!2045 (findConcatSeparation!509 (regOne!6268 r!15766) (regTwo!6268 r!15766) Nil!10092 s!10566 s!10566)) (Exists!605 lambda!37324))))

(declare-fun lt!356837 () Unit!15431)

(declare-fun choose!6615 (Regex!2878 Regex!2878 List!10108) Unit!15431)

(assert (=> d!296327 (= lt!356837 (choose!6615 (regOne!6268 r!15766) (regTwo!6268 r!15766) s!10566))))

(assert (=> d!296327 (validRegex!1347 (regOne!6268 r!15766))))

(assert (=> d!296327 (= (lemmaFindConcatSeparationEquivalentToExists!509 (regOne!6268 r!15766) (regTwo!6268 r!15766) s!10566) lt!356837)))

(declare-fun bs!247648 () Bool)

(assert (= bs!247648 d!296327))

(assert (=> bs!247648 m!1206933))

(assert (=> bs!247648 m!1206935))

(declare-fun m!1207061 () Bool)

(assert (=> bs!247648 m!1207061))

(declare-fun m!1207063 () Bool)

(assert (=> bs!247648 m!1207063))

(assert (=> bs!247648 m!1207029))

(assert (=> bs!247648 m!1206933))

(assert (=> b!1036262 d!296327))

(declare-fun b!1036534 () Bool)

(declare-fun res!465577 () Bool)

(declare-fun e!660151 () Bool)

(assert (=> b!1036534 (=> (not res!465577) (not e!660151))))

(declare-fun lt!356844 () Option!2403)

(declare-fun get!3595 (Option!2403) tuple2!11522)

(assert (=> b!1036534 (= res!465577 (matchR!1414 (regOne!6268 r!15766) (_1!6587 (get!3595 lt!356844))))))

(declare-fun b!1036535 () Bool)

(declare-fun e!660150 () Option!2403)

(assert (=> b!1036535 (= e!660150 (Some!2402 (tuple2!11523 Nil!10092 s!10566)))))

(declare-fun d!296329 () Bool)

(declare-fun e!660148 () Bool)

(assert (=> d!296329 e!660148))

(declare-fun res!465576 () Bool)

(assert (=> d!296329 (=> res!465576 e!660148)))

(assert (=> d!296329 (= res!465576 e!660151)))

(declare-fun res!465575 () Bool)

(assert (=> d!296329 (=> (not res!465575) (not e!660151))))

(assert (=> d!296329 (= res!465575 (isDefined!2045 lt!356844))))

(assert (=> d!296329 (= lt!356844 e!660150)))

(declare-fun c!172064 () Bool)

(declare-fun e!660152 () Bool)

(assert (=> d!296329 (= c!172064 e!660152)))

(declare-fun res!465579 () Bool)

(assert (=> d!296329 (=> (not res!465579) (not e!660152))))

(assert (=> d!296329 (= res!465579 (matchR!1414 (regOne!6268 r!15766) Nil!10092))))

(assert (=> d!296329 (validRegex!1347 (regOne!6268 r!15766))))

(assert (=> d!296329 (= (findConcatSeparation!509 (regOne!6268 r!15766) (regTwo!6268 r!15766) Nil!10092 s!10566 s!10566) lt!356844)))

(declare-fun b!1036536 () Bool)

(assert (=> b!1036536 (= e!660152 (matchR!1414 (regTwo!6268 r!15766) s!10566))))

(declare-fun b!1036537 () Bool)

(declare-fun e!660149 () Option!2403)

(assert (=> b!1036537 (= e!660149 None!2402)))

(declare-fun b!1036538 () Bool)

(assert (=> b!1036538 (= e!660148 (not (isDefined!2045 lt!356844)))))

(declare-fun b!1036539 () Bool)

(assert (=> b!1036539 (= e!660150 e!660149)))

(declare-fun c!172063 () Bool)

(assert (=> b!1036539 (= c!172063 (is-Nil!10092 s!10566))))

(declare-fun b!1036540 () Bool)

(declare-fun res!465578 () Bool)

(assert (=> b!1036540 (=> (not res!465578) (not e!660151))))

(assert (=> b!1036540 (= res!465578 (matchR!1414 (regTwo!6268 r!15766) (_2!6587 (get!3595 lt!356844))))))

(declare-fun b!1036541 () Bool)

(declare-fun lt!356846 () Unit!15431)

(declare-fun lt!356845 () Unit!15431)

(assert (=> b!1036541 (= lt!356846 lt!356845)))

(declare-fun ++!2778 (List!10108 List!10108) List!10108)

(assert (=> b!1036541 (= (++!2778 (++!2778 Nil!10092 (Cons!10092 (h!15493 s!10566) Nil!10092)) (t!101154 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!371 (List!10108 C!6326 List!10108 List!10108) Unit!15431)

(assert (=> b!1036541 (= lt!356845 (lemmaMoveElementToOtherListKeepsConcatEq!371 Nil!10092 (h!15493 s!10566) (t!101154 s!10566) s!10566))))

(assert (=> b!1036541 (= e!660149 (findConcatSeparation!509 (regOne!6268 r!15766) (regTwo!6268 r!15766) (++!2778 Nil!10092 (Cons!10092 (h!15493 s!10566) Nil!10092)) (t!101154 s!10566) s!10566))))

(declare-fun b!1036542 () Bool)

(assert (=> b!1036542 (= e!660151 (= (++!2778 (_1!6587 (get!3595 lt!356844)) (_2!6587 (get!3595 lt!356844))) s!10566))))

(assert (= (and d!296329 res!465579) b!1036536))

(assert (= (and d!296329 c!172064) b!1036535))

(assert (= (and d!296329 (not c!172064)) b!1036539))

(assert (= (and b!1036539 c!172063) b!1036537))

(assert (= (and b!1036539 (not c!172063)) b!1036541))

(assert (= (and d!296329 res!465575) b!1036534))

(assert (= (and b!1036534 res!465577) b!1036540))

(assert (= (and b!1036540 res!465578) b!1036542))

(assert (= (and d!296329 (not res!465576)) b!1036538))

(declare-fun m!1207065 () Bool)

(assert (=> d!296329 m!1207065))

(declare-fun m!1207067 () Bool)

(assert (=> d!296329 m!1207067))

(assert (=> d!296329 m!1207029))

(assert (=> b!1036538 m!1207065))

(declare-fun m!1207069 () Bool)

(assert (=> b!1036536 m!1207069))

(declare-fun m!1207071 () Bool)

(assert (=> b!1036534 m!1207071))

(declare-fun m!1207073 () Bool)

(assert (=> b!1036534 m!1207073))

(declare-fun m!1207075 () Bool)

(assert (=> b!1036541 m!1207075))

(assert (=> b!1036541 m!1207075))

(declare-fun m!1207077 () Bool)

(assert (=> b!1036541 m!1207077))

(declare-fun m!1207079 () Bool)

(assert (=> b!1036541 m!1207079))

(assert (=> b!1036541 m!1207075))

(declare-fun m!1207081 () Bool)

(assert (=> b!1036541 m!1207081))

(assert (=> b!1036542 m!1207071))

(declare-fun m!1207083 () Bool)

(assert (=> b!1036542 m!1207083))

(assert (=> b!1036540 m!1207071))

(declare-fun m!1207085 () Bool)

(assert (=> b!1036540 m!1207085))

(assert (=> b!1036262 d!296329))

(declare-fun d!296331 () Bool)

(declare-fun choose!6616 (Int) Bool)

(assert (=> d!296331 (= (Exists!605 lambda!37306) (choose!6616 lambda!37306))))

(declare-fun bs!247649 () Bool)

(assert (= bs!247649 d!296331))

(declare-fun m!1207087 () Bool)

(assert (=> bs!247649 m!1207087))

(assert (=> b!1036262 d!296331))

(declare-fun bs!247653 () Bool)

(declare-fun d!296333 () Bool)

(assert (= bs!247653 (and d!296333 d!296327)))

(declare-fun lambda!37334 () Int)

(assert (=> bs!247653 (= lambda!37334 lambda!37324)))

(declare-fun bs!247654 () Bool)

(assert (= bs!247654 (and d!296333 b!1036262)))

(assert (=> bs!247654 (= lambda!37334 lambda!37305)))

(assert (=> bs!247654 (not (= lambda!37334 lambda!37306))))

(declare-fun bs!247655 () Bool)

(assert (= bs!247655 (and d!296333 b!1036463)))

(assert (=> bs!247655 (not (= lambda!37334 lambda!37319))))

(declare-fun bs!247656 () Bool)

(assert (= bs!247656 (and d!296333 b!1036459)))

(assert (=> bs!247656 (not (= lambda!37334 lambda!37320))))

(assert (=> d!296333 true))

(assert (=> d!296333 true))

(assert (=> d!296333 true))

(declare-fun lambda!37335 () Int)

(assert (=> bs!247653 (not (= lambda!37335 lambda!37324))))

(declare-fun bs!247657 () Bool)

(assert (= bs!247657 d!296333))

(assert (=> bs!247657 (not (= lambda!37335 lambda!37334))))

(assert (=> bs!247654 (not (= lambda!37335 lambda!37305))))

(assert (=> bs!247654 (= lambda!37335 lambda!37306)))

(assert (=> bs!247655 (not (= lambda!37335 lambda!37319))))

(assert (=> bs!247656 (= lambda!37335 lambda!37320)))

(assert (=> d!296333 true))

(assert (=> d!296333 true))

(assert (=> d!296333 true))

(assert (=> d!296333 (= (Exists!605 lambda!37334) (Exists!605 lambda!37335))))

(declare-fun lt!356849 () Unit!15431)

(declare-fun choose!6617 (Regex!2878 Regex!2878 List!10108) Unit!15431)

(assert (=> d!296333 (= lt!356849 (choose!6617 (regOne!6268 r!15766) (regTwo!6268 r!15766) s!10566))))

(assert (=> d!296333 (validRegex!1347 (regOne!6268 r!15766))))

(assert (=> d!296333 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!293 (regOne!6268 r!15766) (regTwo!6268 r!15766) s!10566) lt!356849)))

(declare-fun m!1207095 () Bool)

(assert (=> bs!247657 m!1207095))

(declare-fun m!1207097 () Bool)

(assert (=> bs!247657 m!1207097))

(declare-fun m!1207099 () Bool)

(assert (=> bs!247657 m!1207099))

(assert (=> bs!247657 m!1207029))

(assert (=> b!1036262 d!296333))

(declare-fun d!296337 () Bool)

(assert (=> d!296337 (= (Exists!605 lambda!37305) (choose!6616 lambda!37305))))

(declare-fun bs!247658 () Bool)

(assert (= bs!247658 d!296337))

(declare-fun m!1207101 () Bool)

(assert (=> bs!247658 m!1207101))

(assert (=> b!1036262 d!296337))

(declare-fun d!296339 () Bool)

(declare-fun res!465610 () Bool)

(declare-fun e!660186 () Bool)

(assert (=> d!296339 (=> res!465610 e!660186)))

(assert (=> d!296339 (= res!465610 (is-ElementMatch!2878 lt!356796))))

(assert (=> d!296339 (= (validRegex!1347 lt!356796) e!660186)))

(declare-fun b!1036589 () Bool)

(declare-fun e!660187 () Bool)

(declare-fun e!660188 () Bool)

(assert (=> b!1036589 (= e!660187 e!660188)))

(declare-fun c!172076 () Bool)

(assert (=> b!1036589 (= c!172076 (is-Union!2878 lt!356796))))

(declare-fun bm!71743 () Bool)

(declare-fun call!71748 () Bool)

(assert (=> bm!71743 (= call!71748 (validRegex!1347 (ite c!172076 (regOne!6269 lt!356796) (regOne!6268 lt!356796))))))

(declare-fun b!1036590 () Bool)

(declare-fun res!465607 () Bool)

(declare-fun e!660189 () Bool)

(assert (=> b!1036590 (=> res!465607 e!660189)))

(assert (=> b!1036590 (= res!465607 (not (is-Concat!4711 lt!356796)))))

(assert (=> b!1036590 (= e!660188 e!660189)))

(declare-fun b!1036591 () Bool)

(declare-fun e!660191 () Bool)

(assert (=> b!1036591 (= e!660189 e!660191)))

(declare-fun res!465606 () Bool)

(assert (=> b!1036591 (=> (not res!465606) (not e!660191))))

(assert (=> b!1036591 (= res!465606 call!71748)))

(declare-fun b!1036592 () Bool)

(declare-fun call!71750 () Bool)

(assert (=> b!1036592 (= e!660191 call!71750)))

(declare-fun b!1036593 () Bool)

(declare-fun e!660185 () Bool)

(assert (=> b!1036593 (= e!660187 e!660185)))

(declare-fun res!465608 () Bool)

(assert (=> b!1036593 (= res!465608 (not (nullable!970 (reg!3207 lt!356796))))))

(assert (=> b!1036593 (=> (not res!465608) (not e!660185))))

(declare-fun b!1036594 () Bool)

(assert (=> b!1036594 (= e!660186 e!660187)))

(declare-fun c!172075 () Bool)

(assert (=> b!1036594 (= c!172075 (is-Star!2878 lt!356796))))

(declare-fun b!1036595 () Bool)

(declare-fun res!465609 () Bool)

(declare-fun e!660190 () Bool)

(assert (=> b!1036595 (=> (not res!465609) (not e!660190))))

(assert (=> b!1036595 (= res!465609 call!71748)))

(assert (=> b!1036595 (= e!660188 e!660190)))

(declare-fun bm!71744 () Bool)

(declare-fun call!71749 () Bool)

(assert (=> bm!71744 (= call!71750 call!71749)))

(declare-fun b!1036596 () Bool)

(assert (=> b!1036596 (= e!660190 call!71750)))

(declare-fun b!1036597 () Bool)

(assert (=> b!1036597 (= e!660185 call!71749)))

(declare-fun bm!71745 () Bool)

(assert (=> bm!71745 (= call!71749 (validRegex!1347 (ite c!172075 (reg!3207 lt!356796) (ite c!172076 (regTwo!6269 lt!356796) (regTwo!6268 lt!356796)))))))

(assert (= (and d!296339 (not res!465610)) b!1036594))

(assert (= (and b!1036594 c!172075) b!1036593))

(assert (= (and b!1036594 (not c!172075)) b!1036589))

(assert (= (and b!1036593 res!465608) b!1036597))

(assert (= (and b!1036589 c!172076) b!1036595))

(assert (= (and b!1036589 (not c!172076)) b!1036590))

(assert (= (and b!1036595 res!465609) b!1036596))

(assert (= (and b!1036590 (not res!465607)) b!1036591))

(assert (= (and b!1036591 res!465606) b!1036592))

(assert (= (or b!1036596 b!1036592) bm!71744))

(assert (= (or b!1036595 b!1036591) bm!71743))

(assert (= (or b!1036597 bm!71744) bm!71745))

(declare-fun m!1207113 () Bool)

(assert (=> bm!71743 m!1207113))

(declare-fun m!1207115 () Bool)

(assert (=> b!1036593 m!1207115))

(declare-fun m!1207117 () Bool)

(assert (=> bm!71745 m!1207117))

(assert (=> b!1036257 d!296339))

(declare-fun bs!247660 () Bool)

(declare-fun b!1036606 () Bool)

(assert (= bs!247660 (and b!1036606 d!296327)))

(declare-fun lambda!37336 () Int)

(assert (=> bs!247660 (not (= lambda!37336 lambda!37324))))

(declare-fun bs!247661 () Bool)

(assert (= bs!247661 (and b!1036606 d!296333)))

(assert (=> bs!247661 (not (= lambda!37336 lambda!37334))))

(declare-fun bs!247662 () Bool)

(assert (= bs!247662 (and b!1036606 b!1036262)))

(assert (=> bs!247662 (not (= lambda!37336 lambda!37305))))

(assert (=> bs!247662 (not (= lambda!37336 lambda!37306))))

(assert (=> bs!247661 (not (= lambda!37336 lambda!37335))))

(declare-fun bs!247663 () Bool)

(assert (= bs!247663 (and b!1036606 b!1036463)))

(assert (=> bs!247663 (= (and (= (reg!3207 lt!356798) (reg!3207 r!15766)) (= lt!356798 r!15766)) (= lambda!37336 lambda!37319))))

(declare-fun bs!247664 () Bool)

(assert (= bs!247664 (and b!1036606 b!1036459)))

(assert (=> bs!247664 (not (= lambda!37336 lambda!37320))))

(assert (=> b!1036606 true))

(assert (=> b!1036606 true))

(declare-fun bs!247665 () Bool)

(declare-fun b!1036602 () Bool)

(assert (= bs!247665 (and b!1036602 d!296327)))

(declare-fun lambda!37337 () Int)

(assert (=> bs!247665 (not (= lambda!37337 lambda!37324))))

(declare-fun bs!247666 () Bool)

(assert (= bs!247666 (and b!1036602 d!296333)))

(assert (=> bs!247666 (not (= lambda!37337 lambda!37334))))

(declare-fun bs!247667 () Bool)

(assert (= bs!247667 (and b!1036602 b!1036262)))

(assert (=> bs!247667 (not (= lambda!37337 lambda!37305))))

(assert (=> bs!247667 (= (and (= (regOne!6268 lt!356798) (regOne!6268 r!15766)) (= (regTwo!6268 lt!356798) (regTwo!6268 r!15766))) (= lambda!37337 lambda!37306))))

(assert (=> bs!247666 (= (and (= (regOne!6268 lt!356798) (regOne!6268 r!15766)) (= (regTwo!6268 lt!356798) (regTwo!6268 r!15766))) (= lambda!37337 lambda!37335))))

(declare-fun bs!247668 () Bool)

(assert (= bs!247668 (and b!1036602 b!1036606)))

(assert (=> bs!247668 (not (= lambda!37337 lambda!37336))))

(declare-fun bs!247669 () Bool)

(assert (= bs!247669 (and b!1036602 b!1036463)))

(assert (=> bs!247669 (not (= lambda!37337 lambda!37319))))

(declare-fun bs!247670 () Bool)

(assert (= bs!247670 (and b!1036602 b!1036459)))

(assert (=> bs!247670 (= (and (= (regOne!6268 lt!356798) (regOne!6268 r!15766)) (= (regTwo!6268 lt!356798) (regTwo!6268 r!15766))) (= lambda!37337 lambda!37320))))

(assert (=> b!1036602 true))

(assert (=> b!1036602 true))

(declare-fun b!1036598 () Bool)

(declare-fun e!660198 () Bool)

(declare-fun e!660192 () Bool)

(assert (=> b!1036598 (= e!660198 e!660192)))

(declare-fun res!465611 () Bool)

(assert (=> b!1036598 (= res!465611 (not (is-EmptyLang!2878 lt!356798)))))

(assert (=> b!1036598 (=> (not res!465611) (not e!660192))))

(declare-fun b!1036599 () Bool)

(declare-fun e!660194 () Bool)

(assert (=> b!1036599 (= e!660194 (= s!10566 (Cons!10092 (c!171999 lt!356798) Nil!10092)))))

(declare-fun b!1036600 () Bool)

(declare-fun e!660195 () Bool)

(declare-fun e!660197 () Bool)

(assert (=> b!1036600 (= e!660195 e!660197)))

(declare-fun c!172078 () Bool)

(assert (=> b!1036600 (= c!172078 (is-Star!2878 lt!356798))))

(declare-fun b!1036601 () Bool)

(declare-fun res!465613 () Bool)

(declare-fun e!660193 () Bool)

(assert (=> b!1036601 (=> res!465613 e!660193)))

(declare-fun call!71752 () Bool)

(assert (=> b!1036601 (= res!465613 call!71752)))

(assert (=> b!1036601 (= e!660197 e!660193)))

(declare-fun call!71751 () Bool)

(assert (=> b!1036602 (= e!660197 call!71751)))

(declare-fun d!296345 () Bool)

(declare-fun c!172080 () Bool)

(assert (=> d!296345 (= c!172080 (is-EmptyExpr!2878 lt!356798))))

(assert (=> d!296345 (= (matchRSpec!677 lt!356798 s!10566) e!660198)))

(declare-fun b!1036603 () Bool)

(assert (=> b!1036603 (= e!660198 call!71752)))

(declare-fun bm!71746 () Bool)

(assert (=> bm!71746 (= call!71751 (Exists!605 (ite c!172078 lambda!37336 lambda!37337)))))

(declare-fun b!1036604 () Bool)

(declare-fun e!660196 () Bool)

(assert (=> b!1036604 (= e!660195 e!660196)))

(declare-fun res!465612 () Bool)

(assert (=> b!1036604 (= res!465612 (matchRSpec!677 (regOne!6269 lt!356798) s!10566))))

(assert (=> b!1036604 (=> res!465612 e!660196)))

(declare-fun b!1036605 () Bool)

(declare-fun c!172077 () Bool)

(assert (=> b!1036605 (= c!172077 (is-ElementMatch!2878 lt!356798))))

(assert (=> b!1036605 (= e!660192 e!660194)))

(assert (=> b!1036606 (= e!660193 call!71751)))

(declare-fun b!1036607 () Bool)

(assert (=> b!1036607 (= e!660196 (matchRSpec!677 (regTwo!6269 lt!356798) s!10566))))

(declare-fun bm!71747 () Bool)

(assert (=> bm!71747 (= call!71752 (isEmpty!6486 s!10566))))

(declare-fun b!1036608 () Bool)

(declare-fun c!172079 () Bool)

(assert (=> b!1036608 (= c!172079 (is-Union!2878 lt!356798))))

(assert (=> b!1036608 (= e!660194 e!660195)))

(assert (= (and d!296345 c!172080) b!1036603))

(assert (= (and d!296345 (not c!172080)) b!1036598))

(assert (= (and b!1036598 res!465611) b!1036605))

(assert (= (and b!1036605 c!172077) b!1036599))

(assert (= (and b!1036605 (not c!172077)) b!1036608))

(assert (= (and b!1036608 c!172079) b!1036604))

(assert (= (and b!1036608 (not c!172079)) b!1036600))

(assert (= (and b!1036604 (not res!465612)) b!1036607))

(assert (= (and b!1036600 c!172078) b!1036601))

(assert (= (and b!1036600 (not c!172078)) b!1036602))

(assert (= (and b!1036601 (not res!465613)) b!1036606))

(assert (= (or b!1036606 b!1036602) bm!71746))

(assert (= (or b!1036603 b!1036601) bm!71747))

(declare-fun m!1207119 () Bool)

(assert (=> bm!71746 m!1207119))

(declare-fun m!1207121 () Bool)

(assert (=> b!1036604 m!1207121))

(declare-fun m!1207123 () Bool)

(assert (=> b!1036607 m!1207123))

(assert (=> bm!71747 m!1206941))

(assert (=> b!1036257 d!296345))

(declare-fun d!296347 () Bool)

(assert (=> d!296347 (= (matchR!1414 lt!356798 s!10566) (matchRSpec!677 lt!356798 s!10566))))

(declare-fun lt!356853 () Unit!15431)

(assert (=> d!296347 (= lt!356853 (choose!6614 lt!356798 s!10566))))

(assert (=> d!296347 (validRegex!1347 lt!356798)))

(assert (=> d!296347 (= (mainMatchTheorem!677 lt!356798 s!10566) lt!356853)))

(declare-fun bs!247671 () Bool)

(assert (= bs!247671 d!296347))

(assert (=> bs!247671 m!1206959))

(assert (=> bs!247671 m!1206949))

(declare-fun m!1207125 () Bool)

(assert (=> bs!247671 m!1207125))

(assert (=> bs!247671 m!1207009))

(assert (=> b!1036257 d!296347))

(declare-fun d!296349 () Bool)

(declare-fun res!465618 () Bool)

(declare-fun e!660200 () Bool)

(assert (=> d!296349 (=> res!465618 e!660200)))

(assert (=> d!296349 (= res!465618 (is-ElementMatch!2878 r!15766))))

(assert (=> d!296349 (= (validRegex!1347 r!15766) e!660200)))

(declare-fun b!1036609 () Bool)

(declare-fun e!660201 () Bool)

(declare-fun e!660202 () Bool)

(assert (=> b!1036609 (= e!660201 e!660202)))

(declare-fun c!172082 () Bool)

(assert (=> b!1036609 (= c!172082 (is-Union!2878 r!15766))))

(declare-fun bm!71748 () Bool)

(declare-fun call!71753 () Bool)

(assert (=> bm!71748 (= call!71753 (validRegex!1347 (ite c!172082 (regOne!6269 r!15766) (regOne!6268 r!15766))))))

(declare-fun b!1036610 () Bool)

(declare-fun res!465615 () Bool)

(declare-fun e!660203 () Bool)

(assert (=> b!1036610 (=> res!465615 e!660203)))

(assert (=> b!1036610 (= res!465615 (not (is-Concat!4711 r!15766)))))

(assert (=> b!1036610 (= e!660202 e!660203)))

(declare-fun b!1036611 () Bool)

(declare-fun e!660205 () Bool)

(assert (=> b!1036611 (= e!660203 e!660205)))

(declare-fun res!465614 () Bool)

(assert (=> b!1036611 (=> (not res!465614) (not e!660205))))

(assert (=> b!1036611 (= res!465614 call!71753)))

(declare-fun b!1036612 () Bool)

(declare-fun call!71755 () Bool)

(assert (=> b!1036612 (= e!660205 call!71755)))

(declare-fun b!1036613 () Bool)

(declare-fun e!660199 () Bool)

(assert (=> b!1036613 (= e!660201 e!660199)))

(declare-fun res!465616 () Bool)

(assert (=> b!1036613 (= res!465616 (not (nullable!970 (reg!3207 r!15766))))))

(assert (=> b!1036613 (=> (not res!465616) (not e!660199))))

(declare-fun b!1036614 () Bool)

(assert (=> b!1036614 (= e!660200 e!660201)))

(declare-fun c!172081 () Bool)

(assert (=> b!1036614 (= c!172081 (is-Star!2878 r!15766))))

(declare-fun b!1036615 () Bool)

(declare-fun res!465617 () Bool)

(declare-fun e!660204 () Bool)

(assert (=> b!1036615 (=> (not res!465617) (not e!660204))))

(assert (=> b!1036615 (= res!465617 call!71753)))

(assert (=> b!1036615 (= e!660202 e!660204)))

(declare-fun bm!71749 () Bool)

(declare-fun call!71754 () Bool)

(assert (=> bm!71749 (= call!71755 call!71754)))

(declare-fun b!1036616 () Bool)

(assert (=> b!1036616 (= e!660204 call!71755)))

(declare-fun b!1036617 () Bool)

(assert (=> b!1036617 (= e!660199 call!71754)))

(declare-fun bm!71750 () Bool)

(assert (=> bm!71750 (= call!71754 (validRegex!1347 (ite c!172081 (reg!3207 r!15766) (ite c!172082 (regTwo!6269 r!15766) (regTwo!6268 r!15766)))))))

(assert (= (and d!296349 (not res!465618)) b!1036614))

(assert (= (and b!1036614 c!172081) b!1036613))

(assert (= (and b!1036614 (not c!172081)) b!1036609))

(assert (= (and b!1036613 res!465616) b!1036617))

(assert (= (and b!1036609 c!172082) b!1036615))

(assert (= (and b!1036609 (not c!172082)) b!1036610))

(assert (= (and b!1036615 res!465617) b!1036616))

(assert (= (and b!1036610 (not res!465615)) b!1036611))

(assert (= (and b!1036611 res!465614) b!1036612))

(assert (= (or b!1036616 b!1036612) bm!71749))

(assert (= (or b!1036615 b!1036611) bm!71748))

(assert (= (or b!1036617 bm!71749) bm!71750))

(declare-fun m!1207127 () Bool)

(assert (=> bm!71748 m!1207127))

(declare-fun m!1207129 () Bool)

(assert (=> b!1036613 m!1207129))

(declare-fun m!1207131 () Bool)

(assert (=> bm!71750 m!1207131))

(assert (=> start!90172 d!296349))

(declare-fun b!1036622 () Bool)

(declare-fun e!660208 () Bool)

(declare-fun tp!313543 () Bool)

(assert (=> b!1036622 (= e!660208 (and tp_is_empty!5399 tp!313543))))

(assert (=> b!1036254 (= tp!313521 e!660208)))

(assert (= (and b!1036254 (is-Cons!10092 (t!101154 s!10566))) b!1036622))

(declare-fun b!1036635 () Bool)

(declare-fun e!660211 () Bool)

(declare-fun tp!313554 () Bool)

(assert (=> b!1036635 (= e!660211 tp!313554)))

(assert (=> b!1036255 (= tp!313520 e!660211)))

(declare-fun b!1036634 () Bool)

(declare-fun tp!313558 () Bool)

(declare-fun tp!313557 () Bool)

(assert (=> b!1036634 (= e!660211 (and tp!313558 tp!313557))))

(declare-fun b!1036636 () Bool)

(declare-fun tp!313556 () Bool)

(declare-fun tp!313555 () Bool)

(assert (=> b!1036636 (= e!660211 (and tp!313556 tp!313555))))

(declare-fun b!1036633 () Bool)

(assert (=> b!1036633 (= e!660211 tp_is_empty!5399)))

(assert (= (and b!1036255 (is-ElementMatch!2878 (regOne!6268 r!15766))) b!1036633))

(assert (= (and b!1036255 (is-Concat!4711 (regOne!6268 r!15766))) b!1036634))

(assert (= (and b!1036255 (is-Star!2878 (regOne!6268 r!15766))) b!1036635))

(assert (= (and b!1036255 (is-Union!2878 (regOne!6268 r!15766))) b!1036636))

(declare-fun b!1036639 () Bool)

(declare-fun e!660212 () Bool)

(declare-fun tp!313559 () Bool)

(assert (=> b!1036639 (= e!660212 tp!313559)))

(assert (=> b!1036255 (= tp!313519 e!660212)))

(declare-fun b!1036638 () Bool)

(declare-fun tp!313563 () Bool)

(declare-fun tp!313562 () Bool)

(assert (=> b!1036638 (= e!660212 (and tp!313563 tp!313562))))

(declare-fun b!1036640 () Bool)

(declare-fun tp!313561 () Bool)

(declare-fun tp!313560 () Bool)

(assert (=> b!1036640 (= e!660212 (and tp!313561 tp!313560))))

(declare-fun b!1036637 () Bool)

(assert (=> b!1036637 (= e!660212 tp_is_empty!5399)))

(assert (= (and b!1036255 (is-ElementMatch!2878 (regTwo!6268 r!15766))) b!1036637))

(assert (= (and b!1036255 (is-Concat!4711 (regTwo!6268 r!15766))) b!1036638))

(assert (= (and b!1036255 (is-Star!2878 (regTwo!6268 r!15766))) b!1036639))

(assert (= (and b!1036255 (is-Union!2878 (regTwo!6268 r!15766))) b!1036640))

(declare-fun b!1036643 () Bool)

(declare-fun e!660213 () Bool)

(declare-fun tp!313564 () Bool)

(assert (=> b!1036643 (= e!660213 tp!313564)))

(assert (=> b!1036256 (= tp!313517 e!660213)))

(declare-fun b!1036642 () Bool)

(declare-fun tp!313568 () Bool)

(declare-fun tp!313567 () Bool)

(assert (=> b!1036642 (= e!660213 (and tp!313568 tp!313567))))

(declare-fun b!1036644 () Bool)

(declare-fun tp!313566 () Bool)

(declare-fun tp!313565 () Bool)

(assert (=> b!1036644 (= e!660213 (and tp!313566 tp!313565))))

(declare-fun b!1036641 () Bool)

(assert (=> b!1036641 (= e!660213 tp_is_empty!5399)))

(assert (= (and b!1036256 (is-ElementMatch!2878 (reg!3207 r!15766))) b!1036641))

(assert (= (and b!1036256 (is-Concat!4711 (reg!3207 r!15766))) b!1036642))

(assert (= (and b!1036256 (is-Star!2878 (reg!3207 r!15766))) b!1036643))

(assert (= (and b!1036256 (is-Union!2878 (reg!3207 r!15766))) b!1036644))

(declare-fun b!1036647 () Bool)

(declare-fun e!660214 () Bool)

(declare-fun tp!313569 () Bool)

(assert (=> b!1036647 (= e!660214 tp!313569)))

(assert (=> b!1036258 (= tp!313522 e!660214)))

(declare-fun b!1036646 () Bool)

(declare-fun tp!313573 () Bool)

(declare-fun tp!313572 () Bool)

(assert (=> b!1036646 (= e!660214 (and tp!313573 tp!313572))))

(declare-fun b!1036648 () Bool)

(declare-fun tp!313571 () Bool)

(declare-fun tp!313570 () Bool)

(assert (=> b!1036648 (= e!660214 (and tp!313571 tp!313570))))

(declare-fun b!1036645 () Bool)

(assert (=> b!1036645 (= e!660214 tp_is_empty!5399)))

(assert (= (and b!1036258 (is-ElementMatch!2878 (regOne!6269 r!15766))) b!1036645))

(assert (= (and b!1036258 (is-Concat!4711 (regOne!6269 r!15766))) b!1036646))

(assert (= (and b!1036258 (is-Star!2878 (regOne!6269 r!15766))) b!1036647))

(assert (= (and b!1036258 (is-Union!2878 (regOne!6269 r!15766))) b!1036648))

(declare-fun b!1036651 () Bool)

(declare-fun e!660215 () Bool)

(declare-fun tp!313574 () Bool)

(assert (=> b!1036651 (= e!660215 tp!313574)))

(assert (=> b!1036258 (= tp!313518 e!660215)))

(declare-fun b!1036650 () Bool)

(declare-fun tp!313578 () Bool)

(declare-fun tp!313577 () Bool)

(assert (=> b!1036650 (= e!660215 (and tp!313578 tp!313577))))

(declare-fun b!1036652 () Bool)

(declare-fun tp!313576 () Bool)

(declare-fun tp!313575 () Bool)

(assert (=> b!1036652 (= e!660215 (and tp!313576 tp!313575))))

(declare-fun b!1036649 () Bool)

(assert (=> b!1036649 (= e!660215 tp_is_empty!5399)))

(assert (= (and b!1036258 (is-ElementMatch!2878 (regTwo!6269 r!15766))) b!1036649))

(assert (= (and b!1036258 (is-Concat!4711 (regTwo!6269 r!15766))) b!1036650))

(assert (= (and b!1036258 (is-Star!2878 (regTwo!6269 r!15766))) b!1036651))

(assert (= (and b!1036258 (is-Union!2878 (regTwo!6269 r!15766))) b!1036652))

(push 1)

(assert (not b!1036593))

(assert (not b!1036638))

(assert (not b!1036644))

(assert (not b!1036478))

(assert tp_is_empty!5399)

(assert (not d!296321))

(assert (not b!1036466))

(assert (not d!296319))

(assert (not b!1036342))

(assert (not b!1036636))

(assert (not b!1036470))

(assert (not b!1036643))

(assert (not b!1036542))

(assert (not b!1036384))

(assert (not bm!71743))

(assert (not b!1036635))

(assert (not b!1036540))

(assert (not d!296329))

(assert (not b!1036464))

(assert (not d!296309))

(assert (not b!1036477))

(assert (not bm!71747))

(assert (not b!1036467))

(assert (not d!296331))

(assert (not b!1036534))

(assert (not b!1036538))

(assert (not b!1036639))

(assert (not b!1036640))

(assert (not b!1036613))

(assert (not bm!71705))

(assert (not d!296313))

(assert (not d!296333))

(assert (not b!1036634))

(assert (not d!296347))

(assert (not d!296307))

(assert (not b!1036395))

(assert (not b!1036541))

(assert (not d!296325))

(assert (not b!1036350))

(assert (not bm!71746))

(assert (not b!1036622))

(assert (not b!1036604))

(assert (not bm!71710))

(assert (not b!1036650))

(assert (not b!1036349))

(assert (not d!296337))

(assert (not b!1036338))

(assert (not bm!71726))

(assert (not d!296327))

(assert (not bm!71727))

(assert (not b!1036461))

(assert (not b!1036647))

(assert (not b!1036648))

(assert (not b!1036536))

(assert (not b!1036652))

(assert (not bm!71748))

(assert (not b!1036339))

(assert (not b!1036646))

(assert (not b!1036651))

(assert (not bm!71691))

(assert (not b!1036471))

(assert (not b!1036607))

(assert (not bm!71750))

(assert (not b!1036642))

(assert (not b!1036343))

(assert (not bm!71745))

(assert (not bm!71725))

(assert (not bm!71704))

(assert (not bm!71709))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

