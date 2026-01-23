; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663836 () Bool)

(assert start!663836)

(declare-fun b!6880877 () Bool)

(assert (=> b!6880877 true))

(assert (=> b!6880877 true))

(assert (=> b!6880877 true))

(declare-fun lambda!389466 () Int)

(declare-fun lambda!389465 () Int)

(assert (=> b!6880877 (not (= lambda!389466 lambda!389465))))

(assert (=> b!6880877 true))

(assert (=> b!6880877 true))

(assert (=> b!6880877 true))

(declare-fun b!6880864 () Bool)

(declare-fun e!4146565 () Bool)

(declare-fun tp_is_empty!42749 () Bool)

(assert (=> b!6880864 (= e!4146565 tp_is_empty!42749)))

(declare-fun b!6880865 () Bool)

(declare-fun e!4146559 () Bool)

(declare-fun tp!1892278 () Bool)

(assert (=> b!6880865 (= e!4146559 tp!1892278)))

(declare-fun b!6880866 () Bool)

(declare-fun e!4146560 () Bool)

(declare-datatypes ((C!33794 0))(
  ( (C!33795 (val!26599 Int)) )
))
(declare-datatypes ((List!66519 0))(
  ( (Nil!66395) (Cons!66395 (h!72843 C!33794) (t!380262 List!66519)) )
))
(declare-fun s!14361 () List!66519)

(declare-fun ++!14856 (List!66519 List!66519) List!66519)

(assert (=> b!6880866 (= e!4146560 (= (++!14856 Nil!66395 s!14361) s!14361))))

(declare-fun b!6880867 () Bool)

(declare-fun e!4146563 () Bool)

(declare-fun tp!1892274 () Bool)

(declare-fun tp!1892279 () Bool)

(assert (=> b!6880867 (= e!4146563 (and tp!1892274 tp!1892279))))

(declare-fun b!6880868 () Bool)

(declare-fun e!4146561 () Bool)

(declare-fun tp!1892272 () Bool)

(assert (=> b!6880868 (= e!4146561 (and tp_is_empty!42749 tp!1892272))))

(declare-fun b!6880869 () Bool)

(declare-fun tp!1892269 () Bool)

(declare-fun tp!1892277 () Bool)

(assert (=> b!6880869 (= e!4146565 (and tp!1892269 tp!1892277))))

(declare-fun b!6880870 () Bool)

(declare-fun e!4146562 () Bool)

(declare-fun e!4146564 () Bool)

(assert (=> b!6880870 (= e!4146562 (not e!4146564))))

(declare-fun res!2804945 () Bool)

(assert (=> b!6880870 (=> res!2804945 e!4146564)))

(declare-fun lt!2459694 () Bool)

(assert (=> b!6880870 (= res!2804945 (not lt!2459694))))

(declare-datatypes ((Regex!16762 0))(
  ( (ElementMatch!16762 (c!1280072 C!33794)) (Concat!25607 (regOne!34036 Regex!16762) (regTwo!34036 Regex!16762)) (EmptyExpr!16762) (Star!16762 (reg!17091 Regex!16762)) (EmptyLang!16762) (Union!16762 (regOne!34037 Regex!16762) (regTwo!34037 Regex!16762)) )
))
(declare-fun lt!2459697 () Regex!16762)

(declare-fun matchR!8907 (Regex!16762 List!66519) Bool)

(declare-fun matchRSpec!3825 (Regex!16762 List!66519) Bool)

(assert (=> b!6880870 (= (matchR!8907 lt!2459697 s!14361) (matchRSpec!3825 lt!2459697 s!14361))))

(declare-datatypes ((Unit!160244 0))(
  ( (Unit!160245) )
))
(declare-fun lt!2459699 () Unit!160244)

(declare-fun mainMatchTheorem!3825 (Regex!16762 List!66519) Unit!160244)

(assert (=> b!6880870 (= lt!2459699 (mainMatchTheorem!3825 lt!2459697 s!14361))))

(declare-fun lt!2459696 () Regex!16762)

(assert (=> b!6880870 (= lt!2459694 (matchRSpec!3825 lt!2459696 s!14361))))

(assert (=> b!6880870 (= lt!2459694 (matchR!8907 lt!2459696 s!14361))))

(declare-fun lt!2459695 () Unit!160244)

(assert (=> b!6880870 (= lt!2459695 (mainMatchTheorem!3825 lt!2459696 s!14361))))

(declare-fun r1!6342 () Regex!16762)

(declare-fun r3!135 () Regex!16762)

(declare-fun r2!6280 () Regex!16762)

(assert (=> b!6880870 (= lt!2459697 (Concat!25607 r1!6342 (Concat!25607 r2!6280 r3!135)))))

(declare-fun lt!2459698 () Regex!16762)

(assert (=> b!6880870 (= lt!2459696 (Concat!25607 lt!2459698 r3!135))))

(assert (=> b!6880870 (= lt!2459698 (Concat!25607 r1!6342 r2!6280))))

(declare-fun res!2804942 () Bool)

(assert (=> start!663836 (=> (not res!2804942) (not e!4146562))))

(declare-fun validRegex!8470 (Regex!16762) Bool)

(assert (=> start!663836 (= res!2804942 (validRegex!8470 r1!6342))))

(assert (=> start!663836 e!4146562))

(assert (=> start!663836 e!4146565))

(assert (=> start!663836 e!4146559))

(assert (=> start!663836 e!4146563))

(assert (=> start!663836 e!4146561))

(declare-fun b!6880871 () Bool)

(declare-fun tp!1892271 () Bool)

(assert (=> b!6880871 (= e!4146565 tp!1892271)))

(declare-fun b!6880872 () Bool)

(declare-fun tp!1892275 () Bool)

(assert (=> b!6880872 (= e!4146563 tp!1892275)))

(declare-fun b!6880873 () Bool)

(assert (=> b!6880873 (= e!4146559 tp_is_empty!42749)))

(declare-fun b!6880874 () Bool)

(assert (=> b!6880874 (= e!4146563 tp_is_empty!42749)))

(declare-fun b!6880875 () Bool)

(declare-fun tp!1892267 () Bool)

(declare-fun tp!1892270 () Bool)

(assert (=> b!6880875 (= e!4146559 (and tp!1892267 tp!1892270))))

(declare-fun b!6880876 () Bool)

(declare-fun res!2804943 () Bool)

(assert (=> b!6880876 (=> (not res!2804943) (not e!4146562))))

(assert (=> b!6880876 (= res!2804943 (validRegex!8470 r3!135))))

(assert (=> b!6880877 (= e!4146564 e!4146560)))

(declare-fun res!2804944 () Bool)

(assert (=> b!6880877 (=> res!2804944 e!4146560)))

(assert (=> b!6880877 (= res!2804944 (not (validRegex!8470 lt!2459698)))))

(declare-fun Exists!3774 (Int) Bool)

(assert (=> b!6880877 (= (Exists!3774 lambda!389465) (Exists!3774 lambda!389466))))

(declare-fun lt!2459700 () Unit!160244)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2253 (Regex!16762 Regex!16762 List!66519) Unit!160244)

(assert (=> b!6880877 (= lt!2459700 (lemmaExistCutMatchRandMatchRSpecEquivalent!2253 lt!2459698 r3!135 s!14361))))

(declare-datatypes ((tuple2!67270 0))(
  ( (tuple2!67271 (_1!36938 List!66519) (_2!36938 List!66519)) )
))
(declare-datatypes ((Option!16547 0))(
  ( (None!16546) (Some!16546 (v!52818 tuple2!67270)) )
))
(declare-fun isDefined!13250 (Option!16547) Bool)

(declare-fun findConcatSeparation!2961 (Regex!16762 Regex!16762 List!66519 List!66519 List!66519) Option!16547)

(assert (=> b!6880877 (= (isDefined!13250 (findConcatSeparation!2961 lt!2459698 r3!135 Nil!66395 s!14361 s!14361)) (Exists!3774 lambda!389465))))

(declare-fun lt!2459701 () Unit!160244)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2725 (Regex!16762 Regex!16762 List!66519) Unit!160244)

(assert (=> b!6880877 (= lt!2459701 (lemmaFindConcatSeparationEquivalentToExists!2725 lt!2459698 r3!135 s!14361))))

(declare-fun b!6880878 () Bool)

(declare-fun tp!1892273 () Bool)

(declare-fun tp!1892266 () Bool)

(assert (=> b!6880878 (= e!4146565 (and tp!1892273 tp!1892266))))

(declare-fun b!6880879 () Bool)

(declare-fun res!2804941 () Bool)

(assert (=> b!6880879 (=> (not res!2804941) (not e!4146562))))

(assert (=> b!6880879 (= res!2804941 (validRegex!8470 r2!6280))))

(declare-fun b!6880880 () Bool)

(declare-fun tp!1892276 () Bool)

(declare-fun tp!1892265 () Bool)

(assert (=> b!6880880 (= e!4146559 (and tp!1892276 tp!1892265))))

(declare-fun b!6880881 () Bool)

(declare-fun tp!1892268 () Bool)

(declare-fun tp!1892264 () Bool)

(assert (=> b!6880881 (= e!4146563 (and tp!1892268 tp!1892264))))

(assert (= (and start!663836 res!2804942) b!6880879))

(assert (= (and b!6880879 res!2804941) b!6880876))

(assert (= (and b!6880876 res!2804943) b!6880870))

(assert (= (and b!6880870 (not res!2804945)) b!6880877))

(assert (= (and b!6880877 (not res!2804944)) b!6880866))

(assert (= (and start!663836 (is-ElementMatch!16762 r1!6342)) b!6880864))

(assert (= (and start!663836 (is-Concat!25607 r1!6342)) b!6880878))

(assert (= (and start!663836 (is-Star!16762 r1!6342)) b!6880871))

(assert (= (and start!663836 (is-Union!16762 r1!6342)) b!6880869))

(assert (= (and start!663836 (is-ElementMatch!16762 r2!6280)) b!6880873))

(assert (= (and start!663836 (is-Concat!25607 r2!6280)) b!6880880))

(assert (= (and start!663836 (is-Star!16762 r2!6280)) b!6880865))

(assert (= (and start!663836 (is-Union!16762 r2!6280)) b!6880875))

(assert (= (and start!663836 (is-ElementMatch!16762 r3!135)) b!6880874))

(assert (= (and start!663836 (is-Concat!25607 r3!135)) b!6880867))

(assert (= (and start!663836 (is-Star!16762 r3!135)) b!6880872))

(assert (= (and start!663836 (is-Union!16762 r3!135)) b!6880881))

(assert (= (and start!663836 (is-Cons!66395 s!14361)) b!6880868))

(declare-fun m!7606260 () Bool)

(assert (=> b!6880879 m!7606260))

(declare-fun m!7606262 () Bool)

(assert (=> b!6880877 m!7606262))

(declare-fun m!7606264 () Bool)

(assert (=> b!6880877 m!7606264))

(declare-fun m!7606266 () Bool)

(assert (=> b!6880877 m!7606266))

(assert (=> b!6880877 m!7606262))

(declare-fun m!7606268 () Bool)

(assert (=> b!6880877 m!7606268))

(declare-fun m!7606270 () Bool)

(assert (=> b!6880877 m!7606270))

(assert (=> b!6880877 m!7606264))

(declare-fun m!7606272 () Bool)

(assert (=> b!6880877 m!7606272))

(declare-fun m!7606274 () Bool)

(assert (=> b!6880877 m!7606274))

(declare-fun m!7606276 () Bool)

(assert (=> b!6880866 m!7606276))

(declare-fun m!7606278 () Bool)

(assert (=> b!6880876 m!7606278))

(declare-fun m!7606280 () Bool)

(assert (=> start!663836 m!7606280))

(declare-fun m!7606282 () Bool)

(assert (=> b!6880870 m!7606282))

(declare-fun m!7606284 () Bool)

(assert (=> b!6880870 m!7606284))

(declare-fun m!7606286 () Bool)

(assert (=> b!6880870 m!7606286))

(declare-fun m!7606288 () Bool)

(assert (=> b!6880870 m!7606288))

(declare-fun m!7606290 () Bool)

(assert (=> b!6880870 m!7606290))

(declare-fun m!7606292 () Bool)

(assert (=> b!6880870 m!7606292))

(push 1)

(assert (not b!6880877))

(assert (not b!6880866))

(assert (not b!6880875))

(assert (not b!6880879))

