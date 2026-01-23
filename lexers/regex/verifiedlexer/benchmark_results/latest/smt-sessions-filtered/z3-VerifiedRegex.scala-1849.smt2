; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92002 () Bool)

(assert start!92002)

(declare-fun b!1081981 () Bool)

(assert (=> b!1081981 true))

(assert (=> b!1081981 true))

(assert (=> b!1081981 true))

(declare-fun lambda!39296 () Int)

(declare-fun lambda!39295 () Int)

(assert (=> b!1081981 (not (= lambda!39296 lambda!39295))))

(assert (=> b!1081981 true))

(assert (=> b!1081981 true))

(assert (=> b!1081981 true))

(declare-fun bs!256261 () Bool)

(declare-fun b!1081985 () Bool)

(assert (= bs!256261 (and b!1081985 b!1081981)))

(declare-datatypes ((C!6484 0))(
  ( (C!6485 (val!3490 Int)) )
))
(declare-datatypes ((Regex!2957 0))(
  ( (ElementMatch!2957 (c!182598 C!6484)) (Concat!4790 (regOne!6426 Regex!2957) (regTwo!6426 Regex!2957)) (EmptyExpr!2957) (Star!2957 (reg!3286 Regex!2957)) (EmptyLang!2957) (Union!2957 (regOne!6427 Regex!2957) (regTwo!6427 Regex!2957)) )
))
(declare-fun r!15766 () Regex!2957)

(declare-fun lt!362400 () Regex!2957)

(declare-fun lt!362411 () Regex!2957)

(declare-fun lt!362393 () Regex!2957)

(declare-fun lambda!39297 () Int)

(assert (=> bs!256261 (= (and (= lt!362393 (reg!3286 r!15766)) (= lt!362411 lt!362400)) (= lambda!39297 lambda!39295))))

(assert (=> bs!256261 (not (= lambda!39297 lambda!39296))))

(assert (=> b!1081985 true))

(assert (=> b!1081985 true))

(assert (=> b!1081985 true))

(declare-fun lambda!39298 () Int)

(assert (=> bs!256261 (not (= lambda!39298 lambda!39295))))

(assert (=> bs!256261 (= (and (= lt!362393 (reg!3286 r!15766)) (= lt!362411 lt!362400)) (= lambda!39298 lambda!39296))))

(assert (=> b!1081985 (not (= lambda!39298 lambda!39297))))

(assert (=> b!1081985 true))

(assert (=> b!1081985 true))

(assert (=> b!1081985 true))

(declare-fun b!1081975 () Bool)

(declare-fun e!684306 () Bool)

(declare-fun tp_is_empty!5557 () Bool)

(assert (=> b!1081975 (= e!684306 tp_is_empty!5557)))

(declare-fun b!1081976 () Bool)

(declare-fun res!481488 () Bool)

(declare-fun e!684309 () Bool)

(assert (=> b!1081976 (=> res!481488 e!684309)))

(declare-fun validRegex!1426 (Regex!2957) Bool)

(assert (=> b!1081976 (= res!481488 (not (validRegex!1426 lt!362400)))))

(declare-fun b!1081977 () Bool)

(declare-fun e!684312 () Bool)

(declare-fun tp!323618 () Bool)

(assert (=> b!1081977 (= e!684312 (and tp_is_empty!5557 tp!323618))))

(declare-fun b!1081978 () Bool)

(declare-fun e!684304 () Bool)

(declare-fun e!684308 () Bool)

(assert (=> b!1081978 (= e!684304 e!684308)))

(declare-fun res!481484 () Bool)

(assert (=> b!1081978 (=> res!481484 e!684308)))

(declare-datatypes ((List!10187 0))(
  ( (Nil!10171) (Cons!10171 (h!15572 C!6484) (t!101233 List!10187)) )
))
(declare-datatypes ((tuple2!11628 0))(
  ( (tuple2!11629 (_1!6640 List!10187) (_2!6640 List!10187)) )
))
(declare-fun lt!362405 () tuple2!11628)

(declare-fun matchR!1493 (Regex!2957 List!10187) Bool)

(assert (=> b!1081978 (= res!481484 (not (matchR!1493 lt!362393 (_1!6640 lt!362405))))))

(declare-datatypes ((Option!2456 0))(
  ( (None!2455) (Some!2455 (v!19872 tuple2!11628)) )
))
(declare-fun lt!362394 () Option!2456)

(declare-fun get!3684 (Option!2456) tuple2!11628)

(assert (=> b!1081978 (= lt!362405 (get!3684 lt!362394))))

(declare-fun b!1081979 () Bool)

(assert (=> b!1081979 (= e!684308 e!684309)))

(declare-fun res!481489 () Bool)

(assert (=> b!1081979 (=> res!481489 e!684309)))

(declare-fun lt!362409 () Bool)

(assert (=> b!1081979 (= res!481489 (not lt!362409))))

(declare-fun lt!362396 () Regex!2957)

(assert (=> b!1081979 (= lt!362409 (matchR!1493 lt!362396 (_2!6640 lt!362405)))))

(assert (=> b!1081979 (= lt!362409 (matchR!1493 lt!362400 (_2!6640 lt!362405)))))

(declare-fun removeUselessConcat!498 (Regex!2957) Regex!2957)

(assert (=> b!1081979 (= lt!362396 (removeUselessConcat!498 lt!362400))))

(declare-datatypes ((Unit!15603 0))(
  ( (Unit!15604) )
))
(declare-fun lt!362399 () Unit!15603)

(declare-fun lemmaRemoveUselessConcatSound!290 (Regex!2957 List!10187) Unit!15603)

(assert (=> b!1081979 (= lt!362399 (lemmaRemoveUselessConcatSound!290 lt!362400 (_2!6640 lt!362405)))))

(declare-fun lt!362395 () Unit!15603)

(declare-fun e!684305 () Unit!15603)

(assert (=> b!1081979 (= lt!362395 e!684305)))

(declare-fun c!182597 () Bool)

(declare-fun s!10566 () List!10187)

(declare-fun size!8016 (List!10187) Int)

(assert (=> b!1081979 (= c!182597 (= (size!8016 (_2!6640 lt!362405)) (size!8016 s!10566)))))

(assert (=> b!1081979 (matchR!1493 (reg!3286 r!15766) (_1!6640 lt!362405))))

(declare-fun lt!362408 () Unit!15603)

(assert (=> b!1081979 (= lt!362408 (lemmaRemoveUselessConcatSound!290 (reg!3286 r!15766) (_1!6640 lt!362405)))))

(declare-fun b!1081980 () Bool)

(declare-fun Unit!15605 () Unit!15603)

(assert (=> b!1081980 (= e!684305 Unit!15605)))

(declare-fun e!684311 () Bool)

(declare-fun e!684310 () Bool)

(assert (=> b!1081981 (= e!684311 e!684310)))

(declare-fun res!481486 () Bool)

(assert (=> b!1081981 (=> res!481486 e!684310)))

(assert (=> b!1081981 (= res!481486 (not (matchR!1493 lt!362411 s!10566)))))

(assert (=> b!1081981 (= lt!362411 (Star!2957 lt!362393))))

(assert (=> b!1081981 (= lt!362393 (removeUselessConcat!498 (reg!3286 r!15766)))))

(declare-fun Exists!680 (Int) Bool)

(assert (=> b!1081981 (= (Exists!680 lambda!39295) (Exists!680 lambda!39296))))

(declare-fun lt!362397 () Unit!15603)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!198 (Regex!2957 List!10187) Unit!15603)

(assert (=> b!1081981 (= lt!362397 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!198 (reg!3286 r!15766) s!10566))))

(declare-fun isDefined!2098 (Option!2456) Bool)

(declare-fun findConcatSeparation!562 (Regex!2957 Regex!2957 List!10187 List!10187 List!10187) Option!2456)

(assert (=> b!1081981 (= (isDefined!2098 (findConcatSeparation!562 (reg!3286 r!15766) lt!362400 Nil!10171 s!10566 s!10566)) (Exists!680 lambda!39295))))

(declare-fun lt!362402 () Unit!15603)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!562 (Regex!2957 Regex!2957 List!10187) Unit!15603)

(assert (=> b!1081981 (= lt!362402 (lemmaFindConcatSeparationEquivalentToExists!562 (reg!3286 r!15766) lt!362400 s!10566))))

(assert (=> b!1081981 (= lt!362400 (Star!2957 (reg!3286 r!15766)))))

(declare-fun b!1081982 () Bool)

(declare-fun res!481485 () Bool)

(assert (=> b!1081982 (=> res!481485 e!684308)))

(assert (=> b!1081982 (= res!481485 (not (matchR!1493 lt!362411 (_2!6640 lt!362405))))))

(declare-fun b!1081983 () Bool)

(declare-fun tp!323617 () Bool)

(declare-fun tp!323620 () Bool)

(assert (=> b!1081983 (= e!684306 (and tp!323617 tp!323620))))

(declare-fun b!1081984 () Bool)

(declare-fun tp!323619 () Bool)

(assert (=> b!1081984 (= e!684306 tp!323619)))

(assert (=> b!1081985 (= e!684310 e!684304)))

(declare-fun res!481483 () Bool)

(assert (=> b!1081985 (=> res!481483 e!684304)))

(declare-fun isEmpty!6604 (List!10187) Bool)

(assert (=> b!1081985 (= res!481483 (isEmpty!6604 s!10566))))

(assert (=> b!1081985 (= (Exists!680 lambda!39297) (Exists!680 lambda!39298))))

(declare-fun lt!362410 () Unit!15603)

(assert (=> b!1081985 (= lt!362410 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!198 lt!362393 s!10566))))

(declare-fun lt!362406 () Bool)

(assert (=> b!1081985 (= lt!362406 (Exists!680 lambda!39297))))

(assert (=> b!1081985 (= lt!362406 (isDefined!2098 lt!362394))))

(assert (=> b!1081985 (= lt!362394 (findConcatSeparation!562 lt!362393 lt!362411 Nil!10171 s!10566 s!10566))))

(declare-fun lt!362392 () Unit!15603)

(assert (=> b!1081985 (= lt!362392 (lemmaFindConcatSeparationEquivalentToExists!562 lt!362393 lt!362411 s!10566))))

(declare-fun matchRSpec!756 (Regex!2957 List!10187) Bool)

(assert (=> b!1081985 (matchRSpec!756 lt!362411 s!10566)))

(declare-fun lt!362407 () Unit!15603)

(declare-fun mainMatchTheorem!756 (Regex!2957 List!10187) Unit!15603)

(assert (=> b!1081985 (= lt!362407 (mainMatchTheorem!756 lt!362411 s!10566))))

(declare-fun b!1081986 () Bool)

(assert (=> b!1081986 (= e!684309 (not (matchR!1493 (removeUselessConcat!498 r!15766) s!10566)))))

(declare-fun ++!2823 (List!10187 List!10187) List!10187)

(assert (=> b!1081986 (matchR!1493 lt!362400 (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405)))))

(declare-fun lt!362401 () Unit!15603)

(declare-fun lemmaStarApp!12 (Regex!2957 List!10187 List!10187) Unit!15603)

(assert (=> b!1081986 (= lt!362401 (lemmaStarApp!12 (reg!3286 r!15766) (_1!6640 lt!362405) (_2!6640 lt!362405)))))

(declare-fun b!1081987 () Bool)

(declare-fun Unit!15606 () Unit!15603)

(assert (=> b!1081987 (= e!684305 Unit!15606)))

(declare-fun lt!362403 () Unit!15603)

(assert (=> b!1081987 (= lt!362403 (mainMatchTheorem!756 (reg!3286 r!15766) (_1!6640 lt!362405)))))

(assert (=> b!1081987 false))

(declare-fun b!1081988 () Bool)

(declare-fun tp!323615 () Bool)

(declare-fun tp!323616 () Bool)

(assert (=> b!1081988 (= e!684306 (and tp!323615 tp!323616))))

(declare-fun res!481490 () Bool)

(declare-fun e!684307 () Bool)

(assert (=> start!92002 (=> (not res!481490) (not e!684307))))

(assert (=> start!92002 (= res!481490 (validRegex!1426 r!15766))))

(assert (=> start!92002 e!684307))

(assert (=> start!92002 e!684306))

(assert (=> start!92002 e!684312))

(declare-fun b!1081989 () Bool)

(assert (=> b!1081989 (= e!684307 (not e!684311))))

(declare-fun res!481491 () Bool)

(assert (=> b!1081989 (=> res!481491 e!684311)))

(declare-fun lt!362398 () Bool)

(get-info :version)

(assert (=> b!1081989 (= res!481491 (or lt!362398 (and ((_ is Concat!4790) r!15766) ((_ is EmptyExpr!2957) (regOne!6426 r!15766))) (and ((_ is Concat!4790) r!15766) ((_ is EmptyExpr!2957) (regTwo!6426 r!15766))) ((_ is Concat!4790) r!15766) ((_ is Union!2957) r!15766) (not ((_ is Star!2957) r!15766))))))

(assert (=> b!1081989 (= lt!362398 (matchRSpec!756 r!15766 s!10566))))

(assert (=> b!1081989 (= lt!362398 (matchR!1493 r!15766 s!10566))))

(declare-fun lt!362404 () Unit!15603)

(assert (=> b!1081989 (= lt!362404 (mainMatchTheorem!756 r!15766 s!10566))))

(declare-fun b!1081990 () Bool)

(declare-fun res!481487 () Bool)

(assert (=> b!1081990 (=> res!481487 e!684304)))

(assert (=> b!1081990 (= res!481487 (not lt!362406))))

(assert (= (and start!92002 res!481490) b!1081989))

(assert (= (and b!1081989 (not res!481491)) b!1081981))

(assert (= (and b!1081981 (not res!481486)) b!1081985))

(assert (= (and b!1081985 (not res!481483)) b!1081990))

(assert (= (and b!1081990 (not res!481487)) b!1081978))

(assert (= (and b!1081978 (not res!481484)) b!1081982))

(assert (= (and b!1081982 (not res!481485)) b!1081979))

(assert (= (and b!1081979 c!182597) b!1081987))

(assert (= (and b!1081979 (not c!182597)) b!1081980))

(assert (= (and b!1081979 (not res!481489)) b!1081976))

(assert (= (and b!1081976 (not res!481488)) b!1081986))

(assert (= (and start!92002 ((_ is ElementMatch!2957) r!15766)) b!1081975))

(assert (= (and start!92002 ((_ is Concat!4790) r!15766)) b!1081983))

(assert (= (and start!92002 ((_ is Star!2957) r!15766)) b!1081984))

(assert (= (and start!92002 ((_ is Union!2957) r!15766)) b!1081988))

(assert (= (and start!92002 ((_ is Cons!10171) s!10566)) b!1081977))

(declare-fun m!1232923 () Bool)

(assert (=> b!1081979 m!1232923))

(declare-fun m!1232925 () Bool)

(assert (=> b!1081979 m!1232925))

(declare-fun m!1232927 () Bool)

(assert (=> b!1081979 m!1232927))

(declare-fun m!1232929 () Bool)

(assert (=> b!1081979 m!1232929))

(declare-fun m!1232931 () Bool)

(assert (=> b!1081979 m!1232931))

(declare-fun m!1232933 () Bool)

(assert (=> b!1081979 m!1232933))

(declare-fun m!1232935 () Bool)

(assert (=> b!1081979 m!1232935))

(declare-fun m!1232937 () Bool)

(assert (=> b!1081979 m!1232937))

(declare-fun m!1232939 () Bool)

(assert (=> b!1081989 m!1232939))

(declare-fun m!1232941 () Bool)

(assert (=> b!1081989 m!1232941))

(declare-fun m!1232943 () Bool)

(assert (=> b!1081989 m!1232943))

(declare-fun m!1232945 () Bool)

(assert (=> b!1081982 m!1232945))

(declare-fun m!1232947 () Bool)

(assert (=> b!1081987 m!1232947))

(declare-fun m!1232949 () Bool)

(assert (=> b!1081981 m!1232949))

(declare-fun m!1232951 () Bool)

(assert (=> b!1081981 m!1232951))

(declare-fun m!1232953 () Bool)

(assert (=> b!1081981 m!1232953))

(declare-fun m!1232955 () Bool)

(assert (=> b!1081981 m!1232955))

(declare-fun m!1232957 () Bool)

(assert (=> b!1081981 m!1232957))

(assert (=> b!1081981 m!1232949))

(declare-fun m!1232959 () Bool)

(assert (=> b!1081981 m!1232959))

(declare-fun m!1232961 () Bool)

(assert (=> b!1081981 m!1232961))

(assert (=> b!1081981 m!1232961))

(declare-fun m!1232963 () Bool)

(assert (=> b!1081981 m!1232963))

(declare-fun m!1232965 () Bool)

(assert (=> b!1081985 m!1232965))

(declare-fun m!1232967 () Bool)

(assert (=> b!1081985 m!1232967))

(declare-fun m!1232969 () Bool)

(assert (=> b!1081985 m!1232969))

(declare-fun m!1232971 () Bool)

(assert (=> b!1081985 m!1232971))

(declare-fun m!1232973 () Bool)

(assert (=> b!1081985 m!1232973))

(declare-fun m!1232975 () Bool)

(assert (=> b!1081985 m!1232975))

(declare-fun m!1232977 () Bool)

(assert (=> b!1081985 m!1232977))

(declare-fun m!1232979 () Bool)

(assert (=> b!1081985 m!1232979))

(declare-fun m!1232981 () Bool)

(assert (=> b!1081985 m!1232981))

(assert (=> b!1081985 m!1232979))

(declare-fun m!1232983 () Bool)

(assert (=> b!1081976 m!1232983))

(declare-fun m!1232985 () Bool)

(assert (=> start!92002 m!1232985))

(declare-fun m!1232987 () Bool)

(assert (=> b!1081986 m!1232987))

(declare-fun m!1232989 () Bool)

(assert (=> b!1081986 m!1232989))

(declare-fun m!1232991 () Bool)

(assert (=> b!1081986 m!1232991))

(assert (=> b!1081986 m!1232987))

(declare-fun m!1232993 () Bool)

(assert (=> b!1081986 m!1232993))

(assert (=> b!1081986 m!1232989))

(declare-fun m!1232995 () Bool)

(assert (=> b!1081986 m!1232995))

(declare-fun m!1232997 () Bool)

(assert (=> b!1081978 m!1232997))

(declare-fun m!1232999 () Bool)

(assert (=> b!1081978 m!1232999))

(check-sat (not b!1081979) (not b!1081988) tp_is_empty!5557 (not b!1081983) (not start!92002) (not b!1081987) (not b!1081986) (not b!1081982) (not b!1081989) (not b!1081985) (not b!1081981) (not b!1081977) (not b!1081978) (not b!1081984) (not b!1081976))
(check-sat)
(get-model)

(declare-fun b!1082023 () Bool)

(declare-fun res!481508 () Bool)

(declare-fun e!684328 () Bool)

(assert (=> b!1082023 (=> (not res!481508) (not e!684328))))

(declare-fun call!79919 () Bool)

(assert (=> b!1082023 (= res!481508 (not call!79919))))

(declare-fun b!1082024 () Bool)

(declare-fun res!481510 () Bool)

(declare-fun e!684327 () Bool)

(assert (=> b!1082024 (=> res!481510 e!684327)))

(declare-fun tail!1555 (List!10187) List!10187)

(assert (=> b!1082024 (= res!481510 (not (isEmpty!6604 (tail!1555 (_1!6640 lt!362405)))))))

(declare-fun b!1082026 () Bool)

(declare-fun res!481511 () Bool)

(assert (=> b!1082026 (=> (not res!481511) (not e!684328))))

(assert (=> b!1082026 (= res!481511 (isEmpty!6604 (tail!1555 (_1!6640 lt!362405))))))

(declare-fun b!1082027 () Bool)

(declare-fun res!481513 () Bool)

(declare-fun e!684329 () Bool)

(assert (=> b!1082027 (=> res!481513 e!684329)))

(assert (=> b!1082027 (= res!481513 e!684328)))

(declare-fun res!481514 () Bool)

(assert (=> b!1082027 (=> (not res!481514) (not e!684328))))

(declare-fun lt!362414 () Bool)

(assert (=> b!1082027 (= res!481514 lt!362414)))

(declare-fun b!1082028 () Bool)

(declare-fun e!684333 () Bool)

(declare-fun e!684332 () Bool)

(assert (=> b!1082028 (= e!684333 e!684332)))

(declare-fun c!182605 () Bool)

(assert (=> b!1082028 (= c!182605 ((_ is EmptyLang!2957) lt!362393))))

(declare-fun b!1082029 () Bool)

(declare-fun res!481512 () Bool)

(assert (=> b!1082029 (=> res!481512 e!684329)))

(assert (=> b!1082029 (= res!481512 (not ((_ is ElementMatch!2957) lt!362393)))))

(assert (=> b!1082029 (= e!684332 e!684329)))

(declare-fun b!1082030 () Bool)

(assert (=> b!1082030 (= e!684332 (not lt!362414))))

(declare-fun b!1082031 () Bool)

