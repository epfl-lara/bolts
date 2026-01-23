; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!79712 () Bool)

(assert start!79712)

(declare-fun b!882145 () Bool)

(assert (=> b!882145 true))

(assert (=> b!882145 true))

(declare-fun lambda!27054 () Int)

(declare-fun lambda!27053 () Int)

(assert (=> b!882145 (not (= lambda!27054 lambda!27053))))

(assert (=> b!882145 true))

(assert (=> b!882145 true))

(declare-fun b!882136 () Bool)

(declare-fun e!578966 () Bool)

(declare-fun tp_is_empty!4171 () Bool)

(assert (=> b!882136 (= e!578966 tp_is_empty!4171)))

(declare-fun res!401167 () Bool)

(declare-fun e!578962 () Bool)

(assert (=> start!79712 (=> (not res!401167) (not e!578962))))

(declare-datatypes ((C!5098 0))(
  ( (C!5099 (val!2797 Int)) )
))
(declare-datatypes ((Regex!2264 0))(
  ( (ElementMatch!2264 (c!142589 C!5098)) (Concat!4097 (regOne!5040 Regex!2264) (regTwo!5040 Regex!2264)) (EmptyExpr!2264) (Star!2264 (reg!2593 Regex!2264)) (EmptyLang!2264) (Union!2264 (regOne!5041 Regex!2264) (regTwo!5041 Regex!2264)) )
))
(declare-fun r!15766 () Regex!2264)

(declare-fun validRegex!733 (Regex!2264) Bool)

(assert (=> start!79712 (= res!401167 (validRegex!733 r!15766))))

(assert (=> start!79712 e!578962))

(assert (=> start!79712 e!578966))

(declare-fun e!578963 () Bool)

(assert (=> start!79712 e!578963))

(declare-fun b!882137 () Bool)

(declare-fun e!578964 () Bool)

(declare-datatypes ((List!9494 0))(
  ( (Nil!9478) (Cons!9478 (h!14879 C!5098) (t!100540 List!9494)) )
))
(declare-fun s!10566 () List!9494)

(declare-fun ++!2471 (List!9494 List!9494) List!9494)

(assert (=> b!882137 (= e!578964 (= (++!2471 Nil!9478 s!10566) s!10566))))

(declare-fun b!882138 () Bool)

(declare-fun tp!278579 () Bool)

(declare-fun tp!278581 () Bool)

(assert (=> b!882138 (= e!578966 (and tp!278579 tp!278581))))

(declare-fun b!882139 () Bool)

(declare-fun tp!278577 () Bool)

(assert (=> b!882139 (= e!578963 (and tp_is_empty!4171 tp!278577))))

(declare-fun b!882140 () Bool)

(declare-fun e!578965 () Bool)

(assert (=> b!882140 (= e!578962 (not e!578965))))

(declare-fun res!401164 () Bool)

(assert (=> b!882140 (=> res!401164 e!578965)))

(declare-fun lt!330833 () Bool)

(assert (=> b!882140 (= res!401164 (or (not lt!330833) (and (is-Concat!4097 r!15766) (is-EmptyExpr!2264 (regOne!5040 r!15766))) (and (is-Concat!4097 r!15766) (is-EmptyExpr!2264 (regTwo!5040 r!15766))) (not (is-Concat!4097 r!15766))))))

(declare-fun matchRSpec!65 (Regex!2264 List!9494) Bool)

(assert (=> b!882140 (= lt!330833 (matchRSpec!65 r!15766 s!10566))))

(declare-fun matchR!802 (Regex!2264 List!9494) Bool)

(assert (=> b!882140 (= lt!330833 (matchR!802 r!15766 s!10566))))

(declare-datatypes ((Unit!14107 0))(
  ( (Unit!14108) )
))
(declare-fun lt!330834 () Unit!14107)

(declare-fun mainMatchTheorem!65 (Regex!2264 List!9494) Unit!14107)

(assert (=> b!882140 (= lt!330834 (mainMatchTheorem!65 r!15766 s!10566))))

(declare-fun b!882141 () Bool)

(declare-fun tp!278578 () Bool)

(assert (=> b!882141 (= e!578966 tp!278578)))

(declare-fun b!882142 () Bool)

(declare-fun res!401166 () Bool)

(assert (=> b!882142 (=> res!401166 e!578964)))

(assert (=> b!882142 (= res!401166 (not (validRegex!733 (regTwo!5040 r!15766))))))

(declare-fun b!882143 () Bool)

(declare-fun tp!278580 () Bool)

(declare-fun tp!278582 () Bool)

(assert (=> b!882143 (= e!578966 (and tp!278580 tp!278582))))

(declare-fun b!882144 () Bool)

(declare-fun res!401165 () Bool)

(assert (=> b!882144 (=> res!401165 e!578964)))

(assert (=> b!882144 (= res!401165 (not (validRegex!733 (regOne!5040 r!15766))))))

(assert (=> b!882145 (= e!578965 e!578964)))

(declare-fun res!401163 () Bool)

(assert (=> b!882145 (=> res!401163 e!578964)))

(declare-fun isEmpty!5675 (List!9494) Bool)

(assert (=> b!882145 (= res!401163 (isEmpty!5675 s!10566))))

(declare-fun Exists!59 (Int) Bool)

(assert (=> b!882145 (= (Exists!59 lambda!27053) (Exists!59 lambda!27054))))

(declare-fun lt!330832 () Unit!14107)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!49 (Regex!2264 Regex!2264 List!9494) Unit!14107)

(assert (=> b!882145 (= lt!330832 (lemmaExistCutMatchRandMatchRSpecEquivalent!49 (regOne!5040 r!15766) (regTwo!5040 r!15766) s!10566))))

(declare-datatypes ((tuple2!10614 0))(
  ( (tuple2!10615 (_1!6133 List!9494) (_2!6133 List!9494)) )
))
(declare-datatypes ((Option!1949 0))(
  ( (None!1948) (Some!1948 (v!19365 tuple2!10614)) )
))
(declare-fun isDefined!1591 (Option!1949) Bool)

(declare-fun findConcatSeparation!55 (Regex!2264 Regex!2264 List!9494 List!9494 List!9494) Option!1949)

(assert (=> b!882145 (= (isDefined!1591 (findConcatSeparation!55 (regOne!5040 r!15766) (regTwo!5040 r!15766) Nil!9478 s!10566 s!10566)) (Exists!59 lambda!27053))))

(declare-fun lt!330835 () Unit!14107)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!55 (Regex!2264 Regex!2264 List!9494) Unit!14107)

(assert (=> b!882145 (= lt!330835 (lemmaFindConcatSeparationEquivalentToExists!55 (regOne!5040 r!15766) (regTwo!5040 r!15766) s!10566))))

(assert (= (and start!79712 res!401167) b!882140))

(assert (= (and b!882140 (not res!401164)) b!882145))

(assert (= (and b!882145 (not res!401163)) b!882144))

(assert (= (and b!882144 (not res!401165)) b!882142))

(assert (= (and b!882142 (not res!401166)) b!882137))

(assert (= (and start!79712 (is-ElementMatch!2264 r!15766)) b!882136))

(assert (= (and start!79712 (is-Concat!4097 r!15766)) b!882138))

(assert (= (and start!79712 (is-Star!2264 r!15766)) b!882141))

(assert (= (and start!79712 (is-Union!2264 r!15766)) b!882143))

