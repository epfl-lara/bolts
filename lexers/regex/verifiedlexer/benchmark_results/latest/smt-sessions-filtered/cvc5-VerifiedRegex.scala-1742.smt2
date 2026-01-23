; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!87136 () Bool)

(assert start!87136)

(declare-fun b!982793 () Bool)

(assert (=> b!982793 true))

(assert (=> b!982793 true))

(declare-fun lambda!35032 () Int)

(declare-fun lambda!35031 () Int)

(assert (=> b!982793 (not (= lambda!35032 lambda!35031))))

(assert (=> b!982793 true))

(assert (=> b!982793 true))

(declare-fun res!445954 () Bool)

(declare-fun e!632111 () Bool)

(assert (=> start!87136 (=> (not res!445954) (not e!632111))))

(declare-datatypes ((C!6054 0))(
  ( (C!6055 (val!3275 Int)) )
))
(declare-datatypes ((Regex!2742 0))(
  ( (ElementMatch!2742 (c!160723 C!6054)) (Concat!4575 (regOne!5996 Regex!2742) (regTwo!5996 Regex!2742)) (EmptyExpr!2742) (Star!2742 (reg!3071 Regex!2742)) (EmptyLang!2742) (Union!2742 (regOne!5997 Regex!2742) (regTwo!5997 Regex!2742)) )
))
(declare-fun r!15766 () Regex!2742)

(declare-fun validRegex!1211 (Regex!2742) Bool)

(assert (=> start!87136 (= res!445954 (validRegex!1211 r!15766))))

(assert (=> start!87136 e!632111))

(declare-fun e!632114 () Bool)

(assert (=> start!87136 e!632114))

(declare-fun e!632110 () Bool)

(assert (=> start!87136 e!632110))

(declare-fun b!982790 () Bool)

(declare-fun e!632112 () Bool)

(declare-datatypes ((List!9972 0))(
  ( (Nil!9956) (Cons!9956 (h!15357 C!6054) (t!101018 List!9972)) )
))
(declare-fun s!10566 () List!9972)

(declare-fun matchR!1278 (Regex!2742 List!9972) Bool)

(declare-fun removeUselessConcat!351 (Regex!2742) Regex!2742)

(assert (=> b!982790 (= e!632112 (matchR!1278 (removeUselessConcat!351 r!15766) s!10566))))

(declare-fun b!982791 () Bool)

(declare-fun tp!300217 () Bool)

(assert (=> b!982791 (= e!632114 tp!300217)))

(declare-fun b!982792 () Bool)

(declare-fun tp!300218 () Bool)

(declare-fun tp!300222 () Bool)

(assert (=> b!982792 (= e!632114 (and tp!300218 tp!300222))))

(declare-fun e!632113 () Bool)

(assert (=> b!982793 (= e!632113 e!632112)))

(declare-fun res!445955 () Bool)

(assert (=> b!982793 (=> res!445955 e!632112)))

(declare-fun isEmpty!6283 (List!9972) Bool)

(assert (=> b!982793 (= res!445955 (not (isEmpty!6283 s!10566)))))

(declare-fun Exists!479 (Int) Bool)

(assert (=> b!982793 (= (Exists!479 lambda!35031) (Exists!479 lambda!35032))))

(declare-datatypes ((Unit!15143 0))(
  ( (Unit!15144) )
))
(declare-fun lt!350215 () Unit!15143)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!229 (Regex!2742 Regex!2742 List!9972) Unit!15143)

(assert (=> b!982793 (= lt!350215 (lemmaExistCutMatchRandMatchRSpecEquivalent!229 (regOne!5996 r!15766) (regTwo!5996 r!15766) s!10566))))

(declare-datatypes ((tuple2!11330 0))(
  ( (tuple2!11331 (_1!6491 List!9972) (_2!6491 List!9972)) )
))
(declare-datatypes ((Option!2307 0))(
  ( (None!2306) (Some!2306 (v!19723 tuple2!11330)) )
))
(declare-fun isDefined!1949 (Option!2307) Bool)

(declare-fun findConcatSeparation!413 (Regex!2742 Regex!2742 List!9972 List!9972 List!9972) Option!2307)

(assert (=> b!982793 (= (isDefined!1949 (findConcatSeparation!413 (regOne!5996 r!15766) (regTwo!5996 r!15766) Nil!9956 s!10566 s!10566)) (Exists!479 lambda!35031))))

(declare-fun lt!350216 () Unit!15143)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!413 (Regex!2742 Regex!2742 List!9972) Unit!15143)

(assert (=> b!982793 (= lt!350216 (lemmaFindConcatSeparationEquivalentToExists!413 (regOne!5996 r!15766) (regTwo!5996 r!15766) s!10566))))

(declare-fun b!982794 () Bool)

(declare-fun tp_is_empty!5127 () Bool)

(declare-fun tp!300219 () Bool)

(assert (=> b!982794 (= e!632110 (and tp_is_empty!5127 tp!300219))))

(declare-fun b!982795 () Bool)

(assert (=> b!982795 (= e!632111 (not e!632113))))

(declare-fun res!445953 () Bool)

(assert (=> b!982795 (=> res!445953 e!632113)))

(declare-fun lt!350217 () Bool)

(assert (=> b!982795 (= res!445953 (or (not lt!350217) (and (is-Concat!4575 r!15766) (is-EmptyExpr!2742 (regOne!5996 r!15766))) (and (is-Concat!4575 r!15766) (is-EmptyExpr!2742 (regTwo!5996 r!15766))) (not (is-Concat!4575 r!15766))))))

(declare-fun matchRSpec!541 (Regex!2742 List!9972) Bool)

(assert (=> b!982795 (= lt!350217 (matchRSpec!541 r!15766 s!10566))))

(assert (=> b!982795 (= lt!350217 (matchR!1278 r!15766 s!10566))))

(declare-fun lt!350214 () Unit!15143)

(declare-fun mainMatchTheorem!541 (Regex!2742 List!9972) Unit!15143)

(assert (=> b!982795 (= lt!350214 (mainMatchTheorem!541 r!15766 s!10566))))

(declare-fun b!982796 () Bool)

(assert (=> b!982796 (= e!632114 tp_is_empty!5127)))

(declare-fun b!982797 () Bool)

(declare-fun tp!300221 () Bool)

(declare-fun tp!300220 () Bool)

(assert (=> b!982797 (= e!632114 (and tp!300221 tp!300220))))

(assert (= (and start!87136 res!445954) b!982795))

(assert (= (and b!982795 (not res!445953)) b!982793))

(assert (= (and b!982793 (not res!445955)) b!982790))

(assert (= (and start!87136 (is-ElementMatch!2742 r!15766)) b!982796))

(assert (= (and start!87136 (is-Concat!4575 r!15766)) b!982797))

(assert (= (and start!87136 (is-Star!2742 r!15766)) b!982791))

(assert (= (and start!87136 (is-Union!2742 r!15766)) b!982792))

(assert (= (and start!87136 (is-Cons!9956 s!10566)) b!982794))

(declare-fun m!1180885 () Bool)

(assert (=> start!87136 m!1180885))

(declare-fun m!1180887 () Bool)

(assert (=> b!982790 m!1180887))

(assert (=> b!982790 m!1180887))

(declare-fun m!1180889 () Bool)

(assert (=> b!982790 m!1180889))

(declare-fun m!1180891 () Bool)

