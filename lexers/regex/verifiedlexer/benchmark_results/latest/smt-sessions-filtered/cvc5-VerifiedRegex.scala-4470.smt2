; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237746 () Bool)

(assert start!237746)

(declare-fun b!2427468 () Bool)

(assert (=> b!2427468 true))

(assert (=> b!2427468 true))

(declare-fun lambda!91430 () Int)

(declare-fun lambda!91429 () Int)

(assert (=> b!2427468 (not (= lambda!91430 lambda!91429))))

(assert (=> b!2427468 true))

(assert (=> b!2427468 true))

(declare-fun b!2427461 () Bool)

(declare-fun e!1543890 () Bool)

(declare-fun tp!770632 () Bool)

(assert (=> b!2427461 (= e!1543890 tp!770632)))

(declare-fun b!2427462 () Bool)

(declare-fun tp!770626 () Bool)

(declare-fun tp!770633 () Bool)

(assert (=> b!2427462 (= e!1543890 (and tp!770626 tp!770633))))

(declare-fun b!2427463 () Bool)

(declare-fun e!1543891 () Bool)

(declare-fun tp_is_empty!11677 () Bool)

(declare-fun tp!770630 () Bool)

(assert (=> b!2427463 (= e!1543891 (and tp_is_empty!11677 tp!770630))))

(declare-fun b!2427464 () Bool)

(declare-fun e!1543889 () Bool)

(declare-fun tp!770631 () Bool)

(declare-fun tp!770628 () Bool)

(assert (=> b!2427464 (= e!1543889 (and tp!770631 tp!770628))))

(declare-fun b!2427466 () Bool)

(declare-fun tp!770629 () Bool)

(declare-fun tp!770627 () Bool)

(assert (=> b!2427466 (= e!1543890 (and tp!770629 tp!770627))))

(declare-fun b!2427467 () Bool)

(declare-fun e!1543892 () Bool)

(declare-fun e!1543893 () Bool)

(assert (=> b!2427467 (= e!1543892 (not e!1543893))))

(declare-fun res!1030999 () Bool)

(assert (=> b!2427467 (=> res!1030999 e!1543893)))

(declare-datatypes ((C!14422 0))(
  ( (C!14423 (val!8453 Int)) )
))
(declare-datatypes ((Regex!7132 0))(
  ( (ElementMatch!7132 (c!387234 C!14422)) (Concat!11768 (regOne!14776 Regex!7132) (regTwo!14776 Regex!7132)) (EmptyExpr!7132) (Star!7132 (reg!7461 Regex!7132)) (EmptyLang!7132) (Union!7132 (regOne!14777 Regex!7132) (regTwo!14777 Regex!7132)) )
))
(declare-fun r!13927 () Regex!7132)

(assert (=> b!2427467 (= res!1030999 (not (is-Concat!11768 r!13927)))))

(declare-fun lt!876604 () Bool)

(declare-fun lt!876602 () Bool)

(assert (=> b!2427467 (= lt!876604 lt!876602)))

(declare-datatypes ((List!28502 0))(
  ( (Nil!28404) (Cons!28404 (h!33805 C!14422) (t!208479 List!28502)) )
))
(declare-fun s!9460 () List!28502)

(declare-fun matchRSpec!981 (Regex!7132 List!28502) Bool)

(assert (=> b!2427467 (= lt!876602 (matchRSpec!981 r!13927 s!9460))))

(declare-fun matchR!3249 (Regex!7132 List!28502) Bool)

(assert (=> b!2427467 (= lt!876604 (matchR!3249 r!13927 s!9460))))

(declare-datatypes ((Unit!41651 0))(
  ( (Unit!41652) )
))
(declare-fun lt!876603 () Unit!41651)

(declare-fun mainMatchTheorem!981 (Regex!7132 List!28502) Unit!41651)

(assert (=> b!2427467 (= lt!876603 (mainMatchTheorem!981 r!13927 s!9460))))

(declare-fun res!1031000 () Bool)

(assert (=> start!237746 (=> (not res!1031000) (not e!1543892))))

(declare-datatypes ((List!28503 0))(
  ( (Nil!28405) (Cons!28405 (h!33806 Regex!7132) (t!208480 List!28503)) )
))
(declare-fun l!9164 () List!28503)

(declare-fun lambda!91428 () Int)

(declare-fun forall!5766 (List!28503 Int) Bool)

(assert (=> start!237746 (= res!1031000 (forall!5766 l!9164 lambda!91428))))

(assert (=> start!237746 e!1543892))

(assert (=> start!237746 e!1543889))

(assert (=> start!237746 e!1543890))

(assert (=> start!237746 e!1543891))

(declare-fun b!2427465 () Bool)

(assert (=> b!2427465 (= e!1543890 tp_is_empty!11677)))

(declare-fun lt!876605 () Bool)

(assert (=> b!2427468 (= e!1543893 (= lt!876602 lt!876605))))

(declare-fun Exists!1172 (Int) Bool)

(assert (=> b!2427468 (= (Exists!1172 lambda!91429) (Exists!1172 lambda!91430))))

(declare-fun lt!876606 () Unit!41651)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!429 (Regex!7132 Regex!7132 List!28502) Unit!41651)

(assert (=> b!2427468 (= lt!876606 (lemmaExistCutMatchRandMatchRSpecEquivalent!429 (regOne!14776 r!13927) (regTwo!14776 r!13927) s!9460))))

(assert (=> b!2427468 (= lt!876605 (Exists!1172 lambda!91429))))

(declare-datatypes ((tuple2!28044 0))(
  ( (tuple2!28045 (_1!16563 List!28502) (_2!16563 List!28502)) )
))
(declare-datatypes ((Option!5633 0))(
  ( (None!5632) (Some!5632 (v!31040 tuple2!28044)) )
))
(declare-fun isDefined!4459 (Option!5633) Bool)

(declare-fun findConcatSeparation!741 (Regex!7132 Regex!7132 List!28502 List!28502 List!28502) Option!5633)

(assert (=> b!2427468 (= lt!876605 (isDefined!4459 (findConcatSeparation!741 (regOne!14776 r!13927) (regTwo!14776 r!13927) Nil!28404 s!9460 s!9460)))))

(declare-fun lt!876601 () Unit!41651)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!679 (Regex!7132 Regex!7132 List!28502) Unit!41651)

(assert (=> b!2427468 (= lt!876601 (lemmaFindConcatSeparationEquivalentToExists!679 (regOne!14776 r!13927) (regTwo!14776 r!13927) s!9460))))

(declare-fun b!2427469 () Bool)

(declare-fun res!1031001 () Bool)

(assert (=> b!2427469 (=> (not res!1031001) (not e!1543892))))