(declare-fun head!1993 (List!10187) C!6484)

(assert (=> b!1082031 (= e!684327 (not (= (head!1993 (_1!6640 lt!362405)) (c!182598 lt!362393))))))

(declare-fun b!1082032 () Bool)

(declare-fun e!684331 () Bool)

(assert (=> b!1082032 (= e!684329 e!684331)))

(declare-fun res!481515 () Bool)

(assert (=> b!1082032 (=> (not res!481515) (not e!684331))))

(assert (=> b!1082032 (= res!481515 (not lt!362414))))

(declare-fun b!1082033 () Bool)

(assert (=> b!1082033 (= e!684331 e!684327)))

(declare-fun res!481509 () Bool)

(assert (=> b!1082033 (=> res!481509 e!684327)))

(assert (=> b!1082033 (= res!481509 call!79919)))

(declare-fun d!304476 () Bool)

(assert (=> d!304476 e!684333))

(declare-fun c!182606 () Bool)

(assert (=> d!304476 (= c!182606 ((_ is EmptyExpr!2957) lt!362393))))

(declare-fun e!684330 () Bool)

(assert (=> d!304476 (= lt!362414 e!684330)))

(declare-fun c!182607 () Bool)

(assert (=> d!304476 (= c!182607 (isEmpty!6604 (_1!6640 lt!362405)))))

(assert (=> d!304476 (validRegex!1426 lt!362393)))

(assert (=> d!304476 (= (matchR!1493 lt!362393 (_1!6640 lt!362405)) lt!362414)))

(declare-fun b!1082025 () Bool)

(assert (=> b!1082025 (= e!684333 (= lt!362414 call!79919))))

(declare-fun b!1082034 () Bool)

(assert (=> b!1082034 (= e!684328 (= (head!1993 (_1!6640 lt!362405)) (c!182598 lt!362393)))))

(declare-fun b!1082035 () Bool)

(declare-fun derivativeStep!838 (Regex!2957 C!6484) Regex!2957)

(assert (=> b!1082035 (= e!684330 (matchR!1493 (derivativeStep!838 lt!362393 (head!1993 (_1!6640 lt!362405))) (tail!1555 (_1!6640 lt!362405))))))

(declare-fun bm!79914 () Bool)

(assert (=> bm!79914 (= call!79919 (isEmpty!6604 (_1!6640 lt!362405)))))

(declare-fun b!1082036 () Bool)

(declare-fun nullable!1040 (Regex!2957) Bool)

(assert (=> b!1082036 (= e!684330 (nullable!1040 lt!362393))))

(assert (= (and d!304476 c!182607) b!1082036))

(assert (= (and d!304476 (not c!182607)) b!1082035))

(assert (= (and d!304476 c!182606) b!1082025))

(assert (= (and d!304476 (not c!182606)) b!1082028))

(assert (= (and b!1082028 c!182605) b!1082030))

(assert (= (and b!1082028 (not c!182605)) b!1082029))

(assert (= (and b!1082029 (not res!481512)) b!1082027))

(assert (= (and b!1082027 res!481514) b!1082023))

(assert (= (and b!1082023 res!481508) b!1082026))

(assert (= (and b!1082026 res!481511) b!1082034))

(assert (= (and b!1082027 (not res!481513)) b!1082032))

(assert (= (and b!1082032 res!481515) b!1082033))

(assert (= (and b!1082033 (not res!481509)) b!1082024))

(assert (= (and b!1082024 (not res!481510)) b!1082031))

(assert (= (or b!1082025 b!1082023 b!1082033) bm!79914))

(declare-fun m!1233001 () Bool)

(assert (=> d!304476 m!1233001))

(declare-fun m!1233003 () Bool)

(assert (=> d!304476 m!1233003))

(declare-fun m!1233005 () Bool)

(assert (=> b!1082024 m!1233005))

(assert (=> b!1082024 m!1233005))

(declare-fun m!1233007 () Bool)

(assert (=> b!1082024 m!1233007))

(declare-fun m!1233009 () Bool)

(assert (=> b!1082036 m!1233009))

(assert (=> b!1082026 m!1233005))

(assert (=> b!1082026 m!1233005))

(assert (=> b!1082026 m!1233007))

(assert (=> bm!79914 m!1233001))

(declare-fun m!1233011 () Bool)

(assert (=> b!1082035 m!1233011))

(assert (=> b!1082035 m!1233011))

(declare-fun m!1233013 () Bool)

(assert (=> b!1082035 m!1233013))

(assert (=> b!1082035 m!1233005))

(assert (=> b!1082035 m!1233013))

(assert (=> b!1082035 m!1233005))

(declare-fun m!1233015 () Bool)

(assert (=> b!1082035 m!1233015))

(assert (=> b!1082031 m!1233011))

(assert (=> b!1082034 m!1233011))

(assert (=> b!1081978 d!304476))

(declare-fun d!304480 () Bool)

(assert (=> d!304480 (= (get!3684 lt!362394) (v!19872 lt!362394))))

(assert (=> b!1081978 d!304480))

(declare-fun bs!256263 () Bool)

(declare-fun b!1082202 () Bool)

(assert (= bs!256263 (and b!1082202 b!1081981)))

(declare-fun lambda!39303 () Int)

(assert (=> bs!256263 (not (= lambda!39303 lambda!39295))))

(assert (=> bs!256263 (= (= r!15766 lt!362400) (= lambda!39303 lambda!39296))))

(declare-fun bs!256264 () Bool)

(assert (= bs!256264 (and b!1082202 b!1081985)))

(assert (=> bs!256264 (not (= lambda!39303 lambda!39297))))

(assert (=> bs!256264 (= (and (= (reg!3286 r!15766) lt!362393) (= r!15766 lt!362411)) (= lambda!39303 lambda!39298))))

(assert (=> b!1082202 true))

(assert (=> b!1082202 true))

(declare-fun bs!256265 () Bool)

(declare-fun b!1082198 () Bool)

(assert (= bs!256265 (and b!1082198 b!1081981)))

(declare-fun lambda!39304 () Int)

(assert (=> bs!256265 (not (= lambda!39304 lambda!39295))))

(declare-fun bs!256266 () Bool)

(assert (= bs!256266 (and b!1082198 b!1082202)))

(assert (=> bs!256266 (not (= lambda!39304 lambda!39303))))

(declare-fun bs!256267 () Bool)

(assert (= bs!256267 (and b!1082198 b!1081985)))

(assert (=> bs!256267 (not (= lambda!39304 lambda!39298))))

(assert (=> bs!256267 (not (= lambda!39304 lambda!39297))))

(assert (=> bs!256265 (not (= lambda!39304 lambda!39296))))

(assert (=> b!1082198 true))

(assert (=> b!1082198 true))

(declare-fun b!1082197 () Bool)

(declare-fun e!684425 () Bool)

(assert (=> b!1082197 (= e!684425 (matchRSpec!756 (regTwo!6427 r!15766) s!10566))))

(declare-fun e!684426 () Bool)

(declare-fun call!79953 () Bool)

(assert (=> b!1082198 (= e!684426 call!79953)))

(declare-fun b!1082199 () Bool)

(declare-fun e!684427 () Bool)

(assert (=> b!1082199 (= e!684427 e!684426)))

(declare-fun c!182653 () Bool)

(assert (=> b!1082199 (= c!182653 ((_ is Star!2957) r!15766))))

(declare-fun bm!79947 () Bool)

(assert (=> bm!79947 (= call!79953 (Exists!680 (ite c!182653 lambda!39303 lambda!39304)))))

(declare-fun b!1082200 () Bool)

(declare-fun c!182652 () Bool)

(assert (=> b!1082200 (= c!182652 ((_ is Union!2957) r!15766))))

(declare-fun e!684431 () Bool)

(assert (=> b!1082200 (= e!684431 e!684427)))

(declare-fun b!1082201 () Bool)

(declare-fun e!684430 () Bool)

(declare-fun call!79952 () Bool)

(assert (=> b!1082201 (= e!684430 call!79952)))

(declare-fun e!684428 () Bool)

(assert (=> b!1082202 (= e!684428 call!79953)))

(declare-fun d!304482 () Bool)

(declare-fun c!182654 () Bool)

(assert (=> d!304482 (= c!182654 ((_ is EmptyExpr!2957) r!15766))))

(assert (=> d!304482 (= (matchRSpec!756 r!15766 s!10566) e!684430)))

(declare-fun bm!79948 () Bool)

(assert (=> bm!79948 (= call!79952 (isEmpty!6604 s!10566))))

(declare-fun b!1082203 () Bool)

(assert (=> b!1082203 (= e!684427 e!684425)))

(declare-fun res!481588 () Bool)

(assert (=> b!1082203 (= res!481588 (matchRSpec!756 (regOne!6427 r!15766) s!10566))))

(assert (=> b!1082203 (=> res!481588 e!684425)))

(declare-fun b!1082204 () Bool)

(declare-fun e!684429 () Bool)

(assert (=> b!1082204 (= e!684430 e!684429)))

(declare-fun res!481590 () Bool)

(assert (=> b!1082204 (= res!481590 (not ((_ is EmptyLang!2957) r!15766)))))

(assert (=> b!1082204 (=> (not res!481590) (not e!684429))))

(declare-fun b!1082205 () Bool)

(assert (=> b!1082205 (= e!684431 (= s!10566 (Cons!10171 (c!182598 r!15766) Nil!10171)))))

(declare-fun b!1082206 () Bool)

(declare-fun c!182655 () Bool)

(assert (=> b!1082206 (= c!182655 ((_ is ElementMatch!2957) r!15766))))

(assert (=> b!1082206 (= e!684429 e!684431)))

(declare-fun b!1082207 () Bool)

(declare-fun res!481589 () Bool)

(assert (=> b!1082207 (=> res!481589 e!684428)))

(assert (=> b!1082207 (= res!481589 call!79952)))

(assert (=> b!1082207 (= e!684426 e!684428)))

(assert (= (and d!304482 c!182654) b!1082201))

(assert (= (and d!304482 (not c!182654)) b!1082204))

(assert (= (and b!1082204 res!481590) b!1082206))

(assert (= (and b!1082206 c!182655) b!1082205))

(assert (= (and b!1082206 (not c!182655)) b!1082200))

(assert (= (and b!1082200 c!182652) b!1082203))

(assert (= (and b!1082200 (not c!182652)) b!1082199))

(assert (= (and b!1082203 (not res!481588)) b!1082197))

(assert (= (and b!1082199 c!182653) b!1082207))

(assert (= (and b!1082199 (not c!182653)) b!1082198))

(assert (= (and b!1082207 (not res!481589)) b!1082202))

(assert (= (or b!1082202 b!1082198) bm!79947))

(assert (= (or b!1082201 b!1082207) bm!79948))

(declare-fun m!1233079 () Bool)

(assert (=> b!1082197 m!1233079))

(declare-fun m!1233081 () Bool)

(assert (=> bm!79947 m!1233081))

(assert (=> bm!79948 m!1232973))

(declare-fun m!1233083 () Bool)

(assert (=> b!1082203 m!1233083))

(assert (=> b!1081989 d!304482))

(declare-fun b!1082236 () Bool)

(declare-fun res!481603 () Bool)

(declare-fun e!684449 () Bool)

(assert (=> b!1082236 (=> (not res!481603) (not e!684449))))

(declare-fun call!79954 () Bool)

(assert (=> b!1082236 (= res!481603 (not call!79954))))

(declare-fun b!1082237 () Bool)

(declare-fun res!481605 () Bool)

(declare-fun e!684448 () Bool)

(assert (=> b!1082237 (=> res!481605 e!684448)))

(assert (=> b!1082237 (= res!481605 (not (isEmpty!6604 (tail!1555 s!10566))))))

(declare-fun b!1082239 () Bool)

(declare-fun res!481606 () Bool)

(assert (=> b!1082239 (=> (not res!481606) (not e!684449))))

(assert (=> b!1082239 (= res!481606 (isEmpty!6604 (tail!1555 s!10566)))))

(declare-fun b!1082240 () Bool)

(declare-fun res!481608 () Bool)

(declare-fun e!684450 () Bool)

(assert (=> b!1082240 (=> res!481608 e!684450)))

(assert (=> b!1082240 (= res!481608 e!684449)))

(declare-fun res!481609 () Bool)

(assert (=> b!1082240 (=> (not res!481609) (not e!684449))))

(declare-fun lt!362428 () Bool)

(assert (=> b!1082240 (= res!481609 lt!362428)))

(declare-fun b!1082241 () Bool)

(declare-fun e!684454 () Bool)

(declare-fun e!684453 () Bool)

(assert (=> b!1082241 (= e!684454 e!684453)))

(declare-fun c!182664 () Bool)

(assert (=> b!1082241 (= c!182664 ((_ is EmptyLang!2957) r!15766))))

(declare-fun b!1082242 () Bool)

(declare-fun res!481607 () Bool)

(assert (=> b!1082242 (=> res!481607 e!684450)))

(assert (=> b!1082242 (= res!481607 (not ((_ is ElementMatch!2957) r!15766)))))

(assert (=> b!1082242 (= e!684453 e!684450)))

(declare-fun b!1082243 () Bool)

(assert (=> b!1082243 (= e!684453 (not lt!362428))))

(declare-fun b!1082244 () Bool)

(assert (=> b!1082244 (= e!684448 (not (= (head!1993 s!10566) (c!182598 r!15766))))))

(declare-fun b!1082245 () Bool)

(declare-fun e!684452 () Bool)

(assert (=> b!1082245 (= e!684450 e!684452)))

(declare-fun res!481610 () Bool)

(assert (=> b!1082245 (=> (not res!481610) (not e!684452))))

(assert (=> b!1082245 (= res!481610 (not lt!362428))))

(declare-fun b!1082246 () Bool)

(assert (=> b!1082246 (= e!684452 e!684448)))

(declare-fun res!481604 () Bool)

(assert (=> b!1082246 (=> res!481604 e!684448)))

(assert (=> b!1082246 (= res!481604 call!79954)))

(declare-fun d!304496 () Bool)

(assert (=> d!304496 e!684454))

(declare-fun c!182665 () Bool)

(assert (=> d!304496 (= c!182665 ((_ is EmptyExpr!2957) r!15766))))

(declare-fun e!684451 () Bool)

(assert (=> d!304496 (= lt!362428 e!684451)))

(declare-fun c!182666 () Bool)

(assert (=> d!304496 (= c!182666 (isEmpty!6604 s!10566))))

(assert (=> d!304496 (validRegex!1426 r!15766)))

(assert (=> d!304496 (= (matchR!1493 r!15766 s!10566) lt!362428)))

(declare-fun b!1082238 () Bool)

(assert (=> b!1082238 (= e!684454 (= lt!362428 call!79954))))

(declare-fun b!1082247 () Bool)

(assert (=> b!1082247 (= e!684449 (= (head!1993 s!10566) (c!182598 r!15766)))))

(declare-fun b!1082248 () Bool)

(assert (=> b!1082248 (= e!684451 (matchR!1493 (derivativeStep!838 r!15766 (head!1993 s!10566)) (tail!1555 s!10566)))))

(declare-fun bm!79949 () Bool)

(assert (=> bm!79949 (= call!79954 (isEmpty!6604 s!10566))))

(declare-fun b!1082249 () Bool)

(assert (=> b!1082249 (= e!684451 (nullable!1040 r!15766))))

(assert (= (and d!304496 c!182666) b!1082249))

(assert (= (and d!304496 (not c!182666)) b!1082248))

(assert (= (and d!304496 c!182665) b!1082238))

(assert (= (and d!304496 (not c!182665)) b!1082241))

(assert (= (and b!1082241 c!182664) b!1082243))

(assert (= (and b!1082241 (not c!182664)) b!1082242))

(assert (= (and b!1082242 (not res!481607)) b!1082240))

(assert (= (and b!1082240 res!481609) b!1082236))

(assert (= (and b!1082236 res!481603) b!1082239))

(assert (= (and b!1082239 res!481606) b!1082247))

(assert (= (and b!1082240 (not res!481608)) b!1082245))

(assert (= (and b!1082245 res!481610) b!1082246))

(assert (= (and b!1082246 (not res!481604)) b!1082237))

(assert (= (and b!1082237 (not res!481605)) b!1082244))

(assert (= (or b!1082238 b!1082236 b!1082246) bm!79949))

(assert (=> d!304496 m!1232973))

(assert (=> d!304496 m!1232985))

(declare-fun m!1233085 () Bool)

(assert (=> b!1082237 m!1233085))

(assert (=> b!1082237 m!1233085))

(declare-fun m!1233087 () Bool)

(assert (=> b!1082237 m!1233087))

(declare-fun m!1233089 () Bool)

(assert (=> b!1082249 m!1233089))

(assert (=> b!1082239 m!1233085))

(assert (=> b!1082239 m!1233085))

(assert (=> b!1082239 m!1233087))

(assert (=> bm!79949 m!1232973))

(declare-fun m!1233091 () Bool)

(assert (=> b!1082248 m!1233091))

(assert (=> b!1082248 m!1233091))

(declare-fun m!1233093 () Bool)

(assert (=> b!1082248 m!1233093))

(assert (=> b!1082248 m!1233085))

(assert (=> b!1082248 m!1233093))

(assert (=> b!1082248 m!1233085))

(declare-fun m!1233095 () Bool)

(assert (=> b!1082248 m!1233095))

(assert (=> b!1082244 m!1233091))

(assert (=> b!1082247 m!1233091))

(assert (=> b!1081989 d!304496))

(declare-fun d!304498 () Bool)

(assert (=> d!304498 (= (matchR!1493 r!15766 s!10566) (matchRSpec!756 r!15766 s!10566))))

(declare-fun lt!362432 () Unit!15603)

(declare-fun choose!6865 (Regex!2957 List!10187) Unit!15603)

(assert (=> d!304498 (= lt!362432 (choose!6865 r!15766 s!10566))))

(assert (=> d!304498 (validRegex!1426 r!15766)))

(assert (=> d!304498 (= (mainMatchTheorem!756 r!15766 s!10566) lt!362432)))

(declare-fun bs!256273 () Bool)

(assert (= bs!256273 d!304498))

(assert (=> bs!256273 m!1232941))

(assert (=> bs!256273 m!1232939))

(declare-fun m!1233107 () Bool)

(assert (=> bs!256273 m!1233107))

(assert (=> bs!256273 m!1232985))

(assert (=> b!1081989 d!304498))

(declare-fun b!1082372 () Bool)

(declare-fun e!684527 () Bool)

(declare-fun e!684529 () Bool)

(assert (=> b!1082372 (= e!684527 e!684529)))

(declare-fun res!481671 () Bool)

(assert (=> b!1082372 (= res!481671 (not (nullable!1040 (reg!3286 r!15766))))))

(assert (=> b!1082372 (=> (not res!481671) (not e!684529))))

(declare-fun bm!79972 () Bool)

(declare-fun call!79977 () Bool)

(declare-fun c!182700 () Bool)

(assert (=> bm!79972 (= call!79977 (validRegex!1426 (ite c!182700 (regTwo!6427 r!15766) (regTwo!6426 r!15766))))))

(declare-fun b!1082373 () Bool)

(declare-fun e!684524 () Bool)

(declare-fun e!684528 () Bool)

(assert (=> b!1082373 (= e!684524 e!684528)))

(declare-fun res!481672 () Bool)

(assert (=> b!1082373 (=> (not res!481672) (not e!684528))))

(declare-fun call!79979 () Bool)

(assert (=> b!1082373 (= res!481672 call!79979)))

(declare-fun b!1082374 () Bool)

(declare-fun res!481670 () Bool)

(declare-fun e!684523 () Bool)

(assert (=> b!1082374 (=> (not res!481670) (not e!684523))))

(assert (=> b!1082374 (= res!481670 call!79979)))

(declare-fun e!684525 () Bool)

(assert (=> b!1082374 (= e!684525 e!684523)))

(declare-fun bm!79973 () Bool)

(declare-fun call!79978 () Bool)

(assert (=> bm!79973 (= call!79979 call!79978)))

(declare-fun b!1082375 () Bool)

(assert (=> b!1082375 (= e!684529 call!79978)))

(declare-fun b!1082377 () Bool)

(assert (=> b!1082377 (= e!684528 call!79977)))

(declare-fun b!1082378 () Bool)

(assert (=> b!1082378 (= e!684527 e!684525)))

(assert (=> b!1082378 (= c!182700 ((_ is Union!2957) r!15766))))

(declare-fun c!182699 () Bool)

(declare-fun bm!79974 () Bool)

(assert (=> bm!79974 (= call!79978 (validRegex!1426 (ite c!182699 (reg!3286 r!15766) (ite c!182700 (regOne!6427 r!15766) (regOne!6426 r!15766)))))))

(declare-fun b!1082379 () Bool)

(assert (=> b!1082379 (= e!684523 call!79977)))

(declare-fun b!1082380 () Bool)

(declare-fun e!684526 () Bool)

(assert (=> b!1082380 (= e!684526 e!684527)))

(assert (=> b!1082380 (= c!182699 ((_ is Star!2957) r!15766))))