(assert (= (and start!79712 (is-Cons!9478 s!10566)) b!882139))

(declare-fun m!1129783 () Bool)

(assert (=> b!882137 m!1129783))

(declare-fun m!1129785 () Bool)

(assert (=> b!882142 m!1129785))

(declare-fun m!1129787 () Bool)

(assert (=> b!882144 m!1129787))

(declare-fun m!1129789 () Bool)

(assert (=> start!79712 m!1129789))

(declare-fun m!1129791 () Bool)

(assert (=> b!882145 m!1129791))

(declare-fun m!1129793 () Bool)

(assert (=> b!882145 m!1129793))

(declare-fun m!1129795 () Bool)

(assert (=> b!882145 m!1129795))

(declare-fun m!1129797 () Bool)

(assert (=> b!882145 m!1129797))

(declare-fun m!1129799 () Bool)

(assert (=> b!882145 m!1129799))

(declare-fun m!1129801 () Bool)

(assert (=> b!882145 m!1129801))

(assert (=> b!882145 m!1129793))

(assert (=> b!882145 m!1129791))

(declare-fun m!1129803 () Bool)

(assert (=> b!882145 m!1129803))

(declare-fun m!1129805 () Bool)

(assert (=> b!882140 m!1129805))

(declare-fun m!1129807 () Bool)

(assert (=> b!882140 m!1129807))

(declare-fun m!1129809 () Bool)

(assert (=> b!882140 m!1129809))

(push 1)

(assert (not b!882144))

(assert (not b!882141))

(assert (not b!882140))

(assert (not b!882142))

(assert (not b!882138))

(assert tp_is_empty!4171)

(assert (not b!882139))

(assert (not b!882145))

(assert (not start!79712))

(assert (not b!882143))

(assert (not b!882137))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!882204 () Bool)

(declare-fun e!578992 () List!9494)

(assert (=> b!882204 (= e!578992 s!10566)))

(declare-fun b!882206 () Bool)

(declare-fun res!401199 () Bool)

(declare-fun e!578993 () Bool)

(assert (=> b!882206 (=> (not res!401199) (not e!578993))))

(declare-fun lt!330850 () List!9494)

(declare-fun size!7850 (List!9494) Int)

(assert (=> b!882206 (= res!401199 (= (size!7850 lt!330850) (+ (size!7850 Nil!9478) (size!7850 s!10566))))))

(declare-fun b!882207 () Bool)

(assert (=> b!882207 (= e!578993 (or (not (= s!10566 Nil!9478)) (= lt!330850 Nil!9478)))))

(declare-fun d!276464 () Bool)

(assert (=> d!276464 e!578993))

(declare-fun res!401200 () Bool)

(assert (=> d!276464 (=> (not res!401200) (not e!578993))))

(declare-fun content!1371 (List!9494) (Set C!5098))

(assert (=> d!276464 (= res!401200 (= (content!1371 lt!330850) (set.union (content!1371 Nil!9478) (content!1371 s!10566))))))

(assert (=> d!276464 (= lt!330850 e!578992)))

(declare-fun c!142593 () Bool)

(assert (=> d!276464 (= c!142593 (is-Nil!9478 Nil!9478))))

(assert (=> d!276464 (= (++!2471 Nil!9478 s!10566) lt!330850)))

(declare-fun b!882205 () Bool)

(assert (=> b!882205 (= e!578992 (Cons!9478 (h!14879 Nil!9478) (++!2471 (t!100540 Nil!9478) s!10566)))))

(assert (= (and d!276464 c!142593) b!882204))

(assert (= (and d!276464 (not c!142593)) b!882205))

(assert (= (and d!276464 res!401200) b!882206))

(assert (= (and b!882206 res!401199) b!882207))

(declare-fun m!1129839 () Bool)

(assert (=> b!882206 m!1129839))

(declare-fun m!1129841 () Bool)

(assert (=> b!882206 m!1129841))

(declare-fun m!1129843 () Bool)

(assert (=> b!882206 m!1129843))

(declare-fun m!1129845 () Bool)

(assert (=> d!276464 m!1129845))

(declare-fun m!1129847 () Bool)

(assert (=> d!276464 m!1129847))

(declare-fun m!1129849 () Bool)

(assert (=> d!276464 m!1129849))

(declare-fun m!1129851 () Bool)

(assert (=> b!882205 m!1129851))

(assert (=> b!882137 d!276464))

(declare-fun b!882226 () Bool)

(declare-fun e!579013 () Bool)

(declare-fun e!579010 () Bool)

(assert (=> b!882226 (= e!579013 e!579010)))

(declare-fun res!401213 () Bool)

(assert (=> b!882226 (=> (not res!401213) (not e!579010))))

(declare-fun call!51538 () Bool)

(assert (=> b!882226 (= res!401213 call!51538)))

(declare-fun d!276466 () Bool)

(declare-fun res!401214 () Bool)

(declare-fun e!579014 () Bool)

(assert (=> d!276466 (=> res!401214 e!579014)))

(assert (=> d!276466 (= res!401214 (is-ElementMatch!2264 r!15766))))

(assert (=> d!276466 (= (validRegex!733 r!15766) e!579014)))

(declare-fun bm!51533 () Bool)

(declare-fun call!51540 () Bool)

(declare-fun c!142598 () Bool)

(assert (=> bm!51533 (= call!51540 (validRegex!733 (ite c!142598 (regTwo!5041 r!15766) (regTwo!5040 r!15766))))))

(declare-fun call!51539 () Bool)

(declare-fun c!142599 () Bool)

(declare-fun bm!51534 () Bool)

(assert (=> bm!51534 (= call!51539 (validRegex!733 (ite c!142599 (reg!2593 r!15766) (ite c!142598 (regOne!5041 r!15766) (regOne!5040 r!15766)))))))

(declare-fun bm!51535 () Bool)

(assert (=> bm!51535 (= call!51538 call!51539)))

(declare-fun b!882227 () Bool)

(declare-fun e!579012 () Bool)

(assert (=> b!882227 (= e!579012 call!51539)))

(declare-fun b!882228 () Bool)

(declare-fun res!401211 () Bool)

(declare-fun e!579009 () Bool)

(assert (=> b!882228 (=> (not res!401211) (not e!579009))))

(assert (=> b!882228 (= res!401211 call!51538)))

(declare-fun e!579008 () Bool)

(assert (=> b!882228 (= e!579008 e!579009)))

(declare-fun b!882229 () Bool)

(declare-fun res!401212 () Bool)

(assert (=> b!882229 (=> res!401212 e!579013)))

(assert (=> b!882229 (= res!401212 (not (is-Concat!4097 r!15766)))))

(assert (=> b!882229 (= e!579008 e!579013)))

(declare-fun b!882230 () Bool)

(declare-fun e!579011 () Bool)

(assert (=> b!882230 (= e!579011 e!579012)))

(declare-fun res!401215 () Bool)

(declare-fun nullable!576 (Regex!2264) Bool)

(assert (=> b!882230 (= res!401215 (not (nullable!576 (reg!2593 r!15766))))))

(assert (=> b!882230 (=> (not res!401215) (not e!579012))))

(declare-fun b!882231 () Bool)

(assert (=> b!882231 (= e!579014 e!579011)))

(assert (=> b!882231 (= c!142599 (is-Star!2264 r!15766))))

