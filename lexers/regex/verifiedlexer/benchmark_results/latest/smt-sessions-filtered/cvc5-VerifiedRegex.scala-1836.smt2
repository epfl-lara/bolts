; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!91312 () Bool)

(assert start!91312)

(declare-fun b!1063208 () Bool)

(assert (=> b!1063208 true))

(assert (=> b!1063208 true))

(assert (=> b!1063208 true))

(declare-fun b!1063204 () Bool)

(declare-fun e!674510 () Bool)

(declare-fun tp!319287 () Bool)

(declare-fun tp!319285 () Bool)

(assert (=> b!1063204 (= e!674510 (and tp!319287 tp!319285))))

(declare-fun b!1063205 () Bool)

(declare-fun tp!319289 () Bool)

(assert (=> b!1063205 (= e!674510 tp!319289)))

(declare-fun b!1063206 () Bool)

(declare-fun tp_is_empty!5503 () Bool)

(assert (=> b!1063206 (= e!674510 tp_is_empty!5503)))

(declare-fun b!1063207 () Bool)

(declare-fun e!674509 () Bool)

(declare-datatypes ((C!6430 0))(
  ( (C!6431 (val!3463 Int)) )
))
(declare-datatypes ((Regex!2930 0))(
  ( (ElementMatch!2930 (c!178245 C!6430)) (Concat!4763 (regOne!6372 Regex!2930) (regTwo!6372 Regex!2930)) (EmptyExpr!2930) (Star!2930 (reg!3259 Regex!2930)) (EmptyLang!2930) (Union!2930 (regOne!6373 Regex!2930) (regTwo!6373 Regex!2930)) )
))
(declare-fun r!15766 () Regex!2930)

(declare-fun nullable!1017 (Regex!2930) Bool)

(assert (=> b!1063207 (= e!674509 (not (nullable!1017 (reg!3259 r!15766))))))

(declare-fun e!674508 () Bool)

(assert (=> b!1063208 (= e!674508 e!674509)))

(declare-fun res!475001 () Bool)

(assert (=> b!1063208 (=> res!475001 e!674509)))

(declare-fun validRegex!1399 (Regex!2930) Bool)

(assert (=> b!1063208 (= res!475001 (not (validRegex!1399 (reg!3259 r!15766))))))

(declare-fun lt!360100 () Regex!2930)

(declare-datatypes ((List!10160 0))(
  ( (Nil!10144) (Cons!10144 (h!15545 C!6430) (t!101206 List!10160)) )
))
(declare-fun s!10566 () List!10160)

(declare-fun lambda!38399 () Int)

(declare-datatypes ((tuple2!11574 0))(
  ( (tuple2!11575 (_1!6613 List!10160) (_2!6613 List!10160)) )
))
(declare-datatypes ((Option!2429 0))(
  ( (None!2428) (Some!2428 (v!19845 tuple2!11574)) )
))
(declare-fun isDefined!2071 (Option!2429) Bool)

(declare-fun findConcatSeparation!535 (Regex!2930 Regex!2930 List!10160 List!10160 List!10160) Option!2429)

(declare-fun Exists!653 (Int) Bool)

(assert (=> b!1063208 (= (isDefined!2071 (findConcatSeparation!535 (reg!3259 r!15766) lt!360100 Nil!10144 s!10566 s!10566)) (Exists!653 lambda!38399))))

(declare-datatypes ((Unit!15535 0))(
  ( (Unit!15536) )
))
(declare-fun lt!360101 () Unit!15535)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!535 (Regex!2930 Regex!2930 List!10160) Unit!15535)

(assert (=> b!1063208 (= lt!360101 (lemmaFindConcatSeparationEquivalentToExists!535 (reg!3259 r!15766) lt!360100 s!10566))))

(assert (=> b!1063208 (= lt!360100 (Star!2930 (reg!3259 r!15766)))))

(declare-fun res!475002 () Bool)

(declare-fun e!674511 () Bool)

(assert (=> start!91312 (=> (not res!475002) (not e!674511))))

(assert (=> start!91312 (= res!475002 (validRegex!1399 r!15766))))

(assert (=> start!91312 e!674511))

(assert (=> start!91312 e!674510))

(declare-fun e!674512 () Bool)

(assert (=> start!91312 e!674512))

(declare-fun b!1063209 () Bool)

(declare-fun tp!319288 () Bool)

(declare-fun tp!319286 () Bool)

(assert (=> b!1063209 (= e!674510 (and tp!319288 tp!319286))))

(declare-fun b!1063210 () Bool)

(assert (=> b!1063210 (= e!674511 (not e!674508))))

(declare-fun res!475003 () Bool)

(assert (=> b!1063210 (=> res!475003 e!674508)))

(declare-fun lt!360102 () Bool)

(assert (=> b!1063210 (= res!475003 (or lt!360102 (and (is-Concat!4763 r!15766) (is-EmptyExpr!2930 (regOne!6372 r!15766))) (and (is-Concat!4763 r!15766) (is-EmptyExpr!2930 (regTwo!6372 r!15766))) (is-Concat!4763 r!15766) (is-Union!2930 r!15766) (not (is-Star!2930 r!15766))))))

(declare-fun matchRSpec!729 (Regex!2930 List!10160) Bool)

(assert (=> b!1063210 (= lt!360102 (matchRSpec!729 r!15766 s!10566))))

(declare-fun matchR!1466 (Regex!2930 List!10160) Bool)

(assert (=> b!1063210 (= lt!360102 (matchR!1466 r!15766 s!10566))))

(declare-fun lt!360103 () Unit!15535)

(declare-fun mainMatchTheorem!729 (Regex!2930 List!10160) Unit!15535)

(assert (=> b!1063210 (= lt!360103 (mainMatchTheorem!729 r!15766 s!10566))))

(declare-fun b!1063211 () Bool)

(declare-fun tp!319290 () Bool)

(assert (=> b!1063211 (= e!674512 (and tp_is_empty!5503 tp!319290))))

(assert (= (and start!91312 res!475002) b!1063210))

