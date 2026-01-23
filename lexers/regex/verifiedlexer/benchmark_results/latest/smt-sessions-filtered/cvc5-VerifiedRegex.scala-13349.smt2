; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!724132 () Bool)

(assert start!724132)

(declare-fun b!7467107 () Bool)

(assert (=> b!7467107 true))

(assert (=> b!7467107 true))

(assert (=> b!7467107 true))

(declare-fun lambda!462227 () Int)

(declare-fun lambda!462226 () Int)

(assert (=> b!7467107 (not (= lambda!462227 lambda!462226))))

(assert (=> b!7467107 true))

(assert (=> b!7467107 true))

(assert (=> b!7467107 true))

(declare-fun bs!1930304 () Bool)

(declare-fun b!7467103 () Bool)

(assert (= bs!1930304 (and b!7467103 b!7467107)))

(declare-fun lambda!462228 () Int)

(declare-datatypes ((C!39394 0))(
  ( (C!39395 (val!30095 Int)) )
))
(declare-datatypes ((Regex!19560 0))(
  ( (ElementMatch!19560 (c!1379993 C!39394)) (Concat!28405 (regOne!39632 Regex!19560) (regTwo!39632 Regex!19560)) (EmptyExpr!19560) (Star!19560 (reg!19889 Regex!19560)) (EmptyLang!19560) (Union!19560 (regOne!39633 Regex!19560) (regTwo!39633 Regex!19560)) )
))
(declare-fun r1!5845 () Regex!19560)

(declare-fun lt!2624354 () Regex!19560)

(assert (=> bs!1930304 (= (= r1!5845 lt!2624354) (= lambda!462228 lambda!462226))))

(assert (=> bs!1930304 (not (= lambda!462228 lambda!462227))))

(assert (=> b!7467103 true))

(assert (=> b!7467103 true))

(assert (=> b!7467103 true))

(declare-fun lambda!462229 () Int)

(assert (=> bs!1930304 (not (= lambda!462229 lambda!462226))))

(assert (=> bs!1930304 (= (= r1!5845 lt!2624354) (= lambda!462229 lambda!462227))))

(assert (=> b!7467103 (not (= lambda!462229 lambda!462228))))

(assert (=> b!7467103 true))

(assert (=> b!7467103 true))

(assert (=> b!7467103 true))

(declare-fun b!7467088 () Bool)

(declare-fun e!4455519 () Bool)

(declare-fun tp!2164841 () Bool)

(assert (=> b!7467088 (= e!4455519 tp!2164841)))

(declare-fun b!7467089 () Bool)

(declare-fun tp!2164830 () Bool)

(declare-fun tp!2164838 () Bool)

(assert (=> b!7467089 (= e!4455519 (and tp!2164830 tp!2164838))))

(declare-fun b!7467090 () Bool)

(declare-fun res!2995368 () Bool)

(declare-fun e!4455524 () Bool)

(assert (=> b!7467090 (=> res!2995368 e!4455524)))

(declare-fun rTail!78 () Regex!19560)

(declare-datatypes ((List!72276 0))(
  ( (Nil!72152) (Cons!72152 (h!78600 C!39394) (t!386845 List!72276)) )
))
(declare-datatypes ((tuple2!68570 0))(
  ( (tuple2!68571 (_1!37588 List!72276) (_2!37588 List!72276)) )
))
(declare-fun lt!2624350 () tuple2!68570)

(declare-fun matchR!9324 (Regex!19560 List!72276) Bool)

(assert (=> b!7467090 (= res!2995368 (not (matchR!9324 rTail!78 (_2!37588 lt!2624350))))))

(declare-fun b!7467091 () Bool)

(declare-fun e!4455523 () Bool)

(declare-fun tp!2164843 () Bool)

(declare-fun tp!2164842 () Bool)

(assert (=> b!7467091 (= e!4455523 (and tp!2164843 tp!2164842))))

(declare-fun b!7467092 () Bool)

(declare-fun tp!2164836 () Bool)

(declare-fun tp!2164829 () Bool)

(assert (=> b!7467092 (= e!4455519 (and tp!2164836 tp!2164829))))

(declare-fun b!7467093 () Bool)

(declare-fun e!4455526 () Bool)

(declare-fun e!4455521 () Bool)

(assert (=> b!7467093 (= e!4455526 (not e!4455521))))

(declare-fun res!2995363 () Bool)

(assert (=> b!7467093 (=> res!2995363 e!4455521)))

(declare-fun lt!2624363 () Bool)

(assert (=> b!7467093 (= res!2995363 lt!2624363)))

(declare-fun lt!2624370 () Bool)

(declare-fun lt!2624365 () Regex!19560)

(declare-fun s!13591 () List!72276)

(declare-fun matchRSpec!4239 (Regex!19560 List!72276) Bool)

(assert (=> b!7467093 (= lt!2624370 (matchRSpec!4239 lt!2624365 s!13591))))

(assert (=> b!7467093 (= lt!2624370 (matchR!9324 lt!2624365 s!13591))))

(declare-datatypes ((Unit!165955 0))(
  ( (Unit!165956) )
))
(declare-fun lt!2624369 () Unit!165955)

(declare-fun mainMatchTheorem!4233 (Regex!19560 List!72276) Unit!165955)

(assert (=> b!7467093 (= lt!2624369 (mainMatchTheorem!4233 lt!2624365 s!13591))))

(declare-fun lt!2624362 () Regex!19560)

(assert (=> b!7467093 (= lt!2624363 (matchRSpec!4239 lt!2624362 s!13591))))

(assert (=> b!7467093 (= lt!2624363 (matchR!9324 lt!2624362 s!13591))))

(declare-fun lt!2624367 () Unit!165955)

(assert (=> b!7467093 (= lt!2624367 (mainMatchTheorem!4233 lt!2624362 s!13591))))

(declare-fun lt!2624352 () Regex!19560)

(declare-fun lt!2624359 () Regex!19560)

(assert (=> b!7467093 (= lt!2624365 (Union!19560 lt!2624352 lt!2624359))))

(declare-fun r2!5783 () Regex!19560)

(assert (=> b!7467093 (= lt!2624359 (Concat!28405 r2!5783 rTail!78))))

(assert (=> b!7467093 (= lt!2624352 (Concat!28405 r1!5845 rTail!78))))

(assert (=> b!7467093 (= lt!2624362 (Concat!28405 lt!2624354 rTail!78))))

(assert (=> b!7467093 (= lt!2624354 (Union!19560 r1!5845 r2!5783))))

(declare-fun b!7467094 () Bool)

(declare-fun tp_is_empty!49409 () Bool)

(assert (=> b!7467094 (= e!4455523 tp_is_empty!49409)))

(declare-fun b!7467095 () Bool)

(declare-fun tp!2164831 () Bool)

(declare-fun tp!2164834 () Bool)

(assert (=> b!7467095 (= e!4455523 (and tp!2164831 tp!2164834))))

(declare-fun b!7467096 () Bool)

(declare-fun e!4455525 () Bool)

(declare-fun tp!2164828 () Bool)

(assert (=> b!7467096 (= e!4455525 (and tp_is_empty!49409 tp!2164828))))

(declare-fun b!7467097 () Bool)

(declare-fun e!4455527 () Bool)

(declare-fun e!4455522 () Bool)

(assert (=> b!7467097 (= e!4455527 e!4455522)))

(declare-fun res!2995365 () Bool)

(assert (=> b!7467097 (=> res!2995365 e!4455522)))

(declare-fun lt!2624357 () Bool)

(declare-fun lt!2624368 () Bool)

(assert (=> b!7467097 (= res!2995365 (or (and (not lt!2624357) (not lt!2624368)) (not lt!2624357)))))

(assert (=> b!7467097 (= lt!2624368 (matchRSpec!4239 lt!2624359 s!13591))))

(assert (=> b!7467097 (= lt!2624368 (matchR!9324 lt!2624359 s!13591))))

(declare-fun lt!2624364 () Unit!165955)

(assert (=> b!7467097 (= lt!2624364 (mainMatchTheorem!4233 lt!2624359 s!13591))))

(assert (=> b!7467097 (= lt!2624357 (matchRSpec!4239 lt!2624352 s!13591))))

(assert (=> b!7467097 (= lt!2624357 (matchR!9324 lt!2624352 s!13591))))

(declare-fun lt!2624372 () Unit!165955)

(assert (=> b!7467097 (= lt!2624372 (mainMatchTheorem!4233 lt!2624352 s!13591))))

(declare-fun b!7467098 () Bool)

(declare-fun tp!2164839 () Bool)

(assert (=> b!7467098 (= e!4455523 tp!2164839)))

(declare-fun res!2995367 () Bool)

(assert (=> start!724132 (=> (not res!2995367) (not e!4455526))))

(declare-fun validRegex!10074 (Regex!19560) Bool)

(assert (=> start!724132 (= res!2995367 (validRegex!10074 r1!5845))))

(assert (=> start!724132 e!4455526))

(assert (=> start!724132 e!4455519))

(assert (=> start!724132 e!4455523))

(declare-fun e!4455520 () Bool)

(assert (=> start!724132 e!4455520))

(assert (=> start!724132 e!4455525))

(declare-fun b!7467099 () Bool)

(declare-fun tp!2164835 () Bool)

(assert (=> b!7467099 (= e!4455520 tp!2164835)))

(declare-fun b!7467100 () Bool)

(assert (=> b!7467100 (= e!4455520 tp_is_empty!49409)))

(declare-fun b!7467101 () Bool)

(declare-fun tp!2164832 () Bool)

(declare-fun tp!2164833 () Bool)

(assert (=> b!7467101 (= e!4455520 (and tp!2164832 tp!2164833))))

(declare-fun b!7467102 () Bool)

(declare-fun res!2995366 () Bool)

(assert (=> b!7467102 (=> (not res!2995366) (not e!4455526))))

(assert (=> b!7467102 (= res!2995366 (validRegex!10074 rTail!78))))

(assert (=> b!7467103 (= e!4455522 e!4455524)))

(declare-fun res!2995369 () Bool)

(assert (=> b!7467103 (=> res!2995369 e!4455524)))

(assert (=> b!7467103 (= res!2995369 (not (matchR!9324 r1!5845 (_1!37588 lt!2624350))))))

(declare-datatypes ((Option!17117 0))(
  ( (None!17116) (Some!17116 (v!54245 tuple2!68570)) )
))
(declare-fun lt!2624360 () Option!17117)

(declare-fun get!25208 (Option!17117) tuple2!68570)

(assert (=> b!7467103 (= lt!2624350 (get!25208 lt!2624360))))

(declare-fun Exists!4179 (Int) Bool)

(assert (=> b!7467103 (= (Exists!4179 lambda!462228) (Exists!4179 lambda!462229))))

(declare-fun lt!2624358 () Unit!165955)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2513 (Regex!19560 Regex!19560 List!72276) Unit!165955)

(assert (=> b!7467103 (= lt!2624358 (lemmaExistCutMatchRandMatchRSpecEquivalent!2513 r1!5845 rTail!78 s!13591))))

(declare-fun isDefined!13806 (Option!17117) Bool)

(assert (=> b!7467103 (= (isDefined!13806 lt!2624360) (Exists!4179 lambda!462228))))

(declare-fun findConcatSeparation!3239 (Regex!19560 Regex!19560 List!72276 List!72276 List!72276) Option!17117)

(assert (=> b!7467103 (= lt!2624360 (findConcatSeparation!3239 r1!5845 rTail!78 Nil!72152 s!13591 s!13591))))

(declare-fun lt!2624371 () Unit!165955)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2997 (Regex!19560 Regex!19560 List!72276) Unit!165955)

(assert (=> b!7467103 (= lt!2624371 (lemmaFindConcatSeparationEquivalentToExists!2997 r1!5845 rTail!78 s!13591))))

(declare-fun b!7467104 () Bool)

(assert (=> b!7467104 (= e!4455524 (validRegex!10074 lt!2624354))))

(assert (=> b!7467104 (= (matchR!9324 r2!5783 (_1!37588 lt!2624350)) (matchRSpec!4239 r2!5783 (_1!37588 lt!2624350)))))

(declare-fun lt!2624356 () Unit!165955)

(assert (=> b!7467104 (= lt!2624356 (mainMatchTheorem!4233 r2!5783 (_1!37588 lt!2624350)))))

(assert (=> b!7467104 (matchRSpec!4239 r1!5845 (_1!37588 lt!2624350))))

(declare-fun lt!2624366 () Unit!165955)

(assert (=> b!7467104 (= lt!2624366 (mainMatchTheorem!4233 r1!5845 (_1!37588 lt!2624350)))))

(assert (=> b!7467104 (= (matchR!9324 lt!2624354 (_1!37588 lt!2624350)) (matchRSpec!4239 lt!2624354 (_1!37588 lt!2624350)))))

(declare-fun lt!2624361 () Unit!165955)

(assert (=> b!7467104 (= lt!2624361 (mainMatchTheorem!4233 lt!2624354 (_1!37588 lt!2624350)))))

(declare-fun b!7467105 () Bool)

(declare-fun tp!2164837 () Bool)

(declare-fun tp!2164840 () Bool)

(assert (=> b!7467105 (= e!4455520 (and tp!2164837 tp!2164840))))

(declare-fun b!7467106 () Bool)

(declare-fun res!2995364 () Bool)

(assert (=> b!7467106 (=> (not res!2995364) (not e!4455526))))

(assert (=> b!7467106 (= res!2995364 (validRegex!10074 r2!5783))))

(assert (=> b!7467107 (= e!4455521 e!4455527)))

(declare-fun res!2995370 () Bool)

(assert (=> b!7467107 (=> res!2995370 e!4455527)))

(declare-fun lt!2624353 () Bool)

(assert (=> b!7467107 (= res!2995370 (or lt!2624353 (not lt!2624370)))))

(assert (=> b!7467107 (= (Exists!4179 lambda!462226) (Exists!4179 lambda!462227))))

(declare-fun lt!2624355 () Unit!165955)

(assert (=> b!7467107 (= lt!2624355 (lemmaExistCutMatchRandMatchRSpecEquivalent!2513 lt!2624354 rTail!78 s!13591))))

(assert (=> b!7467107 (= lt!2624353 (Exists!4179 lambda!462226))))

(assert (=> b!7467107 (= lt!2624353 (isDefined!13806 (findConcatSeparation!3239 lt!2624354 rTail!78 Nil!72152 s!13591 s!13591)))))

(declare-fun lt!2624351 () Unit!165955)

(assert (=> b!7467107 (= lt!2624351 (lemmaFindConcatSeparationEquivalentToExists!2997 lt!2624354 rTail!78 s!13591))))

(declare-fun b!7467108 () Bool)

(assert (=> b!7467108 (= e!4455519 tp_is_empty!49409)))

(assert (= (and start!724132 res!2995367) b!7467106))

(assert (= (and b!7467106 res!2995364) b!7467102))

(assert (= (and b!7467102 res!2995366) b!7467093))

(assert (= (and b!7467093 (not res!2995363)) b!7467107))

(assert (= (and b!7467107 (not res!2995370)) b!7467097))

(assert (= (and b!7467097 (not res!2995365)) b!7467103))

(assert (= (and b!7467103 (not res!2995369)) b!7467090))

(assert (= (and b!7467090 (not res!2995368)) b!7467104))

(assert (= (and start!724132 (is-ElementMatch!19560 r1!5845)) b!7467108))

(assert (= (and start!724132 (is-Concat!28405 r1!5845)) b!7467089))

(assert (= (and start!724132 (is-Star!19560 r1!5845)) b!7467088))

(assert (= (and start!724132 (is-Union!19560 r1!5845)) b!7467092))

(assert (= (and start!724132 (is-ElementMatch!19560 r2!5783)) b!7467094))

(assert (= (and start!724132 (is-Concat!28405 r2!5783)) b!7467091))

(assert (= (and start!724132 (is-Star!19560 r2!5783)) b!7467098))

(assert (= (and start!724132 (is-Union!19560 r2!5783)) b!7467095))

(assert (= (and start!724132 (is-ElementMatch!19560 rTail!78)) b!7467100))

(assert (= (and start!724132 (is-Concat!28405 rTail!78)) b!7467105))

(assert (= (and start!724132 (is-Star!19560 rTail!78)) b!7467099))

(assert (= (and start!724132 (is-Union!19560 rTail!78)) b!7467101))

(assert (= (and start!724132 (is-Cons!72152 s!13591)) b!7467096))

(declare-fun m!8065500 () Bool)

(assert (=> start!724132 m!8065500))

(declare-fun m!8065502 () Bool)

(assert (=> b!7467093 m!8065502))

(declare-fun m!8065504 () Bool)

(assert (=> b!7467093 m!8065504))

(declare-fun m!8065506 () Bool)

(assert (=> b!7467093 m!8065506))

(declare-fun m!8065508 () Bool)

(assert (=> b!7467093 m!8065508))

(declare-fun m!8065510 () Bool)

(assert (=> b!7467093 m!8065510))

(declare-fun m!8065512 () Bool)

(assert (=> b!7467093 m!8065512))

(declare-fun m!8065514 () Bool)

(assert (=> b!7467107 m!8065514))

(declare-fun m!8065516 () Bool)

(assert (=> b!7467107 m!8065516))

(declare-fun m!8065518 () Bool)

(assert (=> b!7467107 m!8065518))

(declare-fun m!8065520 () Bool)

(assert (=> b!7467107 m!8065520))

(declare-fun m!8065522 () Bool)

(assert (=> b!7467107 m!8065522))

(declare-fun m!8065524 () Bool)

(assert (=> b!7467107 m!8065524))

(assert (=> b!7467107 m!8065518))

(assert (=> b!7467107 m!8065514))

(declare-fun m!8065526 () Bool)

(assert (=> b!7467097 m!8065526))

(declare-fun m!8065528 () Bool)

(assert (=> b!7467097 m!8065528))

(declare-fun m!8065530 () Bool)

(assert (=> b!7467097 m!8065530))

(declare-fun m!8065532 () Bool)

(assert (=> b!7467097 m!8065532))

(declare-fun m!8065534 () Bool)

(assert (=> b!7467097 m!8065534))

(declare-fun m!8065536 () Bool)

(assert (=> b!7467097 m!8065536))

(declare-fun m!8065538 () Bool)

(assert (=> b!7467104 m!8065538))

(declare-fun m!8065540 () Bool)

(assert (=> b!7467104 m!8065540))

(declare-fun m!8065542 () Bool)

(assert (=> b!7467104 m!8065542))

(declare-fun m!8065544 () Bool)

(assert (=> b!7467104 m!8065544))

(declare-fun m!8065546 () Bool)

(assert (=> b!7467104 m!8065546))

(declare-fun m!8065548 () Bool)

(assert (=> b!7467104 m!8065548))

(declare-fun m!8065550 () Bool)

(assert (=> b!7467104 m!8065550))

(declare-fun m!8065552 () Bool)

(assert (=> b!7467104 m!8065552))

(declare-fun m!8065554 () Bool)

(assert (=> b!7467104 m!8065554))

(declare-fun m!8065556 () Bool)

(assert (=> b!7467090 m!8065556))

(declare-fun m!8065558 () Bool)

(assert (=> b!7467102 m!8065558))

(declare-fun m!8065560 () Bool)

(assert (=> b!7467103 m!8065560))

(declare-fun m!8065562 () Bool)

(assert (=> b!7467103 m!8065562))

(declare-fun m!8065564 () Bool)

(assert (=> b!7467103 m!8065564))

(declare-fun m!8065566 () Bool)

(assert (=> b!7467103 m!8065566))

(declare-fun m!8065568 () Bool)

(assert (=> b!7467103 m!8065568))

(declare-fun m!8065570 () Bool)

(assert (=> b!7467103 m!8065570))

(declare-fun m!8065572 () Bool)

(assert (=> b!7467103 m!8065572))

(declare-fun m!8065574 () Bool)

(assert (=> b!7467103 m!8065574))

(assert (=> b!7467103 m!8065564))

(declare-fun m!8065576 () Bool)

(assert (=> b!7467106 m!8065576))

(push 1)

(assert (not b!7467095))

(assert (not b!7467103))

(assert (not b!7467097))

(assert (not b!7467102))

(assert (not b!7467093))

(assert (not b!7467090))

(assert (not b!7467099))

(assert (not b!7467098))

(assert (not b!7467107))

(assert (not b!7467092))

(assert (not start!724132))

(assert (not b!7467105))

(assert (not b!7467091))

(assert (not b!7467096))

(assert (not b!7467088))

(assert (not b!7467104))

(assert (not b!7467089))

(assert (not b!7467101))

(assert (not b!7467106))

(assert tp_is_empty!49409)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2298646 () Bool)

(assert (=> d!2298646 (= (matchR!9324 lt!2624352 s!13591) (matchRSpec!4239 lt!2624352 s!13591))))

(declare-fun lt!2624444 () Unit!165955)

(declare-fun choose!57722 (Regex!19560 List!72276) Unit!165955)

(assert (=> d!2298646 (= lt!2624444 (choose!57722 lt!2624352 s!13591))))

(assert (=> d!2298646 (validRegex!10074 lt!2624352)))

(assert (=> d!2298646 (= (mainMatchTheorem!4233 lt!2624352 s!13591) lt!2624444)))

(declare-fun bs!1930306 () Bool)

(assert (= bs!1930306 d!2298646))

(assert (=> bs!1930306 m!8065532))

(assert (=> bs!1930306 m!8065536))

(declare-fun m!8065656 () Bool)

(assert (=> bs!1930306 m!8065656))

(declare-fun m!8065658 () Bool)

(assert (=> bs!1930306 m!8065658))

(assert (=> b!7467097 d!2298646))

(declare-fun bs!1930307 () Bool)

(declare-fun b!7467244 () Bool)

(assert (= bs!1930307 (and b!7467244 b!7467107)))

(declare-fun lambda!462250 () Int)

(assert (=> bs!1930307 (not (= lambda!462250 lambda!462226))))

(assert (=> bs!1930307 (not (= lambda!462250 lambda!462227))))

(declare-fun bs!1930308 () Bool)

(assert (= bs!1930308 (and b!7467244 b!7467103)))

(assert (=> bs!1930308 (not (= lambda!462250 lambda!462228))))

(assert (=> bs!1930308 (not (= lambda!462250 lambda!462229))))

(assert (=> b!7467244 true))

(assert (=> b!7467244 true))

(declare-fun bs!1930309 () Bool)

(declare-fun b!7467242 () Bool)

(assert (= bs!1930309 (and b!7467242 b!7467244)))

(declare-fun lambda!462251 () Int)

(assert (=> bs!1930309 (not (= lambda!462251 lambda!462250))))

(declare-fun bs!1930310 () Bool)

(assert (= bs!1930310 (and b!7467242 b!7467107)))

(assert (=> bs!1930310 (= (and (= (regOne!39632 lt!2624352) lt!2624354) (= (regTwo!39632 lt!2624352) rTail!78)) (= lambda!462251 lambda!462227))))

(declare-fun bs!1930311 () Bool)

(assert (= bs!1930311 (and b!7467242 b!7467103)))

(assert (=> bs!1930311 (not (= lambda!462251 lambda!462228))))

(assert (=> bs!1930310 (not (= lambda!462251 lambda!462226))))

(assert (=> bs!1930311 (= (and (= (regOne!39632 lt!2624352) r1!5845) (= (regTwo!39632 lt!2624352) rTail!78)) (= lambda!462251 lambda!462229))))

(assert (=> b!7467242 true))

(assert (=> b!7467242 true))

(declare-fun b!7467236 () Bool)

(declare-fun e!4455588 () Bool)

(declare-fun e!4455587 () Bool)

(assert (=> b!7467236 (= e!4455588 e!4455587)))

(declare-fun res!2995436 () Bool)

(assert (=> b!7467236 (= res!2995436 (not (is-EmptyLang!19560 lt!2624352)))))

(assert (=> b!7467236 (=> (not res!2995436) (not e!4455587))))

(declare-fun b!7467238 () Bool)

(declare-fun c!1380004 () Bool)

(assert (=> b!7467238 (= c!1380004 (is-Union!19560 lt!2624352))))

(declare-fun e!4455586 () Bool)

(declare-fun e!4455590 () Bool)

(assert (=> b!7467238 (= e!4455586 e!4455590)))

(declare-fun b!7467239 () Bool)

(declare-fun res!2995437 () Bool)

(declare-fun e!4455585 () Bool)

(assert (=> b!7467239 (=> res!2995437 e!4455585)))

(declare-fun call!685797 () Bool)

(assert (=> b!7467239 (= res!2995437 call!685797)))

(declare-fun e!4455589 () Bool)

(assert (=> b!7467239 (= e!4455589 e!4455585)))

(declare-fun call!685798 () Bool)

(declare-fun bm!685792 () Bool)

(declare-fun c!1380006 () Bool)

(assert (=> bm!685792 (= call!685798 (Exists!4179 (ite c!1380006 lambda!462250 lambda!462251)))))

(declare-fun b!7467240 () Bool)

(declare-fun c!1380005 () Bool)

(assert (=> b!7467240 (= c!1380005 (is-ElementMatch!19560 lt!2624352))))

(assert (=> b!7467240 (= e!4455587 e!4455586)))

(declare-fun b!7467241 () Bool)

(declare-fun e!4455591 () Bool)

(assert (=> b!7467241 (= e!4455591 (matchRSpec!4239 (regTwo!39633 lt!2624352) s!13591))))

(assert (=> b!7467242 (= e!4455589 call!685798)))

(declare-fun b!7467243 () Bool)

(assert (=> b!7467243 (= e!4455588 call!685797)))

(assert (=> b!7467244 (= e!4455585 call!685798)))

(declare-fun d!2298648 () Bool)

(declare-fun c!1380003 () Bool)

(assert (=> d!2298648 (= c!1380003 (is-EmptyExpr!19560 lt!2624352))))

(assert (=> d!2298648 (= (matchRSpec!4239 lt!2624352 s!13591) e!4455588)))

(declare-fun b!7467237 () Bool)

(assert (=> b!7467237 (= e!4455590 e!4455591)))

(declare-fun res!2995435 () Bool)

(assert (=> b!7467237 (= res!2995435 (matchRSpec!4239 (regOne!39633 lt!2624352) s!13591))))

(assert (=> b!7467237 (=> res!2995435 e!4455591)))

(declare-fun bm!685793 () Bool)

(declare-fun isEmpty!41159 (List!72276) Bool)

(assert (=> bm!685793 (= call!685797 (isEmpty!41159 s!13591))))

(declare-fun b!7467245 () Bool)

(assert (=> b!7467245 (= e!4455590 e!4455589)))

(assert (=> b!7467245 (= c!1380006 (is-Star!19560 lt!2624352))))

(declare-fun b!7467246 () Bool)

(assert (=> b!7467246 (= e!4455586 (= s!13591 (Cons!72152 (c!1379993 lt!2624352) Nil!72152)))))

(assert (= (and d!2298648 c!1380003) b!7467243))

(assert (= (and d!2298648 (not c!1380003)) b!7467236))

(assert (= (and b!7467236 res!2995436) b!7467240))

(assert (= (and b!7467240 c!1380005) b!7467246))

(assert (= (and b!7467240 (not c!1380005)) b!7467238))

(assert (= (and b!7467238 c!1380004) b!7467237))

(assert (= (and b!7467238 (not c!1380004)) b!7467245))

(assert (= (and b!7467237 (not res!2995435)) b!7467241))

(assert (= (and b!7467245 c!1380006) b!7467239))

(assert (= (and b!7467245 (not c!1380006)) b!7467242))

(assert (= (and b!7467239 (not res!2995437)) b!7467244))

(assert (= (or b!7467244 b!7467242) bm!685792))

(assert (= (or b!7467243 b!7467239) bm!685793))

(declare-fun m!8065660 () Bool)

(assert (=> bm!685792 m!8065660))

(declare-fun m!8065662 () Bool)

(assert (=> b!7467241 m!8065662))

(declare-fun m!8065664 () Bool)

(assert (=> b!7467237 m!8065664))

(declare-fun m!8065666 () Bool)

(assert (=> bm!685793 m!8065666))

(assert (=> b!7467097 d!2298648))

(declare-fun bs!1930312 () Bool)

(declare-fun b!7467255 () Bool)

(assert (= bs!1930312 (and b!7467255 b!7467244)))

(declare-fun lambda!462252 () Int)

(assert (=> bs!1930312 (= (and (= (reg!19889 lt!2624359) (reg!19889 lt!2624352)) (= lt!2624359 lt!2624352)) (= lambda!462252 lambda!462250))))

(declare-fun bs!1930313 () Bool)

(assert (= bs!1930313 (and b!7467255 b!7467107)))

(assert (=> bs!1930313 (not (= lambda!462252 lambda!462227))))

(declare-fun bs!1930314 () Bool)

(assert (= bs!1930314 (and b!7467255 b!7467103)))

(assert (=> bs!1930314 (not (= lambda!462252 lambda!462228))))

(declare-fun bs!1930315 () Bool)

(assert (= bs!1930315 (and b!7467255 b!7467242)))

(assert (=> bs!1930315 (not (= lambda!462252 lambda!462251))))

