; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89600 () Bool)

(assert start!89600)

(declare-fun b!1029239 () Bool)

(assert (=> b!1029239 true))

(assert (=> b!1029239 true))

(declare-fun lambda!36870 () Int)

(declare-fun lambda!36869 () Int)

(assert (=> b!1029239 (not (= lambda!36870 lambda!36869))))

(assert (=> b!1029239 true))

(assert (=> b!1029239 true))

(declare-fun res!462391 () Bool)

(declare-fun e!656328 () Bool)

(assert (=> start!89600 (=> (not res!462391) (not e!656328))))

(declare-datatypes ((C!6278 0))(
  ( (C!6279 (val!3387 Int)) )
))
(declare-datatypes ((Regex!2854 0))(
  ( (ElementMatch!2854 (c!170705 C!6278)) (Concat!4687 (regOne!6220 Regex!2854) (regTwo!6220 Regex!2854)) (EmptyExpr!2854) (Star!2854 (reg!3183 Regex!2854)) (EmptyLang!2854) (Union!2854 (regOne!6221 Regex!2854) (regTwo!6221 Regex!2854)) )
))
(declare-fun r!15766 () Regex!2854)

(declare-fun validRegex!1323 (Regex!2854) Bool)

(assert (=> start!89600 (= res!462391 (validRegex!1323 r!15766))))

(assert (=> start!89600 e!656328))

(declare-fun e!656326 () Bool)

(assert (=> start!89600 e!656326))

(declare-fun e!656327 () Bool)

(assert (=> start!89600 e!656327))

(declare-fun b!1029238 () Bool)

(declare-fun tp!311998 () Bool)

(declare-fun tp!311999 () Bool)

(assert (=> b!1029238 (= e!656326 (and tp!311998 tp!311999))))

(declare-fun e!656331 () Bool)

(declare-fun e!656329 () Bool)

(assert (=> b!1029239 (= e!656331 e!656329)))

(declare-fun res!462398 () Bool)

(assert (=> b!1029239 (=> res!462398 e!656329)))

(declare-datatypes ((List!10084 0))(
  ( (Nil!10068) (Cons!10068 (h!15469 C!6278) (t!101130 List!10084)) )
))
(declare-fun s!10566 () List!10084)

(declare-fun isEmpty!6445 (List!10084) Bool)

(assert (=> b!1029239 (= res!462398 (isEmpty!6445 s!10566))))

(declare-fun Exists!581 (Int) Bool)

(assert (=> b!1029239 (= (Exists!581 lambda!36869) (Exists!581 lambda!36870))))

(declare-datatypes ((Unit!15383 0))(
  ( (Unit!15384) )
))
(declare-fun lt!355742 () Unit!15383)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!277 (Regex!2854 Regex!2854 List!10084) Unit!15383)

(assert (=> b!1029239 (= lt!355742 (lemmaExistCutMatchRandMatchRSpecEquivalent!277 (regOne!6220 r!15766) EmptyExpr!2854 s!10566))))

(declare-datatypes ((tuple2!11482 0))(
  ( (tuple2!11483 (_1!6567 List!10084) (_2!6567 List!10084)) )
))
(declare-datatypes ((Option!2383 0))(
  ( (None!2382) (Some!2382 (v!19799 tuple2!11482)) )
))
(declare-fun lt!355746 () Option!2383)

(declare-fun isDefined!2025 (Option!2383) Bool)

(assert (=> b!1029239 (= (isDefined!2025 lt!355746) (Exists!581 lambda!36869))))

(declare-fun findConcatSeparation!489 (Regex!2854 Regex!2854 List!10084 List!10084 List!10084) Option!2383)

(assert (=> b!1029239 (= lt!355746 (findConcatSeparation!489 (regOne!6220 r!15766) EmptyExpr!2854 Nil!10068 s!10566 s!10566))))

(declare-fun lt!355744 () Unit!15383)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!489 (Regex!2854 Regex!2854 List!10084) Unit!15383)

(assert (=> b!1029239 (= lt!355744 (lemmaFindConcatSeparationEquivalentToExists!489 (regOne!6220 r!15766) EmptyExpr!2854 s!10566))))

(declare-fun b!1029240 () Bool)

(assert (=> b!1029240 (= e!656328 (not e!656331))))

(declare-fun res!462394 () Bool)

(assert (=> b!1029240 (=> res!462394 e!656331)))

(declare-fun lt!355749 () Bool)

(assert (=> b!1029240 (= res!462394 (or lt!355749 (and (is-Concat!4687 r!15766) (is-EmptyExpr!2854 (regOne!6220 r!15766))) (not (is-Concat!4687 r!15766)) (not (is-EmptyExpr!2854 (regTwo!6220 r!15766)))))))

(declare-fun matchRSpec!653 (Regex!2854 List!10084) Bool)

(assert (=> b!1029240 (= lt!355749 (matchRSpec!653 r!15766 s!10566))))

(declare-fun matchR!1390 (Regex!2854 List!10084) Bool)

(assert (=> b!1029240 (= lt!355749 (matchR!1390 r!15766 s!10566))))

(declare-fun lt!355745 () Unit!15383)

(declare-fun mainMatchTheorem!653 (Regex!2854 List!10084) Unit!15383)

(assert (=> b!1029240 (= lt!355745 (mainMatchTheorem!653 r!15766 s!10566))))

(declare-fun b!1029241 () Bool)

(declare-fun res!462395 () Bool)

(declare-fun e!656330 () Bool)

(assert (=> b!1029241 (=> res!462395 e!656330)))

(declare-fun ++!2762 (List!10084 List!10084) List!10084)

(assert (=> b!1029241 (= res!462395 (not (= (++!2762 s!10566 Nil!10068) s!10566)))))

(declare-fun b!1029242 () Bool)

(declare-fun res!462392 () Bool)

(assert (=> b!1029242 (=> res!462392 e!656329)))

(declare-fun isEmpty!6446 (Option!2383) Bool)

(assert (=> b!1029242 (= res!462392 (not (isEmpty!6446 lt!355746)))))

(declare-fun b!1029243 () Bool)

(declare-fun tp!312000 () Bool)

(assert (=> b!1029243 (= e!656326 tp!312000)))

(declare-fun b!1029244 () Bool)

(declare-fun isPrefix!1012 (List!10084 List!10084) Bool)

(assert (=> b!1029244 (= e!656330 (isPrefix!1012 Nil!10068 s!10566))))

(declare-fun b!1029245 () Bool)

(declare-fun res!462396 () Bool)

(assert (=> b!1029245 (=> res!462396 e!656330)))

(assert (=> b!1029245 (= res!462396 false)))

(declare-fun b!1029246 () Bool)

(declare-fun tp!311997 () Bool)

(declare-fun tp!312001 () Bool)

(assert (=> b!1029246 (= e!656326 (and tp!311997 tp!312001))))

(declare-fun b!1029247 () Bool)

(declare-fun res!462397 () Bool)

(assert (=> b!1029247 (=> res!462397 e!656330)))

(assert (=> b!1029247 (= res!462397 (not (validRegex!1323 (regOne!6220 r!15766))))))

(declare-fun b!1029248 () Bool)

(declare-fun tp_is_empty!5351 () Bool)

(declare-fun tp!312002 () Bool)

(assert (=> b!1029248 (= e!656327 (and tp_is_empty!5351 tp!312002))))

(declare-fun b!1029249 () Bool)

(assert (=> b!1029249 (= e!656329 e!656330)))

(declare-fun res!462393 () Bool)

(assert (=> b!1029249 (=> res!462393 e!656330)))

(declare-fun lt!355747 () Bool)

(declare-fun lt!355748 () Bool)

(assert (=> b!1029249 (= res!462393 (or (not lt!355747) (not lt!355748)))))

(assert (=> b!1029249 (= lt!355748 lt!355747)))

(declare-fun lt!355743 () Regex!2854)

(assert (=> b!1029249 (= lt!355747 (matchR!1390 lt!355743 s!10566))))

(assert (=> b!1029249 (= lt!355748 (matchR!1390 (regOne!6220 r!15766) s!10566))))

(declare-fun removeUselessConcat!411 (Regex!2854) Regex!2854)

(assert (=> b!1029249 (= lt!355743 (removeUselessConcat!411 (regOne!6220 r!15766)))))

(declare-fun lt!355750 () Unit!15383)

(declare-fun lemmaRemoveUselessConcatSound!249 (Regex!2854 List!10084) Unit!15383)

(assert (=> b!1029249 (= lt!355750 (lemmaRemoveUselessConcatSound!249 (regOne!6220 r!15766) s!10566))))

(declare-fun b!1029250 () Bool)

(assert (=> b!1029250 (= e!656326 tp_is_empty!5351)))

(assert (= (and start!89600 res!462391) b!1029240))

(assert (= (and b!1029240 (not res!462394)) b!1029239))

(assert (= (and b!1029239 (not res!462398)) b!1029242))

(assert (= (and b!1029242 (not res!462392)) b!1029249))

(assert (= (and b!1029249 (not res!462393)) b!1029247))

(assert (= (and b!1029247 (not res!462397)) b!1029245))

(assert (= (and b!1029245 (not res!462396)) b!1029241))

(assert (= (and b!1029241 (not res!462395)) b!1029244))

(assert (= (and start!89600 (is-ElementMatch!2854 r!15766)) b!1029250))

(assert (= (and start!89600 (is-Concat!4687 r!15766)) b!1029238))

(assert (= (and start!89600 (is-Star!2854 r!15766)) b!1029243))

(assert (= (and start!89600 (is-Union!2854 r!15766)) b!1029246))

(assert (= (and start!89600 (is-Cons!10068 s!10566)) b!1029248))

(declare-fun m!1203753 () Bool)

(assert (=> b!1029241 m!1203753))

(declare-fun m!1203755 () Bool)

(assert (=> start!89600 m!1203755))

(declare-fun m!1203757 () Bool)

(assert (=> b!1029240 m!1203757))

(declare-fun m!1203759 () Bool)

(assert (=> b!1029240 m!1203759))

(declare-fun m!1203761 () Bool)

(assert (=> b!1029240 m!1203761))

(declare-fun m!1203763 () Bool)

