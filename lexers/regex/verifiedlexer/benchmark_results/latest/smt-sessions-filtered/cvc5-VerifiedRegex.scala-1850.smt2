; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92068 () Bool)

(assert start!92068)

(declare-fun b!1082834 () Bool)

(assert (=> b!1082834 true))

(assert (=> b!1082834 true))

(assert (=> b!1082834 true))

(declare-fun lambda!39346 () Int)

(declare-fun lambda!39345 () Int)

(assert (=> b!1082834 (not (= lambda!39346 lambda!39345))))

(assert (=> b!1082834 true))

(assert (=> b!1082834 true))

(assert (=> b!1082834 true))

(declare-fun b!1082833 () Bool)

(declare-fun e!684755 () Bool)

(declare-fun tp_is_empty!5559 () Bool)

(declare-fun tp!323711 () Bool)

(assert (=> b!1082833 (= e!684755 (and tp_is_empty!5559 tp!323711))))

(declare-fun e!684757 () Bool)

(declare-fun e!684756 () Bool)

(assert (=> b!1082834 (= e!684757 e!684756)))

(declare-fun res!481863 () Bool)

(assert (=> b!1082834 (=> res!481863 e!684756)))

(declare-datatypes ((C!6486 0))(
  ( (C!6487 (val!3491 Int)) )
))
(declare-datatypes ((Regex!2958 0))(
  ( (ElementMatch!2958 (c!182793 C!6486)) (Concat!4791 (regOne!6428 Regex!2958) (regTwo!6428 Regex!2958)) (EmptyExpr!2958) (Star!2958 (reg!3287 Regex!2958)) (EmptyLang!2958) (Union!2958 (regOne!6429 Regex!2958) (regTwo!6429 Regex!2958)) )
))
(declare-fun r!15766 () Regex!2958)

(declare-datatypes ((List!10188 0))(
  ( (Nil!10172) (Cons!10172 (h!15573 C!6486) (t!101234 List!10188)) )
))
(declare-fun s!10566 () List!10188)

(declare-fun matchR!1494 (Regex!2958 List!10188) Bool)

(declare-fun removeUselessConcat!499 (Regex!2958) Regex!2958)

(assert (=> b!1082834 (= res!481863 (matchR!1494 (Star!2958 (removeUselessConcat!499 (reg!3287 r!15766))) s!10566))))

(declare-fun Exists!681 (Int) Bool)

(assert (=> b!1082834 (= (Exists!681 lambda!39345) (Exists!681 lambda!39346))))

(declare-datatypes ((Unit!15607 0))(
  ( (Unit!15608) )
))
(declare-fun lt!362532 () Unit!15607)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!199 (Regex!2958 List!10188) Unit!15607)

(assert (=> b!1082834 (= lt!362532 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!199 (reg!3287 r!15766) s!10566))))

(declare-fun lt!362534 () Regex!2958)

(declare-datatypes ((tuple2!11630 0))(
  ( (tuple2!11631 (_1!6641 List!10188) (_2!6641 List!10188)) )
))
(declare-datatypes ((Option!2457 0))(
  ( (None!2456) (Some!2456 (v!19873 tuple2!11630)) )
))
(declare-fun isDefined!2099 (Option!2457) Bool)

(declare-fun findConcatSeparation!563 (Regex!2958 Regex!2958 List!10188 List!10188 List!10188) Option!2457)

(assert (=> b!1082834 (= (isDefined!2099 (findConcatSeparation!563 (reg!3287 r!15766) lt!362534 Nil!10172 s!10566 s!10566)) (Exists!681 lambda!39345))))

(declare-fun lt!362533 () Unit!15607)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!563 (Regex!2958 Regex!2958 List!10188) Unit!15607)

(assert (=> b!1082834 (= lt!362533 (lemmaFindConcatSeparationEquivalentToExists!563 (reg!3287 r!15766) lt!362534 s!10566))))

(assert (=> b!1082834 (= lt!362534 (Star!2958 (reg!3287 r!15766)))))

(declare-fun b!1082835 () Bool)

(declare-fun e!684759 () Bool)

(declare-fun tp!323713 () Bool)

(assert (=> b!1082835 (= e!684759 tp!323713)))

(declare-fun b!1082836 () Bool)

(assert (=> b!1082836 (= e!684756 (not (matchR!1494 (removeUselessConcat!499 r!15766) s!10566)))))

(declare-fun b!1082837 () Bool)

(declare-fun tp!323709 () Bool)

(declare-fun tp!323712 () Bool)

(assert (=> b!1082837 (= e!684759 (and tp!323709 tp!323712))))

(declare-fun res!481864 () Bool)

(declare-fun e!684758 () Bool)

(assert (=> start!92068 (=> (not res!481864) (not e!684758))))

(declare-fun validRegex!1427 (Regex!2958) Bool)

(assert (=> start!92068 (= res!481864 (validRegex!1427 r!15766))))

(assert (=> start!92068 e!684758))

(assert (=> start!92068 e!684759))

(assert (=> start!92068 e!684755))

(declare-fun b!1082838 () Bool)

(assert (=> b!1082838 (= e!684758 (not e!684757))))

(declare-fun res!481862 () Bool)

(assert (=> b!1082838 (=> res!481862 e!684757)))

(declare-fun lt!362536 () Bool)

(assert (=> b!1082838 (= res!481862 (or lt!362536 (and (is-Concat!4791 r!15766) (is-EmptyExpr!2958 (regOne!6428 r!15766))) (and (is-Concat!4791 r!15766) (is-EmptyExpr!2958 (regTwo!6428 r!15766))) (is-Concat!4791 r!15766) (is-Union!2958 r!15766) (not (is-Star!2958 r!15766))))))

(declare-fun matchRSpec!757 (Regex!2958 List!10188) Bool)

(assert (=> b!1082838 (= lt!362536 (matchRSpec!757 r!15766 s!10566))))

(assert (=> b!1082838 (= lt!362536 (matchR!1494 r!15766 s!10566))))

(declare-fun lt!362535 () Unit!15607)

(declare-fun mainMatchTheorem!757 (Regex!2958 List!10188) Unit!15607)

(assert (=> b!1082838 (= lt!362535 (mainMatchTheorem!757 r!15766 s!10566))))

(declare-fun b!1082839 () Bool)

(declare-fun tp!323710 () Bool)

(declare-fun tp!323714 () Bool)

(assert (=> b!1082839 (= e!684759 (and tp!323710 tp!323714))))

(declare-fun b!1082840 () Bool)

(assert (=> b!1082840 (= e!684759 tp_is_empty!5559)))

(assert (= (and start!92068 res!481864) b!1082838))

(assert (= (and b!1082838 (not res!481862)) b!1082834))

(assert (= (and b!1082834 (not res!481863)) b!1082836))

(assert (= (and start!92068 (is-ElementMatch!2958 r!15766)) b!1082840))

(assert (= (and start!92068 (is-Concat!4791 r!15766)) b!1082837))

(assert (= (and start!92068 (is-Star!2958 r!15766)) b!1082835))

(assert (= (and start!92068 (is-Union!2958 r!15766)) b!1082839))

(assert (= (and start!92068 (is-Cons!10172 s!10566)) b!1082833))

(declare-fun m!1233489 () Bool)

(assert (=> b!1082834 m!1233489))

(declare-fun m!1233491 () Bool)

(assert (=> b!1082834 m!1233491))

(declare-fun m!1233493 () Bool)

(assert (=> b!1082834 m!1233493))

(declare-fun m!1233495 () Bool)

(assert (=> b!1082834 m!1233495))

(assert (=> b!1082834 m!1233493))

(declare-fun m!1233497 () Bool)

(assert (=> b!1082834 m!1233497))

(declare-fun m!1233499 () Bool)

(assert (=> b!1082834 m!1233499))

(assert (=> b!1082834 m!1233497))

(declare-fun m!1233501 () Bool)

(assert (=> b!1082834 m!1233501))

(declare-fun m!1233503 () Bool)

(assert (=> b!1082834 m!1233503))

(declare-fun m!1233505 () Bool)

(assert (=> b!1082836 m!1233505))

(assert (=> b!1082836 m!1233505))

(declare-fun m!1233507 () Bool)

(assert (=> b!1082836 m!1233507))

(declare-fun m!1233509 () Bool)

(assert (=> start!92068 m!1233509))

(declare-fun m!1233511 () Bool)

(assert (=> b!1082838 m!1233511))

(declare-fun m!1233513 () Bool)

(assert (=> b!1082838 m!1233513))

(declare-fun m!1233515 () Bool)

(assert (=> b!1082838 m!1233515))

(push 1)

(assert (not b!1082838))

(assert tp_is_empty!5559)

(assert (not start!92068))

(assert (not b!1082834))

(assert (not b!1082836))

(assert (not b!1082839))

(assert (not b!1082837))

(assert (not b!1082835))

(assert (not b!1082833))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!304633 () Bool)

(declare-fun isEmpty!6607 (Option!2457) Bool)

(assert (=> d!304633 (= (isDefined!2099 (findConcatSeparation!563 (reg!3287 r!15766) lt!362534 Nil!10172 s!10566 s!10566)) (not (isEmpty!6607 (findConcatSeparation!563 (reg!3287 r!15766) lt!362534 Nil!10172 s!10566 s!10566))))))

