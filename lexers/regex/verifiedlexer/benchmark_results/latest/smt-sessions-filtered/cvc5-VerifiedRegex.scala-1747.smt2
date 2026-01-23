; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!87532 () Bool)

(assert start!87532)

(declare-fun b!994968 () Bool)

(assert (=> b!994968 true))

(assert (=> b!994968 true))

(declare-fun lambda!35346 () Int)

(declare-fun lambda!35345 () Int)

(assert (=> b!994968 (not (= lambda!35346 lambda!35345))))

(assert (=> b!994968 true))

(assert (=> b!994968 true))

(declare-fun b!994962 () Bool)

(declare-fun e!638350 () Bool)

(declare-fun tp!303788 () Bool)

(declare-fun tp!303786 () Bool)

(assert (=> b!994962 (= e!638350 (and tp!303788 tp!303786))))

(declare-fun b!994963 () Bool)

(declare-fun res!449412 () Bool)

(declare-fun e!638349 () Bool)

(assert (=> b!994963 (=> res!449412 e!638349)))

(declare-datatypes ((C!6074 0))(
  ( (C!6075 (val!3285 Int)) )
))
(declare-datatypes ((Regex!2752 0))(
  ( (ElementMatch!2752 (c!163631 C!6074)) (Concat!4585 (regOne!6016 Regex!2752) (regTwo!6016 Regex!2752)) (EmptyExpr!2752) (Star!2752 (reg!3081 Regex!2752)) (EmptyLang!2752) (Union!2752 (regOne!6017 Regex!2752) (regTwo!6017 Regex!2752)) )
))
(declare-fun r!15766 () Regex!2752)

(declare-datatypes ((List!9982 0))(
  ( (Nil!9966) (Cons!9966 (h!15367 C!6074) (t!101028 List!9982)) )
))
(declare-datatypes ((tuple2!11350 0))(
  ( (tuple2!11351 (_1!6501 List!9982) (_2!6501 List!9982)) )
))
(declare-fun lt!351160 () tuple2!11350)

(declare-fun matchR!1288 (Regex!2752 List!9982) Bool)

(assert (=> b!994963 (= res!449412 (not (matchR!1288 (regTwo!6016 r!15766) (_2!6501 lt!351160))))))

(declare-fun b!994964 () Bool)

(declare-fun tp!303789 () Bool)

(assert (=> b!994964 (= e!638350 tp!303789)))

(declare-fun b!994965 () Bool)

(declare-fun tp!303787 () Bool)

(declare-fun tp!303785 () Bool)

(assert (=> b!994965 (= e!638350 (and tp!303787 tp!303785))))

(declare-fun b!994966 () Bool)

(declare-fun e!638353 () Bool)

(declare-fun e!638354 () Bool)

(assert (=> b!994966 (= e!638353 (not e!638354))))

(declare-fun res!449411 () Bool)

(assert (=> b!994966 (=> res!449411 e!638354)))

(declare-fun lt!351157 () Bool)

(assert (=> b!994966 (= res!449411 (or (not lt!351157) (and (is-Concat!4585 r!15766) (is-EmptyExpr!2752 (regOne!6016 r!15766))) (and (is-Concat!4585 r!15766) (is-EmptyExpr!2752 (regTwo!6016 r!15766))) (not (is-Concat!4585 r!15766))))))

(declare-fun s!10566 () List!9982)

(declare-fun matchRSpec!551 (Regex!2752 List!9982) Bool)

(assert (=> b!994966 (= lt!351157 (matchRSpec!551 r!15766 s!10566))))

(assert (=> b!994966 (= lt!351157 (matchR!1288 r!15766 s!10566))))

(declare-datatypes ((Unit!15163 0))(
  ( (Unit!15164) )
))
(declare-fun lt!351153 () Unit!15163)

(declare-fun mainMatchTheorem!551 (Regex!2752 List!9982) Unit!15163)

(assert (=> b!994966 (= lt!351153 (mainMatchTheorem!551 r!15766 s!10566))))

(declare-fun b!994967 () Bool)

(declare-fun tp_is_empty!5147 () Bool)

(assert (=> b!994967 (= e!638350 tp_is_empty!5147)))

(declare-fun e!638352 () Bool)

(assert (=> b!994968 (= e!638354 e!638352)))

(declare-fun res!449410 () Bool)

(assert (=> b!994968 (=> res!449410 e!638352)))

(declare-fun isEmpty!6302 (List!9982) Bool)

(assert (=> b!994968 (= res!449410 (isEmpty!6302 s!10566))))

(declare-fun Exists!489 (Int) Bool)

(assert (=> b!994968 (= (Exists!489 lambda!35345) (Exists!489 lambda!35346))))

(declare-fun lt!351154 () Unit!15163)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!239 (Regex!2752 Regex!2752 List!9982) Unit!15163)

(assert (=> b!994968 (= lt!351154 (lemmaExistCutMatchRandMatchRSpecEquivalent!239 (regOne!6016 r!15766) (regTwo!6016 r!15766) s!10566))))

(declare-datatypes ((Option!2317 0))(
  ( (None!2316) (Some!2316 (v!19733 tuple2!11350)) )
))
(declare-fun lt!351158 () Option!2317)

(declare-fun isDefined!1959 (Option!2317) Bool)

(assert (=> b!994968 (= (isDefined!1959 lt!351158) (Exists!489 lambda!35345))))

(declare-fun findConcatSeparation!423 (Regex!2752 Regex!2752 List!9982 List!9982 List!9982) Option!2317)

(assert (=> b!994968 (= lt!351158 (findConcatSeparation!423 (regOne!6016 r!15766) (regTwo!6016 r!15766) Nil!9966 s!10566 s!10566))))

(declare-fun lt!351155 () Unit!15163)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!423 (Regex!2752 Regex!2752 List!9982) Unit!15163)

(assert (=> b!994968 (= lt!351155 (lemmaFindConcatSeparationEquivalentToExists!423 (regOne!6016 r!15766) (regTwo!6016 r!15766) s!10566))))

(declare-fun b!994969 () Bool)

(declare-fun e!638348 () Bool)

(declare-fun lt!351156 () Regex!2752)

(declare-fun validRegex!1221 (Regex!2752) Bool)

(assert (=> b!994969 (= e!638348 (validRegex!1221 lt!351156))))

(declare-fun b!994970 () Bool)

(assert (=> b!994970 (= e!638349 e!638348)))

(declare-fun res!449414 () Bool)

(assert (=> b!994970 (=> (not res!449414) (not e!638348))))

(declare-fun lt!351161 () Regex!2752)

(assert (=> b!994970 (= res!449414 (validRegex!1221 lt!351161))))

(assert (=> b!994970 (matchR!1288 lt!351156 (_2!6501 lt!351160))))

(declare-fun removeUselessConcat!357 (Regex!2752) Regex!2752)

(assert (=> b!994970 (= lt!351156 (removeUselessConcat!357 (regTwo!6016 r!15766)))))

(declare-fun lt!351159 () Unit!15163)

(declare-fun lemmaRemoveUselessConcatSound!203 (Regex!2752 List!9982) Unit!15163)

(assert (=> b!994970 (= lt!351159 (lemmaRemoveUselessConcatSound!203 (regTwo!6016 r!15766) (_2!6501 lt!351160)))))

(assert (=> b!994970 (matchR!1288 lt!351161 (_1!6501 lt!351160))))

(assert (=> b!994970 (= lt!351161 (removeUselessConcat!357 (regOne!6016 r!15766)))))

(declare-fun lt!351152 () Unit!15163)

(assert (=> b!994970 (= lt!351152 (lemmaRemoveUselessConcatSound!203 (regOne!6016 r!15766) (_1!6501 lt!351160)))))

(declare-fun b!994971 () Bool)

(assert (=> b!994971 (= e!638352 e!638349)))

(declare-fun res!449409 () Bool)

(assert (=> b!994971 (=> res!449409 e!638349)))

(assert (=> b!994971 (= res!449409 (not (matchR!1288 (regOne!6016 r!15766) (_1!6501 lt!351160))))))

(declare-fun get!3471 (Option!2317) tuple2!11350)

(assert (=> b!994971 (= lt!351160 (get!3471 lt!351158))))

(declare-fun res!449413 () Bool)

(assert (=> start!87532 (=> (not res!449413) (not e!638353))))

(assert (=> start!87532 (= res!449413 (validRegex!1221 r!15766))))

(assert (=> start!87532 e!638353))

(assert (=> start!87532 e!638350))

(declare-fun e!638351 () Bool)

(assert (=> start!87532 e!638351))

(declare-fun b!994972 () Bool)

(declare-fun tp!303790 () Bool)

(assert (=> b!994972 (= e!638351 (and tp_is_empty!5147 tp!303790))))

(assert (= (and start!87532 res!449413) b!994966))

(assert (= (and b!994966 (not res!449411)) b!994968))

(assert (= (and b!994968 (not res!449410)) b!994971))

(assert (= (and b!994971 (not res!449409)) b!994963))

(assert (= (and b!994963 (not res!449412)) b!994970))

(assert (= (and b!994970 res!449414) b!994969))

(assert (= (and start!87532 (is-ElementMatch!2752 r!15766)) b!994967))

(assert (= (and start!87532 (is-Concat!4585 r!15766)) b!994965))

(assert (= (and start!87532 (is-Star!2752 r!15766)) b!994964))

(assert (= (and start!87532 (is-Union!2752 r!15766)) b!994962))

(assert (= (and start!87532 (is-Cons!9966 s!10566)) b!994972))

(declare-fun m!1187541 () Bool)

(assert (=> b!994968 m!1187541))

(declare-fun m!1187543 () Bool)

(assert (=> b!994968 m!1187543))

(declare-fun m!1187545 () Bool)

(assert (=> b!994968 m!1187545))

(declare-fun m!1187547 () Bool)

(assert (=> b!994968 m!1187547))

(assert (=> b!994968 m!1187541))

(declare-fun m!1187549 () Bool)

(assert (=> b!994968 m!1187549))

(declare-fun m!1187551 () Bool)

(assert (=> b!994968 m!1187551))

(declare-fun m!1187553 () Bool)

(assert (=> b!994968 m!1187553))

(declare-fun m!1187555 () Bool)

(assert (=> b!994963 m!1187555))

(declare-fun m!1187557 () Bool)

(assert (=> start!87532 m!1187557))

(declare-fun m!1187559 () Bool)

(assert (=> b!994970 m!1187559))

(declare-fun m!1187561 () Bool)

(assert (=> b!994970 m!1187561))

(declare-fun m!1187563 () Bool)

(assert (=> b!994970 m!1187563))

(declare-fun m!1187565 () Bool)

(assert (=> b!994970 m!1187565))

(declare-fun m!1187567 () Bool)

(assert (=> b!994970 m!1187567))

(declare-fun m!1187569 () Bool)

(assert (=> b!994970 m!1187569))

(declare-fun m!1187571 () Bool)

(assert (=> b!994970 m!1187571))

(declare-fun m!1187573 () Bool)

(assert (=> b!994971 m!1187573))

(declare-fun m!1187575 () Bool)

(assert (=> b!994971 m!1187575))

(declare-fun m!1187577 () Bool)

(assert (=> b!994966 m!1187577))

(declare-fun m!1187579 () Bool)

(assert (=> b!994966 m!1187579))

(declare-fun m!1187581 () Bool)

(assert (=> b!994966 m!1187581))

(declare-fun m!1187583 () Bool)

(assert (=> b!994969 m!1187583))

(push 1)

(assert (not b!994971))

(assert (not b!994964))

(assert (not start!87532))

(assert (not b!994963))

(assert tp_is_empty!5147)

(assert (not b!994968))

(assert (not b!994962))

(assert (not b!994970))

(assert (not b!994965))

(assert (not b!994969))

(assert (not b!994972))

(assert (not b!994966))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!244966 () Bool)

(declare-fun b!995058 () Bool)

(assert (= bs!244966 (and b!995058 b!994968)))

(declare-fun lambda!35359 () Int)

(assert (=> bs!244966 (not (= lambda!35359 lambda!35345))))

(assert (=> bs!244966 (not (= lambda!35359 lambda!35346))))

(assert (=> b!995058 true))

(assert (=> b!995058 true))

(declare-fun bs!244967 () Bool)

(declare-fun b!995064 () Bool)

(assert (= bs!244967 (and b!995064 b!994968)))

(declare-fun lambda!35360 () Int)

