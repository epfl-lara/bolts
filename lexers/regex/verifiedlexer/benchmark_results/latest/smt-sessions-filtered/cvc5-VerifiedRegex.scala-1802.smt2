; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!89848 () Bool)

(assert start!89848)

(declare-fun b!1032266 () Bool)

(assert (=> b!1032266 true))

(assert (=> b!1032266 true))

(declare-fun lambda!37050 () Int)

(declare-fun lambda!37049 () Int)

(assert (=> b!1032266 (not (= lambda!37050 lambda!37049))))

(assert (=> b!1032266 true))

(assert (=> b!1032266 true))

(declare-fun res!463749 () Bool)

(declare-fun e!657862 () Bool)

(assert (=> start!89848 (=> (not res!463749) (not e!657862))))

(declare-datatypes ((C!6294 0))(
  ( (C!6295 (val!3395 Int)) )
))
(declare-datatypes ((Regex!2862 0))(
  ( (ElementMatch!2862 (c!171269 C!6294)) (Concat!4695 (regOne!6236 Regex!2862) (regTwo!6236 Regex!2862)) (EmptyExpr!2862) (Star!2862 (reg!3191 Regex!2862)) (EmptyLang!2862) (Union!2862 (regOne!6237 Regex!2862) (regTwo!6237 Regex!2862)) )
))
(declare-fun r!15766 () Regex!2862)

(declare-fun validRegex!1331 (Regex!2862) Bool)

(assert (=> start!89848 (= res!463749 (validRegex!1331 r!15766))))

(assert (=> start!89848 e!657862))

(declare-fun e!657863 () Bool)

(assert (=> start!89848 e!657863))

(declare-fun e!657865 () Bool)

(assert (=> start!89848 e!657865))

(declare-fun b!1032260 () Bool)

(declare-fun tp!312624 () Bool)

(declare-fun tp!312625 () Bool)

(assert (=> b!1032260 (= e!657863 (and tp!312624 tp!312625))))

(declare-fun b!1032261 () Bool)

(declare-fun tp!312626 () Bool)

(declare-fun tp!312621 () Bool)

(assert (=> b!1032261 (= e!657863 (and tp!312626 tp!312621))))

(declare-fun b!1032262 () Bool)

(declare-fun tp!312622 () Bool)

(assert (=> b!1032262 (= e!657863 tp!312622)))

(declare-fun b!1032263 () Bool)

(declare-fun e!657866 () Bool)

(assert (=> b!1032263 (= e!657866 false)))

(declare-fun lt!356250 () Bool)

(assert (=> b!1032263 lt!356250))

(declare-datatypes ((Unit!15399 0))(
  ( (Unit!15400) )
))
(declare-fun lt!356255 () Unit!15399)

(declare-datatypes ((List!10092 0))(
  ( (Nil!10076) (Cons!10076 (h!15477 C!6294) (t!101138 List!10092)) )
))
(declare-fun s!10566 () List!10092)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!7 (Regex!2862 Regex!2862 List!10092 List!10092 List!10092 List!10092 List!10092) Unit!15399)

(assert (=> b!1032263 (= lt!356255 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!7 (regOne!6236 r!15766) EmptyExpr!2862 s!10566 Nil!10076 s!10566 Nil!10076 s!10566))))

(declare-fun b!1032264 () Bool)

(declare-fun e!657867 () Bool)

(assert (=> b!1032264 (= e!657862 (not e!657867))))

(declare-fun res!463747 () Bool)

(assert (=> b!1032264 (=> res!463747 e!657867)))

(declare-fun lt!356249 () Bool)

(assert (=> b!1032264 (= res!463747 (or lt!356249 (and (is-Concat!4695 r!15766) (is-EmptyExpr!2862 (regOne!6236 r!15766))) (not (is-Concat!4695 r!15766)) (not (is-EmptyExpr!2862 (regTwo!6236 r!15766)))))))

(declare-fun matchRSpec!661 (Regex!2862 List!10092) Bool)

(assert (=> b!1032264 (= lt!356249 (matchRSpec!661 r!15766 s!10566))))

(declare-fun matchR!1398 (Regex!2862 List!10092) Bool)

(assert (=> b!1032264 (= lt!356249 (matchR!1398 r!15766 s!10566))))

(declare-fun lt!356247 () Unit!15399)

(declare-fun mainMatchTheorem!661 (Regex!2862 List!10092) Unit!15399)

(assert (=> b!1032264 (= lt!356247 (mainMatchTheorem!661 r!15766 s!10566))))

(declare-fun b!1032265 () Bool)

(declare-fun e!657864 () Bool)

(assert (=> b!1032265 (= e!657864 e!657866)))

(declare-fun res!463748 () Bool)

(assert (=> b!1032265 (=> res!463748 e!657866)))

(declare-fun lt!356251 () Bool)

(declare-fun lt!356246 () Bool)

(assert (=> b!1032265 (= res!463748 (or (not lt!356251) (not lt!356246)))))

(assert (=> b!1032265 (= lt!356246 lt!356251)))

(declare-fun lt!356252 () Regex!2862)

(assert (=> b!1032265 (= lt!356251 (matchR!1398 lt!356252 s!10566))))

(assert (=> b!1032265 (= lt!356246 (matchR!1398 (regOne!6236 r!15766) s!10566))))

(declare-fun removeUselessConcat!419 (Regex!2862) Regex!2862)

(assert (=> b!1032265 (= lt!356252 (removeUselessConcat!419 (regOne!6236 r!15766)))))

(declare-fun lt!356253 () Unit!15399)

(declare-fun lemmaRemoveUselessConcatSound!257 (Regex!2862 List!10092) Unit!15399)

(assert (=> b!1032265 (= lt!356253 (lemmaRemoveUselessConcatSound!257 (regOne!6236 r!15766) s!10566))))

(assert (=> b!1032266 (= e!657867 e!657864)))

(declare-fun res!463745 () Bool)

(assert (=> b!1032266 (=> res!463745 e!657864)))

(declare-fun isEmpty!6461 (List!10092) Bool)

(assert (=> b!1032266 (= res!463745 (isEmpty!6461 s!10566))))

(declare-fun Exists!589 (Int) Bool)

(assert (=> b!1032266 (= (Exists!589 lambda!37049) (Exists!589 lambda!37050))))

(declare-fun lt!356248 () Unit!15399)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!285 (Regex!2862 Regex!2862 List!10092) Unit!15399)

(assert (=> b!1032266 (= lt!356248 (lemmaExistCutMatchRandMatchRSpecEquivalent!285 (regOne!6236 r!15766) EmptyExpr!2862 s!10566))))

(assert (=> b!1032266 (= lt!356250 (Exists!589 lambda!37049))))

(declare-datatypes ((tuple2!11498 0))(
  ( (tuple2!11499 (_1!6575 List!10092) (_2!6575 List!10092)) )
))
(declare-datatypes ((Option!2391 0))(
  ( (None!2390) (Some!2390 (v!19807 tuple2!11498)) )
))
(declare-fun lt!356256 () Option!2391)

(declare-fun isDefined!2033 (Option!2391) Bool)

(assert (=> b!1032266 (= lt!356250 (isDefined!2033 lt!356256))))

(declare-fun findConcatSeparation!497 (Regex!2862 Regex!2862 List!10092 List!10092 List!10092) Option!2391)

(assert (=> b!1032266 (= lt!356256 (findConcatSeparation!497 (regOne!6236 r!15766) EmptyExpr!2862 Nil!10076 s!10566 s!10566))))

(declare-fun lt!356254 () Unit!15399)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!497 (Regex!2862 Regex!2862 List!10092) Unit!15399)

(assert (=> b!1032266 (= lt!356254 (lemmaFindConcatSeparationEquivalentToExists!497 (regOne!6236 r!15766) EmptyExpr!2862 s!10566))))

(declare-fun b!1032267 () Bool)

(declare-fun tp_is_empty!5367 () Bool)

(declare-fun tp!312623 () Bool)

(assert (=> b!1032267 (= e!657865 (and tp_is_empty!5367 tp!312623))))

(declare-fun b!1032268 () Bool)

(assert (=> b!1032268 (= e!657863 tp_is_empty!5367)))

(declare-fun b!1032269 () Bool)

(declare-fun res!463746 () Bool)

(assert (=> b!1032269 (=> res!463746 e!657864)))

(declare-fun isEmpty!6462 (Option!2391) Bool)

(assert (=> b!1032269 (= res!463746 (not (isEmpty!6462 lt!356256)))))

(assert (= (and start!89848 res!463749) b!1032264))

(assert (= (and b!1032264 (not res!463747)) b!1032266))

(assert (= (and b!1032266 (not res!463745)) b!1032269))

(assert (= (and b!1032269 (not res!463746)) b!1032265))

(assert (= (and b!1032265 (not res!463748)) b!1032263))

(assert (= (and start!89848 (is-ElementMatch!2862 r!15766)) b!1032268))

(assert (= (and start!89848 (is-Concat!4695 r!15766)) b!1032261))