(assert (=> bs!1930313 (not (= lambda!462252 lambda!462226))))

(assert (=> bs!1930314 (not (= lambda!462252 lambda!462229))))

(assert (=> b!7467255 true))

(assert (=> b!7467255 true))

(declare-fun bs!1930316 () Bool)

(declare-fun b!7467253 () Bool)

(assert (= bs!1930316 (and b!7467253 b!7467244)))

(declare-fun lambda!462253 () Int)

(assert (=> bs!1930316 (not (= lambda!462253 lambda!462250))))

(declare-fun bs!1930317 () Bool)

(assert (= bs!1930317 (and b!7467253 b!7467107)))

(assert (=> bs!1930317 (= (and (= (regOne!39632 lt!2624359) lt!2624354) (= (regTwo!39632 lt!2624359) rTail!78)) (= lambda!462253 lambda!462227))))

(declare-fun bs!1930318 () Bool)

(assert (= bs!1930318 (and b!7467253 b!7467103)))

(assert (=> bs!1930318 (not (= lambda!462253 lambda!462228))))

(declare-fun bs!1930319 () Bool)

(assert (= bs!1930319 (and b!7467253 b!7467255)))

(assert (=> bs!1930319 (not (= lambda!462253 lambda!462252))))

(declare-fun bs!1930320 () Bool)

(assert (= bs!1930320 (and b!7467253 b!7467242)))

(assert (=> bs!1930320 (= (and (= (regOne!39632 lt!2624359) (regOne!39632 lt!2624352)) (= (regTwo!39632 lt!2624359) (regTwo!39632 lt!2624352))) (= lambda!462253 lambda!462251))))

(assert (=> bs!1930317 (not (= lambda!462253 lambda!462226))))

(assert (=> bs!1930318 (= (and (= (regOne!39632 lt!2624359) r1!5845) (= (regTwo!39632 lt!2624359) rTail!78)) (= lambda!462253 lambda!462229))))

(assert (=> b!7467253 true))

(assert (=> b!7467253 true))

(declare-fun b!7467247 () Bool)

(declare-fun e!4455595 () Bool)

(declare-fun e!4455594 () Bool)

(assert (=> b!7467247 (= e!4455595 e!4455594)))

(declare-fun res!2995439 () Bool)

(assert (=> b!7467247 (= res!2995439 (not (is-EmptyLang!19560 lt!2624359)))))

(assert (=> b!7467247 (=> (not res!2995439) (not e!4455594))))

(declare-fun b!7467249 () Bool)

(declare-fun c!1380008 () Bool)

(assert (=> b!7467249 (= c!1380008 (is-Union!19560 lt!2624359))))

(declare-fun e!4455593 () Bool)

(declare-fun e!4455597 () Bool)

(assert (=> b!7467249 (= e!4455593 e!4455597)))

(declare-fun b!7467250 () Bool)

(declare-fun res!2995440 () Bool)

(declare-fun e!4455592 () Bool)

(assert (=> b!7467250 (=> res!2995440 e!4455592)))

(declare-fun call!685799 () Bool)

(assert (=> b!7467250 (= res!2995440 call!685799)))

(declare-fun e!4455596 () Bool)

(assert (=> b!7467250 (= e!4455596 e!4455592)))

(declare-fun call!685800 () Bool)

(declare-fun c!1380010 () Bool)

(declare-fun bm!685794 () Bool)

(assert (=> bm!685794 (= call!685800 (Exists!4179 (ite c!1380010 lambda!462252 lambda!462253)))))

(declare-fun b!7467251 () Bool)

(declare-fun c!1380009 () Bool)

(assert (=> b!7467251 (= c!1380009 (is-ElementMatch!19560 lt!2624359))))

(assert (=> b!7467251 (= e!4455594 e!4455593)))

(declare-fun b!7467252 () Bool)

(declare-fun e!4455598 () Bool)

(assert (=> b!7467252 (= e!4455598 (matchRSpec!4239 (regTwo!39633 lt!2624359) s!13591))))

(assert (=> b!7467253 (= e!4455596 call!685800)))

(declare-fun b!7467254 () Bool)

(assert (=> b!7467254 (= e!4455595 call!685799)))

(assert (=> b!7467255 (= e!4455592 call!685800)))

(declare-fun d!2298652 () Bool)

(declare-fun c!1380007 () Bool)

(assert (=> d!2298652 (= c!1380007 (is-EmptyExpr!19560 lt!2624359))))

(assert (=> d!2298652 (= (matchRSpec!4239 lt!2624359 s!13591) e!4455595)))

(declare-fun b!7467248 () Bool)

(assert (=> b!7467248 (= e!4455597 e!4455598)))

(declare-fun res!2995438 () Bool)

(assert (=> b!7467248 (= res!2995438 (matchRSpec!4239 (regOne!39633 lt!2624359) s!13591))))

(assert (=> b!7467248 (=> res!2995438 e!4455598)))

(declare-fun bm!685795 () Bool)

(assert (=> bm!685795 (= call!685799 (isEmpty!41159 s!13591))))

(declare-fun b!7467256 () Bool)

(assert (=> b!7467256 (= e!4455597 e!4455596)))

(assert (=> b!7467256 (= c!1380010 (is-Star!19560 lt!2624359))))

(declare-fun b!7467257 () Bool)

(assert (=> b!7467257 (= e!4455593 (= s!13591 (Cons!72152 (c!1379993 lt!2624359) Nil!72152)))))

(assert (= (and d!2298652 c!1380007) b!7467254))

(assert (= (and d!2298652 (not c!1380007)) b!7467247))

(assert (= (and b!7467247 res!2995439) b!7467251))

(assert (= (and b!7467251 c!1380009) b!7467257))

(assert (= (and b!7467251 (not c!1380009)) b!7467249))

(assert (= (and b!7467249 c!1380008) b!7467248))

(assert (= (and b!7467249 (not c!1380008)) b!7467256))

(assert (= (and b!7467248 (not res!2995438)) b!7467252))

(assert (= (and b!7467256 c!1380010) b!7467250))

(assert (= (and b!7467256 (not c!1380010)) b!7467253))

(assert (= (and b!7467250 (not res!2995440)) b!7467255))

(assert (= (or b!7467255 b!7467253) bm!685794))

(assert (= (or b!7467254 b!7467250) bm!685795))

(declare-fun m!8065668 () Bool)

(assert (=> bm!685794 m!8065668))

(declare-fun m!8065670 () Bool)

(assert (=> b!7467252 m!8065670))

(declare-fun m!8065672 () Bool)

(assert (=> b!7467248 m!8065672))

(assert (=> bm!685795 m!8065666))

(assert (=> b!7467097 d!2298652))

(declare-fun b!7467314 () Bool)

(declare-fun e!4455627 () Bool)

(declare-fun e!4455628 () Bool)

(assert (=> b!7467314 (= e!4455627 e!4455628)))

(declare-fun res!2995479 () Bool)

(assert (=> b!7467314 (=> res!2995479 e!4455628)))

(declare-fun call!685803 () Bool)

(assert (=> b!7467314 (= res!2995479 call!685803)))

(declare-fun b!7467315 () Bool)

(declare-fun e!4455633 () Bool)

(declare-fun nullable!8522 (Regex!19560) Bool)

(assert (=> b!7467315 (= e!4455633 (nullable!8522 lt!2624359))))

(declare-fun b!7467316 () Bool)

(declare-fun e!4455630 () Bool)

(declare-fun lt!2624449 () Bool)

(assert (=> b!7467316 (= e!4455630 (= lt!2624449 call!685803))))

(declare-fun b!7467317 () Bool)

(declare-fun res!2995478 () Bool)

(declare-fun e!4455632 () Bool)

(assert (=> b!7467317 (=> (not res!2995478) (not e!4455632))))

(declare-fun tail!14890 (List!72276) List!72276)

(assert (=> b!7467317 (= res!2995478 (isEmpty!41159 (tail!14890 s!13591)))))

(declare-fun b!7467318 () Bool)

(declare-fun e!4455629 () Bool)

(assert (=> b!7467318 (= e!4455629 (not lt!2624449))))

(declare-fun d!2298654 () Bool)

(assert (=> d!2298654 e!4455630))

(declare-fun c!1380024 () Bool)

(assert (=> d!2298654 (= c!1380024 (is-EmptyExpr!19560 lt!2624359))))

(assert (=> d!2298654 (= lt!2624449 e!4455633)))

(declare-fun c!1380023 () Bool)

(assert (=> d!2298654 (= c!1380023 (isEmpty!41159 s!13591))))

(assert (=> d!2298654 (validRegex!10074 lt!2624359)))

(assert (=> d!2298654 (= (matchR!9324 lt!2624359 s!13591) lt!2624449)))

(declare-fun bm!685798 () Bool)

(assert (=> bm!685798 (= call!685803 (isEmpty!41159 s!13591))))

(declare-fun b!7467319 () Bool)

(assert (=> b!7467319 (= e!4455630 e!4455629)))

(declare-fun c!1380025 () Bool)

(assert (=> b!7467319 (= c!1380025 (is-EmptyLang!19560 lt!2624359))))

(declare-fun b!7467320 () Bool)

(declare-fun res!2995477 () Bool)

(assert (=> b!7467320 (=> res!2995477 e!4455628)))

(assert (=> b!7467320 (= res!2995477 (not (isEmpty!41159 (tail!14890 s!13591))))))

(declare-fun b!7467321 () Bool)

(declare-fun head!15321 (List!72276) C!39394)

(assert (=> b!7467321 (= e!4455628 (not (= (head!15321 s!13591) (c!1379993 lt!2624359))))))

(declare-fun b!7467322 () Bool)

(declare-fun res!2995473 () Bool)

(assert (=> b!7467322 (=> (not res!2995473) (not e!4455632))))

(assert (=> b!7467322 (= res!2995473 (not call!685803))))

(declare-fun b!7467323 () Bool)

(declare-fun derivativeStep!5581 (Regex!19560 C!39394) Regex!19560)

(assert (=> b!7467323 (= e!4455633 (matchR!9324 (derivativeStep!5581 lt!2624359 (head!15321 s!13591)) (tail!14890 s!13591)))))

(declare-fun b!7467324 () Bool)

(assert (=> b!7467324 (= e!4455632 (= (head!15321 s!13591) (c!1379993 lt!2624359)))))

(declare-fun b!7467325 () Bool)

(declare-fun res!2995476 () Bool)

(declare-fun e!4455631 () Bool)

(assert (=> b!7467325 (=> res!2995476 e!4455631)))

(assert (=> b!7467325 (= res!2995476 e!4455632)))

(declare-fun res!2995480 () Bool)

(assert (=> b!7467325 (=> (not res!2995480) (not e!4455632))))

(assert (=> b!7467325 (= res!2995480 lt!2624449)))

(declare-fun b!7467326 () Bool)

(declare-fun res!2995475 () Bool)

(assert (=> b!7467326 (=> res!2995475 e!4455631)))

(assert (=> b!7467326 (= res!2995475 (not (is-ElementMatch!19560 lt!2624359)))))

(assert (=> b!7467326 (= e!4455629 e!4455631)))

(declare-fun b!7467327 () Bool)

(assert (=> b!7467327 (= e!4455631 e!4455627)))

(declare-fun res!2995474 () Bool)

(assert (=> b!7467327 (=> (not res!2995474) (not e!4455627))))

(assert (=> b!7467327 (= res!2995474 (not lt!2624449))))

(assert (= (and d!2298654 c!1380023) b!7467315))

(assert (= (and d!2298654 (not c!1380023)) b!7467323))

(assert (= (and d!2298654 c!1380024) b!7467316))

(assert (= (and d!2298654 (not c!1380024)) b!7467319))

(assert (= (and b!7467319 c!1380025) b!7467318))

(assert (= (and b!7467319 (not c!1380025)) b!7467326))

(assert (= (and b!7467326 (not res!2995475)) b!7467325))

(assert (= (and b!7467325 res!2995480) b!7467322))

(assert (= (and b!7467322 res!2995473) b!7467317))

(assert (= (and b!7467317 res!2995478) b!7467324))

(assert (= (and b!7467325 (not res!2995476)) b!7467327))

(assert (= (and b!7467327 res!2995474) b!7467314))

(assert (= (and b!7467314 (not res!2995479)) b!7467320))

(assert (= (and b!7467320 (not res!2995477)) b!7467321))

(assert (= (or b!7467316 b!7467314 b!7467322) bm!685798))

(assert (=> bm!685798 m!8065666))

(declare-fun m!8065674 () Bool)

(assert (=> b!7467315 m!8065674))

(declare-fun m!8065676 () Bool)

(assert (=> b!7467320 m!8065676))

(assert (=> b!7467320 m!8065676))

(declare-fun m!8065678 () Bool)

(assert (=> b!7467320 m!8065678))

(assert (=> d!2298654 m!8065666))

(declare-fun m!8065680 () Bool)

(assert (=> d!2298654 m!8065680))

(declare-fun m!8065682 () Bool)

(assert (=> b!7467321 m!8065682))

(assert (=> b!7467317 m!8065676))

(assert (=> b!7467317 m!8065676))

(assert (=> b!7467317 m!8065678))

(assert (=> b!7467323 m!8065682))

(assert (=> b!7467323 m!8065682))

(declare-fun m!8065684 () Bool)

(assert (=> b!7467323 m!8065684))

(assert (=> b!7467323 m!8065676))

(assert (=> b!7467323 m!8065684))

(assert (=> b!7467323 m!8065676))

(declare-fun m!8065686 () Bool)

(assert (=> b!7467323 m!8065686))

(assert (=> b!7467324 m!8065682))

(assert (=> b!7467097 d!2298654))

(declare-fun b!7467328 () Bool)

(declare-fun e!4455634 () Bool)

(declare-fun e!4455635 () Bool)

(assert (=> b!7467328 (= e!4455634 e!4455635)))

(declare-fun res!2995487 () Bool)

(assert (=> b!7467328 (=> res!2995487 e!4455635)))

(declare-fun call!685806 () Bool)

(assert (=> b!7467328 (= res!2995487 call!685806)))

(declare-fun b!7467329 () Bool)

(declare-fun e!4455640 () Bool)

(assert (=> b!7467329 (= e!4455640 (nullable!8522 lt!2624352))))

(declare-fun b!7467330 () Bool)

(declare-fun e!4455637 () Bool)

(declare-fun lt!2624450 () Bool)

(assert (=> b!7467330 (= e!4455637 (= lt!2624450 call!685806))))

(declare-fun b!7467331 () Bool)

(declare-fun res!2995486 () Bool)

(declare-fun e!4455639 () Bool)

(assert (=> b!7467331 (=> (not res!2995486) (not e!4455639))))

(assert (=> b!7467331 (= res!2995486 (isEmpty!41159 (tail!14890 s!13591)))))

(declare-fun b!7467332 () Bool)

(declare-fun e!4455636 () Bool)

(assert (=> b!7467332 (= e!4455636 (not lt!2624450))))

(declare-fun d!2298656 () Bool)

(assert (=> d!2298656 e!4455637))

(declare-fun c!1380027 () Bool)

(assert (=> d!2298656 (= c!1380027 (is-EmptyExpr!19560 lt!2624352))))

(assert (=> d!2298656 (= lt!2624450 e!4455640)))

(declare-fun c!1380026 () Bool)

(assert (=> d!2298656 (= c!1380026 (isEmpty!41159 s!13591))))

(assert (=> d!2298656 (validRegex!10074 lt!2624352)))

(assert (=> d!2298656 (= (matchR!9324 lt!2624352 s!13591) lt!2624450)))

(declare-fun bm!685801 () Bool)

(assert (=> bm!685801 (= call!685806 (isEmpty!41159 s!13591))))

(declare-fun b!7467333 () Bool)

(assert (=> b!7467333 (= e!4455637 e!4455636)))

(declare-fun c!1380028 () Bool)

(assert (=> b!7467333 (= c!1380028 (is-EmptyLang!19560 lt!2624352))))

(declare-fun b!7467334 () Bool)

(declare-fun res!2995485 () Bool)

(assert (=> b!7467334 (=> res!2995485 e!4455635)))

(assert (=> b!7467334 (= res!2995485 (not (isEmpty!41159 (tail!14890 s!13591))))))

(declare-fun b!7467335 () Bool)

(assert (=> b!7467335 (= e!4455635 (not (= (head!15321 s!13591) (c!1379993 lt!2624352))))))

(declare-fun b!7467336 () Bool)

(declare-fun res!2995481 () Bool)

(assert (=> b!7467336 (=> (not res!2995481) (not e!4455639))))

(assert (=> b!7467336 (= res!2995481 (not call!685806))))

(declare-fun b!7467337 () Bool)

(assert (=> b!7467337 (= e!4455640 (matchR!9324 (derivativeStep!5581 lt!2624352 (head!15321 s!13591)) (tail!14890 s!13591)))))

(declare-fun b!7467338 () Bool)

(assert (=> b!7467338 (= e!4455639 (= (head!15321 s!13591) (c!1379993 lt!2624352)))))

(declare-fun b!7467339 () Bool)

(declare-fun res!2995484 () Bool)

(declare-fun e!4455638 () Bool)

(assert (=> b!7467339 (=> res!2995484 e!4455638)))

(assert (=> b!7467339 (= res!2995484 e!4455639)))

(declare-fun res!2995488 () Bool)

(assert (=> b!7467339 (=> (not res!2995488) (not e!4455639))))

(assert (=> b!7467339 (= res!2995488 lt!2624450)))

(declare-fun b!7467340 () Bool)

(declare-fun res!2995483 () Bool)

(assert (=> b!7467340 (=> res!2995483 e!4455638)))

(assert (=> b!7467340 (= res!2995483 (not (is-ElementMatch!19560 lt!2624352)))))

(assert (=> b!7467340 (= e!4455636 e!4455638)))

(declare-fun b!7467341 () Bool)

(assert (=> b!7467341 (= e!4455638 e!4455634)))

(declare-fun res!2995482 () Bool)

(assert (=> b!7467341 (=> (not res!2995482) (not e!4455634))))

(assert (=> b!7467341 (= res!2995482 (not lt!2624450))))

(assert (= (and d!2298656 c!1380026) b!7467329))

(assert (= (and d!2298656 (not c!1380026)) b!7467337))

(assert (= (and d!2298656 c!1380027) b!7467330))

(assert (= (and d!2298656 (not c!1380027)) b!7467333))

(assert (= (and b!7467333 c!1380028) b!7467332))

(assert (= (and b!7467333 (not c!1380028)) b!7467340))

(assert (= (and b!7467340 (not res!2995483)) b!7467339))

(assert (= (and b!7467339 res!2995488) b!7467336))

(assert (= (and b!7467336 res!2995481) b!7467331))

(assert (= (and b!7467331 res!2995486) b!7467338))

(assert (= (and b!7467339 (not res!2995484)) b!7467341))

(assert (= (and b!7467341 res!2995482) b!7467328))

(assert (= (and b!7467328 (not res!2995487)) b!7467334))

(assert (= (and b!7467334 (not res!2995485)) b!7467335))

(assert (= (or b!7467330 b!7467328 b!7467336) bm!685801))

(assert (=> bm!685801 m!8065666))

(declare-fun m!8065688 () Bool)

(assert (=> b!7467329 m!8065688))

(assert (=> b!7467334 m!8065676))

(assert (=> b!7467334 m!8065676))

(assert (=> b!7467334 m!8065678))

(assert (=> d!2298656 m!8065666))

(assert (=> d!2298656 m!8065658))

(assert (=> b!7467335 m!8065682))

(assert (=> b!7467331 m!8065676))

(assert (=> b!7467331 m!8065676))

(assert (=> b!7467331 m!8065678))

(assert (=> b!7467337 m!8065682))

(assert (=> b!7467337 m!8065682))

(declare-fun m!8065690 () Bool)

(assert (=> b!7467337 m!8065690))

(assert (=> b!7467337 m!8065676))

(assert (=> b!7467337 m!8065690))

(assert (=> b!7467337 m!8065676))

(declare-fun m!8065692 () Bool)

(assert (=> b!7467337 m!8065692))

(assert (=> b!7467338 m!8065682))

(assert (=> b!7467097 d!2298656))

(declare-fun d!2298658 () Bool)

(assert (=> d!2298658 (= (matchR!9324 lt!2624359 s!13591) (matchRSpec!4239 lt!2624359 s!13591))))

(declare-fun lt!2624451 () Unit!165955)

(assert (=> d!2298658 (= lt!2624451 (choose!57722 lt!2624359 s!13591))))

(assert (=> d!2298658 (validRegex!10074 lt!2624359)))

(assert (=> d!2298658 (= (mainMatchTheorem!4233 lt!2624359 s!13591) lt!2624451)))

(declare-fun bs!1930321 () Bool)

(assert (= bs!1930321 d!2298658))

(assert (=> bs!1930321 m!8065528))

(assert (=> bs!1930321 m!8065526))

(declare-fun m!8065694 () Bool)

(assert (=> bs!1930321 m!8065694))

(assert (=> bs!1930321 m!8065680))

(assert (=> b!7467097 d!2298658))

(declare-fun bs!1930322 () Bool)

(declare-fun d!2298660 () Bool)

(assert (= bs!1930322 (and d!2298660 b!7467253)))

(declare-fun lambda!462256 () Int)

(assert (=> bs!1930322 (not (= lambda!462256 lambda!462253))))

(declare-fun bs!1930323 () Bool)

(assert (= bs!1930323 (and d!2298660 b!7467244)))

(assert (=> bs!1930323 (not (= lambda!462256 lambda!462250))))

(declare-fun bs!1930324 () Bool)

(assert (= bs!1930324 (and d!2298660 b!7467107)))

(assert (=> bs!1930324 (not (= lambda!462256 lambda!462227))))

(declare-fun bs!1930325 () Bool)

(assert (= bs!1930325 (and d!2298660 b!7467103)))

(assert (=> bs!1930325 (= lambda!462256 lambda!462228)))

(declare-fun bs!1930326 () Bool)

(assert (= bs!1930326 (and d!2298660 b!7467255)))

(assert (=> bs!1930326 (not (= lambda!462256 lambda!462252))))

(declare-fun bs!1930327 () Bool)

(assert (= bs!1930327 (and d!2298660 b!7467242)))

(assert (=> bs!1930327 (not (= lambda!462256 lambda!462251))))

(assert (=> bs!1930324 (= (= r1!5845 lt!2624354) (= lambda!462256 lambda!462226))))

(assert (=> bs!1930325 (not (= lambda!462256 lambda!462229))))

(assert (=> d!2298660 true))

(assert (=> d!2298660 true))

(assert (=> d!2298660 true))

(assert (=> d!2298660 (= (isDefined!13806 (findConcatSeparation!3239 r1!5845 rTail!78 Nil!72152 s!13591 s!13591)) (Exists!4179 lambda!462256))))

(declare-fun lt!2624455 () Unit!165955)

(declare-fun choose!57723 (Regex!19560 Regex!19560 List!72276) Unit!165955)

(assert (=> d!2298660 (= lt!2624455 (choose!57723 r1!5845 rTail!78 s!13591))))

(assert (=> d!2298660 (validRegex!10074 r1!5845)))

(assert (=> d!2298660 (= (lemmaFindConcatSeparationEquivalentToExists!2997 r1!5845 rTail!78 s!13591) lt!2624455)))

(declare-fun bs!1930328 () Bool)

(assert (= bs!1930328 d!2298660))

(assert (=> bs!1930328 m!8065574))

(assert (=> bs!1930328 m!8065500))

(assert (=> bs!1930328 m!8065574))

(declare-fun m!8065712 () Bool)

(assert (=> bs!1930328 m!8065712))

(declare-fun m!8065714 () Bool)

(assert (=> bs!1930328 m!8065714))

(declare-fun m!8065716 () Bool)

(assert (=> bs!1930328 m!8065716))

(assert (=> b!7467103 d!2298660))

(declare-fun d!2298662 () Bool)

(declare-fun choose!57724 (Int) Bool)

(assert (=> d!2298662 (= (Exists!4179 lambda!462228) (choose!57724 lambda!462228))))

(declare-fun bs!1930329 () Bool)

(assert (= bs!1930329 d!2298662))

(declare-fun m!8065718 () Bool)

(assert (=> bs!1930329 m!8065718))

(assert (=> b!7467103 d!2298662))

(declare-fun d!2298666 () Bool)

(assert (=> d!2298666 (= (get!25208 lt!2624360) (v!54245 lt!2624360))))

(assert (=> b!7467103 d!2298666))

(declare-fun d!2298668 () Bool)

(assert (=> d!2298668 (= (Exists!4179 lambda!462229) (choose!57724 lambda!462229))))

(declare-fun bs!1930330 () Bool)

(assert (= bs!1930330 d!2298668))

(declare-fun m!8065720 () Bool)

(assert (=> bs!1930330 m!8065720))

(assert (=> b!7467103 d!2298668))

(declare-fun bs!1930331 () Bool)

(declare-fun d!2298670 () Bool)

(assert (= bs!1930331 (and d!2298670 b!7467253)))

(declare-fun lambda!462261 () Int)

(assert (=> bs!1930331 (not (= lambda!462261 lambda!462253))))

(declare-fun bs!1930332 () Bool)

(assert (= bs!1930332 (and d!2298670 b!7467244)))

(assert (=> bs!1930332 (not (= lambda!462261 lambda!462250))))

(declare-fun bs!1930333 () Bool)

(assert (= bs!1930333 (and d!2298670 b!7467107)))

(assert (=> bs!1930333 (not (= lambda!462261 lambda!462227))))

(declare-fun bs!1930334 () Bool)

(assert (= bs!1930334 (and d!2298670 b!7467103)))

(assert (=> bs!1930334 (= lambda!462261 lambda!462228)))

(declare-fun bs!1930335 () Bool)

(assert (= bs!1930335 (and d!2298670 b!7467255)))

(assert (=> bs!1930335 (not (= lambda!462261 lambda!462252))))

(declare-fun bs!1930336 () Bool)

(assert (= bs!1930336 (and d!2298670 d!2298660)))

(assert (=> bs!1930336 (= lambda!462261 lambda!462256)))

(declare-fun bs!1930337 () Bool)

(assert (= bs!1930337 (and d!2298670 b!7467242)))

(assert (=> bs!1930337 (not (= lambda!462261 lambda!462251))))

(assert (=> bs!1930333 (= (= r1!5845 lt!2624354) (= lambda!462261 lambda!462226))))

(assert (=> bs!1930334 (not (= lambda!462261 lambda!462229))))

(assert (=> d!2298670 true))

(assert (=> d!2298670 true))

(assert (=> d!2298670 true))

(declare-fun lambda!462262 () Int)

(assert (=> bs!1930332 (not (= lambda!462262 lambda!462250))))

(assert (=> bs!1930333 (= (= r1!5845 lt!2624354) (= lambda!462262 lambda!462227))))

(assert (=> bs!1930334 (not (= lambda!462262 lambda!462228))))

(assert (=> bs!1930335 (not (= lambda!462262 lambda!462252))))

(assert (=> bs!1930336 (not (= lambda!462262 lambda!462256))))

(assert (=> bs!1930337 (= (and (= r1!5845 (regOne!39632 lt!2624352)) (= rTail!78 (regTwo!39632 lt!2624352))) (= lambda!462262 lambda!462251))))

(declare-fun bs!1930338 () Bool)

(assert (= bs!1930338 d!2298670))

(assert (=> bs!1930338 (not (= lambda!462262 lambda!462261))))

(assert (=> bs!1930331 (= (and (= r1!5845 (regOne!39632 lt!2624359)) (= rTail!78 (regTwo!39632 lt!2624359))) (= lambda!462262 lambda!462253))))

(assert (=> bs!1930333 (not (= lambda!462262 lambda!462226))))

(assert (=> bs!1930334 (= lambda!462262 lambda!462229)))

(assert (=> d!2298670 true))

(assert (=> d!2298670 true))

(assert (=> d!2298670 true))

(assert (=> d!2298670 (= (Exists!4179 lambda!462261) (Exists!4179 lambda!462262))))

(declare-fun lt!2624458 () Unit!165955)

(declare-fun choose!57725 (Regex!19560 Regex!19560 List!72276) Unit!165955)

(assert (=> d!2298670 (= lt!2624458 (choose!57725 r1!5845 rTail!78 s!13591))))

(assert (=> d!2298670 (validRegex!10074 r1!5845)))

(assert (=> d!2298670 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2513 r1!5845 rTail!78 s!13591) lt!2624458)))

(declare-fun m!8065722 () Bool)

(assert (=> bs!1930338 m!8065722))

(declare-fun m!8065724 () Bool)

(assert (=> bs!1930338 m!8065724))

(declare-fun m!8065726 () Bool)

(assert (=> bs!1930338 m!8065726))

(assert (=> bs!1930338 m!8065500))

(assert (=> b!7467103 d!2298670))

(declare-fun b!7467390 () Bool)

(declare-fun e!4455668 () Bool)

(declare-fun e!4455669 () Bool)

(assert (=> b!7467390 (= e!4455668 e!4455669)))

(declare-fun res!2995521 () Bool)

