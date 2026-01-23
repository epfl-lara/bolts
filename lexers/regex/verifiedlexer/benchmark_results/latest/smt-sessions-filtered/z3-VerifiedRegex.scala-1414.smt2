; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74210 () Bool)

(assert start!74210)

(declare-fun b!835044 () Bool)

(declare-fun e!549391 () Bool)

(declare-datatypes ((C!4744 0))(
  ( (C!4745 (val!2620 Int)) )
))
(declare-datatypes ((Regex!2087 0))(
  ( (ElementMatch!2087 (c!136284 C!4744)) (Concat!3818 (regOne!4686 Regex!2087) (regTwo!4686 Regex!2087)) (EmptyExpr!2087) (Star!2087 (reg!2416 Regex!2087)) (EmptyLang!2087) (Union!2087 (regOne!4687 Regex!2087) (regTwo!4687 Regex!2087)) )
))
(declare-fun r!27177 () Regex!2087)

(declare-fun validRegex!640 (Regex!2087) Bool)

(assert (=> b!835044 (= e!549391 (not (validRegex!640 (regOne!4686 r!27177))))))

(declare-fun b!835045 () Bool)

(declare-fun e!549390 () Bool)

(declare-fun tp!261761 () Bool)

(declare-fun tp!261760 () Bool)

(assert (=> b!835045 (= e!549390 (and tp!261761 tp!261760))))

(declare-fun b!835046 () Bool)

(declare-fun tp!261762 () Bool)

(declare-fun tp!261764 () Bool)

(assert (=> b!835046 (= e!549390 (and tp!261762 tp!261764))))

(declare-fun b!835047 () Bool)

(declare-fun res!382365 () Bool)

(assert (=> b!835047 (=> (not res!382365) (not e!549391))))

(get-info :version)

(assert (=> b!835047 (= res!382365 (and (not ((_ is EmptyExpr!2087) r!27177)) (not ((_ is EmptyLang!2087) r!27177)) (not ((_ is ElementMatch!2087) r!27177)) (not ((_ is Star!2087) r!27177)) (not ((_ is Union!2087) r!27177))))))

(declare-fun b!835048 () Bool)

(declare-fun res!382367 () Bool)

(assert (=> b!835048 (=> (not res!382367) (not e!549391))))

(declare-fun nullable!538 (Regex!2087) Bool)

(assert (=> b!835048 (= res!382367 (not (nullable!538 (regOne!4686 r!27177))))))

(declare-fun res!382364 () Bool)

(assert (=> start!74210 (=> (not res!382364) (not e!549391))))

(assert (=> start!74210 (= res!382364 (validRegex!640 r!27177))))

(assert (=> start!74210 e!549391))

(assert (=> start!74210 e!549390))

(declare-fun tp_is_empty!3897 () Bool)

(assert (=> start!74210 tp_is_empty!3897))

(declare-fun b!835049 () Bool)

(declare-fun res!382366 () Bool)

(assert (=> b!835049 (=> (not res!382366) (not e!549391))))

(declare-fun c!13916 () C!4744)

(declare-datatypes ((List!8913 0))(
  ( (Nil!8897) (Cons!8897 (h!14298 C!4744) (t!93205 List!8913)) )
))
(declare-fun contains!1678 (List!8913 C!4744) Bool)

(declare-fun firstChars!58 (Regex!2087) List!8913)

(assert (=> b!835049 (= res!382366 (contains!1678 (firstChars!58 r!27177) c!13916))))

(declare-fun b!835050 () Bool)

(declare-fun tp!261763 () Bool)

(assert (=> b!835050 (= e!549390 tp!261763)))

(declare-fun b!835051 () Bool)

(assert (=> b!835051 (= e!549390 tp_is_empty!3897)))

(assert (= (and start!74210 res!382364) b!835049))

(assert (= (and b!835049 res!382366) b!835047))

(assert (= (and b!835047 res!382365) b!835048))

(assert (= (and b!835048 res!382367) b!835044))

