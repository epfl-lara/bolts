; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!91624 () Bool)

(assert start!91624)

(declare-fun b!1067376 () Bool)

(assert (=> b!1067376 true))

(assert (=> b!1067376 true))

(assert (=> b!1067376 true))

(declare-fun lambda!38768 () Int)

(declare-fun lambda!38767 () Int)

(assert (=> b!1067376 (not (= lambda!38768 lambda!38767))))

(assert (=> b!1067376 true))

(assert (=> b!1067376 true))

(assert (=> b!1067376 true))

(declare-fun bs!252376 () Bool)

(declare-fun b!1067378 () Bool)

(assert (= bs!252376 (and b!1067378 b!1067376)))

(declare-datatypes ((C!6458 0))(
  ( (C!6459 (val!3477 Int)) )
))
(declare-datatypes ((Regex!2944 0))(
  ( (ElementMatch!2944 (c!179031 C!6458)) (Concat!4777 (regOne!6400 Regex!2944) (regTwo!6400 Regex!2944)) (EmptyExpr!2944) (Star!2944 (reg!3273 Regex!2944)) (EmptyLang!2944) (Union!2944 (regOne!6401 Regex!2944) (regTwo!6401 Regex!2944)) )
))
(declare-fun lt!360821 () Regex!2944)

(declare-fun lt!360819 () Regex!2944)

(declare-fun r!15766 () Regex!2944)

(declare-fun lt!360824 () Regex!2944)

(declare-fun lambda!38769 () Int)

(assert (=> bs!252376 (= (and (= lt!360819 (reg!3273 r!15766)) (= lt!360821 lt!360824)) (= lambda!38769 lambda!38767))))

(assert (=> bs!252376 (not (= lambda!38769 lambda!38768))))

(assert (=> b!1067378 true))

(assert (=> b!1067378 true))

(assert (=> b!1067378 true))

(declare-fun lambda!38770 () Int)

(assert (=> bs!252376 (not (= lambda!38770 lambda!38767))))

(assert (=> bs!252376 (= (and (= lt!360819 (reg!3273 r!15766)) (= lt!360821 lt!360824)) (= lambda!38770 lambda!38768))))

(assert (=> b!1067378 (not (= lambda!38770 lambda!38769))))

(assert (=> b!1067378 true))

(assert (=> b!1067378 true))

(assert (=> b!1067378 true))

(declare-fun b!1067373 () Bool)

(declare-fun e!676728 () Bool)

(declare-fun e!676731 () Bool)

(assert (=> b!1067373 (= e!676728 (not e!676731))))

(declare-fun res!476872 () Bool)

(assert (=> b!1067373 (=> res!476872 e!676731)))

(declare-fun lt!360828 () Bool)

(assert (=> b!1067373 (= res!476872 (or lt!360828 (and (is-Concat!4777 r!15766) (is-EmptyExpr!2944 (regOne!6400 r!15766))) (and (is-Concat!4777 r!15766) (is-EmptyExpr!2944 (regTwo!6400 r!15766))) (is-Concat!4777 r!15766) (is-Union!2944 r!15766) (not (is-Star!2944 r!15766))))))

(declare-datatypes ((List!10174 0))(
  ( (Nil!10158) (Cons!10158 (h!15559 C!6458) (t!101220 List!10174)) )
))
(declare-fun s!10566 () List!10174)

(declare-fun matchRSpec!743 (Regex!2944 List!10174) Bool)

(assert (=> b!1067373 (= lt!360828 (matchRSpec!743 r!15766 s!10566))))

(declare-fun matchR!1480 (Regex!2944 List!10174) Bool)

(assert (=> b!1067373 (= lt!360828 (matchR!1480 r!15766 s!10566))))

(declare-datatypes ((Unit!15563 0))(
  ( (Unit!15564) )
))
(declare-fun lt!360825 () Unit!15563)

(declare-fun mainMatchTheorem!743 (Regex!2944 List!10174) Unit!15563)

(assert (=> b!1067373 (= lt!360825 (mainMatchTheorem!743 r!15766 s!10566))))

(declare-fun b!1067374 () Bool)

(declare-fun e!676727 () Bool)

(declare-fun validRegex!1413 (Regex!2944) Bool)

(assert (=> b!1067374 (= e!676727 (validRegex!1413 (reg!3273 r!15766)))))

(declare-fun b!1067375 () Bool)

(declare-fun e!676730 () Bool)

(assert (=> b!1067375 (= e!676730 e!676727)))

(declare-fun res!476871 () Bool)

(assert (=> b!1067375 (=> res!476871 e!676727)))

(declare-datatypes ((tuple2!11602 0))(
  ( (tuple2!11603 (_1!6627 List!10174) (_2!6627 List!10174)) )
))
(declare-fun lt!360826 () tuple2!11602)

(assert (=> b!1067375 (= res!476871 (not (matchR!1480 lt!360819 (_1!6627 lt!360826))))))

(declare-datatypes ((Option!2443 0))(
  ( (None!2442) (Some!2442 (v!19859 tuple2!11602)) )
))
(declare-fun lt!360823 () Option!2443)

(declare-fun get!3665 (Option!2443) tuple2!11602)

(assert (=> b!1067375 (= lt!360826 (get!3665 lt!360823))))

(declare-fun e!676732 () Bool)

(assert (=> b!1067376 (= e!676731 e!676732)))

(declare-fun res!476870 () Bool)

(assert (=> b!1067376 (=> res!476870 e!676732)))

(assert (=> b!1067376 (= res!476870 (not (matchR!1480 lt!360821 s!10566)))))

(assert (=> b!1067376 (= lt!360821 (Star!2944 lt!360819))))

(declare-fun removeUselessConcat!485 (Regex!2944) Regex!2944)

(assert (=> b!1067376 (= lt!360819 (removeUselessConcat!485 (reg!3273 r!15766)))))

(declare-fun Exists!667 (Int) Bool)

(assert (=> b!1067376 (= (Exists!667 lambda!38767) (Exists!667 lambda!38768))))

(declare-fun lt!360827 () Unit!15563)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!185 (Regex!2944 List!10174) Unit!15563)

(assert (=> b!1067376 (= lt!360827 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!185 (reg!3273 r!15766) s!10566))))

(declare-fun isDefined!2085 (Option!2443) Bool)

(declare-fun findConcatSeparation!549 (Regex!2944 Regex!2944 List!10174 List!10174 List!10174) Option!2443)

(assert (=> b!1067376 (= (isDefined!2085 (findConcatSeparation!549 (reg!3273 r!15766) lt!360824 Nil!10158 s!10566 s!10566)) (Exists!667 lambda!38767))))

(declare-fun lt!360829 () Unit!15563)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!549 (Regex!2944 Regex!2944 List!10174) Unit!15563)

(assert (=> b!1067376 (= lt!360829 (lemmaFindConcatSeparationEquivalentToExists!549 (reg!3273 r!15766) lt!360824 s!10566))))

(assert (=> b!1067376 (= lt!360824 (Star!2944 (reg!3273 r!15766)))))

(declare-fun b!1067377 () Bool)

(declare-fun e!676733 () Bool)

(declare-fun tp!320073 () Bool)

(declare-fun tp!320070 () Bool)

(assert (=> b!1067377 (= e!676733 (and tp!320073 tp!320070))))

(assert (=> b!1067378 (= e!676732 e!676730)))

(declare-fun res!476875 () Bool)

(assert (=> b!1067378 (=> res!476875 e!676730)))

(declare-fun isEmpty!6583 (List!10174) Bool)

(assert (=> b!1067378 (= res!476875 (isEmpty!6583 s!10566))))

(assert (=> b!1067378 (= (Exists!667 lambda!38769) (Exists!667 lambda!38770))))

(declare-fun lt!360820 () Unit!15563)

(assert (=> b!1067378 (= lt!360820 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!185 lt!360819 s!10566))))

(declare-fun lt!360818 () Bool)

(assert (=> b!1067378 (= lt!360818 (Exists!667 lambda!38769))))

(assert (=> b!1067378 (= lt!360818 (isDefined!2085 lt!360823))))

(assert (=> b!1067378 (= lt!360823 (findConcatSeparation!549 lt!360819 lt!360821 Nil!10158 s!10566 s!10566))))

(declare-fun lt!360830 () Unit!15563)

(assert (=> b!1067378 (= lt!360830 (lemmaFindConcatSeparationEquivalentToExists!549 lt!360819 lt!360821 s!10566))))

(assert (=> b!1067378 (matchRSpec!743 lt!360821 s!10566)))

(declare-fun lt!360822 () Unit!15563)

(assert (=> b!1067378 (= lt!360822 (mainMatchTheorem!743 lt!360821 s!10566))))

(declare-fun b!1067379 () Bool)

(declare-fun tp_is_empty!5531 () Bool)

(assert (=> b!1067379 (= e!676733 tp_is_empty!5531)))

(declare-fun res!476876 () Bool)

(assert (=> start!91624 (=> (not res!476876) (not e!676728))))

(assert (=> start!91624 (= res!476876 (validRegex!1413 r!15766))))

(assert (=> start!91624 e!676728))

(assert (=> start!91624 e!676733))

(declare-fun e!676729 () Bool)

(assert (=> start!91624 e!676729))

(declare-fun b!1067380 () Bool)

(declare-fun res!476874 () Bool)

(assert (=> b!1067380 (=> res!476874 e!676730)))

(assert (=> b!1067380 (= res!476874 (not lt!360818))))

(declare-fun b!1067381 () Bool)

(declare-fun res!476873 () Bool)

(assert (=> b!1067381 (=> res!476873 e!676727)))

(assert (=> b!1067381 (= res!476873 (not (matchR!1480 lt!360821 (_2!6627 lt!360826))))))

(declare-fun b!1067382 () Bool)

(declare-fun tp!320072 () Bool)

(assert (=> b!1067382 (= e!676733 tp!320072)))

(declare-fun b!1067383 () Bool)

(declare-fun tp!320071 () Bool)

(assert (=> b!1067383 (= e!676729 (and tp_is_empty!5531 tp!320071))))

(declare-fun b!1067384 () Bool)

(declare-fun tp!320074 () Bool)

(declare-fun tp!320069 () Bool)

(assert (=> b!1067384 (= e!676733 (and tp!320074 tp!320069))))

(assert (= (and start!91624 res!476876) b!1067373))

(assert (= (and b!1067373 (not res!476872)) b!1067376))

(assert (= (and b!1067376 (not res!476870)) b!1067378))

(assert (= (and b!1067378 (not res!476875)) b!1067380))

(assert (= (and b!1067380 (not res!476874)) b!1067375))

(assert (= (and b!1067375 (not res!476871)) b!1067381))

(assert (= (and b!1067381 (not res!476873)) b!1067374))

(assert (= (and start!91624 (is-ElementMatch!2944 r!15766)) b!1067379))

(assert (= (and start!91624 (is-Concat!4777 r!15766)) b!1067384))

(assert (= (and start!91624 (is-Star!2944 r!15766)) b!1067382))

(assert (= (and start!91624 (is-Union!2944 r!15766)) b!1067377))

(assert (= (and start!91624 (is-Cons!10158 s!10566)) b!1067383))

(declare-fun m!1223801 () Bool)

(assert (=> start!91624 m!1223801))

(declare-fun m!1223803 () Bool)

(assert (=> b!1067376 m!1223803))

(declare-fun m!1223805 () Bool)

(assert (=> b!1067376 m!1223805))

(declare-fun m!1223807 () Bool)

(assert (=> b!1067376 m!1223807))

(assert (=> b!1067376 m!1223805))

(declare-fun m!1223809 () Bool)

(assert (=> b!1067376 m!1223809))

(declare-fun m!1223811 () Bool)

(assert (=> b!1067376 m!1223811))

(declare-fun m!1223813 () Bool)

(assert (=> b!1067376 m!1223813))

(assert (=> b!1067376 m!1223811))

(declare-fun m!1223815 () Bool)

(assert (=> b!1067376 m!1223815))

(declare-fun m!1223817 () Bool)

(assert (=> b!1067376 m!1223817))

(declare-fun m!1223819 () Bool)

(assert (=> b!1067374 m!1223819))

(declare-fun m!1223821 () Bool)

(assert (=> b!1067373 m!1223821))

(declare-fun m!1223823 () Bool)

(assert (=> b!1067373 m!1223823))

(declare-fun m!1223825 () Bool)

(assert (=> b!1067373 m!1223825))

(declare-fun m!1223827 () Bool)

(assert (=> b!1067381 m!1223827))

(declare-fun m!1223829 () Bool)

(assert (=> b!1067375 m!1223829))

(declare-fun m!1223831 () Bool)

(assert (=> b!1067375 m!1223831))

(declare-fun m!1223833 () Bool)

(assert (=> b!1067378 m!1223833))

(declare-fun m!1223835 () Bool)

(assert (=> b!1067378 m!1223835))

(declare-fun m!1223837 () Bool)

(assert (=> b!1067378 m!1223837))

(declare-fun m!1223839 () Bool)

(assert (=> b!1067378 m!1223839))

(declare-fun m!1223841 () Bool)

(assert (=> b!1067378 m!1223841))

(declare-fun m!1223843 () Bool)

(assert (=> b!1067378 m!1223843))

(declare-fun m!1223845 () Bool)

(assert (=> b!1067378 m!1223845))

(declare-fun m!1223847 () Bool)

(assert (=> b!1067378 m!1223847))

(assert (=> b!1067378 m!1223833))

(declare-fun m!1223849 () Bool)

(assert (=> b!1067378 m!1223849))

(push 1)

(assert tp_is_empty!5531)

(assert (not b!1067375))

(assert (not start!91624))

(assert (not b!1067377))

(assert (not b!1067378))