(assert (=> bs!244967 (not (= lambda!35360 lambda!35345))))

(assert (=> bs!244967 (= lambda!35360 lambda!35346)))

(declare-fun bs!244968 () Bool)

(assert (= bs!244968 (and b!995064 b!995058)))

(assert (=> bs!244968 (not (= lambda!35360 lambda!35359))))

(assert (=> b!995064 true))

(assert (=> b!995064 true))

(declare-fun d!290732 () Bool)

(declare-fun c!163641 () Bool)

(assert (=> d!290732 (= c!163641 (is-EmptyExpr!2752 r!15766))))

(declare-fun e!638402 () Bool)

(assert (=> d!290732 (= (matchRSpec!551 r!15766 s!10566) e!638402)))

(declare-fun e!638403 () Bool)

(declare-fun call!65689 () Bool)

(assert (=> b!995058 (= e!638403 call!65689)))

(declare-fun b!995059 () Bool)

(declare-fun c!163644 () Bool)

(assert (=> b!995059 (= c!163644 (is-Union!2752 r!15766))))

(declare-fun e!638401 () Bool)

(declare-fun e!638400 () Bool)

(assert (=> b!995059 (= e!638401 e!638400)))

(declare-fun b!995060 () Bool)

(declare-fun e!638406 () Bool)

(assert (=> b!995060 (= e!638400 e!638406)))

(declare-fun res!449463 () Bool)

(assert (=> b!995060 (= res!449463 (matchRSpec!551 (regOne!6017 r!15766) s!10566))))

(assert (=> b!995060 (=> res!449463 e!638406)))

(declare-fun b!995061 () Bool)

(declare-fun e!638404 () Bool)

(assert (=> b!995061 (= e!638402 e!638404)))

(declare-fun res!449461 () Bool)

(assert (=> b!995061 (= res!449461 (not (is-EmptyLang!2752 r!15766)))))

(assert (=> b!995061 (=> (not res!449461) (not e!638404))))

(declare-fun b!995062 () Bool)

(assert (=> b!995062 (= e!638401 (= s!10566 (Cons!9966 (c!163631 r!15766) Nil!9966)))))

(declare-fun b!995063 () Bool)

(declare-fun e!638405 () Bool)

(assert (=> b!995063 (= e!638400 e!638405)))

(declare-fun c!163643 () Bool)

(assert (=> b!995063 (= c!163643 (is-Star!2752 r!15766))))

(assert (=> b!995064 (= e!638405 call!65689)))

(declare-fun b!995065 () Bool)

(declare-fun res!449462 () Bool)

(assert (=> b!995065 (=> res!449462 e!638403)))

(declare-fun call!65688 () Bool)

(assert (=> b!995065 (= res!449462 call!65688)))

(assert (=> b!995065 (= e!638405 e!638403)))

(declare-fun b!995066 () Bool)

(assert (=> b!995066 (= e!638402 call!65688)))

(declare-fun bm!65683 () Bool)

(assert (=> bm!65683 (= call!65689 (Exists!489 (ite c!163643 lambda!35359 lambda!35360)))))

(declare-fun b!995067 () Bool)

(declare-fun c!163642 () Bool)

(assert (=> b!995067 (= c!163642 (is-ElementMatch!2752 r!15766))))

(assert (=> b!995067 (= e!638404 e!638401)))

(declare-fun bm!65684 () Bool)

(assert (=> bm!65684 (= call!65688 (isEmpty!6302 s!10566))))

(declare-fun b!995068 () Bool)

(assert (=> b!995068 (= e!638406 (matchRSpec!551 (regTwo!6017 r!15766) s!10566))))

(assert (= (and d!290732 c!163641) b!995066))

(assert (= (and d!290732 (not c!163641)) b!995061))

(assert (= (and b!995061 res!449461) b!995067))

(assert (= (and b!995067 c!163642) b!995062))

(assert (= (and b!995067 (not c!163642)) b!995059))

(assert (= (and b!995059 c!163644) b!995060))

(assert (= (and b!995059 (not c!163644)) b!995063))

(assert (= (and b!995060 (not res!449463)) b!995068))

(assert (= (and b!995063 c!163643) b!995065))

(assert (= (and b!995063 (not c!163643)) b!995064))

(assert (= (and b!995065 (not res!449462)) b!995058))

(assert (= (or b!995058 b!995064) bm!65683))

(assert (= (or b!995066 b!995065) bm!65684))

(declare-fun m!1187629 () Bool)

(assert (=> b!995060 m!1187629))

(declare-fun m!1187631 () Bool)

(assert (=> bm!65683 m!1187631))

(assert (=> bm!65684 m!1187545))

(declare-fun m!1187633 () Bool)

(assert (=> b!995068 m!1187633))

(assert (=> b!994966 d!290732))

(declare-fun b!995125 () Bool)

(declare-fun e!638438 () Bool)

(declare-fun lt!351196 () Bool)

(assert (=> b!995125 (= e!638438 (not lt!351196))))

(declare-fun bm!65689 () Bool)

(declare-fun call!65694 () Bool)

(assert (=> bm!65689 (= call!65694 (isEmpty!6302 s!10566))))

(declare-fun b!995126 () Bool)

(declare-fun res!449496 () Bool)

(declare-fun e!638441 () Bool)

(assert (=> b!995126 (=> (not res!449496) (not e!638441))))

(declare-fun tail!1389 (List!9982) List!9982)

(assert (=> b!995126 (= res!449496 (isEmpty!6302 (tail!1389 s!10566)))))

(declare-fun b!995127 () Bool)

(declare-fun e!638439 () Bool)

(declare-fun head!1827 (List!9982) C!6074)

(assert (=> b!995127 (= e!638439 (not (= (head!1827 s!10566) (c!163631 r!15766))))))

(declare-fun b!995128 () Bool)

(declare-fun res!449501 () Bool)

(declare-fun e!638437 () Bool)

(assert (=> b!995128 (=> res!449501 e!638437)))

(assert (=> b!995128 (= res!449501 e!638441)))

(declare-fun res!449503 () Bool)

(assert (=> b!995128 (=> (not res!449503) (not e!638441))))

(assert (=> b!995128 (= res!449503 lt!351196)))

(declare-fun b!995129 () Bool)

(declare-fun e!638435 () Bool)

(assert (=> b!995129 (= e!638437 e!638435)))

(declare-fun res!449497 () Bool)

(assert (=> b!995129 (=> (not res!449497) (not e!638435))))

(assert (=> b!995129 (= res!449497 (not lt!351196))))

(declare-fun b!995130 () Bool)

(declare-fun res!449500 () Bool)

(assert (=> b!995130 (=> res!449500 e!638437)))

(assert (=> b!995130 (= res!449500 (not (is-ElementMatch!2752 r!15766)))))

(assert (=> b!995130 (= e!638438 e!638437)))

(declare-fun d!290736 () Bool)

(declare-fun e!638440 () Bool)

(assert (=> d!290736 e!638440))

(declare-fun c!163659 () Bool)

(assert (=> d!290736 (= c!163659 (is-EmptyExpr!2752 r!15766))))

(declare-fun e!638436 () Bool)

(assert (=> d!290736 (= lt!351196 e!638436)))

(declare-fun c!163657 () Bool)

(assert (=> d!290736 (= c!163657 (isEmpty!6302 s!10566))))

(assert (=> d!290736 (validRegex!1221 r!15766)))

(assert (=> d!290736 (= (matchR!1288 r!15766 s!10566) lt!351196)))

(declare-fun b!995131 () Bool)

(assert (=> b!995131 (= e!638435 e!638439)))

(declare-fun res!449498 () Bool)

(assert (=> b!995131 (=> res!449498 e!638439)))

(assert (=> b!995131 (= res!449498 call!65694)))

(declare-fun b!995132 () Bool)

(assert (=> b!995132 (= e!638440 (= lt!351196 call!65694))))

(declare-fun b!995133 () Bool)

(assert (=> b!995133 (= e!638441 (= (head!1827 s!10566) (c!163631 r!15766)))))

(declare-fun b!995134 () Bool)

(declare-fun derivativeStep!674 (Regex!2752 C!6074) Regex!2752)

(assert (=> b!995134 (= e!638436 (matchR!1288 (derivativeStep!674 r!15766 (head!1827 s!10566)) (tail!1389 s!10566)))))

(declare-fun b!995135 () Bool)

(declare-fun res!449499 () Bool)

(assert (=> b!995135 (=> (not res!449499) (not e!638441))))

(assert (=> b!995135 (= res!449499 (not call!65694))))

(declare-fun b!995136 () Bool)

(declare-fun nullable!868 (Regex!2752) Bool)

(assert (=> b!995136 (= e!638436 (nullable!868 r!15766))))

(declare-fun b!995137 () Bool)

(assert (=> b!995137 (= e!638440 e!638438)))

(declare-fun c!163658 () Bool)

(assert (=> b!995137 (= c!163658 (is-EmptyLang!2752 r!15766))))

(declare-fun b!995138 () Bool)

(declare-fun res!449502 () Bool)

(assert (=> b!995138 (=> res!449502 e!638439)))

(assert (=> b!995138 (= res!449502 (not (isEmpty!6302 (tail!1389 s!10566))))))

(assert (= (and d!290736 c!163657) b!995136))

(assert (= (and d!290736 (not c!163657)) b!995134))

(assert (= (and d!290736 c!163659) b!995132))

(assert (= (and d!290736 (not c!163659)) b!995137))

(assert (= (and b!995137 c!163658) b!995125))

(assert (= (and b!995137 (not c!163658)) b!995130))

(assert (= (and b!995130 (not res!449500)) b!995128))

(assert (= (and b!995128 res!449503) b!995135))

(assert (= (and b!995135 res!449499) b!995126))

(assert (= (and b!995126 res!449496) b!995133))

(assert (= (and b!995128 (not res!449501)) b!995129))

(assert (= (and b!995129 res!449497) b!995131))

(assert (= (and b!995131 (not res!449498)) b!995138))

(assert (= (and b!995138 (not res!449502)) b!995127))

(assert (= (or b!995132 b!995135 b!995131) bm!65689))

(assert (=> d!290736 m!1187545))

(assert (=> d!290736 m!1187557))

(declare-fun m!1187635 () Bool)

(assert (=> b!995134 m!1187635))

(assert (=> b!995134 m!1187635))

(declare-fun m!1187637 () Bool)

(assert (=> b!995134 m!1187637))

(declare-fun m!1187639 () Bool)

(assert (=> b!995134 m!1187639))

(assert (=> b!995134 m!1187637))

(assert (=> b!995134 m!1187639))

(declare-fun m!1187641 () Bool)

(assert (=> b!995134 m!1187641))

(declare-fun m!1187643 () Bool)

(assert (=> b!995136 m!1187643))

(assert (=> b!995126 m!1187639))

(assert (=> b!995126 m!1187639))

(declare-fun m!1187645 () Bool)

(assert (=> b!995126 m!1187645))

(assert (=> b!995127 m!1187635))

(assert (=> b!995133 m!1187635))

(assert (=> b!995138 m!1187639))

(assert (=> b!995138 m!1187639))

(assert (=> b!995138 m!1187645))

(assert (=> bm!65689 m!1187545))

(assert (=> b!994966 d!290736))

(declare-fun d!290738 () Bool)

(assert (=> d!290738 (= (matchR!1288 r!15766 s!10566) (matchRSpec!551 r!15766 s!10566))))

(declare-fun lt!351200 () Unit!15163)

(declare-fun choose!6278 (Regex!2752 List!9982) Unit!15163)

(assert (=> d!290738 (= lt!351200 (choose!6278 r!15766 s!10566))))

(assert (=> d!290738 (validRegex!1221 r!15766)))

(assert (=> d!290738 (= (mainMatchTheorem!551 r!15766 s!10566) lt!351200)))

(declare-fun bs!244969 () Bool)

(assert (= bs!244969 d!290738))

(assert (=> bs!244969 m!1187579))

(assert (=> bs!244969 m!1187577))

(declare-fun m!1187647 () Bool)

(assert (=> bs!244969 m!1187647))

(assert (=> bs!244969 m!1187557))

(assert (=> b!994966 d!290738))

(declare-fun d!290740 () Bool)

(assert (=> d!290740 (= (matchR!1288 (regOne!6016 r!15766) (_1!6501 lt!351160)) (matchR!1288 (removeUselessConcat!357 (regOne!6016 r!15766)) (_1!6501 lt!351160)))))