(assert (= (and start!74210 ((_ is ElementMatch!2087) r!27177)) b!835051))

(assert (= (and start!74210 ((_ is Concat!3818) r!27177)) b!835046))

(assert (= (and start!74210 ((_ is Star!2087) r!27177)) b!835050))

(assert (= (and start!74210 ((_ is Union!2087) r!27177)) b!835045))

(declare-fun m!1069911 () Bool)

(assert (=> b!835044 m!1069911))

(declare-fun m!1069913 () Bool)

(assert (=> b!835048 m!1069913))

(declare-fun m!1069915 () Bool)

(assert (=> start!74210 m!1069915))

(declare-fun m!1069917 () Bool)

(assert (=> b!835049 m!1069917))

(assert (=> b!835049 m!1069917))

(declare-fun m!1069919 () Bool)

(assert (=> b!835049 m!1069919))

(check-sat (not b!835048) (not b!835049) (not b!835046) tp_is_empty!3897 (not b!835050) (not start!74210) (not b!835045) (not b!835044))
(check-sat)
(get-model)

(declare-fun d!260853 () Bool)

(declare-fun nullableFct!175 (Regex!2087) Bool)

(assert (=> d!260853 (= (nullable!538 (regOne!4686 r!27177)) (nullableFct!175 (regOne!4686 r!27177)))))

(declare-fun bs!229712 () Bool)

(assert (= bs!229712 d!260853))

(declare-fun m!1069921 () Bool)

(assert (=> bs!229712 m!1069921))

(assert (=> b!835048 d!260853))

(declare-fun bm!49911 () Bool)

(declare-fun call!49917 () Bool)

(declare-fun call!49916 () Bool)

(assert (=> bm!49911 (= call!49917 call!49916)))

(declare-fun bm!49912 () Bool)

(declare-fun call!49918 () Bool)

(declare-fun c!136299 () Bool)

(assert (=> bm!49912 (= call!49918 (validRegex!640 (ite c!136299 (regTwo!4687 (regOne!4686 r!27177)) (regOne!4686 (regOne!4686 r!27177)))))))

(declare-fun b!835096 () Bool)

(declare-fun e!549427 () Bool)

(assert (=> b!835096 (= e!549427 call!49917)))

(declare-fun b!835097 () Bool)

(declare-fun e!549425 () Bool)

(assert (=> b!835097 (= e!549425 e!549427)))

(declare-fun res!382387 () Bool)

(assert (=> b!835097 (=> (not res!382387) (not e!549427))))

(assert (=> b!835097 (= res!382387 call!49918)))

(declare-fun b!835098 () Bool)

(declare-fun e!549424 () Bool)

(assert (=> b!835098 (= e!549424 call!49918)))

(declare-fun bm!49913 () Bool)

(declare-fun c!136300 () Bool)

(assert (=> bm!49913 (= call!49916 (validRegex!640 (ite c!136300 (reg!2416 (regOne!4686 r!27177)) (ite c!136299 (regOne!4687 (regOne!4686 r!27177)) (regTwo!4686 (regOne!4686 r!27177))))))))

(declare-fun b!835099 () Bool)

(declare-fun res!382385 () Bool)

(assert (=> b!835099 (=> (not res!382385) (not e!549424))))

(assert (=> b!835099 (= res!382385 call!49917)))

(declare-fun e!549428 () Bool)

(assert (=> b!835099 (= e!549428 e!549424)))

(declare-fun b!835100 () Bool)

(declare-fun e!549426 () Bool)

(assert (=> b!835100 (= e!549426 e!549428)))

(assert (=> b!835100 (= c!136299 ((_ is Union!2087) (regOne!4686 r!27177)))))

(declare-fun b!835101 () Bool)

(declare-fun res!382384 () Bool)

(assert (=> b!835101 (=> res!382384 e!549425)))

(assert (=> b!835101 (= res!382384 (not ((_ is Concat!3818) (regOne!4686 r!27177))))))

(assert (=> b!835101 (= e!549428 e!549425)))