(declare-fun bs!256384 () Bool)

(assert (= bs!256384 d!304633))

(assert (=> bs!256384 m!1233497))

(declare-fun m!1233545 () Bool)

(assert (=> bs!256384 m!1233545))

(assert (=> b!1082834 d!304633))

(declare-fun d!304635 () Bool)

(declare-fun choose!6875 (Int) Bool)

(assert (=> d!304635 (= (Exists!681 lambda!39346) (choose!6875 lambda!39346))))

(declare-fun bs!256385 () Bool)

(assert (= bs!256385 d!304635))

(declare-fun m!1233547 () Bool)

(assert (=> bs!256385 m!1233547))

(assert (=> b!1082834 d!304635))

(declare-fun d!304637 () Bool)

(assert (=> d!304637 (= (Exists!681 lambda!39345) (choose!6875 lambda!39345))))

(declare-fun bs!256386 () Bool)

(assert (= bs!256386 d!304637))

(declare-fun m!1233549 () Bool)

(assert (=> bs!256386 m!1233549))

(assert (=> b!1082834 d!304637))

(declare-fun b!1082933 () Bool)

(declare-fun res!481917 () Bool)

(declare-fun e!684808 () Bool)

(assert (=> b!1082933 (=> (not res!481917) (not e!684808))))

(declare-fun lt!362560 () Option!2457)

(declare-fun get!3686 (Option!2457) tuple2!11630)

(assert (=> b!1082933 (= res!481917 (matchR!1494 (reg!3287 r!15766) (_1!6641 (get!3686 lt!362560))))))

(declare-fun b!1082934 () Bool)

(declare-fun e!684809 () Option!2457)

(declare-fun e!684807 () Option!2457)

(assert (=> b!1082934 (= e!684809 e!684807)))

(declare-fun c!182805 () Bool)

(assert (=> b!1082934 (= c!182805 (is-Nil!10172 s!10566))))

(declare-fun b!1082935 () Bool)

(declare-fun res!481916 () Bool)

(assert (=> b!1082935 (=> (not res!481916) (not e!684808))))

(assert (=> b!1082935 (= res!481916 (matchR!1494 lt!362534 (_2!6641 (get!3686 lt!362560))))))

(declare-fun b!1082936 () Bool)

(declare-fun ++!2824 (List!10188 List!10188) List!10188)

(assert (=> b!1082936 (= e!684808 (= (++!2824 (_1!6641 (get!3686 lt!362560)) (_2!6641 (get!3686 lt!362560))) s!10566))))

(declare-fun b!1082937 () Bool)

(declare-fun lt!362562 () Unit!15607)

(declare-fun lt!362561 () Unit!15607)

(assert (=> b!1082937 (= lt!362562 lt!362561)))