(assert (not b!1067373))

(assert (not b!1067384))

(assert (not b!1067376))

(assert (not b!1067381))

(assert (not b!1067382))

(assert (not b!1067374))

(assert (not b!1067383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!252378 () Bool)

(declare-fun d!301310 () Bool)

(assert (= bs!252378 (and d!301310 b!1067376)))

(declare-fun lambda!38789 () Int)

(assert (=> bs!252378 (= (and (= lt!360819 (reg!3273 r!15766)) (= lt!360821 lt!360824)) (= lambda!38789 lambda!38767))))

(assert (=> bs!252378 (not (= lambda!38789 lambda!38768))))

(declare-fun bs!252379 () Bool)

(assert (= bs!252379 (and d!301310 b!1067378)))

(assert (=> bs!252379 (= lambda!38789 lambda!38769)))

(assert (=> bs!252379 (not (= lambda!38789 lambda!38770))))

(assert (=> d!301310 true))

(assert (=> d!301310 true))

(assert (=> d!301310 true))

(assert (=> d!301310 (= (isDefined!2085 (findConcatSeparation!549 lt!360819 lt!360821 Nil!10158 s!10566 s!10566)) (Exists!667 lambda!38789))))

(declare-fun lt!360872 () Unit!15563)

(declare-fun choose!6823 (Regex!2944 Regex!2944 List!10174) Unit!15563)

(assert (=> d!301310 (= lt!360872 (choose!6823 lt!360819 lt!360821 s!10566))))

(assert (=> d!301310 (validRegex!1413 lt!360819)))

(assert (=> d!301310 (= (lemmaFindConcatSeparationEquivalentToExists!549 lt!360819 lt!360821 s!10566) lt!360872)))

(declare-fun bs!252380 () Bool)

(assert (= bs!252380 d!301310))

(declare-fun m!1223901 () Bool)

(assert (=> bs!252380 m!1223901))

(declare-fun m!1223903 () Bool)

(assert (=> bs!252380 m!1223903))

(assert (=> bs!252380 m!1223845))

(declare-fun m!1223905 () Bool)

(assert (=> bs!252380 m!1223905))

(assert (=> bs!252380 m!1223845))

(declare-fun m!1223907 () Bool)

(assert (=> bs!252380 m!1223907))

(assert (=> b!1067378 d!301310))

(declare-fun bs!252381 () Bool)

(declare-fun d!301312 () Bool)

(assert (= bs!252381 (and d!301312 b!1067378)))

(declare-fun lambda!38794 () Int)

(assert (=> bs!252381 (not (= lambda!38794 lambda!38770))))

(declare-fun bs!252382 () Bool)

(assert (= bs!252382 (and d!301312 b!1067376)))

(assert (=> bs!252382 (not (= lambda!38794 lambda!38768))))

(assert (=> bs!252381 (= (= (Star!2944 lt!360819) lt!360821) (= lambda!38794 lambda!38769))))

(declare-fun bs!252383 () Bool)

(assert (= bs!252383 (and d!301312 d!301310)))

(assert (=> bs!252383 (= (= (Star!2944 lt!360819) lt!360821) (= lambda!38794 lambda!38789))))

(assert (=> bs!252382 (= (and (= lt!360819 (reg!3273 r!15766)) (= (Star!2944 lt!360819) lt!360824)) (= lambda!38794 lambda!38767))))

(assert (=> d!301312 true))

(assert (=> d!301312 true))

(declare-fun lambda!38795 () Int)

(assert (=> bs!252381 (= (= (Star!2944 lt!360819) lt!360821) (= lambda!38795 lambda!38770))))

(assert (=> bs!252382 (= (and (= lt!360819 (reg!3273 r!15766)) (= (Star!2944 lt!360819) lt!360824)) (= lambda!38795 lambda!38768))))

(assert (=> bs!252381 (not (= lambda!38795 lambda!38769))))

(assert (=> bs!252383 (not (= lambda!38795 lambda!38789))))

(assert (=> bs!252382 (not (= lambda!38795 lambda!38767))))

(declare-fun bs!252384 () Bool)

(assert (= bs!252384 d!301312))

(assert (=> bs!252384 (not (= lambda!38795 lambda!38794))))

(assert (=> d!301312 true))

(assert (=> d!301312 true))

(assert (=> d!301312 (= (Exists!667 lambda!38794) (Exists!667 lambda!38795))))

(declare-fun lt!360875 () Unit!15563)

(declare-fun choose!6824 (Regex!2944 List!10174) Unit!15563)

(assert (=> d!301312 (= lt!360875 (choose!6824 lt!360819 s!10566))))

(assert (=> d!301312 (validRegex!1413 lt!360819)))

(assert (=> d!301312 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!185 lt!360819 s!10566) lt!360875)))

(declare-fun m!1223909 () Bool)

(assert (=> bs!252384 m!1223909))

(declare-fun m!1223911 () Bool)

(assert (=> bs!252384 m!1223911))

(declare-fun m!1223913 () Bool)

(assert (=> bs!252384 m!1223913))

(assert (=> bs!252384 m!1223907))

(assert (=> b!1067378 d!301312))

(declare-fun d!301316 () Bool)

(declare-fun choose!6825 (Int) Bool)

(assert (=> d!301316 (= (Exists!667 lambda!38770) (choose!6825 lambda!38770))))

(declare-fun bs!252385 () Bool)

(assert (= bs!252385 d!301316))

(declare-fun m!1223915 () Bool)

(assert (=> bs!252385 m!1223915))

(assert (=> b!1067378 d!301316))

(declare-fun bs!252386 () Bool)

(declare-fun b!1067540 () Bool)

(assert (= bs!252386 (and b!1067540 b!1067378)))

(declare-fun lambda!38800 () Int)

(assert (=> bs!252386 (= (= (reg!3273 lt!360821) lt!360819) (= lambda!38800 lambda!38770))))

(declare-fun bs!252387 () Bool)

(assert (= bs!252387 (and b!1067540 b!1067376)))

(assert (=> bs!252387 (= (and (= (reg!3273 lt!360821) (reg!3273 r!15766)) (= lt!360821 lt!360824)) (= lambda!38800 lambda!38768))))

(assert (=> bs!252386 (not (= lambda!38800 lambda!38769))))

(declare-fun bs!252388 () Bool)

(assert (= bs!252388 (and b!1067540 d!301310)))

(assert (=> bs!252388 (not (= lambda!38800 lambda!38789))))

(assert (=> bs!252387 (not (= lambda!38800 lambda!38767))))

(declare-fun bs!252389 () Bool)

(assert (= bs!252389 (and b!1067540 d!301312)))

(assert (=> bs!252389 (= (and (= (reg!3273 lt!360821) lt!360819) (= lt!360821 (Star!2944 lt!360819))) (= lambda!38800 lambda!38795))))

(assert (=> bs!252389 (not (= lambda!38800 lambda!38794))))

(assert (=> b!1067540 true))

(assert (=> b!1067540 true))

(declare-fun bs!252390 () Bool)

(declare-fun b!1067536 () Bool)

(assert (= bs!252390 (and b!1067536 b!1067378)))

(declare-fun lambda!38801 () Int)

(assert (=> bs!252390 (not (= lambda!38801 lambda!38770))))

(declare-fun bs!252391 () Bool)

(assert (= bs!252391 (and b!1067536 b!1067540)))

(assert (=> bs!252391 (not (= lambda!38801 lambda!38800))))

(declare-fun bs!252392 () Bool)

(assert (= bs!252392 (and b!1067536 b!1067376)))

(assert (=> bs!252392 (not (= lambda!38801 lambda!38768))))

(assert (=> bs!252390 (not (= lambda!38801 lambda!38769))))

(declare-fun bs!252393 () Bool)

(assert (= bs!252393 (and b!1067536 d!301310)))

(assert (=> bs!252393 (not (= lambda!38801 lambda!38789))))

(assert (=> bs!252392 (not (= lambda!38801 lambda!38767))))

(declare-fun bs!252394 () Bool)

(assert (= bs!252394 (and b!1067536 d!301312)))

(assert (=> bs!252394 (not (= lambda!38801 lambda!38795))))

(assert (=> bs!252394 (not (= lambda!38801 lambda!38794))))

(assert (=> b!1067536 true))

(assert (=> b!1067536 true))

(declare-fun b!1067530 () Bool)

(declare-fun e!676813 () Bool)

(assert (=> b!1067530 (= e!676813 (= s!10566 (Cons!10158 (c!179031 lt!360821) Nil!10158)))))

(declare-fun b!1067531 () Bool)

(declare-fun e!676815 () Bool)

(declare-fun e!676812 () Bool)

(assert (=> b!1067531 (= e!676815 e!676812)))

(declare-fun res!476971 () Bool)

(assert (=> b!1067531 (= res!476971 (not (is-EmptyLang!2944 lt!360821)))))

(assert (=> b!1067531 (=> (not res!476971) (not e!676812))))

(declare-fun b!1067532 () Bool)

(declare-fun c!179048 () Bool)

(assert (=> b!1067532 (= c!179048 (is-Union!2944 lt!360821))))

(declare-fun e!676816 () Bool)

(assert (=> b!1067532 (= e!676813 e!676816)))

(declare-fun b!1067534 () Bool)

(declare-fun e!676817 () Bool)

(assert (=> b!1067534 (= e!676816 e!676817)))

(declare-fun res!476973 () Bool)

(assert (=> b!1067534 (= res!476973 (matchRSpec!743 (regOne!6401 lt!360821) s!10566))))

(assert (=> b!1067534 (=> res!476973 e!676817)))

(declare-fun b!1067535 () Bool)

(declare-fun call!77111 () Bool)

(assert (=> b!1067535 (= e!676815 call!77111)))

(declare-fun bm!77105 () Bool)

(assert (=> bm!77105 (= call!77111 (isEmpty!6583 s!10566))))

(declare-fun c!179050 () Bool)

(declare-fun call!77110 () Bool)

(declare-fun bm!77106 () Bool)

(assert (=> bm!77106 (= call!77110 (Exists!667 (ite c!179050 lambda!38800 lambda!38801)))))

(declare-fun e!676818 () Bool)

(assert (=> b!1067536 (= e!676818 call!77110)))

(declare-fun b!1067537 () Bool)

(declare-fun res!476972 () Bool)

(declare-fun e!676814 () Bool)

(assert (=> b!1067537 (=> res!476972 e!676814)))

(assert (=> b!1067537 (= res!476972 call!77111)))

(assert (=> b!1067537 (= e!676818 e!676814)))

(declare-fun b!1067538 () Bool)

(declare-fun c!179047 () Bool)

(assert (=> b!1067538 (= c!179047 (is-ElementMatch!2944 lt!360821))))

(assert (=> b!1067538 (= e!676812 e!676813)))

(declare-fun b!1067533 () Bool)

(assert (=> b!1067533 (= e!676817 (matchRSpec!743 (regTwo!6401 lt!360821) s!10566))))

(declare-fun d!301318 () Bool)

(declare-fun c!179049 () Bool)

(assert (=> d!301318 (= c!179049 (is-EmptyExpr!2944 lt!360821))))

(assert (=> d!301318 (= (matchRSpec!743 lt!360821 s!10566) e!676815)))

(declare-fun b!1067539 () Bool)

(assert (=> b!1067539 (= e!676816 e!676818)))

(assert (=> b!1067539 (= c!179050 (is-Star!2944 lt!360821))))

(assert (=> b!1067540 (= e!676814 call!77110)))

(assert (= (and d!301318 c!179049) b!1067535))

(assert (= (and d!301318 (not c!179049)) b!1067531))

(assert (= (and b!1067531 res!476971) b!1067538))

(assert (= (and b!1067538 c!179047) b!1067530))

(assert (= (and b!1067538 (not c!179047)) b!1067532))

(assert (= (and b!1067532 c!179048) b!1067534))

(assert (= (and b!1067532 (not c!179048)) b!1067539))

(assert (= (and b!1067534 (not res!476973)) b!1067533))

(assert (= (and b!1067539 c!179050) b!1067537))

(assert (= (and b!1067539 (not c!179050)) b!1067536))

(assert (= (and b!1067537 (not res!476972)) b!1067540))

(assert (= (or b!1067540 b!1067536) bm!77106))

(assert (= (or b!1067535 b!1067537) bm!77105))

(declare-fun m!1223923 () Bool)

(assert (=> b!1067534 m!1223923))

(assert (=> bm!77105 m!1223841))

(declare-fun m!1223925 () Bool)

(assert (=> bm!77106 m!1223925))

(declare-fun m!1223927 () Bool)

(assert (=> b!1067533 m!1223927))

(assert (=> b!1067378 d!301318))

(declare-fun d!301322 () Bool)

(assert (=> d!301322 (= (matchR!1480 lt!360821 s!10566) (matchRSpec!743 lt!360821 s!10566))))

(declare-fun lt!360878 () Unit!15563)

(declare-fun choose!6826 (Regex!2944 List!10174) Unit!15563)

(assert (=> d!301322 (= lt!360878 (choose!6826 lt!360821 s!10566))))

(assert (=> d!301322 (validRegex!1413 lt!360821)))

(assert (=> d!301322 (= (mainMatchTheorem!743 lt!360821 s!10566) lt!360878)))

(declare-fun bs!252395 () Bool)

(assert (= bs!252395 d!301322))

(assert (=> bs!252395 m!1223817))

(assert (=> bs!252395 m!1223849))

(declare-fun m!1223929 () Bool)

(assert (=> bs!252395 m!1223929))

(declare-fun m!1223931 () Bool)

(assert (=> bs!252395 m!1223931))

(assert (=> b!1067378 d!301322))

(declare-fun d!301324 () Bool)

(assert (=> d!301324 (= (Exists!667 lambda!38769) (choose!6825 lambda!38769))))

