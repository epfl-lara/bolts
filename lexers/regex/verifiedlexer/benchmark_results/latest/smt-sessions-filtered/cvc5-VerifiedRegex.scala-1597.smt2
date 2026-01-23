; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!82248 () Bool)

(assert start!82248)

(declare-fun b!914826 () Bool)

(assert (=> b!914826 true))

(assert (=> b!914826 true))

(declare-fun lambda!29384 () Int)

(declare-fun lambda!29383 () Int)

(assert (=> b!914826 (not (= lambda!29384 lambda!29383))))

(assert (=> b!914826 true))

(assert (=> b!914826 true))

(declare-fun b!914820 () Bool)

(declare-fun e!596313 () Bool)

(declare-fun tp!285764 () Bool)

(declare-fun tp!285765 () Bool)

(assert (=> b!914820 (= e!596313 (and tp!285764 tp!285765))))

(declare-fun b!914821 () Bool)

(declare-fun tp_is_empty!4547 () Bool)

(assert (=> b!914821 (= e!596313 tp_is_empty!4547)))

(declare-fun b!914822 () Bool)

(declare-fun tp!285763 () Bool)

(assert (=> b!914822 (= e!596313 tp!285763)))

(declare-fun b!914823 () Bool)

(declare-fun e!596314 () Bool)

(declare-datatypes ((C!5474 0))(
  ( (C!5475 (val!2985 Int)) )
))
(declare-datatypes ((Regex!2452 0))(
  ( (ElementMatch!2452 (c!148227 C!5474)) (Concat!4285 (regOne!5416 Regex!2452) (regTwo!5416 Regex!2452)) (EmptyExpr!2452) (Star!2452 (reg!2781 Regex!2452)) (EmptyLang!2452) (Union!2452 (regOne!5417 Regex!2452) (regTwo!5417 Regex!2452)) )
))
(declare-fun r!15766 () Regex!2452)

(declare-fun validRegex!921 (Regex!2452) Bool)

(assert (=> b!914823 (= e!596314 (validRegex!921 (regOne!5416 r!15766)))))

(declare-fun b!914824 () Bool)

(declare-fun res!415974 () Bool)

(assert (=> b!914824 (=> res!415974 e!596314)))

(declare-datatypes ((List!9682 0))(
  ( (Nil!9666) (Cons!9666 (h!15067 C!5474) (t!100728 List!9682)) )
))
(declare-fun s!10566 () List!9682)

(declare-fun matchR!990 (Regex!2452 List!9682) Bool)

(declare-fun removeUselessConcat!129 (Regex!2452) Regex!2452)

(assert (=> b!914824 (= res!415974 (not (matchR!990 (Concat!4285 (removeUselessConcat!129 (regOne!5416 r!15766)) (removeUselessConcat!129 (regTwo!5416 r!15766))) s!10566)))))

(declare-fun b!914825 () Bool)

(declare-fun e!596316 () Bool)

(declare-fun e!596312 () Bool)

(assert (=> b!914825 (= e!596316 (not e!596312))))

(declare-fun res!415971 () Bool)

(assert (=> b!914825 (=> res!415971 e!596312)))

(declare-fun lt!337330 () Bool)

(assert (=> b!914825 (= res!415971 (or lt!337330 (and (is-Concat!4285 r!15766) (is-EmptyExpr!2452 (regOne!5416 r!15766))) (and (is-Concat!4285 r!15766) (is-EmptyExpr!2452 (regTwo!5416 r!15766))) (not (is-Concat!4285 r!15766))))))

(declare-fun matchRSpec!253 (Regex!2452 List!9682) Bool)

(assert (=> b!914825 (= lt!337330 (matchRSpec!253 r!15766 s!10566))))

(assert (=> b!914825 (= lt!337330 (matchR!990 r!15766 s!10566))))

(declare-datatypes ((Unit!14523 0))(
  ( (Unit!14524) )
))
(declare-fun lt!337331 () Unit!14523)

(declare-fun mainMatchTheorem!253 (Regex!2452 List!9682) Unit!14523)

(assert (=> b!914825 (= lt!337331 (mainMatchTheorem!253 r!15766 s!10566))))

(assert (=> b!914826 (= e!596312 e!596314)))

(declare-fun res!415972 () Bool)

(assert (=> b!914826 (=> res!415972 e!596314)))

(declare-fun isEmpty!5893 (List!9682) Bool)

(assert (=> b!914826 (= res!415972 (isEmpty!5893 s!10566))))

(declare-fun Exists!223 (Int) Bool)

(assert (=> b!914826 (= (Exists!223 lambda!29383) (Exists!223 lambda!29384))))

(declare-fun lt!337333 () Unit!14523)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!135 (Regex!2452 Regex!2452 List!9682) Unit!14523)

(assert (=> b!914826 (= lt!337333 (lemmaExistCutMatchRandMatchRSpecEquivalent!135 (regOne!5416 r!15766) (regTwo!5416 r!15766) s!10566))))

(declare-datatypes ((tuple2!10890 0))(
  ( (tuple2!10891 (_1!6271 List!9682) (_2!6271 List!9682)) )
))
(declare-datatypes ((Option!2087 0))(
  ( (None!2086) (Some!2086 (v!19503 tuple2!10890)) )
))
(declare-fun isDefined!1729 (Option!2087) Bool)

(declare-fun findConcatSeparation!193 (Regex!2452 Regex!2452 List!9682 List!9682 List!9682) Option!2087)

(assert (=> b!914826 (= (isDefined!1729 (findConcatSeparation!193 (regOne!5416 r!15766) (regTwo!5416 r!15766) Nil!9666 s!10566 s!10566)) (Exists!223 lambda!29383))))

(declare-fun lt!337332 () Unit!14523)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!193 (Regex!2452 Regex!2452 List!9682) Unit!14523)

(assert (=> b!914826 (= lt!337332 (lemmaFindConcatSeparationEquivalentToExists!193 (regOne!5416 r!15766) (regTwo!5416 r!15766) s!10566))))

(declare-fun res!415973 () Bool)

(assert (=> start!82248 (=> (not res!415973) (not e!596316))))

(assert (=> start!82248 (= res!415973 (validRegex!921 r!15766))))

(assert (=> start!82248 e!596316))

(assert (=> start!82248 e!596313))

(declare-fun e!596315 () Bool)

(assert (=> start!82248 e!596315))

(declare-fun b!914827 () Bool)

(declare-fun tp!285762 () Bool)

(assert (=> b!914827 (= e!596315 (and tp_is_empty!4547 tp!285762))))

(declare-fun b!914828 () Bool)

(declare-fun tp!285761 () Bool)

(declare-fun tp!285766 () Bool)

(assert (=> b!914828 (= e!596313 (and tp!285761 tp!285766))))

(assert (= (and start!82248 res!415973) b!914825))

(assert (= (and b!914825 (not res!415971)) b!914826))

(assert (= (and b!914826 (not res!415972)) b!914824))

(assert (= (and b!914824 (not res!415974)) b!914823))

(assert (= (and start!82248 (is-ElementMatch!2452 r!15766)) b!914821))

(assert (= (and start!82248 (is-Concat!4285 r!15766)) b!914828))

(assert (= (and start!82248 (is-Star!2452 r!15766)) b!914822))

(assert (= (and start!82248 (is-Union!2452 r!15766)) b!914820))

(assert (= (and start!82248 (is-Cons!9666 s!10566)) b!914827))

(declare-fun m!1144961 () Bool)

(assert (=> b!914826 m!1144961))

(declare-fun m!1144963 () Bool)

(assert (=> b!914826 m!1144963))

(declare-fun m!1144965 () Bool)

(assert (=> b!914826 m!1144965))

(declare-fun m!1144967 () Bool)

(assert (=> b!914826 m!1144967))

(assert (=> b!914826 m!1144967))

(declare-fun m!1144969 () Bool)

(assert (=> b!914826 m!1144969))

(assert (=> b!914826 m!1144965))

(declare-fun m!1144971 () Bool)

(assert (=> b!914826 m!1144971))

(declare-fun m!1144973 () Bool)

(assert (=> b!914826 m!1144973))

(declare-fun m!1144975 () Bool)

(assert (=> b!914823 m!1144975))

(declare-fun m!1144977 () Bool)

(assert (=> b!914824 m!1144977))

(declare-fun m!1144979 () Bool)

(assert (=> b!914824 m!1144979))

(declare-fun m!1144981 () Bool)

(assert (=> b!914824 m!1144981))

(declare-fun m!1144983 () Bool)

(assert (=> start!82248 m!1144983))

(declare-fun m!1144985 () Bool)

(assert (=> b!914825 m!1144985))

(declare-fun m!1144987 () Bool)

(assert (=> b!914825 m!1144987))

(declare-fun m!1144989 () Bool)

(assert (=> b!914825 m!1144989))

(push 1)

(assert (not b!914822))

(assert (not b!914823))

(assert (not b!914824))

