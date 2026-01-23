; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!80844 () Bool)

(assert start!80844)

(declare-fun b!897910 () Bool)

(assert (=> b!897910 true))

(assert (=> b!897910 true))

(assert (=> b!897910 true))

(declare-fun lambda!27946 () Int)

(declare-fun lambda!27945 () Int)

(assert (=> b!897910 (not (= lambda!27946 lambda!27945))))

(assert (=> b!897910 true))

(assert (=> b!897910 true))

(assert (=> b!897910 true))

(declare-fun b!897900 () Bool)

(declare-fun res!408254 () Bool)

(declare-fun e!587481 () Bool)

(assert (=> b!897900 (=> res!408254 e!587481)))

(declare-datatypes ((C!5274 0))(
  ( (C!5275 (val!2885 Int)) )
))
(declare-datatypes ((Regex!2352 0))(
  ( (ElementMatch!2352 (c!145341 C!5274)) (Concat!4185 (regOne!5216 Regex!2352) (regTwo!5216 Regex!2352)) (EmptyExpr!2352) (Star!2352 (reg!2681 Regex!2352)) (EmptyLang!2352) (Union!2352 (regOne!5217 Regex!2352) (regTwo!5217 Regex!2352)) )
))
(declare-fun lt!333783 () Regex!2352)

(declare-datatypes ((List!9582 0))(
  ( (Nil!9566) (Cons!9566 (h!14967 C!5274) (t!100628 List!9582)) )
))
(declare-datatypes ((tuple2!10706 0))(
  ( (tuple2!10707 (_1!6179 List!9582) (_2!6179 List!9582)) )
))
(declare-fun lt!333789 () tuple2!10706)

(declare-fun matchR!890 (Regex!2352 List!9582) Bool)

(assert (=> b!897900 (= res!408254 (not (matchR!890 lt!333783 (_2!6179 lt!333789))))))

(declare-fun b!897901 () Bool)

(declare-fun e!587479 () Bool)

(declare-fun e!587480 () Bool)

(assert (=> b!897901 (= e!587479 (not e!587480))))

(declare-fun res!408253 () Bool)

(assert (=> b!897901 (=> res!408253 e!587480)))

(declare-fun lt!333782 () Bool)

(declare-fun r!15766 () Regex!2352)

(assert (=> b!897901 (= res!408253 (or (not lt!333782) (and (is-Concat!4185 r!15766) (is-EmptyExpr!2352 (regOne!5216 r!15766))) (and (is-Concat!4185 r!15766) (is-EmptyExpr!2352 (regTwo!5216 r!15766))) (is-Concat!4185 r!15766) (is-Union!2352 r!15766) (not (is-Star!2352 r!15766))))))

(declare-fun s!10566 () List!9582)

(declare-fun matchRSpec!153 (Regex!2352 List!9582) Bool)

(assert (=> b!897901 (= lt!333782 (matchRSpec!153 r!15766 s!10566))))

(assert (=> b!897901 (= lt!333782 (matchR!890 r!15766 s!10566))))

(declare-datatypes ((Unit!14283 0))(
  ( (Unit!14284) )
))
(declare-fun lt!333779 () Unit!14283)

(declare-fun mainMatchTheorem!153 (Regex!2352 List!9582) Unit!14283)

(assert (=> b!897901 (= lt!333779 (mainMatchTheorem!153 r!15766 s!10566))))

(declare-fun b!897902 () Bool)

(declare-fun res!408250 () Bool)

(declare-fun e!587483 () Bool)

(assert (=> b!897902 (=> res!408250 e!587483)))

(declare-fun lt!333784 () Bool)

(assert (=> b!897902 (= res!408250 (not lt!333784))))

(declare-fun b!897903 () Bool)

(declare-fun e!587476 () Bool)

(declare-fun tp!282065 () Bool)

(assert (=> b!897903 (= e!587476 tp!282065)))

(declare-fun b!897904 () Bool)

(declare-fun e!587477 () Bool)

(declare-fun tp_is_empty!4347 () Bool)

(declare-fun tp!282061 () Bool)

(assert (=> b!897904 (= e!587477 (and tp_is_empty!4347 tp!282061))))

(declare-fun b!897905 () Bool)

(declare-fun res!408256 () Bool)

(declare-fun e!587482 () Bool)

(assert (=> b!897905 (=> res!408256 e!587482)))

(declare-fun ++!2496 (List!9582 List!9582) List!9582)

(assert (=> b!897905 (= res!408256 (not (= (++!2496 (_1!6179 lt!333789) (_2!6179 lt!333789)) s!10566)))))

(declare-fun b!897906 () Bool)

(assert (=> b!897906 (= e!587483 e!587481)))

(declare-fun res!408251 () Bool)

(assert (=> b!897906 (=> res!408251 e!587481)))

(assert (=> b!897906 (= res!408251 (not (matchR!890 (reg!2681 r!15766) (_1!6179 lt!333789))))))

(declare-datatypes ((Option!1995 0))(
  ( (None!1994) (Some!1994 (v!19411 tuple2!10706)) )
))
(declare-fun lt!333780 () Option!1995)

(declare-fun get!3027 (Option!1995) tuple2!10706)

(assert (=> b!897906 (= lt!333789 (get!3027 lt!333780))))

(declare-fun b!897907 () Bool)

(declare-fun e!587478 () Bool)

(assert (=> b!897907 (= e!587482 e!587478)))

(declare-fun res!408252 () Bool)

(assert (=> b!897907 (=> res!408252 e!587478)))

(declare-fun lt!333785 () Int)

(declare-fun lt!333788 () Int)

(declare-fun lt!333787 () Int)

(assert (=> b!897907 (= res!408252 (or (not (= (+ lt!333785 lt!333787) lt!333788)) (not (= lt!333785 0))))))

(declare-fun size!7857 (List!9582) Int)

(assert (=> b!897907 (= lt!333785 (size!7857 (_1!6179 lt!333789)))))

(declare-fun res!408257 () Bool)

(assert (=> start!80844 (=> (not res!408257) (not e!587479))))

(declare-fun validRegex!821 (Regex!2352) Bool)

(assert (=> start!80844 (= res!408257 (validRegex!821 r!15766))))

(assert (=> start!80844 e!587479))

(assert (=> start!80844 e!587476))

(assert (=> start!80844 e!587477))

(declare-fun b!897908 () Bool)

(assert (=> b!897908 (= e!587481 e!587482)))

(declare-fun res!408255 () Bool)

(assert (=> b!897908 (=> res!408255 e!587482)))

(assert (=> b!897908 (= res!408255 (not (= lt!333787 lt!333788)))))

(assert (=> b!897908 (= lt!333788 (size!7857 s!10566))))

(assert (=> b!897908 (= lt!333787 (size!7857 (_2!6179 lt!333789)))))

(declare-fun removeUselessConcat!65 (Regex!2352) Regex!2352)

(assert (=> b!897908 (matchR!890 (removeUselessConcat!65 (reg!2681 r!15766)) (_1!6179 lt!333789))))

(declare-fun lt!333781 () Unit!14283)

(declare-fun lemmaRemoveUselessConcatSound!57 (Regex!2352 List!9582) Unit!14283)

(assert (=> b!897908 (= lt!333781 (lemmaRemoveUselessConcatSound!57 (reg!2681 r!15766) (_1!6179 lt!333789)))))

(declare-fun b!897909 () Bool)

(declare-fun tp!282064 () Bool)

(declare-fun tp!282062 () Bool)

(assert (=> b!897909 (= e!587476 (and tp!282064 tp!282062))))

(assert (=> b!897910 (= e!587480 e!587483)))

(declare-fun res!408258 () Bool)

(assert (=> b!897910 (=> res!408258 e!587483)))

(declare-fun isEmpty!5761 (List!9582) Bool)

(assert (=> b!897910 (= res!408258 (isEmpty!5761 s!10566))))

(declare-fun Exists!129 (Int) Bool)

(assert (=> b!897910 (= (Exists!129 lambda!27945) (Exists!129 lambda!27946))))

(declare-fun lt!333786 () Unit!14283)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!21 (Regex!2352 List!9582) Unit!14283)

(assert (=> b!897910 (= lt!333786 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!21 (reg!2681 r!15766) s!10566))))

(assert (=> b!897910 (= lt!333784 (Exists!129 lambda!27945))))

(declare-fun isDefined!1637 (Option!1995) Bool)

(assert (=> b!897910 (= lt!333784 (isDefined!1637 lt!333780))))

(declare-fun findConcatSeparation!101 (Regex!2352 Regex!2352 List!9582 List!9582 List!9582) Option!1995)

(assert (=> b!897910 (= lt!333780 (findConcatSeparation!101 (reg!2681 r!15766) lt!333783 Nil!9566 s!10566 s!10566))))

(declare-fun lt!333778 () Unit!14283)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!101 (Regex!2352 Regex!2352 List!9582) Unit!14283)

(assert (=> b!897910 (= lt!333778 (lemmaFindConcatSeparationEquivalentToExists!101 (reg!2681 r!15766) lt!333783 s!10566))))

(assert (=> b!897910 (= lt!333783 (Star!2352 (reg!2681 r!15766)))))

(declare-fun b!897911 () Bool)

(assert (=> b!897911 (= e!587478 (validRegex!821 (reg!2681 r!15766)))))

(declare-fun b!897912 () Bool)

(declare-fun res!408249 () Bool)

(assert (=> b!897912 (=> res!408249 e!587478)))

(assert (=> b!897912 (= res!408249 (not (isEmpty!5761 (_1!6179 lt!333789))))))

(declare-fun b!897913 () Bool)

(assert (=> b!897913 (= e!587476 tp_is_empty!4347)))

(declare-fun b!897914 () Bool)

(declare-fun tp!282066 () Bool)

(declare-fun tp!282063 () Bool)

(assert (=> b!897914 (= e!587476 (and tp!282066 tp!282063))))

(assert (= (and start!80844 res!408257) b!897901))

(assert (= (and b!897901 (not res!408253)) b!897910))

(assert (= (and b!897910 (not res!408258)) b!897902))

(assert (= (and b!897902 (not res!408250)) b!897906))

(assert (= (and b!897906 (not res!408251)) b!897900))

(assert (= (and b!897900 (not res!408254)) b!897908))

(assert (= (and b!897908 (not res!408255)) b!897905))

(assert (= (and b!897905 (not res!408256)) b!897907))

(assert (= (and b!897907 (not res!408252)) b!897912))

(assert (= (and b!897912 (not res!408249)) b!897911))

(assert (= (and start!80844 (is-ElementMatch!2352 r!15766)) b!897913))

(assert (= (and start!80844 (is-Concat!4185 r!15766)) b!897909))

(assert (= (and start!80844 (is-Star!2352 r!15766)) b!897903))

(assert (= (and start!80844 (is-Union!2352 r!15766)) b!897914))

(assert (= (and start!80844 (is-Cons!9566 s!10566)) b!897904))

(declare-fun m!1136853 () Bool)

(assert (=> b!897908 m!1136853))

(declare-fun m!1136855 () Bool)

(assert (=> b!897908 m!1136855))

(assert (=> b!897908 m!1136853))