(assert (= (and start!89848 (is-Star!2862 r!15766)) b!1032262))

(assert (= (and start!89848 (is-Union!2862 r!15766)) b!1032260))

(assert (= (and start!89848 (is-Cons!10076 s!10566)) b!1032267))

(declare-fun m!1205377 () Bool)

(assert (=> b!1032269 m!1205377))

(declare-fun m!1205379 () Bool)

(assert (=> start!89848 m!1205379))

(declare-fun m!1205381 () Bool)

(assert (=> b!1032265 m!1205381))

(declare-fun m!1205383 () Bool)

(assert (=> b!1032265 m!1205383))

(declare-fun m!1205385 () Bool)

(assert (=> b!1032265 m!1205385))

(declare-fun m!1205387 () Bool)

(assert (=> b!1032265 m!1205387))

(declare-fun m!1205389 () Bool)

(assert (=> b!1032263 m!1205389))

(declare-fun m!1205391 () Bool)

(assert (=> b!1032266 m!1205391))

(declare-fun m!1205393 () Bool)

(assert (=> b!1032266 m!1205393))

(declare-fun m!1205395 () Bool)

(assert (=> b!1032266 m!1205395))

(declare-fun m!1205397 () Bool)

(assert (=> b!1032266 m!1205397))

(declare-fun m!1205399 () Bool)

(assert (=> b!1032266 m!1205399))

(assert (=> b!1032266 m!1205399))

(declare-fun m!1205401 () Bool)

(assert (=> b!1032266 m!1205401))

(declare-fun m!1205403 () Bool)

(assert (=> b!1032266 m!1205403))

(declare-fun m!1205405 () Bool)

(assert (=> b!1032264 m!1205405))

(declare-fun m!1205407 () Bool)

(assert (=> b!1032264 m!1205407))

(declare-fun m!1205409 () Bool)

(assert (=> b!1032264 m!1205409))

(push 1)

(assert (not b!1032262))

(assert (not b!1032264))

(assert (not b!1032266))

(assert (not b!1032265))

(assert (not start!89848))

(assert (not b!1032267))

(assert tp_is_empty!5367)

(assert (not b!1032263))

(assert (not b!1032261))

(assert (not b!1032269))

(assert (not b!1032260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1032338 () Bool)

(declare-fun e!657908 () Bool)

(declare-fun e!657907 () Bool)

(assert (=> b!1032338 (= e!657908 e!657907)))

(declare-fun c!171276 () Bool)

(assert (=> b!1032338 (= c!171276 (is-Union!2862 r!15766))))

(declare-fun bm!71211 () Bool)

(declare-fun call!71216 () Bool)

(assert (=> bm!71211 (= call!71216 (validRegex!1331 (ite c!171276 (regOne!6237 r!15766) (regOne!6236 r!15766))))))

(declare-fun d!295927 () Bool)

(declare-fun res!463787 () Bool)

(declare-fun e!657912 () Bool)

(assert (=> d!295927 (=> res!463787 e!657912)))

(assert (=> d!295927 (= res!463787 (is-ElementMatch!2862 r!15766))))

(assert (=> d!295927 (= (validRegex!1331 r!15766) e!657912)))

(declare-fun b!1032339 () Bool)

(assert (=> b!1032339 (= e!657912 e!657908)))

(declare-fun c!171275 () Bool)

(assert (=> b!1032339 (= c!171275 (is-Star!2862 r!15766))))

(declare-fun b!1032340 () Bool)

(declare-fun e!657906 () Bool)

(declare-fun call!71218 () Bool)

(assert (=> b!1032340 (= e!657906 call!71218)))

(declare-fun bm!71212 () Bool)

(declare-fun call!71217 () Bool)

(assert (=> bm!71212 (= call!71218 call!71217)))

(declare-fun bm!71213 () Bool)

(assert (=> bm!71213 (= call!71217 (validRegex!1331 (ite c!171275 (reg!3191 r!15766) (ite c!171276 (regTwo!6237 r!15766) (regTwo!6236 r!15766)))))))

(declare-fun b!1032341 () Bool)

(declare-fun res!463788 () Bool)

(declare-fun e!657909 () Bool)

(assert (=> b!1032341 (=> res!463788 e!657909)))

(assert (=> b!1032341 (= res!463788 (not (is-Concat!4695 r!15766)))))

(assert (=> b!1032341 (= e!657907 e!657909)))

(declare-fun b!1032342 () Bool)

(declare-fun e!657910 () Bool)

(assert (=> b!1032342 (= e!657909 e!657910)))

(declare-fun res!463790 () Bool)

(assert (=> b!1032342 (=> (not res!463790) (not e!657910))))

(assert (=> b!1032342 (= res!463790 call!71216)))

(declare-fun b!1032343 () Bool)

(assert (=> b!1032343 (= e!657910 call!71218)))

(declare-fun b!1032344 () Bool)

(declare-fun res!463791 () Bool)

(assert (=> b!1032344 (=> (not res!463791) (not e!657906))))

(assert (=> b!1032344 (= res!463791 call!71216)))

(assert (=> b!1032344 (= e!657907 e!657906)))

(declare-fun b!1032345 () Bool)

(declare-fun e!657911 () Bool)

(assert (=> b!1032345 (= e!657908 e!657911)))

(declare-fun res!463789 () Bool)

(declare-fun nullable!955 (Regex!2862) Bool)

(assert (=> b!1032345 (= res!463789 (not (nullable!955 (reg!3191 r!15766))))))

(assert (=> b!1032345 (=> (not res!463789) (not e!657911))))

(declare-fun b!1032346 () Bool)

(assert (=> b!1032346 (= e!657911 call!71217)))

(assert (= (and d!295927 (not res!463787)) b!1032339))

(assert (= (and b!1032339 c!171275) b!1032345))

(assert (= (and b!1032339 (not c!171275)) b!1032338))

(assert (= (and b!1032345 res!463789) b!1032346))

(assert (= (and b!1032338 c!171276) b!1032344))

(assert (= (and b!1032338 (not c!171276)) b!1032341))

(assert (= (and b!1032344 res!463791) b!1032340))

(assert (= (and b!1032341 (not res!463788)) b!1032342))

(assert (= (and b!1032342 res!463790) b!1032343))

(assert (= (or b!1032340 b!1032343) bm!71212))

(assert (= (or b!1032344 b!1032342) bm!71211))

(assert (= (or b!1032346 bm!71212) bm!71213))

(declare-fun m!1205445 () Bool)

(assert (=> bm!71211 m!1205445))

(declare-fun m!1205447 () Bool)

(assert (=> bm!71213 m!1205447))

(declare-fun m!1205449 () Bool)

(assert (=> b!1032345 m!1205449))

(assert (=> start!89848 d!295927))

(declare-fun d!295931 () Bool)

(assert (=> d!295931 (isDefined!2033 (findConcatSeparation!497 (regOne!6236 r!15766) EmptyExpr!2862 Nil!10076 s!10566 s!10566))))

(declare-fun lt!356292 () Unit!15399)

(declare-fun choose!6574 (Regex!2862 Regex!2862 List!10092 List!10092 List!10092 List!10092 List!10092) Unit!15399)

(assert (=> d!295931 (= lt!356292 (choose!6574 (regOne!6236 r!15766) EmptyExpr!2862 s!10566 Nil!10076 s!10566 Nil!10076 s!10566))))

(assert (=> d!295931 (validRegex!1331 (regOne!6236 r!15766))))

(assert (=> d!295931 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!7 (regOne!6236 r!15766) EmptyExpr!2862 s!10566 Nil!10076 s!10566 Nil!10076 s!10566) lt!356292)))

(declare-fun bs!247442 () Bool)

(assert (= bs!247442 d!295931))

(assert (=> bs!247442 m!1205393))

(assert (=> bs!247442 m!1205393))

(declare-fun m!1205451 () Bool)

(assert (=> bs!247442 m!1205451))

(declare-fun m!1205453 () Bool)

(assert (=> bs!247442 m!1205453))

(declare-fun m!1205455 () Bool)

(assert (=> bs!247442 m!1205455))

(assert (=> b!1032263 d!295931))

(declare-fun d!295933 () Bool)

(assert (=> d!295933 (= (isEmpty!6462 lt!356256) (not (is-Some!2390 lt!356256)))))

(assert (=> b!1032269 d!295933))

(declare-fun bs!247443 () Bool)

(declare-fun b!1032406 () Bool)

(assert (= bs!247443 (and b!1032406 b!1032266)))

(declare-fun lambda!37063 () Int)

(assert (=> bs!247443 (not (= lambda!37063 lambda!37049))))

(assert (=> bs!247443 (not (= lambda!37063 lambda!37050))))

(assert (=> b!1032406 true))

(assert (=> b!1032406 true))

(declare-fun bs!247444 () Bool)

(declare-fun b!1032407 () Bool)

(assert (= bs!247444 (and b!1032407 b!1032266)))

(declare-fun lambda!37064 () Int)