(assert (not b!914828))

(assert (not b!914826))

(assert (not b!914820))

(assert (not start!82248))

(assert (not b!914825))

(assert (not b!914827))

(assert tp_is_empty!4547)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!235995 () Bool)

(declare-fun b!914915 () Bool)

(assert (= bs!235995 (and b!914915 b!914826)))

(declare-fun lambda!29397 () Int)

(assert (=> bs!235995 (not (= lambda!29397 lambda!29383))))

(assert (=> bs!235995 (not (= lambda!29397 lambda!29384))))

(assert (=> b!914915 true))

(assert (=> b!914915 true))

(declare-fun bs!235996 () Bool)

(declare-fun b!914916 () Bool)

(assert (= bs!235996 (and b!914916 b!914826)))

(declare-fun lambda!29398 () Int)

(assert (=> bs!235996 (not (= lambda!29398 lambda!29383))))

(assert (=> bs!235996 (= lambda!29398 lambda!29384)))

(declare-fun bs!235997 () Bool)

(assert (= bs!235997 (and b!914916 b!914915)))

(assert (=> bs!235997 (not (= lambda!29398 lambda!29397))))

(assert (=> b!914916 true))

(assert (=> b!914916 true))

(declare-fun b!914908 () Bool)

(declare-fun e!596360 () Bool)

(assert (=> b!914908 (= e!596360 (matchRSpec!253 (regTwo!5417 r!15766) s!10566))))

(declare-fun b!914909 () Bool)

(declare-fun e!596361 () Bool)

(assert (=> b!914909 (= e!596361 e!596360)))

(declare-fun res!416016 () Bool)

(assert (=> b!914909 (= res!416016 (matchRSpec!253 (regOne!5417 r!15766) s!10566))))

(assert (=> b!914909 (=> res!416016 e!596360)))

(declare-fun b!914910 () Bool)

(declare-fun e!596358 () Bool)

(declare-fun call!55199 () Bool)

(assert (=> b!914910 (= e!596358 call!55199)))

(declare-fun b!914911 () Bool)

(declare-fun e!596356 () Bool)

(assert (=> b!914911 (= e!596361 e!596356)))

(declare-fun c!148239 () Bool)

(assert (=> b!914911 (= c!148239 (is-Star!2452 r!15766))))

(declare-fun d!279678 () Bool)

(declare-fun c!148240 () Bool)

(assert (=> d!279678 (= c!148240 (is-EmptyExpr!2452 r!15766))))

(assert (=> d!279678 (= (matchRSpec!253 r!15766 s!10566) e!596358)))

(declare-fun b!914912 () Bool)

(declare-fun c!148237 () Bool)

(assert (=> b!914912 (= c!148237 (is-Union!2452 r!15766))))

(declare-fun e!596362 () Bool)

(assert (=> b!914912 (= e!596362 e!596361)))

(declare-fun b!914913 () Bool)

(declare-fun res!416015 () Bool)

(declare-fun e!596359 () Bool)

(assert (=> b!914913 (=> res!416015 e!596359)))

(assert (=> b!914913 (= res!416015 call!55199)))

(assert (=> b!914913 (= e!596356 e!596359)))

(declare-fun bm!55193 () Bool)

(declare-fun call!55198 () Bool)

(assert (=> bm!55193 (= call!55198 (Exists!223 (ite c!148239 lambda!29397 lambda!29398)))))

(declare-fun bm!55194 () Bool)

(assert (=> bm!55194 (= call!55199 (isEmpty!5893 s!10566))))

(declare-fun b!914914 () Bool)

(declare-fun e!596357 () Bool)

(assert (=> b!914914 (= e!596358 e!596357)))

(declare-fun res!416017 () Bool)

(assert (=> b!914914 (= res!416017 (not (is-EmptyLang!2452 r!15766)))))

(assert (=> b!914914 (=> (not res!416017) (not e!596357))))

(assert (=> b!914915 (= e!596359 call!55198)))

(assert (=> b!914916 (= e!596356 call!55198)))

(declare-fun b!914917 () Bool)

(declare-fun c!148238 () Bool)

(assert (=> b!914917 (= c!148238 (is-ElementMatch!2452 r!15766))))

(assert (=> b!914917 (= e!596357 e!596362)))

(declare-fun b!914918 () Bool)

(assert (=> b!914918 (= e!596362 (= s!10566 (Cons!9666 (c!148227 r!15766) Nil!9666)))))

(assert (= (and d!279678 c!148240) b!914910))

(assert (= (and d!279678 (not c!148240)) b!914914))

(assert (= (and b!914914 res!416017) b!914917))

(assert (= (and b!914917 c!148238) b!914918))

(assert (= (and b!914917 (not c!148238)) b!914912))

(assert (= (and b!914912 c!148237) b!914909))

(assert (= (and b!914912 (not c!148237)) b!914911))

(assert (= (and b!914909 (not res!416016)) b!914908))

(assert (= (and b!914911 c!148239) b!914913))

(assert (= (and b!914911 (not c!148239)) b!914916))

(assert (= (and b!914913 (not res!416015)) b!914915))

(assert (= (or b!914915 b!914916) bm!55193))

(assert (= (or b!914910 b!914913) bm!55194))

(declare-fun m!1145027 () Bool)

(assert (=> b!914908 m!1145027))

(declare-fun m!1145029 () Bool)

(assert (=> b!914909 m!1145029))

(declare-fun m!1145031 () Bool)

(assert (=> bm!55193 m!1145031))

(assert (=> bm!55194 m!1144963))

(assert (=> b!914825 d!279678))

(declare-fun b!914951 () Bool)

(declare-fun res!416044 () Bool)

(declare-fun e!596383 () Bool)

(assert (=> b!914951 (=> res!416044 e!596383)))

(declare-fun tail!1195 (List!9682) List!9682)

(assert (=> b!914951 (= res!416044 (not (isEmpty!5893 (tail!1195 s!10566))))))

(declare-fun b!914952 () Bool)

(declare-fun e!596385 () Bool)

(declare-fun head!1633 (List!9682) C!5474)

(assert (=> b!914952 (= e!596385 (= (head!1633 s!10566) (c!148227 r!15766)))))

(declare-fun b!914953 () Bool)

(declare-fun e!596380 () Bool)

(declare-fun derivativeStep!480 (Regex!2452 C!5474) Regex!2452)

(assert (=> b!914953 (= e!596380 (matchR!990 (derivativeStep!480 r!15766 (head!1633 s!10566)) (tail!1195 s!10566)))))

(declare-fun b!914954 () Bool)

(assert (=> b!914954 (= e!596383 (not (= (head!1633 s!10566) (c!148227 r!15766))))))

(declare-fun b!914955 () Bool)

(declare-fun res!416045 () Bool)

(assert (=> b!914955 (=> (not res!416045) (not e!596385))))

(assert (=> b!914955 (= res!416045 (isEmpty!5893 (tail!1195 s!10566)))))

(declare-fun d!279690 () Bool)

(declare-fun e!596382 () Bool)

(assert (=> d!279690 e!596382))

(declare-fun c!148247 () Bool)

(assert (=> d!279690 (= c!148247 (is-EmptyExpr!2452 r!15766))))

(declare-fun lt!337350 () Bool)

(assert (=> d!279690 (= lt!337350 e!596380)))

(declare-fun c!148248 () Bool)

(assert (=> d!279690 (= c!148248 (isEmpty!5893 s!10566))))

(assert (=> d!279690 (validRegex!921 r!15766)))

(assert (=> d!279690 (= (matchR!990 r!15766 s!10566) lt!337350)))

(declare-fun b!914956 () Bool)

(declare-fun call!55202 () Bool)

(assert (=> b!914956 (= e!596382 (= lt!337350 call!55202))))

(declare-fun b!914957 () Bool)

(declare-fun nullable!670 (Regex!2452) Bool)

(assert (=> b!914957 (= e!596380 (nullable!670 r!15766))))

(declare-fun b!914958 () Bool)

(declare-fun res!416040 () Bool)

(declare-fun e!596384 () Bool)

(assert (=> b!914958 (=> res!416040 e!596384)))

(assert (=> b!914958 (= res!416040 (not (is-ElementMatch!2452 r!15766)))))

(declare-fun e!596379 () Bool)

(assert (=> b!914958 (= e!596379 e!596384)))

(declare-fun b!914959 () Bool)

(declare-fun res!416042 () Bool)

(assert (=> b!914959 (=> (not res!416042) (not e!596385))))

(assert (=> b!914959 (= res!416042 (not call!55202))))

(declare-fun b!914960 () Bool)

(assert (=> b!914960 (= e!596382 e!596379)))

(declare-fun c!148249 () Bool)

(assert (=> b!914960 (= c!148249 (is-EmptyLang!2452 r!15766))))

(declare-fun b!914961 () Bool)

(declare-fun e!596381 () Bool)

(assert (=> b!914961 (= e!596384 e!596381)))