(declare-fun lt!351203 () Unit!15163)

(declare-fun choose!6279 (Regex!2752 List!9982) Unit!15163)

(assert (=> d!290740 (= lt!351203 (choose!6279 (regOne!6016 r!15766) (_1!6501 lt!351160)))))

(assert (=> d!290740 (validRegex!1221 (regOne!6016 r!15766))))

(assert (=> d!290740 (= (lemmaRemoveUselessConcatSound!203 (regOne!6016 r!15766) (_1!6501 lt!351160)) lt!351203)))

(declare-fun bs!244970 () Bool)

(assert (= bs!244970 d!290740))

(assert (=> bs!244970 m!1187561))

(assert (=> bs!244970 m!1187573))

(assert (=> bs!244970 m!1187561))

(declare-fun m!1187665 () Bool)

(assert (=> bs!244970 m!1187665))

(declare-fun m!1187667 () Bool)

(assert (=> bs!244970 m!1187667))

(declare-fun m!1187669 () Bool)

(assert (=> bs!244970 m!1187669))

(assert (=> b!994970 d!290740))

(declare-fun b!995153 () Bool)

(declare-fun e!638452 () Bool)

(declare-fun lt!351204 () Bool)

(assert (=> b!995153 (= e!638452 (not lt!351204))))

(declare-fun bm!65691 () Bool)

(declare-fun call!65696 () Bool)

(assert (=> bm!65691 (= call!65696 (isEmpty!6302 (_2!6501 lt!351160)))))

(declare-fun b!995154 () Bool)

(declare-fun res!449512 () Bool)

(declare-fun e!638455 () Bool)

(assert (=> b!995154 (=> (not res!449512) (not e!638455))))

(assert (=> b!995154 (= res!449512 (isEmpty!6302 (tail!1389 (_2!6501 lt!351160))))))

(declare-fun b!995155 () Bool)

(declare-fun e!638453 () Bool)

(assert (=> b!995155 (= e!638453 (not (= (head!1827 (_2!6501 lt!351160)) (c!163631 lt!351156))))))

(declare-fun b!995156 () Bool)

(declare-fun res!449517 () Bool)

(declare-fun e!638451 () Bool)

(assert (=> b!995156 (=> res!449517 e!638451)))

(assert (=> b!995156 (= res!449517 e!638455)))

(declare-fun res!449519 () Bool)

(assert (=> b!995156 (=> (not res!449519) (not e!638455))))

(assert (=> b!995156 (= res!449519 lt!351204)))

(declare-fun b!995157 () Bool)

(declare-fun e!638449 () Bool)

(assert (=> b!995157 (= e!638451 e!638449)))

(declare-fun res!449513 () Bool)

(assert (=> b!995157 (=> (not res!449513) (not e!638449))))

(assert (=> b!995157 (= res!449513 (not lt!351204))))

(declare-fun b!995158 () Bool)

(declare-fun res!449516 () Bool)

(assert (=> b!995158 (=> res!449516 e!638451)))

(assert (=> b!995158 (= res!449516 (not (is-ElementMatch!2752 lt!351156)))))

(assert (=> b!995158 (= e!638452 e!638451)))

(declare-fun d!290744 () Bool)

(declare-fun e!638454 () Bool)

(assert (=> d!290744 e!638454))

(declare-fun c!163665 () Bool)

(assert (=> d!290744 (= c!163665 (is-EmptyExpr!2752 lt!351156))))

(declare-fun e!638450 () Bool)

(assert (=> d!290744 (= lt!351204 e!638450)))

(declare-fun c!163663 () Bool)

(assert (=> d!290744 (= c!163663 (isEmpty!6302 (_2!6501 lt!351160)))))

(assert (=> d!290744 (validRegex!1221 lt!351156)))

(assert (=> d!290744 (= (matchR!1288 lt!351156 (_2!6501 lt!351160)) lt!351204)))

(declare-fun b!995159 () Bool)

(assert (=> b!995159 (= e!638449 e!638453)))

(declare-fun res!449514 () Bool)

(assert (=> b!995159 (=> res!449514 e!638453)))

(assert (=> b!995159 (= res!449514 call!65696)))

(declare-fun b!995160 () Bool)

(assert (=> b!995160 (= e!638454 (= lt!351204 call!65696))))

(declare-fun b!995161 () Bool)

(assert (=> b!995161 (= e!638455 (= (head!1827 (_2!6501 lt!351160)) (c!163631 lt!351156)))))

(declare-fun b!995162 () Bool)

(assert (=> b!995162 (= e!638450 (matchR!1288 (derivativeStep!674 lt!351156 (head!1827 (_2!6501 lt!351160))) (tail!1389 (_2!6501 lt!351160))))))

(declare-fun b!995163 () Bool)

(declare-fun res!449515 () Bool)

(assert (=> b!995163 (=> (not res!449515) (not e!638455))))

(assert (=> b!995163 (= res!449515 (not call!65696))))

(declare-fun b!995164 () Bool)

(assert (=> b!995164 (= e!638450 (nullable!868 lt!351156))))

(declare-fun b!995165 () Bool)

(assert (=> b!995165 (= e!638454 e!638452)))

(declare-fun c!163664 () Bool)

(assert (=> b!995165 (= c!163664 (is-EmptyLang!2752 lt!351156))))

(declare-fun b!995166 () Bool)

(declare-fun res!449518 () Bool)

(assert (=> b!995166 (=> res!449518 e!638453)))

(assert (=> b!995166 (= res!449518 (not (isEmpty!6302 (tail!1389 (_2!6501 lt!351160)))))))

(assert (= (and d!290744 c!163663) b!995164))

(assert (= (and d!290744 (not c!163663)) b!995162))

(assert (= (and d!290744 c!163665) b!995160))

(assert (= (and d!290744 (not c!163665)) b!995165))

(assert (= (and b!995165 c!163664) b!995153))

(assert (= (and b!995165 (not c!163664)) b!995158))

(assert (= (and b!995158 (not res!449516)) b!995156))

(assert (= (and b!995156 res!449519) b!995163))

(assert (= (and b!995163 res!449515) b!995154))

(assert (= (and b!995154 res!449512) b!995161))

(assert (= (and b!995156 (not res!449517)) b!995157))

(assert (= (and b!995157 res!449513) b!995159))

(assert (= (and b!995159 (not res!449514)) b!995166))

(assert (= (and b!995166 (not res!449518)) b!995155))

(assert (= (or b!995160 b!995163 b!995159) bm!65691))

(declare-fun m!1187671 () Bool)

(assert (=> d!290744 m!1187671))

(assert (=> d!290744 m!1187583))

(declare-fun m!1187673 () Bool)

(assert (=> b!995162 m!1187673))

(assert (=> b!995162 m!1187673))

(declare-fun m!1187675 () Bool)

(assert (=> b!995162 m!1187675))

(declare-fun m!1187677 () Bool)

(assert (=> b!995162 m!1187677))

(assert (=> b!995162 m!1187675))

(assert (=> b!995162 m!1187677))

(declare-fun m!1187679 () Bool)

(assert (=> b!995162 m!1187679))

(declare-fun m!1187681 () Bool)

(assert (=> b!995164 m!1187681))

(assert (=> b!995154 m!1187677))

(assert (=> b!995154 m!1187677))

(declare-fun m!1187683 () Bool)

(assert (=> b!995154 m!1187683))

(assert (=> b!995155 m!1187673))

(assert (=> b!995161 m!1187673))

(assert (=> b!995166 m!1187677))

(assert (=> b!995166 m!1187677))

(assert (=> b!995166 m!1187683))

(assert (=> bm!65691 m!1187671))

(assert (=> b!994970 d!290744))

(declare-fun d!290746 () Bool)

(assert (=> d!290746 (= (matchR!1288 (regTwo!6016 r!15766) (_2!6501 lt!351160)) (matchR!1288 (removeUselessConcat!357 (regTwo!6016 r!15766)) (_2!6501 lt!351160)))))

(declare-fun lt!351205 () Unit!15163)

(assert (=> d!290746 (= lt!351205 (choose!6279 (regTwo!6016 r!15766) (_2!6501 lt!351160)))))

(assert (=> d!290746 (validRegex!1221 (regTwo!6016 r!15766))))

(assert (=> d!290746 (= (lemmaRemoveUselessConcatSound!203 (regTwo!6016 r!15766) (_2!6501 lt!351160)) lt!351205)))

(declare-fun bs!244971 () Bool)

(assert (= bs!244971 d!290746))

(assert (=> bs!244971 m!1187559))

(assert (=> bs!244971 m!1187555))

(assert (=> bs!244971 m!1187559))

(declare-fun m!1187685 () Bool)

(assert (=> bs!244971 m!1187685))

(declare-fun m!1187687 () Bool)

(assert (=> bs!244971 m!1187687))

(declare-fun m!1187689 () Bool)

(assert (=> bs!244971 m!1187689))

(assert (=> b!994970 d!290746))

(declare-fun b!995207 () Bool)

(declare-fun e!638485 () Regex!2752)

(assert (=> b!995207 (= e!638485 (regOne!6016 r!15766))))

(declare-fun b!995208 () Bool)

(declare-fun c!163680 () Bool)

(assert (=> b!995208 (= c!163680 (is-Concat!4585 (regOne!6016 r!15766)))))

(declare-fun e!638482 () Regex!2752)

(declare-fun e!638484 () Regex!2752)

(assert (=> b!995208 (= e!638482 e!638484)))

(declare-fun bm!65708 () Bool)

(declare-fun call!65717 () Regex!2752)

(declare-fun call!65715 () Regex!2752)

(assert (=> bm!65708 (= call!65717 call!65715)))

(declare-fun bm!65709 () Bool)

(declare-fun call!65714 () Regex!2752)

(declare-fun call!65716 () Regex!2752)

(assert (=> bm!65709 (= call!65714 call!65716)))

(declare-fun b!995209 () Bool)

(declare-fun c!163684 () Bool)

(assert (=> b!995209 (= c!163684 (is-Star!2752 (regOne!6016 r!15766)))))

(declare-fun e!638486 () Regex!2752)

(assert (=> b!995209 (= e!638486 e!638485)))

(declare-fun d!290748 () Bool)

(declare-fun e!638487 () Bool)

(assert (=> d!290748 e!638487))

(declare-fun res!449532 () Bool)

(assert (=> d!290748 (=> (not res!449532) (not e!638487))))

(declare-fun lt!351208 () Regex!2752)

(assert (=> d!290748 (= res!449532 (validRegex!1221 lt!351208))))

(declare-fun e!638483 () Regex!2752)

(assert (=> d!290748 (= lt!351208 e!638483)))

(declare-fun c!163682 () Bool)

(assert (=> d!290748 (= c!163682 (and (is-Concat!4585 (regOne!6016 r!15766)) (is-EmptyExpr!2752 (regOne!6016 (regOne!6016 r!15766)))))))

(assert (=> d!290748 (validRegex!1221 (regOne!6016 r!15766))))

(assert (=> d!290748 (= (removeUselessConcat!357 (regOne!6016 r!15766)) lt!351208)))

(declare-fun b!995210 () Bool)

(assert (=> b!995210 (= e!638487 (= (nullable!868 lt!351208) (nullable!868 (regOne!6016 r!15766))))))

(declare-fun b!995211 () Bool)

(assert (=> b!995211 (= e!638482 call!65716)))

(declare-fun b!995212 () Bool)

(declare-fun call!65713 () Regex!2752)

(assert (=> b!995212 (= e!638483 call!65713)))

(declare-fun c!163683 () Bool)

(declare-fun bm!65710 () Bool)

(assert (=> bm!65710 (= call!65715 (removeUselessConcat!357 (ite c!163680 (regTwo!6016 (regOne!6016 r!15766)) (ite c!163683 (regTwo!6017 (regOne!6016 r!15766)) (reg!3081 (regOne!6016 r!15766))))))))

(declare-fun b!995213 () Bool)

(assert (=> b!995213 (= e!638484 (Concat!4585 call!65714 call!65715))))

(declare-fun b!995214 () Bool)

(assert (=> b!995214 (= e!638483 e!638482)))

(declare-fun c!163681 () Bool)

(assert (=> b!995214 (= c!163681 (and (is-Concat!4585 (regOne!6016 r!15766)) (is-EmptyExpr!2752 (regTwo!6016 (regOne!6016 r!15766)))))))

(declare-fun b!995215 () Bool)

(assert (=> b!995215 (= e!638484 e!638486)))