(declare-fun b!882232 () Bool)

(assert (=> b!882232 (= e!579009 call!51540)))

(declare-fun b!882233 () Bool)

(assert (=> b!882233 (= e!579011 e!579008)))

(assert (=> b!882233 (= c!142598 (is-Union!2264 r!15766))))

(declare-fun b!882234 () Bool)

(assert (=> b!882234 (= e!579010 call!51540)))

(assert (= (and d!276466 (not res!401214)) b!882231))

(assert (= (and b!882231 c!142599) b!882230))

(assert (= (and b!882231 (not c!142599)) b!882233))

(assert (= (and b!882230 res!401215) b!882227))

(assert (= (and b!882233 c!142598) b!882228))

(assert (= (and b!882233 (not c!142598)) b!882229))

(assert (= (and b!882228 res!401211) b!882232))

(assert (= (and b!882229 (not res!401212)) b!882226))

(assert (= (and b!882226 res!401213) b!882234))

(assert (= (or b!882232 b!882234) bm!51533))

(assert (= (or b!882228 b!882226) bm!51535))

(assert (= (or b!882227 bm!51535) bm!51534))

(declare-fun m!1129853 () Bool)

(assert (=> bm!51533 m!1129853))

(declare-fun m!1129855 () Bool)

(assert (=> bm!51534 m!1129855))

(declare-fun m!1129857 () Bool)

(assert (=> b!882230 m!1129857))

(assert (=> start!79712 d!276466))

(declare-fun b!882235 () Bool)

(declare-fun e!579020 () Bool)

(declare-fun e!579017 () Bool)

(assert (=> b!882235 (= e!579020 e!579017)))

(declare-fun res!401218 () Bool)

(assert (=> b!882235 (=> (not res!401218) (not e!579017))))

(declare-fun call!51541 () Bool)

(assert (=> b!882235 (= res!401218 call!51541)))

(declare-fun d!276468 () Bool)

(declare-fun res!401219 () Bool)

(declare-fun e!579021 () Bool)

(assert (=> d!276468 (=> res!401219 e!579021)))

(assert (=> d!276468 (= res!401219 (is-ElementMatch!2264 (regTwo!5040 r!15766)))))

(assert (=> d!276468 (= (validRegex!733 (regTwo!5040 r!15766)) e!579021)))

(declare-fun bm!51536 () Bool)

(declare-fun call!51543 () Bool)

(declare-fun c!142600 () Bool)

(assert (=> bm!51536 (= call!51543 (validRegex!733 (ite c!142600 (regTwo!5041 (regTwo!5040 r!15766)) (regTwo!5040 (regTwo!5040 r!15766)))))))

(declare-fun bm!51537 () Bool)

(declare-fun c!142601 () Bool)

(declare-fun call!51542 () Bool)

(assert (=> bm!51537 (= call!51542 (validRegex!733 (ite c!142601 (reg!2593 (regTwo!5040 r!15766)) (ite c!142600 (regOne!5041 (regTwo!5040 r!15766)) (regOne!5040 (regTwo!5040 r!15766))))))))

(declare-fun bm!51538 () Bool)

(assert (=> bm!51538 (= call!51541 call!51542)))

(declare-fun b!882236 () Bool)

(declare-fun e!579019 () Bool)

(assert (=> b!882236 (= e!579019 call!51542)))

(declare-fun b!882237 () Bool)

(declare-fun res!401216 () Bool)

(declare-fun e!579016 () Bool)

(assert (=> b!882237 (=> (not res!401216) (not e!579016))))

(assert (=> b!882237 (= res!401216 call!51541)))

(declare-fun e!579015 () Bool)

(assert (=> b!882237 (= e!579015 e!579016)))

(declare-fun b!882238 () Bool)

(declare-fun res!401217 () Bool)

(assert (=> b!882238 (=> res!401217 e!579020)))

(assert (=> b!882238 (= res!401217 (not (is-Concat!4097 (regTwo!5040 r!15766))))))

(assert (=> b!882238 (= e!579015 e!579020)))

(declare-fun b!882239 () Bool)

(declare-fun e!579018 () Bool)

(assert (=> b!882239 (= e!579018 e!579019)))

(declare-fun res!401220 () Bool)

(assert (=> b!882239 (= res!401220 (not (nullable!576 (reg!2593 (regTwo!5040 r!15766)))))))

(assert (=> b!882239 (=> (not res!401220) (not e!579019))))

(declare-fun b!882240 () Bool)

(assert (=> b!882240 (= e!579021 e!579018)))

(assert (=> b!882240 (= c!142601 (is-Star!2264 (regTwo!5040 r!15766)))))

(declare-fun b!882241 () Bool)

(assert (=> b!882241 (= e!579016 call!51543)))

(declare-fun b!882242 () Bool)

(assert (=> b!882242 (= e!579018 e!579015)))

(assert (=> b!882242 (= c!142600 (is-Union!2264 (regTwo!5040 r!15766)))))

(declare-fun b!882243 () Bool)

(assert (=> b!882243 (= e!579017 call!51543)))

(assert (= (and d!276468 (not res!401219)) b!882240))

(assert (= (and b!882240 c!142601) b!882239))

(assert (= (and b!882240 (not c!142601)) b!882242))

(assert (= (and b!882239 res!401220) b!882236))

(assert (= (and b!882242 c!142600) b!882237))

(assert (= (and b!882242 (not c!142600)) b!882238))

(assert (= (and b!882237 res!401216) b!882241))

(assert (= (and b!882238 (not res!401217)) b!882235))

(assert (= (and b!882235 res!401218) b!882243))

(assert (= (or b!882241 b!882243) bm!51536))

(assert (= (or b!882237 b!882235) bm!51538))

(assert (= (or b!882236 bm!51538) bm!51537))

(declare-fun m!1129859 () Bool)

(assert (=> bm!51536 m!1129859))

(declare-fun m!1129861 () Bool)

(assert (=> bm!51537 m!1129861))

(declare-fun m!1129863 () Bool)

(assert (=> b!882239 m!1129863))

(assert (=> b!882142 d!276468))

(declare-fun d!276470 () Bool)

(declare-fun choose!5228 (Int) Bool)

(assert (=> d!276470 (= (Exists!59 lambda!27054) (choose!5228 lambda!27054))))

(declare-fun bs!234479 () Bool)

(assert (= bs!234479 d!276470))

(declare-fun m!1129865 () Bool)

(assert (=> bs!234479 m!1129865))

(assert (=> b!882145 d!276470))

(declare-fun d!276472 () Bool)

(assert (=> d!276472 (= (isEmpty!5675 s!10566) (is-Nil!9478 s!10566))))

(assert (=> b!882145 d!276472))

(declare-fun d!276474 () Bool)

(declare-fun isEmpty!5677 (Option!1949) Bool)

(assert (=> d!276474 (= (isDefined!1591 (findConcatSeparation!55 (regOne!5040 r!15766) (regTwo!5040 r!15766) Nil!9478 s!10566 s!10566)) (not (isEmpty!5677 (findConcatSeparation!55 (regOne!5040 r!15766) (regTwo!5040 r!15766) Nil!9478 s!10566 s!10566))))))

(declare-fun bs!234480 () Bool)

(assert (= bs!234480 d!276474))

(assert (=> bs!234480 m!1129793))

(declare-fun m!1129867 () Bool)