(assert (=> bs!247444 (not (= lambda!37064 lambda!37049))))

(assert (=> bs!247444 (= (= (regTwo!6236 r!15766) EmptyExpr!2862) (= lambda!37064 lambda!37050))))

(declare-fun bs!247445 () Bool)

(assert (= bs!247445 (and b!1032407 b!1032406)))

(assert (=> bs!247445 (not (= lambda!37064 lambda!37063))))

(assert (=> b!1032407 true))

(assert (=> b!1032407 true))

(declare-fun e!657955 () Bool)

(declare-fun call!71232 () Bool)

(assert (=> b!1032406 (= e!657955 call!71232)))

(declare-fun e!657958 () Bool)

(assert (=> b!1032407 (= e!657958 call!71232)))

(declare-fun b!1032408 () Bool)

(declare-fun e!657952 () Bool)

(declare-fun call!71233 () Bool)

(assert (=> b!1032408 (= e!657952 call!71233)))

(declare-fun bm!71227 () Bool)

(assert (=> bm!71227 (= call!71233 (isEmpty!6461 s!10566))))

(declare-fun b!1032409 () Bool)

(declare-fun e!657957 () Bool)

(assert (=> b!1032409 (= e!657952 e!657957)))

(declare-fun res!463824 () Bool)

(assert (=> b!1032409 (= res!463824 (not (is-EmptyLang!2862 r!15766)))))

(assert (=> b!1032409 (=> (not res!463824) (not e!657957))))

(declare-fun b!1032410 () Bool)

(declare-fun e!657954 () Bool)

(assert (=> b!1032410 (= e!657954 e!657958)))

(declare-fun c!171292 () Bool)

(assert (=> b!1032410 (= c!171292 (is-Star!2862 r!15766))))

(declare-fun b!1032411 () Bool)

(declare-fun c!171293 () Bool)

(assert (=> b!1032411 (= c!171293 (is-Union!2862 r!15766))))

(declare-fun e!657953 () Bool)

(assert (=> b!1032411 (= e!657953 e!657954)))

(declare-fun b!1032412 () Bool)

(declare-fun e!657956 () Bool)

(assert (=> b!1032412 (= e!657954 e!657956)))

(declare-fun res!463823 () Bool)

(assert (=> b!1032412 (= res!463823 (matchRSpec!661 (regOne!6237 r!15766) s!10566))))

(assert (=> b!1032412 (=> res!463823 e!657956)))

(declare-fun b!1032413 () Bool)

(declare-fun res!463825 () Bool)

(assert (=> b!1032413 (=> res!463825 e!657955)))

(assert (=> b!1032413 (= res!463825 call!71233)))

(assert (=> b!1032413 (= e!657958 e!657955)))

(declare-fun d!295935 () Bool)

(declare-fun c!171291 () Bool)

(assert (=> d!295935 (= c!171291 (is-EmptyExpr!2862 r!15766))))

(assert (=> d!295935 (= (matchRSpec!661 r!15766 s!10566) e!657952)))

(declare-fun b!1032414 () Bool)

(declare-fun c!171294 () Bool)

(assert (=> b!1032414 (= c!171294 (is-ElementMatch!2862 r!15766))))

(assert (=> b!1032414 (= e!657957 e!657953)))

(declare-fun b!1032415 () Bool)

(assert (=> b!1032415 (= e!657956 (matchRSpec!661 (regTwo!6237 r!15766) s!10566))))

(declare-fun b!1032416 () Bool)

(assert (=> b!1032416 (= e!657953 (= s!10566 (Cons!10076 (c!171269 r!15766) Nil!10076)))))

(declare-fun bm!71228 () Bool)

(assert (=> bm!71228 (= call!71232 (Exists!589 (ite c!171292 lambda!37063 lambda!37064)))))

(assert (= (and d!295935 c!171291) b!1032408))

(assert (= (and d!295935 (not c!171291)) b!1032409))

(assert (= (and b!1032409 res!463824) b!1032414))

(assert (= (and b!1032414 c!171294) b!1032416))

(assert (= (and b!1032414 (not c!171294)) b!1032411))

(assert (= (and b!1032411 c!171293) b!1032412))

(assert (= (and b!1032411 (not c!171293)) b!1032410))

(assert (= (and b!1032412 (not res!463823)) b!1032415))

(assert (= (and b!1032410 c!171292) b!1032413))

(assert (= (and b!1032410 (not c!171292)) b!1032407))

(assert (= (and b!1032413 (not res!463825)) b!1032406))

(assert (= (or b!1032406 b!1032407) bm!71228))

(assert (= (or b!1032408 b!1032413) bm!71227))

(assert (=> bm!71227 m!1205401))

(declare-fun m!1205463 () Bool)

(assert (=> b!1032412 m!1205463))

(declare-fun m!1205465 () Bool)

(assert (=> b!1032415 m!1205465))

(declare-fun m!1205467 () Bool)

(assert (=> bm!71228 m!1205467))

(assert (=> b!1032264 d!295935))

(declare-fun b!1032473 () Bool)

(declare-fun e!657993 () Bool)

(declare-fun head!1910 (List!10092) C!6294)

(assert (=> b!1032473 (= e!657993 (= (head!1910 s!10566) (c!171269 r!15766)))))

(declare-fun d!295939 () Bool)

(declare-fun e!657989 () Bool)

(assert (=> d!295939 e!657989))

(declare-fun c!171309 () Bool)

(assert (=> d!295939 (= c!171309 (is-EmptyExpr!2862 r!15766))))

(declare-fun lt!356297 () Bool)

(declare-fun e!657988 () Bool)

(assert (=> d!295939 (= lt!356297 e!657988)))

(declare-fun c!171307 () Bool)

(assert (=> d!295939 (= c!171307 (isEmpty!6461 s!10566))))

(assert (=> d!295939 (validRegex!1331 r!15766)))

(assert (=> d!295939 (= (matchR!1398 r!15766 s!10566) lt!356297)))

(declare-fun b!1032474 () Bool)

(declare-fun e!657991 () Bool)

(declare-fun e!657992 () Bool)

(assert (=> b!1032474 (= e!657991 e!657992)))

(declare-fun res!463865 () Bool)

(assert (=> b!1032474 (=> res!463865 e!657992)))

(declare-fun call!71238 () Bool)

(assert (=> b!1032474 (= res!463865 call!71238)))

(declare-fun b!1032475 () Bool)

(declare-fun res!463860 () Bool)

(assert (=> b!1032475 (=> (not res!463860) (not e!657993))))

(assert (=> b!1032475 (= res!463860 (not call!71238))))

(declare-fun bm!71233 () Bool)

(assert (=> bm!71233 (= call!71238 (isEmpty!6461 s!10566))))

(declare-fun b!1032476 () Bool)

(declare-fun res!463859 () Bool)

(assert (=> b!1032476 (=> (not res!463859) (not e!657993))))

(declare-fun tail!1472 (List!10092) List!10092)

(assert (=> b!1032476 (= res!463859 (isEmpty!6461 (tail!1472 s!10566)))))

(declare-fun b!1032477 () Bool)

(declare-fun e!657987 () Bool)

(assert (=> b!1032477 (= e!657989 e!657987)))

(declare-fun c!171308 () Bool)

(assert (=> b!1032477 (= c!171308 (is-EmptyLang!2862 r!15766))))

(declare-fun b!1032478 () Bool)

(assert (=> b!1032478 (= e!657992 (not (= (head!1910 s!10566) (c!171269 r!15766))))))

(declare-fun b!1032479 () Bool)

(declare-fun res!463861 () Bool)

(declare-fun e!657990 () Bool)

(assert (=> b!1032479 (=> res!463861 e!657990)))

(assert (=> b!1032479 (= res!463861 (not (is-ElementMatch!2862 r!15766)))))

(assert (=> b!1032479 (= e!657987 e!657990)))

(declare-fun b!1032480 () Bool)

(assert (=> b!1032480 (= e!657990 e!657991)))

(declare-fun res!463864 () Bool)

(assert (=> b!1032480 (=> (not res!463864) (not e!657991))))

(assert (=> b!1032480 (= res!463864 (not lt!356297))))

(declare-fun b!1032481 () Bool)

(assert (=> b!1032481 (= e!657989 (= lt!356297 call!71238))))

(declare-fun b!1032482 () Bool)

(declare-fun derivativeStep!755 (Regex!2862 C!6294) Regex!2862)

(assert (=> b!1032482 (= e!657988 (matchR!1398 (derivativeStep!755 r!15766 (head!1910 s!10566)) (tail!1472 s!10566)))))

(declare-fun b!1032483 () Bool)

(assert (=> b!1032483 (= e!657988 (nullable!955 r!15766))))

(declare-fun b!1032484 () Bool)

(declare-fun res!463863 () Bool)

(assert (=> b!1032484 (=> res!463863 e!657992)))

(assert (=> b!1032484 (= res!463863 (not (isEmpty!6461 (tail!1472 s!10566))))))

(declare-fun b!1032485 () Bool)