(declare-fun generalisedConcat!233 (List!28503) Regex!7132)

(assert (=> b!2427469 (= res!1031001 (= r!13927 (generalisedConcat!233 l!9164)))))

(assert (= (and start!237746 res!1031000) b!2427469))

(assert (= (and b!2427469 res!1031001) b!2427467))

(assert (= (and b!2427467 (not res!1030999)) b!2427468))

(assert (= (and start!237746 (is-Cons!28405 l!9164)) b!2427464))

(assert (= (and start!237746 (is-ElementMatch!7132 r!13927)) b!2427465))

(assert (= (and start!237746 (is-Concat!11768 r!13927)) b!2427466))

(assert (= (and start!237746 (is-Star!7132 r!13927)) b!2427461))

(assert (= (and start!237746 (is-Union!7132 r!13927)) b!2427462))

(assert (= (and start!237746 (is-Cons!28404 s!9460)) b!2427463))

(declare-fun m!2812137 () Bool)

(assert (=> b!2427467 m!2812137))

(declare-fun m!2812139 () Bool)

(assert (=> b!2427467 m!2812139))

(declare-fun m!2812141 () Bool)

(assert (=> b!2427467 m!2812141))

(declare-fun m!2812143 () Bool)

(assert (=> start!237746 m!2812143))

(declare-fun m!2812145 () Bool)

(assert (=> b!2427468 m!2812145))

(declare-fun m!2812147 () Bool)

(assert (=> b!2427468 m!2812147))

(declare-fun m!2812149 () Bool)

(assert (=> b!2427468 m!2812149))

(assert (=> b!2427468 m!2812145))

(declare-fun m!2812151 () Bool)

(assert (=> b!2427468 m!2812151))

(declare-fun m!2812153 () Bool)

(assert (=> b!2427468 m!2812153))

(declare-fun m!2812155 () Bool)

(assert (=> b!2427468 m!2812155))

(assert (=> b!2427468 m!2812153))

(declare-fun m!2812157 () Bool)

(assert (=> b!2427469 m!2812157))

(push 1)

(assert (not b!2427464))

(assert (not b!2427469))

(assert (not b!2427463))

(assert tp_is_empty!11677)

(assert (not b!2427466))

(assert (not b!2427468))

(assert (not b!2427461))

(assert (not start!237746))

(assert (not b!2427467))