(assert (=> bs!234480 m!1129867))

(assert (=> b!882145 d!276474))

(declare-fun d!276476 () Bool)

(assert (=> d!276476 (= (Exists!59 lambda!27053) (choose!5228 lambda!27053))))

(declare-fun bs!234481 () Bool)

(assert (= bs!234481 d!276476))

(declare-fun m!1129869 () Bool)

(assert (=> bs!234481 m!1129869))

(assert (=> b!882145 d!276476))

(declare-fun bs!234482 () Bool)

(declare-fun d!276478 () Bool)

(assert (= bs!234482 (and d!276478 b!882145)))

(declare-fun lambda!27065 () Int)

(assert (=> bs!234482 (= lambda!27065 lambda!27053)))

(assert (=> bs!234482 (not (= lambda!27065 lambda!27054))))

(assert (=> d!276478 true))

(assert (=> d!276478 true))

(assert (=> d!276478 true))

(assert (=> d!276478 (= (isDefined!1591 (findConcatSeparation!55 (regOne!5040 r!15766) (regTwo!5040 r!15766) Nil!9478 s!10566 s!10566)) (Exists!59 lambda!27065))))

(declare-fun lt!330853 () Unit!14107)

(declare-fun choose!5229 (Regex!2264 Regex!2264 List!9494) Unit!14107)

(assert (=> d!276478 (= lt!330853 (choose!5229 (regOne!5040 r!15766) (regTwo!5040 r!15766) s!10566))))

(assert (=> d!276478 (validRegex!733 (regOne!5040 r!15766))))

(assert (=> d!276478 (= (lemmaFindConcatSeparationEquivalentToExists!55 (regOne!5040 r!15766) (regTwo!5040 r!15766) s!10566) lt!330853)))

(declare-fun bs!234483 () Bool)

(assert (= bs!234483 d!276478))

(assert (=> bs!234483 m!1129787))

(declare-fun m!1129871 () Bool)

(assert (=> bs!234483 m!1129871))

(assert (=> bs!234483 m!1129793))

(assert (=> bs!234483 m!1129795))

(assert (=> bs!234483 m!1129793))

(declare-fun m!1129873 () Bool)

(assert (=> bs!234483 m!1129873))

(assert (=> b!882145 d!276478))

(declare-fun b!882296 () Bool)

(declare-fun res!401255 () Bool)

(declare-fun e!579054 () Bool)

(assert (=> b!882296 (=> (not res!401255) (not e!579054))))

(declare-fun lt!330861 () Option!1949)

(declare-fun get!2948 (Option!1949) tuple2!10614)

(assert (=> b!882296 (= res!401255 (matchR!802 (regOne!5040 r!15766) (_1!6133 (get!2948 lt!330861))))))

(declare-fun b!882297 () Bool)

(declare-fun e!579056 () Option!1949)

(declare-fun e!579052 () Option!1949)

(assert (=> b!882297 (= e!579056 e!579052)))

(declare-fun c!142614 () Bool)

(assert (=> b!882297 (= c!142614 (is-Nil!9478 s!10566))))

(declare-fun b!882298 () Bool)

(declare-fun lt!330862 () Unit!14107)

(declare-fun lt!330860 () Unit!14107)

(assert (=> b!882298 (= lt!330862 lt!330860)))