(assert (=> b!7467390 (=> res!2995521 e!4455669)))

(declare-fun call!685808 () Bool)

(assert (=> b!7467390 (= res!2995521 call!685808)))

(declare-fun b!7467391 () Bool)

(declare-fun e!4455674 () Bool)

(assert (=> b!7467391 (= e!4455674 (nullable!8522 r1!5845))))

(declare-fun b!7467392 () Bool)

(declare-fun e!4455671 () Bool)

(declare-fun lt!2624459 () Bool)

(assert (=> b!7467392 (= e!4455671 (= lt!2624459 call!685808))))

(declare-fun b!7467393 () Bool)

(declare-fun res!2995520 () Bool)

(declare-fun e!4455673 () Bool)

(assert (=> b!7467393 (=> (not res!2995520) (not e!4455673))))

(assert (=> b!7467393 (= res!2995520 (isEmpty!41159 (tail!14890 (_1!37588 lt!2624350))))))

(declare-fun b!7467394 () Bool)

(declare-fun e!4455670 () Bool)

(assert (=> b!7467394 (= e!4455670 (not lt!2624459))))

(declare-fun d!2298672 () Bool)

(assert (=> d!2298672 e!4455671))

(declare-fun c!1380041 () Bool)

(assert (=> d!2298672 (= c!1380041 (is-EmptyExpr!19560 r1!5845))))

(assert (=> d!2298672 (= lt!2624459 e!4455674)))

(declare-fun c!1380040 () Bool)

(assert (=> d!2298672 (= c!1380040 (isEmpty!41159 (_1!37588 lt!2624350)))))

(assert (=> d!2298672 (validRegex!10074 r1!5845)))

(assert (=> d!2298672 (= (matchR!9324 r1!5845 (_1!37588 lt!2624350)) lt!2624459)))

(declare-fun bm!685803 () Bool)

(assert (=> bm!685803 (= call!685808 (isEmpty!41159 (_1!37588 lt!2624350)))))

(declare-fun b!7467395 () Bool)

(assert (=> b!7467395 (= e!4455671 e!4455670)))

(declare-fun c!1380042 () Bool)

(assert (=> b!7467395 (= c!1380042 (is-EmptyLang!19560 r1!5845))))

(declare-fun b!7467396 () Bool)

(declare-fun res!2995519 () Bool)

(assert (=> b!7467396 (=> res!2995519 e!4455669)))

(assert (=> b!7467396 (= res!2995519 (not (isEmpty!41159 (tail!14890 (_1!37588 lt!2624350)))))))

(declare-fun b!7467397 () Bool)

(assert (=> b!7467397 (= e!4455669 (not (= (head!15321 (_1!37588 lt!2624350)) (c!1379993 r1!5845))))))

(declare-fun b!7467398 () Bool)

(declare-fun res!2995515 () Bool)

(assert (=> b!7467398 (=> (not res!2995515) (not e!4455673))))

(assert (=> b!7467398 (= res!2995515 (not call!685808))))

(declare-fun b!7467399 () Bool)

(assert (=> b!7467399 (= e!4455674 (matchR!9324 (derivativeStep!5581 r1!5845 (head!15321 (_1!37588 lt!2624350))) (tail!14890 (_1!37588 lt!2624350))))))

(declare-fun b!7467400 () Bool)

(assert (=> b!7467400 (= e!4455673 (= (head!15321 (_1!37588 lt!2624350)) (c!1379993 r1!5845)))))

(declare-fun b!7467401 () Bool)

(declare-fun res!2995518 () Bool)

(declare-fun e!4455672 () Bool)

(assert (=> b!7467401 (=> res!2995518 e!4455672)))

(assert (=> b!7467401 (= res!2995518 e!4455673)))

(declare-fun res!2995522 () Bool)

(assert (=> b!7467401 (=> (not res!2995522) (not e!4455673))))

(assert (=> b!7467401 (= res!2995522 lt!2624459)))

(declare-fun b!7467402 () Bool)

(declare-fun res!2995517 () Bool)

(assert (=> b!7467402 (=> res!2995517 e!4455672)))

(assert (=> b!7467402 (= res!2995517 (not (is-ElementMatch!19560 r1!5845)))))

(assert (=> b!7467402 (= e!4455670 e!4455672)))

(declare-fun b!7467403 () Bool)

(assert (=> b!7467403 (= e!4455672 e!4455668)))

(declare-fun res!2995516 () Bool)

(assert (=> b!7467403 (=> (not res!2995516) (not e!4455668))))

(assert (=> b!7467403 (= res!2995516 (not lt!2624459))))

(assert (= (and d!2298672 c!1380040) b!7467391))

(assert (= (and d!2298672 (not c!1380040)) b!7467399))

(assert (= (and d!2298672 c!1380041) b!7467392))

(assert (= (and d!2298672 (not c!1380041)) b!7467395))

(assert (= (and b!7467395 c!1380042) b!7467394))

(assert (= (and b!7467395 (not c!1380042)) b!7467402))

(assert (= (and b!7467402 (not res!2995517)) b!7467401))

(assert (= (and b!7467401 res!2995522) b!7467398))

(assert (= (and b!7467398 res!2995515) b!7467393))

(assert (= (and b!7467393 res!2995520) b!7467400))

(assert (= (and b!7467401 (not res!2995518)) b!7467403))

(assert (= (and b!7467403 res!2995516) b!7467390))

(assert (= (and b!7467390 (not res!2995521)) b!7467396))

(assert (= (and b!7467396 (not res!2995519)) b!7467397))

(assert (= (or b!7467392 b!7467390 b!7467398) bm!685803))

(declare-fun m!8065728 () Bool)

(assert (=> bm!685803 m!8065728))

(declare-fun m!8065730 () Bool)

(assert (=> b!7467391 m!8065730))

(declare-fun m!8065732 () Bool)

(assert (=> b!7467396 m!8065732))

(assert (=> b!7467396 m!8065732))

(declare-fun m!8065734 () Bool)

(assert (=> b!7467396 m!8065734))

(assert (=> d!2298672 m!8065728))

(assert (=> d!2298672 m!8065500))

(declare-fun m!8065736 () Bool)

(assert (=> b!7467397 m!8065736))

(assert (=> b!7467393 m!8065732))

(assert (=> b!7467393 m!8065732))

(assert (=> b!7467393 m!8065734))

(assert (=> b!7467399 m!8065736))

(assert (=> b!7467399 m!8065736))

(declare-fun m!8065738 () Bool)

(assert (=> b!7467399 m!8065738))

(assert (=> b!7467399 m!8065732))

(assert (=> b!7467399 m!8065738))

(assert (=> b!7467399 m!8065732))

(declare-fun m!8065740 () Bool)

(assert (=> b!7467399 m!8065740))

(assert (=> b!7467400 m!8065736))

(assert (=> b!7467103 d!2298672))

(declare-fun b!7467432 () Bool)

(declare-fun e!4455692 () Option!17117)

(assert (=> b!7467432 (= e!4455692 (Some!17116 (tuple2!68571 Nil!72152 s!13591)))))

(declare-fun b!7467433 () Bool)

(declare-fun res!2995543 () Bool)

(declare-fun e!4455689 () Bool)

(assert (=> b!7467433 (=> (not res!2995543) (not e!4455689))))

(declare-fun lt!2624466 () Option!17117)

(assert (=> b!7467433 (= res!2995543 (matchR!9324 r1!5845 (_1!37588 (get!25208 lt!2624466))))))

(declare-fun b!7467434 () Bool)

(declare-fun ++!17194 (List!72276 List!72276) List!72276)

(assert (=> b!7467434 (= e!4455689 (= (++!17194 (_1!37588 (get!25208 lt!2624466)) (_2!37588 (get!25208 lt!2624466))) s!13591))))

(declare-fun b!7467435 () Bool)

(declare-fun e!4455690 () Option!17117)

(assert (=> b!7467435 (= e!4455690 None!17116)))

(declare-fun d!2298674 () Bool)

(declare-fun e!4455693 () Bool)

(assert (=> d!2298674 e!4455693))

(declare-fun res!2995547 () Bool)

(assert (=> d!2298674 (=> res!2995547 e!4455693)))

(assert (=> d!2298674 (= res!2995547 e!4455689)))

(declare-fun res!2995546 () Bool)

(assert (=> d!2298674 (=> (not res!2995546) (not e!4455689))))

(assert (=> d!2298674 (= res!2995546 (isDefined!13806 lt!2624466))))

(assert (=> d!2298674 (= lt!2624466 e!4455692)))

(declare-fun c!1380048 () Bool)

(declare-fun e!4455691 () Bool)

(assert (=> d!2298674 (= c!1380048 e!4455691)))

(declare-fun res!2995544 () Bool)

(assert (=> d!2298674 (=> (not res!2995544) (not e!4455691))))

(assert (=> d!2298674 (= res!2995544 (matchR!9324 r1!5845 Nil!72152))))

(assert (=> d!2298674 (validRegex!10074 r1!5845)))

(assert (=> d!2298674 (= (findConcatSeparation!3239 r1!5845 rTail!78 Nil!72152 s!13591 s!13591) lt!2624466)))

(declare-fun b!7467436 () Bool)

(assert (=> b!7467436 (= e!4455693 (not (isDefined!13806 lt!2624466)))))

(declare-fun b!7467437 () Bool)

(declare-fun lt!2624467 () Unit!165955)

(declare-fun lt!2624468 () Unit!165955)

(assert (=> b!7467437 (= lt!2624467 lt!2624468)))

(assert (=> b!7467437 (= (++!17194 (++!17194 Nil!72152 (Cons!72152 (h!78600 s!13591) Nil!72152)) (t!386845 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3074 (List!72276 C!39394 List!72276 List!72276) Unit!165955)

(assert (=> b!7467437 (= lt!2624468 (lemmaMoveElementToOtherListKeepsConcatEq!3074 Nil!72152 (h!78600 s!13591) (t!386845 s!13591) s!13591))))

(assert (=> b!7467437 (= e!4455690 (findConcatSeparation!3239 r1!5845 rTail!78 (++!17194 Nil!72152 (Cons!72152 (h!78600 s!13591) Nil!72152)) (t!386845 s!13591) s!13591))))

(declare-fun b!7467438 () Bool)

(assert (=> b!7467438 (= e!4455692 e!4455690)))

(declare-fun c!1380047 () Bool)

(assert (=> b!7467438 (= c!1380047 (is-Nil!72152 s!13591))))

(declare-fun b!7467439 () Bool)

(assert (=> b!7467439 (= e!4455691 (matchR!9324 rTail!78 s!13591))))

(declare-fun b!7467440 () Bool)

(declare-fun res!2995545 () Bool)

(assert (=> b!7467440 (=> (not res!2995545) (not e!4455689))))

(assert (=> b!7467440 (= res!2995545 (matchR!9324 rTail!78 (_2!37588 (get!25208 lt!2624466))))))

(assert (= (and d!2298674 res!2995544) b!7467439))

(assert (= (and d!2298674 c!1380048) b!7467432))

(assert (= (and d!2298674 (not c!1380048)) b!7467438))

(assert (= (and b!7467438 c!1380047) b!7467435))

(assert (= (and b!7467438 (not c!1380047)) b!7467437))

(assert (= (and d!2298674 res!2995546) b!7467433))

(assert (= (and b!7467433 res!2995543) b!7467440))

(assert (= (and b!7467440 res!2995545) b!7467434))

(assert (= (and d!2298674 (not res!2995547)) b!7467436))

(declare-fun m!8065742 () Bool)

(assert (=> b!7467436 m!8065742))

(declare-fun m!8065744 () Bool)

(assert (=> b!7467433 m!8065744))

(declare-fun m!8065746 () Bool)

(assert (=> b!7467433 m!8065746))

(assert (=> b!7467440 m!8065744))

(declare-fun m!8065748 () Bool)

(assert (=> b!7467440 m!8065748))

(assert (=> b!7467434 m!8065744))

(declare-fun m!8065750 () Bool)

(assert (=> b!7467434 m!8065750))

(declare-fun m!8065752 () Bool)

(assert (=> b!7467439 m!8065752))

(assert (=> d!2298674 m!8065742))

(declare-fun m!8065754 () Bool)

(assert (=> d!2298674 m!8065754))

(assert (=> d!2298674 m!8065500))

(declare-fun m!8065756 () Bool)

(assert (=> b!7467437 m!8065756))

(assert (=> b!7467437 m!8065756))

(declare-fun m!8065758 () Bool)

(assert (=> b!7467437 m!8065758))

(declare-fun m!8065760 () Bool)

(assert (=> b!7467437 m!8065760))

(assert (=> b!7467437 m!8065756))

(declare-fun m!8065762 () Bool)

(assert (=> b!7467437 m!8065762))

(assert (=> b!7467103 d!2298674))

(declare-fun d!2298676 () Bool)

(declare-fun isEmpty!41160 (Option!17117) Bool)

(assert (=> d!2298676 (= (isDefined!13806 lt!2624360) (not (isEmpty!41160 lt!2624360)))))

(declare-fun bs!1930339 () Bool)

(assert (= bs!1930339 d!2298676))

(declare-fun m!8065764 () Bool)

(assert (=> bs!1930339 m!8065764))

(assert (=> b!7467103 d!2298676))

(declare-fun bs!1930340 () Bool)

(declare-fun b!7467449 () Bool)

(assert (= bs!1930340 (and b!7467449 b!7467244)))

(declare-fun lambda!462267 () Int)

(assert (=> bs!1930340 (= (and (= (_1!37588 lt!2624350) s!13591) (= (reg!19889 r1!5845) (reg!19889 lt!2624352)) (= r1!5845 lt!2624352)) (= lambda!462267 lambda!462250))))

(declare-fun bs!1930341 () Bool)

(assert (= bs!1930341 (and b!7467449 b!7467107)))

(assert (=> bs!1930341 (not (= lambda!462267 lambda!462227))))

(declare-fun bs!1930342 () Bool)

(assert (= bs!1930342 (and b!7467449 b!7467103)))

(assert (=> bs!1930342 (not (= lambda!462267 lambda!462228))))

(declare-fun bs!1930343 () Bool)

(assert (= bs!1930343 (and b!7467449 b!7467255)))

(assert (=> bs!1930343 (= (and (= (_1!37588 lt!2624350) s!13591) (= (reg!19889 r1!5845) (reg!19889 lt!2624359)) (= r1!5845 lt!2624359)) (= lambda!462267 lambda!462252))))

(declare-fun bs!1930344 () Bool)

(assert (= bs!1930344 (and b!7467449 d!2298660)))

(assert (=> bs!1930344 (not (= lambda!462267 lambda!462256))))

(declare-fun bs!1930345 () Bool)

(assert (= bs!1930345 (and b!7467449 d!2298670)))

(assert (=> bs!1930345 (not (= lambda!462267 lambda!462261))))

(declare-fun bs!1930346 () Bool)

(assert (= bs!1930346 (and b!7467449 b!7467253)))

(assert (=> bs!1930346 (not (= lambda!462267 lambda!462253))))

(declare-fun bs!1930347 () Bool)

(assert (= bs!1930347 (and b!7467449 b!7467242)))

(assert (=> bs!1930347 (not (= lambda!462267 lambda!462251))))

(assert (=> bs!1930345 (not (= lambda!462267 lambda!462262))))

(assert (=> bs!1930341 (not (= lambda!462267 lambda!462226))))

(assert (=> bs!1930342 (not (= lambda!462267 lambda!462229))))

(assert (=> b!7467449 true))

(assert (=> b!7467449 true))

(declare-fun bs!1930348 () Bool)

(declare-fun b!7467447 () Bool)

(assert (= bs!1930348 (and b!7467447 b!7467107)))

(declare-fun lambda!462268 () Int)

(assert (=> bs!1930348 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 r1!5845) lt!2624354) (= (regTwo!39632 r1!5845) rTail!78)) (= lambda!462268 lambda!462227))))

(declare-fun bs!1930349 () Bool)

(assert (= bs!1930349 (and b!7467447 b!7467103)))

(assert (=> bs!1930349 (not (= lambda!462268 lambda!462228))))

(declare-fun bs!1930350 () Bool)

(assert (= bs!1930350 (and b!7467447 b!7467255)))

(assert (=> bs!1930350 (not (= lambda!462268 lambda!462252))))

(declare-fun bs!1930351 () Bool)

(assert (= bs!1930351 (and b!7467447 d!2298660)))

(assert (=> bs!1930351 (not (= lambda!462268 lambda!462256))))

(declare-fun bs!1930352 () Bool)

(assert (= bs!1930352 (and b!7467447 d!2298670)))

(assert (=> bs!1930352 (not (= lambda!462268 lambda!462261))))

(declare-fun bs!1930353 () Bool)

(assert (= bs!1930353 (and b!7467447 b!7467253)))

(assert (=> bs!1930353 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 r1!5845) (regOne!39632 lt!2624359)) (= (regTwo!39632 r1!5845) (regTwo!39632 lt!2624359))) (= lambda!462268 lambda!462253))))

(declare-fun bs!1930354 () Bool)

(assert (= bs!1930354 (and b!7467447 b!7467449)))

(assert (=> bs!1930354 (not (= lambda!462268 lambda!462267))))

(declare-fun bs!1930355 () Bool)

(assert (= bs!1930355 (and b!7467447 b!7467244)))

(assert (=> bs!1930355 (not (= lambda!462268 lambda!462250))))

(declare-fun bs!1930356 () Bool)

(assert (= bs!1930356 (and b!7467447 b!7467242)))

(assert (=> bs!1930356 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 r1!5845) (regOne!39632 lt!2624352)) (= (regTwo!39632 r1!5845) (regTwo!39632 lt!2624352))) (= lambda!462268 lambda!462251))))

(assert (=> bs!1930352 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 r1!5845) r1!5845) (= (regTwo!39632 r1!5845) rTail!78)) (= lambda!462268 lambda!462262))))

(assert (=> bs!1930348 (not (= lambda!462268 lambda!462226))))

(assert (=> bs!1930349 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 r1!5845) r1!5845) (= (regTwo!39632 r1!5845) rTail!78)) (= lambda!462268 lambda!462229))))

(assert (=> b!7467447 true))

(assert (=> b!7467447 true))

(declare-fun b!7467441 () Bool)

(declare-fun e!4455697 () Bool)

(declare-fun e!4455696 () Bool)

(assert (=> b!7467441 (= e!4455697 e!4455696)))

(declare-fun res!2995549 () Bool)

(assert (=> b!7467441 (= res!2995549 (not (is-EmptyLang!19560 r1!5845)))))

(assert (=> b!7467441 (=> (not res!2995549) (not e!4455696))))

(declare-fun b!7467443 () Bool)

(declare-fun c!1380050 () Bool)

(assert (=> b!7467443 (= c!1380050 (is-Union!19560 r1!5845))))

(declare-fun e!4455695 () Bool)

(declare-fun e!4455699 () Bool)

(assert (=> b!7467443 (= e!4455695 e!4455699)))

(declare-fun b!7467444 () Bool)

(declare-fun res!2995550 () Bool)

(declare-fun e!4455694 () Bool)

(assert (=> b!7467444 (=> res!2995550 e!4455694)))

(declare-fun call!685813 () Bool)

(assert (=> b!7467444 (= res!2995550 call!685813)))

(declare-fun e!4455698 () Bool)

(assert (=> b!7467444 (= e!4455698 e!4455694)))

(declare-fun bm!685808 () Bool)

(declare-fun call!685814 () Bool)

(declare-fun c!1380052 () Bool)

(assert (=> bm!685808 (= call!685814 (Exists!4179 (ite c!1380052 lambda!462267 lambda!462268)))))

(declare-fun b!7467445 () Bool)

(declare-fun c!1380051 () Bool)

(assert (=> b!7467445 (= c!1380051 (is-ElementMatch!19560 r1!5845))))

(assert (=> b!7467445 (= e!4455696 e!4455695)))

(declare-fun b!7467446 () Bool)

(declare-fun e!4455700 () Bool)

(assert (=> b!7467446 (= e!4455700 (matchRSpec!4239 (regTwo!39633 r1!5845) (_1!37588 lt!2624350)))))

(assert (=> b!7467447 (= e!4455698 call!685814)))

(declare-fun b!7467448 () Bool)

(assert (=> b!7467448 (= e!4455697 call!685813)))

(assert (=> b!7467449 (= e!4455694 call!685814)))

(declare-fun d!2298678 () Bool)

(declare-fun c!1380049 () Bool)

(assert (=> d!2298678 (= c!1380049 (is-EmptyExpr!19560 r1!5845))))

(assert (=> d!2298678 (= (matchRSpec!4239 r1!5845 (_1!37588 lt!2624350)) e!4455697)))

(declare-fun b!7467442 () Bool)

(assert (=> b!7467442 (= e!4455699 e!4455700)))

(declare-fun res!2995548 () Bool)

(assert (=> b!7467442 (= res!2995548 (matchRSpec!4239 (regOne!39633 r1!5845) (_1!37588 lt!2624350)))))

(assert (=> b!7467442 (=> res!2995548 e!4455700)))

(declare-fun bm!685809 () Bool)

(assert (=> bm!685809 (= call!685813 (isEmpty!41159 (_1!37588 lt!2624350)))))

(declare-fun b!7467450 () Bool)

(assert (=> b!7467450 (= e!4455699 e!4455698)))

(assert (=> b!7467450 (= c!1380052 (is-Star!19560 r1!5845))))

(declare-fun b!7467451 () Bool)

(assert (=> b!7467451 (= e!4455695 (= (_1!37588 lt!2624350) (Cons!72152 (c!1379993 r1!5845) Nil!72152)))))

(assert (= (and d!2298678 c!1380049) b!7467448))

(assert (= (and d!2298678 (not c!1380049)) b!7467441))

(assert (= (and b!7467441 res!2995549) b!7467445))

(assert (= (and b!7467445 c!1380051) b!7467451))

(assert (= (and b!7467445 (not c!1380051)) b!7467443))

(assert (= (and b!7467443 c!1380050) b!7467442))

(assert (= (and b!7467443 (not c!1380050)) b!7467450))

(assert (= (and b!7467442 (not res!2995548)) b!7467446))

(assert (= (and b!7467450 c!1380052) b!7467444))

(assert (= (and b!7467450 (not c!1380052)) b!7467447))

(assert (= (and b!7467444 (not res!2995550)) b!7467449))

(assert (= (or b!7467449 b!7467447) bm!685808))

(assert (= (or b!7467448 b!7467444) bm!685809))

(declare-fun m!8065766 () Bool)

(assert (=> bm!685808 m!8065766))

(declare-fun m!8065768 () Bool)

(assert (=> b!7467446 m!8065768))

(declare-fun m!8065770 () Bool)

(assert (=> b!7467442 m!8065770))

(assert (=> bm!685809 m!8065728))

(assert (=> b!7467104 d!2298678))

(declare-fun d!2298680 () Bool)

(assert (=> d!2298680 (= (matchR!9324 lt!2624354 (_1!37588 lt!2624350)) (matchRSpec!4239 lt!2624354 (_1!37588 lt!2624350)))))

(declare-fun lt!2624469 () Unit!165955)

(assert (=> d!2298680 (= lt!2624469 (choose!57722 lt!2624354 (_1!37588 lt!2624350)))))

(assert (=> d!2298680 (validRegex!10074 lt!2624354)))

(assert (=> d!2298680 (= (mainMatchTheorem!4233 lt!2624354 (_1!37588 lt!2624350)) lt!2624469)))

(declare-fun bs!1930359 () Bool)

(assert (= bs!1930359 d!2298680))

(assert (=> bs!1930359 m!8065554))

(assert (=> bs!1930359 m!8065552))

(declare-fun m!8065772 () Bool)

(assert (=> bs!1930359 m!8065772))

(assert (=> bs!1930359 m!8065542))

(assert (=> b!7467104 d!2298680))

(declare-fun b!7467481 () Bool)

(declare-fun e!4455726 () Bool)

(declare-fun e!4455728 () Bool)

(assert (=> b!7467481 (= e!4455726 e!4455728)))

(declare-fun c!1380061 () Bool)

(assert (=> b!7467481 (= c!1380061 (is-Union!19560 lt!2624354))))

(declare-fun b!7467482 () Bool)

(declare-fun e!4455723 () Bool)

(declare-fun call!685823 () Bool)

(assert (=> b!7467482 (= e!4455723 call!685823)))

(declare-fun b!7467483 () Bool)

(declare-fun e!4455722 () Bool)

(assert (=> b!7467483 (= e!4455722 e!4455726)))

(declare-fun c!1380062 () Bool)

(assert (=> b!7467483 (= c!1380062 (is-Star!19560 lt!2624354))))

(declare-fun bm!685818 () Bool)

(assert (=> bm!685818 (= call!685823 (validRegex!10074 (ite c!1380062 (reg!19889 lt!2624354) (ite c!1380061 (regOne!39633 lt!2624354) (regOne!39632 lt!2624354)))))))

(declare-fun b!7467484 () Bool)

(declare-fun e!4455724 () Bool)

(declare-fun call!685825 () Bool)

(assert (=> b!7467484 (= e!4455724 call!685825)))

(declare-fun d!2298682 () Bool)

(declare-fun res!2995568 () Bool)

(assert (=> d!2298682 (=> res!2995568 e!4455722)))

(assert (=> d!2298682 (= res!2995568 (is-ElementMatch!19560 lt!2624354))))

(assert (=> d!2298682 (= (validRegex!10074 lt!2624354) e!4455722)))

(declare-fun b!7467485 () Bool)

(declare-fun e!4455727 () Bool)

(assert (=> b!7467485 (= e!4455727 e!4455724)))

(declare-fun res!2995566 () Bool)

(assert (=> b!7467485 (=> (not res!2995566) (not e!4455724))))

(declare-fun call!685824 () Bool)

(assert (=> b!7467485 (= res!2995566 call!685824)))

(declare-fun b!7467486 () Bool)

(assert (=> b!7467486 (= e!4455726 e!4455723)))

(declare-fun res!2995564 () Bool)

(assert (=> b!7467486 (= res!2995564 (not (nullable!8522 (reg!19889 lt!2624354))))))

(assert (=> b!7467486 (=> (not res!2995564) (not e!4455723))))

(declare-fun b!7467487 () Bool)

(declare-fun res!2995565 () Bool)

(assert (=> b!7467487 (=> res!2995565 e!4455727)))

(assert (=> b!7467487 (= res!2995565 (not (is-Concat!28405 lt!2624354)))))

(assert (=> b!7467487 (= e!4455728 e!4455727)))

(declare-fun bm!685819 () Bool)

(assert (=> bm!685819 (= call!685825 (validRegex!10074 (ite c!1380061 (regTwo!39633 lt!2624354) (regTwo!39632 lt!2624354))))))

(declare-fun b!7467488 () Bool)

(declare-fun e!4455725 () Bool)

(assert (=> b!7467488 (= e!4455725 call!685825)))

(declare-fun bm!685820 () Bool)

(assert (=> bm!685820 (= call!685824 call!685823)))

(declare-fun b!7467489 () Bool)

(declare-fun res!2995567 () Bool)

(assert (=> b!7467489 (=> (not res!2995567) (not e!4455725))))

(assert (=> b!7467489 (= res!2995567 call!685824)))

(assert (=> b!7467489 (= e!4455728 e!4455725)))

(assert (= (and d!2298682 (not res!2995568)) b!7467483))

(assert (= (and b!7467483 c!1380062) b!7467486))

(assert (= (and b!7467483 (not c!1380062)) b!7467481))

(assert (= (and b!7467486 res!2995564) b!7467482))

(assert (= (and b!7467481 c!1380061) b!7467489))

(assert (= (and b!7467481 (not c!1380061)) b!7467487))

(assert (= (and b!7467489 res!2995567) b!7467488))

(assert (= (and b!7467487 (not res!2995565)) b!7467485))

(assert (= (and b!7467485 res!2995566) b!7467484))

(assert (= (or b!7467488 b!7467484) bm!685819))

(assert (= (or b!7467489 b!7467485) bm!685820))

(assert (= (or b!7467482 bm!685820) bm!685818))

(declare-fun m!8065780 () Bool)

(assert (=> bm!685818 m!8065780))

(declare-fun m!8065782 () Bool)

(assert (=> b!7467486 m!8065782))

(declare-fun m!8065784 () Bool)

(assert (=> bm!685819 m!8065784))

(assert (=> b!7467104 d!2298682))

(declare-fun b!7467490 () Bool)

(declare-fun e!4455729 () Bool)

(declare-fun e!4455730 () Bool)

(assert (=> b!7467490 (= e!4455729 e!4455730)))

(declare-fun res!2995575 () Bool)

(assert (=> b!7467490 (=> res!2995575 e!4455730)))

(declare-fun call!685826 () Bool)

(assert (=> b!7467490 (= res!2995575 call!685826)))

(declare-fun b!7467491 () Bool)

(declare-fun e!4455735 () Bool)

(assert (=> b!7467491 (= e!4455735 (nullable!8522 lt!2624354))))

(declare-fun b!7467492 () Bool)

(declare-fun e!4455732 () Bool)

(declare-fun lt!2624470 () Bool)