(declare-fun b!1082376 () Bool)

(declare-fun res!481669 () Bool)

(assert (=> b!1082376 (=> res!481669 e!684524)))

(assert (=> b!1082376 (= res!481669 (not ((_ is Concat!4790) r!15766)))))

(assert (=> b!1082376 (= e!684525 e!684524)))

(declare-fun d!304504 () Bool)

(declare-fun res!481673 () Bool)

(assert (=> d!304504 (=> res!481673 e!684526)))

(assert (=> d!304504 (= res!481673 ((_ is ElementMatch!2957) r!15766))))

(assert (=> d!304504 (= (validRegex!1426 r!15766) e!684526)))

(assert (= (and d!304504 (not res!481673)) b!1082380))

(assert (= (and b!1082380 c!182699) b!1082372))

(assert (= (and b!1082380 (not c!182699)) b!1082378))

(assert (= (and b!1082372 res!481671) b!1082375))

(assert (= (and b!1082378 c!182700) b!1082374))

(assert (= (and b!1082378 (not c!182700)) b!1082376))

(assert (= (and b!1082374 res!481670) b!1082379))

(assert (= (and b!1082376 (not res!481669)) b!1082373))

(assert (= (and b!1082373 res!481672) b!1082377))

(assert (= (or b!1082379 b!1082377) bm!79972))

(assert (= (or b!1082374 b!1082373) bm!79973))

(assert (= (or b!1082375 bm!79973) bm!79974))

(declare-fun m!1233179 () Bool)

(assert (=> b!1082372 m!1233179))

(declare-fun m!1233181 () Bool)

(assert (=> bm!79972 m!1233181))

(declare-fun m!1233183 () Bool)

(assert (=> bm!79974 m!1233183))

(assert (=> start!92002 d!304504))

(declare-fun b!1082381 () Bool)

(declare-fun res!481674 () Bool)

(declare-fun e!684531 () Bool)

(assert (=> b!1082381 (=> (not res!481674) (not e!684531))))

(declare-fun call!79980 () Bool)

(assert (=> b!1082381 (= res!481674 (not call!79980))))

(declare-fun b!1082382 () Bool)

(declare-fun res!481676 () Bool)

(declare-fun e!684530 () Bool)

(assert (=> b!1082382 (=> res!481676 e!684530)))

(assert (=> b!1082382 (= res!481676 (not (isEmpty!6604 (tail!1555 (_1!6640 lt!362405)))))))

(declare-fun b!1082384 () Bool)

(declare-fun res!481677 () Bool)

(assert (=> b!1082384 (=> (not res!481677) (not e!684531))))

(assert (=> b!1082384 (= res!481677 (isEmpty!6604 (tail!1555 (_1!6640 lt!362405))))))

(declare-fun b!1082385 () Bool)

(declare-fun res!481679 () Bool)

(declare-fun e!684532 () Bool)

(assert (=> b!1082385 (=> res!481679 e!684532)))

(assert (=> b!1082385 (= res!481679 e!684531)))

(declare-fun res!481680 () Bool)

(assert (=> b!1082385 (=> (not res!481680) (not e!684531))))

(declare-fun lt!362450 () Bool)

(assert (=> b!1082385 (= res!481680 lt!362450)))

(declare-fun b!1082386 () Bool)

(declare-fun e!684536 () Bool)

(declare-fun e!684535 () Bool)

(assert (=> b!1082386 (= e!684536 e!684535)))

(declare-fun c!182701 () Bool)

(assert (=> b!1082386 (= c!182701 ((_ is EmptyLang!2957) (reg!3286 r!15766)))))

(declare-fun b!1082387 () Bool)

(declare-fun res!481678 () Bool)

(assert (=> b!1082387 (=> res!481678 e!684532)))

(assert (=> b!1082387 (= res!481678 (not ((_ is ElementMatch!2957) (reg!3286 r!15766))))))

(assert (=> b!1082387 (= e!684535 e!684532)))

(declare-fun b!1082388 () Bool)

(assert (=> b!1082388 (= e!684535 (not lt!362450))))

(declare-fun b!1082389 () Bool)

(assert (=> b!1082389 (= e!684530 (not (= (head!1993 (_1!6640 lt!362405)) (c!182598 (reg!3286 r!15766)))))))

(declare-fun b!1082390 () Bool)

(declare-fun e!684534 () Bool)

(assert (=> b!1082390 (= e!684532 e!684534)))

(declare-fun res!481681 () Bool)

(assert (=> b!1082390 (=> (not res!481681) (not e!684534))))

(assert (=> b!1082390 (= res!481681 (not lt!362450))))

(declare-fun b!1082391 () Bool)

(assert (=> b!1082391 (= e!684534 e!684530)))

(declare-fun res!481675 () Bool)

(assert (=> b!1082391 (=> res!481675 e!684530)))

(assert (=> b!1082391 (= res!481675 call!79980)))

(declare-fun d!304532 () Bool)

(assert (=> d!304532 e!684536))

(declare-fun c!182702 () Bool)

(assert (=> d!304532 (= c!182702 ((_ is EmptyExpr!2957) (reg!3286 r!15766)))))

(declare-fun e!684533 () Bool)

(assert (=> d!304532 (= lt!362450 e!684533)))

(declare-fun c!182703 () Bool)

(assert (=> d!304532 (= c!182703 (isEmpty!6604 (_1!6640 lt!362405)))))

(assert (=> d!304532 (validRegex!1426 (reg!3286 r!15766))))

(assert (=> d!304532 (= (matchR!1493 (reg!3286 r!15766) (_1!6640 lt!362405)) lt!362450)))

(declare-fun b!1082383 () Bool)

(assert (=> b!1082383 (= e!684536 (= lt!362450 call!79980))))

(declare-fun b!1082392 () Bool)

(assert (=> b!1082392 (= e!684531 (= (head!1993 (_1!6640 lt!362405)) (c!182598 (reg!3286 r!15766))))))

(declare-fun b!1082393 () Bool)

(assert (=> b!1082393 (= e!684533 (matchR!1493 (derivativeStep!838 (reg!3286 r!15766) (head!1993 (_1!6640 lt!362405))) (tail!1555 (_1!6640 lt!362405))))))

(declare-fun bm!79975 () Bool)

(assert (=> bm!79975 (= call!79980 (isEmpty!6604 (_1!6640 lt!362405)))))

(declare-fun b!1082394 () Bool)

(assert (=> b!1082394 (= e!684533 (nullable!1040 (reg!3286 r!15766)))))

(assert (= (and d!304532 c!182703) b!1082394))

(assert (= (and d!304532 (not c!182703)) b!1082393))

(assert (= (and d!304532 c!182702) b!1082383))

(assert (= (and d!304532 (not c!182702)) b!1082386))

(assert (= (and b!1082386 c!182701) b!1082388))

(assert (= (and b!1082386 (not c!182701)) b!1082387))

(assert (= (and b!1082387 (not res!481678)) b!1082385))

(assert (= (and b!1082385 res!481680) b!1082381))

(assert (= (and b!1082381 res!481674) b!1082384))

(assert (= (and b!1082384 res!481677) b!1082392))

(assert (= (and b!1082385 (not res!481679)) b!1082390))

(assert (= (and b!1082390 res!481681) b!1082391))

(assert (= (and b!1082391 (not res!481675)) b!1082382))

(assert (= (and b!1082382 (not res!481676)) b!1082389))

(assert (= (or b!1082383 b!1082381 b!1082391) bm!79975))

(assert (=> d!304532 m!1233001))

(declare-fun m!1233185 () Bool)

(assert (=> d!304532 m!1233185))

(assert (=> b!1082382 m!1233005))

(assert (=> b!1082382 m!1233005))

(assert (=> b!1082382 m!1233007))

(assert (=> b!1082394 m!1233179))

(assert (=> b!1082384 m!1233005))

(assert (=> b!1082384 m!1233005))

(assert (=> b!1082384 m!1233007))

(assert (=> bm!79975 m!1233001))

(assert (=> b!1082393 m!1233011))

(assert (=> b!1082393 m!1233011))

(declare-fun m!1233187 () Bool)

(assert (=> b!1082393 m!1233187))

(assert (=> b!1082393 m!1233005))

(assert (=> b!1082393 m!1233187))

(assert (=> b!1082393 m!1233005))

(declare-fun m!1233189 () Bool)

(assert (=> b!1082393 m!1233189))

(assert (=> b!1082389 m!1233011))

(assert (=> b!1082392 m!1233011))

(assert (=> b!1081979 d!304532))

(declare-fun b!1082395 () Bool)

(declare-fun res!481682 () Bool)

(declare-fun e!684538 () Bool)

(assert (=> b!1082395 (=> (not res!481682) (not e!684538))))

(declare-fun call!79981 () Bool)

(assert (=> b!1082395 (= res!481682 (not call!79981))))

(declare-fun b!1082396 () Bool)

(declare-fun res!481684 () Bool)

(declare-fun e!684537 () Bool)

(assert (=> b!1082396 (=> res!481684 e!684537)))

(assert (=> b!1082396 (= res!481684 (not (isEmpty!6604 (tail!1555 (_2!6640 lt!362405)))))))

(declare-fun b!1082398 () Bool)

(declare-fun res!481685 () Bool)

(assert (=> b!1082398 (=> (not res!481685) (not e!684538))))

(assert (=> b!1082398 (= res!481685 (isEmpty!6604 (tail!1555 (_2!6640 lt!362405))))))

(declare-fun b!1082399 () Bool)

(declare-fun res!481687 () Bool)

(declare-fun e!684539 () Bool)

(assert (=> b!1082399 (=> res!481687 e!684539)))

(assert (=> b!1082399 (= res!481687 e!684538)))

(declare-fun res!481688 () Bool)

(assert (=> b!1082399 (=> (not res!481688) (not e!684538))))

(declare-fun lt!362451 () Bool)

(assert (=> b!1082399 (= res!481688 lt!362451)))

(declare-fun b!1082400 () Bool)

(declare-fun e!684543 () Bool)

(declare-fun e!684542 () Bool)

(assert (=> b!1082400 (= e!684543 e!684542)))

(declare-fun c!182704 () Bool)

(assert (=> b!1082400 (= c!182704 ((_ is EmptyLang!2957) lt!362400))))

(declare-fun b!1082401 () Bool)

(declare-fun res!481686 () Bool)

(assert (=> b!1082401 (=> res!481686 e!684539)))

(assert (=> b!1082401 (= res!481686 (not ((_ is ElementMatch!2957) lt!362400)))))

(assert (=> b!1082401 (= e!684542 e!684539)))

(declare-fun b!1082402 () Bool)

(assert (=> b!1082402 (= e!684542 (not lt!362451))))

(declare-fun b!1082403 () Bool)

(assert (=> b!1082403 (= e!684537 (not (= (head!1993 (_2!6640 lt!362405)) (c!182598 lt!362400))))))

(declare-fun b!1082404 () Bool)

(declare-fun e!684541 () Bool)

(assert (=> b!1082404 (= e!684539 e!684541)))

(declare-fun res!481689 () Bool)

(assert (=> b!1082404 (=> (not res!481689) (not e!684541))))

(assert (=> b!1082404 (= res!481689 (not lt!362451))))

(declare-fun b!1082405 () Bool)

(assert (=> b!1082405 (= e!684541 e!684537)))

(declare-fun res!481683 () Bool)

(assert (=> b!1082405 (=> res!481683 e!684537)))

(assert (=> b!1082405 (= res!481683 call!79981)))

(declare-fun d!304534 () Bool)

(assert (=> d!304534 e!684543))

(declare-fun c!182705 () Bool)

(assert (=> d!304534 (= c!182705 ((_ is EmptyExpr!2957) lt!362400))))

(declare-fun e!684540 () Bool)

(assert (=> d!304534 (= lt!362451 e!684540)))

(declare-fun c!182706 () Bool)

(assert (=> d!304534 (= c!182706 (isEmpty!6604 (_2!6640 lt!362405)))))

(assert (=> d!304534 (validRegex!1426 lt!362400)))

(assert (=> d!304534 (= (matchR!1493 lt!362400 (_2!6640 lt!362405)) lt!362451)))

(declare-fun b!1082397 () Bool)

(assert (=> b!1082397 (= e!684543 (= lt!362451 call!79981))))

(declare-fun b!1082406 () Bool)

(assert (=> b!1082406 (= e!684538 (= (head!1993 (_2!6640 lt!362405)) (c!182598 lt!362400)))))

(declare-fun b!1082407 () Bool)

(assert (=> b!1082407 (= e!684540 (matchR!1493 (derivativeStep!838 lt!362400 (head!1993 (_2!6640 lt!362405))) (tail!1555 (_2!6640 lt!362405))))))

(declare-fun bm!79976 () Bool)

(assert (=> bm!79976 (= call!79981 (isEmpty!6604 (_2!6640 lt!362405)))))

(declare-fun b!1082408 () Bool)

(assert (=> b!1082408 (= e!684540 (nullable!1040 lt!362400))))

(assert (= (and d!304534 c!182706) b!1082408))

(assert (= (and d!304534 (not c!182706)) b!1082407))

(assert (= (and d!304534 c!182705) b!1082397))

(assert (= (and d!304534 (not c!182705)) b!1082400))

(assert (= (and b!1082400 c!182704) b!1082402))

(assert (= (and b!1082400 (not c!182704)) b!1082401))

(assert (= (and b!1082401 (not res!481686)) b!1082399))

(assert (= (and b!1082399 res!481688) b!1082395))

(assert (= (and b!1082395 res!481682) b!1082398))

(assert (= (and b!1082398 res!481685) b!1082406))

(assert (= (and b!1082399 (not res!481687)) b!1082404))

(assert (= (and b!1082404 res!481689) b!1082405))

(assert (= (and b!1082405 (not res!481683)) b!1082396))

(assert (= (and b!1082396 (not res!481684)) b!1082403))

(assert (= (or b!1082397 b!1082395 b!1082405) bm!79976))

(declare-fun m!1233191 () Bool)

(assert (=> d!304534 m!1233191))

(assert (=> d!304534 m!1232983))

(declare-fun m!1233193 () Bool)

(assert (=> b!1082396 m!1233193))

(assert (=> b!1082396 m!1233193))

(declare-fun m!1233195 () Bool)

(assert (=> b!1082396 m!1233195))

(declare-fun m!1233197 () Bool)

(assert (=> b!1082408 m!1233197))

(assert (=> b!1082398 m!1233193))

(assert (=> b!1082398 m!1233193))

(assert (=> b!1082398 m!1233195))

(assert (=> bm!79976 m!1233191))

(declare-fun m!1233199 () Bool)

(assert (=> b!1082407 m!1233199))

(assert (=> b!1082407 m!1233199))

(declare-fun m!1233201 () Bool)

(assert (=> b!1082407 m!1233201))

(assert (=> b!1082407 m!1233193))

(assert (=> b!1082407 m!1233201))

(assert (=> b!1082407 m!1233193))

(declare-fun m!1233203 () Bool)

(assert (=> b!1082407 m!1233203))

(assert (=> b!1082403 m!1233199))

(assert (=> b!1082406 m!1233199))

(assert (=> b!1081979 d!304534))

(declare-fun d!304536 () Bool)

(assert (=> d!304536 (= (matchR!1493 lt!362400 (_2!6640 lt!362405)) (matchR!1493 (removeUselessConcat!498 lt!362400) (_2!6640 lt!362405)))))

(declare-fun lt!362460 () Unit!15603)

(declare-fun choose!6867 (Regex!2957 List!10187) Unit!15603)

(assert (=> d!304536 (= lt!362460 (choose!6867 lt!362400 (_2!6640 lt!362405)))))

(assert (=> d!304536 (validRegex!1426 lt!362400)))

(assert (=> d!304536 (= (lemmaRemoveUselessConcatSound!290 lt!362400 (_2!6640 lt!362405)) lt!362460)))

(declare-fun bs!256279 () Bool)

(assert (= bs!256279 d!304536))

(assert (=> bs!256279 m!1232937))

(declare-fun m!1233205 () Bool)

(assert (=> bs!256279 m!1233205))

(assert (=> bs!256279 m!1232937))

(assert (=> bs!256279 m!1232983))

(declare-fun m!1233207 () Bool)

(assert (=> bs!256279 m!1233207))

(assert (=> bs!256279 m!1232935))

(assert (=> b!1081979 d!304536))

(declare-fun d!304538 () Bool)

(declare-fun lt!362466 () Int)

(assert (=> d!304538 (>= lt!362466 0)))

(declare-fun e!684561 () Int)

(assert (=> d!304538 (= lt!362466 e!684561)))

(declare-fun c!182715 () Bool)

(assert (=> d!304538 (= c!182715 ((_ is Nil!10171) s!10566))))

(assert (=> d!304538 (= (size!8016 s!10566) lt!362466)))

(declare-fun b!1082440 () Bool)

(assert (=> b!1082440 (= e!684561 0)))

(declare-fun b!1082441 () Bool)

(assert (=> b!1082441 (= e!684561 (+ 1 (size!8016 (t!101233 s!10566))))))

(assert (= (and d!304538 c!182715) b!1082440))

(assert (= (and d!304538 (not c!182715)) b!1082441))

(declare-fun m!1233233 () Bool)

(assert (=> b!1082441 m!1233233))

(assert (=> b!1081979 d!304538))

(declare-fun b!1082442 () Bool)

(declare-fun res!481705 () Bool)

(declare-fun e!684563 () Bool)

(assert (=> b!1082442 (=> (not res!481705) (not e!684563))))

(declare-fun call!79982 () Bool)

(assert (=> b!1082442 (= res!481705 (not call!79982))))

(declare-fun b!1082443 () Bool)

(declare-fun res!481707 () Bool)

(declare-fun e!684562 () Bool)

(assert (=> b!1082443 (=> res!481707 e!684562)))

(assert (=> b!1082443 (= res!481707 (not (isEmpty!6604 (tail!1555 (_2!6640 lt!362405)))))))

(declare-fun b!1082445 () Bool)

(declare-fun res!481708 () Bool)

(assert (=> b!1082445 (=> (not res!481708) (not e!684563))))

(assert (=> b!1082445 (= res!481708 (isEmpty!6604 (tail!1555 (_2!6640 lt!362405))))))

(declare-fun b!1082446 () Bool)

(declare-fun res!481710 () Bool)

(declare-fun e!684564 () Bool)

(assert (=> b!1082446 (=> res!481710 e!684564)))

(assert (=> b!1082446 (= res!481710 e!684563)))

(declare-fun res!481711 () Bool)

(assert (=> b!1082446 (=> (not res!481711) (not e!684563))))

(declare-fun lt!362467 () Bool)

(assert (=> b!1082446 (= res!481711 lt!362467)))

(declare-fun b!1082447 () Bool)

(declare-fun e!684568 () Bool)

(declare-fun e!684567 () Bool)

(assert (=> b!1082447 (= e!684568 e!684567)))

(declare-fun c!182716 () Bool)

(assert (=> b!1082447 (= c!182716 ((_ is EmptyLang!2957) lt!362396))))

(declare-fun b!1082448 () Bool)

(declare-fun res!481709 () Bool)

(assert (=> b!1082448 (=> res!481709 e!684564)))

(assert (=> b!1082448 (= res!481709 (not ((_ is ElementMatch!2957) lt!362396)))))

(assert (=> b!1082448 (= e!684567 e!684564)))

(declare-fun b!1082449 () Bool)

(assert (=> b!1082449 (= e!684567 (not lt!362467))))

(declare-fun b!1082450 () Bool)

(assert (=> b!1082450 (= e!684562 (not (= (head!1993 (_2!6640 lt!362405)) (c!182598 lt!362396))))))

(declare-fun b!1082451 () Bool)

(declare-fun e!684566 () Bool)

(assert (=> b!1082451 (= e!684564 e!684566)))

(declare-fun res!481712 () Bool)

(assert (=> b!1082451 (=> (not res!481712) (not e!684566))))

(assert (=> b!1082451 (= res!481712 (not lt!362467))))

(declare-fun b!1082452 () Bool)

(assert (=> b!1082452 (= e!684566 e!684562)))

(declare-fun res!481706 () Bool)

(assert (=> b!1082452 (=> res!481706 e!684562)))

(assert (=> b!1082452 (= res!481706 call!79982)))

(declare-fun d!304544 () Bool)

(assert (=> d!304544 e!684568))

(declare-fun c!182717 () Bool)

(assert (=> d!304544 (= c!182717 ((_ is EmptyExpr!2957) lt!362396))))

(declare-fun e!684565 () Bool)

(assert (=> d!304544 (= lt!362467 e!684565)))

(declare-fun c!182718 () Bool)

(assert (=> d!304544 (= c!182718 (isEmpty!6604 (_2!6640 lt!362405)))))

(assert (=> d!304544 (validRegex!1426 lt!362396)))

(assert (=> d!304544 (= (matchR!1493 lt!362396 (_2!6640 lt!362405)) lt!362467)))

(declare-fun b!1082444 () Bool)

(assert (=> b!1082444 (= e!684568 (= lt!362467 call!79982))))