(declare-fun b!835102 () Bool)

(declare-fun e!549423 () Bool)

(assert (=> b!835102 (= e!549426 e!549423)))

(declare-fun res!382386 () Bool)

(assert (=> b!835102 (= res!382386 (not (nullable!538 (reg!2416 (regOne!4686 r!27177)))))))

(assert (=> b!835102 (=> (not res!382386) (not e!549423))))

(declare-fun b!835104 () Bool)

(assert (=> b!835104 (= e!549423 call!49916)))

(declare-fun b!835103 () Bool)

(declare-fun e!549422 () Bool)

(assert (=> b!835103 (= e!549422 e!549426)))

(assert (=> b!835103 (= c!136300 ((_ is Star!2087) (regOne!4686 r!27177)))))

(declare-fun d!260855 () Bool)

(declare-fun res!382388 () Bool)

(assert (=> d!260855 (=> res!382388 e!549422)))

(assert (=> d!260855 (= res!382388 ((_ is ElementMatch!2087) (regOne!4686 r!27177)))))

(assert (=> d!260855 (= (validRegex!640 (regOne!4686 r!27177)) e!549422)))

(assert (= (and d!260855 (not res!382388)) b!835103))

(assert (= (and b!835103 c!136300) b!835102))

(assert (= (and b!835103 (not c!136300)) b!835100))

(assert (= (and b!835102 res!382386) b!835104))

(assert (= (and b!835100 c!136299) b!835099))

(assert (= (and b!835100 (not c!136299)) b!835101))

(assert (= (and b!835099 res!382385) b!835098))

(assert (= (and b!835101 (not res!382384)) b!835097))

(assert (= (and b!835097 res!382387) b!835096))

(assert (= (or b!835099 b!835096) bm!49911))

(assert (= (or b!835098 b!835097) bm!49912))

(assert (= (or b!835104 bm!49911) bm!49913))

(declare-fun m!1069929 () Bool)

(assert (=> bm!49912 m!1069929))

(declare-fun m!1069931 () Bool)

(assert (=> bm!49913 m!1069931))

(declare-fun m!1069933 () Bool)

(assert (=> b!835102 m!1069933))

(assert (=> b!835044 d!260855))

(declare-fun d!260859 () Bool)

(declare-fun lt!317899 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1326 (List!8913) (InoxSet C!4744))

(assert (=> d!260859 (= lt!317899 (select (content!1326 (firstChars!58 r!27177)) c!13916))))

(declare-fun e!549434 () Bool)

(assert (=> d!260859 (= lt!317899 e!549434)))

(declare-fun res!382393 () Bool)

(assert (=> d!260859 (=> (not res!382393) (not e!549434))))

(assert (=> d!260859 (= res!382393 ((_ is Cons!8897) (firstChars!58 r!27177)))))

(assert (=> d!260859 (= (contains!1678 (firstChars!58 r!27177) c!13916) lt!317899)))

(declare-fun b!835109 () Bool)

(declare-fun e!549433 () Bool)

(assert (=> b!835109 (= e!549434 e!549433)))

(declare-fun res!382394 () Bool)

(assert (=> b!835109 (=> res!382394 e!549433)))

(assert (=> b!835109 (= res!382394 (= (h!14298 (firstChars!58 r!27177)) c!13916))))

(declare-fun b!835110 () Bool)

(assert (=> b!835110 (= e!549433 (contains!1678 (t!93205 (firstChars!58 r!27177)) c!13916))))

(assert (= (and d!260859 res!382393) b!835109))

(assert (= (and b!835109 (not res!382394)) b!835110))

(assert (=> d!260859 m!1069917))

(declare-fun m!1069935 () Bool)

(assert (=> d!260859 m!1069935))

(declare-fun m!1069937 () Bool)

(assert (=> d!260859 m!1069937))

(declare-fun m!1069939 () Bool)

(assert (=> b!835110 m!1069939))

(assert (=> b!835049 d!260859))

(declare-fun call!49946 () List!8913)

(declare-fun bm!49938 () Bool)