(declare-fun res!463858 () Bool)

(assert (=> b!1032485 (=> res!463858 e!657990)))

(assert (=> b!1032485 (= res!463858 e!657993)))

(declare-fun res!463862 () Bool)

(assert (=> b!1032485 (=> (not res!463862) (not e!657993))))

(assert (=> b!1032485 (= res!463862 lt!356297)))

(declare-fun b!1032486 () Bool)

(assert (=> b!1032486 (= e!657987 (not lt!356297))))

(assert (= (and d!295939 c!171307) b!1032483))

(assert (= (and d!295939 (not c!171307)) b!1032482))

(assert (= (and d!295939 c!171309) b!1032481))

(assert (= (and d!295939 (not c!171309)) b!1032477))

(assert (= (and b!1032477 c!171308) b!1032486))

(assert (= (and b!1032477 (not c!171308)) b!1032479))

(assert (= (and b!1032479 (not res!463861)) b!1032485))

(assert (= (and b!1032485 res!463862) b!1032475))

(assert (= (and b!1032475 res!463860) b!1032476))

(assert (= (and b!1032476 res!463859) b!1032473))

(assert (= (and b!1032485 (not res!463858)) b!1032480))

(assert (= (and b!1032480 res!463864) b!1032474))

(assert (= (and b!1032474 (not res!463865)) b!1032484))

(assert (= (and b!1032484 (not res!463863)) b!1032478))

(assert (= (or b!1032481 b!1032474 b!1032475) bm!71233))

(assert (=> bm!71233 m!1205401))

(declare-fun m!1205469 () Bool)

(assert (=> b!1032473 m!1205469))

(assert (=> d!295939 m!1205401))

(assert (=> d!295939 m!1205379))

(declare-fun m!1205471 () Bool)

(assert (=> b!1032476 m!1205471))

(assert (=> b!1032476 m!1205471))

(declare-fun m!1205473 () Bool)

(assert (=> b!1032476 m!1205473))

(assert (=> b!1032478 m!1205469))

(declare-fun m!1205475 () Bool)

(assert (=> b!1032483 m!1205475))

(assert (=> b!1032482 m!1205469))

(assert (=> b!1032482 m!1205469))

(declare-fun m!1205477 () Bool)

(assert (=> b!1032482 m!1205477))

(assert (=> b!1032482 m!1205471))

(assert (=> b!1032482 m!1205477))

(assert (=> b!1032482 m!1205471))

(declare-fun m!1205479 () Bool)

(assert (=> b!1032482 m!1205479))

(assert (=> b!1032484 m!1205471))

(assert (=> b!1032484 m!1205471))

(assert (=> b!1032484 m!1205473))

(assert (=> b!1032264 d!295939))

(declare-fun d!295941 () Bool)

(assert (=> d!295941 (= (matchR!1398 r!15766 s!10566) (matchRSpec!661 r!15766 s!10566))))

(declare-fun lt!356301 () Unit!15399)

(declare-fun choose!6575 (Regex!2862 List!10092) Unit!15399)

(assert (=> d!295941 (= lt!356301 (choose!6575 r!15766 s!10566))))

(assert (=> d!295941 (validRegex!1331 r!15766)))

(assert (=> d!295941 (= (mainMatchTheorem!661 r!15766 s!10566) lt!356301)))

(declare-fun bs!247446 () Bool)

(assert (= bs!247446 d!295941))

(assert (=> bs!247446 m!1205407))

(assert (=> bs!247446 m!1205405))

(declare-fun m!1205481 () Bool)

(assert (=> bs!247446 m!1205481))

(assert (=> bs!247446 m!1205379))

(assert (=> b!1032264 d!295941))

(declare-fun b!1032501 () Bool)

(declare-fun e!658007 () Bool)

(assert (=> b!1032501 (= e!658007 (= (head!1910 s!10566) (c!171269 lt!356252)))))

(declare-fun d!295943 () Bool)

(declare-fun e!658003 () Bool)

(assert (=> d!295943 e!658003))

(declare-fun c!171315 () Bool)

(assert (=> d!295943 (= c!171315 (is-EmptyExpr!2862 lt!356252))))

(declare-fun lt!356302 () Bool)

(declare-fun e!658002 () Bool)

(assert (=> d!295943 (= lt!356302 e!658002)))

(declare-fun c!171313 () Bool)

(assert (=> d!295943 (= c!171313 (isEmpty!6461 s!10566))))

(assert (=> d!295943 (validRegex!1331 lt!356252)))

(assert (=> d!295943 (= (matchR!1398 lt!356252 s!10566) lt!356302)))

(declare-fun b!1032502 () Bool)

(declare-fun e!658005 () Bool)

(declare-fun e!658006 () Bool)

(assert (=> b!1032502 (= e!658005 e!658006)))

(declare-fun res!463881 () Bool)

(assert (=> b!1032502 (=> res!463881 e!658006)))

(declare-fun call!71240 () Bool)

(assert (=> b!1032502 (= res!463881 call!71240)))

(declare-fun b!1032503 () Bool)

(declare-fun res!463876 () Bool)

(assert (=> b!1032503 (=> (not res!463876) (not e!658007))))

(assert (=> b!1032503 (= res!463876 (not call!71240))))

(declare-fun bm!71235 () Bool)

(assert (=> bm!71235 (= call!71240 (isEmpty!6461 s!10566))))

(declare-fun b!1032504 () Bool)

(declare-fun res!463875 () Bool)

(assert (=> b!1032504 (=> (not res!463875) (not e!658007))))

(assert (=> b!1032504 (= res!463875 (isEmpty!6461 (tail!1472 s!10566)))))

(declare-fun b!1032505 () Bool)

(declare-fun e!658001 () Bool)

(assert (=> b!1032505 (= e!658003 e!658001)))

(declare-fun c!171314 () Bool)

(assert (=> b!1032505 (= c!171314 (is-EmptyLang!2862 lt!356252))))

(declare-fun b!1032506 () Bool)

(assert (=> b!1032506 (= e!658006 (not (= (head!1910 s!10566) (c!171269 lt!356252))))))

(declare-fun b!1032507 () Bool)

(declare-fun res!463877 () Bool)

(declare-fun e!658004 () Bool)

(assert (=> b!1032507 (=> res!463877 e!658004)))

(assert (=> b!1032507 (= res!463877 (not (is-ElementMatch!2862 lt!356252)))))

(assert (=> b!1032507 (= e!658001 e!658004)))

(declare-fun b!1032508 () Bool)

(assert (=> b!1032508 (= e!658004 e!658005)))

(declare-fun res!463880 () Bool)

(assert (=> b!1032508 (=> (not res!463880) (not e!658005))))

(assert (=> b!1032508 (= res!463880 (not lt!356302))))

(declare-fun b!1032509 () Bool)

(assert (=> b!1032509 (= e!658003 (= lt!356302 call!71240))))

(declare-fun b!1032510 () Bool)

(assert (=> b!1032510 (= e!658002 (matchR!1398 (derivativeStep!755 lt!356252 (head!1910 s!10566)) (tail!1472 s!10566)))))

(declare-fun b!1032511 () Bool)

(assert (=> b!1032511 (= e!658002 (nullable!955 lt!356252))))

(declare-fun b!1032512 () Bool)

(declare-fun res!463879 () Bool)

(assert (=> b!1032512 (=> res!463879 e!658006)))

(assert (=> b!1032512 (= res!463879 (not (isEmpty!6461 (tail!1472 s!10566))))))

(declare-fun b!1032513 () Bool)

(declare-fun res!463874 () Bool)

(assert (=> b!1032513 (=> res!463874 e!658004)))

(assert (=> b!1032513 (= res!463874 e!658007)))

(declare-fun res!463878 () Bool)

(assert (=> b!1032513 (=> (not res!463878) (not e!658007))))

(assert (=> b!1032513 (= res!463878 lt!356302)))

(declare-fun b!1032514 () Bool)

(assert (=> b!1032514 (= e!658001 (not lt!356302))))

(assert (= (and d!295943 c!171313) b!1032511))

(assert (= (and d!295943 (not c!171313)) b!1032510))

(assert (= (and d!295943 c!171315) b!1032509))

(assert (= (and d!295943 (not c!171315)) b!1032505))

(assert (= (and b!1032505 c!171314) b!1032514))

(assert (= (and b!1032505 (not c!171314)) b!1032507))

(assert (= (and b!1032507 (not res!463877)) b!1032513))

(assert (= (and b!1032513 res!463878) b!1032503))

(assert (= (and b!1032503 res!463876) b!1032504))

(assert (= (and b!1032504 res!463875) b!1032501))

(assert (= (and b!1032513 (not res!463874)) b!1032508))

(assert (= (and b!1032508 res!463880) b!1032502))

(assert (= (and b!1032502 (not res!463881)) b!1032512))

(assert (= (and b!1032512 (not res!463879)) b!1032506))

(assert (= (or b!1032509 b!1032502 b!1032503) bm!71235))

(assert (=> bm!71235 m!1205401))