(declare-fun b!1082453 () Bool)

(assert (=> b!1082453 (= e!684563 (= (head!1993 (_2!6640 lt!362405)) (c!182598 lt!362396)))))

(declare-fun b!1082454 () Bool)

(assert (=> b!1082454 (= e!684565 (matchR!1493 (derivativeStep!838 lt!362396 (head!1993 (_2!6640 lt!362405))) (tail!1555 (_2!6640 lt!362405))))))

(declare-fun bm!79977 () Bool)

(assert (=> bm!79977 (= call!79982 (isEmpty!6604 (_2!6640 lt!362405)))))

(declare-fun b!1082455 () Bool)

(assert (=> b!1082455 (= e!684565 (nullable!1040 lt!362396))))

(assert (= (and d!304544 c!182718) b!1082455))

(assert (= (and d!304544 (not c!182718)) b!1082454))

(assert (= (and d!304544 c!182717) b!1082444))

(assert (= (and d!304544 (not c!182717)) b!1082447))

(assert (= (and b!1082447 c!182716) b!1082449))

(assert (= (and b!1082447 (not c!182716)) b!1082448))

(assert (= (and b!1082448 (not res!481709)) b!1082446))

(assert (= (and b!1082446 res!481711) b!1082442))

(assert (= (and b!1082442 res!481705) b!1082445))

(assert (= (and b!1082445 res!481708) b!1082453))

(assert (= (and b!1082446 (not res!481710)) b!1082451))

(assert (= (and b!1082451 res!481712) b!1082452))

(assert (= (and b!1082452 (not res!481706)) b!1082443))

(assert (= (and b!1082443 (not res!481707)) b!1082450))

(assert (= (or b!1082444 b!1082442 b!1082452) bm!79977))

(assert (=> d!304544 m!1233191))

(declare-fun m!1233235 () Bool)

(assert (=> d!304544 m!1233235))

(assert (=> b!1082443 m!1233193))

(assert (=> b!1082443 m!1233193))

(assert (=> b!1082443 m!1233195))

(declare-fun m!1233237 () Bool)

(assert (=> b!1082455 m!1233237))

(assert (=> b!1082445 m!1233193))

(assert (=> b!1082445 m!1233193))

(assert (=> b!1082445 m!1233195))

(assert (=> bm!79977 m!1233191))

(assert (=> b!1082454 m!1233199))

(assert (=> b!1082454 m!1233199))

(declare-fun m!1233239 () Bool)

(assert (=> b!1082454 m!1233239))

(assert (=> b!1082454 m!1233193))

(assert (=> b!1082454 m!1233239))

(assert (=> b!1082454 m!1233193))

(declare-fun m!1233241 () Bool)

(assert (=> b!1082454 m!1233241))

(assert (=> b!1082450 m!1233199))

(assert (=> b!1082453 m!1233199))

(assert (=> b!1081979 d!304544))

(declare-fun d!304546 () Bool)

(assert (=> d!304546 (= (matchR!1493 (reg!3286 r!15766) (_1!6640 lt!362405)) (matchR!1493 (removeUselessConcat!498 (reg!3286 r!15766)) (_1!6640 lt!362405)))))

(declare-fun lt!362468 () Unit!15603)

(assert (=> d!304546 (= lt!362468 (choose!6867 (reg!3286 r!15766) (_1!6640 lt!362405)))))

(assert (=> d!304546 (validRegex!1426 (reg!3286 r!15766))))

(assert (=> d!304546 (= (lemmaRemoveUselessConcatSound!290 (reg!3286 r!15766) (_1!6640 lt!362405)) lt!362468)))

(declare-fun bs!256281 () Bool)

(assert (= bs!256281 d!304546))

(assert (=> bs!256281 m!1232951))

(declare-fun m!1233243 () Bool)

(assert (=> bs!256281 m!1233243))

(assert (=> bs!256281 m!1232951))

(assert (=> bs!256281 m!1233185))

(declare-fun m!1233245 () Bool)

(assert (=> bs!256281 m!1233245))

(assert (=> bs!256281 m!1232931))

(assert (=> b!1081979 d!304546))

(declare-fun d!304548 () Bool)

(declare-fun lt!362471 () Int)

(assert (=> d!304548 (>= lt!362471 0)))

(declare-fun e!684569 () Int)

(assert (=> d!304548 (= lt!362471 e!684569)))

(declare-fun c!182719 () Bool)

(assert (=> d!304548 (= c!182719 ((_ is Nil!10171) (_2!6640 lt!362405)))))

(assert (=> d!304548 (= (size!8016 (_2!6640 lt!362405)) lt!362471)))

(declare-fun b!1082456 () Bool)

(assert (=> b!1082456 (= e!684569 0)))

(declare-fun b!1082457 () Bool)

(assert (=> b!1082457 (= e!684569 (+ 1 (size!8016 (t!101233 (_2!6640 lt!362405)))))))

(assert (= (and d!304548 c!182719) b!1082456))

(assert (= (and d!304548 (not c!182719)) b!1082457))

(declare-fun m!1233247 () Bool)

(assert (=> b!1082457 m!1233247))

(assert (=> b!1081979 d!304548))

(declare-fun bm!79997 () Bool)

(declare-fun call!80005 () Regex!2957)

(declare-fun call!80006 () Regex!2957)

(assert (=> bm!79997 (= call!80005 call!80006)))

(declare-fun bm!79998 () Bool)

(declare-fun c!182741 () Bool)

(declare-fun c!182740 () Bool)

(assert (=> bm!79998 (= call!80006 (removeUselessConcat!498 (ite c!182741 (regOne!6426 lt!362400) (ite c!182740 (regTwo!6427 lt!362400) (reg!3286 lt!362400)))))))

(declare-fun b!1082528 () Bool)

(assert (=> b!1082528 (= c!182741 ((_ is Concat!4790) lt!362400))))

(declare-fun e!684612 () Regex!2957)

(declare-fun e!684609 () Regex!2957)

(assert (=> b!1082528 (= e!684612 e!684609)))

(declare-fun c!182744 () Bool)

(declare-fun c!182742 () Bool)

(declare-fun bm!79999 () Bool)

(declare-fun call!80002 () Regex!2957)

(assert (=> bm!79999 (= call!80002 (removeUselessConcat!498 (ite c!182742 (regTwo!6426 lt!362400) (ite c!182744 (regOne!6426 lt!362400) (ite c!182741 (regTwo!6426 lt!362400) (regOne!6427 lt!362400))))))))

(declare-fun b!1082529 () Bool)

(declare-fun call!80004 () Regex!2957)

(assert (=> b!1082529 (= e!684609 (Concat!4790 call!80006 call!80004))))

(declare-fun bm!80000 () Bool)

(declare-fun call!80003 () Regex!2957)

(assert (=> bm!80000 (= call!80003 call!80002)))

(declare-fun b!1082530 () Bool)

(assert (=> b!1082530 (= e!684612 call!80003)))

(declare-fun b!1082531 () Bool)

(declare-fun e!684610 () Regex!2957)

(assert (=> b!1082531 (= e!684610 e!684612)))

(assert (=> b!1082531 (= c!182744 (and ((_ is Concat!4790) lt!362400) ((_ is EmptyExpr!2957) (regTwo!6426 lt!362400))))))

(declare-fun b!1082533 () Bool)

(declare-fun e!684608 () Regex!2957)

(assert (=> b!1082533 (= e!684609 e!684608)))

(assert (=> b!1082533 (= c!182740 ((_ is Union!2957) lt!362400))))

(declare-fun bm!80001 () Bool)

(assert (=> bm!80001 (= call!80004 call!80003)))

(declare-fun b!1082534 () Bool)

(declare-fun e!684613 () Bool)

(declare-fun lt!362480 () Regex!2957)

(assert (=> b!1082534 (= e!684613 (= (nullable!1040 lt!362480) (nullable!1040 lt!362400)))))

(declare-fun b!1082535 () Bool)

(declare-fun e!684611 () Regex!2957)

(assert (=> b!1082535 (= e!684611 (Star!2957 call!80005))))

(declare-fun b!1082536 () Bool)

(assert (=> b!1082536 (= e!684610 call!80002)))

(declare-fun b!1082537 () Bool)

(assert (=> b!1082537 (= e!684608 (Union!2957 call!80004 call!80005))))

(declare-fun b!1082538 () Bool)

(declare-fun c!182743 () Bool)

(assert (=> b!1082538 (= c!182743 ((_ is Star!2957) lt!362400))))

(assert (=> b!1082538 (= e!684608 e!684611)))

(declare-fun b!1082532 () Bool)

(assert (=> b!1082532 (= e!684611 lt!362400)))

(declare-fun d!304550 () Bool)

(assert (=> d!304550 e!684613))

(declare-fun res!481743 () Bool)

(assert (=> d!304550 (=> (not res!481743) (not e!684613))))

(assert (=> d!304550 (= res!481743 (validRegex!1426 lt!362480))))

(assert (=> d!304550 (= lt!362480 e!684610)))

(assert (=> d!304550 (= c!182742 (and ((_ is Concat!4790) lt!362400) ((_ is EmptyExpr!2957) (regOne!6426 lt!362400))))))

(assert (=> d!304550 (validRegex!1426 lt!362400)))

(assert (=> d!304550 (= (removeUselessConcat!498 lt!362400) lt!362480)))

(assert (= (and d!304550 c!182742) b!1082536))

(assert (= (and d!304550 (not c!182742)) b!1082531))

(assert (= (and b!1082531 c!182744) b!1082530))

(assert (= (and b!1082531 (not c!182744)) b!1082528))

(assert (= (and b!1082528 c!182741) b!1082529))

(assert (= (and b!1082528 (not c!182741)) b!1082533))

(assert (= (and b!1082533 c!182740) b!1082537))

(assert (= (and b!1082533 (not c!182740)) b!1082538))

(assert (= (and b!1082538 c!182743) b!1082535))

(assert (= (and b!1082538 (not c!182743)) b!1082532))

(assert (= (or b!1082537 b!1082535) bm!79997))

(assert (= (or b!1082529 b!1082537) bm!80001))

(assert (= (or b!1082529 bm!79997) bm!79998))

(assert (= (or b!1082530 bm!80001) bm!80000))

(assert (= (or b!1082536 bm!80000) bm!79999))

(assert (= (and d!304550 res!481743) b!1082534))

(declare-fun m!1233283 () Bool)

(assert (=> bm!79998 m!1233283))

(declare-fun m!1233285 () Bool)

(assert (=> bm!79999 m!1233285))

(declare-fun m!1233287 () Bool)

(assert (=> b!1082534 m!1233287))

(assert (=> b!1082534 m!1233197))

(declare-fun m!1233289 () Bool)

(assert (=> d!304550 m!1233289))

(assert (=> d!304550 m!1232983))

(assert (=> b!1081979 d!304550))

(declare-fun bs!256302 () Bool)

(declare-fun b!1082544 () Bool)

(assert (= bs!256302 (and b!1082544 b!1081981)))

(declare-fun lambda!39321 () Int)

(assert (=> bs!256302 (not (= lambda!39321 lambda!39295))))

(declare-fun bs!256303 () Bool)

(assert (= bs!256303 (and b!1082544 b!1082202)))

(assert (=> bs!256303 (= (and (= (reg!3286 lt!362411) (reg!3286 r!15766)) (= lt!362411 r!15766)) (= lambda!39321 lambda!39303))))

(declare-fun bs!256304 () Bool)

(assert (= bs!256304 (and b!1082544 b!1081985)))

(assert (=> bs!256304 (= (= (reg!3286 lt!362411) lt!362393) (= lambda!39321 lambda!39298))))

(assert (=> bs!256304 (not (= lambda!39321 lambda!39297))))

(declare-fun bs!256305 () Bool)

(assert (= bs!256305 (and b!1082544 b!1082198)))

(assert (=> bs!256305 (not (= lambda!39321 lambda!39304))))

(assert (=> bs!256302 (= (and (= (reg!3286 lt!362411) (reg!3286 r!15766)) (= lt!362411 lt!362400)) (= lambda!39321 lambda!39296))))

(assert (=> b!1082544 true))

(assert (=> b!1082544 true))

(declare-fun bs!256311 () Bool)

(declare-fun b!1082540 () Bool)

(assert (= bs!256311 (and b!1082540 b!1081981)))

(declare-fun lambda!39323 () Int)

(assert (=> bs!256311 (not (= lambda!39323 lambda!39295))))

(declare-fun bs!256313 () Bool)

(assert (= bs!256313 (and b!1082540 b!1082202)))

(assert (=> bs!256313 (not (= lambda!39323 lambda!39303))))

(declare-fun bs!256315 () Bool)

(assert (= bs!256315 (and b!1082540 b!1082544)))

(assert (=> bs!256315 (not (= lambda!39323 lambda!39321))))

(declare-fun bs!256316 () Bool)

(assert (= bs!256316 (and b!1082540 b!1081985)))

(assert (=> bs!256316 (not (= lambda!39323 lambda!39298))))

(assert (=> bs!256316 (not (= lambda!39323 lambda!39297))))

(declare-fun bs!256317 () Bool)

(assert (= bs!256317 (and b!1082540 b!1082198)))

(assert (=> bs!256317 (= (and (= (regOne!6426 lt!362411) (regOne!6426 r!15766)) (= (regTwo!6426 lt!362411) (regTwo!6426 r!15766))) (= lambda!39323 lambda!39304))))

(assert (=> bs!256311 (not (= lambda!39323 lambda!39296))))

(assert (=> b!1082540 true))

(assert (=> b!1082540 true))

(declare-fun b!1082539 () Bool)

(declare-fun e!684614 () Bool)

(assert (=> b!1082539 (= e!684614 (matchRSpec!756 (regTwo!6427 lt!362411) s!10566))))

(declare-fun e!684615 () Bool)

(declare-fun call!80008 () Bool)

(assert (=> b!1082540 (= e!684615 call!80008)))

(declare-fun b!1082541 () Bool)

(declare-fun e!684616 () Bool)

(assert (=> b!1082541 (= e!684616 e!684615)))

(declare-fun c!182746 () Bool)

(assert (=> b!1082541 (= c!182746 ((_ is Star!2957) lt!362411))))

(declare-fun bm!80002 () Bool)

(assert (=> bm!80002 (= call!80008 (Exists!680 (ite c!182746 lambda!39321 lambda!39323)))))

(declare-fun b!1082542 () Bool)

(declare-fun c!182745 () Bool)

(assert (=> b!1082542 (= c!182745 ((_ is Union!2957) lt!362411))))

(declare-fun e!684620 () Bool)

(assert (=> b!1082542 (= e!684620 e!684616)))

(declare-fun b!1082543 () Bool)

(declare-fun e!684619 () Bool)

(declare-fun call!80007 () Bool)

(assert (=> b!1082543 (= e!684619 call!80007)))

(declare-fun e!684617 () Bool)

(assert (=> b!1082544 (= e!684617 call!80008)))

(declare-fun d!304564 () Bool)

(declare-fun c!182747 () Bool)

(assert (=> d!304564 (= c!182747 ((_ is EmptyExpr!2957) lt!362411))))

(assert (=> d!304564 (= (matchRSpec!756 lt!362411 s!10566) e!684619)))

(declare-fun bm!80003 () Bool)

(assert (=> bm!80003 (= call!80007 (isEmpty!6604 s!10566))))

(declare-fun b!1082545 () Bool)

(assert (=> b!1082545 (= e!684616 e!684614)))

(declare-fun res!481744 () Bool)

(assert (=> b!1082545 (= res!481744 (matchRSpec!756 (regOne!6427 lt!362411) s!10566))))

(assert (=> b!1082545 (=> res!481744 e!684614)))

(declare-fun b!1082546 () Bool)

(declare-fun e!684618 () Bool)

(assert (=> b!1082546 (= e!684619 e!684618)))

(declare-fun res!481746 () Bool)

(assert (=> b!1082546 (= res!481746 (not ((_ is EmptyLang!2957) lt!362411)))))

(assert (=> b!1082546 (=> (not res!481746) (not e!684618))))

(declare-fun b!1082547 () Bool)

(assert (=> b!1082547 (= e!684620 (= s!10566 (Cons!10171 (c!182598 lt!362411) Nil!10171)))))

(declare-fun b!1082548 () Bool)

(declare-fun c!182748 () Bool)

(assert (=> b!1082548 (= c!182748 ((_ is ElementMatch!2957) lt!362411))))

(assert (=> b!1082548 (= e!684618 e!684620)))

(declare-fun b!1082549 () Bool)

(declare-fun res!481745 () Bool)

(assert (=> b!1082549 (=> res!481745 e!684617)))

(assert (=> b!1082549 (= res!481745 call!80007)))

(assert (=> b!1082549 (= e!684615 e!684617)))

(assert (= (and d!304564 c!182747) b!1082543))

(assert (= (and d!304564 (not c!182747)) b!1082546))

(assert (= (and b!1082546 res!481746) b!1082548))

(assert (= (and b!1082548 c!182748) b!1082547))

(assert (= (and b!1082548 (not c!182748)) b!1082542))

(assert (= (and b!1082542 c!182745) b!1082545))

(assert (= (and b!1082542 (not c!182745)) b!1082541))

(assert (= (and b!1082545 (not res!481744)) b!1082539))

(assert (= (and b!1082541 c!182746) b!1082549))

(assert (= (and b!1082541 (not c!182746)) b!1082540))

(assert (= (and b!1082549 (not res!481745)) b!1082544))

(assert (= (or b!1082544 b!1082540) bm!80002))

(assert (= (or b!1082543 b!1082549) bm!80003))

(declare-fun m!1233317 () Bool)

(assert (=> b!1082539 m!1233317))

(declare-fun m!1233321 () Bool)

(assert (=> bm!80002 m!1233321))

(assert (=> bm!80003 m!1232973))

(declare-fun m!1233323 () Bool)

(assert (=> b!1082545 m!1233323))

(assert (=> b!1081985 d!304564))

(declare-fun d!304576 () Bool)

(declare-fun isEmpty!6606 (Option!2456) Bool)

(assert (=> d!304576 (= (isDefined!2098 lt!362394) (not (isEmpty!6606 lt!362394)))))

(declare-fun bs!256324 () Bool)

(assert (= bs!256324 d!304576))

(declare-fun m!1233325 () Bool)

(assert (=> bs!256324 m!1233325))

(assert (=> b!1081985 d!304576))

(declare-fun bs!256340 () Bool)

(declare-fun d!304578 () Bool)

(assert (= bs!256340 (and d!304578 b!1081981)))

(declare-fun lambda!39331 () Int)

(assert (=> bs!256340 (= (and (= lt!362393 (reg!3286 r!15766)) (= (Star!2957 lt!362393) lt!362400)) (= lambda!39331 lambda!39295))))

(declare-fun bs!256341 () Bool)

(assert (= bs!256341 (and d!304578 b!1082202)))

(assert (=> bs!256341 (not (= lambda!39331 lambda!39303))))

(declare-fun bs!256342 () Bool)

(assert (= bs!256342 (and d!304578 b!1082540)))

(assert (=> bs!256342 (not (= lambda!39331 lambda!39323))))

(declare-fun bs!256343 () Bool)

(assert (= bs!256343 (and d!304578 b!1082544)))

(assert (=> bs!256343 (not (= lambda!39331 lambda!39321))))

(declare-fun bs!256344 () Bool)

(assert (= bs!256344 (and d!304578 b!1081985)))

(assert (=> bs!256344 (not (= lambda!39331 lambda!39298))))

(assert (=> bs!256344 (= (= (Star!2957 lt!362393) lt!362411) (= lambda!39331 lambda!39297))))

(declare-fun bs!256345 () Bool)

(assert (= bs!256345 (and d!304578 b!1082198)))

(assert (=> bs!256345 (not (= lambda!39331 lambda!39304))))

(assert (=> bs!256340 (not (= lambda!39331 lambda!39296))))

(assert (=> d!304578 true))

(assert (=> d!304578 true))

(declare-fun lambda!39332 () Int)

(assert (=> bs!256340 (not (= lambda!39332 lambda!39295))))

(assert (=> bs!256341 (= (and (= lt!362393 (reg!3286 r!15766)) (= (Star!2957 lt!362393) r!15766)) (= lambda!39332 lambda!39303))))

(assert (=> bs!256342 (not (= lambda!39332 lambda!39323))))

(assert (=> bs!256343 (= (and (= lt!362393 (reg!3286 lt!362411)) (= (Star!2957 lt!362393) lt!362411)) (= lambda!39332 lambda!39321))))

(assert (=> bs!256344 (= (= (Star!2957 lt!362393) lt!362411) (= lambda!39332 lambda!39298))))

(declare-fun bs!256346 () Bool)

(assert (= bs!256346 d!304578))

(assert (=> bs!256346 (not (= lambda!39332 lambda!39331))))

(assert (=> bs!256344 (not (= lambda!39332 lambda!39297))))

(assert (=> bs!256345 (not (= lambda!39332 lambda!39304))))

(assert (=> bs!256340 (= (and (= lt!362393 (reg!3286 r!15766)) (= (Star!2957 lt!362393) lt!362400)) (= lambda!39332 lambda!39296))))

