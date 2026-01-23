; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!287208 () Bool)

(assert start!287208)

(declare-fun bm!197242 () Bool)

(declare-fun c!486642 () Bool)

(declare-datatypes ((Unit!48857 0))(
  ( (Unit!48858) )
))
(declare-fun call!197250 () Unit!48857)

(declare-datatypes ((C!18664 0))(
  ( (C!18665 (val!11368 Int)) )
))
(declare-datatypes ((List!35104 0))(
  ( (Nil!34980) (Cons!34980 (h!40400 C!18664) (t!234169 List!35104)) )
))
(declare-fun s!11993 () List!35104)

(declare-datatypes ((Regex!9239 0))(
  ( (ElementMatch!9239 (c!486643 C!18664)) (Concat!14560 (regOne!18990 Regex!9239) (regTwo!18990 Regex!9239)) (EmptyExpr!9239) (Star!9239 (reg!9568 Regex!9239)) (EmptyLang!9239) (Union!9239 (regOne!18991 Regex!9239) (regTwo!18991 Regex!9239)) )
))
(declare-fun r!17423 () Regex!9239)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!72 (Regex!9239 Regex!9239 List!35104) Unit!48857)

(assert (=> bm!197242 (= call!197250 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!72 (ite c!486642 (regOne!18991 r!17423) (regTwo!18991 r!17423)) (ite c!486642 (regTwo!18991 r!17423) (regOne!18991 r!17423)) s!11993))))

(declare-fun call!197247 () Bool)

(declare-fun bm!197243 () Bool)

(declare-fun matchR!4121 (Regex!9239 List!35104) Bool)

(assert (=> bm!197243 (= call!197247 (matchR!4121 (ite c!486642 (Union!9239 (regOne!18991 r!17423) (regTwo!18991 r!17423)) (Union!9239 (regTwo!18991 r!17423) (regOne!18991 r!17423))) s!11993))))

(declare-fun res!1223918 () Bool)

(declare-fun e!1867278 () Bool)

(assert (=> start!287208 (=> (not res!1223918) (not e!1867278))))

(declare-fun validRegex!3972 (Regex!9239) Bool)

(assert (=> start!287208 (= res!1223918 (validRegex!3972 r!17423))))

(assert (=> start!287208 e!1867278))

(declare-fun e!1867275 () Bool)

(assert (=> start!287208 e!1867275))

(declare-fun e!1867280 () Bool)

(assert (=> start!287208 e!1867280))

(declare-fun b!2967239 () Bool)

(declare-fun e!1867281 () Bool)

(declare-fun lt!1035530 () Regex!9239)

(assert (=> b!2967239 (= e!1867281 (matchR!4121 lt!1035530 s!11993))))

(declare-fun b!2967240 () Bool)

(declare-fun e!1867276 () Bool)

(assert (=> b!2967240 (= e!1867276 true)))

(declare-fun lt!1035539 () Unit!48857)

(declare-fun e!1867279 () Unit!48857)

(assert (=> b!2967240 (= lt!1035539 e!1867279)))

(declare-fun lt!1035531 () Bool)

(assert (=> b!2967240 (= c!486642 lt!1035531)))

(assert (=> b!2967240 e!1867281))

(declare-fun res!1223916 () Bool)

(assert (=> b!2967240 (=> res!1223916 e!1867281)))

(assert (=> b!2967240 (= res!1223916 lt!1035531)))

(declare-fun lt!1035532 () Regex!9239)

(assert (=> b!2967240 (= lt!1035531 (matchR!4121 lt!1035532 s!11993))))

(declare-fun lt!1035537 () Unit!48857)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!288 (Regex!9239 Regex!9239 List!35104) Unit!48857)

(assert (=> b!2967240 (= lt!1035537 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!288 lt!1035532 lt!1035530 s!11993))))

(declare-fun b!2967241 () Bool)

(declare-fun tp!946408 () Bool)

(assert (=> b!2967241 (= e!1867275 tp!946408)))

(declare-fun b!2967242 () Bool)

(declare-fun res!1223915 () Bool)

(assert (=> b!2967242 (=> res!1223915 e!1867276)))

(assert (=> b!2967242 (= res!1223915 (not (matchR!4121 (Union!9239 lt!1035532 lt!1035530) s!11993)))))