(declare-fun c!136323 () Bool)

(declare-fun c!136322 () Bool)

(assert (=> bm!49938 (= call!49946 (firstChars!58 (ite c!136322 (reg!2416 r!27177) (ite c!136323 (regTwo!4687 r!27177) (regOne!4686 r!27177)))))))

(declare-fun bm!49939 () Bool)

(declare-fun call!49945 () List!8913)

(assert (=> bm!49939 (= call!49945 call!49946)))

(declare-fun bm!49941 () Bool)

(declare-fun call!49948 () List!8913)

(assert (=> bm!49941 (= call!49948 (firstChars!58 (ite c!136323 (regOne!4687 r!27177) (regTwo!4686 r!27177))))))

(declare-fun b!835171 () Bool)

(declare-fun e!549476 () List!8913)

(assert (=> b!835171 (= e!549476 call!49946)))

(declare-fun call!49944 () List!8913)

(declare-fun call!49949 () List!8913)

(declare-fun bm!49942 () Bool)

(declare-fun ++!2314 (List!8913 List!8913) List!8913)

(assert (=> bm!49942 (= call!49944 (++!2314 (ite c!136323 call!49948 call!49949) (ite c!136323 call!49945 call!49948)))))

(declare-fun b!835174 () Bool)

(declare-fun e!549482 () List!8913)

(assert (=> b!835174 (= e!549482 call!49949)))

(declare-fun b!835176 () Bool)

(declare-fun e!549474 () List!8913)

(assert (=> b!835176 (= e!549474 (Cons!8897 (c!136284 r!27177) Nil!8897))))

(declare-fun b!835178 () Bool)

(declare-fun e!549478 () List!8913)

(assert (=> b!835178 (= e!549478 e!549474)))

(declare-fun c!136328 () Bool)

(assert (=> b!835178 (= c!136328 ((_ is ElementMatch!2087) r!27177))))

(declare-fun bm!49943 () Bool)

(assert (=> bm!49943 (= call!49949 call!49945)))

(declare-fun b!835180 () Bool)

(declare-fun c!136325 () Bool)

(assert (=> b!835180 (= c!136325 (nullable!538 (regOne!4686 r!27177)))))

(declare-fun e!549472 () List!8913)

(assert (=> b!835180 (= e!549472 e!549482)))

(declare-fun d!260861 () Bool)

(declare-fun c!136327 () Bool)

(assert (=> d!260861 (= c!136327 (or ((_ is EmptyExpr!2087) r!27177) ((_ is EmptyLang!2087) r!27177)))))

(assert (=> d!260861 (= (firstChars!58 r!27177) e!549478)))

(declare-fun b!835182 () Bool)

(assert (=> b!835182 (= e!549482 call!49944)))

(declare-fun b!835183 () Bool)

(assert (=> b!835183 (= e!549478 Nil!8897)))

(declare-fun b!835184 () Bool)

(assert (=> b!835184 (= c!136322 ((_ is Star!2087) r!27177))))

(assert (=> b!835184 (= e!549474 e!549476)))

(declare-fun b!835185 () Bool)

(assert (=> b!835185 (= e!549472 call!49944)))

(declare-fun b!835186 () Bool)

(assert (=> b!835186 (= e!549476 e!549472)))

(assert (=> b!835186 (= c!136323 ((_ is Union!2087) r!27177))))

(assert (= (and d!260861 c!136327) b!835183))

(assert (= (and d!260861 (not c!136327)) b!835178))

(assert (= (and b!835178 c!136328) b!835176))

(assert (= (and b!835178 (not c!136328)) b!835184))

(assert (= (and b!835184 c!136322) b!835171))

(assert (= (and b!835184 (not c!136322)) b!835186))

(assert (= (and b!835186 c!136323) b!835185))

(assert (= (and b!835186 (not c!136323)) b!835180))

(assert (= (and b!835180 c!136325) b!835182))

(assert (= (and b!835180 (not c!136325)) b!835174))