(assert (not b!2427462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!463973 () Bool)

(declare-fun b!2427552 () Bool)

(assert (= bs!463973 (and b!2427552 b!2427468)))

(declare-fun lambda!91446 () Int)

(assert (=> bs!463973 (not (= lambda!91446 lambda!91429))))

(assert (=> bs!463973 (not (= lambda!91446 lambda!91430))))

(assert (=> b!2427552 true))

(assert (=> b!2427552 true))

(declare-fun bs!463974 () Bool)

(declare-fun b!2427553 () Bool)

(assert (= bs!463974 (and b!2427553 b!2427468)))

(declare-fun lambda!91447 () Int)

(assert (=> bs!463974 (not (= lambda!91447 lambda!91429))))

(assert (=> bs!463974 (= lambda!91447 lambda!91430)))

(declare-fun bs!463975 () Bool)

(assert (= bs!463975 (and b!2427553 b!2427552)))

(assert (=> bs!463975 (not (= lambda!91447 lambda!91446))))

(assert (=> b!2427553 true))

(assert (=> b!2427553 true))

(declare-fun b!2427549 () Bool)

(declare-fun e!1543934 () Bool)

(declare-fun e!1543933 () Bool)

(assert (=> b!2427549 (= e!1543934 e!1543933)))

(declare-fun res!1031040 () Bool)

(assert (=> b!2427549 (= res!1031040 (not (is-EmptyLang!7132 r!13927)))))

(assert (=> b!2427549 (=> (not res!1031040) (not e!1543933))))

(declare-fun b!2427550 () Bool)

(declare-fun e!1543936 () Bool)

(declare-fun e!1543938 () Bool)

(assert (=> b!2427550 (= e!1543936 e!1543938)))

(declare-fun res!1031039 () Bool)

(assert (=> b!2427550 (= res!1031039 (matchRSpec!981 (regOne!14777 r!13927) s!9460))))

(assert (=> b!2427550 (=> res!1031039 e!1543938)))

(declare-fun bm!148570 () Bool)

(declare-fun call!148575 () Bool)

(declare-fun isEmpty!16442 (List!28502) Bool)

(assert (=> bm!148570 (= call!148575 (isEmpty!16442 s!9460))))

(declare-fun b!2427551 () Bool)

(declare-fun c!387247 () Bool)

(assert (=> b!2427551 (= c!387247 (is-ElementMatch!7132 r!13927))))

(declare-fun e!1543939 () Bool)

(assert (=> b!2427551 (= e!1543933 e!1543939)))

(declare-fun e!1543935 () Bool)

(declare-fun call!148576 () Bool)

(assert (=> b!2427552 (= e!1543935 call!148576)))

(declare-fun e!1543937 () Bool)

(assert (=> b!2427553 (= e!1543937 call!148576)))

(declare-fun b!2427554 () Bool)

(assert (=> b!2427554 (= e!1543936 e!1543937)))

(declare-fun c!387244 () Bool)

(assert (=> b!2427554 (= c!387244 (is-Star!7132 r!13927))))

(declare-fun d!702787 () Bool)

(declare-fun c!387245 () Bool)

(assert (=> d!702787 (= c!387245 (is-EmptyExpr!7132 r!13927))))

(assert (=> d!702787 (= (matchRSpec!981 r!13927 s!9460) e!1543934)))

(declare-fun b!2427555 () Bool)

(assert (=> b!2427555 (= e!1543938 (matchRSpec!981 (regTwo!14777 r!13927) s!9460))))

(declare-fun b!2427556 () Bool)

(declare-fun res!1031041 () Bool)

(assert (=> b!2427556 (=> res!1031041 e!1543935)))

(assert (=> b!2427556 (= res!1031041 call!148575)))

(assert (=> b!2427556 (= e!1543937 e!1543935)))

(declare-fun b!2427557 () Bool)

(assert (=> b!2427557 (= e!1543934 call!148575)))

(declare-fun bm!148571 () Bool)

(assert (=> bm!148571 (= call!148576 (Exists!1172 (ite c!387244 lambda!91446 lambda!91447)))))

(declare-fun b!2427558 () Bool)

(declare-fun c!387246 () Bool)

(assert (=> b!2427558 (= c!387246 (is-Union!7132 r!13927))))

(assert (=> b!2427558 (= e!1543939 e!1543936)))

(declare-fun b!2427559 () Bool)

(assert (=> b!2427559 (= e!1543939 (= s!9460 (Cons!28404 (c!387234 r!13927) Nil!28404)))))

(assert (= (and d!702787 c!387245) b!2427557))

(assert (= (and d!702787 (not c!387245)) b!2427549))

(assert (= (and b!2427549 res!1031040) b!2427551))

(assert (= (and b!2427551 c!387247) b!2427559))

(assert (= (and b!2427551 (not c!387247)) b!2427558))

(assert (= (and b!2427558 c!387246) b!2427550))

(assert (= (and b!2427558 (not c!387246)) b!2427554))

(assert (= (and b!2427550 (not res!1031039)) b!2427555))

(assert (= (and b!2427554 c!387244) b!2427556))

(assert (= (and b!2427554 (not c!387244)) b!2427553))

(assert (= (and b!2427556 (not res!1031041)) b!2427552))

(assert (= (or b!2427552 b!2427553) bm!148571))

(assert (= (or b!2427557 b!2427556) bm!148570))

(declare-fun m!2812181 () Bool)

(assert (=> b!2427550 m!2812181))

(declare-fun m!2812183 () Bool)

(assert (=> bm!148570 m!2812183))

(declare-fun m!2812185 () Bool)

(assert (=> b!2427555 m!2812185))

(declare-fun m!2812187 () Bool)

(assert (=> bm!148571 m!2812187))

(assert (=> b!2427467 d!702787))

(declare-fun b!2427594 () Bool)

(declare-fun e!1543961 () Bool)

(declare-fun nullable!2167 (Regex!7132) Bool)

(assert (=> b!2427594 (= e!1543961 (nullable!2167 r!13927))))

(declare-fun b!2427595 () Bool)

(declare-fun derivativeStep!1824 (Regex!7132 C!14422) Regex!7132)

(declare-fun head!5476 (List!28502) C!14422)

(declare-fun tail!3748 (List!28502) List!28502)

(assert (=> b!2427595 (= e!1543961 (matchR!3249 (derivativeStep!1824 r!13927 (head!5476 s!9460)) (tail!3748 s!9460)))))

(declare-fun bm!148574 () Bool)

(declare-fun call!148579 () Bool)

(assert (=> bm!148574 (= call!148579 (isEmpty!16442 s!9460))))

(declare-fun b!2427596 () Bool)

(declare-fun res!1031067 () Bool)

(declare-fun e!1543962 () Bool)

(assert (=> b!2427596 (=> (not res!1031067) (not e!1543962))))

(assert (=> b!2427596 (= res!1031067 (not call!148579))))

(declare-fun b!2427597 () Bool)

(declare-fun e!1543960 () Bool)

(declare-fun lt!876627 () Bool)

(assert (=> b!2427597 (= e!1543960 (= lt!876627 call!148579))))

(declare-fun b!2427598 () Bool)

(declare-fun e!1543965 () Bool)

(assert (=> b!2427598 (= e!1543965 (not lt!876627))))

(declare-fun b!2427599 () Bool)

(declare-fun res!1031069 () Bool)

(declare-fun e!1543964 () Bool)

(assert (=> b!2427599 (=> res!1031069 e!1543964)))

(assert (=> b!2427599 (= res!1031069 (not (is-ElementMatch!7132 r!13927)))))

(assert (=> b!2427599 (= e!1543965 e!1543964)))

(declare-fun b!2427600 () Bool)

(declare-fun res!1031068 () Bool)

(assert (=> b!2427600 (=> res!1031068 e!1543964)))

(assert (=> b!2427600 (= res!1031068 e!1543962)))

(declare-fun res!1031066 () Bool)

(assert (=> b!2427600 (=> (not res!1031066) (not e!1543962))))

(assert (=> b!2427600 (= res!1031066 lt!876627)))

(declare-fun b!2427601 () Bool)

(assert (=> b!2427601 (= e!1543962 (= (head!5476 s!9460) (c!387234 r!13927)))))

(declare-fun b!2427602 () Bool)

(declare-fun e!1543966 () Bool)

(declare-fun e!1543963 () Bool)

(assert (=> b!2427602 (= e!1543966 e!1543963)))

(declare-fun res!1031070 () Bool)

(assert (=> b!2427602 (=> res!1031070 e!1543963)))

(assert (=> b!2427602 (= res!1031070 call!148579)))

(declare-fun b!2427603 () Bool)

(assert (=> b!2427603 (= e!1543963 (not (= (head!5476 s!9460) (c!387234 r!13927))))))

(declare-fun b!2427604 () Bool)

(declare-fun res!1031065 () Bool)

(assert (=> b!2427604 (=> res!1031065 e!1543963)))

(assert (=> b!2427604 (= res!1031065 (not (isEmpty!16442 (tail!3748 s!9460))))))

(declare-fun b!2427605 () Bool)

(assert (=> b!2427605 (= e!1543960 e!1543965)))

(declare-fun c!387256 () Bool)

(assert (=> b!2427605 (= c!387256 (is-EmptyLang!7132 r!13927))))

(declare-fun d!702791 () Bool)

(assert (=> d!702791 e!1543960))

(declare-fun c!387254 () Bool)

(assert (=> d!702791 (= c!387254 (is-EmptyExpr!7132 r!13927))))

(assert (=> d!702791 (= lt!876627 e!1543961)))

(declare-fun c!387255 () Bool)

(assert (=> d!702791 (= c!387255 (isEmpty!16442 s!9460))))

(declare-fun validRegex!2852 (Regex!7132) Bool)

(assert (=> d!702791 (validRegex!2852 r!13927)))

(assert (=> d!702791 (= (matchR!3249 r!13927 s!9460) lt!876627)))

(declare-fun b!2427606 () Bool)

(assert (=> b!2427606 (= e!1543964 e!1543966)))

(declare-fun res!1031064 () Bool)

(assert (=> b!2427606 (=> (not res!1031064) (not e!1543966))))

(assert (=> b!2427606 (= res!1031064 (not lt!876627))))

(declare-fun b!2427607 () Bool)

(declare-fun res!1031071 () Bool)

(assert (=> b!2427607 (=> (not res!1031071) (not e!1543962))))

(assert (=> b!2427607 (= res!1031071 (isEmpty!16442 (tail!3748 s!9460)))))

(assert (= (and d!702791 c!387255) b!2427594))

(assert (= (and d!702791 (not c!387255)) b!2427595))

(assert (= (and d!702791 c!387254) b!2427597))

(assert (= (and d!702791 (not c!387254)) b!2427605))

(assert (= (and b!2427605 c!387256) b!2427598))

(assert (= (and b!2427605 (not c!387256)) b!2427599))

(assert (= (and b!2427599 (not res!1031069)) b!2427600))

(assert (= (and b!2427600 res!1031066) b!2427596))

(assert (= (and b!2427596 res!1031067) b!2427607))

(assert (= (and b!2427607 res!1031071) b!2427601))

(assert (= (and b!2427600 (not res!1031068)) b!2427606))

(assert (= (and b!2427606 res!1031064) b!2427602))

(assert (= (and b!2427602 (not res!1031070)) b!2427604))

(assert (= (and b!2427604 (not res!1031065)) b!2427603))

(assert (= (or b!2427597 b!2427596 b!2427602) bm!148574))

(declare-fun m!2812197 () Bool)

(assert (=> b!2427594 m!2812197))

(assert (=> d!702791 m!2812183))

(declare-fun m!2812199 () Bool)

(assert (=> d!702791 m!2812199))

(declare-fun m!2812201 () Bool)

(assert (=> b!2427601 m!2812201))

(assert (=> bm!148574 m!2812183))

(assert (=> b!2427595 m!2812201))

(assert (=> b!2427595 m!2812201))

(declare-fun m!2812203 () Bool)

(assert (=> b!2427595 m!2812203))

(declare-fun m!2812205 () Bool)

(assert (=> b!2427595 m!2812205))

(assert (=> b!2427595 m!2812203))

(assert (=> b!2427595 m!2812205))

(declare-fun m!2812207 () Bool)

(assert (=> b!2427595 m!2812207))

(assert (=> b!2427607 m!2812205))

(assert (=> b!2427607 m!2812205))

(declare-fun m!2812209 () Bool)

(assert (=> b!2427607 m!2812209))

(assert (=> b!2427603 m!2812201))

(assert (=> b!2427604 m!2812205))

(assert (=> b!2427604 m!2812205))

(assert (=> b!2427604 m!2812209))

(assert (=> b!2427467 d!702791))

(declare-fun d!702799 () Bool)

(assert (=> d!702799 (= (matchR!3249 r!13927 s!9460) (matchRSpec!981 r!13927 s!9460))))

(declare-fun lt!876630 () Unit!41651)

(declare-fun choose!14386 (Regex!7132 List!28502) Unit!41651)

(assert (=> d!702799 (= lt!876630 (choose!14386 r!13927 s!9460))))

(assert (=> d!702799 (validRegex!2852 r!13927)))

(assert (=> d!702799 (= (mainMatchTheorem!981 r!13927 s!9460) lt!876630)))

(declare-fun bs!463978 () Bool)

(assert (= bs!463978 d!702799))

(assert (=> bs!463978 m!2812139))

(assert (=> bs!463978 m!2812137))

(declare-fun m!2812211 () Bool)

(assert (=> bs!463978 m!2812211))

(assert (=> bs!463978 m!2812199))

(assert (=> b!2427467 d!702799))

(declare-fun bs!463979 () Bool)

(declare-fun d!702801 () Bool)

(assert (= bs!463979 (and d!702801 start!237746)))

(declare-fun lambda!91452 () Int)

(assert (=> bs!463979 (= lambda!91452 lambda!91428)))

(declare-fun b!2427632 () Bool)

(declare-fun e!1543986 () Bool)

(declare-fun e!1543983 () Bool)

(assert (=> b!2427632 (= e!1543986 e!1543983)))

(declare-fun c!387267 () Bool)

(declare-fun isEmpty!16443 (List!28503) Bool)

(assert (=> b!2427632 (= c!387267 (isEmpty!16443 l!9164))))

(declare-fun b!2427633 () Bool)

(declare-fun e!1543985 () Regex!7132)

(declare-fun e!1543982 () Regex!7132)

(assert (=> b!2427633 (= e!1543985 e!1543982)))

(declare-fun c!387266 () Bool)

(assert (=> b!2427633 (= c!387266 (is-Cons!28405 l!9164))))

(declare-fun b!2427634 () Bool)

(declare-fun e!1543981 () Bool)

(assert (=> b!2427634 (= e!1543983 e!1543981)))

(declare-fun c!387268 () Bool)

(declare-fun tail!3749 (List!28503) List!28503)

(assert (=> b!2427634 (= c!387268 (isEmpty!16443 (tail!3749 l!9164)))))

(declare-fun b!2427635 () Bool)

(declare-fun lt!876635 () Regex!7132)

(declare-fun isConcat!186 (Regex!7132) Bool)

(assert (=> b!2427635 (= e!1543981 (isConcat!186 lt!876635))))

(declare-fun b!2427636 () Bool)

(declare-fun head!5477 (List!28503) Regex!7132)

(assert (=> b!2427636 (= e!1543981 (= lt!876635 (head!5477 l!9164)))))

(declare-fun b!2427637 () Bool)

(assert (=> b!2427637 (= e!1543982 (Concat!11768 (h!33806 l!9164) (generalisedConcat!233 (t!208480 l!9164))))))

(declare-fun b!2427638 () Bool)

(assert (=> b!2427638 (= e!1543982 EmptyExpr!7132)))

(assert (=> d!702801 e!1543986))

(declare-fun res!1031080 () Bool)

(assert (=> d!702801 (=> (not res!1031080) (not e!1543986))))

(assert (=> d!702801 (= res!1031080 (validRegex!2852 lt!876635))))

(assert (=> d!702801 (= lt!876635 e!1543985)))

(declare-fun c!387265 () Bool)

(declare-fun e!1543984 () Bool)

(assert (=> d!702801 (= c!387265 e!1543984)))

(declare-fun res!1031081 () Bool)

(assert (=> d!702801 (=> (not res!1031081) (not e!1543984))))

(assert (=> d!702801 (= res!1031081 (is-Cons!28405 l!9164))))

(assert (=> d!702801 (forall!5766 l!9164 lambda!91452)))

(assert (=> d!702801 (= (generalisedConcat!233 l!9164) lt!876635)))

(declare-fun b!2427639 () Bool)

(assert (=> b!2427639 (= e!1543985 (h!33806 l!9164))))

(declare-fun b!2427640 () Bool)

(declare-fun isEmptyExpr!186 (Regex!7132) Bool)

(assert (=> b!2427640 (= e!1543983 (isEmptyExpr!186 lt!876635))))

(declare-fun b!2427641 () Bool)

(assert (=> b!2427641 (= e!1543984 (isEmpty!16443 (t!208480 l!9164)))))

(assert (= (and d!702801 res!1031081) b!2427641))

(assert (= (and d!702801 c!387265) b!2427639))

(assert (= (and d!702801 (not c!387265)) b!2427633))

(assert (= (and b!2427633 c!387266) b!2427637))

(assert (= (and b!2427633 (not c!387266)) b!2427638))

(assert (= (and d!702801 res!1031080) b!2427632))

(assert (= (and b!2427632 c!387267) b!2427640))

(assert (= (and b!2427632 (not c!387267)) b!2427634))

(assert (= (and b!2427634 c!387268) b!2427636))

(assert (= (and b!2427634 (not c!387268)) b!2427635))

(declare-fun m!2812213 () Bool)

(assert (=> b!2427634 m!2812213))

(assert (=> b!2427634 m!2812213))

(declare-fun m!2812215 () Bool)

(assert (=> b!2427634 m!2812215))

(declare-fun m!2812217 () Bool)

(assert (=> b!2427641 m!2812217))

(declare-fun m!2812219 () Bool)

(assert (=> d!702801 m!2812219))

(declare-fun m!2812221 () Bool)

(assert (=> d!702801 m!2812221))

(declare-fun m!2812223 () Bool)

(assert (=> b!2427635 m!2812223))

(declare-fun m!2812225 () Bool)

(assert (=> b!2427636 m!2812225))

(declare-fun m!2812227 () Bool)

(assert (=> b!2427640 m!2812227))

(declare-fun m!2812229 () Bool)

(assert (=> b!2427632 m!2812229))

(declare-fun m!2812231 () Bool)

(assert (=> b!2427637 m!2812231))

(assert (=> b!2427469 d!702801))

(declare-fun d!702803 () Bool)

(declare-fun isEmpty!16444 (Option!5633) Bool)

(assert (=> d!702803 (= (isDefined!4459 (findConcatSeparation!741 (regOne!14776 r!13927) (regTwo!14776 r!13927) Nil!28404 s!9460 s!9460)) (not (isEmpty!16444 (findConcatSeparation!741 (regOne!14776 r!13927) (regTwo!14776 r!13927) Nil!28404 s!9460 s!9460))))))

(declare-fun bs!463980 () Bool)

(assert (= bs!463980 d!702803))

(assert (=> bs!463980 m!2812145))

(declare-fun m!2812233 () Bool)

(assert (=> bs!463980 m!2812233))

(assert (=> b!2427468 d!702803))

(declare-fun bs!463983 () Bool)

(declare-fun d!702805 () Bool)

(assert (= bs!463983 (and d!702805 b!2427468)))

(declare-fun lambda!91456 () Int)

(assert (=> bs!463983 (= lambda!91456 lambda!91429)))

(assert (=> bs!463983 (not (= lambda!91456 lambda!91430))))

(declare-fun bs!463984 () Bool)

(assert (= bs!463984 (and d!702805 b!2427552)))

(assert (=> bs!463984 (not (= lambda!91456 lambda!91446))))

(declare-fun bs!463985 () Bool)

(assert (= bs!463985 (and d!702805 b!2427553)))

(assert (=> bs!463985 (not (= lambda!91456 lambda!91447))))

(assert (=> d!702805 true))

(assert (=> d!702805 true))

(assert (=> d!702805 true))

(assert (=> d!702805 (= (isDefined!4459 (findConcatSeparation!741 (regOne!14776 r!13927) (regTwo!14776 r!13927) Nil!28404 s!9460 s!9460)) (Exists!1172 lambda!91456))))

(declare-fun lt!876639 () Unit!41651)

(declare-fun choose!14387 (Regex!7132 Regex!7132 List!28502) Unit!41651)

(assert (=> d!702805 (= lt!876639 (choose!14387 (regOne!14776 r!13927) (regTwo!14776 r!13927) s!9460))))

(assert (=> d!702805 (validRegex!2852 (regOne!14776 r!13927))))

(assert (=> d!702805 (= (lemmaFindConcatSeparationEquivalentToExists!679 (regOne!14776 r!13927) (regTwo!14776 r!13927) s!9460) lt!876639)))

(declare-fun bs!463986 () Bool)

(assert (= bs!463986 d!702805))

(declare-fun m!2812241 () Bool)

(assert (=> bs!463986 m!2812241))

(assert (=> bs!463986 m!2812145))

(assert (=> bs!463986 m!2812145))

(assert (=> bs!463986 m!2812147))

(declare-fun m!2812243 () Bool)

(assert (=> bs!463986 m!2812243))

(declare-fun m!2812245 () Bool)

(assert (=> bs!463986 m!2812245))

(assert (=> b!2427468 d!702805))

(declare-fun bs!463987 () Bool)

(declare-fun d!702809 () Bool)

(assert (= bs!463987 (and d!702809 b!2427468)))

(declare-fun lambda!91463 () Int)

(assert (=> bs!463987 (not (= lambda!91463 lambda!91430))))

(assert (=> bs!463987 (= lambda!91463 lambda!91429)))

(declare-fun bs!463988 () Bool)

(assert (= bs!463988 (and d!702809 b!2427553)))

(assert (=> bs!463988 (not (= lambda!91463 lambda!91447))))

(declare-fun bs!463989 () Bool)

(assert (= bs!463989 (and d!702809 b!2427552)))

(assert (=> bs!463989 (not (= lambda!91463 lambda!91446))))

(declare-fun bs!463990 () Bool)

(assert (= bs!463990 (and d!702809 d!702805)))

(assert (=> bs!463990 (= lambda!91463 lambda!91456)))

(assert (=> d!702809 true))

(assert (=> d!702809 true))

(assert (=> d!702809 true))

(declare-fun bs!463991 () Bool)

(assert (= bs!463991 d!702809))

(declare-fun lambda!91464 () Int)

(assert (=> bs!463991 (not (= lambda!91464 lambda!91463))))

(assert (=> bs!463987 (= lambda!91464 lambda!91430)))

(assert (=> bs!463987 (not (= lambda!91464 lambda!91429))))

(assert (=> bs!463988 (= lambda!91464 lambda!91447)))

(assert (=> bs!463989 (not (= lambda!91464 lambda!91446))))

(assert (=> bs!463990 (not (= lambda!91464 lambda!91456))))

(assert (=> d!702809 true))

(assert (=> d!702809 true))

(assert (=> d!702809 true))

(assert (=> d!702809 (= (Exists!1172 lambda!91463) (Exists!1172 lambda!91464))))

(declare-fun lt!876644 () Unit!41651)

(declare-fun choose!14388 (Regex!7132 Regex!7132 List!28502) Unit!41651)

(assert (=> d!702809 (= lt!876644 (choose!14388 (regOne!14776 r!13927) (regTwo!14776 r!13927) s!9460))))

(assert (=> d!702809 (validRegex!2852 (regOne!14776 r!13927))))

(assert (=> d!702809 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!429 (regOne!14776 r!13927) (regTwo!14776 r!13927) s!9460) lt!876644)))