(assert (=> b!1082937 (= (++!2824 (++!2824 Nil!10172 (Cons!10172 (h!15573 s!10566) Nil!10172)) (t!101234 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!417 (List!10188 C!6486 List!10188 List!10188) Unit!15607)

(assert (=> b!1082937 (= lt!362561 (lemmaMoveElementToOtherListKeepsConcatEq!417 Nil!10172 (h!15573 s!10566) (t!101234 s!10566) s!10566))))

(assert (=> b!1082937 (= e!684807 (findConcatSeparation!563 (reg!3287 r!15766) lt!362534 (++!2824 Nil!10172 (Cons!10172 (h!15573 s!10566) Nil!10172)) (t!101234 s!10566) s!10566))))

(declare-fun d!304639 () Bool)

(declare-fun e!684805 () Bool)

(assert (=> d!304639 e!684805))

(declare-fun res!481918 () Bool)

(assert (=> d!304639 (=> res!481918 e!684805)))

(assert (=> d!304639 (= res!481918 e!684808)))

(declare-fun res!481915 () Bool)

(assert (=> d!304639 (=> (not res!481915) (not e!684808))))

(assert (=> d!304639 (= res!481915 (isDefined!2099 lt!362560))))

(assert (=> d!304639 (= lt!362560 e!684809)))

(declare-fun c!182806 () Bool)

(declare-fun e!684806 () Bool)

(assert (=> d!304639 (= c!182806 e!684806)))

(declare-fun res!481914 () Bool)

(assert (=> d!304639 (=> (not res!481914) (not e!684806))))

(assert (=> d!304639 (= res!481914 (matchR!1494 (reg!3287 r!15766) Nil!10172))))

(assert (=> d!304639 (validRegex!1427 (reg!3287 r!15766))))

(assert (=> d!304639 (= (findConcatSeparation!563 (reg!3287 r!15766) lt!362534 Nil!10172 s!10566 s!10566) lt!362560)))

(declare-fun b!1082938 () Bool)

(assert (=> b!1082938 (= e!684805 (not (isDefined!2099 lt!362560)))))

(declare-fun b!1082939 () Bool)

(assert (=> b!1082939 (= e!684807 None!2456)))

(declare-fun b!1082940 () Bool)

(assert (=> b!1082940 (= e!684806 (matchR!1494 lt!362534 s!10566))))

(declare-fun b!1082941 () Bool)

(assert (=> b!1082941 (= e!684809 (Some!2456 (tuple2!11631 Nil!10172 s!10566)))))

(assert (= (and d!304639 res!481914) b!1082940))

(assert (= (and d!304639 c!182806) b!1082941))

(assert (= (and d!304639 (not c!182806)) b!1082934))

(assert (= (and b!1082934 c!182805) b!1082939))

(assert (= (and b!1082934 (not c!182805)) b!1082937))

(assert (= (and d!304639 res!481915) b!1082933))

(assert (= (and b!1082933 res!481917) b!1082935))

(assert (= (and b!1082935 res!481916) b!1082936))

(assert (= (and d!304639 (not res!481918)) b!1082938))

(declare-fun m!1233551 () Bool)

(assert (=> b!1082938 m!1233551))

(declare-fun m!1233553 () Bool)

(assert (=> b!1082937 m!1233553))

(assert (=> b!1082937 m!1233553))

(declare-fun m!1233555 () Bool)

(assert (=> b!1082937 m!1233555))

(declare-fun m!1233557 () Bool)

(assert (=> b!1082937 m!1233557))

(assert (=> b!1082937 m!1233553))

(declare-fun m!1233559 () Bool)

(assert (=> b!1082937 m!1233559))

(declare-fun m!1233561 () Bool)

(assert (=> b!1082933 m!1233561))

(declare-fun m!1233563 () Bool)

(assert (=> b!1082933 m!1233563))

(assert (=> d!304639 m!1233551))

(declare-fun m!1233565 () Bool)

(assert (=> d!304639 m!1233565))

(declare-fun m!1233567 () Bool)

(assert (=> d!304639 m!1233567))

(assert (=> b!1082936 m!1233561))

(declare-fun m!1233569 () Bool)

(assert (=> b!1082936 m!1233569))

(assert (=> b!1082935 m!1233561))

(declare-fun m!1233571 () Bool)

(assert (=> b!1082935 m!1233571))

(declare-fun m!1233573 () Bool)

(assert (=> b!1082940 m!1233573))

(assert (=> b!1082834 d!304639))

(declare-fun bs!256387 () Bool)

(declare-fun d!304643 () Bool)

(assert (= bs!256387 (and d!304643 b!1082834)))

(declare-fun lambda!39359 () Int)

(assert (=> bs!256387 (= (= (Star!2958 (reg!3287 r!15766)) lt!362534) (= lambda!39359 lambda!39345))))

(assert (=> bs!256387 (not (= lambda!39359 lambda!39346))))

(assert (=> d!304643 true))

(assert (=> d!304643 true))

(declare-fun lambda!39360 () Int)

(assert (=> bs!256387 (not (= lambda!39360 lambda!39345))))

(assert (=> bs!256387 (= (= (Star!2958 (reg!3287 r!15766)) lt!362534) (= lambda!39360 lambda!39346))))

(declare-fun bs!256388 () Bool)

(assert (= bs!256388 d!304643))

(assert (=> bs!256388 (not (= lambda!39360 lambda!39359))))

(assert (=> d!304643 true))

(assert (=> d!304643 true))

(assert (=> d!304643 (= (Exists!681 lambda!39359) (Exists!681 lambda!39360))))

(declare-fun lt!362568 () Unit!15607)

(declare-fun choose!6876 (Regex!2958 List!10188) Unit!15607)

(assert (=> d!304643 (= lt!362568 (choose!6876 (reg!3287 r!15766) s!10566))))

(assert (=> d!304643 (validRegex!1427 (reg!3287 r!15766))))

(assert (=> d!304643 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!199 (reg!3287 r!15766) s!10566) lt!362568)))

(declare-fun m!1233601 () Bool)

(assert (=> bs!256388 m!1233601))

(declare-fun m!1233603 () Bool)

(assert (=> bs!256388 m!1233603))

(declare-fun m!1233605 () Bool)

(assert (=> bs!256388 m!1233605))

(assert (=> bs!256388 m!1233567))

(assert (=> b!1082834 d!304643))

(declare-fun b!1083048 () Bool)

(declare-fun e!684877 () Regex!2958)

(declare-fun call!80069 () Regex!2958)

(assert (=> b!1083048 (= e!684877 call!80069)))

(declare-fun c!182845 () Bool)

(declare-fun c!182844 () Bool)

(declare-fun c!182843 () Bool)

(declare-fun bm!80061 () Bool)

(declare-fun c!182842 () Bool)

(assert (=> bm!80061 (= call!80069 (removeUselessConcat!499 (ite c!182842 (regTwo!6428 (reg!3287 r!15766)) (ite c!182844 (regOne!6428 (reg!3287 r!15766)) (ite c!182843 (regTwo!6428 (reg!3287 r!15766)) (ite c!182845 (regTwo!6429 (reg!3287 r!15766)) (reg!3287 (reg!3287 r!15766))))))))))

(declare-fun b!1083049 () Bool)

(declare-fun e!684872 () Regex!2958)

(declare-fun call!80066 () Regex!2958)

(declare-fun call!80068 () Regex!2958)

(assert (=> b!1083049 (= e!684872 (Concat!4791 call!80066 call!80068))))

(declare-fun b!1083050 () Bool)

(declare-fun e!684874 () Regex!2958)

(declare-fun call!80067 () Regex!2958)

(assert (=> b!1083050 (= e!684874 (Union!2958 call!80066 call!80067))))

(declare-fun b!1083051 () Bool)

(assert (=> b!1083051 (= e!684872 e!684874)))

(assert (=> b!1083051 (= c!182845 (is-Union!2958 (reg!3287 r!15766)))))

(declare-fun bm!80062 () Bool)

(declare-fun call!80070 () Regex!2958)

(assert (=> bm!80062 (= call!80070 call!80069)))

(declare-fun b!1083052 () Bool)

(declare-fun e!684876 () Regex!2958)

(assert (=> b!1083052 (= e!684876 (Star!2958 call!80067))))

(declare-fun b!1083053 () Bool)

(declare-fun e!684873 () Regex!2958)

(assert (=> b!1083053 (= e!684873 call!80070)))

(declare-fun bm!80063 () Bool)

(assert (=> bm!80063 (= call!80068 call!80070)))

(declare-fun b!1083054 () Bool)

(assert (=> b!1083054 (= c!182843 (is-Concat!4791 (reg!3287 r!15766)))))

(assert (=> b!1083054 (= e!684873 e!684872)))

(declare-fun b!1083055 () Bool)

(declare-fun c!182841 () Bool)

(assert (=> b!1083055 (= c!182841 (is-Star!2958 (reg!3287 r!15766)))))

(assert (=> b!1083055 (= e!684874 e!684876)))

(declare-fun bm!80065 () Bool)

(assert (=> bm!80065 (= call!80066 (removeUselessConcat!499 (ite c!182843 (regOne!6428 (reg!3287 r!15766)) (regOne!6429 (reg!3287 r!15766)))))))

(declare-fun b!1083056 () Bool)

(assert (=> b!1083056 (= e!684876 (reg!3287 r!15766))))

(declare-fun bm!80064 () Bool)

(assert (=> bm!80064 (= call!80067 call!80068)))

(declare-fun d!304649 () Bool)

(declare-fun e!684875 () Bool)

(assert (=> d!304649 e!684875))

(declare-fun res!481957 () Bool)

(assert (=> d!304649 (=> (not res!481957) (not e!684875))))

(declare-fun lt!362572 () Regex!2958)

(assert (=> d!304649 (= res!481957 (validRegex!1427 lt!362572))))

(assert (=> d!304649 (= lt!362572 e!684877)))

(assert (=> d!304649 (= c!182842 (and (is-Concat!4791 (reg!3287 r!15766)) (is-EmptyExpr!2958 (regOne!6428 (reg!3287 r!15766)))))))

(assert (=> d!304649 (validRegex!1427 (reg!3287 r!15766))))

(assert (=> d!304649 (= (removeUselessConcat!499 (reg!3287 r!15766)) lt!362572)))

(declare-fun b!1083057 () Bool)

(assert (=> b!1083057 (= e!684877 e!684873)))

(assert (=> b!1083057 (= c!182844 (and (is-Concat!4791 (reg!3287 r!15766)) (is-EmptyExpr!2958 (regTwo!6428 (reg!3287 r!15766)))))))

(declare-fun b!1083058 () Bool)

(declare-fun nullable!1042 (Regex!2958) Bool)

(assert (=> b!1083058 (= e!684875 (= (nullable!1042 lt!362572) (nullable!1042 (reg!3287 r!15766))))))

(assert (= (and d!304649 c!182842) b!1083048))

(assert (= (and d!304649 (not c!182842)) b!1083057))

(assert (= (and b!1083057 c!182844) b!1083053))

(assert (= (and b!1083057 (not c!182844)) b!1083054))

(assert (= (and b!1083054 c!182843) b!1083049))

(assert (= (and b!1083054 (not c!182843)) b!1083051))

(assert (= (and b!1083051 c!182845) b!1083050))

(assert (= (and b!1083051 (not c!182845)) b!1083055))

(assert (= (and b!1083055 c!182841) b!1083052))

(assert (= (and b!1083055 (not c!182841)) b!1083056))

(assert (= (or b!1083050 b!1083052) bm!80064))

(assert (= (or b!1083049 bm!80064) bm!80063))

(assert (= (or b!1083049 b!1083050) bm!80065))

(assert (= (or b!1083053 bm!80063) bm!80062))

(assert (= (or b!1083048 bm!80062) bm!80061))

(assert (= (and d!304649 res!481957) b!1083058))

(declare-fun m!1233619 () Bool)

(assert (=> bm!80061 m!1233619))

(declare-fun m!1233621 () Bool)

(assert (=> bm!80065 m!1233621))

(declare-fun m!1233623 () Bool)

(assert (=> d!304649 m!1233623))

(assert (=> d!304649 m!1233567))

(declare-fun m!1233625 () Bool)

(assert (=> b!1083058 m!1233625))

(declare-fun m!1233627 () Bool)

(assert (=> b!1083058 m!1233627))

(assert (=> b!1082834 d!304649))

(declare-fun bs!256392 () Bool)

(declare-fun d!304659 () Bool)

(assert (= bs!256392 (and d!304659 b!1082834)))

(declare-fun lambda!39367 () Int)

(assert (=> bs!256392 (= lambda!39367 lambda!39345)))

(assert (=> bs!256392 (not (= lambda!39367 lambda!39346))))

(declare-fun bs!256393 () Bool)

(assert (= bs!256393 (and d!304659 d!304643)))

(assert (=> bs!256393 (= (= lt!362534 (Star!2958 (reg!3287 r!15766))) (= lambda!39367 lambda!39359))))

(assert (=> bs!256393 (not (= lambda!39367 lambda!39360))))

(assert (=> d!304659 true))

(assert (=> d!304659 true))

(assert (=> d!304659 true))

(assert (=> d!304659 (= (isDefined!2099 (findConcatSeparation!563 (reg!3287 r!15766) lt!362534 Nil!10172 s!10566 s!10566)) (Exists!681 lambda!39367))))

(declare-fun lt!362577 () Unit!15607)

(declare-fun choose!6877 (Regex!2958 Regex!2958 List!10188) Unit!15607)

(assert (=> d!304659 (= lt!362577 (choose!6877 (reg!3287 r!15766) lt!362534 s!10566))))

(assert (=> d!304659 (validRegex!1427 (reg!3287 r!15766))))

(assert (=> d!304659 (= (lemmaFindConcatSeparationEquivalentToExists!563 (reg!3287 r!15766) lt!362534 s!10566) lt!362577)))

(declare-fun bs!256395 () Bool)

(assert (= bs!256395 d!304659))

(declare-fun m!1233629 () Bool)

(assert (=> bs!256395 m!1233629))

(declare-fun m!1233631 () Bool)

(assert (=> bs!256395 m!1233631))

(assert (=> bs!256395 m!1233497))

(assert (=> bs!256395 m!1233499))

(assert (=> bs!256395 m!1233567))

(assert (=> bs!256395 m!1233497))

(assert (=> b!1082834 d!304659))

(declare-fun b!1083112 () Bool)

(declare-fun res!481990 () Bool)

(declare-fun e!684905 () Bool)

(assert (=> b!1083112 (=> (not res!481990) (not e!684905))))

(declare-fun call!80078 () Bool)

(assert (=> b!1083112 (= res!481990 (not call!80078))))

(declare-fun d!304661 () Bool)

(declare-fun e!684908 () Bool)

(assert (=> d!304661 e!684908))

(declare-fun c!182859 () Bool)

(assert (=> d!304661 (= c!182859 (is-EmptyExpr!2958 (Star!2958 (removeUselessConcat!499 (reg!3287 r!15766)))))))

(declare-fun lt!362582 () Bool)

(declare-fun e!684906 () Bool)

(assert (=> d!304661 (= lt!362582 e!684906)))

(declare-fun c!182857 () Bool)

(declare-fun isEmpty!6609 (List!10188) Bool)

(assert (=> d!304661 (= c!182857 (isEmpty!6609 s!10566))))

(assert (=> d!304661 (validRegex!1427 (Star!2958 (removeUselessConcat!499 (reg!3287 r!15766))))))

(assert (=> d!304661 (= (matchR!1494 (Star!2958 (removeUselessConcat!499 (reg!3287 r!15766))) s!10566) lt!362582)))

(declare-fun b!1083113 () Bool)

(declare-fun res!481993 () Bool)

(declare-fun e!684907 () Bool)

(assert (=> b!1083113 (=> res!481993 e!684907)))

(assert (=> b!1083113 (= res!481993 e!684905)))

(declare-fun res!481989 () Bool)

(assert (=> b!1083113 (=> (not res!481989) (not e!684905))))

(assert (=> b!1083113 (= res!481989 lt!362582)))

(declare-fun b!1083114 () Bool)

(assert (=> b!1083114 (= e!684908 (= lt!362582 call!80078))))

(declare-fun b!1083115 () Bool)

(declare-fun res!481991 () Bool)

(assert (=> b!1083115 (=> (not res!481991) (not e!684905))))

(declare-fun tail!1557 (List!10188) List!10188)

(assert (=> b!1083115 (= res!481991 (isEmpty!6609 (tail!1557 s!10566)))))

(declare-fun b!1083116 () Bool)

(declare-fun derivativeStep!840 (Regex!2958 C!6486) Regex!2958)

(declare-fun head!1995 (List!10188) C!6486)

(assert (=> b!1083116 (= e!684906 (matchR!1494 (derivativeStep!840 (Star!2958 (removeUselessConcat!499 (reg!3287 r!15766))) (head!1995 s!10566)) (tail!1557 s!10566)))))

(declare-fun b!1083117 () Bool)

(declare-fun res!481994 () Bool)

(declare-fun e!684909 () Bool)

(assert (=> b!1083117 (=> res!481994 e!684909)))

(assert (=> b!1083117 (= res!481994 (not (isEmpty!6609 (tail!1557 s!10566))))))

(declare-fun b!1083118 () Bool)

(assert (=> b!1083118 (= e!684909 (not (= (head!1995 s!10566) (c!182793 (Star!2958 (removeUselessConcat!499 (reg!3287 r!15766)))))))))

(declare-fun b!1083119 () Bool)

(declare-fun e!684904 () Bool)

(assert (=> b!1083119 (= e!684904 (not lt!362582))))

(declare-fun b!1083120 () Bool)

(declare-fun res!481995 () Bool)

(assert (=> b!1083120 (=> res!481995 e!684907)))

(assert (=> b!1083120 (= res!481995 (not (is-ElementMatch!2958 (Star!2958 (removeUselessConcat!499 (reg!3287 r!15766))))))))

(assert (=> b!1083120 (= e!684904 e!684907)))

(declare-fun bm!80073 () Bool)

(assert (=> bm!80073 (= call!80078 (isEmpty!6609 s!10566))))

(declare-fun b!1083121 () Bool)

(declare-fun e!684910 () Bool)

(assert (=> b!1083121 (= e!684910 e!684909)))

(declare-fun res!481996 () Bool)

(assert (=> b!1083121 (=> res!481996 e!684909)))

(assert (=> b!1083121 (= res!481996 call!80078)))

(declare-fun b!1083122 () Bool)

(assert (=> b!1083122 (= e!684906 (nullable!1042 (Star!2958 (removeUselessConcat!499 (reg!3287 r!15766)))))))

(declare-fun b!1083123 () Bool)

(assert (=> b!1083123 (= e!684907 e!684910)))

(declare-fun res!481992 () Bool)

(assert (=> b!1083123 (=> (not res!481992) (not e!684910))))

(assert (=> b!1083123 (= res!481992 (not lt!362582))))

(declare-fun b!1083124 () Bool)

(assert (=> b!1083124 (= e!684905 (= (head!1995 s!10566) (c!182793 (Star!2958 (removeUselessConcat!499 (reg!3287 r!15766))))))))

(declare-fun b!1083125 () Bool)

(assert (=> b!1083125 (= e!684908 e!684904)))

(declare-fun c!182858 () Bool)

(assert (=> b!1083125 (= c!182858 (is-EmptyLang!2958 (Star!2958 (removeUselessConcat!499 (reg!3287 r!15766)))))))

(assert (= (and d!304661 c!182857) b!1083122))

(assert (= (and d!304661 (not c!182857)) b!1083116))

(assert (= (and d!304661 c!182859) b!1083114))

(assert (= (and d!304661 (not c!182859)) b!1083125))

(assert (= (and b!1083125 c!182858) b!1083119))

(assert (= (and b!1083125 (not c!182858)) b!1083120))

(assert (= (and b!1083120 (not res!481995)) b!1083113))

(assert (= (and b!1083113 res!481989) b!1083112))

(assert (= (and b!1083112 res!481990) b!1083115))

(assert (= (and b!1083115 res!481991) b!1083124))

(assert (= (and b!1083113 (not res!481993)) b!1083123))

(assert (= (and b!1083123 res!481992) b!1083121))

(assert (= (and b!1083121 (not res!481996)) b!1083117))

(assert (= (and b!1083117 (not res!481994)) b!1083118))

(assert (= (or b!1083114 b!1083112 b!1083121) bm!80073))

(declare-fun m!1233649 () Bool)

(assert (=> b!1083116 m!1233649))

(assert (=> b!1083116 m!1233649))

(declare-fun m!1233651 () Bool)

(assert (=> b!1083116 m!1233651))

(declare-fun m!1233653 () Bool)

(assert (=> b!1083116 m!1233653))

(assert (=> b!1083116 m!1233651))

(assert (=> b!1083116 m!1233653))

(declare-fun m!1233655 () Bool)

(assert (=> b!1083116 m!1233655))

(assert (=> b!1083117 m!1233653))

(assert (=> b!1083117 m!1233653))

(declare-fun m!1233657 () Bool)

(assert (=> b!1083117 m!1233657))

(assert (=> b!1083124 m!1233649))

(declare-fun m!1233659 () Bool)

(assert (=> bm!80073 m!1233659))

(assert (=> b!1083118 m!1233649))

(assert (=> d!304661 m!1233659))

(declare-fun m!1233661 () Bool)

(assert (=> d!304661 m!1233661))

(declare-fun m!1233663 () Bool)

(assert (=> b!1083122 m!1233663))

(assert (=> b!1083115 m!1233653))

(assert (=> b!1083115 m!1233653))

(assert (=> b!1083115 m!1233657))

(assert (=> b!1082834 d!304661))

(declare-fun bs!256398 () Bool)

(declare-fun b!1083199 () Bool)

(assert (= bs!256398 (and b!1083199 b!1082834)))

(declare-fun lambda!39377 () Int)

(assert (=> bs!256398 (= (= r!15766 lt!362534) (= lambda!39377 lambda!39346))))

(declare-fun bs!256400 () Bool)

(assert (= bs!256400 (and b!1083199 d!304643)))

(assert (=> bs!256400 (not (= lambda!39377 lambda!39359))))

(declare-fun bs!256401 () Bool)

(assert (= bs!256401 (and b!1083199 d!304659)))

(assert (=> bs!256401 (not (= lambda!39377 lambda!39367))))

(assert (=> bs!256398 (not (= lambda!39377 lambda!39345))))

(assert (=> bs!256400 (= (= r!15766 (Star!2958 (reg!3287 r!15766))) (= lambda!39377 lambda!39360))))

(assert (=> b!1083199 true))

(assert (=> b!1083199 true))

(declare-fun bs!256403 () Bool)

(declare-fun b!1083197 () Bool)

(assert (= bs!256403 (and b!1083197 d!304643)))

(declare-fun lambda!39378 () Int)

(assert (=> bs!256403 (not (= lambda!39378 lambda!39359))))

(declare-fun bs!256404 () Bool)

(assert (= bs!256404 (and b!1083197 d!304659)))

(assert (=> bs!256404 (not (= lambda!39378 lambda!39367))))

(declare-fun bs!256405 () Bool)

(assert (= bs!256405 (and b!1083197 b!1082834)))

(assert (=> bs!256405 (not (= lambda!39378 lambda!39345))))

(assert (=> bs!256403 (not (= lambda!39378 lambda!39360))))

(declare-fun bs!256406 () Bool)

(assert (= bs!256406 (and b!1083197 b!1083199)))

(assert (=> bs!256406 (not (= lambda!39378 lambda!39377))))

(assert (=> bs!256405 (not (= lambda!39378 lambda!39346))))

(assert (=> b!1083197 true))

(assert (=> b!1083197 true))

(declare-fun c!182874 () Bool)

(declare-fun call!80083 () Bool)

(declare-fun bm!80078 () Bool)

(assert (=> bm!80078 (= call!80083 (Exists!681 (ite c!182874 lambda!39377 lambda!39378)))))

(declare-fun b!1083189 () Bool)

(declare-fun e!684949 () Bool)

(assert (=> b!1083189 (= e!684949 (matchRSpec!757 (regTwo!6429 r!15766) s!10566))))

(declare-fun b!1083190 () Bool)

(declare-fun res!482034 () Bool)

(declare-fun e!684947 () Bool)

(assert (=> b!1083190 (=> res!482034 e!684947)))

(declare-fun call!80084 () Bool)

(assert (=> b!1083190 (= res!482034 call!80084)))

(declare-fun e!684950 () Bool)

(assert (=> b!1083190 (= e!684950 e!684947)))

(declare-fun d!304667 () Bool)

(declare-fun c!182876 () Bool)

(assert (=> d!304667 (= c!182876 (is-EmptyExpr!2958 r!15766))))

(declare-fun e!684952 () Bool)

(assert (=> d!304667 (= (matchRSpec!757 r!15766 s!10566) e!684952)))

(declare-fun b!1083191 () Bool)

(declare-fun e!684951 () Bool)

(assert (=> b!1083191 (= e!684952 e!684951)))

(declare-fun res!482033 () Bool)

(assert (=> b!1083191 (= res!482033 (not (is-EmptyLang!2958 r!15766)))))

(assert (=> b!1083191 (=> (not res!482033) (not e!684951))))

(declare-fun bm!80079 () Bool)

(assert (=> bm!80079 (= call!80084 (isEmpty!6609 s!10566))))

(declare-fun b!1083192 () Bool)

(declare-fun e!684948 () Bool)

(assert (=> b!1083192 (= e!684948 e!684950)))

(assert (=> b!1083192 (= c!182874 (is-Star!2958 r!15766))))

(declare-fun b!1083193 () Bool)

(declare-fun c!182875 () Bool)

(assert (=> b!1083193 (= c!182875 (is-ElementMatch!2958 r!15766))))

(declare-fun e!684946 () Bool)

(assert (=> b!1083193 (= e!684951 e!684946)))

(declare-fun b!1083194 () Bool)

(declare-fun c!182877 () Bool)

(assert (=> b!1083194 (= c!182877 (is-Union!2958 r!15766))))

(assert (=> b!1083194 (= e!684946 e!684948)))

(declare-fun b!1083195 () Bool)

(assert (=> b!1083195 (= e!684952 call!80084)))

(declare-fun b!1083196 () Bool)

(assert (=> b!1083196 (= e!684948 e!684949)))

(declare-fun res!482032 () Bool)

(assert (=> b!1083196 (= res!482032 (matchRSpec!757 (regOne!6429 r!15766) s!10566))))

(assert (=> b!1083196 (=> res!482032 e!684949)))

(assert (=> b!1083197 (= e!684950 call!80083)))

(declare-fun b!1083198 () Bool)

(assert (=> b!1083198 (= e!684946 (= s!10566 (Cons!10172 (c!182793 r!15766) Nil!10172)))))

(assert (=> b!1083199 (= e!684947 call!80083)))

(assert (= (and d!304667 c!182876) b!1083195))

(assert (= (and d!304667 (not c!182876)) b!1083191))

(assert (= (and b!1083191 res!482033) b!1083193))

(assert (= (and b!1083193 c!182875) b!1083198))

(assert (= (and b!1083193 (not c!182875)) b!1083194))

(assert (= (and b!1083194 c!182877) b!1083196))

(assert (= (and b!1083194 (not c!182877)) b!1083192))

(assert (= (and b!1083196 (not res!482032)) b!1083189))

(assert (= (and b!1083192 c!182874) b!1083190))

(assert (= (and b!1083192 (not c!182874)) b!1083197))

(assert (= (and b!1083190 (not res!482034)) b!1083199))

(assert (= (or b!1083199 b!1083197) bm!80078))

(assert (= (or b!1083195 b!1083190) bm!80079))

(declare-fun m!1233699 () Bool)

(assert (=> bm!80078 m!1233699))

(declare-fun m!1233701 () Bool)

(assert (=> b!1083189 m!1233701))

(assert (=> bm!80079 m!1233659))

(declare-fun m!1233703 () Bool)

(assert (=> b!1083196 m!1233703))

(assert (=> b!1082838 d!304667))

(declare-fun b!1083214 () Bool)

(declare-fun res!482044 () Bool)

(declare-fun e!684961 () Bool)

(assert (=> b!1083214 (=> (not res!482044) (not e!684961))))

(declare-fun call!80086 () Bool)

(assert (=> b!1083214 (= res!482044 (not call!80086))))

(declare-fun d!304675 () Bool)

(declare-fun e!684964 () Bool)

(assert (=> d!304675 e!684964))

(declare-fun c!182883 () Bool)

(assert (=> d!304675 (= c!182883 (is-EmptyExpr!2958 r!15766))))

(declare-fun lt!362596 () Bool)

(declare-fun e!684962 () Bool)

(assert (=> d!304675 (= lt!362596 e!684962)))

(declare-fun c!182881 () Bool)

(assert (=> d!304675 (= c!182881 (isEmpty!6609 s!10566))))

(assert (=> d!304675 (validRegex!1427 r!15766)))

(assert (=> d!304675 (= (matchR!1494 r!15766 s!10566) lt!362596)))

(declare-fun b!1083215 () Bool)

(declare-fun res!482047 () Bool)

(declare-fun e!684963 () Bool)

(assert (=> b!1083215 (=> res!482047 e!684963)))

(assert (=> b!1083215 (= res!482047 e!684961)))

(declare-fun res!482043 () Bool)

(assert (=> b!1083215 (=> (not res!482043) (not e!684961))))

(assert (=> b!1083215 (= res!482043 lt!362596)))

(declare-fun b!1083216 () Bool)

(assert (=> b!1083216 (= e!684964 (= lt!362596 call!80086))))

(declare-fun b!1083217 () Bool)

(declare-fun res!482045 () Bool)

(assert (=> b!1083217 (=> (not res!482045) (not e!684961))))

(assert (=> b!1083217 (= res!482045 (isEmpty!6609 (tail!1557 s!10566)))))

(declare-fun b!1083218 () Bool)

(assert (=> b!1083218 (= e!684962 (matchR!1494 (derivativeStep!840 r!15766 (head!1995 s!10566)) (tail!1557 s!10566)))))

(declare-fun b!1083219 () Bool)

(declare-fun res!482048 () Bool)

(declare-fun e!684965 () Bool)

(assert (=> b!1083219 (=> res!482048 e!684965)))

(assert (=> b!1083219 (= res!482048 (not (isEmpty!6609 (tail!1557 s!10566))))))

(declare-fun b!1083220 () Bool)

(assert (=> b!1083220 (= e!684965 (not (= (head!1995 s!10566) (c!182793 r!15766))))))

(declare-fun b!1083221 () Bool)

(declare-fun e!684960 () Bool)

(assert (=> b!1083221 (= e!684960 (not lt!362596))))

(declare-fun b!1083222 () Bool)

(declare-fun res!482049 () Bool)

(assert (=> b!1083222 (=> res!482049 e!684963)))

(assert (=> b!1083222 (= res!482049 (not (is-ElementMatch!2958 r!15766)))))

(assert (=> b!1083222 (= e!684960 e!684963)))

(declare-fun bm!80081 () Bool)

(assert (=> bm!80081 (= call!80086 (isEmpty!6609 s!10566))))

(declare-fun b!1083223 () Bool)

(declare-fun e!684966 () Bool)

(assert (=> b!1083223 (= e!684966 e!684965)))

(declare-fun res!482050 () Bool)

(assert (=> b!1083223 (=> res!482050 e!684965)))

(assert (=> b!1083223 (= res!482050 call!80086)))

(declare-fun b!1083224 () Bool)

(assert (=> b!1083224 (= e!684962 (nullable!1042 r!15766))))

(declare-fun b!1083225 () Bool)

(assert (=> b!1083225 (= e!684963 e!684966)))

(declare-fun res!482046 () Bool)

(assert (=> b!1083225 (=> (not res!482046) (not e!684966))))

(assert (=> b!1083225 (= res!482046 (not lt!362596))))

(declare-fun b!1083226 () Bool)

(assert (=> b!1083226 (= e!684961 (= (head!1995 s!10566) (c!182793 r!15766)))))

(declare-fun b!1083227 () Bool)

(assert (=> b!1083227 (= e!684964 e!684960)))

(declare-fun c!182882 () Bool)

(assert (=> b!1083227 (= c!182882 (is-EmptyLang!2958 r!15766))))

(assert (= (and d!304675 c!182881) b!1083224))

(assert (= (and d!304675 (not c!182881)) b!1083218))

(assert (= (and d!304675 c!182883) b!1083216))

(assert (= (and d!304675 (not c!182883)) b!1083227))

(assert (= (and b!1083227 c!182882) b!1083221))

(assert (= (and b!1083227 (not c!182882)) b!1083222))

(assert (= (and b!1083222 (not res!482049)) b!1083215))

(assert (= (and b!1083215 res!482043) b!1083214))

(assert (= (and b!1083214 res!482044) b!1083217))

(assert (= (and b!1083217 res!482045) b!1083226))

(assert (= (and b!1083215 (not res!482047)) b!1083225))

(assert (= (and b!1083225 res!482046) b!1083223))

(assert (= (and b!1083223 (not res!482050)) b!1083219))

(assert (= (and b!1083219 (not res!482048)) b!1083220))

(assert (= (or b!1083216 b!1083214 b!1083223) bm!80081))

(assert (=> b!1083218 m!1233649))

(assert (=> b!1083218 m!1233649))

(declare-fun m!1233705 () Bool)

(assert (=> b!1083218 m!1233705))

(assert (=> b!1083218 m!1233653))

(assert (=> b!1083218 m!1233705))

(assert (=> b!1083218 m!1233653))

(declare-fun m!1233707 () Bool)

(assert (=> b!1083218 m!1233707))

(assert (=> b!1083219 m!1233653))

(assert (=> b!1083219 m!1233653))

(assert (=> b!1083219 m!1233657))

(assert (=> b!1083226 m!1233649))

(assert (=> bm!80081 m!1233659))

(assert (=> b!1083220 m!1233649))

(assert (=> d!304675 m!1233659))

(assert (=> d!304675 m!1233509))

(declare-fun m!1233709 () Bool)

(assert (=> b!1083224 m!1233709))

(assert (=> b!1083217 m!1233653))

(assert (=> b!1083217 m!1233653))

(assert (=> b!1083217 m!1233657))

(assert (=> b!1082838 d!304675))

(declare-fun d!304677 () Bool)

(assert (=> d!304677 (= (matchR!1494 r!15766 s!10566) (matchRSpec!757 r!15766 s!10566))))

(declare-fun lt!362599 () Unit!15607)

(declare-fun choose!6880 (Regex!2958 List!10188) Unit!15607)

(assert (=> d!304677 (= lt!362599 (choose!6880 r!15766 s!10566))))

(assert (=> d!304677 (validRegex!1427 r!15766)))

(assert (=> d!304677 (= (mainMatchTheorem!757 r!15766 s!10566) lt!362599)))

(declare-fun bs!256407 () Bool)

(assert (= bs!256407 d!304677))

(assert (=> bs!256407 m!1233513))

(assert (=> bs!256407 m!1233511))

(declare-fun m!1233711 () Bool)

(assert (=> bs!256407 m!1233711))

(assert (=> bs!256407 m!1233509))

(assert (=> b!1082838 d!304677))

(declare-fun b!1083244 () Bool)

(declare-fun res!482056 () Bool)

(declare-fun e!684978 () Bool)

(assert (=> b!1083244 (=> (not res!482056) (not e!684978))))

(declare-fun call!80087 () Bool)

(assert (=> b!1083244 (= res!482056 (not call!80087))))

(declare-fun d!304679 () Bool)

(declare-fun e!684981 () Bool)

(assert (=> d!304679 e!684981))

(declare-fun c!182892 () Bool)

(assert (=> d!304679 (= c!182892 (is-EmptyExpr!2958 (removeUselessConcat!499 r!15766)))))

(declare-fun lt!362600 () Bool)

(declare-fun e!684979 () Bool)

(assert (=> d!304679 (= lt!362600 e!684979)))

(declare-fun c!182890 () Bool)

(assert (=> d!304679 (= c!182890 (isEmpty!6609 s!10566))))

(assert (=> d!304679 (validRegex!1427 (removeUselessConcat!499 r!15766))))

(assert (=> d!304679 (= (matchR!1494 (removeUselessConcat!499 r!15766) s!10566) lt!362600)))

(declare-fun b!1083245 () Bool)

(declare-fun res!482059 () Bool)

(declare-fun e!684980 () Bool)

(assert (=> b!1083245 (=> res!482059 e!684980)))

(assert (=> b!1083245 (= res!482059 e!684978)))

(declare-fun res!482055 () Bool)

(assert (=> b!1083245 (=> (not res!482055) (not e!684978))))

(assert (=> b!1083245 (= res!482055 lt!362600)))

(declare-fun b!1083246 () Bool)

(assert (=> b!1083246 (= e!684981 (= lt!362600 call!80087))))

(declare-fun b!1083247 () Bool)

(declare-fun res!482057 () Bool)

(assert (=> b!1083247 (=> (not res!482057) (not e!684978))))

(assert (=> b!1083247 (= res!482057 (isEmpty!6609 (tail!1557 s!10566)))))

(declare-fun b!1083252 () Bool)

(assert (=> b!1083252 (= e!684979 (matchR!1494 (derivativeStep!840 (removeUselessConcat!499 r!15766) (head!1995 s!10566)) (tail!1557 s!10566)))))

(declare-fun b!1083253 () Bool)

(declare-fun res!482060 () Bool)

(declare-fun e!684982 () Bool)

(assert (=> b!1083253 (=> res!482060 e!684982)))

(assert (=> b!1083253 (= res!482060 (not (isEmpty!6609 (tail!1557 s!10566))))))

(declare-fun b!1083254 () Bool)

(assert (=> b!1083254 (= e!684982 (not (= (head!1995 s!10566) (c!182793 (removeUselessConcat!499 r!15766)))))))

(declare-fun b!1083255 () Bool)

(declare-fun e!684977 () Bool)

(assert (=> b!1083255 (= e!684977 (not lt!362600))))

(declare-fun b!1083256 () Bool)

(declare-fun res!482061 () Bool)

(assert (=> b!1083256 (=> res!482061 e!684980)))

(assert (=> b!1083256 (= res!482061 (not (is-ElementMatch!2958 (removeUselessConcat!499 r!15766))))))

(assert (=> b!1083256 (= e!684977 e!684980)))

(declare-fun bm!80082 () Bool)

(assert (=> bm!80082 (= call!80087 (isEmpty!6609 s!10566))))

(declare-fun b!1083257 () Bool)

(declare-fun e!684983 () Bool)

(assert (=> b!1083257 (= e!684983 e!684982)))

(declare-fun res!482062 () Bool)

(assert (=> b!1083257 (=> res!482062 e!684982)))

(assert (=> b!1083257 (= res!482062 call!80087)))

(declare-fun b!1083258 () Bool)

(assert (=> b!1083258 (= e!684979 (nullable!1042 (removeUselessConcat!499 r!15766)))))

(declare-fun b!1083259 () Bool)

(assert (=> b!1083259 (= e!684980 e!684983)))

(declare-fun res!482058 () Bool)

(assert (=> b!1083259 (=> (not res!482058) (not e!684983))))

(assert (=> b!1083259 (= res!482058 (not lt!362600))))

(declare-fun b!1083260 () Bool)

(assert (=> b!1083260 (= e!684978 (= (head!1995 s!10566) (c!182793 (removeUselessConcat!499 r!15766))))))

(declare-fun b!1083261 () Bool)

(assert (=> b!1083261 (= e!684981 e!684977)))

(declare-fun c!182891 () Bool)

(assert (=> b!1083261 (= c!182891 (is-EmptyLang!2958 (removeUselessConcat!499 r!15766)))))

(assert (= (and d!304679 c!182890) b!1083258))

(assert (= (and d!304679 (not c!182890)) b!1083252))

(assert (= (and d!304679 c!182892) b!1083246))

(assert (= (and d!304679 (not c!182892)) b!1083261))

(assert (= (and b!1083261 c!182891) b!1083255))

(assert (= (and b!1083261 (not c!182891)) b!1083256))

(assert (= (and b!1083256 (not res!482061)) b!1083245))

(assert (= (and b!1083245 res!482055) b!1083244))

(assert (= (and b!1083244 res!482056) b!1083247))

(assert (= (and b!1083247 res!482057) b!1083260))

(assert (= (and b!1083245 (not res!482059)) b!1083259))

(assert (= (and b!1083259 res!482058) b!1083257))

(assert (= (and b!1083257 (not res!482062)) b!1083253))

(assert (= (and b!1083253 (not res!482060)) b!1083254))

(assert (= (or b!1083246 b!1083244 b!1083257) bm!80082))

(assert (=> b!1083252 m!1233649))

(assert (=> b!1083252 m!1233505))

(assert (=> b!1083252 m!1233649))

(declare-fun m!1233713 () Bool)

(assert (=> b!1083252 m!1233713))

(assert (=> b!1083252 m!1233653))

(assert (=> b!1083252 m!1233713))

(assert (=> b!1083252 m!1233653))

(declare-fun m!1233715 () Bool)

(assert (=> b!1083252 m!1233715))

(assert (=> b!1083253 m!1233653))

(assert (=> b!1083253 m!1233653))

(assert (=> b!1083253 m!1233657))

(assert (=> b!1083260 m!1233649))

(assert (=> bm!80082 m!1233659))

(assert (=> b!1083254 m!1233649))

(assert (=> d!304679 m!1233659))

(assert (=> d!304679 m!1233505))

(declare-fun m!1233717 () Bool)

(assert (=> d!304679 m!1233717))

(assert (=> b!1083258 m!1233505))

(declare-fun m!1233719 () Bool)

(assert (=> b!1083258 m!1233719))

(assert (=> b!1083247 m!1233653))

(assert (=> b!1083247 m!1233653))

(assert (=> b!1083247 m!1233657))

(assert (=> b!1082836 d!304679))

(declare-fun b!1083264 () Bool)

(declare-fun e!684993 () Regex!2958)

(declare-fun call!80091 () Regex!2958)

(assert (=> b!1083264 (= e!684993 call!80091)))

(declare-fun bm!80083 () Bool)

(declare-fun c!182897 () Bool)

(declare-fun c!182899 () Bool)

(declare-fun c!182898 () Bool)

(declare-fun c!182896 () Bool)

(assert (=> bm!80083 (= call!80091 (removeUselessConcat!499 (ite c!182896 (regTwo!6428 r!15766) (ite c!182898 (regOne!6428 r!15766) (ite c!182897 (regTwo!6428 r!15766) (ite c!182899 (regTwo!6429 r!15766) (reg!3287 r!15766)))))))))

(declare-fun b!1083265 () Bool)

(declare-fun e!684988 () Regex!2958)

(declare-fun call!80088 () Regex!2958)

(declare-fun call!80090 () Regex!2958)

(assert (=> b!1083265 (= e!684988 (Concat!4791 call!80088 call!80090))))

(declare-fun b!1083266 () Bool)

(declare-fun e!684990 () Regex!2958)

(declare-fun call!80089 () Regex!2958)

(assert (=> b!1083266 (= e!684990 (Union!2958 call!80088 call!80089))))

(declare-fun b!1083267 () Bool)

(assert (=> b!1083267 (= e!684988 e!684990)))

(assert (=> b!1083267 (= c!182899 (is-Union!2958 r!15766))))

(declare-fun bm!80084 () Bool)

(declare-fun call!80092 () Regex!2958)

(assert (=> bm!80084 (= call!80092 call!80091)))

(declare-fun b!1083268 () Bool)

(declare-fun e!684992 () Regex!2958)

(assert (=> b!1083268 (= e!684992 (Star!2958 call!80089))))

(declare-fun b!1083269 () Bool)

(declare-fun e!684989 () Regex!2958)

(assert (=> b!1083269 (= e!684989 call!80092)))

(declare-fun bm!80085 () Bool)

(assert (=> bm!80085 (= call!80090 call!80092)))

(declare-fun b!1083270 () Bool)

(assert (=> b!1083270 (= c!182897 (is-Concat!4791 r!15766))))

(assert (=> b!1083270 (= e!684989 e!684988)))

(declare-fun b!1083271 () Bool)

(declare-fun c!182895 () Bool)

(assert (=> b!1083271 (= c!182895 (is-Star!2958 r!15766))))

(assert (=> b!1083271 (= e!684990 e!684992)))

(declare-fun bm!80087 () Bool)

(assert (=> bm!80087 (= call!80088 (removeUselessConcat!499 (ite c!182897 (regOne!6428 r!15766) (regOne!6429 r!15766))))))

(declare-fun b!1083272 () Bool)

(assert (=> b!1083272 (= e!684992 r!15766)))

(declare-fun bm!80086 () Bool)

(assert (=> bm!80086 (= call!80089 call!80090)))

(declare-fun d!304681 () Bool)

(declare-fun e!684991 () Bool)

(assert (=> d!304681 e!684991))

(declare-fun res!482065 () Bool)

(assert (=> d!304681 (=> (not res!482065) (not e!684991))))

(declare-fun lt!362601 () Regex!2958)

(assert (=> d!304681 (= res!482065 (validRegex!1427 lt!362601))))

(assert (=> d!304681 (= lt!362601 e!684993)))

(assert (=> d!304681 (= c!182896 (and (is-Concat!4791 r!15766) (is-EmptyExpr!2958 (regOne!6428 r!15766))))))

(assert (=> d!304681 (validRegex!1427 r!15766)))

(assert (=> d!304681 (= (removeUselessConcat!499 r!15766) lt!362601)))

(declare-fun b!1083273 () Bool)

(assert (=> b!1083273 (= e!684993 e!684989)))

(assert (=> b!1083273 (= c!182898 (and (is-Concat!4791 r!15766) (is-EmptyExpr!2958 (regTwo!6428 r!15766))))))

(declare-fun b!1083274 () Bool)

(assert (=> b!1083274 (= e!684991 (= (nullable!1042 lt!362601) (nullable!1042 r!15766)))))

(assert (= (and d!304681 c!182896) b!1083264))

(assert (= (and d!304681 (not c!182896)) b!1083273))

(assert (= (and b!1083273 c!182898) b!1083269))

(assert (= (and b!1083273 (not c!182898)) b!1083270))

(assert (= (and b!1083270 c!182897) b!1083265))

(assert (= (and b!1083270 (not c!182897)) b!1083267))

(assert (= (and b!1083267 c!182899) b!1083266))

(assert (= (and b!1083267 (not c!182899)) b!1083271))

(assert (= (and b!1083271 c!182895) b!1083268))

(assert (= (and b!1083271 (not c!182895)) b!1083272))

(assert (= (or b!1083266 b!1083268) bm!80086))

(assert (= (or b!1083265 bm!80086) bm!80085))

(assert (= (or b!1083265 b!1083266) bm!80087))

(assert (= (or b!1083269 bm!80085) bm!80084))

(assert (= (or b!1083264 bm!80084) bm!80083))

(assert (= (and d!304681 res!482065) b!1083274))

(declare-fun m!1233721 () Bool)

(assert (=> bm!80083 m!1233721))

(declare-fun m!1233723 () Bool)

(assert (=> bm!80087 m!1233723))

(declare-fun m!1233725 () Bool)

(assert (=> d!304681 m!1233725))

(assert (=> d!304681 m!1233509))

(declare-fun m!1233727 () Bool)

(assert (=> b!1083274 m!1233727))

(assert (=> b!1083274 m!1233709))

(assert (=> b!1082836 d!304681))

(declare-fun bm!80098 () Bool)

(declare-fun call!80105 () Bool)

(declare-fun call!80104 () Bool)

(assert (=> bm!80098 (= call!80105 call!80104)))

(declare-fun b!1083303 () Bool)

(declare-fun e!685017 () Bool)

(declare-fun e!685015 () Bool)

(assert (=> b!1083303 (= e!685017 e!685015)))

(declare-fun c!182905 () Bool)

(assert (=> b!1083303 (= c!182905 (is-Star!2958 r!15766))))

(declare-fun b!1083304 () Bool)

(declare-fun res!482088 () Bool)

(declare-fun e!685012 () Bool)

(assert (=> b!1083304 (=> res!482088 e!685012)))

(assert (=> b!1083304 (= res!482088 (not (is-Concat!4791 r!15766)))))

(declare-fun e!685013 () Bool)

(assert (=> b!1083304 (= e!685013 e!685012)))

(declare-fun b!1083305 () Bool)

(declare-fun e!685016 () Bool)

(assert (=> b!1083305 (= e!685015 e!685016)))

(declare-fun res!482090 () Bool)

(assert (=> b!1083305 (= res!482090 (not (nullable!1042 (reg!3287 r!15766))))))

(assert (=> b!1083305 (=> (not res!482090) (not e!685016))))

(declare-fun bm!80099 () Bool)

(declare-fun call!80103 () Bool)

(declare-fun c!182904 () Bool)

(assert (=> bm!80099 (= call!80103 (validRegex!1427 (ite c!182904 (regTwo!6429 r!15766) (regTwo!6428 r!15766))))))

(declare-fun b!1083306 () Bool)

(declare-fun e!685018 () Bool)

(assert (=> b!1083306 (= e!685012 e!685018)))

(declare-fun res!482087 () Bool)

(assert (=> b!1083306 (=> (not res!482087) (not e!685018))))

(assert (=> b!1083306 (= res!482087 call!80105)))

(declare-fun b!1083307 () Bool)

(declare-fun e!685014 () Bool)

(assert (=> b!1083307 (= e!685014 call!80103)))

(declare-fun b!1083308 () Bool)

(assert (=> b!1083308 (= e!685015 e!685013)))

(assert (=> b!1083308 (= c!182904 (is-Union!2958 r!15766))))

(declare-fun d!304683 () Bool)

(declare-fun res!482086 () Bool)

(assert (=> d!304683 (=> res!482086 e!685017)))

(assert (=> d!304683 (= res!482086 (is-ElementMatch!2958 r!15766))))

(assert (=> d!304683 (= (validRegex!1427 r!15766) e!685017)))

(declare-fun b!1083309 () Bool)

(assert (=> b!1083309 (= e!685016 call!80104)))

(declare-fun bm!80100 () Bool)

(assert (=> bm!80100 (= call!80104 (validRegex!1427 (ite c!182905 (reg!3287 r!15766) (ite c!182904 (regOne!6429 r!15766) (regOne!6428 r!15766)))))))

(declare-fun b!1083310 () Bool)

(declare-fun res!482089 () Bool)

(assert (=> b!1083310 (=> (not res!482089) (not e!685014))))

(assert (=> b!1083310 (= res!482089 call!80105)))

(assert (=> b!1083310 (= e!685013 e!685014)))

(declare-fun b!1083311 () Bool)

(assert (=> b!1083311 (= e!685018 call!80103)))

(assert (= (and d!304683 (not res!482086)) b!1083303))

(assert (= (and b!1083303 c!182905) b!1083305))

(assert (= (and b!1083303 (not c!182905)) b!1083308))

(assert (= (and b!1083305 res!482090) b!1083309))

(assert (= (and b!1083308 c!182904) b!1083310))

(assert (= (and b!1083308 (not c!182904)) b!1083304))

(assert (= (and b!1083310 res!482089) b!1083307))

(assert (= (and b!1083304 (not res!482088)) b!1083306))

(assert (= (and b!1083306 res!482087) b!1083311))

(assert (= (or b!1083307 b!1083311) bm!80099))

(assert (= (or b!1083310 b!1083306) bm!80098))

(assert (= (or b!1083309 bm!80098) bm!80100))

(assert (=> b!1083305 m!1233627))

(declare-fun m!1233729 () Bool)

(assert (=> bm!80099 m!1233729))

(declare-fun m!1233731 () Bool)

(assert (=> bm!80100 m!1233731))

(assert (=> start!92068 d!304683))

(declare-fun b!1083335 () Bool)

(declare-fun e!685028 () Bool)

(declare-fun tp!323747 () Bool)

(assert (=> b!1083335 (= e!685028 tp!323747)))

(declare-fun b!1083336 () Bool)

(declare-fun tp!323743 () Bool)

(declare-fun tp!323746 () Bool)

(assert (=> b!1083336 (= e!685028 (and tp!323743 tp!323746))))

(assert (=> b!1082839 (= tp!323710 e!685028)))

(declare-fun b!1083333 () Bool)

(assert (=> b!1083333 (= e!685028 tp_is_empty!5559)))

(declare-fun b!1083334 () Bool)

(declare-fun tp!323744 () Bool)

(declare-fun tp!323745 () Bool)

(assert (=> b!1083334 (= e!685028 (and tp!323744 tp!323745))))

(assert (= (and b!1082839 (is-ElementMatch!2958 (regOne!6429 r!15766))) b!1083333))

(assert (= (and b!1082839 (is-Concat!4791 (regOne!6429 r!15766))) b!1083334))

(assert (= (and b!1082839 (is-Star!2958 (regOne!6429 r!15766))) b!1083335))

(assert (= (and b!1082839 (is-Union!2958 (regOne!6429 r!15766))) b!1083336))

(declare-fun b!1083339 () Bool)

(declare-fun e!685029 () Bool)

(declare-fun tp!323752 () Bool)

(assert (=> b!1083339 (= e!685029 tp!323752)))

(declare-fun b!1083340 () Bool)

(declare-fun tp!323748 () Bool)

(declare-fun tp!323751 () Bool)

(assert (=> b!1083340 (= e!685029 (and tp!323748 tp!323751))))

(assert (=> b!1082839 (= tp!323714 e!685029)))

(declare-fun b!1083337 () Bool)

(assert (=> b!1083337 (= e!685029 tp_is_empty!5559)))

(declare-fun b!1083338 () Bool)

(declare-fun tp!323749 () Bool)

(declare-fun tp!323750 () Bool)

(assert (=> b!1083338 (= e!685029 (and tp!323749 tp!323750))))

(assert (= (and b!1082839 (is-ElementMatch!2958 (regTwo!6429 r!15766))) b!1083337))

(assert (= (and b!1082839 (is-Concat!4791 (regTwo!6429 r!15766))) b!1083338))

(assert (= (and b!1082839 (is-Star!2958 (regTwo!6429 r!15766))) b!1083339))

(assert (= (and b!1082839 (is-Union!2958 (regTwo!6429 r!15766))) b!1083340))

(declare-fun b!1083345 () Bool)

(declare-fun e!685032 () Bool)

(declare-fun tp!323755 () Bool)

(assert (=> b!1083345 (= e!685032 (and tp_is_empty!5559 tp!323755))))

(assert (=> b!1082833 (= tp!323711 e!685032)))

(assert (= (and b!1082833 (is-Cons!10172 (t!101234 s!10566))) b!1083345))

(declare-fun b!1083348 () Bool)

(declare-fun e!685033 () Bool)

(declare-fun tp!323760 () Bool)

(assert (=> b!1083348 (= e!685033 tp!323760)))

(declare-fun b!1083349 () Bool)

(declare-fun tp!323756 () Bool)

(declare-fun tp!323759 () Bool)

(assert (=> b!1083349 (= e!685033 (and tp!323756 tp!323759))))

(assert (=> b!1082837 (= tp!323709 e!685033)))

(declare-fun b!1083346 () Bool)

(assert (=> b!1083346 (= e!685033 tp_is_empty!5559)))

(declare-fun b!1083347 () Bool)

(declare-fun tp!323757 () Bool)

(declare-fun tp!323758 () Bool)

(assert (=> b!1083347 (= e!685033 (and tp!323757 tp!323758))))

(assert (= (and b!1082837 (is-ElementMatch!2958 (regOne!6428 r!15766))) b!1083346))

(assert (= (and b!1082837 (is-Concat!4791 (regOne!6428 r!15766))) b!1083347))

(assert (= (and b!1082837 (is-Star!2958 (regOne!6428 r!15766))) b!1083348))

(assert (= (and b!1082837 (is-Union!2958 (regOne!6428 r!15766))) b!1083349))

(declare-fun b!1083352 () Bool)

(declare-fun e!685034 () Bool)

(declare-fun tp!323765 () Bool)

(assert (=> b!1083352 (= e!685034 tp!323765)))

(declare-fun b!1083353 () Bool)

(declare-fun tp!323761 () Bool)

(declare-fun tp!323764 () Bool)

(assert (=> b!1083353 (= e!685034 (and tp!323761 tp!323764))))

(assert (=> b!1082837 (= tp!323712 e!685034)))

(declare-fun b!1083350 () Bool)

(assert (=> b!1083350 (= e!685034 tp_is_empty!5559)))

(declare-fun b!1083351 () Bool)

(declare-fun tp!323762 () Bool)

(declare-fun tp!323763 () Bool)

(assert (=> b!1083351 (= e!685034 (and tp!323762 tp!323763))))

(assert (= (and b!1082837 (is-ElementMatch!2958 (regTwo!6428 r!15766))) b!1083350))

(assert (= (and b!1082837 (is-Concat!4791 (regTwo!6428 r!15766))) b!1083351))

(assert (= (and b!1082837 (is-Star!2958 (regTwo!6428 r!15766))) b!1083352))

(assert (= (and b!1082837 (is-Union!2958 (regTwo!6428 r!15766))) b!1083353))

(declare-fun b!1083356 () Bool)

(declare-fun e!685035 () Bool)

(declare-fun tp!323770 () Bool)

(assert (=> b!1083356 (= e!685035 tp!323770)))

(declare-fun b!1083357 () Bool)

(declare-fun tp!323766 () Bool)

(declare-fun tp!323769 () Bool)

(assert (=> b!1083357 (= e!685035 (and tp!323766 tp!323769))))

(assert (=> b!1082835 (= tp!323713 e!685035)))

(declare-fun b!1083354 () Bool)

(assert (=> b!1083354 (= e!685035 tp_is_empty!5559)))

(declare-fun b!1083355 () Bool)

(declare-fun tp!323767 () Bool)

(declare-fun tp!323768 () Bool)

(assert (=> b!1083355 (= e!685035 (and tp!323767 tp!323768))))

(assert (= (and b!1082835 (is-ElementMatch!2958 (reg!3287 r!15766))) b!1083354))

(assert (= (and b!1082835 (is-Concat!4791 (reg!3287 r!15766))) b!1083355))

(assert (= (and b!1082835 (is-Star!2958 (reg!3287 r!15766))) b!1083356))

(assert (= (and b!1082835 (is-Union!2958 (reg!3287 r!15766))) b!1083357))

(push 1)

(assert (not b!1083274))

(assert (not b!1083224))

(assert (not b!1083351))

(assert (not d!304675))

(assert (not b!1083355))

(assert (not d!304677))

(assert (not b!1083258))

(assert (not b!1083189))

(assert (not b!1083116))

(assert (not b!1083356))

(assert (not d!304643))

(assert (not b!1083124))

(assert (not b!1083115))

(assert (not b!1082938))

(assert (not b!1082937))

(assert (not b!1083220))

(assert (not b!1083247))

(assert (not d!304679))

(assert (not d!304639))

(assert (not bm!80099))

(assert (not bm!80078))

(assert (not b!1083357))

(assert (not b!1083117))

(assert (not b!1083218))

(assert (not b!1083335))

(assert (not b!1083260))

(assert (not d!304635))

(assert (not b!1083345))

(assert (not d!304659))

(assert (not bm!80082))

(assert (not bm!80081))

(assert (not b!1083339))

(assert (not b!1083122))

(assert (not bm!80065))

(assert (not b!1083348))

(assert (not b!1083334))

(assert (not b!1083353))

(assert (not b!1083349))

(assert (not b!1083340))

(assert (not b!1083338))

(assert (not d!304633))

(assert (not b!1082933))

(assert (not bm!80100))

(assert tp_is_empty!5559)

(assert (not b!1082935))

(assert (not b!1083252))

(assert (not b!1083219))

(assert (not b!1083118))

(assert (not bm!80087))

(assert (not b!1083253))

(assert (not b!1082936))

(assert (not b!1083336))

(assert (not b!1083217))

(assert (not b!1083196))

(assert (not b!1083347))

(assert (not b!1082940))

(assert (not d!304681))

(assert (not b!1083352))

(assert (not b!1083254))

(assert (not b!1083058))

(assert (not d!304649))

(assert (not bm!80073))

(assert (not b!1083305))

(assert (not bm!80079))

(assert (not bm!80083))

(assert (not d!304637))

(assert (not bm!80061))

(assert (not b!1083226))

(assert (not d!304661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