(assert (=> b!995215 (= c!163683 (is-Union!2752 (regOne!6016 r!15766)))))

(declare-fun bm!65711 () Bool)

(assert (=> bm!65711 (= call!65713 (removeUselessConcat!357 (ite c!163682 (regTwo!6016 (regOne!6016 r!15766)) (ite (or c!163681 c!163680) (regOne!6016 (regOne!6016 r!15766)) (regOne!6017 (regOne!6016 r!15766))))))))

(declare-fun bm!65712 () Bool)

(assert (=> bm!65712 (= call!65716 call!65713)))

(declare-fun b!995216 () Bool)

(assert (=> b!995216 (= e!638485 (Star!2752 call!65717))))

(declare-fun b!995217 () Bool)

(assert (=> b!995217 (= e!638486 (Union!2752 call!65714 call!65717))))

(assert (= (and d!290748 c!163682) b!995212))

(assert (= (and d!290748 (not c!163682)) b!995214))

(assert (= (and b!995214 c!163681) b!995211))

(assert (= (and b!995214 (not c!163681)) b!995208))

(assert (= (and b!995208 c!163680) b!995213))

(assert (= (and b!995208 (not c!163680)) b!995215))

(assert (= (and b!995215 c!163683) b!995217))

(assert (= (and b!995215 (not c!163683)) b!995209))

(assert (= (and b!995209 c!163684) b!995216))

(assert (= (and b!995209 (not c!163684)) b!995207))

(assert (= (or b!995217 b!995216) bm!65708))

(assert (= (or b!995213 bm!65708) bm!65710))

(assert (= (or b!995213 b!995217) bm!65709))

(assert (= (or b!995211 bm!65709) bm!65712))

(assert (= (or b!995212 bm!65712) bm!65711))

(assert (= (and d!290748 res!449532) b!995210))

(declare-fun m!1187691 () Bool)

(assert (=> d!290748 m!1187691))

(assert (=> d!290748 m!1187667))

(declare-fun m!1187693 () Bool)

(assert (=> b!995210 m!1187693))

(declare-fun m!1187695 () Bool)

(assert (=> b!995210 m!1187695))

(declare-fun m!1187697 () Bool)

(assert (=> bm!65710 m!1187697))

(declare-fun m!1187699 () Bool)

(assert (=> bm!65711 m!1187699))

(assert (=> b!994970 d!290748))

(declare-fun b!995259 () Bool)

(declare-fun e!638516 () Bool)

(declare-fun e!638518 () Bool)

(assert (=> b!995259 (= e!638516 e!638518)))

(declare-fun res!449556 () Bool)

(assert (=> b!995259 (=> (not res!449556) (not e!638518))))

(declare-fun call!65730 () Bool)

(assert (=> b!995259 (= res!449556 call!65730)))

(declare-fun d!290750 () Bool)

(declare-fun res!449559 () Bool)

(declare-fun e!638519 () Bool)

(assert (=> d!290750 (=> res!449559 e!638519)))

(assert (=> d!290750 (= res!449559 (is-ElementMatch!2752 lt!351161))))

(assert (=> d!290750 (= (validRegex!1221 lt!351161) e!638519)))

(declare-fun bm!65723 () Bool)

(declare-fun call!65729 () Bool)

(declare-fun c!163695 () Bool)

(assert (=> bm!65723 (= call!65729 (validRegex!1221 (ite c!163695 (regTwo!6017 lt!351161) (regTwo!6016 lt!351161))))))

(declare-fun b!995260 () Bool)

(declare-fun res!449557 () Bool)

(declare-fun e!638522 () Bool)

(assert (=> b!995260 (=> (not res!449557) (not e!638522))))

(assert (=> b!995260 (= res!449557 call!65730)))

(declare-fun e!638520 () Bool)

(assert (=> b!995260 (= e!638520 e!638522)))

(declare-fun bm!65724 () Bool)

(declare-fun call!65728 () Bool)

(assert (=> bm!65724 (= call!65730 call!65728)))

(declare-fun b!995261 () Bool)

(declare-fun e!638517 () Bool)

(declare-fun e!638521 () Bool)

(assert (=> b!995261 (= e!638517 e!638521)))

(declare-fun res!449560 () Bool)

(assert (=> b!995261 (= res!449560 (not (nullable!868 (reg!3081 lt!351161))))))

(assert (=> b!995261 (=> (not res!449560) (not e!638521))))

(declare-fun bm!65725 () Bool)

(declare-fun c!163694 () Bool)

(assert (=> bm!65725 (= call!65728 (validRegex!1221 (ite c!163694 (reg!3081 lt!351161) (ite c!163695 (regOne!6017 lt!351161) (regOne!6016 lt!351161)))))))

(declare-fun b!995262 () Bool)

(assert (=> b!995262 (= e!638518 call!65729)))

(declare-fun b!995263 () Bool)

(declare-fun res!449558 () Bool)

(assert (=> b!995263 (=> res!449558 e!638516)))

(assert (=> b!995263 (= res!449558 (not (is-Concat!4585 lt!351161)))))

(assert (=> b!995263 (= e!638520 e!638516)))

(declare-fun b!995264 () Bool)

(assert (=> b!995264 (= e!638517 e!638520)))

(assert (=> b!995264 (= c!163695 (is-Union!2752 lt!351161))))

(declare-fun b!995265 () Bool)

(assert (=> b!995265 (= e!638521 call!65728)))

(declare-fun b!995266 () Bool)

(assert (=> b!995266 (= e!638519 e!638517)))

(assert (=> b!995266 (= c!163694 (is-Star!2752 lt!351161))))

(declare-fun b!995267 () Bool)

(assert (=> b!995267 (= e!638522 call!65729)))

(assert (= (and d!290750 (not res!449559)) b!995266))

(assert (= (and b!995266 c!163694) b!995261))

(assert (= (and b!995266 (not c!163694)) b!995264))

(assert (= (and b!995261 res!449560) b!995265))

(assert (= (and b!995264 c!163695) b!995260))

(assert (= (and b!995264 (not c!163695)) b!995263))

(assert (= (and b!995260 res!449557) b!995267))

(assert (= (and b!995263 (not res!449558)) b!995259))

(assert (= (and b!995259 res!449556) b!995262))

(assert (= (or b!995267 b!995262) bm!65723))

(assert (= (or b!995260 b!995259) bm!65724))

(assert (= (or b!995265 bm!65724) bm!65725))

(declare-fun m!1187707 () Bool)

(assert (=> bm!65723 m!1187707))

(declare-fun m!1187709 () Bool)

(assert (=> b!995261 m!1187709))

(declare-fun m!1187711 () Bool)

(assert (=> bm!65725 m!1187711))

(assert (=> b!994970 d!290750))

(declare-fun b!995268 () Bool)

(declare-fun e!638526 () Regex!2752)

(assert (=> b!995268 (= e!638526 (regTwo!6016 r!15766))))

(declare-fun b!995269 () Bool)

(declare-fun c!163696 () Bool)

(assert (=> b!995269 (= c!163696 (is-Concat!4585 (regTwo!6016 r!15766)))))

(declare-fun e!638523 () Regex!2752)

(declare-fun e!638525 () Regex!2752)

(assert (=> b!995269 (= e!638523 e!638525)))

(declare-fun bm!65726 () Bool)

(declare-fun call!65735 () Regex!2752)

(declare-fun call!65733 () Regex!2752)

(assert (=> bm!65726 (= call!65735 call!65733)))

(declare-fun bm!65727 () Bool)

(declare-fun call!65732 () Regex!2752)

(declare-fun call!65734 () Regex!2752)

(assert (=> bm!65727 (= call!65732 call!65734)))

(declare-fun b!995270 () Bool)

(declare-fun c!163700 () Bool)

(assert (=> b!995270 (= c!163700 (is-Star!2752 (regTwo!6016 r!15766)))))

(declare-fun e!638527 () Regex!2752)

(assert (=> b!995270 (= e!638527 e!638526)))

(declare-fun d!290754 () Bool)

(declare-fun e!638528 () Bool)

(assert (=> d!290754 e!638528))

(declare-fun res!449561 () Bool)

(assert (=> d!290754 (=> (not res!449561) (not e!638528))))

(declare-fun lt!351210 () Regex!2752)

(assert (=> d!290754 (= res!449561 (validRegex!1221 lt!351210))))

(declare-fun e!638524 () Regex!2752)

(assert (=> d!290754 (= lt!351210 e!638524)))

(declare-fun c!163698 () Bool)

(assert (=> d!290754 (= c!163698 (and (is-Concat!4585 (regTwo!6016 r!15766)) (is-EmptyExpr!2752 (regOne!6016 (regTwo!6016 r!15766)))))))

(assert (=> d!290754 (validRegex!1221 (regTwo!6016 r!15766))))

(assert (=> d!290754 (= (removeUselessConcat!357 (regTwo!6016 r!15766)) lt!351210)))

(declare-fun b!995271 () Bool)

(assert (=> b!995271 (= e!638528 (= (nullable!868 lt!351210) (nullable!868 (regTwo!6016 r!15766))))))

(declare-fun b!995272 () Bool)

(assert (=> b!995272 (= e!638523 call!65734)))

(declare-fun b!995273 () Bool)

(declare-fun call!65731 () Regex!2752)

(assert (=> b!995273 (= e!638524 call!65731)))

(declare-fun c!163699 () Bool)

(declare-fun bm!65728 () Bool)

(assert (=> bm!65728 (= call!65733 (removeUselessConcat!357 (ite c!163696 (regTwo!6016 (regTwo!6016 r!15766)) (ite c!163699 (regTwo!6017 (regTwo!6016 r!15766)) (reg!3081 (regTwo!6016 r!15766))))))))

(declare-fun b!995274 () Bool)

(assert (=> b!995274 (= e!638525 (Concat!4585 call!65732 call!65733))))

(declare-fun b!995275 () Bool)

(assert (=> b!995275 (= e!638524 e!638523)))

(declare-fun c!163697 () Bool)

(assert (=> b!995275 (= c!163697 (and (is-Concat!4585 (regTwo!6016 r!15766)) (is-EmptyExpr!2752 (regTwo!6016 (regTwo!6016 r!15766)))))))

(declare-fun b!995276 () Bool)

(assert (=> b!995276 (= e!638525 e!638527)))

(assert (=> b!995276 (= c!163699 (is-Union!2752 (regTwo!6016 r!15766)))))

(declare-fun bm!65729 () Bool)

(assert (=> bm!65729 (= call!65731 (removeUselessConcat!357 (ite c!163698 (regTwo!6016 (regTwo!6016 r!15766)) (ite (or c!163697 c!163696) (regOne!6016 (regTwo!6016 r!15766)) (regOne!6017 (regTwo!6016 r!15766))))))))

(declare-fun bm!65730 () Bool)

(assert (=> bm!65730 (= call!65734 call!65731)))

(declare-fun b!995277 () Bool)

(assert (=> b!995277 (= e!638526 (Star!2752 call!65735))))

(declare-fun b!995278 () Bool)

(assert (=> b!995278 (= e!638527 (Union!2752 call!65732 call!65735))))

(assert (= (and d!290754 c!163698) b!995273))

(assert (= (and d!290754 (not c!163698)) b!995275))

(assert (= (and b!995275 c!163697) b!995272))

(assert (= (and b!995275 (not c!163697)) b!995269))

(assert (= (and b!995269 c!163696) b!995274))

(assert (= (and b!995269 (not c!163696)) b!995276))

(assert (= (and b!995276 c!163699) b!995278))

(assert (= (and b!995276 (not c!163699)) b!995270))

(assert (= (and b!995270 c!163700) b!995277))

(assert (= (and b!995270 (not c!163700)) b!995268))

(assert (= (or b!995278 b!995277) bm!65726))

(assert (= (or b!995274 bm!65726) bm!65728))

(assert (= (or b!995274 b!995278) bm!65727))

(assert (= (or b!995272 bm!65727) bm!65730))

(assert (= (or b!995273 bm!65730) bm!65729))

(assert (= (and d!290754 res!449561) b!995271))

(declare-fun m!1187729 () Bool)

(assert (=> d!290754 m!1187729))

(assert (=> d!290754 m!1187687))

(declare-fun m!1187731 () Bool)

(assert (=> b!995271 m!1187731))

(declare-fun m!1187733 () Bool)

(assert (=> b!995271 m!1187733))

(declare-fun m!1187735 () Bool)

