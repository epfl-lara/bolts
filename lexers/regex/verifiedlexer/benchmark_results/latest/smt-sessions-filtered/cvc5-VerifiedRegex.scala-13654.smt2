; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732346 () Bool)

(assert start!732346)

(declare-fun b!7586278 () Bool)

(assert (=> b!7586278 true))

(assert (=> b!7586278 true))

(declare-fun lambda!467109 () Int)

(declare-fun lambda!467108 () Int)

(assert (=> b!7586278 (not (= lambda!467109 lambda!467108))))

(assert (=> b!7586278 true))

(assert (=> b!7586278 true))

(declare-fun e!4514906 () Bool)

(declare-fun e!4514905 () Bool)

(assert (=> b!7586278 (= e!4514906 e!4514905)))

(declare-fun res!3039021 () Bool)

(assert (=> b!7586278 (=> res!3039021 e!4514905)))

(declare-datatypes ((C!40530 0))(
  ( (C!40531 (val!30705 Int)) )
))
(declare-datatypes ((Regex!20102 0))(
  ( (ElementMatch!20102 (c!1399235 C!40530)) (Concat!28947 (regOne!40716 Regex!20102) (regTwo!40716 Regex!20102)) (EmptyExpr!20102) (Star!20102 (reg!20431 Regex!20102)) (EmptyLang!20102) (Union!20102 (regOne!40717 Regex!20102) (regTwo!40717 Regex!20102)) )
))
(declare-fun r!22341 () Regex!20102)

(declare-datatypes ((List!72985 0))(
  ( (Nil!72861) (Cons!72861 (h!79309 C!40530) (t!387720 List!72985)) )
))
(declare-datatypes ((tuple2!68926 0))(
  ( (tuple2!68927 (_1!37766 List!72985) (_2!37766 List!72985)) )
))
(declare-fun lt!2653036 () tuple2!68926)

(declare-fun matchR!9694 (Regex!20102 List!72985) Bool)

(assert (=> b!7586278 (= res!3039021 (not (matchR!9694 (regOne!40716 r!22341) (_1!37766 lt!2653036))))))

(declare-datatypes ((Option!17307 0))(
  ( (None!17306) (Some!17306 (v!54441 tuple2!68926)) )
))
(declare-fun lt!2653033 () Option!17307)

(declare-fun get!25623 (Option!17307) tuple2!68926)

(assert (=> b!7586278 (= lt!2653036 (get!25623 lt!2653033))))

(declare-fun Exists!4334 (Int) Bool)

(assert (=> b!7586278 (= (Exists!4334 lambda!467108) (Exists!4334 lambda!467109))))

(declare-datatypes ((Unit!167160 0))(
  ( (Unit!167161) )
))
(declare-fun lt!2653035 () Unit!167160)

(declare-fun s!13436 () List!72985)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2623 (Regex!20102 Regex!20102 List!72985) Unit!167160)

(assert (=> b!7586278 (= lt!2653035 (lemmaExistCutMatchRandMatchRSpecEquivalent!2623 (regOne!40716 r!22341) (regTwo!40716 r!22341) s!13436))))

(declare-fun isDefined!13945 (Option!17307) Bool)

(assert (=> b!7586278 (= (isDefined!13945 lt!2653033) (Exists!4334 lambda!467108))))

(declare-fun findConcatSeparation!3359 (Regex!20102 Regex!20102 List!72985 List!72985 List!72985) Option!17307)

(assert (=> b!7586278 (= lt!2653033 (findConcatSeparation!3359 (regOne!40716 r!22341) (regTwo!40716 r!22341) Nil!72861 s!13436 s!13436))))

(declare-fun lt!2653034 () Unit!167160)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3117 (Regex!20102 Regex!20102 List!72985) Unit!167160)

(assert (=> b!7586278 (= lt!2653034 (lemmaFindConcatSeparationEquivalentToExists!3117 (regOne!40716 r!22341) (regTwo!40716 r!22341) s!13436))))

(declare-fun b!7586279 () Bool)

(declare-fun e!4514902 () Bool)

(declare-fun tp!2210935 () Bool)

(declare-fun tp!2210930 () Bool)

(assert (=> b!7586279 (= e!4514902 (and tp!2210935 tp!2210930))))

(declare-fun b!7586281 () Bool)

(declare-fun e!4514904 () Bool)

(declare-fun tp_is_empty!50559 () Bool)

(declare-fun tp!2210934 () Bool)

(assert (=> b!7586281 (= e!4514904 (and tp_is_empty!50559 tp!2210934))))

(declare-fun b!7586282 () Bool)

(assert (=> b!7586282 (= e!4514902 tp_is_empty!50559)))

(declare-fun b!7586283 () Bool)

(declare-fun e!4514903 () Bool)

(assert (=> b!7586283 (= e!4514903 (not e!4514906))))

(declare-fun res!3039025 () Bool)

(assert (=> b!7586283 (=> res!3039025 e!4514906)))

(declare-fun lt!2653038 () Bool)

(assert (=> b!7586283 (= res!3039025 (or (is-EmptyLang!20102 r!22341) (is-EmptyExpr!20102 r!22341) (is-ElementMatch!20102 r!22341) (is-Union!20102 r!22341) (is-Star!20102 r!22341) (not lt!2653038)))))

(declare-fun matchRSpec!4415 (Regex!20102 List!72985) Bool)

(assert (=> b!7586283 (= lt!2653038 (matchRSpec!4415 r!22341 s!13436))))

(assert (=> b!7586283 (= lt!2653038 (matchR!9694 r!22341 s!13436))))

(declare-fun lt!2653037 () Unit!167160)

(declare-fun mainMatchTheorem!4409 (Regex!20102 List!72985) Unit!167160)

(assert (=> b!7586283 (= lt!2653037 (mainMatchTheorem!4409 r!22341 s!13436))))

(declare-fun b!7586284 () Bool)

(declare-fun validRegex!10530 (Regex!20102) Bool)

(assert (=> b!7586284 (= e!4514905 (validRegex!10530 (regOne!40716 r!22341)))))

(declare-fun b!7586285 () Bool)

(declare-fun tp!2210931 () Bool)

(declare-fun tp!2210932 () Bool)

(assert (=> b!7586285 (= e!4514902 (and tp!2210931 tp!2210932))))

(declare-fun b!7586286 () Bool)

(declare-fun res!3039020 () Bool)

(assert (=> b!7586286 (=> res!3039020 e!4514905)))

(declare-fun lostCause!1878 (Regex!20102) Bool)

(assert (=> b!7586286 (= res!3039020 (not (lostCause!1878 (regOne!40716 r!22341))))))

(declare-fun b!7586287 () Bool)

(declare-fun tp!2210933 () Bool)

(assert (=> b!7586287 (= e!4514902 tp!2210933)))

(declare-fun res!3039024 () Bool)

(assert (=> start!732346 (=> (not res!3039024) (not e!4514903))))

(assert (=> start!732346 (= res!3039024 (validRegex!10530 r!22341))))

(assert (=> start!732346 e!4514903))

(assert (=> start!732346 e!4514902))

(assert (=> start!732346 e!4514904))

(declare-fun b!7586280 () Bool)

(declare-fun res!3039023 () Bool)

(assert (=> b!7586280 (=> (not res!3039023) (not e!4514903))))

(assert (=> b!7586280 (= res!3039023 (lostCause!1878 r!22341))))

(declare-fun b!7586288 () Bool)

(declare-fun res!3039022 () Bool)

(assert (=> b!7586288 (=> (not res!3039022) (not e!4514903))))

(declare-fun isEmpty!41541 (List!72985) Bool)

(assert (=> b!7586288 (= res!3039022 (not (isEmpty!41541 s!13436)))))

(declare-fun b!7586289 () Bool)

(declare-fun res!3039019 () Bool)

(assert (=> b!7586289 (=> res!3039019 e!4514905)))

(assert (=> b!7586289 (= res!3039019 (not (matchR!9694 (regTwo!40716 r!22341) (_2!37766 lt!2653036))))))

(assert (= (and start!732346 res!3039024) b!7586280))

(assert (= (and b!7586280 res!3039023) b!7586288))

(assert (= (and b!7586288 res!3039022) b!7586283))

(assert (= (and b!7586283 (not res!3039025)) b!7586278))

(assert (= (and b!7586278 (not res!3039021)) b!7586289))

(assert (= (and b!7586289 (not res!3039019)) b!7586286))

(assert (= (and b!7586286 (not res!3039020)) b!7586284))

(assert (= (and start!732346 (is-ElementMatch!20102 r!22341)) b!7586282))

(assert (= (and start!732346 (is-Concat!28947 r!22341)) b!7586285))

(assert (= (and start!732346 (is-Star!20102 r!22341)) b!7586287))

(assert (= (and start!732346 (is-Union!20102 r!22341)) b!7586279))

(assert (= (and start!732346 (is-Cons!72861 s!13436)) b!7586281))

(declare-fun m!8137566 () Bool)