(assert (=> d!304578 true))

(assert (=> d!304578 true))

(assert (=> d!304578 (= (Exists!680 lambda!39331) (Exists!680 lambda!39332))))

(declare-fun lt!362490 () Unit!15603)

(declare-fun choose!6871 (Regex!2957 List!10187) Unit!15603)

(assert (=> d!304578 (= lt!362490 (choose!6871 lt!362393 s!10566))))

(assert (=> d!304578 (validRegex!1426 lt!362393)))

(assert (=> d!304578 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!198 lt!362393 s!10566) lt!362490)))

(declare-fun m!1233343 () Bool)

(assert (=> bs!256346 m!1233343))

(declare-fun m!1233345 () Bool)

(assert (=> bs!256346 m!1233345))

(declare-fun m!1233347 () Bool)

(assert (=> bs!256346 m!1233347))

(assert (=> bs!256346 m!1233003))

(assert (=> b!1081985 d!304578))

(declare-fun b!1082647 () Bool)

(declare-fun res!481786 () Bool)

(declare-fun e!684667 () Bool)

(assert (=> b!1082647 (=> (not res!481786) (not e!684667))))

(declare-fun lt!362498 () Option!2456)

(assert (=> b!1082647 (= res!481786 (matchR!1493 lt!362411 (_2!6640 (get!3684 lt!362498))))))

(declare-fun b!1082648 () Bool)

(declare-fun lt!362499 () Unit!15603)

(declare-fun lt!362497 () Unit!15603)

(assert (=> b!1082648 (= lt!362499 lt!362497)))

(assert (=> b!1082648 (= (++!2823 (++!2823 Nil!10171 (Cons!10171 (h!15572 s!10566) Nil!10171)) (t!101233 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!416 (List!10187 C!6484 List!10187 List!10187) Unit!15603)

(assert (=> b!1082648 (= lt!362497 (lemmaMoveElementToOtherListKeepsConcatEq!416 Nil!10171 (h!15572 s!10566) (t!101233 s!10566) s!10566))))

(declare-fun e!684668 () Option!2456)

(assert (=> b!1082648 (= e!684668 (findConcatSeparation!562 lt!362393 lt!362411 (++!2823 Nil!10171 (Cons!10171 (h!15572 s!10566) Nil!10171)) (t!101233 s!10566) s!10566))))

(declare-fun d!304588 () Bool)

(declare-fun e!684665 () Bool)

(assert (=> d!304588 e!684665))

(declare-fun res!481787 () Bool)

(assert (=> d!304588 (=> res!481787 e!684665)))

(assert (=> d!304588 (= res!481787 e!684667)))

(declare-fun res!481784 () Bool)

(assert (=> d!304588 (=> (not res!481784) (not e!684667))))

(assert (=> d!304588 (= res!481784 (isDefined!2098 lt!362498))))

(declare-fun e!684666 () Option!2456)

(assert (=> d!304588 (= lt!362498 e!684666)))

(declare-fun c!182762 () Bool)

(declare-fun e!684664 () Bool)

(assert (=> d!304588 (= c!182762 e!684664)))

(declare-fun res!481783 () Bool)

(assert (=> d!304588 (=> (not res!481783) (not e!684664))))

(assert (=> d!304588 (= res!481783 (matchR!1493 lt!362393 Nil!10171))))

(assert (=> d!304588 (validRegex!1426 lt!362393)))

(assert (=> d!304588 (= (findConcatSeparation!562 lt!362393 lt!362411 Nil!10171 s!10566 s!10566) lt!362498)))

(declare-fun b!1082649 () Bool)

(assert (=> b!1082649 (= e!684665 (not (isDefined!2098 lt!362498)))))

(declare-fun b!1082650 () Bool)

(declare-fun res!481785 () Bool)

(assert (=> b!1082650 (=> (not res!481785) (not e!684667))))

(assert (=> b!1082650 (= res!481785 (matchR!1493 lt!362393 (_1!6640 (get!3684 lt!362498))))))

(declare-fun b!1082651 () Bool)

(assert (=> b!1082651 (= e!684666 (Some!2455 (tuple2!11629 Nil!10171 s!10566)))))

(declare-fun b!1082652 () Bool)

(assert (=> b!1082652 (= e!684664 (matchR!1493 lt!362411 s!10566))))

(declare-fun b!1082653 () Bool)

(assert (=> b!1082653 (= e!684668 None!2455)))

(declare-fun b!1082654 () Bool)

(assert (=> b!1082654 (= e!684667 (= (++!2823 (_1!6640 (get!3684 lt!362498)) (_2!6640 (get!3684 lt!362498))) s!10566))))

(declare-fun b!1082655 () Bool)

(assert (=> b!1082655 (= e!684666 e!684668)))

(declare-fun c!182763 () Bool)

(assert (=> b!1082655 (= c!182763 ((_ is Nil!10171) s!10566))))

(assert (= (and d!304588 res!481783) b!1082652))

(assert (= (and d!304588 c!182762) b!1082651))

(assert (= (and d!304588 (not c!182762)) b!1082655))

(assert (= (and b!1082655 c!182763) b!1082653))

(assert (= (and b!1082655 (not c!182763)) b!1082648))

(assert (= (and d!304588 res!481784) b!1082650))

(assert (= (and b!1082650 res!481785) b!1082647))

(assert (= (and b!1082647 res!481786) b!1082654))

(assert (= (and d!304588 (not res!481787)) b!1082649))

(declare-fun m!1233349 () Bool)

(assert (=> b!1082654 m!1233349))

(declare-fun m!1233351 () Bool)

(assert (=> b!1082654 m!1233351))

(declare-fun m!1233353 () Bool)

(assert (=> b!1082649 m!1233353))

(assert (=> b!1082650 m!1233349))

(declare-fun m!1233355 () Bool)

(assert (=> b!1082650 m!1233355))

(assert (=> b!1082652 m!1232955))

(declare-fun m!1233357 () Bool)

(assert (=> b!1082648 m!1233357))

(assert (=> b!1082648 m!1233357))

(declare-fun m!1233359 () Bool)

(assert (=> b!1082648 m!1233359))

(declare-fun m!1233361 () Bool)

(assert (=> b!1082648 m!1233361))

(assert (=> b!1082648 m!1233357))

(declare-fun m!1233363 () Bool)

(assert (=> b!1082648 m!1233363))

(assert (=> b!1082647 m!1233349))

(declare-fun m!1233365 () Bool)

(assert (=> b!1082647 m!1233365))

(assert (=> d!304588 m!1233353))

(declare-fun m!1233367 () Bool)

(assert (=> d!304588 m!1233367))

(assert (=> d!304588 m!1233003))

(assert (=> b!1081985 d!304588))

(declare-fun d!304590 () Bool)

(assert (=> d!304590 (= (isEmpty!6604 s!10566) ((_ is Nil!10171) s!10566))))

(assert (=> b!1081985 d!304590))

(declare-fun d!304592 () Bool)

(assert (=> d!304592 (= (matchR!1493 lt!362411 s!10566) (matchRSpec!756 lt!362411 s!10566))))

(declare-fun lt!362500 () Unit!15603)

(assert (=> d!304592 (= lt!362500 (choose!6865 lt!362411 s!10566))))

(assert (=> d!304592 (validRegex!1426 lt!362411)))

(assert (=> d!304592 (= (mainMatchTheorem!756 lt!362411 s!10566) lt!362500)))

(declare-fun bs!256347 () Bool)

(assert (= bs!256347 d!304592))

(assert (=> bs!256347 m!1232955))

(assert (=> bs!256347 m!1232971))

(declare-fun m!1233369 () Bool)

(assert (=> bs!256347 m!1233369))

(declare-fun m!1233371 () Bool)

(assert (=> bs!256347 m!1233371))

(assert (=> b!1081985 d!304592))

(declare-fun bs!256348 () Bool)

(declare-fun d!304594 () Bool)

(assert (= bs!256348 (and d!304594 b!1081981)))

(declare-fun lambda!39335 () Int)

(assert (=> bs!256348 (= (and (= lt!362393 (reg!3286 r!15766)) (= lt!362411 lt!362400)) (= lambda!39335 lambda!39295))))

(declare-fun bs!256349 () Bool)

(assert (= bs!256349 (and d!304594 b!1082202)))

(assert (=> bs!256349 (not (= lambda!39335 lambda!39303))))

(declare-fun bs!256350 () Bool)

(assert (= bs!256350 (and d!304594 b!1082540)))

(assert (=> bs!256350 (not (= lambda!39335 lambda!39323))))

(declare-fun bs!256351 () Bool)

(assert (= bs!256351 (and d!304594 b!1082544)))

(assert (=> bs!256351 (not (= lambda!39335 lambda!39321))))

(declare-fun bs!256352 () Bool)

(assert (= bs!256352 (and d!304594 b!1081985)))

(assert (=> bs!256352 (not (= lambda!39335 lambda!39298))))

(declare-fun bs!256353 () Bool)

(assert (= bs!256353 (and d!304594 d!304578)))

(assert (=> bs!256353 (not (= lambda!39335 lambda!39332))))

(assert (=> bs!256353 (= (= lt!362411 (Star!2957 lt!362393)) (= lambda!39335 lambda!39331))))

(assert (=> bs!256352 (= lambda!39335 lambda!39297)))

(declare-fun bs!256354 () Bool)

(assert (= bs!256354 (and d!304594 b!1082198)))

(assert (=> bs!256354 (not (= lambda!39335 lambda!39304))))

(assert (=> bs!256348 (not (= lambda!39335 lambda!39296))))

(assert (=> d!304594 true))

(assert (=> d!304594 true))

(assert (=> d!304594 true))

(assert (=> d!304594 (= (isDefined!2098 (findConcatSeparation!562 lt!362393 lt!362411 Nil!10171 s!10566 s!10566)) (Exists!680 lambda!39335))))

(declare-fun lt!362503 () Unit!15603)

(declare-fun choose!6872 (Regex!2957 Regex!2957 List!10187) Unit!15603)

(assert (=> d!304594 (= lt!362503 (choose!6872 lt!362393 lt!362411 s!10566))))

(assert (=> d!304594 (validRegex!1426 lt!362393)))

(assert (=> d!304594 (= (lemmaFindConcatSeparationEquivalentToExists!562 lt!362393 lt!362411 s!10566) lt!362503)))

(declare-fun bs!256355 () Bool)

(assert (= bs!256355 d!304594))

(declare-fun m!1233373 () Bool)

(assert (=> bs!256355 m!1233373))

(assert (=> bs!256355 m!1233003))

(declare-fun m!1233375 () Bool)

(assert (=> bs!256355 m!1233375))

(assert (=> bs!256355 m!1232977))

(declare-fun m!1233377 () Bool)

(assert (=> bs!256355 m!1233377))

(assert (=> bs!256355 m!1232977))

(assert (=> b!1081985 d!304594))

(declare-fun d!304596 () Bool)

(declare-fun choose!6873 (Int) Bool)

(assert (=> d!304596 (= (Exists!680 lambda!39297) (choose!6873 lambda!39297))))

(declare-fun bs!256356 () Bool)

(assert (= bs!256356 d!304596))

(declare-fun m!1233379 () Bool)

(assert (=> bs!256356 m!1233379))

(assert (=> b!1081985 d!304596))

(declare-fun d!304598 () Bool)

(assert (=> d!304598 (= (Exists!680 lambda!39298) (choose!6873 lambda!39298))))

(declare-fun bs!256357 () Bool)

(assert (= bs!256357 d!304598))

(declare-fun m!1233381 () Bool)

(assert (=> bs!256357 m!1233381))

(assert (=> b!1081985 d!304598))

(declare-fun bm!80007 () Bool)

(declare-fun call!80015 () Regex!2957)

(declare-fun call!80016 () Regex!2957)

(assert (=> bm!80007 (= call!80015 call!80016)))

(declare-fun c!182765 () Bool)

(declare-fun c!182764 () Bool)

(declare-fun bm!80008 () Bool)

(assert (=> bm!80008 (= call!80016 (removeUselessConcat!498 (ite c!182765 (regOne!6426 r!15766) (ite c!182764 (regTwo!6427 r!15766) (reg!3286 r!15766)))))))

(declare-fun b!1082660 () Bool)

(assert (=> b!1082660 (= c!182765 ((_ is Concat!4790) r!15766))))

(declare-fun e!684675 () Regex!2957)

(declare-fun e!684672 () Regex!2957)

(assert (=> b!1082660 (= e!684675 e!684672)))

(declare-fun call!80012 () Regex!2957)

(declare-fun c!182766 () Bool)

(declare-fun c!182768 () Bool)

(declare-fun bm!80009 () Bool)

(assert (=> bm!80009 (= call!80012 (removeUselessConcat!498 (ite c!182766 (regTwo!6426 r!15766) (ite c!182768 (regOne!6426 r!15766) (ite c!182765 (regTwo!6426 r!15766) (regOne!6427 r!15766))))))))

(declare-fun b!1082661 () Bool)

(declare-fun call!80014 () Regex!2957)

(assert (=> b!1082661 (= e!684672 (Concat!4790 call!80016 call!80014))))

(declare-fun bm!80010 () Bool)

(declare-fun call!80013 () Regex!2957)

(assert (=> bm!80010 (= call!80013 call!80012)))

(declare-fun b!1082662 () Bool)

(assert (=> b!1082662 (= e!684675 call!80013)))

(declare-fun b!1082663 () Bool)

(declare-fun e!684673 () Regex!2957)

(assert (=> b!1082663 (= e!684673 e!684675)))

(assert (=> b!1082663 (= c!182768 (and ((_ is Concat!4790) r!15766) ((_ is EmptyExpr!2957) (regTwo!6426 r!15766))))))

(declare-fun b!1082665 () Bool)

(declare-fun e!684671 () Regex!2957)

(assert (=> b!1082665 (= e!684672 e!684671)))

(assert (=> b!1082665 (= c!182764 ((_ is Union!2957) r!15766))))

(declare-fun bm!80011 () Bool)

(assert (=> bm!80011 (= call!80014 call!80013)))

(declare-fun b!1082666 () Bool)

(declare-fun e!684676 () Bool)

(declare-fun lt!362504 () Regex!2957)

(assert (=> b!1082666 (= e!684676 (= (nullable!1040 lt!362504) (nullable!1040 r!15766)))))

(declare-fun b!1082667 () Bool)

(declare-fun e!684674 () Regex!2957)

(assert (=> b!1082667 (= e!684674 (Star!2957 call!80015))))

(declare-fun b!1082668 () Bool)

(assert (=> b!1082668 (= e!684673 call!80012)))

(declare-fun b!1082669 () Bool)

(assert (=> b!1082669 (= e!684671 (Union!2957 call!80014 call!80015))))

(declare-fun b!1082670 () Bool)

(declare-fun c!182767 () Bool)

(assert (=> b!1082670 (= c!182767 ((_ is Star!2957) r!15766))))

(assert (=> b!1082670 (= e!684671 e!684674)))

(declare-fun b!1082664 () Bool)

(assert (=> b!1082664 (= e!684674 r!15766)))

(declare-fun d!304600 () Bool)

(assert (=> d!304600 e!684676))

(declare-fun res!481792 () Bool)

(assert (=> d!304600 (=> (not res!481792) (not e!684676))))

(assert (=> d!304600 (= res!481792 (validRegex!1426 lt!362504))))

(assert (=> d!304600 (= lt!362504 e!684673)))

(assert (=> d!304600 (= c!182766 (and ((_ is Concat!4790) r!15766) ((_ is EmptyExpr!2957) (regOne!6426 r!15766))))))

(assert (=> d!304600 (validRegex!1426 r!15766)))

(assert (=> d!304600 (= (removeUselessConcat!498 r!15766) lt!362504)))

(assert (= (and d!304600 c!182766) b!1082668))

(assert (= (and d!304600 (not c!182766)) b!1082663))

(assert (= (and b!1082663 c!182768) b!1082662))

(assert (= (and b!1082663 (not c!182768)) b!1082660))

(assert (= (and b!1082660 c!182765) b!1082661))

(assert (= (and b!1082660 (not c!182765)) b!1082665))

(assert (= (and b!1082665 c!182764) b!1082669))

(assert (= (and b!1082665 (not c!182764)) b!1082670))

(assert (= (and b!1082670 c!182767) b!1082667))

(assert (= (and b!1082670 (not c!182767)) b!1082664))

(assert (= (or b!1082669 b!1082667) bm!80007))

(assert (= (or b!1082661 b!1082669) bm!80011))

(assert (= (or b!1082661 bm!80007) bm!80008))

(assert (= (or b!1082662 bm!80011) bm!80010))

(assert (= (or b!1082668 bm!80010) bm!80009))

(assert (= (and d!304600 res!481792) b!1082666))

(declare-fun m!1233383 () Bool)

(assert (=> bm!80008 m!1233383))

(declare-fun m!1233385 () Bool)

(assert (=> bm!80009 m!1233385))

(declare-fun m!1233387 () Bool)

(assert (=> b!1082666 m!1233387))

(assert (=> b!1082666 m!1233089))

(declare-fun m!1233389 () Bool)

(assert (=> d!304600 m!1233389))

(assert (=> d!304600 m!1232985))

(assert (=> b!1081986 d!304600))

(declare-fun b!1082671 () Bool)

(declare-fun res!481793 () Bool)

(declare-fun e!684678 () Bool)

(assert (=> b!1082671 (=> (not res!481793) (not e!684678))))

(declare-fun call!80017 () Bool)

(assert (=> b!1082671 (= res!481793 (not call!80017))))

(declare-fun b!1082672 () Bool)

(declare-fun res!481795 () Bool)

(declare-fun e!684677 () Bool)

(assert (=> b!1082672 (=> res!481795 e!684677)))

(assert (=> b!1082672 (= res!481795 (not (isEmpty!6604 (tail!1555 s!10566))))))

(declare-fun b!1082674 () Bool)

(declare-fun res!481796 () Bool)

(assert (=> b!1082674 (=> (not res!481796) (not e!684678))))

(assert (=> b!1082674 (= res!481796 (isEmpty!6604 (tail!1555 s!10566)))))

(declare-fun b!1082675 () Bool)

(declare-fun res!481798 () Bool)

(declare-fun e!684679 () Bool)

(assert (=> b!1082675 (=> res!481798 e!684679)))

(assert (=> b!1082675 (= res!481798 e!684678)))

(declare-fun res!481799 () Bool)

(assert (=> b!1082675 (=> (not res!481799) (not e!684678))))

(declare-fun lt!362505 () Bool)

(assert (=> b!1082675 (= res!481799 lt!362505)))

(declare-fun b!1082676 () Bool)

(declare-fun e!684683 () Bool)

(declare-fun e!684682 () Bool)

(assert (=> b!1082676 (= e!684683 e!684682)))

(declare-fun c!182769 () Bool)

(assert (=> b!1082676 (= c!182769 ((_ is EmptyLang!2957) (removeUselessConcat!498 r!15766)))))

(declare-fun b!1082677 () Bool)

(declare-fun res!481797 () Bool)

(assert (=> b!1082677 (=> res!481797 e!684679)))

(assert (=> b!1082677 (= res!481797 (not ((_ is ElementMatch!2957) (removeUselessConcat!498 r!15766))))))

(assert (=> b!1082677 (= e!684682 e!684679)))

(declare-fun b!1082678 () Bool)

(assert (=> b!1082678 (= e!684682 (not lt!362505))))

(declare-fun b!1082679 () Bool)

(assert (=> b!1082679 (= e!684677 (not (= (head!1993 s!10566) (c!182598 (removeUselessConcat!498 r!15766)))))))

(declare-fun b!1082680 () Bool)

(declare-fun e!684681 () Bool)

(assert (=> b!1082680 (= e!684679 e!684681)))

(declare-fun res!481800 () Bool)

(assert (=> b!1082680 (=> (not res!481800) (not e!684681))))

(assert (=> b!1082680 (= res!481800 (not lt!362505))))

(declare-fun b!1082681 () Bool)

(assert (=> b!1082681 (= e!684681 e!684677)))

(declare-fun res!481794 () Bool)

(assert (=> b!1082681 (=> res!481794 e!684677)))

(assert (=> b!1082681 (= res!481794 call!80017)))

(declare-fun d!304602 () Bool)

(assert (=> d!304602 e!684683))

(declare-fun c!182770 () Bool)

(assert (=> d!304602 (= c!182770 ((_ is EmptyExpr!2957) (removeUselessConcat!498 r!15766)))))

(declare-fun e!684680 () Bool)

(assert (=> d!304602 (= lt!362505 e!684680)))

(declare-fun c!182771 () Bool)

(assert (=> d!304602 (= c!182771 (isEmpty!6604 s!10566))))

(assert (=> d!304602 (validRegex!1426 (removeUselessConcat!498 r!15766))))

(assert (=> d!304602 (= (matchR!1493 (removeUselessConcat!498 r!15766) s!10566) lt!362505)))

(declare-fun b!1082673 () Bool)

(assert (=> b!1082673 (= e!684683 (= lt!362505 call!80017))))

(declare-fun b!1082682 () Bool)

(assert (=> b!1082682 (= e!684678 (= (head!1993 s!10566) (c!182598 (removeUselessConcat!498 r!15766))))))

(declare-fun b!1082683 () Bool)

(assert (=> b!1082683 (= e!684680 (matchR!1493 (derivativeStep!838 (removeUselessConcat!498 r!15766) (head!1993 s!10566)) (tail!1555 s!10566)))))

(declare-fun bm!80012 () Bool)

(assert (=> bm!80012 (= call!80017 (isEmpty!6604 s!10566))))

(declare-fun b!1082684 () Bool)

(assert (=> b!1082684 (= e!684680 (nullable!1040 (removeUselessConcat!498 r!15766)))))

(assert (= (and d!304602 c!182771) b!1082684))

(assert (= (and d!304602 (not c!182771)) b!1082683))

(assert (= (and d!304602 c!182770) b!1082673))

(assert (= (and d!304602 (not c!182770)) b!1082676))

(assert (= (and b!1082676 c!182769) b!1082678))

(assert (= (and b!1082676 (not c!182769)) b!1082677))

(assert (= (and b!1082677 (not res!481797)) b!1082675))

(assert (= (and b!1082675 res!481799) b!1082671))

(assert (= (and b!1082671 res!481793) b!1082674))

(assert (= (and b!1082674 res!481796) b!1082682))

(assert (= (and b!1082675 (not res!481798)) b!1082680))

(assert (= (and b!1082680 res!481800) b!1082681))

(assert (= (and b!1082681 (not res!481794)) b!1082672))

(assert (= (and b!1082672 (not res!481795)) b!1082679))

(assert (= (or b!1082673 b!1082671 b!1082681) bm!80012))

(assert (=> d!304602 m!1232973))

(assert (=> d!304602 m!1232989))

(declare-fun m!1233391 () Bool)

(assert (=> d!304602 m!1233391))

(assert (=> b!1082672 m!1233085))

(assert (=> b!1082672 m!1233085))

(assert (=> b!1082672 m!1233087))

(assert (=> b!1082684 m!1232989))

(declare-fun m!1233393 () Bool)

(assert (=> b!1082684 m!1233393))

(assert (=> b!1082674 m!1233085))

(assert (=> b!1082674 m!1233085))

(assert (=> b!1082674 m!1233087))

(assert (=> bm!80012 m!1232973))

(assert (=> b!1082683 m!1233091))

(assert (=> b!1082683 m!1232989))

(assert (=> b!1082683 m!1233091))

(declare-fun m!1233395 () Bool)

(assert (=> b!1082683 m!1233395))

(assert (=> b!1082683 m!1233085))

(assert (=> b!1082683 m!1233395))

(assert (=> b!1082683 m!1233085))

(declare-fun m!1233397 () Bool)

(assert (=> b!1082683 m!1233397))

(assert (=> b!1082679 m!1233091))

(assert (=> b!1082682 m!1233091))

(assert (=> b!1081986 d!304602))

(declare-fun b!1082685 () Bool)

(declare-fun res!481801 () Bool)

(declare-fun e!684685 () Bool)

(assert (=> b!1082685 (=> (not res!481801) (not e!684685))))

(declare-fun call!80018 () Bool)

(assert (=> b!1082685 (= res!481801 (not call!80018))))

(declare-fun b!1082686 () Bool)

(declare-fun res!481803 () Bool)

(declare-fun e!684684 () Bool)

(assert (=> b!1082686 (=> res!481803 e!684684)))

(assert (=> b!1082686 (= res!481803 (not (isEmpty!6604 (tail!1555 (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405))))))))

(declare-fun b!1082688 () Bool)

(declare-fun res!481804 () Bool)

(assert (=> b!1082688 (=> (not res!481804) (not e!684685))))

(assert (=> b!1082688 (= res!481804 (isEmpty!6604 (tail!1555 (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405)))))))

(declare-fun b!1082689 () Bool)

(declare-fun res!481806 () Bool)

(declare-fun e!684686 () Bool)

(assert (=> b!1082689 (=> res!481806 e!684686)))

(assert (=> b!1082689 (= res!481806 e!684685)))

(declare-fun res!481807 () Bool)

(assert (=> b!1082689 (=> (not res!481807) (not e!684685))))

(declare-fun lt!362506 () Bool)

(assert (=> b!1082689 (= res!481807 lt!362506)))

(declare-fun b!1082690 () Bool)

(declare-fun e!684690 () Bool)

(declare-fun e!684689 () Bool)

(assert (=> b!1082690 (= e!684690 e!684689)))

(declare-fun c!182772 () Bool)

(assert (=> b!1082690 (= c!182772 ((_ is EmptyLang!2957) lt!362400))))

(declare-fun b!1082691 () Bool)

(declare-fun res!481805 () Bool)

(assert (=> b!1082691 (=> res!481805 e!684686)))

(assert (=> b!1082691 (= res!481805 (not ((_ is ElementMatch!2957) lt!362400)))))

(assert (=> b!1082691 (= e!684689 e!684686)))

(declare-fun b!1082692 () Bool)

(assert (=> b!1082692 (= e!684689 (not lt!362506))))

(declare-fun b!1082693 () Bool)

(assert (=> b!1082693 (= e!684684 (not (= (head!1993 (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405))) (c!182598 lt!362400))))))

(declare-fun b!1082694 () Bool)

(declare-fun e!684688 () Bool)

(assert (=> b!1082694 (= e!684686 e!684688)))

(declare-fun res!481808 () Bool)

(assert (=> b!1082694 (=> (not res!481808) (not e!684688))))

(assert (=> b!1082694 (= res!481808 (not lt!362506))))

(declare-fun b!1082695 () Bool)

(assert (=> b!1082695 (= e!684688 e!684684)))

(declare-fun res!481802 () Bool)

(assert (=> b!1082695 (=> res!481802 e!684684)))

(assert (=> b!1082695 (= res!481802 call!80018)))

(declare-fun d!304604 () Bool)

(assert (=> d!304604 e!684690))

(declare-fun c!182773 () Bool)

(assert (=> d!304604 (= c!182773 ((_ is EmptyExpr!2957) lt!362400))))

(declare-fun e!684687 () Bool)

(assert (=> d!304604 (= lt!362506 e!684687)))

(declare-fun c!182774 () Bool)

(assert (=> d!304604 (= c!182774 (isEmpty!6604 (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405))))))