(declare-fun m!1136857 () Bool)

(assert (=> b!897908 m!1136857))

(declare-fun m!1136859 () Bool)

(assert (=> b!897908 m!1136859))

(declare-fun m!1136861 () Bool)

(assert (=> b!897908 m!1136861))

(declare-fun m!1136863 () Bool)

(assert (=> b!897912 m!1136863))

(declare-fun m!1136865 () Bool)

(assert (=> start!80844 m!1136865))

(declare-fun m!1136867 () Bool)

(assert (=> b!897901 m!1136867))

(declare-fun m!1136869 () Bool)

(assert (=> b!897901 m!1136869))

(declare-fun m!1136871 () Bool)

(assert (=> b!897901 m!1136871))

(declare-fun m!1136873 () Bool)

(assert (=> b!897900 m!1136873))

(declare-fun m!1136875 () Bool)

(assert (=> b!897905 m!1136875))

(declare-fun m!1136877 () Bool)

(assert (=> b!897911 m!1136877))

(declare-fun m!1136879 () Bool)

(assert (=> b!897910 m!1136879))

(declare-fun m!1136881 () Bool)

(assert (=> b!897910 m!1136881))

(declare-fun m!1136883 () Bool)

(assert (=> b!897910 m!1136883))

(declare-fun m!1136885 () Bool)

(assert (=> b!897910 m!1136885))

(declare-fun m!1136887 () Bool)

(assert (=> b!897910 m!1136887))

(declare-fun m!1136889 () Bool)

(assert (=> b!897910 m!1136889))

(declare-fun m!1136891 () Bool)

(assert (=> b!897910 m!1136891))

(assert (=> b!897910 m!1136883))

(declare-fun m!1136893 () Bool)

(assert (=> b!897906 m!1136893))

(declare-fun m!1136895 () Bool)

(assert (=> b!897906 m!1136895))

(declare-fun m!1136897 () Bool)

(assert (=> b!897907 m!1136897))

(push 1)

(assert (not b!897909))

(assert (not start!80844))

(assert (not b!897907))

(assert (not b!897901))

(assert (not b!897905))

(assert tp_is_empty!4347)

(assert (not b!897911))

(assert (not b!897910))

(assert (not b!897903))

(assert (not b!897900))

(assert (not b!897904))

(assert (not b!897914))

(assert (not b!897912))

(assert (not b!897908))

(assert (not b!897906))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!235072 () Bool)

(declare-fun b!898051 () Bool)

(assert (= bs!235072 (and b!898051 b!897910)))

(declare-fun lambda!27959 () Int)

(assert (=> bs!235072 (not (= lambda!27959 lambda!27945))))

(assert (=> bs!235072 (= (= r!15766 lt!333783) (= lambda!27959 lambda!27946))))

(assert (=> b!898051 true))

(assert (=> b!898051 true))

(declare-fun bs!235073 () Bool)

(declare-fun b!898046 () Bool)

(assert (= bs!235073 (and b!898046 b!897910)))

(declare-fun lambda!27960 () Int)

(assert (=> bs!235073 (not (= lambda!27960 lambda!27945))))

(assert (=> bs!235073 (not (= lambda!27960 lambda!27946))))

(declare-fun bs!235074 () Bool)

(assert (= bs!235074 (and b!898046 b!898051)))

(assert (=> bs!235074 (not (= lambda!27960 lambda!27959))))

(assert (=> b!898046 true))

(assert (=> b!898046 true))

(declare-fun b!898042 () Bool)

(declare-fun e!587549 () Bool)

(declare-fun e!587551 () Bool)

(assert (=> b!898042 (= e!587549 e!587551)))

(declare-fun res!408336 () Bool)

(assert (=> b!898042 (= res!408336 (matchRSpec!153 (regOne!5217 r!15766) s!10566))))

(assert (=> b!898042 (=> res!408336 e!587551)))

(declare-fun b!898043 () Bool)

(declare-fun e!587546 () Bool)

(assert (=> b!898043 (= e!587549 e!587546)))

(declare-fun c!145358 () Bool)

(assert (=> b!898043 (= c!145358 (is-Star!2352 r!15766))))

(declare-fun b!898044 () Bool)

(declare-fun res!408337 () Bool)

(declare-fun e!587550 () Bool)

(assert (=> b!898044 (=> res!408337 e!587550)))

(declare-fun call!53388 () Bool)

(assert (=> b!898044 (= res!408337 call!53388)))

(assert (=> b!898044 (= e!587546 e!587550)))

(declare-fun call!53389 () Bool)

(assert (=> b!898046 (= e!587546 call!53389)))

(declare-fun b!898047 () Bool)

(declare-fun e!587548 () Bool)

(assert (=> b!898047 (= e!587548 call!53388)))

(declare-fun b!898048 () Bool)

(declare-fun c!145360 () Bool)

(assert (=> b!898048 (= c!145360 (is-ElementMatch!2352 r!15766))))

(declare-fun e!587552 () Bool)

(declare-fun e!587547 () Bool)

(assert (=> b!898048 (= e!587552 e!587547)))

(declare-fun b!898049 () Bool)

(assert (=> b!898049 (= e!587548 e!587552)))

(declare-fun res!408335 () Bool)

(assert (=> b!898049 (= res!408335 (not (is-EmptyLang!2352 r!15766)))))

(assert (=> b!898049 (=> (not res!408335) (not e!587552))))

(declare-fun bm!53383 () Bool)

(assert (=> bm!53383 (= call!53388 (isEmpty!5761 s!10566))))

(declare-fun b!898050 () Bool)

(assert (=> b!898050 (= e!587547 (= s!10566 (Cons!9566 (c!145341 r!15766) Nil!9566)))))

(assert (=> b!898051 (= e!587550 call!53389)))

(declare-fun d!277966 () Bool)

(declare-fun c!145357 () Bool)

(assert (=> d!277966 (= c!145357 (is-EmptyExpr!2352 r!15766))))

(assert (=> d!277966 (= (matchRSpec!153 r!15766 s!10566) e!587548)))

(declare-fun b!898045 () Bool)

(assert (=> b!898045 (= e!587551 (matchRSpec!153 (regTwo!5217 r!15766) s!10566))))

(declare-fun b!898052 () Bool)

(declare-fun c!145359 () Bool)

(assert (=> b!898052 (= c!145359 (is-Union!2352 r!15766))))

(assert (=> b!898052 (= e!587547 e!587549)))

(declare-fun bm!53384 () Bool)

(assert (=> bm!53384 (= call!53389 (Exists!129 (ite c!145358 lambda!27959 lambda!27960)))))

(assert (= (and d!277966 c!145357) b!898047))

(assert (= (and d!277966 (not c!145357)) b!898049))

(assert (= (and b!898049 res!408335) b!898048))

(assert (= (and b!898048 c!145360) b!898050))

(assert (= (and b!898048 (not c!145360)) b!898052))

(assert (= (and b!898052 c!145359) b!898042))

(assert (= (and b!898052 (not c!145359)) b!898043))

(assert (= (and b!898042 (not res!408336)) b!898045))

(assert (= (and b!898043 c!145358) b!898044))

(assert (= (and b!898043 (not c!145358)) b!898046))

(assert (= (and b!898044 (not res!408337)) b!898051))

(assert (= (or b!898051 b!898046) bm!53384))

(assert (= (or b!898047 b!898044) bm!53383))

(declare-fun m!1136945 () Bool)

(assert (=> b!898042 m!1136945))

(assert (=> bm!53383 m!1136891))

(declare-fun m!1136947 () Bool)

(assert (=> b!898045 m!1136947))

(declare-fun m!1136949 () Bool)

(assert (=> bm!53384 m!1136949))

(assert (=> b!897901 d!277966))

(declare-fun b!898095 () Bool)

(declare-fun e!587579 () Bool)

(declare-fun e!587578 () Bool)

(assert (=> b!898095 (= e!587579 e!587578)))

(declare-fun res!408368 () Bool)

(assert (=> b!898095 (=> res!408368 e!587578)))

(declare-fun call!53395 () Bool)

(assert (=> b!898095 (= res!408368 call!53395)))

(declare-fun b!898096 () Bool)

(declare-fun head!1588 (List!9582) C!5274)

(assert (=> b!898096 (= e!587578 (not (= (head!1588 s!10566) (c!145341 r!15766))))))

(declare-fun b!898097 () Bool)

(declare-fun e!587577 () Bool)

(assert (=> b!898097 (= e!587577 e!587579)))

(declare-fun res!408366 () Bool)

(assert (=> b!898097 (=> (not res!408366) (not e!587579))))

(declare-fun lt!333831 () Bool)

(assert (=> b!898097 (= res!408366 (not lt!333831))))

(declare-fun d!277968 () Bool)

(declare-fun e!587574 () Bool)

(assert (=> d!277968 e!587574))

(declare-fun c!145371 () Bool)

(assert (=> d!277968 (= c!145371 (is-EmptyExpr!2352 r!15766))))

(declare-fun e!587575 () Bool)

(assert (=> d!277968 (= lt!333831 e!587575)))

(declare-fun c!145372 () Bool)

(assert (=> d!277968 (= c!145372 (isEmpty!5761 s!10566))))

(assert (=> d!277968 (validRegex!821 r!15766)))

(assert (=> d!277968 (= (matchR!890 r!15766 s!10566) lt!333831)))

(declare-fun b!898098 () Bool)

(declare-fun e!587576 () Bool)

(assert (=> b!898098 (= e!587576 (not lt!333831))))

(declare-fun b!898099 () Bool)

(assert (=> b!898099 (= e!587574 e!587576)))

(declare-fun c!145370 () Bool)

(assert (=> b!898099 (= c!145370 (is-EmptyLang!2352 r!15766))))

(declare-fun b!898100 () Bool)

(declare-fun res!408363 () Bool)

(declare-fun e!587580 () Bool)

(assert (=> b!898100 (=> (not res!408363) (not e!587580))))

(assert (=> b!898100 (= res!408363 (not call!53395))))

(declare-fun bm!53390 () Bool)

(assert (=> bm!53390 (= call!53395 (isEmpty!5761 s!10566))))

(declare-fun b!898101 () Bool)

(assert (=> b!898101 (= e!587574 (= lt!333831 call!53395))))

(declare-fun b!898102 () Bool)

(declare-fun res!408367 () Bool)

(assert (=> b!898102 (=> res!408367 e!587577)))

(assert (=> b!898102 (= res!408367 e!587580)))

(declare-fun res!408365 () Bool)

(assert (=> b!898102 (=> (not res!408365) (not e!587580))))

(assert (=> b!898102 (= res!408365 lt!333831)))

(declare-fun b!898103 () Bool)

(declare-fun derivativeStep!435 (Regex!2352 C!5274) Regex!2352)

(declare-fun tail!1150 (List!9582) List!9582)

(assert (=> b!898103 (= e!587575 (matchR!890 (derivativeStep!435 r!15766 (head!1588 s!10566)) (tail!1150 s!10566)))))

(declare-fun b!898104 () Bool)

(declare-fun res!408364 () Bool)

(assert (=> b!898104 (=> res!408364 e!587577)))

(assert (=> b!898104 (= res!408364 (not (is-ElementMatch!2352 r!15766)))))