(assert (=> b!7586283 m!8137566))

(declare-fun m!8137568 () Bool)

(assert (=> b!7586283 m!8137568))

(declare-fun m!8137570 () Bool)

(assert (=> b!7586283 m!8137570))

(declare-fun m!8137572 () Bool)

(assert (=> b!7586280 m!8137572))

(declare-fun m!8137574 () Bool)

(assert (=> b!7586284 m!8137574))

(declare-fun m!8137576 () Bool)

(assert (=> start!732346 m!8137576))

(declare-fun m!8137578 () Bool)

(assert (=> b!7586288 m!8137578))

(declare-fun m!8137580 () Bool)

(assert (=> b!7586286 m!8137580))

(declare-fun m!8137582 () Bool)

(assert (=> b!7586289 m!8137582))

(declare-fun m!8137584 () Bool)

(assert (=> b!7586278 m!8137584))

(declare-fun m!8137586 () Bool)

(assert (=> b!7586278 m!8137586))

(declare-fun m!8137588 () Bool)

(assert (=> b!7586278 m!8137588))

(assert (=> b!7586278 m!8137588))

(declare-fun m!8137590 () Bool)

(assert (=> b!7586278 m!8137590))

(declare-fun m!8137592 () Bool)

(assert (=> b!7586278 m!8137592))

(declare-fun m!8137594 () Bool)

(assert (=> b!7586278 m!8137594))

(declare-fun m!8137596 () Bool)

(assert (=> b!7586278 m!8137596))

(declare-fun m!8137598 () Bool)

(assert (=> b!7586278 m!8137598))

(push 1)

(assert (not b!7586281))

(assert tp_is_empty!50559)

(assert (not b!7586279))

(assert (not b!7586284))

(assert (not b!7586287))

(assert (not b!7586283))

(assert (not b!7586278))

(assert (not b!7586285))

(assert (not start!732346))

(assert (not b!7586288))

(assert (not b!7586286))

(assert (not b!7586280))

(assert (not b!7586289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!695704 () Bool)

(declare-fun call!695710 () Bool)

(declare-fun call!695711 () Bool)

(assert (=> bm!695704 (= call!695710 call!695711)))

(declare-fun b!7586364 () Bool)

(declare-fun res!3039073 () Bool)

(declare-fun e!4514948 () Bool)

(assert (=> b!7586364 (=> (not res!3039073) (not e!4514948))))

(declare-fun call!695709 () Bool)

(assert (=> b!7586364 (= res!3039073 call!695709)))

(declare-fun e!4514946 () Bool)

(assert (=> b!7586364 (= e!4514946 e!4514948)))

(declare-fun b!7586365 () Bool)

(declare-fun e!4514942 () Bool)

(declare-fun e!4514945 () Bool)

(assert (=> b!7586365 (= e!4514942 e!4514945)))

(declare-fun res!3039069 () Bool)

(declare-fun nullable!8793 (Regex!20102) Bool)

(assert (=> b!7586365 (= res!3039069 (not (nullable!8793 (reg!20431 r!22341))))))

(assert (=> b!7586365 (=> (not res!3039069) (not e!4514945))))

(declare-fun b!7586366 () Bool)

(assert (=> b!7586366 (= e!4514945 call!695711)))

(declare-fun bm!695706 () Bool)

(declare-fun c!1399242 () Bool)

(assert (=> bm!695706 (= call!695709 (validRegex!10530 (ite c!1399242 (regOne!40717 r!22341) (regTwo!40716 r!22341))))))

(declare-fun b!7586367 () Bool)

(declare-fun res!3039072 () Bool)

(declare-fun e!4514944 () Bool)

(assert (=> b!7586367 (=> res!3039072 e!4514944)))

(assert (=> b!7586367 (= res!3039072 (not (is-Concat!28947 r!22341)))))

(assert (=> b!7586367 (= e!4514946 e!4514944)))

(declare-fun b!7586368 () Bool)

(declare-fun e!4514943 () Bool)

(assert (=> b!7586368 (= e!4514944 e!4514943)))

(declare-fun res!3039070 () Bool)

(assert (=> b!7586368 (=> (not res!3039070) (not e!4514943))))

(assert (=> b!7586368 (= res!3039070 call!695710)))

(declare-fun b!7586369 () Bool)

(declare-fun e!4514947 () Bool)

(assert (=> b!7586369 (= e!4514947 e!4514942)))

(declare-fun c!1399241 () Bool)

(assert (=> b!7586369 (= c!1399241 (is-Star!20102 r!22341))))

(declare-fun b!7586370 () Bool)

(assert (=> b!7586370 (= e!4514942 e!4514946)))

(assert (=> b!7586370 (= c!1399242 (is-Union!20102 r!22341))))

(declare-fun b!7586371 () Bool)

(assert (=> b!7586371 (= e!4514948 call!695710)))

(declare-fun b!7586372 () Bool)

(assert (=> b!7586372 (= e!4514943 call!695709)))

(declare-fun bm!695705 () Bool)

(assert (=> bm!695705 (= call!695711 (validRegex!10530 (ite c!1399241 (reg!20431 r!22341) (ite c!1399242 (regTwo!40717 r!22341) (regOne!40716 r!22341)))))))

(declare-fun d!2318979 () Bool)

(declare-fun res!3039071 () Bool)

(assert (=> d!2318979 (=> res!3039071 e!4514947)))

(assert (=> d!2318979 (= res!3039071 (is-ElementMatch!20102 r!22341))))

(assert (=> d!2318979 (= (validRegex!10530 r!22341) e!4514947)))

(assert (= (and d!2318979 (not res!3039071)) b!7586369))

(assert (= (and b!7586369 c!1399241) b!7586365))

(assert (= (and b!7586369 (not c!1399241)) b!7586370))

(assert (= (and b!7586365 res!3039069) b!7586366))

(assert (= (and b!7586370 c!1399242) b!7586364))

(assert (= (and b!7586370 (not c!1399242)) b!7586367))

(assert (= (and b!7586364 res!3039073) b!7586371))

(assert (= (and b!7586367 (not res!3039072)) b!7586368))

(assert (= (and b!7586368 res!3039070) b!7586372))

(assert (= (or b!7586371 b!7586368) bm!695704))

(assert (= (or b!7586364 b!7586372) bm!695706))

(assert (= (or b!7586366 bm!695704) bm!695705))

(declare-fun m!8137634 () Bool)

(assert (=> b!7586365 m!8137634))

(declare-fun m!8137636 () Bool)

(assert (=> bm!695706 m!8137636))

(declare-fun m!8137638 () Bool)

(assert (=> bm!695705 m!8137638))

(assert (=> start!732346 d!2318979))

(declare-fun bm!695707 () Bool)

(declare-fun call!695713 () Bool)

(declare-fun call!695714 () Bool)

(assert (=> bm!695707 (= call!695713 call!695714)))

(declare-fun b!7586373 () Bool)

(declare-fun res!3039078 () Bool)

(declare-fun e!4514955 () Bool)

(assert (=> b!7586373 (=> (not res!3039078) (not e!4514955))))

(declare-fun call!695712 () Bool)

(assert (=> b!7586373 (= res!3039078 call!695712)))

(declare-fun e!4514953 () Bool)

(assert (=> b!7586373 (= e!4514953 e!4514955)))

(declare-fun b!7586374 () Bool)

(declare-fun e!4514949 () Bool)

(declare-fun e!4514952 () Bool)

(assert (=> b!7586374 (= e!4514949 e!4514952)))

(declare-fun res!3039074 () Bool)

(assert (=> b!7586374 (= res!3039074 (not (nullable!8793 (reg!20431 (regOne!40716 r!22341)))))))

(assert (=> b!7586374 (=> (not res!3039074) (not e!4514952))))

(declare-fun b!7586375 () Bool)

(assert (=> b!7586375 (= e!4514952 call!695714)))

(declare-fun bm!695709 () Bool)

(declare-fun c!1399244 () Bool)

(assert (=> bm!695709 (= call!695712 (validRegex!10530 (ite c!1399244 (regOne!40717 (regOne!40716 r!22341)) (regTwo!40716 (regOne!40716 r!22341)))))))

(declare-fun b!7586376 () Bool)

(declare-fun res!3039077 () Bool)

(declare-fun e!4514951 () Bool)

(assert (=> b!7586376 (=> res!3039077 e!4514951)))

(assert (=> b!7586376 (= res!3039077 (not (is-Concat!28947 (regOne!40716 r!22341))))))

(assert (=> b!7586376 (= e!4514953 e!4514951)))

(declare-fun b!7586377 () Bool)

(declare-fun e!4514950 () Bool)

(assert (=> b!7586377 (= e!4514951 e!4514950)))

(declare-fun res!3039075 () Bool)

(assert (=> b!7586377 (=> (not res!3039075) (not e!4514950))))

(assert (=> b!7586377 (= res!3039075 call!695713)))

(declare-fun b!7586378 () Bool)

(declare-fun e!4514954 () Bool)

(assert (=> b!7586378 (= e!4514954 e!4514949)))

(declare-fun c!1399243 () Bool)

(assert (=> b!7586378 (= c!1399243 (is-Star!20102 (regOne!40716 r!22341)))))

(declare-fun b!7586379 () Bool)

(assert (=> b!7586379 (= e!4514949 e!4514953)))

(assert (=> b!7586379 (= c!1399244 (is-Union!20102 (regOne!40716 r!22341)))))

(declare-fun b!7586380 () Bool)

(assert (=> b!7586380 (= e!4514955 call!695713)))

(declare-fun b!7586381 () Bool)

(assert (=> b!7586381 (= e!4514950 call!695712)))

(declare-fun bm!695708 () Bool)

(assert (=> bm!695708 (= call!695714 (validRegex!10530 (ite c!1399243 (reg!20431 (regOne!40716 r!22341)) (ite c!1399244 (regTwo!40717 (regOne!40716 r!22341)) (regOne!40716 (regOne!40716 r!22341))))))))

(declare-fun d!2318983 () Bool)

(declare-fun res!3039076 () Bool)

(assert (=> d!2318983 (=> res!3039076 e!4514954)))

(assert (=> d!2318983 (= res!3039076 (is-ElementMatch!20102 (regOne!40716 r!22341)))))

(assert (=> d!2318983 (= (validRegex!10530 (regOne!40716 r!22341)) e!4514954)))

(assert (= (and d!2318983 (not res!3039076)) b!7586378))

(assert (= (and b!7586378 c!1399243) b!7586374))

(assert (= (and b!7586378 (not c!1399243)) b!7586379))

(assert (= (and b!7586374 res!3039074) b!7586375))

(assert (= (and b!7586379 c!1399244) b!7586373))

(assert (= (and b!7586379 (not c!1399244)) b!7586376))

(assert (= (and b!7586373 res!3039078) b!7586380))

(assert (= (and b!7586376 (not res!3039077)) b!7586377))

(assert (= (and b!7586377 res!3039075) b!7586381))

(assert (= (or b!7586380 b!7586377) bm!695707))

(assert (= (or b!7586373 b!7586381) bm!695709))

(assert (= (or b!7586375 bm!695707) bm!695708))

(declare-fun m!8137640 () Bool)

(assert (=> b!7586374 m!8137640))

(declare-fun m!8137642 () Bool)

(assert (=> bm!695709 m!8137642))

(declare-fun m!8137644 () Bool)

(assert (=> bm!695708 m!8137644))

(assert (=> b!7586284 d!2318983))

(declare-fun bs!1941254 () Bool)

(declare-fun d!2318985 () Bool)

(assert (= bs!1941254 (and d!2318985 b!7586278)))

(declare-fun lambda!467122 () Int)

(assert (=> bs!1941254 (= lambda!467122 lambda!467108)))

(assert (=> bs!1941254 (not (= lambda!467122 lambda!467109))))

(assert (=> d!2318985 true))

(assert (=> d!2318985 true))

(assert (=> d!2318985 true))

(declare-fun lambda!467123 () Int)

(assert (=> bs!1941254 (not (= lambda!467123 lambda!467108))))

(assert (=> bs!1941254 (= lambda!467123 lambda!467109)))

(declare-fun bs!1941255 () Bool)

(assert (= bs!1941255 d!2318985))

(assert (=> bs!1941255 (not (= lambda!467123 lambda!467122))))

(assert (=> d!2318985 true))

(assert (=> d!2318985 true))

(assert (=> d!2318985 true))

(assert (=> d!2318985 (= (Exists!4334 lambda!467122) (Exists!4334 lambda!467123))))

(declare-fun lt!2653059 () Unit!167160)

(declare-fun choose!58647 (Regex!20102 Regex!20102 List!72985) Unit!167160)

(assert (=> d!2318985 (= lt!2653059 (choose!58647 (regOne!40716 r!22341) (regTwo!40716 r!22341) s!13436))))

(assert (=> d!2318985 (validRegex!10530 (regOne!40716 r!22341))))

(assert (=> d!2318985 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2623 (regOne!40716 r!22341) (regTwo!40716 r!22341) s!13436) lt!2653059)))

