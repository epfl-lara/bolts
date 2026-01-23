; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!83884 () Bool)

(assert start!83884)

(declare-fun b!939318 () Bool)

(assert (=> b!939318 true))

(assert (=> b!939318 true))

(assert (=> b!939318 true))

(declare-fun lambda!31488 () Int)

(declare-fun lambda!31487 () Int)

(assert (=> b!939318 (not (= lambda!31488 lambda!31487))))

(assert (=> b!939318 true))

(assert (=> b!939318 true))

(assert (=> b!939318 true))

(declare-fun bs!238488 () Bool)

(declare-fun b!939319 () Bool)

(assert (= bs!238488 (and b!939319 b!939318)))

(declare-datatypes ((C!5722 0))(
  ( (C!5723 (val!3109 Int)) )
))
(declare-datatypes ((Regex!2576 0))(
  ( (ElementMatch!2576 (c!152819 C!5722)) (Concat!4409 (regOne!5664 Regex!2576) (regTwo!5664 Regex!2576)) (EmptyExpr!2576) (Star!2576 (reg!2905 Regex!2576)) (EmptyLang!2576) (Union!2576 (regOne!5665 Regex!2576) (regTwo!5665 Regex!2576)) )
))
(declare-fun lt!341980 () Regex!2576)

(declare-fun r!15766 () Regex!2576)

(declare-fun lt!341983 () Regex!2576)

(declare-fun lt!341979 () Regex!2576)

(declare-fun lambda!31489 () Int)

(assert (=> bs!238488 (= (and (= lt!341983 (reg!2905 r!15766)) (= lt!341980 lt!341979)) (= lambda!31489 lambda!31487))))

(assert (=> bs!238488 (not (= lambda!31489 lambda!31488))))

(assert (=> b!939319 true))

(assert (=> b!939319 true))

(assert (=> b!939319 true))

(declare-fun lambda!31490 () Int)

(assert (=> bs!238488 (not (= lambda!31490 lambda!31487))))

(assert (=> bs!238488 (= (and (= lt!341983 (reg!2905 r!15766)) (= lt!341980 lt!341979)) (= lambda!31490 lambda!31488))))

(assert (=> b!939319 (not (= lambda!31490 lambda!31489))))

(assert (=> b!939319 true))

(assert (=> b!939319 true))

(assert (=> b!939319 true))

(declare-fun b!939310 () Bool)

(declare-fun e!609558 () Bool)

(declare-fun tp!290883 () Bool)

(declare-fun tp!290884 () Bool)

(assert (=> b!939310 (= e!609558 (and tp!290883 tp!290884))))

(declare-fun b!939311 () Bool)

(declare-fun tp!290882 () Bool)

(declare-fun tp!290881 () Bool)

(assert (=> b!939311 (= e!609558 (and tp!290882 tp!290881))))

(declare-fun b!939312 () Bool)

(declare-fun res!426591 () Bool)

(declare-fun e!609561 () Bool)

(assert (=> b!939312 (=> res!426591 e!609561)))

(declare-fun validRegex!1045 (Regex!2576) Bool)

(assert (=> b!939312 (= res!426591 (not (validRegex!1045 lt!341980)))))

(declare-fun b!939313 () Bool)

(declare-fun tp_is_empty!4795 () Bool)

(assert (=> b!939313 (= e!609558 tp_is_empty!4795)))

(declare-fun res!426592 () Bool)

(declare-fun e!609559 () Bool)

(assert (=> start!83884 (=> (not res!426592) (not e!609559))))

(assert (=> start!83884 (= res!426592 (validRegex!1045 r!15766))))

(assert (=> start!83884 e!609559))

(assert (=> start!83884 e!609558))

(declare-fun e!609556 () Bool)

(assert (=> start!83884 e!609556))

(declare-fun b!939314 () Bool)

(declare-fun tp!290886 () Bool)

(assert (=> b!939314 (= e!609558 tp!290886)))

(declare-fun b!939315 () Bool)

(declare-fun res!426590 () Bool)

(assert (=> b!939315 (=> res!426590 e!609561)))

(assert (=> b!939315 (= res!426590 (not (validRegex!1045 lt!341983)))))

(declare-fun b!939316 () Bool)

(declare-datatypes ((List!9806 0))(
  ( (Nil!9790) (Cons!9790 (h!15191 C!5722) (t!100852 List!9806)) )
))
(declare-fun s!10566 () List!9806)

(declare-fun ++!2598 (List!9806 List!9806) List!9806)

(assert (=> b!939316 (= e!609561 (= (++!2598 Nil!9790 s!10566) s!10566))))

(declare-fun b!939317 () Bool)

(declare-fun e!609557 () Bool)

(assert (=> b!939317 (= e!609559 (not e!609557))))

(declare-fun res!426593 () Bool)

(assert (=> b!939317 (=> res!426593 e!609557)))

(declare-fun lt!341982 () Bool)

(assert (=> b!939317 (= res!426593 (or lt!341982 (and (is-Concat!4409 r!15766) (is-EmptyExpr!2576 (regOne!5664 r!15766))) (and (is-Concat!4409 r!15766) (is-EmptyExpr!2576 (regTwo!5664 r!15766))) (is-Concat!4409 r!15766) (is-Union!2576 r!15766) (not (is-Star!2576 r!15766))))))

(declare-fun matchRSpec!377 (Regex!2576 List!9806) Bool)

(assert (=> b!939317 (= lt!341982 (matchRSpec!377 r!15766 s!10566))))

(declare-fun matchR!1114 (Regex!2576 List!9806) Bool)

(assert (=> b!939317 (= lt!341982 (matchR!1114 r!15766 s!10566))))

(declare-datatypes ((Unit!14771 0))(
  ( (Unit!14772) )
))
(declare-fun lt!341976 () Unit!14771)

(declare-fun mainMatchTheorem!377 (Regex!2576 List!9806) Unit!14771)

(assert (=> b!939317 (= lt!341976 (mainMatchTheorem!377 r!15766 s!10566))))

(declare-fun e!609560 () Bool)

(assert (=> b!939318 (= e!609557 e!609560)))

(declare-fun res!426589 () Bool)

(assert (=> b!939318 (=> res!426589 e!609560)))

(assert (=> b!939318 (= res!426589 (not (matchR!1114 lt!341980 s!10566)))))

(assert (=> b!939318 (= lt!341980 (Star!2576 lt!341983))))

(declare-fun removeUselessConcat!245 (Regex!2576) Regex!2576)

(assert (=> b!939318 (= lt!341983 (removeUselessConcat!245 (reg!2905 r!15766)))))

(declare-fun Exists!327 (Int) Bool)

(assert (=> b!939318 (= (Exists!327 lambda!31487) (Exists!327 lambda!31488))))

(declare-fun lt!341977 () Unit!14771)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!71 (Regex!2576 List!9806) Unit!14771)

(assert (=> b!939318 (= lt!341977 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!71 (reg!2905 r!15766) s!10566))))

(declare-datatypes ((tuple2!11050 0))(
  ( (tuple2!11051 (_1!6351 List!9806) (_2!6351 List!9806)) )
))
(declare-datatypes ((Option!2167 0))(
  ( (None!2166) (Some!2166 (v!19583 tuple2!11050)) )
))
(declare-fun isDefined!1809 (Option!2167) Bool)

(declare-fun findConcatSeparation!273 (Regex!2576 Regex!2576 List!9806 List!9806 List!9806) Option!2167)

(assert (=> b!939318 (= (isDefined!1809 (findConcatSeparation!273 (reg!2905 r!15766) lt!341979 Nil!9790 s!10566 s!10566)) (Exists!327 lambda!31487))))

(declare-fun lt!341981 () Unit!14771)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!273 (Regex!2576 Regex!2576 List!9806) Unit!14771)

(assert (=> b!939318 (= lt!341981 (lemmaFindConcatSeparationEquivalentToExists!273 (reg!2905 r!15766) lt!341979 s!10566))))

(assert (=> b!939318 (= lt!341979 (Star!2576 (reg!2905 r!15766)))))

(assert (=> b!939319 (= e!609560 e!609561)))

(declare-fun res!426594 () Bool)

(assert (=> b!939319 (=> res!426594 e!609561)))

(declare-fun isEmpty!6033 (List!9806) Bool)

(assert (=> b!939319 (= res!426594 (isEmpty!6033 s!10566))))

(assert (=> b!939319 (= (Exists!327 lambda!31489) (Exists!327 lambda!31490))))

(declare-fun lt!341985 () Unit!14771)

(assert (=> b!939319 (= lt!341985 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!71 lt!341983 s!10566))))

(assert (=> b!939319 (= (isDefined!1809 (findConcatSeparation!273 lt!341983 lt!341980 Nil!9790 s!10566 s!10566)) (Exists!327 lambda!31489))))

(declare-fun lt!341984 () Unit!14771)

(assert (=> b!939319 (= lt!341984 (lemmaFindConcatSeparationEquivalentToExists!273 lt!341983 lt!341980 s!10566))))

(assert (=> b!939319 (matchRSpec!377 lt!341980 s!10566)))

(declare-fun lt!341978 () Unit!14771)

(assert (=> b!939319 (= lt!341978 (mainMatchTheorem!377 lt!341980 s!10566))))

(declare-fun b!939320 () Bool)

(declare-fun tp!290885 () Bool)

(assert (=> b!939320 (= e!609556 (and tp_is_empty!4795 tp!290885))))

(assert (= (and start!83884 res!426592) b!939317))

(assert (= (and b!939317 (not res!426593)) b!939318))

(assert (= (and b!939318 (not res!426589)) b!939319))

(assert (= (and b!939319 (not res!426594)) b!939315))

(assert (= (and b!939315 (not res!426590)) b!939312))

(assert (= (and b!939312 (not res!426591)) b!939316))

(assert (= (and start!83884 (is-ElementMatch!2576 r!15766)) b!939313))

(assert (= (and start!83884 (is-Concat!4409 r!15766)) b!939311))

(assert (= (and start!83884 (is-Star!2576 r!15766)) b!939314))

(assert (= (and start!83884 (is-Union!2576 r!15766)) b!939310))

(assert (= (and start!83884 (is-Cons!9790 s!10566)) b!939320))

(declare-fun m!1157237 () Bool)

(assert (=> b!939316 m!1157237))

(declare-fun m!1157239 () Bool)

(assert (=> start!83884 m!1157239))

(declare-fun m!1157241 () Bool)

(assert (=> b!939317 m!1157241))

(declare-fun m!1157243 () Bool)

(assert (=> b!939317 m!1157243))

(declare-fun m!1157245 () Bool)

(assert (=> b!939317 m!1157245))

(declare-fun m!1157247 () Bool)

(assert (=> b!939319 m!1157247))

(declare-fun m!1157249 () Bool)

(assert (=> b!939319 m!1157249))

(declare-fun m!1157251 () Bool)

(assert (=> b!939319 m!1157251))

(declare-fun m!1157253 () Bool)

(assert (=> b!939319 m!1157253))

(declare-fun m!1157255 () Bool)

(assert (=> b!939319 m!1157255))

(declare-fun m!1157257 () Bool)

(assert (=> b!939319 m!1157257))

(declare-fun m!1157259 () Bool)

(assert (=> b!939319 m!1157259))

(assert (=> b!939319 m!1157259))

(declare-fun m!1157261 () Bool)

(assert (=> b!939319 m!1157261))

(declare-fun m!1157263 () Bool)

(assert (=> b!939319 m!1157263))

(assert (=> b!939319 m!1157249))

(declare-fun m!1157265 () Bool)

(assert (=> b!939312 m!1157265))

(declare-fun m!1157267 () Bool)

(assert (=> b!939315 m!1157267))

(declare-fun m!1157269 () Bool)

(assert (=> b!939318 m!1157269))

(declare-fun m!1157271 () Bool)

(assert (=> b!939318 m!1157271))

(declare-fun m!1157273 () Bool)

(assert (=> b!939318 m!1157273))

(declare-fun m!1157275 () Bool)

(assert (=> b!939318 m!1157275))

(declare-fun m!1157277 () Bool)

(assert (=> b!939318 m!1157277))

(declare-fun m!1157279 () Bool)

(assert (=> b!939318 m!1157279))

(assert (=> b!939318 m!1157275))

(declare-fun m!1157281 () Bool)

(assert (=> b!939318 m!1157281))

(declare-fun m!1157283 () Bool)

(assert (=> b!939318 m!1157283))

(assert (=> b!939318 m!1157279))

(push 1)