(assert (not b!6880870))

(assert (not b!6880871))

(assert (not b!6880880))

(assert (not b!6880872))

(assert (not b!6880865))

(assert (not start!663836))

(assert tp_is_empty!42749)

(assert (not b!6880881))

(assert (not b!6880869))

(assert (not b!6880876))

(assert (not b!6880867))

(assert (not b!6880868))

(assert (not b!6880878))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6880974 () Bool)

(declare-fun e!4146612 () Bool)

(declare-fun e!4146609 () Bool)

(assert (=> b!6880974 (= e!4146612 e!4146609)))

(declare-fun res!2804985 () Bool)

(assert (=> b!6880974 (=> (not res!2804985) (not e!4146609))))

(declare-fun call!626436 () Bool)

(assert (=> b!6880974 (= res!2804985 call!626436)))

(declare-fun b!6880975 () Bool)

(declare-fun e!4146611 () Bool)

(declare-fun e!4146607 () Bool)

(assert (=> b!6880975 (= e!4146611 e!4146607)))

(declare-fun c!1280079 () Bool)

(assert (=> b!6880975 (= c!1280079 (is-Union!16762 r2!6280))))

(declare-fun d!2160017 () Bool)

(declare-fun res!2804987 () Bool)

(declare-fun e!4146610 () Bool)

(assert (=> d!2160017 (=> res!2804987 e!4146610)))

(assert (=> d!2160017 (= res!2804987 (is-ElementMatch!16762 r2!6280))))

(assert (=> d!2160017 (= (validRegex!8470 r2!6280) e!4146610)))

(declare-fun b!6880976 () Bool)

(declare-fun res!2804983 () Bool)

(declare-fun e!4146608 () Bool)

(assert (=> b!6880976 (=> (not res!2804983) (not e!4146608))))

(declare-fun call!626434 () Bool)

(assert (=> b!6880976 (= res!2804983 call!626434)))

(assert (=> b!6880976 (= e!4146607 e!4146608)))

(declare-fun bm!626429 () Bool)

(assert (=> bm!626429 (= call!626436 (validRegex!8470 (ite c!1280079 (regTwo!34037 r2!6280) (regOne!34036 r2!6280))))))

(declare-fun b!6880977 () Bool)

(declare-fun e!4146613 () Bool)

(assert (=> b!6880977 (= e!4146611 e!4146613)))

(declare-fun res!2804986 () Bool)

(declare-fun nullable!6673 (Regex!16762) Bool)

(assert (=> b!6880977 (= res!2804986 (not (nullable!6673 (reg!17091 r2!6280))))))

(assert (=> b!6880977 (=> (not res!2804986) (not e!4146613))))

(declare-fun b!6880978 () Bool)

(assert (=> b!6880978 (= e!4146608 call!626436)))

(declare-fun b!6880979 () Bool)

(assert (=> b!6880979 (= e!4146610 e!4146611)))

(declare-fun c!1280078 () Bool)

(assert (=> b!6880979 (= c!1280078 (is-Star!16762 r2!6280))))

(declare-fun b!6880980 () Bool)

(declare-fun call!626435 () Bool)

(assert (=> b!6880980 (= e!4146613 call!626435)))

(declare-fun bm!626430 () Bool)

(assert (=> bm!626430 (= call!626435 (validRegex!8470 (ite c!1280078 (reg!17091 r2!6280) (ite c!1280079 (regOne!34037 r2!6280) (regTwo!34036 r2!6280)))))))

(declare-fun b!6880981 () Bool)

(assert (=> b!6880981 (= e!4146609 call!626434)))

(declare-fun bm!626431 () Bool)

(assert (=> bm!626431 (= call!626434 call!626435)))

(declare-fun b!6880982 () Bool)

(declare-fun res!2804984 () Bool)

(assert (=> b!6880982 (=> res!2804984 e!4146612)))

(assert (=> b!6880982 (= res!2804984 (not (is-Concat!25607 r2!6280)))))

(assert (=> b!6880982 (= e!4146607 e!4146612)))

(assert (= (and d!2160017 (not res!2804987)) b!6880979))

(assert (= (and b!6880979 c!1280078) b!6880977))

(assert (= (and b!6880979 (not c!1280078)) b!6880975))

(assert (= (and b!6880977 res!2804986) b!6880980))

(assert (= (and b!6880975 c!1280079) b!6880976))

(assert (= (and b!6880975 (not c!1280079)) b!6880982))

(assert (= (and b!6880976 res!2804983) b!6880978))

(assert (= (and b!6880982 (not res!2804984)) b!6880974))

(assert (= (and b!6880974 res!2804985) b!6880981))

(assert (= (or b!6880976 b!6880981) bm!626431))

(assert (= (or b!6880978 b!6880974) bm!626429))

(assert (= (or b!6880980 bm!626431) bm!626430))

(declare-fun m!7606328 () Bool)

(assert (=> bm!626429 m!7606328))

(declare-fun m!7606330 () Bool)

(assert (=> b!6880977 m!7606330))

(declare-fun m!7606332 () Bool)

(assert (=> bm!626430 m!7606332))

(assert (=> b!6880879 d!2160017))

(declare-fun b!6880983 () Bool)

(declare-fun e!4146619 () Bool)

(declare-fun e!4146616 () Bool)

(assert (=> b!6880983 (= e!4146619 e!4146616)))

(declare-fun res!2804990 () Bool)

(assert (=> b!6880983 (=> (not res!2804990) (not e!4146616))))

(declare-fun call!626439 () Bool)

(assert (=> b!6880983 (= res!2804990 call!626439)))

(declare-fun b!6880984 () Bool)

(declare-fun e!4146618 () Bool)

(declare-fun e!4146614 () Bool)

(assert (=> b!6880984 (= e!4146618 e!4146614)))

(declare-fun c!1280081 () Bool)

(assert (=> b!6880984 (= c!1280081 (is-Union!16762 r1!6342))))

(declare-fun d!2160021 () Bool)

(declare-fun res!2804992 () Bool)

(declare-fun e!4146617 () Bool)

(assert (=> d!2160021 (=> res!2804992 e!4146617)))

(assert (=> d!2160021 (= res!2804992 (is-ElementMatch!16762 r1!6342))))

(assert (=> d!2160021 (= (validRegex!8470 r1!6342) e!4146617)))

(declare-fun b!6880985 () Bool)

(declare-fun res!2804988 () Bool)

(declare-fun e!4146615 () Bool)

(assert (=> b!6880985 (=> (not res!2804988) (not e!4146615))))

(declare-fun call!626437 () Bool)

(assert (=> b!6880985 (= res!2804988 call!626437)))

(assert (=> b!6880985 (= e!4146614 e!4146615)))

(declare-fun bm!626432 () Bool)

(assert (=> bm!626432 (= call!626439 (validRegex!8470 (ite c!1280081 (regTwo!34037 r1!6342) (regOne!34036 r1!6342))))))

(declare-fun b!6880986 () Bool)

(declare-fun e!4146620 () Bool)

(assert (=> b!6880986 (= e!4146618 e!4146620)))

(declare-fun res!2804991 () Bool)

(assert (=> b!6880986 (= res!2804991 (not (nullable!6673 (reg!17091 r1!6342))))))

(assert (=> b!6880986 (=> (not res!2804991) (not e!4146620))))

(declare-fun b!6880987 () Bool)

(assert (=> b!6880987 (= e!4146615 call!626439)))

(declare-fun b!6880988 () Bool)

(assert (=> b!6880988 (= e!4146617 e!4146618)))

(declare-fun c!1280080 () Bool)

(assert (=> b!6880988 (= c!1280080 (is-Star!16762 r1!6342))))

(declare-fun b!6880989 () Bool)

(declare-fun call!626438 () Bool)

(assert (=> b!6880989 (= e!4146620 call!626438)))

(declare-fun bm!626433 () Bool)

(assert (=> bm!626433 (= call!626438 (validRegex!8470 (ite c!1280080 (reg!17091 r1!6342) (ite c!1280081 (regOne!34037 r1!6342) (regTwo!34036 r1!6342)))))))

(declare-fun b!6880990 () Bool)

(assert (=> b!6880990 (= e!4146616 call!626437)))

(declare-fun bm!626434 () Bool)

(assert (=> bm!626434 (= call!626437 call!626438)))

(declare-fun b!6880991 () Bool)

(declare-fun res!2804989 () Bool)

(assert (=> b!6880991 (=> res!2804989 e!4146619)))

(assert (=> b!6880991 (= res!2804989 (not (is-Concat!25607 r1!6342)))))

(assert (=> b!6880991 (= e!4146614 e!4146619)))

(assert (= (and d!2160021 (not res!2804992)) b!6880988))

(assert (= (and b!6880988 c!1280080) b!6880986))

(assert (= (and b!6880988 (not c!1280080)) b!6880984))

(assert (= (and b!6880986 res!2804991) b!6880989))

(assert (= (and b!6880984 c!1280081) b!6880985))

(assert (= (and b!6880984 (not c!1280081)) b!6880991))

(assert (= (and b!6880985 res!2804988) b!6880987))

(assert (= (and b!6880991 (not res!2804989)) b!6880983))

(assert (= (and b!6880983 res!2804990) b!6880990))

(assert (= (or b!6880985 b!6880990) bm!626434))

(assert (= (or b!6880987 b!6880983) bm!626432))

(assert (= (or b!6880989 bm!626434) bm!626433))

(declare-fun m!7606334 () Bool)

(assert (=> bm!626432 m!7606334))

(declare-fun m!7606336 () Bool)

(assert (=> b!6880986 m!7606336))

(declare-fun m!7606338 () Bool)

(assert (=> bm!626433 m!7606338))

(assert (=> start!663836 d!2160021))

(declare-fun d!2160023 () Bool)

(assert (=> d!2160023 (= (matchR!8907 lt!2459696 s!14361) (matchRSpec!3825 lt!2459696 s!14361))))

(declare-fun lt!2459728 () Unit!160244)

(declare-fun choose!51246 (Regex!16762 List!66519) Unit!160244)

(assert (=> d!2160023 (= lt!2459728 (choose!51246 lt!2459696 s!14361))))

(assert (=> d!2160023 (validRegex!8470 lt!2459696)))

(assert (=> d!2160023 (= (mainMatchTheorem!3825 lt!2459696 s!14361) lt!2459728)))

(declare-fun bs!1838062 () Bool)

(assert (= bs!1838062 d!2160023))

(assert (=> bs!1838062 m!7606290))

(assert (=> bs!1838062 m!7606286))

(declare-fun m!7606340 () Bool)

(assert (=> bs!1838062 m!7606340))

(declare-fun m!7606342 () Bool)

(assert (=> bs!1838062 m!7606342))

(assert (=> b!6880870 d!2160023))

(declare-fun bs!1838063 () Bool)

(declare-fun b!6881058 () Bool)

(assert (= bs!1838063 (and b!6881058 b!6880877)))

(declare-fun lambda!389479 () Int)

(assert (=> bs!1838063 (not (= lambda!389479 lambda!389465))))

(assert (=> bs!1838063 (not (= lambda!389479 lambda!389466))))

(assert (=> b!6881058 true))

(assert (=> b!6881058 true))

(declare-fun bs!1838064 () Bool)

(declare-fun b!6881059 () Bool)

(assert (= bs!1838064 (and b!6881059 b!6880877)))

(declare-fun lambda!389480 () Int)

(assert (=> bs!1838064 (not (= lambda!389480 lambda!389465))))

(assert (=> bs!1838064 (= (and (= (regOne!34036 lt!2459696) lt!2459698) (= (regTwo!34036 lt!2459696) r3!135)) (= lambda!389480 lambda!389466))))

(declare-fun bs!1838065 () Bool)

(assert (= bs!1838065 (and b!6881059 b!6881058)))

(assert (=> bs!1838065 (not (= lambda!389480 lambda!389479))))

(assert (=> b!6881059 true))

(assert (=> b!6881059 true))

(declare-fun b!6881054 () Bool)

(declare-fun c!1280099 () Bool)

(assert (=> b!6881054 (= c!1280099 (is-Union!16762 lt!2459696))))

(declare-fun e!4146662 () Bool)

(declare-fun e!4146659 () Bool)

(assert (=> b!6881054 (= e!4146662 e!4146659)))

(declare-fun b!6881055 () Bool)

(declare-fun e!4146665 () Bool)

(declare-fun call!626448 () Bool)