(assert (=> d!304604 (validRegex!1426 lt!362400)))

(assert (=> d!304604 (= (matchR!1493 lt!362400 (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405))) lt!362506)))

(declare-fun b!1082687 () Bool)

(assert (=> b!1082687 (= e!684690 (= lt!362506 call!80018))))

(declare-fun b!1082696 () Bool)

(assert (=> b!1082696 (= e!684685 (= (head!1993 (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405))) (c!182598 lt!362400)))))

(declare-fun b!1082697 () Bool)

(assert (=> b!1082697 (= e!684687 (matchR!1493 (derivativeStep!838 lt!362400 (head!1993 (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405)))) (tail!1555 (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405)))))))

(declare-fun bm!80013 () Bool)

(assert (=> bm!80013 (= call!80018 (isEmpty!6604 (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405))))))

(declare-fun b!1082698 () Bool)

(assert (=> b!1082698 (= e!684687 (nullable!1040 lt!362400))))

(assert (= (and d!304604 c!182774) b!1082698))

(assert (= (and d!304604 (not c!182774)) b!1082697))

(assert (= (and d!304604 c!182773) b!1082687))

(assert (= (and d!304604 (not c!182773)) b!1082690))

(assert (= (and b!1082690 c!182772) b!1082692))

(assert (= (and b!1082690 (not c!182772)) b!1082691))

(assert (= (and b!1082691 (not res!481805)) b!1082689))

(assert (= (and b!1082689 res!481807) b!1082685))

(assert (= (and b!1082685 res!481801) b!1082688))

(assert (= (and b!1082688 res!481804) b!1082696))

(assert (= (and b!1082689 (not res!481806)) b!1082694))

(assert (= (and b!1082694 res!481808) b!1082695))

(assert (= (and b!1082695 (not res!481802)) b!1082686))

(assert (= (and b!1082686 (not res!481803)) b!1082693))

(assert (= (or b!1082687 b!1082685 b!1082695) bm!80013))

(assert (=> d!304604 m!1232987))

(declare-fun m!1233399 () Bool)

(assert (=> d!304604 m!1233399))

(assert (=> d!304604 m!1232983))

(assert (=> b!1082686 m!1232987))

(declare-fun m!1233401 () Bool)

(assert (=> b!1082686 m!1233401))

(assert (=> b!1082686 m!1233401))

(declare-fun m!1233403 () Bool)

(assert (=> b!1082686 m!1233403))

(assert (=> b!1082698 m!1233197))

(assert (=> b!1082688 m!1232987))

(assert (=> b!1082688 m!1233401))

(assert (=> b!1082688 m!1233401))

(assert (=> b!1082688 m!1233403))

(assert (=> bm!80013 m!1232987))

(assert (=> bm!80013 m!1233399))

(assert (=> b!1082697 m!1232987))

(declare-fun m!1233405 () Bool)

(assert (=> b!1082697 m!1233405))

(assert (=> b!1082697 m!1233405))

(declare-fun m!1233407 () Bool)

(assert (=> b!1082697 m!1233407))

(assert (=> b!1082697 m!1232987))

(assert (=> b!1082697 m!1233401))

(assert (=> b!1082697 m!1233407))

(assert (=> b!1082697 m!1233401))

(declare-fun m!1233409 () Bool)

(assert (=> b!1082697 m!1233409))

(assert (=> b!1082693 m!1232987))

(assert (=> b!1082693 m!1233405))

(assert (=> b!1082696 m!1232987))

(assert (=> b!1082696 m!1233405))

(assert (=> b!1081986 d!304604))

(declare-fun d!304606 () Bool)

(assert (=> d!304606 (matchR!1493 (Star!2957 (reg!3286 r!15766)) (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405)))))

(declare-fun lt!362509 () Unit!15603)

(declare-fun choose!6874 (Regex!2957 List!10187 List!10187) Unit!15603)

(assert (=> d!304606 (= lt!362509 (choose!6874 (reg!3286 r!15766) (_1!6640 lt!362405) (_2!6640 lt!362405)))))

(assert (=> d!304606 (validRegex!1426 (Star!2957 (reg!3286 r!15766)))))

(assert (=> d!304606 (= (lemmaStarApp!12 (reg!3286 r!15766) (_1!6640 lt!362405) (_2!6640 lt!362405)) lt!362509)))

(declare-fun bs!256358 () Bool)

(assert (= bs!256358 d!304606))

(assert (=> bs!256358 m!1232987))

(assert (=> bs!256358 m!1232987))

(declare-fun m!1233411 () Bool)

(assert (=> bs!256358 m!1233411))

(declare-fun m!1233413 () Bool)

(assert (=> bs!256358 m!1233413))

(declare-fun m!1233415 () Bool)

(assert (=> bs!256358 m!1233415))

(assert (=> b!1081986 d!304606))

(declare-fun b!1082707 () Bool)

(declare-fun e!684696 () List!10187)

(assert (=> b!1082707 (= e!684696 (_2!6640 lt!362405))))

(declare-fun b!1082708 () Bool)

(assert (=> b!1082708 (= e!684696 (Cons!10171 (h!15572 (_1!6640 lt!362405)) (++!2823 (t!101233 (_1!6640 lt!362405)) (_2!6640 lt!362405))))))

(declare-fun d!304608 () Bool)

(declare-fun e!684695 () Bool)

(assert (=> d!304608 e!684695))

(declare-fun res!481813 () Bool)

(assert (=> d!304608 (=> (not res!481813) (not e!684695))))

(declare-fun lt!362512 () List!10187)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1462 (List!10187) (InoxSet C!6484))

(assert (=> d!304608 (= res!481813 (= (content!1462 lt!362512) ((_ map or) (content!1462 (_1!6640 lt!362405)) (content!1462 (_2!6640 lt!362405)))))))

(assert (=> d!304608 (= lt!362512 e!684696)))

(declare-fun c!182777 () Bool)

(assert (=> d!304608 (= c!182777 ((_ is Nil!10171) (_1!6640 lt!362405)))))

(assert (=> d!304608 (= (++!2823 (_1!6640 lt!362405) (_2!6640 lt!362405)) lt!362512)))

(declare-fun b!1082710 () Bool)

(assert (=> b!1082710 (= e!684695 (or (not (= (_2!6640 lt!362405) Nil!10171)) (= lt!362512 (_1!6640 lt!362405))))))

(declare-fun b!1082709 () Bool)

(declare-fun res!481814 () Bool)

(assert (=> b!1082709 (=> (not res!481814) (not e!684695))))

(assert (=> b!1082709 (= res!481814 (= (size!8016 lt!362512) (+ (size!8016 (_1!6640 lt!362405)) (size!8016 (_2!6640 lt!362405)))))))

(assert (= (and d!304608 c!182777) b!1082707))

(assert (= (and d!304608 (not c!182777)) b!1082708))

(assert (= (and d!304608 res!481813) b!1082709))

(assert (= (and b!1082709 res!481814) b!1082710))

(declare-fun m!1233417 () Bool)

(assert (=> b!1082708 m!1233417))

(declare-fun m!1233419 () Bool)

(assert (=> d!304608 m!1233419))

(declare-fun m!1233421 () Bool)

(assert (=> d!304608 m!1233421))

(declare-fun m!1233423 () Bool)

(assert (=> d!304608 m!1233423))

(declare-fun m!1233425 () Bool)

(assert (=> b!1082709 m!1233425))

(declare-fun m!1233427 () Bool)

(assert (=> b!1082709 m!1233427))

(assert (=> b!1082709 m!1232927))

(assert (=> b!1081986 d!304608))

(declare-fun d!304610 () Bool)

(assert (=> d!304610 (= (Exists!680 lambda!39296) (choose!6873 lambda!39296))))

(declare-fun bs!256359 () Bool)

(assert (= bs!256359 d!304610))

(declare-fun m!1233429 () Bool)

(assert (=> bs!256359 m!1233429))

(assert (=> b!1081981 d!304610))

(declare-fun b!1082711 () Bool)

(declare-fun res!481818 () Bool)

(declare-fun e!684700 () Bool)

(assert (=> b!1082711 (=> (not res!481818) (not e!684700))))

(declare-fun lt!362514 () Option!2456)

(assert (=> b!1082711 (= res!481818 (matchR!1493 lt!362400 (_2!6640 (get!3684 lt!362514))))))

(declare-fun b!1082712 () Bool)

(declare-fun lt!362515 () Unit!15603)

(declare-fun lt!362513 () Unit!15603)

(assert (=> b!1082712 (= lt!362515 lt!362513)))

(assert (=> b!1082712 (= (++!2823 (++!2823 Nil!10171 (Cons!10171 (h!15572 s!10566) Nil!10171)) (t!101233 s!10566)) s!10566)))

(assert (=> b!1082712 (= lt!362513 (lemmaMoveElementToOtherListKeepsConcatEq!416 Nil!10171 (h!15572 s!10566) (t!101233 s!10566) s!10566))))

(declare-fun e!684701 () Option!2456)

(assert (=> b!1082712 (= e!684701 (findConcatSeparation!562 (reg!3286 r!15766) lt!362400 (++!2823 Nil!10171 (Cons!10171 (h!15572 s!10566) Nil!10171)) (t!101233 s!10566) s!10566))))

(declare-fun d!304612 () Bool)

(declare-fun e!684698 () Bool)

(assert (=> d!304612 e!684698))

(declare-fun res!481819 () Bool)

(assert (=> d!304612 (=> res!481819 e!684698)))

(assert (=> d!304612 (= res!481819 e!684700)))

(declare-fun res!481816 () Bool)

(assert (=> d!304612 (=> (not res!481816) (not e!684700))))

(assert (=> d!304612 (= res!481816 (isDefined!2098 lt!362514))))

(declare-fun e!684699 () Option!2456)

(assert (=> d!304612 (= lt!362514 e!684699)))

(declare-fun c!182778 () Bool)

(declare-fun e!684697 () Bool)

(assert (=> d!304612 (= c!182778 e!684697)))

(declare-fun res!481815 () Bool)

(assert (=> d!304612 (=> (not res!481815) (not e!684697))))

(assert (=> d!304612 (= res!481815 (matchR!1493 (reg!3286 r!15766) Nil!10171))))

(assert (=> d!304612 (validRegex!1426 (reg!3286 r!15766))))

(assert (=> d!304612 (= (findConcatSeparation!562 (reg!3286 r!15766) lt!362400 Nil!10171 s!10566 s!10566) lt!362514)))

(declare-fun b!1082713 () Bool)

(assert (=> b!1082713 (= e!684698 (not (isDefined!2098 lt!362514)))))

(declare-fun b!1082714 () Bool)

(declare-fun res!481817 () Bool)

(assert (=> b!1082714 (=> (not res!481817) (not e!684700))))

(assert (=> b!1082714 (= res!481817 (matchR!1493 (reg!3286 r!15766) (_1!6640 (get!3684 lt!362514))))))

(declare-fun b!1082715 () Bool)

(assert (=> b!1082715 (= e!684699 (Some!2455 (tuple2!11629 Nil!10171 s!10566)))))

(declare-fun b!1082716 () Bool)

(assert (=> b!1082716 (= e!684697 (matchR!1493 lt!362400 s!10566))))

(declare-fun b!1082717 () Bool)

(assert (=> b!1082717 (= e!684701 None!2455)))

(declare-fun b!1082718 () Bool)

(assert (=> b!1082718 (= e!684700 (= (++!2823 (_1!6640 (get!3684 lt!362514)) (_2!6640 (get!3684 lt!362514))) s!10566))))

(declare-fun b!1082719 () Bool)

(assert (=> b!1082719 (= e!684699 e!684701)))

(declare-fun c!182779 () Bool)

(assert (=> b!1082719 (= c!182779 ((_ is Nil!10171) s!10566))))

(assert (= (and d!304612 res!481815) b!1082716))

(assert (= (and d!304612 c!182778) b!1082715))

(assert (= (and d!304612 (not c!182778)) b!1082719))

(assert (= (and b!1082719 c!182779) b!1082717))

(assert (= (and b!1082719 (not c!182779)) b!1082712))

(assert (= (and d!304612 res!481816) b!1082714))

(assert (= (and b!1082714 res!481817) b!1082711))

(assert (= (and b!1082711 res!481818) b!1082718))

(assert (= (and d!304612 (not res!481819)) b!1082713))

(declare-fun m!1233431 () Bool)

(assert (=> b!1082718 m!1233431))

(declare-fun m!1233433 () Bool)

(assert (=> b!1082718 m!1233433))

(declare-fun m!1233435 () Bool)

(assert (=> b!1082713 m!1233435))

(assert (=> b!1082714 m!1233431))

(declare-fun m!1233437 () Bool)

(assert (=> b!1082714 m!1233437))

(declare-fun m!1233439 () Bool)

(assert (=> b!1082716 m!1233439))

(assert (=> b!1082712 m!1233357))

(assert (=> b!1082712 m!1233357))

(assert (=> b!1082712 m!1233359))

(assert (=> b!1082712 m!1233361))

(assert (=> b!1082712 m!1233357))

(declare-fun m!1233441 () Bool)

(assert (=> b!1082712 m!1233441))

(assert (=> b!1082711 m!1233431))

(declare-fun m!1233443 () Bool)

(assert (=> b!1082711 m!1233443))

(assert (=> d!304612 m!1233435))

(declare-fun m!1233445 () Bool)

(assert (=> d!304612 m!1233445))

(assert (=> d!304612 m!1233185))

(assert (=> b!1081981 d!304612))

(declare-fun d!304614 () Bool)

(assert (=> d!304614 (= (Exists!680 lambda!39295) (choose!6873 lambda!39295))))

(declare-fun bs!256360 () Bool)

(assert (= bs!256360 d!304614))

(declare-fun m!1233447 () Bool)

(assert (=> bs!256360 m!1233447))

(assert (=> b!1081981 d!304614))

(declare-fun d!304616 () Bool)

(assert (=> d!304616 (= (isDefined!2098 (findConcatSeparation!562 (reg!3286 r!15766) lt!362400 Nil!10171 s!10566 s!10566)) (not (isEmpty!6606 (findConcatSeparation!562 (reg!3286 r!15766) lt!362400 Nil!10171 s!10566 s!10566))))))

(declare-fun bs!256361 () Bool)

(assert (= bs!256361 d!304616))

(assert (=> bs!256361 m!1232961))

(declare-fun m!1233449 () Bool)

(assert (=> bs!256361 m!1233449))

(assert (=> b!1081981 d!304616))

(declare-fun bm!80014 () Bool)

(declare-fun call!80022 () Regex!2957)

(declare-fun call!80023 () Regex!2957)

(assert (=> bm!80014 (= call!80022 call!80023)))

(declare-fun bm!80015 () Bool)

(declare-fun c!182781 () Bool)

(declare-fun c!182780 () Bool)