(assert (=> b!1032501 m!1205469))

(assert (=> d!295943 m!1205401))

(declare-fun m!1205483 () Bool)

(assert (=> d!295943 m!1205483))

(assert (=> b!1032504 m!1205471))

(assert (=> b!1032504 m!1205471))

(assert (=> b!1032504 m!1205473))

(assert (=> b!1032506 m!1205469))

(declare-fun m!1205485 () Bool)

(assert (=> b!1032511 m!1205485))

(assert (=> b!1032510 m!1205469))

(assert (=> b!1032510 m!1205469))

(declare-fun m!1205487 () Bool)

(assert (=> b!1032510 m!1205487))

(assert (=> b!1032510 m!1205471))

(assert (=> b!1032510 m!1205487))

(assert (=> b!1032510 m!1205471))

(declare-fun m!1205489 () Bool)

(assert (=> b!1032510 m!1205489))

(assert (=> b!1032512 m!1205471))

(assert (=> b!1032512 m!1205471))

(assert (=> b!1032512 m!1205473))

(assert (=> b!1032265 d!295943))

(declare-fun b!1032515 () Bool)

(declare-fun e!658014 () Bool)

(assert (=> b!1032515 (= e!658014 (= (head!1910 s!10566) (c!171269 (regOne!6236 r!15766))))))

(declare-fun d!295945 () Bool)

(declare-fun e!658010 () Bool)

(assert (=> d!295945 e!658010))

(declare-fun c!171318 () Bool)

(assert (=> d!295945 (= c!171318 (is-EmptyExpr!2862 (regOne!6236 r!15766)))))

(declare-fun lt!356303 () Bool)

(declare-fun e!658009 () Bool)

(assert (=> d!295945 (= lt!356303 e!658009)))

(declare-fun c!171316 () Bool)

(assert (=> d!295945 (= c!171316 (isEmpty!6461 s!10566))))

(assert (=> d!295945 (validRegex!1331 (regOne!6236 r!15766))))

(assert (=> d!295945 (= (matchR!1398 (regOne!6236 r!15766) s!10566) lt!356303)))

(declare-fun b!1032516 () Bool)

(declare-fun e!658012 () Bool)

(declare-fun e!658013 () Bool)

(assert (=> b!1032516 (= e!658012 e!658013)))

(declare-fun res!463889 () Bool)

(assert (=> b!1032516 (=> res!463889 e!658013)))

(declare-fun call!71241 () Bool)

(assert (=> b!1032516 (= res!463889 call!71241)))

(declare-fun b!1032517 () Bool)

(declare-fun res!463884 () Bool)

(assert (=> b!1032517 (=> (not res!463884) (not e!658014))))

(assert (=> b!1032517 (= res!463884 (not call!71241))))

(declare-fun bm!71236 () Bool)

(assert (=> bm!71236 (= call!71241 (isEmpty!6461 s!10566))))

(declare-fun b!1032518 () Bool)

(declare-fun res!463883 () Bool)

(assert (=> b!1032518 (=> (not res!463883) (not e!658014))))

(assert (=> b!1032518 (= res!463883 (isEmpty!6461 (tail!1472 s!10566)))))

(declare-fun b!1032519 () Bool)

(declare-fun e!658008 () Bool)

(assert (=> b!1032519 (= e!658010 e!658008)))

(declare-fun c!171317 () Bool)

(assert (=> b!1032519 (= c!171317 (is-EmptyLang!2862 (regOne!6236 r!15766)))))

(declare-fun b!1032520 () Bool)

(assert (=> b!1032520 (= e!658013 (not (= (head!1910 s!10566) (c!171269 (regOne!6236 r!15766)))))))

(declare-fun b!1032521 () Bool)

(declare-fun res!463885 () Bool)

(declare-fun e!658011 () Bool)

(assert (=> b!1032521 (=> res!463885 e!658011)))

(assert (=> b!1032521 (= res!463885 (not (is-ElementMatch!2862 (regOne!6236 r!15766))))))

(assert (=> b!1032521 (= e!658008 e!658011)))

(declare-fun b!1032522 () Bool)

(assert (=> b!1032522 (= e!658011 e!658012)))

(declare-fun res!463888 () Bool)

(assert (=> b!1032522 (=> (not res!463888) (not e!658012))))

(assert (=> b!1032522 (= res!463888 (not lt!356303))))

(declare-fun b!1032523 () Bool)

(assert (=> b!1032523 (= e!658010 (= lt!356303 call!71241))))

(declare-fun b!1032524 () Bool)

(assert (=> b!1032524 (= e!658009 (matchR!1398 (derivativeStep!755 (regOne!6236 r!15766) (head!1910 s!10566)) (tail!1472 s!10566)))))

(declare-fun b!1032525 () Bool)

(assert (=> b!1032525 (= e!658009 (nullable!955 (regOne!6236 r!15766)))))

(declare-fun b!1032526 () Bool)

(declare-fun res!463887 () Bool)

(assert (=> b!1032526 (=> res!463887 e!658013)))

(assert (=> b!1032526 (= res!463887 (not (isEmpty!6461 (tail!1472 s!10566))))))

(declare-fun b!1032527 () Bool)

(declare-fun res!463882 () Bool)

(assert (=> b!1032527 (=> res!463882 e!658011)))

(assert (=> b!1032527 (= res!463882 e!658014)))

(declare-fun res!463886 () Bool)

(assert (=> b!1032527 (=> (not res!463886) (not e!658014))))

(assert (=> b!1032527 (= res!463886 lt!356303)))

(declare-fun b!1032528 () Bool)

(assert (=> b!1032528 (= e!658008 (not lt!356303))))

(assert (= (and d!295945 c!171316) b!1032525))

(assert (= (and d!295945 (not c!171316)) b!1032524))

(assert (= (and d!295945 c!171318) b!1032523))

(assert (= (and d!295945 (not c!171318)) b!1032519))

(assert (= (and b!1032519 c!171317) b!1032528))

(assert (= (and b!1032519 (not c!171317)) b!1032521))

(assert (= (and b!1032521 (not res!463885)) b!1032527))

(assert (= (and b!1032527 res!463886) b!1032517))

(assert (= (and b!1032517 res!463884) b!1032518))

(assert (= (and b!1032518 res!463883) b!1032515))

(assert (= (and b!1032527 (not res!463882)) b!1032522))

(assert (= (and b!1032522 res!463888) b!1032516))

(assert (= (and b!1032516 (not res!463889)) b!1032526))

(assert (= (and b!1032526 (not res!463887)) b!1032520))

(assert (= (or b!1032523 b!1032516 b!1032517) bm!71236))

(assert (=> bm!71236 m!1205401))

(assert (=> b!1032515 m!1205469))

(assert (=> d!295945 m!1205401))

(assert (=> d!295945 m!1205455))

(assert (=> b!1032518 m!1205471))

(assert (=> b!1032518 m!1205471))

(assert (=> b!1032518 m!1205473))

(assert (=> b!1032520 m!1205469))

(declare-fun m!1205503 () Bool)

(assert (=> b!1032525 m!1205503))

(assert (=> b!1032524 m!1205469))

(assert (=> b!1032524 m!1205469))

(declare-fun m!1205505 () Bool)

(assert (=> b!1032524 m!1205505))

(assert (=> b!1032524 m!1205471))

(assert (=> b!1032524 m!1205505))

(assert (=> b!1032524 m!1205471))

(declare-fun m!1205507 () Bool)

(assert (=> b!1032524 m!1205507))

(assert (=> b!1032526 m!1205471))

(assert (=> b!1032526 m!1205471))

(assert (=> b!1032526 m!1205473))

(assert (=> b!1032265 d!295945))

(declare-fun b!1032565 () Bool)

(declare-fun c!171334 () Bool)

(assert (=> b!1032565 (= c!171334 (is-Star!2862 (regOne!6236 r!15766)))))

(declare-fun e!658034 () Regex!2862)

(declare-fun e!658038 () Regex!2862)

(assert (=> b!1032565 (= e!658034 e!658038)))

(declare-fun b!1032566 () Bool)

(declare-fun e!658039 () Regex!2862)

(declare-fun call!71257 () Regex!2862)

(declare-fun call!71253 () Regex!2862)

(assert (=> b!1032566 (= e!658039 (Concat!4695 call!71257 call!71253))))

(declare-fun d!295947 () Bool)

(declare-fun e!658036 () Bool)

(assert (=> d!295947 e!658036))

(declare-fun res!463900 () Bool)

(assert (=> d!295947 (=> (not res!463900) (not e!658036))))

(declare-fun lt!356307 () Regex!2862)

(assert (=> d!295947 (= res!463900 (validRegex!1331 lt!356307))))

(declare-fun e!658037 () Regex!2862)

(assert (=> d!295947 (= lt!356307 e!658037)))

(declare-fun c!171335 () Bool)

(assert (=> d!295947 (= c!171335 (and (is-Concat!4695 (regOne!6236 r!15766)) (is-EmptyExpr!2862 (regOne!6236 (regOne!6236 r!15766)))))))