(declare-fun m!2812247 () Bool)

(assert (=> bs!463991 m!2812247))

(declare-fun m!2812249 () Bool)

(assert (=> bs!463991 m!2812249))

(declare-fun m!2812251 () Bool)

(assert (=> bs!463991 m!2812251))

(assert (=> bs!463991 m!2812243))

(assert (=> b!2427468 d!702809))

(declare-fun d!702811 () Bool)

(declare-fun choose!14389 (Int) Bool)

(assert (=> d!702811 (= (Exists!1172 lambda!91429) (choose!14389 lambda!91429))))

(declare-fun bs!463992 () Bool)

(assert (= bs!463992 d!702811))

(declare-fun m!2812253 () Bool)

(assert (=> bs!463992 m!2812253))

(assert (=> b!2427468 d!702811))

(declare-fun d!702813 () Bool)

(assert (=> d!702813 (= (Exists!1172 lambda!91430) (choose!14389 lambda!91430))))

(declare-fun bs!463993 () Bool)

(assert (= bs!463993 d!702813))

(declare-fun m!2812255 () Bool)

(assert (=> bs!463993 m!2812255))

(assert (=> b!2427468 d!702813))

(declare-fun b!2427680 () Bool)

(declare-fun e!1544010 () Bool)

(assert (=> b!2427680 (= e!1544010 (matchR!3249 (regTwo!14776 r!13927) s!9460))))