(assert (=> b!7467492 (= e!4455732 (= lt!2624470 call!685826))))

(declare-fun b!7467493 () Bool)

(declare-fun res!2995574 () Bool)

(declare-fun e!4455734 () Bool)

(assert (=> b!7467493 (=> (not res!2995574) (not e!4455734))))

(assert (=> b!7467493 (= res!2995574 (isEmpty!41159 (tail!14890 (_1!37588 lt!2624350))))))

(declare-fun b!7467494 () Bool)

(declare-fun e!4455731 () Bool)

(assert (=> b!7467494 (= e!4455731 (not lt!2624470))))

(declare-fun d!2298686 () Bool)

(assert (=> d!2298686 e!4455732))

(declare-fun c!1380064 () Bool)

(assert (=> d!2298686 (= c!1380064 (is-EmptyExpr!19560 lt!2624354))))

(assert (=> d!2298686 (= lt!2624470 e!4455735)))

(declare-fun c!1380063 () Bool)

(assert (=> d!2298686 (= c!1380063 (isEmpty!41159 (_1!37588 lt!2624350)))))

(assert (=> d!2298686 (validRegex!10074 lt!2624354)))

(assert (=> d!2298686 (= (matchR!9324 lt!2624354 (_1!37588 lt!2624350)) lt!2624470)))

(declare-fun bm!685821 () Bool)

(assert (=> bm!685821 (= call!685826 (isEmpty!41159 (_1!37588 lt!2624350)))))

(declare-fun b!7467495 () Bool)

(assert (=> b!7467495 (= e!4455732 e!4455731)))

(declare-fun c!1380065 () Bool)

(assert (=> b!7467495 (= c!1380065 (is-EmptyLang!19560 lt!2624354))))

(declare-fun b!7467496 () Bool)

(declare-fun res!2995573 () Bool)

(assert (=> b!7467496 (=> res!2995573 e!4455730)))

(assert (=> b!7467496 (= res!2995573 (not (isEmpty!41159 (tail!14890 (_1!37588 lt!2624350)))))))

(declare-fun b!7467497 () Bool)

(assert (=> b!7467497 (= e!4455730 (not (= (head!15321 (_1!37588 lt!2624350)) (c!1379993 lt!2624354))))))

(declare-fun b!7467498 () Bool)

(declare-fun res!2995569 () Bool)

(assert (=> b!7467498 (=> (not res!2995569) (not e!4455734))))

(assert (=> b!7467498 (= res!2995569 (not call!685826))))

(declare-fun b!7467499 () Bool)

(assert (=> b!7467499 (= e!4455735 (matchR!9324 (derivativeStep!5581 lt!2624354 (head!15321 (_1!37588 lt!2624350))) (tail!14890 (_1!37588 lt!2624350))))))

(declare-fun b!7467500 () Bool)

(assert (=> b!7467500 (= e!4455734 (= (head!15321 (_1!37588 lt!2624350)) (c!1379993 lt!2624354)))))

(declare-fun b!7467501 () Bool)

(declare-fun res!2995572 () Bool)

(declare-fun e!4455733 () Bool)

(assert (=> b!7467501 (=> res!2995572 e!4455733)))

(assert (=> b!7467501 (= res!2995572 e!4455734)))

(declare-fun res!2995576 () Bool)

(assert (=> b!7467501 (=> (not res!2995576) (not e!4455734))))

(assert (=> b!7467501 (= res!2995576 lt!2624470)))

(declare-fun b!7467502 () Bool)

(declare-fun res!2995571 () Bool)

(assert (=> b!7467502 (=> res!2995571 e!4455733)))

(assert (=> b!7467502 (= res!2995571 (not (is-ElementMatch!19560 lt!2624354)))))

(assert (=> b!7467502 (= e!4455731 e!4455733)))

(declare-fun b!7467503 () Bool)

(assert (=> b!7467503 (= e!4455733 e!4455729)))

(declare-fun res!2995570 () Bool)

(assert (=> b!7467503 (=> (not res!2995570) (not e!4455729))))

(assert (=> b!7467503 (= res!2995570 (not lt!2624470))))

(assert (= (and d!2298686 c!1380063) b!7467491))

(assert (= (and d!2298686 (not c!1380063)) b!7467499))

(assert (= (and d!2298686 c!1380064) b!7467492))

(assert (= (and d!2298686 (not c!1380064)) b!7467495))

(assert (= (and b!7467495 c!1380065) b!7467494))

(assert (= (and b!7467495 (not c!1380065)) b!7467502))

(assert (= (and b!7467502 (not res!2995571)) b!7467501))

(assert (= (and b!7467501 res!2995576) b!7467498))

(assert (= (and b!7467498 res!2995569) b!7467493))

(assert (= (and b!7467493 res!2995574) b!7467500))

(assert (= (and b!7467501 (not res!2995572)) b!7467503))

(assert (= (and b!7467503 res!2995570) b!7467490))

(assert (= (and b!7467490 (not res!2995575)) b!7467496))

(assert (= (and b!7467496 (not res!2995573)) b!7467497))

(assert (= (or b!7467492 b!7467490 b!7467498) bm!685821))

(assert (=> bm!685821 m!8065728))

(declare-fun m!8065786 () Bool)

(assert (=> b!7467491 m!8065786))

(assert (=> b!7467496 m!8065732))

(assert (=> b!7467496 m!8065732))

(assert (=> b!7467496 m!8065734))

(assert (=> d!2298686 m!8065728))

(assert (=> d!2298686 m!8065542))

(assert (=> b!7467497 m!8065736))

(assert (=> b!7467493 m!8065732))

(assert (=> b!7467493 m!8065732))

(assert (=> b!7467493 m!8065734))

(assert (=> b!7467499 m!8065736))

(assert (=> b!7467499 m!8065736))

(declare-fun m!8065788 () Bool)

(assert (=> b!7467499 m!8065788))

(assert (=> b!7467499 m!8065732))

(assert (=> b!7467499 m!8065788))

(assert (=> b!7467499 m!8065732))

(declare-fun m!8065790 () Bool)

(assert (=> b!7467499 m!8065790))

(assert (=> b!7467500 m!8065736))

(assert (=> b!7467104 d!2298686))

(declare-fun bs!1930363 () Bool)

(declare-fun b!7467512 () Bool)

(assert (= bs!1930363 (and b!7467512 b!7467447)))

(declare-fun lambda!462271 () Int)

(assert (=> bs!1930363 (not (= lambda!462271 lambda!462268))))

(declare-fun bs!1930364 () Bool)

(assert (= bs!1930364 (and b!7467512 b!7467107)))

(assert (=> bs!1930364 (not (= lambda!462271 lambda!462227))))

(declare-fun bs!1930365 () Bool)

(assert (= bs!1930365 (and b!7467512 b!7467103)))

(assert (=> bs!1930365 (not (= lambda!462271 lambda!462228))))

(declare-fun bs!1930366 () Bool)

(assert (= bs!1930366 (and b!7467512 b!7467255)))

(assert (=> bs!1930366 (= (and (= (_1!37588 lt!2624350) s!13591) (= (reg!19889 r2!5783) (reg!19889 lt!2624359)) (= r2!5783 lt!2624359)) (= lambda!462271 lambda!462252))))

(declare-fun bs!1930367 () Bool)

(assert (= bs!1930367 (and b!7467512 d!2298660)))

(assert (=> bs!1930367 (not (= lambda!462271 lambda!462256))))

(declare-fun bs!1930368 () Bool)

(assert (= bs!1930368 (and b!7467512 d!2298670)))

(assert (=> bs!1930368 (not (= lambda!462271 lambda!462261))))

(declare-fun bs!1930369 () Bool)

(assert (= bs!1930369 (and b!7467512 b!7467253)))

(assert (=> bs!1930369 (not (= lambda!462271 lambda!462253))))

(declare-fun bs!1930370 () Bool)

(assert (= bs!1930370 (and b!7467512 b!7467449)))

(assert (=> bs!1930370 (= (and (= (reg!19889 r2!5783) (reg!19889 r1!5845)) (= r2!5783 r1!5845)) (= lambda!462271 lambda!462267))))

(declare-fun bs!1930371 () Bool)

(assert (= bs!1930371 (and b!7467512 b!7467244)))

(assert (=> bs!1930371 (= (and (= (_1!37588 lt!2624350) s!13591) (= (reg!19889 r2!5783) (reg!19889 lt!2624352)) (= r2!5783 lt!2624352)) (= lambda!462271 lambda!462250))))

(declare-fun bs!1930372 () Bool)

(assert (= bs!1930372 (and b!7467512 b!7467242)))

(assert (=> bs!1930372 (not (= lambda!462271 lambda!462251))))

(assert (=> bs!1930368 (not (= lambda!462271 lambda!462262))))

(assert (=> bs!1930364 (not (= lambda!462271 lambda!462226))))

(assert (=> bs!1930365 (not (= lambda!462271 lambda!462229))))

(assert (=> b!7467512 true))

(assert (=> b!7467512 true))

(declare-fun bs!1930373 () Bool)

(declare-fun b!7467510 () Bool)

(assert (= bs!1930373 (and b!7467510 b!7467447)))

(declare-fun lambda!462272 () Int)

(assert (=> bs!1930373 (= (and (= (regOne!39632 r2!5783) (regOne!39632 r1!5845)) (= (regTwo!39632 r2!5783) (regTwo!39632 r1!5845))) (= lambda!462272 lambda!462268))))

(declare-fun bs!1930374 () Bool)

(assert (= bs!1930374 (and b!7467510 b!7467107)))

(assert (=> bs!1930374 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 r2!5783) lt!2624354) (= (regTwo!39632 r2!5783) rTail!78)) (= lambda!462272 lambda!462227))))

(declare-fun bs!1930375 () Bool)

(assert (= bs!1930375 (and b!7467510 b!7467103)))

(assert (=> bs!1930375 (not (= lambda!462272 lambda!462228))))

(declare-fun bs!1930376 () Bool)

(assert (= bs!1930376 (and b!7467510 b!7467255)))

(assert (=> bs!1930376 (not (= lambda!462272 lambda!462252))))

(declare-fun bs!1930377 () Bool)

(assert (= bs!1930377 (and b!7467510 b!7467512)))

(assert (=> bs!1930377 (not (= lambda!462272 lambda!462271))))

(declare-fun bs!1930378 () Bool)

(assert (= bs!1930378 (and b!7467510 d!2298660)))

(assert (=> bs!1930378 (not (= lambda!462272 lambda!462256))))

(declare-fun bs!1930379 () Bool)

(assert (= bs!1930379 (and b!7467510 d!2298670)))

(assert (=> bs!1930379 (not (= lambda!462272 lambda!462261))))

(declare-fun bs!1930380 () Bool)

(assert (= bs!1930380 (and b!7467510 b!7467253)))

(assert (=> bs!1930380 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 r2!5783) (regOne!39632 lt!2624359)) (= (regTwo!39632 r2!5783) (regTwo!39632 lt!2624359))) (= lambda!462272 lambda!462253))))

(declare-fun bs!1930381 () Bool)

(assert (= bs!1930381 (and b!7467510 b!7467449)))

(assert (=> bs!1930381 (not (= lambda!462272 lambda!462267))))

(declare-fun bs!1930382 () Bool)

(assert (= bs!1930382 (and b!7467510 b!7467244)))

(assert (=> bs!1930382 (not (= lambda!462272 lambda!462250))))

(declare-fun bs!1930383 () Bool)

(assert (= bs!1930383 (and b!7467510 b!7467242)))

(assert (=> bs!1930383 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 r2!5783) (regOne!39632 lt!2624352)) (= (regTwo!39632 r2!5783) (regTwo!39632 lt!2624352))) (= lambda!462272 lambda!462251))))

(assert (=> bs!1930379 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 r2!5783) r1!5845) (= (regTwo!39632 r2!5783) rTail!78)) (= lambda!462272 lambda!462262))))

(assert (=> bs!1930374 (not (= lambda!462272 lambda!462226))))

(assert (=> bs!1930375 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 r2!5783) r1!5845) (= (regTwo!39632 r2!5783) rTail!78)) (= lambda!462272 lambda!462229))))

(assert (=> b!7467510 true))

(assert (=> b!7467510 true))

(declare-fun b!7467504 () Bool)

(declare-fun e!4455739 () Bool)

(declare-fun e!4455738 () Bool)

(assert (=> b!7467504 (= e!4455739 e!4455738)))

(declare-fun res!2995578 () Bool)

(assert (=> b!7467504 (= res!2995578 (not (is-EmptyLang!19560 r2!5783)))))

(assert (=> b!7467504 (=> (not res!2995578) (not e!4455738))))

(declare-fun b!7467506 () Bool)

(declare-fun c!1380067 () Bool)

(assert (=> b!7467506 (= c!1380067 (is-Union!19560 r2!5783))))

(declare-fun e!4455737 () Bool)

(declare-fun e!4455741 () Bool)

(assert (=> b!7467506 (= e!4455737 e!4455741)))

(declare-fun b!7467507 () Bool)

(declare-fun res!2995579 () Bool)

(declare-fun e!4455736 () Bool)

(assert (=> b!7467507 (=> res!2995579 e!4455736)))

(declare-fun call!685827 () Bool)

(assert (=> b!7467507 (= res!2995579 call!685827)))

(declare-fun e!4455740 () Bool)

(assert (=> b!7467507 (= e!4455740 e!4455736)))

(declare-fun call!685828 () Bool)

(declare-fun bm!685822 () Bool)

(declare-fun c!1380069 () Bool)

(assert (=> bm!685822 (= call!685828 (Exists!4179 (ite c!1380069 lambda!462271 lambda!462272)))))

(declare-fun b!7467508 () Bool)

(declare-fun c!1380068 () Bool)

(assert (=> b!7467508 (= c!1380068 (is-ElementMatch!19560 r2!5783))))

(assert (=> b!7467508 (= e!4455738 e!4455737)))

(declare-fun b!7467509 () Bool)

(declare-fun e!4455742 () Bool)

(assert (=> b!7467509 (= e!4455742 (matchRSpec!4239 (regTwo!39633 r2!5783) (_1!37588 lt!2624350)))))

(assert (=> b!7467510 (= e!4455740 call!685828)))

(declare-fun b!7467511 () Bool)

(assert (=> b!7467511 (= e!4455739 call!685827)))

(assert (=> b!7467512 (= e!4455736 call!685828)))

(declare-fun d!2298688 () Bool)

(declare-fun c!1380066 () Bool)

(assert (=> d!2298688 (= c!1380066 (is-EmptyExpr!19560 r2!5783))))

(assert (=> d!2298688 (= (matchRSpec!4239 r2!5783 (_1!37588 lt!2624350)) e!4455739)))

(declare-fun b!7467505 () Bool)

(assert (=> b!7467505 (= e!4455741 e!4455742)))

(declare-fun res!2995577 () Bool)

(assert (=> b!7467505 (= res!2995577 (matchRSpec!4239 (regOne!39633 r2!5783) (_1!37588 lt!2624350)))))

(assert (=> b!7467505 (=> res!2995577 e!4455742)))

(declare-fun bm!685823 () Bool)

(assert (=> bm!685823 (= call!685827 (isEmpty!41159 (_1!37588 lt!2624350)))))

(declare-fun b!7467513 () Bool)

(assert (=> b!7467513 (= e!4455741 e!4455740)))

(assert (=> b!7467513 (= c!1380069 (is-Star!19560 r2!5783))))

(declare-fun b!7467514 () Bool)

(assert (=> b!7467514 (= e!4455737 (= (_1!37588 lt!2624350) (Cons!72152 (c!1379993 r2!5783) Nil!72152)))))

(assert (= (and d!2298688 c!1380066) b!7467511))

(assert (= (and d!2298688 (not c!1380066)) b!7467504))

(assert (= (and b!7467504 res!2995578) b!7467508))

(assert (= (and b!7467508 c!1380068) b!7467514))

(assert (= (and b!7467508 (not c!1380068)) b!7467506))

(assert (= (and b!7467506 c!1380067) b!7467505))

(assert (= (and b!7467506 (not c!1380067)) b!7467513))

(assert (= (and b!7467505 (not res!2995577)) b!7467509))

(assert (= (and b!7467513 c!1380069) b!7467507))

(assert (= (and b!7467513 (not c!1380069)) b!7467510))

(assert (= (and b!7467507 (not res!2995579)) b!7467512))

(assert (= (or b!7467512 b!7467510) bm!685822))

(assert (= (or b!7467511 b!7467507) bm!685823))

(declare-fun m!8065792 () Bool)

(assert (=> bm!685822 m!8065792))

(declare-fun m!8065794 () Bool)

(assert (=> b!7467509 m!8065794))

(declare-fun m!8065796 () Bool)

(assert (=> b!7467505 m!8065796))

(assert (=> bm!685823 m!8065728))

(assert (=> b!7467104 d!2298688))

(declare-fun d!2298690 () Bool)

(assert (=> d!2298690 (= (matchR!9324 r1!5845 (_1!37588 lt!2624350)) (matchRSpec!4239 r1!5845 (_1!37588 lt!2624350)))))

(declare-fun lt!2624474 () Unit!165955)

(assert (=> d!2298690 (= lt!2624474 (choose!57722 r1!5845 (_1!37588 lt!2624350)))))

(assert (=> d!2298690 (validRegex!10074 r1!5845)))

(assert (=> d!2298690 (= (mainMatchTheorem!4233 r1!5845 (_1!37588 lt!2624350)) lt!2624474)))

(declare-fun bs!1930385 () Bool)

(assert (= bs!1930385 d!2298690))

(assert (=> bs!1930385 m!8065566))

(assert (=> bs!1930385 m!8065546))

(declare-fun m!8065800 () Bool)

(assert (=> bs!1930385 m!8065800))

(assert (=> bs!1930385 m!8065500))

(assert (=> b!7467104 d!2298690))

(declare-fun d!2298694 () Bool)

(assert (=> d!2298694 (= (matchR!9324 r2!5783 (_1!37588 lt!2624350)) (matchRSpec!4239 r2!5783 (_1!37588 lt!2624350)))))

(declare-fun lt!2624475 () Unit!165955)

(assert (=> d!2298694 (= lt!2624475 (choose!57722 r2!5783 (_1!37588 lt!2624350)))))

(assert (=> d!2298694 (validRegex!10074 r2!5783)))

(assert (=> d!2298694 (= (mainMatchTheorem!4233 r2!5783 (_1!37588 lt!2624350)) lt!2624475)))

(declare-fun bs!1930386 () Bool)

(assert (= bs!1930386 d!2298694))

(assert (=> bs!1930386 m!8065544))

(assert (=> bs!1930386 m!8065550))

(declare-fun m!8065802 () Bool)

(assert (=> bs!1930386 m!8065802))

(assert (=> bs!1930386 m!8065576))

(assert (=> b!7467104 d!2298694))

(declare-fun b!7467526 () Bool)

(declare-fun e!4455750 () Bool)

(declare-fun e!4455751 () Bool)

(assert (=> b!7467526 (= e!4455750 e!4455751)))

(declare-fun res!2995589 () Bool)

(assert (=> b!7467526 (=> res!2995589 e!4455751)))

(declare-fun call!685831 () Bool)

(assert (=> b!7467526 (= res!2995589 call!685831)))

(declare-fun b!7467527 () Bool)

(declare-fun e!4455756 () Bool)

(assert (=> b!7467527 (= e!4455756 (nullable!8522 r2!5783))))

(declare-fun b!7467528 () Bool)

(declare-fun e!4455753 () Bool)

(declare-fun lt!2624476 () Bool)

(assert (=> b!7467528 (= e!4455753 (= lt!2624476 call!685831))))

(declare-fun b!7467529 () Bool)

(declare-fun res!2995588 () Bool)

(declare-fun e!4455755 () Bool)

(assert (=> b!7467529 (=> (not res!2995588) (not e!4455755))))

(assert (=> b!7467529 (= res!2995588 (isEmpty!41159 (tail!14890 (_1!37588 lt!2624350))))))

(declare-fun b!7467530 () Bool)

(declare-fun e!4455752 () Bool)

(assert (=> b!7467530 (= e!4455752 (not lt!2624476))))

(declare-fun d!2298696 () Bool)

(assert (=> d!2298696 e!4455753))

(declare-fun c!1380075 () Bool)

(assert (=> d!2298696 (= c!1380075 (is-EmptyExpr!19560 r2!5783))))

(assert (=> d!2298696 (= lt!2624476 e!4455756)))

(declare-fun c!1380074 () Bool)

(assert (=> d!2298696 (= c!1380074 (isEmpty!41159 (_1!37588 lt!2624350)))))

(assert (=> d!2298696 (validRegex!10074 r2!5783)))

(assert (=> d!2298696 (= (matchR!9324 r2!5783 (_1!37588 lt!2624350)) lt!2624476)))

(declare-fun bm!685826 () Bool)

(assert (=> bm!685826 (= call!685831 (isEmpty!41159 (_1!37588 lt!2624350)))))

(declare-fun b!7467531 () Bool)

(assert (=> b!7467531 (= e!4455753 e!4455752)))

(declare-fun c!1380076 () Bool)

(assert (=> b!7467531 (= c!1380076 (is-EmptyLang!19560 r2!5783))))

(declare-fun b!7467532 () Bool)

(declare-fun res!2995587 () Bool)

(assert (=> b!7467532 (=> res!2995587 e!4455751)))

(assert (=> b!7467532 (= res!2995587 (not (isEmpty!41159 (tail!14890 (_1!37588 lt!2624350)))))))

(declare-fun b!7467533 () Bool)

(assert (=> b!7467533 (= e!4455751 (not (= (head!15321 (_1!37588 lt!2624350)) (c!1379993 r2!5783))))))

(declare-fun b!7467534 () Bool)

(declare-fun res!2995583 () Bool)

(assert (=> b!7467534 (=> (not res!2995583) (not e!4455755))))

(assert (=> b!7467534 (= res!2995583 (not call!685831))))

(declare-fun b!7467535 () Bool)

(assert (=> b!7467535 (= e!4455756 (matchR!9324 (derivativeStep!5581 r2!5783 (head!15321 (_1!37588 lt!2624350))) (tail!14890 (_1!37588 lt!2624350))))))

(declare-fun b!7467536 () Bool)

(assert (=> b!7467536 (= e!4455755 (= (head!15321 (_1!37588 lt!2624350)) (c!1379993 r2!5783)))))

(declare-fun b!7467537 () Bool)

(declare-fun res!2995586 () Bool)

(declare-fun e!4455754 () Bool)

(assert (=> b!7467537 (=> res!2995586 e!4455754)))

(assert (=> b!7467537 (= res!2995586 e!4455755)))

(declare-fun res!2995590 () Bool)

(assert (=> b!7467537 (=> (not res!2995590) (not e!4455755))))

(assert (=> b!7467537 (= res!2995590 lt!2624476)))

(declare-fun b!7467538 () Bool)

(declare-fun res!2995585 () Bool)

(assert (=> b!7467538 (=> res!2995585 e!4455754)))

(assert (=> b!7467538 (= res!2995585 (not (is-ElementMatch!19560 r2!5783)))))

(assert (=> b!7467538 (= e!4455752 e!4455754)))

(declare-fun b!7467539 () Bool)

(assert (=> b!7467539 (= e!4455754 e!4455750)))

(declare-fun res!2995584 () Bool)

(assert (=> b!7467539 (=> (not res!2995584) (not e!4455750))))

(assert (=> b!7467539 (= res!2995584 (not lt!2624476))))

(assert (= (and d!2298696 c!1380074) b!7467527))

(assert (= (and d!2298696 (not c!1380074)) b!7467535))

(assert (= (and d!2298696 c!1380075) b!7467528))

(assert (= (and d!2298696 (not c!1380075)) b!7467531))

(assert (= (and b!7467531 c!1380076) b!7467530))

(assert (= (and b!7467531 (not c!1380076)) b!7467538))

(assert (= (and b!7467538 (not res!2995585)) b!7467537))

(assert (= (and b!7467537 res!2995590) b!7467534))

(assert (= (and b!7467534 res!2995583) b!7467529))

(assert (= (and b!7467529 res!2995588) b!7467536))

(assert (= (and b!7467537 (not res!2995586)) b!7467539))

(assert (= (and b!7467539 res!2995584) b!7467526))

(assert (= (and b!7467526 (not res!2995589)) b!7467532))

(assert (= (and b!7467532 (not res!2995587)) b!7467533))

(assert (= (or b!7467528 b!7467526 b!7467534) bm!685826))

(assert (=> bm!685826 m!8065728))

(declare-fun m!8065804 () Bool)

(assert (=> b!7467527 m!8065804))

(assert (=> b!7467532 m!8065732))

(assert (=> b!7467532 m!8065732))

(assert (=> b!7467532 m!8065734))

(assert (=> d!2298696 m!8065728))

(assert (=> d!2298696 m!8065576))

(assert (=> b!7467533 m!8065736))

(assert (=> b!7467529 m!8065732))

(assert (=> b!7467529 m!8065732))

(assert (=> b!7467529 m!8065734))

(assert (=> b!7467535 m!8065736))

(assert (=> b!7467535 m!8065736))

(declare-fun m!8065806 () Bool)

(assert (=> b!7467535 m!8065806))

(assert (=> b!7467535 m!8065732))

(assert (=> b!7467535 m!8065806))

(assert (=> b!7467535 m!8065732))

(declare-fun m!8065808 () Bool)

(assert (=> b!7467535 m!8065808))

(assert (=> b!7467536 m!8065736))

(assert (=> b!7467104 d!2298696))

(declare-fun bs!1930388 () Bool)

(declare-fun b!7467548 () Bool)

(assert (= bs!1930388 (and b!7467548 b!7467447)))

(declare-fun lambda!462274 () Int)

(assert (=> bs!1930388 (not (= lambda!462274 lambda!462268))))

(declare-fun bs!1930389 () Bool)

(assert (= bs!1930389 (and b!7467548 b!7467107)))

(assert (=> bs!1930389 (not (= lambda!462274 lambda!462227))))

(declare-fun bs!1930391 () Bool)

(assert (= bs!1930391 (and b!7467548 b!7467103)))

(assert (=> bs!1930391 (not (= lambda!462274 lambda!462228))))

(declare-fun bs!1930392 () Bool)

(assert (= bs!1930392 (and b!7467548 b!7467255)))

(assert (=> bs!1930392 (= (and (= (_1!37588 lt!2624350) s!13591) (= (reg!19889 lt!2624354) (reg!19889 lt!2624359)) (= lt!2624354 lt!2624359)) (= lambda!462274 lambda!462252))))

(declare-fun bs!1930394 () Bool)

(assert (= bs!1930394 (and b!7467548 b!7467512)))

(assert (=> bs!1930394 (= (and (= (reg!19889 lt!2624354) (reg!19889 r2!5783)) (= lt!2624354 r2!5783)) (= lambda!462274 lambda!462271))))

(declare-fun bs!1930395 () Bool)

(assert (= bs!1930395 (and b!7467548 d!2298660)))

(assert (=> bs!1930395 (not (= lambda!462274 lambda!462256))))

(declare-fun bs!1930396 () Bool)

(assert (= bs!1930396 (and b!7467548 b!7467510)))

(assert (=> bs!1930396 (not (= lambda!462274 lambda!462272))))

(declare-fun bs!1930397 () Bool)

(assert (= bs!1930397 (and b!7467548 d!2298670)))

(assert (=> bs!1930397 (not (= lambda!462274 lambda!462261))))

(declare-fun bs!1930398 () Bool)

(assert (= bs!1930398 (and b!7467548 b!7467253)))

(assert (=> bs!1930398 (not (= lambda!462274 lambda!462253))))

(declare-fun bs!1930399 () Bool)

(assert (= bs!1930399 (and b!7467548 b!7467449)))

(assert (=> bs!1930399 (= (and (= (reg!19889 lt!2624354) (reg!19889 r1!5845)) (= lt!2624354 r1!5845)) (= lambda!462274 lambda!462267))))

(declare-fun bs!1930400 () Bool)

(assert (= bs!1930400 (and b!7467548 b!7467244)))

(assert (=> bs!1930400 (= (and (= (_1!37588 lt!2624350) s!13591) (= (reg!19889 lt!2624354) (reg!19889 lt!2624352)) (= lt!2624354 lt!2624352)) (= lambda!462274 lambda!462250))))

(declare-fun bs!1930402 () Bool)

(assert (= bs!1930402 (and b!7467548 b!7467242)))

(assert (=> bs!1930402 (not (= lambda!462274 lambda!462251))))

(assert (=> bs!1930397 (not (= lambda!462274 lambda!462262))))

(assert (=> bs!1930389 (not (= lambda!462274 lambda!462226))))

(assert (=> bs!1930391 (not (= lambda!462274 lambda!462229))))

(assert (=> b!7467548 true))

(assert (=> b!7467548 true))

(declare-fun bs!1930403 () Bool)

(declare-fun b!7467546 () Bool)

(assert (= bs!1930403 (and b!7467546 b!7467447)))

(declare-fun lambda!462275 () Int)