(assert (=> b!1029242 m!1203763))

(declare-fun m!1203765 () Bool)

(assert (=> b!1029249 m!1203765))

(declare-fun m!1203767 () Bool)

(assert (=> b!1029249 m!1203767))

(declare-fun m!1203769 () Bool)

(assert (=> b!1029249 m!1203769))

(declare-fun m!1203771 () Bool)

(assert (=> b!1029249 m!1203771))

(declare-fun m!1203773 () Bool)

(assert (=> b!1029239 m!1203773))

(declare-fun m!1203775 () Bool)

(assert (=> b!1029239 m!1203775))

(declare-fun m!1203777 () Bool)

(assert (=> b!1029239 m!1203777))

(declare-fun m!1203779 () Bool)

(assert (=> b!1029239 m!1203779))

(assert (=> b!1029239 m!1203775))

(declare-fun m!1203781 () Bool)

(assert (=> b!1029239 m!1203781))

(declare-fun m!1203783 () Bool)

(assert (=> b!1029239 m!1203783))

(declare-fun m!1203785 () Bool)

(assert (=> b!1029239 m!1203785))

(declare-fun m!1203787 () Bool)

(assert (=> b!1029244 m!1203787))

(declare-fun m!1203789 () Bool)

(assert (=> b!1029247 m!1203789))

(push 1)

(assert (not start!89600))

(assert (not b!1029244))

(assert (not b!1029249))

(assert tp_is_empty!5351)

(assert (not b!1029239))

(assert (not b!1029242))

(assert (not b!1029247))

(assert (not b!1029238))

(assert (not b!1029246))

(assert (not b!1029248))

(assert (not b!1029240))

(assert (not b!1029243))

(assert (not b!1029241))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!70861 () Bool)

(declare-fun call!70868 () Bool)

(declare-fun c!170712 () Bool)

(assert (=> bm!70861 (= call!70868 (validRegex!1323 (ite c!170712 (regOne!6221 (regOne!6220 r!15766)) (regOne!6220 (regOne!6220 r!15766)))))))

(declare-fun b!1029328 () Bool)

(declare-fun e!656372 () Bool)

(declare-fun call!70867 () Bool)

(assert (=> b!1029328 (= e!656372 call!70867)))

(declare-fun c!170711 () Bool)

(declare-fun call!70866 () Bool)

(declare-fun bm!70862 () Bool)

(assert (=> bm!70862 (= call!70866 (validRegex!1323 (ite c!170711 (reg!3183 (regOne!6220 r!15766)) (ite c!170712 (regTwo!6221 (regOne!6220 r!15766)) (regTwo!6220 (regOne!6220 r!15766))))))))

(declare-fun b!1029329 () Bool)

(declare-fun e!656371 () Bool)

(declare-fun e!656376 () Bool)

(assert (=> b!1029329 (= e!656371 e!656376)))

(assert (=> b!1029329 (= c!170711 (is-Star!2854 (regOne!6220 r!15766)))))

(declare-fun b!1029330 () Bool)

(declare-fun e!656373 () Bool)

(assert (=> b!1029330 (= e!656373 call!70867)))

(declare-fun b!1029331 () Bool)

(declare-fun e!656370 () Bool)

(assert (=> b!1029331 (= e!656370 e!656373)))

(declare-fun res!462446 () Bool)

(assert (=> b!1029331 (=> (not res!462446) (not e!656373))))

(assert (=> b!1029331 (= res!462446 call!70868)))

(declare-fun b!1029332 () Bool)

(declare-fun e!656374 () Bool)

(assert (=> b!1029332 (= e!656374 call!70866)))

(declare-fun d!295415 () Bool)

(declare-fun res!462445 () Bool)

(assert (=> d!295415 (=> res!462445 e!656371)))

(assert (=> d!295415 (= res!462445 (is-ElementMatch!2854 (regOne!6220 r!15766)))))

(assert (=> d!295415 (= (validRegex!1323 (regOne!6220 r!15766)) e!656371)))

(declare-fun b!1029333 () Bool)

(declare-fun e!656375 () Bool)

(assert (=> b!1029333 (= e!656376 e!656375)))

(assert (=> b!1029333 (= c!170712 (is-Union!2854 (regOne!6220 r!15766)))))

(declare-fun b!1029334 () Bool)

(declare-fun res!462447 () Bool)

(assert (=> b!1029334 (=> (not res!462447) (not e!656372))))

(assert (=> b!1029334 (= res!462447 call!70868)))

(assert (=> b!1029334 (= e!656375 e!656372)))

(declare-fun b!1029335 () Bool)

(assert (=> b!1029335 (= e!656376 e!656374)))

(declare-fun res!462448 () Bool)

(declare-fun nullable!949 (Regex!2854) Bool)

(assert (=> b!1029335 (= res!462448 (not (nullable!949 (reg!3183 (regOne!6220 r!15766)))))))

(assert (=> b!1029335 (=> (not res!462448) (not e!656374))))

(declare-fun b!1029336 () Bool)

(declare-fun res!462449 () Bool)

(assert (=> b!1029336 (=> res!462449 e!656370)))

(assert (=> b!1029336 (= res!462449 (not (is-Concat!4687 (regOne!6220 r!15766))))))

(assert (=> b!1029336 (= e!656375 e!656370)))

(declare-fun bm!70863 () Bool)

(assert (=> bm!70863 (= call!70867 call!70866)))

(assert (= (and d!295415 (not res!462445)) b!1029329))

(assert (= (and b!1029329 c!170711) b!1029335))

(assert (= (and b!1029329 (not c!170711)) b!1029333))

(assert (= (and b!1029335 res!462448) b!1029332))

(assert (= (and b!1029333 c!170712) b!1029334))

(assert (= (and b!1029333 (not c!170712)) b!1029336))

(assert (= (and b!1029334 res!462447) b!1029328))

(assert (= (and b!1029336 (not res!462449)) b!1029331))

(assert (= (and b!1029331 res!462446) b!1029330))

(assert (= (or b!1029328 b!1029330) bm!70863))

(assert (= (or b!1029334 b!1029331) bm!70861))

(assert (= (or b!1029332 bm!70863) bm!70862))

(declare-fun m!1203829 () Bool)

(assert (=> bm!70861 m!1203829))

(declare-fun m!1203831 () Bool)

(assert (=> bm!70862 m!1203831))

(declare-fun m!1203833 () Bool)

(assert (=> b!1029335 m!1203833))

(assert (=> b!1029247 d!295415))

(declare-fun d!295417 () Bool)

(assert (=> d!295417 (= (isEmpty!6446 lt!355746) (not (is-Some!2382 lt!355746)))))

(assert (=> b!1029242 d!295417))

(declare-fun b!1029346 () Bool)

(declare-fun e!656382 () List!10084)

(assert (=> b!1029346 (= e!656382 (Cons!10068 (h!15469 s!10566) (++!2762 (t!101130 s!10566) Nil!10068)))))

(declare-fun d!295419 () Bool)

(declare-fun e!656381 () Bool)

(assert (=> d!295419 e!656381))

(declare-fun res!462455 () Bool)

(assert (=> d!295419 (=> (not res!462455) (not e!656381))))

(declare-fun lt!355780 () List!10084)

(declare-fun content!1444 (List!10084) (Set C!6278))

(assert (=> d!295419 (= res!462455 (= (content!1444 lt!355780) (set.union (content!1444 s!10566) (content!1444 Nil!10068))))))

(assert (=> d!295419 (= lt!355780 e!656382)))

(declare-fun c!170715 () Bool)

(assert (=> d!295419 (= c!170715 (is-Nil!10068 s!10566))))

(assert (=> d!295419 (= (++!2762 s!10566 Nil!10068) lt!355780)))

(declare-fun b!1029348 () Bool)

(assert (=> b!1029348 (= e!656381 (or (not (= Nil!10068 Nil!10068)) (= lt!355780 s!10566)))))

(declare-fun b!1029345 () Bool)

(assert (=> b!1029345 (= e!656382 Nil!10068)))

(declare-fun b!1029347 () Bool)

(declare-fun res!462454 () Bool)

(assert (=> b!1029347 (=> (not res!462454) (not e!656381))))

(declare-fun size!7989 (List!10084) Int)

(assert (=> b!1029347 (= res!462454 (= (size!7989 lt!355780) (+ (size!7989 s!10566) (size!7989 Nil!10068))))))

(assert (= (and d!295419 c!170715) b!1029345))

(assert (= (and d!295419 (not c!170715)) b!1029346))

(assert (= (and d!295419 res!462455) b!1029347))

(assert (= (and b!1029347 res!462454) b!1029348))

(declare-fun m!1203835 () Bool)

(assert (=> b!1029346 m!1203835))

(declare-fun m!1203837 () Bool)

(assert (=> d!295419 m!1203837))

(declare-fun m!1203839 () Bool)

(assert (=> d!295419 m!1203839))

(declare-fun m!1203841 () Bool)

(assert (=> d!295419 m!1203841))

(declare-fun m!1203843 () Bool)

(assert (=> b!1029347 m!1203843))

(declare-fun m!1203845 () Bool)

(assert (=> b!1029347 m!1203845))

(declare-fun m!1203847 () Bool)

(assert (=> b!1029347 m!1203847))

(assert (=> b!1029241 d!295419))

(declare-fun d!295421 () Bool)

(assert (=> d!295421 (= (isDefined!2025 lt!355746) (not (isEmpty!6446 lt!355746)))))

(declare-fun bs!247208 () Bool)

(assert (= bs!247208 d!295421))

(assert (=> bs!247208 m!1203763))

(assert (=> b!1029239 d!295421))

(declare-fun b!1029379 () Bool)

(declare-fun e!656403 () Bool)

(declare-fun lt!355791 () Option!2383)

(assert (=> b!1029379 (= e!656403 (not (isDefined!2025 lt!355791)))))

(declare-fun b!1029380 () Bool)

(declare-fun lt!355792 () Unit!15383)

(declare-fun lt!355790 () Unit!15383)

(assert (=> b!1029380 (= lt!355792 lt!355790)))

