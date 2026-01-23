; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79576 () Bool)

(assert start!79576)

(declare-fun b!880636 () Bool)

(assert (=> b!880636 true))

(assert (=> b!880636 true))

(declare-fun lambda!26916 () Int)

(declare-fun lambda!26915 () Int)

(assert (=> b!880636 (not (= lambda!26916 lambda!26915))))

(assert (=> b!880636 true))

(assert (=> b!880636 true))

(declare-fun b!880632 () Bool)

(declare-fun e!578160 () Bool)

(declare-fun tp_is_empty!4159 () Bool)

(declare-fun tp!278243 () Bool)

(assert (=> b!880632 (= e!578160 (and tp_is_empty!4159 tp!278243))))

(declare-fun b!880633 () Bool)

(declare-fun e!578158 () Bool)

(declare-fun tp!278244 () Bool)

(declare-fun tp!278241 () Bool)

(assert (=> b!880633 (= e!578158 (and tp!278244 tp!278241))))

(declare-fun b!880634 () Bool)

(declare-fun tp!278245 () Bool)

(declare-fun tp!278242 () Bool)

(assert (=> b!880634 (= e!578158 (and tp!278245 tp!278242))))

(declare-fun b!880635 () Bool)

(declare-fun tp!278246 () Bool)

(assert (=> b!880635 (= e!578158 tp!278246)))

(declare-fun res!400473 () Bool)

(declare-fun e!578156 () Bool)

(assert (=> start!79576 (=> (not res!400473) (not e!578156))))

(declare-datatypes ((C!5086 0))(
  ( (C!5087 (val!2791 Int)) )
))
(declare-datatypes ((Regex!2258 0))(
  ( (ElementMatch!2258 (c!142339 C!5086)) (Concat!4091 (regOne!5028 Regex!2258) (regTwo!5028 Regex!2258)) (EmptyExpr!2258) (Star!2258 (reg!2587 Regex!2258)) (EmptyLang!2258) (Union!2258 (regOne!5029 Regex!2258) (regTwo!5029 Regex!2258)) )
))
(declare-fun r!15766 () Regex!2258)

(declare-fun validRegex!727 (Regex!2258) Bool)

(assert (=> start!79576 (= res!400473 (validRegex!727 r!15766))))

(assert (=> start!79576 e!578156))

(assert (=> start!79576 e!578158))

(assert (=> start!79576 e!578160))

(declare-fun e!578157 () Bool)

(declare-fun e!578159 () Bool)

(assert (=> b!880636 (= e!578157 e!578159)))

(declare-fun res!400471 () Bool)

(assert (=> b!880636 (=> res!400471 e!578159)))

(declare-datatypes ((List!9488 0))(
  ( (Nil!9472) (Cons!9472 (h!14873 C!5086) (t!100534 List!9488)) )
))
(declare-fun s!10566 () List!9488)

(declare-fun isEmpty!5663 (List!9488) Bool)

(assert (=> b!880636 (= res!400471 (not (isEmpty!5663 s!10566)))))

(declare-fun Exists!53 (Int) Bool)

(assert (=> b!880636 (= (Exists!53 lambda!26915) (Exists!53 lambda!26916))))

(declare-datatypes ((Unit!14095 0))(
  ( (Unit!14096) )
))
(declare-fun lt!330629 () Unit!14095)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!43 (Regex!2258 Regex!2258 List!9488) Unit!14095)

(assert (=> b!880636 (= lt!330629 (lemmaExistCutMatchRandMatchRSpecEquivalent!43 (regOne!5028 r!15766) (regTwo!5028 r!15766) s!10566))))

(declare-datatypes ((tuple2!10602 0))(
  ( (tuple2!10603 (_1!6127 List!9488) (_2!6127 List!9488)) )
))
(declare-datatypes ((Option!1943 0))(
  ( (None!1942) (Some!1942 (v!19359 tuple2!10602)) )
))
(declare-fun isDefined!1585 (Option!1943) Bool)

(declare-fun findConcatSeparation!49 (Regex!2258 Regex!2258 List!9488 List!9488 List!9488) Option!1943)

(assert (=> b!880636 (= (isDefined!1585 (findConcatSeparation!49 (regOne!5028 r!15766) (regTwo!5028 r!15766) Nil!9472 s!10566 s!10566)) (Exists!53 lambda!26915))))

(declare-fun lt!330628 () Unit!14095)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!49 (Regex!2258 Regex!2258 List!9488) Unit!14095)

(assert (=> b!880636 (= lt!330628 (lemmaFindConcatSeparationEquivalentToExists!49 (regOne!5028 r!15766) (regTwo!5028 r!15766) s!10566))))

(declare-fun b!880637 () Bool)

(declare-fun removeUselessConcat!13 (Regex!2258) Regex!2258)

(assert (=> b!880637 (= e!578159 (validRegex!727 (removeUselessConcat!13 r!15766)))))

(declare-fun b!880638 () Bool)

(assert (=> b!880638 (= e!578156 (not e!578157))))

(declare-fun res!400472 () Bool)

(assert (=> b!880638 (=> res!400472 e!578157)))

(declare-fun lt!330630 () Bool)

(assert (=> b!880638 (= res!400472 (or (not lt!330630) (and (is-Concat!4091 r!15766) (is-EmptyExpr!2258 (regOne!5028 r!15766))) (and (is-Concat!4091 r!15766) (is-EmptyExpr!2258 (regTwo!5028 r!15766))) (not (is-Concat!4091 r!15766))))))

(declare-fun matchRSpec!59 (Regex!2258 List!9488) Bool)

(assert (=> b!880638 (= lt!330630 (matchRSpec!59 r!15766 s!10566))))

(declare-fun matchR!796 (Regex!2258 List!9488) Bool)

(assert (=> b!880638 (= lt!330630 (matchR!796 r!15766 s!10566))))

(declare-fun lt!330631 () Unit!14095)

(declare-fun mainMatchTheorem!59 (Regex!2258 List!9488) Unit!14095)

(assert (=> b!880638 (= lt!330631 (mainMatchTheorem!59 r!15766 s!10566))))

(declare-fun b!880639 () Bool)

(assert (=> b!880639 (= e!578158 tp_is_empty!4159)))

(assert (= (and start!79576 res!400473) b!880638))

(assert (= (and b!880638 (not res!400472)) b!880636))

(assert (= (and b!880636 (not res!400471)) b!880637))

(assert (= (and start!79576 (is-ElementMatch!2258 r!15766)) b!880639))

(assert (= (and start!79576 (is-Concat!4091 r!15766)) b!880634))

(assert (= (and start!79576 (is-Star!2258 r!15766)) b!880635))

(assert (= (and start!79576 (is-Union!2258 r!15766)) b!880633))

(assert (= (and start!79576 (is-Cons!9472 s!10566)) b!880632))

(declare-fun m!1129179 () Bool)

(assert (=> start!79576 m!1129179))

(declare-fun m!1129181 () Bool)

(assert (=> b!880636 m!1129181))

(declare-fun m!1129183 () Bool)

(assert (=> b!880636 m!1129183))