(assert (=> bs!1930403 (= (and (= (regOne!39632 lt!2624354) (regOne!39632 r1!5845)) (= (regTwo!39632 lt!2624354) (regTwo!39632 r1!5845))) (= lambda!462275 lambda!462268))))

(declare-fun bs!1930404 () Bool)

(assert (= bs!1930404 (and b!7467546 b!7467107)))

(assert (=> bs!1930404 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 lt!2624354) lt!2624354) (= (regTwo!39632 lt!2624354) rTail!78)) (= lambda!462275 lambda!462227))))

(declare-fun bs!1930405 () Bool)

(assert (= bs!1930405 (and b!7467546 b!7467103)))

(assert (=> bs!1930405 (not (= lambda!462275 lambda!462228))))

(declare-fun bs!1930406 () Bool)

(assert (= bs!1930406 (and b!7467546 b!7467255)))

(assert (=> bs!1930406 (not (= lambda!462275 lambda!462252))))

(declare-fun bs!1930407 () Bool)

(assert (= bs!1930407 (and b!7467546 b!7467512)))

(assert (=> bs!1930407 (not (= lambda!462275 lambda!462271))))

(declare-fun bs!1930408 () Bool)

(assert (= bs!1930408 (and b!7467546 d!2298660)))

(assert (=> bs!1930408 (not (= lambda!462275 lambda!462256))))

(declare-fun bs!1930410 () Bool)

(assert (= bs!1930410 (and b!7467546 d!2298670)))

(assert (=> bs!1930410 (not (= lambda!462275 lambda!462261))))

(declare-fun bs!1930411 () Bool)

(assert (= bs!1930411 (and b!7467546 b!7467253)))

(assert (=> bs!1930411 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 lt!2624354) (regOne!39632 lt!2624359)) (= (regTwo!39632 lt!2624354) (regTwo!39632 lt!2624359))) (= lambda!462275 lambda!462253))))

(declare-fun bs!1930413 () Bool)

(assert (= bs!1930413 (and b!7467546 b!7467449)))

(assert (=> bs!1930413 (not (= lambda!462275 lambda!462267))))

(declare-fun bs!1930414 () Bool)

(assert (= bs!1930414 (and b!7467546 b!7467244)))

(assert (=> bs!1930414 (not (= lambda!462275 lambda!462250))))

(declare-fun bs!1930415 () Bool)

(assert (= bs!1930415 (and b!7467546 b!7467242)))

(assert (=> bs!1930415 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 lt!2624354) (regOne!39632 lt!2624352)) (= (regTwo!39632 lt!2624354) (regTwo!39632 lt!2624352))) (= lambda!462275 lambda!462251))))

(assert (=> bs!1930410 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 lt!2624354) r1!5845) (= (regTwo!39632 lt!2624354) rTail!78)) (= lambda!462275 lambda!462262))))

(assert (=> bs!1930404 (not (= lambda!462275 lambda!462226))))

(assert (=> bs!1930405 (= (and (= (_1!37588 lt!2624350) s!13591) (= (regOne!39632 lt!2624354) r1!5845) (= (regTwo!39632 lt!2624354) rTail!78)) (= lambda!462275 lambda!462229))))

(declare-fun bs!1930417 () Bool)

(assert (= bs!1930417 (and b!7467546 b!7467548)))

(assert (=> bs!1930417 (not (= lambda!462275 lambda!462274))))

(declare-fun bs!1930418 () Bool)

(assert (= bs!1930418 (and b!7467546 b!7467510)))

(assert (=> bs!1930418 (= (and (= (regOne!39632 lt!2624354) (regOne!39632 r2!5783)) (= (regTwo!39632 lt!2624354) (regTwo!39632 r2!5783))) (= lambda!462275 lambda!462272))))

(assert (=> b!7467546 true))

(assert (=> b!7467546 true))

(declare-fun b!7467540 () Bool)

(declare-fun e!4455760 () Bool)

(declare-fun e!4455759 () Bool)

(assert (=> b!7467540 (= e!4455760 e!4455759)))

(declare-fun res!2995592 () Bool)

(assert (=> b!7467540 (= res!2995592 (not (is-EmptyLang!19560 lt!2624354)))))

(assert (=> b!7467540 (=> (not res!2995592) (not e!4455759))))

(declare-fun b!7467542 () Bool)

(declare-fun c!1380078 () Bool)

(assert (=> b!7467542 (= c!1380078 (is-Union!19560 lt!2624354))))

(declare-fun e!4455758 () Bool)

(declare-fun e!4455762 () Bool)

(assert (=> b!7467542 (= e!4455758 e!4455762)))

(declare-fun b!7467543 () Bool)

(declare-fun res!2995593 () Bool)

(declare-fun e!4455757 () Bool)

(assert (=> b!7467543 (=> res!2995593 e!4455757)))

(declare-fun call!685832 () Bool)

(assert (=> b!7467543 (= res!2995593 call!685832)))

(declare-fun e!4455761 () Bool)

(assert (=> b!7467543 (= e!4455761 e!4455757)))

(declare-fun call!685833 () Bool)

(declare-fun c!1380080 () Bool)

(declare-fun bm!685827 () Bool)

(assert (=> bm!685827 (= call!685833 (Exists!4179 (ite c!1380080 lambda!462274 lambda!462275)))))

(declare-fun b!7467544 () Bool)

(declare-fun c!1380079 () Bool)

(assert (=> b!7467544 (= c!1380079 (is-ElementMatch!19560 lt!2624354))))

(assert (=> b!7467544 (= e!4455759 e!4455758)))

(declare-fun b!7467545 () Bool)

(declare-fun e!4455763 () Bool)

(assert (=> b!7467545 (= e!4455763 (matchRSpec!4239 (regTwo!39633 lt!2624354) (_1!37588 lt!2624350)))))

(assert (=> b!7467546 (= e!4455761 call!685833)))

(declare-fun b!7467547 () Bool)

(assert (=> b!7467547 (= e!4455760 call!685832)))

(assert (=> b!7467548 (= e!4455757 call!685833)))

(declare-fun d!2298698 () Bool)

(declare-fun c!1380077 () Bool)

(assert (=> d!2298698 (= c!1380077 (is-EmptyExpr!19560 lt!2624354))))

(assert (=> d!2298698 (= (matchRSpec!4239 lt!2624354 (_1!37588 lt!2624350)) e!4455760)))

(declare-fun b!7467541 () Bool)

(assert (=> b!7467541 (= e!4455762 e!4455763)))

(declare-fun res!2995591 () Bool)

(assert (=> b!7467541 (= res!2995591 (matchRSpec!4239 (regOne!39633 lt!2624354) (_1!37588 lt!2624350)))))

(assert (=> b!7467541 (=> res!2995591 e!4455763)))

(declare-fun bm!685828 () Bool)

(assert (=> bm!685828 (= call!685832 (isEmpty!41159 (_1!37588 lt!2624350)))))

(declare-fun b!7467549 () Bool)

(assert (=> b!7467549 (= e!4455762 e!4455761)))

(assert (=> b!7467549 (= c!1380080 (is-Star!19560 lt!2624354))))

(declare-fun b!7467550 () Bool)

(assert (=> b!7467550 (= e!4455758 (= (_1!37588 lt!2624350) (Cons!72152 (c!1379993 lt!2624354) Nil!72152)))))

(assert (= (and d!2298698 c!1380077) b!7467547))

(assert (= (and d!2298698 (not c!1380077)) b!7467540))

(assert (= (and b!7467540 res!2995592) b!7467544))

(assert (= (and b!7467544 c!1380079) b!7467550))

(assert (= (and b!7467544 (not c!1380079)) b!7467542))

(assert (= (and b!7467542 c!1380078) b!7467541))

(assert (= (and b!7467542 (not c!1380078)) b!7467549))

(assert (= (and b!7467541 (not res!2995591)) b!7467545))

(assert (= (and b!7467549 c!1380080) b!7467543))

(assert (= (and b!7467549 (not c!1380080)) b!7467546))

(assert (= (and b!7467543 (not res!2995593)) b!7467548))

(assert (= (or b!7467548 b!7467546) bm!685827))

(assert (= (or b!7467547 b!7467543) bm!685828))

(declare-fun m!8065810 () Bool)

(assert (=> bm!685827 m!8065810))

(declare-fun m!8065812 () Bool)

(assert (=> b!7467545 m!8065812))

(declare-fun m!8065814 () Bool)

(assert (=> b!7467541 m!8065814))

(assert (=> bm!685828 m!8065728))

(assert (=> b!7467104 d!2298698))

(declare-fun bs!1930421 () Bool)

(declare-fun b!7467559 () Bool)

(assert (= bs!1930421 (and b!7467559 b!7467546)))

(declare-fun lambda!462277 () Int)

(assert (=> bs!1930421 (not (= lambda!462277 lambda!462275))))

(declare-fun bs!1930422 () Bool)

(assert (= bs!1930422 (and b!7467559 b!7467447)))

(assert (=> bs!1930422 (not (= lambda!462277 lambda!462268))))

(declare-fun bs!1930423 () Bool)

(assert (= bs!1930423 (and b!7467559 b!7467107)))

(assert (=> bs!1930423 (not (= lambda!462277 lambda!462227))))

(declare-fun bs!1930424 () Bool)

(assert (= bs!1930424 (and b!7467559 b!7467103)))

(assert (=> bs!1930424 (not (= lambda!462277 lambda!462228))))

(declare-fun bs!1930425 () Bool)

(assert (= bs!1930425 (and b!7467559 b!7467255)))

(assert (=> bs!1930425 (= (and (= (reg!19889 lt!2624362) (reg!19889 lt!2624359)) (= lt!2624362 lt!2624359)) (= lambda!462277 lambda!462252))))

(declare-fun bs!1930426 () Bool)

(assert (= bs!1930426 (and b!7467559 b!7467512)))

(assert (=> bs!1930426 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (reg!19889 lt!2624362) (reg!19889 r2!5783)) (= lt!2624362 r2!5783)) (= lambda!462277 lambda!462271))))

(declare-fun bs!1930427 () Bool)

(assert (= bs!1930427 (and b!7467559 d!2298660)))

(assert (=> bs!1930427 (not (= lambda!462277 lambda!462256))))

(declare-fun bs!1930428 () Bool)

(assert (= bs!1930428 (and b!7467559 d!2298670)))

(assert (=> bs!1930428 (not (= lambda!462277 lambda!462261))))

(declare-fun bs!1930429 () Bool)

(assert (= bs!1930429 (and b!7467559 b!7467253)))

(assert (=> bs!1930429 (not (= lambda!462277 lambda!462253))))

(declare-fun bs!1930430 () Bool)

(assert (= bs!1930430 (and b!7467559 b!7467449)))

(assert (=> bs!1930430 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (reg!19889 lt!2624362) (reg!19889 r1!5845)) (= lt!2624362 r1!5845)) (= lambda!462277 lambda!462267))))

(declare-fun bs!1930432 () Bool)

(assert (= bs!1930432 (and b!7467559 b!7467244)))

(assert (=> bs!1930432 (= (and (= (reg!19889 lt!2624362) (reg!19889 lt!2624352)) (= lt!2624362 lt!2624352)) (= lambda!462277 lambda!462250))))

(declare-fun bs!1930433 () Bool)

(assert (= bs!1930433 (and b!7467559 b!7467242)))

(assert (=> bs!1930433 (not (= lambda!462277 lambda!462251))))

(assert (=> bs!1930428 (not (= lambda!462277 lambda!462262))))

(assert (=> bs!1930423 (not (= lambda!462277 lambda!462226))))

(assert (=> bs!1930424 (not (= lambda!462277 lambda!462229))))

(declare-fun bs!1930434 () Bool)

(assert (= bs!1930434 (and b!7467559 b!7467548)))

(assert (=> bs!1930434 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (reg!19889 lt!2624362) (reg!19889 lt!2624354)) (= lt!2624362 lt!2624354)) (= lambda!462277 lambda!462274))))

(declare-fun bs!1930435 () Bool)

(assert (= bs!1930435 (and b!7467559 b!7467510)))

(assert (=> bs!1930435 (not (= lambda!462277 lambda!462272))))

(assert (=> b!7467559 true))

(assert (=> b!7467559 true))

(declare-fun bs!1930436 () Bool)

(declare-fun b!7467557 () Bool)

(assert (= bs!1930436 (and b!7467557 b!7467546)))

(declare-fun lambda!462278 () Int)

(assert (=> bs!1930436 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (regOne!39632 lt!2624362) (regOne!39632 lt!2624354)) (= (regTwo!39632 lt!2624362) (regTwo!39632 lt!2624354))) (= lambda!462278 lambda!462275))))

(declare-fun bs!1930437 () Bool)

(assert (= bs!1930437 (and b!7467557 b!7467447)))

(assert (=> bs!1930437 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (regOne!39632 lt!2624362) (regOne!39632 r1!5845)) (= (regTwo!39632 lt!2624362) (regTwo!39632 r1!5845))) (= lambda!462278 lambda!462268))))

(declare-fun bs!1930438 () Bool)

(assert (= bs!1930438 (and b!7467557 b!7467107)))

(assert (=> bs!1930438 (= (and (= (regOne!39632 lt!2624362) lt!2624354) (= (regTwo!39632 lt!2624362) rTail!78)) (= lambda!462278 lambda!462227))))

(declare-fun bs!1930439 () Bool)

(assert (= bs!1930439 (and b!7467557 b!7467103)))

(assert (=> bs!1930439 (not (= lambda!462278 lambda!462228))))

(declare-fun bs!1930440 () Bool)

(assert (= bs!1930440 (and b!7467557 b!7467255)))

(assert (=> bs!1930440 (not (= lambda!462278 lambda!462252))))

(declare-fun bs!1930441 () Bool)

(assert (= bs!1930441 (and b!7467557 b!7467512)))

(assert (=> bs!1930441 (not (= lambda!462278 lambda!462271))))

(declare-fun bs!1930442 () Bool)

(assert (= bs!1930442 (and b!7467557 d!2298660)))

(assert (=> bs!1930442 (not (= lambda!462278 lambda!462256))))

(declare-fun bs!1930443 () Bool)

(assert (= bs!1930443 (and b!7467557 b!7467559)))

(assert (=> bs!1930443 (not (= lambda!462278 lambda!462277))))

(declare-fun bs!1930444 () Bool)

(assert (= bs!1930444 (and b!7467557 d!2298670)))

(assert (=> bs!1930444 (not (= lambda!462278 lambda!462261))))

(declare-fun bs!1930445 () Bool)

(assert (= bs!1930445 (and b!7467557 b!7467253)))

(assert (=> bs!1930445 (= (and (= (regOne!39632 lt!2624362) (regOne!39632 lt!2624359)) (= (regTwo!39632 lt!2624362) (regTwo!39632 lt!2624359))) (= lambda!462278 lambda!462253))))

(declare-fun bs!1930446 () Bool)

(assert (= bs!1930446 (and b!7467557 b!7467449)))

(assert (=> bs!1930446 (not (= lambda!462278 lambda!462267))))

(declare-fun bs!1930447 () Bool)

(assert (= bs!1930447 (and b!7467557 b!7467244)))

(assert (=> bs!1930447 (not (= lambda!462278 lambda!462250))))

(declare-fun bs!1930448 () Bool)

(assert (= bs!1930448 (and b!7467557 b!7467242)))

(assert (=> bs!1930448 (= (and (= (regOne!39632 lt!2624362) (regOne!39632 lt!2624352)) (= (regTwo!39632 lt!2624362) (regTwo!39632 lt!2624352))) (= lambda!462278 lambda!462251))))

(assert (=> bs!1930444 (= (and (= (regOne!39632 lt!2624362) r1!5845) (= (regTwo!39632 lt!2624362) rTail!78)) (= lambda!462278 lambda!462262))))

(assert (=> bs!1930438 (not (= lambda!462278 lambda!462226))))

(assert (=> bs!1930439 (= (and (= (regOne!39632 lt!2624362) r1!5845) (= (regTwo!39632 lt!2624362) rTail!78)) (= lambda!462278 lambda!462229))))

(declare-fun bs!1930449 () Bool)

(assert (= bs!1930449 (and b!7467557 b!7467548)))

(assert (=> bs!1930449 (not (= lambda!462278 lambda!462274))))

(declare-fun bs!1930450 () Bool)

(assert (= bs!1930450 (and b!7467557 b!7467510)))

(assert (=> bs!1930450 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (regOne!39632 lt!2624362) (regOne!39632 r2!5783)) (= (regTwo!39632 lt!2624362) (regTwo!39632 r2!5783))) (= lambda!462278 lambda!462272))))

(assert (=> b!7467557 true))

(assert (=> b!7467557 true))

(declare-fun b!7467551 () Bool)

(declare-fun e!4455767 () Bool)

(declare-fun e!4455766 () Bool)

(assert (=> b!7467551 (= e!4455767 e!4455766)))

(declare-fun res!2995595 () Bool)

(assert (=> b!7467551 (= res!2995595 (not (is-EmptyLang!19560 lt!2624362)))))

(assert (=> b!7467551 (=> (not res!2995595) (not e!4455766))))

(declare-fun b!7467553 () Bool)

(declare-fun c!1380082 () Bool)

(assert (=> b!7467553 (= c!1380082 (is-Union!19560 lt!2624362))))

(declare-fun e!4455765 () Bool)

(declare-fun e!4455769 () Bool)

(assert (=> b!7467553 (= e!4455765 e!4455769)))

(declare-fun b!7467554 () Bool)

(declare-fun res!2995596 () Bool)

(declare-fun e!4455764 () Bool)

(assert (=> b!7467554 (=> res!2995596 e!4455764)))

(declare-fun call!685834 () Bool)

(assert (=> b!7467554 (= res!2995596 call!685834)))

(declare-fun e!4455768 () Bool)

(assert (=> b!7467554 (= e!4455768 e!4455764)))

(declare-fun bm!685829 () Bool)

(declare-fun call!685835 () Bool)

(declare-fun c!1380084 () Bool)

(assert (=> bm!685829 (= call!685835 (Exists!4179 (ite c!1380084 lambda!462277 lambda!462278)))))

(declare-fun b!7467555 () Bool)

(declare-fun c!1380083 () Bool)

(assert (=> b!7467555 (= c!1380083 (is-ElementMatch!19560 lt!2624362))))

(assert (=> b!7467555 (= e!4455766 e!4455765)))

(declare-fun b!7467556 () Bool)

(declare-fun e!4455770 () Bool)

(assert (=> b!7467556 (= e!4455770 (matchRSpec!4239 (regTwo!39633 lt!2624362) s!13591))))

(assert (=> b!7467557 (= e!4455768 call!685835)))

(declare-fun b!7467558 () Bool)

(assert (=> b!7467558 (= e!4455767 call!685834)))

(assert (=> b!7467559 (= e!4455764 call!685835)))

(declare-fun d!2298700 () Bool)

(declare-fun c!1380081 () Bool)

(assert (=> d!2298700 (= c!1380081 (is-EmptyExpr!19560 lt!2624362))))

(assert (=> d!2298700 (= (matchRSpec!4239 lt!2624362 s!13591) e!4455767)))

(declare-fun b!7467552 () Bool)

(assert (=> b!7467552 (= e!4455769 e!4455770)))

(declare-fun res!2995594 () Bool)

(assert (=> b!7467552 (= res!2995594 (matchRSpec!4239 (regOne!39633 lt!2624362) s!13591))))

(assert (=> b!7467552 (=> res!2995594 e!4455770)))

(declare-fun bm!685830 () Bool)

(assert (=> bm!685830 (= call!685834 (isEmpty!41159 s!13591))))

(declare-fun b!7467560 () Bool)

(assert (=> b!7467560 (= e!4455769 e!4455768)))

(assert (=> b!7467560 (= c!1380084 (is-Star!19560 lt!2624362))))

(declare-fun b!7467561 () Bool)

(assert (=> b!7467561 (= e!4455765 (= s!13591 (Cons!72152 (c!1379993 lt!2624362) Nil!72152)))))

(assert (= (and d!2298700 c!1380081) b!7467558))

(assert (= (and d!2298700 (not c!1380081)) b!7467551))

(assert (= (and b!7467551 res!2995595) b!7467555))

(assert (= (and b!7467555 c!1380083) b!7467561))

(assert (= (and b!7467555 (not c!1380083)) b!7467553))

(assert (= (and b!7467553 c!1380082) b!7467552))

(assert (= (and b!7467553 (not c!1380082)) b!7467560))

(assert (= (and b!7467552 (not res!2995594)) b!7467556))

(assert (= (and b!7467560 c!1380084) b!7467554))

(assert (= (and b!7467560 (not c!1380084)) b!7467557))

(assert (= (and b!7467554 (not res!2995596)) b!7467559))

(assert (= (or b!7467559 b!7467557) bm!685829))

(assert (= (or b!7467558 b!7467554) bm!685830))

(declare-fun m!8065832 () Bool)

(assert (=> bm!685829 m!8065832))

(declare-fun m!8065834 () Bool)

(assert (=> b!7467556 m!8065834))

(declare-fun m!8065836 () Bool)

(assert (=> b!7467552 m!8065836))

(assert (=> bm!685830 m!8065666))

(assert (=> b!7467093 d!2298700))

(declare-fun bs!1930451 () Bool)

(declare-fun b!7467584 () Bool)

(assert (= bs!1930451 (and b!7467584 b!7467546)))

(declare-fun lambda!462279 () Int)

(assert (=> bs!1930451 (not (= lambda!462279 lambda!462275))))

(declare-fun bs!1930452 () Bool)

(assert (= bs!1930452 (and b!7467584 b!7467447)))

(assert (=> bs!1930452 (not (= lambda!462279 lambda!462268))))

(declare-fun bs!1930453 () Bool)

(assert (= bs!1930453 (and b!7467584 b!7467107)))

(assert (=> bs!1930453 (not (= lambda!462279 lambda!462227))))

(declare-fun bs!1930454 () Bool)

(assert (= bs!1930454 (and b!7467584 b!7467103)))

(assert (=> bs!1930454 (not (= lambda!462279 lambda!462228))))

(declare-fun bs!1930455 () Bool)

(assert (= bs!1930455 (and b!7467584 b!7467255)))

(assert (=> bs!1930455 (= (and (= (reg!19889 lt!2624365) (reg!19889 lt!2624359)) (= lt!2624365 lt!2624359)) (= lambda!462279 lambda!462252))))

(declare-fun bs!1930456 () Bool)

(assert (= bs!1930456 (and b!7467584 b!7467512)))

(assert (=> bs!1930456 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (reg!19889 lt!2624365) (reg!19889 r2!5783)) (= lt!2624365 r2!5783)) (= lambda!462279 lambda!462271))))

(declare-fun bs!1930457 () Bool)

(assert (= bs!1930457 (and b!7467584 b!7467559)))

(assert (=> bs!1930457 (= (and (= (reg!19889 lt!2624365) (reg!19889 lt!2624362)) (= lt!2624365 lt!2624362)) (= lambda!462279 lambda!462277))))

(declare-fun bs!1930458 () Bool)

(assert (= bs!1930458 (and b!7467584 d!2298670)))

(assert (=> bs!1930458 (not (= lambda!462279 lambda!462261))))

(declare-fun bs!1930459 () Bool)

(assert (= bs!1930459 (and b!7467584 b!7467253)))

(assert (=> bs!1930459 (not (= lambda!462279 lambda!462253))))

(declare-fun bs!1930460 () Bool)

(assert (= bs!1930460 (and b!7467584 b!7467449)))

(assert (=> bs!1930460 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (reg!19889 lt!2624365) (reg!19889 r1!5845)) (= lt!2624365 r1!5845)) (= lambda!462279 lambda!462267))))

(declare-fun bs!1930461 () Bool)

(assert (= bs!1930461 (and b!7467584 b!7467244)))

(assert (=> bs!1930461 (= (and (= (reg!19889 lt!2624365) (reg!19889 lt!2624352)) (= lt!2624365 lt!2624352)) (= lambda!462279 lambda!462250))))

(declare-fun bs!1930462 () Bool)

(assert (= bs!1930462 (and b!7467584 b!7467557)))

(assert (=> bs!1930462 (not (= lambda!462279 lambda!462278))))

(declare-fun bs!1930463 () Bool)

(assert (= bs!1930463 (and b!7467584 d!2298660)))

(assert (=> bs!1930463 (not (= lambda!462279 lambda!462256))))

(declare-fun bs!1930464 () Bool)

(assert (= bs!1930464 (and b!7467584 b!7467242)))

(assert (=> bs!1930464 (not (= lambda!462279 lambda!462251))))

(assert (=> bs!1930458 (not (= lambda!462279 lambda!462262))))

(assert (=> bs!1930453 (not (= lambda!462279 lambda!462226))))

(assert (=> bs!1930454 (not (= lambda!462279 lambda!462229))))

(declare-fun bs!1930465 () Bool)

(assert (= bs!1930465 (and b!7467584 b!7467548)))

(assert (=> bs!1930465 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (reg!19889 lt!2624365) (reg!19889 lt!2624354)) (= lt!2624365 lt!2624354)) (= lambda!462279 lambda!462274))))

(declare-fun bs!1930466 () Bool)

(assert (= bs!1930466 (and b!7467584 b!7467510)))

(assert (=> bs!1930466 (not (= lambda!462279 lambda!462272))))

(assert (=> b!7467584 true))

(assert (=> b!7467584 true))

(declare-fun bs!1930467 () Bool)

(declare-fun b!7467582 () Bool)

(assert (= bs!1930467 (and b!7467582 b!7467546)))

(declare-fun lambda!462280 () Int)

(assert (=> bs!1930467 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (regOne!39632 lt!2624365) (regOne!39632 lt!2624354)) (= (regTwo!39632 lt!2624365) (regTwo!39632 lt!2624354))) (= lambda!462280 lambda!462275))))

(declare-fun bs!1930468 () Bool)

(assert (= bs!1930468 (and b!7467582 b!7467107)))

(assert (=> bs!1930468 (= (and (= (regOne!39632 lt!2624365) lt!2624354) (= (regTwo!39632 lt!2624365) rTail!78)) (= lambda!462280 lambda!462227))))

(declare-fun bs!1930469 () Bool)

(assert (= bs!1930469 (and b!7467582 b!7467103)))

(assert (=> bs!1930469 (not (= lambda!462280 lambda!462228))))

(declare-fun bs!1930470 () Bool)

(assert (= bs!1930470 (and b!7467582 b!7467255)))

(assert (=> bs!1930470 (not (= lambda!462280 lambda!462252))))

(declare-fun bs!1930471 () Bool)

(assert (= bs!1930471 (and b!7467582 b!7467512)))

(assert (=> bs!1930471 (not (= lambda!462280 lambda!462271))))

(declare-fun bs!1930472 () Bool)

(assert (= bs!1930472 (and b!7467582 b!7467559)))

(assert (=> bs!1930472 (not (= lambda!462280 lambda!462277))))

(declare-fun bs!1930473 () Bool)

(assert (= bs!1930473 (and b!7467582 d!2298670)))

(assert (=> bs!1930473 (not (= lambda!462280 lambda!462261))))

(declare-fun bs!1930474 () Bool)

(assert (= bs!1930474 (and b!7467582 b!7467253)))

(assert (=> bs!1930474 (= (and (= (regOne!39632 lt!2624365) (regOne!39632 lt!2624359)) (= (regTwo!39632 lt!2624365) (regTwo!39632 lt!2624359))) (= lambda!462280 lambda!462253))))

(declare-fun bs!1930475 () Bool)

(assert (= bs!1930475 (and b!7467582 b!7467449)))

(assert (=> bs!1930475 (not (= lambda!462280 lambda!462267))))

(declare-fun bs!1930476 () Bool)

(assert (= bs!1930476 (and b!7467582 b!7467244)))

(assert (=> bs!1930476 (not (= lambda!462280 lambda!462250))))

(declare-fun bs!1930477 () Bool)

(assert (= bs!1930477 (and b!7467582 b!7467447)))

(assert (=> bs!1930477 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (regOne!39632 lt!2624365) (regOne!39632 r1!5845)) (= (regTwo!39632 lt!2624365) (regTwo!39632 r1!5845))) (= lambda!462280 lambda!462268))))

(declare-fun bs!1930478 () Bool)

(assert (= bs!1930478 (and b!7467582 b!7467584)))

(assert (=> bs!1930478 (not (= lambda!462280 lambda!462279))))

(declare-fun bs!1930479 () Bool)

(assert (= bs!1930479 (and b!7467582 b!7467557)))

(assert (=> bs!1930479 (= (and (= (regOne!39632 lt!2624365) (regOne!39632 lt!2624362)) (= (regTwo!39632 lt!2624365) (regTwo!39632 lt!2624362))) (= lambda!462280 lambda!462278))))

(declare-fun bs!1930480 () Bool)

(assert (= bs!1930480 (and b!7467582 d!2298660)))

(assert (=> bs!1930480 (not (= lambda!462280 lambda!462256))))

(declare-fun bs!1930481 () Bool)

(assert (= bs!1930481 (and b!7467582 b!7467242)))