(declare-fun m!8137648 () Bool)

(assert (=> bs!1941255 m!8137648))

(declare-fun m!8137650 () Bool)

(assert (=> bs!1941255 m!8137650))

(declare-fun m!8137652 () Bool)

(assert (=> bs!1941255 m!8137652))

(assert (=> bs!1941255 m!8137574))

(assert (=> b!7586278 d!2318985))

(declare-fun bs!1941256 () Bool)

(declare-fun d!2318989 () Bool)

(assert (= bs!1941256 (and d!2318989 b!7586278)))

(declare-fun lambda!467128 () Int)

(assert (=> bs!1941256 (= lambda!467128 lambda!467108)))

(assert (=> bs!1941256 (not (= lambda!467128 lambda!467109))))

(declare-fun bs!1941257 () Bool)

(assert (= bs!1941257 (and d!2318989 d!2318985)))

(assert (=> bs!1941257 (= lambda!467128 lambda!467122)))

(assert (=> bs!1941257 (not (= lambda!467128 lambda!467123))))

(assert (=> d!2318989 true))

(assert (=> d!2318989 true))

(assert (=> d!2318989 true))

(assert (=> d!2318989 (= (isDefined!13945 (findConcatSeparation!3359 (regOne!40716 r!22341) (regTwo!40716 r!22341) Nil!72861 s!13436 s!13436)) (Exists!4334 lambda!467128))))

(declare-fun lt!2653064 () Unit!167160)

(declare-fun choose!58648 (Regex!20102 Regex!20102 List!72985) Unit!167160)

(assert (=> d!2318989 (= lt!2653064 (choose!58648 (regOne!40716 r!22341) (regTwo!40716 r!22341) s!13436))))

(assert (=> d!2318989 (validRegex!10530 (regOne!40716 r!22341))))

(assert (=> d!2318989 (= (lemmaFindConcatSeparationEquivalentToExists!3117 (regOne!40716 r!22341) (regTwo!40716 r!22341) s!13436) lt!2653064)))

(declare-fun bs!1941258 () Bool)

(assert (= bs!1941258 d!2318989))

(assert (=> bs!1941258 m!8137598))

(declare-fun m!8137654 () Bool)

(assert (=> bs!1941258 m!8137654))

(assert (=> bs!1941258 m!8137598))

(declare-fun m!8137656 () Bool)

(assert (=> bs!1941258 m!8137656))

(assert (=> bs!1941258 m!8137574))

(declare-fun m!8137658 () Bool)

(assert (=> bs!1941258 m!8137658))

(assert (=> b!7586278 d!2318989))

(declare-fun d!2318991 () Bool)

(assert (=> d!2318991 (= (get!25623 lt!2653033) (v!54441 lt!2653033))))

(assert (=> b!7586278 d!2318991))

(declare-fun b!7586416 () Bool)

(declare-fun e!4514976 () Bool)

(declare-fun lt!2653073 () Option!17307)

(declare-fun ++!17511 (List!72985 List!72985) List!72985)

(assert (=> b!7586416 (= e!4514976 (= (++!17511 (_1!37766 (get!25623 lt!2653073)) (_2!37766 (get!25623 lt!2653073))) s!13436))))

(declare-fun b!7586417 () Bool)

(declare-fun e!4514974 () Option!17307)

(assert (=> b!7586417 (= e!4514974 None!17306)))

(declare-fun b!7586418 () Bool)

(declare-fun lt!2653074 () Unit!167160)

(declare-fun lt!2653072 () Unit!167160)

(assert (=> b!7586418 (= lt!2653074 lt!2653072)))