(declare-fun m!1129185 () Bool)

(assert (=> b!880636 m!1129185))

(declare-fun m!1129187 () Bool)

(assert (=> b!880636 m!1129187))

(assert (=> b!880636 m!1129183))

(assert (=> b!880636 m!1129181))

(declare-fun m!1129189 () Bool)

(assert (=> b!880636 m!1129189))

(declare-fun m!1129191 () Bool)

(assert (=> b!880636 m!1129191))

(declare-fun m!1129193 () Bool)

(assert (=> b!880636 m!1129193))

(declare-fun m!1129195 () Bool)

(assert (=> b!880637 m!1129195))

(assert (=> b!880637 m!1129195))

(declare-fun m!1129197 () Bool)

(assert (=> b!880637 m!1129197))

(declare-fun m!1129199 () Bool)

(assert (=> b!880638 m!1129199))

(declare-fun m!1129201 () Bool)

(assert (=> b!880638 m!1129201))

(declare-fun m!1129203 () Bool)

(assert (=> b!880638 m!1129203))

(push 1)

(assert (not start!79576))

(assert (not b!880637))

(assert (not b!880634))

(assert (not b!880638))

(assert tp_is_empty!4159)

(assert (not b!880635))

(assert (not b!880632))

(assert (not b!880633))