(assert (=> bm!65728 m!1187735))

(declare-fun m!1187737 () Bool)

(assert (=> bm!65729 m!1187737))

(assert (=> b!994970 d!290754))

(declare-fun b!995279 () Bool)

(declare-fun e!638532 () Bool)

(declare-fun lt!351211 () Bool)

(assert (=> b!995279 (= e!638532 (not lt!351211))))

(declare-fun bm!65731 () Bool)

(declare-fun call!65736 () Bool)

(assert (=> bm!65731 (= call!65736 (isEmpty!6302 (_1!6501 lt!351160)))))

(declare-fun b!995280 () Bool)

(declare-fun res!449562 () Bool)

(declare-fun e!638535 () Bool)

(assert (=> b!995280 (=> (not res!449562) (not e!638535))))

(assert (=> b!995280 (= res!449562 (isEmpty!6302 (tail!1389 (_1!6501 lt!351160))))))

(declare-fun b!995281 () Bool)

(declare-fun e!638533 () Bool)

(assert (=> b!995281 (= e!638533 (not (= (head!1827 (_1!6501 lt!351160)) (c!163631 lt!351161))))))

(declare-fun b!995282 () Bool)

(declare-fun res!449567 () Bool)

(declare-fun e!638531 () Bool)

(assert (=> b!995282 (=> res!449567 e!638531)))

(assert (=> b!995282 (= res!449567 e!638535)))

(declare-fun res!449569 () Bool)

(assert (=> b!995282 (=> (not res!449569) (not e!638535))))

(assert (=> b!995282 (= res!449569 lt!351211)))

(declare-fun b!995283 () Bool)

(declare-fun e!638529 () Bool)

(assert (=> b!995283 (= e!638531 e!638529)))

(declare-fun res!449563 () Bool)

(assert (=> b!995283 (=> (not res!449563) (not e!638529))))

(assert (=> b!995283 (= res!449563 (not lt!351211))))

(declare-fun b!995284 () Bool)

(declare-fun res!449566 () Bool)

(assert (=> b!995284 (=> res!449566 e!638531)))

(assert (=> b!995284 (= res!449566 (not (is-ElementMatch!2752 lt!351161)))))

(assert (=> b!995284 (= e!638532 e!638531)))

(declare-fun d!290758 () Bool)

(declare-fun e!638534 () Bool)

(assert (=> d!290758 e!638534))

(declare-fun c!163703 () Bool)

(assert (=> d!290758 (= c!163703 (is-EmptyExpr!2752 lt!351161))))

(declare-fun e!638530 () Bool)

(assert (=> d!290758 (= lt!351211 e!638530)))

(declare-fun c!163701 () Bool)

(assert (=> d!290758 (= c!163701 (isEmpty!6302 (_1!6501 lt!351160)))))

(assert (=> d!290758 (validRegex!1221 lt!351161)))

(assert (=> d!290758 (= (matchR!1288 lt!351161 (_1!6501 lt!351160)) lt!351211)))

(declare-fun b!995285 () Bool)

(assert (=> b!995285 (= e!638529 e!638533)))

(declare-fun res!449564 () Bool)

(assert (=> b!995285 (=> res!449564 e!638533)))

(assert (=> b!995285 (= res!449564 call!65736)))

(declare-fun b!995286 () Bool)

(assert (=> b!995286 (= e!638534 (= lt!351211 call!65736))))

(declare-fun b!995287 () Bool)

(assert (=> b!995287 (= e!638535 (= (head!1827 (_1!6501 lt!351160)) (c!163631 lt!351161)))))

(declare-fun b!995288 () Bool)

(assert (=> b!995288 (= e!638530 (matchR!1288 (derivativeStep!674 lt!351161 (head!1827 (_1!6501 lt!351160))) (tail!1389 (_1!6501 lt!351160))))))

(declare-fun b!995289 () Bool)

(declare-fun res!449565 () Bool)

(assert (=> b!995289 (=> (not res!449565) (not e!638535))))

(assert (=> b!995289 (= res!449565 (not call!65736))))

(declare-fun b!995290 () Bool)

(assert (=> b!995290 (= e!638530 (nullable!868 lt!351161))))

(declare-fun b!995291 () Bool)

(assert (=> b!995291 (= e!638534 e!638532)))

(declare-fun c!163702 () Bool)

(assert (=> b!995291 (= c!163702 (is-EmptyLang!2752 lt!351161))))

(declare-fun b!995292 () Bool)

(declare-fun res!449568 () Bool)

(assert (=> b!995292 (=> res!449568 e!638533)))

(assert (=> b!995292 (= res!449568 (not (isEmpty!6302 (tail!1389 (_1!6501 lt!351160)))))))

(assert (= (and d!290758 c!163701) b!995290))

(assert (= (and d!290758 (not c!163701)) b!995288))

(assert (= (and d!290758 c!163703) b!995286))

(assert (= (and d!290758 (not c!163703)) b!995291))

(assert (= (and b!995291 c!163702) b!995279))

(assert (= (and b!995291 (not c!163702)) b!995284))

(assert (= (and b!995284 (not res!449566)) b!995282))

(assert (= (and b!995282 res!449569) b!995289))

(assert (= (and b!995289 res!449565) b!995280))

(assert (= (and b!995280 res!449562) b!995287))

(assert (= (and b!995282 (not res!449567)) b!995283))

(assert (= (and b!995283 res!449563) b!995285))

(assert (= (and b!995285 (not res!449564)) b!995292))

(assert (= (and b!995292 (not res!449568)) b!995281))

(assert (= (or b!995286 b!995289 b!995285) bm!65731))

(declare-fun m!1187739 () Bool)

(assert (=> d!290758 m!1187739))

(assert (=> d!290758 m!1187567))

(declare-fun m!1187741 () Bool)

(assert (=> b!995288 m!1187741))

(assert (=> b!995288 m!1187741))

(declare-fun m!1187743 () Bool)

(assert (=> b!995288 m!1187743))

(declare-fun m!1187745 () Bool)

(assert (=> b!995288 m!1187745))

(assert (=> b!995288 m!1187743))

(assert (=> b!995288 m!1187745))

(declare-fun m!1187747 () Bool)

(assert (=> b!995288 m!1187747))

(declare-fun m!1187749 () Bool)

(assert (=> b!995290 m!1187749))

(assert (=> b!995280 m!1187745))

(assert (=> b!995280 m!1187745))

(declare-fun m!1187751 () Bool)

(assert (=> b!995280 m!1187751))

(assert (=> b!995281 m!1187741))

(assert (=> b!995287 m!1187741))

(assert (=> b!995292 m!1187745))

(assert (=> b!995292 m!1187745))

(assert (=> b!995292 m!1187751))

(assert (=> bm!65731 m!1187739))

(assert (=> b!994970 d!290758))

(declare-fun b!995293 () Bool)

(declare-fun e!638536 () Bool)

(declare-fun e!638538 () Bool)

(assert (=> b!995293 (= e!638536 e!638538)))

(declare-fun res!449570 () Bool)

(assert (=> b!995293 (=> (not res!449570) (not e!638538))))

(declare-fun call!65739 () Bool)

(assert (=> b!995293 (= res!449570 call!65739)))

(declare-fun d!290760 () Bool)

(declare-fun res!449573 () Bool)

(declare-fun e!638539 () Bool)

(assert (=> d!290760 (=> res!449573 e!638539)))

(assert (=> d!290760 (= res!449573 (is-ElementMatch!2752 r!15766))))

(assert (=> d!290760 (= (validRegex!1221 r!15766) e!638539)))

(declare-fun bm!65732 () Bool)

(declare-fun call!65738 () Bool)

(declare-fun c!163705 () Bool)

(assert (=> bm!65732 (= call!65738 (validRegex!1221 (ite c!163705 (regTwo!6017 r!15766) (regTwo!6016 r!15766))))))

(declare-fun b!995294 () Bool)

(declare-fun res!449571 () Bool)

(declare-fun e!638542 () Bool)

(assert (=> b!995294 (=> (not res!449571) (not e!638542))))

(assert (=> b!995294 (= res!449571 call!65739)))

(declare-fun e!638540 () Bool)

(assert (=> b!995294 (= e!638540 e!638542)))

(declare-fun bm!65733 () Bool)

(declare-fun call!65737 () Bool)

(assert (=> bm!65733 (= call!65739 call!65737)))

(declare-fun b!995295 () Bool)

(declare-fun e!638537 () Bool)

(declare-fun e!638541 () Bool)

(assert (=> b!995295 (= e!638537 e!638541)))

(declare-fun res!449574 () Bool)

(assert (=> b!995295 (= res!449574 (not (nullable!868 (reg!3081 r!15766))))))

(assert (=> b!995295 (=> (not res!449574) (not e!638541))))

(declare-fun bm!65734 () Bool)

(declare-fun c!163704 () Bool)

(assert (=> bm!65734 (= call!65737 (validRegex!1221 (ite c!163704 (reg!3081 r!15766) (ite c!163705 (regOne!6017 r!15766) (regOne!6016 r!15766)))))))

(declare-fun b!995296 () Bool)

(assert (=> b!995296 (= e!638538 call!65738)))

(declare-fun b!995297 () Bool)

(declare-fun res!449572 () Bool)

(assert (=> b!995297 (=> res!449572 e!638536)))

(assert (=> b!995297 (= res!449572 (not (is-Concat!4585 r!15766)))))

(assert (=> b!995297 (= e!638540 e!638536)))

(declare-fun b!995298 () Bool)

(assert (=> b!995298 (= e!638537 e!638540)))

(assert (=> b!995298 (= c!163705 (is-Union!2752 r!15766))))

(declare-fun b!995299 () Bool)

(assert (=> b!995299 (= e!638541 call!65737)))

(declare-fun b!995300 () Bool)

(assert (=> b!995300 (= e!638539 e!638537)))

(assert (=> b!995300 (= c!163704 (is-Star!2752 r!15766))))

(declare-fun b!995301 () Bool)

(assert (=> b!995301 (= e!638542 call!65738)))

(assert (= (and d!290760 (not res!449573)) b!995300))

(assert (= (and b!995300 c!163704) b!995295))

(assert (= (and b!995300 (not c!163704)) b!995298))

(assert (= (and b!995295 res!449574) b!995299))

(assert (= (and b!995298 c!163705) b!995294))

(assert (= (and b!995298 (not c!163705)) b!995297))

(assert (= (and b!995294 res!449571) b!995301))

(assert (= (and b!995297 (not res!449572)) b!995293))

(assert (= (and b!995293 res!449570) b!995296))

(assert (= (or b!995301 b!995296) bm!65732))

(assert (= (or b!995294 b!995293) bm!65733))

(assert (= (or b!995299 bm!65733) bm!65734))

(declare-fun m!1187753 () Bool)

(assert (=> bm!65732 m!1187753))

(declare-fun m!1187755 () Bool)

(assert (=> b!995295 m!1187755))

(declare-fun m!1187757 () Bool)

(assert (=> bm!65734 m!1187757))

(assert (=> start!87532 d!290760))

(declare-fun b!995302 () Bool)

(declare-fun e!638546 () Bool)

(declare-fun lt!351212 () Bool)

(assert (=> b!995302 (= e!638546 (not lt!351212))))

(declare-fun bm!65735 () Bool)

(declare-fun call!65740 () Bool)

(assert (=> bm!65735 (= call!65740 (isEmpty!6302 (_1!6501 lt!351160)))))

(declare-fun b!995303 () Bool)

(declare-fun res!449575 () Bool)

(declare-fun e!638549 () Bool)

(assert (=> b!995303 (=> (not res!449575) (not e!638549))))

(assert (=> b!995303 (= res!449575 (isEmpty!6302 (tail!1389 (_1!6501 lt!351160))))))

(declare-fun b!995304 () Bool)

(declare-fun e!638547 () Bool)

(assert (=> b!995304 (= e!638547 (not (= (head!1827 (_1!6501 lt!351160)) (c!163631 (regOne!6016 r!15766)))))))

(declare-fun b!995305 () Bool)

(declare-fun res!449580 () Bool)

(declare-fun e!638545 () Bool)

(assert (=> b!995305 (=> res!449580 e!638545)))

(assert (=> b!995305 (= res!449580 e!638549)))

(declare-fun res!449582 () Bool)

(assert (=> b!995305 (=> (not res!449582) (not e!638549))))

(assert (=> b!995305 (= res!449582 lt!351212)))