(declare-fun res!416039 () Bool)

(assert (=> b!914961 (=> (not res!416039) (not e!596381))))

(assert (=> b!914961 (= res!416039 (not lt!337350))))

(declare-fun b!914962 () Bool)

(assert (=> b!914962 (= e!596381 e!596383)))

(declare-fun res!416038 () Bool)

(assert (=> b!914962 (=> res!416038 e!596383)))

(assert (=> b!914962 (= res!416038 call!55202)))

(declare-fun b!914963 () Bool)

(assert (=> b!914963 (= e!596379 (not lt!337350))))

(declare-fun b!914964 () Bool)

(declare-fun res!416041 () Bool)

(assert (=> b!914964 (=> res!416041 e!596384)))

(assert (=> b!914964 (= res!416041 e!596385)))

(declare-fun res!416043 () Bool)

(assert (=> b!914964 (=> (not res!416043) (not e!596385))))

(assert (=> b!914964 (= res!416043 lt!337350)))

(declare-fun bm!55197 () Bool)

(assert (=> bm!55197 (= call!55202 (isEmpty!5893 s!10566))))

(assert (= (and d!279690 c!148248) b!914957))

(assert (= (and d!279690 (not c!148248)) b!914953))

(assert (= (and d!279690 c!148247) b!914956))

(assert (= (and d!279690 (not c!148247)) b!914960))

(assert (= (and b!914960 c!148249) b!914963))

(assert (= (and b!914960 (not c!148249)) b!914958))

(assert (= (and b!914958 (not res!416040)) b!914964))

(assert (= (and b!914964 res!416043) b!914959))

(assert (= (and b!914959 res!416042) b!914955))

(assert (= (and b!914955 res!416045) b!914952))

(assert (= (and b!914964 (not res!416041)) b!914961))

(assert (= (and b!914961 res!416039) b!914962))

(assert (= (and b!914962 (not res!416038)) b!914951))

(assert (= (and b!914951 (not res!416044)) b!914954))

(assert (= (or b!914956 b!914959 b!914962) bm!55197))

(assert (=> d!279690 m!1144963))

(assert (=> d!279690 m!1144983))

(assert (=> bm!55197 m!1144963))

(declare-fun m!1145033 () Bool)

(assert (=> b!914952 m!1145033))

(assert (=> b!914954 m!1145033))

(declare-fun m!1145035 () Bool)

(assert (=> b!914955 m!1145035))

(assert (=> b!914955 m!1145035))

(declare-fun m!1145037 () Bool)

(assert (=> b!914955 m!1145037))

(assert (=> b!914953 m!1145033))

(assert (=> b!914953 m!1145033))

(declare-fun m!1145039 () Bool)

(assert (=> b!914953 m!1145039))

(assert (=> b!914953 m!1145035))

(assert (=> b!914953 m!1145039))

(assert (=> b!914953 m!1145035))

(declare-fun m!1145041 () Bool)

(assert (=> b!914953 m!1145041))

(assert (=> b!914951 m!1145035))

(assert (=> b!914951 m!1145035))

(assert (=> b!914951 m!1145037))

(declare-fun m!1145043 () Bool)

(assert (=> b!914957 m!1145043))

(assert (=> b!914825 d!279690))

(declare-fun d!279692 () Bool)

(assert (=> d!279692 (= (matchR!990 r!15766 s!10566) (matchRSpec!253 r!15766 s!10566))))

(declare-fun lt!337354 () Unit!14523)

(declare-fun choose!5577 (Regex!2452 List!9682) Unit!14523)

(assert (=> d!279692 (= lt!337354 (choose!5577 r!15766 s!10566))))

(assert (=> d!279692 (validRegex!921 r!15766)))

(assert (=> d!279692 (= (mainMatchTheorem!253 r!15766 s!10566) lt!337354)))

(declare-fun bs!236000 () Bool)

(assert (= bs!236000 d!279692))

(assert (=> bs!236000 m!1144987))

(assert (=> bs!236000 m!1144985))

(declare-fun m!1145049 () Bool)

(assert (=> bs!236000 m!1145049))

(assert (=> bs!236000 m!1144983))

(assert (=> b!914825 d!279692))

(declare-fun d!279696 () Bool)

(assert (=> d!279696 (= (isEmpty!5893 s!10566) (is-Nil!9666 s!10566))))

(assert (=> b!914826 d!279696))

(declare-fun d!279698 () Bool)

(declare-fun isEmpty!5895 (Option!2087) Bool)

(assert (=> d!279698 (= (isDefined!1729 (findConcatSeparation!193 (regOne!5416 r!15766) (regTwo!5416 r!15766) Nil!9666 s!10566 s!10566)) (not (isEmpty!5895 (findConcatSeparation!193 (regOne!5416 r!15766) (regTwo!5416 r!15766) Nil!9666 s!10566 s!10566))))))

(declare-fun bs!236001 () Bool)

(assert (= bs!236001 d!279698))

(assert (=> bs!236001 m!1144967))

(declare-fun m!1145051 () Bool)

(assert (=> bs!236001 m!1145051))

(assert (=> b!914826 d!279698))

(declare-fun bs!236002 () Bool)

(declare-fun d!279700 () Bool)

(assert (= bs!236002 (and d!279700 b!914826)))

(declare-fun lambda!29404 () Int)

(assert (=> bs!236002 (= lambda!29404 lambda!29383)))

(assert (=> bs!236002 (not (= lambda!29404 lambda!29384))))

(declare-fun bs!236003 () Bool)

(assert (= bs!236003 (and d!279700 b!914915)))

(assert (=> bs!236003 (not (= lambda!29404 lambda!29397))))

(declare-fun bs!236004 () Bool)

(assert (= bs!236004 (and d!279700 b!914916)))

(assert (=> bs!236004 (not (= lambda!29404 lambda!29398))))

(assert (=> d!279700 true))

(assert (=> d!279700 true))

(assert (=> d!279700 true))

(assert (=> d!279700 (= (isDefined!1729 (findConcatSeparation!193 (regOne!5416 r!15766) (regTwo!5416 r!15766) Nil!9666 s!10566 s!10566)) (Exists!223 lambda!29404))))

(declare-fun lt!337357 () Unit!14523)

(declare-fun choose!5578 (Regex!2452 Regex!2452 List!9682) Unit!14523)

(assert (=> d!279700 (= lt!337357 (choose!5578 (regOne!5416 r!15766) (regTwo!5416 r!15766) s!10566))))

(assert (=> d!279700 (validRegex!921 (regOne!5416 r!15766))))

(assert (=> d!279700 (= (lemmaFindConcatSeparationEquivalentToExists!193 (regOne!5416 r!15766) (regTwo!5416 r!15766) s!10566) lt!337357)))

(declare-fun bs!236005 () Bool)

(assert (= bs!236005 d!279700))

(declare-fun m!1145053 () Bool)

(assert (=> bs!236005 m!1145053))

(assert (=> bs!236005 m!1144967))

(assert (=> bs!236005 m!1144969))

(assert (=> bs!236005 m!1144967))

(assert (=> bs!236005 m!1144975))

(declare-fun m!1145055 () Bool)

(assert (=> bs!236005 m!1145055))

(assert (=> b!914826 d!279700))

(declare-fun b!915005 () Bool)

(declare-fun e!596410 () Bool)

(assert (=> b!915005 (= e!596410 (matchR!990 (regTwo!5416 r!15766) s!10566))))

(declare-fun b!915006 () Bool)

(declare-fun e!596412 () Bool)

(declare-fun lt!337371 () Option!2087)

(declare-fun ++!2548 (List!9682 List!9682) List!9682)

(declare-fun get!3130 (Option!2087) tuple2!10890)

(assert (=> b!915006 (= e!596412 (= (++!2548 (_1!6271 (get!3130 lt!337371)) (_2!6271 (get!3130 lt!337371))) s!10566))))

(declare-fun b!915007 () Bool)

(declare-fun lt!337370 () Unit!14523)

(declare-fun lt!337372 () Unit!14523)

(assert (=> b!915007 (= lt!337370 lt!337372)))

