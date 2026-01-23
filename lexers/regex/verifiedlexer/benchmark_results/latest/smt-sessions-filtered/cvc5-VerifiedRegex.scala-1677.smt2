; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!84512 () Bool)

(assert start!84512)

(declare-fun b!948391 () Bool)

(assert (=> b!948391 true))

(assert (=> b!948391 true))

(assert (=> b!948391 true))

(declare-fun lambda!32482 () Int)

(declare-fun lambda!32481 () Int)

(assert (=> b!948391 (not (= lambda!32482 lambda!32481))))

(assert (=> b!948391 true))

(assert (=> b!948391 true))

(assert (=> b!948391 true))

(declare-fun e!614286 () Bool)

(declare-fun e!614287 () Bool)

(assert (=> b!948391 (= e!614286 e!614287)))

(declare-fun res!431127 () Bool)

(assert (=> b!948391 (=> res!431127 e!614287)))

(declare-datatypes ((C!5794 0))(
  ( (C!5795 (val!3145 Int)) )
))
(declare-datatypes ((Regex!2612 0))(
  ( (ElementMatch!2612 (c!154399 C!5794)) (Concat!4445 (regOne!5736 Regex!2612) (regTwo!5736 Regex!2612)) (EmptyExpr!2612) (Star!2612 (reg!2941 Regex!2612)) (EmptyLang!2612) (Union!2612 (regOne!5737 Regex!2612) (regTwo!5737 Regex!2612)) )
))
(declare-fun r!15766 () Regex!2612)

(declare-datatypes ((List!9842 0))(
  ( (Nil!9826) (Cons!9826 (h!15227 C!5794) (t!100888 List!9842)) )
))
(declare-fun s!10566 () List!9842)

(declare-fun matchR!1150 (Regex!2612 List!9842) Bool)

(declare-fun removeUselessConcat!281 (Regex!2612) Regex!2612)

(assert (=> b!948391 (= res!431127 (matchR!1150 (Star!2612 (removeUselessConcat!281 (reg!2941 r!15766))) s!10566))))

(declare-fun Exists!363 (Int) Bool)

(assert (=> b!948391 (= (Exists!363 lambda!32481) (Exists!363 lambda!32482))))

(declare-datatypes ((Unit!14867 0))(
  ( (Unit!14868) )
))
(declare-fun lt!344280 () Unit!14867)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!107 (Regex!2612 List!9842) Unit!14867)

(assert (=> b!948391 (= lt!344280 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!107 (reg!2941 r!15766) s!10566))))

(declare-fun lt!344281 () Regex!2612)

(declare-datatypes ((tuple2!11122 0))(
  ( (tuple2!11123 (_1!6387 List!9842) (_2!6387 List!9842)) )
))
(declare-datatypes ((Option!2203 0))(
  ( (None!2202) (Some!2202 (v!19619 tuple2!11122)) )
))
(declare-fun isDefined!1845 (Option!2203) Bool)

(declare-fun findConcatSeparation!309 (Regex!2612 Regex!2612 List!9842 List!9842 List!9842) Option!2203)

(assert (=> b!948391 (= (isDefined!1845 (findConcatSeparation!309 (reg!2941 r!15766) lt!344281 Nil!9826 s!10566 s!10566)) (Exists!363 lambda!32481))))

(declare-fun lt!344283 () Unit!14867)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!309 (Regex!2612 Regex!2612 List!9842) Unit!14867)

(assert (=> b!948391 (= lt!344283 (lemmaFindConcatSeparationEquivalentToExists!309 (reg!2941 r!15766) lt!344281 s!10566))))

(assert (=> b!948391 (= lt!344281 (Star!2612 (reg!2941 r!15766)))))

(declare-fun b!948392 () Bool)

(declare-fun e!614288 () Bool)

(declare-fun tp!292368 () Bool)

(declare-fun tp!292367 () Bool)

(assert (=> b!948392 (= e!614288 (and tp!292368 tp!292367))))

(declare-fun b!948393 () Bool)

(declare-fun e!614289 () Bool)

(declare-fun tp_is_empty!4867 () Bool)

(declare-fun tp!292370 () Bool)

(assert (=> b!948393 (= e!614289 (and tp_is_empty!4867 tp!292370))))

(declare-fun b!948394 () Bool)

(assert (=> b!948394 (= e!614288 tp_is_empty!4867)))

(declare-fun b!948395 () Bool)

(declare-fun tp!292365 () Bool)

(declare-fun tp!292366 () Bool)

(assert (=> b!948395 (= e!614288 (and tp!292365 tp!292366))))

(declare-fun b!948396 () Bool)

(declare-fun validRegex!1081 (Regex!2612) Bool)

(assert (=> b!948396 (= e!614287 (validRegex!1081 (removeUselessConcat!281 r!15766)))))

(declare-fun b!948397 () Bool)

(declare-fun e!614290 () Bool)

(assert (=> b!948397 (= e!614290 (not e!614286))))

(declare-fun res!431129 () Bool)

(assert (=> b!948397 (=> res!431129 e!614286)))

(declare-fun lt!344284 () Bool)

(assert (=> b!948397 (= res!431129 (or lt!344284 (and (is-Concat!4445 r!15766) (is-EmptyExpr!2612 (regOne!5736 r!15766))) (and (is-Concat!4445 r!15766) (is-EmptyExpr!2612 (regTwo!5736 r!15766))) (is-Concat!4445 r!15766) (is-Union!2612 r!15766) (not (is-Star!2612 r!15766))))))

(declare-fun matchRSpec!413 (Regex!2612 List!9842) Bool)

(assert (=> b!948397 (= lt!344284 (matchRSpec!413 r!15766 s!10566))))

(assert (=> b!948397 (= lt!344284 (matchR!1150 r!15766 s!10566))))

(declare-fun lt!344282 () Unit!14867)

(declare-fun mainMatchTheorem!413 (Regex!2612 List!9842) Unit!14867)

(assert (=> b!948397 (= lt!344282 (mainMatchTheorem!413 r!15766 s!10566))))

(declare-fun b!948390 () Bool)

(declare-fun tp!292369 () Bool)

(assert (=> b!948390 (= e!614288 tp!292369)))

(declare-fun res!431128 () Bool)

(assert (=> start!84512 (=> (not res!431128) (not e!614290))))

(assert (=> start!84512 (= res!431128 (validRegex!1081 r!15766))))

(assert (=> start!84512 e!614290))

(assert (=> start!84512 e!614288))

(assert (=> start!84512 e!614289))

(assert (= (and start!84512 res!431128) b!948397))

(assert (= (and b!948397 (not res!431129)) b!948391))

(assert (= (and b!948391 (not res!431127)) b!948396))

(assert (= (and start!84512 (is-ElementMatch!2612 r!15766)) b!948394))

(assert (= (and start!84512 (is-Concat!4445 r!15766)) b!948392))

(assert (= (and start!84512 (is-Star!2612 r!15766)) b!948390))

(assert (= (and start!84512 (is-Union!2612 r!15766)) b!948395))

(assert (= (and start!84512 (is-Cons!9826 s!10566)) b!948393))

(declare-fun m!1162673 () Bool)

(assert (=> b!948391 m!1162673))

(declare-fun m!1162675 () Bool)

(assert (=> b!948391 m!1162675))

(declare-fun m!1162677 () Bool)

(assert (=> b!948391 m!1162677))

(declare-fun m!1162679 () Bool)

(assert (=> b!948391 m!1162679))

(assert (=> b!948391 m!1162675))

(declare-fun m!1162681 () Bool)

(assert (=> b!948391 m!1162681))

(declare-fun m!1162683 () Bool)

(assert (=> b!948391 m!1162683))

(declare-fun m!1162685 () Bool)

(assert (=> b!948391 m!1162685))

(declare-fun m!1162687 () Bool)

(assert (=> b!948391 m!1162687))

(assert (=> b!948391 m!1162687))

(declare-fun m!1162689 () Bool)

(assert (=> b!948396 m!1162689))

(assert (=> b!948396 m!1162689))

(declare-fun m!1162691 () Bool)

(assert (=> b!948396 m!1162691))

(declare-fun m!1162693 () Bool)

(assert (=> b!948397 m!1162693))

(declare-fun m!1162695 () Bool)

(assert (=> b!948397 m!1162695))

(declare-fun m!1162697 () Bool)

(assert (=> b!948397 m!1162697))

(declare-fun m!1162699 () Bool)

(assert (=> start!84512 m!1162699))

(push 1)

(assert (not b!948390))

(assert (not b!948397))

(assert (not b!948393))

(assert tp_is_empty!4867)

(assert (not b!948395))

(assert (not b!948391))

(assert (not b!948392))

(assert (not start!84512))