(declare-fun b!995306 () Bool)

(declare-fun e!638543 () Bool)

(assert (=> b!995306 (= e!638545 e!638543)))

(declare-fun res!449576 () Bool)

(assert (=> b!995306 (=> (not res!449576) (not e!638543))))

(assert (=> b!995306 (= res!449576 (not lt!351212))))

(declare-fun b!995307 () Bool)

(declare-fun res!449579 () Bool)

(assert (=> b!995307 (=> res!449579 e!638545)))

(assert (=> b!995307 (= res!449579 (not (is-ElementMatch!2752 (regOne!6016 r!15766))))))

(assert (=> b!995307 (= e!638546 e!638545)))

(declare-fun d!290764 () Bool)

(declare-fun e!638548 () Bool)

(assert (=> d!290764 e!638548))

(declare-fun c!163708 () Bool)

(assert (=> d!290764 (= c!163708 (is-EmptyExpr!2752 (regOne!6016 r!15766)))))

(declare-fun e!638544 () Bool)

(assert (=> d!290764 (= lt!351212 e!638544)))

(declare-fun c!163706 () Bool)

(assert (=> d!290764 (= c!163706 (isEmpty!6302 (_1!6501 lt!351160)))))

(assert (=> d!290764 (validRegex!1221 (regOne!6016 r!15766))))

(assert (=> d!290764 (= (matchR!1288 (regOne!6016 r!15766) (_1!6501 lt!351160)) lt!351212)))

(declare-fun b!995308 () Bool)

(assert (=> b!995308 (= e!638543 e!638547)))

(declare-fun res!449577 () Bool)

(assert (=> b!995308 (=> res!449577 e!638547)))

(assert (=> b!995308 (= res!449577 call!65740)))

(declare-fun b!995309 () Bool)

(assert (=> b!995309 (= e!638548 (= lt!351212 call!65740))))

(declare-fun b!995310 () Bool)

(assert (=> b!995310 (= e!638549 (= (head!1827 (_1!6501 lt!351160)) (c!163631 (regOne!6016 r!15766))))))

(declare-fun b!995311 () Bool)

(assert (=> b!995311 (= e!638544 (matchR!1288 (derivativeStep!674 (regOne!6016 r!15766) (head!1827 (_1!6501 lt!351160))) (tail!1389 (_1!6501 lt!351160))))))

(declare-fun b!995312 () Bool)

(declare-fun res!449578 () Bool)

(assert (=> b!995312 (=> (not res!449578) (not e!638549))))

(assert (=> b!995312 (= res!449578 (not call!65740))))

(declare-fun b!995313 () Bool)

(assert (=> b!995313 (= e!638544 (nullable!868 (regOne!6016 r!15766)))))

(declare-fun b!995314 () Bool)

(assert (=> b!995314 (= e!638548 e!638546)))

(declare-fun c!163707 () Bool)

(assert (=> b!995314 (= c!163707 (is-EmptyLang!2752 (regOne!6016 r!15766)))))

(declare-fun b!995315 () Bool)

(declare-fun res!449581 () Bool)

(assert (=> b!995315 (=> res!449581 e!638547)))

(assert (=> b!995315 (= res!449581 (not (isEmpty!6302 (tail!1389 (_1!6501 lt!351160)))))))

(assert (= (and d!290764 c!163706) b!995313))

(assert (= (and d!290764 (not c!163706)) b!995311))

(assert (= (and d!290764 c!163708) b!995309))

(assert (= (and d!290764 (not c!163708)) b!995314))

(assert (= (and b!995314 c!163707) b!995302))

(assert (= (and b!995314 (not c!163707)) b!995307))

(assert (= (and b!995307 (not res!449579)) b!995305))

(assert (= (and b!995305 res!449582) b!995312))

(assert (= (and b!995312 res!449578) b!995303))

(assert (= (and b!995303 res!449575) b!995310))

(assert (= (and b!995305 (not res!449580)) b!995306))

(assert (= (and b!995306 res!449576) b!995308))

(assert (= (and b!995308 (not res!449577)) b!995315))

(assert (= (and b!995315 (not res!449581)) b!995304))

(assert (= (or b!995309 b!995312 b!995308) bm!65735))

(assert (=> d!290764 m!1187739))

(assert (=> d!290764 m!1187667))

(assert (=> b!995311 m!1187741))

(assert (=> b!995311 m!1187741))

(declare-fun m!1187759 () Bool)

(assert (=> b!995311 m!1187759))

(assert (=> b!995311 m!1187745))

(assert (=> b!995311 m!1187759))

(assert (=> b!995311 m!1187745))

(declare-fun m!1187761 () Bool)

(assert (=> b!995311 m!1187761))

(assert (=> b!995313 m!1187695))

(assert (=> b!995303 m!1187745))

(assert (=> b!995303 m!1187745))

(assert (=> b!995303 m!1187751))

(assert (=> b!995304 m!1187741))

(assert (=> b!995310 m!1187741))

(assert (=> b!995315 m!1187745))

(assert (=> b!995315 m!1187745))

(assert (=> b!995315 m!1187751))

(assert (=> bm!65735 m!1187739))

(assert (=> b!994971 d!290764))

(declare-fun d!290768 () Bool)

(assert (=> d!290768 (= (get!3471 lt!351158) (v!19733 lt!351158))))

(assert (=> b!994971 d!290768))

(declare-fun b!995316 () Bool)

(declare-fun e!638550 () Bool)

(declare-fun e!638552 () Bool)

(assert (=> b!995316 (= e!638550 e!638552)))

(declare-fun res!449583 () Bool)

(assert (=> b!995316 (=> (not res!449583) (not e!638552))))

(declare-fun call!65743 () Bool)

(assert (=> b!995316 (= res!449583 call!65743)))

(declare-fun d!290770 () Bool)

(declare-fun res!449586 () Bool)

(declare-fun e!638553 () Bool)

(assert (=> d!290770 (=> res!449586 e!638553)))

(assert (=> d!290770 (= res!449586 (is-ElementMatch!2752 lt!351156))))

(assert (=> d!290770 (= (validRegex!1221 lt!351156) e!638553)))

(declare-fun bm!65736 () Bool)

(declare-fun call!65742 () Bool)

(declare-fun c!163710 () Bool)

(assert (=> bm!65736 (= call!65742 (validRegex!1221 (ite c!163710 (regTwo!6017 lt!351156) (regTwo!6016 lt!351156))))))

(declare-fun b!995317 () Bool)

(declare-fun res!449584 () Bool)

(declare-fun e!638556 () Bool)

(assert (=> b!995317 (=> (not res!449584) (not e!638556))))

(assert (=> b!995317 (= res!449584 call!65743)))

(declare-fun e!638554 () Bool)

(assert (=> b!995317 (= e!638554 e!638556)))

(declare-fun bm!65737 () Bool)

(declare-fun call!65741 () Bool)

(assert (=> bm!65737 (= call!65743 call!65741)))

(declare-fun b!995318 () Bool)

(declare-fun e!638551 () Bool)

(declare-fun e!638555 () Bool)

(assert (=> b!995318 (= e!638551 e!638555)))

(declare-fun res!449587 () Bool)

(assert (=> b!995318 (= res!449587 (not (nullable!868 (reg!3081 lt!351156))))))

(assert (=> b!995318 (=> (not res!449587) (not e!638555))))

(declare-fun c!163709 () Bool)

(declare-fun bm!65738 () Bool)

(assert (=> bm!65738 (= call!65741 (validRegex!1221 (ite c!163709 (reg!3081 lt!351156) (ite c!163710 (regOne!6017 lt!351156) (regOne!6016 lt!351156)))))))

(declare-fun b!995319 () Bool)

(assert (=> b!995319 (= e!638552 call!65742)))

(declare-fun b!995320 () Bool)

(declare-fun res!449585 () Bool)

(assert (=> b!995320 (=> res!449585 e!638550)))

(assert (=> b!995320 (= res!449585 (not (is-Concat!4585 lt!351156)))))

(assert (=> b!995320 (= e!638554 e!638550)))

(declare-fun b!995321 () Bool)

(assert (=> b!995321 (= e!638551 e!638554)))

(assert (=> b!995321 (= c!163710 (is-Union!2752 lt!351156))))

(declare-fun b!995322 () Bool)

(assert (=> b!995322 (= e!638555 call!65741)))

(declare-fun b!995323 () Bool)

(assert (=> b!995323 (= e!638553 e!638551)))

(assert (=> b!995323 (= c!163709 (is-Star!2752 lt!351156))))

(declare-fun b!995324 () Bool)

(assert (=> b!995324 (= e!638556 call!65742)))

(assert (= (and d!290770 (not res!449586)) b!995323))

(assert (= (and b!995323 c!163709) b!995318))

(assert (= (and b!995323 (not c!163709)) b!995321))

(assert (= (and b!995318 res!449587) b!995322))

(assert (= (and b!995321 c!163710) b!995317))

(assert (= (and b!995321 (not c!163710)) b!995320))

(assert (= (and b!995317 res!449584) b!995324))

(assert (= (and b!995320 (not res!449585)) b!995316))

(assert (= (and b!995316 res!449583) b!995319))

(assert (= (or b!995324 b!995319) bm!65736))

(assert (= (or b!995317 b!995316) bm!65737))

(assert (= (or b!995322 bm!65737) bm!65738))

(declare-fun m!1187765 () Bool)

(assert (=> bm!65736 m!1187765))

(declare-fun m!1187767 () Bool)

(assert (=> b!995318 m!1187767))

(declare-fun m!1187769 () Bool)

(assert (=> bm!65738 m!1187769))

(assert (=> b!994969 d!290770))

(declare-fun b!995325 () Bool)

(declare-fun e!638560 () Bool)

(declare-fun lt!351213 () Bool)

(assert (=> b!995325 (= e!638560 (not lt!351213))))

(declare-fun bm!65739 () Bool)

(declare-fun call!65744 () Bool)

(assert (=> bm!65739 (= call!65744 (isEmpty!6302 (_2!6501 lt!351160)))))

(declare-fun b!995326 () Bool)

(declare-fun res!449588 () Bool)

(declare-fun e!638563 () Bool)

(assert (=> b!995326 (=> (not res!449588) (not e!638563))))

(assert (=> b!995326 (= res!449588 (isEmpty!6302 (tail!1389 (_2!6501 lt!351160))))))

(declare-fun b!995327 () Bool)

(declare-fun e!638561 () Bool)

(assert (=> b!995327 (= e!638561 (not (= (head!1827 (_2!6501 lt!351160)) (c!163631 (regTwo!6016 r!15766)))))))

(declare-fun b!995328 () Bool)

(declare-fun res!449593 () Bool)

(declare-fun e!638559 () Bool)

(assert (=> b!995328 (=> res!449593 e!638559)))

(assert (=> b!995328 (= res!449593 e!638563)))

(declare-fun res!449595 () Bool)

(assert (=> b!995328 (=> (not res!449595) (not e!638563))))

(assert (=> b!995328 (= res!449595 lt!351213)))

(declare-fun b!995329 () Bool)

(declare-fun e!638557 () Bool)

(assert (=> b!995329 (= e!638559 e!638557)))

(declare-fun res!449589 () Bool)

(assert (=> b!995329 (=> (not res!449589) (not e!638557))))

(assert (=> b!995329 (= res!449589 (not lt!351213))))

(declare-fun b!995330 () Bool)

(declare-fun res!449592 () Bool)

(assert (=> b!995330 (=> res!449592 e!638559)))

(assert (=> b!995330 (= res!449592 (not (is-ElementMatch!2752 (regTwo!6016 r!15766))))))

(assert (=> b!995330 (= e!638560 e!638559)))

(declare-fun d!290774 () Bool)

(declare-fun e!638562 () Bool)

(assert (=> d!290774 e!638562))

(declare-fun c!163713 () Bool)

(assert (=> d!290774 (= c!163713 (is-EmptyExpr!2752 (regTwo!6016 r!15766)))))

(declare-fun e!638558 () Bool)

(assert (=> d!290774 (= lt!351213 e!638558)))

(declare-fun c!163711 () Bool)

(assert (=> d!290774 (= c!163711 (isEmpty!6302 (_2!6501 lt!351160)))))

(assert (=> d!290774 (validRegex!1221 (regTwo!6016 r!15766))))

(assert (=> d!290774 (= (matchR!1288 (regTwo!6016 r!15766) (_2!6501 lt!351160)) lt!351213)))