(declare-fun b!2427681 () Bool)

(declare-fun e!1544009 () Option!5633)

(assert (=> b!2427681 (= e!1544009 (Some!5632 (tuple2!28045 Nil!28404 s!9460)))))

(declare-fun d!702815 () Bool)

(declare-fun e!1544007 () Bool)

(assert (=> d!702815 e!1544007))

(declare-fun res!1031114 () Bool)

(assert (=> d!702815 (=> res!1031114 e!1544007)))

(declare-fun e!1544008 () Bool)

(assert (=> d!702815 (= res!1031114 e!1544008)))

(declare-fun res!1031113 () Bool)

(assert (=> d!702815 (=> (not res!1031113) (not e!1544008))))

(declare-fun lt!876654 () Option!5633)

(assert (=> d!702815 (= res!1031113 (isDefined!4459 lt!876654))))

(assert (=> d!702815 (= lt!876654 e!1544009)))

(declare-fun c!387273 () Bool)

(assert (=> d!702815 (= c!387273 e!1544010)))

(declare-fun res!1031116 () Bool)

(assert (=> d!702815 (=> (not res!1031116) (not e!1544010))))

(assert (=> d!702815 (= res!1031116 (matchR!3249 (regOne!14776 r!13927) Nil!28404))))

(assert (=> d!702815 (validRegex!2852 (regOne!14776 r!13927))))