(assert (=> bs!1930481 (= (and (= (regOne!39632 lt!2624365) (regOne!39632 lt!2624352)) (= (regTwo!39632 lt!2624365) (regTwo!39632 lt!2624352))) (= lambda!462280 lambda!462251))))

(assert (=> bs!1930473 (= (and (= (regOne!39632 lt!2624365) r1!5845) (= (regTwo!39632 lt!2624365) rTail!78)) (= lambda!462280 lambda!462262))))

(assert (=> bs!1930468 (not (= lambda!462280 lambda!462226))))

(assert (=> bs!1930469 (= (and (= (regOne!39632 lt!2624365) r1!5845) (= (regTwo!39632 lt!2624365) rTail!78)) (= lambda!462280 lambda!462229))))

(declare-fun bs!1930482 () Bool)

(assert (= bs!1930482 (and b!7467582 b!7467548)))

(assert (=> bs!1930482 (not (= lambda!462280 lambda!462274))))

(declare-fun bs!1930483 () Bool)

(assert (= bs!1930483 (and b!7467582 b!7467510)))

(assert (=> bs!1930483 (= (and (= s!13591 (_1!37588 lt!2624350)) (= (regOne!39632 lt!2624365) (regOne!39632 r2!5783)) (= (regTwo!39632 lt!2624365) (regTwo!39632 r2!5783))) (= lambda!462280 lambda!462272))))

(assert (=> b!7467582 true))

(assert (=> b!7467582 true))

(declare-fun b!7467576 () Bool)

(declare-fun e!4455781 () Bool)

(declare-fun e!4455780 () Bool)

(assert (=> b!7467576 (= e!4455781 e!4455780)))

(declare-fun res!2995606 () Bool)

(assert (=> b!7467576 (= res!2995606 (not (is-EmptyLang!19560 lt!2624365)))))

(assert (=> b!7467576 (=> (not res!2995606) (not e!4455780))))

(declare-fun b!7467578 () Bool)

(declare-fun c!1380089 () Bool)

(assert (=> b!7467578 (= c!1380089 (is-Union!19560 lt!2624365))))

(declare-fun e!4455779 () Bool)

(declare-fun e!4455783 () Bool)

(assert (=> b!7467578 (= e!4455779 e!4455783)))

(declare-fun b!7467579 () Bool)

(declare-fun res!2995607 () Bool)

(declare-fun e!4455778 () Bool)

(assert (=> b!7467579 (=> res!2995607 e!4455778)))

(declare-fun call!685837 () Bool)

(assert (=> b!7467579 (= res!2995607 call!685837)))

(declare-fun e!4455782 () Bool)

(assert (=> b!7467579 (= e!4455782 e!4455778)))

(declare-fun bm!685832 () Bool)

(declare-fun call!685838 () Bool)

(declare-fun c!1380091 () Bool)

(assert (=> bm!685832 (= call!685838 (Exists!4179 (ite c!1380091 lambda!462279 lambda!462280)))))

(declare-fun b!7467580 () Bool)

(declare-fun c!1380090 () Bool)

(assert (=> b!7467580 (= c!1380090 (is-ElementMatch!19560 lt!2624365))))

(assert (=> b!7467580 (= e!4455780 e!4455779)))

(declare-fun b!7467581 () Bool)

(declare-fun e!4455784 () Bool)

(assert (=> b!7467581 (= e!4455784 (matchRSpec!4239 (regTwo!39633 lt!2624365) s!13591))))

(assert (=> b!7467582 (= e!4455782 call!685838)))

(declare-fun b!7467583 () Bool)

(assert (=> b!7467583 (= e!4455781 call!685837)))

(assert (=> b!7467584 (= e!4455778 call!685838)))

(declare-fun d!2298708 () Bool)

(declare-fun c!1380088 () Bool)

(assert (=> d!2298708 (= c!1380088 (is-EmptyExpr!19560 lt!2624365))))

(assert (=> d!2298708 (= (matchRSpec!4239 lt!2624365 s!13591) e!4455781)))

(declare-fun b!7467577 () Bool)

(assert (=> b!7467577 (= e!4455783 e!4455784)))

(declare-fun res!2995605 () Bool)

(assert (=> b!7467577 (= res!2995605 (matchRSpec!4239 (regOne!39633 lt!2624365) s!13591))))

(assert (=> b!7467577 (=> res!2995605 e!4455784)))

(declare-fun bm!685833 () Bool)

(assert (=> bm!685833 (= call!685837 (isEmpty!41159 s!13591))))

(declare-fun b!7467585 () Bool)

(assert (=> b!7467585 (= e!4455783 e!4455782)))

(assert (=> b!7467585 (= c!1380091 (is-Star!19560 lt!2624365))))

(declare-fun b!7467586 () Bool)

(assert (=> b!7467586 (= e!4455779 (= s!13591 (Cons!72152 (c!1379993 lt!2624365) Nil!72152)))))

(assert (= (and d!2298708 c!1380088) b!7467583))

(assert (= (and d!2298708 (not c!1380088)) b!7467576))

(assert (= (and b!7467576 res!2995606) b!7467580))

(assert (= (and b!7467580 c!1380090) b!7467586))

(assert (= (and b!7467580 (not c!1380090)) b!7467578))

(assert (= (and b!7467578 c!1380089) b!7467577))

(assert (= (and b!7467578 (not c!1380089)) b!7467585))

(assert (= (and b!7467577 (not res!2995605)) b!7467581))

(assert (= (and b!7467585 c!1380091) b!7467579))

(assert (= (and b!7467585 (not c!1380091)) b!7467582))

(assert (= (and b!7467579 (not res!2995607)) b!7467584))

(assert (= (or b!7467584 b!7467582) bm!685832))

(assert (= (or b!7467583 b!7467579) bm!685833))

(declare-fun m!8065838 () Bool)

(assert (=> bm!685832 m!8065838))

(declare-fun m!8065840 () Bool)

(assert (=> b!7467581 m!8065840))

(declare-fun m!8065842 () Bool)

(assert (=> b!7467577 m!8065842))

(assert (=> bm!685833 m!8065666))

(assert (=> b!7467093 d!2298708))

(declare-fun b!7467605 () Bool)

(declare-fun e!4455799 () Bool)

(declare-fun e!4455800 () Bool)

(assert (=> b!7467605 (= e!4455799 e!4455800)))

(declare-fun res!2995624 () Bool)

(assert (=> b!7467605 (=> res!2995624 e!4455800)))

(declare-fun call!685845 () Bool)

(assert (=> b!7467605 (= res!2995624 call!685845)))

(declare-fun b!7467606 () Bool)

(declare-fun e!4455805 () Bool)

(assert (=> b!7467606 (= e!4455805 (nullable!8522 lt!2624362))))

(declare-fun b!7467607 () Bool)

(declare-fun e!4455802 () Bool)

(declare-fun lt!2624479 () Bool)

(assert (=> b!7467607 (= e!4455802 (= lt!2624479 call!685845))))

(declare-fun b!7467608 () Bool)

(declare-fun res!2995623 () Bool)

(declare-fun e!4455804 () Bool)

(assert (=> b!7467608 (=> (not res!2995623) (not e!4455804))))

(assert (=> b!7467608 (= res!2995623 (isEmpty!41159 (tail!14890 s!13591)))))

(declare-fun b!7467609 () Bool)

(declare-fun e!4455801 () Bool)

(assert (=> b!7467609 (= e!4455801 (not lt!2624479))))

(declare-fun d!2298710 () Bool)

(assert (=> d!2298710 e!4455802))

(declare-fun c!1380097 () Bool)

(assert (=> d!2298710 (= c!1380097 (is-EmptyExpr!19560 lt!2624362))))

(assert (=> d!2298710 (= lt!2624479 e!4455805)))

(declare-fun c!1380096 () Bool)

(assert (=> d!2298710 (= c!1380096 (isEmpty!41159 s!13591))))

(assert (=> d!2298710 (validRegex!10074 lt!2624362)))

(assert (=> d!2298710 (= (matchR!9324 lt!2624362 s!13591) lt!2624479)))

(declare-fun bm!685838 () Bool)

(assert (=> bm!685838 (= call!685845 (isEmpty!41159 s!13591))))

(declare-fun b!7467610 () Bool)

(assert (=> b!7467610 (= e!4455802 e!4455801)))

(declare-fun c!1380098 () Bool)

(assert (=> b!7467610 (= c!1380098 (is-EmptyLang!19560 lt!2624362))))

(declare-fun b!7467611 () Bool)

(declare-fun res!2995622 () Bool)

(assert (=> b!7467611 (=> res!2995622 e!4455800)))

(assert (=> b!7467611 (= res!2995622 (not (isEmpty!41159 (tail!14890 s!13591))))))

(declare-fun b!7467612 () Bool)

(assert (=> b!7467612 (= e!4455800 (not (= (head!15321 s!13591) (c!1379993 lt!2624362))))))

(declare-fun b!7467613 () Bool)

(declare-fun res!2995618 () Bool)

(assert (=> b!7467613 (=> (not res!2995618) (not e!4455804))))

(assert (=> b!7467613 (= res!2995618 (not call!685845))))

(declare-fun b!7467614 () Bool)

(assert (=> b!7467614 (= e!4455805 (matchR!9324 (derivativeStep!5581 lt!2624362 (head!15321 s!13591)) (tail!14890 s!13591)))))

(declare-fun b!7467615 () Bool)

(assert (=> b!7467615 (= e!4455804 (= (head!15321 s!13591) (c!1379993 lt!2624362)))))

(declare-fun b!7467616 () Bool)

(declare-fun res!2995621 () Bool)

(declare-fun e!4455803 () Bool)

(assert (=> b!7467616 (=> res!2995621 e!4455803)))

(assert (=> b!7467616 (= res!2995621 e!4455804)))

(declare-fun res!2995625 () Bool)

(assert (=> b!7467616 (=> (not res!2995625) (not e!4455804))))

(assert (=> b!7467616 (= res!2995625 lt!2624479)))

(declare-fun b!7467617 () Bool)

(declare-fun res!2995620 () Bool)

(assert (=> b!7467617 (=> res!2995620 e!4455803)))

(assert (=> b!7467617 (= res!2995620 (not (is-ElementMatch!19560 lt!2624362)))))

(assert (=> b!7467617 (= e!4455801 e!4455803)))

(declare-fun b!7467618 () Bool)

(assert (=> b!7467618 (= e!4455803 e!4455799)))

(declare-fun res!2995619 () Bool)

(assert (=> b!7467618 (=> (not res!2995619) (not e!4455799))))

(assert (=> b!7467618 (= res!2995619 (not lt!2624479))))

(assert (= (and d!2298710 c!1380096) b!7467606))

(assert (= (and d!2298710 (not c!1380096)) b!7467614))

(assert (= (and d!2298710 c!1380097) b!7467607))

(assert (= (and d!2298710 (not c!1380097)) b!7467610))

(assert (= (and b!7467610 c!1380098) b!7467609))

(assert (= (and b!7467610 (not c!1380098)) b!7467617))

(assert (= (and b!7467617 (not res!2995620)) b!7467616))

(assert (= (and b!7467616 res!2995625) b!7467613))

(assert (= (and b!7467613 res!2995618) b!7467608))

(assert (= (and b!7467608 res!2995623) b!7467615))

(assert (= (and b!7467616 (not res!2995621)) b!7467618))

(assert (= (and b!7467618 res!2995619) b!7467605))

(assert (= (and b!7467605 (not res!2995624)) b!7467611))

(assert (= (and b!7467611 (not res!2995622)) b!7467612))

(assert (= (or b!7467607 b!7467605 b!7467613) bm!685838))

(assert (=> bm!685838 m!8065666))

(declare-fun m!8065844 () Bool)

(assert (=> b!7467606 m!8065844))

(assert (=> b!7467611 m!8065676))

(assert (=> b!7467611 m!8065676))

(assert (=> b!7467611 m!8065678))

(assert (=> d!2298710 m!8065666))

(declare-fun m!8065846 () Bool)

(assert (=> d!2298710 m!8065846))

(assert (=> b!7467612 m!8065682))

(assert (=> b!7467608 m!8065676))

(assert (=> b!7467608 m!8065676))

(assert (=> b!7467608 m!8065678))

(assert (=> b!7467614 m!8065682))

(assert (=> b!7467614 m!8065682))

(declare-fun m!8065848 () Bool)

(assert (=> b!7467614 m!8065848))

(assert (=> b!7467614 m!8065676))

(assert (=> b!7467614 m!8065848))

(assert (=> b!7467614 m!8065676))

(declare-fun m!8065850 () Bool)

(assert (=> b!7467614 m!8065850))

(assert (=> b!7467615 m!8065682))

(assert (=> b!7467093 d!2298710))

(declare-fun d!2298712 () Bool)

(assert (=> d!2298712 (= (matchR!9324 lt!2624365 s!13591) (matchRSpec!4239 lt!2624365 s!13591))))

(declare-fun lt!2624480 () Unit!165955)

(assert (=> d!2298712 (= lt!2624480 (choose!57722 lt!2624365 s!13591))))

(assert (=> d!2298712 (validRegex!10074 lt!2624365)))

(assert (=> d!2298712 (= (mainMatchTheorem!4233 lt!2624365 s!13591) lt!2624480)))

(declare-fun bs!1930484 () Bool)

(assert (= bs!1930484 d!2298712))

(assert (=> bs!1930484 m!8065504))

(assert (=> bs!1930484 m!8065508))

(declare-fun m!8065852 () Bool)

(assert (=> bs!1930484 m!8065852))

(declare-fun m!8065854 () Bool)

(assert (=> bs!1930484 m!8065854))

(assert (=> b!7467093 d!2298712))

(declare-fun b!7467619 () Bool)

(declare-fun e!4455806 () Bool)

(declare-fun e!4455807 () Bool)

(assert (=> b!7467619 (= e!4455806 e!4455807)))

(declare-fun res!2995632 () Bool)

(assert (=> b!7467619 (=> res!2995632 e!4455807)))

(declare-fun call!685846 () Bool)

(assert (=> b!7467619 (= res!2995632 call!685846)))

(declare-fun b!7467620 () Bool)

(declare-fun e!4455812 () Bool)

(assert (=> b!7467620 (= e!4455812 (nullable!8522 lt!2624365))))

(declare-fun b!7467621 () Bool)

(declare-fun e!4455809 () Bool)

(declare-fun lt!2624481 () Bool)

(assert (=> b!7467621 (= e!4455809 (= lt!2624481 call!685846))))

(declare-fun b!7467622 () Bool)

(declare-fun res!2995631 () Bool)

(declare-fun e!4455811 () Bool)

(assert (=> b!7467622 (=> (not res!2995631) (not e!4455811))))

(assert (=> b!7467622 (= res!2995631 (isEmpty!41159 (tail!14890 s!13591)))))

(declare-fun b!7467623 () Bool)

(declare-fun e!4455808 () Bool)

(assert (=> b!7467623 (= e!4455808 (not lt!2624481))))

(declare-fun d!2298714 () Bool)

(assert (=> d!2298714 e!4455809))

(declare-fun c!1380100 () Bool)

(assert (=> d!2298714 (= c!1380100 (is-EmptyExpr!19560 lt!2624365))))

(assert (=> d!2298714 (= lt!2624481 e!4455812)))

(declare-fun c!1380099 () Bool)

(assert (=> d!2298714 (= c!1380099 (isEmpty!41159 s!13591))))

(assert (=> d!2298714 (validRegex!10074 lt!2624365)))

(assert (=> d!2298714 (= (matchR!9324 lt!2624365 s!13591) lt!2624481)))

(declare-fun bm!685841 () Bool)

(assert (=> bm!685841 (= call!685846 (isEmpty!41159 s!13591))))

(declare-fun b!7467624 () Bool)

(assert (=> b!7467624 (= e!4455809 e!4455808)))

(declare-fun c!1380101 () Bool)

(assert (=> b!7467624 (= c!1380101 (is-EmptyLang!19560 lt!2624365))))

(declare-fun b!7467625 () Bool)

(declare-fun res!2995630 () Bool)

(assert (=> b!7467625 (=> res!2995630 e!4455807)))

(assert (=> b!7467625 (= res!2995630 (not (isEmpty!41159 (tail!14890 s!13591))))))

(declare-fun b!7467626 () Bool)

(assert (=> b!7467626 (= e!4455807 (not (= (head!15321 s!13591) (c!1379993 lt!2624365))))))

(declare-fun b!7467627 () Bool)

(declare-fun res!2995626 () Bool)

(assert (=> b!7467627 (=> (not res!2995626) (not e!4455811))))

(assert (=> b!7467627 (= res!2995626 (not call!685846))))

(declare-fun b!7467628 () Bool)

(assert (=> b!7467628 (= e!4455812 (matchR!9324 (derivativeStep!5581 lt!2624365 (head!15321 s!13591)) (tail!14890 s!13591)))))

(declare-fun b!7467629 () Bool)

(assert (=> b!7467629 (= e!4455811 (= (head!15321 s!13591) (c!1379993 lt!2624365)))))

(declare-fun b!7467630 () Bool)

(declare-fun res!2995629 () Bool)

(declare-fun e!4455810 () Bool)

(assert (=> b!7467630 (=> res!2995629 e!4455810)))

(assert (=> b!7467630 (= res!2995629 e!4455811)))

(declare-fun res!2995633 () Bool)

(assert (=> b!7467630 (=> (not res!2995633) (not e!4455811))))

(assert (=> b!7467630 (= res!2995633 lt!2624481)))

(declare-fun b!7467631 () Bool)

(declare-fun res!2995628 () Bool)

(assert (=> b!7467631 (=> res!2995628 e!4455810)))

(assert (=> b!7467631 (= res!2995628 (not (is-ElementMatch!19560 lt!2624365)))))

(assert (=> b!7467631 (= e!4455808 e!4455810)))

(declare-fun b!7467632 () Bool)

(assert (=> b!7467632 (= e!4455810 e!4455806)))

(declare-fun res!2995627 () Bool)

(assert (=> b!7467632 (=> (not res!2995627) (not e!4455806))))

(assert (=> b!7467632 (= res!2995627 (not lt!2624481))))

(assert (= (and d!2298714 c!1380099) b!7467620))

(assert (= (and d!2298714 (not c!1380099)) b!7467628))

(assert (= (and d!2298714 c!1380100) b!7467621))

(assert (= (and d!2298714 (not c!1380100)) b!7467624))

(assert (= (and b!7467624 c!1380101) b!7467623))

(assert (= (and b!7467624 (not c!1380101)) b!7467631))

(assert (= (and b!7467631 (not res!2995628)) b!7467630))

(assert (= (and b!7467630 res!2995633) b!7467627))

(assert (= (and b!7467627 res!2995626) b!7467622))

(assert (= (and b!7467622 res!2995631) b!7467629))

(assert (= (and b!7467630 (not res!2995629)) b!7467632))

(assert (= (and b!7467632 res!2995627) b!7467619))

(assert (= (and b!7467619 (not res!2995632)) b!7467625))

(assert (= (and b!7467625 (not res!2995630)) b!7467626))

(assert (= (or b!7467621 b!7467619 b!7467627) bm!685841))

(assert (=> bm!685841 m!8065666))

(declare-fun m!8065856 () Bool)

(assert (=> b!7467620 m!8065856))

(assert (=> b!7467625 m!8065676))

(assert (=> b!7467625 m!8065676))

(assert (=> b!7467625 m!8065678))

(assert (=> d!2298714 m!8065666))

(assert (=> d!2298714 m!8065854))

(assert (=> b!7467626 m!8065682))

(assert (=> b!7467622 m!8065676))

(assert (=> b!7467622 m!8065676))

(assert (=> b!7467622 m!8065678))

(assert (=> b!7467628 m!8065682))

(assert (=> b!7467628 m!8065682))

(declare-fun m!8065858 () Bool)

(assert (=> b!7467628 m!8065858))

(assert (=> b!7467628 m!8065676))

(assert (=> b!7467628 m!8065858))

(assert (=> b!7467628 m!8065676))

(declare-fun m!8065860 () Bool)

(assert (=> b!7467628 m!8065860))

(assert (=> b!7467629 m!8065682))

(assert (=> b!7467093 d!2298714))

(declare-fun d!2298716 () Bool)

(assert (=> d!2298716 (= (matchR!9324 lt!2624362 s!13591) (matchRSpec!4239 lt!2624362 s!13591))))

(declare-fun lt!2624482 () Unit!165955)

(assert (=> d!2298716 (= lt!2624482 (choose!57722 lt!2624362 s!13591))))

(assert (=> d!2298716 (validRegex!10074 lt!2624362)))

(assert (=> d!2298716 (= (mainMatchTheorem!4233 lt!2624362 s!13591) lt!2624482)))

(declare-fun bs!1930485 () Bool)

(assert (= bs!1930485 d!2298716))

(assert (=> bs!1930485 m!8065512))

(assert (=> bs!1930485 m!8065510))

(declare-fun m!8065862 () Bool)

(assert (=> bs!1930485 m!8065862))

(assert (=> bs!1930485 m!8065846))

(assert (=> b!7467093 d!2298716))

(declare-fun b!7467633 () Bool)

(declare-fun e!4455817 () Bool)

(declare-fun e!4455819 () Bool)

(assert (=> b!7467633 (= e!4455817 e!4455819)))

(declare-fun c!1380102 () Bool)

(assert (=> b!7467633 (= c!1380102 (is-Union!19560 r1!5845))))

(declare-fun b!7467634 () Bool)

(declare-fun e!4455814 () Bool)

(declare-fun call!685847 () Bool)

(assert (=> b!7467634 (= e!4455814 call!685847)))

(declare-fun b!7467635 () Bool)

(declare-fun e!4455813 () Bool)

(assert (=> b!7467635 (= e!4455813 e!4455817)))

(declare-fun c!1380103 () Bool)

(assert (=> b!7467635 (= c!1380103 (is-Star!19560 r1!5845))))

(declare-fun bm!685842 () Bool)

(assert (=> bm!685842 (= call!685847 (validRegex!10074 (ite c!1380103 (reg!19889 r1!5845) (ite c!1380102 (regOne!39633 r1!5845) (regOne!39632 r1!5845)))))))

(declare-fun b!7467636 () Bool)

(declare-fun e!4455815 () Bool)

(declare-fun call!685849 () Bool)

(assert (=> b!7467636 (= e!4455815 call!685849)))

(declare-fun d!2298718 () Bool)

(declare-fun res!2995638 () Bool)

(assert (=> d!2298718 (=> res!2995638 e!4455813)))

(assert (=> d!2298718 (= res!2995638 (is-ElementMatch!19560 r1!5845))))

(assert (=> d!2298718 (= (validRegex!10074 r1!5845) e!4455813)))

(declare-fun b!7467637 () Bool)

(declare-fun e!4455818 () Bool)

(assert (=> b!7467637 (= e!4455818 e!4455815)))

(declare-fun res!2995636 () Bool)

(assert (=> b!7467637 (=> (not res!2995636) (not e!4455815))))

(declare-fun call!685848 () Bool)

(assert (=> b!7467637 (= res!2995636 call!685848)))

(declare-fun b!7467638 () Bool)

(assert (=> b!7467638 (= e!4455817 e!4455814)))

(declare-fun res!2995634 () Bool)

(assert (=> b!7467638 (= res!2995634 (not (nullable!8522 (reg!19889 r1!5845))))))

(assert (=> b!7467638 (=> (not res!2995634) (not e!4455814))))

(declare-fun b!7467639 () Bool)

(declare-fun res!2995635 () Bool)

(assert (=> b!7467639 (=> res!2995635 e!4455818)))

(assert (=> b!7467639 (= res!2995635 (not (is-Concat!28405 r1!5845)))))

(assert (=> b!7467639 (= e!4455819 e!4455818)))

(declare-fun bm!685843 () Bool)

(assert (=> bm!685843 (= call!685849 (validRegex!10074 (ite c!1380102 (regTwo!39633 r1!5845) (regTwo!39632 r1!5845))))))

(declare-fun b!7467640 () Bool)

(declare-fun e!4455816 () Bool)

(assert (=> b!7467640 (= e!4455816 call!685849)))

(declare-fun bm!685844 () Bool)

(assert (=> bm!685844 (= call!685848 call!685847)))

(declare-fun b!7467641 () Bool)

(declare-fun res!2995637 () Bool)

(assert (=> b!7467641 (=> (not res!2995637) (not e!4455816))))

(assert (=> b!7467641 (= res!2995637 call!685848)))

(assert (=> b!7467641 (= e!4455819 e!4455816)))

(assert (= (and d!2298718 (not res!2995638)) b!7467635))

(assert (= (and b!7467635 c!1380103) b!7467638))

(assert (= (and b!7467635 (not c!1380103)) b!7467633))

(assert (= (and b!7467638 res!2995634) b!7467634))

(assert (= (and b!7467633 c!1380102) b!7467641))

(assert (= (and b!7467633 (not c!1380102)) b!7467639))

(assert (= (and b!7467641 res!2995637) b!7467640))

(assert (= (and b!7467639 (not res!2995635)) b!7467637))

(assert (= (and b!7467637 res!2995636) b!7467636))

(assert (= (or b!7467640 b!7467636) bm!685843))

(assert (= (or b!7467641 b!7467637) bm!685844))

(assert (= (or b!7467634 bm!685844) bm!685842))

(declare-fun m!8065864 () Bool)

(assert (=> bm!685842 m!8065864))

(declare-fun m!8065866 () Bool)

(assert (=> b!7467638 m!8065866))

(declare-fun m!8065868 () Bool)

(assert (=> bm!685843 m!8065868))

(assert (=> start!724132 d!2298718))

(declare-fun b!7467642 () Bool)

(declare-fun e!4455820 () Bool)

(declare-fun e!4455821 () Bool)

(assert (=> b!7467642 (= e!4455820 e!4455821)))

(declare-fun res!2995645 () Bool)

(assert (=> b!7467642 (=> res!2995645 e!4455821)))

(declare-fun call!685850 () Bool)

(assert (=> b!7467642 (= res!2995645 call!685850)))

(declare-fun b!7467643 () Bool)

(declare-fun e!4455826 () Bool)

(assert (=> b!7467643 (= e!4455826 (nullable!8522 rTail!78))))

(declare-fun b!7467644 () Bool)

(declare-fun e!4455823 () Bool)

(declare-fun lt!2624483 () Bool)

(assert (=> b!7467644 (= e!4455823 (= lt!2624483 call!685850))))

(declare-fun b!7467645 () Bool)

(declare-fun res!2995644 () Bool)

(declare-fun e!4455825 () Bool)

(assert (=> b!7467645 (=> (not res!2995644) (not e!4455825))))

(assert (=> b!7467645 (= res!2995644 (isEmpty!41159 (tail!14890 (_2!37588 lt!2624350))))))

(declare-fun b!7467646 () Bool)

(declare-fun e!4455822 () Bool)

(assert (=> b!7467646 (= e!4455822 (not lt!2624483))))

(declare-fun d!2298720 () Bool)

(assert (=> d!2298720 e!4455823))

(declare-fun c!1380105 () Bool)

(assert (=> d!2298720 (= c!1380105 (is-EmptyExpr!19560 rTail!78))))

(assert (=> d!2298720 (= lt!2624483 e!4455826)))

(declare-fun c!1380104 () Bool)

(assert (=> d!2298720 (= c!1380104 (isEmpty!41159 (_2!37588 lt!2624350)))))

(assert (=> d!2298720 (validRegex!10074 rTail!78)))

(assert (=> d!2298720 (= (matchR!9324 rTail!78 (_2!37588 lt!2624350)) lt!2624483)))

(declare-fun bm!685845 () Bool)

(assert (=> bm!685845 (= call!685850 (isEmpty!41159 (_2!37588 lt!2624350)))))

(declare-fun b!7467647 () Bool)

(assert (=> b!7467647 (= e!4455823 e!4455822)))

(declare-fun c!1380106 () Bool)

(assert (=> b!7467647 (= c!1380106 (is-EmptyLang!19560 rTail!78))))

(declare-fun b!7467648 () Bool)

(declare-fun res!2995643 () Bool)

(assert (=> b!7467648 (=> res!2995643 e!4455821)))

(assert (=> b!7467648 (= res!2995643 (not (isEmpty!41159 (tail!14890 (_2!37588 lt!2624350)))))))

(declare-fun b!7467649 () Bool)

(assert (=> b!7467649 (= e!4455821 (not (= (head!15321 (_2!37588 lt!2624350)) (c!1379993 rTail!78))))))

(declare-fun b!7467650 () Bool)

(declare-fun res!2995639 () Bool)

(assert (=> b!7467650 (=> (not res!2995639) (not e!4455825))))

(assert (=> b!7467650 (= res!2995639 (not call!685850))))

(declare-fun b!7467651 () Bool)

(assert (=> b!7467651 (= e!4455826 (matchR!9324 (derivativeStep!5581 rTail!78 (head!15321 (_2!37588 lt!2624350))) (tail!14890 (_2!37588 lt!2624350))))))

(declare-fun b!7467652 () Bool)

(assert (=> b!7467652 (= e!4455825 (= (head!15321 (_2!37588 lt!2624350)) (c!1379993 rTail!78)))))

(declare-fun b!7467653 () Bool)