(assert (=> b!898104 (= e!587576 e!587577)))

(declare-fun b!898105 () Bool)

(declare-fun nullable!623 (Regex!2352) Bool)

(assert (=> b!898105 (= e!587575 (nullable!623 r!15766))))

(declare-fun b!898106 () Bool)

(assert (=> b!898106 (= e!587580 (= (head!1588 s!10566) (c!145341 r!15766)))))

(declare-fun b!898107 () Bool)

(declare-fun res!408362 () Bool)

(assert (=> b!898107 (=> (not res!408362) (not e!587580))))

(assert (=> b!898107 (= res!408362 (isEmpty!5761 (tail!1150 s!10566)))))

(declare-fun b!898108 () Bool)

(declare-fun res!408369 () Bool)

(assert (=> b!898108 (=> res!408369 e!587578)))

(assert (=> b!898108 (= res!408369 (not (isEmpty!5761 (tail!1150 s!10566))))))

(assert (= (and d!277968 c!145372) b!898105))

(assert (= (and d!277968 (not c!145372)) b!898103))

(assert (= (and d!277968 c!145371) b!898101))

(assert (= (and d!277968 (not c!145371)) b!898099))

(assert (= (and b!898099 c!145370) b!898098))

(assert (= (and b!898099 (not c!145370)) b!898104))

(assert (= (and b!898104 (not res!408364)) b!898102))

(assert (= (and b!898102 res!408365) b!898100))

(assert (= (and b!898100 res!408363) b!898107))

(assert (= (and b!898107 res!408362) b!898106))

(assert (= (and b!898102 (not res!408367)) b!898097))

(assert (= (and b!898097 res!408366) b!898095))

(assert (= (and b!898095 (not res!408368)) b!898108))

(assert (= (and b!898108 (not res!408369)) b!898096))

(assert (= (or b!898101 b!898095 b!898100) bm!53390))

(declare-fun m!1136963 () Bool)

(assert (=> b!898105 m!1136963))

(declare-fun m!1136965 () Bool)

(assert (=> b!898103 m!1136965))

(assert (=> b!898103 m!1136965))

(declare-fun m!1136967 () Bool)

(assert (=> b!898103 m!1136967))

(declare-fun m!1136969 () Bool)

(assert (=> b!898103 m!1136969))

(assert (=> b!898103 m!1136967))

(assert (=> b!898103 m!1136969))

(declare-fun m!1136971 () Bool)

(assert (=> b!898103 m!1136971))

(assert (=> b!898106 m!1136965))

(assert (=> d!277968 m!1136891))

(assert (=> d!277968 m!1136865))

(assert (=> bm!53390 m!1136891))

(assert (=> b!898107 m!1136969))

(assert (=> b!898107 m!1136969))

(declare-fun m!1136973 () Bool)

(assert (=> b!898107 m!1136973))

(assert (=> b!898096 m!1136965))

(assert (=> b!898108 m!1136969))

(assert (=> b!898108 m!1136969))

(assert (=> b!898108 m!1136973))

(assert (=> b!897901 d!277968))

(declare-fun d!277974 () Bool)

(assert (=> d!277974 (= (matchR!890 r!15766 s!10566) (matchRSpec!153 r!15766 s!10566))))

(declare-fun lt!333834 () Unit!14283)

(declare-fun choose!5399 (Regex!2352 List!9582) Unit!14283)

(assert (=> d!277974 (= lt!333834 (choose!5399 r!15766 s!10566))))

(assert (=> d!277974 (validRegex!821 r!15766)))

(assert (=> d!277974 (= (mainMatchTheorem!153 r!15766 s!10566) lt!333834)))

(declare-fun bs!235075 () Bool)

(assert (= bs!235075 d!277974))

(assert (=> bs!235075 m!1136869))

(assert (=> bs!235075 m!1136867))

(declare-fun m!1136975 () Bool)

(assert (=> bs!235075 m!1136975))

(assert (=> bs!235075 m!1136865))

(assert (=> b!897901 d!277974))

(declare-fun b!898109 () Bool)

(declare-fun e!587586 () Bool)

(declare-fun e!587585 () Bool)

(assert (=> b!898109 (= e!587586 e!587585)))

(declare-fun res!408376 () Bool)

(assert (=> b!898109 (=> res!408376 e!587585)))

(declare-fun call!53396 () Bool)

(assert (=> b!898109 (= res!408376 call!53396)))

(declare-fun b!898110 () Bool)

(assert (=> b!898110 (= e!587585 (not (= (head!1588 (_1!6179 lt!333789)) (c!145341 (reg!2681 r!15766)))))))

(declare-fun b!898111 () Bool)

(declare-fun e!587584 () Bool)

(assert (=> b!898111 (= e!587584 e!587586)))

(declare-fun res!408374 () Bool)

(assert (=> b!898111 (=> (not res!408374) (not e!587586))))

(declare-fun lt!333835 () Bool)

(assert (=> b!898111 (= res!408374 (not lt!333835))))

(declare-fun d!277976 () Bool)

(declare-fun e!587581 () Bool)

(assert (=> d!277976 e!587581))

(declare-fun c!145374 () Bool)

(assert (=> d!277976 (= c!145374 (is-EmptyExpr!2352 (reg!2681 r!15766)))))

(declare-fun e!587582 () Bool)

(assert (=> d!277976 (= lt!333835 e!587582)))

(declare-fun c!145375 () Bool)

(assert (=> d!277976 (= c!145375 (isEmpty!5761 (_1!6179 lt!333789)))))

(assert (=> d!277976 (validRegex!821 (reg!2681 r!15766))))

(assert (=> d!277976 (= (matchR!890 (reg!2681 r!15766) (_1!6179 lt!333789)) lt!333835)))

(declare-fun b!898112 () Bool)

(declare-fun e!587583 () Bool)

(assert (=> b!898112 (= e!587583 (not lt!333835))))

(declare-fun b!898113 () Bool)

(assert (=> b!898113 (= e!587581 e!587583)))

(declare-fun c!145373 () Bool)

(assert (=> b!898113 (= c!145373 (is-EmptyLang!2352 (reg!2681 r!15766)))))

(declare-fun b!898114 () Bool)

(declare-fun res!408371 () Bool)

(declare-fun e!587587 () Bool)

(assert (=> b!898114 (=> (not res!408371) (not e!587587))))

(assert (=> b!898114 (= res!408371 (not call!53396))))

(declare-fun bm!53391 () Bool)

(assert (=> bm!53391 (= call!53396 (isEmpty!5761 (_1!6179 lt!333789)))))

(declare-fun b!898115 () Bool)

(assert (=> b!898115 (= e!587581 (= lt!333835 call!53396))))

(declare-fun b!898116 () Bool)

(declare-fun res!408375 () Bool)

(assert (=> b!898116 (=> res!408375 e!587584)))

(assert (=> b!898116 (= res!408375 e!587587)))

(declare-fun res!408373 () Bool)

(assert (=> b!898116 (=> (not res!408373) (not e!587587))))

(assert (=> b!898116 (= res!408373 lt!333835)))

(declare-fun b!898117 () Bool)

(assert (=> b!898117 (= e!587582 (matchR!890 (derivativeStep!435 (reg!2681 r!15766) (head!1588 (_1!6179 lt!333789))) (tail!1150 (_1!6179 lt!333789))))))

(declare-fun b!898118 () Bool)

(declare-fun res!408372 () Bool)

(assert (=> b!898118 (=> res!408372 e!587584)))

(assert (=> b!898118 (= res!408372 (not (is-ElementMatch!2352 (reg!2681 r!15766))))))

(assert (=> b!898118 (= e!587583 e!587584)))

(declare-fun b!898119 () Bool)

(assert (=> b!898119 (= e!587582 (nullable!623 (reg!2681 r!15766)))))

(declare-fun b!898120 () Bool)

(assert (=> b!898120 (= e!587587 (= (head!1588 (_1!6179 lt!333789)) (c!145341 (reg!2681 r!15766))))))

(declare-fun b!898121 () Bool)

(declare-fun res!408370 () Bool)

(assert (=> b!898121 (=> (not res!408370) (not e!587587))))

(assert (=> b!898121 (= res!408370 (isEmpty!5761 (tail!1150 (_1!6179 lt!333789))))))

(declare-fun b!898122 () Bool)

(declare-fun res!408377 () Bool)

(assert (=> b!898122 (=> res!408377 e!587585)))

(assert (=> b!898122 (= res!408377 (not (isEmpty!5761 (tail!1150 (_1!6179 lt!333789)))))))

(assert (= (and d!277976 c!145375) b!898119))

(assert (= (and d!277976 (not c!145375)) b!898117))

(assert (= (and d!277976 c!145374) b!898115))

(assert (= (and d!277976 (not c!145374)) b!898113))

(assert (= (and b!898113 c!145373) b!898112))

(assert (= (and b!898113 (not c!145373)) b!898118))

(assert (= (and b!898118 (not res!408372)) b!898116))

(assert (= (and b!898116 res!408373) b!898114))

(assert (= (and b!898114 res!408371) b!898121))

(assert (= (and b!898121 res!408370) b!898120))

(assert (= (and b!898116 (not res!408375)) b!898111))

(assert (= (and b!898111 res!408374) b!898109))

(assert (= (and b!898109 (not res!408376)) b!898122))

(assert (= (and b!898122 (not res!408377)) b!898110))

(assert (= (or b!898115 b!898109 b!898114) bm!53391))

(declare-fun m!1136977 () Bool)

(assert (=> b!898119 m!1136977))

(declare-fun m!1136979 () Bool)

(assert (=> b!898117 m!1136979))

(assert (=> b!898117 m!1136979))

(declare-fun m!1136981 () Bool)

(assert (=> b!898117 m!1136981))

(declare-fun m!1136983 () Bool)

(assert (=> b!898117 m!1136983))

(assert (=> b!898117 m!1136981))

(assert (=> b!898117 m!1136983))

(declare-fun m!1136985 () Bool)

(assert (=> b!898117 m!1136985))

(assert (=> b!898120 m!1136979))

(assert (=> d!277976 m!1136863))

(assert (=> d!277976 m!1136877))

(assert (=> bm!53391 m!1136863))

(assert (=> b!898121 m!1136983))

(assert (=> b!898121 m!1136983))

(declare-fun m!1136987 () Bool)

(assert (=> b!898121 m!1136987))

(assert (=> b!898110 m!1136979))

(assert (=> b!898122 m!1136983))

(assert (=> b!898122 m!1136983))

(assert (=> b!898122 m!1136987))

(assert (=> b!897906 d!277976))

(declare-fun d!277978 () Bool)

(assert (=> d!277978 (= (get!3027 lt!333780) (v!19411 lt!333780))))

(assert (=> b!897906 d!277978))

(declare-fun d!277980 () Bool)

(declare-fun res!408392 () Bool)

(declare-fun e!587606 () Bool)

(assert (=> d!277980 (=> res!408392 e!587606)))

(assert (=> d!277980 (= res!408392 (is-ElementMatch!2352 (reg!2681 r!15766)))))

(assert (=> d!277980 (= (validRegex!821 (reg!2681 r!15766)) e!587606)))