(assert (= (or b!835182 b!835174) bm!49943))

(assert (= (or b!835185 bm!49943) bm!49939))

(assert (= (or b!835185 b!835182) bm!49941))

(assert (= (or b!835185 b!835182) bm!49942))

(assert (= (or b!835171 bm!49939) bm!49938))

(declare-fun m!1069961 () Bool)

(assert (=> bm!49938 m!1069961))

(declare-fun m!1069963 () Bool)

(assert (=> bm!49941 m!1069963))

(declare-fun m!1069965 () Bool)

(assert (=> bm!49942 m!1069965))

(assert (=> b!835180 m!1069913))

(assert (=> b!835049 d!260861))

(declare-fun bm!49946 () Bool)

(declare-fun call!49952 () Bool)

(declare-fun call!49951 () Bool)

(assert (=> bm!49946 (= call!49952 call!49951)))

(declare-fun bm!49947 () Bool)

(declare-fun call!49953 () Bool)

(declare-fun c!136329 () Bool)

(assert (=> bm!49947 (= call!49953 (validRegex!640 (ite c!136329 (regTwo!4687 r!27177) (regOne!4686 r!27177))))))

(declare-fun b!835193 () Bool)

(declare-fun e!549490 () Bool)

(assert (=> b!835193 (= e!549490 call!49952)))

(declare-fun b!835194 () Bool)

(declare-fun e!549488 () Bool)

(assert (=> b!835194 (= e!549488 e!549490)))

(declare-fun res!382418 () Bool)

(assert (=> b!835194 (=> (not res!382418) (not e!549490))))

(assert (=> b!835194 (= res!382418 call!49953)))

(declare-fun b!835195 () Bool)

(declare-fun e!549487 () Bool)

(assert (=> b!835195 (= e!549487 call!49953)))

(declare-fun c!136330 () Bool)

(declare-fun bm!49948 () Bool)

(assert (=> bm!49948 (= call!49951 (validRegex!640 (ite c!136330 (reg!2416 r!27177) (ite c!136329 (regOne!4687 r!27177) (regTwo!4686 r!27177)))))))

(declare-fun b!835196 () Bool)

(declare-fun res!382416 () Bool)

(assert (=> b!835196 (=> (not res!382416) (not e!549487))))

(assert (=> b!835196 (= res!382416 call!49952)))

(declare-fun e!549491 () Bool)

(assert (=> b!835196 (= e!549491 e!549487)))

(declare-fun b!835197 () Bool)

(declare-fun e!549489 () Bool)

(assert (=> b!835197 (= e!549489 e!549491)))

(assert (=> b!835197 (= c!136329 ((_ is Union!2087) r!27177))))

(declare-fun b!835198 () Bool)

(declare-fun res!382415 () Bool)

(assert (=> b!835198 (=> res!382415 e!549488)))

(assert (=> b!835198 (= res!382415 (not ((_ is Concat!3818) r!27177)))))

(assert (=> b!835198 (= e!549491 e!549488)))

(declare-fun b!835199 () Bool)

(declare-fun e!549486 () Bool)

(assert (=> b!835199 (= e!549489 e!549486)))

(declare-fun res!382417 () Bool)

(assert (=> b!835199 (= res!382417 (not (nullable!538 (reg!2416 r!27177))))))

(assert (=> b!835199 (=> (not res!382417) (not e!549486))))

(declare-fun b!835201 () Bool)

(assert (=> b!835201 (= e!549486 call!49951)))

(declare-fun b!835200 () Bool)

(declare-fun e!549485 () Bool)

(assert (=> b!835200 (= e!549485 e!549489)))

(assert (=> b!835200 (= c!136330 ((_ is Star!2087) r!27177))))

(declare-fun d!260869 () Bool)

(declare-fun res!382419 () Bool)

(assert (=> d!260869 (=> res!382419 e!549485)))

(assert (=> d!260869 (= res!382419 ((_ is ElementMatch!2087) r!27177))))

(assert (=> d!260869 (= (validRegex!640 r!27177) e!549485)))