(assert (=> d!702815 (= (findConcatSeparation!741 (regOne!14776 r!13927) (regTwo!14776 r!13927) Nil!28404 s!9460 s!9460) lt!876654)))

(declare-fun b!2427682 () Bool)

(declare-fun res!1031115 () Bool)

(assert (=> b!2427682 (=> (not res!1031115) (not e!1544008))))

(declare-fun get!8751 (Option!5633) tuple2!28044)

(assert (=> b!2427682 (= res!1031115 (matchR!3249 (regOne!14776 r!13927) (_1!16563 (get!8751 lt!876654))))))

(declare-fun b!2427683 () Bool)

(declare-fun ++!7053 (List!28502 List!28502) List!28502)

(assert (=> b!2427683 (= e!1544008 (= (++!7053 (_1!16563 (get!8751 lt!876654)) (_2!16563 (get!8751 lt!876654))) s!9460))))

(declare-fun b!2427684 () Bool)

(declare-fun res!1031112 () Bool)

(assert (=> b!2427684 (=> (not res!1031112) (not e!1544008))))

(assert (=> b!2427684 (= res!1031112 (matchR!3249 (regTwo!14776 r!13927) (_2!16563 (get!8751 lt!876654))))))

(declare-fun b!2427685 () Bool)

(declare-fun e!1544011 () Option!5633)

(assert (=> b!2427685 (= e!1544009 e!1544011)))

(declare-fun c!387274 () Bool)

(assert (=> b!2427685 (= c!387274 (is-Nil!28404 s!9460))))

(declare-fun b!2427686 () Bool)

(assert (=> b!2427686 (= e!1544011 None!5632)))

(declare-fun b!2427687 () Bool)

(declare-fun lt!876652 () Unit!41651)

(declare-fun lt!876653 () Unit!41651)

(assert (=> b!2427687 (= lt!876652 lt!876653)))