(assert (= (and b!1063210 (not res!475003)) b!1063208))

(assert (= (and b!1063208 (not res!475001)) b!1063207))

(assert (= (and start!91312 (is-ElementMatch!2930 r!15766)) b!1063206))

(assert (= (and start!91312 (is-Concat!4763 r!15766)) b!1063204))

(assert (= (and start!91312 (is-Star!2930 r!15766)) b!1063205))

(assert (= (and start!91312 (is-Union!2930 r!15766)) b!1063209))

(assert (= (and start!91312 (is-Cons!10144 s!10566)) b!1063211))

(declare-fun m!1221883 () Bool)

(assert (=> b!1063207 m!1221883))

(declare-fun m!1221885 () Bool)

(assert (=> b!1063208 m!1221885))

(declare-fun m!1221887 () Bool)

(assert (=> b!1063208 m!1221887))

(declare-fun m!1221889 () Bool)

(assert (=> b!1063208 m!1221889))

(declare-fun m!1221891 () Bool)

(assert (=> b!1063208 m!1221891))

(assert (=> b!1063208 m!1221885))

(declare-fun m!1221893 () Bool)

(assert (=> b!1063208 m!1221893))

(declare-fun m!1221895 () Bool)

(assert (=> start!91312 m!1221895))

(declare-fun m!1221897 () Bool)

(assert (=> b!1063210 m!1221897))

(declare-fun m!1221899 () Bool)

(assert (=> b!1063210 m!1221899))

(declare-fun m!1221901 () Bool)

(assert (=> b!1063210 m!1221901))

(push 1)

(assert (not b!1063208))

(assert (not start!91312))

(assert (not b!1063205))

(assert (not b!1063209))

(assert tp_is_empty!5503)

(assert (not b!1063210))

(assert (not b!1063204))

(assert (not b!1063207))