(assert (= (and d!260869 (not res!382419)) b!835200))

(assert (= (and b!835200 c!136330) b!835199))

(assert (= (and b!835200 (not c!136330)) b!835197))

(assert (= (and b!835199 res!382417) b!835201))

(assert (= (and b!835197 c!136329) b!835196))

(assert (= (and b!835197 (not c!136329)) b!835198))

(assert (= (and b!835196 res!382416) b!835195))

(assert (= (and b!835198 (not res!382415)) b!835194))

(assert (= (and b!835194 res!382418) b!835193))

(assert (= (or b!835196 b!835193) bm!49946))

(assert (= (or b!835195 b!835194) bm!49947))

(assert (= (or b!835201 bm!49946) bm!49948))

(declare-fun m!1069967 () Bool)

(assert (=> bm!49947 m!1069967))

(declare-fun m!1069969 () Bool)

(assert (=> bm!49948 m!1069969))

(declare-fun m!1069971 () Bool)

(assert (=> b!835199 m!1069971))

(assert (=> start!74210 d!260869))

(declare-fun b!835236 () Bool)

(declare-fun e!549499 () Bool)

(assert (=> b!835236 (= e!549499 tp_is_empty!3897)))

(declare-fun b!835237 () Bool)

(declare-fun tp!261813 () Bool)

(declare-fun tp!261810 () Bool)

(assert (=> b!835237 (= e!549499 (and tp!261813 tp!261810))))

(declare-fun b!835238 () Bool)

(declare-fun tp!261814 () Bool)

(assert (=> b!835238 (= e!549499 tp!261814)))

(assert (=> b!835050 (= tp!261763 e!549499)))

(declare-fun b!835239 () Bool)

(declare-fun tp!261811 () Bool)

(declare-fun tp!261812 () Bool)

(assert (=> b!835239 (= e!549499 (and tp!261811 tp!261812))))

(assert (= (and b!835050 ((_ is ElementMatch!2087) (reg!2416 r!27177))) b!835236))

(assert (= (and b!835050 ((_ is Concat!3818) (reg!2416 r!27177))) b!835237))

(assert (= (and b!835050 ((_ is Star!2087) (reg!2416 r!27177))) b!835238))

(assert (= (and b!835050 ((_ is Union!2087) (reg!2416 r!27177))) b!835239))

(declare-fun b!835240 () Bool)

(declare-fun e!549500 () Bool)

(assert (=> b!835240 (= e!549500 tp_is_empty!3897)))

(declare-fun b!835241 () Bool)

(declare-fun tp!261818 () Bool)

(declare-fun tp!261815 () Bool)

(assert (=> b!835241 (= e!549500 (and tp!261818 tp!261815))))

(declare-fun b!835242 () Bool)

(declare-fun tp!261819 () Bool)

(assert (=> b!835242 (= e!549500 tp!261819)))

(assert (=> b!835046 (= tp!261762 e!549500)))

(declare-fun b!835243 () Bool)

(declare-fun tp!261816 () Bool)

(declare-fun tp!261817 () Bool)

(assert (=> b!835243 (= e!549500 (and tp!261816 tp!261817))))

(assert (= (and b!835046 ((_ is ElementMatch!2087) (regOne!4686 r!27177))) b!835240))

(assert (= (and b!835046 ((_ is Concat!3818) (regOne!4686 r!27177))) b!835241))

(assert (= (and b!835046 ((_ is Star!2087) (regOne!4686 r!27177))) b!835242))

(assert (= (and b!835046 ((_ is Union!2087) (regOne!4686 r!27177))) b!835243))

(declare-fun b!835244 () Bool)

(declare-fun e!549501 () Bool)

(assert (=> b!835244 (= e!549501 tp_is_empty!3897)))

(declare-fun b!835245 () Bool)

(declare-fun tp!261823 () Bool)

(declare-fun tp!261820 () Bool)

(assert (=> b!835245 (= e!549501 (and tp!261823 tp!261820))))