(declare-fun bs!252396 () Bool)

(assert (= bs!252396 d!301324))

(declare-fun m!1223933 () Bool)

(assert (=> bs!252396 m!1223933))

(assert (=> b!1067378 d!301324))

(declare-fun d!301326 () Bool)

(declare-fun isEmpty!6585 (Option!2443) Bool)

(assert (=> d!301326 (= (isDefined!2085 lt!360823) (not (isEmpty!6585 lt!360823)))))

(declare-fun bs!252397 () Bool)

(assert (= bs!252397 d!301326))

(declare-fun m!1223935 () Bool)

(assert (=> bs!252397 m!1223935))

(assert (=> b!1067378 d!301326))

(declare-fun d!301328 () Bool)

(assert (=> d!301328 (= (isEmpty!6583 s!10566) (is-Nil!10158 s!10566))))

(assert (=> b!1067378 d!301328))

(declare-fun b!1067591 () Bool)

(declare-fun e!676847 () Bool)

(assert (=> b!1067591 (= e!676847 (matchR!1480 lt!360821 s!10566))))

(declare-fun b!1067592 () Bool)

(declare-fun e!676851 () Option!2443)

(assert (=> b!1067592 (= e!676851 (Some!2442 (tuple2!11603 Nil!10158 s!10566)))))

(declare-fun b!1067593 () Bool)

(declare-fun res!477001 () Bool)

(declare-fun e!676849 () Bool)

(assert (=> b!1067593 (=> (not res!477001) (not e!676849))))

(declare-fun lt!360885 () Option!2443)

(assert (=> b!1067593 (= res!477001 (matchR!1480 lt!360821 (_2!6627 (get!3665 lt!360885))))))

(declare-fun b!1067594 () Bool)

(declare-fun e!676850 () Option!2443)

(assert (=> b!1067594 (= e!676851 e!676850)))

(declare-fun c!179063 () Bool)

(assert (=> b!1067594 (= c!179063 (is-Nil!10158 s!10566))))

(declare-fun b!1067595 () Bool)

(declare-fun res!477002 () Bool)

(assert (=> b!1067595 (=> (not res!477002) (not e!676849))))

(assert (=> b!1067595 (= res!477002 (matchR!1480 lt!360819 (_1!6627 (get!3665 lt!360885))))))

(declare-fun b!1067596 () Bool)

(declare-fun ++!2814 (List!10174 List!10174) List!10174)

(assert (=> b!1067596 (= e!676849 (= (++!2814 (_1!6627 (get!3665 lt!360885)) (_2!6627 (get!3665 lt!360885))) s!10566))))

(declare-fun b!1067597 () Bool)

(declare-fun e!676848 () Bool)

(assert (=> b!1067597 (= e!676848 (not (isDefined!2085 lt!360885)))))

(declare-fun b!1067598 () Bool)

(assert (=> b!1067598 (= e!676850 None!2442)))

(declare-fun b!1067599 () Bool)

(declare-fun lt!360887 () Unit!15563)

(declare-fun lt!360886 () Unit!15563)

(assert (=> b!1067599 (= lt!360887 lt!360886)))

