; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!287398 () Bool)

(assert start!287398)

(declare-fun b!2970800 () Bool)

(declare-fun e!1869214 () Bool)

(declare-fun tp!947280 () Bool)

(declare-fun tp!947279 () Bool)

(assert (=> b!2970800 (= e!1869214 (and tp!947280 tp!947279))))

(declare-fun res!1225112 () Bool)

(declare-fun e!1869211 () Bool)

(assert (=> start!287398 (=> (not res!1225112) (not e!1869211))))

(declare-datatypes ((C!18710 0))(
  ( (C!18711 (val!11391 Int)) )
))
(declare-datatypes ((Regex!9262 0))(
  ( (ElementMatch!9262 (c!487440 C!18710)) (Concat!14583 (regOne!19036 Regex!9262) (regTwo!19036 Regex!9262)) (EmptyExpr!9262) (Star!9262 (reg!9591 Regex!9262)) (EmptyLang!9262) (Union!9262 (regOne!19037 Regex!9262) (regTwo!19037 Regex!9262)) )
))
(declare-fun r!17423 () Regex!9262)

(declare-fun validRegex!3995 (Regex!9262) Bool)

(assert (=> start!287398 (= res!1225112 (validRegex!3995 r!17423))))

(assert (=> start!287398 e!1869211))

(assert (=> start!287398 e!1869214))

(declare-fun e!1869213 () Bool)

(assert (=> start!287398 e!1869213))

(declare-fun b!2970801 () Bool)

(declare-fun tp_is_empty!16087 () Bool)

(declare-fun tp!947283 () Bool)

(assert (=> b!2970801 (= e!1869213 (and tp_is_empty!16087 tp!947283))))

(declare-fun b!2970802 () Bool)

(declare-fun e!1869212 () Bool)

(assert (=> b!2970802 (= e!1869212 (validRegex!3995 (reg!9591 r!17423)))))

(declare-fun b!2970803 () Bool)

(declare-fun res!1225113 () Bool)

(assert (=> b!2970803 (=> res!1225113 e!1869212)))

(declare-fun lt!1036122 () Regex!9262)

(declare-datatypes ((List!35127 0))(
  ( (Nil!35003) (Cons!35003 (h!40423 C!18710) (t!234192 List!35127)) )
))
(declare-fun s!11993 () List!35127)

(declare-fun matchR!4144 (Regex!9262 List!35127) Bool)

(assert (=> b!2970803 (= res!1225113 (not (matchR!4144 (Star!9262 lt!1036122) s!11993)))))

(declare-fun b!2970804 () Bool)

(declare-fun e!1869210 () Bool)

(assert (=> b!2970804 (= e!1869211 (not e!1869210))))

(declare-fun res!1225111 () Bool)

(assert (=> b!2970804 (=> res!1225111 e!1869210)))

(declare-fun lt!1036121 () Bool)

(assert (=> b!2970804 (= res!1225111 (or lt!1036121 (is-Concat!14583 r!17423) (is-Union!9262 r!17423) (not (is-Star!9262 r!17423))))))

(declare-fun matchRSpec!1399 (Regex!9262 List!35127) Bool)

(assert (=> b!2970804 (= lt!1036121 (matchRSpec!1399 r!17423 s!11993))))

(assert (=> b!2970804 (= lt!1036121 (matchR!4144 r!17423 s!11993))))

(declare-datatypes ((Unit!48903 0))(
  ( (Unit!48904) )
))
(declare-fun lt!1036123 () Unit!48903)

(declare-fun mainMatchTheorem!1399 (Regex!9262 List!35127) Unit!48903)

(assert (=> b!2970804 (= lt!1036123 (mainMatchTheorem!1399 r!17423 s!11993))))

(declare-fun b!2970805 () Bool)

(declare-fun tp!947282 () Bool)

(assert (=> b!2970805 (= e!1869214 tp!947282)))

(declare-fun b!2970806 () Bool)

(declare-fun tp!947278 () Bool)

(declare-fun tp!947281 () Bool)

(assert (=> b!2970806 (= e!1869214 (and tp!947278 tp!947281))))

(declare-fun b!2970807 () Bool)

(assert (=> b!2970807 (= e!1869214 tp_is_empty!16087)))

(declare-fun b!2970808 () Bool)

(assert (=> b!2970808 (= e!1869210 e!1869212)))

(declare-fun res!1225114 () Bool)

(assert (=> b!2970808 (=> res!1225114 e!1869212)))

(declare-fun isEmptyLang!376 (Regex!9262) Bool)

(assert (=> b!2970808 (= res!1225114 (isEmptyLang!376 lt!1036122))))

(declare-fun simplify!263 (Regex!9262) Regex!9262)

(assert (=> b!2970808 (= lt!1036122 (simplify!263 (reg!9591 r!17423)))))

(assert (= (and start!287398 res!1225112) b!2970804))

(assert (= (and b!2970804 (not res!1225111)) b!2970808))

(assert (= (and b!2970808 (not res!1225114)) b!2970803))

(assert (= (and b!2970803 (not res!1225113)) b!2970802))

(assert (= (and start!287398 (is-ElementMatch!9262 r!17423)) b!2970807))

(assert (= (and start!287398 (is-Concat!14583 r!17423)) b!2970800))

(assert (= (and start!287398 (is-Star!9262 r!17423)) b!2970805))

(assert (= (and start!287398 (is-Union!9262 r!17423)) b!2970806))

(assert (= (and start!287398 (is-Cons!35003 s!11993)) b!2970801))

(declare-fun m!3338121 () Bool)

(assert (=> start!287398 m!3338121))

(declare-fun m!3338123 () Bool)

(assert (=> b!2970802 m!3338123))

(declare-fun m!3338125 () Bool)

(assert (=> b!2970808 m!3338125))

(declare-fun m!3338127 () Bool)

(assert (=> b!2970808 m!3338127))

(declare-fun m!3338129 () Bool)

(assert (=> b!2970804 m!3338129))

(declare-fun m!3338131 () Bool)

(assert (=> b!2970804 m!3338131))

(declare-fun m!3338133 () Bool)

(assert (=> b!2970804 m!3338133))

(declare-fun m!3338135 () Bool)

(assert (=> b!2970803 m!3338135))

(push 1)

(assert (not b!2970806))

(assert (not b!2970800))

(assert (not b!2970804))

(assert (not start!287398))

(assert (not b!2970805))

(assert (not b!2970803))

(assert (not b!2970801))

(assert tp_is_empty!16087)

(assert (not b!2970802))