(assert (=> bm!80015 (= call!80023 (removeUselessConcat!498 (ite c!182781 (regOne!6426 (reg!3286 r!15766)) (ite c!182780 (regTwo!6427 (reg!3286 r!15766)) (reg!3286 (reg!3286 r!15766))))))))

(declare-fun b!1082720 () Bool)

(assert (=> b!1082720 (= c!182781 ((_ is Concat!4790) (reg!3286 r!15766)))))

(declare-fun e!684706 () Regex!2957)

(declare-fun e!684703 () Regex!2957)

(assert (=> b!1082720 (= e!684706 e!684703)))

(declare-fun c!182782 () Bool)

(declare-fun call!80019 () Regex!2957)

(declare-fun bm!80016 () Bool)

(declare-fun c!182784 () Bool)

(assert (=> bm!80016 (= call!80019 (removeUselessConcat!498 (ite c!182782 (regTwo!6426 (reg!3286 r!15766)) (ite c!182784 (regOne!6426 (reg!3286 r!15766)) (ite c!182781 (regTwo!6426 (reg!3286 r!15766)) (regOne!6427 (reg!3286 r!15766)))))))))

(declare-fun b!1082721 () Bool)

(declare-fun call!80021 () Regex!2957)

(assert (=> b!1082721 (= e!684703 (Concat!4790 call!80023 call!80021))))

(declare-fun bm!80017 () Bool)

(declare-fun call!80020 () Regex!2957)

(assert (=> bm!80017 (= call!80020 call!80019)))

(declare-fun b!1082722 () Bool)

(assert (=> b!1082722 (= e!684706 call!80020)))

(declare-fun b!1082723 () Bool)

(declare-fun e!684704 () Regex!2957)

(assert (=> b!1082723 (= e!684704 e!684706)))

(assert (=> b!1082723 (= c!182784 (and ((_ is Concat!4790) (reg!3286 r!15766)) ((_ is EmptyExpr!2957) (regTwo!6426 (reg!3286 r!15766)))))))

(declare-fun b!1082725 () Bool)

(declare-fun e!684702 () Regex!2957)

(assert (=> b!1082725 (= e!684703 e!684702)))

(assert (=> b!1082725 (= c!182780 ((_ is Union!2957) (reg!3286 r!15766)))))

(declare-fun bm!80018 () Bool)

(assert (=> bm!80018 (= call!80021 call!80020)))

(declare-fun b!1082726 () Bool)

(declare-fun e!684707 () Bool)

(declare-fun lt!362516 () Regex!2957)

(assert (=> b!1082726 (= e!684707 (= (nullable!1040 lt!362516) (nullable!1040 (reg!3286 r!15766))))))

(declare-fun b!1082727 () Bool)

(declare-fun e!684705 () Regex!2957)

(assert (=> b!1082727 (= e!684705 (Star!2957 call!80022))))

(declare-fun b!1082728 () Bool)

(assert (=> b!1082728 (= e!684704 call!80019)))

(declare-fun b!1082729 () Bool)

(assert (=> b!1082729 (= e!684702 (Union!2957 call!80021 call!80022))))

(declare-fun b!1082730 () Bool)

(declare-fun c!182783 () Bool)

(assert (=> b!1082730 (= c!182783 ((_ is Star!2957) (reg!3286 r!15766)))))

(assert (=> b!1082730 (= e!684702 e!684705)))

(declare-fun b!1082724 () Bool)

(assert (=> b!1082724 (= e!684705 (reg!3286 r!15766))))

(declare-fun d!304618 () Bool)

(assert (=> d!304618 e!684707))

(declare-fun res!481820 () Bool)

(assert (=> d!304618 (=> (not res!481820) (not e!684707))))

(assert (=> d!304618 (= res!481820 (validRegex!1426 lt!362516))))

(assert (=> d!304618 (= lt!362516 e!684704)))

(assert (=> d!304618 (= c!182782 (and ((_ is Concat!4790) (reg!3286 r!15766)) ((_ is EmptyExpr!2957) (regOne!6426 (reg!3286 r!15766)))))))

(assert (=> d!304618 (validRegex!1426 (reg!3286 r!15766))))

(assert (=> d!304618 (= (removeUselessConcat!498 (reg!3286 r!15766)) lt!362516)))

(assert (= (and d!304618 c!182782) b!1082728))

(assert (= (and d!304618 (not c!182782)) b!1082723))

(assert (= (and b!1082723 c!182784) b!1082722))

(assert (= (and b!1082723 (not c!182784)) b!1082720))

(assert (= (and b!1082720 c!182781) b!1082721))

(assert (= (and b!1082720 (not c!182781)) b!1082725))

(assert (= (and b!1082725 c!182780) b!1082729))

(assert (= (and b!1082725 (not c!182780)) b!1082730))

(assert (= (and b!1082730 c!182783) b!1082727))

(assert (= (and b!1082730 (not c!182783)) b!1082724))

(assert (= (or b!1082729 b!1082727) bm!80014))

(assert (= (or b!1082721 b!1082729) bm!80018))

(assert (= (or b!1082721 bm!80014) bm!80015))

(assert (= (or b!1082722 bm!80018) bm!80017))

(assert (= (or b!1082728 bm!80017) bm!80016))

(assert (= (and d!304618 res!481820) b!1082726))

(declare-fun m!1233451 () Bool)

(assert (=> bm!80015 m!1233451))

(declare-fun m!1233453 () Bool)

(assert (=> bm!80016 m!1233453))

(declare-fun m!1233455 () Bool)

(assert (=> b!1082726 m!1233455))

(assert (=> b!1082726 m!1233179))

(declare-fun m!1233457 () Bool)

(assert (=> d!304618 m!1233457))

(assert (=> d!304618 m!1233185))

(assert (=> b!1081981 d!304618))

(declare-fun bs!256362 () Bool)

(declare-fun d!304620 () Bool)

(assert (= bs!256362 (and d!304620 b!1081981)))

(declare-fun lambda!39336 () Int)

(assert (=> bs!256362 (= lambda!39336 lambda!39295)))

(declare-fun bs!256363 () Bool)

(assert (= bs!256363 (and d!304620 b!1082202)))

(assert (=> bs!256363 (not (= lambda!39336 lambda!39303))))

(declare-fun bs!256364 () Bool)

(assert (= bs!256364 (and d!304620 b!1082540)))

(assert (=> bs!256364 (not (= lambda!39336 lambda!39323))))

(declare-fun bs!256365 () Bool)

(assert (= bs!256365 (and d!304620 b!1082544)))

(assert (=> bs!256365 (not (= lambda!39336 lambda!39321))))

(declare-fun bs!256366 () Bool)

(assert (= bs!256366 (and d!304620 b!1081985)))

(assert (=> bs!256366 (not (= lambda!39336 lambda!39298))))

(declare-fun bs!256367 () Bool)

(assert (= bs!256367 (and d!304620 d!304578)))

(assert (=> bs!256367 (not (= lambda!39336 lambda!39332))))

(assert (=> bs!256367 (= (and (= (reg!3286 r!15766) lt!362393) (= lt!362400 (Star!2957 lt!362393))) (= lambda!39336 lambda!39331))))

(declare-fun bs!256368 () Bool)

(assert (= bs!256368 (and d!304620 b!1082198)))

(assert (=> bs!256368 (not (= lambda!39336 lambda!39304))))

(assert (=> bs!256362 (not (= lambda!39336 lambda!39296))))

(assert (=> bs!256366 (= (and (= (reg!3286 r!15766) lt!362393) (= lt!362400 lt!362411)) (= lambda!39336 lambda!39297))))

(declare-fun bs!256369 () Bool)

(assert (= bs!256369 (and d!304620 d!304594)))

(assert (=> bs!256369 (= (and (= (reg!3286 r!15766) lt!362393) (= lt!362400 lt!362411)) (= lambda!39336 lambda!39335))))

(assert (=> d!304620 true))

(assert (=> d!304620 true))

(assert (=> d!304620 true))

(assert (=> d!304620 (= (isDefined!2098 (findConcatSeparation!562 (reg!3286 r!15766) lt!362400 Nil!10171 s!10566 s!10566)) (Exists!680 lambda!39336))))

(declare-fun lt!362517 () Unit!15603)

(assert (=> d!304620 (= lt!362517 (choose!6872 (reg!3286 r!15766) lt!362400 s!10566))))

(assert (=> d!304620 (validRegex!1426 (reg!3286 r!15766))))

(assert (=> d!304620 (= (lemmaFindConcatSeparationEquivalentToExists!562 (reg!3286 r!15766) lt!362400 s!10566) lt!362517)))

(declare-fun bs!256370 () Bool)

(assert (= bs!256370 d!304620))

(declare-fun m!1233459 () Bool)

(assert (=> bs!256370 m!1233459))

(assert (=> bs!256370 m!1233185))

(declare-fun m!1233461 () Bool)

(assert (=> bs!256370 m!1233461))

(assert (=> bs!256370 m!1232961))

(assert (=> bs!256370 m!1232963))

(assert (=> bs!256370 m!1232961))

(assert (=> b!1081981 d!304620))

(declare-fun b!1082731 () Bool)

(declare-fun res!481821 () Bool)

(declare-fun e!684709 () Bool)

(assert (=> b!1082731 (=> (not res!481821) (not e!684709))))

(declare-fun call!80024 () Bool)

(assert (=> b!1082731 (= res!481821 (not call!80024))))

(declare-fun b!1082732 () Bool)

(declare-fun res!481823 () Bool)

(declare-fun e!684708 () Bool)

(assert (=> b!1082732 (=> res!481823 e!684708)))

(assert (=> b!1082732 (= res!481823 (not (isEmpty!6604 (tail!1555 s!10566))))))

(declare-fun b!1082734 () Bool)

(declare-fun res!481824 () Bool)

(assert (=> b!1082734 (=> (not res!481824) (not e!684709))))

(assert (=> b!1082734 (= res!481824 (isEmpty!6604 (tail!1555 s!10566)))))

(declare-fun b!1082735 () Bool)

(declare-fun res!481826 () Bool)

(declare-fun e!684710 () Bool)

(assert (=> b!1082735 (=> res!481826 e!684710)))

(assert (=> b!1082735 (= res!481826 e!684709)))

(declare-fun res!481827 () Bool)

(assert (=> b!1082735 (=> (not res!481827) (not e!684709))))

(declare-fun lt!362518 () Bool)

(assert (=> b!1082735 (= res!481827 lt!362518)))

(declare-fun b!1082736 () Bool)

(declare-fun e!684714 () Bool)

(declare-fun e!684713 () Bool)

(assert (=> b!1082736 (= e!684714 e!684713)))

(declare-fun c!182785 () Bool)

(assert (=> b!1082736 (= c!182785 ((_ is EmptyLang!2957) lt!362411))))

(declare-fun b!1082737 () Bool)

(declare-fun res!481825 () Bool)

(assert (=> b!1082737 (=> res!481825 e!684710)))

(assert (=> b!1082737 (= res!481825 (not ((_ is ElementMatch!2957) lt!362411)))))

(assert (=> b!1082737 (= e!684713 e!684710)))

(declare-fun b!1082738 () Bool)

(assert (=> b!1082738 (= e!684713 (not lt!362518))))

(declare-fun b!1082739 () Bool)

(assert (=> b!1082739 (= e!684708 (not (= (head!1993 s!10566) (c!182598 lt!362411))))))

(declare-fun b!1082740 () Bool)

(declare-fun e!684712 () Bool)

(assert (=> b!1082740 (= e!684710 e!684712)))

(declare-fun res!481828 () Bool)

(assert (=> b!1082740 (=> (not res!481828) (not e!684712))))

(assert (=> b!1082740 (= res!481828 (not lt!362518))))

(declare-fun b!1082741 () Bool)

(assert (=> b!1082741 (= e!684712 e!684708)))

(declare-fun res!481822 () Bool)

(assert (=> b!1082741 (=> res!481822 e!684708)))

(assert (=> b!1082741 (= res!481822 call!80024)))

(declare-fun d!304622 () Bool)

(assert (=> d!304622 e!684714))

(declare-fun c!182786 () Bool)

(assert (=> d!304622 (= c!182786 ((_ is EmptyExpr!2957) lt!362411))))

(declare-fun e!684711 () Bool)

(assert (=> d!304622 (= lt!362518 e!684711)))

(declare-fun c!182787 () Bool)

(assert (=> d!304622 (= c!182787 (isEmpty!6604 s!10566))))

(assert (=> d!304622 (validRegex!1426 lt!362411)))

(assert (=> d!304622 (= (matchR!1493 lt!362411 s!10566) lt!362518)))

(declare-fun b!1082733 () Bool)

(assert (=> b!1082733 (= e!684714 (= lt!362518 call!80024))))

(declare-fun b!1082742 () Bool)

(assert (=> b!1082742 (= e!684709 (= (head!1993 s!10566) (c!182598 lt!362411)))))

(declare-fun b!1082743 () Bool)

(assert (=> b!1082743 (= e!684711 (matchR!1493 (derivativeStep!838 lt!362411 (head!1993 s!10566)) (tail!1555 s!10566)))))

(declare-fun bm!80019 () Bool)

(assert (=> bm!80019 (= call!80024 (isEmpty!6604 s!10566))))

(declare-fun b!1082744 () Bool)

(assert (=> b!1082744 (= e!684711 (nullable!1040 lt!362411))))

(assert (= (and d!304622 c!182787) b!1082744))

(assert (= (and d!304622 (not c!182787)) b!1082743))

(assert (= (and d!304622 c!182786) b!1082733))

(assert (= (and d!304622 (not c!182786)) b!1082736))

(assert (= (and b!1082736 c!182785) b!1082738))

(assert (= (and b!1082736 (not c!182785)) b!1082737))

(assert (= (and b!1082737 (not res!481825)) b!1082735))

(assert (= (and b!1082735 res!481827) b!1082731))

(assert (= (and b!1082731 res!481821) b!1082734))

(assert (= (and b!1082734 res!481824) b!1082742))

(assert (= (and b!1082735 (not res!481826)) b!1082740))

(assert (= (and b!1082740 res!481828) b!1082741))

(assert (= (and b!1082741 (not res!481822)) b!1082732))

(assert (= (and b!1082732 (not res!481823)) b!1082739))

(assert (= (or b!1082733 b!1082731 b!1082741) bm!80019))

(assert (=> d!304622 m!1232973))

(assert (=> d!304622 m!1233371))

(assert (=> b!1082732 m!1233085))

(assert (=> b!1082732 m!1233085))

(assert (=> b!1082732 m!1233087))

(declare-fun m!1233463 () Bool)

(assert (=> b!1082744 m!1233463))

(assert (=> b!1082734 m!1233085))

(assert (=> b!1082734 m!1233085))

(assert (=> b!1082734 m!1233087))

(assert (=> bm!80019 m!1232973))

(assert (=> b!1082743 m!1233091))

(assert (=> b!1082743 m!1233091))

(declare-fun m!1233465 () Bool)

(assert (=> b!1082743 m!1233465))

(assert (=> b!1082743 m!1233085))

(assert (=> b!1082743 m!1233465))

(assert (=> b!1082743 m!1233085))

(declare-fun m!1233467 () Bool)

(assert (=> b!1082743 m!1233467))

(assert (=> b!1082739 m!1233091))

(assert (=> b!1082742 m!1233091))

(assert (=> b!1081981 d!304622))

(declare-fun bs!256371 () Bool)

(declare-fun d!304624 () Bool)

(assert (= bs!256371 (and d!304624 b!1081981)))

(declare-fun lambda!39337 () Int)

(assert (=> bs!256371 (= (= (Star!2957 (reg!3286 r!15766)) lt!362400) (= lambda!39337 lambda!39295))))

(declare-fun bs!256372 () Bool)

(assert (= bs!256372 (and d!304624 d!304620)))

(assert (=> bs!256372 (= (= (Star!2957 (reg!3286 r!15766)) lt!362400) (= lambda!39337 lambda!39336))))

(declare-fun bs!256373 () Bool)

(assert (= bs!256373 (and d!304624 b!1082202)))

(assert (=> bs!256373 (not (= lambda!39337 lambda!39303))))

(declare-fun bs!256374 () Bool)

(assert (= bs!256374 (and d!304624 b!1082540)))

(assert (=> bs!256374 (not (= lambda!39337 lambda!39323))))

(declare-fun bs!256375 () Bool)

(assert (= bs!256375 (and d!304624 b!1082544)))

(assert (=> bs!256375 (not (= lambda!39337 lambda!39321))))

(declare-fun bs!256376 () Bool)

(assert (= bs!256376 (and d!304624 b!1081985)))

(assert (=> bs!256376 (not (= lambda!39337 lambda!39298))))

(declare-fun bs!256377 () Bool)

(assert (= bs!256377 (and d!304624 d!304578)))

(assert (=> bs!256377 (not (= lambda!39337 lambda!39332))))

(assert (=> bs!256377 (= (and (= (reg!3286 r!15766) lt!362393) (= (Star!2957 (reg!3286 r!15766)) (Star!2957 lt!362393))) (= lambda!39337 lambda!39331))))

(declare-fun bs!256378 () Bool)

(assert (= bs!256378 (and d!304624 b!1082198)))

(assert (=> bs!256378 (not (= lambda!39337 lambda!39304))))

(assert (=> bs!256371 (not (= lambda!39337 lambda!39296))))

(assert (=> bs!256376 (= (and (= (reg!3286 r!15766) lt!362393) (= (Star!2957 (reg!3286 r!15766)) lt!362411)) (= lambda!39337 lambda!39297))))

(declare-fun bs!256379 () Bool)

(assert (= bs!256379 (and d!304624 d!304594)))

(assert (=> bs!256379 (= (and (= (reg!3286 r!15766) lt!362393) (= (Star!2957 (reg!3286 r!15766)) lt!362411)) (= lambda!39337 lambda!39335))))

(assert (=> d!304624 true))

(assert (=> d!304624 true))

(declare-fun lambda!39338 () Int)

(assert (=> bs!256371 (not (= lambda!39338 lambda!39295))))

(assert (=> bs!256372 (not (= lambda!39338 lambda!39336))))

(assert (=> bs!256373 (= (= (Star!2957 (reg!3286 r!15766)) r!15766) (= lambda!39338 lambda!39303))))

(assert (=> bs!256374 (not (= lambda!39338 lambda!39323))))

(assert (=> bs!256375 (= (and (= (reg!3286 r!15766) (reg!3286 lt!362411)) (= (Star!2957 (reg!3286 r!15766)) lt!362411)) (= lambda!39338 lambda!39321))))

(assert (=> bs!256376 (= (and (= (reg!3286 r!15766) lt!362393) (= (Star!2957 (reg!3286 r!15766)) lt!362411)) (= lambda!39338 lambda!39298))))

(assert (=> bs!256377 (= (and (= (reg!3286 r!15766) lt!362393) (= (Star!2957 (reg!3286 r!15766)) (Star!2957 lt!362393))) (= lambda!39338 lambda!39332))))

(declare-fun bs!256380 () Bool)

(assert (= bs!256380 d!304624))

(assert (=> bs!256380 (not (= lambda!39338 lambda!39337))))

(assert (=> bs!256377 (not (= lambda!39338 lambda!39331))))

(assert (=> bs!256378 (not (= lambda!39338 lambda!39304))))

(assert (=> bs!256371 (= (= (Star!2957 (reg!3286 r!15766)) lt!362400) (= lambda!39338 lambda!39296))))

(assert (=> bs!256376 (not (= lambda!39338 lambda!39297))))

(assert (=> bs!256379 (not (= lambda!39338 lambda!39335))))

(assert (=> d!304624 true))

(assert (=> d!304624 true))

(assert (=> d!304624 (= (Exists!680 lambda!39337) (Exists!680 lambda!39338))))

(declare-fun lt!362519 () Unit!15603)

(assert (=> d!304624 (= lt!362519 (choose!6871 (reg!3286 r!15766) s!10566))))

(assert (=> d!304624 (validRegex!1426 (reg!3286 r!15766))))

(assert (=> d!304624 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!198 (reg!3286 r!15766) s!10566) lt!362519)))

(declare-fun m!1233469 () Bool)

(assert (=> bs!256380 m!1233469))

(declare-fun m!1233471 () Bool)

(assert (=> bs!256380 m!1233471))

(declare-fun m!1233473 () Bool)

(assert (=> bs!256380 m!1233473))

(assert (=> bs!256380 m!1233185))

(assert (=> b!1081981 d!304624))

(declare-fun b!1082745 () Bool)

(declare-fun e!684719 () Bool)

(declare-fun e!684721 () Bool)

(assert (=> b!1082745 (= e!684719 e!684721)))

(declare-fun res!481831 () Bool)

(assert (=> b!1082745 (= res!481831 (not (nullable!1040 (reg!3286 lt!362400))))))

(assert (=> b!1082745 (=> (not res!481831) (not e!684721))))

(declare-fun bm!80020 () Bool)

(declare-fun call!80025 () Bool)

(declare-fun c!182789 () Bool)