(assert (=> b!6881055 (= e!4146665 call!626448)))

(declare-fun b!6881056 () Bool)

(declare-fun res!2805025 () Bool)

(declare-fun e!4146663 () Bool)

(assert (=> b!6881056 (=> res!2805025 e!4146663)))

(assert (=> b!6881056 (= res!2805025 call!626448)))

(declare-fun e!4146661 () Bool)

(assert (=> b!6881056 (= e!4146661 e!4146663)))

(declare-fun b!6881057 () Bool)

(declare-fun e!4146660 () Bool)

(assert (=> b!6881057 (= e!4146659 e!4146660)))

(declare-fun res!2805027 () Bool)

(assert (=> b!6881057 (= res!2805027 (matchRSpec!3825 (regOne!34037 lt!2459696) s!14361))))

(assert (=> b!6881057 (=> res!2805027 e!4146660)))

(declare-fun call!626449 () Bool)

(assert (=> b!6881058 (= e!4146663 call!626449)))

(assert (=> b!6881059 (= e!4146661 call!626449)))

(declare-fun c!1280098 () Bool)

(declare-fun bm!626443 () Bool)

(assert (=> bm!626443 (= call!626449 (Exists!3774 (ite c!1280098 lambda!389479 lambda!389480)))))

(declare-fun d!2160025 () Bool)

(declare-fun c!1280100 () Bool)

(assert (=> d!2160025 (= c!1280100 (is-EmptyExpr!16762 lt!2459696))))

(assert (=> d!2160025 (= (matchRSpec!3825 lt!2459696 s!14361) e!4146665)))

(declare-fun b!6881060 () Bool)

(assert (=> b!6881060 (= e!4146662 (= s!14361 (Cons!66395 (c!1280072 lt!2459696) Nil!66395)))))

(declare-fun bm!626444 () Bool)

(declare-fun isEmpty!38666 (List!66519) Bool)

(assert (=> bm!626444 (= call!626448 (isEmpty!38666 s!14361))))

(declare-fun b!6881061 () Bool)

(assert (=> b!6881061 (= e!4146659 e!4146661)))

(assert (=> b!6881061 (= c!1280098 (is-Star!16762 lt!2459696))))

(declare-fun b!6881062 () Bool)

(declare-fun e!4146664 () Bool)

(assert (=> b!6881062 (= e!4146665 e!4146664)))

(declare-fun res!2805026 () Bool)

(assert (=> b!6881062 (= res!2805026 (not (is-EmptyLang!16762 lt!2459696)))))

(assert (=> b!6881062 (=> (not res!2805026) (not e!4146664))))

(declare-fun b!6881063 () Bool)

(assert (=> b!6881063 (= e!4146660 (matchRSpec!3825 (regTwo!34037 lt!2459696) s!14361))))

(declare-fun b!6881064 () Bool)

(declare-fun c!1280097 () Bool)

(assert (=> b!6881064 (= c!1280097 (is-ElementMatch!16762 lt!2459696))))

(assert (=> b!6881064 (= e!4146664 e!4146662)))

(assert (= (and d!2160025 c!1280100) b!6881055))

(assert (= (and d!2160025 (not c!1280100)) b!6881062))

(assert (= (and b!6881062 res!2805026) b!6881064))

(assert (= (and b!6881064 c!1280097) b!6881060))

(assert (= (and b!6881064 (not c!1280097)) b!6881054))

(assert (= (and b!6881054 c!1280099) b!6881057))

(assert (= (and b!6881054 (not c!1280099)) b!6881061))

(assert (= (and b!6881057 (not res!2805027)) b!6881063))

(assert (= (and b!6881061 c!1280098) b!6881056))

(assert (= (and b!6881061 (not c!1280098)) b!6881059))

(assert (= (and b!6881056 (not res!2805025)) b!6881058))

(assert (= (or b!6881058 b!6881059) bm!626443))

(assert (= (or b!6881055 b!6881056) bm!626444))

(declare-fun m!7606358 () Bool)

(assert (=> b!6881057 m!7606358))

(declare-fun m!7606360 () Bool)

(assert (=> bm!626443 m!7606360))

(declare-fun m!7606362 () Bool)

(assert (=> bm!626444 m!7606362))

(declare-fun m!7606364 () Bool)

(assert (=> b!6881063 m!7606364))

(assert (=> b!6880870 d!2160025))

(declare-fun b!6881129 () Bool)

(declare-fun e!4146710 () Bool)

(declare-fun lt!2459734 () Bool)

(assert (=> b!6881129 (= e!4146710 (not lt!2459734))))

(declare-fun b!6881130 () Bool)

(declare-fun res!2805070 () Bool)

(declare-fun e!4146712 () Bool)

(assert (=> b!6881130 (=> (not res!2805070) (not e!4146712))))

(declare-fun tail!12858 (List!66519) List!66519)

(assert (=> b!6881130 (= res!2805070 (isEmpty!38666 (tail!12858 s!14361)))))

(declare-fun b!6881131 () Bool)

(declare-fun head!13806 (List!66519) C!33794)

(assert (=> b!6881131 (= e!4146712 (= (head!13806 s!14361) (c!1280072 lt!2459697)))))

(declare-fun b!6881132 () Bool)

(declare-fun res!2805066 () Bool)

(declare-fun e!4146714 () Bool)

(assert (=> b!6881132 (=> res!2805066 e!4146714)))

(assert (=> b!6881132 (= res!2805066 (not (isEmpty!38666 (tail!12858 s!14361))))))

(declare-fun b!6881134 () Bool)

(declare-fun e!4146713 () Bool)

(assert (=> b!6881134 (= e!4146713 e!4146710)))

(declare-fun c!1280116 () Bool)

(assert (=> b!6881134 (= c!1280116 (is-EmptyLang!16762 lt!2459697))))

(declare-fun b!6881135 () Bool)

(declare-fun e!4146711 () Bool)

(assert (=> b!6881135 (= e!4146711 (nullable!6673 lt!2459697))))

(declare-fun b!6881136 () Bool)

(declare-fun res!2805068 () Bool)

(assert (=> b!6881136 (=> (not res!2805068) (not e!4146712))))

(declare-fun call!626466 () Bool)

(assert (=> b!6881136 (= res!2805068 (not call!626466))))

(declare-fun b!6881137 () Bool)

(declare-fun e!4146708 () Bool)

(declare-fun e!4146709 () Bool)

(assert (=> b!6881137 (= e!4146708 e!4146709)))

(declare-fun res!2805069 () Bool)

(assert (=> b!6881137 (=> (not res!2805069) (not e!4146709))))

(assert (=> b!6881137 (= res!2805069 (not lt!2459734))))

(declare-fun b!6881138 () Bool)

(declare-fun derivativeStep!5353 (Regex!16762 C!33794) Regex!16762)

(assert (=> b!6881138 (= e!4146711 (matchR!8907 (derivativeStep!5353 lt!2459697 (head!13806 s!14361)) (tail!12858 s!14361)))))

(declare-fun b!6881139 () Bool)

(assert (=> b!6881139 (= e!4146709 e!4146714)))

(declare-fun res!2805064 () Bool)

(assert (=> b!6881139 (=> res!2805064 e!4146714)))

(assert (=> b!6881139 (= res!2805064 call!626466)))

(declare-fun bm!626461 () Bool)

(assert (=> bm!626461 (= call!626466 (isEmpty!38666 s!14361))))

(declare-fun b!6881140 () Bool)

(assert (=> b!6881140 (= e!4146714 (not (= (head!13806 s!14361) (c!1280072 lt!2459697))))))

(declare-fun b!6881141 () Bool)

(declare-fun res!2805067 () Bool)

(assert (=> b!6881141 (=> res!2805067 e!4146708)))

(assert (=> b!6881141 (= res!2805067 e!4146712)))

(declare-fun res!2805065 () Bool)

(assert (=> b!6881141 (=> (not res!2805065) (not e!4146712))))

(assert (=> b!6881141 (= res!2805065 lt!2459734)))

(declare-fun b!6881142 () Bool)

(assert (=> b!6881142 (= e!4146713 (= lt!2459734 call!626466))))

(declare-fun b!6881133 () Bool)

(declare-fun res!2805071 () Bool)

(assert (=> b!6881133 (=> res!2805071 e!4146708)))

(assert (=> b!6881133 (= res!2805071 (not (is-ElementMatch!16762 lt!2459697)))))

(assert (=> b!6881133 (= e!4146710 e!4146708)))

(declare-fun d!2160029 () Bool)

(assert (=> d!2160029 e!4146713))

(declare-fun c!1280115 () Bool)

(assert (=> d!2160029 (= c!1280115 (is-EmptyExpr!16762 lt!2459697))))

(assert (=> d!2160029 (= lt!2459734 e!4146711)))

(declare-fun c!1280117 () Bool)

(assert (=> d!2160029 (= c!1280117 (isEmpty!38666 s!14361))))

(assert (=> d!2160029 (validRegex!8470 lt!2459697)))

(assert (=> d!2160029 (= (matchR!8907 lt!2459697 s!14361) lt!2459734)))

(assert (= (and d!2160029 c!1280117) b!6881135))

(assert (= (and d!2160029 (not c!1280117)) b!6881138))

(assert (= (and d!2160029 c!1280115) b!6881142))

(assert (= (and d!2160029 (not c!1280115)) b!6881134))

(assert (= (and b!6881134 c!1280116) b!6881129))

(assert (= (and b!6881134 (not c!1280116)) b!6881133))

(assert (= (and b!6881133 (not res!2805071)) b!6881141))

(assert (= (and b!6881141 res!2805065) b!6881136))

(assert (= (and b!6881136 res!2805068) b!6881130))

(assert (= (and b!6881130 res!2805070) b!6881131))

(assert (= (and b!6881141 (not res!2805067)) b!6881137))

(assert (= (and b!6881137 res!2805069) b!6881139))

(assert (= (and b!6881139 (not res!2805064)) b!6881132))

(assert (= (and b!6881132 (not res!2805066)) b!6881140))

(assert (= (or b!6881142 b!6881136 b!6881139) bm!626461))

(declare-fun m!7606390 () Bool)

(assert (=> b!6881138 m!7606390))

(assert (=> b!6881138 m!7606390))

(declare-fun m!7606392 () Bool)

(assert (=> b!6881138 m!7606392))

(declare-fun m!7606394 () Bool)

(assert (=> b!6881138 m!7606394))

(assert (=> b!6881138 m!7606392))

(assert (=> b!6881138 m!7606394))

(declare-fun m!7606396 () Bool)

(assert (=> b!6881138 m!7606396))

(declare-fun m!7606398 () Bool)

(assert (=> b!6881135 m!7606398))

(assert (=> b!6881131 m!7606390))

(assert (=> b!6881132 m!7606394))

(assert (=> b!6881132 m!7606394))

(declare-fun m!7606400 () Bool)

(assert (=> b!6881132 m!7606400))

(assert (=> b!6881140 m!7606390))

(assert (=> bm!626461 m!7606362))

(assert (=> d!2160029 m!7606362))

(declare-fun m!7606402 () Bool)

(assert (=> d!2160029 m!7606402))

(assert (=> b!6881130 m!7606394))

(assert (=> b!6881130 m!7606394))

(assert (=> b!6881130 m!7606400))

(assert (=> b!6880870 d!2160029))

(declare-fun d!2160039 () Bool)

(assert (=> d!2160039 (= (matchR!8907 lt!2459697 s!14361) (matchRSpec!3825 lt!2459697 s!14361))))

(declare-fun lt!2459735 () Unit!160244)

(assert (=> d!2160039 (= lt!2459735 (choose!51246 lt!2459697 s!14361))))

(assert (=> d!2160039 (validRegex!8470 lt!2459697)))

(assert (=> d!2160039 (= (mainMatchTheorem!3825 lt!2459697 s!14361) lt!2459735)))

(declare-fun bs!1838066 () Bool)

(assert (= bs!1838066 d!2160039))

(assert (=> bs!1838066 m!7606284))

(assert (=> bs!1838066 m!7606288))

(declare-fun m!7606404 () Bool)

(assert (=> bs!1838066 m!7606404))

(assert (=> bs!1838066 m!7606402))

(assert (=> b!6880870 d!2160039))

(declare-fun bs!1838067 () Bool)

(declare-fun b!6881147 () Bool)

(assert (= bs!1838067 (and b!6881147 b!6880877)))

(declare-fun lambda!389481 () Int)