(declare-fun b!995331 () Bool)

(assert (=> b!995331 (= e!638557 e!638561)))

(declare-fun res!449590 () Bool)

(assert (=> b!995331 (=> res!449590 e!638561)))

(assert (=> b!995331 (= res!449590 call!65744)))

(declare-fun b!995332 () Bool)

(assert (=> b!995332 (= e!638562 (= lt!351213 call!65744))))

(declare-fun b!995333 () Bool)

(assert (=> b!995333 (= e!638563 (= (head!1827 (_2!6501 lt!351160)) (c!163631 (regTwo!6016 r!15766))))))

(declare-fun b!995334 () Bool)

(assert (=> b!995334 (= e!638558 (matchR!1288 (derivativeStep!674 (regTwo!6016 r!15766) (head!1827 (_2!6501 lt!351160))) (tail!1389 (_2!6501 lt!351160))))))

(declare-fun b!995335 () Bool)

(declare-fun res!449591 () Bool)

(assert (=> b!995335 (=> (not res!449591) (not e!638563))))

(assert (=> b!995335 (= res!449591 (not call!65744))))

(declare-fun b!995336 () Bool)

(assert (=> b!995336 (= e!638558 (nullable!868 (regTwo!6016 r!15766)))))

(declare-fun b!995337 () Bool)

(assert (=> b!995337 (= e!638562 e!638560)))

(declare-fun c!163712 () Bool)

(assert (=> b!995337 (= c!163712 (is-EmptyLang!2752 (regTwo!6016 r!15766)))))

(declare-fun b!995338 () Bool)

(declare-fun res!449594 () Bool)

(assert (=> b!995338 (=> res!449594 e!638561)))

(assert (=> b!995338 (= res!449594 (not (isEmpty!6302 (tail!1389 (_2!6501 lt!351160)))))))

(assert (= (and d!290774 c!163711) b!995336))

(assert (= (and d!290774 (not c!163711)) b!995334))

(assert (= (and d!290774 c!163713) b!995332))

(assert (= (and d!290774 (not c!163713)) b!995337))

(assert (= (and b!995337 c!163712) b!995325))

(assert (= (and b!995337 (not c!163712)) b!995330))

(assert (= (and b!995330 (not res!449592)) b!995328))

(assert (= (and b!995328 res!449595) b!995335))

(assert (= (and b!995335 res!449591) b!995326))

(assert (= (and b!995326 res!449588) b!995333))

(assert (= (and b!995328 (not res!449593)) b!995329))

(assert (= (and b!995329 res!449589) b!995331))

(assert (= (and b!995331 (not res!449590)) b!995338))

(assert (= (and b!995338 (not res!449594)) b!995327))

(assert (= (or b!995332 b!995335 b!995331) bm!65739))

(assert (=> d!290774 m!1187671))

(assert (=> d!290774 m!1187687))

(assert (=> b!995334 m!1187673))

(assert (=> b!995334 m!1187673))

(declare-fun m!1187773 () Bool)

(assert (=> b!995334 m!1187773))

(assert (=> b!995334 m!1187677))

(assert (=> b!995334 m!1187773))

(assert (=> b!995334 m!1187677))

(declare-fun m!1187775 () Bool)

(assert (=> b!995334 m!1187775))

(assert (=> b!995336 m!1187733))

(assert (=> b!995326 m!1187677))

(assert (=> b!995326 m!1187677))

(assert (=> b!995326 m!1187683))

(assert (=> b!995327 m!1187673))

(assert (=> b!995333 m!1187673))

(assert (=> b!995338 m!1187677))

(assert (=> b!995338 m!1187677))

(assert (=> b!995338 m!1187683))

(assert (=> bm!65739 m!1187671))

(assert (=> b!994963 d!290774))

(declare-fun d!290778 () Bool)

(declare-fun choose!6280 (Int) Bool)

(assert (=> d!290778 (= (Exists!489 lambda!35346) (choose!6280 lambda!35346))))

(declare-fun bs!244974 () Bool)

(assert (= bs!244974 d!290778))

(declare-fun m!1187777 () Bool)

(assert (=> bs!244974 m!1187777))

(assert (=> b!994968 d!290778))

(declare-fun d!290780 () Bool)

(assert (=> d!290780 (= (Exists!489 lambda!35345) (choose!6280 lambda!35345))))

(declare-fun bs!244975 () Bool)

(assert (= bs!244975 d!290780))

(declare-fun m!1187779 () Bool)

(assert (=> bs!244975 m!1187779))

(assert (=> b!994968 d!290780))

(declare-fun bs!244976 () Bool)

(declare-fun d!290782 () Bool)

(assert (= bs!244976 (and d!290782 b!994968)))

(declare-fun lambda!35363 () Int)

(assert (=> bs!244976 (= lambda!35363 lambda!35345)))

(assert (=> bs!244976 (not (= lambda!35363 lambda!35346))))

(declare-fun bs!244977 () Bool)

(assert (= bs!244977 (and d!290782 b!995058)))

(assert (=> bs!244977 (not (= lambda!35363 lambda!35359))))

(declare-fun bs!244978 () Bool)

(assert (= bs!244978 (and d!290782 b!995064)))

(assert (=> bs!244978 (not (= lambda!35363 lambda!35360))))

(assert (=> d!290782 true))

(assert (=> d!290782 true))

(assert (=> d!290782 true))

(assert (=> d!290782 (= (isDefined!1959 (findConcatSeparation!423 (regOne!6016 r!15766) (regTwo!6016 r!15766) Nil!9966 s!10566 s!10566)) (Exists!489 lambda!35363))))

(declare-fun lt!351216 () Unit!15163)

(declare-fun choose!6281 (Regex!2752 Regex!2752 List!9982) Unit!15163)

(assert (=> d!290782 (= lt!351216 (choose!6281 (regOne!6016 r!15766) (regTwo!6016 r!15766) s!10566))))

(assert (=> d!290782 (validRegex!1221 (regOne!6016 r!15766))))

(assert (=> d!290782 (= (lemmaFindConcatSeparationEquivalentToExists!423 (regOne!6016 r!15766) (regTwo!6016 r!15766) s!10566) lt!351216)))

(declare-fun bs!244979 () Bool)

(assert (= bs!244979 d!290782))

(assert (=> bs!244979 m!1187667))

(assert (=> bs!244979 m!1187549))

(assert (=> bs!244979 m!1187549))

(declare-fun m!1187781 () Bool)

(assert (=> bs!244979 m!1187781))

(declare-fun m!1187783 () Bool)

(assert (=> bs!244979 m!1187783))

(declare-fun m!1187785 () Bool)

(assert (=> bs!244979 m!1187785))

(assert (=> b!994968 d!290782))

(declare-fun b!995365 () Bool)

(declare-fun e!638580 () Option!2317)

(declare-fun e!638582 () Option!2317)

(assert (=> b!995365 (= e!638580 e!638582)))

(declare-fun c!163718 () Bool)

(assert (=> b!995365 (= c!163718 (is-Nil!9966 s!10566))))

(declare-fun b!995366 () Bool)

(assert (=> b!995366 (= e!638582 None!2316)))

(declare-fun b!995368 () Bool)

(declare-fun e!638579 () Bool)

(assert (=> b!995368 (= e!638579 (matchR!1288 (regTwo!6016 r!15766) s!10566))))

(declare-fun b!995369 () Bool)

(declare-fun e!638578 () Bool)

(declare-fun lt!351228 () Option!2317)

(assert (=> b!995369 (= e!638578 (not (isDefined!1959 lt!351228)))))

(declare-fun b!995370 () Bool)

(declare-fun res!449614 () Bool)

(declare-fun e!638581 () Bool)

(assert (=> b!995370 (=> (not res!449614) (not e!638581))))

(assert (=> b!995370 (= res!449614 (matchR!1288 (regTwo!6016 r!15766) (_2!6501 (get!3471 lt!351228))))))

(declare-fun b!995371 () Bool)

(declare-fun ++!2713 (List!9982 List!9982) List!9982)

(assert (=> b!995371 (= e!638581 (= (++!2713 (_1!6501 (get!3471 lt!351228)) (_2!6501 (get!3471 lt!351228))) s!10566))))

(declare-fun b!995367 () Bool)

(declare-fun res!449618 () Bool)

(assert (=> b!995367 (=> (not res!449618) (not e!638581))))

(assert (=> b!995367 (= res!449618 (matchR!1288 (regOne!6016 r!15766) (_1!6501 (get!3471 lt!351228))))))

(declare-fun d!290784 () Bool)

(assert (=> d!290784 e!638578))

(declare-fun res!449617 () Bool)

(assert (=> d!290784 (=> res!449617 e!638578)))

(assert (=> d!290784 (= res!449617 e!638581)))

(declare-fun res!449615 () Bool)

(assert (=> d!290784 (=> (not res!449615) (not e!638581))))

(assert (=> d!290784 (= res!449615 (isDefined!1959 lt!351228))))

(assert (=> d!290784 (= lt!351228 e!638580)))

(declare-fun c!163719 () Bool)

(assert (=> d!290784 (= c!163719 e!638579)))

(declare-fun res!449616 () Bool)

(assert (=> d!290784 (=> (not res!449616) (not e!638579))))

(assert (=> d!290784 (= res!449616 (matchR!1288 (regOne!6016 r!15766) Nil!9966))))

(assert (=> d!290784 (validRegex!1221 (regOne!6016 r!15766))))

(assert (=> d!290784 (= (findConcatSeparation!423 (regOne!6016 r!15766) (regTwo!6016 r!15766) Nil!9966 s!10566 s!10566) lt!351228)))

(declare-fun b!995372 () Bool)

(declare-fun lt!351226 () Unit!15163)

(declare-fun lt!351227 () Unit!15163)

(assert (=> b!995372 (= lt!351226 lt!351227)))