(assert (not b!1063211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!76583 () Bool)

(declare-fun call!76588 () Bool)

(declare-fun call!76589 () Bool)

(assert (=> bm!76583 (= call!76588 call!76589)))

(declare-fun d!300841 () Bool)

(declare-fun res!475031 () Bool)

(declare-fun e!674550 () Bool)

(assert (=> d!300841 (=> res!475031 e!674550)))

(assert (=> d!300841 (= res!475031 (is-ElementMatch!2930 r!15766))))

(assert (=> d!300841 (= (validRegex!1399 r!15766) e!674550)))

(declare-fun bm!76584 () Bool)

(declare-fun c!178251 () Bool)

(declare-fun c!178252 () Bool)

(assert (=> bm!76584 (= call!76589 (validRegex!1399 (ite c!178251 (reg!3259 r!15766) (ite c!178252 (regTwo!6373 r!15766) (regTwo!6372 r!15766)))))))

(declare-fun b!1063266 () Bool)

(declare-fun res!475029 () Bool)

(declare-fun e!674548 () Bool)

(assert (=> b!1063266 (=> (not res!475029) (not e!674548))))

(declare-fun call!76590 () Bool)

(assert (=> b!1063266 (= res!475029 call!76590)))

(declare-fun e!674549 () Bool)

(assert (=> b!1063266 (= e!674549 e!674548)))

(declare-fun b!1063267 () Bool)

(declare-fun e!674546 () Bool)

(assert (=> b!1063267 (= e!674550 e!674546)))

(assert (=> b!1063267 (= c!178251 (is-Star!2930 r!15766))))

(declare-fun b!1063268 () Bool)

(assert (=> b!1063268 (= e!674548 call!76588)))

(declare-fun b!1063269 () Bool)

(declare-fun e!674545 () Bool)

(assert (=> b!1063269 (= e!674545 call!76589)))

(declare-fun bm!76585 () Bool)

(assert (=> bm!76585 (= call!76590 (validRegex!1399 (ite c!178252 (regOne!6373 r!15766) (regOne!6372 r!15766))))))

(declare-fun b!1063270 () Bool)

(assert (=> b!1063270 (= e!674546 e!674549)))

(assert (=> b!1063270 (= c!178252 (is-Union!2930 r!15766))))

(declare-fun b!1063271 () Bool)

(assert (=> b!1063271 (= e!674546 e!674545)))

(declare-fun res!475030 () Bool)

(assert (=> b!1063271 (= res!475030 (not (nullable!1017 (reg!3259 r!15766))))))

(assert (=> b!1063271 (=> (not res!475030) (not e!674545))))

(declare-fun b!1063272 () Bool)

(declare-fun res!475027 () Bool)

(declare-fun e!674547 () Bool)

(assert (=> b!1063272 (=> res!475027 e!674547)))

(assert (=> b!1063272 (= res!475027 (not (is-Concat!4763 r!15766)))))

(assert (=> b!1063272 (= e!674549 e!674547)))

(declare-fun b!1063273 () Bool)

(declare-fun e!674544 () Bool)

(assert (=> b!1063273 (= e!674544 call!76588)))

(declare-fun b!1063274 () Bool)

(assert (=> b!1063274 (= e!674547 e!674544)))

(declare-fun res!475028 () Bool)

(assert (=> b!1063274 (=> (not res!475028) (not e!674544))))

(assert (=> b!1063274 (= res!475028 call!76590)))

(assert (= (and d!300841 (not res!475031)) b!1063267))

(assert (= (and b!1063267 c!178251) b!1063271))

(assert (= (and b!1063267 (not c!178251)) b!1063270))

(assert (= (and b!1063271 res!475030) b!1063269))

(assert (= (and b!1063270 c!178252) b!1063266))

(assert (= (and b!1063270 (not c!178252)) b!1063272))

(assert (= (and b!1063266 res!475029) b!1063268))

(assert (= (and b!1063272 (not res!475027)) b!1063274))

(assert (= (and b!1063274 res!475028) b!1063273))

(assert (= (or b!1063268 b!1063273) bm!76583))

(assert (= (or b!1063266 b!1063274) bm!76585))

(assert (= (or b!1063269 bm!76583) bm!76584))

(declare-fun m!1221923 () Bool)

(assert (=> bm!76584 m!1221923))

(declare-fun m!1221925 () Bool)

(assert (=> bm!76585 m!1221925))

(assert (=> b!1063271 m!1221883))

(assert (=> start!91312 d!300841))

(declare-fun d!300843 () Bool)

(declare-fun nullableFct!224 (Regex!2930) Bool)

(assert (=> d!300843 (= (nullable!1017 (reg!3259 r!15766)) (nullableFct!224 (reg!3259 r!15766)))))

(declare-fun bs!251896 () Bool)

(assert (= bs!251896 d!300843))

(declare-fun m!1221927 () Bool)

(assert (=> bs!251896 m!1221927))

(assert (=> b!1063207 d!300843))

(declare-fun d!300845 () Bool)

(declare-fun isEmpty!6558 (Option!2429) Bool)

(assert (=> d!300845 (= (isDefined!2071 (findConcatSeparation!535 (reg!3259 r!15766) lt!360100 Nil!10144 s!10566 s!10566)) (not (isEmpty!6558 (findConcatSeparation!535 (reg!3259 r!15766) lt!360100 Nil!10144 s!10566 s!10566))))))

(declare-fun bs!251897 () Bool)

(assert (= bs!251897 d!300845))

(assert (=> bs!251897 m!1221885))

(declare-fun m!1221929 () Bool)

(assert (=> bs!251897 m!1221929))

(assert (=> b!1063208 d!300845))

(declare-fun d!300847 () Bool)

(declare-fun choose!6773 (Int) Bool)

(assert (=> d!300847 (= (Exists!653 lambda!38399) (choose!6773 lambda!38399))))

(declare-fun bs!251898 () Bool)

(assert (= bs!251898 d!300847))

(declare-fun m!1221931 () Bool)

(assert (=> bs!251898 m!1221931))

(assert (=> b!1063208 d!300847))

(declare-fun b!1063293 () Bool)

(declare-fun e!674561 () Option!2429)

(declare-fun e!674562 () Option!2429)

(assert (=> b!1063293 (= e!674561 e!674562)))

(declare-fun c!178258 () Bool)

(assert (=> b!1063293 (= c!178258 (is-Nil!10144 s!10566))))

(declare-fun b!1063294 () Bool)

(declare-fun res!475043 () Bool)

(declare-fun e!674565 () Bool)

(assert (=> b!1063294 (=> (not res!475043) (not e!674565))))

(declare-fun lt!360124 () Option!2429)

(declare-fun get!3646 (Option!2429) tuple2!11574)

(assert (=> b!1063294 (= res!475043 (matchR!1466 lt!360100 (_2!6613 (get!3646 lt!360124))))))

(declare-fun b!1063295 () Bool)

(declare-fun res!475045 () Bool)

(assert (=> b!1063295 (=> (not res!475045) (not e!674565))))

(assert (=> b!1063295 (= res!475045 (matchR!1466 (reg!3259 r!15766) (_1!6613 (get!3646 lt!360124))))))

(declare-fun b!1063296 () Bool)

(declare-fun e!674563 () Bool)

(assert (=> b!1063296 (= e!674563 (matchR!1466 lt!360100 s!10566))))

(declare-fun b!1063297 () Bool)

(declare-fun lt!360123 () Unit!15535)

(declare-fun lt!360122 () Unit!15535)

(assert (=> b!1063297 (= lt!360123 lt!360122)))

(declare-fun ++!2803 (List!10160 List!10160) List!10160)

(assert (=> b!1063297 (= (++!2803 (++!2803 Nil!10144 (Cons!10144 (h!15545 s!10566) Nil!10144)) (t!101206 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!396 (List!10160 C!6430 List!10160 List!10160) Unit!15535)

(assert (=> b!1063297 (= lt!360122 (lemmaMoveElementToOtherListKeepsConcatEq!396 Nil!10144 (h!15545 s!10566) (t!101206 s!10566) s!10566))))

(assert (=> b!1063297 (= e!674562 (findConcatSeparation!535 (reg!3259 r!15766) lt!360100 (++!2803 Nil!10144 (Cons!10144 (h!15545 s!10566) Nil!10144)) (t!101206 s!10566) s!10566))))

(declare-fun b!1063298 () Bool)

(assert (=> b!1063298 (= e!674562 None!2428)))

(declare-fun d!300849 () Bool)

(declare-fun e!674564 () Bool)

(assert (=> d!300849 e!674564))

(declare-fun res!475042 () Bool)

(assert (=> d!300849 (=> res!475042 e!674564)))

(assert (=> d!300849 (= res!475042 e!674565)))

(declare-fun res!475046 () Bool)

(assert (=> d!300849 (=> (not res!475046) (not e!674565))))

(assert (=> d!300849 (= res!475046 (isDefined!2071 lt!360124))))

(assert (=> d!300849 (= lt!360124 e!674561)))

(declare-fun c!178257 () Bool)

(assert (=> d!300849 (= c!178257 e!674563)))

(declare-fun res!475044 () Bool)

(assert (=> d!300849 (=> (not res!475044) (not e!674563))))

(assert (=> d!300849 (= res!475044 (matchR!1466 (reg!3259 r!15766) Nil!10144))))

(assert (=> d!300849 (validRegex!1399 (reg!3259 r!15766))))

(assert (=> d!300849 (= (findConcatSeparation!535 (reg!3259 r!15766) lt!360100 Nil!10144 s!10566 s!10566) lt!360124)))

(declare-fun b!1063299 () Bool)

(assert (=> b!1063299 (= e!674564 (not (isDefined!2071 lt!360124)))))

(declare-fun b!1063300 () Bool)

(assert (=> b!1063300 (= e!674561 (Some!2428 (tuple2!11575 Nil!10144 s!10566)))))

(declare-fun b!1063301 () Bool)

(assert (=> b!1063301 (= e!674565 (= (++!2803 (_1!6613 (get!3646 lt!360124)) (_2!6613 (get!3646 lt!360124))) s!10566))))

(assert (= (and d!300849 res!475044) b!1063296))

(assert (= (and d!300849 c!178257) b!1063300))

(assert (= (and d!300849 (not c!178257)) b!1063293))

(assert (= (and b!1063293 c!178258) b!1063298))

(assert (= (and b!1063293 (not c!178258)) b!1063297))

(assert (= (and d!300849 res!475046) b!1063295))

(assert (= (and b!1063295 res!475045) b!1063294))

(assert (= (and b!1063294 res!475043) b!1063301))

(assert (= (and d!300849 (not res!475042)) b!1063299))

(declare-fun m!1221933 () Bool)

(assert (=> b!1063297 m!1221933))

(assert (=> b!1063297 m!1221933))

(declare-fun m!1221935 () Bool)

(assert (=> b!1063297 m!1221935))

(declare-fun m!1221937 () Bool)

(assert (=> b!1063297 m!1221937))

(assert (=> b!1063297 m!1221933))

(declare-fun m!1221939 () Bool)

(assert (=> b!1063297 m!1221939))

(declare-fun m!1221941 () Bool)

(assert (=> b!1063299 m!1221941))

(declare-fun m!1221943 () Bool)

(assert (=> b!1063296 m!1221943))

(assert (=> d!300849 m!1221941))

(declare-fun m!1221945 () Bool)

(assert (=> d!300849 m!1221945))

(assert (=> d!300849 m!1221889))

(declare-fun m!1221947 () Bool)

(assert (=> b!1063294 m!1221947))

(declare-fun m!1221949 () Bool)

(assert (=> b!1063294 m!1221949))

(assert (=> b!1063301 m!1221947))

(declare-fun m!1221951 () Bool)

(assert (=> b!1063301 m!1221951))

(assert (=> b!1063295 m!1221947))

(declare-fun m!1221953 () Bool)

(assert (=> b!1063295 m!1221953))

(assert (=> b!1063208 d!300849))

(declare-fun bs!251899 () Bool)

(declare-fun d!300853 () Bool)

(assert (= bs!251899 (and d!300853 b!1063208)))

(declare-fun lambda!38407 () Int)

(assert (=> bs!251899 (= lambda!38407 lambda!38399)))

(assert (=> d!300853 true))

(assert (=> d!300853 true))

(assert (=> d!300853 true))

(assert (=> d!300853 (= (isDefined!2071 (findConcatSeparation!535 (reg!3259 r!15766) lt!360100 Nil!10144 s!10566 s!10566)) (Exists!653 lambda!38407))))

(declare-fun lt!360127 () Unit!15535)

(declare-fun choose!6774 (Regex!2930 Regex!2930 List!10160) Unit!15535)

(assert (=> d!300853 (= lt!360127 (choose!6774 (reg!3259 r!15766) lt!360100 s!10566))))

(assert (=> d!300853 (validRegex!1399 (reg!3259 r!15766))))

(assert (=> d!300853 (= (lemmaFindConcatSeparationEquivalentToExists!535 (reg!3259 r!15766) lt!360100 s!10566) lt!360127)))

(declare-fun bs!251900 () Bool)

(assert (= bs!251900 d!300853))

(declare-fun m!1221955 () Bool)

(assert (=> bs!251900 m!1221955))

(assert (=> bs!251900 m!1221889))

(assert (=> bs!251900 m!1221885))

(assert (=> bs!251900 m!1221885))

(assert (=> bs!251900 m!1221893))

(declare-fun m!1221957 () Bool)

(assert (=> bs!251900 m!1221957))

(assert (=> b!1063208 d!300853))

(declare-fun bm!76586 () Bool)

(declare-fun call!76591 () Bool)

(declare-fun call!76592 () Bool)

(assert (=> bm!76586 (= call!76591 call!76592)))

(declare-fun d!300855 () Bool)

(declare-fun res!475067 () Bool)

(declare-fun e!674590 () Bool)

(assert (=> d!300855 (=> res!475067 e!674590)))

(assert (=> d!300855 (= res!475067 (is-ElementMatch!2930 (reg!3259 r!15766)))))

(assert (=> d!300855 (= (validRegex!1399 (reg!3259 r!15766)) e!674590)))

(declare-fun c!178268 () Bool)

(declare-fun bm!76587 () Bool)

(declare-fun c!178267 () Bool)

(assert (=> bm!76587 (= call!76592 (validRegex!1399 (ite c!178267 (reg!3259 (reg!3259 r!15766)) (ite c!178268 (regTwo!6373 (reg!3259 r!15766)) (regTwo!6372 (reg!3259 r!15766))))))))

(declare-fun b!1063334 () Bool)

(declare-fun res!475065 () Bool)

(declare-fun e!674588 () Bool)

(assert (=> b!1063334 (=> (not res!475065) (not e!674588))))

(declare-fun call!76593 () Bool)

(assert (=> b!1063334 (= res!475065 call!76593)))

(declare-fun e!674589 () Bool)

(assert (=> b!1063334 (= e!674589 e!674588)))

(declare-fun b!1063335 () Bool)

(declare-fun e!674586 () Bool)

(assert (=> b!1063335 (= e!674590 e!674586)))

(assert (=> b!1063335 (= c!178267 (is-Star!2930 (reg!3259 r!15766)))))

(declare-fun b!1063336 () Bool)

(assert (=> b!1063336 (= e!674588 call!76591)))

(declare-fun b!1063337 () Bool)

(declare-fun e!674585 () Bool)

(assert (=> b!1063337 (= e!674585 call!76592)))

(declare-fun bm!76588 () Bool)

(assert (=> bm!76588 (= call!76593 (validRegex!1399 (ite c!178268 (regOne!6373 (reg!3259 r!15766)) (regOne!6372 (reg!3259 r!15766)))))))

(declare-fun b!1063338 () Bool)

(assert (=> b!1063338 (= e!674586 e!674589)))

(assert (=> b!1063338 (= c!178268 (is-Union!2930 (reg!3259 r!15766)))))

(declare-fun b!1063339 () Bool)

(assert (=> b!1063339 (= e!674586 e!674585)))

(declare-fun res!475066 () Bool)

(assert (=> b!1063339 (= res!475066 (not (nullable!1017 (reg!3259 (reg!3259 r!15766)))))))

(assert (=> b!1063339 (=> (not res!475066) (not e!674585))))

(declare-fun b!1063340 () Bool)

(declare-fun res!475063 () Bool)

(declare-fun e!674587 () Bool)

(assert (=> b!1063340 (=> res!475063 e!674587)))

(assert (=> b!1063340 (= res!475063 (not (is-Concat!4763 (reg!3259 r!15766))))))

(assert (=> b!1063340 (= e!674589 e!674587)))

(declare-fun b!1063341 () Bool)

(declare-fun e!674584 () Bool)

(assert (=> b!1063341 (= e!674584 call!76591)))

(declare-fun b!1063342 () Bool)

(assert (=> b!1063342 (= e!674587 e!674584)))

(declare-fun res!475064 () Bool)

(assert (=> b!1063342 (=> (not res!475064) (not e!674584))))

(assert (=> b!1063342 (= res!475064 call!76593)))

(assert (= (and d!300855 (not res!475067)) b!1063335))

(assert (= (and b!1063335 c!178267) b!1063339))

(assert (= (and b!1063335 (not c!178267)) b!1063338))

(assert (= (and b!1063339 res!475066) b!1063337))

(assert (= (and b!1063338 c!178268) b!1063334))

(assert (= (and b!1063338 (not c!178268)) b!1063340))

(assert (= (and b!1063334 res!475065) b!1063336))

(assert (= (and b!1063340 (not res!475063)) b!1063342))

(assert (= (and b!1063342 res!475064) b!1063341))

(assert (= (or b!1063336 b!1063341) bm!76586))

(assert (= (or b!1063334 b!1063342) bm!76588))

(assert (= (or b!1063337 bm!76586) bm!76587))

(declare-fun m!1221959 () Bool)

(assert (=> bm!76587 m!1221959))

(declare-fun m!1221961 () Bool)

(assert (=> bm!76588 m!1221961))

(declare-fun m!1221963 () Bool)

(assert (=> b!1063339 m!1221963))

(assert (=> b!1063208 d!300855))

(declare-fun bs!251902 () Bool)

(declare-fun b!1063399 () Bool)

(assert (= bs!251902 (and b!1063399 b!1063208)))

(declare-fun lambda!38415 () Int)

(assert (=> bs!251902 (not (= lambda!38415 lambda!38399))))

(declare-fun bs!251903 () Bool)

(assert (= bs!251903 (and b!1063399 d!300853)))

(assert (=> bs!251903 (not (= lambda!38415 lambda!38407))))

(assert (=> b!1063399 true))

(assert (=> b!1063399 true))

(declare-fun bs!251904 () Bool)

(declare-fun b!1063395 () Bool)

(assert (= bs!251904 (and b!1063395 b!1063208)))

(declare-fun lambda!38416 () Int)

(assert (=> bs!251904 (not (= lambda!38416 lambda!38399))))

(declare-fun bs!251905 () Bool)

(assert (= bs!251905 (and b!1063395 d!300853)))

(assert (=> bs!251905 (not (= lambda!38416 lambda!38407))))

(declare-fun bs!251906 () Bool)

(assert (= bs!251906 (and b!1063395 b!1063399)))

(assert (=> bs!251906 (not (= lambda!38416 lambda!38415))))

(assert (=> b!1063395 true))

(assert (=> b!1063395 true))

(declare-fun b!1063390 () Bool)

(declare-fun e!674619 () Bool)

(declare-fun call!76605 () Bool)

(assert (=> b!1063390 (= e!674619 call!76605)))

(declare-fun b!1063391 () Bool)

(declare-fun res!475092 () Bool)

(declare-fun e!674624 () Bool)

(assert (=> b!1063391 (=> res!475092 e!674624)))

(assert (=> b!1063391 (= res!475092 call!76605)))

(declare-fun e!674622 () Bool)

(assert (=> b!1063391 (= e!674622 e!674624)))

(declare-fun call!76604 () Bool)

(declare-fun c!178284 () Bool)

(declare-fun bm!76599 () Bool)

(assert (=> bm!76599 (= call!76604 (Exists!653 (ite c!178284 lambda!38415 lambda!38416)))))

(declare-fun b!1063392 () Bool)

(declare-fun e!674620 () Bool)

(assert (=> b!1063392 (= e!674620 e!674622)))

(assert (=> b!1063392 (= c!178284 (is-Star!2930 r!15766))))

(declare-fun b!1063393 () Bool)

(declare-fun e!674621 () Bool)

(assert (=> b!1063393 (= e!674621 (matchRSpec!729 (regTwo!6373 r!15766) s!10566))))

(declare-fun b!1063394 () Bool)

(assert (=> b!1063394 (= e!674620 e!674621)))

(declare-fun res!475093 () Bool)

(assert (=> b!1063394 (= res!475093 (matchRSpec!729 (regOne!6373 r!15766) s!10566))))

(assert (=> b!1063394 (=> res!475093 e!674621)))

(assert (=> b!1063395 (= e!674622 call!76604)))

(declare-fun d!300857 () Bool)

(declare-fun c!178283 () Bool)

(assert (=> d!300857 (= c!178283 (is-EmptyExpr!2930 r!15766))))

(assert (=> d!300857 (= (matchRSpec!729 r!15766 s!10566) e!674619)))

(declare-fun bm!76600 () Bool)

(declare-fun isEmpty!6559 (List!10160) Bool)

(assert (=> bm!76600 (= call!76605 (isEmpty!6559 s!10566))))

(declare-fun b!1063396 () Bool)

(declare-fun c!178282 () Bool)

(assert (=> b!1063396 (= c!178282 (is-Union!2930 r!15766))))

(declare-fun e!674623 () Bool)

(assert (=> b!1063396 (= e!674623 e!674620)))

(declare-fun b!1063397 () Bool)

(assert (=> b!1063397 (= e!674623 (= s!10566 (Cons!10144 (c!178245 r!15766) Nil!10144)))))

(declare-fun b!1063398 () Bool)

(declare-fun c!178281 () Bool)

(assert (=> b!1063398 (= c!178281 (is-ElementMatch!2930 r!15766))))

(declare-fun e!674618 () Bool)

(assert (=> b!1063398 (= e!674618 e!674623)))

(assert (=> b!1063399 (= e!674624 call!76604)))

(declare-fun b!1063400 () Bool)

(assert (=> b!1063400 (= e!674619 e!674618)))

(declare-fun res!475091 () Bool)

(assert (=> b!1063400 (= res!475091 (not (is-EmptyLang!2930 r!15766)))))

(assert (=> b!1063400 (=> (not res!475091) (not e!674618))))

(assert (= (and d!300857 c!178283) b!1063390))

(assert (= (and d!300857 (not c!178283)) b!1063400))

(assert (= (and b!1063400 res!475091) b!1063398))

(assert (= (and b!1063398 c!178281) b!1063397))

(assert (= (and b!1063398 (not c!178281)) b!1063396))

(assert (= (and b!1063396 c!178282) b!1063394))

(assert (= (and b!1063396 (not c!178282)) b!1063392))

(assert (= (and b!1063394 (not res!475093)) b!1063393))

(assert (= (and b!1063392 c!178284) b!1063391))

(assert (= (and b!1063392 (not c!178284)) b!1063395))

(assert (= (and b!1063391 (not res!475092)) b!1063399))

(assert (= (or b!1063399 b!1063395) bm!76599))

(assert (= (or b!1063390 b!1063391) bm!76600))

(declare-fun m!1221965 () Bool)

(assert (=> bm!76599 m!1221965))

(declare-fun m!1221967 () Bool)

(assert (=> b!1063393 m!1221967))

(declare-fun m!1221969 () Bool)

(assert (=> b!1063394 m!1221969))

(declare-fun m!1221971 () Bool)

(assert (=> bm!76600 m!1221971))

(assert (=> b!1063210 d!300857))

(declare-fun b!1063429 () Bool)

(declare-fun res!475110 () Bool)

(declare-fun e!674644 () Bool)

(assert (=> b!1063429 (=> res!475110 e!674644)))

(assert (=> b!1063429 (= res!475110 (not (is-ElementMatch!2930 r!15766)))))

(declare-fun e!674642 () Bool)

(assert (=> b!1063429 (= e!674642 e!674644)))

(declare-fun d!300859 () Bool)

(declare-fun e!674640 () Bool)

(assert (=> d!300859 e!674640))

(declare-fun c!178292 () Bool)

(assert (=> d!300859 (= c!178292 (is-EmptyExpr!2930 r!15766))))

(declare-fun lt!360130 () Bool)

(declare-fun e!674645 () Bool)

(assert (=> d!300859 (= lt!360130 e!674645)))

(declare-fun c!178293 () Bool)

(assert (=> d!300859 (= c!178293 (isEmpty!6559 s!10566))))

(assert (=> d!300859 (validRegex!1399 r!15766)))

(assert (=> d!300859 (= (matchR!1466 r!15766 s!10566) lt!360130)))

(declare-fun b!1063430 () Bool)

(assert (=> b!1063430 (= e!674640 e!674642)))

(declare-fun c!178291 () Bool)

(assert (=> b!1063430 (= c!178291 (is-EmptyLang!2930 r!15766))))

(declare-fun b!1063431 () Bool)

(assert (=> b!1063431 (= e!674642 (not lt!360130))))

(declare-fun b!1063432 () Bool)

(declare-fun res!475115 () Bool)

(declare-fun e!674643 () Bool)

(assert (=> b!1063432 (=> (not res!475115) (not e!674643))))

(declare-fun tail!1534 (List!10160) List!10160)

(assert (=> b!1063432 (= res!475115 (isEmpty!6559 (tail!1534 s!10566)))))

(declare-fun b!1063433 () Bool)

(declare-fun e!674639 () Bool)

(assert (=> b!1063433 (= e!674644 e!674639)))

(declare-fun res!475112 () Bool)

(assert (=> b!1063433 (=> (not res!475112) (not e!674639))))

(assert (=> b!1063433 (= res!475112 (not lt!360130))))

(declare-fun b!1063434 () Bool)

(declare-fun e!674641 () Bool)

(declare-fun head!1972 (List!10160) C!6430)

(assert (=> b!1063434 (= e!674641 (not (= (head!1972 s!10566) (c!178245 r!15766))))))

(declare-fun b!1063435 () Bool)

(assert (=> b!1063435 (= e!674645 (nullable!1017 r!15766))))

(declare-fun b!1063436 () Bool)

(declare-fun res!475117 () Bool)

(assert (=> b!1063436 (=> (not res!475117) (not e!674643))))

(declare-fun call!76608 () Bool)

(assert (=> b!1063436 (= res!475117 (not call!76608))))

(declare-fun b!1063437 () Bool)

(declare-fun derivativeStep!817 (Regex!2930 C!6430) Regex!2930)

(assert (=> b!1063437 (= e!674645 (matchR!1466 (derivativeStep!817 r!15766 (head!1972 s!10566)) (tail!1534 s!10566)))))

(declare-fun b!1063438 () Bool)

(declare-fun res!475111 () Bool)

(assert (=> b!1063438 (=> res!475111 e!674644)))

(assert (=> b!1063438 (= res!475111 e!674643)))

(declare-fun res!475113 () Bool)

(assert (=> b!1063438 (=> (not res!475113) (not e!674643))))

(assert (=> b!1063438 (= res!475113 lt!360130)))

(declare-fun b!1063439 () Bool)

(declare-fun res!475114 () Bool)

(assert (=> b!1063439 (=> res!475114 e!674641)))

(assert (=> b!1063439 (= res!475114 (not (isEmpty!6559 (tail!1534 s!10566))))))

(declare-fun b!1063440 () Bool)

(assert (=> b!1063440 (= e!674643 (= (head!1972 s!10566) (c!178245 r!15766)))))

(declare-fun b!1063441 () Bool)

(assert (=> b!1063441 (= e!674640 (= lt!360130 call!76608))))

(declare-fun bm!76603 () Bool)

(assert (=> bm!76603 (= call!76608 (isEmpty!6559 s!10566))))

(declare-fun b!1063442 () Bool)

(assert (=> b!1063442 (= e!674639 e!674641)))

(declare-fun res!475116 () Bool)

(assert (=> b!1063442 (=> res!475116 e!674641)))

(assert (=> b!1063442 (= res!475116 call!76608)))

(assert (= (and d!300859 c!178293) b!1063435))

(assert (= (and d!300859 (not c!178293)) b!1063437))

(assert (= (and d!300859 c!178292) b!1063441))

(assert (= (and d!300859 (not c!178292)) b!1063430))

(assert (= (and b!1063430 c!178291) b!1063431))

(assert (= (and b!1063430 (not c!178291)) b!1063429))

(assert (= (and b!1063429 (not res!475110)) b!1063438))

(assert (= (and b!1063438 res!475113) b!1063436))

(assert (= (and b!1063436 res!475117) b!1063432))

(assert (= (and b!1063432 res!475115) b!1063440))

(assert (= (and b!1063438 (not res!475111)) b!1063433))

(assert (= (and b!1063433 res!475112) b!1063442))

(assert (= (and b!1063442 (not res!475116)) b!1063439))

(assert (= (and b!1063439 (not res!475114)) b!1063434))

(assert (= (or b!1063441 b!1063436 b!1063442) bm!76603))

(declare-fun m!1221981 () Bool)

(assert (=> b!1063434 m!1221981))

(declare-fun m!1221983 () Bool)

(assert (=> b!1063435 m!1221983))

(assert (=> b!1063440 m!1221981))

(declare-fun m!1221985 () Bool)

(assert (=> b!1063432 m!1221985))

(assert (=> b!1063432 m!1221985))

(declare-fun m!1221987 () Bool)

(assert (=> b!1063432 m!1221987))

(assert (=> bm!76603 m!1221971))

(assert (=> b!1063439 m!1221985))

(assert (=> b!1063439 m!1221985))

(assert (=> b!1063439 m!1221987))

(assert (=> b!1063437 m!1221981))

(assert (=> b!1063437 m!1221981))

(declare-fun m!1221989 () Bool)

(assert (=> b!1063437 m!1221989))

(assert (=> b!1063437 m!1221985))

(assert (=> b!1063437 m!1221989))

(assert (=> b!1063437 m!1221985))

(declare-fun m!1221991 () Bool)

(assert (=> b!1063437 m!1221991))

(assert (=> d!300859 m!1221971))

(assert (=> d!300859 m!1221895))

(assert (=> b!1063210 d!300859))

(declare-fun d!300863 () Bool)

(assert (=> d!300863 (= (matchR!1466 r!15766 s!10566) (matchRSpec!729 r!15766 s!10566))))

(declare-fun lt!360135 () Unit!15535)

(declare-fun choose!6775 (Regex!2930 List!10160) Unit!15535)

(assert (=> d!300863 (= lt!360135 (choose!6775 r!15766 s!10566))))

(assert (=> d!300863 (validRegex!1399 r!15766)))

(assert (=> d!300863 (= (mainMatchTheorem!729 r!15766 s!10566) lt!360135)))

(declare-fun bs!251909 () Bool)

(assert (= bs!251909 d!300863))

(assert (=> bs!251909 m!1221899))

(assert (=> bs!251909 m!1221897))

(declare-fun m!1221993 () Bool)

(assert (=> bs!251909 m!1221993))

(assert (=> bs!251909 m!1221895))

(assert (=> b!1063210 d!300863))

(declare-fun b!1063465 () Bool)

(declare-fun e!674658 () Bool)

(declare-fun tp!319311 () Bool)

(assert (=> b!1063465 (= e!674658 (and tp_is_empty!5503 tp!319311))))

(assert (=> b!1063211 (= tp!319290 e!674658)))

(assert (= (and b!1063211 (is-Cons!10144 (t!101206 s!10566))) b!1063465))

(declare-fun b!1063486 () Bool)

(declare-fun e!674665 () Bool)

(assert (=> b!1063486 (= e!674665 tp_is_empty!5503)))

(assert (=> b!1063205 (= tp!319289 e!674665)))

(declare-fun b!1063488 () Bool)

(declare-fun tp!319326 () Bool)

(assert (=> b!1063488 (= e!674665 tp!319326)))

(declare-fun b!1063487 () Bool)

(declare-fun tp!319324 () Bool)

(declare-fun tp!319325 () Bool)

(assert (=> b!1063487 (= e!674665 (and tp!319324 tp!319325))))

(declare-fun b!1063489 () Bool)

(declare-fun tp!319322 () Bool)

(declare-fun tp!319323 () Bool)

(assert (=> b!1063489 (= e!674665 (and tp!319322 tp!319323))))

(assert (= (and b!1063205 (is-ElementMatch!2930 (reg!3259 r!15766))) b!1063486))

(assert (= (and b!1063205 (is-Concat!4763 (reg!3259 r!15766))) b!1063487))

(assert (= (and b!1063205 (is-Star!2930 (reg!3259 r!15766))) b!1063488))

(assert (= (and b!1063205 (is-Union!2930 (reg!3259 r!15766))) b!1063489))

(declare-fun b!1063490 () Bool)

(declare-fun e!674666 () Bool)

(assert (=> b!1063490 (= e!674666 tp_is_empty!5503)))

(assert (=> b!1063209 (= tp!319288 e!674666)))

(declare-fun b!1063492 () Bool)

(declare-fun tp!319331 () Bool)

(assert (=> b!1063492 (= e!674666 tp!319331)))

(declare-fun b!1063491 () Bool)

(declare-fun tp!319329 () Bool)

(declare-fun tp!319330 () Bool)

(assert (=> b!1063491 (= e!674666 (and tp!319329 tp!319330))))

(declare-fun b!1063493 () Bool)

(declare-fun tp!319327 () Bool)

(declare-fun tp!319328 () Bool)

(assert (=> b!1063493 (= e!674666 (and tp!319327 tp!319328))))

(assert (= (and b!1063209 (is-ElementMatch!2930 (regOne!6373 r!15766))) b!1063490))

(assert (= (and b!1063209 (is-Concat!4763 (regOne!6373 r!15766))) b!1063491))

(assert (= (and b!1063209 (is-Star!2930 (regOne!6373 r!15766))) b!1063492))

(assert (= (and b!1063209 (is-Union!2930 (regOne!6373 r!15766))) b!1063493))

(declare-fun b!1063494 () Bool)

(declare-fun e!674667 () Bool)

(assert (=> b!1063494 (= e!674667 tp_is_empty!5503)))

(assert (=> b!1063209 (= tp!319286 e!674667)))

(declare-fun b!1063496 () Bool)

(declare-fun tp!319336 () Bool)

(assert (=> b!1063496 (= e!674667 tp!319336)))

(declare-fun b!1063495 () Bool)

(declare-fun tp!319334 () Bool)

(declare-fun tp!319335 () Bool)

(assert (=> b!1063495 (= e!674667 (and tp!319334 tp!319335))))

(declare-fun b!1063497 () Bool)

(declare-fun tp!319332 () Bool)

(declare-fun tp!319333 () Bool)

(assert (=> b!1063497 (= e!674667 (and tp!319332 tp!319333))))

(assert (= (and b!1063209 (is-ElementMatch!2930 (regTwo!6373 r!15766))) b!1063494))

(assert (= (and b!1063209 (is-Concat!4763 (regTwo!6373 r!15766))) b!1063495))

(assert (= (and b!1063209 (is-Star!2930 (regTwo!6373 r!15766))) b!1063496))

(assert (= (and b!1063209 (is-Union!2930 (regTwo!6373 r!15766))) b!1063497))

(declare-fun b!1063498 () Bool)

(declare-fun e!674668 () Bool)

(assert (=> b!1063498 (= e!674668 tp_is_empty!5503)))

(assert (=> b!1063204 (= tp!319287 e!674668)))

(declare-fun b!1063500 () Bool)

(declare-fun tp!319341 () Bool)

(assert (=> b!1063500 (= e!674668 tp!319341)))

(declare-fun b!1063499 () Bool)

(declare-fun tp!319339 () Bool)

(declare-fun tp!319340 () Bool)

(assert (=> b!1063499 (= e!674668 (and tp!319339 tp!319340))))

(declare-fun b!1063501 () Bool)

(declare-fun tp!319337 () Bool)

(declare-fun tp!319338 () Bool)

(assert (=> b!1063501 (= e!674668 (and tp!319337 tp!319338))))

(assert (= (and b!1063204 (is-ElementMatch!2930 (regOne!6372 r!15766))) b!1063498))

(assert (= (and b!1063204 (is-Concat!4763 (regOne!6372 r!15766))) b!1063499))

(assert (= (and b!1063204 (is-Star!2930 (regOne!6372 r!15766))) b!1063500))

(assert (= (and b!1063204 (is-Union!2930 (regOne!6372 r!15766))) b!1063501))

(declare-fun b!1063502 () Bool)

(declare-fun e!674669 () Bool)

(assert (=> b!1063502 (= e!674669 tp_is_empty!5503)))

(assert (=> b!1063204 (= tp!319285 e!674669)))

(declare-fun b!1063504 () Bool)

(declare-fun tp!319346 () Bool)

(assert (=> b!1063504 (= e!674669 tp!319346)))

(declare-fun b!1063503 () Bool)

(declare-fun tp!319344 () Bool)

(declare-fun tp!319345 () Bool)

(assert (=> b!1063503 (= e!674669 (and tp!319344 tp!319345))))

(declare-fun b!1063505 () Bool)

(declare-fun tp!319342 () Bool)

(declare-fun tp!319343 () Bool)

(assert (=> b!1063505 (= e!674669 (and tp!319342 tp!319343))))

(assert (= (and b!1063204 (is-ElementMatch!2930 (regTwo!6372 r!15766))) b!1063502))

(assert (= (and b!1063204 (is-Concat!4763 (regTwo!6372 r!15766))) b!1063503))

(assert (= (and b!1063204 (is-Star!2930 (regTwo!6372 r!15766))) b!1063504))

(assert (= (and b!1063204 (is-Union!2930 (regTwo!6372 r!15766))) b!1063505))

(push 1)

(assert (not d!300859))

(assert (not b!1063434))

(assert (not d!300853))

(assert (not d!300843))

(assert (not b!1063339))

(assert tp_is_empty!5503)

(assert (not d!300849))

(assert (not b!1063271))

(assert (not bm!76585))

(assert (not b!1063501))

(assert (not bm!76600))

(assert (not bm!76603))

(assert (not b!1063489))

(assert (not b!1063435))

(assert (not b!1063491))

(assert (not b!1063296))

(assert (not b!1063440))

(assert (not d!300863))

(assert (not b!1063493))

(assert (not bm!76587))

(assert (not b!1063439))

(assert (not b!1063497))

(assert (not b!1063294))

(assert (not d!300845))

(assert (not bm!76588))

(assert (not b!1063301))

(assert (not b!1063437))

(assert (not b!1063504))

(assert (not b!1063295))

(assert (not b!1063496))

(assert (not b!1063505))

(assert (not d!300847))

(assert (not b!1063465))

(assert (not b!1063492))

(assert (not b!1063394))

(assert (not bm!76584))

(assert (not b!1063299))

(assert (not b!1063488))

(assert (not b!1063499))

(assert (not b!1063487))

(assert (not b!1063500))

(assert (not b!1063432))

(assert (not bm!76599))

(assert (not b!1063297))

(assert (not b!1063393))

(assert (not b!1063495))

(assert (not b!1063503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