(assert (=> b!7586418 (= (++!17511 (++!17511 Nil!72861 (Cons!72861 (h!79309 s!13436) Nil!72861)) (t!387720 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3198 (List!72985 C!40530 List!72985 List!72985) Unit!167160)

(assert (=> b!7586418 (= lt!2653072 (lemmaMoveElementToOtherListKeepsConcatEq!3198 Nil!72861 (h!79309 s!13436) (t!387720 s!13436) s!13436))))

(assert (=> b!7586418 (= e!4514974 (findConcatSeparation!3359 (regOne!40716 r!22341) (regTwo!40716 r!22341) (++!17511 Nil!72861 (Cons!72861 (h!79309 s!13436) Nil!72861)) (t!387720 s!13436) s!13436))))

(declare-fun b!7586419 () Bool)

(declare-fun e!4514978 () Bool)

(assert (=> b!7586419 (= e!4514978 (matchR!9694 (regTwo!40716 r!22341) s!13436))))

(declare-fun b!7586420 () Bool)

(declare-fun e!4514975 () Option!17307)

(assert (=> b!7586420 (= e!4514975 e!4514974)))

(declare-fun c!1399250 () Bool)

(assert (=> b!7586420 (= c!1399250 (is-Nil!72861 s!13436))))

(declare-fun b!7586421 () Bool)

(declare-fun e!4514977 () Bool)

(assert (=> b!7586421 (= e!4514977 (not (isDefined!13945 lt!2653073)))))

(declare-fun b!7586422 () Bool)

(declare-fun res!3039106 () Bool)

(assert (=> b!7586422 (=> (not res!3039106) (not e!4514976))))

(assert (=> b!7586422 (= res!3039106 (matchR!9694 (regTwo!40716 r!22341) (_2!37766 (get!25623 lt!2653073))))))

(declare-fun b!7586423 () Bool)

(declare-fun res!3039109 () Bool)

(assert (=> b!7586423 (=> (not res!3039109) (not e!4514976))))

(assert (=> b!7586423 (= res!3039109 (matchR!9694 (regOne!40716 r!22341) (_1!37766 (get!25623 lt!2653073))))))

(declare-fun b!7586424 () Bool)

(assert (=> b!7586424 (= e!4514975 (Some!17306 (tuple2!68927 Nil!72861 s!13436)))))

(declare-fun d!2318993 () Bool)

(assert (=> d!2318993 e!4514977))

(declare-fun res!3039108 () Bool)

(assert (=> d!2318993 (=> res!3039108 e!4514977)))

(assert (=> d!2318993 (= res!3039108 e!4514976)))

(declare-fun res!3039105 () Bool)

(assert (=> d!2318993 (=> (not res!3039105) (not e!4514976))))

(assert (=> d!2318993 (= res!3039105 (isDefined!13945 lt!2653073))))

(assert (=> d!2318993 (= lt!2653073 e!4514975)))

(declare-fun c!1399249 () Bool)

(assert (=> d!2318993 (= c!1399249 e!4514978)))

(declare-fun res!3039107 () Bool)

(assert (=> d!2318993 (=> (not res!3039107) (not e!4514978))))

(assert (=> d!2318993 (= res!3039107 (matchR!9694 (regOne!40716 r!22341) Nil!72861))))

(assert (=> d!2318993 (validRegex!10530 (regOne!40716 r!22341))))

(assert (=> d!2318993 (= (findConcatSeparation!3359 (regOne!40716 r!22341) (regTwo!40716 r!22341) Nil!72861 s!13436 s!13436) lt!2653073)))

(assert (= (and d!2318993 res!3039107) b!7586419))

(assert (= (and d!2318993 c!1399249) b!7586424))

(assert (= (and d!2318993 (not c!1399249)) b!7586420))

(assert (= (and b!7586420 c!1399250) b!7586417))

(assert (= (and b!7586420 (not c!1399250)) b!7586418))

(assert (= (and d!2318993 res!3039105) b!7586423))

(assert (= (and b!7586423 res!3039109) b!7586422))

(assert (= (and b!7586422 res!3039106) b!7586416))

(assert (= (and d!2318993 (not res!3039108)) b!7586421))

(declare-fun m!8137666 () Bool)

(assert (=> b!7586422 m!8137666))

(declare-fun m!8137668 () Bool)

(assert (=> b!7586422 m!8137668))

(declare-fun m!8137670 () Bool)

(assert (=> b!7586418 m!8137670))

(assert (=> b!7586418 m!8137670))

(declare-fun m!8137672 () Bool)

(assert (=> b!7586418 m!8137672))

(declare-fun m!8137674 () Bool)

(assert (=> b!7586418 m!8137674))

(assert (=> b!7586418 m!8137670))

(declare-fun m!8137676 () Bool)

(assert (=> b!7586418 m!8137676))

(declare-fun m!8137678 () Bool)

(assert (=> b!7586419 m!8137678))

(assert (=> b!7586416 m!8137666))

(declare-fun m!8137680 () Bool)

(assert (=> b!7586416 m!8137680))

(declare-fun m!8137682 () Bool)

(assert (=> b!7586421 m!8137682))

(assert (=> d!2318993 m!8137682))

(declare-fun m!8137684 () Bool)

(assert (=> d!2318993 m!8137684))

(assert (=> d!2318993 m!8137574))

(assert (=> b!7586423 m!8137666))

(declare-fun m!8137686 () Bool)

(assert (=> b!7586423 m!8137686))

(assert (=> b!7586278 d!2318993))

(declare-fun d!2318999 () Bool)

(declare-fun choose!58649 (Int) Bool)

(assert (=> d!2318999 (= (Exists!4334 lambda!467108) (choose!58649 lambda!467108))))

(declare-fun bs!1941261 () Bool)

(assert (= bs!1941261 d!2318999))

(declare-fun m!8137688 () Bool)

(assert (=> bs!1941261 m!8137688))

(assert (=> b!7586278 d!2318999))

(declare-fun d!2319001 () Bool)

(assert (=> d!2319001 (= (Exists!4334 lambda!467109) (choose!58649 lambda!467109))))

(declare-fun bs!1941262 () Bool)

(assert (= bs!1941262 d!2319001))

(declare-fun m!8137690 () Bool)

(assert (=> bs!1941262 m!8137690))

(assert (=> b!7586278 d!2319001))

(declare-fun b!7586463 () Bool)

(declare-fun e!4515002 () Bool)

(declare-fun lt!2653083 () Bool)

(assert (=> b!7586463 (= e!4515002 (not lt!2653083))))

(declare-fun b!7586464 () Bool)

(declare-fun e!4515001 () Bool)

(assert (=> b!7586464 (= e!4515001 e!4515002)))

(declare-fun c!1399263 () Bool)

(assert (=> b!7586464 (= c!1399263 (is-EmptyLang!20102 (regOne!40716 r!22341)))))

(declare-fun b!7586465 () Bool)

(declare-fun res!3039135 () Bool)

(declare-fun e!4515003 () Bool)

(assert (=> b!7586465 (=> res!3039135 e!4515003)))

(declare-fun e!4515004 () Bool)

(assert (=> b!7586465 (= res!3039135 e!4515004)))

(declare-fun res!3039128 () Bool)

(assert (=> b!7586465 (=> (not res!3039128) (not e!4515004))))

(assert (=> b!7586465 (= res!3039128 lt!2653083)))

(declare-fun b!7586466 () Bool)

(declare-fun e!4515005 () Bool)

(assert (=> b!7586466 (= e!4515005 (nullable!8793 (regOne!40716 r!22341)))))

(declare-fun b!7586467 () Bool)

(declare-fun e!4514999 () Bool)

(assert (=> b!7586467 (= e!4515003 e!4514999)))

(declare-fun res!3039129 () Bool)

(assert (=> b!7586467 (=> (not res!3039129) (not e!4514999))))

(assert (=> b!7586467 (= res!3039129 (not lt!2653083))))

(declare-fun d!2319003 () Bool)

(assert (=> d!2319003 e!4515001))

(declare-fun c!1399261 () Bool)

(assert (=> d!2319003 (= c!1399261 (is-EmptyExpr!20102 (regOne!40716 r!22341)))))

(assert (=> d!2319003 (= lt!2653083 e!4515005)))

(declare-fun c!1399262 () Bool)

(assert (=> d!2319003 (= c!1399262 (isEmpty!41541 (_1!37766 lt!2653036)))))

(assert (=> d!2319003 (validRegex!10530 (regOne!40716 r!22341))))

(assert (=> d!2319003 (= (matchR!9694 (regOne!40716 r!22341) (_1!37766 lt!2653036)) lt!2653083)))

(declare-fun b!7586468 () Bool)

(declare-fun res!3039131 () Bool)

(assert (=> b!7586468 (=> (not res!3039131) (not e!4515004))))

(declare-fun tail!15160 (List!72985) List!72985)

(assert (=> b!7586468 (= res!3039131 (isEmpty!41541 (tail!15160 (_1!37766 lt!2653036))))))

(declare-fun b!7586469 () Bool)

(declare-fun e!4515000 () Bool)

(assert (=> b!7586469 (= e!4514999 e!4515000)))

(declare-fun res!3039132 () Bool)

(assert (=> b!7586469 (=> res!3039132 e!4515000)))

(declare-fun call!695717 () Bool)

(assert (=> b!7586469 (= res!3039132 call!695717)))

(declare-fun b!7586470 () Bool)

(declare-fun derivativeStep!5820 (Regex!20102 C!40530) Regex!20102)

(declare-fun head!15620 (List!72985) C!40530)

(assert (=> b!7586470 (= e!4515005 (matchR!9694 (derivativeStep!5820 (regOne!40716 r!22341) (head!15620 (_1!37766 lt!2653036))) (tail!15160 (_1!37766 lt!2653036))))))

(declare-fun b!7586471 () Bool)

(declare-fun res!3039130 () Bool)

(assert (=> b!7586471 (=> (not res!3039130) (not e!4515004))))

(assert (=> b!7586471 (= res!3039130 (not call!695717))))

(declare-fun b!7586472 () Bool)

(declare-fun res!3039133 () Bool)

(assert (=> b!7586472 (=> res!3039133 e!4515000)))

(assert (=> b!7586472 (= res!3039133 (not (isEmpty!41541 (tail!15160 (_1!37766 lt!2653036)))))))

(declare-fun b!7586473 () Bool)

(assert (=> b!7586473 (= e!4515000 (not (= (head!15620 (_1!37766 lt!2653036)) (c!1399235 (regOne!40716 r!22341)))))))

(declare-fun b!7586474 () Bool)

(declare-fun res!3039134 () Bool)

(assert (=> b!7586474 (=> res!3039134 e!4515003)))

(assert (=> b!7586474 (= res!3039134 (not (is-ElementMatch!20102 (regOne!40716 r!22341))))))

(assert (=> b!7586474 (= e!4515002 e!4515003)))

(declare-fun bm!695712 () Bool)

(assert (=> bm!695712 (= call!695717 (isEmpty!41541 (_1!37766 lt!2653036)))))

(declare-fun b!7586475 () Bool)

(assert (=> b!7586475 (= e!4515004 (= (head!15620 (_1!37766 lt!2653036)) (c!1399235 (regOne!40716 r!22341))))))

(declare-fun b!7586476 () Bool)

(assert (=> b!7586476 (= e!4515001 (= lt!2653083 call!695717))))

(assert (= (and d!2319003 c!1399262) b!7586466))

(assert (= (and d!2319003 (not c!1399262)) b!7586470))

(assert (= (and d!2319003 c!1399261) b!7586476))

(assert (= (and d!2319003 (not c!1399261)) b!7586464))

(assert (= (and b!7586464 c!1399263) b!7586463))

(assert (= (and b!7586464 (not c!1399263)) b!7586474))

(assert (= (and b!7586474 (not res!3039134)) b!7586465))

(assert (= (and b!7586465 res!3039128) b!7586471))

(assert (= (and b!7586471 res!3039130) b!7586468))

(assert (= (and b!7586468 res!3039131) b!7586475))

(assert (= (and b!7586465 (not res!3039135)) b!7586467))

(assert (= (and b!7586467 res!3039129) b!7586469))

(assert (= (and b!7586469 (not res!3039132)) b!7586472))

(assert (= (and b!7586472 (not res!3039133)) b!7586473))

(assert (= (or b!7586476 b!7586469 b!7586471) bm!695712))

(declare-fun m!8137692 () Bool)

(assert (=> b!7586466 m!8137692))

(declare-fun m!8137694 () Bool)

(assert (=> b!7586472 m!8137694))

(assert (=> b!7586472 m!8137694))

(declare-fun m!8137696 () Bool)

(assert (=> b!7586472 m!8137696))

(assert (=> b!7586468 m!8137694))

(assert (=> b!7586468 m!8137694))

(assert (=> b!7586468 m!8137696))

(declare-fun m!8137698 () Bool)

(assert (=> b!7586473 m!8137698))

(assert (=> b!7586475 m!8137698))

(declare-fun m!8137700 () Bool)

(assert (=> bm!695712 m!8137700))

(assert (=> d!2319003 m!8137700))

(assert (=> d!2319003 m!8137574))

(assert (=> b!7586470 m!8137698))

(assert (=> b!7586470 m!8137698))

(declare-fun m!8137702 () Bool)

(assert (=> b!7586470 m!8137702))

(assert (=> b!7586470 m!8137694))

(assert (=> b!7586470 m!8137702))

(assert (=> b!7586470 m!8137694))

(declare-fun m!8137704 () Bool)

(assert (=> b!7586470 m!8137704))

(assert (=> b!7586278 d!2319003))

(declare-fun d!2319005 () Bool)

(declare-fun isEmpty!41543 (Option!17307) Bool)

(assert (=> d!2319005 (= (isDefined!13945 lt!2653033) (not (isEmpty!41543 lt!2653033)))))

(declare-fun bs!1941263 () Bool)

(assert (= bs!1941263 d!2319005))

(declare-fun m!8137706 () Bool)

(assert (=> bs!1941263 m!8137706))

(assert (=> b!7586278 d!2319005))

(declare-fun b!7586485 () Bool)

(declare-fun e!4515013 () Bool)

(declare-fun lt!2653084 () Bool)

(assert (=> b!7586485 (= e!4515013 (not lt!2653084))))

(declare-fun b!7586486 () Bool)

(declare-fun e!4515012 () Bool)

(assert (=> b!7586486 (= e!4515012 e!4515013)))

(declare-fun c!1399266 () Bool)

(assert (=> b!7586486 (= c!1399266 (is-EmptyLang!20102 (regTwo!40716 r!22341)))))

(declare-fun b!7586487 () Bool)

(declare-fun res!3039151 () Bool)

(declare-fun e!4515014 () Bool)

(assert (=> b!7586487 (=> res!3039151 e!4515014)))

(declare-fun e!4515015 () Bool)

(assert (=> b!7586487 (= res!3039151 e!4515015)))

(declare-fun res!3039144 () Bool)

(assert (=> b!7586487 (=> (not res!3039144) (not e!4515015))))

(assert (=> b!7586487 (= res!3039144 lt!2653084)))

(declare-fun b!7586488 () Bool)

(declare-fun e!4515016 () Bool)

(assert (=> b!7586488 (= e!4515016 (nullable!8793 (regTwo!40716 r!22341)))))

(declare-fun b!7586489 () Bool)

(declare-fun e!4515010 () Bool)

(assert (=> b!7586489 (= e!4515014 e!4515010)))

(declare-fun res!3039145 () Bool)

(assert (=> b!7586489 (=> (not res!3039145) (not e!4515010))))

(assert (=> b!7586489 (= res!3039145 (not lt!2653084))))

(declare-fun d!2319007 () Bool)

(assert (=> d!2319007 e!4515012))

(declare-fun c!1399264 () Bool)

(assert (=> d!2319007 (= c!1399264 (is-EmptyExpr!20102 (regTwo!40716 r!22341)))))

(assert (=> d!2319007 (= lt!2653084 e!4515016)))

(declare-fun c!1399265 () Bool)

(assert (=> d!2319007 (= c!1399265 (isEmpty!41541 (_2!37766 lt!2653036)))))

(assert (=> d!2319007 (validRegex!10530 (regTwo!40716 r!22341))))

(assert (=> d!2319007 (= (matchR!9694 (regTwo!40716 r!22341) (_2!37766 lt!2653036)) lt!2653084)))

(declare-fun b!7586490 () Bool)

(declare-fun res!3039147 () Bool)

(assert (=> b!7586490 (=> (not res!3039147) (not e!4515015))))

(assert (=> b!7586490 (= res!3039147 (isEmpty!41541 (tail!15160 (_2!37766 lt!2653036))))))

(declare-fun b!7586491 () Bool)

(declare-fun e!4515011 () Bool)

(assert (=> b!7586491 (= e!4515010 e!4515011)))

(declare-fun res!3039148 () Bool)

(assert (=> b!7586491 (=> res!3039148 e!4515011)))

(declare-fun call!695718 () Bool)

(assert (=> b!7586491 (= res!3039148 call!695718)))

(declare-fun b!7586492 () Bool)

(assert (=> b!7586492 (= e!4515016 (matchR!9694 (derivativeStep!5820 (regTwo!40716 r!22341) (head!15620 (_2!37766 lt!2653036))) (tail!15160 (_2!37766 lt!2653036))))))

(declare-fun b!7586493 () Bool)

(declare-fun res!3039146 () Bool)

(assert (=> b!7586493 (=> (not res!3039146) (not e!4515015))))

(assert (=> b!7586493 (= res!3039146 (not call!695718))))

(declare-fun b!7586494 () Bool)

(declare-fun res!3039149 () Bool)

(assert (=> b!7586494 (=> res!3039149 e!4515011)))

(assert (=> b!7586494 (= res!3039149 (not (isEmpty!41541 (tail!15160 (_2!37766 lt!2653036)))))))

(declare-fun b!7586495 () Bool)

(assert (=> b!7586495 (= e!4515011 (not (= (head!15620 (_2!37766 lt!2653036)) (c!1399235 (regTwo!40716 r!22341)))))))

(declare-fun b!7586496 () Bool)

(declare-fun res!3039150 () Bool)

(assert (=> b!7586496 (=> res!3039150 e!4515014)))

(assert (=> b!7586496 (= res!3039150 (not (is-ElementMatch!20102 (regTwo!40716 r!22341))))))

(assert (=> b!7586496 (= e!4515013 e!4515014)))

(declare-fun bm!695713 () Bool)

(assert (=> bm!695713 (= call!695718 (isEmpty!41541 (_2!37766 lt!2653036)))))

(declare-fun b!7586497 () Bool)

(assert (=> b!7586497 (= e!4515015 (= (head!15620 (_2!37766 lt!2653036)) (c!1399235 (regTwo!40716 r!22341))))))

(declare-fun b!7586498 () Bool)

(assert (=> b!7586498 (= e!4515012 (= lt!2653084 call!695718))))

(assert (= (and d!2319007 c!1399265) b!7586488))

(assert (= (and d!2319007 (not c!1399265)) b!7586492))

(assert (= (and d!2319007 c!1399264) b!7586498))

(assert (= (and d!2319007 (not c!1399264)) b!7586486))

(assert (= (and b!7586486 c!1399266) b!7586485))

(assert (= (and b!7586486 (not c!1399266)) b!7586496))

(assert (= (and b!7586496 (not res!3039150)) b!7586487))

(assert (= (and b!7586487 res!3039144) b!7586493))

(assert (= (and b!7586493 res!3039146) b!7586490))

(assert (= (and b!7586490 res!3039147) b!7586497))

(assert (= (and b!7586487 (not res!3039151)) b!7586489))

(assert (= (and b!7586489 res!3039145) b!7586491))

(assert (= (and b!7586491 (not res!3039148)) b!7586494))

(assert (= (and b!7586494 (not res!3039149)) b!7586495))

(assert (= (or b!7586498 b!7586491 b!7586493) bm!695713))

(declare-fun m!8137708 () Bool)

(assert (=> b!7586488 m!8137708))

(declare-fun m!8137710 () Bool)

(assert (=> b!7586494 m!8137710))

(assert (=> b!7586494 m!8137710))

(declare-fun m!8137712 () Bool)

(assert (=> b!7586494 m!8137712))

(assert (=> b!7586490 m!8137710))

(assert (=> b!7586490 m!8137710))

(assert (=> b!7586490 m!8137712))

(declare-fun m!8137714 () Bool)

(assert (=> b!7586495 m!8137714))

(assert (=> b!7586497 m!8137714))

(declare-fun m!8137716 () Bool)

(assert (=> bm!695713 m!8137716))

(assert (=> d!2319007 m!8137716))

(declare-fun m!8137718 () Bool)

(assert (=> d!2319007 m!8137718))

(assert (=> b!7586492 m!8137714))

(assert (=> b!7586492 m!8137714))

(declare-fun m!8137720 () Bool)

(assert (=> b!7586492 m!8137720))

(assert (=> b!7586492 m!8137710))

(assert (=> b!7586492 m!8137720))

(assert (=> b!7586492 m!8137710))

(declare-fun m!8137722 () Bool)

(assert (=> b!7586492 m!8137722))

(assert (=> b!7586289 d!2319007))

(declare-fun d!2319009 () Bool)

(declare-fun lostCauseFct!528 (Regex!20102) Bool)

(assert (=> d!2319009 (= (lostCause!1878 r!22341) (lostCauseFct!528 r!22341))))

(declare-fun bs!1941264 () Bool)

(assert (= bs!1941264 d!2319009))

(declare-fun m!8137724 () Bool)

(assert (=> bs!1941264 m!8137724))

(assert (=> b!7586280 d!2319009))

(declare-fun d!2319011 () Bool)

(assert (=> d!2319011 (= (lostCause!1878 (regOne!40716 r!22341)) (lostCauseFct!528 (regOne!40716 r!22341)))))

(declare-fun bs!1941265 () Bool)

(assert (= bs!1941265 d!2319011))

(declare-fun m!8137726 () Bool)

(assert (=> bs!1941265 m!8137726))

(assert (=> b!7586286 d!2319011))

(declare-fun d!2319013 () Bool)

(assert (=> d!2319013 (= (isEmpty!41541 s!13436) (is-Nil!72861 s!13436))))

(assert (=> b!7586288 d!2319013))

(declare-fun bs!1941268 () Bool)

(declare-fun b!7586540 () Bool)

(assert (= bs!1941268 (and b!7586540 b!7586278)))

(declare-fun lambda!467134 () Int)

(assert (=> bs!1941268 (not (= lambda!467134 lambda!467108))))

(assert (=> bs!1941268 (not (= lambda!467134 lambda!467109))))

(declare-fun bs!1941269 () Bool)

(assert (= bs!1941269 (and b!7586540 d!2318989)))

(assert (=> bs!1941269 (not (= lambda!467134 lambda!467128))))

(declare-fun bs!1941270 () Bool)

(assert (= bs!1941270 (and b!7586540 d!2318985)))

(assert (=> bs!1941270 (not (= lambda!467134 lambda!467123))))

(assert (=> bs!1941270 (not (= lambda!467134 lambda!467122))))

(assert (=> b!7586540 true))

(assert (=> b!7586540 true))

(declare-fun bs!1941271 () Bool)

(declare-fun b!7586541 () Bool)

(assert (= bs!1941271 (and b!7586541 b!7586278)))

(declare-fun lambda!467135 () Int)

(assert (=> bs!1941271 (not (= lambda!467135 lambda!467108))))

(declare-fun bs!1941272 () Bool)

(assert (= bs!1941272 (and b!7586541 b!7586540)))

(assert (=> bs!1941272 (not (= lambda!467135 lambda!467134))))

(assert (=> bs!1941271 (= lambda!467135 lambda!467109)))

(declare-fun bs!1941273 () Bool)

(assert (= bs!1941273 (and b!7586541 d!2318989)))

(assert (=> bs!1941273 (not (= lambda!467135 lambda!467128))))

(declare-fun bs!1941274 () Bool)

(assert (= bs!1941274 (and b!7586541 d!2318985)))

(assert (=> bs!1941274 (= lambda!467135 lambda!467123)))

(assert (=> bs!1941274 (not (= lambda!467135 lambda!467122))))

(assert (=> b!7586541 true))

(assert (=> b!7586541 true))

(declare-fun bm!695718 () Bool)

(declare-fun call!695723 () Bool)

(assert (=> bm!695718 (= call!695723 (isEmpty!41541 s!13436))))

(declare-fun e!4515045 () Bool)

(declare-fun call!695724 () Bool)

(assert (=> b!7586540 (= e!4515045 call!695724)))

(declare-fun e!4515042 () Bool)

(assert (=> b!7586541 (= e!4515042 call!695724)))

(declare-fun c!1399278 () Bool)

(declare-fun bm!695719 () Bool)

(assert (=> bm!695719 (= call!695724 (Exists!4334 (ite c!1399278 lambda!467134 lambda!467135)))))

(declare-fun b!7586542 () Bool)

(declare-fun c!1399279 () Bool)

(assert (=> b!7586542 (= c!1399279 (is-Union!20102 r!22341))))

(declare-fun e!4515040 () Bool)

(declare-fun e!4515043 () Bool)

(assert (=> b!7586542 (= e!4515040 e!4515043)))

(declare-fun b!7586543 () Bool)

(declare-fun c!1399280 () Bool)

(assert (=> b!7586543 (= c!1399280 (is-ElementMatch!20102 r!22341))))

(declare-fun e!4515041 () Bool)

(assert (=> b!7586543 (= e!4515041 e!4515040)))

(declare-fun b!7586544 () Bool)

(declare-fun res!3039173 () Bool)

(assert (=> b!7586544 (=> res!3039173 e!4515045)))

(assert (=> b!7586544 (= res!3039173 call!695723)))

(assert (=> b!7586544 (= e!4515042 e!4515045)))

(declare-fun d!2319015 () Bool)

(declare-fun c!1399277 () Bool)

(assert (=> d!2319015 (= c!1399277 (is-EmptyExpr!20102 r!22341))))

(declare-fun e!4515044 () Bool)

(assert (=> d!2319015 (= (matchRSpec!4415 r!22341 s!13436) e!4515044)))

(declare-fun b!7586545 () Bool)

(assert (=> b!7586545 (= e!4515044 call!695723)))

(declare-fun b!7586546 () Bool)

(assert (=> b!7586546 (= e!4515040 (= s!13436 (Cons!72861 (c!1399235 r!22341) Nil!72861)))))

(declare-fun b!7586547 () Bool)

(assert (=> b!7586547 (= e!4515043 e!4515042)))

(assert (=> b!7586547 (= c!1399278 (is-Star!20102 r!22341))))

(declare-fun b!7586548 () Bool)

(declare-fun e!4515046 () Bool)

(assert (=> b!7586548 (= e!4515043 e!4515046)))

(declare-fun res!3039174 () Bool)

(assert (=> b!7586548 (= res!3039174 (matchRSpec!4415 (regOne!40717 r!22341) s!13436))))

(assert (=> b!7586548 (=> res!3039174 e!4515046)))

(declare-fun b!7586549 () Bool)

(assert (=> b!7586549 (= e!4515046 (matchRSpec!4415 (regTwo!40717 r!22341) s!13436))))

(declare-fun b!7586550 () Bool)

(assert (=> b!7586550 (= e!4515044 e!4515041)))

(declare-fun res!3039175 () Bool)

(assert (=> b!7586550 (= res!3039175 (not (is-EmptyLang!20102 r!22341)))))

(assert (=> b!7586550 (=> (not res!3039175) (not e!4515041))))

(assert (= (and d!2319015 c!1399277) b!7586545))

(assert (= (and d!2319015 (not c!1399277)) b!7586550))

(assert (= (and b!7586550 res!3039175) b!7586543))

(assert (= (and b!7586543 c!1399280) b!7586546))

(assert (= (and b!7586543 (not c!1399280)) b!7586542))

(assert (= (and b!7586542 c!1399279) b!7586548))

(assert (= (and b!7586542 (not c!1399279)) b!7586547))

(assert (= (and b!7586548 (not res!3039174)) b!7586549))

(assert (= (and b!7586547 c!1399278) b!7586544))

(assert (= (and b!7586547 (not c!1399278)) b!7586541))

(assert (= (and b!7586544 (not res!3039173)) b!7586540))

(assert (= (or b!7586540 b!7586541) bm!695719))

(assert (= (or b!7586545 b!7586544) bm!695718))

(assert (=> bm!695718 m!8137578))

(declare-fun m!8137754 () Bool)

(assert (=> bm!695719 m!8137754))

(declare-fun m!8137756 () Bool)

(assert (=> b!7586548 m!8137756))

(declare-fun m!8137758 () Bool)

(assert (=> b!7586549 m!8137758))

(assert (=> b!7586283 d!2319015))

(declare-fun b!7586551 () Bool)

(declare-fun e!4515050 () Bool)

(declare-fun lt!2653088 () Bool)

(assert (=> b!7586551 (= e!4515050 (not lt!2653088))))

(declare-fun b!7586552 () Bool)

(declare-fun e!4515049 () Bool)

(assert (=> b!7586552 (= e!4515049 e!4515050)))

(declare-fun c!1399283 () Bool)

(assert (=> b!7586552 (= c!1399283 (is-EmptyLang!20102 r!22341))))

(declare-fun b!7586553 () Bool)

(declare-fun res!3039183 () Bool)

(declare-fun e!4515051 () Bool)

(assert (=> b!7586553 (=> res!3039183 e!4515051)))

(declare-fun e!4515052 () Bool)

(assert (=> b!7586553 (= res!3039183 e!4515052)))

(declare-fun res!3039176 () Bool)

(assert (=> b!7586553 (=> (not res!3039176) (not e!4515052))))

(assert (=> b!7586553 (= res!3039176 lt!2653088)))

(declare-fun b!7586554 () Bool)

(declare-fun e!4515053 () Bool)

(assert (=> b!7586554 (= e!4515053 (nullable!8793 r!22341))))

(declare-fun b!7586555 () Bool)

(declare-fun e!4515047 () Bool)

(assert (=> b!7586555 (= e!4515051 e!4515047)))

(declare-fun res!3039177 () Bool)

(assert (=> b!7586555 (=> (not res!3039177) (not e!4515047))))

(assert (=> b!7586555 (= res!3039177 (not lt!2653088))))

(declare-fun d!2319023 () Bool)

(assert (=> d!2319023 e!4515049))

(declare-fun c!1399281 () Bool)

(assert (=> d!2319023 (= c!1399281 (is-EmptyExpr!20102 r!22341))))

(assert (=> d!2319023 (= lt!2653088 e!4515053)))

(declare-fun c!1399282 () Bool)

(assert (=> d!2319023 (= c!1399282 (isEmpty!41541 s!13436))))

(assert (=> d!2319023 (validRegex!10530 r!22341)))

(assert (=> d!2319023 (= (matchR!9694 r!22341 s!13436) lt!2653088)))

(declare-fun b!7586556 () Bool)

(declare-fun res!3039179 () Bool)

(assert (=> b!7586556 (=> (not res!3039179) (not e!4515052))))

(assert (=> b!7586556 (= res!3039179 (isEmpty!41541 (tail!15160 s!13436)))))

(declare-fun b!7586557 () Bool)

(declare-fun e!4515048 () Bool)

(assert (=> b!7586557 (= e!4515047 e!4515048)))

(declare-fun res!3039180 () Bool)

(assert (=> b!7586557 (=> res!3039180 e!4515048)))

(declare-fun call!695725 () Bool)

(assert (=> b!7586557 (= res!3039180 call!695725)))

(declare-fun b!7586558 () Bool)

(assert (=> b!7586558 (= e!4515053 (matchR!9694 (derivativeStep!5820 r!22341 (head!15620 s!13436)) (tail!15160 s!13436)))))

(declare-fun b!7586559 () Bool)

(declare-fun res!3039178 () Bool)

(assert (=> b!7586559 (=> (not res!3039178) (not e!4515052))))

(assert (=> b!7586559 (= res!3039178 (not call!695725))))

(declare-fun b!7586560 () Bool)

(declare-fun res!3039181 () Bool)

(assert (=> b!7586560 (=> res!3039181 e!4515048)))

(assert (=> b!7586560 (= res!3039181 (not (isEmpty!41541 (tail!15160 s!13436))))))

(declare-fun b!7586561 () Bool)

(assert (=> b!7586561 (= e!4515048 (not (= (head!15620 s!13436) (c!1399235 r!22341))))))

(declare-fun b!7586562 () Bool)

(declare-fun res!3039182 () Bool)

(assert (=> b!7586562 (=> res!3039182 e!4515051)))

(assert (=> b!7586562 (= res!3039182 (not (is-ElementMatch!20102 r!22341)))))

(assert (=> b!7586562 (= e!4515050 e!4515051)))

(declare-fun bm!695720 () Bool)

(assert (=> bm!695720 (= call!695725 (isEmpty!41541 s!13436))))

(declare-fun b!7586563 () Bool)

(assert (=> b!7586563 (= e!4515052 (= (head!15620 s!13436) (c!1399235 r!22341)))))

(declare-fun b!7586564 () Bool)

(assert (=> b!7586564 (= e!4515049 (= lt!2653088 call!695725))))

(assert (= (and d!2319023 c!1399282) b!7586554))

(assert (= (and d!2319023 (not c!1399282)) b!7586558))

(assert (= (and d!2319023 c!1399281) b!7586564))

(assert (= (and d!2319023 (not c!1399281)) b!7586552))

(assert (= (and b!7586552 c!1399283) b!7586551))

(assert (= (and b!7586552 (not c!1399283)) b!7586562))

(assert (= (and b!7586562 (not res!3039182)) b!7586553))

(assert (= (and b!7586553 res!3039176) b!7586559))

(assert (= (and b!7586559 res!3039178) b!7586556))

(assert (= (and b!7586556 res!3039179) b!7586563))

(assert (= (and b!7586553 (not res!3039183)) b!7586555))

(assert (= (and b!7586555 res!3039177) b!7586557))

(assert (= (and b!7586557 (not res!3039180)) b!7586560))

(assert (= (and b!7586560 (not res!3039181)) b!7586561))

(assert (= (or b!7586564 b!7586557 b!7586559) bm!695720))

(declare-fun m!8137760 () Bool)

(assert (=> b!7586554 m!8137760))

(declare-fun m!8137762 () Bool)

(assert (=> b!7586560 m!8137762))

(assert (=> b!7586560 m!8137762))

(declare-fun m!8137764 () Bool)

(assert (=> b!7586560 m!8137764))

(assert (=> b!7586556 m!8137762))

(assert (=> b!7586556 m!8137762))

(assert (=> b!7586556 m!8137764))

(declare-fun m!8137766 () Bool)

(assert (=> b!7586561 m!8137766))

(assert (=> b!7586563 m!8137766))

(assert (=> bm!695720 m!8137578))

(assert (=> d!2319023 m!8137578))

(assert (=> d!2319023 m!8137576))

(assert (=> b!7586558 m!8137766))

(assert (=> b!7586558 m!8137766))

(declare-fun m!8137768 () Bool)

(assert (=> b!7586558 m!8137768))

(assert (=> b!7586558 m!8137762))

(assert (=> b!7586558 m!8137768))

(assert (=> b!7586558 m!8137762))

(declare-fun m!8137770 () Bool)

(assert (=> b!7586558 m!8137770))

(assert (=> b!7586283 d!2319023))

(declare-fun d!2319025 () Bool)

(assert (=> d!2319025 (= (matchR!9694 r!22341 s!13436) (matchRSpec!4415 r!22341 s!13436))))

(declare-fun lt!2653091 () Unit!167160)

(declare-fun choose!58650 (Regex!20102 List!72985) Unit!167160)

(assert (=> d!2319025 (= lt!2653091 (choose!58650 r!22341 s!13436))))

(assert (=> d!2319025 (validRegex!10530 r!22341)))

(assert (=> d!2319025 (= (mainMatchTheorem!4409 r!22341 s!13436) lt!2653091)))

(declare-fun bs!1941275 () Bool)

(assert (= bs!1941275 d!2319025))

(assert (=> bs!1941275 m!8137568))

(assert (=> bs!1941275 m!8137566))

(declare-fun m!8137772 () Bool)

(assert (=> bs!1941275 m!8137772))

(assert (=> bs!1941275 m!8137576))

(assert (=> b!7586283 d!2319025))

(declare-fun b!7586576 () Bool)

(declare-fun e!4515056 () Bool)

(declare-fun tp!2210965 () Bool)

(declare-fun tp!2210964 () Bool)

(assert (=> b!7586576 (= e!4515056 (and tp!2210965 tp!2210964))))

(declare-fun b!7586578 () Bool)

(declare-fun tp!2210968 () Bool)

(declare-fun tp!2210966 () Bool)

(assert (=> b!7586578 (= e!4515056 (and tp!2210968 tp!2210966))))

(assert (=> b!7586279 (= tp!2210935 e!4515056)))

(declare-fun b!7586575 () Bool)

(assert (=> b!7586575 (= e!4515056 tp_is_empty!50559)))

(declare-fun b!7586577 () Bool)

(declare-fun tp!2210967 () Bool)

(assert (=> b!7586577 (= e!4515056 tp!2210967)))

(assert (= (and b!7586279 (is-ElementMatch!20102 (regOne!40717 r!22341))) b!7586575))

(assert (= (and b!7586279 (is-Concat!28947 (regOne!40717 r!22341))) b!7586576))

(assert (= (and b!7586279 (is-Star!20102 (regOne!40717 r!22341))) b!7586577))

(assert (= (and b!7586279 (is-Union!20102 (regOne!40717 r!22341))) b!7586578))

(declare-fun b!7586580 () Bool)

(declare-fun e!4515057 () Bool)

(declare-fun tp!2210970 () Bool)

(declare-fun tp!2210969 () Bool)

(assert (=> b!7586580 (= e!4515057 (and tp!2210970 tp!2210969))))

(declare-fun b!7586582 () Bool)

(declare-fun tp!2210973 () Bool)

(declare-fun tp!2210971 () Bool)

(assert (=> b!7586582 (= e!4515057 (and tp!2210973 tp!2210971))))

(assert (=> b!7586279 (= tp!2210930 e!4515057)))

(declare-fun b!7586579 () Bool)

(assert (=> b!7586579 (= e!4515057 tp_is_empty!50559)))

(declare-fun b!7586581 () Bool)

(declare-fun tp!2210972 () Bool)

(assert (=> b!7586581 (= e!4515057 tp!2210972)))

(assert (= (and b!7586279 (is-ElementMatch!20102 (regTwo!40717 r!22341))) b!7586579))

(assert (= (and b!7586279 (is-Concat!28947 (regTwo!40717 r!22341))) b!7586580))

(assert (= (and b!7586279 (is-Star!20102 (regTwo!40717 r!22341))) b!7586581))

(assert (= (and b!7586279 (is-Union!20102 (regTwo!40717 r!22341))) b!7586582))

(declare-fun b!7586584 () Bool)

(declare-fun e!4515058 () Bool)

(declare-fun tp!2210975 () Bool)

(declare-fun tp!2210974 () Bool)

(assert (=> b!7586584 (= e!4515058 (and tp!2210975 tp!2210974))))

(declare-fun b!7586586 () Bool)

(declare-fun tp!2210978 () Bool)

(declare-fun tp!2210976 () Bool)

(assert (=> b!7586586 (= e!4515058 (and tp!2210978 tp!2210976))))

(assert (=> b!7586285 (= tp!2210931 e!4515058)))

(declare-fun b!7586583 () Bool)

(assert (=> b!7586583 (= e!4515058 tp_is_empty!50559)))

(declare-fun b!7586585 () Bool)

(declare-fun tp!2210977 () Bool)

(assert (=> b!7586585 (= e!4515058 tp!2210977)))

(assert (= (and b!7586285 (is-ElementMatch!20102 (regOne!40716 r!22341))) b!7586583))

(assert (= (and b!7586285 (is-Concat!28947 (regOne!40716 r!22341))) b!7586584))

(assert (= (and b!7586285 (is-Star!20102 (regOne!40716 r!22341))) b!7586585))

(assert (= (and b!7586285 (is-Union!20102 (regOne!40716 r!22341))) b!7586586))

(declare-fun b!7586588 () Bool)

(declare-fun e!4515059 () Bool)

(declare-fun tp!2210980 () Bool)

(declare-fun tp!2210979 () Bool)

(assert (=> b!7586588 (= e!4515059 (and tp!2210980 tp!2210979))))

(declare-fun b!7586590 () Bool)

(declare-fun tp!2210983 () Bool)

(declare-fun tp!2210981 () Bool)

(assert (=> b!7586590 (= e!4515059 (and tp!2210983 tp!2210981))))

(assert (=> b!7586285 (= tp!2210932 e!4515059)))

(declare-fun b!7586587 () Bool)

(assert (=> b!7586587 (= e!4515059 tp_is_empty!50559)))

(declare-fun b!7586589 () Bool)

(declare-fun tp!2210982 () Bool)

(assert (=> b!7586589 (= e!4515059 tp!2210982)))

(assert (= (and b!7586285 (is-ElementMatch!20102 (regTwo!40716 r!22341))) b!7586587))

(assert (= (and b!7586285 (is-Concat!28947 (regTwo!40716 r!22341))) b!7586588))

(assert (= (and b!7586285 (is-Star!20102 (regTwo!40716 r!22341))) b!7586589))

(assert (= (and b!7586285 (is-Union!20102 (regTwo!40716 r!22341))) b!7586590))

(declare-fun b!7586592 () Bool)

(declare-fun e!4515060 () Bool)

(declare-fun tp!2210985 () Bool)

(declare-fun tp!2210984 () Bool)

(assert (=> b!7586592 (= e!4515060 (and tp!2210985 tp!2210984))))

(declare-fun b!7586594 () Bool)

(declare-fun tp!2210988 () Bool)

(declare-fun tp!2210986 () Bool)

(assert (=> b!7586594 (= e!4515060 (and tp!2210988 tp!2210986))))

(assert (=> b!7586287 (= tp!2210933 e!4515060)))

(declare-fun b!7586591 () Bool)

(assert (=> b!7586591 (= e!4515060 tp_is_empty!50559)))

(declare-fun b!7586593 () Bool)

(declare-fun tp!2210987 () Bool)

(assert (=> b!7586593 (= e!4515060 tp!2210987)))

(assert (= (and b!7586287 (is-ElementMatch!20102 (reg!20431 r!22341))) b!7586591))

(assert (= (and b!7586287 (is-Concat!28947 (reg!20431 r!22341))) b!7586592))

(assert (= (and b!7586287 (is-Star!20102 (reg!20431 r!22341))) b!7586593))

(assert (= (and b!7586287 (is-Union!20102 (reg!20431 r!22341))) b!7586594))

(declare-fun b!7586599 () Bool)

(declare-fun e!4515063 () Bool)

(declare-fun tp!2210991 () Bool)

(assert (=> b!7586599 (= e!4515063 (and tp_is_empty!50559 tp!2210991))))

(assert (=> b!7586281 (= tp!2210934 e!4515063)))

(assert (= (and b!7586281 (is-Cons!72861 (t!387720 s!13436))) b!7586599))

(push 1)

(assert (not bm!695706))

(assert (not bm!695719))

(assert (not d!2318993))

(assert (not b!7586580))

(assert (not b!7586468))

(assert (not b!7586495))

(assert (not d!2319023))

(assert (not d!2319007))

(assert (not b!7586421))

(assert (not b!7586365))

(assert (not d!2319011))

(assert (not d!2318989))

(assert (not b!7586592))

(assert (not b!7586416))

(assert (not bm!695709))

(assert (not b!7586577))

(assert (not bm!695712))

(assert (not b!7586418))

(assert (not bm!695708))

(assert (not bm!695718))

(assert (not b!7586490))

(assert (not b!7586470))

(assert (not b!7586558))

(assert (not b!7586594))

(assert (not b!7586586))

(assert (not b!7586419))

(assert (not b!7586589))

(assert (not b!7586581))

(assert (not b!7586472))

(assert tp_is_empty!50559)

(assert (not b!7586548))

(assert (not d!2319003))

(assert (not b!7586585))

(assert (not b!7586492))

(assert (not b!7586590))

(assert (not b!7586473))

(assert (not b!7586475))

(assert (not b!7586563))

(assert (not d!2318999))

(assert (not d!2319001))

(assert (not bm!695705))

(assert (not b!7586554))

(assert (not b!7586488))

(assert (not d!2319009))

(assert (not b!7586423))

(assert (not b!7586599))

(assert (not b!7586556))

(assert (not b!7586549))

(assert (not b!7586584))

(assert (not b!7586582))

(assert (not b!7586576))

(assert (not d!2318985))

(assert (not b!7586494))

(assert (not b!7586578))

(assert (not b!7586466))

(assert (not d!2319025))

(assert (not b!7586561))

(assert (not b!7586560))

(assert (not b!7586422))

(assert (not b!7586374))

(assert (not b!7586497))

(assert (not bm!695720))

(assert (not b!7586588))

(assert (not d!2319005))

(assert (not bm!695713))

(assert (not b!7586593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