(assert (=> bm!80020 (= call!80025 (validRegex!1426 (ite c!182789 (regTwo!6427 lt!362400) (regTwo!6426 lt!362400))))))

(declare-fun b!1082746 () Bool)

(declare-fun e!684716 () Bool)

(declare-fun e!684720 () Bool)

(assert (=> b!1082746 (= e!684716 e!684720)))

(declare-fun res!481832 () Bool)

(assert (=> b!1082746 (=> (not res!481832) (not e!684720))))

(declare-fun call!80027 () Bool)

(assert (=> b!1082746 (= res!481832 call!80027)))

(declare-fun b!1082747 () Bool)

(declare-fun res!481830 () Bool)

(declare-fun e!684715 () Bool)

(assert (=> b!1082747 (=> (not res!481830) (not e!684715))))

(assert (=> b!1082747 (= res!481830 call!80027)))

(declare-fun e!684717 () Bool)

(assert (=> b!1082747 (= e!684717 e!684715)))

(declare-fun bm!80021 () Bool)

(declare-fun call!80026 () Bool)

(assert (=> bm!80021 (= call!80027 call!80026)))

(declare-fun b!1082748 () Bool)

(assert (=> b!1082748 (= e!684721 call!80026)))

(declare-fun b!1082750 () Bool)

(assert (=> b!1082750 (= e!684720 call!80025)))

(declare-fun b!1082751 () Bool)

(assert (=> b!1082751 (= e!684719 e!684717)))

(assert (=> b!1082751 (= c!182789 ((_ is Union!2957) lt!362400))))

(declare-fun bm!80022 () Bool)

(declare-fun c!182788 () Bool)

(assert (=> bm!80022 (= call!80026 (validRegex!1426 (ite c!182788 (reg!3286 lt!362400) (ite c!182789 (regOne!6427 lt!362400) (regOne!6426 lt!362400)))))))

(declare-fun b!1082752 () Bool)

(assert (=> b!1082752 (= e!684715 call!80025)))

(declare-fun b!1082753 () Bool)

(declare-fun e!684718 () Bool)

(assert (=> b!1082753 (= e!684718 e!684719)))

(assert (=> b!1082753 (= c!182788 ((_ is Star!2957) lt!362400))))

(declare-fun b!1082749 () Bool)

(declare-fun res!481829 () Bool)

(assert (=> b!1082749 (=> res!481829 e!684716)))

(assert (=> b!1082749 (= res!481829 (not ((_ is Concat!4790) lt!362400)))))

(assert (=> b!1082749 (= e!684717 e!684716)))

(declare-fun d!304626 () Bool)

(declare-fun res!481833 () Bool)

(assert (=> d!304626 (=> res!481833 e!684718)))

(assert (=> d!304626 (= res!481833 ((_ is ElementMatch!2957) lt!362400))))

(assert (=> d!304626 (= (validRegex!1426 lt!362400) e!684718)))

(assert (= (and d!304626 (not res!481833)) b!1082753))

(assert (= (and b!1082753 c!182788) b!1082745))

(assert (= (and b!1082753 (not c!182788)) b!1082751))

(assert (= (and b!1082745 res!481831) b!1082748))

(assert (= (and b!1082751 c!182789) b!1082747))

(assert (= (and b!1082751 (not c!182789)) b!1082749))

(assert (= (and b!1082747 res!481830) b!1082752))

(assert (= (and b!1082749 (not res!481829)) b!1082746))

(assert (= (and b!1082746 res!481832) b!1082750))

(assert (= (or b!1082752 b!1082750) bm!80020))

(assert (= (or b!1082747 b!1082746) bm!80021))

(assert (= (or b!1082748 bm!80021) bm!80022))

(declare-fun m!1233475 () Bool)

(assert (=> b!1082745 m!1233475))

(declare-fun m!1233477 () Bool)

(assert (=> bm!80020 m!1233477))

(declare-fun m!1233479 () Bool)

(assert (=> bm!80022 m!1233479))

(assert (=> b!1081976 d!304626))

(declare-fun d!304628 () Bool)

(assert (=> d!304628 (= (matchR!1493 (reg!3286 r!15766) (_1!6640 lt!362405)) (matchRSpec!756 (reg!3286 r!15766) (_1!6640 lt!362405)))))

(declare-fun lt!362520 () Unit!15603)

(assert (=> d!304628 (= lt!362520 (choose!6865 (reg!3286 r!15766) (_1!6640 lt!362405)))))

(assert (=> d!304628 (validRegex!1426 (reg!3286 r!15766))))

(assert (=> d!304628 (= (mainMatchTheorem!756 (reg!3286 r!15766) (_1!6640 lt!362405)) lt!362520)))

(declare-fun bs!256381 () Bool)

(assert (= bs!256381 d!304628))

(assert (=> bs!256381 m!1232931))

(declare-fun m!1233481 () Bool)

(assert (=> bs!256381 m!1233481))

(declare-fun m!1233483 () Bool)

(assert (=> bs!256381 m!1233483))

(assert (=> bs!256381 m!1233185))

(assert (=> b!1081987 d!304628))

(declare-fun b!1082754 () Bool)

(declare-fun res!481834 () Bool)

(declare-fun e!684723 () Bool)

(assert (=> b!1082754 (=> (not res!481834) (not e!684723))))

(declare-fun call!80028 () Bool)

(assert (=> b!1082754 (= res!481834 (not call!80028))))

(declare-fun b!1082755 () Bool)

(declare-fun res!481836 () Bool)

(declare-fun e!684722 () Bool)

(assert (=> b!1082755 (=> res!481836 e!684722)))

(assert (=> b!1082755 (= res!481836 (not (isEmpty!6604 (tail!1555 (_2!6640 lt!362405)))))))

(declare-fun b!1082757 () Bool)

(declare-fun res!481837 () Bool)

(assert (=> b!1082757 (=> (not res!481837) (not e!684723))))

(assert (=> b!1082757 (= res!481837 (isEmpty!6604 (tail!1555 (_2!6640 lt!362405))))))

(declare-fun b!1082758 () Bool)

(declare-fun res!481839 () Bool)

(declare-fun e!684724 () Bool)

(assert (=> b!1082758 (=> res!481839 e!684724)))

(assert (=> b!1082758 (= res!481839 e!684723)))

(declare-fun res!481840 () Bool)

(assert (=> b!1082758 (=> (not res!481840) (not e!684723))))

(declare-fun lt!362521 () Bool)

(assert (=> b!1082758 (= res!481840 lt!362521)))

(declare-fun b!1082759 () Bool)

(declare-fun e!684728 () Bool)

(declare-fun e!684727 () Bool)

(assert (=> b!1082759 (= e!684728 e!684727)))

(declare-fun c!182790 () Bool)

(assert (=> b!1082759 (= c!182790 ((_ is EmptyLang!2957) lt!362411))))

(declare-fun b!1082760 () Bool)

(declare-fun res!481838 () Bool)

(assert (=> b!1082760 (=> res!481838 e!684724)))

(assert (=> b!1082760 (= res!481838 (not ((_ is ElementMatch!2957) lt!362411)))))

(assert (=> b!1082760 (= e!684727 e!684724)))

(declare-fun b!1082761 () Bool)

(assert (=> b!1082761 (= e!684727 (not lt!362521))))

(declare-fun b!1082762 () Bool)

(assert (=> b!1082762 (= e!684722 (not (= (head!1993 (_2!6640 lt!362405)) (c!182598 lt!362411))))))

(declare-fun b!1082763 () Bool)

(declare-fun e!684726 () Bool)

(assert (=> b!1082763 (= e!684724 e!684726)))

(declare-fun res!481841 () Bool)

(assert (=> b!1082763 (=> (not res!481841) (not e!684726))))

(assert (=> b!1082763 (= res!481841 (not lt!362521))))

(declare-fun b!1082764 () Bool)

(assert (=> b!1082764 (= e!684726 e!684722)))

(declare-fun res!481835 () Bool)

(assert (=> b!1082764 (=> res!481835 e!684722)))

(assert (=> b!1082764 (= res!481835 call!80028)))

(declare-fun d!304630 () Bool)

(assert (=> d!304630 e!684728))

(declare-fun c!182791 () Bool)

(assert (=> d!304630 (= c!182791 ((_ is EmptyExpr!2957) lt!362411))))

(declare-fun e!684725 () Bool)

(assert (=> d!304630 (= lt!362521 e!684725)))

(declare-fun c!182792 () Bool)

(assert (=> d!304630 (= c!182792 (isEmpty!6604 (_2!6640 lt!362405)))))

(assert (=> d!304630 (validRegex!1426 lt!362411)))

(assert (=> d!304630 (= (matchR!1493 lt!362411 (_2!6640 lt!362405)) lt!362521)))

(declare-fun b!1082756 () Bool)

(assert (=> b!1082756 (= e!684728 (= lt!362521 call!80028))))

(declare-fun b!1082765 () Bool)

(assert (=> b!1082765 (= e!684723 (= (head!1993 (_2!6640 lt!362405)) (c!182598 lt!362411)))))

(declare-fun b!1082766 () Bool)

(assert (=> b!1082766 (= e!684725 (matchR!1493 (derivativeStep!838 lt!362411 (head!1993 (_2!6640 lt!362405))) (tail!1555 (_2!6640 lt!362405))))))

(declare-fun bm!80023 () Bool)

(assert (=> bm!80023 (= call!80028 (isEmpty!6604 (_2!6640 lt!362405)))))

(declare-fun b!1082767 () Bool)

(assert (=> b!1082767 (= e!684725 (nullable!1040 lt!362411))))

(assert (= (and d!304630 c!182792) b!1082767))

(assert (= (and d!304630 (not c!182792)) b!1082766))

(assert (= (and d!304630 c!182791) b!1082756))

(assert (= (and d!304630 (not c!182791)) b!1082759))

(assert (= (and b!1082759 c!182790) b!1082761))

(assert (= (and b!1082759 (not c!182790)) b!1082760))

(assert (= (and b!1082760 (not res!481838)) b!1082758))

(assert (= (and b!1082758 res!481840) b!1082754))

(assert (= (and b!1082754 res!481834) b!1082757))

(assert (= (and b!1082757 res!481837) b!1082765))

(assert (= (and b!1082758 (not res!481839)) b!1082763))

(assert (= (and b!1082763 res!481841) b!1082764))

(assert (= (and b!1082764 (not res!481835)) b!1082755))

(assert (= (and b!1082755 (not res!481836)) b!1082762))

(assert (= (or b!1082756 b!1082754 b!1082764) bm!80023))

(assert (=> d!304630 m!1233191))

(assert (=> d!304630 m!1233371))

(assert (=> b!1082755 m!1233193))

(assert (=> b!1082755 m!1233193))

(assert (=> b!1082755 m!1233195))

(assert (=> b!1082767 m!1233463))

(assert (=> b!1082757 m!1233193))

(assert (=> b!1082757 m!1233193))

(assert (=> b!1082757 m!1233195))

(assert (=> bm!80023 m!1233191))

(assert (=> b!1082766 m!1233199))

(assert (=> b!1082766 m!1233199))

(declare-fun m!1233485 () Bool)

(assert (=> b!1082766 m!1233485))

(assert (=> b!1082766 m!1233193))

(assert (=> b!1082766 m!1233485))

(assert (=> b!1082766 m!1233193))

(declare-fun m!1233487 () Bool)

(assert (=> b!1082766 m!1233487))

(assert (=> b!1082762 m!1233199))

(assert (=> b!1082765 m!1233199))

(assert (=> b!1081982 d!304630))

(declare-fun e!684731 () Bool)

(assert (=> b!1081983 (= tp!323617 e!684731)))

(declare-fun b!1082781 () Bool)

(declare-fun tp!323673 () Bool)

(declare-fun tp!323669 () Bool)

(assert (=> b!1082781 (= e!684731 (and tp!323673 tp!323669))))

(declare-fun b!1082780 () Bool)

(declare-fun tp!323671 () Bool)

(assert (=> b!1082780 (= e!684731 tp!323671)))

(declare-fun b!1082779 () Bool)

(declare-fun tp!323670 () Bool)

(declare-fun tp!323672 () Bool)

(assert (=> b!1082779 (= e!684731 (and tp!323670 tp!323672))))

(declare-fun b!1082778 () Bool)

(assert (=> b!1082778 (= e!684731 tp_is_empty!5557)))

(assert (= (and b!1081983 ((_ is ElementMatch!2957) (regOne!6426 r!15766))) b!1082778))

(assert (= (and b!1081983 ((_ is Concat!4790) (regOne!6426 r!15766))) b!1082779))

(assert (= (and b!1081983 ((_ is Star!2957) (regOne!6426 r!15766))) b!1082780))

(assert (= (and b!1081983 ((_ is Union!2957) (regOne!6426 r!15766))) b!1082781))

(declare-fun e!684732 () Bool)

(assert (=> b!1081983 (= tp!323620 e!684732)))

(declare-fun b!1082785 () Bool)

(declare-fun tp!323678 () Bool)

(declare-fun tp!323674 () Bool)

(assert (=> b!1082785 (= e!684732 (and tp!323678 tp!323674))))

(declare-fun b!1082784 () Bool)

(declare-fun tp!323676 () Bool)

(assert (=> b!1082784 (= e!684732 tp!323676)))

(declare-fun b!1082783 () Bool)

(declare-fun tp!323675 () Bool)

(declare-fun tp!323677 () Bool)

(assert (=> b!1082783 (= e!684732 (and tp!323675 tp!323677))))

(declare-fun b!1082782 () Bool)

(assert (=> b!1082782 (= e!684732 tp_is_empty!5557)))

(assert (= (and b!1081983 ((_ is ElementMatch!2957) (regTwo!6426 r!15766))) b!1082782))

(assert (= (and b!1081983 ((_ is Concat!4790) (regTwo!6426 r!15766))) b!1082783))

(assert (= (and b!1081983 ((_ is Star!2957) (regTwo!6426 r!15766))) b!1082784))

(assert (= (and b!1081983 ((_ is Union!2957) (regTwo!6426 r!15766))) b!1082785))

(declare-fun e!684733 () Bool)

(assert (=> b!1081984 (= tp!323619 e!684733)))

(declare-fun b!1082789 () Bool)

(declare-fun tp!323683 () Bool)

(declare-fun tp!323679 () Bool)

(assert (=> b!1082789 (= e!684733 (and tp!323683 tp!323679))))

(declare-fun b!1082788 () Bool)

(declare-fun tp!323681 () Bool)

(assert (=> b!1082788 (= e!684733 tp!323681)))

(declare-fun b!1082787 () Bool)

(declare-fun tp!323680 () Bool)

(declare-fun tp!323682 () Bool)

(assert (=> b!1082787 (= e!684733 (and tp!323680 tp!323682))))

(declare-fun b!1082786 () Bool)

(assert (=> b!1082786 (= e!684733 tp_is_empty!5557)))

(assert (= (and b!1081984 ((_ is ElementMatch!2957) (reg!3286 r!15766))) b!1082786))

(assert (= (and b!1081984 ((_ is Concat!4790) (reg!3286 r!15766))) b!1082787))

(assert (= (and b!1081984 ((_ is Star!2957) (reg!3286 r!15766))) b!1082788))

(assert (= (and b!1081984 ((_ is Union!2957) (reg!3286 r!15766))) b!1082789))

(declare-fun b!1082794 () Bool)

(declare-fun e!684736 () Bool)

(declare-fun tp!323686 () Bool)

(assert (=> b!1082794 (= e!684736 (and tp_is_empty!5557 tp!323686))))

(assert (=> b!1081977 (= tp!323618 e!684736)))

(assert (= (and b!1081977 ((_ is Cons!10171) (t!101233 s!10566))) b!1082794))

(declare-fun e!684737 () Bool)

(assert (=> b!1081988 (= tp!323615 e!684737)))

(declare-fun b!1082798 () Bool)

(declare-fun tp!323691 () Bool)

(declare-fun tp!323687 () Bool)

(assert (=> b!1082798 (= e!684737 (and tp!323691 tp!323687))))

(declare-fun b!1082797 () Bool)

(declare-fun tp!323689 () Bool)

(assert (=> b!1082797 (= e!684737 tp!323689)))

(declare-fun b!1082796 () Bool)

(declare-fun tp!323688 () Bool)

(declare-fun tp!323690 () Bool)

(assert (=> b!1082796 (= e!684737 (and tp!323688 tp!323690))))

(declare-fun b!1082795 () Bool)

(assert (=> b!1082795 (= e!684737 tp_is_empty!5557)))

(assert (= (and b!1081988 ((_ is ElementMatch!2957) (regOne!6427 r!15766))) b!1082795))

(assert (= (and b!1081988 ((_ is Concat!4790) (regOne!6427 r!15766))) b!1082796))

(assert (= (and b!1081988 ((_ is Star!2957) (regOne!6427 r!15766))) b!1082797))

(assert (= (and b!1081988 ((_ is Union!2957) (regOne!6427 r!15766))) b!1082798))

(declare-fun e!684738 () Bool)

(assert (=> b!1081988 (= tp!323616 e!684738)))

(declare-fun b!1082802 () Bool)

(declare-fun tp!323696 () Bool)

(declare-fun tp!323692 () Bool)

(assert (=> b!1082802 (= e!684738 (and tp!323696 tp!323692))))

(declare-fun b!1082801 () Bool)

(declare-fun tp!323694 () Bool)

(assert (=> b!1082801 (= e!684738 tp!323694)))

(declare-fun b!1082800 () Bool)

(declare-fun tp!323693 () Bool)

(declare-fun tp!323695 () Bool)

(assert (=> b!1082800 (= e!684738 (and tp!323693 tp!323695))))

(declare-fun b!1082799 () Bool)

(assert (=> b!1082799 (= e!684738 tp_is_empty!5557)))

(assert (= (and b!1081988 ((_ is ElementMatch!2957) (regTwo!6427 r!15766))) b!1082799))

(assert (= (and b!1081988 ((_ is Concat!4790) (regTwo!6427 r!15766))) b!1082800))

(assert (= (and b!1081988 ((_ is Star!2957) (regTwo!6427 r!15766))) b!1082801))

(assert (= (and b!1081988 ((_ is Union!2957) (regTwo!6427 r!15766))) b!1082802))

(check-sat (not d!304610) (not bm!80023) (not b!1082714) (not b!1082455) (not b!1082744) (not b!1082396) (not b!1082036) (not d!304532) (not d!304546) (not b!1082767) (not b!1082031) (not b!1082796) (not b!1082649) (not b!1082249) (not b!1082745) (not d!304614) (not b!1082709) (not b!1082686) (not b!1082732) (not b!1082389) (not b!1082800) (not b!1082035) (not bm!79947) (not b!1082454) (not b!1082801) (not b!1082684) (not b!1082382) (not d!304622) (not b!1082788) (not bm!79999) (not b!1082682) (not b!1082787) (not b!1082797) (not bm!79977) (not b!1082679) (not d!304600) (not d!304578) (not d!304534) (not d!304608) (not b!1082698) (not b!1082779) (not b!1082408) (not b!1082711) (not d!304598) (not b!1082647) (not b!1082798) (not bm!80003) (not b!1082766) (not b!1082693) (not d!304588) (not bm!79949) (not b!1082757) (not bm!79975) (not b!1082742) (not d!304618) (not bm!79976) (not b!1082534) (not d!304596) (not bm!80008) (not d!304576) (not bm!79914) (not d!304630) (not b!1082034) (not b!1082765) (not b!1082407) (not b!1082781) (not b!1082708) (not bm!80009) (not b!1082237) (not d!304592) (not b!1082450) (not b!1082697) (not b!1082441) (not b!1082539) (not b!1082683) (not b!1082372) (not b!1082545) (not b!1082197) (not b!1082739) (not b!1082783) (not d!304536) (not b!1082650) (not b!1082674) (not bm!80016) (not bm!80019) (not d!304628) (not d!304620) (not b!1082248) (not bm!79974) (not b!1082802) tp_is_empty!5557 (not b!1082712) (not b!1082743) (not b!1082392) (not bm!80013) (not b!1082784) (not d!304624) (not b!1082443) (not b!1082393) (not b!1082755) (not b!1082239) (not b!1082718) (not b!1082648) (not d!304606) (not b!1082203) (not b!1082762) (not b!1082398) (not b!1082453) (not bm!80002) (not b!1082780) (not d!304476) (not b!1082652) (not b!1082672) (not b!1082394) (not d!304602) (not bm!79998) (not d!304612) (not d!304604) (not b!1082713) (not b!1082716) (not b!1082403) (not d!304594) (not b!1082026) (not bm!79948) (not bm!80015) (not b!1082789) (not d!304616) (not d!304544) (not bm!80022) (not b!1082457) (not b!1082666) (not d!304496) (not b!1082445) (not b!1082696) (not b!1082726) (not b!1082406) (not bm!79972) (not b!1082654) (not d!304550) (not bm!80012) (not b!1082734) (not b!1082785) (not b!1082247) (not bm!80020) (not b!1082244) (not b!1082384) (not d!304498) (not b!1082688) (not b!1082794) (not b!1082024))
(check-sat)