(assert (=> b!995372 (= (++!2713 (++!2713 Nil!9966 (Cons!9966 (h!15367 s!10566) Nil!9966)) (t!101028 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!313 (List!9982 C!6074 List!9982 List!9982) Unit!15163)

(assert (=> b!995372 (= lt!351227 (lemmaMoveElementToOtherListKeepsConcatEq!313 Nil!9966 (h!15367 s!10566) (t!101028 s!10566) s!10566))))

(assert (=> b!995372 (= e!638582 (findConcatSeparation!423 (regOne!6016 r!15766) (regTwo!6016 r!15766) (++!2713 Nil!9966 (Cons!9966 (h!15367 s!10566) Nil!9966)) (t!101028 s!10566) s!10566))))

(declare-fun b!995373 () Bool)

(assert (=> b!995373 (= e!638580 (Some!2316 (tuple2!11351 Nil!9966 s!10566)))))

(assert (= (and d!290784 res!449616) b!995368))

(assert (= (and d!290784 c!163719) b!995373))

(assert (= (and d!290784 (not c!163719)) b!995365))

(assert (= (and b!995365 c!163718) b!995366))

(assert (= (and b!995365 (not c!163718)) b!995372))

(assert (= (and d!290784 res!449615) b!995367))

(assert (= (and b!995367 res!449618) b!995370))

(assert (= (and b!995370 res!449614) b!995371))

(assert (= (and d!290784 (not res!449617)) b!995369))

(declare-fun m!1187793 () Bool)

(assert (=> b!995372 m!1187793))

(assert (=> b!995372 m!1187793))

(declare-fun m!1187795 () Bool)

(assert (=> b!995372 m!1187795))

(declare-fun m!1187797 () Bool)

(assert (=> b!995372 m!1187797))

(assert (=> b!995372 m!1187793))

(declare-fun m!1187799 () Bool)

(assert (=> b!995372 m!1187799))

(declare-fun m!1187801 () Bool)

(assert (=> b!995371 m!1187801))

(declare-fun m!1187803 () Bool)

(assert (=> b!995371 m!1187803))

(assert (=> b!995370 m!1187801))

(declare-fun m!1187805 () Bool)

(assert (=> b!995370 m!1187805))

(declare-fun m!1187807 () Bool)

(assert (=> b!995368 m!1187807))

(declare-fun m!1187809 () Bool)

(assert (=> d!290784 m!1187809))

(declare-fun m!1187811 () Bool)

(assert (=> d!290784 m!1187811))

(assert (=> d!290784 m!1187667))

(assert (=> b!995367 m!1187801))

(declare-fun m!1187813 () Bool)

(assert (=> b!995367 m!1187813))

(assert (=> b!995369 m!1187809))

(assert (=> b!994968 d!290784))

(declare-fun bs!244982 () Bool)

(declare-fun d!290788 () Bool)

(assert (= bs!244982 (and d!290788 b!994968)))

(declare-fun lambda!35371 () Int)

(assert (=> bs!244982 (not (= lambda!35371 lambda!35346))))

(declare-fun bs!244983 () Bool)

(assert (= bs!244983 (and d!290788 b!995064)))

(assert (=> bs!244983 (not (= lambda!35371 lambda!35360))))

(declare-fun bs!244984 () Bool)

(assert (= bs!244984 (and d!290788 d!290782)))

(assert (=> bs!244984 (= lambda!35371 lambda!35363)))

(declare-fun bs!244985 () Bool)

(assert (= bs!244985 (and d!290788 b!995058)))

(assert (=> bs!244985 (not (= lambda!35371 lambda!35359))))

(assert (=> bs!244982 (= lambda!35371 lambda!35345)))

(assert (=> d!290788 true))

(assert (=> d!290788 true))

(assert (=> d!290788 true))

(declare-fun lambda!35372 () Int)

(assert (=> bs!244982 (= lambda!35372 lambda!35346)))

(assert (=> bs!244983 (= lambda!35372 lambda!35360)))

(declare-fun bs!244986 () Bool)

(assert (= bs!244986 d!290788))

(assert (=> bs!244986 (not (= lambda!35372 lambda!35371))))

(assert (=> bs!244984 (not (= lambda!35372 lambda!35363))))

(assert (=> bs!244985 (not (= lambda!35372 lambda!35359))))

(assert (=> bs!244982 (not (= lambda!35372 lambda!35345))))

(assert (=> d!290788 true))

(assert (=> d!290788 true))

(assert (=> d!290788 true))

(assert (=> d!290788 (= (Exists!489 lambda!35371) (Exists!489 lambda!35372))))

(declare-fun lt!351231 () Unit!15163)

(declare-fun choose!6284 (Regex!2752 Regex!2752 List!9982) Unit!15163)

(assert (=> d!290788 (= lt!351231 (choose!6284 (regOne!6016 r!15766) (regTwo!6016 r!15766) s!10566))))

(assert (=> d!290788 (validRegex!1221 (regOne!6016 r!15766))))

(assert (=> d!290788 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!239 (regOne!6016 r!15766) (regTwo!6016 r!15766) s!10566) lt!351231)))

(declare-fun m!1187815 () Bool)

(assert (=> bs!244986 m!1187815))

(declare-fun m!1187817 () Bool)

(assert (=> bs!244986 m!1187817))

(declare-fun m!1187819 () Bool)

(assert (=> bs!244986 m!1187819))

(assert (=> bs!244986 m!1187667))

(assert (=> b!994968 d!290788))

(declare-fun d!290790 () Bool)

(assert (=> d!290790 (= (isEmpty!6302 s!10566) (is-Nil!9966 s!10566))))

(assert (=> b!994968 d!290790))

(declare-fun d!290792 () Bool)

(declare-fun isEmpty!6305 (Option!2317) Bool)

(assert (=> d!290792 (= (isDefined!1959 lt!351158) (not (isEmpty!6305 lt!351158)))))

(declare-fun bs!244987 () Bool)

(assert (= bs!244987 d!290792))

(declare-fun m!1187821 () Bool)

(assert (=> bs!244987 m!1187821))

(assert (=> b!994968 d!290792))

(declare-fun b!995386 () Bool)

(declare-fun e!638589 () Bool)

(declare-fun tp!303811 () Bool)

(assert (=> b!995386 (= e!638589 (and tp_is_empty!5147 tp!303811))))

(assert (=> b!994972 (= tp!303790 e!638589)))

(assert (= (and b!994972 (is-Cons!9966 (t!101028 s!10566))) b!995386))

(declare-fun b!995397 () Bool)

(declare-fun e!638592 () Bool)

(assert (=> b!995397 (= e!638592 tp_is_empty!5147)))

(assert (=> b!994965 (= tp!303787 e!638592)))

(declare-fun b!995400 () Bool)

(declare-fun tp!303825 () Bool)

(declare-fun tp!303823 () Bool)

(assert (=> b!995400 (= e!638592 (and tp!303825 tp!303823))))

(declare-fun b!995399 () Bool)

(declare-fun tp!303824 () Bool)

(assert (=> b!995399 (= e!638592 tp!303824)))

(declare-fun b!995398 () Bool)

(declare-fun tp!303826 () Bool)

(declare-fun tp!303822 () Bool)

(assert (=> b!995398 (= e!638592 (and tp!303826 tp!303822))))

(assert (= (and b!994965 (is-ElementMatch!2752 (regOne!6016 r!15766))) b!995397))

(assert (= (and b!994965 (is-Concat!4585 (regOne!6016 r!15766))) b!995398))

(assert (= (and b!994965 (is-Star!2752 (regOne!6016 r!15766))) b!995399))

(assert (= (and b!994965 (is-Union!2752 (regOne!6016 r!15766))) b!995400))

(declare-fun b!995401 () Bool)

(declare-fun e!638593 () Bool)

(assert (=> b!995401 (= e!638593 tp_is_empty!5147)))

(assert (=> b!994965 (= tp!303785 e!638593)))

(declare-fun b!995404 () Bool)

(declare-fun tp!303830 () Bool)

(declare-fun tp!303828 () Bool)

(assert (=> b!995404 (= e!638593 (and tp!303830 tp!303828))))

(declare-fun b!995403 () Bool)

(declare-fun tp!303829 () Bool)

(assert (=> b!995403 (= e!638593 tp!303829)))

(declare-fun b!995402 () Bool)

(declare-fun tp!303831 () Bool)

(declare-fun tp!303827 () Bool)

(assert (=> b!995402 (= e!638593 (and tp!303831 tp!303827))))

(assert (= (and b!994965 (is-ElementMatch!2752 (regTwo!6016 r!15766))) b!995401))

(assert (= (and b!994965 (is-Concat!4585 (regTwo!6016 r!15766))) b!995402))

(assert (= (and b!994965 (is-Star!2752 (regTwo!6016 r!15766))) b!995403))

(assert (= (and b!994965 (is-Union!2752 (regTwo!6016 r!15766))) b!995404))

(declare-fun b!995405 () Bool)

(declare-fun e!638594 () Bool)

(assert (=> b!995405 (= e!638594 tp_is_empty!5147)))

(assert (=> b!994964 (= tp!303789 e!638594)))

(declare-fun b!995408 () Bool)

(declare-fun tp!303835 () Bool)

(declare-fun tp!303833 () Bool)

(assert (=> b!995408 (= e!638594 (and tp!303835 tp!303833))))

(declare-fun b!995407 () Bool)

(declare-fun tp!303834 () Bool)

(assert (=> b!995407 (= e!638594 tp!303834)))

(declare-fun b!995406 () Bool)

(declare-fun tp!303836 () Bool)

(declare-fun tp!303832 () Bool)

(assert (=> b!995406 (= e!638594 (and tp!303836 tp!303832))))

(assert (= (and b!994964 (is-ElementMatch!2752 (reg!3081 r!15766))) b!995405))

(assert (= (and b!994964 (is-Concat!4585 (reg!3081 r!15766))) b!995406))

(assert (= (and b!994964 (is-Star!2752 (reg!3081 r!15766))) b!995407))

(assert (= (and b!994964 (is-Union!2752 (reg!3081 r!15766))) b!995408))

(declare-fun b!995409 () Bool)

(declare-fun e!638595 () Bool)

(assert (=> b!995409 (= e!638595 tp_is_empty!5147)))

(assert (=> b!994962 (= tp!303788 e!638595)))

(declare-fun b!995412 () Bool)

(declare-fun tp!303840 () Bool)

(declare-fun tp!303838 () Bool)

(assert (=> b!995412 (= e!638595 (and tp!303840 tp!303838))))

(declare-fun b!995411 () Bool)

(declare-fun tp!303839 () Bool)

(assert (=> b!995411 (= e!638595 tp!303839)))

(declare-fun b!995410 () Bool)

(declare-fun tp!303841 () Bool)

(declare-fun tp!303837 () Bool)

(assert (=> b!995410 (= e!638595 (and tp!303841 tp!303837))))

(assert (= (and b!994962 (is-ElementMatch!2752 (regOne!6017 r!15766))) b!995409))

(assert (= (and b!994962 (is-Concat!4585 (regOne!6017 r!15766))) b!995410))

(assert (= (and b!994962 (is-Star!2752 (regOne!6017 r!15766))) b!995411))

(assert (= (and b!994962 (is-Union!2752 (regOne!6017 r!15766))) b!995412))

(declare-fun b!995413 () Bool)

(declare-fun e!638596 () Bool)

(assert (=> b!995413 (= e!638596 tp_is_empty!5147)))

(assert (=> b!994962 (= tp!303786 e!638596)))

(declare-fun b!995416 () Bool)

(declare-fun tp!303845 () Bool)

(declare-fun tp!303843 () Bool)

(assert (=> b!995416 (= e!638596 (and tp!303845 tp!303843))))

(declare-fun b!995415 () Bool)

(declare-fun tp!303844 () Bool)

(assert (=> b!995415 (= e!638596 tp!303844)))

(declare-fun b!995414 () Bool)

(declare-fun tp!303846 () Bool)

(declare-fun tp!303842 () Bool)

(assert (=> b!995414 (= e!638596 (and tp!303846 tp!303842))))

(assert (= (and b!994962 (is-ElementMatch!2752 (regTwo!6017 r!15766))) b!995413))

(assert (= (and b!994962 (is-Concat!4585 (regTwo!6017 r!15766))) b!995414))

(assert (= (and b!994962 (is-Star!2752 (regTwo!6017 r!15766))) b!995415))

(assert (= (and b!994962 (is-Union!2752 (regTwo!6017 r!15766))) b!995416))

(push 1)

(assert (not b!995271))

(assert (not b!995407))

(assert (not d!290774))

(assert (not b!995136))

(assert (not bm!65736))

(assert (not bm!65728))

(assert (not b!995161))

(assert (not d!290740))

(assert (not bm!65739))

(assert (not d!290778))

(assert (not b!995138))

(assert (not b!995287))

(assert (not d!290782))

(assert (not b!995403))

(assert (not d!290780))

(assert (not b!995416))

(assert (not d!290758))

(assert (not b!995326))

(assert (not b!995310))

(assert (not d!290744))

(assert (not b!995414))

(assert (not b!995313))

(assert (not b!995134))

(assert (not b!995126))

(assert (not d!290784))

(assert (not bm!65683))

(assert (not bm!65735))

(assert (not bm!65725))

(assert (not b!995127))

(assert (not b!995295))

(assert (not b!995311))

(assert (not b!995410))

(assert (not b!995292))

(assert (not bm!65691))

(assert (not bm!65731))

(assert (not b!995415))

(assert (not b!995400))

(assert (not b!995068))

(assert (not b!995402))

(assert (not b!995386))

(assert (not b!995164))

(assert (not d!290736))

(assert (not b!995166))

(assert (not b!995133))

(assert (not bm!65729))

(assert (not d!290754))

(assert (not b!995338))

(assert (not b!995318))

(assert (not b!995315))

(assert (not b!995334))

(assert (not b!995398))

(assert (not b!995154))

(assert (not b!995290))

(assert (not bm!65732))

(assert (not b!995304))

(assert (not b!995162))

(assert (not b!995155))

(assert (not b!995281))

(assert (not b!995408))

(assert (not bm!65738))

(assert (not b!995303))

(assert (not b!995404))

(assert (not bm!65689))

(assert (not bm!65710))

(assert (not b!995412))

(assert (not b!995399))

(assert (not b!995406))

(assert (not b!995261))

(assert (not b!995369))

(assert (not d!290792))

(assert (not d!290738))

(assert (not b!995411))

(assert (not bm!65723))

(assert (not bm!65684))

(assert (not d!290764))

(assert (not b!995336))

(assert (not b!995210))

(assert (not b!995368))

(assert (not bm!65734))

(assert (not b!995280))

(assert (not b!995372))

(assert (not b!995333))

(assert (not b!995060))

(assert (not d!290746))

(assert (not b!995370))

(assert tp_is_empty!5147)

(assert (not d!290788))

(assert (not b!995288))

(assert (not bm!65711))

(assert (not b!995367))

(assert (not d!290748))

(assert (not b!995327))

(assert (not b!995371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