(assert (=> b!882298 (= (++!2471 (++!2471 Nil!9478 (Cons!9478 (h!14879 s!10566) Nil!9478)) (t!100540 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!100 (List!9494 C!5098 List!9494 List!9494) Unit!14107)

(assert (=> b!882298 (= lt!330860 (lemmaMoveElementToOtherListKeepsConcatEq!100 Nil!9478 (h!14879 s!10566) (t!100540 s!10566) s!10566))))

(assert (=> b!882298 (= e!579052 (findConcatSeparation!55 (regOne!5040 r!15766) (regTwo!5040 r!15766) (++!2471 Nil!9478 (Cons!9478 (h!14879 s!10566) Nil!9478)) (t!100540 s!10566) s!10566))))

(declare-fun b!882299 () Bool)

(assert (=> b!882299 (= e!579056 (Some!1948 (tuple2!10615 Nil!9478 s!10566)))))

(declare-fun b!882301 () Bool)

(assert (=> b!882301 (= e!579054 (= (++!2471 (_1!6133 (get!2948 lt!330861)) (_2!6133 (get!2948 lt!330861))) s!10566))))

(declare-fun b!882304 () Bool)

(declare-fun e!579055 () Bool)

(assert (=> b!882304 (= e!579055 (not (isDefined!1591 lt!330861)))))

(declare-fun b!882305 () Bool)

(assert (=> b!882305 (= e!579052 None!1948)))

(declare-fun b!882306 () Bool)

(declare-fun res!401249 () Bool)

(assert (=> b!882306 (=> (not res!401249) (not e!579054))))

(assert (=> b!882306 (= res!401249 (matchR!802 (regTwo!5040 r!15766) (_2!6133 (get!2948 lt!330861))))))

(declare-fun b!882300 () Bool)

(declare-fun e!579053 () Bool)

(assert (=> b!882300 (= e!579053 (matchR!802 (regTwo!5040 r!15766) s!10566))))

(declare-fun d!276482 () Bool)

(assert (=> d!276482 e!579055))

(declare-fun res!401253 () Bool)

(assert (=> d!276482 (=> res!401253 e!579055)))

(assert (=> d!276482 (= res!401253 e!579054)))

(declare-fun res!401254 () Bool)

(assert (=> d!276482 (=> (not res!401254) (not e!579054))))

(assert (=> d!276482 (= res!401254 (isDefined!1591 lt!330861))))

(assert (=> d!276482 (= lt!330861 e!579056)))

(declare-fun c!142615 () Bool)

(assert (=> d!276482 (= c!142615 e!579053)))

(declare-fun res!401250 () Bool)

(assert (=> d!276482 (=> (not res!401250) (not e!579053))))

(assert (=> d!276482 (= res!401250 (matchR!802 (regOne!5040 r!15766) Nil!9478))))

(assert (=> d!276482 (validRegex!733 (regOne!5040 r!15766))))

(assert (=> d!276482 (= (findConcatSeparation!55 (regOne!5040 r!15766) (regTwo!5040 r!15766) Nil!9478 s!10566 s!10566) lt!330861)))

(assert (= (and d!276482 res!401250) b!882300))

(assert (= (and d!276482 c!142615) b!882299))

(assert (= (and d!276482 (not c!142615)) b!882297))

(assert (= (and b!882297 c!142614) b!882305))

(assert (= (and b!882297 (not c!142614)) b!882298))

(assert (= (and d!276482 res!401254) b!882296))

(assert (= (and b!882296 res!401255) b!882306))

(assert (= (and b!882306 res!401249) b!882301))

(assert (= (and d!276482 (not res!401253)) b!882304))

(declare-fun m!1129875 () Bool)

(assert (=> d!276482 m!1129875))

(declare-fun m!1129877 () Bool)

(assert (=> d!276482 m!1129877))

(assert (=> d!276482 m!1129787))

(declare-fun m!1129879 () Bool)

(assert (=> b!882296 m!1129879))

(declare-fun m!1129881 () Bool)

(assert (=> b!882296 m!1129881))

(assert (=> b!882306 m!1129879))

(declare-fun m!1129883 () Bool)

(assert (=> b!882306 m!1129883))

(assert (=> b!882301 m!1129879))

(declare-fun m!1129885 () Bool)

(assert (=> b!882301 m!1129885))

(declare-fun m!1129887 () Bool)

(assert (=> b!882300 m!1129887))

(assert (=> b!882304 m!1129875))

(declare-fun m!1129889 () Bool)

(assert (=> b!882298 m!1129889))

(assert (=> b!882298 m!1129889))

(declare-fun m!1129891 () Bool)

(assert (=> b!882298 m!1129891))

(declare-fun m!1129893 () Bool)

(assert (=> b!882298 m!1129893))

(assert (=> b!882298 m!1129889))

(declare-fun m!1129895 () Bool)

(assert (=> b!882298 m!1129895))

(assert (=> b!882145 d!276482))

(declare-fun bs!234484 () Bool)

(declare-fun d!276484 () Bool)

(assert (= bs!234484 (and d!276484 b!882145)))

(declare-fun lambda!27074 () Int)

(assert (=> bs!234484 (= lambda!27074 lambda!27053)))

(assert (=> bs!234484 (not (= lambda!27074 lambda!27054))))

(declare-fun bs!234485 () Bool)

(assert (= bs!234485 (and d!276484 d!276478)))

(assert (=> bs!234485 (= lambda!27074 lambda!27065)))

(assert (=> d!276484 true))

(assert (=> d!276484 true))

(assert (=> d!276484 true))

(declare-fun lambda!27075 () Int)

(assert (=> bs!234484 (not (= lambda!27075 lambda!27053))))

(assert (=> bs!234484 (= lambda!27075 lambda!27054)))

(assert (=> bs!234485 (not (= lambda!27075 lambda!27065))))

(declare-fun bs!234486 () Bool)

(assert (= bs!234486 d!276484))

(assert (=> bs!234486 (not (= lambda!27075 lambda!27074))))

(assert (=> d!276484 true))

(assert (=> d!276484 true))

(assert (=> d!276484 true))

(assert (=> d!276484 (= (Exists!59 lambda!27074) (Exists!59 lambda!27075))))

(declare-fun lt!330865 () Unit!14107)

(declare-fun choose!5230 (Regex!2264 Regex!2264 List!9494) Unit!14107)

(assert (=> d!276484 (= lt!330865 (choose!5230 (regOne!5040 r!15766) (regTwo!5040 r!15766) s!10566))))

(assert (=> d!276484 (validRegex!733 (regOne!5040 r!15766))))

(assert (=> d!276484 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!49 (regOne!5040 r!15766) (regTwo!5040 r!15766) s!10566) lt!330865)))

(declare-fun m!1129897 () Bool)

(assert (=> bs!234486 m!1129897))

(declare-fun m!1129899 () Bool)

(assert (=> bs!234486 m!1129899))

(declare-fun m!1129901 () Bool)

(assert (=> bs!234486 m!1129901))

(assert (=> bs!234486 m!1129787))

(assert (=> b!882145 d!276484))

(declare-fun bs!234490 () Bool)

(declare-fun b!882359 () Bool)

(assert (= bs!234490 (and b!882359 d!276484)))

(declare-fun lambda!27082 () Int)

(assert (=> bs!234490 (not (= lambda!27082 lambda!27075))))

(declare-fun bs!234491 () Bool)

(assert (= bs!234491 (and b!882359 d!276478)))

(assert (=> bs!234491 (not (= lambda!27082 lambda!27065))))

(declare-fun bs!234492 () Bool)

(assert (= bs!234492 (and b!882359 b!882145)))

(assert (=> bs!234492 (not (= lambda!27082 lambda!27053))))

(assert (=> bs!234492 (not (= lambda!27082 lambda!27054))))

(assert (=> bs!234490 (not (= lambda!27082 lambda!27074))))

(assert (=> b!882359 true))

(assert (=> b!882359 true))

(declare-fun bs!234493 () Bool)

(declare-fun b!882364 () Bool)

(assert (= bs!234493 (and b!882364 d!276484)))

(declare-fun lambda!27083 () Int)

(assert (=> bs!234493 (= lambda!27083 lambda!27075)))

(declare-fun bs!234494 () Bool)

(assert (= bs!234494 (and b!882364 d!276478)))

(assert (=> bs!234494 (not (= lambda!27083 lambda!27065))))

(declare-fun bs!234495 () Bool)

(assert (= bs!234495 (and b!882364 b!882359)))

(assert (=> bs!234495 (not (= lambda!27083 lambda!27082))))

(declare-fun bs!234496 () Bool)

(assert (= bs!234496 (and b!882364 b!882145)))

(assert (=> bs!234496 (not (= lambda!27083 lambda!27053))))

(assert (=> bs!234496 (= lambda!27083 lambda!27054)))

(assert (=> bs!234493 (not (= lambda!27083 lambda!27074))))

(assert (=> b!882364 true))

(assert (=> b!882364 true))

(declare-fun b!882358 () Bool)

(declare-fun c!142630 () Bool)

(assert (=> b!882358 (= c!142630 (is-ElementMatch!2264 r!15766))))

(declare-fun e!579092 () Bool)

(declare-fun e!579087 () Bool)

(assert (=> b!882358 (= e!579092 e!579087)))

(declare-fun bm!51549 () Bool)

(declare-fun call!51555 () Bool)

(declare-fun c!142629 () Bool)

(assert (=> bm!51549 (= call!51555 (Exists!59 (ite c!142629 lambda!27082 lambda!27083)))))

(declare-fun e!579088 () Bool)

(assert (=> b!882359 (= e!579088 call!51555)))

(declare-fun b!882360 () Bool)

(declare-fun e!579091 () Bool)

(assert (=> b!882360 (= e!579091 e!579092)))

(declare-fun res!401283 () Bool)

(assert (=> b!882360 (= res!401283 (not (is-EmptyLang!2264 r!15766)))))

(assert (=> b!882360 (=> (not res!401283) (not e!579092))))

(declare-fun b!882361 () Bool)

(declare-fun e!579089 () Bool)

(declare-fun e!579090 () Bool)

(assert (=> b!882361 (= e!579089 e!579090)))

(assert (=> b!882361 (= c!142629 (is-Star!2264 r!15766))))

(declare-fun b!882362 () Bool)

(declare-fun e!579086 () Bool)

(assert (=> b!882362 (= e!579089 e!579086)))

(declare-fun res!401285 () Bool)

(assert (=> b!882362 (= res!401285 (matchRSpec!65 (regOne!5041 r!15766) s!10566))))

(assert (=> b!882362 (=> res!401285 e!579086)))

(declare-fun b!882363 () Bool)

(assert (=> b!882363 (= e!579087 (= s!10566 (Cons!9478 (c!142589 r!15766) Nil!9478)))))

(declare-fun d!276486 () Bool)

(declare-fun c!142628 () Bool)

(assert (=> d!276486 (= c!142628 (is-EmptyExpr!2264 r!15766))))

(assert (=> d!276486 (= (matchRSpec!65 r!15766 s!10566) e!579091)))

(assert (=> b!882364 (= e!579090 call!51555)))

(declare-fun b!882365 () Bool)

(assert (=> b!882365 (= e!579086 (matchRSpec!65 (regTwo!5041 r!15766) s!10566))))

(declare-fun b!882366 () Bool)

(declare-fun res!401284 () Bool)

(assert (=> b!882366 (=> res!401284 e!579088)))

(declare-fun call!51554 () Bool)

(assert (=> b!882366 (= res!401284 call!51554)))

(assert (=> b!882366 (= e!579090 e!579088)))

(declare-fun b!882367 () Bool)

(assert (=> b!882367 (= e!579091 call!51554)))

(declare-fun bm!51550 () Bool)

(assert (=> bm!51550 (= call!51554 (isEmpty!5675 s!10566))))

(declare-fun b!882368 () Bool)

(declare-fun c!142631 () Bool)

(assert (=> b!882368 (= c!142631 (is-Union!2264 r!15766))))

(assert (=> b!882368 (= e!579087 e!579089)))

(assert (= (and d!276486 c!142628) b!882367))

(assert (= (and d!276486 (not c!142628)) b!882360))

(assert (= (and b!882360 res!401283) b!882358))

(assert (= (and b!882358 c!142630) b!882363))

(assert (= (and b!882358 (not c!142630)) b!882368))

(assert (= (and b!882368 c!142631) b!882362))

(assert (= (and b!882368 (not c!142631)) b!882361))

(assert (= (and b!882362 (not res!401285)) b!882365))

(assert (= (and b!882361 c!142629) b!882366))

(assert (= (and b!882361 (not c!142629)) b!882364))

(assert (= (and b!882366 (not res!401284)) b!882359))

(assert (= (or b!882359 b!882364) bm!51549))

(assert (= (or b!882367 b!882366) bm!51550))

(declare-fun m!1129909 () Bool)

(assert (=> bm!51549 m!1129909))

(declare-fun m!1129911 () Bool)

(assert (=> b!882362 m!1129911))

(declare-fun m!1129913 () Bool)

(assert (=> b!882365 m!1129913))

(assert (=> bm!51550 m!1129799))

(assert (=> b!882140 d!276486))

(declare-fun b!882425 () Bool)

(declare-fun res!401322 () Bool)

(declare-fun e!579126 () Bool)

(assert (=> b!882425 (=> (not res!401322) (not e!579126))))

(declare-fun tail!1103 (List!9494) List!9494)

(assert (=> b!882425 (= res!401322 (isEmpty!5675 (tail!1103 s!10566)))))

(declare-fun b!882426 () Bool)

(declare-fun e!579122 () Bool)

(declare-fun lt!330870 () Bool)

(declare-fun call!51560 () Bool)

(assert (=> b!882426 (= e!579122 (= lt!330870 call!51560))))

(declare-fun d!276490 () Bool)

(assert (=> d!276490 e!579122))

(declare-fun c!142644 () Bool)

(assert (=> d!276490 (= c!142644 (is-EmptyExpr!2264 r!15766))))

(declare-fun e!579123 () Bool)

(assert (=> d!276490 (= lt!330870 e!579123)))

(declare-fun c!142646 () Bool)

(assert (=> d!276490 (= c!142646 (isEmpty!5675 s!10566))))

(assert (=> d!276490 (validRegex!733 r!15766)))

(assert (=> d!276490 (= (matchR!802 r!15766 s!10566) lt!330870)))

(declare-fun bm!51555 () Bool)

(assert (=> bm!51555 (= call!51560 (isEmpty!5675 s!10566))))

(declare-fun b!882427 () Bool)

(declare-fun e!579121 () Bool)

(declare-fun head!1541 (List!9494) C!5098)

(assert (=> b!882427 (= e!579121 (not (= (head!1541 s!10566) (c!142589 r!15766))))))

(declare-fun b!882428 () Bool)

(declare-fun res!401324 () Bool)

(declare-fun e!579124 () Bool)

(assert (=> b!882428 (=> res!401324 e!579124)))

(assert (=> b!882428 (= res!401324 (not (is-ElementMatch!2264 r!15766)))))

(declare-fun e!579125 () Bool)

(assert (=> b!882428 (= e!579125 e!579124)))

(declare-fun b!882429 () Bool)

(assert (=> b!882429 (= e!579122 e!579125)))

(declare-fun c!142645 () Bool)

(assert (=> b!882429 (= c!142645 (is-EmptyLang!2264 r!15766))))

(declare-fun b!882430 () Bool)

(declare-fun derivativeStep!388 (Regex!2264 C!5098) Regex!2264)

(assert (=> b!882430 (= e!579123 (matchR!802 (derivativeStep!388 r!15766 (head!1541 s!10566)) (tail!1103 s!10566)))))

(declare-fun b!882431 () Bool)

(declare-fun e!579127 () Bool)

(assert (=> b!882431 (= e!579124 e!579127)))

(declare-fun res!401319 () Bool)

(assert (=> b!882431 (=> (not res!401319) (not e!579127))))

(assert (=> b!882431 (= res!401319 (not lt!330870))))

(declare-fun b!882432 () Bool)

(assert (=> b!882432 (= e!579125 (not lt!330870))))

(declare-fun b!882433 () Bool)

(assert (=> b!882433 (= e!579123 (nullable!576 r!15766))))

(declare-fun b!882434 () Bool)

(declare-fun res!401318 () Bool)

(assert (=> b!882434 (=> res!401318 e!579124)))

(assert (=> b!882434 (= res!401318 e!579126)))

(declare-fun res!401323 () Bool)

(assert (=> b!882434 (=> (not res!401323) (not e!579126))))

(assert (=> b!882434 (= res!401323 lt!330870)))

(declare-fun b!882435 () Bool)

(assert (=> b!882435 (= e!579126 (= (head!1541 s!10566) (c!142589 r!15766)))))

(declare-fun b!882436 () Bool)

(assert (=> b!882436 (= e!579127 e!579121)))

(declare-fun res!401320 () Bool)

(assert (=> b!882436 (=> res!401320 e!579121)))

(assert (=> b!882436 (= res!401320 call!51560)))

(declare-fun b!882437 () Bool)

(declare-fun res!401321 () Bool)

(assert (=> b!882437 (=> (not res!401321) (not e!579126))))

(assert (=> b!882437 (= res!401321 (not call!51560))))

(declare-fun b!882438 () Bool)

(declare-fun res!401325 () Bool)

(assert (=> b!882438 (=> res!401325 e!579121)))

(assert (=> b!882438 (= res!401325 (not (isEmpty!5675 (tail!1103 s!10566))))))

(assert (= (and d!276490 c!142646) b!882433))

(assert (= (and d!276490 (not c!142646)) b!882430))

(assert (= (and d!276490 c!142644) b!882426))

(assert (= (and d!276490 (not c!142644)) b!882429))

(assert (= (and b!882429 c!142645) b!882432))

(assert (= (and b!882429 (not c!142645)) b!882428))

(assert (= (and b!882428 (not res!401324)) b!882434))

(assert (= (and b!882434 res!401323) b!882437))

(assert (= (and b!882437 res!401321) b!882425))

(assert (= (and b!882425 res!401322) b!882435))

(assert (= (and b!882434 (not res!401318)) b!882431))

(assert (= (and b!882431 res!401319) b!882436))

(assert (= (and b!882436 (not res!401320)) b!882438))

(assert (= (and b!882438 (not res!401325)) b!882427))

(assert (= (or b!882426 b!882436 b!882437) bm!51555))

(declare-fun m!1129915 () Bool)

(assert (=> b!882438 m!1129915))

(assert (=> b!882438 m!1129915))

(declare-fun m!1129917 () Bool)

(assert (=> b!882438 m!1129917))

(assert (=> bm!51555 m!1129799))

(declare-fun m!1129919 () Bool)

(assert (=> b!882435 m!1129919))

(assert (=> d!276490 m!1129799))

(assert (=> d!276490 m!1129789))

(assert (=> b!882430 m!1129919))

(assert (=> b!882430 m!1129919))

(declare-fun m!1129921 () Bool)

(assert (=> b!882430 m!1129921))

(assert (=> b!882430 m!1129915))

(assert (=> b!882430 m!1129921))

(assert (=> b!882430 m!1129915))

(declare-fun m!1129923 () Bool)

(assert (=> b!882430 m!1129923))

(declare-fun m!1129925 () Bool)

(assert (=> b!882433 m!1129925))

(assert (=> b!882427 m!1129919))

(assert (=> b!882425 m!1129915))

(assert (=> b!882425 m!1129915))

(assert (=> b!882425 m!1129917))

(assert (=> b!882140 d!276490))

(declare-fun d!276492 () Bool)

(assert (=> d!276492 (= (matchR!802 r!15766 s!10566) (matchRSpec!65 r!15766 s!10566))))

(declare-fun lt!330874 () Unit!14107)

(declare-fun choose!5231 (Regex!2264 List!9494) Unit!14107)

(assert (=> d!276492 (= lt!330874 (choose!5231 r!15766 s!10566))))

(assert (=> d!276492 (validRegex!733 r!15766)))

(assert (=> d!276492 (= (mainMatchTheorem!65 r!15766 s!10566) lt!330874)))

(declare-fun bs!234497 () Bool)

(assert (= bs!234497 d!276492))

(assert (=> bs!234497 m!1129807))

(assert (=> bs!234497 m!1129805))

(declare-fun m!1129939 () Bool)

(assert (=> bs!234497 m!1129939))

(assert (=> bs!234497 m!1129789))

(assert (=> b!882140 d!276492))

(declare-fun b!882453 () Bool)

(declare-fun e!579140 () Bool)

(declare-fun e!579137 () Bool)

(assert (=> b!882453 (= e!579140 e!579137)))

(declare-fun res!401336 () Bool)

(assert (=> b!882453 (=> (not res!401336) (not e!579137))))

(declare-fun call!51562 () Bool)

(assert (=> b!882453 (= res!401336 call!51562)))

(declare-fun d!276496 () Bool)

(declare-fun res!401337 () Bool)

(declare-fun e!579141 () Bool)

(assert (=> d!276496 (=> res!401337 e!579141)))

(assert (=> d!276496 (= res!401337 (is-ElementMatch!2264 (regOne!5040 r!15766)))))

(assert (=> d!276496 (= (validRegex!733 (regOne!5040 r!15766)) e!579141)))

(declare-fun bm!51557 () Bool)

(declare-fun call!51564 () Bool)

(declare-fun c!142650 () Bool)

(assert (=> bm!51557 (= call!51564 (validRegex!733 (ite c!142650 (regTwo!5041 (regOne!5040 r!15766)) (regTwo!5040 (regOne!5040 r!15766)))))))

(declare-fun call!51563 () Bool)

(declare-fun c!142651 () Bool)

(declare-fun bm!51558 () Bool)

(assert (=> bm!51558 (= call!51563 (validRegex!733 (ite c!142651 (reg!2593 (regOne!5040 r!15766)) (ite c!142650 (regOne!5041 (regOne!5040 r!15766)) (regOne!5040 (regOne!5040 r!15766))))))))

(declare-fun bm!51559 () Bool)

(assert (=> bm!51559 (= call!51562 call!51563)))

(declare-fun b!882454 () Bool)

(declare-fun e!579139 () Bool)

(assert (=> b!882454 (= e!579139 call!51563)))

(declare-fun b!882455 () Bool)

(declare-fun res!401334 () Bool)

(declare-fun e!579136 () Bool)

(assert (=> b!882455 (=> (not res!401334) (not e!579136))))

(assert (=> b!882455 (= res!401334 call!51562)))

(declare-fun e!579135 () Bool)

(assert (=> b!882455 (= e!579135 e!579136)))

(declare-fun b!882456 () Bool)

(declare-fun res!401335 () Bool)

(assert (=> b!882456 (=> res!401335 e!579140)))

(assert (=> b!882456 (= res!401335 (not (is-Concat!4097 (regOne!5040 r!15766))))))

(assert (=> b!882456 (= e!579135 e!579140)))

(declare-fun b!882457 () Bool)

(declare-fun e!579138 () Bool)

(assert (=> b!882457 (= e!579138 e!579139)))

(declare-fun res!401338 () Bool)

(assert (=> b!882457 (= res!401338 (not (nullable!576 (reg!2593 (regOne!5040 r!15766)))))))

(assert (=> b!882457 (=> (not res!401338) (not e!579139))))

(declare-fun b!882458 () Bool)

(assert (=> b!882458 (= e!579141 e!579138)))

(assert (=> b!882458 (= c!142651 (is-Star!2264 (regOne!5040 r!15766)))))

(declare-fun b!882459 () Bool)

(assert (=> b!882459 (= e!579136 call!51564)))

(declare-fun b!882460 () Bool)

(assert (=> b!882460 (= e!579138 e!579135)))

(assert (=> b!882460 (= c!142650 (is-Union!2264 (regOne!5040 r!15766)))))

(declare-fun b!882461 () Bool)

(assert (=> b!882461 (= e!579137 call!51564)))

(assert (= (and d!276496 (not res!401337)) b!882458))

(assert (= (and b!882458 c!142651) b!882457))

(assert (= (and b!882458 (not c!142651)) b!882460))

(assert (= (and b!882457 res!401338) b!882454))

(assert (= (and b!882460 c!142650) b!882455))

(assert (= (and b!882460 (not c!142650)) b!882456))

(assert (= (and b!882455 res!401334) b!882459))

(assert (= (and b!882456 (not res!401335)) b!882453))

(assert (= (and b!882453 res!401336) b!882461))

(assert (= (or b!882459 b!882461) bm!51557))

(assert (= (or b!882455 b!882453) bm!51559))

(assert (= (or b!882454 bm!51559) bm!51558))

(declare-fun m!1129941 () Bool)

(assert (=> bm!51557 m!1129941))

(declare-fun m!1129943 () Bool)

(assert (=> bm!51558 m!1129943))

(declare-fun m!1129945 () Bool)

(assert (=> b!882457 m!1129945))

(assert (=> b!882144 d!276496))

(declare-fun b!882473 () Bool)

(declare-fun e!579144 () Bool)

(declare-fun tp!278614 () Bool)

(declare-fun tp!278611 () Bool)

(assert (=> b!882473 (= e!579144 (and tp!278614 tp!278611))))

(declare-fun b!882475 () Bool)

(declare-fun tp!278612 () Bool)

(declare-fun tp!278613 () Bool)

(assert (=> b!882475 (= e!579144 (and tp!278612 tp!278613))))

(declare-fun b!882472 () Bool)

(assert (=> b!882472 (= e!579144 tp_is_empty!4171)))

(assert (=> b!882141 (= tp!278578 e!579144)))

(declare-fun b!882474 () Bool)

(declare-fun tp!278615 () Bool)

(assert (=> b!882474 (= e!579144 tp!278615)))

(assert (= (and b!882141 (is-ElementMatch!2264 (reg!2593 r!15766))) b!882472))

(assert (= (and b!882141 (is-Concat!4097 (reg!2593 r!15766))) b!882473))

(assert (= (and b!882141 (is-Star!2264 (reg!2593 r!15766))) b!882474))

(assert (= (and b!882141 (is-Union!2264 (reg!2593 r!15766))) b!882475))

(declare-fun b!882480 () Bool)

(declare-fun e!579147 () Bool)

(declare-fun tp!278618 () Bool)

(assert (=> b!882480 (= e!579147 (and tp_is_empty!4171 tp!278618))))

(assert (=> b!882139 (= tp!278577 e!579147)))

(assert (= (and b!882139 (is-Cons!9478 (t!100540 s!10566))) b!882480))

(declare-fun b!882482 () Bool)

(declare-fun e!579148 () Bool)

(declare-fun tp!278622 () Bool)

(declare-fun tp!278619 () Bool)

(assert (=> b!882482 (= e!579148 (and tp!278622 tp!278619))))

(declare-fun b!882484 () Bool)

(declare-fun tp!278620 () Bool)

(declare-fun tp!278621 () Bool)

(assert (=> b!882484 (= e!579148 (and tp!278620 tp!278621))))

(declare-fun b!882481 () Bool)

(assert (=> b!882481 (= e!579148 tp_is_empty!4171)))

(assert (=> b!882143 (= tp!278580 e!579148)))

(declare-fun b!882483 () Bool)

(declare-fun tp!278623 () Bool)

(assert (=> b!882483 (= e!579148 tp!278623)))

(assert (= (and b!882143 (is-ElementMatch!2264 (regOne!5041 r!15766))) b!882481))

(assert (= (and b!882143 (is-Concat!4097 (regOne!5041 r!15766))) b!882482))

(assert (= (and b!882143 (is-Star!2264 (regOne!5041 r!15766))) b!882483))

(assert (= (and b!882143 (is-Union!2264 (regOne!5041 r!15766))) b!882484))

(declare-fun b!882486 () Bool)

(declare-fun e!579149 () Bool)

(declare-fun tp!278627 () Bool)

(declare-fun tp!278624 () Bool)

(assert (=> b!882486 (= e!579149 (and tp!278627 tp!278624))))

(declare-fun b!882488 () Bool)

(declare-fun tp!278625 () Bool)

(declare-fun tp!278626 () Bool)

(assert (=> b!882488 (= e!579149 (and tp!278625 tp!278626))))

(declare-fun b!882485 () Bool)

(assert (=> b!882485 (= e!579149 tp_is_empty!4171)))

(assert (=> b!882143 (= tp!278582 e!579149)))

(declare-fun b!882487 () Bool)

(declare-fun tp!278628 () Bool)

(assert (=> b!882487 (= e!579149 tp!278628)))

(assert (= (and b!882143 (is-ElementMatch!2264 (regTwo!5041 r!15766))) b!882485))

(assert (= (and b!882143 (is-Concat!4097 (regTwo!5041 r!15766))) b!882486))

(assert (= (and b!882143 (is-Star!2264 (regTwo!5041 r!15766))) b!882487))

(assert (= (and b!882143 (is-Union!2264 (regTwo!5041 r!15766))) b!882488))

(declare-fun b!882490 () Bool)

(declare-fun e!579150 () Bool)

(declare-fun tp!278632 () Bool)

(declare-fun tp!278629 () Bool)

(assert (=> b!882490 (= e!579150 (and tp!278632 tp!278629))))

(declare-fun b!882492 () Bool)

(declare-fun tp!278630 () Bool)

(declare-fun tp!278631 () Bool)

(assert (=> b!882492 (= e!579150 (and tp!278630 tp!278631))))

(declare-fun b!882489 () Bool)

(assert (=> b!882489 (= e!579150 tp_is_empty!4171)))

(assert (=> b!882138 (= tp!278579 e!579150)))

(declare-fun b!882491 () Bool)

(declare-fun tp!278633 () Bool)

(assert (=> b!882491 (= e!579150 tp!278633)))

(assert (= (and b!882138 (is-ElementMatch!2264 (regOne!5040 r!15766))) b!882489))

(assert (= (and b!882138 (is-Concat!4097 (regOne!5040 r!15766))) b!882490))

(assert (= (and b!882138 (is-Star!2264 (regOne!5040 r!15766))) b!882491))

(assert (= (and b!882138 (is-Union!2264 (regOne!5040 r!15766))) b!882492))

(declare-fun b!882494 () Bool)

(declare-fun e!579151 () Bool)

(declare-fun tp!278637 () Bool)

(declare-fun tp!278634 () Bool)

(assert (=> b!882494 (= e!579151 (and tp!278637 tp!278634))))

(declare-fun b!882496 () Bool)

(declare-fun tp!278635 () Bool)

(declare-fun tp!278636 () Bool)

(assert (=> b!882496 (= e!579151 (and tp!278635 tp!278636))))

(declare-fun b!882493 () Bool)

(assert (=> b!882493 (= e!579151 tp_is_empty!4171)))

(assert (=> b!882138 (= tp!278581 e!579151)))

(declare-fun b!882495 () Bool)

(declare-fun tp!278638 () Bool)

(assert (=> b!882495 (= e!579151 tp!278638)))

(assert (= (and b!882138 (is-ElementMatch!2264 (regTwo!5040 r!15766))) b!882493))

(assert (= (and b!882138 (is-Concat!4097 (regTwo!5040 r!15766))) b!882494))

(assert (= (and b!882138 (is-Star!2264 (regTwo!5040 r!15766))) b!882495))

(assert (= (and b!882138 (is-Union!2264 (regTwo!5040 r!15766))) b!882496))

(push 1)

(assert (not b!882206))

(assert (not d!276476))

(assert (not bm!51534))

(assert tp_is_empty!4171)

(assert (not b!882438))

(assert (not b!882425))

(assert (not b!882304))

(assert (not b!882474))

(assert (not b!882486))

(assert (not b!882430))

(assert (not bm!51555))

(assert (not b!882427))

(assert (not b!882488))

(assert (not b!882494))

(assert (not d!276478))

(assert (not d!276470))

(assert (not b!882298))

(assert (not b!882306))

(assert (not b!882362))

(assert (not b!882483))

(assert (not b!882230))

(assert (not b!882480))

(assert (not bm!51533))

(assert (not b!882365))

(assert (not d!276482))

(assert (not b!882487))

(assert (not b!882301))

(assert (not b!882490))

(assert (not b!882496))

(assert (not b!882491))

(assert (not b!882300))

(assert (not d!276474))

(assert (not bm!51557))

(assert (not b!882205))

(assert (not b!882484))

(assert (not b!882433))

(assert (not b!882492))

(assert (not b!882473))

(assert (not bm!51550))

(assert (not d!276490))

(assert (not d!276464))

(assert (not b!882239))

(assert (not b!882457))

(assert (not b!882495))

(assert (not bm!51536))

(assert (not b!882296))

(assert (not b!882475))

(assert (not d!276484))

(assert (not b!882435))

(assert (not bm!51558))

(assert (not bm!51549))

(assert (not d!276492))

(assert (not bm!51537))

(assert (not b!882482))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