(assert (=> bs!1838067 (not (= lambda!389481 lambda!389465))))

(assert (=> bs!1838067 (not (= lambda!389481 lambda!389466))))

(declare-fun bs!1838069 () Bool)

(assert (= bs!1838069 (and b!6881147 b!6881058)))

(assert (=> bs!1838069 (= (and (= (reg!17091 lt!2459697) (reg!17091 lt!2459696)) (= lt!2459697 lt!2459696)) (= lambda!389481 lambda!389479))))

(declare-fun bs!1838070 () Bool)

(assert (= bs!1838070 (and b!6881147 b!6881059)))

(assert (=> bs!1838070 (not (= lambda!389481 lambda!389480))))

(assert (=> b!6881147 true))

(assert (=> b!6881147 true))

(declare-fun bs!1838071 () Bool)

(declare-fun b!6881148 () Bool)

(assert (= bs!1838071 (and b!6881148 b!6880877)))

(declare-fun lambda!389482 () Int)

(assert (=> bs!1838071 (= (and (= (regOne!34036 lt!2459697) lt!2459698) (= (regTwo!34036 lt!2459697) r3!135)) (= lambda!389482 lambda!389466))))

(declare-fun bs!1838072 () Bool)

(assert (= bs!1838072 (and b!6881148 b!6881058)))

(assert (=> bs!1838072 (not (= lambda!389482 lambda!389479))))

(assert (=> bs!1838071 (not (= lambda!389482 lambda!389465))))

(declare-fun bs!1838074 () Bool)

(assert (= bs!1838074 (and b!6881148 b!6881059)))

(assert (=> bs!1838074 (= (and (= (regOne!34036 lt!2459697) (regOne!34036 lt!2459696)) (= (regTwo!34036 lt!2459697) (regTwo!34036 lt!2459696))) (= lambda!389482 lambda!389480))))

(declare-fun bs!1838075 () Bool)

(assert (= bs!1838075 (and b!6881148 b!6881147)))

(assert (=> bs!1838075 (not (= lambda!389482 lambda!389481))))

(assert (=> b!6881148 true))

(assert (=> b!6881148 true))

(declare-fun b!6881143 () Bool)

(declare-fun c!1280120 () Bool)

(assert (=> b!6881143 (= c!1280120 (is-Union!16762 lt!2459697))))

(declare-fun e!4146718 () Bool)

(declare-fun e!4146715 () Bool)

(assert (=> b!6881143 (= e!4146718 e!4146715)))

(declare-fun b!6881144 () Bool)

(declare-fun e!4146721 () Bool)

(declare-fun call!626467 () Bool)

(assert (=> b!6881144 (= e!4146721 call!626467)))

(declare-fun b!6881145 () Bool)

(declare-fun res!2805072 () Bool)

(declare-fun e!4146719 () Bool)

(assert (=> b!6881145 (=> res!2805072 e!4146719)))

(assert (=> b!6881145 (= res!2805072 call!626467)))

(declare-fun e!4146717 () Bool)

(assert (=> b!6881145 (= e!4146717 e!4146719)))

(declare-fun b!6881146 () Bool)

(declare-fun e!4146716 () Bool)

(assert (=> b!6881146 (= e!4146715 e!4146716)))

(declare-fun res!2805074 () Bool)

(assert (=> b!6881146 (= res!2805074 (matchRSpec!3825 (regOne!34037 lt!2459697) s!14361))))

(assert (=> b!6881146 (=> res!2805074 e!4146716)))

(declare-fun call!626468 () Bool)

(assert (=> b!6881147 (= e!4146719 call!626468)))

(assert (=> b!6881148 (= e!4146717 call!626468)))

(declare-fun bm!626462 () Bool)

(declare-fun c!1280119 () Bool)

(assert (=> bm!626462 (= call!626468 (Exists!3774 (ite c!1280119 lambda!389481 lambda!389482)))))

(declare-fun d!2160041 () Bool)

(declare-fun c!1280121 () Bool)

(assert (=> d!2160041 (= c!1280121 (is-EmptyExpr!16762 lt!2459697))))

(assert (=> d!2160041 (= (matchRSpec!3825 lt!2459697 s!14361) e!4146721)))

(declare-fun b!6881149 () Bool)

(assert (=> b!6881149 (= e!4146718 (= s!14361 (Cons!66395 (c!1280072 lt!2459697) Nil!66395)))))

(declare-fun bm!626463 () Bool)

(assert (=> bm!626463 (= call!626467 (isEmpty!38666 s!14361))))

(declare-fun b!6881150 () Bool)

(assert (=> b!6881150 (= e!4146715 e!4146717)))

(assert (=> b!6881150 (= c!1280119 (is-Star!16762 lt!2459697))))

(declare-fun b!6881151 () Bool)

(declare-fun e!4146720 () Bool)

(assert (=> b!6881151 (= e!4146721 e!4146720)))

(declare-fun res!2805073 () Bool)

(assert (=> b!6881151 (= res!2805073 (not (is-EmptyLang!16762 lt!2459697)))))

(assert (=> b!6881151 (=> (not res!2805073) (not e!4146720))))

(declare-fun b!6881152 () Bool)

(assert (=> b!6881152 (= e!4146716 (matchRSpec!3825 (regTwo!34037 lt!2459697) s!14361))))

(declare-fun b!6881153 () Bool)

(declare-fun c!1280118 () Bool)

(assert (=> b!6881153 (= c!1280118 (is-ElementMatch!16762 lt!2459697))))

(assert (=> b!6881153 (= e!4146720 e!4146718)))

(assert (= (and d!2160041 c!1280121) b!6881144))

(assert (= (and d!2160041 (not c!1280121)) b!6881151))

(assert (= (and b!6881151 res!2805073) b!6881153))

(assert (= (and b!6881153 c!1280118) b!6881149))

(assert (= (and b!6881153 (not c!1280118)) b!6881143))

(assert (= (and b!6881143 c!1280120) b!6881146))

(assert (= (and b!6881143 (not c!1280120)) b!6881150))

(assert (= (and b!6881146 (not res!2805074)) b!6881152))

(assert (= (and b!6881150 c!1280119) b!6881145))

(assert (= (and b!6881150 (not c!1280119)) b!6881148))

(assert (= (and b!6881145 (not res!2805072)) b!6881147))

(assert (= (or b!6881147 b!6881148) bm!626462))

(assert (= (or b!6881144 b!6881145) bm!626463))

(declare-fun m!7606412 () Bool)

(assert (=> b!6881146 m!7606412))

(declare-fun m!7606414 () Bool)

(assert (=> bm!626462 m!7606414))

(assert (=> bm!626463 m!7606362))

(declare-fun m!7606416 () Bool)

(assert (=> b!6881152 m!7606416))

(assert (=> b!6880870 d!2160041))

(declare-fun b!6881154 () Bool)

(declare-fun e!4146724 () Bool)

(declare-fun lt!2459736 () Bool)

(assert (=> b!6881154 (= e!4146724 (not lt!2459736))))

(declare-fun b!6881155 () Bool)

(declare-fun res!2805081 () Bool)

(declare-fun e!4146726 () Bool)

(assert (=> b!6881155 (=> (not res!2805081) (not e!4146726))))

(assert (=> b!6881155 (= res!2805081 (isEmpty!38666 (tail!12858 s!14361)))))

(declare-fun b!6881156 () Bool)

(assert (=> b!6881156 (= e!4146726 (= (head!13806 s!14361) (c!1280072 lt!2459696)))))

(declare-fun b!6881157 () Bool)

(declare-fun res!2805077 () Bool)

(declare-fun e!4146728 () Bool)

(assert (=> b!6881157 (=> res!2805077 e!4146728)))

(assert (=> b!6881157 (= res!2805077 (not (isEmpty!38666 (tail!12858 s!14361))))))

(declare-fun b!6881159 () Bool)

(declare-fun e!4146727 () Bool)

(assert (=> b!6881159 (= e!4146727 e!4146724)))

(declare-fun c!1280123 () Bool)

(assert (=> b!6881159 (= c!1280123 (is-EmptyLang!16762 lt!2459696))))

(declare-fun b!6881160 () Bool)

(declare-fun e!4146725 () Bool)

(assert (=> b!6881160 (= e!4146725 (nullable!6673 lt!2459696))))

(declare-fun b!6881161 () Bool)

(declare-fun res!2805079 () Bool)

(assert (=> b!6881161 (=> (not res!2805079) (not e!4146726))))

(declare-fun call!626469 () Bool)

(assert (=> b!6881161 (= res!2805079 (not call!626469))))

(declare-fun b!6881162 () Bool)

(declare-fun e!4146722 () Bool)

(declare-fun e!4146723 () Bool)

(assert (=> b!6881162 (= e!4146722 e!4146723)))

(declare-fun res!2805080 () Bool)

(assert (=> b!6881162 (=> (not res!2805080) (not e!4146723))))

(assert (=> b!6881162 (= res!2805080 (not lt!2459736))))

(declare-fun b!6881163 () Bool)

(assert (=> b!6881163 (= e!4146725 (matchR!8907 (derivativeStep!5353 lt!2459696 (head!13806 s!14361)) (tail!12858 s!14361)))))

(declare-fun b!6881164 () Bool)

(assert (=> b!6881164 (= e!4146723 e!4146728)))

(declare-fun res!2805075 () Bool)

(assert (=> b!6881164 (=> res!2805075 e!4146728)))

(assert (=> b!6881164 (= res!2805075 call!626469)))

(declare-fun bm!626464 () Bool)

(assert (=> bm!626464 (= call!626469 (isEmpty!38666 s!14361))))

(declare-fun b!6881165 () Bool)

(assert (=> b!6881165 (= e!4146728 (not (= (head!13806 s!14361) (c!1280072 lt!2459696))))))

(declare-fun b!6881166 () Bool)

(declare-fun res!2805078 () Bool)

(assert (=> b!6881166 (=> res!2805078 e!4146722)))

(assert (=> b!6881166 (= res!2805078 e!4146726)))

(declare-fun res!2805076 () Bool)

(assert (=> b!6881166 (=> (not res!2805076) (not e!4146726))))

(assert (=> b!6881166 (= res!2805076 lt!2459736)))

(declare-fun b!6881167 () Bool)

(assert (=> b!6881167 (= e!4146727 (= lt!2459736 call!626469))))

(declare-fun b!6881158 () Bool)

(declare-fun res!2805082 () Bool)

(assert (=> b!6881158 (=> res!2805082 e!4146722)))

(assert (=> b!6881158 (= res!2805082 (not (is-ElementMatch!16762 lt!2459696)))))

(assert (=> b!6881158 (= e!4146724 e!4146722)))

(declare-fun d!2160049 () Bool)

(assert (=> d!2160049 e!4146727))

(declare-fun c!1280122 () Bool)

(assert (=> d!2160049 (= c!1280122 (is-EmptyExpr!16762 lt!2459696))))

(assert (=> d!2160049 (= lt!2459736 e!4146725)))

(declare-fun c!1280124 () Bool)

(assert (=> d!2160049 (= c!1280124 (isEmpty!38666 s!14361))))

(assert (=> d!2160049 (validRegex!8470 lt!2459696)))

(assert (=> d!2160049 (= (matchR!8907 lt!2459696 s!14361) lt!2459736)))

(assert (= (and d!2160049 c!1280124) b!6881160))

(assert (= (and d!2160049 (not c!1280124)) b!6881163))

(assert (= (and d!2160049 c!1280122) b!6881167))

(assert (= (and d!2160049 (not c!1280122)) b!6881159))

(assert (= (and b!6881159 c!1280123) b!6881154))

(assert (= (and b!6881159 (not c!1280123)) b!6881158))

(assert (= (and b!6881158 (not res!2805082)) b!6881166))

(assert (= (and b!6881166 res!2805076) b!6881161))

(assert (= (and b!6881161 res!2805079) b!6881155))

(assert (= (and b!6881155 res!2805081) b!6881156))

(assert (= (and b!6881166 (not res!2805078)) b!6881162))

(assert (= (and b!6881162 res!2805080) b!6881164))

(assert (= (and b!6881164 (not res!2805075)) b!6881157))

(assert (= (and b!6881157 (not res!2805077)) b!6881165))

(assert (= (or b!6881167 b!6881161 b!6881164) bm!626464))

(assert (=> b!6881163 m!7606390))

(assert (=> b!6881163 m!7606390))