(declare-fun b!898145 () Bool)

(declare-fun e!587605 () Bool)

(declare-fun e!587604 () Bool)

(assert (=> b!898145 (= e!587605 e!587604)))

(declare-fun res!408391 () Bool)

(assert (=> b!898145 (=> (not res!408391) (not e!587604))))

(declare-fun call!53404 () Bool)

(assert (=> b!898145 (= res!408391 call!53404)))

(declare-fun b!898146 () Bool)

(declare-fun call!53405 () Bool)

(assert (=> b!898146 (= e!587604 call!53405)))

(declare-fun bm!53398 () Bool)

(declare-fun c!145383 () Bool)

(assert (=> bm!53398 (= call!53405 (validRegex!821 (ite c!145383 (regTwo!5217 (reg!2681 r!15766)) (regTwo!5216 (reg!2681 r!15766)))))))

(declare-fun bm!53399 () Bool)

(declare-fun call!53403 () Bool)

(assert (=> bm!53399 (= call!53404 call!53403)))

(declare-fun b!898147 () Bool)

(declare-fun e!587609 () Bool)

(assert (=> b!898147 (= e!587606 e!587609)))

(declare-fun c!145382 () Bool)

(assert (=> b!898147 (= c!145382 (is-Star!2352 (reg!2681 r!15766)))))

(declare-fun bm!53400 () Bool)

(assert (=> bm!53400 (= call!53403 (validRegex!821 (ite c!145382 (reg!2681 (reg!2681 r!15766)) (ite c!145383 (regOne!5217 (reg!2681 r!15766)) (regOne!5216 (reg!2681 r!15766))))))))

(declare-fun b!898148 () Bool)

(declare-fun e!587610 () Bool)

(assert (=> b!898148 (= e!587610 call!53403)))

(declare-fun b!898149 () Bool)

(declare-fun res!408388 () Bool)

(declare-fun e!587608 () Bool)

(assert (=> b!898149 (=> (not res!408388) (not e!587608))))

(assert (=> b!898149 (= res!408388 call!53404)))

(declare-fun e!587607 () Bool)

(assert (=> b!898149 (= e!587607 e!587608)))

(declare-fun b!898150 () Bool)

(declare-fun res!408390 () Bool)

(assert (=> b!898150 (=> res!408390 e!587605)))

(assert (=> b!898150 (= res!408390 (not (is-Concat!4185 (reg!2681 r!15766))))))

(assert (=> b!898150 (= e!587607 e!587605)))

(declare-fun b!898151 () Bool)

(assert (=> b!898151 (= e!587609 e!587610)))

(declare-fun res!408389 () Bool)

(assert (=> b!898151 (= res!408389 (not (nullable!623 (reg!2681 (reg!2681 r!15766)))))))

(assert (=> b!898151 (=> (not res!408389) (not e!587610))))

(declare-fun b!898152 () Bool)

(assert (=> b!898152 (= e!587608 call!53405)))

(declare-fun b!898153 () Bool)

(assert (=> b!898153 (= e!587609 e!587607)))

(assert (=> b!898153 (= c!145383 (is-Union!2352 (reg!2681 r!15766)))))

(assert (= (and d!277980 (not res!408392)) b!898147))

(assert (= (and b!898147 c!145382) b!898151))

(assert (= (and b!898147 (not c!145382)) b!898153))

(assert (= (and b!898151 res!408389) b!898148))

(assert (= (and b!898153 c!145383) b!898149))

(assert (= (and b!898153 (not c!145383)) b!898150))

(assert (= (and b!898149 res!408388) b!898152))

(assert (= (and b!898150 (not res!408390)) b!898145))

(assert (= (and b!898145 res!408391) b!898146))

(assert (= (or b!898152 b!898146) bm!53398))

(assert (= (or b!898149 b!898145) bm!53399))

(assert (= (or b!898148 bm!53399) bm!53400))

(declare-fun m!1136993 () Bool)

(assert (=> bm!53398 m!1136993))

(declare-fun m!1136995 () Bool)

(assert (=> bm!53400 m!1136995))

(declare-fun m!1136997 () Bool)

(assert (=> b!898151 m!1136997))

(assert (=> b!897911 d!277980))

(declare-fun b!898158 () Bool)

(declare-fun e!587618 () Bool)

(declare-fun e!587617 () Bool)

(assert (=> b!898158 (= e!587618 e!587617)))

(declare-fun res!408399 () Bool)

(assert (=> b!898158 (=> res!408399 e!587617)))

(declare-fun call!53406 () Bool)

(assert (=> b!898158 (= res!408399 call!53406)))

(declare-fun b!898159 () Bool)

(assert (=> b!898159 (= e!587617 (not (= (head!1588 (_2!6179 lt!333789)) (c!145341 lt!333783))))))

(declare-fun b!898160 () Bool)

(declare-fun e!587616 () Bool)

(assert (=> b!898160 (= e!587616 e!587618)))

(declare-fun res!408397 () Bool)

(assert (=> b!898160 (=> (not res!408397) (not e!587618))))

(declare-fun lt!333843 () Bool)

(assert (=> b!898160 (= res!408397 (not lt!333843))))

(declare-fun d!277986 () Bool)

(declare-fun e!587613 () Bool)

(assert (=> d!277986 e!587613))

(declare-fun c!145387 () Bool)

(assert (=> d!277986 (= c!145387 (is-EmptyExpr!2352 lt!333783))))

(declare-fun e!587614 () Bool)

(assert (=> d!277986 (= lt!333843 e!587614)))

(declare-fun c!145388 () Bool)

(assert (=> d!277986 (= c!145388 (isEmpty!5761 (_2!6179 lt!333789)))))

(assert (=> d!277986 (validRegex!821 lt!333783)))

(assert (=> d!277986 (= (matchR!890 lt!333783 (_2!6179 lt!333789)) lt!333843)))

(declare-fun b!898161 () Bool)

(declare-fun e!587615 () Bool)

(assert (=> b!898161 (= e!587615 (not lt!333843))))

(declare-fun b!898162 () Bool)

(assert (=> b!898162 (= e!587613 e!587615)))

(declare-fun c!145386 () Bool)

(assert (=> b!898162 (= c!145386 (is-EmptyLang!2352 lt!333783))))

(declare-fun b!898163 () Bool)

(declare-fun res!408394 () Bool)

(declare-fun e!587619 () Bool)

(assert (=> b!898163 (=> (not res!408394) (not e!587619))))

(assert (=> b!898163 (= res!408394 (not call!53406))))

(declare-fun bm!53401 () Bool)

(assert (=> bm!53401 (= call!53406 (isEmpty!5761 (_2!6179 lt!333789)))))

(declare-fun b!898164 () Bool)

(assert (=> b!898164 (= e!587613 (= lt!333843 call!53406))))

(declare-fun b!898165 () Bool)

(declare-fun res!408398 () Bool)

(assert (=> b!898165 (=> res!408398 e!587616)))

(assert (=> b!898165 (= res!408398 e!587619)))

(declare-fun res!408396 () Bool)

(assert (=> b!898165 (=> (not res!408396) (not e!587619))))

(assert (=> b!898165 (= res!408396 lt!333843)))

(declare-fun b!898166 () Bool)

(assert (=> b!898166 (= e!587614 (matchR!890 (derivativeStep!435 lt!333783 (head!1588 (_2!6179 lt!333789))) (tail!1150 (_2!6179 lt!333789))))))

(declare-fun b!898167 () Bool)

(declare-fun res!408395 () Bool)

(assert (=> b!898167 (=> res!408395 e!587616)))

(assert (=> b!898167 (= res!408395 (not (is-ElementMatch!2352 lt!333783)))))

(assert (=> b!898167 (= e!587615 e!587616)))

(declare-fun b!898168 () Bool)

(assert (=> b!898168 (= e!587614 (nullable!623 lt!333783))))

(declare-fun b!898169 () Bool)

(assert (=> b!898169 (= e!587619 (= (head!1588 (_2!6179 lt!333789)) (c!145341 lt!333783)))))

(declare-fun b!898170 () Bool)

(declare-fun res!408393 () Bool)

(assert (=> b!898170 (=> (not res!408393) (not e!587619))))

(assert (=> b!898170 (= res!408393 (isEmpty!5761 (tail!1150 (_2!6179 lt!333789))))))

(declare-fun b!898171 () Bool)

(declare-fun res!408400 () Bool)

(assert (=> b!898171 (=> res!408400 e!587617)))

(assert (=> b!898171 (= res!408400 (not (isEmpty!5761 (tail!1150 (_2!6179 lt!333789)))))))

(assert (= (and d!277986 c!145388) b!898168))

(assert (= (and d!277986 (not c!145388)) b!898166))

(assert (= (and d!277986 c!145387) b!898164))

(assert (= (and d!277986 (not c!145387)) b!898162))

(assert (= (and b!898162 c!145386) b!898161))

(assert (= (and b!898162 (not c!145386)) b!898167))

(assert (= (and b!898167 (not res!408395)) b!898165))

(assert (= (and b!898165 res!408396) b!898163))

(assert (= (and b!898163 res!408394) b!898170))

(assert (= (and b!898170 res!408393) b!898169))

(assert (= (and b!898165 (not res!408398)) b!898160))

(assert (= (and b!898160 res!408397) b!898158))

(assert (= (and b!898158 (not res!408399)) b!898171))

(assert (= (and b!898171 (not res!408400)) b!898159))

(assert (= (or b!898164 b!898158 b!898163) bm!53401))

(declare-fun m!1137001 () Bool)

(assert (=> b!898168 m!1137001))

(declare-fun m!1137003 () Bool)

(assert (=> b!898166 m!1137003))

(assert (=> b!898166 m!1137003))

(declare-fun m!1137005 () Bool)

(assert (=> b!898166 m!1137005))

(declare-fun m!1137007 () Bool)

(assert (=> b!898166 m!1137007))

(assert (=> b!898166 m!1137005))

(assert (=> b!898166 m!1137007))

(declare-fun m!1137009 () Bool)

(assert (=> b!898166 m!1137009))

(assert (=> b!898169 m!1137003))

(declare-fun m!1137011 () Bool)

(assert (=> d!277986 m!1137011))

(declare-fun m!1137013 () Bool)

(assert (=> d!277986 m!1137013))

(assert (=> bm!53401 m!1137011))

(assert (=> b!898170 m!1137007))

(assert (=> b!898170 m!1137007))

(declare-fun m!1137015 () Bool)

(assert (=> b!898170 m!1137015))

(assert (=> b!898159 m!1137003))

(assert (=> b!898171 m!1137007))

(assert (=> b!898171 m!1137007))

(assert (=> b!898171 m!1137015))

(assert (=> b!897900 d!277986))

(declare-fun d!277990 () Bool)

(declare-fun res!408405 () Bool)

(declare-fun e!587622 () Bool)

(assert (=> d!277990 (=> res!408405 e!587622)))

(assert (=> d!277990 (= res!408405 (is-ElementMatch!2352 r!15766))))

(assert (=> d!277990 (= (validRegex!821 r!15766) e!587622)))

(declare-fun b!898172 () Bool)

(declare-fun e!587621 () Bool)