(declare-fun b!835246 () Bool)

(declare-fun tp!261824 () Bool)

(assert (=> b!835246 (= e!549501 tp!261824)))

(assert (=> b!835046 (= tp!261764 e!549501)))

(declare-fun b!835247 () Bool)

(declare-fun tp!261821 () Bool)

(declare-fun tp!261822 () Bool)

(assert (=> b!835247 (= e!549501 (and tp!261821 tp!261822))))

(assert (= (and b!835046 ((_ is ElementMatch!2087) (regTwo!4686 r!27177))) b!835244))

(assert (= (and b!835046 ((_ is Concat!3818) (regTwo!4686 r!27177))) b!835245))

(assert (= (and b!835046 ((_ is Star!2087) (regTwo!4686 r!27177))) b!835246))

(assert (= (and b!835046 ((_ is Union!2087) (regTwo!4686 r!27177))) b!835247))

(declare-fun b!835248 () Bool)

(declare-fun e!549502 () Bool)

(assert (=> b!835248 (= e!549502 tp_is_empty!3897)))

(declare-fun b!835249 () Bool)

(declare-fun tp!261828 () Bool)

(declare-fun tp!261825 () Bool)

(assert (=> b!835249 (= e!549502 (and tp!261828 tp!261825))))

(declare-fun b!835250 () Bool)

(declare-fun tp!261829 () Bool)

(assert (=> b!835250 (= e!549502 tp!261829)))

(assert (=> b!835045 (= tp!261761 e!549502)))

(declare-fun b!835251 () Bool)

(declare-fun tp!261826 () Bool)

(declare-fun tp!261827 () Bool)

(assert (=> b!835251 (= e!549502 (and tp!261826 tp!261827))))

(assert (= (and b!835045 ((_ is ElementMatch!2087) (regOne!4687 r!27177))) b!835248))

(assert (= (and b!835045 ((_ is Concat!3818) (regOne!4687 r!27177))) b!835249))

(assert (= (and b!835045 ((_ is Star!2087) (regOne!4687 r!27177))) b!835250))

(assert (= (and b!835045 ((_ is Union!2087) (regOne!4687 r!27177))) b!835251))

(declare-fun b!835252 () Bool)

(declare-fun e!549503 () Bool)

(assert (=> b!835252 (= e!549503 tp_is_empty!3897)))

(declare-fun b!835253 () Bool)

(declare-fun tp!261833 () Bool)

(declare-fun tp!261830 () Bool)

(assert (=> b!835253 (= e!549503 (and tp!261833 tp!261830))))

(declare-fun b!835254 () Bool)

(declare-fun tp!261834 () Bool)

(assert (=> b!835254 (= e!549503 tp!261834)))

(assert (=> b!835045 (= tp!261760 e!549503)))

(declare-fun b!835255 () Bool)

(declare-fun tp!261831 () Bool)

(declare-fun tp!261832 () Bool)

(assert (=> b!835255 (= e!549503 (and tp!261831 tp!261832))))

(assert (= (and b!835045 ((_ is ElementMatch!2087) (regTwo!4687 r!27177))) b!835252))

(assert (= (and b!835045 ((_ is Concat!3818) (regTwo!4687 r!27177))) b!835253))

(assert (= (and b!835045 ((_ is Star!2087) (regTwo!4687 r!27177))) b!835254))

(assert (= (and b!835045 ((_ is Union!2087) (regTwo!4687 r!27177))) b!835255))

(check-sat (not bm!49942) (not bm!49941) (not b!835241) (not b!835199) (not b!835242) (not bm!49912) (not b!835246) (not bm!49913) (not b!835243) (not b!835237) (not b!835250) tp_is_empty!3897 (not b!835238) (not b!835245) (not b!835254) (not bm!49948) (not b!835247) (not b!835255) (not d!260853) (not bm!49938) (not d!260859) (not b!835249) (not b!835102) (not b!835251) (not b!835253) (not b!835239) (not b!835180) (not b!835110) (not bm!49947))
(check-sat)