(assert (=> d!295947 (validRegex!1331 (regOne!6236 r!15766))))

(assert (=> d!295947 (= (removeUselessConcat!419 (regOne!6236 r!15766)) lt!356307)))

(declare-fun b!1032567 () Bool)

(declare-fun e!658035 () Regex!2862)

(assert (=> b!1032567 (= e!658037 e!658035)))

(declare-fun c!171333 () Bool)

(assert (=> b!1032567 (= c!171333 (and (is-Concat!4695 (regOne!6236 r!15766)) (is-EmptyExpr!2862 (regTwo!6236 (regOne!6236 r!15766)))))))

(declare-fun b!1032568 () Bool)

(declare-fun call!71255 () Regex!2862)

(assert (=> b!1032568 (= e!658037 call!71255)))

(declare-fun b!1032569 () Bool)

(declare-fun call!71256 () Regex!2862)

(assert (=> b!1032569 (= e!658034 (Union!2862 call!71253 call!71256))))

(declare-fun bm!71248 () Bool)

(declare-fun c!171336 () Bool)

(declare-fun c!171332 () Bool)

(assert (=> bm!71248 (= call!71257 (removeUselessConcat!419 (ite c!171336 (regOne!6236 (regOne!6236 r!15766)) (ite c!171332 (regTwo!6237 (regOne!6236 r!15766)) (reg!3191 (regOne!6236 r!15766))))))))

(declare-fun b!1032570 () Bool)

(assert (=> b!1032570 (= c!171336 (is-Concat!4695 (regOne!6236 r!15766)))))

(assert (=> b!1032570 (= e!658035 e!658039)))

(declare-fun bm!71249 () Bool)

(assert (=> bm!71249 (= call!71256 call!71257)))

(declare-fun b!1032571 () Bool)

(assert (=> b!1032571 (= e!658038 (Star!2862 call!71256))))

(declare-fun bm!71250 () Bool)

(declare-fun call!71254 () Regex!2862)

(assert (=> bm!71250 (= call!71254 call!71255)))

(declare-fun b!1032572 () Bool)

(assert (=> b!1032572 (= e!658038 (regOne!6236 r!15766))))

(declare-fun b!1032573 () Bool)

(assert (=> b!1032573 (= e!658039 e!658034)))

(assert (=> b!1032573 (= c!171332 (is-Union!2862 (regOne!6236 r!15766)))))

(declare-fun bm!71251 () Bool)

(assert (=> bm!71251 (= call!71253 call!71254)))

(declare-fun b!1032574 () Bool)

(assert (=> b!1032574 (= e!658035 call!71254)))

(declare-fun bm!71252 () Bool)

(assert (=> bm!71252 (= call!71255 (removeUselessConcat!419 (ite c!171335 (regTwo!6236 (regOne!6236 r!15766)) (ite c!171333 (regOne!6236 (regOne!6236 r!15766)) (ite c!171336 (regTwo!6236 (regOne!6236 r!15766)) (regOne!6237 (regOne!6236 r!15766)))))))))

(declare-fun b!1032575 () Bool)

(assert (=> b!1032575 (= e!658036 (= (nullable!955 lt!356307) (nullable!955 (regOne!6236 r!15766))))))

(assert (= (and d!295947 c!171335) b!1032568))

(assert (= (and d!295947 (not c!171335)) b!1032567))

(assert (= (and b!1032567 c!171333) b!1032574))

(assert (= (and b!1032567 (not c!171333)) b!1032570))

(assert (= (and b!1032570 c!171336) b!1032566))

(assert (= (and b!1032570 (not c!171336)) b!1032573))

(assert (= (and b!1032573 c!171332) b!1032569))

(assert (= (and b!1032573 (not c!171332)) b!1032565))

(assert (= (and b!1032565 c!171334) b!1032571))

(assert (= (and b!1032565 (not c!171334)) b!1032572))

(assert (= (or b!1032569 b!1032571) bm!71249))

(assert (= (or b!1032566 b!1032569) bm!71251))

(assert (= (or b!1032566 bm!71249) bm!71248))

(assert (= (or b!1032574 bm!71251) bm!71250))

(assert (= (or b!1032568 bm!71250) bm!71252))

(assert (= (and d!295947 res!463900) b!1032575))

(declare-fun m!1205519 () Bool)

(assert (=> d!295947 m!1205519))

(assert (=> d!295947 m!1205455))

(declare-fun m!1205521 () Bool)

(assert (=> bm!71248 m!1205521))

(declare-fun m!1205523 () Bool)

(assert (=> bm!71252 m!1205523))

(declare-fun m!1205525 () Bool)

(assert (=> b!1032575 m!1205525))

(assert (=> b!1032575 m!1205503))

(assert (=> b!1032265 d!295947))

(declare-fun d!295953 () Bool)

(assert (=> d!295953 (= (matchR!1398 (regOne!6236 r!15766) s!10566) (matchR!1398 (removeUselessConcat!419 (regOne!6236 r!15766)) s!10566))))

(declare-fun lt!356312 () Unit!15399)

(declare-fun choose!6576 (Regex!2862 List!10092) Unit!15399)

(assert (=> d!295953 (= lt!356312 (choose!6576 (regOne!6236 r!15766) s!10566))))

(assert (=> d!295953 (validRegex!1331 (regOne!6236 r!15766))))

(assert (=> d!295953 (= (lemmaRemoveUselessConcatSound!257 (regOne!6236 r!15766) s!10566) lt!356312)))

(declare-fun bs!247447 () Bool)

(assert (= bs!247447 d!295953))

(assert (=> bs!247447 m!1205383))

(assert (=> bs!247447 m!1205385))

(declare-fun m!1205527 () Bool)

(assert (=> bs!247447 m!1205527))

(assert (=> bs!247447 m!1205455))

(assert (=> bs!247447 m!1205385))

(declare-fun m!1205529 () Bool)

(assert (=> bs!247447 m!1205529))

(assert (=> b!1032265 d!295953))

(declare-fun b!1032627 () Bool)

(declare-fun lt!356320 () Unit!15399)

(declare-fun lt!356322 () Unit!15399)

(assert (=> b!1032627 (= lt!356320 lt!356322)))

(declare-fun ++!2770 (List!10092 List!10092) List!10092)