(assert (=> b!2427687 (= (++!7053 (++!7053 Nil!28404 (Cons!28404 (h!33805 s!9460) Nil!28404)) (t!208479 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!679 (List!28502 C!14422 List!28502 List!28502) Unit!41651)

(assert (=> b!2427687 (= lt!876653 (lemmaMoveElementToOtherListKeepsConcatEq!679 Nil!28404 (h!33805 s!9460) (t!208479 s!9460) s!9460))))

(assert (=> b!2427687 (= e!1544011 (findConcatSeparation!741 (regOne!14776 r!13927) (regTwo!14776 r!13927) (++!7053 Nil!28404 (Cons!28404 (h!33805 s!9460) Nil!28404)) (t!208479 s!9460) s!9460))))

(declare-fun b!2427688 () Bool)

(assert (=> b!2427688 (= e!1544007 (not (isDefined!4459 lt!876654)))))

(assert (= (and d!702815 res!1031116) b!2427680))

(assert (= (and d!702815 c!387273) b!2427681))

(assert (= (and d!702815 (not c!387273)) b!2427685))

(assert (= (and b!2427685 c!387274) b!2427686))

(assert (= (and b!2427685 (not c!387274)) b!2427687))

(assert (= (and d!702815 res!1031113) b!2427682))

(assert (= (and b!2427682 res!1031115) b!2427684))

(assert (= (and b!2427684 res!1031112) b!2427683))

(assert (= (and d!702815 (not res!1031114)) b!2427688))

(declare-fun m!2812265 () Bool)

(assert (=> b!2427680 m!2812265))

(declare-fun m!2812267 () Bool)

(assert (=> b!2427687 m!2812267))

(assert (=> b!2427687 m!2812267))

(declare-fun m!2812269 () Bool)

(assert (=> b!2427687 m!2812269))

(declare-fun m!2812271 () Bool)

(assert (=> b!2427687 m!2812271))

(assert (=> b!2427687 m!2812267))

(declare-fun m!2812273 () Bool)

(assert (=> b!2427687 m!2812273))

(declare-fun m!2812275 () Bool)

(assert (=> b!2427683 m!2812275))

(declare-fun m!2812277 () Bool)

(assert (=> b!2427683 m!2812277))

(declare-fun m!2812279 () Bool)

(assert (=> b!2427688 m!2812279))

(assert (=> b!2427684 m!2812275))

(declare-fun m!2812281 () Bool)

(assert (=> b!2427684 m!2812281))

(assert (=> b!2427682 m!2812275))

(declare-fun m!2812283 () Bool)

(assert (=> b!2427682 m!2812283))

(assert (=> d!702815 m!2812279))

(declare-fun m!2812285 () Bool)

(assert (=> d!702815 m!2812285))

(assert (=> d!702815 m!2812243))

(assert (=> b!2427468 d!702815))

(declare-fun d!702821 () Bool)

(declare-fun res!1031121 () Bool)

(declare-fun e!1544016 () Bool)

(assert (=> d!702821 (=> res!1031121 e!1544016)))

(assert (=> d!702821 (= res!1031121 (is-Nil!28405 l!9164))))

(assert (=> d!702821 (= (forall!5766 l!9164 lambda!91428) e!1544016)))

(declare-fun b!2427693 () Bool)

(declare-fun e!1544017 () Bool)

(assert (=> b!2427693 (= e!1544016 e!1544017)))

(declare-fun res!1031122 () Bool)

(assert (=> b!2427693 (=> (not res!1031122) (not e!1544017))))

(declare-fun dynLambda!12226 (Int Regex!7132) Bool)

(assert (=> b!2427693 (= res!1031122 (dynLambda!12226 lambda!91428 (h!33806 l!9164)))))

(declare-fun b!2427694 () Bool)

(assert (=> b!2427694 (= e!1544017 (forall!5766 (t!208480 l!9164) lambda!91428))))

(assert (= (and d!702821 (not res!1031121)) b!2427693))

(assert (= (and b!2427693 res!1031122) b!2427694))

(declare-fun b_lambda!74717 () Bool)

(assert (=> (not b_lambda!74717) (not b!2427693)))

(declare-fun m!2812287 () Bool)

(assert (=> b!2427693 m!2812287))

(declare-fun m!2812289 () Bool)

(assert (=> b!2427694 m!2812289))

(assert (=> start!237746 d!702821))

(declare-fun b!2427708 () Bool)

(declare-fun e!1544020 () Bool)

(declare-fun tp!770671 () Bool)

(declare-fun tp!770672 () Bool)

(assert (=> b!2427708 (= e!1544020 (and tp!770671 tp!770672))))

(declare-fun b!2427705 () Bool)

(assert (=> b!2427705 (= e!1544020 tp_is_empty!11677)))

(declare-fun b!2427707 () Bool)

(declare-fun tp!770669 () Bool)

(assert (=> b!2427707 (= e!1544020 tp!770669)))

(assert (=> b!2427462 (= tp!770626 e!1544020)))

(declare-fun b!2427706 () Bool)

(declare-fun tp!770670 () Bool)

(declare-fun tp!770668 () Bool)

(assert (=> b!2427706 (= e!1544020 (and tp!770670 tp!770668))))

(assert (= (and b!2427462 (is-ElementMatch!7132 (regOne!14777 r!13927))) b!2427705))

(assert (= (and b!2427462 (is-Concat!11768 (regOne!14777 r!13927))) b!2427706))

(assert (= (and b!2427462 (is-Star!7132 (regOne!14777 r!13927))) b!2427707))

(assert (= (and b!2427462 (is-Union!7132 (regOne!14777 r!13927))) b!2427708))

(declare-fun b!2427712 () Bool)

(declare-fun e!1544021 () Bool)

(declare-fun tp!770676 () Bool)

(declare-fun tp!770677 () Bool)

(assert (=> b!2427712 (= e!1544021 (and tp!770676 tp!770677))))

(declare-fun b!2427709 () Bool)

(assert (=> b!2427709 (= e!1544021 tp_is_empty!11677)))

(declare-fun b!2427711 () Bool)

(declare-fun tp!770674 () Bool)

(assert (=> b!2427711 (= e!1544021 tp!770674)))

(assert (=> b!2427462 (= tp!770633 e!1544021)))

(declare-fun b!2427710 () Bool)

(declare-fun tp!770675 () Bool)

(declare-fun tp!770673 () Bool)

(assert (=> b!2427710 (= e!1544021 (and tp!770675 tp!770673))))

(assert (= (and b!2427462 (is-ElementMatch!7132 (regTwo!14777 r!13927))) b!2427709))

(assert (= (and b!2427462 (is-Concat!11768 (regTwo!14777 r!13927))) b!2427710))

(assert (= (and b!2427462 (is-Star!7132 (regTwo!14777 r!13927))) b!2427711))

(assert (= (and b!2427462 (is-Union!7132 (regTwo!14777 r!13927))) b!2427712))

(declare-fun b!2427717 () Bool)

(declare-fun e!1544024 () Bool)

(declare-fun tp!770680 () Bool)

(assert (=> b!2427717 (= e!1544024 (and tp_is_empty!11677 tp!770680))))

(assert (=> b!2427463 (= tp!770630 e!1544024)))

(assert (= (and b!2427463 (is-Cons!28404 (t!208479 s!9460))) b!2427717))

(declare-fun b!2427721 () Bool)

(declare-fun e!1544025 () Bool)

(declare-fun tp!770684 () Bool)

(declare-fun tp!770685 () Bool)

(assert (=> b!2427721 (= e!1544025 (and tp!770684 tp!770685))))

(declare-fun b!2427718 () Bool)

(assert (=> b!2427718 (= e!1544025 tp_is_empty!11677)))

(declare-fun b!2427720 () Bool)

(declare-fun tp!770682 () Bool)

(assert (=> b!2427720 (= e!1544025 tp!770682)))

(assert (=> b!2427464 (= tp!770631 e!1544025)))

(declare-fun b!2427719 () Bool)

(declare-fun tp!770683 () Bool)

(declare-fun tp!770681 () Bool)

(assert (=> b!2427719 (= e!1544025 (and tp!770683 tp!770681))))

(assert (= (and b!2427464 (is-ElementMatch!7132 (h!33806 l!9164))) b!2427718))

(assert (= (and b!2427464 (is-Concat!11768 (h!33806 l!9164))) b!2427719))

(assert (= (and b!2427464 (is-Star!7132 (h!33806 l!9164))) b!2427720))

(assert (= (and b!2427464 (is-Union!7132 (h!33806 l!9164))) b!2427721))

(declare-fun b!2427726 () Bool)

(declare-fun e!1544028 () Bool)

(declare-fun tp!770690 () Bool)

(declare-fun tp!770691 () Bool)

(assert (=> b!2427726 (= e!1544028 (and tp!770690 tp!770691))))

(assert (=> b!2427464 (= tp!770628 e!1544028)))

(assert (= (and b!2427464 (is-Cons!28405 (t!208480 l!9164))) b!2427726))

(declare-fun b!2427730 () Bool)

(declare-fun e!1544029 () Bool)

(declare-fun tp!770695 () Bool)

(declare-fun tp!770696 () Bool)

(assert (=> b!2427730 (= e!1544029 (and tp!770695 tp!770696))))

(declare-fun b!2427727 () Bool)

(assert (=> b!2427727 (= e!1544029 tp_is_empty!11677)))

(declare-fun b!2427729 () Bool)

(declare-fun tp!770693 () Bool)

(assert (=> b!2427729 (= e!1544029 tp!770693)))

(assert (=> b!2427466 (= tp!770629 e!1544029)))

(declare-fun b!2427728 () Bool)

(declare-fun tp!770694 () Bool)

(declare-fun tp!770692 () Bool)

(assert (=> b!2427728 (= e!1544029 (and tp!770694 tp!770692))))

(assert (= (and b!2427466 (is-ElementMatch!7132 (regOne!14776 r!13927))) b!2427727))

(assert (= (and b!2427466 (is-Concat!11768 (regOne!14776 r!13927))) b!2427728))

(assert (= (and b!2427466 (is-Star!7132 (regOne!14776 r!13927))) b!2427729))

(assert (= (and b!2427466 (is-Union!7132 (regOne!14776 r!13927))) b!2427730))

(declare-fun b!2427734 () Bool)

(declare-fun e!1544030 () Bool)

(declare-fun tp!770700 () Bool)

(declare-fun tp!770701 () Bool)

(assert (=> b!2427734 (= e!1544030 (and tp!770700 tp!770701))))

(declare-fun b!2427731 () Bool)

(assert (=> b!2427731 (= e!1544030 tp_is_empty!11677)))

(declare-fun b!2427733 () Bool)

(declare-fun tp!770698 () Bool)

(assert (=> b!2427733 (= e!1544030 tp!770698)))

(assert (=> b!2427466 (= tp!770627 e!1544030)))

(declare-fun b!2427732 () Bool)

(declare-fun tp!770699 () Bool)

(declare-fun tp!770697 () Bool)

(assert (=> b!2427732 (= e!1544030 (and tp!770699 tp!770697))))

(assert (= (and b!2427466 (is-ElementMatch!7132 (regTwo!14776 r!13927))) b!2427731))

(assert (= (and b!2427466 (is-Concat!11768 (regTwo!14776 r!13927))) b!2427732))

(assert (= (and b!2427466 (is-Star!7132 (regTwo!14776 r!13927))) b!2427733))

(assert (= (and b!2427466 (is-Union!7132 (regTwo!14776 r!13927))) b!2427734))

(declare-fun b!2427738 () Bool)

(declare-fun e!1544031 () Bool)

(declare-fun tp!770705 () Bool)

(declare-fun tp!770706 () Bool)

(assert (=> b!2427738 (= e!1544031 (and tp!770705 tp!770706))))

(declare-fun b!2427735 () Bool)

(assert (=> b!2427735 (= e!1544031 tp_is_empty!11677)))

(declare-fun b!2427737 () Bool)

(declare-fun tp!770703 () Bool)

(assert (=> b!2427737 (= e!1544031 tp!770703)))

(assert (=> b!2427461 (= tp!770632 e!1544031)))

(declare-fun b!2427736 () Bool)

(declare-fun tp!770704 () Bool)

(declare-fun tp!770702 () Bool)

(assert (=> b!2427736 (= e!1544031 (and tp!770704 tp!770702))))

(assert (= (and b!2427461 (is-ElementMatch!7132 (reg!7461 r!13927))) b!2427735))

(assert (= (and b!2427461 (is-Concat!11768 (reg!7461 r!13927))) b!2427736))

(assert (= (and b!2427461 (is-Star!7132 (reg!7461 r!13927))) b!2427737))

(assert (= (and b!2427461 (is-Union!7132 (reg!7461 r!13927))) b!2427738))

(declare-fun b_lambda!74719 () Bool)

(assert (= b_lambda!74717 (or start!237746 b_lambda!74719)))

(declare-fun bs!463998 () Bool)

(declare-fun d!702823 () Bool)

(assert (= bs!463998 (and d!702823 start!237746)))

(assert (=> bs!463998 (= (dynLambda!12226 lambda!91428 (h!33806 l!9164)) (validRegex!2852 (h!33806 l!9164)))))

(declare-fun m!2812291 () Bool)

(assert (=> bs!463998 m!2812291))

(assert (=> b!2427693 d!702823))

(push 1)

(assert (not b!2427680))

(assert (not b!2427632))

(assert (not b!2427684))

(assert tp_is_empty!11677)

(assert (not b!2427601))

(assert (not b!2427603))

(assert (not b!2427721))

(assert (not d!702805))

(assert (not b!2427555))

(assert (not b!2427635))

(assert (not bs!463998))

(assert (not b!2427634))

(assert (not b!2427729))

(assert (not b!2427720))

(assert (not b!2427550))

(assert (not b!2427604))

(assert (not b!2427734))

(assert (not b!2427710))

(assert (not b!2427733))

(assert (not b!2427682))

(assert (not b!2427640))

(assert (not b!2427688))

(assert (not bm!148574))

(assert (not d!702813))

(assert (not b!2427711))

(assert (not b!2427707))

(assert (not b!2427730))

(assert (not b!2427737))

(assert (not b!2427607))

(assert (not b!2427712))

(assert (not b!2427736))

(assert (not b!2427694))

(assert (not d!702791))

(assert (not d!702809))

(assert (not b!2427637))

(assert (not b!2427636))

(assert (not bm!148570))

(assert (not d!702815))

(assert (not b!2427706))

(assert (not b!2427726))

(assert (not b!2427594))

(assert (not bm!148571))

(assert (not b!2427738))

(assert (not b!2427708))

(assert (not b!2427641))

(assert (not b!2427687))

(assert (not b!2427683))

(assert (not d!702799))

(assert (not d!702801))

(assert (not b!2427728))

(assert (not d!702803))

(assert (not b!2427717))

(assert (not b_lambda!74719))

(assert (not b!2427719))

(assert (not d!702811))

(assert (not b!2427732))

(assert (not b!2427595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