(declare-fun m!7606418 () Bool)

(assert (=> b!6881163 m!7606418))

(assert (=> b!6881163 m!7606394))

(assert (=> b!6881163 m!7606418))

(assert (=> b!6881163 m!7606394))

(declare-fun m!7606420 () Bool)

(assert (=> b!6881163 m!7606420))

(declare-fun m!7606422 () Bool)

(assert (=> b!6881160 m!7606422))

(assert (=> b!6881156 m!7606390))

(assert (=> b!6881157 m!7606394))

(assert (=> b!6881157 m!7606394))

(assert (=> b!6881157 m!7606400))

(assert (=> b!6881165 m!7606390))

(assert (=> bm!626464 m!7606362))

(assert (=> d!2160049 m!7606362))

(assert (=> d!2160049 m!7606342))

(assert (=> b!6881155 m!7606394))

(assert (=> b!6881155 m!7606394))

(assert (=> b!6881155 m!7606400))

(assert (=> b!6880870 d!2160049))

(declare-fun b!6881168 () Bool)

(declare-fun e!4146734 () Bool)

(declare-fun e!4146731 () Bool)

(assert (=> b!6881168 (= e!4146734 e!4146731)))

(declare-fun res!2805085 () Bool)

(assert (=> b!6881168 (=> (not res!2805085) (not e!4146731))))

(declare-fun call!626472 () Bool)

(assert (=> b!6881168 (= res!2805085 call!626472)))

(declare-fun b!6881169 () Bool)

(declare-fun e!4146733 () Bool)

(declare-fun e!4146729 () Bool)

(assert (=> b!6881169 (= e!4146733 e!4146729)))

(declare-fun c!1280126 () Bool)

(assert (=> b!6881169 (= c!1280126 (is-Union!16762 r3!135))))

(declare-fun d!2160051 () Bool)

(declare-fun res!2805087 () Bool)

(declare-fun e!4146732 () Bool)

(assert (=> d!2160051 (=> res!2805087 e!4146732)))

(assert (=> d!2160051 (= res!2805087 (is-ElementMatch!16762 r3!135))))

(assert (=> d!2160051 (= (validRegex!8470 r3!135) e!4146732)))

(declare-fun b!6881170 () Bool)

(declare-fun res!2805083 () Bool)

(declare-fun e!4146730 () Bool)

(assert (=> b!6881170 (=> (not res!2805083) (not e!4146730))))

(declare-fun call!626470 () Bool)

(assert (=> b!6881170 (= res!2805083 call!626470)))

(assert (=> b!6881170 (= e!4146729 e!4146730)))

(declare-fun bm!626465 () Bool)

(assert (=> bm!626465 (= call!626472 (validRegex!8470 (ite c!1280126 (regTwo!34037 r3!135) (regOne!34036 r3!135))))))

(declare-fun b!6881171 () Bool)

(declare-fun e!4146735 () Bool)

(assert (=> b!6881171 (= e!4146733 e!4146735)))

(declare-fun res!2805086 () Bool)

(assert (=> b!6881171 (= res!2805086 (not (nullable!6673 (reg!17091 r3!135))))))

(assert (=> b!6881171 (=> (not res!2805086) (not e!4146735))))

(declare-fun b!6881172 () Bool)

(assert (=> b!6881172 (= e!4146730 call!626472)))

(declare-fun b!6881173 () Bool)

(assert (=> b!6881173 (= e!4146732 e!4146733)))

(declare-fun c!1280125 () Bool)

(assert (=> b!6881173 (= c!1280125 (is-Star!16762 r3!135))))

(declare-fun b!6881174 () Bool)

(declare-fun call!626471 () Bool)

(assert (=> b!6881174 (= e!4146735 call!626471)))

(declare-fun bm!626466 () Bool)

(assert (=> bm!626466 (= call!626471 (validRegex!8470 (ite c!1280125 (reg!17091 r3!135) (ite c!1280126 (regOne!34037 r3!135) (regTwo!34036 r3!135)))))))

(declare-fun b!6881175 () Bool)

(assert (=> b!6881175 (= e!4146731 call!626470)))

(declare-fun bm!626467 () Bool)

(assert (=> bm!626467 (= call!626470 call!626471)))

(declare-fun b!6881176 () Bool)

(declare-fun res!2805084 () Bool)

(assert (=> b!6881176 (=> res!2805084 e!4146734)))

(assert (=> b!6881176 (= res!2805084 (not (is-Concat!25607 r3!135)))))

(assert (=> b!6881176 (= e!4146729 e!4146734)))

(assert (= (and d!2160051 (not res!2805087)) b!6881173))

(assert (= (and b!6881173 c!1280125) b!6881171))

(assert (= (and b!6881173 (not c!1280125)) b!6881169))

(assert (= (and b!6881171 res!2805086) b!6881174))

(assert (= (and b!6881169 c!1280126) b!6881170))

(assert (= (and b!6881169 (not c!1280126)) b!6881176))

(assert (= (and b!6881170 res!2805083) b!6881172))

(assert (= (and b!6881176 (not res!2805084)) b!6881168))

(assert (= (and b!6881168 res!2805085) b!6881175))

(assert (= (or b!6881170 b!6881175) bm!626467))

(assert (= (or b!6881172 b!6881168) bm!626465))

(assert (= (or b!6881174 bm!626467) bm!626466))

(declare-fun m!7606424 () Bool)

(assert (=> bm!626465 m!7606424))

(declare-fun m!7606426 () Bool)

(assert (=> b!6881171 m!7606426))

(declare-fun m!7606428 () Bool)

(assert (=> bm!626466 m!7606428))

(assert (=> b!6880876 d!2160051))

(declare-fun d!2160053 () Bool)

(declare-fun e!4146748 () Bool)

(assert (=> d!2160053 e!4146748))

(declare-fun res!2805102 () Bool)

(assert (=> d!2160053 (=> res!2805102 e!4146748)))

(declare-fun e!4146749 () Bool)

(assert (=> d!2160053 (= res!2805102 e!4146749)))

(declare-fun res!2805106 () Bool)

(assert (=> d!2160053 (=> (not res!2805106) (not e!4146749))))

(declare-fun lt!2459745 () Option!16547)

(assert (=> d!2160053 (= res!2805106 (isDefined!13250 lt!2459745))))

(declare-fun e!4146752 () Option!16547)

(assert (=> d!2160053 (= lt!2459745 e!4146752)))

(declare-fun c!1280131 () Bool)

(declare-fun e!4146751 () Bool)

(assert (=> d!2160053 (= c!1280131 e!4146751)))

(declare-fun res!2805104 () Bool)

(assert (=> d!2160053 (=> (not res!2805104) (not e!4146751))))

(assert (=> d!2160053 (= res!2805104 (matchR!8907 lt!2459698 Nil!66395))))

(assert (=> d!2160053 (validRegex!8470 lt!2459698)))

(assert (=> d!2160053 (= (findConcatSeparation!2961 lt!2459698 r3!135 Nil!66395 s!14361 s!14361) lt!2459745)))

(declare-fun b!6881199 () Bool)

(assert (=> b!6881199 (= e!4146751 (matchR!8907 r3!135 s!14361))))

(declare-fun b!6881200 () Bool)

(assert (=> b!6881200 (= e!4146748 (not (isDefined!13250 lt!2459745)))))

(declare-fun b!6881201 () Bool)

(declare-fun res!2805103 () Bool)

(assert (=> b!6881201 (=> (not res!2805103) (not e!4146749))))

(declare-fun get!23107 (Option!16547) tuple2!67270)

(assert (=> b!6881201 (= res!2805103 (matchR!8907 lt!2459698 (_1!36938 (get!23107 lt!2459745))))))

(declare-fun b!6881202 () Bool)

(declare-fun res!2805105 () Bool)

(assert (=> b!6881202 (=> (not res!2805105) (not e!4146749))))

(assert (=> b!6881202 (= res!2805105 (matchR!8907 r3!135 (_2!36938 (get!23107 lt!2459745))))))

(declare-fun b!6881203 () Bool)

(declare-fun e!4146750 () Option!16547)

(assert (=> b!6881203 (= e!4146752 e!4146750)))

(declare-fun c!1280132 () Bool)

(assert (=> b!6881203 (= c!1280132 (is-Nil!66395 s!14361))))

(declare-fun b!6881204 () Bool)

(declare-fun lt!2459746 () Unit!160244)

(declare-fun lt!2459747 () Unit!160244)

(assert (=> b!6881204 (= lt!2459746 lt!2459747)))