(assert (=> b!1029380 (= (++!2762 (++!2762 Nil!10068 (Cons!10068 (h!15469 s!10566) Nil!10068)) (t!101130 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!359 (List!10084 C!6278 List!10084 List!10084) Unit!15383)

(assert (=> b!1029380 (= lt!355790 (lemmaMoveElementToOtherListKeepsConcatEq!359 Nil!10068 (h!15469 s!10566) (t!101130 s!10566) s!10566))))

(declare-fun e!656405 () Option!2383)

(assert (=> b!1029380 (= e!656405 (findConcatSeparation!489 (regOne!6220 r!15766) EmptyExpr!2854 (++!2762 Nil!10068 (Cons!10068 (h!15469 s!10566) Nil!10068)) (t!101130 s!10566) s!10566))))

(declare-fun b!1029381 () Bool)

(declare-fun e!656402 () Option!2383)

(assert (=> b!1029381 (= e!656402 (Some!2382 (tuple2!11483 Nil!10068 s!10566)))))

(declare-fun b!1029382 () Bool)

(declare-fun e!656404 () Bool)

(declare-fun get!3571 (Option!2383) tuple2!11482)

(assert (=> b!1029382 (= e!656404 (= (++!2762 (_1!6567 (get!3571 lt!355791)) (_2!6567 (get!3571 lt!355791))) s!10566))))

(declare-fun b!1029383 () Bool)

(declare-fun e!656406 () Bool)

(assert (=> b!1029383 (= e!656406 (matchR!1390 EmptyExpr!2854 s!10566))))

(declare-fun d!295423 () Bool)

(assert (=> d!295423 e!656403))

(declare-fun res!462479 () Bool)

(assert (=> d!295423 (=> res!462479 e!656403)))

(assert (=> d!295423 (= res!462479 e!656404)))

(declare-fun res!462481 () Bool)

(assert (=> d!295423 (=> (not res!462481) (not e!656404))))

(assert (=> d!295423 (= res!462481 (isDefined!2025 lt!355791))))

(assert (=> d!295423 (= lt!355791 e!656402)))

(declare-fun c!170721 () Bool)

(assert (=> d!295423 (= c!170721 e!656406)))

(declare-fun res!462482 () Bool)

(assert (=> d!295423 (=> (not res!462482) (not e!656406))))

(assert (=> d!295423 (= res!462482 (matchR!1390 (regOne!6220 r!15766) Nil!10068))))

(assert (=> d!295423 (validRegex!1323 (regOne!6220 r!15766))))

(assert (=> d!295423 (= (findConcatSeparation!489 (regOne!6220 r!15766) EmptyExpr!2854 Nil!10068 s!10566 s!10566) lt!355791)))

(declare-fun b!1029384 () Bool)

(assert (=> b!1029384 (= e!656402 e!656405)))

(declare-fun c!170720 () Bool)

(assert (=> b!1029384 (= c!170720 (is-Nil!10068 s!10566))))

(declare-fun b!1029385 () Bool)

(declare-fun res!462478 () Bool)

(assert (=> b!1029385 (=> (not res!462478) (not e!656404))))

(assert (=> b!1029385 (= res!462478 (matchR!1390 EmptyExpr!2854 (_2!6567 (get!3571 lt!355791))))))

(declare-fun b!1029386 () Bool)

(declare-fun res!462480 () Bool)

(assert (=> b!1029386 (=> (not res!462480) (not e!656404))))

(assert (=> b!1029386 (= res!462480 (matchR!1390 (regOne!6220 r!15766) (_1!6567 (get!3571 lt!355791))))))

(declare-fun b!1029387 () Bool)

(assert (=> b!1029387 (= e!656405 None!2382)))

(assert (= (and d!295423 res!462482) b!1029383))

(assert (= (and d!295423 c!170721) b!1029381))

(assert (= (and d!295423 (not c!170721)) b!1029384))

(assert (= (and b!1029384 c!170720) b!1029387))

(assert (= (and b!1029384 (not c!170720)) b!1029380))

(assert (= (and d!295423 res!462481) b!1029386))

(assert (= (and b!1029386 res!462480) b!1029385))

(assert (= (and b!1029385 res!462478) b!1029382))

(assert (= (and d!295423 (not res!462479)) b!1029379))

(declare-fun m!1203863 () Bool)

(assert (=> b!1029379 m!1203863))

(assert (=> d!295423 m!1203863))

(declare-fun m!1203865 () Bool)

(assert (=> d!295423 m!1203865))

(assert (=> d!295423 m!1203789))

(declare-fun m!1203867 () Bool)

(assert (=> b!1029385 m!1203867))

(declare-fun m!1203869 () Bool)

(assert (=> b!1029385 m!1203869))

(declare-fun m!1203871 () Bool)

(assert (=> b!1029383 m!1203871))

(assert (=> b!1029382 m!1203867))

(declare-fun m!1203873 () Bool)

(assert (=> b!1029382 m!1203873))

(assert (=> b!1029386 m!1203867))

(declare-fun m!1203875 () Bool)

(assert (=> b!1029386 m!1203875))

(declare-fun m!1203877 () Bool)

(assert (=> b!1029380 m!1203877))

(assert (=> b!1029380 m!1203877))

(declare-fun m!1203879 () Bool)

(assert (=> b!1029380 m!1203879))

(declare-fun m!1203881 () Bool)

(assert (=> b!1029380 m!1203881))

(assert (=> b!1029380 m!1203877))

(declare-fun m!1203883 () Bool)

(assert (=> b!1029380 m!1203883))

(assert (=> b!1029239 d!295423))

(declare-fun d!295429 () Bool)

(assert (=> d!295429 (= (isEmpty!6445 s!10566) (is-Nil!10068 s!10566))))

(assert (=> b!1029239 d!295429))

(declare-fun d!295431 () Bool)

(declare-fun choose!6550 (Int) Bool)

(assert (=> d!295431 (= (Exists!581 lambda!36870) (choose!6550 lambda!36870))))

(declare-fun bs!247209 () Bool)

(assert (= bs!247209 d!295431))

(declare-fun m!1203885 () Bool)

(assert (=> bs!247209 m!1203885))

(assert (=> b!1029239 d!295431))

(declare-fun bs!247210 () Bool)

(declare-fun d!295433 () Bool)

(assert (= bs!247210 (and d!295433 b!1029239)))

(declare-fun lambda!36881 () Int)

(assert (=> bs!247210 (= lambda!36881 lambda!36869)))

(assert (=> bs!247210 (not (= lambda!36881 lambda!36870))))

(assert (=> d!295433 true))

(assert (=> d!295433 true))

(assert (=> d!295433 true))

(assert (=> d!295433 (= (isDefined!2025 (findConcatSeparation!489 (regOne!6220 r!15766) EmptyExpr!2854 Nil!10068 s!10566 s!10566)) (Exists!581 lambda!36881))))

(declare-fun lt!355795 () Unit!15383)

(declare-fun choose!6551 (Regex!2854 Regex!2854 List!10084) Unit!15383)

(assert (=> d!295433 (= lt!355795 (choose!6551 (regOne!6220 r!15766) EmptyExpr!2854 s!10566))))

(assert (=> d!295433 (validRegex!1323 (regOne!6220 r!15766))))

(assert (=> d!295433 (= (lemmaFindConcatSeparationEquivalentToExists!489 (regOne!6220 r!15766) EmptyExpr!2854 s!10566) lt!355795)))

(declare-fun bs!247211 () Bool)

(assert (= bs!247211 d!295433))

(assert (=> bs!247211 m!1203777))

(declare-fun m!1203887 () Bool)

(assert (=> bs!247211 m!1203887))

(assert (=> bs!247211 m!1203777))

(assert (=> bs!247211 m!1203789))

(declare-fun m!1203889 () Bool)

(assert (=> bs!247211 m!1203889))

(declare-fun m!1203891 () Bool)

(assert (=> bs!247211 m!1203891))

(assert (=> b!1029239 d!295433))

(declare-fun bs!247212 () Bool)

(declare-fun d!295435 () Bool)

(assert (= bs!247212 (and d!295435 b!1029239)))

(declare-fun lambda!36886 () Int)

(assert (=> bs!247212 (= lambda!36886 lambda!36869)))

(assert (=> bs!247212 (not (= lambda!36886 lambda!36870))))

(declare-fun bs!247213 () Bool)

(assert (= bs!247213 (and d!295435 d!295433)))

(assert (=> bs!247213 (= lambda!36886 lambda!36881)))

(assert (=> d!295435 true))

(assert (=> d!295435 true))

(assert (=> d!295435 true))

(declare-fun lambda!36887 () Int)

(assert (=> bs!247212 (not (= lambda!36887 lambda!36869))))

(assert (=> bs!247212 (= lambda!36887 lambda!36870)))

(assert (=> bs!247213 (not (= lambda!36887 lambda!36881))))

(declare-fun bs!247214 () Bool)

(assert (= bs!247214 d!295435))

(assert (=> bs!247214 (not (= lambda!36887 lambda!36886))))

(assert (=> d!295435 true))

(assert (=> d!295435 true))

(assert (=> d!295435 true))

(assert (=> d!295435 (= (Exists!581 lambda!36886) (Exists!581 lambda!36887))))

(declare-fun lt!355798 () Unit!15383)

(declare-fun choose!6552 (Regex!2854 Regex!2854 List!10084) Unit!15383)

(assert (=> d!295435 (= lt!355798 (choose!6552 (regOne!6220 r!15766) EmptyExpr!2854 s!10566))))

(assert (=> d!295435 (validRegex!1323 (regOne!6220 r!15766))))

(assert (=> d!295435 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!277 (regOne!6220 r!15766) EmptyExpr!2854 s!10566) lt!355798)))

(declare-fun m!1203905 () Bool)

(assert (=> bs!247214 m!1203905))

(declare-fun m!1203907 () Bool)

(assert (=> bs!247214 m!1203907))

(declare-fun m!1203909 () Bool)

(assert (=> bs!247214 m!1203909))

(assert (=> bs!247214 m!1203789))

(assert (=> b!1029239 d!295435))

(declare-fun d!295441 () Bool)

(assert (=> d!295441 (= (Exists!581 lambda!36869) (choose!6550 lambda!36869))))

(declare-fun bs!247215 () Bool)

(assert (= bs!247215 d!295441))

(declare-fun m!1203911 () Bool)

(assert (=> bs!247215 m!1203911))

(assert (=> b!1029239 d!295441))

(declare-fun bs!247216 () Bool)

(declare-fun b!1029481 () Bool)

(assert (= bs!247216 (and b!1029481 d!295433)))

(declare-fun lambda!36892 () Int)

(assert (=> bs!247216 (not (= lambda!36892 lambda!36881))))

(declare-fun bs!247217 () Bool)

(assert (= bs!247217 (and b!1029481 d!295435)))

(assert (=> bs!247217 (not (= lambda!36892 lambda!36886))))

(declare-fun bs!247218 () Bool)

(assert (= bs!247218 (and b!1029481 b!1029239)))

(assert (=> bs!247218 (not (= lambda!36892 lambda!36870))))

(assert (=> bs!247217 (not (= lambda!36892 lambda!36887))))

(assert (=> bs!247218 (not (= lambda!36892 lambda!36869))))

(assert (=> b!1029481 true))

(assert (=> b!1029481 true))

(declare-fun bs!247219 () Bool)

(declare-fun b!1029488 () Bool)

(assert (= bs!247219 (and b!1029488 d!295433)))

(declare-fun lambda!36893 () Int)

(assert (=> bs!247219 (not (= lambda!36893 lambda!36881))))

(declare-fun bs!247220 () Bool)

(assert (= bs!247220 (and b!1029488 d!295435)))

(assert (=> bs!247220 (not (= lambda!36893 lambda!36886))))

(declare-fun bs!247221 () Bool)

(assert (= bs!247221 (and b!1029488 b!1029239)))

(assert (=> bs!247221 (= (= (regTwo!6220 r!15766) EmptyExpr!2854) (= lambda!36893 lambda!36870))))

(assert (=> bs!247220 (= (= (regTwo!6220 r!15766) EmptyExpr!2854) (= lambda!36893 lambda!36887))))

(declare-fun bs!247222 () Bool)

(assert (= bs!247222 (and b!1029488 b!1029481)))

(assert (=> bs!247222 (not (= lambda!36893 lambda!36892))))

(assert (=> bs!247221 (not (= lambda!36893 lambda!36869))))

(assert (=> b!1029488 true))

(assert (=> b!1029488 true))

(declare-fun b!1029480 () Bool)

(declare-fun e!656466 () Bool)

(assert (=> b!1029480 (= e!656466 (matchRSpec!653 (regTwo!6221 r!15766) s!10566))))

(declare-fun e!656465 () Bool)

(declare-fun call!70885 () Bool)

(assert (=> b!1029481 (= e!656465 call!70885)))

(declare-fun d!295443 () Bool)

(declare-fun c!170744 () Bool)

(assert (=> d!295443 (= c!170744 (is-EmptyExpr!2854 r!15766))))

(declare-fun e!656471 () Bool)

(assert (=> d!295443 (= (matchRSpec!653 r!15766 s!10566) e!656471)))

(declare-fun b!1029482 () Bool)

(declare-fun c!170743 () Bool)

(assert (=> b!1029482 (= c!170743 (is-ElementMatch!2854 r!15766))))

(declare-fun e!656469 () Bool)

(declare-fun e!656470 () Bool)

(assert (=> b!1029482 (= e!656469 e!656470)))

(declare-fun b!1029483 () Bool)

(assert (=> b!1029483 (= e!656471 e!656469)))

(declare-fun res!462538 () Bool)

(assert (=> b!1029483 (= res!462538 (not (is-EmptyLang!2854 r!15766)))))

(assert (=> b!1029483 (=> (not res!462538) (not e!656469))))

(declare-fun b!1029484 () Bool)

(declare-fun c!170741 () Bool)

(assert (=> b!1029484 (= c!170741 (is-Union!2854 r!15766))))

(declare-fun e!656468 () Bool)

(assert (=> b!1029484 (= e!656470 e!656468)))

(declare-fun b!1029485 () Bool)

(declare-fun res!462537 () Bool)

(assert (=> b!1029485 (=> res!462537 e!656465)))

(declare-fun call!70886 () Bool)

(assert (=> b!1029485 (= res!462537 call!70886)))

(declare-fun e!656467 () Bool)

(assert (=> b!1029485 (= e!656467 e!656465)))

(declare-fun bm!70880 () Bool)

(assert (=> bm!70880 (= call!70886 (isEmpty!6445 s!10566))))

(declare-fun b!1029486 () Bool)

(assert (=> b!1029486 (= e!656470 (= s!10566 (Cons!10068 (c!170705 r!15766) Nil!10068)))))

(declare-fun b!1029487 () Bool)

(assert (=> b!1029487 (= e!656471 call!70886)))

(assert (=> b!1029488 (= e!656467 call!70885)))

(declare-fun bm!70881 () Bool)

(declare-fun c!170742 () Bool)

(assert (=> bm!70881 (= call!70885 (Exists!581 (ite c!170742 lambda!36892 lambda!36893)))))

(declare-fun b!1029489 () Bool)

(assert (=> b!1029489 (= e!656468 e!656466)))

(declare-fun res!462539 () Bool)

(assert (=> b!1029489 (= res!462539 (matchRSpec!653 (regOne!6221 r!15766) s!10566))))

(assert (=> b!1029489 (=> res!462539 e!656466)))

(declare-fun b!1029490 () Bool)

(assert (=> b!1029490 (= e!656468 e!656467)))

(assert (=> b!1029490 (= c!170742 (is-Star!2854 r!15766))))

(assert (= (and d!295443 c!170744) b!1029487))

(assert (= (and d!295443 (not c!170744)) b!1029483))

(assert (= (and b!1029483 res!462538) b!1029482))

(assert (= (and b!1029482 c!170743) b!1029486))

(assert (= (and b!1029482 (not c!170743)) b!1029484))

(assert (= (and b!1029484 c!170741) b!1029489))

(assert (= (and b!1029484 (not c!170741)) b!1029490))

(assert (= (and b!1029489 (not res!462539)) b!1029480))

(assert (= (and b!1029490 c!170742) b!1029485))

(assert (= (and b!1029490 (not c!170742)) b!1029488))

(assert (= (and b!1029485 (not res!462537)) b!1029481))

(assert (= (or b!1029481 b!1029488) bm!70881))

(assert (= (or b!1029487 b!1029485) bm!70880))

(declare-fun m!1203923 () Bool)

(assert (=> b!1029480 m!1203923))

(assert (=> bm!70880 m!1203783))

(declare-fun m!1203925 () Bool)

(assert (=> bm!70881 m!1203925))

(declare-fun m!1203927 () Bool)

(assert (=> b!1029489 m!1203927))

(assert (=> b!1029240 d!295443))

(declare-fun b!1029547 () Bool)

(declare-fun res!462573 () Bool)

(declare-fun e!656503 () Bool)

(assert (=> b!1029547 (=> (not res!462573) (not e!656503))))

(declare-fun call!70891 () Bool)

(assert (=> b!1029547 (= res!462573 (not call!70891))))

(declare-fun b!1029548 () Bool)

(declare-fun res!462572 () Bool)

(declare-fun e!656502 () Bool)

(assert (=> b!1029548 (=> res!462572 e!656502)))

(declare-fun tail!1466 (List!10084) List!10084)

(assert (=> b!1029548 (= res!462572 (not (isEmpty!6445 (tail!1466 s!10566))))))

(declare-fun b!1029549 () Bool)

(declare-fun e!656501 () Bool)

(assert (=> b!1029549 (= e!656501 e!656502)))

(declare-fun res!462576 () Bool)

(assert (=> b!1029549 (=> res!462576 e!656502)))

(assert (=> b!1029549 (= res!462576 call!70891)))

(declare-fun b!1029550 () Bool)

(declare-fun e!656506 () Bool)

(assert (=> b!1029550 (= e!656506 e!656501)))

(declare-fun res!462574 () Bool)

(assert (=> b!1029550 (=> (not res!462574) (not e!656501))))

(declare-fun lt!355806 () Bool)

(assert (=> b!1029550 (= res!462574 (not lt!355806))))

(declare-fun b!1029551 () Bool)

(declare-fun e!656505 () Bool)

(assert (=> b!1029551 (= e!656505 (not lt!355806))))

(declare-fun b!1029552 () Bool)

(declare-fun e!656500 () Bool)

(assert (=> b!1029552 (= e!656500 e!656505)))

(declare-fun c!170758 () Bool)

(assert (=> b!1029552 (= c!170758 (is-EmptyLang!2854 r!15766))))

(declare-fun b!1029553 () Bool)

(declare-fun head!1904 (List!10084) C!6278)

(assert (=> b!1029553 (= e!656503 (= (head!1904 s!10566) (c!170705 r!15766)))))

(declare-fun b!1029554 () Bool)

(declare-fun res!462578 () Bool)

(assert (=> b!1029554 (=> res!462578 e!656506)))

(assert (=> b!1029554 (= res!462578 (not (is-ElementMatch!2854 r!15766)))))

(assert (=> b!1029554 (= e!656505 e!656506)))

(declare-fun d!295449 () Bool)

(assert (=> d!295449 e!656500))

(declare-fun c!170759 () Bool)

(assert (=> d!295449 (= c!170759 (is-EmptyExpr!2854 r!15766))))

(declare-fun e!656504 () Bool)

(assert (=> d!295449 (= lt!355806 e!656504)))

(declare-fun c!170757 () Bool)

(assert (=> d!295449 (= c!170757 (isEmpty!6445 s!10566))))

(assert (=> d!295449 (validRegex!1323 r!15766)))

(assert (=> d!295449 (= (matchR!1390 r!15766 s!10566) lt!355806)))

(declare-fun b!1029555 () Bool)

(assert (=> b!1029555 (= e!656504 (nullable!949 r!15766))))

(declare-fun b!1029556 () Bool)

(assert (=> b!1029556 (= e!656502 (not (= (head!1904 s!10566) (c!170705 r!15766))))))

(declare-fun b!1029557 () Bool)

(assert (=> b!1029557 (= e!656500 (= lt!355806 call!70891))))

(declare-fun b!1029558 () Bool)

(declare-fun derivativeStep!750 (Regex!2854 C!6278) Regex!2854)

(assert (=> b!1029558 (= e!656504 (matchR!1390 (derivativeStep!750 r!15766 (head!1904 s!10566)) (tail!1466 s!10566)))))

(declare-fun bm!70886 () Bool)

(assert (=> bm!70886 (= call!70891 (isEmpty!6445 s!10566))))

(declare-fun b!1029559 () Bool)

(declare-fun res!462575 () Bool)

(assert (=> b!1029559 (=> res!462575 e!656506)))

(assert (=> b!1029559 (= res!462575 e!656503)))

(declare-fun res!462579 () Bool)

(assert (=> b!1029559 (=> (not res!462579) (not e!656503))))

(assert (=> b!1029559 (= res!462579 lt!355806)))

(declare-fun b!1029560 () Bool)

(declare-fun res!462577 () Bool)

(assert (=> b!1029560 (=> (not res!462577) (not e!656503))))

(assert (=> b!1029560 (= res!462577 (isEmpty!6445 (tail!1466 s!10566)))))

(assert (= (and d!295449 c!170757) b!1029555))

(assert (= (and d!295449 (not c!170757)) b!1029558))

(assert (= (and d!295449 c!170759) b!1029557))

(assert (= (and d!295449 (not c!170759)) b!1029552))

(assert (= (and b!1029552 c!170758) b!1029551))

(assert (= (and b!1029552 (not c!170758)) b!1029554))

(assert (= (and b!1029554 (not res!462578)) b!1029559))

(assert (= (and b!1029559 res!462579) b!1029547))

(assert (= (and b!1029547 res!462573) b!1029560))

(assert (= (and b!1029560 res!462577) b!1029553))

(assert (= (and b!1029559 (not res!462575)) b!1029550))

(assert (= (and b!1029550 res!462574) b!1029549))

(assert (= (and b!1029549 (not res!462576)) b!1029548))

(assert (= (and b!1029548 (not res!462572)) b!1029556))

(assert (= (or b!1029557 b!1029547 b!1029549) bm!70886))

(declare-fun m!1203929 () Bool)

(assert (=> b!1029548 m!1203929))

(assert (=> b!1029548 m!1203929))

(declare-fun m!1203931 () Bool)

(assert (=> b!1029548 m!1203931))

(assert (=> b!1029560 m!1203929))

(assert (=> b!1029560 m!1203929))

(assert (=> b!1029560 m!1203931))

(declare-fun m!1203933 () Bool)

(assert (=> b!1029558 m!1203933))

(assert (=> b!1029558 m!1203933))

(declare-fun m!1203935 () Bool)

(assert (=> b!1029558 m!1203935))

(assert (=> b!1029558 m!1203929))

(assert (=> b!1029558 m!1203935))

(assert (=> b!1029558 m!1203929))

(declare-fun m!1203937 () Bool)

(assert (=> b!1029558 m!1203937))

(declare-fun m!1203939 () Bool)

(assert (=> b!1029555 m!1203939))

(assert (=> d!295449 m!1203783))

(assert (=> d!295449 m!1203755))

(assert (=> b!1029553 m!1203933))

(assert (=> bm!70886 m!1203783))

(assert (=> b!1029556 m!1203933))

(assert (=> b!1029240 d!295449))

(declare-fun d!295451 () Bool)

(assert (=> d!295451 (= (matchR!1390 r!15766 s!10566) (matchRSpec!653 r!15766 s!10566))))

(declare-fun lt!355810 () Unit!15383)

(declare-fun choose!6553 (Regex!2854 List!10084) Unit!15383)

(assert (=> d!295451 (= lt!355810 (choose!6553 r!15766 s!10566))))

(assert (=> d!295451 (validRegex!1323 r!15766)))

(assert (=> d!295451 (= (mainMatchTheorem!653 r!15766 s!10566) lt!355810)))

(declare-fun bs!247223 () Bool)

(assert (= bs!247223 d!295451))

(assert (=> bs!247223 m!1203759))

(assert (=> bs!247223 m!1203757))

(declare-fun m!1203941 () Bool)

(assert (=> bs!247223 m!1203941))

(assert (=> bs!247223 m!1203755))

(assert (=> b!1029240 d!295451))

(declare-fun bm!70888 () Bool)

(declare-fun call!70895 () Bool)

(declare-fun c!170764 () Bool)

(assert (=> bm!70888 (= call!70895 (validRegex!1323 (ite c!170764 (regOne!6221 r!15766) (regOne!6220 r!15766))))))

(declare-fun b!1029575 () Bool)

(declare-fun e!656516 () Bool)

(declare-fun call!70894 () Bool)

(assert (=> b!1029575 (= e!656516 call!70894)))

(declare-fun c!170763 () Bool)

(declare-fun bm!70889 () Bool)

(declare-fun call!70893 () Bool)

(assert (=> bm!70889 (= call!70893 (validRegex!1323 (ite c!170763 (reg!3183 r!15766) (ite c!170764 (regTwo!6221 r!15766) (regTwo!6220 r!15766)))))))

(declare-fun b!1029576 () Bool)

(declare-fun e!656515 () Bool)

(declare-fun e!656520 () Bool)

(assert (=> b!1029576 (= e!656515 e!656520)))

(assert (=> b!1029576 (= c!170763 (is-Star!2854 r!15766))))

(declare-fun b!1029577 () Bool)

(declare-fun e!656517 () Bool)

(assert (=> b!1029577 (= e!656517 call!70894)))

(declare-fun b!1029578 () Bool)

(declare-fun e!656514 () Bool)

(assert (=> b!1029578 (= e!656514 e!656517)))

(declare-fun res!462589 () Bool)

(assert (=> b!1029578 (=> (not res!462589) (not e!656517))))

(assert (=> b!1029578 (= res!462589 call!70895)))

(declare-fun b!1029579 () Bool)

(declare-fun e!656518 () Bool)

(assert (=> b!1029579 (= e!656518 call!70893)))

(declare-fun d!295453 () Bool)

(declare-fun res!462588 () Bool)

(assert (=> d!295453 (=> res!462588 e!656515)))

(assert (=> d!295453 (= res!462588 (is-ElementMatch!2854 r!15766))))

(assert (=> d!295453 (= (validRegex!1323 r!15766) e!656515)))

(declare-fun b!1029580 () Bool)

(declare-fun e!656519 () Bool)

(assert (=> b!1029580 (= e!656520 e!656519)))

(assert (=> b!1029580 (= c!170764 (is-Union!2854 r!15766))))

(declare-fun b!1029581 () Bool)

(declare-fun res!462590 () Bool)

(assert (=> b!1029581 (=> (not res!462590) (not e!656516))))

(assert (=> b!1029581 (= res!462590 call!70895)))

(assert (=> b!1029581 (= e!656519 e!656516)))

(declare-fun b!1029582 () Bool)

(assert (=> b!1029582 (= e!656520 e!656518)))

(declare-fun res!462591 () Bool)

(assert (=> b!1029582 (= res!462591 (not (nullable!949 (reg!3183 r!15766))))))

(assert (=> b!1029582 (=> (not res!462591) (not e!656518))))

(declare-fun b!1029583 () Bool)

(declare-fun res!462592 () Bool)

(assert (=> b!1029583 (=> res!462592 e!656514)))

(assert (=> b!1029583 (= res!462592 (not (is-Concat!4687 r!15766)))))

(assert (=> b!1029583 (= e!656519 e!656514)))

(declare-fun bm!70890 () Bool)

(assert (=> bm!70890 (= call!70894 call!70893)))

(assert (= (and d!295453 (not res!462588)) b!1029576))

(assert (= (and b!1029576 c!170763) b!1029582))

(assert (= (and b!1029576 (not c!170763)) b!1029580))

(assert (= (and b!1029582 res!462591) b!1029579))

(assert (= (and b!1029580 c!170764) b!1029581))

(assert (= (and b!1029580 (not c!170764)) b!1029583))

(assert (= (and b!1029581 res!462590) b!1029575))

(assert (= (and b!1029583 (not res!462592)) b!1029578))

(assert (= (and b!1029578 res!462589) b!1029577))

(assert (= (or b!1029575 b!1029577) bm!70890))

(assert (= (or b!1029581 b!1029578) bm!70888))

(assert (= (or b!1029579 bm!70890) bm!70889))

(declare-fun m!1203943 () Bool)

(assert (=> bm!70888 m!1203943))

(declare-fun m!1203947 () Bool)

(assert (=> bm!70889 m!1203947))

(declare-fun m!1203949 () Bool)

(assert (=> b!1029582 m!1203949))

(assert (=> start!89600 d!295453))

(declare-fun b!1029584 () Bool)

(declare-fun res!462594 () Bool)

(declare-fun e!656524 () Bool)

(assert (=> b!1029584 (=> (not res!462594) (not e!656524))))

(declare-fun call!70896 () Bool)

(assert (=> b!1029584 (= res!462594 (not call!70896))))

(declare-fun b!1029585 () Bool)

(declare-fun res!462593 () Bool)

(declare-fun e!656523 () Bool)

(assert (=> b!1029585 (=> res!462593 e!656523)))

(assert (=> b!1029585 (= res!462593 (not (isEmpty!6445 (tail!1466 s!10566))))))

(declare-fun b!1029586 () Bool)

(declare-fun e!656522 () Bool)

(assert (=> b!1029586 (= e!656522 e!656523)))

(declare-fun res!462597 () Bool)

(assert (=> b!1029586 (=> res!462597 e!656523)))

(assert (=> b!1029586 (= res!462597 call!70896)))

(declare-fun b!1029587 () Bool)

(declare-fun e!656527 () Bool)

(assert (=> b!1029587 (= e!656527 e!656522)))

(declare-fun res!462595 () Bool)

(assert (=> b!1029587 (=> (not res!462595) (not e!656522))))

(declare-fun lt!355811 () Bool)

(assert (=> b!1029587 (= res!462595 (not lt!355811))))

(declare-fun b!1029588 () Bool)

(declare-fun e!656526 () Bool)

(assert (=> b!1029588 (= e!656526 (not lt!355811))))

(declare-fun b!1029589 () Bool)

(declare-fun e!656521 () Bool)

(assert (=> b!1029589 (= e!656521 e!656526)))

(declare-fun c!170766 () Bool)

(assert (=> b!1029589 (= c!170766 (is-EmptyLang!2854 lt!355743))))

(declare-fun b!1029590 () Bool)

(assert (=> b!1029590 (= e!656524 (= (head!1904 s!10566) (c!170705 lt!355743)))))

(declare-fun b!1029591 () Bool)

(declare-fun res!462599 () Bool)

(assert (=> b!1029591 (=> res!462599 e!656527)))

(assert (=> b!1029591 (= res!462599 (not (is-ElementMatch!2854 lt!355743)))))

(assert (=> b!1029591 (= e!656526 e!656527)))

(declare-fun d!295455 () Bool)

(assert (=> d!295455 e!656521))

(declare-fun c!170767 () Bool)

(assert (=> d!295455 (= c!170767 (is-EmptyExpr!2854 lt!355743))))

(declare-fun e!656525 () Bool)

(assert (=> d!295455 (= lt!355811 e!656525)))

(declare-fun c!170765 () Bool)

(assert (=> d!295455 (= c!170765 (isEmpty!6445 s!10566))))

(assert (=> d!295455 (validRegex!1323 lt!355743)))

(assert (=> d!295455 (= (matchR!1390 lt!355743 s!10566) lt!355811)))

(declare-fun b!1029592 () Bool)

(assert (=> b!1029592 (= e!656525 (nullable!949 lt!355743))))

(declare-fun b!1029593 () Bool)

(assert (=> b!1029593 (= e!656523 (not (= (head!1904 s!10566) (c!170705 lt!355743))))))

(declare-fun b!1029594 () Bool)

(assert (=> b!1029594 (= e!656521 (= lt!355811 call!70896))))

(declare-fun b!1029595 () Bool)

(assert (=> b!1029595 (= e!656525 (matchR!1390 (derivativeStep!750 lt!355743 (head!1904 s!10566)) (tail!1466 s!10566)))))

(declare-fun bm!70891 () Bool)

(assert (=> bm!70891 (= call!70896 (isEmpty!6445 s!10566))))

(declare-fun b!1029596 () Bool)

(declare-fun res!462596 () Bool)

(assert (=> b!1029596 (=> res!462596 e!656527)))

(assert (=> b!1029596 (= res!462596 e!656524)))

(declare-fun res!462600 () Bool)

(assert (=> b!1029596 (=> (not res!462600) (not e!656524))))

(assert (=> b!1029596 (= res!462600 lt!355811)))

(declare-fun b!1029597 () Bool)

(declare-fun res!462598 () Bool)

(assert (=> b!1029597 (=> (not res!462598) (not e!656524))))

(assert (=> b!1029597 (= res!462598 (isEmpty!6445 (tail!1466 s!10566)))))

(assert (= (and d!295455 c!170765) b!1029592))

(assert (= (and d!295455 (not c!170765)) b!1029595))

(assert (= (and d!295455 c!170767) b!1029594))

(assert (= (and d!295455 (not c!170767)) b!1029589))

(assert (= (and b!1029589 c!170766) b!1029588))

(assert (= (and b!1029589 (not c!170766)) b!1029591))

(assert (= (and b!1029591 (not res!462599)) b!1029596))

(assert (= (and b!1029596 res!462600) b!1029584))

(assert (= (and b!1029584 res!462594) b!1029597))

(assert (= (and b!1029597 res!462598) b!1029590))

(assert (= (and b!1029596 (not res!462596)) b!1029587))

(assert (= (and b!1029587 res!462595) b!1029586))

(assert (= (and b!1029586 (not res!462597)) b!1029585))

(assert (= (and b!1029585 (not res!462593)) b!1029593))

(assert (= (or b!1029594 b!1029584 b!1029586) bm!70891))

(assert (=> b!1029585 m!1203929))

(assert (=> b!1029585 m!1203929))

(assert (=> b!1029585 m!1203931))

(assert (=> b!1029597 m!1203929))

(assert (=> b!1029597 m!1203929))

(assert (=> b!1029597 m!1203931))

(assert (=> b!1029595 m!1203933))

(assert (=> b!1029595 m!1203933))

(declare-fun m!1203959 () Bool)

(assert (=> b!1029595 m!1203959))

(assert (=> b!1029595 m!1203929))

(assert (=> b!1029595 m!1203959))

(assert (=> b!1029595 m!1203929))

(declare-fun m!1203961 () Bool)

(assert (=> b!1029595 m!1203961))

(declare-fun m!1203963 () Bool)

(assert (=> b!1029592 m!1203963))

(assert (=> d!295455 m!1203783))

(declare-fun m!1203965 () Bool)

(assert (=> d!295455 m!1203965))

(assert (=> b!1029590 m!1203933))

(assert (=> bm!70891 m!1203783))

(assert (=> b!1029593 m!1203933))

(assert (=> b!1029249 d!295455))

(declare-fun b!1029612 () Bool)

(declare-fun res!462610 () Bool)

(declare-fun e!656538 () Bool)

(assert (=> b!1029612 (=> (not res!462610) (not e!656538))))

(declare-fun call!70898 () Bool)

(assert (=> b!1029612 (= res!462610 (not call!70898))))

(declare-fun b!1029613 () Bool)

(declare-fun res!462609 () Bool)

(declare-fun e!656537 () Bool)

(assert (=> b!1029613 (=> res!462609 e!656537)))

(assert (=> b!1029613 (= res!462609 (not (isEmpty!6445 (tail!1466 s!10566))))))

(declare-fun b!1029614 () Bool)

(declare-fun e!656536 () Bool)

(assert (=> b!1029614 (= e!656536 e!656537)))

(declare-fun res!462613 () Bool)

(assert (=> b!1029614 (=> res!462613 e!656537)))

(assert (=> b!1029614 (= res!462613 call!70898)))

(declare-fun b!1029615 () Bool)

(declare-fun e!656541 () Bool)

(assert (=> b!1029615 (= e!656541 e!656536)))

(declare-fun res!462611 () Bool)

(assert (=> b!1029615 (=> (not res!462611) (not e!656536))))

(declare-fun lt!355813 () Bool)

(assert (=> b!1029615 (= res!462611 (not lt!355813))))

(declare-fun b!1029616 () Bool)

(declare-fun e!656540 () Bool)

(assert (=> b!1029616 (= e!656540 (not lt!355813))))

(declare-fun b!1029617 () Bool)

(declare-fun e!656535 () Bool)

(assert (=> b!1029617 (= e!656535 e!656540)))

(declare-fun c!170772 () Bool)

(assert (=> b!1029617 (= c!170772 (is-EmptyLang!2854 (regOne!6220 r!15766)))))

(declare-fun b!1029618 () Bool)

(assert (=> b!1029618 (= e!656538 (= (head!1904 s!10566) (c!170705 (regOne!6220 r!15766))))))

(declare-fun b!1029619 () Bool)

(declare-fun res!462615 () Bool)

(assert (=> b!1029619 (=> res!462615 e!656541)))

(assert (=> b!1029619 (= res!462615 (not (is-ElementMatch!2854 (regOne!6220 r!15766))))))

(assert (=> b!1029619 (= e!656540 e!656541)))

(declare-fun d!295459 () Bool)

(assert (=> d!295459 e!656535))

(declare-fun c!170773 () Bool)

(assert (=> d!295459 (= c!170773 (is-EmptyExpr!2854 (regOne!6220 r!15766)))))

(declare-fun e!656539 () Bool)

(assert (=> d!295459 (= lt!355813 e!656539)))

(declare-fun c!170771 () Bool)

(assert (=> d!295459 (= c!170771 (isEmpty!6445 s!10566))))

(assert (=> d!295459 (validRegex!1323 (regOne!6220 r!15766))))

(assert (=> d!295459 (= (matchR!1390 (regOne!6220 r!15766) s!10566) lt!355813)))

(declare-fun b!1029620 () Bool)

(assert (=> b!1029620 (= e!656539 (nullable!949 (regOne!6220 r!15766)))))

(declare-fun b!1029621 () Bool)

(assert (=> b!1029621 (= e!656537 (not (= (head!1904 s!10566) (c!170705 (regOne!6220 r!15766)))))))

(declare-fun b!1029622 () Bool)

(assert (=> b!1029622 (= e!656535 (= lt!355813 call!70898))))

(declare-fun b!1029623 () Bool)

(assert (=> b!1029623 (= e!656539 (matchR!1390 (derivativeStep!750 (regOne!6220 r!15766) (head!1904 s!10566)) (tail!1466 s!10566)))))

(declare-fun bm!70893 () Bool)

(assert (=> bm!70893 (= call!70898 (isEmpty!6445 s!10566))))

(declare-fun b!1029624 () Bool)

(declare-fun res!462612 () Bool)

(assert (=> b!1029624 (=> res!462612 e!656541)))

(assert (=> b!1029624 (= res!462612 e!656538)))

(declare-fun res!462616 () Bool)

(assert (=> b!1029624 (=> (not res!462616) (not e!656538))))

(assert (=> b!1029624 (= res!462616 lt!355813)))

(declare-fun b!1029625 () Bool)

(declare-fun res!462614 () Bool)

(assert (=> b!1029625 (=> (not res!462614) (not e!656538))))

(assert (=> b!1029625 (= res!462614 (isEmpty!6445 (tail!1466 s!10566)))))

(assert (= (and d!295459 c!170771) b!1029620))

(assert (= (and d!295459 (not c!170771)) b!1029623))

(assert (= (and d!295459 c!170773) b!1029622))

(assert (= (and d!295459 (not c!170773)) b!1029617))

(assert (= (and b!1029617 c!170772) b!1029616))

(assert (= (and b!1029617 (not c!170772)) b!1029619))

(assert (= (and b!1029619 (not res!462615)) b!1029624))

(assert (= (and b!1029624 res!462616) b!1029612))

(assert (= (and b!1029612 res!462610) b!1029625))

(assert (= (and b!1029625 res!462614) b!1029618))

(assert (= (and b!1029624 (not res!462612)) b!1029615))

(assert (= (and b!1029615 res!462611) b!1029614))

(assert (= (and b!1029614 (not res!462613)) b!1029613))

(assert (= (and b!1029613 (not res!462609)) b!1029621))

(assert (= (or b!1029622 b!1029612 b!1029614) bm!70893))

(assert (=> b!1029613 m!1203929))

(assert (=> b!1029613 m!1203929))

(assert (=> b!1029613 m!1203931))

(assert (=> b!1029625 m!1203929))

(assert (=> b!1029625 m!1203929))

(assert (=> b!1029625 m!1203931))

(assert (=> b!1029623 m!1203933))

(assert (=> b!1029623 m!1203933))

(declare-fun m!1203967 () Bool)

(assert (=> b!1029623 m!1203967))

(assert (=> b!1029623 m!1203929))

(assert (=> b!1029623 m!1203967))

(assert (=> b!1029623 m!1203929))

(declare-fun m!1203969 () Bool)

(assert (=> b!1029623 m!1203969))

(declare-fun m!1203971 () Bool)

(assert (=> b!1029620 m!1203971))

(assert (=> d!295459 m!1203783))

(assert (=> d!295459 m!1203789))

(assert (=> b!1029618 m!1203933))

(assert (=> bm!70893 m!1203783))

(assert (=> b!1029621 m!1203933))

(assert (=> b!1029249 d!295459))

(declare-fun bm!70904 () Bool)

(declare-fun call!70912 () Regex!2854)

(declare-fun call!70909 () Regex!2854)

(assert (=> bm!70904 (= call!70912 call!70909)))

(declare-fun d!295461 () Bool)

(declare-fun e!656557 () Bool)

(assert (=> d!295461 e!656557))

(declare-fun res!462619 () Bool)

(assert (=> d!295461 (=> (not res!462619) (not e!656557))))

(declare-fun lt!355816 () Regex!2854)

(assert (=> d!295461 (= res!462619 (validRegex!1323 lt!355816))))

(declare-fun e!656556 () Regex!2854)

(assert (=> d!295461 (= lt!355816 e!656556)))

(declare-fun c!170786 () Bool)

(assert (=> d!295461 (= c!170786 (and (is-Concat!4687 (regOne!6220 r!15766)) (is-EmptyExpr!2854 (regOne!6220 (regOne!6220 r!15766)))))))

(assert (=> d!295461 (validRegex!1323 (regOne!6220 r!15766))))

(assert (=> d!295461 (= (removeUselessConcat!411 (regOne!6220 r!15766)) lt!355816)))

(declare-fun bm!70905 () Bool)

(declare-fun c!170788 () Bool)

(declare-fun call!70910 () Regex!2854)

(assert (=> bm!70905 (= call!70910 (removeUselessConcat!411 (ite c!170786 (regTwo!6220 (regOne!6220 r!15766)) (ite c!170788 (regOne!6220 (regOne!6220 r!15766)) (regOne!6221 (regOne!6220 r!15766))))))))

(declare-fun b!1029648 () Bool)

(declare-fun e!656554 () Regex!2854)

(declare-fun e!656559 () Regex!2854)

(assert (=> b!1029648 (= e!656554 e!656559)))

(declare-fun c!170784 () Bool)

(assert (=> b!1029648 (= c!170784 (is-Union!2854 (regOne!6220 r!15766)))))

(declare-fun b!1029649 () Bool)

(declare-fun call!70913 () Regex!2854)

(assert (=> b!1029649 (= e!656554 (Concat!4687 call!70913 call!70909))))

(declare-fun b!1029650 () Bool)

(declare-fun e!656555 () Regex!2854)

(declare-fun call!70911 () Regex!2854)

(assert (=> b!1029650 (= e!656555 call!70911)))

(declare-fun b!1029651 () Bool)

(declare-fun e!656558 () Regex!2854)

(assert (=> b!1029651 (= e!656558 (regOne!6220 r!15766))))

(declare-fun b!1029652 () Bool)

(assert (=> b!1029652 (= e!656556 call!70910)))

(declare-fun bm!70906 () Bool)

(assert (=> bm!70906 (= call!70913 call!70910)))

(declare-fun bm!70907 () Bool)

(assert (=> bm!70907 (= call!70909 call!70911)))

(declare-fun b!1029653 () Bool)

(assert (=> b!1029653 (= c!170788 (is-Concat!4687 (regOne!6220 r!15766)))))

(assert (=> b!1029653 (= e!656555 e!656554)))

(declare-fun b!1029654 () Bool)

(assert (=> b!1029654 (= e!656556 e!656555)))

(declare-fun c!170787 () Bool)

(assert (=> b!1029654 (= c!170787 (and (is-Concat!4687 (regOne!6220 r!15766)) (is-EmptyExpr!2854 (regTwo!6220 (regOne!6220 r!15766)))))))

(declare-fun b!1029655 () Bool)

(declare-fun c!170785 () Bool)

(assert (=> b!1029655 (= c!170785 (is-Star!2854 (regOne!6220 r!15766)))))

(assert (=> b!1029655 (= e!656559 e!656558)))

(declare-fun b!1029656 () Bool)

(assert (=> b!1029656 (= e!656559 (Union!2854 call!70913 call!70912))))

(declare-fun b!1029657 () Bool)

(assert (=> b!1029657 (= e!656558 (Star!2854 call!70912))))

(declare-fun b!1029658 () Bool)

(assert (=> b!1029658 (= e!656557 (= (nullable!949 lt!355816) (nullable!949 (regOne!6220 r!15766))))))

(declare-fun bm!70908 () Bool)

(assert (=> bm!70908 (= call!70911 (removeUselessConcat!411 (ite c!170787 (regOne!6220 (regOne!6220 r!15766)) (ite c!170788 (regTwo!6220 (regOne!6220 r!15766)) (ite c!170784 (regTwo!6221 (regOne!6220 r!15766)) (reg!3183 (regOne!6220 r!15766)))))))))

(assert (= (and d!295461 c!170786) b!1029652))

(assert (= (and d!295461 (not c!170786)) b!1029654))

(assert (= (and b!1029654 c!170787) b!1029650))

(assert (= (and b!1029654 (not c!170787)) b!1029653))

(assert (= (and b!1029653 c!170788) b!1029649))

(assert (= (and b!1029653 (not c!170788)) b!1029648))

(assert (= (and b!1029648 c!170784) b!1029656))

(assert (= (and b!1029648 (not c!170784)) b!1029655))

(assert (= (and b!1029655 c!170785) b!1029657))

(assert (= (and b!1029655 (not c!170785)) b!1029651))

(assert (= (or b!1029656 b!1029657) bm!70904))

(assert (= (or b!1029649 bm!70904) bm!70907))

(assert (= (or b!1029649 b!1029656) bm!70906))

(assert (= (or b!1029650 bm!70907) bm!70908))

(assert (= (or b!1029652 bm!70906) bm!70905))

(assert (= (and d!295461 res!462619) b!1029658))

(declare-fun m!1203979 () Bool)

(assert (=> d!295461 m!1203979))

(assert (=> d!295461 m!1203789))

(declare-fun m!1203981 () Bool)

(assert (=> bm!70905 m!1203981))

(declare-fun m!1203983 () Bool)

(assert (=> b!1029658 m!1203983))

(assert (=> b!1029658 m!1203971))

(declare-fun m!1203985 () Bool)

(assert (=> bm!70908 m!1203985))

(assert (=> b!1029249 d!295461))

(declare-fun d!295465 () Bool)

(assert (=> d!295465 (= (matchR!1390 (regOne!6220 r!15766) s!10566) (matchR!1390 (removeUselessConcat!411 (regOne!6220 r!15766)) s!10566))))

(declare-fun lt!355821 () Unit!15383)

(declare-fun choose!6554 (Regex!2854 List!10084) Unit!15383)

(assert (=> d!295465 (= lt!355821 (choose!6554 (regOne!6220 r!15766) s!10566))))

(assert (=> d!295465 (validRegex!1323 (regOne!6220 r!15766))))

(assert (=> d!295465 (= (lemmaRemoveUselessConcatSound!249 (regOne!6220 r!15766) s!10566) lt!355821)))

(declare-fun bs!247224 () Bool)

(assert (= bs!247224 d!295465))

(assert (=> bs!247224 m!1203789))

(assert (=> bs!247224 m!1203769))

(declare-fun m!1203987 () Bool)

(assert (=> bs!247224 m!1203987))

(assert (=> bs!247224 m!1203767))

(assert (=> bs!247224 m!1203769))

(declare-fun m!1203989 () Bool)

(assert (=> bs!247224 m!1203989))

(assert (=> b!1029249 d!295465))

(declare-fun b!1029689 () Bool)

(declare-fun e!656578 () Bool)

(declare-fun e!656579 () Bool)

(assert (=> b!1029689 (= e!656578 e!656579)))

(declare-fun res!462630 () Bool)

(assert (=> b!1029689 (=> (not res!462630) (not e!656579))))

(assert (=> b!1029689 (= res!462630 (not (is-Nil!10068 s!10566)))))

(declare-fun d!295467 () Bool)

(declare-fun e!656580 () Bool)

(assert (=> d!295467 e!656580))

(declare-fun res!462632 () Bool)

(assert (=> d!295467 (=> res!462632 e!656580)))

(declare-fun lt!355824 () Bool)

(assert (=> d!295467 (= res!462632 (not lt!355824))))

(assert (=> d!295467 (= lt!355824 e!656578)))

(declare-fun res!462633 () Bool)

(assert (=> d!295467 (=> res!462633 e!656578)))

(assert (=> d!295467 (= res!462633 (is-Nil!10068 Nil!10068))))

(assert (=> d!295467 (= (isPrefix!1012 Nil!10068 s!10566) lt!355824)))

(declare-fun b!1029691 () Bool)

(assert (=> b!1029691 (= e!656579 (isPrefix!1012 (tail!1466 Nil!10068) (tail!1466 s!10566)))))

(declare-fun b!1029692 () Bool)

(assert (=> b!1029692 (= e!656580 (>= (size!7989 s!10566) (size!7989 Nil!10068)))))

(declare-fun b!1029690 () Bool)

(declare-fun res!462631 () Bool)

(assert (=> b!1029690 (=> (not res!462631) (not e!656579))))

(assert (=> b!1029690 (= res!462631 (= (head!1904 Nil!10068) (head!1904 s!10566)))))

(assert (= (and d!295467 (not res!462633)) b!1029689))

(assert (= (and b!1029689 res!462630) b!1029690))

(assert (= (and b!1029690 res!462631) b!1029691))

(assert (= (and d!295467 (not res!462632)) b!1029692))

(declare-fun m!1203991 () Bool)

(assert (=> b!1029691 m!1203991))

(assert (=> b!1029691 m!1203929))

(assert (=> b!1029691 m!1203991))

(assert (=> b!1029691 m!1203929))

(declare-fun m!1203993 () Bool)

(assert (=> b!1029691 m!1203993))

(assert (=> b!1029692 m!1203845))

(assert (=> b!1029692 m!1203847))

(declare-fun m!1203995 () Bool)

(assert (=> b!1029690 m!1203995))

(assert (=> b!1029690 m!1203933))

(assert (=> b!1029244 d!295467))

(declare-fun b!1029697 () Bool)

(declare-fun e!656583 () Bool)

(declare-fun tp!312023 () Bool)

(assert (=> b!1029697 (= e!656583 (and tp_is_empty!5351 tp!312023))))

(assert (=> b!1029248 (= tp!312002 e!656583)))

(assert (= (and b!1029248 (is-Cons!10068 (t!101130 s!10566))) b!1029697))

(declare-fun b!1029711 () Bool)

(declare-fun e!656586 () Bool)

(declare-fun tp!312038 () Bool)

(declare-fun tp!312034 () Bool)

(assert (=> b!1029711 (= e!656586 (and tp!312038 tp!312034))))

(assert (=> b!1029246 (= tp!311997 e!656586)))

(declare-fun b!1029708 () Bool)

(assert (=> b!1029708 (= e!656586 tp_is_empty!5351)))

(declare-fun b!1029709 () Bool)

(declare-fun tp!312035 () Bool)

(declare-fun tp!312037 () Bool)

(assert (=> b!1029709 (= e!656586 (and tp!312035 tp!312037))))

(declare-fun b!1029710 () Bool)

(declare-fun tp!312036 () Bool)

(assert (=> b!1029710 (= e!656586 tp!312036)))

(assert (= (and b!1029246 (is-ElementMatch!2854 (regOne!6221 r!15766))) b!1029708))

(assert (= (and b!1029246 (is-Concat!4687 (regOne!6221 r!15766))) b!1029709))

(assert (= (and b!1029246 (is-Star!2854 (regOne!6221 r!15766))) b!1029710))

(assert (= (and b!1029246 (is-Union!2854 (regOne!6221 r!15766))) b!1029711))

(declare-fun b!1029715 () Bool)

(declare-fun e!656587 () Bool)

(declare-fun tp!312043 () Bool)

(declare-fun tp!312039 () Bool)

(assert (=> b!1029715 (= e!656587 (and tp!312043 tp!312039))))

(assert (=> b!1029246 (= tp!312001 e!656587)))

(declare-fun b!1029712 () Bool)

(assert (=> b!1029712 (= e!656587 tp_is_empty!5351)))

(declare-fun b!1029713 () Bool)

(declare-fun tp!312040 () Bool)

(declare-fun tp!312042 () Bool)

(assert (=> b!1029713 (= e!656587 (and tp!312040 tp!312042))))

(declare-fun b!1029714 () Bool)

(declare-fun tp!312041 () Bool)

(assert (=> b!1029714 (= e!656587 tp!312041)))

(assert (= (and b!1029246 (is-ElementMatch!2854 (regTwo!6221 r!15766))) b!1029712))

(assert (= (and b!1029246 (is-Concat!4687 (regTwo!6221 r!15766))) b!1029713))

(assert (= (and b!1029246 (is-Star!2854 (regTwo!6221 r!15766))) b!1029714))

(assert (= (and b!1029246 (is-Union!2854 (regTwo!6221 r!15766))) b!1029715))

(declare-fun b!1029719 () Bool)

(declare-fun e!656588 () Bool)

(declare-fun tp!312048 () Bool)

(declare-fun tp!312044 () Bool)

(assert (=> b!1029719 (= e!656588 (and tp!312048 tp!312044))))

(assert (=> b!1029243 (= tp!312000 e!656588)))

(declare-fun b!1029716 () Bool)

(assert (=> b!1029716 (= e!656588 tp_is_empty!5351)))

(declare-fun b!1029717 () Bool)

(declare-fun tp!312045 () Bool)

(declare-fun tp!312047 () Bool)

(assert (=> b!1029717 (= e!656588 (and tp!312045 tp!312047))))

(declare-fun b!1029718 () Bool)

(declare-fun tp!312046 () Bool)

(assert (=> b!1029718 (= e!656588 tp!312046)))

(assert (= (and b!1029243 (is-ElementMatch!2854 (reg!3183 r!15766))) b!1029716))

(assert (= (and b!1029243 (is-Concat!4687 (reg!3183 r!15766))) b!1029717))

(assert (= (and b!1029243 (is-Star!2854 (reg!3183 r!15766))) b!1029718))

(assert (= (and b!1029243 (is-Union!2854 (reg!3183 r!15766))) b!1029719))

(declare-fun b!1029723 () Bool)

(declare-fun e!656589 () Bool)

(declare-fun tp!312053 () Bool)

(declare-fun tp!312049 () Bool)

(assert (=> b!1029723 (= e!656589 (and tp!312053 tp!312049))))

(assert (=> b!1029238 (= tp!311998 e!656589)))

(declare-fun b!1029720 () Bool)

(assert (=> b!1029720 (= e!656589 tp_is_empty!5351)))

(declare-fun b!1029721 () Bool)

(declare-fun tp!312050 () Bool)

(declare-fun tp!312052 () Bool)

(assert (=> b!1029721 (= e!656589 (and tp!312050 tp!312052))))

(declare-fun b!1029722 () Bool)

(declare-fun tp!312051 () Bool)

(assert (=> b!1029722 (= e!656589 tp!312051)))

(assert (= (and b!1029238 (is-ElementMatch!2854 (regOne!6220 r!15766))) b!1029720))

(assert (= (and b!1029238 (is-Concat!4687 (regOne!6220 r!15766))) b!1029721))

(assert (= (and b!1029238 (is-Star!2854 (regOne!6220 r!15766))) b!1029722))

(assert (= (and b!1029238 (is-Union!2854 (regOne!6220 r!15766))) b!1029723))

(declare-fun b!1029727 () Bool)

(declare-fun e!656590 () Bool)

(declare-fun tp!312058 () Bool)

(declare-fun tp!312054 () Bool)

(assert (=> b!1029727 (= e!656590 (and tp!312058 tp!312054))))

(assert (=> b!1029238 (= tp!311999 e!656590)))

(declare-fun b!1029724 () Bool)

(assert (=> b!1029724 (= e!656590 tp_is_empty!5351)))

(declare-fun b!1029725 () Bool)

(declare-fun tp!312055 () Bool)

(declare-fun tp!312057 () Bool)

(assert (=> b!1029725 (= e!656590 (and tp!312055 tp!312057))))

(declare-fun b!1029726 () Bool)

(declare-fun tp!312056 () Bool)

(assert (=> b!1029726 (= e!656590 tp!312056)))

(assert (= (and b!1029238 (is-ElementMatch!2854 (regTwo!6220 r!15766))) b!1029724))

(assert (= (and b!1029238 (is-Concat!4687 (regTwo!6220 r!15766))) b!1029725))

(assert (= (and b!1029238 (is-Star!2854 (regTwo!6220 r!15766))) b!1029726))

(assert (= (and b!1029238 (is-Union!2854 (regTwo!6220 r!15766))) b!1029727))

(push 1)

(assert (not b!1029709))

(assert (not b!1029620))

(assert (not bm!70893))

(assert (not b!1029385))

(assert (not bm!70861))

(assert (not b!1029555))

(assert (not b!1029590))

(assert (not d!295461))

(assert (not bm!70891))

(assert (not b!1029592))

(assert (not d!295421))

(assert (not bm!70880))

(assert (not b!1029382))

(assert (not b!1029725))

(assert (not bm!70905))

(assert (not b!1029346))

(assert (not b!1029718))

(assert (not b!1029379))

(assert (not b!1029719))

(assert (not b!1029582))

(assert (not b!1029722))

(assert (not b!1029692))

(assert (not b!1029721))

(assert (not b!1029711))

(assert (not b!1029556))

(assert (not b!1029714))

(assert (not b!1029560))

(assert (not d!295423))

(assert (not b!1029723))

(assert (not b!1029691))

(assert (not d!295451))

(assert (not b!1029335))

(assert (not b!1029690))

(assert (not b!1029727))

(assert (not b!1029489))

(assert (not b!1029710))

(assert (not b!1029585))

(assert (not b!1029713))

(assert (not bm!70889))

(assert (not b!1029480))

(assert (not d!295435))

(assert (not bm!70862))

(assert (not d!295459))

(assert (not d!295431))

(assert (not b!1029621))

(assert (not b!1029618))

(assert (not b!1029726))

(assert (not b!1029613))

(assert (not b!1029717))

(assert tp_is_empty!5351)

(assert (not d!295449))

(assert (not b!1029386))

(assert (not bm!70886))

(assert (not b!1029553))

(assert (not b!1029380))

(assert (not b!1029625))

(assert (not d!295465))

(assert (not b!1029623))

(assert (not b!1029347))

(assert (not b!1029597))

(assert (not b!1029715))

(assert (not b!1029548))

(assert (not bm!70908))

(assert (not d!295433))

(assert (not b!1029595))

(assert (not b!1029558))

(assert (not d!295419))

(assert (not d!295441))

(assert (not d!295455))

(assert (not b!1029658))

(assert (not bm!70881))

(assert (not bm!70888))

(assert (not b!1029383))

(assert (not b!1029697))

(assert (not b!1029593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