(assert (not b!939310))

(assert (not b!939317))

(assert (not b!939316))

(assert (not start!83884))

(assert (not b!939312))

(assert (not b!939314))

(assert tp_is_empty!4795)

(assert (not b!939311))

(assert (not b!939319))

(assert (not b!939318))

(assert (not b!939320))

(assert (not b!939315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!282288 () Bool)

(declare-fun isEmpty!6035 (Option!2167) Bool)

(assert (=> d!282288 (= (isDefined!1809 (findConcatSeparation!273 lt!341983 lt!341980 Nil!9790 s!10566 s!10566)) (not (isEmpty!6035 (findConcatSeparation!273 lt!341983 lt!341980 Nil!9790 s!10566 s!10566))))))

(declare-fun bs!238490 () Bool)

(assert (= bs!238490 d!282288))

(assert (=> bs!238490 m!1157249))

(declare-fun m!1157333 () Bool)

(assert (=> bs!238490 m!1157333))

(assert (=> b!939319 d!282288))

(declare-fun bs!238491 () Bool)

(declare-fun d!282290 () Bool)

(assert (= bs!238491 (and d!282290 b!939318)))

(declare-fun lambda!31511 () Int)

(assert (=> bs!238491 (= (and (= lt!341983 (reg!2905 r!15766)) (= (Star!2576 lt!341983) lt!341979)) (= lambda!31511 lambda!31487))))

(assert (=> bs!238491 (not (= lambda!31511 lambda!31488))))

(declare-fun bs!238492 () Bool)

(assert (= bs!238492 (and d!282290 b!939319)))

(assert (=> bs!238492 (= (= (Star!2576 lt!341983) lt!341980) (= lambda!31511 lambda!31489))))

(assert (=> bs!238492 (not (= lambda!31511 lambda!31490))))

(assert (=> d!282290 true))

(assert (=> d!282290 true))

(declare-fun lambda!31512 () Int)

(assert (=> bs!238491 (= (and (= lt!341983 (reg!2905 r!15766)) (= (Star!2576 lt!341983) lt!341979)) (= lambda!31512 lambda!31488))))

(assert (=> bs!238492 (= (= (Star!2576 lt!341983) lt!341980) (= lambda!31512 lambda!31490))))

(assert (=> bs!238491 (not (= lambda!31512 lambda!31487))))

(assert (=> bs!238492 (not (= lambda!31512 lambda!31489))))

(declare-fun bs!238493 () Bool)

(assert (= bs!238493 d!282290))

(assert (=> bs!238493 (not (= lambda!31512 lambda!31511))))

(assert (=> d!282290 true))

(assert (=> d!282290 true))

(assert (=> d!282290 (= (Exists!327 lambda!31511) (Exists!327 lambda!31512))))

(declare-fun lt!342018 () Unit!14771)

(declare-fun choose!5805 (Regex!2576 List!9806) Unit!14771)

(assert (=> d!282290 (= lt!342018 (choose!5805 lt!341983 s!10566))))

(assert (=> d!282290 (validRegex!1045 lt!341983)))

(assert (=> d!282290 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!71 lt!341983 s!10566) lt!342018)))

(declare-fun m!1157335 () Bool)

(assert (=> bs!238493 m!1157335))

(declare-fun m!1157337 () Bool)

(assert (=> bs!238493 m!1157337))

(declare-fun m!1157339 () Bool)

(assert (=> bs!238493 m!1157339))

(assert (=> bs!238493 m!1157267))

(assert (=> b!939319 d!282290))

(declare-fun d!282294 () Bool)

(declare-fun choose!5806 (Int) Bool)

(assert (=> d!282294 (= (Exists!327 lambda!31489) (choose!5806 lambda!31489))))

(declare-fun bs!238494 () Bool)

(assert (= bs!238494 d!282294))

(declare-fun m!1157341 () Bool)

(assert (=> bs!238494 m!1157341))

(assert (=> b!939319 d!282294))

(declare-fun bs!238495 () Bool)

(declare-fun b!939468 () Bool)

(assert (= bs!238495 (and b!939468 b!939319)))

(declare-fun lambda!31521 () Int)

(assert (=> bs!238495 (= (= (reg!2905 lt!341980) lt!341983) (= lambda!31521 lambda!31490))))

(declare-fun bs!238496 () Bool)

(assert (= bs!238496 (and b!939468 b!939318)))

(assert (=> bs!238496 (not (= lambda!31521 lambda!31487))))

(assert (=> bs!238495 (not (= lambda!31521 lambda!31489))))

(declare-fun bs!238497 () Bool)

(assert (= bs!238497 (and b!939468 d!282290)))

(assert (=> bs!238497 (not (= lambda!31521 lambda!31511))))

(assert (=> bs!238497 (= (and (= (reg!2905 lt!341980) lt!341983) (= lt!341980 (Star!2576 lt!341983))) (= lambda!31521 lambda!31512))))

(assert (=> bs!238496 (= (and (= (reg!2905 lt!341980) (reg!2905 r!15766)) (= lt!341980 lt!341979)) (= lambda!31521 lambda!31488))))

(assert (=> b!939468 true))

(assert (=> b!939468 true))

(declare-fun bs!238498 () Bool)

(declare-fun b!939471 () Bool)

(assert (= bs!238498 (and b!939471 b!939319)))

(declare-fun lambda!31522 () Int)

(assert (=> bs!238498 (not (= lambda!31522 lambda!31490))))

(declare-fun bs!238499 () Bool)

(assert (= bs!238499 (and b!939471 b!939318)))

(assert (=> bs!238499 (not (= lambda!31522 lambda!31487))))

(declare-fun bs!238500 () Bool)

(assert (= bs!238500 (and b!939471 d!282290)))

(assert (=> bs!238500 (not (= lambda!31522 lambda!31511))))

(assert (=> bs!238500 (not (= lambda!31522 lambda!31512))))

(assert (=> bs!238499 (not (= lambda!31522 lambda!31488))))

(assert (=> bs!238498 (not (= lambda!31522 lambda!31489))))

(declare-fun bs!238501 () Bool)

(assert (= bs!238501 (and b!939471 b!939468)))

(assert (=> bs!238501 (not (= lambda!31522 lambda!31521))))

(assert (=> b!939471 true))

(assert (=> b!939471 true))

(declare-fun call!58421 () Bool)

(declare-fun c!152839 () Bool)

(declare-fun bm!58415 () Bool)

(assert (=> bm!58415 (= call!58421 (Exists!327 (ite c!152839 lambda!31521 lambda!31522)))))

(declare-fun b!939464 () Bool)

(declare-fun res!426683 () Bool)

(declare-fun e!609636 () Bool)

(assert (=> b!939464 (=> res!426683 e!609636)))

(declare-fun call!58420 () Bool)

(assert (=> b!939464 (= res!426683 call!58420)))

(declare-fun e!609635 () Bool)

(assert (=> b!939464 (= e!609635 e!609636)))

(declare-fun b!939465 () Bool)

(declare-fun e!609638 () Bool)

(declare-fun e!609633 () Bool)

(assert (=> b!939465 (= e!609638 e!609633)))

(declare-fun res!426685 () Bool)

(assert (=> b!939465 (= res!426685 (not (is-EmptyLang!2576 lt!341980)))))

(assert (=> b!939465 (=> (not res!426685) (not e!609633))))

(declare-fun b!939466 () Bool)

(declare-fun e!609637 () Bool)

(assert (=> b!939466 (= e!609637 (= s!10566 (Cons!9790 (c!152819 lt!341980) Nil!9790)))))

(declare-fun bm!58416 () Bool)

(assert (=> bm!58416 (= call!58420 (isEmpty!6033 s!10566))))

(declare-fun b!939467 () Bool)

(declare-fun e!609634 () Bool)

(declare-fun e!609632 () Bool)

(assert (=> b!939467 (= e!609634 e!609632)))

(declare-fun res!426684 () Bool)

(assert (=> b!939467 (= res!426684 (matchRSpec!377 (regOne!5665 lt!341980) s!10566))))

(assert (=> b!939467 (=> res!426684 e!609632)))

(assert (=> b!939468 (= e!609636 call!58421)))

(declare-fun d!282296 () Bool)

(declare-fun c!152840 () Bool)

(assert (=> d!282296 (= c!152840 (is-EmptyExpr!2576 lt!341980))))

(assert (=> d!282296 (= (matchRSpec!377 lt!341980 s!10566) e!609638)))

(declare-fun b!939469 () Bool)

(assert (=> b!939469 (= e!609638 call!58420)))

(declare-fun b!939470 () Bool)

(assert (=> b!939470 (= e!609632 (matchRSpec!377 (regTwo!5665 lt!341980) s!10566))))

(assert (=> b!939471 (= e!609635 call!58421)))

(declare-fun b!939472 () Bool)

(declare-fun c!152837 () Bool)

(assert (=> b!939472 (= c!152837 (is-Union!2576 lt!341980))))

(assert (=> b!939472 (= e!609637 e!609634)))

(declare-fun b!939473 () Bool)

(assert (=> b!939473 (= e!609634 e!609635)))

(assert (=> b!939473 (= c!152839 (is-Star!2576 lt!341980))))

(declare-fun b!939474 () Bool)

(declare-fun c!152838 () Bool)

(assert (=> b!939474 (= c!152838 (is-ElementMatch!2576 lt!341980))))

(assert (=> b!939474 (= e!609633 e!609637)))

(assert (= (and d!282296 c!152840) b!939469))

(assert (= (and d!282296 (not c!152840)) b!939465))

(assert (= (and b!939465 res!426685) b!939474))

(assert (= (and b!939474 c!152838) b!939466))

(assert (= (and b!939474 (not c!152838)) b!939472))

(assert (= (and b!939472 c!152837) b!939467))

(assert (= (and b!939472 (not c!152837)) b!939473))

(assert (= (and b!939467 (not res!426684)) b!939470))

(assert (= (and b!939473 c!152839) b!939464))

(assert (= (and b!939473 (not c!152839)) b!939471))

(assert (= (and b!939464 (not res!426683)) b!939468))

(assert (= (or b!939468 b!939471) bm!58415))

(assert (= (or b!939469 b!939464) bm!58416))

(declare-fun m!1157343 () Bool)

(assert (=> bm!58415 m!1157343))

(assert (=> bm!58416 m!1157257))

(declare-fun m!1157345 () Bool)

(assert (=> b!939467 m!1157345))

(declare-fun m!1157347 () Bool)

(assert (=> b!939470 m!1157347))

(assert (=> b!939319 d!282296))

(declare-fun d!282298 () Bool)

(assert (=> d!282298 (= (matchR!1114 lt!341980 s!10566) (matchRSpec!377 lt!341980 s!10566))))

(declare-fun lt!342021 () Unit!14771)

(declare-fun choose!5807 (Regex!2576 List!9806) Unit!14771)

(assert (=> d!282298 (= lt!342021 (choose!5807 lt!341980 s!10566))))

(assert (=> d!282298 (validRegex!1045 lt!341980)))

(assert (=> d!282298 (= (mainMatchTheorem!377 lt!341980 s!10566) lt!342021)))

(declare-fun bs!238502 () Bool)

(assert (= bs!238502 d!282298))

(assert (=> bs!238502 m!1157273))

(assert (=> bs!238502 m!1157255))

(declare-fun m!1157349 () Bool)

(assert (=> bs!238502 m!1157349))

(assert (=> bs!238502 m!1157265))

(assert (=> b!939319 d!282298))

(declare-fun bs!238508 () Bool)

(declare-fun d!282300 () Bool)

(assert (= bs!238508 (and d!282300 b!939319)))

(declare-fun lambda!31527 () Int)

(assert (=> bs!238508 (not (= lambda!31527 lambda!31490))))

(declare-fun bs!238509 () Bool)

(assert (= bs!238509 (and d!282300 b!939471)))

(assert (=> bs!238509 (not (= lambda!31527 lambda!31522))))

(declare-fun bs!238510 () Bool)

(assert (= bs!238510 (and d!282300 b!939318)))

(assert (=> bs!238510 (= (and (= lt!341983 (reg!2905 r!15766)) (= lt!341980 lt!341979)) (= lambda!31527 lambda!31487))))

(declare-fun bs!238511 () Bool)

(assert (= bs!238511 (and d!282300 d!282290)))

(assert (=> bs!238511 (= (= lt!341980 (Star!2576 lt!341983)) (= lambda!31527 lambda!31511))))

(assert (=> bs!238511 (not (= lambda!31527 lambda!31512))))