(assert (=> b!915007 (= (++!2548 (++!2548 Nil!9666 (Cons!9666 (h!15067 s!10566) Nil!9666)) (t!100728 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!163 (List!9682 C!5474 List!9682 List!9682) Unit!14523)

(assert (=> b!915007 (= lt!337372 (lemmaMoveElementToOtherListKeepsConcatEq!163 Nil!9666 (h!15067 s!10566) (t!100728 s!10566) s!10566))))

(declare-fun e!596408 () Option!2087)

(assert (=> b!915007 (= e!596408 (findConcatSeparation!193 (regOne!5416 r!15766) (regTwo!5416 r!15766) (++!2548 Nil!9666 (Cons!9666 (h!15067 s!10566) Nil!9666)) (t!100728 s!10566) s!10566))))

(declare-fun b!915008 () Bool)

(declare-fun res!416070 () Bool)

(assert (=> b!915008 (=> (not res!416070) (not e!596412))))

(assert (=> b!915008 (= res!416070 (matchR!990 (regTwo!5416 r!15766) (_2!6271 (get!3130 lt!337371))))))

(declare-fun b!915009 () Bool)

(declare-fun e!596409 () Bool)

(assert (=> b!915009 (= e!596409 (not (isDefined!1729 lt!337371)))))

(declare-fun b!915010 () Bool)

(declare-fun res!416072 () Bool)

(assert (=> b!915010 (=> (not res!416072) (not e!596412))))

(assert (=> b!915010 (= res!416072 (matchR!990 (regOne!5416 r!15766) (_1!6271 (get!3130 lt!337371))))))

(declare-fun d!279702 () Bool)

(assert (=> d!279702 e!596409))

(declare-fun res!416074 () Bool)

(assert (=> d!279702 (=> res!416074 e!596409)))

(assert (=> d!279702 (= res!416074 e!596412)))

(declare-fun res!416073 () Bool)

(assert (=> d!279702 (=> (not res!416073) (not e!596412))))

(assert (=> d!279702 (= res!416073 (isDefined!1729 lt!337371))))

(declare-fun e!596411 () Option!2087)

(assert (=> d!279702 (= lt!337371 e!596411)))

(declare-fun c!148258 () Bool)

(assert (=> d!279702 (= c!148258 e!596410)))

(declare-fun res!416071 () Bool)

(assert (=> d!279702 (=> (not res!416071) (not e!596410))))

(assert (=> d!279702 (= res!416071 (matchR!990 (regOne!5416 r!15766) Nil!9666))))

(assert (=> d!279702 (validRegex!921 (regOne!5416 r!15766))))

(assert (=> d!279702 (= (findConcatSeparation!193 (regOne!5416 r!15766) (regTwo!5416 r!15766) Nil!9666 s!10566 s!10566) lt!337371)))

(declare-fun b!915011 () Bool)

(assert (=> b!915011 (= e!596411 e!596408)))

(declare-fun c!148259 () Bool)

(assert (=> b!915011 (= c!148259 (is-Nil!9666 s!10566))))

(declare-fun b!915012 () Bool)

(assert (=> b!915012 (= e!596408 None!2086)))

(declare-fun b!915013 () Bool)

(assert (=> b!915013 (= e!596411 (Some!2086 (tuple2!10891 Nil!9666 s!10566)))))

(assert (= (and d!279702 res!416071) b!915005))

(assert (= (and d!279702 c!148258) b!915013))

(assert (= (and d!279702 (not c!148258)) b!915011))

(assert (= (and b!915011 c!148259) b!915012))

(assert (= (and b!915011 (not c!148259)) b!915007))

(assert (= (and d!279702 res!416073) b!915010))

(assert (= (and b!915010 res!416072) b!915008))

(assert (= (and b!915008 res!416070) b!915006))

(assert (= (and d!279702 (not res!416074)) b!915009))

(declare-fun m!1145057 () Bool)

(assert (=> b!915007 m!1145057))

(assert (=> b!915007 m!1145057))

(declare-fun m!1145059 () Bool)

(assert (=> b!915007 m!1145059))

(declare-fun m!1145061 () Bool)

(assert (=> b!915007 m!1145061))

(assert (=> b!915007 m!1145057))

(declare-fun m!1145063 () Bool)

(assert (=> b!915007 m!1145063))

(declare-fun m!1145065 () Bool)

(assert (=> d!279702 m!1145065))

(declare-fun m!1145067 () Bool)

(assert (=> d!279702 m!1145067))

(assert (=> d!279702 m!1144975))

(assert (=> b!915009 m!1145065))

(declare-fun m!1145069 () Bool)

(assert (=> b!915010 m!1145069))

(declare-fun m!1145071 () Bool)

(assert (=> b!915010 m!1145071))

(declare-fun m!1145073 () Bool)

(assert (=> b!915005 m!1145073))

(assert (=> b!915008 m!1145069))

(declare-fun m!1145075 () Bool)

(assert (=> b!915008 m!1145075))

(assert (=> b!915006 m!1145069))

(declare-fun m!1145077 () Bool)

(assert (=> b!915006 m!1145077))

(assert (=> b!914826 d!279702))

(declare-fun bs!236006 () Bool)

(declare-fun d!279704 () Bool)

(assert (= bs!236006 (and d!279704 b!914826)))

(declare-fun lambda!29409 () Int)

(assert (=> bs!236006 (not (= lambda!29409 lambda!29384))))

(declare-fun bs!236007 () Bool)

(assert (= bs!236007 (and d!279704 d!279700)))

(assert (=> bs!236007 (= lambda!29409 lambda!29404)))

(declare-fun bs!236008 () Bool)

(assert (= bs!236008 (and d!279704 b!914915)))

(assert (=> bs!236008 (not (= lambda!29409 lambda!29397))))

(assert (=> bs!236006 (= lambda!29409 lambda!29383)))

(declare-fun bs!236009 () Bool)

(assert (= bs!236009 (and d!279704 b!914916)))

(assert (=> bs!236009 (not (= lambda!29409 lambda!29398))))

(assert (=> d!279704 true))

(assert (=> d!279704 true))

(assert (=> d!279704 true))

(declare-fun lambda!29410 () Int)

(assert (=> bs!236006 (= lambda!29410 lambda!29384)))

(assert (=> bs!236007 (not (= lambda!29410 lambda!29404))))

(assert (=> bs!236008 (not (= lambda!29410 lambda!29397))))

(assert (=> bs!236006 (not (= lambda!29410 lambda!29383))))

(declare-fun bs!236010 () Bool)

(assert (= bs!236010 d!279704))

(assert (=> bs!236010 (not (= lambda!29410 lambda!29409))))

(assert (=> bs!236009 (= lambda!29410 lambda!29398)))

(assert (=> d!279704 true))

(assert (=> d!279704 true))

(assert (=> d!279704 true))

(assert (=> d!279704 (= (Exists!223 lambda!29409) (Exists!223 lambda!29410))))

(declare-fun lt!337378 () Unit!14523)

(declare-fun choose!5579 (Regex!2452 Regex!2452 List!9682) Unit!14523)

(assert (=> d!279704 (= lt!337378 (choose!5579 (regOne!5416 r!15766) (regTwo!5416 r!15766) s!10566))))

(assert (=> d!279704 (validRegex!921 (regOne!5416 r!15766))))

(assert (=> d!279704 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!135 (regOne!5416 r!15766) (regTwo!5416 r!15766) s!10566) lt!337378)))

(declare-fun m!1145101 () Bool)

(assert (=> bs!236010 m!1145101))

(declare-fun m!1145103 () Bool)

(assert (=> bs!236010 m!1145103))

(declare-fun m!1145105 () Bool)

(assert (=> bs!236010 m!1145105))

(assert (=> bs!236010 m!1144975))

(assert (=> b!914826 d!279704))

(declare-fun d!279708 () Bool)

(declare-fun choose!5580 (Int) Bool)

(assert (=> d!279708 (= (Exists!223 lambda!29384) (choose!5580 lambda!29384))))

(declare-fun bs!236011 () Bool)

(assert (= bs!236011 d!279708))

(declare-fun m!1145107 () Bool)

(assert (=> bs!236011 m!1145107))

(assert (=> b!914826 d!279708))

(declare-fun d!279710 () Bool)

(assert (=> d!279710 (= (Exists!223 lambda!29383) (choose!5580 lambda!29383))))

(declare-fun bs!236012 () Bool)

(assert (= bs!236012 d!279710))

(declare-fun m!1145109 () Bool)

(assert (=> bs!236012 m!1145109))

(assert (=> b!914826 d!279710))

(declare-fun b!915049 () Bool)

(declare-fun e!596438 () Bool)

(declare-fun e!596437 () Bool)

(assert (=> b!915049 (= e!596438 e!596437)))

(declare-fun c!148267 () Bool)

(assert (=> b!915049 (= c!148267 (is-Star!2452 r!15766))))

(declare-fun bm!55204 () Bool)

(declare-fun call!55211 () Bool)

(declare-fun call!55210 () Bool)

(assert (=> bm!55204 (= call!55211 call!55210)))

(declare-fun b!915050 () Bool)

(declare-fun e!596439 () Bool)

(assert (=> b!915050 (= e!596439 call!55211)))

(declare-fun b!915051 () Bool)

(declare-fun e!596440 () Bool)

(assert (=> b!915051 (= e!596440 call!55210)))

(declare-fun b!915052 () Bool)

(declare-fun e!596441 () Bool)

(assert (=> b!915052 (= e!596441 e!596439)))

(declare-fun res!416100 () Bool)

(assert (=> b!915052 (=> (not res!416100) (not e!596439))))

(declare-fun call!55209 () Bool)

(assert (=> b!915052 (= res!416100 call!55209)))

(declare-fun b!915053 () Bool)

(assert (=> b!915053 (= e!596437 e!596440)))

(declare-fun res!416098 () Bool)

(assert (=> b!915053 (= res!416098 (not (nullable!670 (reg!2781 r!15766))))))

(assert (=> b!915053 (=> (not res!416098) (not e!596440))))

(declare-fun b!915054 () Bool)

(declare-fun e!596436 () Bool)

(assert (=> b!915054 (= e!596437 e!596436)))

(declare-fun c!148266 () Bool)

(assert (=> b!915054 (= c!148266 (is-Union!2452 r!15766))))

(declare-fun d!279712 () Bool)

(declare-fun res!416099 () Bool)

(assert (=> d!279712 (=> res!416099 e!596438)))

(assert (=> d!279712 (= res!416099 (is-ElementMatch!2452 r!15766))))

(assert (=> d!279712 (= (validRegex!921 r!15766) e!596438)))

(declare-fun bm!55205 () Bool)

(assert (=> bm!55205 (= call!55209 (validRegex!921 (ite c!148266 (regOne!5417 r!15766) (regOne!5416 r!15766))))))

(declare-fun b!915055 () Bool)

(declare-fun res!416102 () Bool)

(declare-fun e!596442 () Bool)

(assert (=> b!915055 (=> (not res!416102) (not e!596442))))

(assert (=> b!915055 (= res!416102 call!55209)))

(assert (=> b!915055 (= e!596436 e!596442)))

(declare-fun bm!55206 () Bool)

(assert (=> bm!55206 (= call!55210 (validRegex!921 (ite c!148267 (reg!2781 r!15766) (ite c!148266 (regTwo!5417 r!15766) (regTwo!5416 r!15766)))))))

(declare-fun b!915056 () Bool)

(declare-fun res!416101 () Bool)

(assert (=> b!915056 (=> res!416101 e!596441)))

(assert (=> b!915056 (= res!416101 (not (is-Concat!4285 r!15766)))))

(assert (=> b!915056 (= e!596436 e!596441)))

(declare-fun b!915057 () Bool)

(assert (=> b!915057 (= e!596442 call!55211)))

(assert (= (and d!279712 (not res!416099)) b!915049))

(assert (= (and b!915049 c!148267) b!915053))

(assert (= (and b!915049 (not c!148267)) b!915054))

(assert (= (and b!915053 res!416098) b!915051))

(assert (= (and b!915054 c!148266) b!915055))

(assert (= (and b!915054 (not c!148266)) b!915056))

(assert (= (and b!915055 res!416102) b!915057))

(assert (= (and b!915056 (not res!416101)) b!915052))

(assert (= (and b!915052 res!416100) b!915050))

(assert (= (or b!915057 b!915050) bm!55204))

(assert (= (or b!915055 b!915052) bm!55205))

(assert (= (or b!915051 bm!55204) bm!55206))

(declare-fun m!1145111 () Bool)

(assert (=> b!915053 m!1145111))

(declare-fun m!1145113 () Bool)

(assert (=> bm!55205 m!1145113))

(declare-fun m!1145115 () Bool)

(assert (=> bm!55206 m!1145115))

(assert (=> start!82248 d!279712))

(declare-fun b!915058 () Bool)

(declare-fun e!596445 () Bool)

(declare-fun e!596444 () Bool)

(assert (=> b!915058 (= e!596445 e!596444)))

(declare-fun c!148269 () Bool)

(assert (=> b!915058 (= c!148269 (is-Star!2452 (regOne!5416 r!15766)))))

(declare-fun bm!55207 () Bool)

(declare-fun call!55214 () Bool)

(declare-fun call!55213 () Bool)

(assert (=> bm!55207 (= call!55214 call!55213)))

(declare-fun b!915059 () Bool)

(declare-fun e!596446 () Bool)

(assert (=> b!915059 (= e!596446 call!55214)))

(declare-fun b!915060 () Bool)

(declare-fun e!596447 () Bool)

(assert (=> b!915060 (= e!596447 call!55213)))

(declare-fun b!915061 () Bool)

(declare-fun e!596448 () Bool)

(assert (=> b!915061 (= e!596448 e!596446)))

(declare-fun res!416105 () Bool)

(assert (=> b!915061 (=> (not res!416105) (not e!596446))))

(declare-fun call!55212 () Bool)

(assert (=> b!915061 (= res!416105 call!55212)))

(declare-fun b!915062 () Bool)

(assert (=> b!915062 (= e!596444 e!596447)))

(declare-fun res!416103 () Bool)

(assert (=> b!915062 (= res!416103 (not (nullable!670 (reg!2781 (regOne!5416 r!15766)))))))

(assert (=> b!915062 (=> (not res!416103) (not e!596447))))

(declare-fun b!915063 () Bool)

(declare-fun e!596443 () Bool)

(assert (=> b!915063 (= e!596444 e!596443)))

(declare-fun c!148268 () Bool)

(assert (=> b!915063 (= c!148268 (is-Union!2452 (regOne!5416 r!15766)))))

(declare-fun d!279714 () Bool)

(declare-fun res!416104 () Bool)

(assert (=> d!279714 (=> res!416104 e!596445)))

(assert (=> d!279714 (= res!416104 (is-ElementMatch!2452 (regOne!5416 r!15766)))))

(assert (=> d!279714 (= (validRegex!921 (regOne!5416 r!15766)) e!596445)))

(declare-fun bm!55208 () Bool)

(assert (=> bm!55208 (= call!55212 (validRegex!921 (ite c!148268 (regOne!5417 (regOne!5416 r!15766)) (regOne!5416 (regOne!5416 r!15766)))))))

(declare-fun b!915064 () Bool)

(declare-fun res!416107 () Bool)

(declare-fun e!596449 () Bool)

(assert (=> b!915064 (=> (not res!416107) (not e!596449))))

(assert (=> b!915064 (= res!416107 call!55212)))

(assert (=> b!915064 (= e!596443 e!596449)))

(declare-fun bm!55209 () Bool)

(assert (=> bm!55209 (= call!55213 (validRegex!921 (ite c!148269 (reg!2781 (regOne!5416 r!15766)) (ite c!148268 (regTwo!5417 (regOne!5416 r!15766)) (regTwo!5416 (regOne!5416 r!15766))))))))

(declare-fun b!915065 () Bool)

(declare-fun res!416106 () Bool)

(assert (=> b!915065 (=> res!416106 e!596448)))

(assert (=> b!915065 (= res!416106 (not (is-Concat!4285 (regOne!5416 r!15766))))))

(assert (=> b!915065 (= e!596443 e!596448)))

(declare-fun b!915066 () Bool)

(assert (=> b!915066 (= e!596449 call!55214)))

(assert (= (and d!279714 (not res!416104)) b!915058))

(assert (= (and b!915058 c!148269) b!915062))

(assert (= (and b!915058 (not c!148269)) b!915063))

(assert (= (and b!915062 res!416103) b!915060))

(assert (= (and b!915063 c!148268) b!915064))

(assert (= (and b!915063 (not c!148268)) b!915065))

(assert (= (and b!915064 res!416107) b!915066))

(assert (= (and b!915065 (not res!416106)) b!915061))

(assert (= (and b!915061 res!416105) b!915059))

(assert (= (or b!915066 b!915059) bm!55207))

(assert (= (or b!915064 b!915061) bm!55208))

(assert (= (or b!915060 bm!55207) bm!55209))

(declare-fun m!1145117 () Bool)

(assert (=> b!915062 m!1145117))

(declare-fun m!1145119 () Bool)

(assert (=> bm!55208 m!1145119))

(declare-fun m!1145121 () Bool)

(assert (=> bm!55209 m!1145121))

(assert (=> b!914823 d!279714))

(declare-fun b!915067 () Bool)

(declare-fun res!416114 () Bool)

(declare-fun e!596454 () Bool)

(assert (=> b!915067 (=> res!416114 e!596454)))

(assert (=> b!915067 (= res!416114 (not (isEmpty!5893 (tail!1195 s!10566))))))

(declare-fun b!915068 () Bool)

(declare-fun e!596456 () Bool)

(assert (=> b!915068 (= e!596456 (= (head!1633 s!10566) (c!148227 (Concat!4285 (removeUselessConcat!129 (regOne!5416 r!15766)) (removeUselessConcat!129 (regTwo!5416 r!15766))))))))

(declare-fun b!915069 () Bool)

(declare-fun e!596451 () Bool)

(assert (=> b!915069 (= e!596451 (matchR!990 (derivativeStep!480 (Concat!4285 (removeUselessConcat!129 (regOne!5416 r!15766)) (removeUselessConcat!129 (regTwo!5416 r!15766))) (head!1633 s!10566)) (tail!1195 s!10566)))))

(declare-fun b!915070 () Bool)

(assert (=> b!915070 (= e!596454 (not (= (head!1633 s!10566) (c!148227 (Concat!4285 (removeUselessConcat!129 (regOne!5416 r!15766)) (removeUselessConcat!129 (regTwo!5416 r!15766)))))))))

(declare-fun b!915071 () Bool)

(declare-fun res!416115 () Bool)

(assert (=> b!915071 (=> (not res!416115) (not e!596456))))

(assert (=> b!915071 (= res!416115 (isEmpty!5893 (tail!1195 s!10566)))))

(declare-fun d!279716 () Bool)

(declare-fun e!596453 () Bool)

(assert (=> d!279716 e!596453))

(declare-fun c!148270 () Bool)

(assert (=> d!279716 (= c!148270 (is-EmptyExpr!2452 (Concat!4285 (removeUselessConcat!129 (regOne!5416 r!15766)) (removeUselessConcat!129 (regTwo!5416 r!15766)))))))

(declare-fun lt!337379 () Bool)

(assert (=> d!279716 (= lt!337379 e!596451)))

(declare-fun c!148271 () Bool)

(assert (=> d!279716 (= c!148271 (isEmpty!5893 s!10566))))

(assert (=> d!279716 (validRegex!921 (Concat!4285 (removeUselessConcat!129 (regOne!5416 r!15766)) (removeUselessConcat!129 (regTwo!5416 r!15766))))))

(assert (=> d!279716 (= (matchR!990 (Concat!4285 (removeUselessConcat!129 (regOne!5416 r!15766)) (removeUselessConcat!129 (regTwo!5416 r!15766))) s!10566) lt!337379)))

(declare-fun b!915072 () Bool)

(declare-fun call!55215 () Bool)

(assert (=> b!915072 (= e!596453 (= lt!337379 call!55215))))

(declare-fun b!915073 () Bool)

(assert (=> b!915073 (= e!596451 (nullable!670 (Concat!4285 (removeUselessConcat!129 (regOne!5416 r!15766)) (removeUselessConcat!129 (regTwo!5416 r!15766)))))))

(declare-fun b!915074 () Bool)

(declare-fun res!416110 () Bool)

(declare-fun e!596455 () Bool)

(assert (=> b!915074 (=> res!416110 e!596455)))

(assert (=> b!915074 (= res!416110 (not (is-ElementMatch!2452 (Concat!4285 (removeUselessConcat!129 (regOne!5416 r!15766)) (removeUselessConcat!129 (regTwo!5416 r!15766))))))))

(declare-fun e!596450 () Bool)

(assert (=> b!915074 (= e!596450 e!596455)))

(declare-fun b!915075 () Bool)

(declare-fun res!416112 () Bool)

(assert (=> b!915075 (=> (not res!416112) (not e!596456))))

(assert (=> b!915075 (= res!416112 (not call!55215))))

(declare-fun b!915076 () Bool)

(assert (=> b!915076 (= e!596453 e!596450)))

(declare-fun c!148272 () Bool)

(assert (=> b!915076 (= c!148272 (is-EmptyLang!2452 (Concat!4285 (removeUselessConcat!129 (regOne!5416 r!15766)) (removeUselessConcat!129 (regTwo!5416 r!15766)))))))

(declare-fun b!915077 () Bool)

(declare-fun e!596452 () Bool)

(assert (=> b!915077 (= e!596455 e!596452)))

(declare-fun res!416109 () Bool)

(assert (=> b!915077 (=> (not res!416109) (not e!596452))))

(assert (=> b!915077 (= res!416109 (not lt!337379))))

(declare-fun b!915078 () Bool)

(assert (=> b!915078 (= e!596452 e!596454)))

(declare-fun res!416108 () Bool)

(assert (=> b!915078 (=> res!416108 e!596454)))

(assert (=> b!915078 (= res!416108 call!55215)))

(declare-fun b!915079 () Bool)

(assert (=> b!915079 (= e!596450 (not lt!337379))))

(declare-fun b!915080 () Bool)

(declare-fun res!416111 () Bool)

(assert (=> b!915080 (=> res!416111 e!596455)))

(assert (=> b!915080 (= res!416111 e!596456)))

(declare-fun res!416113 () Bool)

(assert (=> b!915080 (=> (not res!416113) (not e!596456))))

(assert (=> b!915080 (= res!416113 lt!337379)))

(declare-fun bm!55210 () Bool)

(assert (=> bm!55210 (= call!55215 (isEmpty!5893 s!10566))))

(assert (= (and d!279716 c!148271) b!915073))

(assert (= (and d!279716 (not c!148271)) b!915069))

(assert (= (and d!279716 c!148270) b!915072))

(assert (= (and d!279716 (not c!148270)) b!915076))

(assert (= (and b!915076 c!148272) b!915079))

(assert (= (and b!915076 (not c!148272)) b!915074))

(assert (= (and b!915074 (not res!416110)) b!915080))

(assert (= (and b!915080 res!416113) b!915075))

(assert (= (and b!915075 res!416112) b!915071))

(assert (= (and b!915071 res!416115) b!915068))

(assert (= (and b!915080 (not res!416111)) b!915077))

(assert (= (and b!915077 res!416109) b!915078))

(assert (= (and b!915078 (not res!416108)) b!915067))

(assert (= (and b!915067 (not res!416114)) b!915070))

(assert (= (or b!915072 b!915075 b!915078) bm!55210))

(assert (=> d!279716 m!1144963))

(declare-fun m!1145123 () Bool)

(assert (=> d!279716 m!1145123))

(assert (=> bm!55210 m!1144963))

(assert (=> b!915068 m!1145033))

(assert (=> b!915070 m!1145033))

(assert (=> b!915071 m!1145035))

(assert (=> b!915071 m!1145035))

(assert (=> b!915071 m!1145037))

(assert (=> b!915069 m!1145033))

(assert (=> b!915069 m!1145033))

(declare-fun m!1145125 () Bool)

(assert (=> b!915069 m!1145125))

(assert (=> b!915069 m!1145035))

(assert (=> b!915069 m!1145125))

(assert (=> b!915069 m!1145035))

(declare-fun m!1145127 () Bool)

(assert (=> b!915069 m!1145127))

(assert (=> b!915067 m!1145035))

(assert (=> b!915067 m!1145035))

(assert (=> b!915067 m!1145037))

(declare-fun m!1145129 () Bool)

(assert (=> b!915073 m!1145129))

(assert (=> b!914824 d!279716))

(declare-fun bm!55221 () Bool)

(declare-fun call!55229 () Regex!2452)

(declare-fun call!55230 () Regex!2452)

(assert (=> bm!55221 (= call!55229 call!55230)))

(declare-fun b!915111 () Bool)

(declare-fun e!596476 () Regex!2452)

(declare-fun call!55227 () Regex!2452)

(assert (=> b!915111 (= e!596476 call!55227)))

(declare-fun b!915112 () Bool)

(declare-fun e!596478 () Regex!2452)

(declare-fun call!55226 () Regex!2452)

(assert (=> b!915112 (= e!596478 (Star!2452 call!55226))))

(declare-fun b!915113 () Bool)

(declare-fun e!596475 () Regex!2452)

(assert (=> b!915113 (= e!596475 (Union!2452 call!55229 call!55226))))

(declare-fun bm!55222 () Bool)

(assert (=> bm!55222 (= call!55230 call!55227)))

(declare-fun b!915114 () Bool)

(declare-fun e!596477 () Regex!2452)

(assert (=> b!915114 (= e!596477 call!55230)))

(declare-fun d!279718 () Bool)

(declare-fun e!596473 () Bool)

(assert (=> d!279718 e!596473))

(declare-fun res!416126 () Bool)

(assert (=> d!279718 (=> (not res!416126) (not e!596473))))

(declare-fun lt!337384 () Regex!2452)

(assert (=> d!279718 (= res!416126 (validRegex!921 lt!337384))))

(assert (=> d!279718 (= lt!337384 e!596476)))

(declare-fun c!148283 () Bool)

(assert (=> d!279718 (= c!148283 (and (is-Concat!4285 (regOne!5416 r!15766)) (is-EmptyExpr!2452 (regOne!5416 (regOne!5416 r!15766)))))))

(assert (=> d!279718 (validRegex!921 (regOne!5416 r!15766))))

(assert (=> d!279718 (= (removeUselessConcat!129 (regOne!5416 r!15766)) lt!337384)))

(declare-fun b!915115 () Bool)

(declare-fun e!596474 () Regex!2452)

(assert (=> b!915115 (= e!596474 e!596475)))

(declare-fun c!148286 () Bool)

(assert (=> b!915115 (= c!148286 (is-Union!2452 (regOne!5416 r!15766)))))

(declare-fun b!915116 () Bool)

(declare-fun c!148285 () Bool)

(assert (=> b!915116 (= c!148285 (is-Concat!4285 (regOne!5416 r!15766)))))

(assert (=> b!915116 (= e!596477 e!596474)))

(declare-fun bm!55223 () Bool)

(declare-fun call!55228 () Regex!2452)

(assert (=> bm!55223 (= call!55226 call!55228)))

(declare-fun c!148287 () Bool)

(declare-fun bm!55224 () Bool)

(assert (=> bm!55224 (= call!55227 (removeUselessConcat!129 (ite c!148283 (regTwo!5416 (regOne!5416 r!15766)) (ite c!148287 (regOne!5416 (regOne!5416 r!15766)) (ite c!148285 (regTwo!5416 (regOne!5416 r!15766)) (regOne!5417 (regOne!5416 r!15766)))))))))

(declare-fun b!915117 () Bool)

(assert (=> b!915117 (= e!596473 (= (nullable!670 lt!337384) (nullable!670 (regOne!5416 r!15766))))))

(declare-fun b!915118 () Bool)

(assert (=> b!915118 (= e!596478 (regOne!5416 r!15766))))

(declare-fun b!915119 () Bool)

(assert (=> b!915119 (= e!596476 e!596477)))

(assert (=> b!915119 (= c!148287 (and (is-Concat!4285 (regOne!5416 r!15766)) (is-EmptyExpr!2452 (regTwo!5416 (regOne!5416 r!15766)))))))

(declare-fun b!915120 () Bool)

(assert (=> b!915120 (= e!596474 (Concat!4285 call!55228 call!55229))))

(declare-fun b!915121 () Bool)

(declare-fun c!148284 () Bool)

(assert (=> b!915121 (= c!148284 (is-Star!2452 (regOne!5416 r!15766)))))

(assert (=> b!915121 (= e!596475 e!596478)))

(declare-fun bm!55225 () Bool)

(assert (=> bm!55225 (= call!55228 (removeUselessConcat!129 (ite c!148285 (regOne!5416 (regOne!5416 r!15766)) (ite c!148286 (regTwo!5417 (regOne!5416 r!15766)) (reg!2781 (regOne!5416 r!15766))))))))

(assert (= (and d!279718 c!148283) b!915111))

(assert (= (and d!279718 (not c!148283)) b!915119))

(assert (= (and b!915119 c!148287) b!915114))

(assert (= (and b!915119 (not c!148287)) b!915116))

(assert (= (and b!915116 c!148285) b!915120))

(assert (= (and b!915116 (not c!148285)) b!915115))

(assert (= (and b!915115 c!148286) b!915113))

(assert (= (and b!915115 (not c!148286)) b!915121))

(assert (= (and b!915121 c!148284) b!915112))

(assert (= (and b!915121 (not c!148284)) b!915118))

(assert (= (or b!915113 b!915112) bm!55223))

(assert (= (or b!915120 b!915113) bm!55221))

(assert (= (or b!915120 bm!55223) bm!55225))

(assert (= (or b!915114 bm!55221) bm!55222))

(assert (= (or b!915111 bm!55222) bm!55224))

(assert (= (and d!279718 res!416126) b!915117))

(declare-fun m!1145131 () Bool)

(assert (=> d!279718 m!1145131))

(assert (=> d!279718 m!1144975))

(declare-fun m!1145133 () Bool)

(assert (=> bm!55224 m!1145133))

(declare-fun m!1145135 () Bool)

(assert (=> b!915117 m!1145135))

(declare-fun m!1145137 () Bool)

(assert (=> b!915117 m!1145137))

(declare-fun m!1145139 () Bool)

(assert (=> bm!55225 m!1145139))

(assert (=> b!914824 d!279718))

(declare-fun bm!55226 () Bool)

(declare-fun call!55234 () Regex!2452)

(declare-fun call!55235 () Regex!2452)

(assert (=> bm!55226 (= call!55234 call!55235)))

(declare-fun b!915122 () Bool)

(declare-fun e!596482 () Regex!2452)

(declare-fun call!55232 () Regex!2452)

(assert (=> b!915122 (= e!596482 call!55232)))

(declare-fun b!915123 () Bool)

(declare-fun e!596484 () Regex!2452)

(declare-fun call!55231 () Regex!2452)

(assert (=> b!915123 (= e!596484 (Star!2452 call!55231))))

(declare-fun b!915124 () Bool)

(declare-fun e!596481 () Regex!2452)

(assert (=> b!915124 (= e!596481 (Union!2452 call!55234 call!55231))))

(declare-fun bm!55227 () Bool)

(assert (=> bm!55227 (= call!55235 call!55232)))

(declare-fun b!915125 () Bool)

(declare-fun e!596483 () Regex!2452)

(assert (=> b!915125 (= e!596483 call!55235)))

(declare-fun d!279720 () Bool)

(declare-fun e!596479 () Bool)

(assert (=> d!279720 e!596479))

(declare-fun res!416127 () Bool)

(assert (=> d!279720 (=> (not res!416127) (not e!596479))))

(declare-fun lt!337385 () Regex!2452)

(assert (=> d!279720 (= res!416127 (validRegex!921 lt!337385))))

(assert (=> d!279720 (= lt!337385 e!596482)))

(declare-fun c!148288 () Bool)

(assert (=> d!279720 (= c!148288 (and (is-Concat!4285 (regTwo!5416 r!15766)) (is-EmptyExpr!2452 (regOne!5416 (regTwo!5416 r!15766)))))))

(assert (=> d!279720 (validRegex!921 (regTwo!5416 r!15766))))

(assert (=> d!279720 (= (removeUselessConcat!129 (regTwo!5416 r!15766)) lt!337385)))

(declare-fun b!915126 () Bool)

(declare-fun e!596480 () Regex!2452)

(assert (=> b!915126 (= e!596480 e!596481)))

(declare-fun c!148291 () Bool)

(assert (=> b!915126 (= c!148291 (is-Union!2452 (regTwo!5416 r!15766)))))

(declare-fun b!915127 () Bool)

(declare-fun c!148290 () Bool)

(assert (=> b!915127 (= c!148290 (is-Concat!4285 (regTwo!5416 r!15766)))))

(assert (=> b!915127 (= e!596483 e!596480)))

(declare-fun bm!55228 () Bool)

(declare-fun call!55233 () Regex!2452)

(assert (=> bm!55228 (= call!55231 call!55233)))

(declare-fun c!148292 () Bool)

(declare-fun bm!55229 () Bool)

(assert (=> bm!55229 (= call!55232 (removeUselessConcat!129 (ite c!148288 (regTwo!5416 (regTwo!5416 r!15766)) (ite c!148292 (regOne!5416 (regTwo!5416 r!15766)) (ite c!148290 (regTwo!5416 (regTwo!5416 r!15766)) (regOne!5417 (regTwo!5416 r!15766)))))))))

(declare-fun b!915128 () Bool)

(assert (=> b!915128 (= e!596479 (= (nullable!670 lt!337385) (nullable!670 (regTwo!5416 r!15766))))))

(declare-fun b!915129 () Bool)

(assert (=> b!915129 (= e!596484 (regTwo!5416 r!15766))))

(declare-fun b!915130 () Bool)

(assert (=> b!915130 (= e!596482 e!596483)))

(assert (=> b!915130 (= c!148292 (and (is-Concat!4285 (regTwo!5416 r!15766)) (is-EmptyExpr!2452 (regTwo!5416 (regTwo!5416 r!15766)))))))

(declare-fun b!915131 () Bool)

(assert (=> b!915131 (= e!596480 (Concat!4285 call!55233 call!55234))))

(declare-fun b!915132 () Bool)

(declare-fun c!148289 () Bool)

(assert (=> b!915132 (= c!148289 (is-Star!2452 (regTwo!5416 r!15766)))))

(assert (=> b!915132 (= e!596481 e!596484)))

(declare-fun bm!55230 () Bool)

(assert (=> bm!55230 (= call!55233 (removeUselessConcat!129 (ite c!148290 (regOne!5416 (regTwo!5416 r!15766)) (ite c!148291 (regTwo!5417 (regTwo!5416 r!15766)) (reg!2781 (regTwo!5416 r!15766))))))))

(assert (= (and d!279720 c!148288) b!915122))

(assert (= (and d!279720 (not c!148288)) b!915130))

(assert (= (and b!915130 c!148292) b!915125))

(assert (= (and b!915130 (not c!148292)) b!915127))

(assert (= (and b!915127 c!148290) b!915131))

(assert (= (and b!915127 (not c!148290)) b!915126))

(assert (= (and b!915126 c!148291) b!915124))

(assert (= (and b!915126 (not c!148291)) b!915132))

(assert (= (and b!915132 c!148289) b!915123))

(assert (= (and b!915132 (not c!148289)) b!915129))

(assert (= (or b!915124 b!915123) bm!55228))

(assert (= (or b!915131 b!915124) bm!55226))

(assert (= (or b!915131 bm!55228) bm!55230))

(assert (= (or b!915125 bm!55226) bm!55227))

(assert (= (or b!915122 bm!55227) bm!55229))

(assert (= (and d!279720 res!416127) b!915128))

(declare-fun m!1145141 () Bool)

(assert (=> d!279720 m!1145141))

(declare-fun m!1145143 () Bool)

(assert (=> d!279720 m!1145143))

(declare-fun m!1145145 () Bool)

(assert (=> bm!55229 m!1145145))

(declare-fun m!1145147 () Bool)

(assert (=> b!915128 m!1145147))

(declare-fun m!1145149 () Bool)

(assert (=> b!915128 m!1145149))

(declare-fun m!1145151 () Bool)

(assert (=> bm!55230 m!1145151))

(assert (=> b!914824 d!279720))

(declare-fun b!915143 () Bool)

(declare-fun e!596487 () Bool)

(assert (=> b!915143 (= e!596487 tp_is_empty!4547)))

(declare-fun b!915146 () Bool)

(declare-fun tp!285797 () Bool)

(declare-fun tp!285795 () Bool)

(assert (=> b!915146 (= e!596487 (and tp!285797 tp!285795))))

(declare-fun b!915145 () Bool)

(declare-fun tp!285798 () Bool)

(assert (=> b!915145 (= e!596487 tp!285798)))

(assert (=> b!914820 (= tp!285764 e!596487)))

(declare-fun b!915144 () Bool)

(declare-fun tp!285796 () Bool)

(declare-fun tp!285799 () Bool)

(assert (=> b!915144 (= e!596487 (and tp!285796 tp!285799))))

(assert (= (and b!914820 (is-ElementMatch!2452 (regOne!5417 r!15766))) b!915143))

(assert (= (and b!914820 (is-Concat!4285 (regOne!5417 r!15766))) b!915144))

(assert (= (and b!914820 (is-Star!2452 (regOne!5417 r!15766))) b!915145))

(assert (= (and b!914820 (is-Union!2452 (regOne!5417 r!15766))) b!915146))

(declare-fun b!915147 () Bool)

(declare-fun e!596488 () Bool)

(assert (=> b!915147 (= e!596488 tp_is_empty!4547)))

(declare-fun b!915150 () Bool)

(declare-fun tp!285802 () Bool)

(declare-fun tp!285800 () Bool)

(assert (=> b!915150 (= e!596488 (and tp!285802 tp!285800))))

(declare-fun b!915149 () Bool)

(declare-fun tp!285803 () Bool)

(assert (=> b!915149 (= e!596488 tp!285803)))

(assert (=> b!914820 (= tp!285765 e!596488)))

(declare-fun b!915148 () Bool)

(declare-fun tp!285801 () Bool)

(declare-fun tp!285804 () Bool)

(assert (=> b!915148 (= e!596488 (and tp!285801 tp!285804))))

(assert (= (and b!914820 (is-ElementMatch!2452 (regTwo!5417 r!15766))) b!915147))

(assert (= (and b!914820 (is-Concat!4285 (regTwo!5417 r!15766))) b!915148))

(assert (= (and b!914820 (is-Star!2452 (regTwo!5417 r!15766))) b!915149))

(assert (= (and b!914820 (is-Union!2452 (regTwo!5417 r!15766))) b!915150))

(declare-fun b!915151 () Bool)

(declare-fun e!596489 () Bool)

(assert (=> b!915151 (= e!596489 tp_is_empty!4547)))

(declare-fun b!915154 () Bool)

(declare-fun tp!285807 () Bool)

(declare-fun tp!285805 () Bool)

(assert (=> b!915154 (= e!596489 (and tp!285807 tp!285805))))

(declare-fun b!915153 () Bool)

(declare-fun tp!285808 () Bool)

(assert (=> b!915153 (= e!596489 tp!285808)))

(assert (=> b!914822 (= tp!285763 e!596489)))

(declare-fun b!915152 () Bool)

(declare-fun tp!285806 () Bool)

(declare-fun tp!285809 () Bool)

(assert (=> b!915152 (= e!596489 (and tp!285806 tp!285809))))

(assert (= (and b!914822 (is-ElementMatch!2452 (reg!2781 r!15766))) b!915151))

(assert (= (and b!914822 (is-Concat!4285 (reg!2781 r!15766))) b!915152))

(assert (= (and b!914822 (is-Star!2452 (reg!2781 r!15766))) b!915153))

(assert (= (and b!914822 (is-Union!2452 (reg!2781 r!15766))) b!915154))

(declare-fun b!915159 () Bool)

(declare-fun e!596492 () Bool)

(declare-fun tp!285812 () Bool)

(assert (=> b!915159 (= e!596492 (and tp_is_empty!4547 tp!285812))))

(assert (=> b!914827 (= tp!285762 e!596492)))

(assert (= (and b!914827 (is-Cons!9666 (t!100728 s!10566))) b!915159))

(declare-fun b!915160 () Bool)

(declare-fun e!596493 () Bool)

(assert (=> b!915160 (= e!596493 tp_is_empty!4547)))

(declare-fun b!915163 () Bool)

(declare-fun tp!285815 () Bool)

(declare-fun tp!285813 () Bool)

(assert (=> b!915163 (= e!596493 (and tp!285815 tp!285813))))

(declare-fun b!915162 () Bool)

(declare-fun tp!285816 () Bool)

(assert (=> b!915162 (= e!596493 tp!285816)))

(assert (=> b!914828 (= tp!285761 e!596493)))

(declare-fun b!915161 () Bool)

(declare-fun tp!285814 () Bool)

(declare-fun tp!285817 () Bool)

(assert (=> b!915161 (= e!596493 (and tp!285814 tp!285817))))

(assert (= (and b!914828 (is-ElementMatch!2452 (regOne!5416 r!15766))) b!915160))

(assert (= (and b!914828 (is-Concat!4285 (regOne!5416 r!15766))) b!915161))

(assert (= (and b!914828 (is-Star!2452 (regOne!5416 r!15766))) b!915162))

(assert (= (and b!914828 (is-Union!2452 (regOne!5416 r!15766))) b!915163))

(declare-fun b!915164 () Bool)

(declare-fun e!596494 () Bool)

(assert (=> b!915164 (= e!596494 tp_is_empty!4547)))

(declare-fun b!915167 () Bool)

(declare-fun tp!285820 () Bool)

(declare-fun tp!285818 () Bool)

(assert (=> b!915167 (= e!596494 (and tp!285820 tp!285818))))

(declare-fun b!915166 () Bool)

(declare-fun tp!285821 () Bool)

(assert (=> b!915166 (= e!596494 tp!285821)))

(assert (=> b!914828 (= tp!285766 e!596494)))

(declare-fun b!915165 () Bool)

(declare-fun tp!285819 () Bool)

(declare-fun tp!285822 () Bool)

(assert (=> b!915165 (= e!596494 (and tp!285819 tp!285822))))

(assert (= (and b!914828 (is-ElementMatch!2452 (regTwo!5416 r!15766))) b!915164))

(assert (= (and b!914828 (is-Concat!4285 (regTwo!5416 r!15766))) b!915165))

(assert (= (and b!914828 (is-Star!2452 (regTwo!5416 r!15766))) b!915166))

(assert (= (and b!914828 (is-Union!2452 (regTwo!5416 r!15766))) b!915167))

(push 1)

(assert (not b!915007))

(assert (not b!915128))

(assert (not b!914957))

(assert (not b!915161))

(assert (not bm!55210))

(assert (not d!279708))

(assert (not bm!55230))

(assert (not b!915167))

(assert (not b!915166))

(assert (not bm!55193))

(assert (not d!279718))

(assert (not b!915144))

(assert (not b!915008))

(assert (not b!915117))

(assert (not b!915005))

(assert (not b!915073))

(assert (not d!279716))

(assert (not b!914953))

(assert (not bm!55194))

(assert (not b!915146))

(assert (not b!915153))

(assert (not b!915154))

(assert (not bm!55206))

(assert (not b!915068))

(assert (not b!915062))

(assert (not b!915006))

(assert (not b!914955))

(assert (not b!915163))

(assert (not bm!55225))

(assert (not d!279690))

(assert (not b!915067))

(assert (not bm!55205))

(assert (not d!279692))

(assert (not b!915071))

(assert (not b!915070))

(assert (not b!915165))

(assert (not d!279698))

(assert tp_is_empty!4547)

(assert (not b!914909))

(assert (not b!914908))

(assert (not bm!55229))

(assert (not b!915149))

(assert (not d!279702))

(assert (not b!914952))

(assert (not b!915053))

(assert (not b!915069))

(assert (not d!279700))

(assert (not b!915009))

(assert (not b!915152))

(assert (not b!915148))

(assert (not b!915010))

(assert (not bm!55208))

(assert (not d!279710))

(assert (not b!915159))

(assert (not bm!55197))

(assert (not bm!55209))

(assert (not b!914951))

(assert (not b!914954))

(assert (not b!915145))

(assert (not d!279720))

(assert (not b!915162))

(assert (not bm!55224))

(assert (not d!279704))

(assert (not b!915150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