(declare-fun res!2995642 () Bool)

(declare-fun e!4455824 () Bool)

(assert (=> b!7467653 (=> res!2995642 e!4455824)))

(assert (=> b!7467653 (= res!2995642 e!4455825)))

(declare-fun res!2995646 () Bool)

(assert (=> b!7467653 (=> (not res!2995646) (not e!4455825))))

(assert (=> b!7467653 (= res!2995646 lt!2624483)))

(declare-fun b!7467654 () Bool)

(declare-fun res!2995641 () Bool)

(assert (=> b!7467654 (=> res!2995641 e!4455824)))

(assert (=> b!7467654 (= res!2995641 (not (is-ElementMatch!19560 rTail!78)))))

(assert (=> b!7467654 (= e!4455822 e!4455824)))

(declare-fun b!7467655 () Bool)

(assert (=> b!7467655 (= e!4455824 e!4455820)))

(declare-fun res!2995640 () Bool)

(assert (=> b!7467655 (=> (not res!2995640) (not e!4455820))))

(assert (=> b!7467655 (= res!2995640 (not lt!2624483))))

(assert (= (and d!2298720 c!1380104) b!7467643))

(assert (= (and d!2298720 (not c!1380104)) b!7467651))

(assert (= (and d!2298720 c!1380105) b!7467644))

(assert (= (and d!2298720 (not c!1380105)) b!7467647))

(assert (= (and b!7467647 c!1380106) b!7467646))

(assert (= (and b!7467647 (not c!1380106)) b!7467654))

(assert (= (and b!7467654 (not res!2995641)) b!7467653))

(assert (= (and b!7467653 res!2995646) b!7467650))

(assert (= (and b!7467650 res!2995639) b!7467645))

(assert (= (and b!7467645 res!2995644) b!7467652))

(assert (= (and b!7467653 (not res!2995642)) b!7467655))

(assert (= (and b!7467655 res!2995640) b!7467642))

(assert (= (and b!7467642 (not res!2995645)) b!7467648))

(assert (= (and b!7467648 (not res!2995643)) b!7467649))

(assert (= (or b!7467644 b!7467642 b!7467650) bm!685845))

(declare-fun m!8065870 () Bool)

(assert (=> bm!685845 m!8065870))

(declare-fun m!8065872 () Bool)

(assert (=> b!7467643 m!8065872))

(declare-fun m!8065874 () Bool)

(assert (=> b!7467648 m!8065874))

(assert (=> b!7467648 m!8065874))

(declare-fun m!8065876 () Bool)

(assert (=> b!7467648 m!8065876))

(assert (=> d!2298720 m!8065870))

(assert (=> d!2298720 m!8065558))

(declare-fun m!8065878 () Bool)

(assert (=> b!7467649 m!8065878))

(assert (=> b!7467645 m!8065874))

(assert (=> b!7467645 m!8065874))

(assert (=> b!7467645 m!8065876))

(assert (=> b!7467651 m!8065878))

(assert (=> b!7467651 m!8065878))

(declare-fun m!8065880 () Bool)

(assert (=> b!7467651 m!8065880))

(assert (=> b!7467651 m!8065874))

(assert (=> b!7467651 m!8065880))

(assert (=> b!7467651 m!8065874))

(declare-fun m!8065882 () Bool)

(assert (=> b!7467651 m!8065882))

(assert (=> b!7467652 m!8065878))

(assert (=> b!7467090 d!2298720))

(declare-fun b!7467656 () Bool)

(declare-fun e!4455831 () Bool)

(declare-fun e!4455833 () Bool)

(assert (=> b!7467656 (= e!4455831 e!4455833)))

(declare-fun c!1380107 () Bool)

(assert (=> b!7467656 (= c!1380107 (is-Union!19560 r2!5783))))

(declare-fun b!7467657 () Bool)

(declare-fun e!4455828 () Bool)

(declare-fun call!685851 () Bool)

(assert (=> b!7467657 (= e!4455828 call!685851)))

(declare-fun b!7467658 () Bool)

(declare-fun e!4455827 () Bool)

(assert (=> b!7467658 (= e!4455827 e!4455831)))

(declare-fun c!1380108 () Bool)

(assert (=> b!7467658 (= c!1380108 (is-Star!19560 r2!5783))))

(declare-fun bm!685846 () Bool)

(assert (=> bm!685846 (= call!685851 (validRegex!10074 (ite c!1380108 (reg!19889 r2!5783) (ite c!1380107 (regOne!39633 r2!5783) (regOne!39632 r2!5783)))))))

(declare-fun b!7467659 () Bool)

(declare-fun e!4455829 () Bool)

(declare-fun call!685853 () Bool)

(assert (=> b!7467659 (= e!4455829 call!685853)))

(declare-fun d!2298722 () Bool)

(declare-fun res!2995651 () Bool)

(assert (=> d!2298722 (=> res!2995651 e!4455827)))

(assert (=> d!2298722 (= res!2995651 (is-ElementMatch!19560 r2!5783))))

(assert (=> d!2298722 (= (validRegex!10074 r2!5783) e!4455827)))

(declare-fun b!7467660 () Bool)

(declare-fun e!4455832 () Bool)

(assert (=> b!7467660 (= e!4455832 e!4455829)))

(declare-fun res!2995649 () Bool)

(assert (=> b!7467660 (=> (not res!2995649) (not e!4455829))))

(declare-fun call!685852 () Bool)

(assert (=> b!7467660 (= res!2995649 call!685852)))

(declare-fun b!7467661 () Bool)

(assert (=> b!7467661 (= e!4455831 e!4455828)))

(declare-fun res!2995647 () Bool)

(assert (=> b!7467661 (= res!2995647 (not (nullable!8522 (reg!19889 r2!5783))))))

(assert (=> b!7467661 (=> (not res!2995647) (not e!4455828))))

(declare-fun b!7467662 () Bool)

(declare-fun res!2995648 () Bool)

(assert (=> b!7467662 (=> res!2995648 e!4455832)))

(assert (=> b!7467662 (= res!2995648 (not (is-Concat!28405 r2!5783)))))

(assert (=> b!7467662 (= e!4455833 e!4455832)))

(declare-fun bm!685847 () Bool)

(assert (=> bm!685847 (= call!685853 (validRegex!10074 (ite c!1380107 (regTwo!39633 r2!5783) (regTwo!39632 r2!5783))))))

(declare-fun b!7467663 () Bool)

(declare-fun e!4455830 () Bool)

(assert (=> b!7467663 (= e!4455830 call!685853)))

(declare-fun bm!685848 () Bool)

(assert (=> bm!685848 (= call!685852 call!685851)))

(declare-fun b!7467664 () Bool)

(declare-fun res!2995650 () Bool)

(assert (=> b!7467664 (=> (not res!2995650) (not e!4455830))))

(assert (=> b!7467664 (= res!2995650 call!685852)))

(assert (=> b!7467664 (= e!4455833 e!4455830)))

(assert (= (and d!2298722 (not res!2995651)) b!7467658))

(assert (= (and b!7467658 c!1380108) b!7467661))

(assert (= (and b!7467658 (not c!1380108)) b!7467656))

(assert (= (and b!7467661 res!2995647) b!7467657))

(assert (= (and b!7467656 c!1380107) b!7467664))

(assert (= (and b!7467656 (not c!1380107)) b!7467662))

(assert (= (and b!7467664 res!2995650) b!7467663))

(assert (= (and b!7467662 (not res!2995648)) b!7467660))

(assert (= (and b!7467660 res!2995649) b!7467659))

(assert (= (or b!7467663 b!7467659) bm!685847))

(assert (= (or b!7467664 b!7467660) bm!685848))

(assert (= (or b!7467657 bm!685848) bm!685846))

(declare-fun m!8065884 () Bool)

(assert (=> bm!685846 m!8065884))

(declare-fun m!8065886 () Bool)

(assert (=> b!7467661 m!8065886))

(declare-fun m!8065888 () Bool)

(assert (=> bm!685847 m!8065888))

(assert (=> b!7467106 d!2298722))

(declare-fun b!7467665 () Bool)

(declare-fun e!4455838 () Bool)

(declare-fun e!4455840 () Bool)

(assert (=> b!7467665 (= e!4455838 e!4455840)))

(declare-fun c!1380109 () Bool)

(assert (=> b!7467665 (= c!1380109 (is-Union!19560 rTail!78))))

(declare-fun b!7467666 () Bool)

(declare-fun e!4455835 () Bool)

(declare-fun call!685854 () Bool)

(assert (=> b!7467666 (= e!4455835 call!685854)))

(declare-fun b!7467667 () Bool)

(declare-fun e!4455834 () Bool)

(assert (=> b!7467667 (= e!4455834 e!4455838)))

(declare-fun c!1380110 () Bool)

(assert (=> b!7467667 (= c!1380110 (is-Star!19560 rTail!78))))

(declare-fun bm!685849 () Bool)

(assert (=> bm!685849 (= call!685854 (validRegex!10074 (ite c!1380110 (reg!19889 rTail!78) (ite c!1380109 (regOne!39633 rTail!78) (regOne!39632 rTail!78)))))))

(declare-fun b!7467668 () Bool)

(declare-fun e!4455836 () Bool)

(declare-fun call!685856 () Bool)

(assert (=> b!7467668 (= e!4455836 call!685856)))

(declare-fun d!2298724 () Bool)

(declare-fun res!2995656 () Bool)

(assert (=> d!2298724 (=> res!2995656 e!4455834)))

(assert (=> d!2298724 (= res!2995656 (is-ElementMatch!19560 rTail!78))))

(assert (=> d!2298724 (= (validRegex!10074 rTail!78) e!4455834)))

(declare-fun b!7467669 () Bool)

(declare-fun e!4455839 () Bool)

(assert (=> b!7467669 (= e!4455839 e!4455836)))

(declare-fun res!2995654 () Bool)

(assert (=> b!7467669 (=> (not res!2995654) (not e!4455836))))

(declare-fun call!685855 () Bool)

(assert (=> b!7467669 (= res!2995654 call!685855)))

(declare-fun b!7467670 () Bool)

(assert (=> b!7467670 (= e!4455838 e!4455835)))

(declare-fun res!2995652 () Bool)

(assert (=> b!7467670 (= res!2995652 (not (nullable!8522 (reg!19889 rTail!78))))))

(assert (=> b!7467670 (=> (not res!2995652) (not e!4455835))))

(declare-fun b!7467671 () Bool)

(declare-fun res!2995653 () Bool)

(assert (=> b!7467671 (=> res!2995653 e!4455839)))

(assert (=> b!7467671 (= res!2995653 (not (is-Concat!28405 rTail!78)))))

(assert (=> b!7467671 (= e!4455840 e!4455839)))

(declare-fun bm!685850 () Bool)

(assert (=> bm!685850 (= call!685856 (validRegex!10074 (ite c!1380109 (regTwo!39633 rTail!78) (regTwo!39632 rTail!78))))))

(declare-fun b!7467672 () Bool)

(declare-fun e!4455837 () Bool)

(assert (=> b!7467672 (= e!4455837 call!685856)))

(declare-fun bm!685851 () Bool)

(assert (=> bm!685851 (= call!685855 call!685854)))

(declare-fun b!7467673 () Bool)

(declare-fun res!2995655 () Bool)

(assert (=> b!7467673 (=> (not res!2995655) (not e!4455837))))

(assert (=> b!7467673 (= res!2995655 call!685855)))

(assert (=> b!7467673 (= e!4455840 e!4455837)))

(assert (= (and d!2298724 (not res!2995656)) b!7467667))

(assert (= (and b!7467667 c!1380110) b!7467670))

(assert (= (and b!7467667 (not c!1380110)) b!7467665))

(assert (= (and b!7467670 res!2995652) b!7467666))

(assert (= (and b!7467665 c!1380109) b!7467673))

(assert (= (and b!7467665 (not c!1380109)) b!7467671))

(assert (= (and b!7467673 res!2995655) b!7467672))

(assert (= (and b!7467671 (not res!2995653)) b!7467669))

(assert (= (and b!7467669 res!2995654) b!7467668))

(assert (= (or b!7467672 b!7467668) bm!685850))

(assert (= (or b!7467673 b!7467669) bm!685851))

(assert (= (or b!7467666 bm!685851) bm!685849))

(declare-fun m!8065890 () Bool)

(assert (=> bm!685849 m!8065890))

(declare-fun m!8065892 () Bool)

(assert (=> b!7467670 m!8065892))

(declare-fun m!8065894 () Bool)

(assert (=> bm!685850 m!8065894))

(assert (=> b!7467102 d!2298724))

(declare-fun d!2298726 () Bool)

(assert (=> d!2298726 (= (isDefined!13806 (findConcatSeparation!3239 lt!2624354 rTail!78 Nil!72152 s!13591 s!13591)) (not (isEmpty!41160 (findConcatSeparation!3239 lt!2624354 rTail!78 Nil!72152 s!13591 s!13591))))))

(declare-fun bs!1930486 () Bool)

(assert (= bs!1930486 d!2298726))

(assert (=> bs!1930486 m!8065518))

(declare-fun m!8065896 () Bool)

(assert (=> bs!1930486 m!8065896))

(assert (=> b!7467107 d!2298726))

(declare-fun bs!1930487 () Bool)

(declare-fun d!2298728 () Bool)

(assert (= bs!1930487 (and d!2298728 b!7467582)))

(declare-fun lambda!462281 () Int)

(assert (=> bs!1930487 (not (= lambda!462281 lambda!462280))))

(declare-fun bs!1930488 () Bool)

(assert (= bs!1930488 (and d!2298728 b!7467546)))

(assert (=> bs!1930488 (not (= lambda!462281 lambda!462275))))

(declare-fun bs!1930489 () Bool)

(assert (= bs!1930489 (and d!2298728 b!7467107)))

(assert (=> bs!1930489 (not (= lambda!462281 lambda!462227))))

(declare-fun bs!1930490 () Bool)

(assert (= bs!1930490 (and d!2298728 b!7467103)))

(assert (=> bs!1930490 (= (= lt!2624354 r1!5845) (= lambda!462281 lambda!462228))))

(declare-fun bs!1930491 () Bool)

(assert (= bs!1930491 (and d!2298728 b!7467255)))

(assert (=> bs!1930491 (not (= lambda!462281 lambda!462252))))

(declare-fun bs!1930492 () Bool)

(assert (= bs!1930492 (and d!2298728 b!7467512)))

(assert (=> bs!1930492 (not (= lambda!462281 lambda!462271))))

(declare-fun bs!1930493 () Bool)

(assert (= bs!1930493 (and d!2298728 b!7467559)))

(assert (=> bs!1930493 (not (= lambda!462281 lambda!462277))))

(declare-fun bs!1930494 () Bool)

(assert (= bs!1930494 (and d!2298728 d!2298670)))

(assert (=> bs!1930494 (= (= lt!2624354 r1!5845) (= lambda!462281 lambda!462261))))

(declare-fun bs!1930495 () Bool)

(assert (= bs!1930495 (and d!2298728 b!7467253)))

(assert (=> bs!1930495 (not (= lambda!462281 lambda!462253))))

(declare-fun bs!1930496 () Bool)

(assert (= bs!1930496 (and d!2298728 b!7467449)))

(assert (=> bs!1930496 (not (= lambda!462281 lambda!462267))))

(declare-fun bs!1930497 () Bool)

(assert (= bs!1930497 (and d!2298728 b!7467244)))

(assert (=> bs!1930497 (not (= lambda!462281 lambda!462250))))

(declare-fun bs!1930498 () Bool)

(assert (= bs!1930498 (and d!2298728 b!7467447)))

(assert (=> bs!1930498 (not (= lambda!462281 lambda!462268))))

(declare-fun bs!1930499 () Bool)

(assert (= bs!1930499 (and d!2298728 b!7467584)))

(assert (=> bs!1930499 (not (= lambda!462281 lambda!462279))))

(declare-fun bs!1930500 () Bool)

(assert (= bs!1930500 (and d!2298728 b!7467557)))

(assert (=> bs!1930500 (not (= lambda!462281 lambda!462278))))

(declare-fun bs!1930501 () Bool)

(assert (= bs!1930501 (and d!2298728 d!2298660)))

(assert (=> bs!1930501 (= (= lt!2624354 r1!5845) (= lambda!462281 lambda!462256))))

(declare-fun bs!1930502 () Bool)

(assert (= bs!1930502 (and d!2298728 b!7467242)))

(assert (=> bs!1930502 (not (= lambda!462281 lambda!462251))))

(assert (=> bs!1930494 (not (= lambda!462281 lambda!462262))))

(assert (=> bs!1930489 (= lambda!462281 lambda!462226)))

(assert (=> bs!1930490 (not (= lambda!462281 lambda!462229))))

(declare-fun bs!1930503 () Bool)

(assert (= bs!1930503 (and d!2298728 b!7467548)))

(assert (=> bs!1930503 (not (= lambda!462281 lambda!462274))))

(declare-fun bs!1930504 () Bool)

(assert (= bs!1930504 (and d!2298728 b!7467510)))

(assert (=> bs!1930504 (not (= lambda!462281 lambda!462272))))

(assert (=> d!2298728 true))

(assert (=> d!2298728 true))

(assert (=> d!2298728 true))

(assert (=> d!2298728 (= (isDefined!13806 (findConcatSeparation!3239 lt!2624354 rTail!78 Nil!72152 s!13591 s!13591)) (Exists!4179 lambda!462281))))

(declare-fun lt!2624484 () Unit!165955)

(assert (=> d!2298728 (= lt!2624484 (choose!57723 lt!2624354 rTail!78 s!13591))))

(assert (=> d!2298728 (validRegex!10074 lt!2624354)))

(assert (=> d!2298728 (= (lemmaFindConcatSeparationEquivalentToExists!2997 lt!2624354 rTail!78 s!13591) lt!2624484)))

(declare-fun bs!1930505 () Bool)

(assert (= bs!1930505 d!2298728))

(assert (=> bs!1930505 m!8065518))

(assert (=> bs!1930505 m!8065542))

(assert (=> bs!1930505 m!8065518))

(assert (=> bs!1930505 m!8065520))

(declare-fun m!8065904 () Bool)

(assert (=> bs!1930505 m!8065904))

(declare-fun m!8065906 () Bool)

(assert (=> bs!1930505 m!8065906))

(assert (=> b!7467107 d!2298728))

(declare-fun d!2298732 () Bool)

(assert (=> d!2298732 (= (Exists!4179 lambda!462227) (choose!57724 lambda!462227))))

(declare-fun bs!1930506 () Bool)

(assert (= bs!1930506 d!2298732))

(declare-fun m!8065908 () Bool)

(assert (=> bs!1930506 m!8065908))

(assert (=> b!7467107 d!2298732))

(declare-fun b!7467697 () Bool)

(declare-fun e!4455858 () Option!17117)

(assert (=> b!7467697 (= e!4455858 (Some!17116 (tuple2!68571 Nil!72152 s!13591)))))

(declare-fun b!7467698 () Bool)

(declare-fun res!2995670 () Bool)

(declare-fun e!4455855 () Bool)

(assert (=> b!7467698 (=> (not res!2995670) (not e!4455855))))

(declare-fun lt!2624486 () Option!17117)

(assert (=> b!7467698 (= res!2995670 (matchR!9324 lt!2624354 (_1!37588 (get!25208 lt!2624486))))))

(declare-fun b!7467699 () Bool)

(assert (=> b!7467699 (= e!4455855 (= (++!17194 (_1!37588 (get!25208 lt!2624486)) (_2!37588 (get!25208 lt!2624486))) s!13591))))

(declare-fun b!7467700 () Bool)

(declare-fun e!4455856 () Option!17117)

(assert (=> b!7467700 (= e!4455856 None!17116)))

(declare-fun d!2298734 () Bool)

(declare-fun e!4455859 () Bool)

(assert (=> d!2298734 e!4455859))

(declare-fun res!2995674 () Bool)

(assert (=> d!2298734 (=> res!2995674 e!4455859)))

(assert (=> d!2298734 (= res!2995674 e!4455855)))

(declare-fun res!2995673 () Bool)

(assert (=> d!2298734 (=> (not res!2995673) (not e!4455855))))

(assert (=> d!2298734 (= res!2995673 (isDefined!13806 lt!2624486))))

(assert (=> d!2298734 (= lt!2624486 e!4455858)))

(declare-fun c!1380117 () Bool)

(declare-fun e!4455857 () Bool)

(assert (=> d!2298734 (= c!1380117 e!4455857)))

(declare-fun res!2995671 () Bool)

(assert (=> d!2298734 (=> (not res!2995671) (not e!4455857))))

(assert (=> d!2298734 (= res!2995671 (matchR!9324 lt!2624354 Nil!72152))))

(assert (=> d!2298734 (validRegex!10074 lt!2624354)))

(assert (=> d!2298734 (= (findConcatSeparation!3239 lt!2624354 rTail!78 Nil!72152 s!13591 s!13591) lt!2624486)))

(declare-fun b!7467701 () Bool)

(assert (=> b!7467701 (= e!4455859 (not (isDefined!13806 lt!2624486)))))

(declare-fun b!7467702 () Bool)

(declare-fun lt!2624487 () Unit!165955)

(declare-fun lt!2624488 () Unit!165955)

(assert (=> b!7467702 (= lt!2624487 lt!2624488)))

(assert (=> b!7467702 (= (++!17194 (++!17194 Nil!72152 (Cons!72152 (h!78600 s!13591) Nil!72152)) (t!386845 s!13591)) s!13591)))

(assert (=> b!7467702 (= lt!2624488 (lemmaMoveElementToOtherListKeepsConcatEq!3074 Nil!72152 (h!78600 s!13591) (t!386845 s!13591) s!13591))))

(assert (=> b!7467702 (= e!4455856 (findConcatSeparation!3239 lt!2624354 rTail!78 (++!17194 Nil!72152 (Cons!72152 (h!78600 s!13591) Nil!72152)) (t!386845 s!13591) s!13591))))

(declare-fun b!7467703 () Bool)

(assert (=> b!7467703 (= e!4455858 e!4455856)))

(declare-fun c!1380116 () Bool)

(assert (=> b!7467703 (= c!1380116 (is-Nil!72152 s!13591))))

(declare-fun b!7467704 () Bool)

(assert (=> b!7467704 (= e!4455857 (matchR!9324 rTail!78 s!13591))))

(declare-fun b!7467705 () Bool)

(declare-fun res!2995672 () Bool)

(assert (=> b!7467705 (=> (not res!2995672) (not e!4455855))))

(assert (=> b!7467705 (= res!2995672 (matchR!9324 rTail!78 (_2!37588 (get!25208 lt!2624486))))))

(assert (= (and d!2298734 res!2995671) b!7467704))

(assert (= (and d!2298734 c!1380117) b!7467697))

(assert (= (and d!2298734 (not c!1380117)) b!7467703))

(assert (= (and b!7467703 c!1380116) b!7467700))

(assert (= (and b!7467703 (not c!1380116)) b!7467702))

(assert (= (and d!2298734 res!2995673) b!7467698))

(assert (= (and b!7467698 res!2995670) b!7467705))

(assert (= (and b!7467705 res!2995672) b!7467699))

(assert (= (and d!2298734 (not res!2995674)) b!7467701))

(declare-fun m!8065916 () Bool)

(assert (=> b!7467701 m!8065916))

(declare-fun m!8065920 () Bool)

(assert (=> b!7467698 m!8065920))

(declare-fun m!8065922 () Bool)

(assert (=> b!7467698 m!8065922))

(assert (=> b!7467705 m!8065920))

(declare-fun m!8065926 () Bool)

(assert (=> b!7467705 m!8065926))

(assert (=> b!7467699 m!8065920))

(declare-fun m!8065928 () Bool)

(assert (=> b!7467699 m!8065928))

(assert (=> b!7467704 m!8065752))

(assert (=> d!2298734 m!8065916))

(declare-fun m!8065930 () Bool)

(assert (=> d!2298734 m!8065930))

(assert (=> d!2298734 m!8065542))

(assert (=> b!7467702 m!8065756))

(assert (=> b!7467702 m!8065756))

(assert (=> b!7467702 m!8065758))

(assert (=> b!7467702 m!8065760))

(assert (=> b!7467702 m!8065756))

(declare-fun m!8065936 () Bool)

(assert (=> b!7467702 m!8065936))

(assert (=> b!7467107 d!2298734))

(declare-fun bs!1930507 () Bool)

(declare-fun d!2298738 () Bool)

(assert (= bs!1930507 (and d!2298738 d!2298728)))

(declare-fun lambda!462282 () Int)

(assert (=> bs!1930507 (= lambda!462282 lambda!462281)))

(declare-fun bs!1930508 () Bool)

(assert (= bs!1930508 (and d!2298738 b!7467582)))

(assert (=> bs!1930508 (not (= lambda!462282 lambda!462280))))

(declare-fun bs!1930509 () Bool)

(assert (= bs!1930509 (and d!2298738 b!7467546)))

(assert (=> bs!1930509 (not (= lambda!462282 lambda!462275))))

(declare-fun bs!1930510 () Bool)

(assert (= bs!1930510 (and d!2298738 b!7467107)))

(assert (=> bs!1930510 (not (= lambda!462282 lambda!462227))))

(declare-fun bs!1930511 () Bool)

(assert (= bs!1930511 (and d!2298738 b!7467103)))

(assert (=> bs!1930511 (= (= lt!2624354 r1!5845) (= lambda!462282 lambda!462228))))

(declare-fun bs!1930512 () Bool)

(assert (= bs!1930512 (and d!2298738 b!7467255)))

(assert (=> bs!1930512 (not (= lambda!462282 lambda!462252))))

(declare-fun bs!1930513 () Bool)

(assert (= bs!1930513 (and d!2298738 b!7467512)))

(assert (=> bs!1930513 (not (= lambda!462282 lambda!462271))))

(declare-fun bs!1930514 () Bool)

(assert (= bs!1930514 (and d!2298738 b!7467559)))

(assert (=> bs!1930514 (not (= lambda!462282 lambda!462277))))

(declare-fun bs!1930515 () Bool)

(assert (= bs!1930515 (and d!2298738 d!2298670)))

(assert (=> bs!1930515 (= (= lt!2624354 r1!5845) (= lambda!462282 lambda!462261))))

(declare-fun bs!1930516 () Bool)

(assert (= bs!1930516 (and d!2298738 b!7467253)))

(assert (=> bs!1930516 (not (= lambda!462282 lambda!462253))))

(declare-fun bs!1930517 () Bool)

(assert (= bs!1930517 (and d!2298738 b!7467449)))

(assert (=> bs!1930517 (not (= lambda!462282 lambda!462267))))

(declare-fun bs!1930518 () Bool)

(assert (= bs!1930518 (and d!2298738 b!7467244)))

(assert (=> bs!1930518 (not (= lambda!462282 lambda!462250))))

(declare-fun bs!1930519 () Bool)

(assert (= bs!1930519 (and d!2298738 b!7467447)))

(assert (=> bs!1930519 (not (= lambda!462282 lambda!462268))))

(declare-fun bs!1930520 () Bool)

(assert (= bs!1930520 (and d!2298738 b!7467584)))

(assert (=> bs!1930520 (not (= lambda!462282 lambda!462279))))

(declare-fun bs!1930521 () Bool)

(assert (= bs!1930521 (and d!2298738 b!7467557)))

(assert (=> bs!1930521 (not (= lambda!462282 lambda!462278))))

(declare-fun bs!1930522 () Bool)

(assert (= bs!1930522 (and d!2298738 d!2298660)))

(assert (=> bs!1930522 (= (= lt!2624354 r1!5845) (= lambda!462282 lambda!462256))))

(declare-fun bs!1930523 () Bool)

(assert (= bs!1930523 (and d!2298738 b!7467242)))

(assert (=> bs!1930523 (not (= lambda!462282 lambda!462251))))

(assert (=> bs!1930515 (not (= lambda!462282 lambda!462262))))

(assert (=> bs!1930510 (= lambda!462282 lambda!462226)))

(assert (=> bs!1930511 (not (= lambda!462282 lambda!462229))))

(declare-fun bs!1930524 () Bool)

(assert (= bs!1930524 (and d!2298738 b!7467548)))

(assert (=> bs!1930524 (not (= lambda!462282 lambda!462274))))

(declare-fun bs!1930525 () Bool)

(assert (= bs!1930525 (and d!2298738 b!7467510)))

(assert (=> bs!1930525 (not (= lambda!462282 lambda!462272))))

(assert (=> d!2298738 true))

(assert (=> d!2298738 true))

(assert (=> d!2298738 true))

(declare-fun lambda!462283 () Int)

(assert (=> bs!1930507 (not (= lambda!462283 lambda!462281))))

(assert (=> bs!1930508 (= (and (= lt!2624354 (regOne!39632 lt!2624365)) (= rTail!78 (regTwo!39632 lt!2624365))) (= lambda!462283 lambda!462280))))

(assert (=> bs!1930509 (= (and (= s!13591 (_1!37588 lt!2624350)) (= lt!2624354 (regOne!39632 lt!2624354)) (= rTail!78 (regTwo!39632 lt!2624354))) (= lambda!462283 lambda!462275))))