(declare-fun b!2967243 () Bool)

(declare-fun lt!1035529 () Unit!48857)

(assert (=> b!2967243 (= e!1867279 lt!1035529)))

(declare-fun lt!1035540 () Unit!48857)

(declare-fun call!197248 () Unit!48857)

(assert (=> b!2967243 (= lt!1035540 call!197248)))

(declare-fun call!197249 () Bool)

(assert (=> b!2967243 call!197249))

(assert (=> b!2967243 (= lt!1035529 call!197250)))

(assert (=> b!2967243 call!197247))

(declare-fun b!2967244 () Bool)

(declare-fun tp!946412 () Bool)

(declare-fun tp!946413 () Bool)

(assert (=> b!2967244 (= e!1867275 (and tp!946412 tp!946413))))

(declare-fun bm!197244 () Bool)

(assert (=> bm!197244 (= call!197249 (matchR!4121 (ite c!486642 (regOne!18991 r!17423) (regTwo!18991 r!17423)) s!11993))))

(declare-fun bm!197245 () Bool)

(declare-fun lemmaSimplifySound!156 (Regex!9239 List!35104) Unit!48857)

(assert (=> bm!197245 (= call!197248 (lemmaSimplifySound!156 (ite c!486642 (regOne!18991 r!17423) (regTwo!18991 r!17423)) s!11993))))

(declare-fun b!2967245 () Bool)

(declare-fun tp!946411 () Bool)

(declare-fun tp!946409 () Bool)

(assert (=> b!2967245 (= e!1867275 (and tp!946411 tp!946409))))

(declare-fun b!2967246 () Bool)

(declare-fun tp_is_empty!16041 () Bool)

(assert (=> b!2967246 (= e!1867275 tp_is_empty!16041)))

(declare-fun b!2967247 () Bool)

(declare-fun lt!1035538 () Unit!48857)

(assert (=> b!2967247 (= e!1867279 lt!1035538)))

(declare-fun lt!1035536 () Unit!48857)

(assert (=> b!2967247 (= lt!1035536 call!197248)))

(assert (=> b!2967247 (= call!197249 (matchR!4121 lt!1035530 s!11993))))

(declare-fun lt!1035533 () Unit!48857)

(assert (=> b!2967247 (= lt!1035533 call!197250)))

(assert (=> b!2967247 call!197247))

(declare-fun lemmaReversedUnionAcceptsSameString!22 (Regex!9239 Regex!9239 List!35104) Unit!48857)

(assert (=> b!2967247 (= lt!1035538 (lemmaReversedUnionAcceptsSameString!22 (regTwo!18991 r!17423) (regOne!18991 r!17423) s!11993))))

(assert (=> b!2967247 (matchR!4121 (Union!9239 (regOne!18991 r!17423) (regTwo!18991 r!17423)) s!11993)))

(declare-fun b!2967248 () Bool)

(declare-fun e!1867277 () Bool)

(assert (=> b!2967248 (= e!1867278 (not e!1867277))))

(declare-fun res!1223913 () Bool)

(assert (=> b!2967248 (=> res!1223913 e!1867277)))

(declare-fun lt!1035535 () Bool)

(get-info :version)

(assert (=> b!2967248 (= res!1223913 (or lt!1035535 ((_ is Concat!14560) r!17423) (not ((_ is Union!9239) r!17423))))))

(declare-fun matchRSpec!1376 (Regex!9239 List!35104) Bool)

(assert (=> b!2967248 (= lt!1035535 (matchRSpec!1376 r!17423 s!11993))))

(assert (=> b!2967248 (= lt!1035535 (matchR!4121 r!17423 s!11993))))

(declare-fun lt!1035534 () Unit!48857)

(declare-fun mainMatchTheorem!1376 (Regex!9239 List!35104) Unit!48857)

(assert (=> b!2967248 (= lt!1035534 (mainMatchTheorem!1376 r!17423 s!11993))))

(declare-fun b!2967249 () Bool)

(assert (=> b!2967249 (= e!1867277 e!1867276)))

(declare-fun res!1223914 () Bool)

(assert (=> b!2967249 (=> res!1223914 e!1867276)))

(declare-fun isEmptyLang!355 (Regex!9239) Bool)