(declare-fun e!587620 () Bool)

(assert (=> b!898172 (= e!587621 e!587620)))

(declare-fun res!408404 () Bool)

(assert (=> b!898172 (=> (not res!408404) (not e!587620))))

(declare-fun call!53408 () Bool)

(assert (=> b!898172 (= res!408404 call!53408)))

(declare-fun b!898173 () Bool)

(declare-fun call!53409 () Bool)

(assert (=> b!898173 (= e!587620 call!53409)))

(declare-fun bm!53402 () Bool)

(declare-fun c!145390 () Bool)

(assert (=> bm!53402 (= call!53409 (validRegex!821 (ite c!145390 (regTwo!5217 r!15766) (regTwo!5216 r!15766))))))

(declare-fun bm!53403 () Bool)

(declare-fun call!53407 () Bool)

(assert (=> bm!53403 (= call!53408 call!53407)))

(declare-fun b!898174 () Bool)

(declare-fun e!587625 () Bool)

(assert (=> b!898174 (= e!587622 e!587625)))

(declare-fun c!145389 () Bool)

(assert (=> b!898174 (= c!145389 (is-Star!2352 r!15766))))

(declare-fun bm!53404 () Bool)

(assert (=> bm!53404 (= call!53407 (validRegex!821 (ite c!145389 (reg!2681 r!15766) (ite c!145390 (regOne!5217 r!15766) (regOne!5216 r!15766)))))))

(declare-fun b!898175 () Bool)

(declare-fun e!587626 () Bool)

(assert (=> b!898175 (= e!587626 call!53407)))

(declare-fun b!898176 () Bool)

(declare-fun res!408401 () Bool)

(declare-fun e!587624 () Bool)

(assert (=> b!898176 (=> (not res!408401) (not e!587624))))

(assert (=> b!898176 (= res!408401 call!53408)))

(declare-fun e!587623 () Bool)

(assert (=> b!898176 (= e!587623 e!587624)))

(declare-fun b!898177 () Bool)

(declare-fun res!408403 () Bool)

(assert (=> b!898177 (=> res!408403 e!587621)))

(assert (=> b!898177 (= res!408403 (not (is-Concat!4185 r!15766)))))

(assert (=> b!898177 (= e!587623 e!587621)))

(declare-fun b!898178 () Bool)

(assert (=> b!898178 (= e!587625 e!587626)))

(declare-fun res!408402 () Bool)

(assert (=> b!898178 (= res!408402 (not (nullable!623 (reg!2681 r!15766))))))

(assert (=> b!898178 (=> (not res!408402) (not e!587626))))

(declare-fun b!898179 () Bool)

(assert (=> b!898179 (= e!587624 call!53409)))

(declare-fun b!898180 () Bool)

(assert (=> b!898180 (= e!587625 e!587623)))

(assert (=> b!898180 (= c!145390 (is-Union!2352 r!15766))))

(assert (= (and d!277990 (not res!408405)) b!898174))

(assert (= (and b!898174 c!145389) b!898178))

(assert (= (and b!898174 (not c!145389)) b!898180))

(assert (= (and b!898178 res!408402) b!898175))

(assert (= (and b!898180 c!145390) b!898176))

(assert (= (and b!898180 (not c!145390)) b!898177))

(assert (= (and b!898176 res!408401) b!898179))

(assert (= (and b!898177 (not res!408403)) b!898172))

(assert (= (and b!898172 res!408404) b!898173))

(assert (= (or b!898179 b!898173) bm!53402))

(assert (= (or b!898176 b!898172) bm!53403))

(assert (= (or b!898175 bm!53403) bm!53404))

(declare-fun m!1137017 () Bool)

(assert (=> bm!53402 m!1137017))

(declare-fun m!1137019 () Bool)

(assert (=> bm!53404 m!1137019))

(assert (=> b!898178 m!1136977))

(assert (=> start!80844 d!277990))

(declare-fun d!277992 () Bool)

(declare-fun e!587632 () Bool)

(assert (=> d!277992 e!587632))

(declare-fun res!408410 () Bool)

(assert (=> d!277992 (=> (not res!408410) (not e!587632))))

(declare-fun lt!333846 () List!9582)

(declare-fun content!1378 (List!9582) (Set C!5274))

(assert (=> d!277992 (= res!408410 (= (content!1378 lt!333846) (set.union (content!1378 (_1!6179 lt!333789)) (content!1378 (_2!6179 lt!333789)))))))

(declare-fun e!587631 () List!9582)

(assert (=> d!277992 (= lt!333846 e!587631)))

(declare-fun c!145393 () Bool)

(assert (=> d!277992 (= c!145393 (is-Nil!9566 (_1!6179 lt!333789)))))

(assert (=> d!277992 (= (++!2496 (_1!6179 lt!333789) (_2!6179 lt!333789)) lt!333846)))

(declare-fun b!898189 () Bool)

(assert (=> b!898189 (= e!587631 (_2!6179 lt!333789))))

(declare-fun b!898190 () Bool)

(assert (=> b!898190 (= e!587631 (Cons!9566 (h!14967 (_1!6179 lt!333789)) (++!2496 (t!100628 (_1!6179 lt!333789)) (_2!6179 lt!333789))))))

(declare-fun b!898191 () Bool)

(declare-fun res!408411 () Bool)

(assert (=> b!898191 (=> (not res!408411) (not e!587632))))

(assert (=> b!898191 (= res!408411 (= (size!7857 lt!333846) (+ (size!7857 (_1!6179 lt!333789)) (size!7857 (_2!6179 lt!333789)))))))

(declare-fun b!898192 () Bool)

(assert (=> b!898192 (= e!587632 (or (not (= (_2!6179 lt!333789) Nil!9566)) (= lt!333846 (_1!6179 lt!333789))))))

(assert (= (and d!277992 c!145393) b!898189))

(assert (= (and d!277992 (not c!145393)) b!898190))

(assert (= (and d!277992 res!408410) b!898191))

(assert (= (and b!898191 res!408411) b!898192))

(declare-fun m!1137021 () Bool)

(assert (=> d!277992 m!1137021))

(declare-fun m!1137023 () Bool)

(assert (=> d!277992 m!1137023))

(declare-fun m!1137025 () Bool)

(assert (=> d!277992 m!1137025))

(declare-fun m!1137027 () Bool)

(assert (=> b!898190 m!1137027))

(declare-fun m!1137029 () Bool)

(assert (=> b!898191 m!1137029))

(assert (=> b!898191 m!1136897))

(assert (=> b!898191 m!1136857))

(assert (=> b!897905 d!277992))

(declare-fun d!277994 () Bool)

(assert (=> d!277994 (= (isEmpty!5761 s!10566) (is-Nil!9566 s!10566))))

(assert (=> b!897910 d!277994))

(declare-fun bs!235077 () Bool)

(declare-fun d!277996 () Bool)

(assert (= bs!235077 (and d!277996 b!897910)))

(declare-fun lambda!27965 () Int)

(assert (=> bs!235077 (= (= (Star!2352 (reg!2681 r!15766)) lt!333783) (= lambda!27965 lambda!27945))))

(assert (=> bs!235077 (not (= lambda!27965 lambda!27946))))

(declare-fun bs!235078 () Bool)

(assert (= bs!235078 (and d!277996 b!898051)))

(assert (=> bs!235078 (not (= lambda!27965 lambda!27959))))

(declare-fun bs!235079 () Bool)

(assert (= bs!235079 (and d!277996 b!898046)))

(assert (=> bs!235079 (not (= lambda!27965 lambda!27960))))

(assert (=> d!277996 true))

(assert (=> d!277996 true))

(declare-fun lambda!27966 () Int)

(assert (=> bs!235078 (= (= (Star!2352 (reg!2681 r!15766)) r!15766) (= lambda!27966 lambda!27959))))

(declare-fun bs!235080 () Bool)

(assert (= bs!235080 d!277996))

(assert (=> bs!235080 (not (= lambda!27966 lambda!27965))))

(assert (=> bs!235077 (not (= lambda!27966 lambda!27945))))

(assert (=> bs!235077 (= (= (Star!2352 (reg!2681 r!15766)) lt!333783) (= lambda!27966 lambda!27946))))

(assert (=> bs!235079 (not (= lambda!27966 lambda!27960))))

(assert (=> d!277996 true))

(assert (=> d!277996 true))

(assert (=> d!277996 (= (Exists!129 lambda!27965) (Exists!129 lambda!27966))))

(declare-fun lt!333851 () Unit!14283)

(declare-fun choose!5400 (Regex!2352 List!9582) Unit!14283)

(assert (=> d!277996 (= lt!333851 (choose!5400 (reg!2681 r!15766) s!10566))))

(assert (=> d!277996 (validRegex!821 (reg!2681 r!15766))))

(assert (=> d!277996 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!21 (reg!2681 r!15766) s!10566) lt!333851)))

(declare-fun m!1137031 () Bool)

(assert (=> bs!235080 m!1137031))

(declare-fun m!1137033 () Bool)

(assert (=> bs!235080 m!1137033))

(declare-fun m!1137035 () Bool)

(assert (=> bs!235080 m!1137035))

(assert (=> bs!235080 m!1136877))

(assert (=> b!897910 d!277996))

(declare-fun d!277998 () Bool)

(declare-fun choose!5401 (Int) Bool)

(assert (=> d!277998 (= (Exists!129 lambda!27945) (choose!5401 lambda!27945))))

(declare-fun bs!235081 () Bool)

(assert (= bs!235081 d!277998))

(declare-fun m!1137037 () Bool)

(assert (=> bs!235081 m!1137037))

(assert (=> b!897910 d!277998))

(declare-fun d!278000 () Bool)

(assert (=> d!278000 (= (Exists!129 lambda!27946) (choose!5401 lambda!27946))))

(declare-fun bs!235082 () Bool)

(assert (= bs!235082 d!278000))

(declare-fun m!1137039 () Bool)

(assert (=> bs!235082 m!1137039))

(assert (=> b!897910 d!278000))

(declare-fun b!898276 () Bool)

(declare-fun e!587680 () Bool)

(declare-fun lt!333864 () Option!1995)

(assert (=> b!898276 (= e!587680 (= (++!2496 (_1!6179 (get!3027 lt!333864)) (_2!6179 (get!3027 lt!333864))) s!10566))))

(declare-fun b!898277 () Bool)

(declare-fun e!587679 () Option!1995)

(assert (=> b!898277 (= e!587679 (Some!1994 (tuple2!10707 Nil!9566 s!10566)))))

(declare-fun b!898278 () Bool)

(declare-fun e!587678 () Option!1995)

(assert (=> b!898278 (= e!587678 None!1994)))

(declare-fun b!898279 () Bool)

(declare-fun lt!333862 () Unit!14283)

(declare-fun lt!333863 () Unit!14283)

(assert (=> b!898279 (= lt!333862 lt!333863)))