(assert (=> bs!1930510 (= lambda!462283 lambda!462227)))

(assert (=> bs!1930511 (not (= lambda!462283 lambda!462228))))

(assert (=> bs!1930512 (not (= lambda!462283 lambda!462252))))

(assert (=> bs!1930513 (not (= lambda!462283 lambda!462271))))

(assert (=> bs!1930514 (not (= lambda!462283 lambda!462277))))

(assert (=> bs!1930515 (not (= lambda!462283 lambda!462261))))

(assert (=> bs!1930516 (= (and (= lt!2624354 (regOne!39632 lt!2624359)) (= rTail!78 (regTwo!39632 lt!2624359))) (= lambda!462283 lambda!462253))))

(assert (=> bs!1930517 (not (= lambda!462283 lambda!462267))))

(assert (=> bs!1930518 (not (= lambda!462283 lambda!462250))))

(assert (=> bs!1930519 (= (and (= s!13591 (_1!37588 lt!2624350)) (= lt!2624354 (regOne!39632 r1!5845)) (= rTail!78 (regTwo!39632 r1!5845))) (= lambda!462283 lambda!462268))))

(assert (=> bs!1930520 (not (= lambda!462283 lambda!462279))))

(assert (=> bs!1930521 (= (and (= lt!2624354 (regOne!39632 lt!2624362)) (= rTail!78 (regTwo!39632 lt!2624362))) (= lambda!462283 lambda!462278))))

(assert (=> bs!1930522 (not (= lambda!462283 lambda!462256))))

(declare-fun bs!1930526 () Bool)

(assert (= bs!1930526 d!2298738))

(assert (=> bs!1930526 (not (= lambda!462283 lambda!462282))))

(assert (=> bs!1930523 (= (and (= lt!2624354 (regOne!39632 lt!2624352)) (= rTail!78 (regTwo!39632 lt!2624352))) (= lambda!462283 lambda!462251))))

(assert (=> bs!1930515 (= (= lt!2624354 r1!5845) (= lambda!462283 lambda!462262))))

(assert (=> bs!1930510 (not (= lambda!462283 lambda!462226))))

(assert (=> bs!1930511 (= (= lt!2624354 r1!5845) (= lambda!462283 lambda!462229))))

(assert (=> bs!1930524 (not (= lambda!462283 lambda!462274))))

(assert (=> bs!1930525 (= (and (= s!13591 (_1!37588 lt!2624350)) (= lt!2624354 (regOne!39632 r2!5783)) (= rTail!78 (regTwo!39632 r2!5783))) (= lambda!462283 lambda!462272))))

(assert (=> d!2298738 true))

(assert (=> d!2298738 true))

(assert (=> d!2298738 true))

(assert (=> d!2298738 (= (Exists!4179 lambda!462282) (Exists!4179 lambda!462283))))

(declare-fun lt!2624489 () Unit!165955)

(assert (=> d!2298738 (= lt!2624489 (choose!57725 lt!2624354 rTail!78 s!13591))))

(assert (=> d!2298738 (validRegex!10074 lt!2624354)))

(assert (=> d!2298738 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2513 lt!2624354 rTail!78 s!13591) lt!2624489)))

(declare-fun m!8065944 () Bool)

(assert (=> bs!1930526 m!8065944))

(declare-fun m!8065946 () Bool)

(assert (=> bs!1930526 m!8065946))

(declare-fun m!8065948 () Bool)

(assert (=> bs!1930526 m!8065948))

(assert (=> bs!1930526 m!8065542))

(assert (=> b!7467107 d!2298738))

(declare-fun d!2298742 () Bool)

(assert (=> d!2298742 (= (Exists!4179 lambda!462226) (choose!57724 lambda!462226))))

(declare-fun bs!1930527 () Bool)

(assert (= bs!1930527 d!2298742))

(declare-fun m!8065950 () Bool)

(assert (=> bs!1930527 m!8065950))

(assert (=> b!7467107 d!2298742))

(declare-fun e!4455869 () Bool)

(assert (=> b!7467092 (= tp!2164836 e!4455869)))

(declare-fun b!7467725 () Bool)

(assert (=> b!7467725 (= e!4455869 tp_is_empty!49409)))

(declare-fun b!7467726 () Bool)

(declare-fun tp!2164906 () Bool)

(declare-fun tp!2164903 () Bool)

(assert (=> b!7467726 (= e!4455869 (and tp!2164906 tp!2164903))))

(declare-fun b!7467727 () Bool)

(declare-fun tp!2164905 () Bool)

(assert (=> b!7467727 (= e!4455869 tp!2164905)))

(declare-fun b!7467728 () Bool)

(declare-fun tp!2164904 () Bool)

(declare-fun tp!2164902 () Bool)

(assert (=> b!7467728 (= e!4455869 (and tp!2164904 tp!2164902))))

(assert (= (and b!7467092 (is-ElementMatch!19560 (regOne!39633 r1!5845))) b!7467725))

(assert (= (and b!7467092 (is-Concat!28405 (regOne!39633 r1!5845))) b!7467726))

(assert (= (and b!7467092 (is-Star!19560 (regOne!39633 r1!5845))) b!7467727))

(assert (= (and b!7467092 (is-Union!19560 (regOne!39633 r1!5845))) b!7467728))

(declare-fun e!4455870 () Bool)

(assert (=> b!7467092 (= tp!2164829 e!4455870)))

(declare-fun b!7467729 () Bool)

(assert (=> b!7467729 (= e!4455870 tp_is_empty!49409)))

(declare-fun b!7467730 () Bool)

(declare-fun tp!2164911 () Bool)

(declare-fun tp!2164908 () Bool)

(assert (=> b!7467730 (= e!4455870 (and tp!2164911 tp!2164908))))

(declare-fun b!7467731 () Bool)

(declare-fun tp!2164910 () Bool)

(assert (=> b!7467731 (= e!4455870 tp!2164910)))

(declare-fun b!7467732 () Bool)

(declare-fun tp!2164909 () Bool)

(declare-fun tp!2164907 () Bool)

(assert (=> b!7467732 (= e!4455870 (and tp!2164909 tp!2164907))))

(assert (= (and b!7467092 (is-ElementMatch!19560 (regTwo!39633 r1!5845))) b!7467729))

(assert (= (and b!7467092 (is-Concat!28405 (regTwo!39633 r1!5845))) b!7467730))

(assert (= (and b!7467092 (is-Star!19560 (regTwo!39633 r1!5845))) b!7467731))

(assert (= (and b!7467092 (is-Union!19560 (regTwo!39633 r1!5845))) b!7467732))

(declare-fun e!4455871 () Bool)

(assert (=> b!7467098 (= tp!2164839 e!4455871)))

(declare-fun b!7467733 () Bool)

(assert (=> b!7467733 (= e!4455871 tp_is_empty!49409)))

(declare-fun b!7467734 () Bool)

(declare-fun tp!2164916 () Bool)

(declare-fun tp!2164913 () Bool)

(assert (=> b!7467734 (= e!4455871 (and tp!2164916 tp!2164913))))

(declare-fun b!7467735 () Bool)

(declare-fun tp!2164915 () Bool)

(assert (=> b!7467735 (= e!4455871 tp!2164915)))

(declare-fun b!7467736 () Bool)

(declare-fun tp!2164914 () Bool)

(declare-fun tp!2164912 () Bool)

(assert (=> b!7467736 (= e!4455871 (and tp!2164914 tp!2164912))))

(assert (= (and b!7467098 (is-ElementMatch!19560 (reg!19889 r2!5783))) b!7467733))

(assert (= (and b!7467098 (is-Concat!28405 (reg!19889 r2!5783))) b!7467734))

(assert (= (and b!7467098 (is-Star!19560 (reg!19889 r2!5783))) b!7467735))

(assert (= (and b!7467098 (is-Union!19560 (reg!19889 r2!5783))) b!7467736))

(declare-fun e!4455872 () Bool)

(assert (=> b!7467088 (= tp!2164841 e!4455872)))

(declare-fun b!7467737 () Bool)

(assert (=> b!7467737 (= e!4455872 tp_is_empty!49409)))

(declare-fun b!7467738 () Bool)

(declare-fun tp!2164921 () Bool)

(declare-fun tp!2164918 () Bool)

(assert (=> b!7467738 (= e!4455872 (and tp!2164921 tp!2164918))))

(declare-fun b!7467739 () Bool)

(declare-fun tp!2164920 () Bool)

(assert (=> b!7467739 (= e!4455872 tp!2164920)))

(declare-fun b!7467740 () Bool)

(declare-fun tp!2164919 () Bool)

(declare-fun tp!2164917 () Bool)

(assert (=> b!7467740 (= e!4455872 (and tp!2164919 tp!2164917))))

(assert (= (and b!7467088 (is-ElementMatch!19560 (reg!19889 r1!5845))) b!7467737))

(assert (= (and b!7467088 (is-Concat!28405 (reg!19889 r1!5845))) b!7467738))

(assert (= (and b!7467088 (is-Star!19560 (reg!19889 r1!5845))) b!7467739))

(assert (= (and b!7467088 (is-Union!19560 (reg!19889 r1!5845))) b!7467740))

(declare-fun e!4455873 () Bool)

(assert (=> b!7467099 (= tp!2164835 e!4455873)))

(declare-fun b!7467741 () Bool)

(assert (=> b!7467741 (= e!4455873 tp_is_empty!49409)))

(declare-fun b!7467742 () Bool)

(declare-fun tp!2164926 () Bool)

(declare-fun tp!2164923 () Bool)

(assert (=> b!7467742 (= e!4455873 (and tp!2164926 tp!2164923))))

(declare-fun b!7467743 () Bool)

(declare-fun tp!2164925 () Bool)

(assert (=> b!7467743 (= e!4455873 tp!2164925)))

(declare-fun b!7467744 () Bool)

(declare-fun tp!2164924 () Bool)

(declare-fun tp!2164922 () Bool)

(assert (=> b!7467744 (= e!4455873 (and tp!2164924 tp!2164922))))

(assert (= (and b!7467099 (is-ElementMatch!19560 (reg!19889 rTail!78))) b!7467741))

(assert (= (and b!7467099 (is-Concat!28405 (reg!19889 rTail!78))) b!7467742))

(assert (= (and b!7467099 (is-Star!19560 (reg!19889 rTail!78))) b!7467743))

(assert (= (and b!7467099 (is-Union!19560 (reg!19889 rTail!78))) b!7467744))

(declare-fun e!4455874 () Bool)

(assert (=> b!7467089 (= tp!2164830 e!4455874)))

(declare-fun b!7467745 () Bool)

(assert (=> b!7467745 (= e!4455874 tp_is_empty!49409)))

(declare-fun b!7467746 () Bool)

(declare-fun tp!2164931 () Bool)

(declare-fun tp!2164928 () Bool)

(assert (=> b!7467746 (= e!4455874 (and tp!2164931 tp!2164928))))

(declare-fun b!7467747 () Bool)

(declare-fun tp!2164930 () Bool)

(assert (=> b!7467747 (= e!4455874 tp!2164930)))

(declare-fun b!7467748 () Bool)

(declare-fun tp!2164929 () Bool)

(declare-fun tp!2164927 () Bool)

(assert (=> b!7467748 (= e!4455874 (and tp!2164929 tp!2164927))))

(assert (= (and b!7467089 (is-ElementMatch!19560 (regOne!39632 r1!5845))) b!7467745))

(assert (= (and b!7467089 (is-Concat!28405 (regOne!39632 r1!5845))) b!7467746))

(assert (= (and b!7467089 (is-Star!19560 (regOne!39632 r1!5845))) b!7467747))

(assert (= (and b!7467089 (is-Union!19560 (regOne!39632 r1!5845))) b!7467748))

(declare-fun e!4455875 () Bool)

(assert (=> b!7467089 (= tp!2164838 e!4455875)))

(declare-fun b!7467749 () Bool)

(assert (=> b!7467749 (= e!4455875 tp_is_empty!49409)))

(declare-fun b!7467750 () Bool)

(declare-fun tp!2164936 () Bool)

(declare-fun tp!2164933 () Bool)

(assert (=> b!7467750 (= e!4455875 (and tp!2164936 tp!2164933))))

(declare-fun b!7467751 () Bool)

(declare-fun tp!2164935 () Bool)

(assert (=> b!7467751 (= e!4455875 tp!2164935)))

(declare-fun b!7467752 () Bool)

(declare-fun tp!2164934 () Bool)

(declare-fun tp!2164932 () Bool)

(assert (=> b!7467752 (= e!4455875 (and tp!2164934 tp!2164932))))

(assert (= (and b!7467089 (is-ElementMatch!19560 (regTwo!39632 r1!5845))) b!7467749))

(assert (= (and b!7467089 (is-Concat!28405 (regTwo!39632 r1!5845))) b!7467750))

(assert (= (and b!7467089 (is-Star!19560 (regTwo!39632 r1!5845))) b!7467751))

(assert (= (and b!7467089 (is-Union!19560 (regTwo!39632 r1!5845))) b!7467752))

(declare-fun e!4455876 () Bool)

(assert (=> b!7467105 (= tp!2164837 e!4455876)))

(declare-fun b!7467753 () Bool)

(assert (=> b!7467753 (= e!4455876 tp_is_empty!49409)))

(declare-fun b!7467754 () Bool)

(declare-fun tp!2164941 () Bool)

(declare-fun tp!2164938 () Bool)

(assert (=> b!7467754 (= e!4455876 (and tp!2164941 tp!2164938))))

(declare-fun b!7467755 () Bool)

(declare-fun tp!2164940 () Bool)

(assert (=> b!7467755 (= e!4455876 tp!2164940)))

(declare-fun b!7467756 () Bool)

(declare-fun tp!2164939 () Bool)

(declare-fun tp!2164937 () Bool)

(assert (=> b!7467756 (= e!4455876 (and tp!2164939 tp!2164937))))

(assert (= (and b!7467105 (is-ElementMatch!19560 (regOne!39632 rTail!78))) b!7467753))

(assert (= (and b!7467105 (is-Concat!28405 (regOne!39632 rTail!78))) b!7467754))

(assert (= (and b!7467105 (is-Star!19560 (regOne!39632 rTail!78))) b!7467755))

(assert (= (and b!7467105 (is-Union!19560 (regOne!39632 rTail!78))) b!7467756))

(declare-fun e!4455877 () Bool)

(assert (=> b!7467105 (= tp!2164840 e!4455877)))

(declare-fun b!7467757 () Bool)

(assert (=> b!7467757 (= e!4455877 tp_is_empty!49409)))

(declare-fun b!7467758 () Bool)

(declare-fun tp!2164946 () Bool)

(declare-fun tp!2164943 () Bool)

(assert (=> b!7467758 (= e!4455877 (and tp!2164946 tp!2164943))))

(declare-fun b!7467759 () Bool)

(declare-fun tp!2164945 () Bool)

(assert (=> b!7467759 (= e!4455877 tp!2164945)))

(declare-fun b!7467760 () Bool)

(declare-fun tp!2164944 () Bool)

(declare-fun tp!2164942 () Bool)

(assert (=> b!7467760 (= e!4455877 (and tp!2164944 tp!2164942))))

(assert (= (and b!7467105 (is-ElementMatch!19560 (regTwo!39632 rTail!78))) b!7467757))

(assert (= (and b!7467105 (is-Concat!28405 (regTwo!39632 rTail!78))) b!7467758))

(assert (= (and b!7467105 (is-Star!19560 (regTwo!39632 rTail!78))) b!7467759))

(assert (= (and b!7467105 (is-Union!19560 (regTwo!39632 rTail!78))) b!7467760))

(declare-fun e!4455878 () Bool)

(assert (=> b!7467095 (= tp!2164831 e!4455878)))

(declare-fun b!7467761 () Bool)

(assert (=> b!7467761 (= e!4455878 tp_is_empty!49409)))

(declare-fun b!7467762 () Bool)

(declare-fun tp!2164951 () Bool)

(declare-fun tp!2164948 () Bool)

(assert (=> b!7467762 (= e!4455878 (and tp!2164951 tp!2164948))))

(declare-fun b!7467763 () Bool)

(declare-fun tp!2164950 () Bool)

(assert (=> b!7467763 (= e!4455878 tp!2164950)))

(declare-fun b!7467764 () Bool)

(declare-fun tp!2164949 () Bool)

(declare-fun tp!2164947 () Bool)

(assert (=> b!7467764 (= e!4455878 (and tp!2164949 tp!2164947))))

(assert (= (and b!7467095 (is-ElementMatch!19560 (regOne!39633 r2!5783))) b!7467761))

(assert (= (and b!7467095 (is-Concat!28405 (regOne!39633 r2!5783))) b!7467762))

(assert (= (and b!7467095 (is-Star!19560 (regOne!39633 r2!5783))) b!7467763))

(assert (= (and b!7467095 (is-Union!19560 (regOne!39633 r2!5783))) b!7467764))

(declare-fun e!4455879 () Bool)

(assert (=> b!7467095 (= tp!2164834 e!4455879)))

(declare-fun b!7467765 () Bool)

(assert (=> b!7467765 (= e!4455879 tp_is_empty!49409)))

(declare-fun b!7467766 () Bool)

(declare-fun tp!2164956 () Bool)

(declare-fun tp!2164953 () Bool)

(assert (=> b!7467766 (= e!4455879 (and tp!2164956 tp!2164953))))

(declare-fun b!7467767 () Bool)

(declare-fun tp!2164955 () Bool)

(assert (=> b!7467767 (= e!4455879 tp!2164955)))

(declare-fun b!7467768 () Bool)

(declare-fun tp!2164954 () Bool)

(declare-fun tp!2164952 () Bool)

(assert (=> b!7467768 (= e!4455879 (and tp!2164954 tp!2164952))))

(assert (= (and b!7467095 (is-ElementMatch!19560 (regTwo!39633 r2!5783))) b!7467765))

(assert (= (and b!7467095 (is-Concat!28405 (regTwo!39633 r2!5783))) b!7467766))

(assert (= (and b!7467095 (is-Star!19560 (regTwo!39633 r2!5783))) b!7467767))

(assert (= (and b!7467095 (is-Union!19560 (regTwo!39633 r2!5783))) b!7467768))

(declare-fun b!7467773 () Bool)

(declare-fun e!4455882 () Bool)

(declare-fun tp!2164959 () Bool)

(assert (=> b!7467773 (= e!4455882 (and tp_is_empty!49409 tp!2164959))))

(assert (=> b!7467096 (= tp!2164828 e!4455882)))

(assert (= (and b!7467096 (is-Cons!72152 (t!386845 s!13591))) b!7467773))

(declare-fun e!4455883 () Bool)

(assert (=> b!7467101 (= tp!2164832 e!4455883)))

(declare-fun b!7467774 () Bool)

(assert (=> b!7467774 (= e!4455883 tp_is_empty!49409)))

(declare-fun b!7467775 () Bool)

(declare-fun tp!2164964 () Bool)

(declare-fun tp!2164961 () Bool)

(assert (=> b!7467775 (= e!4455883 (and tp!2164964 tp!2164961))))

(declare-fun b!7467776 () Bool)

(declare-fun tp!2164963 () Bool)

(assert (=> b!7467776 (= e!4455883 tp!2164963)))

(declare-fun b!7467777 () Bool)

(declare-fun tp!2164962 () Bool)

(declare-fun tp!2164960 () Bool)

(assert (=> b!7467777 (= e!4455883 (and tp!2164962 tp!2164960))))

(assert (= (and b!7467101 (is-ElementMatch!19560 (regOne!39633 rTail!78))) b!7467774))

(assert (= (and b!7467101 (is-Concat!28405 (regOne!39633 rTail!78))) b!7467775))

(assert (= (and b!7467101 (is-Star!19560 (regOne!39633 rTail!78))) b!7467776))

(assert (= (and b!7467101 (is-Union!19560 (regOne!39633 rTail!78))) b!7467777))

(declare-fun e!4455884 () Bool)

(assert (=> b!7467101 (= tp!2164833 e!4455884)))

(declare-fun b!7467778 () Bool)

(assert (=> b!7467778 (= e!4455884 tp_is_empty!49409)))

(declare-fun b!7467779 () Bool)

(declare-fun tp!2164969 () Bool)

(declare-fun tp!2164966 () Bool)

(assert (=> b!7467779 (= e!4455884 (and tp!2164969 tp!2164966))))

(declare-fun b!7467780 () Bool)

(declare-fun tp!2164968 () Bool)

(assert (=> b!7467780 (= e!4455884 tp!2164968)))

(declare-fun b!7467781 () Bool)

(declare-fun tp!2164967 () Bool)

(declare-fun tp!2164965 () Bool)

(assert (=> b!7467781 (= e!4455884 (and tp!2164967 tp!2164965))))

(assert (= (and b!7467101 (is-ElementMatch!19560 (regTwo!39633 rTail!78))) b!7467778))

(assert (= (and b!7467101 (is-Concat!28405 (regTwo!39633 rTail!78))) b!7467779))

(assert (= (and b!7467101 (is-Star!19560 (regTwo!39633 rTail!78))) b!7467780))

(assert (= (and b!7467101 (is-Union!19560 (regTwo!39633 rTail!78))) b!7467781))

(declare-fun e!4455885 () Bool)

(assert (=> b!7467091 (= tp!2164843 e!4455885)))

(declare-fun b!7467782 () Bool)

(assert (=> b!7467782 (= e!4455885 tp_is_empty!49409)))

(declare-fun b!7467783 () Bool)

(declare-fun tp!2164974 () Bool)

(declare-fun tp!2164971 () Bool)

(assert (=> b!7467783 (= e!4455885 (and tp!2164974 tp!2164971))))

(declare-fun b!7467784 () Bool)

(declare-fun tp!2164973 () Bool)

(assert (=> b!7467784 (= e!4455885 tp!2164973)))

(declare-fun b!7467785 () Bool)

(declare-fun tp!2164972 () Bool)

(declare-fun tp!2164970 () Bool)

(assert (=> b!7467785 (= e!4455885 (and tp!2164972 tp!2164970))))

(assert (= (and b!7467091 (is-ElementMatch!19560 (regOne!39632 r2!5783))) b!7467782))

(assert (= (and b!7467091 (is-Concat!28405 (regOne!39632 r2!5783))) b!7467783))

(assert (= (and b!7467091 (is-Star!19560 (regOne!39632 r2!5783))) b!7467784))

(assert (= (and b!7467091 (is-Union!19560 (regOne!39632 r2!5783))) b!7467785))

(declare-fun e!4455886 () Bool)

(assert (=> b!7467091 (= tp!2164842 e!4455886)))

(declare-fun b!7467786 () Bool)

(assert (=> b!7467786 (= e!4455886 tp_is_empty!49409)))

(declare-fun b!7467787 () Bool)

(declare-fun tp!2164979 () Bool)

(declare-fun tp!2164976 () Bool)

(assert (=> b!7467787 (= e!4455886 (and tp!2164979 tp!2164976))))

(declare-fun b!7467788 () Bool)

(declare-fun tp!2164978 () Bool)

(assert (=> b!7467788 (= e!4455886 tp!2164978)))

(declare-fun b!7467789 () Bool)

(declare-fun tp!2164977 () Bool)

(declare-fun tp!2164975 () Bool)

(assert (=> b!7467789 (= e!4455886 (and tp!2164977 tp!2164975))))

(assert (= (and b!7467091 (is-ElementMatch!19560 (regTwo!39632 r2!5783))) b!7467786))

(assert (= (and b!7467091 (is-Concat!28405 (regTwo!39632 r2!5783))) b!7467787))

(assert (= (and b!7467091 (is-Star!19560 (regTwo!39632 r2!5783))) b!7467788))

(assert (= (and b!7467091 (is-Union!19560 (regTwo!39632 r2!5783))) b!7467789))

(push 1)

(assert (not d!2298742))

(assert (not b!7467776))

(assert (not b!7467606))

(assert (not b!7467615))

(assert (not d!2298654))

(assert (not b!7467499))

(assert (not b!7467735))

(assert (not b!7467241))

(assert (not b!7467638))

(assert (not b!7467581))

(assert (not d!2298658))

(assert (not bm!685833))

(assert (not b!7467497))

(assert (not b!7467744))

(assert (not b!7467442))

(assert (not b!7467731))

(assert (not b!7467648))

(assert (not b!7467763))

(assert (not b!7467645))

(assert (not b!7467434))

(assert (not b!7467732))

(assert (not d!2298728))

(assert (not bm!685850))

(assert (not b!7467705))

(assert (not b!7467750))

(assert (not b!7467699))

(assert (not b!7467661))

(assert (not b!7467651))

(assert (not b!7467738))

(assert (not bm!685818))

(assert (not bm!685849))

(assert (not d!2298660))

(assert (not b!7467743))

(assert (not b!7467643))

(assert (not d!2298694))

(assert (not b!7467740))

(assert (not bm!685838))

(assert (not d!2298738))

(assert (not b!7467323))

(assert (not b!7467734))

(assert (not bm!685819))

(assert (not bm!685841))

(assert (not b!7467746))

(assert (not b!7467400))

(assert (not b!7467766))

(assert (not b!7467652))

(assert (not bm!685821))

(assert (not b!7467755))

(assert (not bm!685846))

(assert (not d!2298714))

(assert (not b!7467532))

(assert (not bm!685847))

(assert (not b!7467252))

(assert (not b!7467533))

(assert (not bm!685793))

(assert (not b!7467670))

(assert (not b!7467767))

(assert (not b!7467758))

(assert (not b!7467726))

(assert (not bm!685828))

(assert (not bm!685842))

(assert (not b!7467337))

(assert (not b!7467622))

(assert (not d!2298732))

(assert (not b!7467773))

(assert (not b!7467317))

(assert (not bm!685827))

(assert (not d!2298674))

(assert (not b!7467780))

(assert (not b!7467397))

(assert (not bm!685809))

(assert (not d!2298734))

(assert (not b!7467730))

(assert (not b!7467440))

(assert (not b!7467577))

(assert (not b!7467248))

(assert (not d!2298716))

(assert (not b!7467396))

(assert (not d!2298668))

(assert (not bm!685792))

(assert (not b!7467752))

(assert (not b!7467727))

(assert (not bm!685822))

(assert (not b!7467324))

(assert (not d!2298662))

(assert (not b!7467437))

(assert (not b!7467500))

(assert (not bm!685826))

(assert (not b!7467541))

(assert (not d!2298672))

(assert (not b!7467391))

(assert (not b!7467529))

(assert (not d!2298680))

(assert (not b!7467446))

(assert (not b!7467742))

(assert (not b!7467784))

(assert (not b!7467611))

(assert (not b!7467781))

(assert (not bm!685830))

(assert (not bm!685808))

(assert (not b!7467701))

(assert (not b!7467496))

(assert (not b!7467436))

(assert (not d!2298676))

(assert (not b!7467433))

(assert (not b!7467486))

(assert (not b!7467614))

(assert (not bm!685801))

(assert (not b!7467329))

(assert (not bm!685794))

(assert (not bm!685829))

(assert (not b!7467608))

(assert (not b!7467320))

(assert (not b!7467612))

(assert (not b!7467556))

(assert (not b!7467777))

(assert (not d!2298656))

(assert (not b!7467331))

(assert (not d!2298696))

(assert (not b!7467747))

(assert (not b!7467698))

(assert (not b!7467762))

(assert (not bm!685795))

(assert (not d!2298712))

(assert (not bm!685845))

(assert (not b!7467783))

(assert (not b!7467620))

(assert (not b!7467739))

(assert (not d!2298690))

(assert (not bm!685803))

(assert (not b!7467779))

(assert (not bm!685823))

(assert (not d!2298720))

(assert (not b!7467625))

(assert (not b!7467751))

(assert (not d!2298646))

(assert (not b!7467788))

(assert (not b!7467736))

(assert (not b!7467754))

(assert (not b!7467728))

(assert (not b!7467509))

(assert (not b!7467626))

(assert (not b!7467527))

(assert (not b!7467787))

(assert (not b!7467768))

(assert (not b!7467493))

(assert (not b!7467702))

(assert (not b!7467764))

(assert (not b!7467535))

(assert (not d!2298710))

(assert (not d!2298726))

(assert (not b!7467748))

(assert (not b!7467760))

(assert (not b!7467399))

(assert (not b!7467789))

(assert (not b!7467491))

(assert (not b!7467536))

(assert (not b!7467505))

(assert (not bm!685843))

(assert (not b!7467335))

(assert (not d!2298670))

(assert (not bm!685798))

(assert (not b!7467334))

(assert (not d!2298686))

(assert (not bm!685832))

(assert (not b!7467628))

(assert (not b!7467552))

(assert (not b!7467393))

(assert (not b!7467759))

(assert (not b!7467629))

(assert (not b!7467756))

(assert (not b!7467338))

(assert tp_is_empty!49409)

(assert (not b!7467439))

(assert (not b!7467704))

(assert (not b!7467315))

(assert (not b!7467775))

(assert (not b!7467321))

(assert (not b!7467237))

(assert (not b!7467649))

(assert (not b!7467545))

(assert (not b!7467785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