(assert (=> b!982793 m!1180891))

(declare-fun m!1180893 () Bool)

(assert (=> b!982793 m!1180893))

(declare-fun m!1180895 () Bool)

(assert (=> b!982793 m!1180895))

(declare-fun m!1180897 () Bool)

(assert (=> b!982793 m!1180897))

(declare-fun m!1180899 () Bool)

(assert (=> b!982793 m!1180899))

(assert (=> b!982793 m!1180891))

(declare-fun m!1180901 () Bool)

(assert (=> b!982793 m!1180901))

(declare-fun m!1180903 () Bool)

(assert (=> b!982793 m!1180903))

(assert (=> b!982793 m!1180893))

(declare-fun m!1180905 () Bool)

(assert (=> b!982795 m!1180905))

(declare-fun m!1180907 () Bool)

(assert (=> b!982795 m!1180907))

(declare-fun m!1180909 () Bool)

(assert (=> b!982795 m!1180909))

(push 1)

(assert (not b!982793))

(assert (not b!982791))

(assert (not b!982797))

(assert tp_is_empty!5127)

(assert (not start!87136))

(assert (not b!982790))

(assert (not b!982792))

(assert (not b!982794))

(assert (not b!982795))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!288431 () Bool)

(assert (=> d!288431 (= (isEmpty!6283 s!10566) (is-Nil!9956 s!10566))))

(assert (=> b!982793 d!288431))

(declare-fun d!288433 () Bool)

(declare-fun choose!6234 (Int) Bool)

(assert (=> d!288433 (= (Exists!479 lambda!35032) (choose!6234 lambda!35032))))

(declare-fun bs!243994 () Bool)

(assert (= bs!243994 d!288433))

(declare-fun m!1180937 () Bool)

(assert (=> bs!243994 m!1180937))

(assert (=> b!982793 d!288433))

(declare-fun d!288435 () Bool)

(declare-fun isEmpty!6285 (Option!2307) Bool)

(assert (=> d!288435 (= (isDefined!1949 (findConcatSeparation!413 (regOne!5996 r!15766) (regTwo!5996 r!15766) Nil!9956 s!10566 s!10566)) (not (isEmpty!6285 (findConcatSeparation!413 (regOne!5996 r!15766) (regTwo!5996 r!15766) Nil!9956 s!10566 s!10566))))))

(declare-fun bs!243995 () Bool)

(assert (= bs!243995 d!288435))

(assert (=> bs!243995 m!1180893))

(declare-fun m!1180939 () Bool)

(assert (=> bs!243995 m!1180939))

(assert (=> b!982793 d!288435))

(declare-fun d!288437 () Bool)

(assert (=> d!288437 (= (Exists!479 lambda!35031) (choose!6234 lambda!35031))))

(declare-fun bs!243996 () Bool)

(assert (= bs!243996 d!288437))

(declare-fun m!1180941 () Bool)

(assert (=> bs!243996 m!1180941))

(assert (=> b!982793 d!288437))

(declare-fun bs!243997 () Bool)

(declare-fun d!288439 () Bool)

(assert (= bs!243997 (and d!288439 b!982793)))

(declare-fun lambda!35043 () Int)

(assert (=> bs!243997 (= lambda!35043 lambda!35031)))

(assert (=> bs!243997 (not (= lambda!35043 lambda!35032))))

(assert (=> d!288439 true))

(assert (=> d!288439 true))

(assert (=> d!288439 true))

(assert (=> d!288439 (= (isDefined!1949 (findConcatSeparation!413 (regOne!5996 r!15766) (regTwo!5996 r!15766) Nil!9956 s!10566 s!10566)) (Exists!479 lambda!35043))))

(declare-fun lt!350232 () Unit!15143)

(declare-fun choose!6235 (Regex!2742 Regex!2742 List!9972) Unit!15143)

(assert (=> d!288439 (= lt!350232 (choose!6235 (regOne!5996 r!15766) (regTwo!5996 r!15766) s!10566))))

(assert (=> d!288439 (validRegex!1211 (regOne!5996 r!15766))))

(assert (=> d!288439 (= (lemmaFindConcatSeparationEquivalentToExists!413 (regOne!5996 r!15766) (regTwo!5996 r!15766) s!10566) lt!350232)))

(declare-fun bs!243998 () Bool)

(assert (= bs!243998 d!288439))

(assert (=> bs!243998 m!1180893))

(declare-fun m!1180943 () Bool)

(assert (=> bs!243998 m!1180943))

(declare-fun m!1180945 () Bool)

(assert (=> bs!243998 m!1180945))

(declare-fun m!1180947 () Bool)

(assert (=> bs!243998 m!1180947))

(assert (=> bs!243998 m!1180893))

(assert (=> bs!243998 m!1180895))

(assert (=> b!982793 d!288439))

(declare-fun b!982892 () Bool)

(declare-fun e!632167 () Option!2307)

(assert (=> b!982892 (= e!632167 (Some!2306 (tuple2!11331 Nil!9956 s!10566)))))

(declare-fun b!982893 () Bool)

(declare-fun lt!350241 () Unit!15143)

(declare-fun lt!350239 () Unit!15143)

(assert (=> b!982893 (= lt!350241 lt!350239)))

(declare-fun ++!2704 (List!9972 List!9972) List!9972)