(assert (=> b!898279 (= (++!2496 (++!2496 Nil!9566 (Cons!9566 (h!14967 s!10566) Nil!9566)) (t!100628 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!122 (List!9582 C!5274 List!9582 List!9582) Unit!14283)

(assert (=> b!898279 (= lt!333863 (lemmaMoveElementToOtherListKeepsConcatEq!122 Nil!9566 (h!14967 s!10566) (t!100628 s!10566) s!10566))))

(assert (=> b!898279 (= e!587678 (findConcatSeparation!101 (reg!2681 r!15766) lt!333783 (++!2496 Nil!9566 (Cons!9566 (h!14967 s!10566) Nil!9566)) (t!100628 s!10566) s!10566))))

(declare-fun b!898280 () Bool)

(declare-fun e!587676 () Bool)

(assert (=> b!898280 (= e!587676 (not (isDefined!1637 lt!333864)))))

(declare-fun b!898281 () Bool)

(declare-fun res!408447 () Bool)

(assert (=> b!898281 (=> (not res!408447) (not e!587680))))

(assert (=> b!898281 (= res!408447 (matchR!890 lt!333783 (_2!6179 (get!3027 lt!333864))))))

(declare-fun b!898282 () Bool)

(declare-fun res!408451 () Bool)

(assert (=> b!898282 (=> (not res!408451) (not e!587680))))

(assert (=> b!898282 (= res!408451 (matchR!890 (reg!2681 r!15766) (_1!6179 (get!3027 lt!333864))))))

(declare-fun d!278002 () Bool)

(assert (=> d!278002 e!587676))

(declare-fun res!408448 () Bool)

(assert (=> d!278002 (=> res!408448 e!587676)))

(assert (=> d!278002 (= res!408448 e!587680)))

(declare-fun res!408449 () Bool)

(assert (=> d!278002 (=> (not res!408449) (not e!587680))))

(assert (=> d!278002 (= res!408449 (isDefined!1637 lt!333864))))

(assert (=> d!278002 (= lt!333864 e!587679)))

(declare-fun c!145419 () Bool)

(declare-fun e!587677 () Bool)

(assert (=> d!278002 (= c!145419 e!587677)))

(declare-fun res!408450 () Bool)

(assert (=> d!278002 (=> (not res!408450) (not e!587677))))

(assert (=> d!278002 (= res!408450 (matchR!890 (reg!2681 r!15766) Nil!9566))))

(assert (=> d!278002 (validRegex!821 (reg!2681 r!15766))))

(assert (=> d!278002 (= (findConcatSeparation!101 (reg!2681 r!15766) lt!333783 Nil!9566 s!10566 s!10566) lt!333864)))

(declare-fun b!898283 () Bool)

(assert (=> b!898283 (= e!587679 e!587678)))

(declare-fun c!145418 () Bool)

(assert (=> b!898283 (= c!145418 (is-Nil!9566 s!10566))))

(declare-fun b!898284 () Bool)

(assert (=> b!898284 (= e!587677 (matchR!890 lt!333783 s!10566))))

(assert (= (and d!278002 res!408450) b!898284))

(assert (= (and d!278002 c!145419) b!898277))

(assert (= (and d!278002 (not c!145419)) b!898283))

(assert (= (and b!898283 c!145418) b!898278))

(assert (= (and b!898283 (not c!145418)) b!898279))

(assert (= (and d!278002 res!408449) b!898282))

(assert (= (and b!898282 res!408451) b!898281))

(assert (= (and b!898281 res!408447) b!898276))

(assert (= (and d!278002 (not res!408448)) b!898280))

(declare-fun m!1137057 () Bool)

(assert (=> b!898280 m!1137057))

(declare-fun m!1137059 () Bool)

(assert (=> b!898281 m!1137059))

(declare-fun m!1137061 () Bool)

(assert (=> b!898281 m!1137061))

(assert (=> d!278002 m!1137057))

(declare-fun m!1137063 () Bool)

(assert (=> d!278002 m!1137063))

(assert (=> d!278002 m!1136877))

(assert (=> b!898282 m!1137059))

(declare-fun m!1137065 () Bool)

(assert (=> b!898282 m!1137065))

(declare-fun m!1137067 () Bool)

(assert (=> b!898284 m!1137067))

(declare-fun m!1137069 () Bool)

(assert (=> b!898279 m!1137069))

(assert (=> b!898279 m!1137069))

(declare-fun m!1137071 () Bool)

(assert (=> b!898279 m!1137071))

(declare-fun m!1137073 () Bool)

(assert (=> b!898279 m!1137073))

(assert (=> b!898279 m!1137069))

(declare-fun m!1137075 () Bool)

(assert (=> b!898279 m!1137075))

(assert (=> b!898276 m!1137059))

(declare-fun m!1137077 () Bool)

(assert (=> b!898276 m!1137077))

(assert (=> b!897910 d!278002))

(declare-fun bs!235083 () Bool)

(declare-fun d!278008 () Bool)

(assert (= bs!235083 (and d!278008 b!898051)))

(declare-fun lambda!27969 () Int)

(assert (=> bs!235083 (not (= lambda!27969 lambda!27959))))

(declare-fun bs!235084 () Bool)

(assert (= bs!235084 (and d!278008 d!277996)))

(assert (=> bs!235084 (= (= lt!333783 (Star!2352 (reg!2681 r!15766))) (= lambda!27969 lambda!27965))))

(declare-fun bs!235085 () Bool)

(assert (= bs!235085 (and d!278008 b!897910)))

(assert (=> bs!235085 (not (= lambda!27969 lambda!27946))))

(declare-fun bs!235086 () Bool)

(assert (= bs!235086 (and d!278008 b!898046)))

(assert (=> bs!235086 (not (= lambda!27969 lambda!27960))))

(assert (=> bs!235085 (= lambda!27969 lambda!27945)))

(assert (=> bs!235084 (not (= lambda!27969 lambda!27966))))

(assert (=> d!278008 true))

(assert (=> d!278008 true))

(assert (=> d!278008 true))

(assert (=> d!278008 (= (isDefined!1637 (findConcatSeparation!101 (reg!2681 r!15766) lt!333783 Nil!9566 s!10566 s!10566)) (Exists!129 lambda!27969))))

(declare-fun lt!333868 () Unit!14283)

(declare-fun choose!5402 (Regex!2352 Regex!2352 List!9582) Unit!14283)

(assert (=> d!278008 (= lt!333868 (choose!5402 (reg!2681 r!15766) lt!333783 s!10566))))

(assert (=> d!278008 (validRegex!821 (reg!2681 r!15766))))

(assert (=> d!278008 (= (lemmaFindConcatSeparationEquivalentToExists!101 (reg!2681 r!15766) lt!333783 s!10566) lt!333868)))

(declare-fun bs!235087 () Bool)

(assert (= bs!235087 d!278008))

(assert (=> bs!235087 m!1136889))

(assert (=> bs!235087 m!1136889))

(declare-fun m!1137089 () Bool)

(assert (=> bs!235087 m!1137089))

(declare-fun m!1137091 () Bool)

(assert (=> bs!235087 m!1137091))

(assert (=> bs!235087 m!1136877))

(declare-fun m!1137093 () Bool)

(assert (=> bs!235087 m!1137093))

(assert (=> b!897910 d!278008))

(declare-fun d!278012 () Bool)

(declare-fun isEmpty!5763 (Option!1995) Bool)

(assert (=> d!278012 (= (isDefined!1637 lt!333780) (not (isEmpty!5763 lt!333780)))))

(declare-fun bs!235088 () Bool)

(assert (= bs!235088 d!278012))

(declare-fun m!1137095 () Bool)

(assert (=> bs!235088 m!1137095))

(assert (=> b!897910 d!278012))

(declare-fun d!278014 () Bool)

(declare-fun lt!333871 () Int)

(assert (=> d!278014 (>= lt!333871 0)))

(declare-fun e!587687 () Int)

(assert (=> d!278014 (= lt!333871 e!587687)))

(declare-fun c!145423 () Bool)

(assert (=> d!278014 (= c!145423 (is-Nil!9566 (_2!6179 lt!333789)))))

(assert (=> d!278014 (= (size!7857 (_2!6179 lt!333789)) lt!333871)))

(declare-fun b!898297 () Bool)

(assert (=> b!898297 (= e!587687 0)))

(declare-fun b!898298 () Bool)

(assert (=> b!898298 (= e!587687 (+ 1 (size!7857 (t!100628 (_2!6179 lt!333789)))))))

(assert (= (and d!278014 c!145423) b!898297))

(assert (= (and d!278014 (not c!145423)) b!898298))

(declare-fun m!1137097 () Bool)

(assert (=> b!898298 m!1137097))

(assert (=> b!897908 d!278014))

(declare-fun d!278016 () Bool)

(declare-fun lt!333872 () Int)

(assert (=> d!278016 (>= lt!333872 0)))

(declare-fun e!587688 () Int)

(assert (=> d!278016 (= lt!333872 e!587688)))

(declare-fun c!145424 () Bool)

(assert (=> d!278016 (= c!145424 (is-Nil!9566 s!10566))))

(assert (=> d!278016 (= (size!7857 s!10566) lt!333872)))

(declare-fun b!898299 () Bool)

(assert (=> b!898299 (= e!587688 0)))

(declare-fun b!898300 () Bool)

(assert (=> b!898300 (= e!587688 (+ 1 (size!7857 (t!100628 s!10566))))))

(assert (= (and d!278016 c!145424) b!898299))

(assert (= (and d!278016 (not c!145424)) b!898300))

(declare-fun m!1137099 () Bool)

(assert (=> b!898300 m!1137099))

(assert (=> b!897908 d!278016))

(declare-fun b!898301 () Bool)

(declare-fun e!587694 () Bool)

(declare-fun e!587693 () Bool)

(assert (=> b!898301 (= e!587694 e!587693)))

(declare-fun res!408464 () Bool)

(assert (=> b!898301 (=> res!408464 e!587693)))

(declare-fun call!53426 () Bool)

(assert (=> b!898301 (= res!408464 call!53426)))

(declare-fun b!898302 () Bool)

(assert (=> b!898302 (= e!587693 (not (= (head!1588 (_1!6179 lt!333789)) (c!145341 (removeUselessConcat!65 (reg!2681 r!15766))))))))

(declare-fun b!898303 () Bool)

(declare-fun e!587692 () Bool)

(assert (=> b!898303 (= e!587692 e!587694)))

(declare-fun res!408462 () Bool)

(assert (=> b!898303 (=> (not res!408462) (not e!587694))))

(declare-fun lt!333873 () Bool)

(assert (=> b!898303 (= res!408462 (not lt!333873))))

(declare-fun d!278018 () Bool)

(declare-fun e!587689 () Bool)

(assert (=> d!278018 e!587689))

(declare-fun c!145426 () Bool)

(assert (=> d!278018 (= c!145426 (is-EmptyExpr!2352 (removeUselessConcat!65 (reg!2681 r!15766))))))

(declare-fun e!587690 () Bool)

(assert (=> d!278018 (= lt!333873 e!587690)))

(declare-fun c!145427 () Bool)

(assert (=> d!278018 (= c!145427 (isEmpty!5761 (_1!6179 lt!333789)))))

(assert (=> d!278018 (validRegex!821 (removeUselessConcat!65 (reg!2681 r!15766)))))

(assert (=> d!278018 (= (matchR!890 (removeUselessConcat!65 (reg!2681 r!15766)) (_1!6179 lt!333789)) lt!333873)))

(declare-fun b!898304 () Bool)

(declare-fun e!587691 () Bool)

(assert (=> b!898304 (= e!587691 (not lt!333873))))

(declare-fun b!898305 () Bool)

(assert (=> b!898305 (= e!587689 e!587691)))

(declare-fun c!145425 () Bool)

(assert (=> b!898305 (= c!145425 (is-EmptyLang!2352 (removeUselessConcat!65 (reg!2681 r!15766))))))

(declare-fun b!898306 () Bool)

(declare-fun res!408459 () Bool)

(declare-fun e!587695 () Bool)

(assert (=> b!898306 (=> (not res!408459) (not e!587695))))

(assert (=> b!898306 (= res!408459 (not call!53426))))

(declare-fun bm!53421 () Bool)

(assert (=> bm!53421 (= call!53426 (isEmpty!5761 (_1!6179 lt!333789)))))

(declare-fun b!898307 () Bool)

(assert (=> b!898307 (= e!587689 (= lt!333873 call!53426))))

(declare-fun b!898308 () Bool)

(declare-fun res!408463 () Bool)

(assert (=> b!898308 (=> res!408463 e!587692)))

(assert (=> b!898308 (= res!408463 e!587695)))

(declare-fun res!408461 () Bool)

(assert (=> b!898308 (=> (not res!408461) (not e!587695))))

(assert (=> b!898308 (= res!408461 lt!333873)))

(declare-fun b!898309 () Bool)

(assert (=> b!898309 (= e!587690 (matchR!890 (derivativeStep!435 (removeUselessConcat!65 (reg!2681 r!15766)) (head!1588 (_1!6179 lt!333789))) (tail!1150 (_1!6179 lt!333789))))))

(declare-fun b!898310 () Bool)

(declare-fun res!408460 () Bool)

(assert (=> b!898310 (=> res!408460 e!587692)))

(assert (=> b!898310 (= res!408460 (not (is-ElementMatch!2352 (removeUselessConcat!65 (reg!2681 r!15766)))))))

(assert (=> b!898310 (= e!587691 e!587692)))

(declare-fun b!898311 () Bool)

(assert (=> b!898311 (= e!587690 (nullable!623 (removeUselessConcat!65 (reg!2681 r!15766))))))

(declare-fun b!898312 () Bool)

(assert (=> b!898312 (= e!587695 (= (head!1588 (_1!6179 lt!333789)) (c!145341 (removeUselessConcat!65 (reg!2681 r!15766)))))))

(declare-fun b!898313 () Bool)

(declare-fun res!408458 () Bool)

(assert (=> b!898313 (=> (not res!408458) (not e!587695))))

(assert (=> b!898313 (= res!408458 (isEmpty!5761 (tail!1150 (_1!6179 lt!333789))))))

(declare-fun b!898314 () Bool)

(declare-fun res!408465 () Bool)

(assert (=> b!898314 (=> res!408465 e!587693)))

(assert (=> b!898314 (= res!408465 (not (isEmpty!5761 (tail!1150 (_1!6179 lt!333789)))))))

(assert (= (and d!278018 c!145427) b!898311))

(assert (= (and d!278018 (not c!145427)) b!898309))

(assert (= (and d!278018 c!145426) b!898307))

(assert (= (and d!278018 (not c!145426)) b!898305))

(assert (= (and b!898305 c!145425) b!898304))

(assert (= (and b!898305 (not c!145425)) b!898310))

(assert (= (and b!898310 (not res!408460)) b!898308))

(assert (= (and b!898308 res!408461) b!898306))

(assert (= (and b!898306 res!408459) b!898313))

(assert (= (and b!898313 res!408458) b!898312))

(assert (= (and b!898308 (not res!408463)) b!898303))

(assert (= (and b!898303 res!408462) b!898301))

(assert (= (and b!898301 (not res!408464)) b!898314))

(assert (= (and b!898314 (not res!408465)) b!898302))

(assert (= (or b!898307 b!898301 b!898306) bm!53421))

(assert (=> b!898311 m!1136853))

(declare-fun m!1137101 () Bool)

(assert (=> b!898311 m!1137101))

(assert (=> b!898309 m!1136979))

(assert (=> b!898309 m!1136853))

(assert (=> b!898309 m!1136979))

(declare-fun m!1137103 () Bool)

(assert (=> b!898309 m!1137103))

(assert (=> b!898309 m!1136983))

(assert (=> b!898309 m!1137103))

(assert (=> b!898309 m!1136983))

(declare-fun m!1137105 () Bool)

(assert (=> b!898309 m!1137105))

(assert (=> b!898312 m!1136979))

(assert (=> d!278018 m!1136863))

(assert (=> d!278018 m!1136853))

(declare-fun m!1137107 () Bool)

(assert (=> d!278018 m!1137107))

(assert (=> bm!53421 m!1136863))

(assert (=> b!898313 m!1136983))

(assert (=> b!898313 m!1136983))

(assert (=> b!898313 m!1136987))

(assert (=> b!898302 m!1136979))

(assert (=> b!898314 m!1136983))

(assert (=> b!898314 m!1136983))

(assert (=> b!898314 m!1136987))

(assert (=> b!897908 d!278018))

(declare-fun b!898365 () Bool)

(declare-fun e!587724 () Regex!2352)

(declare-fun call!53441 () Regex!2352)

(assert (=> b!898365 (= e!587724 call!53441)))

(declare-fun b!898366 () Bool)

(declare-fun e!587725 () Regex!2352)

(declare-fun call!53440 () Regex!2352)

(declare-fun call!53437 () Regex!2352)

(assert (=> b!898366 (= e!587725 (Union!2352 call!53440 call!53437))))

(declare-fun b!898367 () Bool)

(declare-fun c!145448 () Bool)

(assert (=> b!898367 (= c!145448 (is-Star!2352 (reg!2681 r!15766)))))

(declare-fun e!587729 () Regex!2352)

(assert (=> b!898367 (= e!587725 e!587729)))

(declare-fun bm!53432 () Bool)

(declare-fun call!53439 () Regex!2352)

(assert (=> bm!53432 (= call!53439 call!53441)))

(declare-fun b!898368 () Bool)

(declare-fun e!587728 () Regex!2352)

(assert (=> b!898368 (= e!587728 e!587725)))

(declare-fun c!145449 () Bool)

(assert (=> b!898368 (= c!145449 (is-Union!2352 (reg!2681 r!15766)))))

(declare-fun c!145450 () Bool)

(declare-fun c!145446 () Bool)

(declare-fun call!53438 () Regex!2352)

(declare-fun c!145447 () Bool)

(declare-fun bm!53433 () Bool)

(assert (=> bm!53433 (= call!53438 (removeUselessConcat!65 (ite c!145450 (regTwo!5216 (reg!2681 r!15766)) (ite c!145446 (regOne!5216 (reg!2681 r!15766)) (ite c!145447 (regTwo!5216 (reg!2681 r!15766)) (ite c!145449 (regTwo!5217 (reg!2681 r!15766)) (reg!2681 (reg!2681 r!15766))))))))))

(declare-fun bm!53434 () Bool)

(assert (=> bm!53434 (= call!53440 (removeUselessConcat!65 (ite c!145447 (regOne!5216 (reg!2681 r!15766)) (regOne!5217 (reg!2681 r!15766)))))))

(declare-fun b!898369 () Bool)

(assert (=> b!898369 (= e!587728 (Concat!4185 call!53440 call!53439))))

(declare-fun b!898370 () Bool)

(declare-fun e!587726 () Regex!2352)

(assert (=> b!898370 (= e!587726 call!53438)))

(declare-fun b!898371 () Bool)

(assert (=> b!898371 (= e!587726 e!587724)))

(assert (=> b!898371 (= c!145446 (and (is-Concat!4185 (reg!2681 r!15766)) (is-EmptyExpr!2352 (regTwo!5216 (reg!2681 r!15766)))))))

(declare-fun d!278020 () Bool)

(declare-fun e!587727 () Bool)

(assert (=> d!278020 e!587727))

(declare-fun res!408480 () Bool)

(assert (=> d!278020 (=> (not res!408480) (not e!587727))))

(declare-fun lt!333876 () Regex!2352)

(assert (=> d!278020 (= res!408480 (validRegex!821 lt!333876))))

(assert (=> d!278020 (= lt!333876 e!587726)))

(assert (=> d!278020 (= c!145450 (and (is-Concat!4185 (reg!2681 r!15766)) (is-EmptyExpr!2352 (regOne!5216 (reg!2681 r!15766)))))))

(assert (=> d!278020 (validRegex!821 (reg!2681 r!15766))))

(assert (=> d!278020 (= (removeUselessConcat!65 (reg!2681 r!15766)) lt!333876)))

(declare-fun bm!53435 () Bool)

(assert (=> bm!53435 (= call!53441 call!53438)))

(declare-fun b!898372 () Bool)

(assert (=> b!898372 (= e!587729 (Star!2352 call!53437))))

(declare-fun bm!53436 () Bool)

(assert (=> bm!53436 (= call!53437 call!53439)))

(declare-fun b!898373 () Bool)

(assert (=> b!898373 (= e!587727 (= (nullable!623 lt!333876) (nullable!623 (reg!2681 r!15766))))))

(declare-fun b!898374 () Bool)

(assert (=> b!898374 (= e!587729 (reg!2681 r!15766))))

(declare-fun b!898375 () Bool)

(assert (=> b!898375 (= c!145447 (is-Concat!4185 (reg!2681 r!15766)))))

(assert (=> b!898375 (= e!587724 e!587728)))

(assert (= (and d!278020 c!145450) b!898370))

(assert (= (and d!278020 (not c!145450)) b!898371))

(assert (= (and b!898371 c!145446) b!898365))

(assert (= (and b!898371 (not c!145446)) b!898375))

(assert (= (and b!898375 c!145447) b!898369))

(assert (= (and b!898375 (not c!145447)) b!898368))

(assert (= (and b!898368 c!145449) b!898366))

(assert (= (and b!898368 (not c!145449)) b!898367))

(assert (= (and b!898367 c!145448) b!898372))

(assert (= (and b!898367 (not c!145448)) b!898374))

(assert (= (or b!898366 b!898372) bm!53436))

(assert (= (or b!898369 bm!53436) bm!53432))

(assert (= (or b!898369 b!898366) bm!53434))

(assert (= (or b!898365 bm!53432) bm!53435))

(assert (= (or b!898370 bm!53435) bm!53433))

(assert (= (and d!278020 res!408480) b!898373))

(declare-fun m!1137109 () Bool)

(assert (=> bm!53433 m!1137109))

(declare-fun m!1137111 () Bool)

(assert (=> bm!53434 m!1137111))

(declare-fun m!1137113 () Bool)

(assert (=> d!278020 m!1137113))

(assert (=> d!278020 m!1136877))

(declare-fun m!1137115 () Bool)

(assert (=> b!898373 m!1137115))

(assert (=> b!898373 m!1136977))

(assert (=> b!897908 d!278020))

(declare-fun d!278022 () Bool)

(assert (=> d!278022 (= (matchR!890 (reg!2681 r!15766) (_1!6179 lt!333789)) (matchR!890 (removeUselessConcat!65 (reg!2681 r!15766)) (_1!6179 lt!333789)))))

(declare-fun lt!333879 () Unit!14283)

(declare-fun choose!5404 (Regex!2352 List!9582) Unit!14283)

(assert (=> d!278022 (= lt!333879 (choose!5404 (reg!2681 r!15766) (_1!6179 lt!333789)))))

(assert (=> d!278022 (validRegex!821 (reg!2681 r!15766))))

(assert (=> d!278022 (= (lemmaRemoveUselessConcatSound!57 (reg!2681 r!15766) (_1!6179 lt!333789)) lt!333879)))

(declare-fun bs!235089 () Bool)

(assert (= bs!235089 d!278022))

(assert (=> bs!235089 m!1136853))

(assert (=> bs!235089 m!1136877))

(assert (=> bs!235089 m!1136893))

(declare-fun m!1137117 () Bool)

(assert (=> bs!235089 m!1137117))

(assert (=> bs!235089 m!1136853))

(assert (=> bs!235089 m!1136855))

(assert (=> b!897908 d!278022))

(declare-fun d!278024 () Bool)

(declare-fun lt!333880 () Int)

(assert (=> d!278024 (>= lt!333880 0)))

(declare-fun e!587732 () Int)

(assert (=> d!278024 (= lt!333880 e!587732)))

(declare-fun c!145451 () Bool)

(assert (=> d!278024 (= c!145451 (is-Nil!9566 (_1!6179 lt!333789)))))

(assert (=> d!278024 (= (size!7857 (_1!6179 lt!333789)) lt!333880)))

(declare-fun b!898380 () Bool)

(assert (=> b!898380 (= e!587732 0)))

(declare-fun b!898381 () Bool)

(assert (=> b!898381 (= e!587732 (+ 1 (size!7857 (t!100628 (_1!6179 lt!333789)))))))

(assert (= (and d!278024 c!145451) b!898380))

(assert (= (and d!278024 (not c!145451)) b!898381))

(declare-fun m!1137119 () Bool)

(assert (=> b!898381 m!1137119))

(assert (=> b!897907 d!278024))

(declare-fun d!278026 () Bool)

(assert (=> d!278026 (= (isEmpty!5761 (_1!6179 lt!333789)) (is-Nil!9566 (_1!6179 lt!333789)))))

(assert (=> b!897912 d!278026))

(declare-fun b!898386 () Bool)

(declare-fun e!587735 () Bool)

(declare-fun tp!282087 () Bool)

(assert (=> b!898386 (= e!587735 (and tp_is_empty!4347 tp!282087))))

(assert (=> b!897904 (= tp!282061 e!587735)))

(assert (= (and b!897904 (is-Cons!9566 (t!100628 s!10566))) b!898386))

(declare-fun b!898398 () Bool)

(declare-fun e!587738 () Bool)

(declare-fun tp!282101 () Bool)

(declare-fun tp!282102 () Bool)

(assert (=> b!898398 (= e!587738 (and tp!282101 tp!282102))))

(declare-fun b!898400 () Bool)

(declare-fun tp!282098 () Bool)

(declare-fun tp!282099 () Bool)

(assert (=> b!898400 (= e!587738 (and tp!282098 tp!282099))))

(declare-fun b!898399 () Bool)

(declare-fun tp!282100 () Bool)

(assert (=> b!898399 (= e!587738 tp!282100)))

(declare-fun b!898397 () Bool)

(assert (=> b!898397 (= e!587738 tp_is_empty!4347)))

(assert (=> b!897909 (= tp!282064 e!587738)))

(assert (= (and b!897909 (is-ElementMatch!2352 (regOne!5216 r!15766))) b!898397))

(assert (= (and b!897909 (is-Concat!4185 (regOne!5216 r!15766))) b!898398))

(assert (= (and b!897909 (is-Star!2352 (regOne!5216 r!15766))) b!898399))

(assert (= (and b!897909 (is-Union!2352 (regOne!5216 r!15766))) b!898400))

(declare-fun b!898402 () Bool)

(declare-fun e!587739 () Bool)

(declare-fun tp!282106 () Bool)

(declare-fun tp!282107 () Bool)

(assert (=> b!898402 (= e!587739 (and tp!282106 tp!282107))))

(declare-fun b!898404 () Bool)

(declare-fun tp!282103 () Bool)

(declare-fun tp!282104 () Bool)

(assert (=> b!898404 (= e!587739 (and tp!282103 tp!282104))))

(declare-fun b!898403 () Bool)

(declare-fun tp!282105 () Bool)

(assert (=> b!898403 (= e!587739 tp!282105)))

(declare-fun b!898401 () Bool)

(assert (=> b!898401 (= e!587739 tp_is_empty!4347)))

(assert (=> b!897909 (= tp!282062 e!587739)))

(assert (= (and b!897909 (is-ElementMatch!2352 (regTwo!5216 r!15766))) b!898401))

(assert (= (and b!897909 (is-Concat!4185 (regTwo!5216 r!15766))) b!898402))

(assert (= (and b!897909 (is-Star!2352 (regTwo!5216 r!15766))) b!898403))

(assert (= (and b!897909 (is-Union!2352 (regTwo!5216 r!15766))) b!898404))

(declare-fun b!898406 () Bool)

(declare-fun e!587740 () Bool)

(declare-fun tp!282111 () Bool)

(declare-fun tp!282112 () Bool)

(assert (=> b!898406 (= e!587740 (and tp!282111 tp!282112))))

(declare-fun b!898408 () Bool)

(declare-fun tp!282108 () Bool)

(declare-fun tp!282109 () Bool)

(assert (=> b!898408 (= e!587740 (and tp!282108 tp!282109))))

(declare-fun b!898407 () Bool)

(declare-fun tp!282110 () Bool)

(assert (=> b!898407 (= e!587740 tp!282110)))

(declare-fun b!898405 () Bool)

(assert (=> b!898405 (= e!587740 tp_is_empty!4347)))

(assert (=> b!897914 (= tp!282066 e!587740)))

(assert (= (and b!897914 (is-ElementMatch!2352 (regOne!5217 r!15766))) b!898405))

(assert (= (and b!897914 (is-Concat!4185 (regOne!5217 r!15766))) b!898406))

(assert (= (and b!897914 (is-Star!2352 (regOne!5217 r!15766))) b!898407))

(assert (= (and b!897914 (is-Union!2352 (regOne!5217 r!15766))) b!898408))

(declare-fun b!898410 () Bool)

(declare-fun e!587741 () Bool)

(declare-fun tp!282116 () Bool)

(declare-fun tp!282117 () Bool)

(assert (=> b!898410 (= e!587741 (and tp!282116 tp!282117))))

(declare-fun b!898412 () Bool)

(declare-fun tp!282113 () Bool)

(declare-fun tp!282114 () Bool)

(assert (=> b!898412 (= e!587741 (and tp!282113 tp!282114))))

(declare-fun b!898411 () Bool)

(declare-fun tp!282115 () Bool)

(assert (=> b!898411 (= e!587741 tp!282115)))

(declare-fun b!898409 () Bool)

(assert (=> b!898409 (= e!587741 tp_is_empty!4347)))

(assert (=> b!897914 (= tp!282063 e!587741)))

(assert (= (and b!897914 (is-ElementMatch!2352 (regTwo!5217 r!15766))) b!898409))

(assert (= (and b!897914 (is-Concat!4185 (regTwo!5217 r!15766))) b!898410))

(assert (= (and b!897914 (is-Star!2352 (regTwo!5217 r!15766))) b!898411))

(assert (= (and b!897914 (is-Union!2352 (regTwo!5217 r!15766))) b!898412))

(declare-fun b!898414 () Bool)

(declare-fun e!587742 () Bool)

(declare-fun tp!282121 () Bool)

(declare-fun tp!282122 () Bool)

(assert (=> b!898414 (= e!587742 (and tp!282121 tp!282122))))

(declare-fun b!898416 () Bool)

(declare-fun tp!282118 () Bool)

(declare-fun tp!282119 () Bool)

(assert (=> b!898416 (= e!587742 (and tp!282118 tp!282119))))

(declare-fun b!898415 () Bool)

(declare-fun tp!282120 () Bool)

(assert (=> b!898415 (= e!587742 tp!282120)))

(declare-fun b!898413 () Bool)

(assert (=> b!898413 (= e!587742 tp_is_empty!4347)))

(assert (=> b!897903 (= tp!282065 e!587742)))

(assert (= (and b!897903 (is-ElementMatch!2352 (reg!2681 r!15766))) b!898413))

(assert (= (and b!897903 (is-Concat!4185 (reg!2681 r!15766))) b!898414))

(assert (= (and b!897903 (is-Star!2352 (reg!2681 r!15766))) b!898415))

(assert (= (and b!897903 (is-Union!2352 (reg!2681 r!15766))) b!898416))

(push 1)

(assert (not b!898191))

(assert (not b!898410))

(assert (not b!898312))

(assert (not d!278012))

(assert (not d!278022))

(assert (not b!898119))

(assert (not b!898168))

(assert (not b!898398))

(assert (not b!898311))

(assert (not b!898166))

(assert (not bm!53402))

(assert (not b!898108))

(assert (not d!277998))

(assert (not d!277992))

(assert (not d!278002))

(assert (not d!277974))

(assert (not b!898190))

(assert (not b!898117))

(assert (not b!898298))

(assert (not d!278008))

(assert (not b!898406))

(assert (not b!898403))

(assert (not b!898284))

(assert (not b!898096))

(assert (not b!898414))

(assert (not b!898412))

(assert (not bm!53401))

(assert (not b!898399))

(assert (not bm!53398))

(assert (not b!898042))

(assert (not bm!53384))

(assert (not b!898400))

(assert (not b!898045))

(assert (not b!898282))

(assert (not b!898110))

(assert (not d!278020))

(assert (not bm!53421))

(assert (not b!898279))

(assert (not d!277996))

(assert (not b!898120))

(assert (not b!898300))

(assert tp_is_empty!4347)

(assert (not b!898106))

(assert (not b!898169))

(assert (not b!898103))

(assert (not b!898402))

(assert (not b!898404))

(assert (not bm!53434))

(assert (not b!898280))

(assert (not b!898159))

(assert (not b!898411))

(assert (not b!898121))

(assert (not bm!53433))

(assert (not bm!53391))

(assert (not b!898314))

(assert (not b!898309))

(assert (not b!898415))

(assert (not b!898407))

(assert (not bm!53404))

(assert (not d!278018))

(assert (not b!898281))

(assert (not b!898386))

(assert (not b!898416))

(assert (not bm!53383))

(assert (not b!898107))

(assert (not d!277968))

(assert (not b!898373))

(assert (not bm!53400))

(assert (not b!898178))

(assert (not b!898302))

(assert (not d!278000))

(assert (not b!898171))

(assert (not b!898276))

(assert (not d!277976))

(assert (not b!898151))

(assert (not bm!53390))

(assert (not b!898313))

(assert (not b!898408))

(assert (not d!277986))

(assert (not b!898105))

(assert (not b!898122))

(assert (not b!898381))

(assert (not b!898170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