(assert (=> bs!238510 (not (= lambda!31527 lambda!31488))))

(assert (=> bs!238508 (= lambda!31527 lambda!31489)))

(declare-fun bs!238512 () Bool)

(assert (= bs!238512 (and d!282300 b!939468)))

(assert (=> bs!238512 (not (= lambda!31527 lambda!31521))))

(assert (=> d!282300 true))

(assert (=> d!282300 true))

(assert (=> d!282300 true))

(assert (=> d!282300 (= (isDefined!1809 (findConcatSeparation!273 lt!341983 lt!341980 Nil!9790 s!10566 s!10566)) (Exists!327 lambda!31527))))

(declare-fun lt!342024 () Unit!14771)

(declare-fun choose!5808 (Regex!2576 Regex!2576 List!9806) Unit!14771)

(assert (=> d!282300 (= lt!342024 (choose!5808 lt!341983 lt!341980 s!10566))))

(assert (=> d!282300 (validRegex!1045 lt!341983)))

(assert (=> d!282300 (= (lemmaFindConcatSeparationEquivalentToExists!273 lt!341983 lt!341980 s!10566) lt!342024)))

(declare-fun bs!238513 () Bool)

(assert (= bs!238513 d!282300))

(assert (=> bs!238513 m!1157249))

(assert (=> bs!238513 m!1157249))

(assert (=> bs!238513 m!1157251))

(declare-fun m!1157357 () Bool)

(assert (=> bs!238513 m!1157357))

(assert (=> bs!238513 m!1157267))

(declare-fun m!1157359 () Bool)

(assert (=> bs!238513 m!1157359))

(assert (=> b!939319 d!282300))

(declare-fun b!939536 () Bool)

(declare-fun lt!342034 () Unit!14771)

(declare-fun lt!342033 () Unit!14771)

(assert (=> b!939536 (= lt!342034 lt!342033)))