(assert (not b!2970808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!197773 () Bool)

(declare-fun c!487447 () Bool)

(declare-fun c!487446 () Bool)

(declare-fun bm!197766 () Bool)

(assert (=> bm!197766 (= call!197773 (validRegex!3995 (ite c!487447 (reg!9591 (reg!9591 r!17423)) (ite c!487446 (regTwo!19037 (reg!9591 r!17423)) (regOne!19036 (reg!9591 r!17423))))))))

(declare-fun b!2970854 () Bool)

(declare-fun e!1869246 () Bool)

(declare-fun e!1869247 () Bool)

(assert (=> b!2970854 (= e!1869246 e!1869247)))

(assert (=> b!2970854 (= c!487447 (is-Star!9262 (reg!9591 r!17423)))))

(declare-fun b!2970855 () Bool)

(declare-fun res!1225139 () Bool)

(declare-fun e!1869250 () Bool)

(assert (=> b!2970855 (=> (not res!1225139) (not e!1869250))))

(declare-fun call!197771 () Bool)

(assert (=> b!2970855 (= res!1225139 call!197771)))

(declare-fun e!1869244 () Bool)

(assert (=> b!2970855 (= e!1869244 e!1869250)))

(declare-fun b!2970856 () Bool)

(declare-fun e!1869249 () Bool)

(assert (=> b!2970856 (= e!1869247 e!1869249)))

(declare-fun res!1225137 () Bool)

(declare-fun nullable!2963 (Regex!9262) Bool)

(assert (=> b!2970856 (= res!1225137 (not (nullable!2963 (reg!9591 (reg!9591 r!17423)))))))

(assert (=> b!2970856 (=> (not res!1225137) (not e!1869249))))

(declare-fun d!842655 () Bool)

(declare-fun res!1225140 () Bool)

(assert (=> d!842655 (=> res!1225140 e!1869246)))

(assert (=> d!842655 (= res!1225140 (is-ElementMatch!9262 (reg!9591 r!17423)))))

(assert (=> d!842655 (= (validRegex!3995 (reg!9591 r!17423)) e!1869246)))

(declare-fun b!2970857 () Bool)

(declare-fun e!1869248 () Bool)

(assert (=> b!2970857 (= e!1869248 call!197771)))

(declare-fun bm!197767 () Bool)

(declare-fun call!197772 () Bool)

(assert (=> bm!197767 (= call!197772 call!197773)))

(declare-fun bm!197768 () Bool)

(assert (=> bm!197768 (= call!197771 (validRegex!3995 (ite c!487446 (regOne!19037 (reg!9591 r!17423)) (regTwo!19036 (reg!9591 r!17423)))))))

(declare-fun b!2970858 () Bool)

(assert (=> b!2970858 (= e!1869247 e!1869244)))

(assert (=> b!2970858 (= c!487446 (is-Union!9262 (reg!9591 r!17423)))))

(declare-fun b!2970859 () Bool)

(assert (=> b!2970859 (= e!1869249 call!197773)))

(declare-fun b!2970860 () Bool)

(declare-fun e!1869245 () Bool)

(assert (=> b!2970860 (= e!1869245 e!1869248)))

(declare-fun res!1225138 () Bool)

(assert (=> b!2970860 (=> (not res!1225138) (not e!1869248))))

(assert (=> b!2970860 (= res!1225138 call!197772)))

(declare-fun b!2970861 () Bool)

(assert (=> b!2970861 (= e!1869250 call!197772)))

(declare-fun b!2970862 () Bool)

(declare-fun res!1225141 () Bool)

(assert (=> b!2970862 (=> res!1225141 e!1869245)))

(assert (=> b!2970862 (= res!1225141 (not (is-Concat!14583 (reg!9591 r!17423))))))

(assert (=> b!2970862 (= e!1869244 e!1869245)))

(assert (= (and d!842655 (not res!1225140)) b!2970854))

(assert (= (and b!2970854 c!487447) b!2970856))

(assert (= (and b!2970854 (not c!487447)) b!2970858))

(assert (= (and b!2970856 res!1225137) b!2970859))

(assert (= (and b!2970858 c!487446) b!2970855))

(assert (= (and b!2970858 (not c!487446)) b!2970862))

(assert (= (and b!2970855 res!1225139) b!2970861))

(assert (= (and b!2970862 (not res!1225141)) b!2970860))

(assert (= (and b!2970860 res!1225138) b!2970857))

(assert (= (or b!2970855 b!2970857) bm!197768))

(assert (= (or b!2970861 b!2970860) bm!197767))

(assert (= (or b!2970859 bm!197767) bm!197766))

(declare-fun m!3338153 () Bool)

(assert (=> bm!197766 m!3338153))

(declare-fun m!3338155 () Bool)

(assert (=> b!2970856 m!3338155))

(declare-fun m!3338157 () Bool)

(assert (=> bm!197768 m!3338157))

(assert (=> b!2970802 d!842655))

(declare-fun d!842659 () Bool)

(assert (=> d!842659 (= (isEmptyLang!376 lt!1036122) (is-EmptyLang!9262 lt!1036122))))

(assert (=> b!2970808 d!842659))

(declare-fun bm!197792 () Bool)

(declare-fun call!197797 () Regex!9262)

(declare-fun c!487478 () Bool)

(assert (=> bm!197792 (= call!197797 (simplify!263 (ite c!487478 (regOne!19037 (reg!9591 r!17423)) (regTwo!19036 (reg!9591 r!17423)))))))

(declare-fun b!2970940 () Bool)

(declare-fun e!1869301 () Regex!9262)

(declare-fun lt!1036148 () Regex!9262)

(assert (=> b!2970940 (= e!1869301 lt!1036148)))

(declare-fun b!2970941 () Bool)

(declare-fun e!1869310 () Regex!9262)

(assert (=> b!2970941 (= e!1869310 EmptyExpr!9262)))

(declare-fun b!2970942 () Bool)

(declare-fun e!1869312 () Regex!9262)

(declare-fun lt!1036145 () Regex!9262)

(assert (=> b!2970942 (= e!1869312 lt!1036145)))

(declare-fun b!2970943 () Bool)

(declare-fun e!1869309 () Regex!9262)

(declare-fun lt!1036147 () Regex!9262)

(assert (=> b!2970943 (= e!1869309 lt!1036147)))

(declare-fun b!2970944 () Bool)

(declare-fun e!1869313 () Bool)

(declare-fun lt!1036149 () Regex!9262)

(assert (=> b!2970944 (= e!1869313 (= (nullable!2963 lt!1036149) (nullable!2963 (reg!9591 r!17423))))))

(declare-fun b!2970945 () Bool)

(declare-fun c!487476 () Bool)

(declare-fun e!1869300 () Bool)

(assert (=> b!2970945 (= c!487476 e!1869300)))

(declare-fun res!1225165 () Bool)

(assert (=> b!2970945 (=> res!1225165 e!1869300)))

(declare-fun call!197803 () Bool)

(assert (=> b!2970945 (= res!1225165 call!197803)))

(declare-fun lt!1036146 () Regex!9262)

(declare-fun call!197798 () Regex!9262)

(assert (=> b!2970945 (= lt!1036146 call!197798)))

(declare-fun e!1869307 () Regex!9262)

(assert (=> b!2970945 (= e!1869307 e!1869310)))

(declare-fun c!487477 () Bool)

(declare-fun bm!197793 () Bool)

(declare-fun lt!1036150 () Regex!9262)

(declare-fun call!197802 () Bool)

(declare-fun isEmptyExpr!419 (Regex!9262) Bool)

(assert (=> bm!197793 (= call!197802 (isEmptyExpr!419 (ite c!487477 lt!1036146 lt!1036150)))))

(declare-fun bm!197794 () Bool)

(assert (=> bm!197794 (= call!197803 (isEmptyLang!376 (ite c!487477 lt!1036146 (ite c!487478 lt!1036148 lt!1036150))))))

(declare-fun b!2970946 () Bool)

(declare-fun e!1869302 () Regex!9262)

(declare-fun e!1869305 () Regex!9262)

(assert (=> b!2970946 (= e!1869302 e!1869305)))

(declare-fun c!487483 () Bool)

(assert (=> b!2970946 (= c!487483 (is-ElementMatch!9262 (reg!9591 r!17423)))))

(declare-fun b!2970947 () Bool)

(declare-fun e!1869308 () Regex!9262)

(assert (=> b!2970947 (= e!1869308 EmptyLang!9262)))

(declare-fun b!2970948 () Bool)

(assert (=> b!2970948 (= e!1869300 call!197802)))

(declare-fun b!2970949 () Bool)

(declare-fun e!1869304 () Regex!9262)

(assert (=> b!2970949 (= e!1869304 e!1869307)))

(assert (=> b!2970949 (= c!487477 (is-Star!9262 (reg!9591 r!17423)))))

(declare-fun b!2970950 () Bool)

(declare-fun e!1869303 () Regex!9262)

(assert (=> b!2970950 (= e!1869303 lt!1036150)))

(declare-fun b!2970951 () Bool)

(assert (=> b!2970951 (= e!1869309 e!1869303)))

(declare-fun c!487484 () Bool)

(assert (=> b!2970951 (= c!487484 (isEmptyExpr!419 lt!1036147))))

(declare-fun b!2970952 () Bool)

(assert (=> b!2970952 (= e!1869301 (Union!9262 lt!1036148 lt!1036145))))

(declare-fun b!2970953 () Bool)

(declare-fun e!1869311 () Regex!9262)

(assert (=> b!2970953 (= e!1869311 e!1869308)))

(declare-fun call!197801 () Regex!9262)

(assert (=> b!2970953 (= lt!1036150 call!197801)))

(assert (=> b!2970953 (= lt!1036147 call!197797)))

(declare-fun res!1225164 () Bool)

(declare-fun call!197800 () Bool)

(assert (=> b!2970953 (= res!1225164 call!197800)))

(declare-fun e!1869306 () Bool)

(assert (=> b!2970953 (=> res!1225164 e!1869306)))

(declare-fun c!487486 () Bool)

(assert (=> b!2970953 (= c!487486 e!1869306)))

(declare-fun b!2970954 () Bool)

(assert (=> b!2970954 (= e!1869304 EmptyExpr!9262)))

(declare-fun b!2970955 () Bool)

(declare-fun call!197799 () Bool)

(assert (=> b!2970955 (= e!1869306 call!197799)))

(declare-fun b!2970956 () Bool)

(declare-fun c!487479 () Bool)

(assert (=> b!2970956 (= c!487479 (is-EmptyExpr!9262 (reg!9591 r!17423)))))

(assert (=> b!2970956 (= e!1869305 e!1869304)))

(declare-fun b!2970957 () Bool)

(assert (=> b!2970957 (= e!1869310 (Star!9262 lt!1036146))))

(declare-fun b!2970958 () Bool)

(assert (=> b!2970958 (= e!1869305 (reg!9591 r!17423))))

(declare-fun b!2970959 () Bool)

(declare-fun c!487482 () Bool)

(assert (=> b!2970959 (= c!487482 call!197799)))

(assert (=> b!2970959 (= e!1869312 e!1869301)))

(declare-fun d!842661 () Bool)

(assert (=> d!842661 e!1869313))

(declare-fun res!1225163 () Bool)

(assert (=> d!842661 (=> (not res!1225163) (not e!1869313))))

(assert (=> d!842661 (= res!1225163 (validRegex!3995 lt!1036149))))

(assert (=> d!842661 (= lt!1036149 e!1869302)))

(declare-fun c!487485 () Bool)

(assert (=> d!842661 (= c!487485 (is-EmptyLang!9262 (reg!9591 r!17423)))))

(assert (=> d!842661 (validRegex!3995 (reg!9591 r!17423))))

(assert (=> d!842661 (= (simplify!263 (reg!9591 r!17423)) lt!1036149)))

(declare-fun bm!197795 () Bool)

(assert (=> bm!197795 (= call!197801 call!197798)))

(declare-fun b!2970960 () Bool)

(assert (=> b!2970960 (= e!1869303 (Concat!14583 lt!1036150 lt!1036147))))

(declare-fun bm!197796 () Bool)

(assert (=> bm!197796 (= call!197798 (simplify!263 (ite c!487477 (reg!9591 (reg!9591 r!17423)) (ite c!487478 (regTwo!19037 (reg!9591 r!17423)) (regOne!19036 (reg!9591 r!17423))))))))

(declare-fun bm!197797 () Bool)

(assert (=> bm!197797 (= call!197799 (isEmptyLang!376 (ite c!487478 lt!1036145 lt!1036147)))))

(declare-fun b!2970961 () Bool)

(assert (=> b!2970961 (= e!1869311 e!1869312)))

(assert (=> b!2970961 (= lt!1036148 call!197797)))

(assert (=> b!2970961 (= lt!1036145 call!197801)))

(declare-fun c!487481 () Bool)

(assert (=> b!2970961 (= c!487481 call!197800)))

(declare-fun b!2970962 () Bool)

(assert (=> b!2970962 (= c!487478 (is-Union!9262 (reg!9591 r!17423)))))

(assert (=> b!2970962 (= e!1869307 e!1869311)))

(declare-fun b!2970963 () Bool)

(assert (=> b!2970963 (= e!1869302 EmptyLang!9262)))

(declare-fun b!2970964 () Bool)

(declare-fun c!487480 () Bool)

(assert (=> b!2970964 (= c!487480 call!197802)))

(assert (=> b!2970964 (= e!1869308 e!1869309)))

(declare-fun bm!197798 () Bool)

(assert (=> bm!197798 (= call!197800 call!197803)))

(assert (= (and d!842661 c!487485) b!2970963))

(assert (= (and d!842661 (not c!487485)) b!2970946))

(assert (= (and b!2970946 c!487483) b!2970958))

(assert (= (and b!2970946 (not c!487483)) b!2970956))

(assert (= (and b!2970956 c!487479) b!2970954))

(assert (= (and b!2970956 (not c!487479)) b!2970949))

(assert (= (and b!2970949 c!487477) b!2970945))

(assert (= (and b!2970949 (not c!487477)) b!2970962))

(assert (= (and b!2970945 (not res!1225165)) b!2970948))

(assert (= (and b!2970945 c!487476) b!2970941))

(assert (= (and b!2970945 (not c!487476)) b!2970957))

(assert (= (and b!2970962 c!487478) b!2970961))

(assert (= (and b!2970962 (not c!487478)) b!2970953))

(assert (= (and b!2970961 c!487481) b!2970942))

(assert (= (and b!2970961 (not c!487481)) b!2970959))

(assert (= (and b!2970959 c!487482) b!2970940))

(assert (= (and b!2970959 (not c!487482)) b!2970952))

(assert (= (and b!2970953 (not res!1225164)) b!2970955))

(assert (= (and b!2970953 c!487486) b!2970947))

(assert (= (and b!2970953 (not c!487486)) b!2970964))

(assert (= (and b!2970964 c!487480) b!2970943))

(assert (= (and b!2970964 (not c!487480)) b!2970951))

(assert (= (and b!2970951 c!487484) b!2970950))

(assert (= (and b!2970951 (not c!487484)) b!2970960))

(assert (= (or b!2970961 b!2970953) bm!197792))

(assert (= (or b!2970961 b!2970953) bm!197795))

(assert (= (or b!2970959 b!2970955) bm!197797))

(assert (= (or b!2970961 b!2970953) bm!197798))

(assert (= (or b!2970948 b!2970964) bm!197793))

(assert (= (or b!2970945 bm!197795) bm!197796))

(assert (= (or b!2970945 bm!197798) bm!197794))

(assert (= (and d!842661 res!1225163) b!2970944))

(declare-fun m!3338165 () Bool)

(assert (=> bm!197797 m!3338165))

(declare-fun m!3338167 () Bool)

(assert (=> b!2970951 m!3338167))

(declare-fun m!3338169 () Bool)

(assert (=> bm!197796 m!3338169))

(declare-fun m!3338171 () Bool)

(assert (=> bm!197792 m!3338171))

(declare-fun m!3338173 () Bool)

(assert (=> d!842661 m!3338173))

(assert (=> d!842661 m!3338123))

(declare-fun m!3338175 () Bool)

(assert (=> bm!197794 m!3338175))

(declare-fun m!3338177 () Bool)

(assert (=> b!2970944 m!3338177))

(declare-fun m!3338179 () Bool)

(assert (=> b!2970944 m!3338179))

(declare-fun m!3338181 () Bool)

(assert (=> bm!197793 m!3338181))

(assert (=> b!2970808 d!842661))

(declare-fun b!2971021 () Bool)

(declare-fun e!1869346 () Bool)

(assert (=> b!2971021 (= e!1869346 (nullable!2963 (Star!9262 lt!1036122)))))

(declare-fun b!2971022 () Bool)

(declare-fun res!1225198 () Bool)

(declare-fun e!1869343 () Bool)

(assert (=> b!2971022 (=> res!1225198 e!1869343)))

(declare-fun e!1869347 () Bool)

(assert (=> b!2971022 (= res!1225198 e!1869347)))

(declare-fun res!1225200 () Bool)

(assert (=> b!2971022 (=> (not res!1225200) (not e!1869347))))

(declare-fun lt!1036155 () Bool)

(assert (=> b!2971022 (= res!1225200 lt!1036155)))

(declare-fun b!2971023 () Bool)

(declare-fun res!1225199 () Bool)

(assert (=> b!2971023 (=> (not res!1225199) (not e!1869347))))

(declare-fun isEmpty!19244 (List!35127) Bool)

(declare-fun tail!4849 (List!35127) List!35127)

(assert (=> b!2971023 (= res!1225199 (isEmpty!19244 (tail!4849 s!11993)))))

(declare-fun b!2971024 () Bool)

(declare-fun res!1225205 () Bool)

(declare-fun e!1869342 () Bool)

(assert (=> b!2971024 (=> res!1225205 e!1869342)))

(assert (=> b!2971024 (= res!1225205 (not (isEmpty!19244 (tail!4849 s!11993))))))

(declare-fun b!2971025 () Bool)

(declare-fun head!6623 (List!35127) C!18710)

(assert (=> b!2971025 (= e!1869342 (not (= (head!6623 s!11993) (c!487440 (Star!9262 lt!1036122)))))))

(declare-fun b!2971026 () Bool)

(assert (=> b!2971026 (= e!1869347 (= (head!6623 s!11993) (c!487440 (Star!9262 lt!1036122))))))

(declare-fun b!2971027 () Bool)

(declare-fun e!1869345 () Bool)

(declare-fun call!197808 () Bool)

(assert (=> b!2971027 (= e!1869345 (= lt!1036155 call!197808))))

(declare-fun b!2971028 () Bool)

(declare-fun e!1869344 () Bool)

(assert (=> b!2971028 (= e!1869345 e!1869344)))

(declare-fun c!487499 () Bool)

(assert (=> b!2971028 (= c!487499 (is-EmptyLang!9262 (Star!9262 lt!1036122)))))

(declare-fun bm!197803 () Bool)

(assert (=> bm!197803 (= call!197808 (isEmpty!19244 s!11993))))

(declare-fun d!842665 () Bool)

(assert (=> d!842665 e!1869345))

(declare-fun c!487501 () Bool)

(assert (=> d!842665 (= c!487501 (is-EmptyExpr!9262 (Star!9262 lt!1036122)))))

(assert (=> d!842665 (= lt!1036155 e!1869346)))

(declare-fun c!487500 () Bool)

(assert (=> d!842665 (= c!487500 (isEmpty!19244 s!11993))))

(assert (=> d!842665 (validRegex!3995 (Star!9262 lt!1036122))))

(assert (=> d!842665 (= (matchR!4144 (Star!9262 lt!1036122) s!11993) lt!1036155)))

(declare-fun b!2971029 () Bool)

(declare-fun e!1869348 () Bool)

(assert (=> b!2971029 (= e!1869348 e!1869342)))

(declare-fun res!1225204 () Bool)

(assert (=> b!2971029 (=> res!1225204 e!1869342)))

(assert (=> b!2971029 (= res!1225204 call!197808)))

(declare-fun b!2971030 () Bool)

(declare-fun res!1225201 () Bool)

(assert (=> b!2971030 (=> (not res!1225201) (not e!1869347))))

(assert (=> b!2971030 (= res!1225201 (not call!197808))))

(declare-fun b!2971031 () Bool)

(assert (=> b!2971031 (= e!1869343 e!1869348)))

(declare-fun res!1225202 () Bool)

(assert (=> b!2971031 (=> (not res!1225202) (not e!1869348))))

(assert (=> b!2971031 (= res!1225202 (not lt!1036155))))

(declare-fun b!2971032 () Bool)

(declare-fun derivativeStep!2564 (Regex!9262 C!18710) Regex!9262)

(assert (=> b!2971032 (= e!1869346 (matchR!4144 (derivativeStep!2564 (Star!9262 lt!1036122) (head!6623 s!11993)) (tail!4849 s!11993)))))

(declare-fun b!2971033 () Bool)

(assert (=> b!2971033 (= e!1869344 (not lt!1036155))))

(declare-fun b!2971034 () Bool)

(declare-fun res!1225203 () Bool)

(assert (=> b!2971034 (=> res!1225203 e!1869343)))

(assert (=> b!2971034 (= res!1225203 (not (is-ElementMatch!9262 (Star!9262 lt!1036122))))))

(assert (=> b!2971034 (= e!1869344 e!1869343)))

(assert (= (and d!842665 c!487500) b!2971021))

(assert (= (and d!842665 (not c!487500)) b!2971032))

(assert (= (and d!842665 c!487501) b!2971027))

(assert (= (and d!842665 (not c!487501)) b!2971028))

(assert (= (and b!2971028 c!487499) b!2971033))

(assert (= (and b!2971028 (not c!487499)) b!2971034))

(assert (= (and b!2971034 (not res!1225203)) b!2971022))

(assert (= (and b!2971022 res!1225200) b!2971030))

(assert (= (and b!2971030 res!1225201) b!2971023))

(assert (= (and b!2971023 res!1225199) b!2971026))

(assert (= (and b!2971022 (not res!1225198)) b!2971031))

(assert (= (and b!2971031 res!1225202) b!2971029))

(assert (= (and b!2971029 (not res!1225204)) b!2971024))

(assert (= (and b!2971024 (not res!1225205)) b!2971025))

(assert (= (or b!2971027 b!2971029 b!2971030) bm!197803))

(declare-fun m!3338183 () Bool)

(assert (=> b!2971023 m!3338183))

(assert (=> b!2971023 m!3338183))

(declare-fun m!3338185 () Bool)

(assert (=> b!2971023 m!3338185))

(assert (=> b!2971024 m!3338183))

(assert (=> b!2971024 m!3338183))

(assert (=> b!2971024 m!3338185))

(declare-fun m!3338187 () Bool)

(assert (=> b!2971021 m!3338187))

(declare-fun m!3338189 () Bool)

(assert (=> b!2971025 m!3338189))

(assert (=> b!2971026 m!3338189))

(assert (=> b!2971032 m!3338189))

(assert (=> b!2971032 m!3338189))

(declare-fun m!3338191 () Bool)

(assert (=> b!2971032 m!3338191))

(assert (=> b!2971032 m!3338183))

(assert (=> b!2971032 m!3338191))

(assert (=> b!2971032 m!3338183))

(declare-fun m!3338193 () Bool)

(assert (=> b!2971032 m!3338193))

(declare-fun m!3338195 () Bool)

(assert (=> d!842665 m!3338195))

(declare-fun m!3338197 () Bool)

(assert (=> d!842665 m!3338197))

(assert (=> bm!197803 m!3338195))

(assert (=> b!2970803 d!842665))

(declare-fun c!487502 () Bool)

(declare-fun call!197811 () Bool)

(declare-fun c!487503 () Bool)

(declare-fun bm!197804 () Bool)

(assert (=> bm!197804 (= call!197811 (validRegex!3995 (ite c!487503 (reg!9591 r!17423) (ite c!487502 (regTwo!19037 r!17423) (regOne!19036 r!17423)))))))

(declare-fun b!2971035 () Bool)

(declare-fun e!1869351 () Bool)

(declare-fun e!1869352 () Bool)

(assert (=> b!2971035 (= e!1869351 e!1869352)))

(assert (=> b!2971035 (= c!487503 (is-Star!9262 r!17423))))

(declare-fun b!2971036 () Bool)

(declare-fun res!1225208 () Bool)

(declare-fun e!1869355 () Bool)

(assert (=> b!2971036 (=> (not res!1225208) (not e!1869355))))

(declare-fun call!197809 () Bool)

(assert (=> b!2971036 (= res!1225208 call!197809)))

(declare-fun e!1869349 () Bool)

(assert (=> b!2971036 (= e!1869349 e!1869355)))

(declare-fun b!2971037 () Bool)

(declare-fun e!1869354 () Bool)

(assert (=> b!2971037 (= e!1869352 e!1869354)))

(declare-fun res!1225206 () Bool)

(assert (=> b!2971037 (= res!1225206 (not (nullable!2963 (reg!9591 r!17423))))))

(assert (=> b!2971037 (=> (not res!1225206) (not e!1869354))))

(declare-fun d!842667 () Bool)

(declare-fun res!1225209 () Bool)

(assert (=> d!842667 (=> res!1225209 e!1869351)))

(assert (=> d!842667 (= res!1225209 (is-ElementMatch!9262 r!17423))))

(assert (=> d!842667 (= (validRegex!3995 r!17423) e!1869351)))

(declare-fun b!2971038 () Bool)

(declare-fun e!1869353 () Bool)

(assert (=> b!2971038 (= e!1869353 call!197809)))

(declare-fun bm!197805 () Bool)

(declare-fun call!197810 () Bool)

(assert (=> bm!197805 (= call!197810 call!197811)))

(declare-fun bm!197806 () Bool)

(assert (=> bm!197806 (= call!197809 (validRegex!3995 (ite c!487502 (regOne!19037 r!17423) (regTwo!19036 r!17423))))))

(declare-fun b!2971039 () Bool)

(assert (=> b!2971039 (= e!1869352 e!1869349)))

(assert (=> b!2971039 (= c!487502 (is-Union!9262 r!17423))))

(declare-fun b!2971040 () Bool)

(assert (=> b!2971040 (= e!1869354 call!197811)))

(declare-fun b!2971041 () Bool)

(declare-fun e!1869350 () Bool)

(assert (=> b!2971041 (= e!1869350 e!1869353)))

(declare-fun res!1225207 () Bool)

(assert (=> b!2971041 (=> (not res!1225207) (not e!1869353))))

(assert (=> b!2971041 (= res!1225207 call!197810)))

(declare-fun b!2971042 () Bool)

(assert (=> b!2971042 (= e!1869355 call!197810)))

(declare-fun b!2971043 () Bool)

(declare-fun res!1225210 () Bool)

(assert (=> b!2971043 (=> res!1225210 e!1869350)))

(assert (=> b!2971043 (= res!1225210 (not (is-Concat!14583 r!17423)))))

(assert (=> b!2971043 (= e!1869349 e!1869350)))

(assert (= (and d!842667 (not res!1225209)) b!2971035))

(assert (= (and b!2971035 c!487503) b!2971037))

(assert (= (and b!2971035 (not c!487503)) b!2971039))

(assert (= (and b!2971037 res!1225206) b!2971040))

(assert (= (and b!2971039 c!487502) b!2971036))

(assert (= (and b!2971039 (not c!487502)) b!2971043))

(assert (= (and b!2971036 res!1225208) b!2971042))

(assert (= (and b!2971043 (not res!1225210)) b!2971041))

(assert (= (and b!2971041 res!1225207) b!2971038))

(assert (= (or b!2971036 b!2971038) bm!197806))

(assert (= (or b!2971042 b!2971041) bm!197805))

(assert (= (or b!2971040 bm!197805) bm!197804))

(declare-fun m!3338199 () Bool)

(assert (=> bm!197804 m!3338199))

(assert (=> b!2971037 m!3338179))

(declare-fun m!3338201 () Bool)

(assert (=> bm!197806 m!3338201))

(assert (=> start!287398 d!842667))

(declare-fun b!2971117 () Bool)

(assert (=> b!2971117 true))

(assert (=> b!2971117 true))

(declare-fun bs!526480 () Bool)

(declare-fun b!2971121 () Bool)

(assert (= bs!526480 (and b!2971121 b!2971117)))

(declare-fun lambda!110548 () Int)

(declare-fun lambda!110547 () Int)

(assert (=> bs!526480 (not (= lambda!110548 lambda!110547))))

(assert (=> b!2971121 true))

(assert (=> b!2971121 true))

(declare-fun b!2971112 () Bool)

(declare-fun e!1869397 () Bool)

(declare-fun e!1869395 () Bool)

(assert (=> b!2971112 (= e!1869397 e!1869395)))

(declare-fun res!1225241 () Bool)

(assert (=> b!2971112 (= res!1225241 (matchRSpec!1399 (regOne!19037 r!17423) s!11993))))

(assert (=> b!2971112 (=> res!1225241 e!1869395)))

(declare-fun b!2971113 () Bool)

(declare-fun e!1869396 () Bool)

(assert (=> b!2971113 (= e!1869397 e!1869396)))

(declare-fun c!487523 () Bool)

(assert (=> b!2971113 (= c!487523 (is-Star!9262 r!17423))))

(declare-fun b!2971114 () Bool)

(declare-fun e!1869398 () Bool)

(declare-fun call!197817 () Bool)

(assert (=> b!2971114 (= e!1869398 call!197817)))

(declare-fun bm!197812 () Bool)

(assert (=> bm!197812 (= call!197817 (isEmpty!19244 s!11993))))

(declare-fun b!2971115 () Bool)

(declare-fun c!487525 () Bool)

(assert (=> b!2971115 (= c!487525 (is-Union!9262 r!17423))))

(declare-fun e!1869399 () Bool)

(assert (=> b!2971115 (= e!1869399 e!1869397)))

(declare-fun bm!197813 () Bool)

(declare-fun call!197818 () Bool)

(declare-fun Exists!1548 (Int) Bool)

(assert (=> bm!197813 (= call!197818 (Exists!1548 (ite c!487523 lambda!110547 lambda!110548)))))

(declare-fun b!2971116 () Bool)

(declare-fun res!1225243 () Bool)

(declare-fun e!1869400 () Bool)

(assert (=> b!2971116 (=> res!1225243 e!1869400)))

(assert (=> b!2971116 (= res!1225243 call!197817)))

(assert (=> b!2971116 (= e!1869396 e!1869400)))

(assert (=> b!2971117 (= e!1869400 call!197818)))

(declare-fun b!2971118 () Bool)

(assert (=> b!2971118 (= e!1869399 (= s!11993 (Cons!35003 (c!487440 r!17423) Nil!35003)))))

(declare-fun d!842669 () Bool)

(declare-fun c!487526 () Bool)

(assert (=> d!842669 (= c!487526 (is-EmptyExpr!9262 r!17423))))

(assert (=> d!842669 (= (matchRSpec!1399 r!17423 s!11993) e!1869398)))

(declare-fun b!2971119 () Bool)

(assert (=> b!2971119 (= e!1869395 (matchRSpec!1399 (regTwo!19037 r!17423) s!11993))))

(declare-fun b!2971120 () Bool)

(declare-fun c!487524 () Bool)

(assert (=> b!2971120 (= c!487524 (is-ElementMatch!9262 r!17423))))

(declare-fun e!1869401 () Bool)

(assert (=> b!2971120 (= e!1869401 e!1869399)))

(assert (=> b!2971121 (= e!1869396 call!197818)))

(declare-fun b!2971122 () Bool)

(assert (=> b!2971122 (= e!1869398 e!1869401)))

(declare-fun res!1225242 () Bool)

(assert (=> b!2971122 (= res!1225242 (not (is-EmptyLang!9262 r!17423)))))

(assert (=> b!2971122 (=> (not res!1225242) (not e!1869401))))

(assert (= (and d!842669 c!487526) b!2971114))

(assert (= (and d!842669 (not c!487526)) b!2971122))

(assert (= (and b!2971122 res!1225242) b!2971120))

(assert (= (and b!2971120 c!487524) b!2971118))

(assert (= (and b!2971120 (not c!487524)) b!2971115))

(assert (= (and b!2971115 c!487525) b!2971112))

(assert (= (and b!2971115 (not c!487525)) b!2971113))

(assert (= (and b!2971112 (not res!1225241)) b!2971119))

(assert (= (and b!2971113 c!487523) b!2971116))

(assert (= (and b!2971113 (not c!487523)) b!2971121))

(assert (= (and b!2971116 (not res!1225243)) b!2971117))

(assert (= (or b!2971117 b!2971121) bm!197813))

(assert (= (or b!2971114 b!2971116) bm!197812))

(declare-fun m!3338219 () Bool)

(assert (=> b!2971112 m!3338219))

(assert (=> bm!197812 m!3338195))

(declare-fun m!3338221 () Bool)

(assert (=> bm!197813 m!3338221))

(declare-fun m!3338223 () Bool)

(assert (=> b!2971119 m!3338223))

(assert (=> b!2970804 d!842669))

(declare-fun b!2971127 () Bool)

(declare-fun e!1869406 () Bool)

(assert (=> b!2971127 (= e!1869406 (nullable!2963 r!17423))))

(declare-fun b!2971128 () Bool)

(declare-fun res!1225244 () Bool)

(declare-fun e!1869403 () Bool)

(assert (=> b!2971128 (=> res!1225244 e!1869403)))

(declare-fun e!1869407 () Bool)

(assert (=> b!2971128 (= res!1225244 e!1869407)))

(declare-fun res!1225246 () Bool)

(assert (=> b!2971128 (=> (not res!1225246) (not e!1869407))))

(declare-fun lt!1036157 () Bool)

(assert (=> b!2971128 (= res!1225246 lt!1036157)))

(declare-fun b!2971129 () Bool)

(declare-fun res!1225245 () Bool)

(assert (=> b!2971129 (=> (not res!1225245) (not e!1869407))))

(assert (=> b!2971129 (= res!1225245 (isEmpty!19244 (tail!4849 s!11993)))))

(declare-fun b!2971130 () Bool)

(declare-fun res!1225251 () Bool)

(declare-fun e!1869402 () Bool)

(assert (=> b!2971130 (=> res!1225251 e!1869402)))

(assert (=> b!2971130 (= res!1225251 (not (isEmpty!19244 (tail!4849 s!11993))))))

(declare-fun b!2971131 () Bool)

(assert (=> b!2971131 (= e!1869402 (not (= (head!6623 s!11993) (c!487440 r!17423))))))

(declare-fun b!2971132 () Bool)

(assert (=> b!2971132 (= e!1869407 (= (head!6623 s!11993) (c!487440 r!17423)))))

(declare-fun b!2971133 () Bool)

(declare-fun e!1869405 () Bool)

(declare-fun call!197819 () Bool)

(assert (=> b!2971133 (= e!1869405 (= lt!1036157 call!197819))))

(declare-fun b!2971134 () Bool)

(declare-fun e!1869404 () Bool)

(assert (=> b!2971134 (= e!1869405 e!1869404)))

(declare-fun c!487527 () Bool)

(assert (=> b!2971134 (= c!487527 (is-EmptyLang!9262 r!17423))))

(declare-fun bm!197814 () Bool)

(assert (=> bm!197814 (= call!197819 (isEmpty!19244 s!11993))))

(declare-fun d!842673 () Bool)

(assert (=> d!842673 e!1869405))

(declare-fun c!487529 () Bool)

(assert (=> d!842673 (= c!487529 (is-EmptyExpr!9262 r!17423))))

(assert (=> d!842673 (= lt!1036157 e!1869406)))

(declare-fun c!487528 () Bool)

(assert (=> d!842673 (= c!487528 (isEmpty!19244 s!11993))))

(assert (=> d!842673 (validRegex!3995 r!17423)))

(assert (=> d!842673 (= (matchR!4144 r!17423 s!11993) lt!1036157)))

(declare-fun b!2971135 () Bool)

(declare-fun e!1869408 () Bool)

(assert (=> b!2971135 (= e!1869408 e!1869402)))

(declare-fun res!1225250 () Bool)

(assert (=> b!2971135 (=> res!1225250 e!1869402)))

(assert (=> b!2971135 (= res!1225250 call!197819)))

(declare-fun b!2971136 () Bool)

(declare-fun res!1225247 () Bool)

(assert (=> b!2971136 (=> (not res!1225247) (not e!1869407))))

(assert (=> b!2971136 (= res!1225247 (not call!197819))))

(declare-fun b!2971137 () Bool)

(assert (=> b!2971137 (= e!1869403 e!1869408)))

(declare-fun res!1225248 () Bool)

(assert (=> b!2971137 (=> (not res!1225248) (not e!1869408))))

(assert (=> b!2971137 (= res!1225248 (not lt!1036157))))

(declare-fun b!2971138 () Bool)

(assert (=> b!2971138 (= e!1869406 (matchR!4144 (derivativeStep!2564 r!17423 (head!6623 s!11993)) (tail!4849 s!11993)))))

(declare-fun b!2971139 () Bool)

(assert (=> b!2971139 (= e!1869404 (not lt!1036157))))

(declare-fun b!2971140 () Bool)

(declare-fun res!1225249 () Bool)

(assert (=> b!2971140 (=> res!1225249 e!1869403)))

(assert (=> b!2971140 (= res!1225249 (not (is-ElementMatch!9262 r!17423)))))

(assert (=> b!2971140 (= e!1869404 e!1869403)))

(assert (= (and d!842673 c!487528) b!2971127))

(assert (= (and d!842673 (not c!487528)) b!2971138))

(assert (= (and d!842673 c!487529) b!2971133))

(assert (= (and d!842673 (not c!487529)) b!2971134))

(assert (= (and b!2971134 c!487527) b!2971139))

(assert (= (and b!2971134 (not c!487527)) b!2971140))

(assert (= (and b!2971140 (not res!1225249)) b!2971128))

(assert (= (and b!2971128 res!1225246) b!2971136))

(assert (= (and b!2971136 res!1225247) b!2971129))

(assert (= (and b!2971129 res!1225245) b!2971132))

(assert (= (and b!2971128 (not res!1225244)) b!2971137))

(assert (= (and b!2971137 res!1225248) b!2971135))

(assert (= (and b!2971135 (not res!1225250)) b!2971130))

(assert (= (and b!2971130 (not res!1225251)) b!2971131))

(assert (= (or b!2971133 b!2971135 b!2971136) bm!197814))

(assert (=> b!2971129 m!3338183))

(assert (=> b!2971129 m!3338183))

(assert (=> b!2971129 m!3338185))

(assert (=> b!2971130 m!3338183))

(assert (=> b!2971130 m!3338183))

(assert (=> b!2971130 m!3338185))

(declare-fun m!3338225 () Bool)

(assert (=> b!2971127 m!3338225))

(assert (=> b!2971131 m!3338189))

(assert (=> b!2971132 m!3338189))

(assert (=> b!2971138 m!3338189))

(assert (=> b!2971138 m!3338189))

(declare-fun m!3338227 () Bool)

(assert (=> b!2971138 m!3338227))

(assert (=> b!2971138 m!3338183))

(assert (=> b!2971138 m!3338227))

(assert (=> b!2971138 m!3338183))

(declare-fun m!3338229 () Bool)

(assert (=> b!2971138 m!3338229))

(assert (=> d!842673 m!3338195))

(assert (=> d!842673 m!3338121))

(assert (=> bm!197814 m!3338195))

(assert (=> b!2970804 d!842673))

(declare-fun d!842675 () Bool)

(assert (=> d!842675 (= (matchR!4144 r!17423 s!11993) (matchRSpec!1399 r!17423 s!11993))))

(declare-fun lt!1036160 () Unit!48903)

(declare-fun choose!17566 (Regex!9262 List!35127) Unit!48903)

(assert (=> d!842675 (= lt!1036160 (choose!17566 r!17423 s!11993))))

(assert (=> d!842675 (validRegex!3995 r!17423)))

(assert (=> d!842675 (= (mainMatchTheorem!1399 r!17423 s!11993) lt!1036160)))

(declare-fun bs!526481 () Bool)

(assert (= bs!526481 d!842675))

(assert (=> bs!526481 m!3338131))

(assert (=> bs!526481 m!3338129))

(declare-fun m!3338231 () Bool)

(assert (=> bs!526481 m!3338231))

(assert (=> bs!526481 m!3338121))

(assert (=> b!2970804 d!842675))

(declare-fun b!2971154 () Bool)

(declare-fun e!1869411 () Bool)

(declare-fun tp!947312 () Bool)

(declare-fun tp!947315 () Bool)

(assert (=> b!2971154 (= e!1869411 (and tp!947312 tp!947315))))

(declare-fun b!2971153 () Bool)

(declare-fun tp!947316 () Bool)

(assert (=> b!2971153 (= e!1869411 tp!947316)))

(declare-fun b!2971151 () Bool)

(assert (=> b!2971151 (= e!1869411 tp_is_empty!16087)))

(assert (=> b!2970805 (= tp!947282 e!1869411)))

(declare-fun b!2971152 () Bool)

(declare-fun tp!947313 () Bool)

(declare-fun tp!947314 () Bool)

(assert (=> b!2971152 (= e!1869411 (and tp!947313 tp!947314))))

(assert (= (and b!2970805 (is-ElementMatch!9262 (reg!9591 r!17423))) b!2971151))

(assert (= (and b!2970805 (is-Concat!14583 (reg!9591 r!17423))) b!2971152))

(assert (= (and b!2970805 (is-Star!9262 (reg!9591 r!17423))) b!2971153))

(assert (= (and b!2970805 (is-Union!9262 (reg!9591 r!17423))) b!2971154))

(declare-fun b!2971158 () Bool)

(declare-fun e!1869412 () Bool)

(declare-fun tp!947317 () Bool)

(declare-fun tp!947320 () Bool)

(assert (=> b!2971158 (= e!1869412 (and tp!947317 tp!947320))))

(declare-fun b!2971157 () Bool)

(declare-fun tp!947321 () Bool)

(assert (=> b!2971157 (= e!1869412 tp!947321)))

(declare-fun b!2971155 () Bool)

(assert (=> b!2971155 (= e!1869412 tp_is_empty!16087)))

(assert (=> b!2970806 (= tp!947278 e!1869412)))

(declare-fun b!2971156 () Bool)

(declare-fun tp!947318 () Bool)

(declare-fun tp!947319 () Bool)

(assert (=> b!2971156 (= e!1869412 (and tp!947318 tp!947319))))

(assert (= (and b!2970806 (is-ElementMatch!9262 (regOne!19037 r!17423))) b!2971155))

(assert (= (and b!2970806 (is-Concat!14583 (regOne!19037 r!17423))) b!2971156))

(assert (= (and b!2970806 (is-Star!9262 (regOne!19037 r!17423))) b!2971157))

(assert (= (and b!2970806 (is-Union!9262 (regOne!19037 r!17423))) b!2971158))

(declare-fun b!2971162 () Bool)

(declare-fun e!1869413 () Bool)

(declare-fun tp!947322 () Bool)

(declare-fun tp!947325 () Bool)

(assert (=> b!2971162 (= e!1869413 (and tp!947322 tp!947325))))

(declare-fun b!2971161 () Bool)

(declare-fun tp!947326 () Bool)

(assert (=> b!2971161 (= e!1869413 tp!947326)))

(declare-fun b!2971159 () Bool)

(assert (=> b!2971159 (= e!1869413 tp_is_empty!16087)))

(assert (=> b!2970806 (= tp!947281 e!1869413)))

(declare-fun b!2971160 () Bool)

(declare-fun tp!947323 () Bool)

(declare-fun tp!947324 () Bool)

(assert (=> b!2971160 (= e!1869413 (and tp!947323 tp!947324))))

(assert (= (and b!2970806 (is-ElementMatch!9262 (regTwo!19037 r!17423))) b!2971159))

(assert (= (and b!2970806 (is-Concat!14583 (regTwo!19037 r!17423))) b!2971160))

(assert (= (and b!2970806 (is-Star!9262 (regTwo!19037 r!17423))) b!2971161))

(assert (= (and b!2970806 (is-Union!9262 (regTwo!19037 r!17423))) b!2971162))

(declare-fun b!2971167 () Bool)

(declare-fun e!1869416 () Bool)

(declare-fun tp!947329 () Bool)

(assert (=> b!2971167 (= e!1869416 (and tp_is_empty!16087 tp!947329))))

(assert (=> b!2970801 (= tp!947283 e!1869416)))

(assert (= (and b!2970801 (is-Cons!35003 (t!234192 s!11993))) b!2971167))

(declare-fun b!2971171 () Bool)

(declare-fun e!1869417 () Bool)

(declare-fun tp!947330 () Bool)

(declare-fun tp!947333 () Bool)

(assert (=> b!2971171 (= e!1869417 (and tp!947330 tp!947333))))

(declare-fun b!2971170 () Bool)

(declare-fun tp!947334 () Bool)

(assert (=> b!2971170 (= e!1869417 tp!947334)))

(declare-fun b!2971168 () Bool)

(assert (=> b!2971168 (= e!1869417 tp_is_empty!16087)))

(assert (=> b!2970800 (= tp!947280 e!1869417)))

(declare-fun b!2971169 () Bool)

(declare-fun tp!947331 () Bool)

(declare-fun tp!947332 () Bool)

(assert (=> b!2971169 (= e!1869417 (and tp!947331 tp!947332))))

(assert (= (and b!2970800 (is-ElementMatch!9262 (regOne!19036 r!17423))) b!2971168))

(assert (= (and b!2970800 (is-Concat!14583 (regOne!19036 r!17423))) b!2971169))

(assert (= (and b!2970800 (is-Star!9262 (regOne!19036 r!17423))) b!2971170))

(assert (= (and b!2970800 (is-Union!9262 (regOne!19036 r!17423))) b!2971171))

(declare-fun b!2971175 () Bool)

(declare-fun e!1869418 () Bool)

(declare-fun tp!947335 () Bool)

(declare-fun tp!947338 () Bool)

(assert (=> b!2971175 (= e!1869418 (and tp!947335 tp!947338))))

(declare-fun b!2971174 () Bool)

(declare-fun tp!947339 () Bool)

(assert (=> b!2971174 (= e!1869418 tp!947339)))

(declare-fun b!2971172 () Bool)

(assert (=> b!2971172 (= e!1869418 tp_is_empty!16087)))

(assert (=> b!2970800 (= tp!947279 e!1869418)))

(declare-fun b!2971173 () Bool)

(declare-fun tp!947336 () Bool)

(declare-fun tp!947337 () Bool)

(assert (=> b!2971173 (= e!1869418 (and tp!947336 tp!947337))))

(assert (= (and b!2970800 (is-ElementMatch!9262 (regTwo!19036 r!17423))) b!2971172))

(assert (= (and b!2970800 (is-Concat!14583 (regTwo!19036 r!17423))) b!2971173))

(assert (= (and b!2970800 (is-Star!9262 (regTwo!19036 r!17423))) b!2971174))

(assert (= (and b!2970800 (is-Union!9262 (regTwo!19036 r!17423))) b!2971175))

(push 1)

(assert (not b!2971169))

(assert (not b!2971173))

(assert (not b!2971153))

(assert (not b!2971167))

(assert (not b!2971032))

(assert (not b!2971024))

(assert (not b!2971162))

(assert (not b!2971129))

(assert (not b!2970951))

(assert (not b!2971170))

(assert (not bm!197794))

(assert (not b!2971160))

(assert (not b!2971131))

(assert (not b!2971157))

(assert (not bm!197796))

(assert (not b!2971021))

(assert (not b!2971130))

(assert (not bm!197792))

(assert (not bm!197768))

(assert (not b!2971154))

(assert (not b!2971161))

(assert (not bm!197766))

(assert (not b!2971112))

(assert (not b!2971156))

(assert (not bm!197812))

(assert (not b!2970856))

(assert (not bm!197793))

(assert (not d!842673))

(assert (not bm!197813))

(assert (not b!2971025))

(assert (not b!2971023))

(assert (not b!2971127))

(assert (not b!2971119))

(assert (not b!2971152))

(assert (not d!842665))

(assert (not bm!197814))

(assert (not bm!197806))

(assert (not b!2971158))

(assert (not d!842675))

(assert (not b!2971132))

(assert (not bm!197804))

(assert tp_is_empty!16087)

(assert (not b!2971037))

(assert (not b!2971138))

(assert (not b!2971175))

(assert (not b!2971026))

(assert (not b!2971174))

(assert (not b!2970944))

(assert (not bm!197803))

(assert (not b!2971171))

(assert (not bm!197797))

(assert (not d!842661))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