(assert (not b!880636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!234377 () Bool)

(declare-fun b!880718 () Bool)

(assert (= bs!234377 (and b!880718 b!880636)))

(declare-fun lambda!26929 () Int)

(assert (=> bs!234377 (not (= lambda!26929 lambda!26915))))

(assert (=> bs!234377 (not (= lambda!26929 lambda!26916))))

(assert (=> b!880718 true))

(assert (=> b!880718 true))

(declare-fun bs!234378 () Bool)

(declare-fun b!880717 () Bool)

(assert (= bs!234378 (and b!880717 b!880636)))

(declare-fun lambda!26930 () Int)

(assert (=> bs!234378 (not (= lambda!26930 lambda!26915))))

(assert (=> bs!234378 (= lambda!26930 lambda!26916)))

(declare-fun bs!234379 () Bool)

(assert (= bs!234379 (and b!880717 b!880718)))

(assert (=> bs!234379 (not (= lambda!26930 lambda!26929))))

(assert (=> b!880717 true))

(assert (=> b!880717 true))

(declare-fun b!880716 () Bool)

(declare-fun e!578203 () Bool)

(declare-fun e!578200 () Bool)

(assert (=> b!880716 (= e!578203 e!578200)))

(declare-fun res!400513 () Bool)

(assert (=> b!880716 (= res!400513 (matchRSpec!59 (regOne!5029 r!15766) s!10566))))

(assert (=> b!880716 (=> res!400513 e!578200)))

(declare-fun e!578206 () Bool)

(declare-fun call!51374 () Bool)

(assert (=> b!880717 (= e!578206 call!51374)))

(declare-fun e!578204 () Bool)

(assert (=> b!880718 (= e!578204 call!51374)))

(declare-fun bm!51369 () Bool)

(declare-fun call!51375 () Bool)

(assert (=> bm!51369 (= call!51375 (isEmpty!5663 s!10566))))

(declare-fun b!880719 () Bool)

(assert (=> b!880719 (= e!578203 e!578206)))

(declare-fun c!142350 () Bool)

(assert (=> b!880719 (= c!142350 (is-Star!2258 r!15766))))

(declare-fun d!276309 () Bool)

(declare-fun c!142352 () Bool)

(assert (=> d!276309 (= c!142352 (is-EmptyExpr!2258 r!15766))))

(declare-fun e!578201 () Bool)

(assert (=> d!276309 (= (matchRSpec!59 r!15766 s!10566) e!578201)))

(declare-fun b!880720 () Bool)

(assert (=> b!880720 (= e!578200 (matchRSpec!59 (regTwo!5029 r!15766) s!10566))))

(declare-fun b!880721 () Bool)

(declare-fun c!142349 () Bool)

(assert (=> b!880721 (= c!142349 (is-ElementMatch!2258 r!15766))))

(declare-fun e!578202 () Bool)

(declare-fun e!578205 () Bool)

(assert (=> b!880721 (= e!578202 e!578205)))

(declare-fun b!880722 () Bool)

(declare-fun res!400511 () Bool)

(assert (=> b!880722 (=> res!400511 e!578204)))

(assert (=> b!880722 (= res!400511 call!51375)))

(assert (=> b!880722 (= e!578206 e!578204)))

(declare-fun bm!51370 () Bool)

(assert (=> bm!51370 (= call!51374 (Exists!53 (ite c!142350 lambda!26929 lambda!26930)))))

(declare-fun b!880723 () Bool)

(declare-fun c!142351 () Bool)

(assert (=> b!880723 (= c!142351 (is-Union!2258 r!15766))))

(assert (=> b!880723 (= e!578205 e!578203)))

(declare-fun b!880724 () Bool)

(assert (=> b!880724 (= e!578205 (= s!10566 (Cons!9472 (c!142339 r!15766) Nil!9472)))))

(declare-fun b!880725 () Bool)

(assert (=> b!880725 (= e!578201 call!51375)))

(declare-fun b!880726 () Bool)

(assert (=> b!880726 (= e!578201 e!578202)))

(declare-fun res!400512 () Bool)

(assert (=> b!880726 (= res!400512 (not (is-EmptyLang!2258 r!15766)))))

(assert (=> b!880726 (=> (not res!400512) (not e!578202))))

(assert (= (and d!276309 c!142352) b!880725))

(assert (= (and d!276309 (not c!142352)) b!880726))

(assert (= (and b!880726 res!400512) b!880721))

(assert (= (and b!880721 c!142349) b!880724))

(assert (= (and b!880721 (not c!142349)) b!880723))

(assert (= (and b!880723 c!142351) b!880716))

(assert (= (and b!880723 (not c!142351)) b!880719))

(assert (= (and b!880716 (not res!400513)) b!880720))

(assert (= (and b!880719 c!142350) b!880722))

(assert (= (and b!880719 (not c!142350)) b!880717))

(assert (= (and b!880722 (not res!400511)) b!880718))

(assert (= (or b!880718 b!880717) bm!51370))

(assert (= (or b!880725 b!880722) bm!51369))

(declare-fun m!1129231 () Bool)

(assert (=> b!880716 m!1129231))

(assert (=> bm!51369 m!1129187))

(declare-fun m!1129233 () Bool)

(assert (=> b!880720 m!1129233))

(declare-fun m!1129235 () Bool)

(assert (=> bm!51370 m!1129235))

(assert (=> b!880638 d!276309))

(declare-fun b!880782 () Bool)

(declare-fun e!578248 () Bool)

(declare-fun lt!330646 () Bool)

(declare-fun call!51387 () Bool)

(assert (=> b!880782 (= e!578248 (= lt!330646 call!51387))))

(declare-fun b!880783 () Bool)

(declare-fun e!578247 () Bool)

(declare-fun derivativeStep!383 (Regex!2258 C!5086) Regex!2258)

(declare-fun head!1536 (List!9488) C!5086)

(declare-fun tail!1098 (List!9488) List!9488)

(assert (=> b!880783 (= e!578247 (matchR!796 (derivativeStep!383 r!15766 (head!1536 s!10566)) (tail!1098 s!10566)))))

(declare-fun d!276313 () Bool)

(assert (=> d!276313 e!578248))

(declare-fun c!142365 () Bool)

(assert (=> d!276313 (= c!142365 (is-EmptyExpr!2258 r!15766))))

(assert (=> d!276313 (= lt!330646 e!578247)))

(declare-fun c!142367 () Bool)

(assert (=> d!276313 (= c!142367 (isEmpty!5663 s!10566))))

(assert (=> d!276313 (validRegex!727 r!15766)))

(assert (=> d!276313 (= (matchR!796 r!15766 s!10566) lt!330646)))

(declare-fun b!880784 () Bool)

(declare-fun res!400546 () Bool)

(declare-fun e!578244 () Bool)

(assert (=> b!880784 (=> (not res!400546) (not e!578244))))

(assert (=> b!880784 (= res!400546 (isEmpty!5663 (tail!1098 s!10566)))))

(declare-fun b!880785 () Bool)

(declare-fun e!578243 () Bool)

(assert (=> b!880785 (= e!578248 e!578243)))

(declare-fun c!142366 () Bool)

(assert (=> b!880785 (= c!142366 (is-EmptyLang!2258 r!15766))))

(declare-fun b!880786 () Bool)

(assert (=> b!880786 (= e!578243 (not lt!330646))))

(declare-fun b!880787 () Bool)

(declare-fun res!400552 () Bool)

(declare-fun e!578245 () Bool)

(assert (=> b!880787 (=> res!400552 e!578245)))

(assert (=> b!880787 (= res!400552 (not (isEmpty!5663 (tail!1098 s!10566))))))

(declare-fun bm!51382 () Bool)

(assert (=> bm!51382 (= call!51387 (isEmpty!5663 s!10566))))

(declare-fun b!880788 () Bool)

(declare-fun res!400549 () Bool)

(declare-fun e!578246 () Bool)

(assert (=> b!880788 (=> res!400549 e!578246)))

(assert (=> b!880788 (= res!400549 (not (is-ElementMatch!2258 r!15766)))))

(assert (=> b!880788 (= e!578243 e!578246)))

(declare-fun b!880789 () Bool)

(assert (=> b!880789 (= e!578245 (not (= (head!1536 s!10566) (c!142339 r!15766))))))

(declare-fun b!880790 () Bool)

(declare-fun e!578242 () Bool)

(assert (=> b!880790 (= e!578242 e!578245)))

(declare-fun res!400551 () Bool)

(assert (=> b!880790 (=> res!400551 e!578245)))

(assert (=> b!880790 (= res!400551 call!51387)))

(declare-fun b!880791 () Bool)

(declare-fun res!400545 () Bool)

(assert (=> b!880791 (=> (not res!400545) (not e!578244))))

(assert (=> b!880791 (= res!400545 (not call!51387))))

(declare-fun b!880792 () Bool)

(declare-fun nullable!570 (Regex!2258) Bool)

(assert (=> b!880792 (= e!578247 (nullable!570 r!15766))))

(declare-fun b!880793 () Bool)

(assert (=> b!880793 (= e!578244 (= (head!1536 s!10566) (c!142339 r!15766)))))

(declare-fun b!880794 () Bool)

(assert (=> b!880794 (= e!578246 e!578242)))

(declare-fun res!400548 () Bool)

(assert (=> b!880794 (=> (not res!400548) (not e!578242))))

(assert (=> b!880794 (= res!400548 (not lt!330646))))

(declare-fun b!880795 () Bool)

(declare-fun res!400550 () Bool)

(assert (=> b!880795 (=> res!400550 e!578246)))

(assert (=> b!880795 (= res!400550 e!578244)))

(declare-fun res!400547 () Bool)

(assert (=> b!880795 (=> (not res!400547) (not e!578244))))

(assert (=> b!880795 (= res!400547 lt!330646)))

(assert (= (and d!276313 c!142367) b!880792))

(assert (= (and d!276313 (not c!142367)) b!880783))

(assert (= (and d!276313 c!142365) b!880782))

(assert (= (and d!276313 (not c!142365)) b!880785))

(assert (= (and b!880785 c!142366) b!880786))

(assert (= (and b!880785 (not c!142366)) b!880788))

(assert (= (and b!880788 (not res!400549)) b!880795))

(assert (= (and b!880795 res!400547) b!880791))

(assert (= (and b!880791 res!400545) b!880784))

(assert (= (and b!880784 res!400546) b!880793))

(assert (= (and b!880795 (not res!400550)) b!880794))

(assert (= (and b!880794 res!400548) b!880790))

(assert (= (and b!880790 (not res!400551)) b!880787))

(assert (= (and b!880787 (not res!400552)) b!880789))

(assert (= (or b!880782 b!880790 b!880791) bm!51382))

(declare-fun m!1129237 () Bool)

(assert (=> b!880792 m!1129237))

(assert (=> bm!51382 m!1129187))

(assert (=> d!276313 m!1129187))

(assert (=> d!276313 m!1129179))

(declare-fun m!1129239 () Bool)

(assert (=> b!880789 m!1129239))

(assert (=> b!880793 m!1129239))

(assert (=> b!880783 m!1129239))

(assert (=> b!880783 m!1129239))

(declare-fun m!1129243 () Bool)

(assert (=> b!880783 m!1129243))

(declare-fun m!1129245 () Bool)

(assert (=> b!880783 m!1129245))

(assert (=> b!880783 m!1129243))

(assert (=> b!880783 m!1129245))

(declare-fun m!1129249 () Bool)

(assert (=> b!880783 m!1129249))

(assert (=> b!880787 m!1129245))

(assert (=> b!880787 m!1129245))

(declare-fun m!1129251 () Bool)

(assert (=> b!880787 m!1129251))

(assert (=> b!880784 m!1129245))

(assert (=> b!880784 m!1129245))

(assert (=> b!880784 m!1129251))

(assert (=> b!880638 d!276313))

(declare-fun d!276315 () Bool)

(assert (=> d!276315 (= (matchR!796 r!15766 s!10566) (matchRSpec!59 r!15766 s!10566))))

(declare-fun lt!330649 () Unit!14095)

(declare-fun choose!5206 (Regex!2258 List!9488) Unit!14095)

(assert (=> d!276315 (= lt!330649 (choose!5206 r!15766 s!10566))))

(assert (=> d!276315 (validRegex!727 r!15766)))

(assert (=> d!276315 (= (mainMatchTheorem!59 r!15766 s!10566) lt!330649)))

(declare-fun bs!234380 () Bool)

(assert (= bs!234380 d!276315))

(assert (=> bs!234380 m!1129201))

(assert (=> bs!234380 m!1129199))

(declare-fun m!1129255 () Bool)

(assert (=> bs!234380 m!1129255))

(assert (=> bs!234380 m!1129179))

(assert (=> b!880638 d!276315))

(declare-fun b!880816 () Bool)

(declare-fun e!578268 () Bool)

(declare-fun e!578269 () Bool)

(assert (=> b!880816 (= e!578268 e!578269)))

(declare-fun res!400563 () Bool)

(assert (=> b!880816 (= res!400563 (not (nullable!570 (reg!2587 (removeUselessConcat!13 r!15766)))))))

(assert (=> b!880816 (=> (not res!400563) (not e!578269))))

(declare-fun b!880817 () Bool)

(declare-fun e!578263 () Bool)

(declare-fun call!51394 () Bool)

(assert (=> b!880817 (= e!578263 call!51394)))

(declare-fun b!880818 () Bool)

(declare-fun res!400565 () Bool)

(declare-fun e!578267 () Bool)

(assert (=> b!880818 (=> res!400565 e!578267)))

(assert (=> b!880818 (= res!400565 (not (is-Concat!4091 (removeUselessConcat!13 r!15766))))))

(declare-fun e!578266 () Bool)

(assert (=> b!880818 (= e!578266 e!578267)))

(declare-fun b!880819 () Bool)

(declare-fun e!578265 () Bool)

(assert (=> b!880819 (= e!578265 call!51394)))

(declare-fun b!880820 () Bool)

(assert (=> b!880820 (= e!578268 e!578266)))

(declare-fun c!142373 () Bool)

(assert (=> b!880820 (= c!142373 (is-Union!2258 (removeUselessConcat!13 r!15766)))))

(declare-fun bm!51389 () Bool)

(assert (=> bm!51389 (= call!51394 (validRegex!727 (ite c!142373 (regTwo!5029 (removeUselessConcat!13 r!15766)) (regTwo!5028 (removeUselessConcat!13 r!15766)))))))

(declare-fun b!880821 () Bool)

(declare-fun call!51395 () Bool)

(assert (=> b!880821 (= e!578269 call!51395)))

(declare-fun bm!51390 () Bool)

(declare-fun call!51396 () Bool)

(assert (=> bm!51390 (= call!51396 call!51395)))

(declare-fun b!880822 () Bool)

(declare-fun e!578264 () Bool)

(assert (=> b!880822 (= e!578264 e!578268)))

(declare-fun c!142372 () Bool)

(assert (=> b!880822 (= c!142372 (is-Star!2258 (removeUselessConcat!13 r!15766)))))

(declare-fun d!276319 () Bool)

(declare-fun res!400564 () Bool)

(assert (=> d!276319 (=> res!400564 e!578264)))

(assert (=> d!276319 (= res!400564 (is-ElementMatch!2258 (removeUselessConcat!13 r!15766)))))

(assert (=> d!276319 (= (validRegex!727 (removeUselessConcat!13 r!15766)) e!578264)))

(declare-fun b!880823 () Bool)

(assert (=> b!880823 (= e!578267 e!578265)))

(declare-fun res!400567 () Bool)

(assert (=> b!880823 (=> (not res!400567) (not e!578265))))

(assert (=> b!880823 (= res!400567 call!51396)))

(declare-fun b!880824 () Bool)

(declare-fun res!400566 () Bool)

(assert (=> b!880824 (=> (not res!400566) (not e!578263))))

(assert (=> b!880824 (= res!400566 call!51396)))

(assert (=> b!880824 (= e!578266 e!578263)))

(declare-fun bm!51391 () Bool)

(assert (=> bm!51391 (= call!51395 (validRegex!727 (ite c!142372 (reg!2587 (removeUselessConcat!13 r!15766)) (ite c!142373 (regOne!5029 (removeUselessConcat!13 r!15766)) (regOne!5028 (removeUselessConcat!13 r!15766))))))))

(assert (= (and d!276319 (not res!400564)) b!880822))

(assert (= (and b!880822 c!142372) b!880816))

(assert (= (and b!880822 (not c!142372)) b!880820))

(assert (= (and b!880816 res!400563) b!880821))

(assert (= (and b!880820 c!142373) b!880824))

(assert (= (and b!880820 (not c!142373)) b!880818))

(assert (= (and b!880824 res!400566) b!880817))

(assert (= (and b!880818 (not res!400565)) b!880823))

(assert (= (and b!880823 res!400567) b!880819))

(assert (= (or b!880817 b!880819) bm!51389))

(assert (= (or b!880824 b!880823) bm!51390))

(assert (= (or b!880821 bm!51390) bm!51391))

(declare-fun m!1129257 () Bool)

(assert (=> b!880816 m!1129257))

(declare-fun m!1129259 () Bool)

(assert (=> bm!51389 m!1129259))

(declare-fun m!1129261 () Bool)

(assert (=> bm!51391 m!1129261))

(assert (=> b!880637 d!276319))

(declare-fun bm!51412 () Bool)

(declare-fun call!51418 () Regex!2258)

(declare-fun call!51420 () Regex!2258)

(assert (=> bm!51412 (= call!51418 call!51420)))

(declare-fun bm!51413 () Bool)

(declare-fun call!51421 () Regex!2258)

(declare-fun c!142397 () Bool)

(assert (=> bm!51413 (= call!51421 (removeUselessConcat!13 (ite c!142397 (regTwo!5028 r!15766) (regOne!5029 r!15766))))))

(declare-fun bm!51414 () Bool)

(declare-fun c!142394 () Bool)

(declare-fun c!142395 () Bool)

(declare-fun c!142398 () Bool)

(assert (=> bm!51414 (= call!51420 (removeUselessConcat!13 (ite c!142394 (regTwo!5028 r!15766) (ite (or c!142395 c!142397) (regOne!5028 r!15766) (ite c!142398 (regTwo!5029 r!15766) (reg!2587 r!15766))))))))

(declare-fun b!880867 () Bool)

(declare-fun e!578294 () Regex!2258)

(declare-fun call!51417 () Regex!2258)

(assert (=> b!880867 (= e!578294 (Concat!4091 call!51417 call!51421))))

(declare-fun b!880868 () Bool)

(declare-fun e!578296 () Bool)

(declare-fun lt!330654 () Regex!2258)

(assert (=> b!880868 (= e!578296 (= (nullable!570 lt!330654) (nullable!570 r!15766)))))

(declare-fun bm!51415 () Bool)

(declare-fun call!51419 () Regex!2258)

(assert (=> bm!51415 (= call!51419 call!51417)))

(declare-fun b!880869 () Bool)

(declare-fun c!142396 () Bool)

(assert (=> b!880869 (= c!142396 (is-Star!2258 r!15766))))

(declare-fun e!578298 () Regex!2258)

(declare-fun e!578299 () Regex!2258)

(assert (=> b!880869 (= e!578298 e!578299)))

(declare-fun b!880870 () Bool)

(assert (=> b!880870 (= e!578298 (Union!2258 call!51421 call!51419))))

(declare-fun b!880871 () Bool)

(assert (=> b!880871 (= e!578299 (Star!2258 call!51419))))

(declare-fun b!880872 () Bool)

(assert (=> b!880872 (= c!142397 (is-Concat!4091 r!15766))))

(declare-fun e!578295 () Regex!2258)

(assert (=> b!880872 (= e!578295 e!578294)))

(declare-fun b!880873 () Bool)

(assert (=> b!880873 (= e!578295 call!51418)))

(declare-fun d!276321 () Bool)

(assert (=> d!276321 e!578296))

(declare-fun res!400572 () Bool)

(assert (=> d!276321 (=> (not res!400572) (not e!578296))))

(assert (=> d!276321 (= res!400572 (validRegex!727 lt!330654))))

(declare-fun e!578297 () Regex!2258)

(assert (=> d!276321 (= lt!330654 e!578297)))

(assert (=> d!276321 (= c!142394 (and (is-Concat!4091 r!15766) (is-EmptyExpr!2258 (regOne!5028 r!15766))))))

(assert (=> d!276321 (validRegex!727 r!15766)))

(assert (=> d!276321 (= (removeUselessConcat!13 r!15766) lt!330654)))

(declare-fun b!880874 () Bool)

(assert (=> b!880874 (= e!578297 e!578295)))

(assert (=> b!880874 (= c!142395 (and (is-Concat!4091 r!15766) (is-EmptyExpr!2258 (regTwo!5028 r!15766))))))

(declare-fun b!880875 () Bool)

(assert (=> b!880875 (= e!578294 e!578298)))

(assert (=> b!880875 (= c!142398 (is-Union!2258 r!15766))))

(declare-fun b!880876 () Bool)

(assert (=> b!880876 (= e!578297 call!51420)))

(declare-fun b!880877 () Bool)

(assert (=> b!880877 (= e!578299 r!15766)))

(declare-fun bm!51416 () Bool)

(assert (=> bm!51416 (= call!51417 call!51418)))

(assert (= (and d!276321 c!142394) b!880876))

(assert (= (and d!276321 (not c!142394)) b!880874))

(assert (= (and b!880874 c!142395) b!880873))

(assert (= (and b!880874 (not c!142395)) b!880872))

(assert (= (and b!880872 c!142397) b!880867))

(assert (= (and b!880872 (not c!142397)) b!880875))

(assert (= (and b!880875 c!142398) b!880870))

(assert (= (and b!880875 (not c!142398)) b!880869))

(assert (= (and b!880869 c!142396) b!880871))

(assert (= (and b!880869 (not c!142396)) b!880877))

(assert (= (or b!880870 b!880871) bm!51415))

(assert (= (or b!880867 b!880870) bm!51413))

(assert (= (or b!880867 bm!51415) bm!51416))

(assert (= (or b!880873 bm!51416) bm!51412))

(assert (= (or b!880876 bm!51412) bm!51414))

(assert (= (and d!276321 res!400572) b!880868))

(declare-fun m!1129263 () Bool)

(assert (=> bm!51413 m!1129263))

(declare-fun m!1129265 () Bool)

(assert (=> bm!51414 m!1129265))

(declare-fun m!1129267 () Bool)

(assert (=> b!880868 m!1129267))

(assert (=> b!880868 m!1129237))

(declare-fun m!1129269 () Bool)

(assert (=> d!276321 m!1129269))

(assert (=> d!276321 m!1129179))

(assert (=> b!880637 d!276321))

(declare-fun b!880878 () Bool)

(declare-fun e!578305 () Bool)

(declare-fun e!578306 () Bool)

(assert (=> b!880878 (= e!578305 e!578306)))

(declare-fun res!400573 () Bool)

(assert (=> b!880878 (= res!400573 (not (nullable!570 (reg!2587 r!15766))))))

(assert (=> b!880878 (=> (not res!400573) (not e!578306))))

(declare-fun b!880879 () Bool)

(declare-fun e!578300 () Bool)

(declare-fun call!51422 () Bool)

(assert (=> b!880879 (= e!578300 call!51422)))

(declare-fun b!880880 () Bool)

(declare-fun res!400575 () Bool)

(declare-fun e!578304 () Bool)

(assert (=> b!880880 (=> res!400575 e!578304)))

(assert (=> b!880880 (= res!400575 (not (is-Concat!4091 r!15766)))))

(declare-fun e!578303 () Bool)

(assert (=> b!880880 (= e!578303 e!578304)))

(declare-fun b!880881 () Bool)

(declare-fun e!578302 () Bool)

(assert (=> b!880881 (= e!578302 call!51422)))

(declare-fun b!880882 () Bool)

(assert (=> b!880882 (= e!578305 e!578303)))

(declare-fun c!142400 () Bool)

(assert (=> b!880882 (= c!142400 (is-Union!2258 r!15766))))

(declare-fun bm!51417 () Bool)

(assert (=> bm!51417 (= call!51422 (validRegex!727 (ite c!142400 (regTwo!5029 r!15766) (regTwo!5028 r!15766))))))

(declare-fun b!880883 () Bool)

(declare-fun call!51423 () Bool)

(assert (=> b!880883 (= e!578306 call!51423)))

(declare-fun bm!51418 () Bool)

(declare-fun call!51424 () Bool)

(assert (=> bm!51418 (= call!51424 call!51423)))

(declare-fun b!880884 () Bool)

(declare-fun e!578301 () Bool)

(assert (=> b!880884 (= e!578301 e!578305)))

(declare-fun c!142399 () Bool)

(assert (=> b!880884 (= c!142399 (is-Star!2258 r!15766))))

(declare-fun d!276323 () Bool)

(declare-fun res!400574 () Bool)

(assert (=> d!276323 (=> res!400574 e!578301)))

(assert (=> d!276323 (= res!400574 (is-ElementMatch!2258 r!15766))))

(assert (=> d!276323 (= (validRegex!727 r!15766) e!578301)))

(declare-fun b!880885 () Bool)

(assert (=> b!880885 (= e!578304 e!578302)))

(declare-fun res!400577 () Bool)

(assert (=> b!880885 (=> (not res!400577) (not e!578302))))

(assert (=> b!880885 (= res!400577 call!51424)))

(declare-fun b!880886 () Bool)

(declare-fun res!400576 () Bool)

(assert (=> b!880886 (=> (not res!400576) (not e!578300))))

(assert (=> b!880886 (= res!400576 call!51424)))

(assert (=> b!880886 (= e!578303 e!578300)))

(declare-fun bm!51419 () Bool)

(assert (=> bm!51419 (= call!51423 (validRegex!727 (ite c!142399 (reg!2587 r!15766) (ite c!142400 (regOne!5029 r!15766) (regOne!5028 r!15766)))))))

(assert (= (and d!276323 (not res!400574)) b!880884))

(assert (= (and b!880884 c!142399) b!880878))

(assert (= (and b!880884 (not c!142399)) b!880882))

(assert (= (and b!880878 res!400573) b!880883))

(assert (= (and b!880882 c!142400) b!880886))

(assert (= (and b!880882 (not c!142400)) b!880880))

(assert (= (and b!880886 res!400576) b!880879))

(assert (= (and b!880880 (not res!400575)) b!880885))

(assert (= (and b!880885 res!400577) b!880881))

(assert (= (or b!880879 b!880881) bm!51417))

(assert (= (or b!880886 b!880885) bm!51418))

(assert (= (or b!880883 bm!51418) bm!51419))

(declare-fun m!1129271 () Bool)

(assert (=> b!880878 m!1129271))

(declare-fun m!1129273 () Bool)

(assert (=> bm!51417 m!1129273))

(declare-fun m!1129275 () Bool)

(assert (=> bm!51419 m!1129275))

(assert (=> start!79576 d!276323))

(declare-fun d!276325 () Bool)

(declare-fun choose!5207 (Int) Bool)

(assert (=> d!276325 (= (Exists!53 lambda!26915) (choose!5207 lambda!26915))))

(declare-fun bs!234381 () Bool)

(assert (= bs!234381 d!276325))

(declare-fun m!1129277 () Bool)

(assert (=> bs!234381 m!1129277))

(assert (=> b!880636 d!276325))

(declare-fun d!276327 () Bool)

(assert (=> d!276327 (= (isEmpty!5663 s!10566) (is-Nil!9472 s!10566))))

(assert (=> b!880636 d!276327))

(declare-fun d!276329 () Bool)

(declare-fun isEmpty!5665 (Option!1943) Bool)

(assert (=> d!276329 (= (isDefined!1585 (findConcatSeparation!49 (regOne!5028 r!15766) (regTwo!5028 r!15766) Nil!9472 s!10566 s!10566)) (not (isEmpty!5665 (findConcatSeparation!49 (regOne!5028 r!15766) (regTwo!5028 r!15766) Nil!9472 s!10566 s!10566))))))

(declare-fun bs!234382 () Bool)

(assert (= bs!234382 d!276329))

(assert (=> bs!234382 m!1129183))

(declare-fun m!1129279 () Bool)

(assert (=> bs!234382 m!1129279))

(assert (=> b!880636 d!276329))

(declare-fun d!276331 () Bool)

(assert (=> d!276331 (= (Exists!53 lambda!26916) (choose!5207 lambda!26916))))

(declare-fun bs!234383 () Bool)

(assert (= bs!234383 d!276331))

(declare-fun m!1129281 () Bool)

(assert (=> bs!234383 m!1129281))

(assert (=> b!880636 d!276331))

(declare-fun bs!234384 () Bool)

(declare-fun d!276333 () Bool)

(assert (= bs!234384 (and d!276333 b!880636)))

(declare-fun lambda!26933 () Int)

(assert (=> bs!234384 (= lambda!26933 lambda!26915)))

(assert (=> bs!234384 (not (= lambda!26933 lambda!26916))))

(declare-fun bs!234385 () Bool)

(assert (= bs!234385 (and d!276333 b!880718)))

(assert (=> bs!234385 (not (= lambda!26933 lambda!26929))))

(declare-fun bs!234386 () Bool)

(assert (= bs!234386 (and d!276333 b!880717)))

(assert (=> bs!234386 (not (= lambda!26933 lambda!26930))))

(assert (=> d!276333 true))

(assert (=> d!276333 true))

(assert (=> d!276333 true))

(assert (=> d!276333 (= (isDefined!1585 (findConcatSeparation!49 (regOne!5028 r!15766) (regTwo!5028 r!15766) Nil!9472 s!10566 s!10566)) (Exists!53 lambda!26933))))

(declare-fun lt!330658 () Unit!14095)

(declare-fun choose!5208 (Regex!2258 Regex!2258 List!9488) Unit!14095)

(assert (=> d!276333 (= lt!330658 (choose!5208 (regOne!5028 r!15766) (regTwo!5028 r!15766) s!10566))))

(assert (=> d!276333 (validRegex!727 (regOne!5028 r!15766))))

(assert (=> d!276333 (= (lemmaFindConcatSeparationEquivalentToExists!49 (regOne!5028 r!15766) (regTwo!5028 r!15766) s!10566) lt!330658)))

(declare-fun bs!234387 () Bool)

(assert (= bs!234387 d!276333))

(declare-fun m!1129299 () Bool)

(assert (=> bs!234387 m!1129299))

(assert (=> bs!234387 m!1129183))

(assert (=> bs!234387 m!1129185))

(assert (=> bs!234387 m!1129183))

(declare-fun m!1129301 () Bool)

(assert (=> bs!234387 m!1129301))

(declare-fun m!1129303 () Bool)

(assert (=> bs!234387 m!1129303))

(assert (=> b!880636 d!276333))

(declare-fun b!880957 () Bool)

(declare-fun e!578350 () Bool)

(assert (=> b!880957 (= e!578350 (matchR!796 (regTwo!5028 r!15766) s!10566))))

(declare-fun b!880958 () Bool)

(declare-fun e!578348 () Option!1943)

(assert (=> b!880958 (= e!578348 (Some!1942 (tuple2!10603 Nil!9472 s!10566)))))

(declare-fun b!880959 () Bool)

(declare-fun e!578349 () Option!1943)

(assert (=> b!880959 (= e!578349 None!1942)))

(declare-fun b!880960 () Bool)

(declare-fun e!578351 () Bool)

(declare-fun lt!330665 () Option!1943)

(declare-fun ++!2465 (List!9488 List!9488) List!9488)

(declare-fun get!2939 (Option!1943) tuple2!10602)

(assert (=> b!880960 (= e!578351 (= (++!2465 (_1!6127 (get!2939 lt!330665)) (_2!6127 (get!2939 lt!330665))) s!10566))))

(declare-fun b!880961 () Bool)

(declare-fun res!400611 () Bool)

(assert (=> b!880961 (=> (not res!400611) (not e!578351))))

(assert (=> b!880961 (= res!400611 (matchR!796 (regTwo!5028 r!15766) (_2!6127 (get!2939 lt!330665))))))

(declare-fun d!276339 () Bool)

(declare-fun e!578352 () Bool)

(assert (=> d!276339 e!578352))

(declare-fun res!400612 () Bool)

(assert (=> d!276339 (=> res!400612 e!578352)))

(assert (=> d!276339 (= res!400612 e!578351)))

(declare-fun res!400610 () Bool)

(assert (=> d!276339 (=> (not res!400610) (not e!578351))))

(assert (=> d!276339 (= res!400610 (isDefined!1585 lt!330665))))

(assert (=> d!276339 (= lt!330665 e!578348)))

(declare-fun c!142421 () Bool)

(assert (=> d!276339 (= c!142421 e!578350)))

(declare-fun res!400613 () Bool)

(assert (=> d!276339 (=> (not res!400613) (not e!578350))))

(assert (=> d!276339 (= res!400613 (matchR!796 (regOne!5028 r!15766) Nil!9472))))

(assert (=> d!276339 (validRegex!727 (regOne!5028 r!15766))))

(assert (=> d!276339 (= (findConcatSeparation!49 (regOne!5028 r!15766) (regTwo!5028 r!15766) Nil!9472 s!10566 s!10566) lt!330665)))

(declare-fun b!880962 () Bool)

(declare-fun res!400614 () Bool)

(assert (=> b!880962 (=> (not res!400614) (not e!578351))))

(assert (=> b!880962 (= res!400614 (matchR!796 (regOne!5028 r!15766) (_1!6127 (get!2939 lt!330665))))))

(declare-fun b!880963 () Bool)

(declare-fun lt!330667 () Unit!14095)

(declare-fun lt!330666 () Unit!14095)

(assert (=> b!880963 (= lt!330667 lt!330666)))

(assert (=> b!880963 (= (++!2465 (++!2465 Nil!9472 (Cons!9472 (h!14873 s!10566) Nil!9472)) (t!100534 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!95 (List!9488 C!5086 List!9488 List!9488) Unit!14095)

(assert (=> b!880963 (= lt!330666 (lemmaMoveElementToOtherListKeepsConcatEq!95 Nil!9472 (h!14873 s!10566) (t!100534 s!10566) s!10566))))

(assert (=> b!880963 (= e!578349 (findConcatSeparation!49 (regOne!5028 r!15766) (regTwo!5028 r!15766) (++!2465 Nil!9472 (Cons!9472 (h!14873 s!10566) Nil!9472)) (t!100534 s!10566) s!10566))))

(declare-fun b!880964 () Bool)

(assert (=> b!880964 (= e!578352 (not (isDefined!1585 lt!330665)))))

(declare-fun b!880965 () Bool)

(assert (=> b!880965 (= e!578348 e!578349)))

(declare-fun c!142420 () Bool)

(assert (=> b!880965 (= c!142420 (is-Nil!9472 s!10566))))

(assert (= (and d!276339 res!400613) b!880957))

(assert (= (and d!276339 c!142421) b!880958))

(assert (= (and d!276339 (not c!142421)) b!880965))

(assert (= (and b!880965 c!142420) b!880959))

(assert (= (and b!880965 (not c!142420)) b!880963))

(assert (= (and d!276339 res!400610) b!880962))

(assert (= (and b!880962 res!400614) b!880961))

(assert (= (and b!880961 res!400611) b!880960))

(assert (= (and d!276339 (not res!400612)) b!880964))

(declare-fun m!1129305 () Bool)

(assert (=> b!880961 m!1129305))

(declare-fun m!1129307 () Bool)

(assert (=> b!880961 m!1129307))

(declare-fun m!1129309 () Bool)

(assert (=> b!880957 m!1129309))

(declare-fun m!1129311 () Bool)

(assert (=> b!880964 m!1129311))

(assert (=> b!880960 m!1129305))

(declare-fun m!1129313 () Bool)

(assert (=> b!880960 m!1129313))

(assert (=> d!276339 m!1129311))

(declare-fun m!1129315 () Bool)

(assert (=> d!276339 m!1129315))

(assert (=> d!276339 m!1129301))

(assert (=> b!880962 m!1129305))

(declare-fun m!1129317 () Bool)

(assert (=> b!880962 m!1129317))

(declare-fun m!1129319 () Bool)

(assert (=> b!880963 m!1129319))

(assert (=> b!880963 m!1129319))

(declare-fun m!1129321 () Bool)

(assert (=> b!880963 m!1129321))

(declare-fun m!1129323 () Bool)

(assert (=> b!880963 m!1129323))

(assert (=> b!880963 m!1129319))

(declare-fun m!1129325 () Bool)

(assert (=> b!880963 m!1129325))

(assert (=> b!880636 d!276339))

(declare-fun bs!234388 () Bool)

(declare-fun d!276341 () Bool)

(assert (= bs!234388 (and d!276341 b!880636)))

(declare-fun lambda!26942 () Int)

(assert (=> bs!234388 (not (= lambda!26942 lambda!26916))))

(declare-fun bs!234389 () Bool)

(assert (= bs!234389 (and d!276341 d!276333)))

(assert (=> bs!234389 (= lambda!26942 lambda!26933)))

(assert (=> bs!234388 (= lambda!26942 lambda!26915)))

(declare-fun bs!234390 () Bool)

(assert (= bs!234390 (and d!276341 b!880717)))

(assert (=> bs!234390 (not (= lambda!26942 lambda!26930))))

(declare-fun bs!234391 () Bool)

(assert (= bs!234391 (and d!276341 b!880718)))

(assert (=> bs!234391 (not (= lambda!26942 lambda!26929))))

(assert (=> d!276341 true))

(assert (=> d!276341 true))

(assert (=> d!276341 true))

(declare-fun lambda!26943 () Int)

(assert (=> bs!234388 (= lambda!26943 lambda!26916)))

(assert (=> bs!234389 (not (= lambda!26943 lambda!26933))))

(assert (=> bs!234388 (not (= lambda!26943 lambda!26915))))

(assert (=> bs!234390 (= lambda!26943 lambda!26930)))

(assert (=> bs!234391 (not (= lambda!26943 lambda!26929))))

(declare-fun bs!234392 () Bool)

(assert (= bs!234392 d!276341))

(assert (=> bs!234392 (not (= lambda!26943 lambda!26942))))

(assert (=> d!276341 true))

(assert (=> d!276341 true))

(assert (=> d!276341 true))

(assert (=> d!276341 (= (Exists!53 lambda!26942) (Exists!53 lambda!26943))))

(declare-fun lt!330670 () Unit!14095)

(declare-fun choose!5209 (Regex!2258 Regex!2258 List!9488) Unit!14095)

(assert (=> d!276341 (= lt!330670 (choose!5209 (regOne!5028 r!15766) (regTwo!5028 r!15766) s!10566))))

(assert (=> d!276341 (validRegex!727 (regOne!5028 r!15766))))

(assert (=> d!276341 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!43 (regOne!5028 r!15766) (regTwo!5028 r!15766) s!10566) lt!330670)))

(declare-fun m!1129327 () Bool)

(assert (=> bs!234392 m!1129327))

(declare-fun m!1129329 () Bool)

(assert (=> bs!234392 m!1129329))

(declare-fun m!1129331 () Bool)

(assert (=> bs!234392 m!1129331))

(assert (=> bs!234392 m!1129301))

(assert (=> b!880636 d!276341))

(declare-fun b!881002 () Bool)

(declare-fun e!578368 () Bool)

(declare-fun tp!278276 () Bool)

(declare-fun tp!278275 () Bool)

(assert (=> b!881002 (= e!578368 (and tp!278276 tp!278275))))

(assert (=> b!880633 (= tp!278244 e!578368)))

(declare-fun b!880999 () Bool)

(assert (=> b!880999 (= e!578368 tp_is_empty!4159)))

(declare-fun b!881000 () Bool)

(declare-fun tp!278277 () Bool)

(declare-fun tp!278279 () Bool)

(assert (=> b!881000 (= e!578368 (and tp!278277 tp!278279))))

(declare-fun b!881001 () Bool)

(declare-fun tp!278278 () Bool)

(assert (=> b!881001 (= e!578368 tp!278278)))

(assert (= (and b!880633 (is-ElementMatch!2258 (regOne!5029 r!15766))) b!880999))

(assert (= (and b!880633 (is-Concat!4091 (regOne!5029 r!15766))) b!881000))

(assert (= (and b!880633 (is-Star!2258 (regOne!5029 r!15766))) b!881001))

(assert (= (and b!880633 (is-Union!2258 (regOne!5029 r!15766))) b!881002))

(declare-fun b!881006 () Bool)

(declare-fun e!578369 () Bool)

(declare-fun tp!278281 () Bool)

(declare-fun tp!278280 () Bool)

(assert (=> b!881006 (= e!578369 (and tp!278281 tp!278280))))

(assert (=> b!880633 (= tp!278241 e!578369)))

(declare-fun b!881003 () Bool)

(assert (=> b!881003 (= e!578369 tp_is_empty!4159)))

(declare-fun b!881004 () Bool)

(declare-fun tp!278282 () Bool)

(declare-fun tp!278284 () Bool)

(assert (=> b!881004 (= e!578369 (and tp!278282 tp!278284))))

(declare-fun b!881005 () Bool)

(declare-fun tp!278283 () Bool)

(assert (=> b!881005 (= e!578369 tp!278283)))

(assert (= (and b!880633 (is-ElementMatch!2258 (regTwo!5029 r!15766))) b!881003))

(assert (= (and b!880633 (is-Concat!4091 (regTwo!5029 r!15766))) b!881004))

(assert (= (and b!880633 (is-Star!2258 (regTwo!5029 r!15766))) b!881005))

(assert (= (and b!880633 (is-Union!2258 (regTwo!5029 r!15766))) b!881006))

(declare-fun b!881011 () Bool)

(declare-fun e!578372 () Bool)

(declare-fun tp!278287 () Bool)

(assert (=> b!881011 (= e!578372 (and tp_is_empty!4159 tp!278287))))

(assert (=> b!880632 (= tp!278243 e!578372)))

(assert (= (and b!880632 (is-Cons!9472 (t!100534 s!10566))) b!881011))

(declare-fun b!881015 () Bool)

(declare-fun e!578373 () Bool)

(declare-fun tp!278289 () Bool)

(declare-fun tp!278288 () Bool)

(assert (=> b!881015 (= e!578373 (and tp!278289 tp!278288))))

(assert (=> b!880635 (= tp!278246 e!578373)))

(declare-fun b!881012 () Bool)

(assert (=> b!881012 (= e!578373 tp_is_empty!4159)))

(declare-fun b!881013 () Bool)

(declare-fun tp!278290 () Bool)

(declare-fun tp!278292 () Bool)

(assert (=> b!881013 (= e!578373 (and tp!278290 tp!278292))))

(declare-fun b!881014 () Bool)

(declare-fun tp!278291 () Bool)

(assert (=> b!881014 (= e!578373 tp!278291)))

(assert (= (and b!880635 (is-ElementMatch!2258 (reg!2587 r!15766))) b!881012))

(assert (= (and b!880635 (is-Concat!4091 (reg!2587 r!15766))) b!881013))

(assert (= (and b!880635 (is-Star!2258 (reg!2587 r!15766))) b!881014))

(assert (= (and b!880635 (is-Union!2258 (reg!2587 r!15766))) b!881015))

(declare-fun b!881019 () Bool)

(declare-fun e!578374 () Bool)

(declare-fun tp!278294 () Bool)

(declare-fun tp!278293 () Bool)

(assert (=> b!881019 (= e!578374 (and tp!278294 tp!278293))))

(assert (=> b!880634 (= tp!278245 e!578374)))

(declare-fun b!881016 () Bool)

(assert (=> b!881016 (= e!578374 tp_is_empty!4159)))

(declare-fun b!881017 () Bool)

(declare-fun tp!278295 () Bool)

(declare-fun tp!278297 () Bool)

(assert (=> b!881017 (= e!578374 (and tp!278295 tp!278297))))

(declare-fun b!881018 () Bool)

(declare-fun tp!278296 () Bool)

(assert (=> b!881018 (= e!578374 tp!278296)))

(assert (= (and b!880634 (is-ElementMatch!2258 (regOne!5028 r!15766))) b!881016))

(assert (= (and b!880634 (is-Concat!4091 (regOne!5028 r!15766))) b!881017))

(assert (= (and b!880634 (is-Star!2258 (regOne!5028 r!15766))) b!881018))

(assert (= (and b!880634 (is-Union!2258 (regOne!5028 r!15766))) b!881019))

(declare-fun b!881023 () Bool)

(declare-fun e!578375 () Bool)

(declare-fun tp!278299 () Bool)

(declare-fun tp!278298 () Bool)

(assert (=> b!881023 (= e!578375 (and tp!278299 tp!278298))))

(assert (=> b!880634 (= tp!278242 e!578375)))

(declare-fun b!881020 () Bool)

(assert (=> b!881020 (= e!578375 tp_is_empty!4159)))

(declare-fun b!881021 () Bool)

(declare-fun tp!278300 () Bool)

(declare-fun tp!278302 () Bool)

(assert (=> b!881021 (= e!578375 (and tp!278300 tp!278302))))

(declare-fun b!881022 () Bool)

(declare-fun tp!278301 () Bool)

(assert (=> b!881022 (= e!578375 tp!278301)))

(assert (= (and b!880634 (is-ElementMatch!2258 (regTwo!5028 r!15766))) b!881020))

(assert (= (and b!880634 (is-Concat!4091 (regTwo!5028 r!15766))) b!881021))

(assert (= (and b!880634 (is-Star!2258 (regTwo!5028 r!15766))) b!881022))

(assert (= (and b!880634 (is-Union!2258 (regTwo!5028 r!15766))) b!881023))

(push 1)

(assert (not bm!51414))

(assert (not b!880868))

(assert (not b!880784))

(assert (not b!881002))

(assert (not b!880792))

(assert (not b!880963))

(assert (not b!880793))

(assert (not d!276325))

(assert tp_is_empty!4159)

(assert (not b!881006))

(assert (not bm!51391))

(assert (not b!881021))

(assert (not b!881018))

(assert (not b!881023))

(assert (not bm!51417))

(assert (not d!276341))

(assert (not bm!51370))

(assert (not d!276333))

(assert (not b!880789))

(assert (not b!881015))

(assert (not b!881019))

(assert (not bm!51369))

(assert (not b!881011))

(assert (not b!881000))

(assert (not d!276331))

(assert (not b!881017))

(assert (not b!880816))

(assert (not b!881001))

(assert (not bm!51389))

(assert (not bm!51419))

(assert (not b!880960))

(assert (not b!880878))

(assert (not b!881022))

(assert (not bm!51413))

(assert (not b!881014))

(assert (not b!881004))

(assert (not d!276329))

(assert (not b!880962))

(assert (not d!276339))

(assert (not b!880787))

(assert (not d!276315))

(assert (not b!880957))

(assert (not b!880961))

(assert (not b!880720))

(assert (not d!276313))

(assert (not b!881013))

(assert (not b!880783))

(assert (not bm!51382))

(assert (not b!880964))

(assert (not b!881005))

(assert (not d!276321))

(assert (not b!880716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