(assert (=> b!1032627 (= (++!2770 (++!2770 Nil!10076 (Cons!10076 (h!15477 s!10566) Nil!10076)) (t!101138 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!363 (List!10092 C!6294 List!10092 List!10092) Unit!15399)

(assert (=> b!1032627 (= lt!356322 (lemmaMoveElementToOtherListKeepsConcatEq!363 Nil!10076 (h!15477 s!10566) (t!101138 s!10566) s!10566))))

(declare-fun e!658070 () Option!2391)

(assert (=> b!1032627 (= e!658070 (findConcatSeparation!497 (regOne!6236 r!15766) EmptyExpr!2862 (++!2770 Nil!10076 (Cons!10076 (h!15477 s!10566) Nil!10076)) (t!101138 s!10566) s!10566))))

(declare-fun b!1032628 () Bool)

(declare-fun e!658068 () Bool)

(assert (=> b!1032628 (= e!658068 (matchR!1398 EmptyExpr!2862 s!10566))))

(declare-fun b!1032629 () Bool)

(declare-fun e!658069 () Option!2391)

(assert (=> b!1032629 (= e!658069 (Some!2390 (tuple2!11499 Nil!10076 s!10566)))))

(declare-fun b!1032630 () Bool)

(declare-fun res!463916 () Bool)

(declare-fun e!658072 () Bool)

(assert (=> b!1032630 (=> (not res!463916) (not e!658072))))

(declare-fun lt!356321 () Option!2391)

(declare-fun get!3579 (Option!2391) tuple2!11498)

(assert (=> b!1032630 (= res!463916 (matchR!1398 (regOne!6236 r!15766) (_1!6575 (get!3579 lt!356321))))))

(declare-fun d!295955 () Bool)

(declare-fun e!658071 () Bool)

(assert (=> d!295955 e!658071))

(declare-fun res!463918 () Bool)

(assert (=> d!295955 (=> res!463918 e!658071)))

(assert (=> d!295955 (= res!463918 e!658072)))

(declare-fun res!463917 () Bool)

(assert (=> d!295955 (=> (not res!463917) (not e!658072))))

(assert (=> d!295955 (= res!463917 (isDefined!2033 lt!356321))))

(assert (=> d!295955 (= lt!356321 e!658069)))

(declare-fun c!171357 () Bool)

(assert (=> d!295955 (= c!171357 e!658068)))

(declare-fun res!463914 () Bool)

(assert (=> d!295955 (=> (not res!463914) (not e!658068))))

(assert (=> d!295955 (= res!463914 (matchR!1398 (regOne!6236 r!15766) Nil!10076))))

(assert (=> d!295955 (validRegex!1331 (regOne!6236 r!15766))))

(assert (=> d!295955 (= (findConcatSeparation!497 (regOne!6236 r!15766) EmptyExpr!2862 Nil!10076 s!10566 s!10566) lt!356321)))

(declare-fun b!1032631 () Bool)

(assert (=> b!1032631 (= e!658069 e!658070)))

(declare-fun c!171356 () Bool)

(assert (=> b!1032631 (= c!171356 (is-Nil!10076 s!10566))))

(declare-fun b!1032632 () Bool)

(assert (=> b!1032632 (= e!658071 (not (isDefined!2033 lt!356321)))))

(declare-fun b!1032633 () Bool)

(declare-fun res!463915 () Bool)

(assert (=> b!1032633 (=> (not res!463915) (not e!658072))))

(assert (=> b!1032633 (= res!463915 (matchR!1398 EmptyExpr!2862 (_2!6575 (get!3579 lt!356321))))))

(declare-fun b!1032634 () Bool)

(assert (=> b!1032634 (= e!658070 None!2390)))

(declare-fun b!1032635 () Bool)

(assert (=> b!1032635 (= e!658072 (= (++!2770 (_1!6575 (get!3579 lt!356321)) (_2!6575 (get!3579 lt!356321))) s!10566))))

(assert (= (and d!295955 res!463914) b!1032628))

(assert (= (and d!295955 c!171357) b!1032629))

(assert (= (and d!295955 (not c!171357)) b!1032631))

(assert (= (and b!1032631 c!171356) b!1032634))

(assert (= (and b!1032631 (not c!171356)) b!1032627))

(assert (= (and d!295955 res!463917) b!1032630))

(assert (= (and b!1032630 res!463916) b!1032633))

(assert (= (and b!1032633 res!463915) b!1032635))

(assert (= (and d!295955 (not res!463918)) b!1032632))

(declare-fun m!1205539 () Bool)

(assert (=> b!1032627 m!1205539))

(assert (=> b!1032627 m!1205539))

(declare-fun m!1205541 () Bool)

(assert (=> b!1032627 m!1205541))

(declare-fun m!1205543 () Bool)

(assert (=> b!1032627 m!1205543))

(assert (=> b!1032627 m!1205539))

(declare-fun m!1205545 () Bool)

(assert (=> b!1032627 m!1205545))

(declare-fun m!1205547 () Bool)

(assert (=> b!1032628 m!1205547))

(declare-fun m!1205549 () Bool)

(assert (=> b!1032633 m!1205549))

(declare-fun m!1205551 () Bool)

(assert (=> b!1032633 m!1205551))

(assert (=> b!1032630 m!1205549))

(declare-fun m!1205553 () Bool)

(assert (=> b!1032630 m!1205553))

(declare-fun m!1205555 () Bool)

(assert (=> b!1032632 m!1205555))

(assert (=> b!1032635 m!1205549))

(declare-fun m!1205557 () Bool)

(assert (=> b!1032635 m!1205557))

(assert (=> d!295955 m!1205555))

(declare-fun m!1205559 () Bool)

(assert (=> d!295955 m!1205559))

(assert (=> d!295955 m!1205455))

(assert (=> b!1032266 d!295955))

(declare-fun d!295959 () Bool)

(assert (=> d!295959 (= (isEmpty!6461 s!10566) (is-Nil!10076 s!10566))))

(assert (=> b!1032266 d!295959))

(declare-fun d!295961 () Bool)

(declare-fun choose!6577 (Int) Bool)

(assert (=> d!295961 (= (Exists!589 lambda!37050) (choose!6577 lambda!37050))))

(declare-fun bs!247448 () Bool)

(assert (= bs!247448 d!295961))

(declare-fun m!1205561 () Bool)

(assert (=> bs!247448 m!1205561))

(assert (=> b!1032266 d!295961))

(declare-fun d!295963 () Bool)

(assert (=> d!295963 (= (Exists!589 lambda!37049) (choose!6577 lambda!37049))))

(declare-fun bs!247449 () Bool)

(assert (= bs!247449 d!295963))

(declare-fun m!1205563 () Bool)

(assert (=> bs!247449 m!1205563))

(assert (=> b!1032266 d!295963))

(declare-fun bs!247451 () Bool)

(declare-fun d!295965 () Bool)

(assert (= bs!247451 (and d!295965 b!1032266)))

(declare-fun lambda!37067 () Int)

(assert (=> bs!247451 (= lambda!37067 lambda!37049)))

(assert (=> bs!247451 (not (= lambda!37067 lambda!37050))))

(declare-fun bs!247452 () Bool)

(assert (= bs!247452 (and d!295965 b!1032406)))

(assert (=> bs!247452 (not (= lambda!37067 lambda!37063))))

(declare-fun bs!247453 () Bool)

(assert (= bs!247453 (and d!295965 b!1032407)))

(assert (=> bs!247453 (not (= lambda!37067 lambda!37064))))

(assert (=> d!295965 true))

(assert (=> d!295965 true))

(assert (=> d!295965 true))

(assert (=> d!295965 (= (isDefined!2033 (findConcatSeparation!497 (regOne!6236 r!15766) EmptyExpr!2862 Nil!10076 s!10566 s!10566)) (Exists!589 lambda!37067))))

(declare-fun lt!356328 () Unit!15399)

(declare-fun choose!6578 (Regex!2862 Regex!2862 List!10092) Unit!15399)

(assert (=> d!295965 (= lt!356328 (choose!6578 (regOne!6236 r!15766) EmptyExpr!2862 s!10566))))

(assert (=> d!295965 (validRegex!1331 (regOne!6236 r!15766))))

(assert (=> d!295965 (= (lemmaFindConcatSeparationEquivalentToExists!497 (regOne!6236 r!15766) EmptyExpr!2862 s!10566) lt!356328)))

(declare-fun bs!247454 () Bool)

(assert (= bs!247454 d!295965))

(assert (=> bs!247454 m!1205393))

(assert (=> bs!247454 m!1205451))

(assert (=> bs!247454 m!1205455))

(declare-fun m!1205569 () Bool)

(assert (=> bs!247454 m!1205569))

(assert (=> bs!247454 m!1205393))

(declare-fun m!1205571 () Bool)

(assert (=> bs!247454 m!1205571))

(assert (=> b!1032266 d!295965))

(declare-fun bs!247455 () Bool)

(declare-fun d!295969 () Bool)

(assert (= bs!247455 (and d!295969 b!1032406)))

(declare-fun lambda!37072 () Int)

(assert (=> bs!247455 (not (= lambda!37072 lambda!37063))))

(declare-fun bs!247456 () Bool)

(assert (= bs!247456 (and d!295969 b!1032266)))

(assert (=> bs!247456 (not (= lambda!37072 lambda!37050))))

(declare-fun bs!247457 () Bool)

(assert (= bs!247457 (and d!295969 b!1032407)))

(assert (=> bs!247457 (not (= lambda!37072 lambda!37064))))

(assert (=> bs!247456 (= lambda!37072 lambda!37049)))

(declare-fun bs!247458 () Bool)

(assert (= bs!247458 (and d!295969 d!295965)))

(assert (=> bs!247458 (= lambda!37072 lambda!37067)))

(assert (=> d!295969 true))

(assert (=> d!295969 true))

(assert (=> d!295969 true))

(declare-fun bs!247459 () Bool)

(assert (= bs!247459 d!295969))

(declare-fun lambda!37073 () Int)

(assert (=> bs!247459 (not (= lambda!37073 lambda!37072))))

(assert (=> bs!247455 (not (= lambda!37073 lambda!37063))))

(assert (=> bs!247456 (= lambda!37073 lambda!37050)))

(assert (=> bs!247457 (= (= EmptyExpr!2862 (regTwo!6236 r!15766)) (= lambda!37073 lambda!37064))))

(assert (=> bs!247456 (not (= lambda!37073 lambda!37049))))

(assert (=> bs!247458 (not (= lambda!37073 lambda!37067))))

(assert (=> d!295969 true))

(assert (=> d!295969 true))

(assert (=> d!295969 true))

(assert (=> d!295969 (= (Exists!589 lambda!37072) (Exists!589 lambda!37073))))

(declare-fun lt!356331 () Unit!15399)

(declare-fun choose!6579 (Regex!2862 Regex!2862 List!10092) Unit!15399)

(assert (=> d!295969 (= lt!356331 (choose!6579 (regOne!6236 r!15766) EmptyExpr!2862 s!10566))))

(assert (=> d!295969 (validRegex!1331 (regOne!6236 r!15766))))

(assert (=> d!295969 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!285 (regOne!6236 r!15766) EmptyExpr!2862 s!10566) lt!356331)))

(declare-fun m!1205573 () Bool)

(assert (=> bs!247459 m!1205573))

(declare-fun m!1205575 () Bool)

(assert (=> bs!247459 m!1205575))

(declare-fun m!1205577 () Bool)

(assert (=> bs!247459 m!1205577))

(assert (=> bs!247459 m!1205455))

(assert (=> b!1032266 d!295969))

(declare-fun d!295971 () Bool)

(assert (=> d!295971 (= (isDefined!2033 lt!356256) (not (isEmpty!6462 lt!356256)))))

(declare-fun bs!247460 () Bool)

(assert (= bs!247460 d!295971))

(assert (=> bs!247460 m!1205377))

(assert (=> b!1032266 d!295971))

(declare-fun b!1032688 () Bool)

(declare-fun e!658097 () Bool)

(declare-fun tp!312657 () Bool)

(assert (=> b!1032688 (= e!658097 tp!312657)))

(declare-fun b!1032687 () Bool)

(declare-fun tp!312656 () Bool)

(declare-fun tp!312655 () Bool)

(assert (=> b!1032687 (= e!658097 (and tp!312656 tp!312655))))

(declare-fun b!1032689 () Bool)

(declare-fun tp!312658 () Bool)

(declare-fun tp!312659 () Bool)

(assert (=> b!1032689 (= e!658097 (and tp!312658 tp!312659))))

(assert (=> b!1032261 (= tp!312626 e!658097)))

(declare-fun b!1032686 () Bool)

(assert (=> b!1032686 (= e!658097 tp_is_empty!5367)))

(assert (= (and b!1032261 (is-ElementMatch!2862 (regOne!6236 r!15766))) b!1032686))

(assert (= (and b!1032261 (is-Concat!4695 (regOne!6236 r!15766))) b!1032687))

(assert (= (and b!1032261 (is-Star!2862 (regOne!6236 r!15766))) b!1032688))

(assert (= (and b!1032261 (is-Union!2862 (regOne!6236 r!15766))) b!1032689))

(declare-fun b!1032692 () Bool)

(declare-fun e!658098 () Bool)

(declare-fun tp!312662 () Bool)

(assert (=> b!1032692 (= e!658098 tp!312662)))

(declare-fun b!1032691 () Bool)

(declare-fun tp!312661 () Bool)

(declare-fun tp!312660 () Bool)

(assert (=> b!1032691 (= e!658098 (and tp!312661 tp!312660))))

(declare-fun b!1032693 () Bool)

(declare-fun tp!312663 () Bool)

(declare-fun tp!312664 () Bool)

(assert (=> b!1032693 (= e!658098 (and tp!312663 tp!312664))))

(assert (=> b!1032261 (= tp!312621 e!658098)))

(declare-fun b!1032690 () Bool)

(assert (=> b!1032690 (= e!658098 tp_is_empty!5367)))

(assert (= (and b!1032261 (is-ElementMatch!2862 (regTwo!6236 r!15766))) b!1032690))

(assert (= (and b!1032261 (is-Concat!4695 (regTwo!6236 r!15766))) b!1032691))

(assert (= (and b!1032261 (is-Star!2862 (regTwo!6236 r!15766))) b!1032692))

(assert (= (and b!1032261 (is-Union!2862 (regTwo!6236 r!15766))) b!1032693))

(declare-fun b!1032698 () Bool)

(declare-fun e!658101 () Bool)

(declare-fun tp!312667 () Bool)

(assert (=> b!1032698 (= e!658101 (and tp_is_empty!5367 tp!312667))))

(assert (=> b!1032267 (= tp!312623 e!658101)))

(assert (= (and b!1032267 (is-Cons!10076 (t!101138 s!10566))) b!1032698))

(declare-fun b!1032701 () Bool)

(declare-fun e!658102 () Bool)

(declare-fun tp!312670 () Bool)

(assert (=> b!1032701 (= e!658102 tp!312670)))

(declare-fun b!1032700 () Bool)

(declare-fun tp!312669 () Bool)

(declare-fun tp!312668 () Bool)

(assert (=> b!1032700 (= e!658102 (and tp!312669 tp!312668))))

(declare-fun b!1032702 () Bool)

(declare-fun tp!312671 () Bool)

(declare-fun tp!312672 () Bool)

(assert (=> b!1032702 (= e!658102 (and tp!312671 tp!312672))))

(assert (=> b!1032262 (= tp!312622 e!658102)))

(declare-fun b!1032699 () Bool)

(assert (=> b!1032699 (= e!658102 tp_is_empty!5367)))

(assert (= (and b!1032262 (is-ElementMatch!2862 (reg!3191 r!15766))) b!1032699))

(assert (= (and b!1032262 (is-Concat!4695 (reg!3191 r!15766))) b!1032700))

(assert (= (and b!1032262 (is-Star!2862 (reg!3191 r!15766))) b!1032701))

(assert (= (and b!1032262 (is-Union!2862 (reg!3191 r!15766))) b!1032702))

(declare-fun b!1032705 () Bool)

(declare-fun e!658103 () Bool)

(declare-fun tp!312675 () Bool)

(assert (=> b!1032705 (= e!658103 tp!312675)))

(declare-fun b!1032704 () Bool)

(declare-fun tp!312674 () Bool)

(declare-fun tp!312673 () Bool)

(assert (=> b!1032704 (= e!658103 (and tp!312674 tp!312673))))

(declare-fun b!1032706 () Bool)

(declare-fun tp!312676 () Bool)

(declare-fun tp!312677 () Bool)

(assert (=> b!1032706 (= e!658103 (and tp!312676 tp!312677))))

(assert (=> b!1032260 (= tp!312624 e!658103)))

(declare-fun b!1032703 () Bool)

(assert (=> b!1032703 (= e!658103 tp_is_empty!5367)))

(assert (= (and b!1032260 (is-ElementMatch!2862 (regOne!6237 r!15766))) b!1032703))

(assert (= (and b!1032260 (is-Concat!4695 (regOne!6237 r!15766))) b!1032704))

(assert (= (and b!1032260 (is-Star!2862 (regOne!6237 r!15766))) b!1032705))

(assert (= (and b!1032260 (is-Union!2862 (regOne!6237 r!15766))) b!1032706))

(declare-fun b!1032709 () Bool)

(declare-fun e!658104 () Bool)

(declare-fun tp!312680 () Bool)

(assert (=> b!1032709 (= e!658104 tp!312680)))

(declare-fun b!1032708 () Bool)

(declare-fun tp!312679 () Bool)

(declare-fun tp!312678 () Bool)

(assert (=> b!1032708 (= e!658104 (and tp!312679 tp!312678))))

(declare-fun b!1032710 () Bool)

(declare-fun tp!312681 () Bool)

(declare-fun tp!312682 () Bool)

(assert (=> b!1032710 (= e!658104 (and tp!312681 tp!312682))))

(assert (=> b!1032260 (= tp!312625 e!658104)))

(declare-fun b!1032707 () Bool)

(assert (=> b!1032707 (= e!658104 tp_is_empty!5367)))

(assert (= (and b!1032260 (is-ElementMatch!2862 (regTwo!6237 r!15766))) b!1032707))

(assert (= (and b!1032260 (is-Concat!4695 (regTwo!6237 r!15766))) b!1032708))

(assert (= (and b!1032260 (is-Star!2862 (regTwo!6237 r!15766))) b!1032709))

(assert (= (and b!1032260 (is-Union!2862 (regTwo!6237 r!15766))) b!1032710))

(push 1)

(assert (not d!295971))

(assert (not b!1032473))

(assert (not b!1032630))

(assert (not b!1032526))

(assert (not d!295955))

(assert (not bm!71252))

(assert (not b!1032698))

(assert (not bm!71213))

(assert (not bm!71227))

(assert (not d!295939))

(assert (not b!1032709))

(assert (not b!1032710))

(assert (not b!1032504))

(assert (not b!1032506))

(assert (not b!1032483))

(assert (not d!295963))

(assert (not b!1032345))

(assert (not b!1032501))

(assert (not b!1032692))

(assert (not b!1032701))

(assert (not b!1032702))

(assert (not b!1032691))

(assert (not b!1032628))

(assert (not b!1032687))

(assert (not bm!71235))

(assert (not b!1032412))

(assert (not b!1032515))

(assert (not b!1032482))

(assert (not b!1032627))

(assert (not b!1032708))

(assert (not b!1032693))

(assert (not b!1032632))

(assert (not b!1032689))

(assert (not bm!71228))

(assert (not b!1032512))

(assert (not d!295943))

(assert (not d!295947))

(assert (not b!1032510))

(assert (not b!1032705))

(assert (not d!295953))

(assert (not b!1032511))

(assert (not b!1032575))

(assert (not b!1032633))

(assert (not bm!71236))

(assert (not d!295931))

(assert (not d!295965))

(assert (not b!1032700))

(assert (not d!295969))

(assert (not b!1032704))

(assert (not b!1032524))

(assert (not b!1032476))

(assert (not d!295945))

(assert (not b!1032688))

(assert (not b!1032478))

(assert (not b!1032706))

(assert (not bm!71211))

(assert (not b!1032484))

(assert (not b!1032525))

(assert (not b!1032520))

(assert (not bm!71248))

(assert (not bm!71233))

(assert (not d!295961))

(assert tp_is_empty!5367)

(assert (not b!1032635))

(assert (not d!295941))

(assert (not b!1032518))

(assert (not b!1032415))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