(assert (=> b!939536 (= (++!2598 (++!2598 Nil!9790 (Cons!9790 (h!15191 s!10566) Nil!9790)) (t!100852 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!211 (List!9806 C!5722 List!9806 List!9806) Unit!14771)

(assert (=> b!939536 (= lt!342033 (lemmaMoveElementToOtherListKeepsConcatEq!211 Nil!9790 (h!15191 s!10566) (t!100852 s!10566) s!10566))))

(declare-fun e!609673 () Option!2167)

(assert (=> b!939536 (= e!609673 (findConcatSeparation!273 lt!341983 lt!341980 (++!2598 Nil!9790 (Cons!9790 (h!15191 s!10566) Nil!9790)) (t!100852 s!10566) s!10566))))

(declare-fun b!939537 () Bool)

(declare-fun e!609672 () Bool)

(assert (=> b!939537 (= e!609672 (matchR!1114 lt!341980 s!10566))))

(declare-fun b!939538 () Bool)

(declare-fun res!426719 () Bool)

(declare-fun e!609676 () Bool)

(assert (=> b!939538 (=> (not res!426719) (not e!609676))))

(declare-fun lt!342035 () Option!2167)

(declare-fun get!3246 (Option!2167) tuple2!11050)

(assert (=> b!939538 (= res!426719 (matchR!1114 lt!341980 (_2!6351 (get!3246 lt!342035))))))

(declare-fun d!282304 () Bool)

(declare-fun e!609675 () Bool)

(assert (=> d!282304 e!609675))

(declare-fun res!426722 () Bool)

(assert (=> d!282304 (=> res!426722 e!609675)))

(assert (=> d!282304 (= res!426722 e!609676)))

(declare-fun res!426723 () Bool)

(assert (=> d!282304 (=> (not res!426723) (not e!609676))))

(assert (=> d!282304 (= res!426723 (isDefined!1809 lt!342035))))

(declare-fun e!609674 () Option!2167)

(assert (=> d!282304 (= lt!342035 e!609674)))

(declare-fun c!152855 () Bool)

(assert (=> d!282304 (= c!152855 e!609672)))

(declare-fun res!426720 () Bool)

(assert (=> d!282304 (=> (not res!426720) (not e!609672))))

(assert (=> d!282304 (= res!426720 (matchR!1114 lt!341983 Nil!9790))))

(assert (=> d!282304 (validRegex!1045 lt!341983)))

(assert (=> d!282304 (= (findConcatSeparation!273 lt!341983 lt!341980 Nil!9790 s!10566 s!10566) lt!342035)))

(declare-fun b!939539 () Bool)

(assert (=> b!939539 (= e!609674 (Some!2166 (tuple2!11051 Nil!9790 s!10566)))))

(declare-fun b!939540 () Bool)

(assert (=> b!939540 (= e!609673 None!2166)))

(declare-fun b!939541 () Bool)

(declare-fun res!426721 () Bool)

(assert (=> b!939541 (=> (not res!426721) (not e!609676))))

(assert (=> b!939541 (= res!426721 (matchR!1114 lt!341983 (_1!6351 (get!3246 lt!342035))))))

(declare-fun b!939542 () Bool)

(assert (=> b!939542 (= e!609674 e!609673)))

(declare-fun c!152856 () Bool)

(assert (=> b!939542 (= c!152856 (is-Nil!9790 s!10566))))

(declare-fun b!939543 () Bool)

(assert (=> b!939543 (= e!609676 (= (++!2598 (_1!6351 (get!3246 lt!342035)) (_2!6351 (get!3246 lt!342035))) s!10566))))

(declare-fun b!939544 () Bool)

(assert (=> b!939544 (= e!609675 (not (isDefined!1809 lt!342035)))))

(assert (= (and d!282304 res!426720) b!939537))

(assert (= (and d!282304 c!152855) b!939539))

(assert (= (and d!282304 (not c!152855)) b!939542))

(assert (= (and b!939542 c!152856) b!939540))

(assert (= (and b!939542 (not c!152856)) b!939536))

(assert (= (and d!282304 res!426723) b!939541))

(assert (= (and b!939541 res!426721) b!939538))

(assert (= (and b!939538 res!426719) b!939543))

(assert (= (and d!282304 (not res!426722)) b!939544))

(declare-fun m!1157361 () Bool)

(assert (=> b!939544 m!1157361))

(declare-fun m!1157363 () Bool)

(assert (=> b!939536 m!1157363))

(assert (=> b!939536 m!1157363))

(declare-fun m!1157365 () Bool)

(assert (=> b!939536 m!1157365))

(declare-fun m!1157367 () Bool)

(assert (=> b!939536 m!1157367))

(assert (=> b!939536 m!1157363))

(declare-fun m!1157369 () Bool)

(assert (=> b!939536 m!1157369))

(declare-fun m!1157371 () Bool)

(assert (=> b!939541 m!1157371))

(declare-fun m!1157373 () Bool)

(assert (=> b!939541 m!1157373))

(assert (=> b!939543 m!1157371))

(declare-fun m!1157375 () Bool)

(assert (=> b!939543 m!1157375))

(assert (=> b!939537 m!1157273))

(assert (=> b!939538 m!1157371))

(declare-fun m!1157377 () Bool)

(assert (=> b!939538 m!1157377))

(assert (=> d!282304 m!1157361))

(declare-fun m!1157379 () Bool)

(assert (=> d!282304 m!1157379))

(assert (=> d!282304 m!1157267))

(assert (=> b!939319 d!282304))

(declare-fun d!282306 () Bool)

(assert (=> d!282306 (= (isEmpty!6033 s!10566) (is-Nil!9790 s!10566))))

(assert (=> b!939319 d!282306))

(declare-fun d!282308 () Bool)

(assert (=> d!282308 (= (Exists!327 lambda!31490) (choose!5806 lambda!31490))))

(declare-fun bs!238514 () Bool)

(assert (= bs!238514 d!282308))

(declare-fun m!1157381 () Bool)

(assert (=> bs!238514 m!1157381))

(assert (=> b!939319 d!282308))

(declare-fun bm!58429 () Bool)

(declare-fun call!58436 () Bool)

(declare-fun c!152862 () Bool)

(assert (=> bm!58429 (= call!58436 (validRegex!1045 (ite c!152862 (regTwo!5665 lt!341983) (regTwo!5664 lt!341983))))))

(declare-fun b!939564 () Bool)

(declare-fun e!609693 () Bool)

(declare-fun e!609697 () Bool)

(assert (=> b!939564 (= e!609693 e!609697)))

(assert (=> b!939564 (= c!152862 (is-Union!2576 lt!341983))))

(declare-fun b!939565 () Bool)

(declare-fun e!609692 () Bool)

(assert (=> b!939565 (= e!609692 call!58436)))

(declare-fun b!939566 () Bool)

(declare-fun e!609695 () Bool)

(declare-fun e!609691 () Bool)

(assert (=> b!939566 (= e!609695 e!609691)))

(declare-fun res!426736 () Bool)

(assert (=> b!939566 (=> (not res!426736) (not e!609691))))

(declare-fun call!58434 () Bool)

(assert (=> b!939566 (= res!426736 call!58434)))

(declare-fun b!939567 () Bool)

(declare-fun e!609696 () Bool)

(assert (=> b!939567 (= e!609696 e!609693)))

(declare-fun c!152861 () Bool)

(assert (=> b!939567 (= c!152861 (is-Star!2576 lt!341983))))

(declare-fun bm!58430 () Bool)

(declare-fun call!58435 () Bool)

(assert (=> bm!58430 (= call!58434 call!58435)))

(declare-fun bm!58431 () Bool)

(assert (=> bm!58431 (= call!58435 (validRegex!1045 (ite c!152861 (reg!2905 lt!341983) (ite c!152862 (regOne!5665 lt!341983) (regOne!5664 lt!341983)))))))

(declare-fun b!939568 () Bool)

(assert (=> b!939568 (= e!609691 call!58436)))

(declare-fun b!939569 () Bool)

(declare-fun e!609694 () Bool)

(assert (=> b!939569 (= e!609694 call!58435)))

(declare-fun b!939563 () Bool)

(assert (=> b!939563 (= e!609693 e!609694)))

(declare-fun res!426737 () Bool)

(declare-fun nullable!746 (Regex!2576) Bool)

(assert (=> b!939563 (= res!426737 (not (nullable!746 (reg!2905 lt!341983))))))

(assert (=> b!939563 (=> (not res!426737) (not e!609694))))

(declare-fun d!282310 () Bool)

(declare-fun res!426735 () Bool)

(assert (=> d!282310 (=> res!426735 e!609696)))

(assert (=> d!282310 (= res!426735 (is-ElementMatch!2576 lt!341983))))

(assert (=> d!282310 (= (validRegex!1045 lt!341983) e!609696)))

(declare-fun b!939570 () Bool)

(declare-fun res!426738 () Bool)

(assert (=> b!939570 (=> (not res!426738) (not e!609692))))

(assert (=> b!939570 (= res!426738 call!58434)))

(assert (=> b!939570 (= e!609697 e!609692)))

(declare-fun b!939571 () Bool)

(declare-fun res!426734 () Bool)

(assert (=> b!939571 (=> res!426734 e!609695)))

(assert (=> b!939571 (= res!426734 (not (is-Concat!4409 lt!341983)))))

(assert (=> b!939571 (= e!609697 e!609695)))

(assert (= (and d!282310 (not res!426735)) b!939567))

(assert (= (and b!939567 c!152861) b!939563))

(assert (= (and b!939567 (not c!152861)) b!939564))

(assert (= (and b!939563 res!426737) b!939569))

(assert (= (and b!939564 c!152862) b!939570))

(assert (= (and b!939564 (not c!152862)) b!939571))

(assert (= (and b!939570 res!426738) b!939565))

(assert (= (and b!939571 (not res!426734)) b!939566))

(assert (= (and b!939566 res!426736) b!939568))

(assert (= (or b!939565 b!939568) bm!58429))

(assert (= (or b!939570 b!939566) bm!58430))

(assert (= (or b!939569 bm!58430) bm!58431))

(declare-fun m!1157383 () Bool)

(assert (=> bm!58429 m!1157383))

(declare-fun m!1157385 () Bool)

(assert (=> bm!58431 m!1157385))

(declare-fun m!1157387 () Bool)

(assert (=> b!939563 m!1157387))

(assert (=> b!939315 d!282310))

(declare-fun bs!238515 () Bool)

(declare-fun b!939590 () Bool)

(assert (= bs!238515 (and b!939590 d!282300)))

(declare-fun lambda!31528 () Int)

(assert (=> bs!238515 (not (= lambda!31528 lambda!31527))))

(declare-fun bs!238516 () Bool)

(assert (= bs!238516 (and b!939590 b!939319)))

(assert (=> bs!238516 (= (and (= (reg!2905 r!15766) lt!341983) (= r!15766 lt!341980)) (= lambda!31528 lambda!31490))))

(declare-fun bs!238517 () Bool)

(assert (= bs!238517 (and b!939590 b!939471)))

(assert (=> bs!238517 (not (= lambda!31528 lambda!31522))))

(declare-fun bs!238518 () Bool)

(assert (= bs!238518 (and b!939590 b!939318)))

(assert (=> bs!238518 (not (= lambda!31528 lambda!31487))))

(declare-fun bs!238519 () Bool)

(assert (= bs!238519 (and b!939590 d!282290)))

(assert (=> bs!238519 (not (= lambda!31528 lambda!31511))))

(assert (=> bs!238519 (= (and (= (reg!2905 r!15766) lt!341983) (= r!15766 (Star!2576 lt!341983))) (= lambda!31528 lambda!31512))))

(assert (=> bs!238518 (= (= r!15766 lt!341979) (= lambda!31528 lambda!31488))))

(assert (=> bs!238516 (not (= lambda!31528 lambda!31489))))

(declare-fun bs!238520 () Bool)

(assert (= bs!238520 (and b!939590 b!939468)))

(assert (=> bs!238520 (= (and (= (reg!2905 r!15766) (reg!2905 lt!341980)) (= r!15766 lt!341980)) (= lambda!31528 lambda!31521))))

(assert (=> b!939590 true))

(assert (=> b!939590 true))

(declare-fun bs!238521 () Bool)

(declare-fun b!939593 () Bool)

(assert (= bs!238521 (and b!939593 d!282300)))

(declare-fun lambda!31529 () Int)

(assert (=> bs!238521 (not (= lambda!31529 lambda!31527))))

(declare-fun bs!238522 () Bool)

(assert (= bs!238522 (and b!939593 b!939319)))

(assert (=> bs!238522 (not (= lambda!31529 lambda!31490))))

(declare-fun bs!238523 () Bool)

(assert (= bs!238523 (and b!939593 b!939590)))

(assert (=> bs!238523 (not (= lambda!31529 lambda!31528))))

(declare-fun bs!238524 () Bool)

(assert (= bs!238524 (and b!939593 b!939471)))

(assert (=> bs!238524 (= (and (= (regOne!5664 r!15766) (regOne!5664 lt!341980)) (= (regTwo!5664 r!15766) (regTwo!5664 lt!341980))) (= lambda!31529 lambda!31522))))

(declare-fun bs!238525 () Bool)

(assert (= bs!238525 (and b!939593 b!939318)))

(assert (=> bs!238525 (not (= lambda!31529 lambda!31487))))

(declare-fun bs!238526 () Bool)

(assert (= bs!238526 (and b!939593 d!282290)))

(assert (=> bs!238526 (not (= lambda!31529 lambda!31511))))

(assert (=> bs!238526 (not (= lambda!31529 lambda!31512))))

(assert (=> bs!238525 (not (= lambda!31529 lambda!31488))))

(assert (=> bs!238522 (not (= lambda!31529 lambda!31489))))

(declare-fun bs!238527 () Bool)

(assert (= bs!238527 (and b!939593 b!939468)))

(assert (=> bs!238527 (not (= lambda!31529 lambda!31521))))

(assert (=> b!939593 true))

(assert (=> b!939593 true))

(declare-fun bm!58433 () Bool)

(declare-fun c!152868 () Bool)

(declare-fun call!58439 () Bool)

(assert (=> bm!58433 (= call!58439 (Exists!327 (ite c!152868 lambda!31528 lambda!31529)))))

(declare-fun b!939586 () Bool)

(declare-fun res!426747 () Bool)

(declare-fun e!609709 () Bool)

(assert (=> b!939586 (=> res!426747 e!609709)))

(declare-fun call!58438 () Bool)

(assert (=> b!939586 (= res!426747 call!58438)))

(declare-fun e!609708 () Bool)

(assert (=> b!939586 (= e!609708 e!609709)))

(declare-fun b!939587 () Bool)

(declare-fun e!609711 () Bool)

(declare-fun e!609706 () Bool)

(assert (=> b!939587 (= e!609711 e!609706)))

(declare-fun res!426749 () Bool)

(assert (=> b!939587 (= res!426749 (not (is-EmptyLang!2576 r!15766)))))

(assert (=> b!939587 (=> (not res!426749) (not e!609706))))

(declare-fun b!939588 () Bool)

(declare-fun e!609710 () Bool)

(assert (=> b!939588 (= e!609710 (= s!10566 (Cons!9790 (c!152819 r!15766) Nil!9790)))))

(declare-fun bm!58434 () Bool)

(assert (=> bm!58434 (= call!58438 (isEmpty!6033 s!10566))))

(declare-fun b!939589 () Bool)

(declare-fun e!609707 () Bool)

(declare-fun e!609705 () Bool)

(assert (=> b!939589 (= e!609707 e!609705)))

(declare-fun res!426748 () Bool)

(assert (=> b!939589 (= res!426748 (matchRSpec!377 (regOne!5665 r!15766) s!10566))))

(assert (=> b!939589 (=> res!426748 e!609705)))

(assert (=> b!939590 (= e!609709 call!58439)))

(declare-fun d!282312 () Bool)

(declare-fun c!152869 () Bool)

(assert (=> d!282312 (= c!152869 (is-EmptyExpr!2576 r!15766))))

(assert (=> d!282312 (= (matchRSpec!377 r!15766 s!10566) e!609711)))

(declare-fun b!939591 () Bool)

(assert (=> b!939591 (= e!609711 call!58438)))

(declare-fun b!939592 () Bool)

(assert (=> b!939592 (= e!609705 (matchRSpec!377 (regTwo!5665 r!15766) s!10566))))

(assert (=> b!939593 (= e!609708 call!58439)))

(declare-fun b!939594 () Bool)

(declare-fun c!152866 () Bool)

(assert (=> b!939594 (= c!152866 (is-Union!2576 r!15766))))

(assert (=> b!939594 (= e!609710 e!609707)))

(declare-fun b!939595 () Bool)

(assert (=> b!939595 (= e!609707 e!609708)))

(assert (=> b!939595 (= c!152868 (is-Star!2576 r!15766))))

(declare-fun b!939596 () Bool)

(declare-fun c!152867 () Bool)

(assert (=> b!939596 (= c!152867 (is-ElementMatch!2576 r!15766))))

(assert (=> b!939596 (= e!609706 e!609710)))

(assert (= (and d!282312 c!152869) b!939591))

(assert (= (and d!282312 (not c!152869)) b!939587))

(assert (= (and b!939587 res!426749) b!939596))

(assert (= (and b!939596 c!152867) b!939588))

(assert (= (and b!939596 (not c!152867)) b!939594))

(assert (= (and b!939594 c!152866) b!939589))

(assert (= (and b!939594 (not c!152866)) b!939595))

(assert (= (and b!939589 (not res!426748)) b!939592))

(assert (= (and b!939595 c!152868) b!939586))

(assert (= (and b!939595 (not c!152868)) b!939593))

(assert (= (and b!939586 (not res!426747)) b!939590))

(assert (= (or b!939590 b!939593) bm!58433))

(assert (= (or b!939591 b!939586) bm!58434))

(declare-fun m!1157401 () Bool)

(assert (=> bm!58433 m!1157401))

(assert (=> bm!58434 m!1157257))

(declare-fun m!1157403 () Bool)

(assert (=> b!939589 m!1157403))

(declare-fun m!1157405 () Bool)

(assert (=> b!939592 m!1157405))

(assert (=> b!939317 d!282312))

(declare-fun b!939639 () Bool)

(declare-fun e!609735 () Bool)

(assert (=> b!939639 (= e!609735 (nullable!746 r!15766))))

(declare-fun b!939640 () Bool)

(declare-fun e!609737 () Bool)

(declare-fun e!609739 () Bool)

(assert (=> b!939640 (= e!609737 e!609739)))

(declare-fun c!152879 () Bool)

(assert (=> b!939640 (= c!152879 (is-EmptyLang!2576 r!15766))))

(declare-fun b!939641 () Bool)

(declare-fun derivativeStep!555 (Regex!2576 C!5722) Regex!2576)

(declare-fun head!1708 (List!9806) C!5722)

(declare-fun tail!1270 (List!9806) List!9806)

(assert (=> b!939641 (= e!609735 (matchR!1114 (derivativeStep!555 r!15766 (head!1708 s!10566)) (tail!1270 s!10566)))))

(declare-fun b!939642 () Bool)

(declare-fun lt!342043 () Bool)

(declare-fun call!58443 () Bool)

(assert (=> b!939642 (= e!609737 (= lt!342043 call!58443))))

(declare-fun bm!58438 () Bool)

(assert (=> bm!58438 (= call!58443 (isEmpty!6033 s!10566))))

(declare-fun d!282316 () Bool)

(assert (=> d!282316 e!609737))

(declare-fun c!152881 () Bool)

(assert (=> d!282316 (= c!152881 (is-EmptyExpr!2576 r!15766))))

(assert (=> d!282316 (= lt!342043 e!609735)))

(declare-fun c!152880 () Bool)

(assert (=> d!282316 (= c!152880 (isEmpty!6033 s!10566))))

(assert (=> d!282316 (validRegex!1045 r!15766)))

(assert (=> d!282316 (= (matchR!1114 r!15766 s!10566) lt!342043)))

(declare-fun b!939643 () Bool)

(declare-fun e!609733 () Bool)

(assert (=> b!939643 (= e!609733 (= (head!1708 s!10566) (c!152819 r!15766)))))

(declare-fun b!939644 () Bool)

(declare-fun res!426777 () Bool)

(assert (=> b!939644 (=> (not res!426777) (not e!609733))))

(assert (=> b!939644 (= res!426777 (not call!58443))))

(declare-fun b!939645 () Bool)

(declare-fun e!609738 () Bool)

(assert (=> b!939645 (= e!609738 (not (= (head!1708 s!10566) (c!152819 r!15766))))))

(declare-fun b!939646 () Bool)

(declare-fun e!609734 () Bool)

(declare-fun e!609736 () Bool)

(assert (=> b!939646 (= e!609734 e!609736)))

(declare-fun res!426779 () Bool)

(assert (=> b!939646 (=> (not res!426779) (not e!609736))))

(assert (=> b!939646 (= res!426779 (not lt!342043))))

(declare-fun b!939647 () Bool)

(declare-fun res!426781 () Bool)

(assert (=> b!939647 (=> (not res!426781) (not e!609733))))

(assert (=> b!939647 (= res!426781 (isEmpty!6033 (tail!1270 s!10566)))))

(declare-fun b!939648 () Bool)

(assert (=> b!939648 (= e!609736 e!609738)))

(declare-fun res!426780 () Bool)

(assert (=> b!939648 (=> res!426780 e!609738)))

(assert (=> b!939648 (= res!426780 call!58443)))

(declare-fun b!939649 () Bool)

(assert (=> b!939649 (= e!609739 (not lt!342043))))

(declare-fun b!939650 () Bool)

(declare-fun res!426776 () Bool)

(assert (=> b!939650 (=> res!426776 e!609734)))

(assert (=> b!939650 (= res!426776 e!609733)))

(declare-fun res!426774 () Bool)

(assert (=> b!939650 (=> (not res!426774) (not e!609733))))

(assert (=> b!939650 (= res!426774 lt!342043)))

(declare-fun b!939651 () Bool)

(declare-fun res!426775 () Bool)

(assert (=> b!939651 (=> res!426775 e!609734)))

(assert (=> b!939651 (= res!426775 (not (is-ElementMatch!2576 r!15766)))))

(assert (=> b!939651 (= e!609739 e!609734)))

(declare-fun b!939652 () Bool)

(declare-fun res!426778 () Bool)

(assert (=> b!939652 (=> res!426778 e!609738)))

(assert (=> b!939652 (= res!426778 (not (isEmpty!6033 (tail!1270 s!10566))))))

(assert (= (and d!282316 c!152880) b!939639))

(assert (= (and d!282316 (not c!152880)) b!939641))

(assert (= (and d!282316 c!152881) b!939642))

(assert (= (and d!282316 (not c!152881)) b!939640))

(assert (= (and b!939640 c!152879) b!939649))

(assert (= (and b!939640 (not c!152879)) b!939651))

(assert (= (and b!939651 (not res!426775)) b!939650))

(assert (= (and b!939650 res!426774) b!939644))

(assert (= (and b!939644 res!426777) b!939647))

(assert (= (and b!939647 res!426781) b!939643))

(assert (= (and b!939650 (not res!426776)) b!939646))

(assert (= (and b!939646 res!426779) b!939648))

(assert (= (and b!939648 (not res!426780)) b!939652))

(assert (= (and b!939652 (not res!426778)) b!939645))

(assert (= (or b!939642 b!939644 b!939648) bm!58438))

(declare-fun m!1157419 () Bool)

(assert (=> b!939639 m!1157419))

(declare-fun m!1157421 () Bool)

(assert (=> b!939647 m!1157421))

(assert (=> b!939647 m!1157421))

(declare-fun m!1157423 () Bool)

(assert (=> b!939647 m!1157423))

(assert (=> bm!58438 m!1157257))

(declare-fun m!1157425 () Bool)

(assert (=> b!939645 m!1157425))

(assert (=> b!939652 m!1157421))

(assert (=> b!939652 m!1157421))

(assert (=> b!939652 m!1157423))

(assert (=> d!282316 m!1157257))

(assert (=> d!282316 m!1157239))

(assert (=> b!939641 m!1157425))

(assert (=> b!939641 m!1157425))

(declare-fun m!1157427 () Bool)

(assert (=> b!939641 m!1157427))

(assert (=> b!939641 m!1157421))

(assert (=> b!939641 m!1157427))

(assert (=> b!939641 m!1157421))

(declare-fun m!1157429 () Bool)

(assert (=> b!939641 m!1157429))

(assert (=> b!939643 m!1157425))

(assert (=> b!939317 d!282316))

(declare-fun d!282326 () Bool)

(assert (=> d!282326 (= (matchR!1114 r!15766 s!10566) (matchRSpec!377 r!15766 s!10566))))

(declare-fun lt!342044 () Unit!14771)

(assert (=> d!282326 (= lt!342044 (choose!5807 r!15766 s!10566))))

(assert (=> d!282326 (validRegex!1045 r!15766)))

(assert (=> d!282326 (= (mainMatchTheorem!377 r!15766 s!10566) lt!342044)))

(declare-fun bs!238531 () Bool)

(assert (= bs!238531 d!282326))

(assert (=> bs!238531 m!1157243))

(assert (=> bs!238531 m!1157241))

(declare-fun m!1157431 () Bool)

(assert (=> bs!238531 m!1157431))

(assert (=> bs!238531 m!1157239))

(assert (=> b!939317 d!282326))

(declare-fun b!939664 () Bool)

(declare-fun e!609744 () Bool)

(declare-fun lt!342047 () List!9806)

(assert (=> b!939664 (= e!609744 (or (not (= s!10566 Nil!9790)) (= lt!342047 Nil!9790)))))

(declare-fun d!282328 () Bool)

(assert (=> d!282328 e!609744))

(declare-fun res!426786 () Bool)

(assert (=> d!282328 (=> (not res!426786) (not e!609744))))

(declare-fun content!1388 (List!9806) (Set C!5722))

(assert (=> d!282328 (= res!426786 (= (content!1388 lt!342047) (set.union (content!1388 Nil!9790) (content!1388 s!10566))))))

(declare-fun e!609745 () List!9806)

(assert (=> d!282328 (= lt!342047 e!609745)))

(declare-fun c!152884 () Bool)

(assert (=> d!282328 (= c!152884 (is-Nil!9790 Nil!9790))))

(assert (=> d!282328 (= (++!2598 Nil!9790 s!10566) lt!342047)))

(declare-fun b!939663 () Bool)

(declare-fun res!426787 () Bool)

(assert (=> b!939663 (=> (not res!426787) (not e!609744))))

(declare-fun size!7889 (List!9806) Int)

(assert (=> b!939663 (= res!426787 (= (size!7889 lt!342047) (+ (size!7889 Nil!9790) (size!7889 s!10566))))))

(declare-fun b!939662 () Bool)

(assert (=> b!939662 (= e!609745 (Cons!9790 (h!15191 Nil!9790) (++!2598 (t!100852 Nil!9790) s!10566)))))

(declare-fun b!939661 () Bool)

(assert (=> b!939661 (= e!609745 s!10566)))

(assert (= (and d!282328 c!152884) b!939661))

(assert (= (and d!282328 (not c!152884)) b!939662))

(assert (= (and d!282328 res!426786) b!939663))

(assert (= (and b!939663 res!426787) b!939664))

(declare-fun m!1157433 () Bool)

(assert (=> d!282328 m!1157433))

(declare-fun m!1157435 () Bool)

(assert (=> d!282328 m!1157435))

(declare-fun m!1157437 () Bool)

(assert (=> d!282328 m!1157437))

(declare-fun m!1157439 () Bool)

(assert (=> b!939663 m!1157439))

(declare-fun m!1157441 () Bool)

(assert (=> b!939663 m!1157441))

(declare-fun m!1157443 () Bool)

(assert (=> b!939663 m!1157443))

(declare-fun m!1157445 () Bool)

(assert (=> b!939662 m!1157445))

(assert (=> b!939316 d!282328))

(declare-fun bm!58439 () Bool)

(declare-fun call!58446 () Bool)

(declare-fun c!152886 () Bool)

(assert (=> bm!58439 (= call!58446 (validRegex!1045 (ite c!152886 (regTwo!5665 r!15766) (regTwo!5664 r!15766))))))

(declare-fun b!939666 () Bool)

(declare-fun e!609748 () Bool)

(declare-fun e!609752 () Bool)

(assert (=> b!939666 (= e!609748 e!609752)))

(assert (=> b!939666 (= c!152886 (is-Union!2576 r!15766))))

(declare-fun b!939667 () Bool)

(declare-fun e!609747 () Bool)

(assert (=> b!939667 (= e!609747 call!58446)))

(declare-fun b!939668 () Bool)

(declare-fun e!609750 () Bool)

(declare-fun e!609746 () Bool)

(assert (=> b!939668 (= e!609750 e!609746)))

(declare-fun res!426790 () Bool)

(assert (=> b!939668 (=> (not res!426790) (not e!609746))))

(declare-fun call!58444 () Bool)

(assert (=> b!939668 (= res!426790 call!58444)))

(declare-fun b!939669 () Bool)

(declare-fun e!609751 () Bool)

(assert (=> b!939669 (= e!609751 e!609748)))

(declare-fun c!152885 () Bool)

(assert (=> b!939669 (= c!152885 (is-Star!2576 r!15766))))

(declare-fun bm!58440 () Bool)

(declare-fun call!58445 () Bool)

(assert (=> bm!58440 (= call!58444 call!58445)))

(declare-fun bm!58441 () Bool)

(assert (=> bm!58441 (= call!58445 (validRegex!1045 (ite c!152885 (reg!2905 r!15766) (ite c!152886 (regOne!5665 r!15766) (regOne!5664 r!15766)))))))

(declare-fun b!939670 () Bool)

(assert (=> b!939670 (= e!609746 call!58446)))

(declare-fun b!939671 () Bool)

(declare-fun e!609749 () Bool)

(assert (=> b!939671 (= e!609749 call!58445)))

(declare-fun b!939665 () Bool)

(assert (=> b!939665 (= e!609748 e!609749)))

(declare-fun res!426791 () Bool)

(assert (=> b!939665 (= res!426791 (not (nullable!746 (reg!2905 r!15766))))))

(assert (=> b!939665 (=> (not res!426791) (not e!609749))))

(declare-fun d!282330 () Bool)

(declare-fun res!426789 () Bool)

(assert (=> d!282330 (=> res!426789 e!609751)))

(assert (=> d!282330 (= res!426789 (is-ElementMatch!2576 r!15766))))

(assert (=> d!282330 (= (validRegex!1045 r!15766) e!609751)))

(declare-fun b!939672 () Bool)

(declare-fun res!426792 () Bool)

(assert (=> b!939672 (=> (not res!426792) (not e!609747))))

(assert (=> b!939672 (= res!426792 call!58444)))

(assert (=> b!939672 (= e!609752 e!609747)))

(declare-fun b!939673 () Bool)

(declare-fun res!426788 () Bool)

(assert (=> b!939673 (=> res!426788 e!609750)))

(assert (=> b!939673 (= res!426788 (not (is-Concat!4409 r!15766)))))

(assert (=> b!939673 (= e!609752 e!609750)))

(assert (= (and d!282330 (not res!426789)) b!939669))

(assert (= (and b!939669 c!152885) b!939665))

(assert (= (and b!939669 (not c!152885)) b!939666))

(assert (= (and b!939665 res!426791) b!939671))

(assert (= (and b!939666 c!152886) b!939672))

(assert (= (and b!939666 (not c!152886)) b!939673))

(assert (= (and b!939672 res!426792) b!939667))

(assert (= (and b!939673 (not res!426788)) b!939668))

(assert (= (and b!939668 res!426790) b!939670))

(assert (= (or b!939667 b!939670) bm!58439))

(assert (= (or b!939672 b!939668) bm!58440))

(assert (= (or b!939671 bm!58440) bm!58441))

(declare-fun m!1157447 () Bool)

(assert (=> bm!58439 m!1157447))

(declare-fun m!1157449 () Bool)

(assert (=> bm!58441 m!1157449))

(declare-fun m!1157451 () Bool)

(assert (=> b!939665 m!1157451))

(assert (=> start!83884 d!282330))

(declare-fun d!282332 () Bool)

(assert (=> d!282332 (= (Exists!327 lambda!31488) (choose!5806 lambda!31488))))

(declare-fun bs!238532 () Bool)

(assert (= bs!238532 d!282332))

(declare-fun m!1157453 () Bool)

(assert (=> bs!238532 m!1157453))

(assert (=> b!939318 d!282332))

(declare-fun bs!238533 () Bool)

(declare-fun d!282334 () Bool)

(assert (= bs!238533 (and d!282334 d!282300)))

(declare-fun lambda!31530 () Int)

(assert (=> bs!238533 (= (and (= (reg!2905 r!15766) lt!341983) (= (Star!2576 (reg!2905 r!15766)) lt!341980)) (= lambda!31530 lambda!31527))))

(declare-fun bs!238534 () Bool)

(assert (= bs!238534 (and d!282334 b!939319)))

(assert (=> bs!238534 (not (= lambda!31530 lambda!31490))))

(declare-fun bs!238535 () Bool)

(assert (= bs!238535 (and d!282334 b!939590)))

(assert (=> bs!238535 (not (= lambda!31530 lambda!31528))))

(declare-fun bs!238536 () Bool)

(assert (= bs!238536 (and d!282334 b!939471)))

(assert (=> bs!238536 (not (= lambda!31530 lambda!31522))))

(declare-fun bs!238537 () Bool)

(assert (= bs!238537 (and d!282334 b!939318)))

(assert (=> bs!238537 (= (= (Star!2576 (reg!2905 r!15766)) lt!341979) (= lambda!31530 lambda!31487))))

(declare-fun bs!238538 () Bool)

(assert (= bs!238538 (and d!282334 d!282290)))

(assert (=> bs!238538 (not (= lambda!31530 lambda!31512))))

(assert (=> bs!238537 (not (= lambda!31530 lambda!31488))))

(assert (=> bs!238534 (= (and (= (reg!2905 r!15766) lt!341983) (= (Star!2576 (reg!2905 r!15766)) lt!341980)) (= lambda!31530 lambda!31489))))

(declare-fun bs!238539 () Bool)

(assert (= bs!238539 (and d!282334 b!939468)))

(assert (=> bs!238539 (not (= lambda!31530 lambda!31521))))

(declare-fun bs!238540 () Bool)

(assert (= bs!238540 (and d!282334 b!939593)))

(assert (=> bs!238540 (not (= lambda!31530 lambda!31529))))

(assert (=> bs!238538 (= (and (= (reg!2905 r!15766) lt!341983) (= (Star!2576 (reg!2905 r!15766)) (Star!2576 lt!341983))) (= lambda!31530 lambda!31511))))

(assert (=> d!282334 true))

(assert (=> d!282334 true))

(declare-fun lambda!31531 () Int)

(assert (=> bs!238533 (not (= lambda!31531 lambda!31527))))

(assert (=> bs!238534 (= (and (= (reg!2905 r!15766) lt!341983) (= (Star!2576 (reg!2905 r!15766)) lt!341980)) (= lambda!31531 lambda!31490))))

(assert (=> bs!238535 (= (= (Star!2576 (reg!2905 r!15766)) r!15766) (= lambda!31531 lambda!31528))))

(assert (=> bs!238536 (not (= lambda!31531 lambda!31522))))

(declare-fun bs!238541 () Bool)

(assert (= bs!238541 d!282334))

(assert (=> bs!238541 (not (= lambda!31531 lambda!31530))))

(assert (=> bs!238537 (not (= lambda!31531 lambda!31487))))

(assert (=> bs!238538 (= (and (= (reg!2905 r!15766) lt!341983) (= (Star!2576 (reg!2905 r!15766)) (Star!2576 lt!341983))) (= lambda!31531 lambda!31512))))

(assert (=> bs!238537 (= (= (Star!2576 (reg!2905 r!15766)) lt!341979) (= lambda!31531 lambda!31488))))

(assert (=> bs!238534 (not (= lambda!31531 lambda!31489))))

(assert (=> bs!238539 (= (and (= (reg!2905 r!15766) (reg!2905 lt!341980)) (= (Star!2576 (reg!2905 r!15766)) lt!341980)) (= lambda!31531 lambda!31521))))

(assert (=> bs!238540 (not (= lambda!31531 lambda!31529))))

(assert (=> bs!238538 (not (= lambda!31531 lambda!31511))))

(assert (=> d!282334 true))

(assert (=> d!282334 true))

(assert (=> d!282334 (= (Exists!327 lambda!31530) (Exists!327 lambda!31531))))

(declare-fun lt!342048 () Unit!14771)

(assert (=> d!282334 (= lt!342048 (choose!5805 (reg!2905 r!15766) s!10566))))

(assert (=> d!282334 (validRegex!1045 (reg!2905 r!15766))))

(assert (=> d!282334 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!71 (reg!2905 r!15766) s!10566) lt!342048)))

(declare-fun m!1157455 () Bool)

(assert (=> bs!238541 m!1157455))

(declare-fun m!1157457 () Bool)

(assert (=> bs!238541 m!1157457))

(declare-fun m!1157459 () Bool)

(assert (=> bs!238541 m!1157459))

(declare-fun m!1157461 () Bool)

(assert (=> bs!238541 m!1157461))

(assert (=> b!939318 d!282334))

(declare-fun b!939674 () Bool)

(declare-fun e!609755 () Bool)

(assert (=> b!939674 (= e!609755 (nullable!746 lt!341980))))

(declare-fun b!939675 () Bool)

(declare-fun e!609757 () Bool)

(declare-fun e!609759 () Bool)

(assert (=> b!939675 (= e!609757 e!609759)))

(declare-fun c!152887 () Bool)

(assert (=> b!939675 (= c!152887 (is-EmptyLang!2576 lt!341980))))

(declare-fun b!939676 () Bool)

(assert (=> b!939676 (= e!609755 (matchR!1114 (derivativeStep!555 lt!341980 (head!1708 s!10566)) (tail!1270 s!10566)))))

(declare-fun b!939677 () Bool)

(declare-fun lt!342049 () Bool)

(declare-fun call!58447 () Bool)

(assert (=> b!939677 (= e!609757 (= lt!342049 call!58447))))

(declare-fun bm!58442 () Bool)

(assert (=> bm!58442 (= call!58447 (isEmpty!6033 s!10566))))

(declare-fun d!282336 () Bool)

(assert (=> d!282336 e!609757))

(declare-fun c!152889 () Bool)

(assert (=> d!282336 (= c!152889 (is-EmptyExpr!2576 lt!341980))))

(assert (=> d!282336 (= lt!342049 e!609755)))

(declare-fun c!152888 () Bool)

(assert (=> d!282336 (= c!152888 (isEmpty!6033 s!10566))))

(assert (=> d!282336 (validRegex!1045 lt!341980)))

(assert (=> d!282336 (= (matchR!1114 lt!341980 s!10566) lt!342049)))

(declare-fun b!939678 () Bool)

(declare-fun e!609753 () Bool)

(assert (=> b!939678 (= e!609753 (= (head!1708 s!10566) (c!152819 lt!341980)))))

(declare-fun b!939679 () Bool)

(declare-fun res!426796 () Bool)

(assert (=> b!939679 (=> (not res!426796) (not e!609753))))

(assert (=> b!939679 (= res!426796 (not call!58447))))

(declare-fun b!939680 () Bool)

(declare-fun e!609758 () Bool)

(assert (=> b!939680 (= e!609758 (not (= (head!1708 s!10566) (c!152819 lt!341980))))))

(declare-fun b!939681 () Bool)

(declare-fun e!609754 () Bool)

(declare-fun e!609756 () Bool)

(assert (=> b!939681 (= e!609754 e!609756)))

(declare-fun res!426798 () Bool)

(assert (=> b!939681 (=> (not res!426798) (not e!609756))))

(assert (=> b!939681 (= res!426798 (not lt!342049))))

(declare-fun b!939682 () Bool)

(declare-fun res!426800 () Bool)

(assert (=> b!939682 (=> (not res!426800) (not e!609753))))

(assert (=> b!939682 (= res!426800 (isEmpty!6033 (tail!1270 s!10566)))))

(declare-fun b!939683 () Bool)

(assert (=> b!939683 (= e!609756 e!609758)))

(declare-fun res!426799 () Bool)

(assert (=> b!939683 (=> res!426799 e!609758)))

(assert (=> b!939683 (= res!426799 call!58447)))

(declare-fun b!939684 () Bool)

(assert (=> b!939684 (= e!609759 (not lt!342049))))

(declare-fun b!939685 () Bool)

(declare-fun res!426795 () Bool)

(assert (=> b!939685 (=> res!426795 e!609754)))

(assert (=> b!939685 (= res!426795 e!609753)))

(declare-fun res!426793 () Bool)

(assert (=> b!939685 (=> (not res!426793) (not e!609753))))

(assert (=> b!939685 (= res!426793 lt!342049)))

(declare-fun b!939686 () Bool)

(declare-fun res!426794 () Bool)

(assert (=> b!939686 (=> res!426794 e!609754)))

(assert (=> b!939686 (= res!426794 (not (is-ElementMatch!2576 lt!341980)))))

(assert (=> b!939686 (= e!609759 e!609754)))

(declare-fun b!939687 () Bool)

(declare-fun res!426797 () Bool)

(assert (=> b!939687 (=> res!426797 e!609758)))

(assert (=> b!939687 (= res!426797 (not (isEmpty!6033 (tail!1270 s!10566))))))

(assert (= (and d!282336 c!152888) b!939674))

(assert (= (and d!282336 (not c!152888)) b!939676))

(assert (= (and d!282336 c!152889) b!939677))

(assert (= (and d!282336 (not c!152889)) b!939675))

(assert (= (and b!939675 c!152887) b!939684))

(assert (= (and b!939675 (not c!152887)) b!939686))

(assert (= (and b!939686 (not res!426794)) b!939685))

(assert (= (and b!939685 res!426793) b!939679))

(assert (= (and b!939679 res!426796) b!939682))

(assert (= (and b!939682 res!426800) b!939678))

(assert (= (and b!939685 (not res!426795)) b!939681))

(assert (= (and b!939681 res!426798) b!939683))

(assert (= (and b!939683 (not res!426799)) b!939687))

(assert (= (and b!939687 (not res!426797)) b!939680))

(assert (= (or b!939677 b!939679 b!939683) bm!58442))

(declare-fun m!1157463 () Bool)

(assert (=> b!939674 m!1157463))

(assert (=> b!939682 m!1157421))

(assert (=> b!939682 m!1157421))

(assert (=> b!939682 m!1157423))

(assert (=> bm!58442 m!1157257))

(assert (=> b!939680 m!1157425))

(assert (=> b!939687 m!1157421))

(assert (=> b!939687 m!1157421))

(assert (=> b!939687 m!1157423))

(assert (=> d!282336 m!1157257))

(assert (=> d!282336 m!1157265))

(assert (=> b!939676 m!1157425))

(assert (=> b!939676 m!1157425))

(declare-fun m!1157465 () Bool)

(assert (=> b!939676 m!1157465))

(assert (=> b!939676 m!1157421))

(assert (=> b!939676 m!1157465))

(assert (=> b!939676 m!1157421))

(declare-fun m!1157467 () Bool)

(assert (=> b!939676 m!1157467))

(assert (=> b!939678 m!1157425))

(assert (=> b!939318 d!282336))

(declare-fun b!939710 () Bool)

(declare-fun e!609775 () Regex!2576)

(declare-fun call!58461 () Regex!2576)

(assert (=> b!939710 (= e!609775 call!58461)))

(declare-fun b!939711 () Bool)

(declare-fun e!609773 () Bool)

(declare-fun lt!342052 () Regex!2576)

(assert (=> b!939711 (= e!609773 (= (nullable!746 lt!342052) (nullable!746 (reg!2905 r!15766))))))

(declare-fun b!939712 () Bool)

(declare-fun c!152903 () Bool)

(assert (=> b!939712 (= c!152903 (is-Concat!4409 (reg!2905 r!15766)))))

(declare-fun e!609777 () Regex!2576)

(declare-fun e!609776 () Regex!2576)

(assert (=> b!939712 (= e!609777 e!609776)))

(declare-fun b!939713 () Bool)

(assert (=> b!939713 (= e!609775 e!609777)))

(declare-fun c!152902 () Bool)

(assert (=> b!939713 (= c!152902 (and (is-Concat!4409 (reg!2905 r!15766)) (is-EmptyExpr!2576 (regTwo!5664 (reg!2905 r!15766)))))))

(declare-fun bm!58453 () Bool)

(declare-fun call!58458 () Regex!2576)

(assert (=> bm!58453 (= call!58458 call!58461)))

(declare-fun b!939714 () Bool)

(assert (=> b!939714 (= e!609777 call!58458)))

(declare-fun b!939715 () Bool)

(declare-fun call!58460 () Regex!2576)

(declare-fun call!58459 () Regex!2576)

(assert (=> b!939715 (= e!609776 (Concat!4409 call!58460 call!58459))))

(declare-fun b!939716 () Bool)

(declare-fun e!609774 () Regex!2576)

(assert (=> b!939716 (= e!609774 (reg!2905 r!15766))))

(declare-fun d!282338 () Bool)

(assert (=> d!282338 e!609773))

(declare-fun res!426803 () Bool)

(assert (=> d!282338 (=> (not res!426803) (not e!609773))))

(assert (=> d!282338 (= res!426803 (validRegex!1045 lt!342052))))

(assert (=> d!282338 (= lt!342052 e!609775)))

(declare-fun c!152904 () Bool)

(assert (=> d!282338 (= c!152904 (and (is-Concat!4409 (reg!2905 r!15766)) (is-EmptyExpr!2576 (regOne!5664 (reg!2905 r!15766)))))))

(assert (=> d!282338 (validRegex!1045 (reg!2905 r!15766))))

(assert (=> d!282338 (= (removeUselessConcat!245 (reg!2905 r!15766)) lt!342052)))

(declare-fun b!939717 () Bool)

(declare-fun call!58462 () Regex!2576)

(assert (=> b!939717 (= e!609774 (Star!2576 call!58462))))

(declare-fun b!939718 () Bool)

(declare-fun c!152900 () Bool)

(assert (=> b!939718 (= c!152900 (is-Star!2576 (reg!2905 r!15766)))))

(declare-fun e!609772 () Regex!2576)

(assert (=> b!939718 (= e!609772 e!609774)))

(declare-fun bm!58454 () Bool)

(assert (=> bm!58454 (= call!58460 (removeUselessConcat!245 (ite c!152903 (regOne!5664 (reg!2905 r!15766)) (regOne!5665 (reg!2905 r!15766)))))))

(declare-fun b!939719 () Bool)

(assert (=> b!939719 (= e!609772 (Union!2576 call!58460 call!58462))))

(declare-fun b!939720 () Bool)

(assert (=> b!939720 (= e!609776 e!609772)))

(declare-fun c!152901 () Bool)

(assert (=> b!939720 (= c!152901 (is-Union!2576 (reg!2905 r!15766)))))

(declare-fun bm!58455 () Bool)

(assert (=> bm!58455 (= call!58462 call!58459)))

(declare-fun bm!58456 () Bool)

(assert (=> bm!58456 (= call!58459 call!58458)))

(declare-fun bm!58457 () Bool)

(assert (=> bm!58457 (= call!58461 (removeUselessConcat!245 (ite c!152904 (regTwo!5664 (reg!2905 r!15766)) (ite c!152902 (regOne!5664 (reg!2905 r!15766)) (ite c!152903 (regTwo!5664 (reg!2905 r!15766)) (ite c!152901 (regTwo!5665 (reg!2905 r!15766)) (reg!2905 (reg!2905 r!15766))))))))))

(assert (= (and d!282338 c!152904) b!939710))

(assert (= (and d!282338 (not c!152904)) b!939713))

(assert (= (and b!939713 c!152902) b!939714))

(assert (= (and b!939713 (not c!152902)) b!939712))

(assert (= (and b!939712 c!152903) b!939715))

(assert (= (and b!939712 (not c!152903)) b!939720))

(assert (= (and b!939720 c!152901) b!939719))

(assert (= (and b!939720 (not c!152901)) b!939718))

(assert (= (and b!939718 c!152900) b!939717))

(assert (= (and b!939718 (not c!152900)) b!939716))

(assert (= (or b!939719 b!939717) bm!58455))

(assert (= (or b!939715 bm!58455) bm!58456))

(assert (= (or b!939715 b!939719) bm!58454))

(assert (= (or b!939714 bm!58456) bm!58453))

(assert (= (or b!939710 bm!58453) bm!58457))

(assert (= (and d!282338 res!426803) b!939711))

(declare-fun m!1157469 () Bool)

(assert (=> b!939711 m!1157469))

(assert (=> b!939711 m!1157451))

(declare-fun m!1157471 () Bool)

(assert (=> d!282338 m!1157471))

(assert (=> d!282338 m!1157461))

(declare-fun m!1157473 () Bool)

(assert (=> bm!58454 m!1157473))

(declare-fun m!1157475 () Bool)

(assert (=> bm!58457 m!1157475))

(assert (=> b!939318 d!282338))

(declare-fun d!282340 () Bool)

(assert (=> d!282340 (= (Exists!327 lambda!31487) (choose!5806 lambda!31487))))

(declare-fun bs!238542 () Bool)

(assert (= bs!238542 d!282340))

(declare-fun m!1157477 () Bool)

(assert (=> bs!238542 m!1157477))

(assert (=> b!939318 d!282340))

(declare-fun d!282342 () Bool)

(assert (=> d!282342 (= (isDefined!1809 (findConcatSeparation!273 (reg!2905 r!15766) lt!341979 Nil!9790 s!10566 s!10566)) (not (isEmpty!6035 (findConcatSeparation!273 (reg!2905 r!15766) lt!341979 Nil!9790 s!10566 s!10566))))))

(declare-fun bs!238543 () Bool)

(assert (= bs!238543 d!282342))

(assert (=> bs!238543 m!1157275))

(declare-fun m!1157479 () Bool)

(assert (=> bs!238543 m!1157479))

(assert (=> b!939318 d!282342))

(declare-fun bs!238544 () Bool)

(declare-fun d!282344 () Bool)

(assert (= bs!238544 (and d!282344 d!282300)))

(declare-fun lambda!31532 () Int)

(assert (=> bs!238544 (= (and (= (reg!2905 r!15766) lt!341983) (= lt!341979 lt!341980)) (= lambda!31532 lambda!31527))))

(declare-fun bs!238545 () Bool)

(assert (= bs!238545 (and d!282344 b!939319)))

(assert (=> bs!238545 (not (= lambda!31532 lambda!31490))))

(declare-fun bs!238546 () Bool)

(assert (= bs!238546 (and d!282344 d!282334)))

(assert (=> bs!238546 (not (= lambda!31532 lambda!31531))))

(declare-fun bs!238547 () Bool)

(assert (= bs!238547 (and d!282344 b!939590)))

(assert (=> bs!238547 (not (= lambda!31532 lambda!31528))))

(declare-fun bs!238548 () Bool)

(assert (= bs!238548 (and d!282344 b!939471)))

(assert (=> bs!238548 (not (= lambda!31532 lambda!31522))))

(assert (=> bs!238546 (= (= lt!341979 (Star!2576 (reg!2905 r!15766))) (= lambda!31532 lambda!31530))))

(declare-fun bs!238549 () Bool)

(assert (= bs!238549 (and d!282344 b!939318)))

(assert (=> bs!238549 (= lambda!31532 lambda!31487)))

(declare-fun bs!238550 () Bool)

(assert (= bs!238550 (and d!282344 d!282290)))

(assert (=> bs!238550 (not (= lambda!31532 lambda!31512))))

(assert (=> bs!238549 (not (= lambda!31532 lambda!31488))))

(assert (=> bs!238545 (= (and (= (reg!2905 r!15766) lt!341983) (= lt!341979 lt!341980)) (= lambda!31532 lambda!31489))))

(declare-fun bs!238551 () Bool)

(assert (= bs!238551 (and d!282344 b!939468)))

(assert (=> bs!238551 (not (= lambda!31532 lambda!31521))))

(declare-fun bs!238552 () Bool)

(assert (= bs!238552 (and d!282344 b!939593)))

(assert (=> bs!238552 (not (= lambda!31532 lambda!31529))))

(assert (=> bs!238550 (= (and (= (reg!2905 r!15766) lt!341983) (= lt!341979 (Star!2576 lt!341983))) (= lambda!31532 lambda!31511))))

(assert (=> d!282344 true))

(assert (=> d!282344 true))

(assert (=> d!282344 true))

(assert (=> d!282344 (= (isDefined!1809 (findConcatSeparation!273 (reg!2905 r!15766) lt!341979 Nil!9790 s!10566 s!10566)) (Exists!327 lambda!31532))))

(declare-fun lt!342059 () Unit!14771)

(assert (=> d!282344 (= lt!342059 (choose!5808 (reg!2905 r!15766) lt!341979 s!10566))))

(assert (=> d!282344 (validRegex!1045 (reg!2905 r!15766))))

(assert (=> d!282344 (= (lemmaFindConcatSeparationEquivalentToExists!273 (reg!2905 r!15766) lt!341979 s!10566) lt!342059)))

(declare-fun bs!238553 () Bool)

(assert (= bs!238553 d!282344))

(assert (=> bs!238553 m!1157275))

(assert (=> bs!238553 m!1157275))

(assert (=> bs!238553 m!1157281))

(declare-fun m!1157481 () Bool)

(assert (=> bs!238553 m!1157481))

(assert (=> bs!238553 m!1157461))

(declare-fun m!1157483 () Bool)

(assert (=> bs!238553 m!1157483))

(assert (=> b!939318 d!282344))

(declare-fun b!939739 () Bool)

(declare-fun lt!342061 () Unit!14771)

(declare-fun lt!342060 () Unit!14771)

(assert (=> b!939739 (= lt!342061 lt!342060)))

(assert (=> b!939739 (= (++!2598 (++!2598 Nil!9790 (Cons!9790 (h!15191 s!10566) Nil!9790)) (t!100852 s!10566)) s!10566)))

(assert (=> b!939739 (= lt!342060 (lemmaMoveElementToOtherListKeepsConcatEq!211 Nil!9790 (h!15191 s!10566) (t!100852 s!10566) s!10566))))

(declare-fun e!609789 () Option!2167)

(assert (=> b!939739 (= e!609789 (findConcatSeparation!273 (reg!2905 r!15766) lt!341979 (++!2598 Nil!9790 (Cons!9790 (h!15191 s!10566) Nil!9790)) (t!100852 s!10566) s!10566))))

(declare-fun b!939740 () Bool)

(declare-fun e!609788 () Bool)

(assert (=> b!939740 (= e!609788 (matchR!1114 lt!341979 s!10566))))

(declare-fun b!939741 () Bool)

(declare-fun res!426814 () Bool)

(declare-fun e!609792 () Bool)

(assert (=> b!939741 (=> (not res!426814) (not e!609792))))

(declare-fun lt!342062 () Option!2167)

(assert (=> b!939741 (= res!426814 (matchR!1114 lt!341979 (_2!6351 (get!3246 lt!342062))))))

(declare-fun d!282346 () Bool)

(declare-fun e!609791 () Bool)

(assert (=> d!282346 e!609791))

(declare-fun res!426817 () Bool)

(assert (=> d!282346 (=> res!426817 e!609791)))

(assert (=> d!282346 (= res!426817 e!609792)))

(declare-fun res!426818 () Bool)

(assert (=> d!282346 (=> (not res!426818) (not e!609792))))

(assert (=> d!282346 (= res!426818 (isDefined!1809 lt!342062))))

(declare-fun e!609790 () Option!2167)

(assert (=> d!282346 (= lt!342062 e!609790)))

(declare-fun c!152909 () Bool)

(assert (=> d!282346 (= c!152909 e!609788)))

(declare-fun res!426815 () Bool)

(assert (=> d!282346 (=> (not res!426815) (not e!609788))))

(assert (=> d!282346 (= res!426815 (matchR!1114 (reg!2905 r!15766) Nil!9790))))

(assert (=> d!282346 (validRegex!1045 (reg!2905 r!15766))))

(assert (=> d!282346 (= (findConcatSeparation!273 (reg!2905 r!15766) lt!341979 Nil!9790 s!10566 s!10566) lt!342062)))

(declare-fun b!939742 () Bool)

(assert (=> b!939742 (= e!609790 (Some!2166 (tuple2!11051 Nil!9790 s!10566)))))

(declare-fun b!939743 () Bool)

(assert (=> b!939743 (= e!609789 None!2166)))

(declare-fun b!939744 () Bool)

(declare-fun res!426816 () Bool)

(assert (=> b!939744 (=> (not res!426816) (not e!609792))))

(assert (=> b!939744 (= res!426816 (matchR!1114 (reg!2905 r!15766) (_1!6351 (get!3246 lt!342062))))))

(declare-fun b!939745 () Bool)

(assert (=> b!939745 (= e!609790 e!609789)))

(declare-fun c!152910 () Bool)

(assert (=> b!939745 (= c!152910 (is-Nil!9790 s!10566))))

(declare-fun b!939746 () Bool)

(assert (=> b!939746 (= e!609792 (= (++!2598 (_1!6351 (get!3246 lt!342062)) (_2!6351 (get!3246 lt!342062))) s!10566))))

(declare-fun b!939747 () Bool)

(assert (=> b!939747 (= e!609791 (not (isDefined!1809 lt!342062)))))

(assert (= (and d!282346 res!426815) b!939740))

(assert (= (and d!282346 c!152909) b!939742))

(assert (= (and d!282346 (not c!152909)) b!939745))

(assert (= (and b!939745 c!152910) b!939743))

(assert (= (and b!939745 (not c!152910)) b!939739))

(assert (= (and d!282346 res!426818) b!939744))

(assert (= (and b!939744 res!426816) b!939741))

(assert (= (and b!939741 res!426814) b!939746))

(assert (= (and d!282346 (not res!426817)) b!939747))

(declare-fun m!1157485 () Bool)

(assert (=> b!939747 m!1157485))

(assert (=> b!939739 m!1157363))

(assert (=> b!939739 m!1157363))

(assert (=> b!939739 m!1157365))

(assert (=> b!939739 m!1157367))

(assert (=> b!939739 m!1157363))

(declare-fun m!1157487 () Bool)

(assert (=> b!939739 m!1157487))

(declare-fun m!1157489 () Bool)

(assert (=> b!939744 m!1157489))

(declare-fun m!1157491 () Bool)

(assert (=> b!939744 m!1157491))

(assert (=> b!939746 m!1157489))

(declare-fun m!1157493 () Bool)

(assert (=> b!939746 m!1157493))

(declare-fun m!1157495 () Bool)

(assert (=> b!939740 m!1157495))

(assert (=> b!939741 m!1157489))

(declare-fun m!1157497 () Bool)

(assert (=> b!939741 m!1157497))

(assert (=> d!282346 m!1157485))

(declare-fun m!1157499 () Bool)

(assert (=> d!282346 m!1157499))

(assert (=> d!282346 m!1157461))

(assert (=> b!939318 d!282346))

(declare-fun bm!58458 () Bool)

(declare-fun call!58465 () Bool)

(declare-fun c!152912 () Bool)

(assert (=> bm!58458 (= call!58465 (validRegex!1045 (ite c!152912 (regTwo!5665 lt!341980) (regTwo!5664 lt!341980))))))

(declare-fun b!939749 () Bool)

(declare-fun e!609795 () Bool)

(declare-fun e!609799 () Bool)

(assert (=> b!939749 (= e!609795 e!609799)))

(assert (=> b!939749 (= c!152912 (is-Union!2576 lt!341980))))

(declare-fun b!939750 () Bool)

(declare-fun e!609794 () Bool)

(assert (=> b!939750 (= e!609794 call!58465)))

(declare-fun b!939751 () Bool)

(declare-fun e!609797 () Bool)

(declare-fun e!609793 () Bool)

(assert (=> b!939751 (= e!609797 e!609793)))

(declare-fun res!426821 () Bool)

(assert (=> b!939751 (=> (not res!426821) (not e!609793))))

(declare-fun call!58463 () Bool)

(assert (=> b!939751 (= res!426821 call!58463)))

(declare-fun b!939752 () Bool)

(declare-fun e!609798 () Bool)

(assert (=> b!939752 (= e!609798 e!609795)))

(declare-fun c!152911 () Bool)

(assert (=> b!939752 (= c!152911 (is-Star!2576 lt!341980))))

(declare-fun bm!58459 () Bool)

(declare-fun call!58464 () Bool)

(assert (=> bm!58459 (= call!58463 call!58464)))

(declare-fun bm!58460 () Bool)

(assert (=> bm!58460 (= call!58464 (validRegex!1045 (ite c!152911 (reg!2905 lt!341980) (ite c!152912 (regOne!5665 lt!341980) (regOne!5664 lt!341980)))))))

(declare-fun b!939753 () Bool)

(assert (=> b!939753 (= e!609793 call!58465)))

(declare-fun b!939754 () Bool)

(declare-fun e!609796 () Bool)

(assert (=> b!939754 (= e!609796 call!58464)))

(declare-fun b!939748 () Bool)

(assert (=> b!939748 (= e!609795 e!609796)))

(declare-fun res!426822 () Bool)

(assert (=> b!939748 (= res!426822 (not (nullable!746 (reg!2905 lt!341980))))))

(assert (=> b!939748 (=> (not res!426822) (not e!609796))))

(declare-fun d!282348 () Bool)

(declare-fun res!426820 () Bool)

(assert (=> d!282348 (=> res!426820 e!609798)))

(assert (=> d!282348 (= res!426820 (is-ElementMatch!2576 lt!341980))))

(assert (=> d!282348 (= (validRegex!1045 lt!341980) e!609798)))

(declare-fun b!939755 () Bool)

(declare-fun res!426823 () Bool)

(assert (=> b!939755 (=> (not res!426823) (not e!609794))))

(assert (=> b!939755 (= res!426823 call!58463)))

(assert (=> b!939755 (= e!609799 e!609794)))

(declare-fun b!939756 () Bool)

(declare-fun res!426819 () Bool)

(assert (=> b!939756 (=> res!426819 e!609797)))

(assert (=> b!939756 (= res!426819 (not (is-Concat!4409 lt!341980)))))

(assert (=> b!939756 (= e!609799 e!609797)))

(assert (= (and d!282348 (not res!426820)) b!939752))

(assert (= (and b!939752 c!152911) b!939748))

(assert (= (and b!939752 (not c!152911)) b!939749))

(assert (= (and b!939748 res!426822) b!939754))

(assert (= (and b!939749 c!152912) b!939755))

(assert (= (and b!939749 (not c!152912)) b!939756))

(assert (= (and b!939755 res!426823) b!939750))

(assert (= (and b!939756 (not res!426819)) b!939751))

(assert (= (and b!939751 res!426821) b!939753))

(assert (= (or b!939750 b!939753) bm!58458))

(assert (= (or b!939755 b!939751) bm!58459))

(assert (= (or b!939754 bm!58459) bm!58460))

(declare-fun m!1157501 () Bool)

(assert (=> bm!58458 m!1157501))

(declare-fun m!1157503 () Bool)

(assert (=> bm!58460 m!1157503))

(declare-fun m!1157505 () Bool)

(assert (=> b!939748 m!1157505))

(assert (=> b!939312 d!282348))

(declare-fun b!939767 () Bool)

(declare-fun e!609802 () Bool)

(assert (=> b!939767 (= e!609802 tp_is_empty!4795)))

(declare-fun b!939770 () Bool)

(declare-fun tp!290915 () Bool)

(declare-fun tp!290919 () Bool)

(assert (=> b!939770 (= e!609802 (and tp!290915 tp!290919))))

(declare-fun b!939768 () Bool)

(declare-fun tp!290917 () Bool)

(declare-fun tp!290916 () Bool)

(assert (=> b!939768 (= e!609802 (and tp!290917 tp!290916))))

(declare-fun b!939769 () Bool)

(declare-fun tp!290918 () Bool)

(assert (=> b!939769 (= e!609802 tp!290918)))

(assert (=> b!939314 (= tp!290886 e!609802)))

(assert (= (and b!939314 (is-ElementMatch!2576 (reg!2905 r!15766))) b!939767))

(assert (= (and b!939314 (is-Concat!4409 (reg!2905 r!15766))) b!939768))

(assert (= (and b!939314 (is-Star!2576 (reg!2905 r!15766))) b!939769))

(assert (= (and b!939314 (is-Union!2576 (reg!2905 r!15766))) b!939770))

(declare-fun b!939771 () Bool)

(declare-fun e!609803 () Bool)

(assert (=> b!939771 (= e!609803 tp_is_empty!4795)))

(declare-fun b!939774 () Bool)

(declare-fun tp!290920 () Bool)

(declare-fun tp!290924 () Bool)

(assert (=> b!939774 (= e!609803 (and tp!290920 tp!290924))))

(declare-fun b!939772 () Bool)

(declare-fun tp!290922 () Bool)

(declare-fun tp!290921 () Bool)

(assert (=> b!939772 (= e!609803 (and tp!290922 tp!290921))))

(declare-fun b!939773 () Bool)

(declare-fun tp!290923 () Bool)

(assert (=> b!939773 (= e!609803 tp!290923)))

(assert (=> b!939310 (= tp!290883 e!609803)))

(assert (= (and b!939310 (is-ElementMatch!2576 (regOne!5665 r!15766))) b!939771))

(assert (= (and b!939310 (is-Concat!4409 (regOne!5665 r!15766))) b!939772))

(assert (= (and b!939310 (is-Star!2576 (regOne!5665 r!15766))) b!939773))

(assert (= (and b!939310 (is-Union!2576 (regOne!5665 r!15766))) b!939774))

(declare-fun b!939775 () Bool)

(declare-fun e!609804 () Bool)

(assert (=> b!939775 (= e!609804 tp_is_empty!4795)))

(declare-fun b!939778 () Bool)

(declare-fun tp!290925 () Bool)

(declare-fun tp!290929 () Bool)

(assert (=> b!939778 (= e!609804 (and tp!290925 tp!290929))))

(declare-fun b!939776 () Bool)

(declare-fun tp!290927 () Bool)

(declare-fun tp!290926 () Bool)

(assert (=> b!939776 (= e!609804 (and tp!290927 tp!290926))))

(declare-fun b!939777 () Bool)

(declare-fun tp!290928 () Bool)

(assert (=> b!939777 (= e!609804 tp!290928)))

(assert (=> b!939310 (= tp!290884 e!609804)))

(assert (= (and b!939310 (is-ElementMatch!2576 (regTwo!5665 r!15766))) b!939775))

(assert (= (and b!939310 (is-Concat!4409 (regTwo!5665 r!15766))) b!939776))

(assert (= (and b!939310 (is-Star!2576 (regTwo!5665 r!15766))) b!939777))

(assert (= (and b!939310 (is-Union!2576 (regTwo!5665 r!15766))) b!939778))

(declare-fun b!939783 () Bool)

(declare-fun e!609807 () Bool)

(declare-fun tp!290932 () Bool)

(assert (=> b!939783 (= e!609807 (and tp_is_empty!4795 tp!290932))))

(assert (=> b!939320 (= tp!290885 e!609807)))

(assert (= (and b!939320 (is-Cons!9790 (t!100852 s!10566))) b!939783))

(declare-fun b!939784 () Bool)

(declare-fun e!609808 () Bool)

(assert (=> b!939784 (= e!609808 tp_is_empty!4795)))

(declare-fun b!939787 () Bool)

(declare-fun tp!290933 () Bool)

(declare-fun tp!290937 () Bool)

(assert (=> b!939787 (= e!609808 (and tp!290933 tp!290937))))

(declare-fun b!939785 () Bool)

(declare-fun tp!290935 () Bool)

(declare-fun tp!290934 () Bool)

(assert (=> b!939785 (= e!609808 (and tp!290935 tp!290934))))

(declare-fun b!939786 () Bool)

(declare-fun tp!290936 () Bool)

(assert (=> b!939786 (= e!609808 tp!290936)))

(assert (=> b!939311 (= tp!290882 e!609808)))

(assert (= (and b!939311 (is-ElementMatch!2576 (regOne!5664 r!15766))) b!939784))

(assert (= (and b!939311 (is-Concat!4409 (regOne!5664 r!15766))) b!939785))

(assert (= (and b!939311 (is-Star!2576 (regOne!5664 r!15766))) b!939786))

(assert (= (and b!939311 (is-Union!2576 (regOne!5664 r!15766))) b!939787))

(declare-fun b!939788 () Bool)

(declare-fun e!609809 () Bool)

(assert (=> b!939788 (= e!609809 tp_is_empty!4795)))

(declare-fun b!939791 () Bool)

(declare-fun tp!290938 () Bool)

(declare-fun tp!290942 () Bool)

(assert (=> b!939791 (= e!609809 (and tp!290938 tp!290942))))

(declare-fun b!939789 () Bool)

(declare-fun tp!290940 () Bool)

(declare-fun tp!290939 () Bool)

(assert (=> b!939789 (= e!609809 (and tp!290940 tp!290939))))

(declare-fun b!939790 () Bool)

(declare-fun tp!290941 () Bool)

(assert (=> b!939790 (= e!609809 tp!290941)))

(assert (=> b!939311 (= tp!290881 e!609809)))

(assert (= (and b!939311 (is-ElementMatch!2576 (regTwo!5664 r!15766))) b!939788))

(assert (= (and b!939311 (is-Concat!4409 (regTwo!5664 r!15766))) b!939789))

(assert (= (and b!939311 (is-Star!2576 (regTwo!5664 r!15766))) b!939790))

(assert (= (and b!939311 (is-Union!2576 (regTwo!5664 r!15766))) b!939791))

(push 1)

(assert (not b!939774))

(assert (not bm!58416))

(assert (not b!939467))

(assert (not bm!58454))

(assert (not bm!58460))

(assert (not b!939645))

(assert (not d!282294))

(assert (not bm!58457))

(assert (not d!282340))

(assert (not b!939748))

(assert (not b!939740))

(assert (not bm!58439))

(assert (not b!939747))

(assert (not b!939739))

(assert (not b!939652))

(assert (not b!939768))

(assert (not d!282290))

(assert (not b!939544))

(assert (not b!939785))

(assert (not b!939541))

(assert (not b!939665))

(assert (not b!939687))

(assert (not d!282332))

(assert (not b!939682))

(assert (not b!939639))

(assert (not b!939543))

(assert (not bm!58431))

(assert (not b!939589))

(assert (not b!939787))

(assert (not b!939744))

(assert (not d!282304))

(assert (not b!939647))

(assert (not b!939778))

(assert (not b!939777))

(assert (not bm!58438))

(assert (not bm!58441))

(assert (not b!939662))

(assert (not b!939536))

(assert (not b!939711))

(assert (not b!939769))

(assert (not d!282336))

(assert (not bm!58415))

(assert (not b!939680))

(assert (not bm!58458))

(assert (not b!939791))

(assert (not b!939790))

(assert (not d!282342))

(assert (not bm!58433))

(assert (not b!939643))

(assert (not d!282328))

(assert (not b!939678))

(assert (not b!939770))

(assert (not b!939641))

(assert (not b!939783))

(assert (not b!939563))

(assert (not d!282346))

(assert tp_is_empty!4795)

(assert (not b!939773))

(assert (not b!939746))

(assert (not b!939470))

(assert (not b!939676))

(assert (not b!939772))

(assert (not b!939592))

(assert (not d!282316))

(assert (not d!282338))

(assert (not b!939786))

(assert (not d!282300))

(assert (not b!939674))

(assert (not b!939789))

(assert (not d!282334))

(assert (not bm!58434))

(assert (not d!282298))

(assert (not b!939663))

(assert (not bm!58429))

(assert (not b!939776))

(assert (not d!282288))

(assert (not d!282308))

(assert (not b!939741))

(assert (not d!282326))

(assert (not d!282344))

(assert (not bm!58442))

(assert (not b!939538))

(assert (not b!939537))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