(assert (=> b!6881204 (= (++!14856 (++!14856 Nil!66395 (Cons!66395 (h!72843 s!14361) Nil!66395)) (t!380262 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2765 (List!66519 C!33794 List!66519 List!66519) Unit!160244)

(assert (=> b!6881204 (= lt!2459747 (lemmaMoveElementToOtherListKeepsConcatEq!2765 Nil!66395 (h!72843 s!14361) (t!380262 s!14361) s!14361))))

(assert (=> b!6881204 (= e!4146750 (findConcatSeparation!2961 lt!2459698 r3!135 (++!14856 Nil!66395 (Cons!66395 (h!72843 s!14361) Nil!66395)) (t!380262 s!14361) s!14361))))

(declare-fun b!6881205 () Bool)

(assert (=> b!6881205 (= e!4146752 (Some!16546 (tuple2!67271 Nil!66395 s!14361)))))

(declare-fun b!6881206 () Bool)

(assert (=> b!6881206 (= e!4146750 None!16546)))

(declare-fun b!6881207 () Bool)

(assert (=> b!6881207 (= e!4146749 (= (++!14856 (_1!36938 (get!23107 lt!2459745)) (_2!36938 (get!23107 lt!2459745))) s!14361))))

(assert (= (and d!2160053 res!2805104) b!6881199))

(assert (= (and d!2160053 c!1280131) b!6881205))

(assert (= (and d!2160053 (not c!1280131)) b!6881203))

(assert (= (and b!6881203 c!1280132) b!6881206))

(assert (= (and b!6881203 (not c!1280132)) b!6881204))

(assert (= (and d!2160053 res!2805106) b!6881201))

(assert (= (and b!6881201 res!2805103) b!6881202))

(assert (= (and b!6881202 res!2805105) b!6881207))

(assert (= (and d!2160053 (not res!2805102)) b!6881200))

(declare-fun m!7606430 () Bool)

(assert (=> b!6881204 m!7606430))

(assert (=> b!6881204 m!7606430))

(declare-fun m!7606432 () Bool)

(assert (=> b!6881204 m!7606432))

(declare-fun m!7606434 () Bool)

(assert (=> b!6881204 m!7606434))

(assert (=> b!6881204 m!7606430))

(declare-fun m!7606436 () Bool)

(assert (=> b!6881204 m!7606436))

(declare-fun m!7606438 () Bool)

(assert (=> b!6881202 m!7606438))

(declare-fun m!7606440 () Bool)

(assert (=> b!6881202 m!7606440))

(assert (=> b!6881201 m!7606438))

(declare-fun m!7606442 () Bool)

(assert (=> b!6881201 m!7606442))

(declare-fun m!7606444 () Bool)

(assert (=> b!6881200 m!7606444))

(assert (=> b!6881207 m!7606438))

(declare-fun m!7606446 () Bool)

(assert (=> b!6881207 m!7606446))

(assert (=> d!2160053 m!7606444))

(declare-fun m!7606448 () Bool)

(assert (=> d!2160053 m!7606448))

(assert (=> d!2160053 m!7606272))

(declare-fun m!7606450 () Bool)

(assert (=> b!6881199 m!7606450))

(assert (=> b!6880877 d!2160053))

(declare-fun bs!1838078 () Bool)

(declare-fun d!2160055 () Bool)

(assert (= bs!1838078 (and d!2160055 b!6880877)))

(declare-fun lambda!389491 () Int)

(assert (=> bs!1838078 (not (= lambda!389491 lambda!389466))))

(declare-fun bs!1838079 () Bool)

(assert (= bs!1838079 (and d!2160055 b!6881148)))

(assert (=> bs!1838079 (not (= lambda!389491 lambda!389482))))

(declare-fun bs!1838080 () Bool)

(assert (= bs!1838080 (and d!2160055 b!6881058)))

(assert (=> bs!1838080 (not (= lambda!389491 lambda!389479))))

(assert (=> bs!1838078 (= lambda!389491 lambda!389465)))

(declare-fun bs!1838082 () Bool)

(assert (= bs!1838082 (and d!2160055 b!6881059)))

(assert (=> bs!1838082 (not (= lambda!389491 lambda!389480))))

(declare-fun bs!1838083 () Bool)

(assert (= bs!1838083 (and d!2160055 b!6881147)))

(assert (=> bs!1838083 (not (= lambda!389491 lambda!389481))))

(assert (=> d!2160055 true))

(assert (=> d!2160055 true))

(assert (=> d!2160055 true))

(assert (=> d!2160055 (= (isDefined!13250 (findConcatSeparation!2961 lt!2459698 r3!135 Nil!66395 s!14361 s!14361)) (Exists!3774 lambda!389491))))

(declare-fun lt!2459751 () Unit!160244)

(declare-fun choose!51247 (Regex!16762 Regex!16762 List!66519) Unit!160244)

(assert (=> d!2160055 (= lt!2459751 (choose!51247 lt!2459698 r3!135 s!14361))))

(assert (=> d!2160055 (validRegex!8470 lt!2459698)))

(assert (=> d!2160055 (= (lemmaFindConcatSeparationEquivalentToExists!2725 lt!2459698 r3!135 s!14361) lt!2459751)))

(declare-fun bs!1838084 () Bool)

(assert (= bs!1838084 d!2160055))

(assert (=> bs!1838084 m!7606272))

(assert (=> bs!1838084 m!7606262))

(assert (=> bs!1838084 m!7606268))

(declare-fun m!7606454 () Bool)

(assert (=> bs!1838084 m!7606454))

(declare-fun m!7606456 () Bool)

(assert (=> bs!1838084 m!7606456))

(assert (=> bs!1838084 m!7606262))

(assert (=> b!6880877 d!2160055))

(declare-fun d!2160057 () Bool)

(declare-fun choose!51248 (Int) Bool)

(assert (=> d!2160057 (= (Exists!3774 lambda!389465) (choose!51248 lambda!389465))))

(declare-fun bs!1838085 () Bool)

(assert (= bs!1838085 d!2160057))

(declare-fun m!7606462 () Bool)

(assert (=> bs!1838085 m!7606462))

(assert (=> b!6880877 d!2160057))

(declare-fun bs!1838086 () Bool)

(declare-fun d!2160061 () Bool)

(assert (= bs!1838086 (and d!2160061 d!2160055)))

(declare-fun lambda!389496 () Int)

(assert (=> bs!1838086 (= lambda!389496 lambda!389491)))

(declare-fun bs!1838087 () Bool)

(assert (= bs!1838087 (and d!2160061 b!6880877)))

(assert (=> bs!1838087 (not (= lambda!389496 lambda!389466))))

(declare-fun bs!1838088 () Bool)

(assert (= bs!1838088 (and d!2160061 b!6881148)))

(assert (=> bs!1838088 (not (= lambda!389496 lambda!389482))))

(declare-fun bs!1838089 () Bool)

(assert (= bs!1838089 (and d!2160061 b!6881058)))

(assert (=> bs!1838089 (not (= lambda!389496 lambda!389479))))

(assert (=> bs!1838087 (= lambda!389496 lambda!389465)))

(declare-fun bs!1838090 () Bool)

(assert (= bs!1838090 (and d!2160061 b!6881059)))

(assert (=> bs!1838090 (not (= lambda!389496 lambda!389480))))

(declare-fun bs!1838091 () Bool)

(assert (= bs!1838091 (and d!2160061 b!6881147)))

(assert (=> bs!1838091 (not (= lambda!389496 lambda!389481))))

(assert (=> d!2160061 true))

(assert (=> d!2160061 true))

(assert (=> d!2160061 true))

(declare-fun lambda!389497 () Int)

(assert (=> bs!1838086 (not (= lambda!389497 lambda!389491))))

(assert (=> bs!1838087 (= lambda!389497 lambda!389466)))

(assert (=> bs!1838088 (= (and (= lt!2459698 (regOne!34036 lt!2459697)) (= r3!135 (regTwo!34036 lt!2459697))) (= lambda!389497 lambda!389482))))

(assert (=> bs!1838087 (not (= lambda!389497 lambda!389465))))

(assert (=> bs!1838090 (= (and (= lt!2459698 (regOne!34036 lt!2459696)) (= r3!135 (regTwo!34036 lt!2459696))) (= lambda!389497 lambda!389480))))

(assert (=> bs!1838091 (not (= lambda!389497 lambda!389481))))

(declare-fun bs!1838092 () Bool)

(assert (= bs!1838092 d!2160061))

(assert (=> bs!1838092 (not (= lambda!389497 lambda!389496))))

(assert (=> bs!1838089 (not (= lambda!389497 lambda!389479))))

(assert (=> d!2160061 true))

(assert (=> d!2160061 true))

(assert (=> d!2160061 true))

(assert (=> d!2160061 (= (Exists!3774 lambda!389496) (Exists!3774 lambda!389497))))

(declare-fun lt!2459754 () Unit!160244)

(declare-fun choose!51249 (Regex!16762 Regex!16762 List!66519) Unit!160244)

(assert (=> d!2160061 (= lt!2459754 (choose!51249 lt!2459698 r3!135 s!14361))))

(assert (=> d!2160061 (validRegex!8470 lt!2459698)))

(assert (=> d!2160061 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2253 lt!2459698 r3!135 s!14361) lt!2459754)))

(declare-fun m!7606464 () Bool)

(assert (=> bs!1838092 m!7606464))

(declare-fun m!7606466 () Bool)

(assert (=> bs!1838092 m!7606466))

(declare-fun m!7606468 () Bool)

(assert (=> bs!1838092 m!7606468))

(assert (=> bs!1838092 m!7606272))

(assert (=> b!6880877 d!2160061))

(declare-fun d!2160063 () Bool)

(declare-fun isEmpty!38667 (Option!16547) Bool)

(assert (=> d!2160063 (= (isDefined!13250 (findConcatSeparation!2961 lt!2459698 r3!135 Nil!66395 s!14361 s!14361)) (not (isEmpty!38667 (findConcatSeparation!2961 lt!2459698 r3!135 Nil!66395 s!14361 s!14361))))))

(declare-fun bs!1838093 () Bool)

(assert (= bs!1838093 d!2160063))

(assert (=> bs!1838093 m!7606262))

(declare-fun m!7606470 () Bool)

(assert (=> bs!1838093 m!7606470))

(assert (=> b!6880877 d!2160063))

(declare-fun b!6881228 () Bool)

(declare-fun e!4146768 () Bool)

(declare-fun e!4146765 () Bool)

(assert (=> b!6881228 (= e!4146768 e!4146765)))

(declare-fun res!2805129 () Bool)

(assert (=> b!6881228 (=> (not res!2805129) (not e!4146765))))

(declare-fun call!626475 () Bool)

(assert (=> b!6881228 (= res!2805129 call!626475)))

(declare-fun b!6881229 () Bool)

(declare-fun e!4146767 () Bool)

(declare-fun e!4146763 () Bool)

(assert (=> b!6881229 (= e!4146767 e!4146763)))

(declare-fun c!1280134 () Bool)

(assert (=> b!6881229 (= c!1280134 (is-Union!16762 lt!2459698))))

(declare-fun d!2160065 () Bool)

(declare-fun res!2805131 () Bool)

(declare-fun e!4146766 () Bool)

(assert (=> d!2160065 (=> res!2805131 e!4146766)))

(assert (=> d!2160065 (= res!2805131 (is-ElementMatch!16762 lt!2459698))))

(assert (=> d!2160065 (= (validRegex!8470 lt!2459698) e!4146766)))

(declare-fun b!6881230 () Bool)

(declare-fun res!2805127 () Bool)

(declare-fun e!4146764 () Bool)

(assert (=> b!6881230 (=> (not res!2805127) (not e!4146764))))

(declare-fun call!626473 () Bool)

(assert (=> b!6881230 (= res!2805127 call!626473)))

(assert (=> b!6881230 (= e!4146763 e!4146764)))

(declare-fun bm!626468 () Bool)

(assert (=> bm!626468 (= call!626475 (validRegex!8470 (ite c!1280134 (regTwo!34037 lt!2459698) (regOne!34036 lt!2459698))))))

(declare-fun b!6881231 () Bool)

(declare-fun e!4146769 () Bool)

(assert (=> b!6881231 (= e!4146767 e!4146769)))

(declare-fun res!2805130 () Bool)

(assert (=> b!6881231 (= res!2805130 (not (nullable!6673 (reg!17091 lt!2459698))))))

(assert (=> b!6881231 (=> (not res!2805130) (not e!4146769))))

(declare-fun b!6881232 () Bool)

(assert (=> b!6881232 (= e!4146764 call!626475)))

(declare-fun b!6881233 () Bool)

(assert (=> b!6881233 (= e!4146766 e!4146767)))

(declare-fun c!1280133 () Bool)

(assert (=> b!6881233 (= c!1280133 (is-Star!16762 lt!2459698))))

(declare-fun b!6881234 () Bool)

(declare-fun call!626474 () Bool)

(assert (=> b!6881234 (= e!4146769 call!626474)))

(declare-fun bm!626469 () Bool)

(assert (=> bm!626469 (= call!626474 (validRegex!8470 (ite c!1280133 (reg!17091 lt!2459698) (ite c!1280134 (regOne!34037 lt!2459698) (regTwo!34036 lt!2459698)))))))

(declare-fun b!6881235 () Bool)

(assert (=> b!6881235 (= e!4146765 call!626473)))

(declare-fun bm!626470 () Bool)

(assert (=> bm!626470 (= call!626473 call!626474)))

(declare-fun b!6881236 () Bool)

(declare-fun res!2805128 () Bool)

(assert (=> b!6881236 (=> res!2805128 e!4146768)))

(assert (=> b!6881236 (= res!2805128 (not (is-Concat!25607 lt!2459698)))))

(assert (=> b!6881236 (= e!4146763 e!4146768)))

(assert (= (and d!2160065 (not res!2805131)) b!6881233))

(assert (= (and b!6881233 c!1280133) b!6881231))

(assert (= (and b!6881233 (not c!1280133)) b!6881229))

(assert (= (and b!6881231 res!2805130) b!6881234))

(assert (= (and b!6881229 c!1280134) b!6881230))

(assert (= (and b!6881229 (not c!1280134)) b!6881236))

(assert (= (and b!6881230 res!2805127) b!6881232))

(assert (= (and b!6881236 (not res!2805128)) b!6881228))

(assert (= (and b!6881228 res!2805129) b!6881235))

(assert (= (or b!6881230 b!6881235) bm!626470))

(assert (= (or b!6881232 b!6881228) bm!626468))

(assert (= (or b!6881234 bm!626470) bm!626469))

(declare-fun m!7606472 () Bool)

(assert (=> bm!626468 m!7606472))

(declare-fun m!7606474 () Bool)

(assert (=> b!6881231 m!7606474))

(declare-fun m!7606476 () Bool)

(assert (=> bm!626469 m!7606476))

(assert (=> b!6880877 d!2160065))

(declare-fun d!2160067 () Bool)

(assert (=> d!2160067 (= (Exists!3774 lambda!389466) (choose!51248 lambda!389466))))

(declare-fun bs!1838094 () Bool)

(assert (= bs!1838094 d!2160067))

(declare-fun m!7606478 () Bool)

(assert (=> bs!1838094 m!7606478))

(assert (=> b!6880877 d!2160067))

(declare-fun b!6881248 () Bool)

(declare-fun e!4146774 () Bool)

(declare-fun lt!2459760 () List!66519)

(assert (=> b!6881248 (= e!4146774 (or (not (= s!14361 Nil!66395)) (= lt!2459760 Nil!66395)))))

(declare-fun b!6881247 () Bool)

(declare-fun res!2805137 () Bool)

(assert (=> b!6881247 (=> (not res!2805137) (not e!4146774))))

(declare-fun size!40738 (List!66519) Int)

(assert (=> b!6881247 (= res!2805137 (= (size!40738 lt!2459760) (+ (size!40738 Nil!66395) (size!40738 s!14361))))))

(declare-fun d!2160069 () Bool)

(assert (=> d!2160069 e!4146774))

(declare-fun res!2805136 () Bool)

(assert (=> d!2160069 (=> (not res!2805136) (not e!4146774))))

(declare-fun content!13041 (List!66519) (Set C!33794))

(assert (=> d!2160069 (= res!2805136 (= (content!13041 lt!2459760) (set.union (content!13041 Nil!66395) (content!13041 s!14361))))))

(declare-fun e!4146775 () List!66519)

(assert (=> d!2160069 (= lt!2459760 e!4146775)))

(declare-fun c!1280137 () Bool)

(assert (=> d!2160069 (= c!1280137 (is-Nil!66395 Nil!66395))))

(assert (=> d!2160069 (= (++!14856 Nil!66395 s!14361) lt!2459760)))

(declare-fun b!6881245 () Bool)

(assert (=> b!6881245 (= e!4146775 s!14361)))

(declare-fun b!6881246 () Bool)

(assert (=> b!6881246 (= e!4146775 (Cons!66395 (h!72843 Nil!66395) (++!14856 (t!380262 Nil!66395) s!14361)))))

(assert (= (and d!2160069 c!1280137) b!6881245))

(assert (= (and d!2160069 (not c!1280137)) b!6881246))

(assert (= (and d!2160069 res!2805136) b!6881247))

(assert (= (and b!6881247 res!2805137) b!6881248))

(declare-fun m!7606480 () Bool)

(assert (=> b!6881247 m!7606480))

(declare-fun m!7606482 () Bool)

(assert (=> b!6881247 m!7606482))

(declare-fun m!7606484 () Bool)

(assert (=> b!6881247 m!7606484))

(declare-fun m!7606486 () Bool)

(assert (=> d!2160069 m!7606486))

(declare-fun m!7606488 () Bool)

(assert (=> d!2160069 m!7606488))

(declare-fun m!7606490 () Bool)

(assert (=> d!2160069 m!7606490))

(declare-fun m!7606492 () Bool)

(assert (=> b!6881246 m!7606492))

(assert (=> b!6880866 d!2160069))

(declare-fun b!6881261 () Bool)

(declare-fun e!4146778 () Bool)

(declare-fun tp!1892341 () Bool)

(assert (=> b!6881261 (= e!4146778 tp!1892341)))

(declare-fun b!6881259 () Bool)

(assert (=> b!6881259 (= e!4146778 tp_is_empty!42749)))

(assert (=> b!6880867 (= tp!1892274 e!4146778)))

(declare-fun b!6881260 () Bool)

(declare-fun tp!1892338 () Bool)

(declare-fun tp!1892339 () Bool)

(assert (=> b!6881260 (= e!4146778 (and tp!1892338 tp!1892339))))

(declare-fun b!6881262 () Bool)

(declare-fun tp!1892342 () Bool)

(declare-fun tp!1892340 () Bool)

(assert (=> b!6881262 (= e!4146778 (and tp!1892342 tp!1892340))))

(assert (= (and b!6880867 (is-ElementMatch!16762 (regOne!34036 r3!135))) b!6881259))

(assert (= (and b!6880867 (is-Concat!25607 (regOne!34036 r3!135))) b!6881260))

(assert (= (and b!6880867 (is-Star!16762 (regOne!34036 r3!135))) b!6881261))

(assert (= (and b!6880867 (is-Union!16762 (regOne!34036 r3!135))) b!6881262))

(declare-fun b!6881265 () Bool)

(declare-fun e!4146779 () Bool)

(declare-fun tp!1892346 () Bool)

(assert (=> b!6881265 (= e!4146779 tp!1892346)))

(declare-fun b!6881263 () Bool)

(assert (=> b!6881263 (= e!4146779 tp_is_empty!42749)))

(assert (=> b!6880867 (= tp!1892279 e!4146779)))

(declare-fun b!6881264 () Bool)

(declare-fun tp!1892343 () Bool)

(declare-fun tp!1892344 () Bool)

(assert (=> b!6881264 (= e!4146779 (and tp!1892343 tp!1892344))))

(declare-fun b!6881266 () Bool)

(declare-fun tp!1892347 () Bool)

(declare-fun tp!1892345 () Bool)

(assert (=> b!6881266 (= e!4146779 (and tp!1892347 tp!1892345))))

(assert (= (and b!6880867 (is-ElementMatch!16762 (regTwo!34036 r3!135))) b!6881263))

(assert (= (and b!6880867 (is-Concat!25607 (regTwo!34036 r3!135))) b!6881264))

(assert (= (and b!6880867 (is-Star!16762 (regTwo!34036 r3!135))) b!6881265))

(assert (= (and b!6880867 (is-Union!16762 (regTwo!34036 r3!135))) b!6881266))

(declare-fun b!6881269 () Bool)

(declare-fun e!4146780 () Bool)

(declare-fun tp!1892351 () Bool)

(assert (=> b!6881269 (= e!4146780 tp!1892351)))

(declare-fun b!6881267 () Bool)

(assert (=> b!6881267 (= e!4146780 tp_is_empty!42749)))

(assert (=> b!6880872 (= tp!1892275 e!4146780)))

(declare-fun b!6881268 () Bool)

(declare-fun tp!1892348 () Bool)

(declare-fun tp!1892349 () Bool)

(assert (=> b!6881268 (= e!4146780 (and tp!1892348 tp!1892349))))

(declare-fun b!6881270 () Bool)

(declare-fun tp!1892352 () Bool)

(declare-fun tp!1892350 () Bool)

(assert (=> b!6881270 (= e!4146780 (and tp!1892352 tp!1892350))))

(assert (= (and b!6880872 (is-ElementMatch!16762 (reg!17091 r3!135))) b!6881267))

(assert (= (and b!6880872 (is-Concat!25607 (reg!17091 r3!135))) b!6881268))

(assert (= (and b!6880872 (is-Star!16762 (reg!17091 r3!135))) b!6881269))

(assert (= (and b!6880872 (is-Union!16762 (reg!17091 r3!135))) b!6881270))

(declare-fun b!6881273 () Bool)

(declare-fun e!4146781 () Bool)

(declare-fun tp!1892356 () Bool)

(assert (=> b!6881273 (= e!4146781 tp!1892356)))

(declare-fun b!6881271 () Bool)

(assert (=> b!6881271 (= e!4146781 tp_is_empty!42749)))

(assert (=> b!6880878 (= tp!1892273 e!4146781)))

(declare-fun b!6881272 () Bool)

(declare-fun tp!1892353 () Bool)

(declare-fun tp!1892354 () Bool)

(assert (=> b!6881272 (= e!4146781 (and tp!1892353 tp!1892354))))

(declare-fun b!6881274 () Bool)

(declare-fun tp!1892357 () Bool)

(declare-fun tp!1892355 () Bool)

(assert (=> b!6881274 (= e!4146781 (and tp!1892357 tp!1892355))))

(assert (= (and b!6880878 (is-ElementMatch!16762 (regOne!34036 r1!6342))) b!6881271))

(assert (= (and b!6880878 (is-Concat!25607 (regOne!34036 r1!6342))) b!6881272))

(assert (= (and b!6880878 (is-Star!16762 (regOne!34036 r1!6342))) b!6881273))

(assert (= (and b!6880878 (is-Union!16762 (regOne!34036 r1!6342))) b!6881274))

(declare-fun b!6881277 () Bool)

(declare-fun e!4146782 () Bool)

(declare-fun tp!1892361 () Bool)

(assert (=> b!6881277 (= e!4146782 tp!1892361)))

(declare-fun b!6881275 () Bool)

(assert (=> b!6881275 (= e!4146782 tp_is_empty!42749)))

(assert (=> b!6880878 (= tp!1892266 e!4146782)))

(declare-fun b!6881276 () Bool)

(declare-fun tp!1892358 () Bool)

(declare-fun tp!1892359 () Bool)

(assert (=> b!6881276 (= e!4146782 (and tp!1892358 tp!1892359))))

(declare-fun b!6881278 () Bool)

(declare-fun tp!1892362 () Bool)

(declare-fun tp!1892360 () Bool)

(assert (=> b!6881278 (= e!4146782 (and tp!1892362 tp!1892360))))

(assert (= (and b!6880878 (is-ElementMatch!16762 (regTwo!34036 r1!6342))) b!6881275))

(assert (= (and b!6880878 (is-Concat!25607 (regTwo!34036 r1!6342))) b!6881276))

(assert (= (and b!6880878 (is-Star!16762 (regTwo!34036 r1!6342))) b!6881277))

(assert (= (and b!6880878 (is-Union!16762 (regTwo!34036 r1!6342))) b!6881278))

(declare-fun b!6881283 () Bool)

(declare-fun e!4146785 () Bool)

(declare-fun tp!1892365 () Bool)

(assert (=> b!6881283 (= e!4146785 (and tp_is_empty!42749 tp!1892365))))

(assert (=> b!6880868 (= tp!1892272 e!4146785)))

(assert (= (and b!6880868 (is-Cons!66395 (t!380262 s!14361))) b!6881283))

(declare-fun b!6881286 () Bool)

(declare-fun e!4146786 () Bool)

(declare-fun tp!1892369 () Bool)

(assert (=> b!6881286 (= e!4146786 tp!1892369)))

(declare-fun b!6881284 () Bool)

(assert (=> b!6881284 (= e!4146786 tp_is_empty!42749)))

(assert (=> b!6880869 (= tp!1892269 e!4146786)))

(declare-fun b!6881285 () Bool)

(declare-fun tp!1892366 () Bool)

(declare-fun tp!1892367 () Bool)

(assert (=> b!6881285 (= e!4146786 (and tp!1892366 tp!1892367))))

(declare-fun b!6881287 () Bool)

(declare-fun tp!1892370 () Bool)

(declare-fun tp!1892368 () Bool)

(assert (=> b!6881287 (= e!4146786 (and tp!1892370 tp!1892368))))

(assert (= (and b!6880869 (is-ElementMatch!16762 (regOne!34037 r1!6342))) b!6881284))

(assert (= (and b!6880869 (is-Concat!25607 (regOne!34037 r1!6342))) b!6881285))

(assert (= (and b!6880869 (is-Star!16762 (regOne!34037 r1!6342))) b!6881286))

(assert (= (and b!6880869 (is-Union!16762 (regOne!34037 r1!6342))) b!6881287))

(declare-fun b!6881290 () Bool)

(declare-fun e!4146787 () Bool)

(declare-fun tp!1892374 () Bool)

(assert (=> b!6881290 (= e!4146787 tp!1892374)))

(declare-fun b!6881288 () Bool)

(assert (=> b!6881288 (= e!4146787 tp_is_empty!42749)))

(assert (=> b!6880869 (= tp!1892277 e!4146787)))

(declare-fun b!6881289 () Bool)

(declare-fun tp!1892371 () Bool)

(declare-fun tp!1892372 () Bool)

(assert (=> b!6881289 (= e!4146787 (and tp!1892371 tp!1892372))))

(declare-fun b!6881291 () Bool)

(declare-fun tp!1892375 () Bool)

(declare-fun tp!1892373 () Bool)

(assert (=> b!6881291 (= e!4146787 (and tp!1892375 tp!1892373))))

(assert (= (and b!6880869 (is-ElementMatch!16762 (regTwo!34037 r1!6342))) b!6881288))

(assert (= (and b!6880869 (is-Concat!25607 (regTwo!34037 r1!6342))) b!6881289))

(assert (= (and b!6880869 (is-Star!16762 (regTwo!34037 r1!6342))) b!6881290))

(assert (= (and b!6880869 (is-Union!16762 (regTwo!34037 r1!6342))) b!6881291))

(declare-fun b!6881294 () Bool)

(declare-fun e!4146788 () Bool)

(declare-fun tp!1892379 () Bool)

(assert (=> b!6881294 (= e!4146788 tp!1892379)))

(declare-fun b!6881292 () Bool)

(assert (=> b!6881292 (= e!4146788 tp_is_empty!42749)))

(assert (=> b!6880875 (= tp!1892267 e!4146788)))

(declare-fun b!6881293 () Bool)

(declare-fun tp!1892376 () Bool)

(declare-fun tp!1892377 () Bool)

(assert (=> b!6881293 (= e!4146788 (and tp!1892376 tp!1892377))))

(declare-fun b!6881295 () Bool)

(declare-fun tp!1892380 () Bool)

(declare-fun tp!1892378 () Bool)

(assert (=> b!6881295 (= e!4146788 (and tp!1892380 tp!1892378))))

(assert (= (and b!6880875 (is-ElementMatch!16762 (regOne!34037 r2!6280))) b!6881292))

(assert (= (and b!6880875 (is-Concat!25607 (regOne!34037 r2!6280))) b!6881293))

(assert (= (and b!6880875 (is-Star!16762 (regOne!34037 r2!6280))) b!6881294))

(assert (= (and b!6880875 (is-Union!16762 (regOne!34037 r2!6280))) b!6881295))

(declare-fun b!6881298 () Bool)

(declare-fun e!4146789 () Bool)

(declare-fun tp!1892384 () Bool)

(assert (=> b!6881298 (= e!4146789 tp!1892384)))

(declare-fun b!6881296 () Bool)

(assert (=> b!6881296 (= e!4146789 tp_is_empty!42749)))

(assert (=> b!6880875 (= tp!1892270 e!4146789)))

(declare-fun b!6881297 () Bool)

(declare-fun tp!1892381 () Bool)

(declare-fun tp!1892382 () Bool)

(assert (=> b!6881297 (= e!4146789 (and tp!1892381 tp!1892382))))

(declare-fun b!6881299 () Bool)

(declare-fun tp!1892385 () Bool)

(declare-fun tp!1892383 () Bool)

(assert (=> b!6881299 (= e!4146789 (and tp!1892385 tp!1892383))))

(assert (= (and b!6880875 (is-ElementMatch!16762 (regTwo!34037 r2!6280))) b!6881296))

(assert (= (and b!6880875 (is-Concat!25607 (regTwo!34037 r2!6280))) b!6881297))

(assert (= (and b!6880875 (is-Star!16762 (regTwo!34037 r2!6280))) b!6881298))

(assert (= (and b!6880875 (is-Union!16762 (regTwo!34037 r2!6280))) b!6881299))

(declare-fun b!6881302 () Bool)

(declare-fun e!4146790 () Bool)

(declare-fun tp!1892389 () Bool)

(assert (=> b!6881302 (= e!4146790 tp!1892389)))

(declare-fun b!6881300 () Bool)

(assert (=> b!6881300 (= e!4146790 tp_is_empty!42749)))

(assert (=> b!6880880 (= tp!1892276 e!4146790)))

(declare-fun b!6881301 () Bool)

(declare-fun tp!1892386 () Bool)

(declare-fun tp!1892387 () Bool)

(assert (=> b!6881301 (= e!4146790 (and tp!1892386 tp!1892387))))

(declare-fun b!6881303 () Bool)

(declare-fun tp!1892390 () Bool)

(declare-fun tp!1892388 () Bool)

(assert (=> b!6881303 (= e!4146790 (and tp!1892390 tp!1892388))))

(assert (= (and b!6880880 (is-ElementMatch!16762 (regOne!34036 r2!6280))) b!6881300))

(assert (= (and b!6880880 (is-Concat!25607 (regOne!34036 r2!6280))) b!6881301))

(assert (= (and b!6880880 (is-Star!16762 (regOne!34036 r2!6280))) b!6881302))

(assert (= (and b!6880880 (is-Union!16762 (regOne!34036 r2!6280))) b!6881303))

(declare-fun b!6881306 () Bool)

(declare-fun e!4146791 () Bool)

(declare-fun tp!1892394 () Bool)

(assert (=> b!6881306 (= e!4146791 tp!1892394)))

(declare-fun b!6881304 () Bool)

(assert (=> b!6881304 (= e!4146791 tp_is_empty!42749)))

(assert (=> b!6880880 (= tp!1892265 e!4146791)))

(declare-fun b!6881305 () Bool)

(declare-fun tp!1892391 () Bool)

(declare-fun tp!1892392 () Bool)

(assert (=> b!6881305 (= e!4146791 (and tp!1892391 tp!1892392))))

(declare-fun b!6881307 () Bool)

(declare-fun tp!1892395 () Bool)

(declare-fun tp!1892393 () Bool)

(assert (=> b!6881307 (= e!4146791 (and tp!1892395 tp!1892393))))

(assert (= (and b!6880880 (is-ElementMatch!16762 (regTwo!34036 r2!6280))) b!6881304))

(assert (= (and b!6880880 (is-Concat!25607 (regTwo!34036 r2!6280))) b!6881305))

(assert (= (and b!6880880 (is-Star!16762 (regTwo!34036 r2!6280))) b!6881306))

(assert (= (and b!6880880 (is-Union!16762 (regTwo!34036 r2!6280))) b!6881307))

(declare-fun b!6881310 () Bool)

(declare-fun e!4146792 () Bool)

(declare-fun tp!1892399 () Bool)

(assert (=> b!6881310 (= e!4146792 tp!1892399)))

(declare-fun b!6881308 () Bool)

(assert (=> b!6881308 (= e!4146792 tp_is_empty!42749)))

(assert (=> b!6880881 (= tp!1892268 e!4146792)))

(declare-fun b!6881309 () Bool)

(declare-fun tp!1892396 () Bool)

(declare-fun tp!1892397 () Bool)

(assert (=> b!6881309 (= e!4146792 (and tp!1892396 tp!1892397))))

(declare-fun b!6881311 () Bool)

(declare-fun tp!1892400 () Bool)

(declare-fun tp!1892398 () Bool)

(assert (=> b!6881311 (= e!4146792 (and tp!1892400 tp!1892398))))

(assert (= (and b!6880881 (is-ElementMatch!16762 (regOne!34037 r3!135))) b!6881308))

(assert (= (and b!6880881 (is-Concat!25607 (regOne!34037 r3!135))) b!6881309))

(assert (= (and b!6880881 (is-Star!16762 (regOne!34037 r3!135))) b!6881310))

(assert (= (and b!6880881 (is-Union!16762 (regOne!34037 r3!135))) b!6881311))

(declare-fun b!6881314 () Bool)

(declare-fun e!4146793 () Bool)

(declare-fun tp!1892404 () Bool)

(assert (=> b!6881314 (= e!4146793 tp!1892404)))

(declare-fun b!6881312 () Bool)

(assert (=> b!6881312 (= e!4146793 tp_is_empty!42749)))

(assert (=> b!6880881 (= tp!1892264 e!4146793)))

(declare-fun b!6881313 () Bool)

(declare-fun tp!1892401 () Bool)

(declare-fun tp!1892402 () Bool)

(assert (=> b!6881313 (= e!4146793 (and tp!1892401 tp!1892402))))

(declare-fun b!6881315 () Bool)

(declare-fun tp!1892405 () Bool)

(declare-fun tp!1892403 () Bool)

(assert (=> b!6881315 (= e!4146793 (and tp!1892405 tp!1892403))))

(assert (= (and b!6880881 (is-ElementMatch!16762 (regTwo!34037 r3!135))) b!6881312))

(assert (= (and b!6880881 (is-Concat!25607 (regTwo!34037 r3!135))) b!6881313))

(assert (= (and b!6880881 (is-Star!16762 (regTwo!34037 r3!135))) b!6881314))

(assert (= (and b!6880881 (is-Union!16762 (regTwo!34037 r3!135))) b!6881315))

(declare-fun b!6881318 () Bool)

(declare-fun e!4146794 () Bool)

(declare-fun tp!1892409 () Bool)

(assert (=> b!6881318 (= e!4146794 tp!1892409)))

(declare-fun b!6881316 () Bool)

(assert (=> b!6881316 (= e!4146794 tp_is_empty!42749)))

(assert (=> b!6880865 (= tp!1892278 e!4146794)))

(declare-fun b!6881317 () Bool)

(declare-fun tp!1892406 () Bool)

(declare-fun tp!1892407 () Bool)

(assert (=> b!6881317 (= e!4146794 (and tp!1892406 tp!1892407))))

(declare-fun b!6881319 () Bool)

(declare-fun tp!1892410 () Bool)

(declare-fun tp!1892408 () Bool)

(assert (=> b!6881319 (= e!4146794 (and tp!1892410 tp!1892408))))

(assert (= (and b!6880865 (is-ElementMatch!16762 (reg!17091 r2!6280))) b!6881316))

(assert (= (and b!6880865 (is-Concat!25607 (reg!17091 r2!6280))) b!6881317))

(assert (= (and b!6880865 (is-Star!16762 (reg!17091 r2!6280))) b!6881318))

(assert (= (and b!6880865 (is-Union!16762 (reg!17091 r2!6280))) b!6881319))

(declare-fun b!6881322 () Bool)

(declare-fun e!4146795 () Bool)

(declare-fun tp!1892414 () Bool)

(assert (=> b!6881322 (= e!4146795 tp!1892414)))

(declare-fun b!6881320 () Bool)

(assert (=> b!6881320 (= e!4146795 tp_is_empty!42749)))

(assert (=> b!6880871 (= tp!1892271 e!4146795)))

(declare-fun b!6881321 () Bool)

(declare-fun tp!1892411 () Bool)

(declare-fun tp!1892412 () Bool)

(assert (=> b!6881321 (= e!4146795 (and tp!1892411 tp!1892412))))

(declare-fun b!6881323 () Bool)

(declare-fun tp!1892415 () Bool)

(declare-fun tp!1892413 () Bool)

(assert (=> b!6881323 (= e!4146795 (and tp!1892415 tp!1892413))))

(assert (= (and b!6880871 (is-ElementMatch!16762 (reg!17091 r1!6342))) b!6881320))

(assert (= (and b!6880871 (is-Concat!25607 (reg!17091 r1!6342))) b!6881321))

(assert (= (and b!6880871 (is-Star!16762 (reg!17091 r1!6342))) b!6881322))

(assert (= (and b!6880871 (is-Union!16762 (reg!17091 r1!6342))) b!6881323))

(push 1)

(assert (not b!6881204))

(assert (not b!6881272))

(assert (not b!6881298))

(assert (not b!6881140))

(assert (not b!6881171))

(assert (not b!6881160))

(assert (not b!6881299))

(assert (not b!6881261))

(assert (not b!6881152))

(assert (not b!6881314))

(assert (not b!6881318))

(assert (not d!2160053))

(assert (not d!2160057))

(assert (not b!6881291))

(assert (not b!6881307))

(assert (not b!6881265))

(assert (not d!2160029))

(assert (not d!2160067))

(assert (not b!6880986))

(assert (not b!6881278))

(assert (not b!6881303))

(assert (not b!6881155))

(assert (not b!6881063))

(assert (not b!6881130))

(assert (not b!6881199))

(assert (not b!6881309))

(assert (not b!6881269))

(assert (not b!6881246))

(assert (not b!6881295))

(assert (not b!6881266))

(assert (not b!6881315))

(assert (not bm!626432))

(assert (not b!6881311))

(assert (not b!6881201))

(assert (not bm!626463))

(assert (not b!6881057))

(assert (not bm!626462))

(assert (not b!6881294))

(assert (not b!6881310))

(assert (not b!6881313))

(assert (not b!6881131))

(assert (not b!6881290))

(assert (not b!6881270))

(assert (not bm!626430))

(assert (not b!6881293))

(assert (not b!6881157))

(assert (not b!6881289))

(assert (not b!6881286))

(assert (not d!2160061))

(assert (not bm!626461))

(assert (not b!6881301))

(assert (not b!6881321))

(assert (not b!6881135))

(assert (not d!2160069))

(assert (not b!6881277))

(assert (not bm!626465))

(assert (not b!6881202))

(assert (not b!6881163))

(assert (not bm!626429))

(assert (not b!6881287))

(assert (not b!6881323))

(assert (not b!6881302))

(assert (not b!6881317))

(assert (not b!6881273))

(assert (not bm!626468))

(assert (not d!2160023))

(assert (not b!6881165))

(assert (not b!6881132))

(assert (not b!6881260))

(assert (not d!2160063))

(assert (not b!6881305))

(assert (not b!6880977))

(assert (not b!6881264))

(assert (not bm!626469))

(assert (not b!6881207))

(assert (not d!2160055))

(assert (not b!6881146))

(assert (not b!6881262))

(assert (not d!2160039))

(assert (not b!6881276))

(assert (not b!6881274))

(assert (not d!2160049))

(assert tp_is_empty!42749)

(assert (not b!6881156))

(assert (not b!6881138))

(assert (not bm!626443))

(assert (not bm!626466))

(assert (not b!6881319))

(assert (not bm!626433))

(assert (not bm!626464))

(assert (not b!6881322))

(assert (not b!6881283))

(assert (not bm!626444))

(assert (not b!6881247))

(assert (not b!6881268))

(assert (not b!6881200))

(assert (not b!6881231))

(assert (not b!6881285))

(assert (not b!6881306))

(assert (not b!6881297))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