(assert (=> b!982893 (= (++!2704 (++!2704 Nil!9956 (Cons!9956 (h!15357 s!10566) Nil!9956)) (t!101018 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!305 (List!9972 C!6054 List!9972 List!9972) Unit!15143)

(assert (=> b!982893 (= lt!350239 (lemmaMoveElementToOtherListKeepsConcatEq!305 Nil!9956 (h!15357 s!10566) (t!101018 s!10566) s!10566))))

(declare-fun e!632166 () Option!2307)

(assert (=> b!982893 (= e!632166 (findConcatSeparation!413 (regOne!5996 r!15766) (regTwo!5996 r!15766) (++!2704 Nil!9956 (Cons!9956 (h!15357 s!10566) Nil!9956)) (t!101018 s!10566) s!10566))))

(declare-fun d!288443 () Bool)

(declare-fun e!632165 () Bool)

(assert (=> d!288443 e!632165))

(declare-fun res!446004 () Bool)

(assert (=> d!288443 (=> res!446004 e!632165)))

(declare-fun e!632164 () Bool)

(assert (=> d!288443 (= res!446004 e!632164)))

(declare-fun res!446006 () Bool)

(assert (=> d!288443 (=> (not res!446006) (not e!632164))))

(declare-fun lt!350240 () Option!2307)

(assert (=> d!288443 (= res!446006 (isDefined!1949 lt!350240))))

(assert (=> d!288443 (= lt!350240 e!632167)))

(declare-fun c!160737 () Bool)

(declare-fun e!632168 () Bool)

(assert (=> d!288443 (= c!160737 e!632168)))

(declare-fun res!446007 () Bool)

(assert (=> d!288443 (=> (not res!446007) (not e!632168))))

(assert (=> d!288443 (= res!446007 (matchR!1278 (regOne!5996 r!15766) Nil!9956))))

(assert (=> d!288443 (validRegex!1211 (regOne!5996 r!15766))))

(assert (=> d!288443 (= (findConcatSeparation!413 (regOne!5996 r!15766) (regTwo!5996 r!15766) Nil!9956 s!10566 s!10566) lt!350240)))

(declare-fun b!982894 () Bool)

(declare-fun res!446005 () Bool)

(assert (=> b!982894 (=> (not res!446005) (not e!632164))))

(declare-fun get!3456 (Option!2307) tuple2!11330)

(assert (=> b!982894 (= res!446005 (matchR!1278 (regOne!5996 r!15766) (_1!6491 (get!3456 lt!350240))))))

(declare-fun b!982895 () Bool)

(assert (=> b!982895 (= e!632166 None!2306)))

(declare-fun b!982896 () Bool)

(assert (=> b!982896 (= e!632164 (= (++!2704 (_1!6491 (get!3456 lt!350240)) (_2!6491 (get!3456 lt!350240))) s!10566))))

(declare-fun b!982897 () Bool)

(declare-fun res!446003 () Bool)

(assert (=> b!982897 (=> (not res!446003) (not e!632164))))

(assert (=> b!982897 (= res!446003 (matchR!1278 (regTwo!5996 r!15766) (_2!6491 (get!3456 lt!350240))))))

(declare-fun b!982898 () Bool)

(assert (=> b!982898 (= e!632165 (not (isDefined!1949 lt!350240)))))

(declare-fun b!982899 () Bool)

(assert (=> b!982899 (= e!632168 (matchR!1278 (regTwo!5996 r!15766) s!10566))))

(declare-fun b!982900 () Bool)

(assert (=> b!982900 (= e!632167 e!632166)))

(declare-fun c!160738 () Bool)

(assert (=> b!982900 (= c!160738 (is-Nil!9956 s!10566))))

(assert (= (and d!288443 res!446007) b!982899))

(assert (= (and d!288443 c!160737) b!982892))

(assert (= (and d!288443 (not c!160737)) b!982900))

(assert (= (and b!982900 c!160738) b!982895))

(assert (= (and b!982900 (not c!160738)) b!982893))

(assert (= (and d!288443 res!446006) b!982894))

(assert (= (and b!982894 res!446005) b!982897))

(assert (= (and b!982897 res!446003) b!982896))

(assert (= (and d!288443 (not res!446004)) b!982898))

(declare-fun m!1180949 () Bool)

(assert (=> b!982896 m!1180949))

(declare-fun m!1180951 () Bool)

(assert (=> b!982896 m!1180951))

(declare-fun m!1180953 () Bool)

(assert (=> b!982893 m!1180953))

(assert (=> b!982893 m!1180953))

(declare-fun m!1180955 () Bool)

(assert (=> b!982893 m!1180955))

(declare-fun m!1180957 () Bool)

(assert (=> b!982893 m!1180957))

(assert (=> b!982893 m!1180953))

(declare-fun m!1180959 () Bool)

(assert (=> b!982893 m!1180959))

(declare-fun m!1180961 () Bool)

(assert (=> b!982898 m!1180961))

(declare-fun m!1180963 () Bool)

(assert (=> b!982899 m!1180963))

(assert (=> d!288443 m!1180961))

(declare-fun m!1180965 () Bool)

(assert (=> d!288443 m!1180965))

(assert (=> d!288443 m!1180943))

(assert (=> b!982897 m!1180949))

(declare-fun m!1180967 () Bool)

(assert (=> b!982897 m!1180967))

(assert (=> b!982894 m!1180949))

(declare-fun m!1180969 () Bool)

(assert (=> b!982894 m!1180969))

(assert (=> b!982793 d!288443))

(declare-fun bs!243999 () Bool)

(declare-fun d!288445 () Bool)

(assert (= bs!243999 (and d!288445 b!982793)))

(declare-fun lambda!35052 () Int)

(assert (=> bs!243999 (= lambda!35052 lambda!35031)))

(assert (=> bs!243999 (not (= lambda!35052 lambda!35032))))

(declare-fun bs!244000 () Bool)

(assert (= bs!244000 (and d!288445 d!288439)))

(assert (=> bs!244000 (= lambda!35052 lambda!35043)))

(assert (=> d!288445 true))

(assert (=> d!288445 true))

(assert (=> d!288445 true))

(declare-fun lambda!35053 () Int)

(assert (=> bs!243999 (not (= lambda!35053 lambda!35031))))

(assert (=> bs!243999 (= lambda!35053 lambda!35032)))

(assert (=> bs!244000 (not (= lambda!35053 lambda!35043))))

(declare-fun bs!244001 () Bool)

(assert (= bs!244001 d!288445))

(assert (=> bs!244001 (not (= lambda!35053 lambda!35052))))

(assert (=> d!288445 true))

(assert (=> d!288445 true))

(assert (=> d!288445 true))

(assert (=> d!288445 (= (Exists!479 lambda!35052) (Exists!479 lambda!35053))))

(declare-fun lt!350244 () Unit!15143)

(declare-fun choose!6236 (Regex!2742 Regex!2742 List!9972) Unit!15143)

(assert (=> d!288445 (= lt!350244 (choose!6236 (regOne!5996 r!15766) (regTwo!5996 r!15766) s!10566))))

(assert (=> d!288445 (validRegex!1211 (regOne!5996 r!15766))))

(assert (=> d!288445 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!229 (regOne!5996 r!15766) (regTwo!5996 r!15766) s!10566) lt!350244)))

(declare-fun m!1180971 () Bool)

(assert (=> bs!244001 m!1180971))

(declare-fun m!1180973 () Bool)

(assert (=> bs!244001 m!1180973))

(declare-fun m!1180975 () Bool)

(assert (=> bs!244001 m!1180975))

(assert (=> bs!244001 m!1180943))

(assert (=> b!982793 d!288445))

(declare-fun b!982942 () Bool)

(declare-fun e!632198 () Bool)

(declare-fun e!632199 () Bool)

(assert (=> b!982942 (= e!632198 e!632199)))

(declare-fun c!160747 () Bool)

(assert (=> b!982942 (= c!160747 (is-Star!2742 r!15766))))

(declare-fun call!63276 () Bool)

(declare-fun c!160748 () Bool)

(declare-fun bm!63271 () Bool)

(assert (=> bm!63271 (= call!63276 (validRegex!1211 (ite c!160747 (reg!3071 r!15766) (ite c!160748 (regTwo!5997 r!15766) (regTwo!5996 r!15766)))))))

(declare-fun b!982943 () Bool)

(declare-fun res!446034 () Bool)

(declare-fun e!632196 () Bool)

(assert (=> b!982943 (=> (not res!446034) (not e!632196))))

(declare-fun call!63277 () Bool)

(assert (=> b!982943 (= res!446034 call!63277)))

(declare-fun e!632202 () Bool)

(assert (=> b!982943 (= e!632202 e!632196)))

(declare-fun b!982944 () Bool)

(declare-fun res!446036 () Bool)

(declare-fun e!632197 () Bool)

(assert (=> b!982944 (=> res!446036 e!632197)))

(assert (=> b!982944 (= res!446036 (not (is-Concat!4575 r!15766)))))

(assert (=> b!982944 (= e!632202 e!632197)))

(declare-fun b!982945 () Bool)

(declare-fun e!632200 () Bool)

(assert (=> b!982945 (= e!632200 call!63276)))

(declare-fun b!982946 () Bool)

(assert (=> b!982946 (= e!632199 e!632202)))

(assert (=> b!982946 (= c!160748 (is-Union!2742 r!15766))))

(declare-fun b!982947 () Bool)

(assert (=> b!982947 (= e!632199 e!632200)))

(declare-fun res!446037 () Bool)

(declare-fun nullable!858 (Regex!2742) Bool)

(assert (=> b!982947 (= res!446037 (not (nullable!858 (reg!3071 r!15766))))))

(assert (=> b!982947 (=> (not res!446037) (not e!632200))))

(declare-fun b!982948 () Bool)

(declare-fun call!63278 () Bool)

(assert (=> b!982948 (= e!632196 call!63278)))

(declare-fun b!982949 () Bool)

(declare-fun e!632201 () Bool)

(assert (=> b!982949 (= e!632201 call!63278)))

(declare-fun d!288447 () Bool)

(declare-fun res!446033 () Bool)

(assert (=> d!288447 (=> res!446033 e!632198)))

(assert (=> d!288447 (= res!446033 (is-ElementMatch!2742 r!15766))))

(assert (=> d!288447 (= (validRegex!1211 r!15766) e!632198)))

(declare-fun bm!63272 () Bool)

(assert (=> bm!63272 (= call!63278 call!63276)))

(declare-fun bm!63273 () Bool)

(assert (=> bm!63273 (= call!63277 (validRegex!1211 (ite c!160748 (regOne!5997 r!15766) (regOne!5996 r!15766))))))

(declare-fun b!982950 () Bool)

(assert (=> b!982950 (= e!632197 e!632201)))

(declare-fun res!446035 () Bool)

(assert (=> b!982950 (=> (not res!446035) (not e!632201))))

(assert (=> b!982950 (= res!446035 call!63277)))

(assert (= (and d!288447 (not res!446033)) b!982942))

(assert (= (and b!982942 c!160747) b!982947))

(assert (= (and b!982942 (not c!160747)) b!982946))

(assert (= (and b!982947 res!446037) b!982945))

(assert (= (and b!982946 c!160748) b!982943))

(assert (= (and b!982946 (not c!160748)) b!982944))

(assert (= (and b!982943 res!446034) b!982948))

(assert (= (and b!982944 (not res!446036)) b!982950))

(assert (= (and b!982950 res!446035) b!982949))

(assert (= (or b!982948 b!982949) bm!63272))

(assert (= (or b!982943 b!982950) bm!63273))

(assert (= (or b!982945 bm!63272) bm!63271))

(declare-fun m!1180979 () Bool)

(assert (=> bm!63271 m!1180979))

(declare-fun m!1180983 () Bool)

(assert (=> b!982947 m!1180983))

(declare-fun m!1180985 () Bool)

(assert (=> bm!63273 m!1180985))

(assert (=> start!87136 d!288447))

(declare-fun d!288449 () Bool)

(declare-fun e!632218 () Bool)

(assert (=> d!288449 e!632218))

(declare-fun c!160757 () Bool)

(assert (=> d!288449 (= c!160757 (is-EmptyExpr!2742 (removeUselessConcat!351 r!15766)))))

(declare-fun lt!350247 () Bool)

(declare-fun e!632219 () Bool)

(assert (=> d!288449 (= lt!350247 e!632219)))

(declare-fun c!160755 () Bool)

(assert (=> d!288449 (= c!160755 (isEmpty!6283 s!10566))))

(assert (=> d!288449 (validRegex!1211 (removeUselessConcat!351 r!15766))))

(assert (=> d!288449 (= (matchR!1278 (removeUselessConcat!351 r!15766) s!10566) lt!350247)))

(declare-fun b!982979 () Bool)

(declare-fun call!63281 () Bool)

(assert (=> b!982979 (= e!632218 (= lt!350247 call!63281))))

(declare-fun b!982980 () Bool)

(declare-fun e!632220 () Bool)

(assert (=> b!982980 (= e!632220 (not lt!350247))))

(declare-fun b!982981 () Bool)

(declare-fun res!446056 () Bool)

(declare-fun e!632221 () Bool)

(assert (=> b!982981 (=> (not res!446056) (not e!632221))))

(declare-fun tail!1379 (List!9972) List!9972)

(assert (=> b!982981 (= res!446056 (isEmpty!6283 (tail!1379 s!10566)))))

(declare-fun b!982982 () Bool)

(declare-fun e!632222 () Bool)

(declare-fun e!632223 () Bool)

(assert (=> b!982982 (= e!632222 e!632223)))

(declare-fun res!446058 () Bool)

(assert (=> b!982982 (=> (not res!446058) (not e!632223))))

(assert (=> b!982982 (= res!446058 (not lt!350247))))

(declare-fun b!982983 () Bool)

(assert (=> b!982983 (= e!632218 e!632220)))

(declare-fun c!160756 () Bool)

(assert (=> b!982983 (= c!160756 (is-EmptyLang!2742 (removeUselessConcat!351 r!15766)))))

(declare-fun b!982984 () Bool)

(assert (=> b!982984 (= e!632219 (nullable!858 (removeUselessConcat!351 r!15766)))))

(declare-fun b!982985 () Bool)

(declare-fun derivativeStep!664 (Regex!2742 C!6054) Regex!2742)

(declare-fun head!1817 (List!9972) C!6054)

(assert (=> b!982985 (= e!632219 (matchR!1278 (derivativeStep!664 (removeUselessConcat!351 r!15766) (head!1817 s!10566)) (tail!1379 s!10566)))))

(declare-fun b!982986 () Bool)

(declare-fun res!446060 () Bool)

(assert (=> b!982986 (=> res!446060 e!632222)))

(assert (=> b!982986 (= res!446060 e!632221)))

(declare-fun res!446054 () Bool)

(assert (=> b!982986 (=> (not res!446054) (not e!632221))))

(assert (=> b!982986 (= res!446054 lt!350247)))

(declare-fun b!982987 () Bool)

(declare-fun e!632217 () Bool)

(assert (=> b!982987 (= e!632217 (not (= (head!1817 s!10566) (c!160723 (removeUselessConcat!351 r!15766)))))))

(declare-fun b!982988 () Bool)

(declare-fun res!446059 () Bool)

(assert (=> b!982988 (=> (not res!446059) (not e!632221))))

(assert (=> b!982988 (= res!446059 (not call!63281))))

(declare-fun bm!63276 () Bool)

(assert (=> bm!63276 (= call!63281 (isEmpty!6283 s!10566))))

(declare-fun b!982989 () Bool)

(declare-fun res!446061 () Bool)

(assert (=> b!982989 (=> res!446061 e!632222)))

(assert (=> b!982989 (= res!446061 (not (is-ElementMatch!2742 (removeUselessConcat!351 r!15766))))))

(assert (=> b!982989 (= e!632220 e!632222)))

(declare-fun b!982990 () Bool)

(declare-fun res!446057 () Bool)

(assert (=> b!982990 (=> res!446057 e!632217)))

(assert (=> b!982990 (= res!446057 (not (isEmpty!6283 (tail!1379 s!10566))))))

(declare-fun b!982991 () Bool)

(assert (=> b!982991 (= e!632223 e!632217)))

(declare-fun res!446055 () Bool)

(assert (=> b!982991 (=> res!446055 e!632217)))

(assert (=> b!982991 (= res!446055 call!63281)))

(declare-fun b!982992 () Bool)

(assert (=> b!982992 (= e!632221 (= (head!1817 s!10566) (c!160723 (removeUselessConcat!351 r!15766))))))

(assert (= (and d!288449 c!160755) b!982984))

(assert (= (and d!288449 (not c!160755)) b!982985))

(assert (= (and d!288449 c!160757) b!982979))

(assert (= (and d!288449 (not c!160757)) b!982983))

(assert (= (and b!982983 c!160756) b!982980))

(assert (= (and b!982983 (not c!160756)) b!982989))

(assert (= (and b!982989 (not res!446061)) b!982986))

(assert (= (and b!982986 res!446054) b!982988))

(assert (= (and b!982988 res!446059) b!982981))

(assert (= (and b!982981 res!446056) b!982992))

(assert (= (and b!982986 (not res!446060)) b!982982))

(assert (= (and b!982982 res!446058) b!982991))

(assert (= (and b!982991 (not res!446055)) b!982990))

(assert (= (and b!982990 (not res!446057)) b!982987))

(assert (= (or b!982979 b!982988 b!982991) bm!63276))

(declare-fun m!1180989 () Bool)

(assert (=> b!982981 m!1180989))

(assert (=> b!982981 m!1180989))

(declare-fun m!1180991 () Bool)

(assert (=> b!982981 m!1180991))

(assert (=> bm!63276 m!1180899))

(assert (=> d!288449 m!1180899))

(assert (=> d!288449 m!1180887))

(declare-fun m!1180993 () Bool)

(assert (=> d!288449 m!1180993))

(declare-fun m!1180995 () Bool)

(assert (=> b!982985 m!1180995))

(assert (=> b!982985 m!1180887))

(assert (=> b!982985 m!1180995))

(declare-fun m!1180997 () Bool)

(assert (=> b!982985 m!1180997))

(assert (=> b!982985 m!1180989))

(assert (=> b!982985 m!1180997))

(assert (=> b!982985 m!1180989))

(declare-fun m!1180999 () Bool)

(assert (=> b!982985 m!1180999))

(assert (=> b!982990 m!1180989))

(assert (=> b!982990 m!1180989))

(assert (=> b!982990 m!1180991))

(assert (=> b!982987 m!1180995))

(assert (=> b!982984 m!1180887))

(declare-fun m!1181001 () Bool)

(assert (=> b!982984 m!1181001))

(assert (=> b!982992 m!1180995))

(assert (=> b!982790 d!288449))

(declare-fun b!983043 () Bool)

(declare-fun e!632255 () Regex!2742)

(assert (=> b!983043 (= e!632255 r!15766)))

(declare-fun bm!63289 () Bool)

(declare-fun call!63298 () Regex!2742)

(declare-fun call!63297 () Regex!2742)

(assert (=> bm!63289 (= call!63298 call!63297)))

(declare-fun bm!63290 () Bool)

(declare-fun call!63295 () Regex!2742)

(assert (=> bm!63290 (= call!63295 call!63298)))

(declare-fun b!983044 () Bool)

(declare-fun e!632253 () Regex!2742)

(declare-fun call!63294 () Regex!2742)

(assert (=> b!983044 (= e!632253 (Concat!4575 call!63295 call!63294))))

(declare-fun b!983045 () Bool)

(declare-fun e!632250 () Regex!2742)

(assert (=> b!983045 (= e!632253 e!632250)))

(declare-fun c!160777 () Bool)

(assert (=> b!983045 (= c!160777 (is-Union!2742 r!15766))))

(declare-fun b!983046 () Bool)

(declare-fun call!63296 () Regex!2742)

(assert (=> b!983046 (= e!632250 (Union!2742 call!63295 call!63296))))

(declare-fun d!288453 () Bool)

(declare-fun e!632252 () Bool)

(assert (=> d!288453 e!632252))

(declare-fun res!446080 () Bool)

(assert (=> d!288453 (=> (not res!446080) (not e!632252))))

(declare-fun lt!350252 () Regex!2742)

(assert (=> d!288453 (= res!446080 (validRegex!1211 lt!350252))))

(declare-fun e!632251 () Regex!2742)

(assert (=> d!288453 (= lt!350252 e!632251)))

(declare-fun c!160778 () Bool)

(assert (=> d!288453 (= c!160778 (and (is-Concat!4575 r!15766) (is-EmptyExpr!2742 (regOne!5996 r!15766))))))

(assert (=> d!288453 (validRegex!1211 r!15766)))

(assert (=> d!288453 (= (removeUselessConcat!351 r!15766) lt!350252)))

(declare-fun c!160774 () Bool)

(declare-fun bm!63291 () Bool)

(assert (=> bm!63291 (= call!63294 (removeUselessConcat!351 (ite c!160774 (regTwo!5996 r!15766) (ite c!160777 (regTwo!5997 r!15766) (reg!3071 r!15766)))))))

(declare-fun bm!63292 () Bool)

(assert (=> bm!63292 (= call!63296 call!63294)))

(declare-fun c!160775 () Bool)

(declare-fun bm!63293 () Bool)

(assert (=> bm!63293 (= call!63297 (removeUselessConcat!351 (ite c!160778 (regTwo!5996 r!15766) (ite (or c!160775 c!160774) (regOne!5996 r!15766) (regOne!5997 r!15766)))))))

(declare-fun b!983047 () Bool)

(declare-fun c!160776 () Bool)

(assert (=> b!983047 (= c!160776 (is-Star!2742 r!15766))))

(assert (=> b!983047 (= e!632250 e!632255)))

(declare-fun b!983048 () Bool)

(assert (=> b!983048 (= e!632255 (Star!2742 call!63296))))

(declare-fun b!983049 () Bool)

(assert (=> b!983049 (= e!632251 call!63297)))

(declare-fun b!983050 () Bool)

(declare-fun e!632254 () Regex!2742)

(assert (=> b!983050 (= e!632254 call!63298)))

(declare-fun b!983051 () Bool)

(assert (=> b!983051 (= e!632251 e!632254)))

(assert (=> b!983051 (= c!160775 (and (is-Concat!4575 r!15766) (is-EmptyExpr!2742 (regTwo!5996 r!15766))))))

(declare-fun b!983052 () Bool)

(assert (=> b!983052 (= e!632252 (= (nullable!858 lt!350252) (nullable!858 r!15766)))))

(declare-fun b!983053 () Bool)

(assert (=> b!983053 (= c!160774 (is-Concat!4575 r!15766))))

(assert (=> b!983053 (= e!632254 e!632253)))

(assert (= (and d!288453 c!160778) b!983049))

(assert (= (and d!288453 (not c!160778)) b!983051))

(assert (= (and b!983051 c!160775) b!983050))

(assert (= (and b!983051 (not c!160775)) b!983053))

(assert (= (and b!983053 c!160774) b!983044))

(assert (= (and b!983053 (not c!160774)) b!983045))

(assert (= (and b!983045 c!160777) b!983046))

(assert (= (and b!983045 (not c!160777)) b!983047))

(assert (= (and b!983047 c!160776) b!983048))

(assert (= (and b!983047 (not c!160776)) b!983043))

(assert (= (or b!983046 b!983048) bm!63292))

(assert (= (or b!983044 bm!63292) bm!63291))

(assert (= (or b!983044 b!983046) bm!63290))

(assert (= (or b!983050 bm!63290) bm!63289))

(assert (= (or b!983049 bm!63289) bm!63293))

(assert (= (and d!288453 res!446080) b!983052))

(declare-fun m!1181003 () Bool)

(assert (=> d!288453 m!1181003))

(assert (=> d!288453 m!1180885))

(declare-fun m!1181005 () Bool)

(assert (=> bm!63291 m!1181005))

(declare-fun m!1181007 () Bool)

(assert (=> bm!63293 m!1181007))

(declare-fun m!1181009 () Bool)

(assert (=> b!983052 m!1181009))

(declare-fun m!1181011 () Bool)

(assert (=> b!983052 m!1181011))

(assert (=> b!982790 d!288453))

(declare-fun bs!244006 () Bool)

(declare-fun b!983110 () Bool)

(assert (= bs!244006 (and b!983110 b!982793)))

(declare-fun lambda!35060 () Int)

(assert (=> bs!244006 (not (= lambda!35060 lambda!35031))))

(declare-fun bs!244007 () Bool)

(assert (= bs!244007 (and b!983110 d!288445)))

(assert (=> bs!244007 (not (= lambda!35060 lambda!35053))))

(assert (=> bs!244006 (not (= lambda!35060 lambda!35032))))

(declare-fun bs!244008 () Bool)

(assert (= bs!244008 (and b!983110 d!288439)))

(assert (=> bs!244008 (not (= lambda!35060 lambda!35043))))

(assert (=> bs!244007 (not (= lambda!35060 lambda!35052))))

(assert (=> b!983110 true))

(assert (=> b!983110 true))

(declare-fun bs!244009 () Bool)

(declare-fun b!983103 () Bool)

(assert (= bs!244009 (and b!983103 b!982793)))

(declare-fun lambda!35061 () Int)

(assert (=> bs!244009 (not (= lambda!35061 lambda!35031))))

(declare-fun bs!244010 () Bool)

(assert (= bs!244010 (and b!983103 d!288445)))

(assert (=> bs!244010 (= lambda!35061 lambda!35053)))

(declare-fun bs!244011 () Bool)

(assert (= bs!244011 (and b!983103 d!288439)))

(assert (=> bs!244011 (not (= lambda!35061 lambda!35043))))

(assert (=> bs!244010 (not (= lambda!35061 lambda!35052))))

(declare-fun bs!244012 () Bool)

(assert (= bs!244012 (and b!983103 b!983110)))

(assert (=> bs!244012 (not (= lambda!35061 lambda!35060))))

(assert (=> bs!244009 (= lambda!35061 lambda!35032)))

(assert (=> b!983103 true))

(assert (=> b!983103 true))

(declare-fun b!983100 () Bool)

(declare-fun e!632284 () Bool)

(assert (=> b!983100 (= e!632284 (matchRSpec!541 (regTwo!5997 r!15766) s!10566))))

(declare-fun b!983101 () Bool)

(declare-fun e!632283 () Bool)

(declare-fun e!632286 () Bool)

(assert (=> b!983101 (= e!632283 e!632286)))

(declare-fun c!160791 () Bool)

(assert (=> b!983101 (= c!160791 (is-Star!2742 r!15766))))

(declare-fun b!983102 () Bool)

(declare-fun e!632281 () Bool)

(declare-fun e!632285 () Bool)

(assert (=> b!983102 (= e!632281 e!632285)))

(declare-fun res!446106 () Bool)

(assert (=> b!983102 (= res!446106 (not (is-EmptyLang!2742 r!15766)))))

(assert (=> b!983102 (=> (not res!446106) (not e!632285))))

(declare-fun call!63305 () Bool)

(assert (=> b!983103 (= e!632286 call!63305)))

(declare-fun bm!63299 () Bool)

(declare-fun call!63304 () Bool)

(assert (=> bm!63299 (= call!63304 (isEmpty!6283 s!10566))))

(declare-fun b!983104 () Bool)

(assert (=> b!983104 (= e!632283 e!632284)))

(declare-fun res!446105 () Bool)

(assert (=> b!983104 (= res!446105 (matchRSpec!541 (regOne!5997 r!15766) s!10566))))

(assert (=> b!983104 (=> res!446105 e!632284)))

(declare-fun b!983105 () Bool)

(declare-fun e!632282 () Bool)

(assert (=> b!983105 (= e!632282 (= s!10566 (Cons!9956 (c!160723 r!15766) Nil!9956)))))

(declare-fun b!983106 () Bool)

(declare-fun c!160792 () Bool)

(assert (=> b!983106 (= c!160792 (is-Union!2742 r!15766))))

(assert (=> b!983106 (= e!632282 e!632283)))

(declare-fun b!983107 () Bool)

(assert (=> b!983107 (= e!632281 call!63304)))

(declare-fun d!288455 () Bool)

(declare-fun c!160790 () Bool)

(assert (=> d!288455 (= c!160790 (is-EmptyExpr!2742 r!15766))))

(assert (=> d!288455 (= (matchRSpec!541 r!15766 s!10566) e!632281)))

(declare-fun bm!63300 () Bool)

(assert (=> bm!63300 (= call!63305 (Exists!479 (ite c!160791 lambda!35060 lambda!35061)))))

(declare-fun b!983108 () Bool)

(declare-fun res!446107 () Bool)

(declare-fun e!632287 () Bool)

(assert (=> b!983108 (=> res!446107 e!632287)))

(assert (=> b!983108 (= res!446107 call!63304)))

(assert (=> b!983108 (= e!632286 e!632287)))

(declare-fun b!983109 () Bool)

(declare-fun c!160793 () Bool)

(assert (=> b!983109 (= c!160793 (is-ElementMatch!2742 r!15766))))

(assert (=> b!983109 (= e!632285 e!632282)))

(assert (=> b!983110 (= e!632287 call!63305)))

(assert (= (and d!288455 c!160790) b!983107))

(assert (= (and d!288455 (not c!160790)) b!983102))

(assert (= (and b!983102 res!446106) b!983109))

(assert (= (and b!983109 c!160793) b!983105))

(assert (= (and b!983109 (not c!160793)) b!983106))

(assert (= (and b!983106 c!160792) b!983104))

(assert (= (and b!983106 (not c!160792)) b!983101))

(assert (= (and b!983104 (not res!446105)) b!983100))

(assert (= (and b!983101 c!160791) b!983108))

(assert (= (and b!983101 (not c!160791)) b!983103))

(assert (= (and b!983108 (not res!446107)) b!983110))

(assert (= (or b!983110 b!983103) bm!63300))

(assert (= (or b!983107 b!983108) bm!63299))

(declare-fun m!1181027 () Bool)

(assert (=> b!983100 m!1181027))

(assert (=> bm!63299 m!1180899))

(declare-fun m!1181029 () Bool)

(assert (=> b!983104 m!1181029))

(declare-fun m!1181031 () Bool)

(assert (=> bm!63300 m!1181031))

(assert (=> b!982795 d!288455))

(declare-fun d!288461 () Bool)

(declare-fun e!632289 () Bool)

(assert (=> d!288461 e!632289))

(declare-fun c!160796 () Bool)

(assert (=> d!288461 (= c!160796 (is-EmptyExpr!2742 r!15766))))

(declare-fun lt!350257 () Bool)

(declare-fun e!632290 () Bool)

(assert (=> d!288461 (= lt!350257 e!632290)))

(declare-fun c!160794 () Bool)

(assert (=> d!288461 (= c!160794 (isEmpty!6283 s!10566))))

(assert (=> d!288461 (validRegex!1211 r!15766)))

(assert (=> d!288461 (= (matchR!1278 r!15766 s!10566) lt!350257)))

(declare-fun b!983111 () Bool)

(declare-fun call!63306 () Bool)

(assert (=> b!983111 (= e!632289 (= lt!350257 call!63306))))

(declare-fun b!983112 () Bool)

(declare-fun e!632291 () Bool)

(assert (=> b!983112 (= e!632291 (not lt!350257))))

(declare-fun b!983113 () Bool)

(declare-fun res!446110 () Bool)

(declare-fun e!632292 () Bool)

(assert (=> b!983113 (=> (not res!446110) (not e!632292))))

(assert (=> b!983113 (= res!446110 (isEmpty!6283 (tail!1379 s!10566)))))

(declare-fun b!983114 () Bool)

(declare-fun e!632293 () Bool)

(declare-fun e!632294 () Bool)

(assert (=> b!983114 (= e!632293 e!632294)))

(declare-fun res!446112 () Bool)

(assert (=> b!983114 (=> (not res!446112) (not e!632294))))

(assert (=> b!983114 (= res!446112 (not lt!350257))))

(declare-fun b!983115 () Bool)

(assert (=> b!983115 (= e!632289 e!632291)))

(declare-fun c!160795 () Bool)

(assert (=> b!983115 (= c!160795 (is-EmptyLang!2742 r!15766))))

(declare-fun b!983116 () Bool)

(assert (=> b!983116 (= e!632290 (nullable!858 r!15766))))

(declare-fun b!983117 () Bool)

(assert (=> b!983117 (= e!632290 (matchR!1278 (derivativeStep!664 r!15766 (head!1817 s!10566)) (tail!1379 s!10566)))))

(declare-fun b!983118 () Bool)

(declare-fun res!446114 () Bool)

(assert (=> b!983118 (=> res!446114 e!632293)))

(assert (=> b!983118 (= res!446114 e!632292)))

(declare-fun res!446108 () Bool)

(assert (=> b!983118 (=> (not res!446108) (not e!632292))))

(assert (=> b!983118 (= res!446108 lt!350257)))

(declare-fun b!983119 () Bool)

(declare-fun e!632288 () Bool)

(assert (=> b!983119 (= e!632288 (not (= (head!1817 s!10566) (c!160723 r!15766))))))

(declare-fun b!983120 () Bool)

(declare-fun res!446113 () Bool)

(assert (=> b!983120 (=> (not res!446113) (not e!632292))))

(assert (=> b!983120 (= res!446113 (not call!63306))))

(declare-fun bm!63301 () Bool)

(assert (=> bm!63301 (= call!63306 (isEmpty!6283 s!10566))))

(declare-fun b!983121 () Bool)

(declare-fun res!446115 () Bool)

(assert (=> b!983121 (=> res!446115 e!632293)))

(assert (=> b!983121 (= res!446115 (not (is-ElementMatch!2742 r!15766)))))

(assert (=> b!983121 (= e!632291 e!632293)))

(declare-fun b!983122 () Bool)

(declare-fun res!446111 () Bool)

(assert (=> b!983122 (=> res!446111 e!632288)))

(assert (=> b!983122 (= res!446111 (not (isEmpty!6283 (tail!1379 s!10566))))))

(declare-fun b!983123 () Bool)

(assert (=> b!983123 (= e!632294 e!632288)))

(declare-fun res!446109 () Bool)

(assert (=> b!983123 (=> res!446109 e!632288)))

(assert (=> b!983123 (= res!446109 call!63306)))

(declare-fun b!983124 () Bool)

(assert (=> b!983124 (= e!632292 (= (head!1817 s!10566) (c!160723 r!15766)))))

(assert (= (and d!288461 c!160794) b!983116))

(assert (= (and d!288461 (not c!160794)) b!983117))

(assert (= (and d!288461 c!160796) b!983111))

(assert (= (and d!288461 (not c!160796)) b!983115))

(assert (= (and b!983115 c!160795) b!983112))

(assert (= (and b!983115 (not c!160795)) b!983121))

(assert (= (and b!983121 (not res!446115)) b!983118))

(assert (= (and b!983118 res!446108) b!983120))

(assert (= (and b!983120 res!446113) b!983113))

(assert (= (and b!983113 res!446110) b!983124))

(assert (= (and b!983118 (not res!446114)) b!983114))

(assert (= (and b!983114 res!446112) b!983123))

(assert (= (and b!983123 (not res!446109)) b!983122))

(assert (= (and b!983122 (not res!446111)) b!983119))

(assert (= (or b!983111 b!983120 b!983123) bm!63301))

(assert (=> b!983113 m!1180989))

(assert (=> b!983113 m!1180989))

(assert (=> b!983113 m!1180991))

(assert (=> bm!63301 m!1180899))

(assert (=> d!288461 m!1180899))

(assert (=> d!288461 m!1180885))

(assert (=> b!983117 m!1180995))

(assert (=> b!983117 m!1180995))

(declare-fun m!1181033 () Bool)

(assert (=> b!983117 m!1181033))

(assert (=> b!983117 m!1180989))

(assert (=> b!983117 m!1181033))

(assert (=> b!983117 m!1180989))

(declare-fun m!1181035 () Bool)

(assert (=> b!983117 m!1181035))

(assert (=> b!983122 m!1180989))

(assert (=> b!983122 m!1180989))

(assert (=> b!983122 m!1180991))

(assert (=> b!983119 m!1180995))

(assert (=> b!983116 m!1181011))

(assert (=> b!983124 m!1180995))

(assert (=> b!982795 d!288461))

(declare-fun d!288463 () Bool)

(assert (=> d!288463 (= (matchR!1278 r!15766 s!10566) (matchRSpec!541 r!15766 s!10566))))

(declare-fun lt!350260 () Unit!15143)

(declare-fun choose!6237 (Regex!2742 List!9972) Unit!15143)

(assert (=> d!288463 (= lt!350260 (choose!6237 r!15766 s!10566))))

(assert (=> d!288463 (validRegex!1211 r!15766)))

(assert (=> d!288463 (= (mainMatchTheorem!541 r!15766 s!10566) lt!350260)))

(declare-fun bs!244013 () Bool)

(assert (= bs!244013 d!288463))

(assert (=> bs!244013 m!1180907))

(assert (=> bs!244013 m!1180905))

(declare-fun m!1181037 () Bool)

(assert (=> bs!244013 m!1181037))

(assert (=> bs!244013 m!1180885))

(assert (=> b!982795 d!288463))

(declare-fun b!983147 () Bool)

(declare-fun e!632311 () Bool)

(declare-fun tp!300243 () Bool)

(assert (=> b!983147 (= e!632311 (and tp_is_empty!5127 tp!300243))))

(assert (=> b!982794 (= tp!300219 e!632311)))

(assert (= (and b!982794 (is-Cons!9956 (t!101018 s!10566))) b!983147))

(declare-fun b!983160 () Bool)

(declare-fun e!632314 () Bool)

(declare-fun tp!300257 () Bool)

(assert (=> b!983160 (= e!632314 tp!300257)))

(declare-fun b!983158 () Bool)

(assert (=> b!983158 (= e!632314 tp_is_empty!5127)))

(declare-fun b!983161 () Bool)

(declare-fun tp!300254 () Bool)

(declare-fun tp!300258 () Bool)

(assert (=> b!983161 (= e!632314 (and tp!300254 tp!300258))))

(assert (=> b!982791 (= tp!300217 e!632314)))

(declare-fun b!983159 () Bool)

(declare-fun tp!300256 () Bool)

(declare-fun tp!300255 () Bool)

(assert (=> b!983159 (= e!632314 (and tp!300256 tp!300255))))

(assert (= (and b!982791 (is-ElementMatch!2742 (reg!3071 r!15766))) b!983158))

(assert (= (and b!982791 (is-Concat!4575 (reg!3071 r!15766))) b!983159))

(assert (= (and b!982791 (is-Star!2742 (reg!3071 r!15766))) b!983160))

(assert (= (and b!982791 (is-Union!2742 (reg!3071 r!15766))) b!983161))

(declare-fun b!983164 () Bool)

(declare-fun e!632315 () Bool)

(declare-fun tp!300262 () Bool)

(assert (=> b!983164 (= e!632315 tp!300262)))

(declare-fun b!983162 () Bool)

(assert (=> b!983162 (= e!632315 tp_is_empty!5127)))

(declare-fun b!983165 () Bool)

(declare-fun tp!300259 () Bool)

(declare-fun tp!300263 () Bool)

(assert (=> b!983165 (= e!632315 (and tp!300259 tp!300263))))

(assert (=> b!982792 (= tp!300218 e!632315)))

(declare-fun b!983163 () Bool)

(declare-fun tp!300261 () Bool)

(declare-fun tp!300260 () Bool)

(assert (=> b!983163 (= e!632315 (and tp!300261 tp!300260))))

(assert (= (and b!982792 (is-ElementMatch!2742 (regOne!5997 r!15766))) b!983162))

(assert (= (and b!982792 (is-Concat!4575 (regOne!5997 r!15766))) b!983163))

(assert (= (and b!982792 (is-Star!2742 (regOne!5997 r!15766))) b!983164))

(assert (= (and b!982792 (is-Union!2742 (regOne!5997 r!15766))) b!983165))

(declare-fun b!983168 () Bool)

(declare-fun e!632316 () Bool)

(declare-fun tp!300267 () Bool)

(assert (=> b!983168 (= e!632316 tp!300267)))

(declare-fun b!983166 () Bool)

(assert (=> b!983166 (= e!632316 tp_is_empty!5127)))

(declare-fun b!983169 () Bool)

(declare-fun tp!300264 () Bool)

(declare-fun tp!300268 () Bool)

(assert (=> b!983169 (= e!632316 (and tp!300264 tp!300268))))

(assert (=> b!982792 (= tp!300222 e!632316)))

(declare-fun b!983167 () Bool)

(declare-fun tp!300266 () Bool)

(declare-fun tp!300265 () Bool)

(assert (=> b!983167 (= e!632316 (and tp!300266 tp!300265))))

(assert (= (and b!982792 (is-ElementMatch!2742 (regTwo!5997 r!15766))) b!983166))

(assert (= (and b!982792 (is-Concat!4575 (regTwo!5997 r!15766))) b!983167))

(assert (= (and b!982792 (is-Star!2742 (regTwo!5997 r!15766))) b!983168))

(assert (= (and b!982792 (is-Union!2742 (regTwo!5997 r!15766))) b!983169))

(declare-fun b!983172 () Bool)

(declare-fun e!632317 () Bool)

(declare-fun tp!300272 () Bool)

(assert (=> b!983172 (= e!632317 tp!300272)))

(declare-fun b!983170 () Bool)

(assert (=> b!983170 (= e!632317 tp_is_empty!5127)))

(declare-fun b!983173 () Bool)

(declare-fun tp!300269 () Bool)

(declare-fun tp!300273 () Bool)

(assert (=> b!983173 (= e!632317 (and tp!300269 tp!300273))))

(assert (=> b!982797 (= tp!300221 e!632317)))

(declare-fun b!983171 () Bool)

(declare-fun tp!300271 () Bool)

(declare-fun tp!300270 () Bool)

(assert (=> b!983171 (= e!632317 (and tp!300271 tp!300270))))

(assert (= (and b!982797 (is-ElementMatch!2742 (regOne!5996 r!15766))) b!983170))

(assert (= (and b!982797 (is-Concat!4575 (regOne!5996 r!15766))) b!983171))

(assert (= (and b!982797 (is-Star!2742 (regOne!5996 r!15766))) b!983172))

(assert (= (and b!982797 (is-Union!2742 (regOne!5996 r!15766))) b!983173))

(declare-fun b!983176 () Bool)

(declare-fun e!632318 () Bool)

(declare-fun tp!300277 () Bool)

(assert (=> b!983176 (= e!632318 tp!300277)))

(declare-fun b!983174 () Bool)

(assert (=> b!983174 (= e!632318 tp_is_empty!5127)))

(declare-fun b!983177 () Bool)

(declare-fun tp!300274 () Bool)

(declare-fun tp!300278 () Bool)

(assert (=> b!983177 (= e!632318 (and tp!300274 tp!300278))))

(assert (=> b!982797 (= tp!300220 e!632318)))

(declare-fun b!983175 () Bool)

(declare-fun tp!300276 () Bool)

(declare-fun tp!300275 () Bool)

(assert (=> b!983175 (= e!632318 (and tp!300276 tp!300275))))

(assert (= (and b!982797 (is-ElementMatch!2742 (regTwo!5996 r!15766))) b!983174))

(assert (= (and b!982797 (is-Concat!4575 (regTwo!5996 r!15766))) b!983175))

(assert (= (and b!982797 (is-Star!2742 (regTwo!5996 r!15766))) b!983176))

(assert (= (and b!982797 (is-Union!2742 (regTwo!5996 r!15766))) b!983177))

(push 1)

(assert (not d!288445))

(assert (not b!983169))

(assert (not b!983100))

(assert (not b!982987))

(assert (not bm!63299))

(assert tp_is_empty!5127)

(assert (not b!983172))

(assert (not b!983167))

(assert (not b!983164))

(assert (not d!288437))

(assert (not b!983119))

(assert (not b!983122))

(assert (not b!982893))

(assert (not b!982981))

(assert (not b!982985))

(assert (not bm!63273))

(assert (not b!982896))

(assert (not d!288443))

(assert (not b!983113))

(assert (not d!288463))

(assert (not d!288433))

(assert (not b!983176))

(assert (not bm!63276))

(assert (not b!983124))

(assert (not bm!63291))

(assert (not b!982898))

(assert (not b!983116))

(assert (not bm!63301))

(assert (not d!288453))

(assert (not b!982984))

(assert (not b!983161))

(assert (not b!983177))

(assert (not b!983165))

(assert (not d!288449))

(assert (not b!982899))

(assert (not bm!63271))

(assert (not d!288461))

(assert (not b!983160))

(assert (not b!983104))

(assert (not b!983052))

(assert (not b!982992))

(assert (not b!983163))

(assert (not b!983168))

(assert (not b!982947))

(assert (not b!982897))

(assert (not bm!63293))

(assert (not bm!63300))

(assert (not b!982894))

(assert (not b!982990))

(assert (not b!983117))

(assert (not b!983171))

(assert (not d!288435))

(assert (not b!983175))

(assert (not b!983173))

(assert (not d!288439))

(assert (not b!983147))

(assert (not b!983159))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