(assert (=> b!2967249 (= res!1223914 (isEmptyLang!355 lt!1035532))))

(declare-fun simplify!242 (Regex!9239) Regex!9239)

(assert (=> b!2967249 (= lt!1035530 (simplify!242 (regTwo!18991 r!17423)))))

(assert (=> b!2967249 (= lt!1035532 (simplify!242 (regOne!18991 r!17423)))))

(declare-fun b!2967250 () Bool)

(declare-fun res!1223917 () Bool)

(assert (=> b!2967250 (=> res!1223917 e!1867276)))

(assert (=> b!2967250 (= res!1223917 (isEmptyLang!355 lt!1035530))))

(declare-fun b!2967251 () Bool)

(declare-fun tp!946410 () Bool)

(assert (=> b!2967251 (= e!1867280 (and tp_is_empty!16041 tp!946410))))

(assert (= (and start!287208 res!1223918) b!2967248))

(assert (= (and b!2967248 (not res!1223913)) b!2967249))

(assert (= (and b!2967249 (not res!1223914)) b!2967250))

(assert (= (and b!2967250 (not res!1223917)) b!2967242))

(assert (= (and b!2967242 (not res!1223915)) b!2967240))

(assert (= (and b!2967240 (not res!1223916)) b!2967239))

(assert (= (and b!2967240 c!486642) b!2967243))

(assert (= (and b!2967240 (not c!486642)) b!2967247))

(assert (= (or b!2967243 b!2967247) bm!197242))

(assert (= (or b!2967243 b!2967247) bm!197245))

(assert (= (or b!2967243 b!2967247) bm!197243))

(assert (= (or b!2967243 b!2967247) bm!197244))

(assert (= (and start!287208 ((_ is ElementMatch!9239) r!17423)) b!2967246))

(assert (= (and start!287208 ((_ is Concat!14560) r!17423)) b!2967244))

(assert (= (and start!287208 ((_ is Star!9239) r!17423)) b!2967241))

(assert (= (and start!287208 ((_ is Union!9239) r!17423)) b!2967245))

(assert (= (and start!287208 ((_ is Cons!34980) s!11993)) b!2967251))

(declare-fun m!3336921 () Bool)

(assert (=> start!287208 m!3336921))

(declare-fun m!3336923 () Bool)

(assert (=> bm!197244 m!3336923))

(declare-fun m!3336925 () Bool)

(assert (=> b!2967248 m!3336925))

(declare-fun m!3336927 () Bool)

(assert (=> b!2967248 m!3336927))

(declare-fun m!3336929 () Bool)

(assert (=> b!2967248 m!3336929))

(declare-fun m!3336931 () Bool)

(assert (=> b!2967240 m!3336931))

(declare-fun m!3336933 () Bool)

(assert (=> b!2967240 m!3336933))

(declare-fun m!3336935 () Bool)

(assert (=> b!2967249 m!3336935))

(declare-fun m!3336937 () Bool)

(assert (=> b!2967249 m!3336937))

(declare-fun m!3336939 () Bool)

(assert (=> b!2967249 m!3336939))

(declare-fun m!3336941 () Bool)

(assert (=> bm!197242 m!3336941))

(declare-fun m!3336943 () Bool)

(assert (=> bm!197245 m!3336943))

(declare-fun m!3336945 () Bool)

(assert (=> b!2967239 m!3336945))

(assert (=> b!2967247 m!3336945))

(declare-fun m!3336947 () Bool)

(assert (=> b!2967247 m!3336947))

(declare-fun m!3336949 () Bool)

(assert (=> b!2967247 m!3336949))

(declare-fun m!3336951 () Bool)

(assert (=> b!2967250 m!3336951))

(declare-fun m!3336953 () Bool)

(assert (=> bm!197243 m!3336953))

(declare-fun m!3336955 () Bool)

(assert (=> b!2967242 m!3336955))

(check-sat (not b!2967241) (not b!2967249) (not b!2967242) (not b!2967244) (not start!287208) (not b!2967240) (not b!2967250) (not bm!197244) (not b!2967247) tp_is_empty!16041 (not b!2967251) (not bm!197245) (not b!2967248) (not bm!197242) (not b!2967245) (not bm!197243) (not b!2967239))
(check-sat)