(assert (=> b!1067599 (= (++!2814 (++!2814 Nil!10158 (Cons!10158 (h!15559 s!10566) Nil!10158)) (t!101220 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!407 (List!10174 C!6458 List!10174 List!10174) Unit!15563)

(assert (=> b!1067599 (= lt!360886 (lemmaMoveElementToOtherListKeepsConcatEq!407 Nil!10158 (h!15559 s!10566) (t!101220 s!10566) s!10566))))

(assert (=> b!1067599 (= e!676850 (findConcatSeparation!549 lt!360819 lt!360821 (++!2814 Nil!10158 (Cons!10158 (h!15559 s!10566) Nil!10158)) (t!101220 s!10566) s!10566))))

(declare-fun d!301330 () Bool)

(assert (=> d!301330 e!676848))

(declare-fun res!477000 () Bool)

(assert (=> d!301330 (=> res!477000 e!676848)))

(assert (=> d!301330 (= res!477000 e!676849)))

(declare-fun res!477003 () Bool)

(assert (=> d!301330 (=> (not res!477003) (not e!676849))))

(assert (=> d!301330 (= res!477003 (isDefined!2085 lt!360885))))

(assert (=> d!301330 (= lt!360885 e!676851)))

(declare-fun c!179064 () Bool)

(assert (=> d!301330 (= c!179064 e!676847)))

(declare-fun res!477004 () Bool)

(assert (=> d!301330 (=> (not res!477004) (not e!676847))))

(assert (=> d!301330 (= res!477004 (matchR!1480 lt!360819 Nil!10158))))

(assert (=> d!301330 (validRegex!1413 lt!360819)))

(assert (=> d!301330 (= (findConcatSeparation!549 lt!360819 lt!360821 Nil!10158 s!10566 s!10566) lt!360885)))

(assert (= (and d!301330 res!477004) b!1067591))

(assert (= (and d!301330 c!179064) b!1067592))

(assert (= (and d!301330 (not c!179064)) b!1067594))

(assert (= (and b!1067594 c!179063) b!1067598))

(assert (= (and b!1067594 (not c!179063)) b!1067599))

(assert (= (and d!301330 res!477003) b!1067595))

(assert (= (and b!1067595 res!477002) b!1067593))

(assert (= (and b!1067593 res!477001) b!1067596))

(assert (= (and d!301330 (not res!477000)) b!1067597))

(declare-fun m!1223937 () Bool)

(assert (=> b!1067593 m!1223937))

(declare-fun m!1223939 () Bool)

(assert (=> b!1067593 m!1223939))

(declare-fun m!1223941 () Bool)

(assert (=> b!1067599 m!1223941))

(assert (=> b!1067599 m!1223941))

(declare-fun m!1223943 () Bool)

(assert (=> b!1067599 m!1223943))

(declare-fun m!1223945 () Bool)

(assert (=> b!1067599 m!1223945))

(assert (=> b!1067599 m!1223941))

(declare-fun m!1223947 () Bool)

(assert (=> b!1067599 m!1223947))

(declare-fun m!1223949 () Bool)

(assert (=> d!301330 m!1223949))

(declare-fun m!1223951 () Bool)

(assert (=> d!301330 m!1223951))

(assert (=> d!301330 m!1223907))

(assert (=> b!1067597 m!1223949))

(assert (=> b!1067596 m!1223937))

(declare-fun m!1223953 () Bool)

(assert (=> b!1067596 m!1223953))

(assert (=> b!1067591 m!1223817))

(assert (=> b!1067595 m!1223937))

(declare-fun m!1223955 () Bool)

(assert (=> b!1067595 m!1223955))

(assert (=> b!1067378 d!301330))

(declare-fun b!1067629 () Bool)

(declare-fun e!676873 () Bool)

(declare-fun e!676879 () Bool)

(assert (=> b!1067629 (= e!676873 e!676879)))

(declare-fun res!477020 () Bool)

(declare-fun nullable!1031 (Regex!2944) Bool)

(assert (=> b!1067629 (= res!477020 (not (nullable!1031 (reg!3273 r!15766))))))

(assert (=> b!1067629 (=> (not res!477020) (not e!676879))))

(declare-fun bm!77119 () Bool)

(declare-fun call!77126 () Bool)

(declare-fun c!179073 () Bool)

(assert (=> bm!77119 (= call!77126 (validRegex!1413 (ite c!179073 (regTwo!6401 r!15766) (regTwo!6400 r!15766))))))

(declare-fun b!1067630 () Bool)

(declare-fun res!477021 () Bool)

(declare-fun e!676876 () Bool)

(assert (=> b!1067630 (=> (not res!477021) (not e!676876))))

(declare-fun call!77124 () Bool)

(assert (=> b!1067630 (= res!477021 call!77124)))

(declare-fun e!676875 () Bool)

(assert (=> b!1067630 (= e!676875 e!676876)))

(declare-fun b!1067631 () Bool)

(declare-fun e!676874 () Bool)

(declare-fun e!676877 () Bool)

(assert (=> b!1067631 (= e!676874 e!676877)))

(declare-fun res!477019 () Bool)

(assert (=> b!1067631 (=> (not res!477019) (not e!676877))))

(assert (=> b!1067631 (= res!477019 call!77124)))

(declare-fun b!1067632 () Bool)

(declare-fun res!477018 () Bool)

(assert (=> b!1067632 (=> res!477018 e!676874)))

(assert (=> b!1067632 (= res!477018 (not (is-Concat!4777 r!15766)))))

(assert (=> b!1067632 (= e!676875 e!676874)))

(declare-fun b!1067633 () Bool)

(assert (=> b!1067633 (= e!676877 call!77126)))

(declare-fun b!1067634 () Bool)

(declare-fun call!77125 () Bool)

(assert (=> b!1067634 (= e!676879 call!77125)))

(declare-fun b!1067635 () Bool)

(declare-fun e!676878 () Bool)

(assert (=> b!1067635 (= e!676878 e!676873)))

(declare-fun c!179074 () Bool)

(assert (=> b!1067635 (= c!179074 (is-Star!2944 r!15766))))

(declare-fun d!301332 () Bool)

(declare-fun res!477022 () Bool)

(assert (=> d!301332 (=> res!477022 e!676878)))

(assert (=> d!301332 (= res!477022 (is-ElementMatch!2944 r!15766))))

(assert (=> d!301332 (= (validRegex!1413 r!15766) e!676878)))

(declare-fun bm!77120 () Bool)

(assert (=> bm!77120 (= call!77124 call!77125)))

(declare-fun b!1067636 () Bool)

(assert (=> b!1067636 (= e!676873 e!676875)))

(assert (=> b!1067636 (= c!179073 (is-Union!2944 r!15766))))

(declare-fun b!1067637 () Bool)

(assert (=> b!1067637 (= e!676876 call!77126)))

(declare-fun bm!77121 () Bool)

(assert (=> bm!77121 (= call!77125 (validRegex!1413 (ite c!179074 (reg!3273 r!15766) (ite c!179073 (regOne!6401 r!15766) (regOne!6400 r!15766)))))))

(assert (= (and d!301332 (not res!477022)) b!1067635))

(assert (= (and b!1067635 c!179074) b!1067629))

(assert (= (and b!1067635 (not c!179074)) b!1067636))

(assert (= (and b!1067629 res!477020) b!1067634))

(assert (= (and b!1067636 c!179073) b!1067630))

(assert (= (and b!1067636 (not c!179073)) b!1067632))

(assert (= (and b!1067630 res!477021) b!1067637))

(assert (= (and b!1067632 (not res!477018)) b!1067631))

(assert (= (and b!1067631 res!477019) b!1067633))

(assert (= (or b!1067637 b!1067633) bm!77119))

(assert (= (or b!1067630 b!1067631) bm!77120))

(assert (= (or b!1067634 bm!77120) bm!77121))

(declare-fun m!1223957 () Bool)

(assert (=> b!1067629 m!1223957))

(declare-fun m!1223959 () Bool)

(assert (=> bm!77119 m!1223959))

(declare-fun m!1223961 () Bool)

(assert (=> bm!77121 m!1223961))

(assert (=> start!91624 d!301332))

(declare-fun bs!252400 () Bool)

(declare-fun b!1067648 () Bool)

(assert (= bs!252400 (and b!1067648 b!1067378)))

(declare-fun lambda!38807 () Int)

(assert (=> bs!252400 (= (and (= (reg!3273 r!15766) lt!360819) (= r!15766 lt!360821)) (= lambda!38807 lambda!38770))))

(declare-fun bs!252401 () Bool)

(assert (= bs!252401 (and b!1067648 b!1067540)))

(assert (=> bs!252401 (= (and (= (reg!3273 r!15766) (reg!3273 lt!360821)) (= r!15766 lt!360821)) (= lambda!38807 lambda!38800))))

(declare-fun bs!252402 () Bool)

(assert (= bs!252402 (and b!1067648 b!1067376)))

(assert (=> bs!252402 (= (= r!15766 lt!360824) (= lambda!38807 lambda!38768))))

(assert (=> bs!252400 (not (= lambda!38807 lambda!38769))))

(declare-fun bs!252404 () Bool)

(assert (= bs!252404 (and b!1067648 d!301310)))

(assert (=> bs!252404 (not (= lambda!38807 lambda!38789))))

(assert (=> bs!252402 (not (= lambda!38807 lambda!38767))))

(declare-fun bs!252406 () Bool)

(assert (= bs!252406 (and b!1067648 b!1067536)))

(assert (=> bs!252406 (not (= lambda!38807 lambda!38801))))

(declare-fun bs!252407 () Bool)

(assert (= bs!252407 (and b!1067648 d!301312)))

(assert (=> bs!252407 (= (and (= (reg!3273 r!15766) lt!360819) (= r!15766 (Star!2944 lt!360819))) (= lambda!38807 lambda!38795))))

(assert (=> bs!252407 (not (= lambda!38807 lambda!38794))))

(assert (=> b!1067648 true))

(assert (=> b!1067648 true))

(declare-fun bs!252409 () Bool)

(declare-fun b!1067644 () Bool)

(assert (= bs!252409 (and b!1067644 b!1067648)))

(declare-fun lambda!38809 () Int)

(assert (=> bs!252409 (not (= lambda!38809 lambda!38807))))

(declare-fun bs!252410 () Bool)

(assert (= bs!252410 (and b!1067644 b!1067378)))

(assert (=> bs!252410 (not (= lambda!38809 lambda!38770))))

(declare-fun bs!252411 () Bool)

(assert (= bs!252411 (and b!1067644 b!1067540)))

(assert (=> bs!252411 (not (= lambda!38809 lambda!38800))))

(declare-fun bs!252412 () Bool)

(assert (= bs!252412 (and b!1067644 b!1067376)))

(assert (=> bs!252412 (not (= lambda!38809 lambda!38768))))

(assert (=> bs!252410 (not (= lambda!38809 lambda!38769))))

(declare-fun bs!252413 () Bool)

(assert (= bs!252413 (and b!1067644 d!301310)))

(assert (=> bs!252413 (not (= lambda!38809 lambda!38789))))

(assert (=> bs!252412 (not (= lambda!38809 lambda!38767))))

(declare-fun bs!252414 () Bool)

(assert (= bs!252414 (and b!1067644 b!1067536)))

(assert (=> bs!252414 (= (and (= (regOne!6400 r!15766) (regOne!6400 lt!360821)) (= (regTwo!6400 r!15766) (regTwo!6400 lt!360821))) (= lambda!38809 lambda!38801))))

(declare-fun bs!252415 () Bool)

(assert (= bs!252415 (and b!1067644 d!301312)))

(assert (=> bs!252415 (not (= lambda!38809 lambda!38795))))

(assert (=> bs!252415 (not (= lambda!38809 lambda!38794))))

(assert (=> b!1067644 true))

(assert (=> b!1067644 true))

(declare-fun b!1067638 () Bool)

(declare-fun e!676881 () Bool)

(assert (=> b!1067638 (= e!676881 (= s!10566 (Cons!10158 (c!179031 r!15766) Nil!10158)))))

(declare-fun b!1067639 () Bool)

(declare-fun e!676883 () Bool)

(declare-fun e!676880 () Bool)

(assert (=> b!1067639 (= e!676883 e!676880)))

(declare-fun res!477023 () Bool)

(assert (=> b!1067639 (= res!477023 (not (is-EmptyLang!2944 r!15766)))))

(assert (=> b!1067639 (=> (not res!477023) (not e!676880))))

(declare-fun b!1067640 () Bool)

(declare-fun c!179076 () Bool)

(assert (=> b!1067640 (= c!179076 (is-Union!2944 r!15766))))

(declare-fun e!676884 () Bool)

(assert (=> b!1067640 (= e!676881 e!676884)))

(declare-fun b!1067642 () Bool)

(declare-fun e!676885 () Bool)

(assert (=> b!1067642 (= e!676884 e!676885)))

(declare-fun res!477025 () Bool)

(assert (=> b!1067642 (= res!477025 (matchRSpec!743 (regOne!6401 r!15766) s!10566))))

(assert (=> b!1067642 (=> res!477025 e!676885)))

(declare-fun b!1067643 () Bool)

(declare-fun call!77128 () Bool)

(assert (=> b!1067643 (= e!676883 call!77128)))

(declare-fun bm!77122 () Bool)

(assert (=> bm!77122 (= call!77128 (isEmpty!6583 s!10566))))

(declare-fun call!77127 () Bool)

(declare-fun bm!77123 () Bool)

(declare-fun c!179078 () Bool)

(assert (=> bm!77123 (= call!77127 (Exists!667 (ite c!179078 lambda!38807 lambda!38809)))))

(declare-fun e!676886 () Bool)

(assert (=> b!1067644 (= e!676886 call!77127)))

(declare-fun b!1067645 () Bool)

(declare-fun res!477024 () Bool)

(declare-fun e!676882 () Bool)

(assert (=> b!1067645 (=> res!477024 e!676882)))

(assert (=> b!1067645 (= res!477024 call!77128)))

(assert (=> b!1067645 (= e!676886 e!676882)))

(declare-fun b!1067646 () Bool)

(declare-fun c!179075 () Bool)

(assert (=> b!1067646 (= c!179075 (is-ElementMatch!2944 r!15766))))

(assert (=> b!1067646 (= e!676880 e!676881)))

(declare-fun b!1067641 () Bool)

(assert (=> b!1067641 (= e!676885 (matchRSpec!743 (regTwo!6401 r!15766) s!10566))))

(declare-fun d!301334 () Bool)

(declare-fun c!179077 () Bool)

(assert (=> d!301334 (= c!179077 (is-EmptyExpr!2944 r!15766))))

(assert (=> d!301334 (= (matchRSpec!743 r!15766 s!10566) e!676883)))

(declare-fun b!1067647 () Bool)

(assert (=> b!1067647 (= e!676884 e!676886)))

(assert (=> b!1067647 (= c!179078 (is-Star!2944 r!15766))))

(assert (=> b!1067648 (= e!676882 call!77127)))

(assert (= (and d!301334 c!179077) b!1067643))

(assert (= (and d!301334 (not c!179077)) b!1067639))

(assert (= (and b!1067639 res!477023) b!1067646))

(assert (= (and b!1067646 c!179075) b!1067638))

(assert (= (and b!1067646 (not c!179075)) b!1067640))

(assert (= (and b!1067640 c!179076) b!1067642))

(assert (= (and b!1067640 (not c!179076)) b!1067647))

(assert (= (and b!1067642 (not res!477025)) b!1067641))

(assert (= (and b!1067647 c!179078) b!1067645))

(assert (= (and b!1067647 (not c!179078)) b!1067644))

(assert (= (and b!1067645 (not res!477024)) b!1067648))

(assert (= (or b!1067648 b!1067644) bm!77123))

(assert (= (or b!1067643 b!1067645) bm!77122))

(declare-fun m!1223969 () Bool)

(assert (=> b!1067642 m!1223969))

(assert (=> bm!77122 m!1223841))

(declare-fun m!1223971 () Bool)

(assert (=> bm!77123 m!1223971))

(declare-fun m!1223973 () Bool)

(assert (=> b!1067641 m!1223973))

(assert (=> b!1067373 d!301334))

(declare-fun b!1067677 () Bool)

(declare-fun e!676906 () Bool)

(declare-fun e!676901 () Bool)

(assert (=> b!1067677 (= e!676906 e!676901)))

(declare-fun res!477043 () Bool)

(assert (=> b!1067677 (=> (not res!477043) (not e!676901))))

(declare-fun lt!360890 () Bool)

(assert (=> b!1067677 (= res!477043 (not lt!360890))))

(declare-fun b!1067678 () Bool)

(declare-fun e!676902 () Bool)

(assert (=> b!1067678 (= e!676902 (not lt!360890))))

(declare-fun b!1067679 () Bool)

(declare-fun e!676907 () Bool)

(assert (=> b!1067679 (= e!676907 e!676902)))

(declare-fun c!179086 () Bool)

(assert (=> b!1067679 (= c!179086 (is-EmptyLang!2944 r!15766))))

(declare-fun b!1067680 () Bool)

(declare-fun call!77131 () Bool)

(assert (=> b!1067680 (= e!676907 (= lt!360890 call!77131))))

(declare-fun b!1067681 () Bool)

(declare-fun e!676904 () Bool)

(assert (=> b!1067681 (= e!676901 e!676904)))

(declare-fun res!477047 () Bool)

(assert (=> b!1067681 (=> res!477047 e!676904)))

(assert (=> b!1067681 (= res!477047 call!77131)))

(declare-fun b!1067682 () Bool)

(declare-fun res!477048 () Bool)

(declare-fun e!676903 () Bool)

(assert (=> b!1067682 (=> (not res!477048) (not e!676903))))

(declare-fun tail!1546 (List!10174) List!10174)

(assert (=> b!1067682 (= res!477048 (isEmpty!6583 (tail!1546 s!10566)))))

(declare-fun b!1067683 () Bool)

(declare-fun res!477044 () Bool)

(assert (=> b!1067683 (=> res!477044 e!676904)))

(assert (=> b!1067683 (= res!477044 (not (isEmpty!6583 (tail!1546 s!10566))))))

(declare-fun b!1067684 () Bool)

(declare-fun head!1984 (List!10174) C!6458)

(assert (=> b!1067684 (= e!676904 (not (= (head!1984 s!10566) (c!179031 r!15766))))))

(declare-fun b!1067685 () Bool)

(assert (=> b!1067685 (= e!676903 (= (head!1984 s!10566) (c!179031 r!15766)))))

(declare-fun b!1067686 () Bool)

(declare-fun e!676905 () Bool)

(declare-fun derivativeStep!829 (Regex!2944 C!6458) Regex!2944)

(assert (=> b!1067686 (= e!676905 (matchR!1480 (derivativeStep!829 r!15766 (head!1984 s!10566)) (tail!1546 s!10566)))))

(declare-fun b!1067687 () Bool)

(declare-fun res!477049 () Bool)

(assert (=> b!1067687 (=> res!477049 e!676906)))

(assert (=> b!1067687 (= res!477049 e!676903)))

(declare-fun res!477045 () Bool)

(assert (=> b!1067687 (=> (not res!477045) (not e!676903))))

(assert (=> b!1067687 (= res!477045 lt!360890)))

(declare-fun b!1067688 () Bool)

(declare-fun res!477046 () Bool)

(assert (=> b!1067688 (=> (not res!477046) (not e!676903))))

(assert (=> b!1067688 (= res!477046 (not call!77131))))

(declare-fun d!301338 () Bool)

(assert (=> d!301338 e!676907))

(declare-fun c!179087 () Bool)

(assert (=> d!301338 (= c!179087 (is-EmptyExpr!2944 r!15766))))

(assert (=> d!301338 (= lt!360890 e!676905)))

(declare-fun c!179085 () Bool)

(assert (=> d!301338 (= c!179085 (isEmpty!6583 s!10566))))

(assert (=> d!301338 (validRegex!1413 r!15766)))

(assert (=> d!301338 (= (matchR!1480 r!15766 s!10566) lt!360890)))

(declare-fun b!1067689 () Bool)

(assert (=> b!1067689 (= e!676905 (nullable!1031 r!15766))))

(declare-fun b!1067690 () Bool)

(declare-fun res!477042 () Bool)

(assert (=> b!1067690 (=> res!477042 e!676906)))

(assert (=> b!1067690 (= res!477042 (not (is-ElementMatch!2944 r!15766)))))

(assert (=> b!1067690 (= e!676902 e!676906)))

(declare-fun bm!77126 () Bool)

(assert (=> bm!77126 (= call!77131 (isEmpty!6583 s!10566))))

(assert (= (and d!301338 c!179085) b!1067689))

(assert (= (and d!301338 (not c!179085)) b!1067686))

(assert (= (and d!301338 c!179087) b!1067680))

(assert (= (and d!301338 (not c!179087)) b!1067679))

(assert (= (and b!1067679 c!179086) b!1067678))

(assert (= (and b!1067679 (not c!179086)) b!1067690))

(assert (= (and b!1067690 (not res!477042)) b!1067687))

(assert (= (and b!1067687 res!477045) b!1067688))

(assert (= (and b!1067688 res!477046) b!1067682))

(assert (= (and b!1067682 res!477048) b!1067685))

(assert (= (and b!1067687 (not res!477049)) b!1067677))

(assert (= (and b!1067677 res!477043) b!1067681))

(assert (= (and b!1067681 (not res!477047)) b!1067683))

(assert (= (and b!1067683 (not res!477044)) b!1067684))

(assert (= (or b!1067680 b!1067688 b!1067681) bm!77126))

(declare-fun m!1223975 () Bool)

(assert (=> b!1067682 m!1223975))

(assert (=> b!1067682 m!1223975))

(declare-fun m!1223977 () Bool)

(assert (=> b!1067682 m!1223977))

(declare-fun m!1223979 () Bool)

(assert (=> b!1067684 m!1223979))

(assert (=> b!1067683 m!1223975))

(assert (=> b!1067683 m!1223975))

(assert (=> b!1067683 m!1223977))

(assert (=> b!1067686 m!1223979))

(assert (=> b!1067686 m!1223979))

(declare-fun m!1223981 () Bool)

(assert (=> b!1067686 m!1223981))

(assert (=> b!1067686 m!1223975))

(assert (=> b!1067686 m!1223981))

(assert (=> b!1067686 m!1223975))

(declare-fun m!1223983 () Bool)

(assert (=> b!1067686 m!1223983))

(assert (=> b!1067685 m!1223979))

(assert (=> bm!77126 m!1223841))

(assert (=> d!301338 m!1223841))

(assert (=> d!301338 m!1223801))

(declare-fun m!1223985 () Bool)

(assert (=> b!1067689 m!1223985))

(assert (=> b!1067373 d!301338))

(declare-fun d!301340 () Bool)

(assert (=> d!301340 (= (matchR!1480 r!15766 s!10566) (matchRSpec!743 r!15766 s!10566))))

(declare-fun lt!360891 () Unit!15563)

(assert (=> d!301340 (= lt!360891 (choose!6826 r!15766 s!10566))))

(assert (=> d!301340 (validRegex!1413 r!15766)))

(assert (=> d!301340 (= (mainMatchTheorem!743 r!15766 s!10566) lt!360891)))

(declare-fun bs!252416 () Bool)

(assert (= bs!252416 d!301340))

(assert (=> bs!252416 m!1223823))

(assert (=> bs!252416 m!1223821))

(declare-fun m!1223987 () Bool)

(assert (=> bs!252416 m!1223987))

(assert (=> bs!252416 m!1223801))

(assert (=> b!1067373 d!301340))

(declare-fun b!1067691 () Bool)

(declare-fun e!676908 () Bool)

(declare-fun e!676914 () Bool)

(assert (=> b!1067691 (= e!676908 e!676914)))

(declare-fun res!477052 () Bool)

(assert (=> b!1067691 (= res!477052 (not (nullable!1031 (reg!3273 (reg!3273 r!15766)))))))

(assert (=> b!1067691 (=> (not res!477052) (not e!676914))))

(declare-fun bm!77127 () Bool)

(declare-fun call!77134 () Bool)

(declare-fun c!179088 () Bool)

(assert (=> bm!77127 (= call!77134 (validRegex!1413 (ite c!179088 (regTwo!6401 (reg!3273 r!15766)) (regTwo!6400 (reg!3273 r!15766)))))))

(declare-fun b!1067692 () Bool)

(declare-fun res!477053 () Bool)

(declare-fun e!676911 () Bool)

(assert (=> b!1067692 (=> (not res!477053) (not e!676911))))

(declare-fun call!77132 () Bool)

(assert (=> b!1067692 (= res!477053 call!77132)))

(declare-fun e!676910 () Bool)

(assert (=> b!1067692 (= e!676910 e!676911)))

(declare-fun b!1067693 () Bool)

(declare-fun e!676909 () Bool)

(declare-fun e!676912 () Bool)

(assert (=> b!1067693 (= e!676909 e!676912)))

(declare-fun res!477051 () Bool)

(assert (=> b!1067693 (=> (not res!477051) (not e!676912))))

(assert (=> b!1067693 (= res!477051 call!77132)))

(declare-fun b!1067694 () Bool)

(declare-fun res!477050 () Bool)

(assert (=> b!1067694 (=> res!477050 e!676909)))

(assert (=> b!1067694 (= res!477050 (not (is-Concat!4777 (reg!3273 r!15766))))))

(assert (=> b!1067694 (= e!676910 e!676909)))

(declare-fun b!1067695 () Bool)

(assert (=> b!1067695 (= e!676912 call!77134)))

(declare-fun b!1067696 () Bool)

(declare-fun call!77133 () Bool)

(assert (=> b!1067696 (= e!676914 call!77133)))

(declare-fun b!1067697 () Bool)

(declare-fun e!676913 () Bool)

(assert (=> b!1067697 (= e!676913 e!676908)))

(declare-fun c!179089 () Bool)

(assert (=> b!1067697 (= c!179089 (is-Star!2944 (reg!3273 r!15766)))))

(declare-fun d!301342 () Bool)

(declare-fun res!477054 () Bool)

(assert (=> d!301342 (=> res!477054 e!676913)))

(assert (=> d!301342 (= res!477054 (is-ElementMatch!2944 (reg!3273 r!15766)))))

(assert (=> d!301342 (= (validRegex!1413 (reg!3273 r!15766)) e!676913)))

(declare-fun bm!77128 () Bool)

(assert (=> bm!77128 (= call!77132 call!77133)))

(declare-fun b!1067698 () Bool)

(assert (=> b!1067698 (= e!676908 e!676910)))

(assert (=> b!1067698 (= c!179088 (is-Union!2944 (reg!3273 r!15766)))))

(declare-fun b!1067699 () Bool)

(assert (=> b!1067699 (= e!676911 call!77134)))

(declare-fun bm!77129 () Bool)

(assert (=> bm!77129 (= call!77133 (validRegex!1413 (ite c!179089 (reg!3273 (reg!3273 r!15766)) (ite c!179088 (regOne!6401 (reg!3273 r!15766)) (regOne!6400 (reg!3273 r!15766))))))))

(assert (= (and d!301342 (not res!477054)) b!1067697))

(assert (= (and b!1067697 c!179089) b!1067691))

(assert (= (and b!1067697 (not c!179089)) b!1067698))

(assert (= (and b!1067691 res!477052) b!1067696))

(assert (= (and b!1067698 c!179088) b!1067692))

(assert (= (and b!1067698 (not c!179088)) b!1067694))

(assert (= (and b!1067692 res!477053) b!1067699))

(assert (= (and b!1067694 (not res!477050)) b!1067693))

(assert (= (and b!1067693 res!477051) b!1067695))

(assert (= (or b!1067699 b!1067695) bm!77127))

(assert (= (or b!1067692 b!1067693) bm!77128))

(assert (= (or b!1067696 bm!77128) bm!77129))

(declare-fun m!1223989 () Bool)

(assert (=> b!1067691 m!1223989))

(declare-fun m!1223991 () Bool)

(assert (=> bm!77127 m!1223991))

(declare-fun m!1223993 () Bool)

(assert (=> bm!77129 m!1223993))

(assert (=> b!1067374 d!301342))

(declare-fun b!1067700 () Bool)

(declare-fun e!676920 () Bool)

(declare-fun e!676915 () Bool)

(assert (=> b!1067700 (= e!676920 e!676915)))

(declare-fun res!477056 () Bool)

(assert (=> b!1067700 (=> (not res!477056) (not e!676915))))

(declare-fun lt!360892 () Bool)

(assert (=> b!1067700 (= res!477056 (not lt!360892))))

(declare-fun b!1067701 () Bool)

(declare-fun e!676916 () Bool)

(assert (=> b!1067701 (= e!676916 (not lt!360892))))

(declare-fun b!1067702 () Bool)

(declare-fun e!676921 () Bool)

(assert (=> b!1067702 (= e!676921 e!676916)))

(declare-fun c!179091 () Bool)

(assert (=> b!1067702 (= c!179091 (is-EmptyLang!2944 lt!360819))))

(declare-fun b!1067703 () Bool)

(declare-fun call!77135 () Bool)

(assert (=> b!1067703 (= e!676921 (= lt!360892 call!77135))))

(declare-fun b!1067704 () Bool)

(declare-fun e!676918 () Bool)

(assert (=> b!1067704 (= e!676915 e!676918)))

(declare-fun res!477060 () Bool)

(assert (=> b!1067704 (=> res!477060 e!676918)))

(assert (=> b!1067704 (= res!477060 call!77135)))

(declare-fun b!1067705 () Bool)

(declare-fun res!477061 () Bool)

(declare-fun e!676917 () Bool)

(assert (=> b!1067705 (=> (not res!477061) (not e!676917))))

(assert (=> b!1067705 (= res!477061 (isEmpty!6583 (tail!1546 (_1!6627 lt!360826))))))

(declare-fun b!1067706 () Bool)

(declare-fun res!477057 () Bool)

(assert (=> b!1067706 (=> res!477057 e!676918)))

(assert (=> b!1067706 (= res!477057 (not (isEmpty!6583 (tail!1546 (_1!6627 lt!360826)))))))

(declare-fun b!1067707 () Bool)

(assert (=> b!1067707 (= e!676918 (not (= (head!1984 (_1!6627 lt!360826)) (c!179031 lt!360819))))))

(declare-fun b!1067708 () Bool)

(assert (=> b!1067708 (= e!676917 (= (head!1984 (_1!6627 lt!360826)) (c!179031 lt!360819)))))

(declare-fun b!1067709 () Bool)

(declare-fun e!676919 () Bool)

(assert (=> b!1067709 (= e!676919 (matchR!1480 (derivativeStep!829 lt!360819 (head!1984 (_1!6627 lt!360826))) (tail!1546 (_1!6627 lt!360826))))))

(declare-fun b!1067710 () Bool)

(declare-fun res!477062 () Bool)

(assert (=> b!1067710 (=> res!477062 e!676920)))

(assert (=> b!1067710 (= res!477062 e!676917)))

(declare-fun res!477058 () Bool)

(assert (=> b!1067710 (=> (not res!477058) (not e!676917))))

(assert (=> b!1067710 (= res!477058 lt!360892)))

(declare-fun b!1067711 () Bool)

(declare-fun res!477059 () Bool)

(assert (=> b!1067711 (=> (not res!477059) (not e!676917))))

(assert (=> b!1067711 (= res!477059 (not call!77135))))

(declare-fun d!301344 () Bool)

(assert (=> d!301344 e!676921))

(declare-fun c!179092 () Bool)

(assert (=> d!301344 (= c!179092 (is-EmptyExpr!2944 lt!360819))))

(assert (=> d!301344 (= lt!360892 e!676919)))

(declare-fun c!179090 () Bool)

(assert (=> d!301344 (= c!179090 (isEmpty!6583 (_1!6627 lt!360826)))))

(assert (=> d!301344 (validRegex!1413 lt!360819)))

(assert (=> d!301344 (= (matchR!1480 lt!360819 (_1!6627 lt!360826)) lt!360892)))

(declare-fun b!1067712 () Bool)

(assert (=> b!1067712 (= e!676919 (nullable!1031 lt!360819))))

(declare-fun b!1067713 () Bool)

(declare-fun res!477055 () Bool)

(assert (=> b!1067713 (=> res!477055 e!676920)))

(assert (=> b!1067713 (= res!477055 (not (is-ElementMatch!2944 lt!360819)))))

(assert (=> b!1067713 (= e!676916 e!676920)))

(declare-fun bm!77130 () Bool)

(assert (=> bm!77130 (= call!77135 (isEmpty!6583 (_1!6627 lt!360826)))))

(assert (= (and d!301344 c!179090) b!1067712))

(assert (= (and d!301344 (not c!179090)) b!1067709))

(assert (= (and d!301344 c!179092) b!1067703))

(assert (= (and d!301344 (not c!179092)) b!1067702))

(assert (= (and b!1067702 c!179091) b!1067701))

(assert (= (and b!1067702 (not c!179091)) b!1067713))

(assert (= (and b!1067713 (not res!477055)) b!1067710))

(assert (= (and b!1067710 res!477058) b!1067711))

(assert (= (and b!1067711 res!477059) b!1067705))

(assert (= (and b!1067705 res!477061) b!1067708))

(assert (= (and b!1067710 (not res!477062)) b!1067700))

(assert (= (and b!1067700 res!477056) b!1067704))

(assert (= (and b!1067704 (not res!477060)) b!1067706))

(assert (= (and b!1067706 (not res!477057)) b!1067707))

(assert (= (or b!1067703 b!1067711 b!1067704) bm!77130))

(declare-fun m!1223995 () Bool)

(assert (=> b!1067705 m!1223995))

(assert (=> b!1067705 m!1223995))

(declare-fun m!1223997 () Bool)

(assert (=> b!1067705 m!1223997))

(declare-fun m!1223999 () Bool)

(assert (=> b!1067707 m!1223999))

(assert (=> b!1067706 m!1223995))

(assert (=> b!1067706 m!1223995))

(assert (=> b!1067706 m!1223997))

(assert (=> b!1067709 m!1223999))

(assert (=> b!1067709 m!1223999))

(declare-fun m!1224001 () Bool)

(assert (=> b!1067709 m!1224001))

(assert (=> b!1067709 m!1223995))

(assert (=> b!1067709 m!1224001))

(assert (=> b!1067709 m!1223995))

(declare-fun m!1224003 () Bool)

(assert (=> b!1067709 m!1224003))

(assert (=> b!1067708 m!1223999))

(declare-fun m!1224005 () Bool)

(assert (=> bm!77130 m!1224005))

(assert (=> d!301344 m!1224005))

(assert (=> d!301344 m!1223907))

(declare-fun m!1224007 () Bool)

(assert (=> b!1067712 m!1224007))

(assert (=> b!1067375 d!301344))

(declare-fun d!301346 () Bool)

(assert (=> d!301346 (= (get!3665 lt!360823) (v!19859 lt!360823))))

(assert (=> b!1067375 d!301346))

(declare-fun bs!252417 () Bool)

(declare-fun d!301348 () Bool)

(assert (= bs!252417 (and d!301348 b!1067644)))

(declare-fun lambda!38810 () Int)

(assert (=> bs!252417 (not (= lambda!38810 lambda!38809))))

(declare-fun bs!252418 () Bool)

(assert (= bs!252418 (and d!301348 b!1067648)))

(assert (=> bs!252418 (not (= lambda!38810 lambda!38807))))

(declare-fun bs!252419 () Bool)

(assert (= bs!252419 (and d!301348 b!1067378)))

(assert (=> bs!252419 (not (= lambda!38810 lambda!38770))))

(declare-fun bs!252420 () Bool)

(assert (= bs!252420 (and d!301348 b!1067540)))

(assert (=> bs!252420 (not (= lambda!38810 lambda!38800))))

(declare-fun bs!252421 () Bool)

(assert (= bs!252421 (and d!301348 b!1067376)))

(assert (=> bs!252421 (not (= lambda!38810 lambda!38768))))

(assert (=> bs!252419 (= (and (= (reg!3273 r!15766) lt!360819) (= (Star!2944 (reg!3273 r!15766)) lt!360821)) (= lambda!38810 lambda!38769))))

(declare-fun bs!252422 () Bool)

(assert (= bs!252422 (and d!301348 d!301310)))

(assert (=> bs!252422 (= (and (= (reg!3273 r!15766) lt!360819) (= (Star!2944 (reg!3273 r!15766)) lt!360821)) (= lambda!38810 lambda!38789))))

(assert (=> bs!252421 (= (= (Star!2944 (reg!3273 r!15766)) lt!360824) (= lambda!38810 lambda!38767))))

(declare-fun bs!252423 () Bool)

(assert (= bs!252423 (and d!301348 b!1067536)))

(assert (=> bs!252423 (not (= lambda!38810 lambda!38801))))

(declare-fun bs!252424 () Bool)

(assert (= bs!252424 (and d!301348 d!301312)))

(assert (=> bs!252424 (not (= lambda!38810 lambda!38795))))

(assert (=> bs!252424 (= (and (= (reg!3273 r!15766) lt!360819) (= (Star!2944 (reg!3273 r!15766)) (Star!2944 lt!360819))) (= lambda!38810 lambda!38794))))

(assert (=> d!301348 true))

(assert (=> d!301348 true))

(declare-fun lambda!38811 () Int)

(assert (=> bs!252417 (not (= lambda!38811 lambda!38809))))

(assert (=> bs!252418 (= (= (Star!2944 (reg!3273 r!15766)) r!15766) (= lambda!38811 lambda!38807))))

(assert (=> bs!252419 (= (and (= (reg!3273 r!15766) lt!360819) (= (Star!2944 (reg!3273 r!15766)) lt!360821)) (= lambda!38811 lambda!38770))))

(assert (=> bs!252420 (= (and (= (reg!3273 r!15766) (reg!3273 lt!360821)) (= (Star!2944 (reg!3273 r!15766)) lt!360821)) (= lambda!38811 lambda!38800))))

(assert (=> bs!252421 (= (= (Star!2944 (reg!3273 r!15766)) lt!360824) (= lambda!38811 lambda!38768))))

(assert (=> bs!252419 (not (= lambda!38811 lambda!38769))))

(assert (=> bs!252422 (not (= lambda!38811 lambda!38789))))

(assert (=> bs!252421 (not (= lambda!38811 lambda!38767))))

(declare-fun bs!252425 () Bool)

(assert (= bs!252425 d!301348))

(assert (=> bs!252425 (not (= lambda!38811 lambda!38810))))

(assert (=> bs!252423 (not (= lambda!38811 lambda!38801))))

(assert (=> bs!252424 (= (and (= (reg!3273 r!15766) lt!360819) (= (Star!2944 (reg!3273 r!15766)) (Star!2944 lt!360819))) (= lambda!38811 lambda!38795))))

(assert (=> bs!252424 (not (= lambda!38811 lambda!38794))))

(assert (=> d!301348 true))

(assert (=> d!301348 true))

(assert (=> d!301348 (= (Exists!667 lambda!38810) (Exists!667 lambda!38811))))

(declare-fun lt!360895 () Unit!15563)

(assert (=> d!301348 (= lt!360895 (choose!6824 (reg!3273 r!15766) s!10566))))

(assert (=> d!301348 (validRegex!1413 (reg!3273 r!15766))))

(assert (=> d!301348 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!185 (reg!3273 r!15766) s!10566) lt!360895)))

(declare-fun m!1224009 () Bool)

(assert (=> bs!252425 m!1224009))

(declare-fun m!1224011 () Bool)

(assert (=> bs!252425 m!1224011))

(declare-fun m!1224013 () Bool)

(assert (=> bs!252425 m!1224013))

(assert (=> bs!252425 m!1223819))

(assert (=> b!1067376 d!301348))

(declare-fun d!301350 () Bool)

(assert (=> d!301350 (= (Exists!667 lambda!38767) (choose!6825 lambda!38767))))

(declare-fun bs!252426 () Bool)

(assert (= bs!252426 d!301350))

(declare-fun m!1224015 () Bool)

(assert (=> bs!252426 m!1224015))

(assert (=> b!1067376 d!301350))

(declare-fun bs!252427 () Bool)

(declare-fun d!301352 () Bool)

(assert (= bs!252427 (and d!301352 b!1067644)))

(declare-fun lambda!38812 () Int)

(assert (=> bs!252427 (not (= lambda!38812 lambda!38809))))

(declare-fun bs!252428 () Bool)

(assert (= bs!252428 (and d!301352 b!1067648)))

(assert (=> bs!252428 (not (= lambda!38812 lambda!38807))))

(declare-fun bs!252429 () Bool)

(assert (= bs!252429 (and d!301352 b!1067378)))

(assert (=> bs!252429 (not (= lambda!38812 lambda!38770))))

(declare-fun bs!252430 () Bool)

(assert (= bs!252430 (and d!301352 b!1067540)))

(assert (=> bs!252430 (not (= lambda!38812 lambda!38800))))

(declare-fun bs!252431 () Bool)

(assert (= bs!252431 (and d!301352 b!1067376)))

(assert (=> bs!252431 (not (= lambda!38812 lambda!38768))))

(assert (=> bs!252429 (= (and (= (reg!3273 r!15766) lt!360819) (= lt!360824 lt!360821)) (= lambda!38812 lambda!38769))))

(declare-fun bs!252432 () Bool)

(assert (= bs!252432 (and d!301352 d!301348)))

(assert (=> bs!252432 (not (= lambda!38812 lambda!38811))))

(declare-fun bs!252433 () Bool)

(assert (= bs!252433 (and d!301352 d!301310)))

(assert (=> bs!252433 (= (and (= (reg!3273 r!15766) lt!360819) (= lt!360824 lt!360821)) (= lambda!38812 lambda!38789))))

(assert (=> bs!252431 (= lambda!38812 lambda!38767)))

(assert (=> bs!252432 (= (= lt!360824 (Star!2944 (reg!3273 r!15766))) (= lambda!38812 lambda!38810))))

(declare-fun bs!252434 () Bool)

(assert (= bs!252434 (and d!301352 b!1067536)))

(assert (=> bs!252434 (not (= lambda!38812 lambda!38801))))

(declare-fun bs!252435 () Bool)

(assert (= bs!252435 (and d!301352 d!301312)))

(assert (=> bs!252435 (not (= lambda!38812 lambda!38795))))

(assert (=> bs!252435 (= (and (= (reg!3273 r!15766) lt!360819) (= lt!360824 (Star!2944 lt!360819))) (= lambda!38812 lambda!38794))))

(assert (=> d!301352 true))

(assert (=> d!301352 true))

(assert (=> d!301352 true))

(assert (=> d!301352 (= (isDefined!2085 (findConcatSeparation!549 (reg!3273 r!15766) lt!360824 Nil!10158 s!10566 s!10566)) (Exists!667 lambda!38812))))

(declare-fun lt!360896 () Unit!15563)

(assert (=> d!301352 (= lt!360896 (choose!6823 (reg!3273 r!15766) lt!360824 s!10566))))

(assert (=> d!301352 (validRegex!1413 (reg!3273 r!15766))))

(assert (=> d!301352 (= (lemmaFindConcatSeparationEquivalentToExists!549 (reg!3273 r!15766) lt!360824 s!10566) lt!360896)))

(declare-fun bs!252436 () Bool)

(assert (= bs!252436 d!301352))

(declare-fun m!1224017 () Bool)

(assert (=> bs!252436 m!1224017))

(declare-fun m!1224019 () Bool)

(assert (=> bs!252436 m!1224019))

(assert (=> bs!252436 m!1223811))

(assert (=> bs!252436 m!1223815))

(assert (=> bs!252436 m!1223811))

(assert (=> bs!252436 m!1223819))

(assert (=> b!1067376 d!301352))

(declare-fun b!1067778 () Bool)

(declare-fun c!179114 () Bool)

(assert (=> b!1067778 (= c!179114 (is-Star!2944 (reg!3273 r!15766)))))

(declare-fun e!676960 () Regex!2944)

(declare-fun e!676959 () Regex!2944)

(assert (=> b!1067778 (= e!676960 e!676959)))

(declare-fun b!1067779 () Bool)

(declare-fun e!676955 () Regex!2944)

(declare-fun call!77150 () Regex!2944)

(assert (=> b!1067779 (= e!676955 call!77150)))

(declare-fun b!1067780 () Bool)

(declare-fun call!77152 () Regex!2944)

(assert (=> b!1067780 (= e!676959 (Star!2944 call!77152))))

(declare-fun b!1067781 () Bool)

(declare-fun e!676957 () Regex!2944)

(declare-fun call!77151 () Regex!2944)

(assert (=> b!1067781 (= e!676957 call!77151)))

(declare-fun call!77149 () Regex!2944)

(declare-fun bm!77144 () Bool)

(declare-fun c!179113 () Bool)

(declare-fun c!179115 () Bool)

(assert (=> bm!77144 (= call!77149 (removeUselessConcat!485 (ite c!179115 (regTwo!6400 (reg!3273 r!15766)) (ite c!179113 (regTwo!6401 (reg!3273 r!15766)) (reg!3273 (reg!3273 r!15766))))))))

(declare-fun b!1067782 () Bool)

(assert (=> b!1067782 (= e!676955 e!676957)))

(declare-fun c!179112 () Bool)

(assert (=> b!1067782 (= c!179112 (and (is-Concat!4777 (reg!3273 r!15766)) (is-EmptyExpr!2944 (regTwo!6400 (reg!3273 r!15766)))))))

(declare-fun bm!77145 () Bool)

(declare-fun call!77153 () Regex!2944)

(assert (=> bm!77145 (= call!77153 call!77151)))

(declare-fun d!301354 () Bool)

(declare-fun e!676956 () Bool)

(assert (=> d!301354 e!676956))

(declare-fun res!477089 () Bool)

(assert (=> d!301354 (=> (not res!477089) (not e!676956))))

(declare-fun lt!360900 () Regex!2944)

(assert (=> d!301354 (= res!477089 (validRegex!1413 lt!360900))))

(assert (=> d!301354 (= lt!360900 e!676955)))

(declare-fun c!179116 () Bool)

(assert (=> d!301354 (= c!179116 (and (is-Concat!4777 (reg!3273 r!15766)) (is-EmptyExpr!2944 (regOne!6400 (reg!3273 r!15766)))))))

(assert (=> d!301354 (validRegex!1413 (reg!3273 r!15766))))

(assert (=> d!301354 (= (removeUselessConcat!485 (reg!3273 r!15766)) lt!360900)))

(declare-fun b!1067783 () Bool)

(assert (=> b!1067783 (= e!676959 (reg!3273 r!15766))))

(declare-fun bm!77146 () Bool)

(assert (=> bm!77146 (= call!77150 (removeUselessConcat!485 (ite c!179116 (regTwo!6400 (reg!3273 r!15766)) (ite (or c!179112 c!179115) (regOne!6400 (reg!3273 r!15766)) (regOne!6401 (reg!3273 r!15766))))))))

(declare-fun b!1067784 () Bool)

(assert (=> b!1067784 (= e!676960 (Union!2944 call!77153 call!77152))))

(declare-fun b!1067785 () Bool)

(declare-fun e!676958 () Regex!2944)

(assert (=> b!1067785 (= e!676958 e!676960)))

(assert (=> b!1067785 (= c!179113 (is-Union!2944 (reg!3273 r!15766)))))

(declare-fun b!1067786 () Bool)

(assert (=> b!1067786 (= c!179115 (is-Concat!4777 (reg!3273 r!15766)))))

(assert (=> b!1067786 (= e!676957 e!676958)))

(declare-fun b!1067787 () Bool)

(assert (=> b!1067787 (= e!676958 (Concat!4777 call!77153 call!77149))))

(declare-fun bm!77147 () Bool)

(assert (=> bm!77147 (= call!77152 call!77149)))

(declare-fun b!1067788 () Bool)

(assert (=> b!1067788 (= e!676956 (= (nullable!1031 lt!360900) (nullable!1031 (reg!3273 r!15766))))))

(declare-fun bm!77148 () Bool)

(assert (=> bm!77148 (= call!77151 call!77150)))

(assert (= (and d!301354 c!179116) b!1067779))

(assert (= (and d!301354 (not c!179116)) b!1067782))

(assert (= (and b!1067782 c!179112) b!1067781))

(assert (= (and b!1067782 (not c!179112)) b!1067786))

(assert (= (and b!1067786 c!179115) b!1067787))

(assert (= (and b!1067786 (not c!179115)) b!1067785))

(assert (= (and b!1067785 c!179113) b!1067784))

(assert (= (and b!1067785 (not c!179113)) b!1067778))

(assert (= (and b!1067778 c!179114) b!1067780))

(assert (= (and b!1067778 (not c!179114)) b!1067783))

(assert (= (or b!1067784 b!1067780) bm!77147))

(assert (= (or b!1067787 bm!77147) bm!77144))

(assert (= (or b!1067787 b!1067784) bm!77145))

(assert (= (or b!1067781 bm!77145) bm!77148))

(assert (= (or b!1067779 bm!77148) bm!77146))

(assert (= (and d!301354 res!477089) b!1067788))

(declare-fun m!1224033 () Bool)

(assert (=> bm!77144 m!1224033))

(declare-fun m!1224035 () Bool)

(assert (=> d!301354 m!1224035))

(assert (=> d!301354 m!1223819))

(declare-fun m!1224037 () Bool)

(assert (=> bm!77146 m!1224037))

(declare-fun m!1224039 () Bool)

(assert (=> b!1067788 m!1224039))

(assert (=> b!1067788 m!1223957))

(assert (=> b!1067376 d!301354))

(declare-fun b!1067789 () Bool)

(declare-fun e!676961 () Bool)

(assert (=> b!1067789 (= e!676961 (matchR!1480 lt!360824 s!10566))))

(declare-fun b!1067790 () Bool)

(declare-fun e!676965 () Option!2443)

(assert (=> b!1067790 (= e!676965 (Some!2442 (tuple2!11603 Nil!10158 s!10566)))))

(declare-fun b!1067791 () Bool)

(declare-fun res!477091 () Bool)

(declare-fun e!676963 () Bool)

(assert (=> b!1067791 (=> (not res!477091) (not e!676963))))

(declare-fun lt!360901 () Option!2443)

(assert (=> b!1067791 (= res!477091 (matchR!1480 lt!360824 (_2!6627 (get!3665 lt!360901))))))

(declare-fun b!1067792 () Bool)

(declare-fun e!676964 () Option!2443)

(assert (=> b!1067792 (= e!676965 e!676964)))

(declare-fun c!179117 () Bool)

(assert (=> b!1067792 (= c!179117 (is-Nil!10158 s!10566))))

(declare-fun b!1067793 () Bool)

(declare-fun res!477092 () Bool)

(assert (=> b!1067793 (=> (not res!477092) (not e!676963))))

(assert (=> b!1067793 (= res!477092 (matchR!1480 (reg!3273 r!15766) (_1!6627 (get!3665 lt!360901))))))

(declare-fun b!1067794 () Bool)

(assert (=> b!1067794 (= e!676963 (= (++!2814 (_1!6627 (get!3665 lt!360901)) (_2!6627 (get!3665 lt!360901))) s!10566))))

(declare-fun b!1067795 () Bool)

(declare-fun e!676962 () Bool)

(assert (=> b!1067795 (= e!676962 (not (isDefined!2085 lt!360901)))))

(declare-fun b!1067796 () Bool)

(assert (=> b!1067796 (= e!676964 None!2442)))

(declare-fun b!1067797 () Bool)

(declare-fun lt!360903 () Unit!15563)

(declare-fun lt!360902 () Unit!15563)

(assert (=> b!1067797 (= lt!360903 lt!360902)))

(assert (=> b!1067797 (= (++!2814 (++!2814 Nil!10158 (Cons!10158 (h!15559 s!10566) Nil!10158)) (t!101220 s!10566)) s!10566)))

(assert (=> b!1067797 (= lt!360902 (lemmaMoveElementToOtherListKeepsConcatEq!407 Nil!10158 (h!15559 s!10566) (t!101220 s!10566) s!10566))))

(assert (=> b!1067797 (= e!676964 (findConcatSeparation!549 (reg!3273 r!15766) lt!360824 (++!2814 Nil!10158 (Cons!10158 (h!15559 s!10566) Nil!10158)) (t!101220 s!10566) s!10566))))

(declare-fun d!301358 () Bool)

(assert (=> d!301358 e!676962))

(declare-fun res!477090 () Bool)

(assert (=> d!301358 (=> res!477090 e!676962)))

(assert (=> d!301358 (= res!477090 e!676963)))

(declare-fun res!477093 () Bool)

(assert (=> d!301358 (=> (not res!477093) (not e!676963))))

(assert (=> d!301358 (= res!477093 (isDefined!2085 lt!360901))))

(assert (=> d!301358 (= lt!360901 e!676965)))

(declare-fun c!179118 () Bool)

(assert (=> d!301358 (= c!179118 e!676961)))

(declare-fun res!477094 () Bool)

(assert (=> d!301358 (=> (not res!477094) (not e!676961))))

(assert (=> d!301358 (= res!477094 (matchR!1480 (reg!3273 r!15766) Nil!10158))))

(assert (=> d!301358 (validRegex!1413 (reg!3273 r!15766))))

(assert (=> d!301358 (= (findConcatSeparation!549 (reg!3273 r!15766) lt!360824 Nil!10158 s!10566 s!10566) lt!360901)))

(assert (= (and d!301358 res!477094) b!1067789))

(assert (= (and d!301358 c!179118) b!1067790))

(assert (= (and d!301358 (not c!179118)) b!1067792))

(assert (= (and b!1067792 c!179117) b!1067796))

(assert (= (and b!1067792 (not c!179117)) b!1067797))

(assert (= (and d!301358 res!477093) b!1067793))

(assert (= (and b!1067793 res!477092) b!1067791))

(assert (= (and b!1067791 res!477091) b!1067794))

(assert (= (and d!301358 (not res!477090)) b!1067795))

(declare-fun m!1224041 () Bool)

(assert (=> b!1067791 m!1224041))

(declare-fun m!1224043 () Bool)

(assert (=> b!1067791 m!1224043))

(assert (=> b!1067797 m!1223941))

(assert (=> b!1067797 m!1223941))

(assert (=> b!1067797 m!1223943))

(assert (=> b!1067797 m!1223945))

(assert (=> b!1067797 m!1223941))

(declare-fun m!1224045 () Bool)

(assert (=> b!1067797 m!1224045))

(declare-fun m!1224047 () Bool)

(assert (=> d!301358 m!1224047))

(declare-fun m!1224049 () Bool)

(assert (=> d!301358 m!1224049))

(assert (=> d!301358 m!1223819))

(assert (=> b!1067795 m!1224047))

(assert (=> b!1067794 m!1224041))

(declare-fun m!1224051 () Bool)

(assert (=> b!1067794 m!1224051))

(declare-fun m!1224053 () Bool)

(assert (=> b!1067789 m!1224053))

(assert (=> b!1067793 m!1224041))

(declare-fun m!1224055 () Bool)

(assert (=> b!1067793 m!1224055))

(assert (=> b!1067376 d!301358))

(declare-fun b!1067798 () Bool)

(declare-fun e!676971 () Bool)

(declare-fun e!676966 () Bool)

(assert (=> b!1067798 (= e!676971 e!676966)))

(declare-fun res!477096 () Bool)

(assert (=> b!1067798 (=> (not res!477096) (not e!676966))))

(declare-fun lt!360904 () Bool)

(assert (=> b!1067798 (= res!477096 (not lt!360904))))

(declare-fun b!1067799 () Bool)

(declare-fun e!676967 () Bool)

(assert (=> b!1067799 (= e!676967 (not lt!360904))))

(declare-fun b!1067800 () Bool)

(declare-fun e!676972 () Bool)

(assert (=> b!1067800 (= e!676972 e!676967)))

(declare-fun c!179120 () Bool)

(assert (=> b!1067800 (= c!179120 (is-EmptyLang!2944 lt!360821))))

(declare-fun b!1067801 () Bool)

(declare-fun call!77154 () Bool)

(assert (=> b!1067801 (= e!676972 (= lt!360904 call!77154))))

(declare-fun b!1067802 () Bool)

(declare-fun e!676969 () Bool)

(assert (=> b!1067802 (= e!676966 e!676969)))

(declare-fun res!477100 () Bool)

(assert (=> b!1067802 (=> res!477100 e!676969)))

(assert (=> b!1067802 (= res!477100 call!77154)))

(declare-fun b!1067803 () Bool)

(declare-fun res!477101 () Bool)

(declare-fun e!676968 () Bool)

(assert (=> b!1067803 (=> (not res!477101) (not e!676968))))

(assert (=> b!1067803 (= res!477101 (isEmpty!6583 (tail!1546 s!10566)))))

(declare-fun b!1067804 () Bool)

(declare-fun res!477097 () Bool)

(assert (=> b!1067804 (=> res!477097 e!676969)))

(assert (=> b!1067804 (= res!477097 (not (isEmpty!6583 (tail!1546 s!10566))))))

(declare-fun b!1067805 () Bool)

(assert (=> b!1067805 (= e!676969 (not (= (head!1984 s!10566) (c!179031 lt!360821))))))

(declare-fun b!1067806 () Bool)

(assert (=> b!1067806 (= e!676968 (= (head!1984 s!10566) (c!179031 lt!360821)))))

(declare-fun b!1067807 () Bool)

(declare-fun e!676970 () Bool)

(assert (=> b!1067807 (= e!676970 (matchR!1480 (derivativeStep!829 lt!360821 (head!1984 s!10566)) (tail!1546 s!10566)))))

(declare-fun b!1067808 () Bool)

(declare-fun res!477102 () Bool)

(assert (=> b!1067808 (=> res!477102 e!676971)))

(assert (=> b!1067808 (= res!477102 e!676968)))

(declare-fun res!477098 () Bool)

(assert (=> b!1067808 (=> (not res!477098) (not e!676968))))

(assert (=> b!1067808 (= res!477098 lt!360904)))

(declare-fun b!1067809 () Bool)

(declare-fun res!477099 () Bool)

(assert (=> b!1067809 (=> (not res!477099) (not e!676968))))

(assert (=> b!1067809 (= res!477099 (not call!77154))))

(declare-fun d!301360 () Bool)

(assert (=> d!301360 e!676972))

(declare-fun c!179121 () Bool)

(assert (=> d!301360 (= c!179121 (is-EmptyExpr!2944 lt!360821))))

(assert (=> d!301360 (= lt!360904 e!676970)))

(declare-fun c!179119 () Bool)

(assert (=> d!301360 (= c!179119 (isEmpty!6583 s!10566))))

(assert (=> d!301360 (validRegex!1413 lt!360821)))

(assert (=> d!301360 (= (matchR!1480 lt!360821 s!10566) lt!360904)))

(declare-fun b!1067810 () Bool)

(assert (=> b!1067810 (= e!676970 (nullable!1031 lt!360821))))

(declare-fun b!1067811 () Bool)

(declare-fun res!477095 () Bool)

(assert (=> b!1067811 (=> res!477095 e!676971)))

(assert (=> b!1067811 (= res!477095 (not (is-ElementMatch!2944 lt!360821)))))

(assert (=> b!1067811 (= e!676967 e!676971)))

(declare-fun bm!77149 () Bool)

(assert (=> bm!77149 (= call!77154 (isEmpty!6583 s!10566))))

(assert (= (and d!301360 c!179119) b!1067810))

(assert (= (and d!301360 (not c!179119)) b!1067807))

(assert (= (and d!301360 c!179121) b!1067801))

(assert (= (and d!301360 (not c!179121)) b!1067800))

(assert (= (and b!1067800 c!179120) b!1067799))

(assert (= (and b!1067800 (not c!179120)) b!1067811))

(assert (= (and b!1067811 (not res!477095)) b!1067808))

(assert (= (and b!1067808 res!477098) b!1067809))

(assert (= (and b!1067809 res!477099) b!1067803))

(assert (= (and b!1067803 res!477101) b!1067806))

(assert (= (and b!1067808 (not res!477102)) b!1067798))

(assert (= (and b!1067798 res!477096) b!1067802))

(assert (= (and b!1067802 (not res!477100)) b!1067804))

(assert (= (and b!1067804 (not res!477097)) b!1067805))

(assert (= (or b!1067801 b!1067809 b!1067802) bm!77149))

(assert (=> b!1067803 m!1223975))

(assert (=> b!1067803 m!1223975))

(assert (=> b!1067803 m!1223977))

(assert (=> b!1067805 m!1223979))

(assert (=> b!1067804 m!1223975))

(assert (=> b!1067804 m!1223975))

(assert (=> b!1067804 m!1223977))

(assert (=> b!1067807 m!1223979))

(assert (=> b!1067807 m!1223979))

(declare-fun m!1224057 () Bool)

(assert (=> b!1067807 m!1224057))

(assert (=> b!1067807 m!1223975))

(assert (=> b!1067807 m!1224057))

(assert (=> b!1067807 m!1223975))

(declare-fun m!1224059 () Bool)

(assert (=> b!1067807 m!1224059))

(assert (=> b!1067806 m!1223979))

(assert (=> bm!77149 m!1223841))

(assert (=> d!301360 m!1223841))

(assert (=> d!301360 m!1223931))

(declare-fun m!1224061 () Bool)

(assert (=> b!1067810 m!1224061))

(assert (=> b!1067376 d!301360))

(declare-fun d!301362 () Bool)

(assert (=> d!301362 (= (Exists!667 lambda!38768) (choose!6825 lambda!38768))))

(declare-fun bs!252437 () Bool)

(assert (= bs!252437 d!301362))

(declare-fun m!1224063 () Bool)

(assert (=> bs!252437 m!1224063))

(assert (=> b!1067376 d!301362))

(declare-fun d!301364 () Bool)

(assert (=> d!301364 (= (isDefined!2085 (findConcatSeparation!549 (reg!3273 r!15766) lt!360824 Nil!10158 s!10566 s!10566)) (not (isEmpty!6585 (findConcatSeparation!549 (reg!3273 r!15766) lt!360824 Nil!10158 s!10566 s!10566))))))

(declare-fun bs!252438 () Bool)

(assert (= bs!252438 d!301364))

(assert (=> bs!252438 m!1223811))

(declare-fun m!1224065 () Bool)

(assert (=> bs!252438 m!1224065))

(assert (=> b!1067376 d!301364))

(declare-fun b!1067812 () Bool)

(declare-fun e!676978 () Bool)

(declare-fun e!676973 () Bool)

(assert (=> b!1067812 (= e!676978 e!676973)))

(declare-fun res!477104 () Bool)

(assert (=> b!1067812 (=> (not res!477104) (not e!676973))))

(declare-fun lt!360905 () Bool)

(assert (=> b!1067812 (= res!477104 (not lt!360905))))

(declare-fun b!1067813 () Bool)

(declare-fun e!676974 () Bool)

(assert (=> b!1067813 (= e!676974 (not lt!360905))))

(declare-fun b!1067814 () Bool)

(declare-fun e!676979 () Bool)

(assert (=> b!1067814 (= e!676979 e!676974)))

(declare-fun c!179123 () Bool)

(assert (=> b!1067814 (= c!179123 (is-EmptyLang!2944 lt!360821))))

(declare-fun b!1067815 () Bool)

(declare-fun call!77155 () Bool)

(assert (=> b!1067815 (= e!676979 (= lt!360905 call!77155))))

(declare-fun b!1067816 () Bool)

(declare-fun e!676976 () Bool)

(assert (=> b!1067816 (= e!676973 e!676976)))

(declare-fun res!477108 () Bool)

(assert (=> b!1067816 (=> res!477108 e!676976)))

(assert (=> b!1067816 (= res!477108 call!77155)))

(declare-fun b!1067817 () Bool)

(declare-fun res!477109 () Bool)

(declare-fun e!676975 () Bool)

(assert (=> b!1067817 (=> (not res!477109) (not e!676975))))

(assert (=> b!1067817 (= res!477109 (isEmpty!6583 (tail!1546 (_2!6627 lt!360826))))))

(declare-fun b!1067818 () Bool)

(declare-fun res!477105 () Bool)

(assert (=> b!1067818 (=> res!477105 e!676976)))

(assert (=> b!1067818 (= res!477105 (not (isEmpty!6583 (tail!1546 (_2!6627 lt!360826)))))))

(declare-fun b!1067819 () Bool)

(assert (=> b!1067819 (= e!676976 (not (= (head!1984 (_2!6627 lt!360826)) (c!179031 lt!360821))))))

(declare-fun b!1067820 () Bool)

(assert (=> b!1067820 (= e!676975 (= (head!1984 (_2!6627 lt!360826)) (c!179031 lt!360821)))))

(declare-fun b!1067821 () Bool)

(declare-fun e!676977 () Bool)

(assert (=> b!1067821 (= e!676977 (matchR!1480 (derivativeStep!829 lt!360821 (head!1984 (_2!6627 lt!360826))) (tail!1546 (_2!6627 lt!360826))))))

(declare-fun b!1067822 () Bool)

(declare-fun res!477110 () Bool)

(assert (=> b!1067822 (=> res!477110 e!676978)))

(assert (=> b!1067822 (= res!477110 e!676975)))

(declare-fun res!477106 () Bool)

(assert (=> b!1067822 (=> (not res!477106) (not e!676975))))

(assert (=> b!1067822 (= res!477106 lt!360905)))

(declare-fun b!1067823 () Bool)

(declare-fun res!477107 () Bool)

(assert (=> b!1067823 (=> (not res!477107) (not e!676975))))

(assert (=> b!1067823 (= res!477107 (not call!77155))))

(declare-fun d!301366 () Bool)

(assert (=> d!301366 e!676979))

(declare-fun c!179124 () Bool)

(assert (=> d!301366 (= c!179124 (is-EmptyExpr!2944 lt!360821))))

(assert (=> d!301366 (= lt!360905 e!676977)))

(declare-fun c!179122 () Bool)

(assert (=> d!301366 (= c!179122 (isEmpty!6583 (_2!6627 lt!360826)))))

(assert (=> d!301366 (validRegex!1413 lt!360821)))

(assert (=> d!301366 (= (matchR!1480 lt!360821 (_2!6627 lt!360826)) lt!360905)))

(declare-fun b!1067824 () Bool)

(assert (=> b!1067824 (= e!676977 (nullable!1031 lt!360821))))

(declare-fun b!1067825 () Bool)

(declare-fun res!477103 () Bool)

(assert (=> b!1067825 (=> res!477103 e!676978)))

(assert (=> b!1067825 (= res!477103 (not (is-ElementMatch!2944 lt!360821)))))

(assert (=> b!1067825 (= e!676974 e!676978)))

(declare-fun bm!77150 () Bool)

(assert (=> bm!77150 (= call!77155 (isEmpty!6583 (_2!6627 lt!360826)))))

(assert (= (and d!301366 c!179122) b!1067824))

(assert (= (and d!301366 (not c!179122)) b!1067821))

(assert (= (and d!301366 c!179124) b!1067815))

(assert (= (and d!301366 (not c!179124)) b!1067814))

(assert (= (and b!1067814 c!179123) b!1067813))

(assert (= (and b!1067814 (not c!179123)) b!1067825))

(assert (= (and b!1067825 (not res!477103)) b!1067822))

(assert (= (and b!1067822 res!477106) b!1067823))

(assert (= (and b!1067823 res!477107) b!1067817))

(assert (= (and b!1067817 res!477109) b!1067820))

(assert (= (and b!1067822 (not res!477110)) b!1067812))

(assert (= (and b!1067812 res!477104) b!1067816))

(assert (= (and b!1067816 (not res!477108)) b!1067818))

(assert (= (and b!1067818 (not res!477105)) b!1067819))

(assert (= (or b!1067815 b!1067823 b!1067816) bm!77150))

(declare-fun m!1224067 () Bool)

(assert (=> b!1067817 m!1224067))

(assert (=> b!1067817 m!1224067))

(declare-fun m!1224069 () Bool)

(assert (=> b!1067817 m!1224069))

(declare-fun m!1224071 () Bool)

(assert (=> b!1067819 m!1224071))

(assert (=> b!1067818 m!1224067))

(assert (=> b!1067818 m!1224067))

(assert (=> b!1067818 m!1224069))

(assert (=> b!1067821 m!1224071))

(assert (=> b!1067821 m!1224071))

(declare-fun m!1224073 () Bool)

(assert (=> b!1067821 m!1224073))

(assert (=> b!1067821 m!1224067))

(assert (=> b!1067821 m!1224073))

(assert (=> b!1067821 m!1224067))

(declare-fun m!1224075 () Bool)

(assert (=> b!1067821 m!1224075))

(assert (=> b!1067820 m!1224071))

(declare-fun m!1224077 () Bool)

(assert (=> bm!77150 m!1224077))

(assert (=> d!301366 m!1224077))

(assert (=> d!301366 m!1223931))

(assert (=> b!1067824 m!1224061))

(assert (=> b!1067381 d!301366))

(declare-fun b!1067837 () Bool)

(declare-fun e!676982 () Bool)

(declare-fun tp!320105 () Bool)

(declare-fun tp!320106 () Bool)

(assert (=> b!1067837 (= e!676982 (and tp!320105 tp!320106))))

(declare-fun b!1067838 () Bool)

(declare-fun tp!320104 () Bool)

(assert (=> b!1067838 (= e!676982 tp!320104)))

(declare-fun b!1067836 () Bool)

(assert (=> b!1067836 (= e!676982 tp_is_empty!5531)))

(assert (=> b!1067382 (= tp!320072 e!676982)))

(declare-fun b!1067839 () Bool)

(declare-fun tp!320103 () Bool)

(declare-fun tp!320107 () Bool)

(assert (=> b!1067839 (= e!676982 (and tp!320103 tp!320107))))

(assert (= (and b!1067382 (is-ElementMatch!2944 (reg!3273 r!15766))) b!1067836))

(assert (= (and b!1067382 (is-Concat!4777 (reg!3273 r!15766))) b!1067837))

(assert (= (and b!1067382 (is-Star!2944 (reg!3273 r!15766))) b!1067838))

(assert (= (and b!1067382 (is-Union!2944 (reg!3273 r!15766))) b!1067839))

(declare-fun b!1067841 () Bool)

(declare-fun e!676983 () Bool)

(declare-fun tp!320110 () Bool)

(declare-fun tp!320111 () Bool)

(assert (=> b!1067841 (= e!676983 (and tp!320110 tp!320111))))

(declare-fun b!1067842 () Bool)

(declare-fun tp!320109 () Bool)

(assert (=> b!1067842 (= e!676983 tp!320109)))

(declare-fun b!1067840 () Bool)

(assert (=> b!1067840 (= e!676983 tp_is_empty!5531)))

(assert (=> b!1067377 (= tp!320073 e!676983)))

(declare-fun b!1067843 () Bool)

(declare-fun tp!320108 () Bool)

(declare-fun tp!320112 () Bool)

(assert (=> b!1067843 (= e!676983 (and tp!320108 tp!320112))))

(assert (= (and b!1067377 (is-ElementMatch!2944 (regOne!6401 r!15766))) b!1067840))

(assert (= (and b!1067377 (is-Concat!4777 (regOne!6401 r!15766))) b!1067841))

(assert (= (and b!1067377 (is-Star!2944 (regOne!6401 r!15766))) b!1067842))

(assert (= (and b!1067377 (is-Union!2944 (regOne!6401 r!15766))) b!1067843))

(declare-fun b!1067845 () Bool)

(declare-fun e!676984 () Bool)

(declare-fun tp!320115 () Bool)

(declare-fun tp!320116 () Bool)

(assert (=> b!1067845 (= e!676984 (and tp!320115 tp!320116))))

(declare-fun b!1067846 () Bool)

(declare-fun tp!320114 () Bool)

(assert (=> b!1067846 (= e!676984 tp!320114)))

(declare-fun b!1067844 () Bool)

(assert (=> b!1067844 (= e!676984 tp_is_empty!5531)))

(assert (=> b!1067377 (= tp!320070 e!676984)))

(declare-fun b!1067847 () Bool)

(declare-fun tp!320113 () Bool)

(declare-fun tp!320117 () Bool)

(assert (=> b!1067847 (= e!676984 (and tp!320113 tp!320117))))

(assert (= (and b!1067377 (is-ElementMatch!2944 (regTwo!6401 r!15766))) b!1067844))

(assert (= (and b!1067377 (is-Concat!4777 (regTwo!6401 r!15766))) b!1067845))

(assert (= (and b!1067377 (is-Star!2944 (regTwo!6401 r!15766))) b!1067846))

(assert (= (and b!1067377 (is-Union!2944 (regTwo!6401 r!15766))) b!1067847))

(declare-fun b!1067852 () Bool)

(declare-fun e!676987 () Bool)

(declare-fun tp!320120 () Bool)

(assert (=> b!1067852 (= e!676987 (and tp_is_empty!5531 tp!320120))))

(assert (=> b!1067383 (= tp!320071 e!676987)))

(assert (= (and b!1067383 (is-Cons!10158 (t!101220 s!10566))) b!1067852))

(declare-fun b!1067854 () Bool)

(declare-fun e!676988 () Bool)

(declare-fun tp!320123 () Bool)

(declare-fun tp!320124 () Bool)

(assert (=> b!1067854 (= e!676988 (and tp!320123 tp!320124))))

(declare-fun b!1067855 () Bool)

(declare-fun tp!320122 () Bool)

(assert (=> b!1067855 (= e!676988 tp!320122)))

(declare-fun b!1067853 () Bool)

(assert (=> b!1067853 (= e!676988 tp_is_empty!5531)))

(assert (=> b!1067384 (= tp!320074 e!676988)))

(declare-fun b!1067856 () Bool)

(declare-fun tp!320121 () Bool)

(declare-fun tp!320125 () Bool)

(assert (=> b!1067856 (= e!676988 (and tp!320121 tp!320125))))

(assert (= (and b!1067384 (is-ElementMatch!2944 (regOne!6400 r!15766))) b!1067853))

(assert (= (and b!1067384 (is-Concat!4777 (regOne!6400 r!15766))) b!1067854))

(assert (= (and b!1067384 (is-Star!2944 (regOne!6400 r!15766))) b!1067855))

(assert (= (and b!1067384 (is-Union!2944 (regOne!6400 r!15766))) b!1067856))

(declare-fun b!1067858 () Bool)

(declare-fun e!676989 () Bool)

(declare-fun tp!320128 () Bool)

(declare-fun tp!320129 () Bool)

(assert (=> b!1067858 (= e!676989 (and tp!320128 tp!320129))))

(declare-fun b!1067859 () Bool)

(declare-fun tp!320127 () Bool)

(assert (=> b!1067859 (= e!676989 tp!320127)))

(declare-fun b!1067857 () Bool)

(assert (=> b!1067857 (= e!676989 tp_is_empty!5531)))

(assert (=> b!1067384 (= tp!320069 e!676989)))

(declare-fun b!1067860 () Bool)

(declare-fun tp!320126 () Bool)

(declare-fun tp!320130 () Bool)

(assert (=> b!1067860 (= e!676989 (and tp!320126 tp!320130))))

(assert (= (and b!1067384 (is-ElementMatch!2944 (regTwo!6400 r!15766))) b!1067857))

(assert (= (and b!1067384 (is-Concat!4777 (regTwo!6400 r!15766))) b!1067858))

(assert (= (and b!1067384 (is-Star!2944 (regTwo!6400 r!15766))) b!1067859))

(assert (= (and b!1067384 (is-Union!2944 (regTwo!6400 r!15766))) b!1067860))

(push 1)

(assert (not b!1067845))

(assert (not d!301360))

(assert (not d!301354))

(assert (not b!1067805))

(assert (not b!1067629))

(assert (not bm!77123))

(assert (not d!301326))

(assert (not b!1067691))

(assert (not b!1067803))

(assert (not bm!77127))

(assert (not b!1067855))

(assert (not d!301350))

(assert (not b!1067591))

(assert (not b!1067807))

(assert (not b!1067847))

(assert (not b!1067707))

(assert (not bm!77149))

(assert (not bm!77150))

(assert (not b!1067705))

(assert (not b!1067709))

(assert tp_is_empty!5531)

(assert (not b!1067597))

(assert (not b!1067818))

(assert (not bm!77122))

(assert (not b!1067708))

(assert (not bm!77121))

(assert (not b!1067852))

(assert (not d!301310))

(assert (not b!1067534))

(assert (not b!1067839))

(assert (not b!1067858))

(assert (not b!1067689))

(assert (not b!1067819))

(assert (not d!301316))

(assert (not b!1067843))

(assert (not b!1067854))

(assert (not b!1067595))

(assert (not bm!77126))

(assert (not b!1067860))

(assert (not b!1067599))

(assert (not d!301330))

(assert (not b!1067856))

(assert (not bm!77119))

(assert (not b!1067596))

(assert (not b!1067824))

(assert (not bm!77146))

(assert (not bm!77144))

(assert (not b!1067641))

(assert (not b!1067820))

(assert (not b!1067842))

(assert (not d!301366))

(assert (not b!1067821))

(assert (not bm!77129))

(assert (not b!1067797))

(assert (not b!1067533))

(assert (not d!301348))

(assert (not b!1067837))

(assert (not d!301312))

(assert (not b!1067810))

(assert (not d!301344))

(assert (not b!1067791))

(assert (not b!1067712))

(assert (not b!1067794))

(assert (not b!1067838))

(assert (not d!301322))

(assert (not b!1067593))

(assert (not b!1067859))

(assert (not b!1067684))

(assert (not bm!77106))

(assert (not b!1067682))

(assert (not b!1067806))

(assert (not b!1067841))

(assert (not b!1067683))

(assert (not b!1067793))

(assert (not b!1067685))

(assert (not d!301362))

(assert (not b!1067789))

(assert (not b!1067846))

(assert (not b!1067686))

(assert (not d!301340))

(assert (not d!301364))

(assert (not d!301338))

(assert (not d!301324))

(assert (not b!1067642))

(assert (not bm!77130))

(assert (not b!1067817))

(assert (not bm!77105))

(assert (not d!301358))

(assert (not b!1067795))

(assert (not b!1067788))

(assert (not b!1067804))

(assert (not b!1067706))

(assert (not d!301352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