(assert (not b!948396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!948462 () Bool)

(declare-fun res!431166 () Bool)

(declare-fun e!614330 () Bool)

(assert (=> b!948462 (=> res!431166 e!614330)))

(assert (=> b!948462 (= res!431166 (not (is-Concat!4445 r!15766)))))

(declare-fun e!614326 () Bool)

(assert (=> b!948462 (= e!614326 e!614330)))

(declare-fun b!948463 () Bool)

(declare-fun e!614327 () Bool)

(declare-fun e!614329 () Bool)

(assert (=> b!948463 (= e!614327 e!614329)))

(declare-fun res!431163 () Bool)

(declare-fun nullable!768 (Regex!2612) Bool)

(assert (=> b!948463 (= res!431163 (not (nullable!768 (reg!2941 r!15766))))))

(assert (=> b!948463 (=> (not res!431163) (not e!614329))))

(declare-fun b!948464 () Bool)

(declare-fun call!59370 () Bool)

(assert (=> b!948464 (= e!614329 call!59370)))

(declare-fun b!948465 () Bool)

(declare-fun e!614331 () Bool)

(assert (=> b!948465 (= e!614330 e!614331)))

(declare-fun res!431167 () Bool)

(assert (=> b!948465 (=> (not res!431167) (not e!614331))))

(declare-fun call!59371 () Bool)

(assert (=> b!948465 (= res!431167 call!59371)))

(declare-fun c!154405 () Bool)

(declare-fun bm!59365 () Bool)

(declare-fun c!154406 () Bool)

(assert (=> bm!59365 (= call!59370 (validRegex!1081 (ite c!154406 (reg!2941 r!15766) (ite c!154405 (regOne!5737 r!15766) (regOne!5736 r!15766)))))))

(declare-fun b!948466 () Bool)

(declare-fun e!614328 () Bool)

(declare-fun call!59372 () Bool)

(assert (=> b!948466 (= e!614328 call!59372)))

(declare-fun b!948467 () Bool)

(declare-fun e!614332 () Bool)

(assert (=> b!948467 (= e!614332 e!614327)))

(assert (=> b!948467 (= c!154406 (is-Star!2612 r!15766))))

(declare-fun d!283486 () Bool)

(declare-fun res!431164 () Bool)

(assert (=> d!283486 (=> res!431164 e!614332)))

(assert (=> d!283486 (= res!431164 (is-ElementMatch!2612 r!15766))))

(assert (=> d!283486 (= (validRegex!1081 r!15766) e!614332)))

(declare-fun b!948468 () Bool)

(declare-fun res!431165 () Bool)

(assert (=> b!948468 (=> (not res!431165) (not e!614328))))

(assert (=> b!948468 (= res!431165 call!59371)))

(assert (=> b!948468 (= e!614326 e!614328)))

(declare-fun bm!59366 () Bool)

(assert (=> bm!59366 (= call!59372 (validRegex!1081 (ite c!154405 (regTwo!5737 r!15766) (regTwo!5736 r!15766))))))

(declare-fun bm!59367 () Bool)

(assert (=> bm!59367 (= call!59371 call!59370)))

(declare-fun b!948469 () Bool)

(assert (=> b!948469 (= e!614327 e!614326)))

(assert (=> b!948469 (= c!154405 (is-Union!2612 r!15766))))

(declare-fun b!948470 () Bool)

(assert (=> b!948470 (= e!614331 call!59372)))

(assert (= (and d!283486 (not res!431164)) b!948467))

(assert (= (and b!948467 c!154406) b!948463))

(assert (= (and b!948467 (not c!154406)) b!948469))

(assert (= (and b!948463 res!431163) b!948464))

(assert (= (and b!948469 c!154405) b!948468))

(assert (= (and b!948469 (not c!154405)) b!948462))

(assert (= (and b!948468 res!431165) b!948466))

(assert (= (and b!948462 (not res!431166)) b!948465))

(assert (= (and b!948465 res!431167) b!948470))

(assert (= (or b!948466 b!948470) bm!59366))

(assert (= (or b!948468 b!948465) bm!59367))

(assert (= (or b!948464 bm!59367) bm!59365))

(declare-fun m!1162729 () Bool)

(assert (=> b!948463 m!1162729))

(declare-fun m!1162731 () Bool)

(assert (=> bm!59365 m!1162731))

(declare-fun m!1162733 () Bool)

(assert (=> bm!59366 m!1162733))

(assert (=> start!84512 d!283486))

(declare-fun bs!239808 () Bool)

(declare-fun b!948539 () Bool)

(assert (= bs!239808 (and b!948539 b!948391)))

(declare-fun lambda!32495 () Int)

(assert (=> bs!239808 (not (= lambda!32495 lambda!32481))))

(assert (=> bs!239808 (= (= r!15766 lt!344281) (= lambda!32495 lambda!32482))))

(assert (=> b!948539 true))

(assert (=> b!948539 true))

(declare-fun bs!239809 () Bool)

(declare-fun b!948535 () Bool)

(assert (= bs!239809 (and b!948535 b!948391)))

(declare-fun lambda!32496 () Int)

(assert (=> bs!239809 (not (= lambda!32496 lambda!32481))))

(assert (=> bs!239809 (not (= lambda!32496 lambda!32482))))

(declare-fun bs!239810 () Bool)

(assert (= bs!239810 (and b!948535 b!948539)))

(assert (=> bs!239810 (not (= lambda!32496 lambda!32495))))

(assert (=> b!948535 true))

(assert (=> b!948535 true))

(declare-fun b!948530 () Bool)

(declare-fun e!614372 () Bool)

(assert (=> b!948530 (= e!614372 (matchRSpec!413 (regTwo!5737 r!15766) s!10566))))

(declare-fun b!948531 () Bool)

(declare-fun e!614376 () Bool)

(declare-fun e!614374 () Bool)

(assert (=> b!948531 (= e!614376 e!614374)))

(declare-fun res!431200 () Bool)

(assert (=> b!948531 (= res!431200 (not (is-EmptyLang!2612 r!15766)))))

(assert (=> b!948531 (=> (not res!431200) (not e!614374))))

(declare-fun b!948532 () Bool)

(declare-fun e!614378 () Bool)

(assert (=> b!948532 (= e!614378 (= s!10566 (Cons!9826 (c!154399 r!15766) Nil!9826)))))

(declare-fun b!948533 () Bool)

(declare-fun c!154423 () Bool)

(assert (=> b!948533 (= c!154423 (is-ElementMatch!2612 r!15766))))

(assert (=> b!948533 (= e!614374 e!614378)))

(declare-fun b!948534 () Bool)

(declare-fun res!431201 () Bool)

(declare-fun e!614373 () Bool)

(assert (=> b!948534 (=> res!431201 e!614373)))

(declare-fun call!59387 () Bool)

(assert (=> b!948534 (= res!431201 call!59387)))

(declare-fun e!614377 () Bool)

(assert (=> b!948534 (= e!614377 e!614373)))

(declare-fun call!59386 () Bool)

(assert (=> b!948535 (= e!614377 call!59386)))

(declare-fun b!948536 () Bool)

(declare-fun e!614375 () Bool)

(assert (=> b!948536 (= e!614375 e!614372)))

(declare-fun res!431199 () Bool)

(assert (=> b!948536 (= res!431199 (matchRSpec!413 (regOne!5737 r!15766) s!10566))))

(assert (=> b!948536 (=> res!431199 e!614372)))

(declare-fun d!283490 () Bool)

(declare-fun c!154421 () Bool)

(assert (=> d!283490 (= c!154421 (is-EmptyExpr!2612 r!15766))))

(assert (=> d!283490 (= (matchRSpec!413 r!15766 s!10566) e!614376)))

(declare-fun b!948537 () Bool)

(assert (=> b!948537 (= e!614375 e!614377)))

(declare-fun c!154422 () Bool)

(assert (=> b!948537 (= c!154422 (is-Star!2612 r!15766))))

(declare-fun b!948538 () Bool)

(assert (=> b!948538 (= e!614376 call!59387)))

(assert (=> b!948539 (= e!614373 call!59386)))

(declare-fun b!948540 () Bool)

(declare-fun c!154424 () Bool)

(assert (=> b!948540 (= c!154424 (is-Union!2612 r!15766))))

(assert (=> b!948540 (= e!614378 e!614375)))

(declare-fun bm!59381 () Bool)

(declare-fun isEmpty!6089 (List!9842) Bool)

(assert (=> bm!59381 (= call!59387 (isEmpty!6089 s!10566))))

(declare-fun bm!59382 () Bool)

(assert (=> bm!59382 (= call!59386 (Exists!363 (ite c!154422 lambda!32495 lambda!32496)))))

(assert (= (and d!283490 c!154421) b!948538))

(assert (= (and d!283490 (not c!154421)) b!948531))

(assert (= (and b!948531 res!431200) b!948533))

(assert (= (and b!948533 c!154423) b!948532))

(assert (= (and b!948533 (not c!154423)) b!948540))

(assert (= (and b!948540 c!154424) b!948536))

(assert (= (and b!948540 (not c!154424)) b!948537))

(assert (= (and b!948536 (not res!431199)) b!948530))

(assert (= (and b!948537 c!154422) b!948534))

(assert (= (and b!948537 (not c!154422)) b!948535))

(assert (= (and b!948534 (not res!431201)) b!948539))

(assert (= (or b!948539 b!948535) bm!59382))

(assert (= (or b!948538 b!948534) bm!59381))

(declare-fun m!1162741 () Bool)

(assert (=> b!948530 m!1162741))

(declare-fun m!1162743 () Bool)

(assert (=> b!948536 m!1162743))

(declare-fun m!1162745 () Bool)

(assert (=> bm!59381 m!1162745))

(declare-fun m!1162747 () Bool)

(assert (=> bm!59382 m!1162747))

(assert (=> b!948397 d!283490))

(declare-fun b!948591 () Bool)

(declare-fun res!431223 () Bool)

(declare-fun e!614406 () Bool)

(assert (=> b!948591 (=> res!431223 e!614406)))

(assert (=> b!948591 (= res!431223 (not (is-ElementMatch!2612 r!15766)))))

(declare-fun e!614411 () Bool)

(assert (=> b!948591 (= e!614411 e!614406)))

(declare-fun b!948592 () Bool)

(declare-fun res!431221 () Bool)

(assert (=> b!948592 (=> res!431221 e!614406)))

(declare-fun e!614405 () Bool)

(assert (=> b!948592 (= res!431221 e!614405)))

(declare-fun res!431224 () Bool)

(assert (=> b!948592 (=> (not res!431224) (not e!614405))))

(declare-fun lt!344304 () Bool)

(assert (=> b!948592 (= res!431224 lt!344304)))

(declare-fun b!948593 () Bool)

(assert (=> b!948593 (= e!614411 (not lt!344304))))

(declare-fun b!948594 () Bool)

(declare-fun res!431220 () Bool)

(declare-fun e!614410 () Bool)

(assert (=> b!948594 (=> res!431220 e!614410)))

(declare-fun tail!1292 (List!9842) List!9842)

(assert (=> b!948594 (= res!431220 (not (isEmpty!6089 (tail!1292 s!10566))))))

(declare-fun b!948595 () Bool)

(declare-fun head!1730 (List!9842) C!5794)

(assert (=> b!948595 (= e!614405 (= (head!1730 s!10566) (c!154399 r!15766)))))

(declare-fun b!948596 () Bool)

(declare-fun e!614408 () Bool)

(assert (=> b!948596 (= e!614408 e!614410)))

(declare-fun res!431225 () Bool)

(assert (=> b!948596 (=> res!431225 e!614410)))

(declare-fun call!59400 () Bool)

(assert (=> b!948596 (= res!431225 call!59400)))

(declare-fun b!948597 () Bool)

(declare-fun e!614407 () Bool)

(assert (=> b!948597 (= e!614407 (nullable!768 r!15766))))

(declare-fun b!948598 () Bool)

(assert (=> b!948598 (= e!614406 e!614408)))

(declare-fun res!431226 () Bool)

(assert (=> b!948598 (=> (not res!431226) (not e!614408))))

(assert (=> b!948598 (= res!431226 (not lt!344304))))

(declare-fun b!948599 () Bool)

(declare-fun e!614409 () Bool)

(assert (=> b!948599 (= e!614409 (= lt!344304 call!59400))))

(declare-fun d!283494 () Bool)

(assert (=> d!283494 e!614409))

(declare-fun c!154442 () Bool)

(assert (=> d!283494 (= c!154442 (is-EmptyExpr!2612 r!15766))))

(assert (=> d!283494 (= lt!344304 e!614407)))

(declare-fun c!154441 () Bool)

(assert (=> d!283494 (= c!154441 (isEmpty!6089 s!10566))))

(assert (=> d!283494 (validRegex!1081 r!15766)))

(assert (=> d!283494 (= (matchR!1150 r!15766 s!10566) lt!344304)))

(declare-fun bm!59395 () Bool)

(assert (=> bm!59395 (= call!59400 (isEmpty!6089 s!10566))))

(declare-fun b!948600 () Bool)

(declare-fun res!431227 () Bool)

(assert (=> b!948600 (=> (not res!431227) (not e!614405))))

(assert (=> b!948600 (= res!431227 (not call!59400))))

(declare-fun b!948601 () Bool)

(declare-fun derivativeStep!577 (Regex!2612 C!5794) Regex!2612)

(assert (=> b!948601 (= e!614407 (matchR!1150 (derivativeStep!577 r!15766 (head!1730 s!10566)) (tail!1292 s!10566)))))

(declare-fun b!948602 () Bool)

(declare-fun res!431222 () Bool)

(assert (=> b!948602 (=> (not res!431222) (not e!614405))))

(assert (=> b!948602 (= res!431222 (isEmpty!6089 (tail!1292 s!10566)))))

(declare-fun b!948603 () Bool)

(assert (=> b!948603 (= e!614410 (not (= (head!1730 s!10566) (c!154399 r!15766))))))

(declare-fun b!948604 () Bool)

(assert (=> b!948604 (= e!614409 e!614411)))

(declare-fun c!154443 () Bool)

(assert (=> b!948604 (= c!154443 (is-EmptyLang!2612 r!15766))))

(assert (= (and d!283494 c!154441) b!948597))

(assert (= (and d!283494 (not c!154441)) b!948601))

(assert (= (and d!283494 c!154442) b!948599))

(assert (= (and d!283494 (not c!154442)) b!948604))

(assert (= (and b!948604 c!154443) b!948593))

(assert (= (and b!948604 (not c!154443)) b!948591))

(assert (= (and b!948591 (not res!431223)) b!948592))

(assert (= (and b!948592 res!431224) b!948600))

(assert (= (and b!948600 res!431227) b!948602))

(assert (= (and b!948602 res!431222) b!948595))

(assert (= (and b!948592 (not res!431221)) b!948598))

(assert (= (and b!948598 res!431226) b!948596))

(assert (= (and b!948596 (not res!431225)) b!948594))

(assert (= (and b!948594 (not res!431220)) b!948603))

(assert (= (or b!948599 b!948596 b!948600) bm!59395))

(declare-fun m!1162749 () Bool)

(assert (=> b!948601 m!1162749))

(assert (=> b!948601 m!1162749))

(declare-fun m!1162751 () Bool)

(assert (=> b!948601 m!1162751))

(declare-fun m!1162753 () Bool)

(assert (=> b!948601 m!1162753))

(assert (=> b!948601 m!1162751))

(assert (=> b!948601 m!1162753))

(declare-fun m!1162755 () Bool)

(assert (=> b!948601 m!1162755))

(assert (=> bm!59395 m!1162745))

(assert (=> d!283494 m!1162745))

(assert (=> d!283494 m!1162699))

(assert (=> b!948602 m!1162753))

(assert (=> b!948602 m!1162753))

(declare-fun m!1162757 () Bool)

(assert (=> b!948602 m!1162757))

(assert (=> b!948595 m!1162749))

(declare-fun m!1162759 () Bool)

(assert (=> b!948597 m!1162759))

(assert (=> b!948594 m!1162753))

(assert (=> b!948594 m!1162753))

(assert (=> b!948594 m!1162757))

(assert (=> b!948603 m!1162749))

(assert (=> b!948397 d!283494))

(declare-fun d!283496 () Bool)

(assert (=> d!283496 (= (matchR!1150 r!15766 s!10566) (matchRSpec!413 r!15766 s!10566))))

(declare-fun lt!344307 () Unit!14867)

(declare-fun choose!5903 (Regex!2612 List!9842) Unit!14867)

(assert (=> d!283496 (= lt!344307 (choose!5903 r!15766 s!10566))))

(assert (=> d!283496 (validRegex!1081 r!15766)))

(assert (=> d!283496 (= (mainMatchTheorem!413 r!15766 s!10566) lt!344307)))

(declare-fun bs!239811 () Bool)

(assert (= bs!239811 d!283496))

(assert (=> bs!239811 m!1162695))

(assert (=> bs!239811 m!1162693))

(declare-fun m!1162761 () Bool)

(assert (=> bs!239811 m!1162761))

(assert (=> bs!239811 m!1162699))

(assert (=> b!948397 d!283496))

(declare-fun b!948605 () Bool)

(declare-fun res!431231 () Bool)

(declare-fun e!614416 () Bool)

(assert (=> b!948605 (=> res!431231 e!614416)))

(assert (=> b!948605 (= res!431231 (not (is-Concat!4445 (removeUselessConcat!281 r!15766))))))

(declare-fun e!614412 () Bool)

(assert (=> b!948605 (= e!614412 e!614416)))

(declare-fun b!948606 () Bool)

(declare-fun e!614413 () Bool)

(declare-fun e!614415 () Bool)

(assert (=> b!948606 (= e!614413 e!614415)))

(declare-fun res!431228 () Bool)

(assert (=> b!948606 (= res!431228 (not (nullable!768 (reg!2941 (removeUselessConcat!281 r!15766)))))))

(assert (=> b!948606 (=> (not res!431228) (not e!614415))))

(declare-fun b!948607 () Bool)

(declare-fun call!59401 () Bool)

(assert (=> b!948607 (= e!614415 call!59401)))

(declare-fun b!948608 () Bool)

(declare-fun e!614417 () Bool)

(assert (=> b!948608 (= e!614416 e!614417)))

(declare-fun res!431232 () Bool)

(assert (=> b!948608 (=> (not res!431232) (not e!614417))))

(declare-fun call!59402 () Bool)

(assert (=> b!948608 (= res!431232 call!59402)))

(declare-fun bm!59396 () Bool)

(declare-fun c!154445 () Bool)

(declare-fun c!154444 () Bool)

(assert (=> bm!59396 (= call!59401 (validRegex!1081 (ite c!154445 (reg!2941 (removeUselessConcat!281 r!15766)) (ite c!154444 (regOne!5737 (removeUselessConcat!281 r!15766)) (regOne!5736 (removeUselessConcat!281 r!15766))))))))

(declare-fun b!948609 () Bool)

(declare-fun e!614414 () Bool)

(declare-fun call!59403 () Bool)

(assert (=> b!948609 (= e!614414 call!59403)))

(declare-fun b!948610 () Bool)

(declare-fun e!614418 () Bool)

(assert (=> b!948610 (= e!614418 e!614413)))

(assert (=> b!948610 (= c!154445 (is-Star!2612 (removeUselessConcat!281 r!15766)))))

(declare-fun d!283498 () Bool)

(declare-fun res!431229 () Bool)

(assert (=> d!283498 (=> res!431229 e!614418)))

(assert (=> d!283498 (= res!431229 (is-ElementMatch!2612 (removeUselessConcat!281 r!15766)))))

(assert (=> d!283498 (= (validRegex!1081 (removeUselessConcat!281 r!15766)) e!614418)))

(declare-fun b!948611 () Bool)

(declare-fun res!431230 () Bool)

(assert (=> b!948611 (=> (not res!431230) (not e!614414))))

(assert (=> b!948611 (= res!431230 call!59402)))

(assert (=> b!948611 (= e!614412 e!614414)))

(declare-fun bm!59397 () Bool)

(assert (=> bm!59397 (= call!59403 (validRegex!1081 (ite c!154444 (regTwo!5737 (removeUselessConcat!281 r!15766)) (regTwo!5736 (removeUselessConcat!281 r!15766)))))))

(declare-fun bm!59398 () Bool)

(assert (=> bm!59398 (= call!59402 call!59401)))

(declare-fun b!948612 () Bool)

(assert (=> b!948612 (= e!614413 e!614412)))

(assert (=> b!948612 (= c!154444 (is-Union!2612 (removeUselessConcat!281 r!15766)))))

(declare-fun b!948613 () Bool)

(assert (=> b!948613 (= e!614417 call!59403)))

(assert (= (and d!283498 (not res!431229)) b!948610))

(assert (= (and b!948610 c!154445) b!948606))

(assert (= (and b!948610 (not c!154445)) b!948612))

(assert (= (and b!948606 res!431228) b!948607))

(assert (= (and b!948612 c!154444) b!948611))

(assert (= (and b!948612 (not c!154444)) b!948605))

(assert (= (and b!948611 res!431230) b!948609))

(assert (= (and b!948605 (not res!431231)) b!948608))

(assert (= (and b!948608 res!431232) b!948613))

(assert (= (or b!948609 b!948613) bm!59397))

(assert (= (or b!948611 b!948608) bm!59398))

(assert (= (or b!948607 bm!59398) bm!59396))

(declare-fun m!1162763 () Bool)

(assert (=> b!948606 m!1162763))

(declare-fun m!1162765 () Bool)

(assert (=> bm!59396 m!1162765))

(declare-fun m!1162767 () Bool)

(assert (=> bm!59397 m!1162767))

(assert (=> b!948396 d!283498))

(declare-fun bm!59414 () Bool)

(declare-fun call!59419 () Regex!2612)

(declare-fun call!59421 () Regex!2612)

(assert (=> bm!59414 (= call!59419 call!59421)))

(declare-fun b!948647 () Bool)

(declare-fun c!154462 () Bool)

(assert (=> b!948647 (= c!154462 (is-Star!2612 r!15766))))

(declare-fun e!614437 () Regex!2612)

(declare-fun e!614438 () Regex!2612)

(assert (=> b!948647 (= e!614437 e!614438)))

(declare-fun d!283500 () Bool)

(declare-fun e!614439 () Bool)

(assert (=> d!283500 e!614439))

(declare-fun res!431236 () Bool)

(assert (=> d!283500 (=> (not res!431236) (not e!614439))))

(declare-fun lt!344311 () Regex!2612)

(assert (=> d!283500 (= res!431236 (validRegex!1081 lt!344311))))

(declare-fun e!614441 () Regex!2612)

(assert (=> d!283500 (= lt!344311 e!614441)))

(declare-fun c!154465 () Bool)

(assert (=> d!283500 (= c!154465 (and (is-Concat!4445 r!15766) (is-EmptyExpr!2612 (regOne!5736 r!15766))))))

(assert (=> d!283500 (validRegex!1081 r!15766)))

(assert (=> d!283500 (= (removeUselessConcat!281 r!15766) lt!344311)))

(declare-fun b!948648 () Bool)

(declare-fun call!59420 () Regex!2612)

(assert (=> b!948648 (= e!614441 call!59420)))

(declare-fun b!948649 () Bool)

(declare-fun e!614440 () Regex!2612)

(assert (=> b!948649 (= e!614441 e!614440)))

(declare-fun c!154463 () Bool)

(assert (=> b!948649 (= c!154463 (and (is-Concat!4445 r!15766) (is-EmptyExpr!2612 (regTwo!5736 r!15766))))))

(declare-fun b!948650 () Bool)

(assert (=> b!948650 (= e!614438 (Star!2612 call!59419))))

(declare-fun b!948651 () Bool)

(declare-fun call!59423 () Regex!2612)

(assert (=> b!948651 (= e!614440 call!59423)))

(declare-fun b!948652 () Bool)

(declare-fun call!59422 () Regex!2612)

(assert (=> b!948652 (= e!614437 (Union!2612 call!59422 call!59419))))

(declare-fun bm!59415 () Bool)

(declare-fun c!154461 () Bool)

(assert (=> bm!59415 (= call!59422 (removeUselessConcat!281 (ite c!154461 (regOne!5736 r!15766) (regOne!5737 r!15766))))))

(declare-fun b!948653 () Bool)

(assert (=> b!948653 (= c!154461 (is-Concat!4445 r!15766))))

(declare-fun e!614442 () Regex!2612)

(assert (=> b!948653 (= e!614440 e!614442)))

(declare-fun b!948654 () Bool)

(assert (=> b!948654 (= e!614442 e!614437)))

(declare-fun c!154464 () Bool)

(assert (=> b!948654 (= c!154464 (is-Union!2612 r!15766))))

(declare-fun b!948655 () Bool)

(assert (=> b!948655 (= e!614439 (= (nullable!768 lt!344311) (nullable!768 r!15766)))))

(declare-fun bm!59416 () Bool)

(assert (=> bm!59416 (= call!59423 call!59420)))

(declare-fun b!948656 () Bool)

(assert (=> b!948656 (= e!614438 r!15766)))

(declare-fun bm!59417 () Bool)

(assert (=> bm!59417 (= call!59420 (removeUselessConcat!281 (ite c!154465 (regTwo!5736 r!15766) (ite c!154463 (regOne!5736 r!15766) (ite c!154461 (regTwo!5736 r!15766) (ite c!154464 (regTwo!5737 r!15766) (reg!2941 r!15766)))))))))

(declare-fun b!948657 () Bool)

(assert (=> b!948657 (= e!614442 (Concat!4445 call!59422 call!59421))))

(declare-fun bm!59418 () Bool)

(assert (=> bm!59418 (= call!59421 call!59423)))

(assert (= (and d!283500 c!154465) b!948648))

(assert (= (and d!283500 (not c!154465)) b!948649))

(assert (= (and b!948649 c!154463) b!948651))

(assert (= (and b!948649 (not c!154463)) b!948653))

(assert (= (and b!948653 c!154461) b!948657))

(assert (= (and b!948653 (not c!154461)) b!948654))

(assert (= (and b!948654 c!154464) b!948652))

(assert (= (and b!948654 (not c!154464)) b!948647))

(assert (= (and b!948647 c!154462) b!948650))

(assert (= (and b!948647 (not c!154462)) b!948656))

(assert (= (or b!948652 b!948650) bm!59414))

(assert (= (or b!948657 bm!59414) bm!59418))

(assert (= (or b!948657 b!948652) bm!59415))

(assert (= (or b!948651 bm!59418) bm!59416))

(assert (= (or b!948648 bm!59416) bm!59417))

(assert (= (and d!283500 res!431236) b!948655))

(declare-fun m!1162779 () Bool)

(assert (=> d!283500 m!1162779))

(assert (=> d!283500 m!1162699))

(declare-fun m!1162781 () Bool)

(assert (=> bm!59415 m!1162781))

(declare-fun m!1162783 () Bool)

(assert (=> b!948655 m!1162783))

(assert (=> b!948655 m!1162759))

(declare-fun m!1162785 () Bool)

(assert (=> bm!59417 m!1162785))

(assert (=> b!948396 d!283500))

(declare-fun b!948704 () Bool)

(declare-fun e!614473 () Bool)

(declare-fun lt!344318 () Option!2203)

(declare-fun ++!2624 (List!9842 List!9842) List!9842)

(declare-fun get!3298 (Option!2203) tuple2!11122)

(assert (=> b!948704 (= e!614473 (= (++!2624 (_1!6387 (get!3298 lt!344318)) (_2!6387 (get!3298 lt!344318))) s!10566))))

(declare-fun b!948705 () Bool)

(declare-fun e!614472 () Option!2203)

(assert (=> b!948705 (= e!614472 None!2202)))

(declare-fun b!948706 () Bool)

(declare-fun res!431260 () Bool)

(assert (=> b!948706 (=> (not res!431260) (not e!614473))))

(assert (=> b!948706 (= res!431260 (matchR!1150 lt!344281 (_2!6387 (get!3298 lt!344318))))))

(declare-fun b!948707 () Bool)

(declare-fun res!431263 () Bool)

(assert (=> b!948707 (=> (not res!431263) (not e!614473))))

(assert (=> b!948707 (= res!431263 (matchR!1150 (reg!2941 r!15766) (_1!6387 (get!3298 lt!344318))))))

(declare-fun b!948708 () Bool)

(declare-fun e!614469 () Option!2203)

(assert (=> b!948708 (= e!614469 e!614472)))

(declare-fun c!154479 () Bool)

(assert (=> b!948708 (= c!154479 (is-Nil!9826 s!10566))))

(declare-fun d!283504 () Bool)

(declare-fun e!614471 () Bool)

(assert (=> d!283504 e!614471))

(declare-fun res!431259 () Bool)

(assert (=> d!283504 (=> res!431259 e!614471)))

(assert (=> d!283504 (= res!431259 e!614473)))

(declare-fun res!431262 () Bool)

(assert (=> d!283504 (=> (not res!431262) (not e!614473))))

(assert (=> d!283504 (= res!431262 (isDefined!1845 lt!344318))))

(assert (=> d!283504 (= lt!344318 e!614469)))

(declare-fun c!154478 () Bool)

(declare-fun e!614470 () Bool)

(assert (=> d!283504 (= c!154478 e!614470)))

(declare-fun res!431261 () Bool)

(assert (=> d!283504 (=> (not res!431261) (not e!614470))))

(assert (=> d!283504 (= res!431261 (matchR!1150 (reg!2941 r!15766) Nil!9826))))

(assert (=> d!283504 (validRegex!1081 (reg!2941 r!15766))))

(assert (=> d!283504 (= (findConcatSeparation!309 (reg!2941 r!15766) lt!344281 Nil!9826 s!10566 s!10566) lt!344318)))

(declare-fun b!948709 () Bool)

(declare-fun lt!344319 () Unit!14867)

(declare-fun lt!344320 () Unit!14867)

(assert (=> b!948709 (= lt!344319 lt!344320)))

(assert (=> b!948709 (= (++!2624 (++!2624 Nil!9826 (Cons!9826 (h!15227 s!10566) Nil!9826)) (t!100888 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!233 (List!9842 C!5794 List!9842 List!9842) Unit!14867)

(assert (=> b!948709 (= lt!344320 (lemmaMoveElementToOtherListKeepsConcatEq!233 Nil!9826 (h!15227 s!10566) (t!100888 s!10566) s!10566))))

(assert (=> b!948709 (= e!614472 (findConcatSeparation!309 (reg!2941 r!15766) lt!344281 (++!2624 Nil!9826 (Cons!9826 (h!15227 s!10566) Nil!9826)) (t!100888 s!10566) s!10566))))

(declare-fun b!948710 () Bool)

(assert (=> b!948710 (= e!614471 (not (isDefined!1845 lt!344318)))))

(declare-fun b!948711 () Bool)

(assert (=> b!948711 (= e!614470 (matchR!1150 lt!344281 s!10566))))

(declare-fun b!948712 () Bool)

(assert (=> b!948712 (= e!614469 (Some!2202 (tuple2!11123 Nil!9826 s!10566)))))

(assert (= (and d!283504 res!431261) b!948711))

(assert (= (and d!283504 c!154478) b!948712))

(assert (= (and d!283504 (not c!154478)) b!948708))

(assert (= (and b!948708 c!154479) b!948705))

(assert (= (and b!948708 (not c!154479)) b!948709))

(assert (= (and d!283504 res!431262) b!948707))

(assert (= (and b!948707 res!431263) b!948706))

(assert (= (and b!948706 res!431260) b!948704))

(assert (= (and d!283504 (not res!431259)) b!948710))

(declare-fun m!1162787 () Bool)

(assert (=> d!283504 m!1162787))

(declare-fun m!1162789 () Bool)

(assert (=> d!283504 m!1162789))

(declare-fun m!1162791 () Bool)

(assert (=> d!283504 m!1162791))

(assert (=> b!948710 m!1162787))

(declare-fun m!1162793 () Bool)

(assert (=> b!948709 m!1162793))

(assert (=> b!948709 m!1162793))

(declare-fun m!1162795 () Bool)

(assert (=> b!948709 m!1162795))

(declare-fun m!1162797 () Bool)

(assert (=> b!948709 m!1162797))

(assert (=> b!948709 m!1162793))

(declare-fun m!1162799 () Bool)

(assert (=> b!948709 m!1162799))

(declare-fun m!1162801 () Bool)

(assert (=> b!948707 m!1162801))

(declare-fun m!1162803 () Bool)

(assert (=> b!948707 m!1162803))

(assert (=> b!948704 m!1162801))

(declare-fun m!1162805 () Bool)

(assert (=> b!948704 m!1162805))

(assert (=> b!948706 m!1162801))

(declare-fun m!1162807 () Bool)

(assert (=> b!948706 m!1162807))

(declare-fun m!1162809 () Bool)

(assert (=> b!948711 m!1162809))

(assert (=> b!948391 d!283504))

(declare-fun d!283506 () Bool)

(declare-fun choose!5904 (Int) Bool)

(assert (=> d!283506 (= (Exists!363 lambda!32481) (choose!5904 lambda!32481))))

(declare-fun bs!239812 () Bool)

(assert (= bs!239812 d!283506))

(declare-fun m!1162811 () Bool)

(assert (=> bs!239812 m!1162811))

(assert (=> b!948391 d!283506))

(declare-fun bs!239813 () Bool)

(declare-fun d!283508 () Bool)

(assert (= bs!239813 (and d!283508 b!948391)))

(declare-fun lambda!32505 () Int)

(assert (=> bs!239813 (= (= (Star!2612 (reg!2941 r!15766)) lt!344281) (= lambda!32505 lambda!32481))))

(assert (=> bs!239813 (not (= lambda!32505 lambda!32482))))

(declare-fun bs!239814 () Bool)

(assert (= bs!239814 (and d!283508 b!948539)))

(assert (=> bs!239814 (not (= lambda!32505 lambda!32495))))

(declare-fun bs!239815 () Bool)

(assert (= bs!239815 (and d!283508 b!948535)))

(assert (=> bs!239815 (not (= lambda!32505 lambda!32496))))

(assert (=> d!283508 true))

(assert (=> d!283508 true))

(declare-fun lambda!32506 () Int)

(assert (=> bs!239815 (not (= lambda!32506 lambda!32496))))

(assert (=> bs!239814 (= (= (Star!2612 (reg!2941 r!15766)) r!15766) (= lambda!32506 lambda!32495))))

(assert (=> bs!239813 (= (= (Star!2612 (reg!2941 r!15766)) lt!344281) (= lambda!32506 lambda!32482))))

(assert (=> bs!239813 (not (= lambda!32506 lambda!32481))))

(declare-fun bs!239816 () Bool)

(assert (= bs!239816 d!283508))

(assert (=> bs!239816 (not (= lambda!32506 lambda!32505))))

(assert (=> d!283508 true))

(assert (=> d!283508 true))

(assert (=> d!283508 (= (Exists!363 lambda!32505) (Exists!363 lambda!32506))))

(declare-fun lt!344323 () Unit!14867)

(declare-fun choose!5905 (Regex!2612 List!9842) Unit!14867)

(assert (=> d!283508 (= lt!344323 (choose!5905 (reg!2941 r!15766) s!10566))))

(assert (=> d!283508 (validRegex!1081 (reg!2941 r!15766))))

(assert (=> d!283508 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!107 (reg!2941 r!15766) s!10566) lt!344323)))

(declare-fun m!1162813 () Bool)

(assert (=> bs!239816 m!1162813))

(declare-fun m!1162815 () Bool)

(assert (=> bs!239816 m!1162815))

(declare-fun m!1162817 () Bool)

(assert (=> bs!239816 m!1162817))

(assert (=> bs!239816 m!1162791))

(assert (=> b!948391 d!283508))

(declare-fun bm!59425 () Bool)

(declare-fun call!59430 () Regex!2612)

(declare-fun call!59432 () Regex!2612)

(assert (=> bm!59425 (= call!59430 call!59432)))

(declare-fun b!948738 () Bool)

(declare-fun c!154485 () Bool)

(assert (=> b!948738 (= c!154485 (is-Star!2612 (reg!2941 r!15766)))))

(declare-fun e!614487 () Regex!2612)

(declare-fun e!614488 () Regex!2612)

(assert (=> b!948738 (= e!614487 e!614488)))

(declare-fun d!283510 () Bool)

(declare-fun e!614489 () Bool)

(assert (=> d!283510 e!614489))

(declare-fun res!431281 () Bool)

(assert (=> d!283510 (=> (not res!431281) (not e!614489))))

(declare-fun lt!344324 () Regex!2612)

(assert (=> d!283510 (= res!431281 (validRegex!1081 lt!344324))))

(declare-fun e!614491 () Regex!2612)

(assert (=> d!283510 (= lt!344324 e!614491)))

(declare-fun c!154488 () Bool)

(assert (=> d!283510 (= c!154488 (and (is-Concat!4445 (reg!2941 r!15766)) (is-EmptyExpr!2612 (regOne!5736 (reg!2941 r!15766)))))))

(assert (=> d!283510 (validRegex!1081 (reg!2941 r!15766))))

(assert (=> d!283510 (= (removeUselessConcat!281 (reg!2941 r!15766)) lt!344324)))

(declare-fun b!948739 () Bool)

(declare-fun call!59431 () Regex!2612)

(assert (=> b!948739 (= e!614491 call!59431)))

(declare-fun b!948740 () Bool)

(declare-fun e!614490 () Regex!2612)

(assert (=> b!948740 (= e!614491 e!614490)))

(declare-fun c!154486 () Bool)

(assert (=> b!948740 (= c!154486 (and (is-Concat!4445 (reg!2941 r!15766)) (is-EmptyExpr!2612 (regTwo!5736 (reg!2941 r!15766)))))))

(declare-fun b!948741 () Bool)

(assert (=> b!948741 (= e!614488 (Star!2612 call!59430))))

(declare-fun b!948742 () Bool)

(declare-fun call!59434 () Regex!2612)

(assert (=> b!948742 (= e!614490 call!59434)))

(declare-fun b!948743 () Bool)

(declare-fun call!59433 () Regex!2612)

(assert (=> b!948743 (= e!614487 (Union!2612 call!59433 call!59430))))

(declare-fun bm!59426 () Bool)

(declare-fun c!154484 () Bool)

(assert (=> bm!59426 (= call!59433 (removeUselessConcat!281 (ite c!154484 (regOne!5736 (reg!2941 r!15766)) (regOne!5737 (reg!2941 r!15766)))))))

(declare-fun b!948744 () Bool)

(assert (=> b!948744 (= c!154484 (is-Concat!4445 (reg!2941 r!15766)))))

(declare-fun e!614492 () Regex!2612)

(assert (=> b!948744 (= e!614490 e!614492)))

(declare-fun b!948745 () Bool)

(assert (=> b!948745 (= e!614492 e!614487)))

(declare-fun c!154487 () Bool)

(assert (=> b!948745 (= c!154487 (is-Union!2612 (reg!2941 r!15766)))))

(declare-fun b!948746 () Bool)

(assert (=> b!948746 (= e!614489 (= (nullable!768 lt!344324) (nullable!768 (reg!2941 r!15766))))))

(declare-fun bm!59427 () Bool)

(assert (=> bm!59427 (= call!59434 call!59431)))

(declare-fun b!948747 () Bool)

(assert (=> b!948747 (= e!614488 (reg!2941 r!15766))))

(declare-fun bm!59428 () Bool)

(assert (=> bm!59428 (= call!59431 (removeUselessConcat!281 (ite c!154488 (regTwo!5736 (reg!2941 r!15766)) (ite c!154486 (regOne!5736 (reg!2941 r!15766)) (ite c!154484 (regTwo!5736 (reg!2941 r!15766)) (ite c!154487 (regTwo!5737 (reg!2941 r!15766)) (reg!2941 (reg!2941 r!15766))))))))))

(declare-fun b!948748 () Bool)

(assert (=> b!948748 (= e!614492 (Concat!4445 call!59433 call!59432))))

(declare-fun bm!59429 () Bool)

(assert (=> bm!59429 (= call!59432 call!59434)))

(assert (= (and d!283510 c!154488) b!948739))

(assert (= (and d!283510 (not c!154488)) b!948740))

(assert (= (and b!948740 c!154486) b!948742))

(assert (= (and b!948740 (not c!154486)) b!948744))

(assert (= (and b!948744 c!154484) b!948748))

(assert (= (and b!948744 (not c!154484)) b!948745))

(assert (= (and b!948745 c!154487) b!948743))

(assert (= (and b!948745 (not c!154487)) b!948738))

(assert (= (and b!948738 c!154485) b!948741))

(assert (= (and b!948738 (not c!154485)) b!948747))

(assert (= (or b!948743 b!948741) bm!59425))

(assert (= (or b!948748 bm!59425) bm!59429))

(assert (= (or b!948748 b!948743) bm!59426))

(assert (= (or b!948742 bm!59429) bm!59427))

(assert (= (or b!948739 bm!59427) bm!59428))

(assert (= (and d!283510 res!431281) b!948746))

(declare-fun m!1162819 () Bool)

(assert (=> d!283510 m!1162819))

(assert (=> d!283510 m!1162791))

(declare-fun m!1162821 () Bool)

(assert (=> bm!59426 m!1162821))

(declare-fun m!1162823 () Bool)

(assert (=> b!948746 m!1162823))

(assert (=> b!948746 m!1162729))

(declare-fun m!1162825 () Bool)

(assert (=> bm!59428 m!1162825))

(assert (=> b!948391 d!283510))

(declare-fun d!283512 () Bool)

(assert (=> d!283512 (= (Exists!363 lambda!32482) (choose!5904 lambda!32482))))

(declare-fun bs!239818 () Bool)

(assert (= bs!239818 d!283512))

(declare-fun m!1162827 () Bool)

(assert (=> bs!239818 m!1162827))

(assert (=> b!948391 d!283512))

(declare-fun b!948749 () Bool)

(declare-fun res!431285 () Bool)

(declare-fun e!614494 () Bool)

(assert (=> b!948749 (=> res!431285 e!614494)))

(assert (=> b!948749 (= res!431285 (not (is-ElementMatch!2612 (Star!2612 (removeUselessConcat!281 (reg!2941 r!15766))))))))

(declare-fun e!614499 () Bool)

(assert (=> b!948749 (= e!614499 e!614494)))

(declare-fun b!948750 () Bool)

(declare-fun res!431283 () Bool)

(assert (=> b!948750 (=> res!431283 e!614494)))

(declare-fun e!614493 () Bool)

(assert (=> b!948750 (= res!431283 e!614493)))

(declare-fun res!431286 () Bool)

(assert (=> b!948750 (=> (not res!431286) (not e!614493))))

(declare-fun lt!344325 () Bool)

(assert (=> b!948750 (= res!431286 lt!344325)))

(declare-fun b!948751 () Bool)

(assert (=> b!948751 (= e!614499 (not lt!344325))))

(declare-fun b!948752 () Bool)

(declare-fun res!431282 () Bool)

(declare-fun e!614498 () Bool)

(assert (=> b!948752 (=> res!431282 e!614498)))

(assert (=> b!948752 (= res!431282 (not (isEmpty!6089 (tail!1292 s!10566))))))

(declare-fun b!948753 () Bool)

(assert (=> b!948753 (= e!614493 (= (head!1730 s!10566) (c!154399 (Star!2612 (removeUselessConcat!281 (reg!2941 r!15766))))))))

(declare-fun b!948754 () Bool)

(declare-fun e!614496 () Bool)

(assert (=> b!948754 (= e!614496 e!614498)))

(declare-fun res!431287 () Bool)

(assert (=> b!948754 (=> res!431287 e!614498)))

(declare-fun call!59435 () Bool)

(assert (=> b!948754 (= res!431287 call!59435)))

(declare-fun b!948755 () Bool)

(declare-fun e!614495 () Bool)

(assert (=> b!948755 (= e!614495 (nullable!768 (Star!2612 (removeUselessConcat!281 (reg!2941 r!15766)))))))

(declare-fun b!948756 () Bool)

(assert (=> b!948756 (= e!614494 e!614496)))

(declare-fun res!431288 () Bool)

(assert (=> b!948756 (=> (not res!431288) (not e!614496))))

(assert (=> b!948756 (= res!431288 (not lt!344325))))

(declare-fun b!948757 () Bool)

(declare-fun e!614497 () Bool)

(assert (=> b!948757 (= e!614497 (= lt!344325 call!59435))))

(declare-fun d!283514 () Bool)

(assert (=> d!283514 e!614497))

(declare-fun c!154490 () Bool)

(assert (=> d!283514 (= c!154490 (is-EmptyExpr!2612 (Star!2612 (removeUselessConcat!281 (reg!2941 r!15766)))))))

(assert (=> d!283514 (= lt!344325 e!614495)))

(declare-fun c!154489 () Bool)

(assert (=> d!283514 (= c!154489 (isEmpty!6089 s!10566))))

(assert (=> d!283514 (validRegex!1081 (Star!2612 (removeUselessConcat!281 (reg!2941 r!15766))))))

(assert (=> d!283514 (= (matchR!1150 (Star!2612 (removeUselessConcat!281 (reg!2941 r!15766))) s!10566) lt!344325)))

(declare-fun bm!59430 () Bool)

(assert (=> bm!59430 (= call!59435 (isEmpty!6089 s!10566))))

(declare-fun b!948758 () Bool)

(declare-fun res!431289 () Bool)

(assert (=> b!948758 (=> (not res!431289) (not e!614493))))

(assert (=> b!948758 (= res!431289 (not call!59435))))

(declare-fun b!948759 () Bool)

(assert (=> b!948759 (= e!614495 (matchR!1150 (derivativeStep!577 (Star!2612 (removeUselessConcat!281 (reg!2941 r!15766))) (head!1730 s!10566)) (tail!1292 s!10566)))))

(declare-fun b!948760 () Bool)

(declare-fun res!431284 () Bool)

(assert (=> b!948760 (=> (not res!431284) (not e!614493))))

(assert (=> b!948760 (= res!431284 (isEmpty!6089 (tail!1292 s!10566)))))

(declare-fun b!948761 () Bool)

(assert (=> b!948761 (= e!614498 (not (= (head!1730 s!10566) (c!154399 (Star!2612 (removeUselessConcat!281 (reg!2941 r!15766)))))))))

(declare-fun b!948762 () Bool)

(assert (=> b!948762 (= e!614497 e!614499)))

(declare-fun c!154491 () Bool)

(assert (=> b!948762 (= c!154491 (is-EmptyLang!2612 (Star!2612 (removeUselessConcat!281 (reg!2941 r!15766)))))))

(assert (= (and d!283514 c!154489) b!948755))

(assert (= (and d!283514 (not c!154489)) b!948759))

(assert (= (and d!283514 c!154490) b!948757))

(assert (= (and d!283514 (not c!154490)) b!948762))

(assert (= (and b!948762 c!154491) b!948751))

(assert (= (and b!948762 (not c!154491)) b!948749))

(assert (= (and b!948749 (not res!431285)) b!948750))

(assert (= (and b!948750 res!431286) b!948758))

(assert (= (and b!948758 res!431289) b!948760))

(assert (= (and b!948760 res!431284) b!948753))

(assert (= (and b!948750 (not res!431283)) b!948756))

(assert (= (and b!948756 res!431288) b!948754))

(assert (= (and b!948754 (not res!431287)) b!948752))

(assert (= (and b!948752 (not res!431282)) b!948761))

(assert (= (or b!948757 b!948754 b!948758) bm!59430))

(assert (=> b!948759 m!1162749))

(assert (=> b!948759 m!1162749))

(declare-fun m!1162829 () Bool)

(assert (=> b!948759 m!1162829))

(assert (=> b!948759 m!1162753))

(assert (=> b!948759 m!1162829))

(assert (=> b!948759 m!1162753))

(declare-fun m!1162831 () Bool)

(assert (=> b!948759 m!1162831))

(assert (=> bm!59430 m!1162745))

(assert (=> d!283514 m!1162745))

(declare-fun m!1162833 () Bool)

(assert (=> d!283514 m!1162833))

(assert (=> b!948760 m!1162753))

(assert (=> b!948760 m!1162753))

(assert (=> b!948760 m!1162757))

(assert (=> b!948753 m!1162749))

(declare-fun m!1162835 () Bool)

(assert (=> b!948755 m!1162835))

(assert (=> b!948752 m!1162753))

(assert (=> b!948752 m!1162753))

(assert (=> b!948752 m!1162757))

(assert (=> b!948761 m!1162749))

(assert (=> b!948391 d!283514))

(declare-fun bs!239821 () Bool)

(declare-fun d!283516 () Bool)

(assert (= bs!239821 (and d!283516 b!948535)))

(declare-fun lambda!32511 () Int)

(assert (=> bs!239821 (not (= lambda!32511 lambda!32496))))

(declare-fun bs!239822 () Bool)

(assert (= bs!239822 (and d!283516 b!948539)))

(assert (=> bs!239822 (not (= lambda!32511 lambda!32495))))

(declare-fun bs!239823 () Bool)

(assert (= bs!239823 (and d!283516 b!948391)))

(assert (=> bs!239823 (not (= lambda!32511 lambda!32482))))

(declare-fun bs!239824 () Bool)

(assert (= bs!239824 (and d!283516 d!283508)))

(assert (=> bs!239824 (not (= lambda!32511 lambda!32506))))

(assert (=> bs!239823 (= lambda!32511 lambda!32481)))

(assert (=> bs!239824 (= (= lt!344281 (Star!2612 (reg!2941 r!15766))) (= lambda!32511 lambda!32505))))

(assert (=> d!283516 true))

(assert (=> d!283516 true))

(assert (=> d!283516 true))

(assert (=> d!283516 (= (isDefined!1845 (findConcatSeparation!309 (reg!2941 r!15766) lt!344281 Nil!9826 s!10566 s!10566)) (Exists!363 lambda!32511))))

(declare-fun lt!344328 () Unit!14867)

(declare-fun choose!5906 (Regex!2612 Regex!2612 List!9842) Unit!14867)

(assert (=> d!283516 (= lt!344328 (choose!5906 (reg!2941 r!15766) lt!344281 s!10566))))

(assert (=> d!283516 (validRegex!1081 (reg!2941 r!15766))))

(assert (=> d!283516 (= (lemmaFindConcatSeparationEquivalentToExists!309 (reg!2941 r!15766) lt!344281 s!10566) lt!344328)))

(declare-fun bs!239825 () Bool)

(assert (= bs!239825 d!283516))

(declare-fun m!1162845 () Bool)

(assert (=> bs!239825 m!1162845))

(declare-fun m!1162847 () Bool)

(assert (=> bs!239825 m!1162847))

(assert (=> bs!239825 m!1162675))

(assert (=> bs!239825 m!1162677))

(assert (=> bs!239825 m!1162675))

(assert (=> bs!239825 m!1162791))

(assert (=> b!948391 d!283516))

(declare-fun d!283520 () Bool)

(declare-fun isEmpty!6090 (Option!2203) Bool)

(assert (=> d!283520 (= (isDefined!1845 (findConcatSeparation!309 (reg!2941 r!15766) lt!344281 Nil!9826 s!10566 s!10566)) (not (isEmpty!6090 (findConcatSeparation!309 (reg!2941 r!15766) lt!344281 Nil!9826 s!10566 s!10566))))))

(declare-fun bs!239826 () Bool)

(assert (= bs!239826 d!283520))

(assert (=> bs!239826 m!1162675))

(declare-fun m!1162849 () Bool)

(assert (=> bs!239826 m!1162849))

(assert (=> b!948391 d!283520))

(declare-fun b!948771 () Bool)

(declare-fun e!614504 () Bool)

(declare-fun tp!292391 () Bool)

(assert (=> b!948771 (= e!614504 (and tp_is_empty!4867 tp!292391))))

(assert (=> b!948393 (= tp!292370 e!614504)))

(assert (= (and b!948393 (is-Cons!9826 (t!100888 s!10566))) b!948771))

(declare-fun b!948784 () Bool)

(declare-fun e!614507 () Bool)

(declare-fun tp!292403 () Bool)

(assert (=> b!948784 (= e!614507 tp!292403)))

(assert (=> b!948392 (= tp!292368 e!614507)))

(declare-fun b!948785 () Bool)

(declare-fun tp!292402 () Bool)

(declare-fun tp!292406 () Bool)

(assert (=> b!948785 (= e!614507 (and tp!292402 tp!292406))))

(declare-fun b!948783 () Bool)

(declare-fun tp!292405 () Bool)

(declare-fun tp!292404 () Bool)

(assert (=> b!948783 (= e!614507 (and tp!292405 tp!292404))))

(declare-fun b!948782 () Bool)

(assert (=> b!948782 (= e!614507 tp_is_empty!4867)))

(assert (= (and b!948392 (is-ElementMatch!2612 (regOne!5736 r!15766))) b!948782))

(assert (= (and b!948392 (is-Concat!4445 (regOne!5736 r!15766))) b!948783))

(assert (= (and b!948392 (is-Star!2612 (regOne!5736 r!15766))) b!948784))

(assert (= (and b!948392 (is-Union!2612 (regOne!5736 r!15766))) b!948785))

(declare-fun b!948788 () Bool)

(declare-fun e!614508 () Bool)

(declare-fun tp!292408 () Bool)

(assert (=> b!948788 (= e!614508 tp!292408)))

(assert (=> b!948392 (= tp!292367 e!614508)))

(declare-fun b!948789 () Bool)

(declare-fun tp!292407 () Bool)

(declare-fun tp!292411 () Bool)

(assert (=> b!948789 (= e!614508 (and tp!292407 tp!292411))))

(declare-fun b!948787 () Bool)

(declare-fun tp!292410 () Bool)

(declare-fun tp!292409 () Bool)

(assert (=> b!948787 (= e!614508 (and tp!292410 tp!292409))))

(declare-fun b!948786 () Bool)

(assert (=> b!948786 (= e!614508 tp_is_empty!4867)))

(assert (= (and b!948392 (is-ElementMatch!2612 (regTwo!5736 r!15766))) b!948786))

(assert (= (and b!948392 (is-Concat!4445 (regTwo!5736 r!15766))) b!948787))

(assert (= (and b!948392 (is-Star!2612 (regTwo!5736 r!15766))) b!948788))

(assert (= (and b!948392 (is-Union!2612 (regTwo!5736 r!15766))) b!948789))

(declare-fun b!948792 () Bool)

(declare-fun e!614509 () Bool)

(declare-fun tp!292413 () Bool)

(assert (=> b!948792 (= e!614509 tp!292413)))

(assert (=> b!948390 (= tp!292369 e!614509)))

(declare-fun b!948793 () Bool)

(declare-fun tp!292412 () Bool)

(declare-fun tp!292416 () Bool)

(assert (=> b!948793 (= e!614509 (and tp!292412 tp!292416))))

(declare-fun b!948791 () Bool)

(declare-fun tp!292415 () Bool)

(declare-fun tp!292414 () Bool)

(assert (=> b!948791 (= e!614509 (and tp!292415 tp!292414))))

(declare-fun b!948790 () Bool)

(assert (=> b!948790 (= e!614509 tp_is_empty!4867)))

(assert (= (and b!948390 (is-ElementMatch!2612 (reg!2941 r!15766))) b!948790))

(assert (= (and b!948390 (is-Concat!4445 (reg!2941 r!15766))) b!948791))

(assert (= (and b!948390 (is-Star!2612 (reg!2941 r!15766))) b!948792))

(assert (= (and b!948390 (is-Union!2612 (reg!2941 r!15766))) b!948793))

(declare-fun b!948796 () Bool)

(declare-fun e!614510 () Bool)

(declare-fun tp!292418 () Bool)

(assert (=> b!948796 (= e!614510 tp!292418)))

(assert (=> b!948395 (= tp!292365 e!614510)))

(declare-fun b!948797 () Bool)

(declare-fun tp!292417 () Bool)

(declare-fun tp!292421 () Bool)

(assert (=> b!948797 (= e!614510 (and tp!292417 tp!292421))))

(declare-fun b!948795 () Bool)

(declare-fun tp!292420 () Bool)

(declare-fun tp!292419 () Bool)

(assert (=> b!948795 (= e!614510 (and tp!292420 tp!292419))))

(declare-fun b!948794 () Bool)

(assert (=> b!948794 (= e!614510 tp_is_empty!4867)))

(assert (= (and b!948395 (is-ElementMatch!2612 (regOne!5737 r!15766))) b!948794))

(assert (= (and b!948395 (is-Concat!4445 (regOne!5737 r!15766))) b!948795))

(assert (= (and b!948395 (is-Star!2612 (regOne!5737 r!15766))) b!948796))

(assert (= (and b!948395 (is-Union!2612 (regOne!5737 r!15766))) b!948797))

(declare-fun b!948800 () Bool)

(declare-fun e!614511 () Bool)

(declare-fun tp!292423 () Bool)

(assert (=> b!948800 (= e!614511 tp!292423)))

(assert (=> b!948395 (= tp!292366 e!614511)))

(declare-fun b!948801 () Bool)

(declare-fun tp!292422 () Bool)

(declare-fun tp!292426 () Bool)

(assert (=> b!948801 (= e!614511 (and tp!292422 tp!292426))))

(declare-fun b!948799 () Bool)

(declare-fun tp!292425 () Bool)

(declare-fun tp!292424 () Bool)

(assert (=> b!948799 (= e!614511 (and tp!292425 tp!292424))))

(declare-fun b!948798 () Bool)

(assert (=> b!948798 (= e!614511 tp_is_empty!4867)))

(assert (= (and b!948395 (is-ElementMatch!2612 (regTwo!5737 r!15766))) b!948798))

(assert (= (and b!948395 (is-Concat!4445 (regTwo!5737 r!15766))) b!948799))

(assert (= (and b!948395 (is-Star!2612 (regTwo!5737 r!15766))) b!948800))

(assert (= (and b!948395 (is-Union!2612 (regTwo!5737 r!15766))) b!948801))

(push 1)

(assert (not b!948530))

(assert (not b!948755))

(assert (not b!948793))

(assert (not b!948783))

(assert tp_is_empty!4867)

(assert (not bm!59430))

(assert (not bm!59382))

(assert (not b!948594))

(assert (not bm!59396))

(assert (not b!948801))

(assert (not bm!59428))

(assert (not d!283520))

(assert (not b!948597))

(assert (not b!948800))

(assert (not d!283506))

(assert (not b!948602))

(assert (not b!948761))

(assert (not d!283504))

(assert (not b!948710))

(assert (not b!948753))

(assert (not b!948752))

(assert (not bm!59366))

(assert (not bm!59415))

(assert (not b!948788))

(assert (not bm!59395))

(assert (not b!948791))

(assert (not b!948463))

(assert (not b!948799))

(assert (not b!948789))

(assert (not bm!59426))

(assert (not d!283494))

(assert (not b!948606))

(assert (not b!948711))

(assert (not b!948595))

(assert (not d!283512))

(assert (not d!283500))

(assert (not b!948709))

(assert (not d!283510))

(assert (not bm!59381))

(assert (not b!948759))

(assert (not b!948787))

(assert (not b!948707))

(assert (not b!948792))

(assert (not b!948704))

(assert (not b!948785))

(assert (not b!948797))

(assert (not b!948771))

(assert (not b!948796))

(assert (not d!283516))

(assert (not b!948603))

(assert (not b!948536))

(assert (not bm!59417))

(assert (not b!948784))

(assert (not b!948601))

(assert (not b!948746))

(assert (not bm!59365))

(assert (not b!948655))

(assert (not b!948795))

(assert (not d!283496))

(assert (not bm!59397))

(assert (not d!283508))

(assert (not b!948706))

(assert (not b!948760))

(assert (not d!283514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

