; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!288038 () Bool)

(assert start!288038)

(declare-fun b!2980004 () Bool)

(assert (=> b!2980004 true))

(assert (=> b!2980004 true))

(assert (=> b!2980004 true))

(declare-fun lambda!111094 () Int)

(declare-fun lambda!111093 () Int)

(assert (=> b!2980004 (not (= lambda!111094 lambda!111093))))

(assert (=> b!2980004 true))

(assert (=> b!2980004 true))

(assert (=> b!2980004 true))

(declare-fun b!2979996 () Bool)

(declare-fun e!1874276 () Bool)

(declare-fun e!1874274 () Bool)

(assert (=> b!2979996 (= e!1874276 (not e!1874274))))

(declare-fun res!1228816 () Bool)

(assert (=> b!2979996 (=> res!1228816 e!1874274)))

(declare-fun lt!1037815 () Bool)

(declare-datatypes ((C!18782 0))(
  ( (C!18783 (val!11427 Int)) )
))
(declare-datatypes ((Regex!9298 0))(
  ( (ElementMatch!9298 (c!489438 C!18782)) (Concat!14619 (regOne!19108 Regex!9298) (regTwo!19108 Regex!9298)) (EmptyExpr!9298) (Star!9298 (reg!9627 Regex!9298)) (EmptyLang!9298) (Union!9298 (regOne!19109 Regex!9298) (regTwo!19109 Regex!9298)) )
))
(declare-fun r!17423 () Regex!9298)

(assert (=> b!2979996 (= res!1228816 (or lt!1037815 (is-Concat!14619 r!17423) (is-Union!9298 r!17423) (not (is-Star!9298 r!17423))))))

(declare-datatypes ((List!35163 0))(
  ( (Nil!35039) (Cons!35039 (h!40459 C!18782) (t!234228 List!35163)) )
))
(declare-fun s!11993 () List!35163)

(declare-fun matchRSpec!1435 (Regex!9298 List!35163) Bool)

(assert (=> b!2979996 (= lt!1037815 (matchRSpec!1435 r!17423 s!11993))))

(declare-fun matchR!4180 (Regex!9298 List!35163) Bool)

(assert (=> b!2979996 (= lt!1037815 (matchR!4180 r!17423 s!11993))))

(declare-datatypes ((Unit!48975 0))(
  ( (Unit!48976) )
))
(declare-fun lt!1037812 () Unit!48975)

(declare-fun mainMatchTheorem!1435 (Regex!9298 List!35163) Unit!48975)

(assert (=> b!2979996 (= lt!1037812 (mainMatchTheorem!1435 r!17423 s!11993))))

(declare-fun b!2979997 () Bool)

(declare-fun e!1874275 () Bool)

(declare-fun tp!948918 () Bool)

(assert (=> b!2979997 (= e!1874275 tp!948918)))

(declare-fun b!2979998 () Bool)

(declare-fun tp_is_empty!16159 () Bool)

(assert (=> b!2979998 (= e!1874275 tp_is_empty!16159)))

(declare-fun b!2979999 () Bool)

(declare-fun e!1874277 () Bool)

(declare-fun e!1874272 () Bool)

(assert (=> b!2979999 (= e!1874277 e!1874272)))

(declare-fun res!1228818 () Bool)

(assert (=> b!2979999 (=> res!1228818 e!1874272)))

(declare-fun lt!1037817 () Regex!9298)

(assert (=> b!2979999 (= res!1228818 (not (matchR!4180 lt!1037817 s!11993)))))

(declare-fun lt!1037811 () Regex!9298)

(assert (=> b!2979999 (= lt!1037817 (Star!9298 lt!1037811))))

(declare-fun b!2980000 () Bool)

(declare-fun e!1874273 () Bool)

(declare-fun validRegex!4031 (Regex!9298) Bool)

(assert (=> b!2980000 (= e!1874273 (validRegex!4031 lt!1037817))))

(declare-fun b!2980001 () Bool)

(declare-fun tp!948914 () Bool)

(declare-fun tp!948919 () Bool)

(assert (=> b!2980001 (= e!1874275 (and tp!948914 tp!948919))))

(declare-fun b!2980002 () Bool)

(assert (=> b!2980002 (= e!1874274 e!1874277)))

(declare-fun res!1228814 () Bool)

(assert (=> b!2980002 (=> res!1228814 e!1874277)))

(declare-fun isEmptyLang!412 (Regex!9298) Bool)

(assert (=> b!2980002 (= res!1228814 (isEmptyLang!412 lt!1037811))))

(declare-fun simplify!299 (Regex!9298) Regex!9298)

(assert (=> b!2980002 (= lt!1037811 (simplify!299 (reg!9627 r!17423)))))

(declare-fun res!1228819 () Bool)

(assert (=> start!288038 (=> (not res!1228819) (not e!1874276))))

(assert (=> start!288038 (= res!1228819 (validRegex!4031 r!17423))))

(assert (=> start!288038 e!1874276))

(assert (=> start!288038 e!1874275))

(declare-fun e!1874278 () Bool)

(assert (=> start!288038 e!1874278))

(declare-fun b!2980003 () Bool)

(declare-fun tp!948917 () Bool)

(declare-fun tp!948915 () Bool)

(assert (=> b!2980003 (= e!1874275 (and tp!948917 tp!948915))))

(declare-fun e!1874279 () Bool)

(assert (=> b!2980004 (= e!1874279 e!1874273)))

(declare-fun res!1228815 () Bool)

(assert (=> b!2980004 (=> res!1228815 e!1874273)))

(declare-fun lt!1037813 () Bool)

(assert (=> b!2980004 (= res!1228815 (not lt!1037813))))

(declare-fun Exists!1578 (Int) Bool)

(assert (=> b!2980004 (= (Exists!1578 lambda!111093) (Exists!1578 lambda!111094))))

(declare-fun lt!1037819 () Unit!48975)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!263 (Regex!9298 List!35163) Unit!48975)

(assert (=> b!2980004 (= lt!1037819 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!263 lt!1037811 s!11993))))

(assert (=> b!2980004 (= lt!1037813 (Exists!1578 lambda!111093))))

(declare-datatypes ((tuple2!33934 0))(
  ( (tuple2!33935 (_1!20099 List!35163) (_2!20099 List!35163)) )
))
(declare-datatypes ((Option!6699 0))(
  ( (None!6698) (Some!6698 (v!34832 tuple2!33934)) )
))
(declare-fun lt!1037816 () Option!6699)

(declare-fun isDefined!5250 (Option!6699) Bool)

(assert (=> b!2980004 (= lt!1037813 (isDefined!5250 lt!1037816))))

(declare-fun findConcatSeparation!1093 (Regex!9298 Regex!9298 List!35163 List!35163 List!35163) Option!6699)

(assert (=> b!2980004 (= lt!1037816 (findConcatSeparation!1093 lt!1037811 lt!1037817 Nil!35039 s!11993 s!11993))))

(declare-fun lt!1037814 () Unit!48975)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!871 (Regex!9298 Regex!9298 List!35163) Unit!48975)

(assert (=> b!2980004 (= lt!1037814 (lemmaFindConcatSeparationEquivalentToExists!871 lt!1037811 lt!1037817 s!11993))))

(declare-fun b!2980005 () Bool)

(assert (=> b!2980005 (= e!1874272 e!1874279)))

(declare-fun res!1228817 () Bool)

(assert (=> b!2980005 (=> res!1228817 e!1874279)))

(declare-fun isEmpty!19294 (List!35163) Bool)

(assert (=> b!2980005 (= res!1228817 (isEmpty!19294 s!11993))))

(assert (=> b!2980005 (matchRSpec!1435 lt!1037817 s!11993)))

(declare-fun lt!1037818 () Unit!48975)

(assert (=> b!2980005 (= lt!1037818 (mainMatchTheorem!1435 lt!1037817 s!11993))))

(declare-fun b!2980006 () Bool)

(declare-fun res!1228813 () Bool)

(assert (=> b!2980006 (=> res!1228813 e!1874273)))

(declare-fun get!10816 (Option!6699) tuple2!33934)

(assert (=> b!2980006 (= res!1228813 (not (matchR!4180 lt!1037811 (_1!20099 (get!10816 lt!1037816)))))))

(declare-fun b!2980007 () Bool)

(declare-fun tp!948916 () Bool)

(assert (=> b!2980007 (= e!1874278 (and tp_is_empty!16159 tp!948916))))

(assert (= (and start!288038 res!1228819) b!2979996))

(assert (= (and b!2979996 (not res!1228816)) b!2980002))

(assert (= (and b!2980002 (not res!1228814)) b!2979999))

(assert (= (and b!2979999 (not res!1228818)) b!2980005))

(assert (= (and b!2980005 (not res!1228817)) b!2980004))

(assert (= (and b!2980004 (not res!1228815)) b!2980006))

(assert (= (and b!2980006 (not res!1228813)) b!2980000))

(assert (= (and start!288038 (is-ElementMatch!9298 r!17423)) b!2979998))

(assert (= (and start!288038 (is-Concat!14619 r!17423)) b!2980003))

(assert (= (and start!288038 (is-Star!9298 r!17423)) b!2979997))

(assert (= (and start!288038 (is-Union!9298 r!17423)) b!2980001))

(assert (= (and start!288038 (is-Cons!35039 s!11993)) b!2980007))

(declare-fun m!3341721 () Bool)

(assert (=> b!2979999 m!3341721))

(declare-fun m!3341723 () Bool)

(assert (=> b!2980000 m!3341723))

(declare-fun m!3341725 () Bool)

(assert (=> b!2980006 m!3341725))

(declare-fun m!3341727 () Bool)

(assert (=> b!2980006 m!3341727))

(declare-fun m!3341729 () Bool)

(assert (=> b!2980005 m!3341729))

(declare-fun m!3341731 () Bool)

(assert (=> b!2980005 m!3341731))

(declare-fun m!3341733 () Bool)

(assert (=> b!2980005 m!3341733))

(declare-fun m!3341735 () Bool)

(assert (=> b!2979996 m!3341735))

(declare-fun m!3341737 () Bool)

(assert (=> b!2979996 m!3341737))

(declare-fun m!3341739 () Bool)

(assert (=> b!2979996 m!3341739))

(declare-fun m!3341741 () Bool)

(assert (=> b!2980004 m!3341741))

(declare-fun m!3341743 () Bool)

(assert (=> b!2980004 m!3341743))

(declare-fun m!3341745 () Bool)

(assert (=> b!2980004 m!3341745))

(declare-fun m!3341747 () Bool)

(assert (=> b!2980004 m!3341747))

(assert (=> b!2980004 m!3341747))

(declare-fun m!3341749 () Bool)

(assert (=> b!2980004 m!3341749))

(declare-fun m!3341751 () Bool)

(assert (=> b!2980004 m!3341751))

(declare-fun m!3341753 () Bool)

(assert (=> start!288038 m!3341753))

(declare-fun m!3341755 () Bool)

(assert (=> b!2980002 m!3341755))

(declare-fun m!3341757 () Bool)

(assert (=> b!2980002 m!3341757))

(push 1)

(assert (not b!2979996))

(assert (not b!2979999))

(assert (not b!2980004))

(assert tp_is_empty!16159)

(assert (not b!2979997))

(assert (not b!2980006))

(assert (not b!2980000))

(assert (not b!2980002))

(assert (not b!2980003))

(assert (not b!2980001))

(assert (not b!2980005))

(assert (not b!2980007))

(assert (not start!288038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!843501 () Bool)

(assert (=> d!843501 (= (isEmptyLang!412 lt!1037811) (is-EmptyLang!9298 lt!1037811))))

(assert (=> b!2980002 d!843501))

(declare-fun b!2980116 () Bool)

(declare-fun e!1874338 () Regex!9298)

(declare-fun e!1874350 () Regex!9298)

(assert (=> b!2980116 (= e!1874338 e!1874350)))

(declare-fun c!489471 () Bool)

(assert (=> b!2980116 (= c!489471 (is-Star!9298 (reg!9627 r!17423)))))

(declare-fun lt!1037859 () Regex!9298)

(declare-fun c!489470 () Bool)

(declare-fun bm!198980 () Bool)

(declare-fun call!198991 () Bool)

(declare-fun lt!1037863 () Regex!9298)

(declare-fun lt!1037861 () Regex!9298)

(assert (=> bm!198980 (= call!198991 (isEmptyLang!412 (ite c!489471 lt!1037863 (ite c!489470 lt!1037859 lt!1037861))))))

(declare-fun b!2980117 () Bool)

(assert (=> b!2980117 (= c!489470 (is-Union!9298 (reg!9627 r!17423)))))

(declare-fun e!1874346 () Regex!9298)

(assert (=> b!2980117 (= e!1874350 e!1874346)))

(declare-fun b!2980118 () Bool)

(declare-fun e!1874341 () Regex!9298)

(assert (=> b!2980118 (= e!1874341 lt!1037859)))

(declare-fun b!2980119 () Bool)

(assert (=> b!2980119 (= e!1874338 EmptyExpr!9298)))

(declare-fun bm!198981 () Bool)

(declare-fun call!198987 () Bool)

(assert (=> bm!198981 (= call!198987 call!198991)))

(declare-fun b!2980120 () Bool)

(declare-fun e!1874344 () Bool)

(declare-fun call!198988 () Bool)

(assert (=> b!2980120 (= e!1874344 call!198988)))

(declare-fun b!2980121 () Bool)

(declare-fun c!489466 () Bool)

(assert (=> b!2980121 (= c!489466 (is-EmptyExpr!9298 (reg!9627 r!17423)))))

(declare-fun e!1874340 () Regex!9298)

(assert (=> b!2980121 (= e!1874340 e!1874338)))

(declare-fun b!2980122 () Bool)

(declare-fun e!1874347 () Regex!9298)

(assert (=> b!2980122 (= e!1874347 EmptyLang!9298)))

(declare-fun b!2980123 () Bool)

(declare-fun e!1874348 () Regex!9298)

(assert (=> b!2980123 (= e!1874348 EmptyExpr!9298)))

(declare-fun bm!198982 () Bool)

(declare-fun call!198985 () Regex!9298)

(declare-fun call!198989 () Regex!9298)

(assert (=> bm!198982 (= call!198985 call!198989)))

(declare-fun b!2980124 () Bool)

(declare-fun c!489467 () Bool)

(assert (=> b!2980124 (= c!489467 call!198988)))

(declare-fun e!1874339 () Regex!9298)

(assert (=> b!2980124 (= e!1874339 e!1874341)))

(declare-fun b!2980125 () Bool)

(declare-fun e!1874343 () Regex!9298)

(declare-fun e!1874345 () Regex!9298)

(assert (=> b!2980125 (= e!1874343 e!1874345)))

(declare-fun c!489469 () Bool)

(declare-fun call!198986 () Bool)

(assert (=> b!2980125 (= c!489469 call!198986)))

(declare-fun b!2980126 () Bool)

(assert (=> b!2980126 (= e!1874345 lt!1037861)))

(declare-fun b!2980127 () Bool)

(assert (=> b!2980127 (= e!1874340 (reg!9627 r!17423))))

(declare-fun b!2980128 () Bool)

(declare-fun c!489465 () Bool)

(declare-fun isEmptyExpr!444 (Regex!9298) Bool)

(assert (=> b!2980128 (= c!489465 (isEmptyExpr!444 lt!1037861))))

(assert (=> b!2980128 (= e!1874347 e!1874343)))

(declare-fun b!2980129 () Bool)

(declare-fun lt!1037860 () Regex!9298)

(assert (=> b!2980129 (= e!1874345 (Concat!14619 lt!1037861 lt!1037860))))

(declare-fun bm!198983 () Bool)

(assert (=> bm!198983 (= call!198986 (isEmptyExpr!444 (ite c!489471 lt!1037863 lt!1037860)))))

(declare-fun b!2980130 () Bool)

(declare-fun e!1874349 () Regex!9298)

(assert (=> b!2980130 (= e!1874349 e!1874340)))

(declare-fun c!489462 () Bool)

(assert (=> b!2980130 (= c!489462 (is-ElementMatch!9298 (reg!9627 r!17423)))))

(declare-fun bm!198984 () Bool)

(assert (=> bm!198984 (= call!198989 (simplify!299 (ite c!489471 (reg!9627 (reg!9627 r!17423)) (ite c!489470 (regOne!19109 (reg!9627 r!17423)) (regTwo!19108 (reg!9627 r!17423))))))))

(declare-fun b!2980131 () Bool)

(declare-fun e!1874342 () Bool)

(assert (=> b!2980131 (= e!1874342 call!198986)))

(declare-fun b!2980132 () Bool)

(declare-fun lt!1037864 () Regex!9298)

(assert (=> b!2980132 (= e!1874339 lt!1037864)))

(declare-fun b!2980133 () Bool)

(declare-fun e!1874351 () Bool)

(declare-fun lt!1037862 () Regex!9298)

(declare-fun nullable!2989 (Regex!9298) Bool)

(assert (=> b!2980133 (= e!1874351 (= (nullable!2989 lt!1037862) (nullable!2989 (reg!9627 r!17423))))))

(declare-fun b!2980134 () Bool)

(assert (=> b!2980134 (= e!1874341 (Union!9298 lt!1037859 lt!1037864))))

(declare-fun b!2980135 () Bool)

(assert (=> b!2980135 (= e!1874346 e!1874339)))

(assert (=> b!2980135 (= lt!1037859 call!198985)))

(declare-fun call!198990 () Regex!9298)

(assert (=> b!2980135 (= lt!1037864 call!198990)))

(declare-fun c!489472 () Bool)

(assert (=> b!2980135 (= c!489472 call!198987)))

(declare-fun b!2980136 () Bool)

(assert (=> b!2980136 (= e!1874348 (Star!9298 lt!1037863))))

(declare-fun bm!198985 () Bool)

(assert (=> bm!198985 (= call!198988 (isEmptyLang!412 (ite c!489470 lt!1037864 lt!1037860)))))

(declare-fun b!2980137 () Bool)

(declare-fun c!489468 () Bool)

(assert (=> b!2980137 (= c!489468 e!1874342)))

(declare-fun res!1228861 () Bool)

(assert (=> b!2980137 (=> res!1228861 e!1874342)))

(assert (=> b!2980137 (= res!1228861 call!198991)))

(assert (=> b!2980137 (= lt!1037863 call!198989)))

(assert (=> b!2980137 (= e!1874350 e!1874348)))

(declare-fun b!2980138 () Bool)

(assert (=> b!2980138 (= e!1874343 lt!1037860)))

(declare-fun b!2980139 () Bool)

(assert (=> b!2980139 (= e!1874346 e!1874347)))

(assert (=> b!2980139 (= lt!1037861 call!198990)))

(assert (=> b!2980139 (= lt!1037860 call!198985)))

(declare-fun res!1228862 () Bool)

(assert (=> b!2980139 (= res!1228862 call!198987)))

(assert (=> b!2980139 (=> res!1228862 e!1874344)))

(declare-fun c!489464 () Bool)

(assert (=> b!2980139 (= c!489464 e!1874344)))

(declare-fun d!843503 () Bool)

(assert (=> d!843503 e!1874351))

(declare-fun res!1228863 () Bool)

(assert (=> d!843503 (=> (not res!1228863) (not e!1874351))))

(assert (=> d!843503 (= res!1228863 (validRegex!4031 lt!1037862))))

(assert (=> d!843503 (= lt!1037862 e!1874349)))

(declare-fun c!489463 () Bool)

(assert (=> d!843503 (= c!489463 (is-EmptyLang!9298 (reg!9627 r!17423)))))

(assert (=> d!843503 (validRegex!4031 (reg!9627 r!17423))))

(assert (=> d!843503 (= (simplify!299 (reg!9627 r!17423)) lt!1037862)))

(declare-fun b!2980140 () Bool)

(assert (=> b!2980140 (= e!1874349 EmptyLang!9298)))

(declare-fun bm!198986 () Bool)

(assert (=> bm!198986 (= call!198990 (simplify!299 (ite c!489470 (regTwo!19109 (reg!9627 r!17423)) (regOne!19108 (reg!9627 r!17423)))))))

(assert (= (and d!843503 c!489463) b!2980140))

(assert (= (and d!843503 (not c!489463)) b!2980130))

(assert (= (and b!2980130 c!489462) b!2980127))

(assert (= (and b!2980130 (not c!489462)) b!2980121))

(assert (= (and b!2980121 c!489466) b!2980119))

(assert (= (and b!2980121 (not c!489466)) b!2980116))

(assert (= (and b!2980116 c!489471) b!2980137))

(assert (= (and b!2980116 (not c!489471)) b!2980117))

(assert (= (and b!2980137 (not res!1228861)) b!2980131))

(assert (= (and b!2980137 c!489468) b!2980123))

(assert (= (and b!2980137 (not c!489468)) b!2980136))

(assert (= (and b!2980117 c!489470) b!2980135))

(assert (= (and b!2980117 (not c!489470)) b!2980139))

(assert (= (and b!2980135 c!489472) b!2980132))

(assert (= (and b!2980135 (not c!489472)) b!2980124))

(assert (= (and b!2980124 c!489467) b!2980118))

(assert (= (and b!2980124 (not c!489467)) b!2980134))

(assert (= (and b!2980139 (not res!1228862)) b!2980120))

(assert (= (and b!2980139 c!489464) b!2980122))

(assert (= (and b!2980139 (not c!489464)) b!2980128))

(assert (= (and b!2980128 c!489465) b!2980138))

(assert (= (and b!2980128 (not c!489465)) b!2980125))

(assert (= (and b!2980125 c!489469) b!2980126))

(assert (= (and b!2980125 (not c!489469)) b!2980129))

(assert (= (or b!2980135 b!2980139) bm!198982))

(assert (= (or b!2980135 b!2980139) bm!198986))

(assert (= (or b!2980124 b!2980120) bm!198985))

(assert (= (or b!2980135 b!2980139) bm!198981))

(assert (= (or b!2980131 b!2980125) bm!198983))

(assert (= (or b!2980137 bm!198982) bm!198984))

(assert (= (or b!2980137 bm!198981) bm!198980))

(assert (= (and d!843503 res!1228863) b!2980133))

(declare-fun m!3341799 () Bool)

(assert (=> bm!198986 m!3341799))

(declare-fun m!3341801 () Bool)

(assert (=> bm!198980 m!3341801))

(declare-fun m!3341803 () Bool)

(assert (=> bm!198983 m!3341803))

(declare-fun m!3341805 () Bool)

(assert (=> bm!198985 m!3341805))

(declare-fun m!3341807 () Bool)

(assert (=> bm!198984 m!3341807))

(declare-fun m!3341809 () Bool)

(assert (=> b!2980133 m!3341809))

(declare-fun m!3341811 () Bool)

(assert (=> b!2980133 m!3341811))

(declare-fun m!3341813 () Bool)

(assert (=> d!843503 m!3341813))

(declare-fun m!3341815 () Bool)

(assert (=> d!843503 m!3341815))

(declare-fun m!3341817 () Bool)

(assert (=> b!2980128 m!3341817))

(assert (=> b!2980002 d!843503))

(declare-fun b!2980159 () Bool)

(declare-fun res!1228874 () Bool)

(declare-fun e!1874371 () Bool)

(assert (=> b!2980159 (=> res!1228874 e!1874371)))

(assert (=> b!2980159 (= res!1228874 (not (is-Concat!14619 r!17423)))))

(declare-fun e!1874368 () Bool)

(assert (=> b!2980159 (= e!1874368 e!1874371)))

(declare-fun b!2980160 () Bool)

(declare-fun e!1874372 () Bool)

(assert (=> b!2980160 (= e!1874372 e!1874368)))

(declare-fun c!489478 () Bool)

(assert (=> b!2980160 (= c!489478 (is-Union!9298 r!17423))))

(declare-fun b!2980161 () Bool)

(declare-fun e!1874366 () Bool)

(assert (=> b!2980161 (= e!1874366 e!1874372)))

(declare-fun c!489477 () Bool)

(assert (=> b!2980161 (= c!489477 (is-Star!9298 r!17423))))

(declare-fun b!2980162 () Bool)

(declare-fun res!1228878 () Bool)

(declare-fun e!1874370 () Bool)

(assert (=> b!2980162 (=> (not res!1228878) (not e!1874370))))

(declare-fun call!199000 () Bool)

(assert (=> b!2980162 (= res!1228878 call!199000)))

(assert (=> b!2980162 (= e!1874368 e!1874370)))

(declare-fun bm!198993 () Bool)

(declare-fun call!198999 () Bool)

(assert (=> bm!198993 (= call!199000 call!198999)))

(declare-fun b!2980163 () Bool)

(declare-fun e!1874367 () Bool)

(assert (=> b!2980163 (= e!1874367 call!199000)))

(declare-fun d!843509 () Bool)

(declare-fun res!1228876 () Bool)

(assert (=> d!843509 (=> res!1228876 e!1874366)))

(assert (=> d!843509 (= res!1228876 (is-ElementMatch!9298 r!17423))))

(assert (=> d!843509 (= (validRegex!4031 r!17423) e!1874366)))

(declare-fun bm!198994 () Bool)

(declare-fun call!198998 () Bool)

(assert (=> bm!198994 (= call!198998 (validRegex!4031 (ite c!489478 (regTwo!19109 r!17423) (regOne!19108 r!17423))))))

(declare-fun b!2980164 () Bool)

(assert (=> b!2980164 (= e!1874370 call!198998)))

(declare-fun b!2980165 () Bool)

(assert (=> b!2980165 (= e!1874371 e!1874367)))

(declare-fun res!1228877 () Bool)

(assert (=> b!2980165 (=> (not res!1228877) (not e!1874367))))

(assert (=> b!2980165 (= res!1228877 call!198998)))

(declare-fun b!2980166 () Bool)

(declare-fun e!1874369 () Bool)

(assert (=> b!2980166 (= e!1874372 e!1874369)))

(declare-fun res!1228875 () Bool)

(assert (=> b!2980166 (= res!1228875 (not (nullable!2989 (reg!9627 r!17423))))))

(assert (=> b!2980166 (=> (not res!1228875) (not e!1874369))))

(declare-fun b!2980167 () Bool)

(assert (=> b!2980167 (= e!1874369 call!198999)))

(declare-fun bm!198995 () Bool)

(assert (=> bm!198995 (= call!198999 (validRegex!4031 (ite c!489477 (reg!9627 r!17423) (ite c!489478 (regOne!19109 r!17423) (regTwo!19108 r!17423)))))))

(assert (= (and d!843509 (not res!1228876)) b!2980161))

(assert (= (and b!2980161 c!489477) b!2980166))

(assert (= (and b!2980161 (not c!489477)) b!2980160))

(assert (= (and b!2980166 res!1228875) b!2980167))

(assert (= (and b!2980160 c!489478) b!2980162))

(assert (= (and b!2980160 (not c!489478)) b!2980159))

(assert (= (and b!2980162 res!1228878) b!2980164))

(assert (= (and b!2980159 (not res!1228874)) b!2980165))

(assert (= (and b!2980165 res!1228877) b!2980163))

(assert (= (or b!2980162 b!2980163) bm!198993))

(assert (= (or b!2980164 b!2980165) bm!198994))

(assert (= (or b!2980167 bm!198993) bm!198995))

(declare-fun m!3341819 () Bool)

(assert (=> bm!198994 m!3341819))

(assert (=> b!2980166 m!3341811))

(declare-fun m!3341821 () Bool)

(assert (=> bm!198995 m!3341821))

(assert (=> start!288038 d!843509))

(declare-fun bs!527097 () Bool)

(declare-fun b!2980219 () Bool)

(assert (= bs!527097 (and b!2980219 b!2980004)))

(declare-fun lambda!111107 () Int)

(assert (=> bs!527097 (not (= lambda!111107 lambda!111093))))

(assert (=> bs!527097 (= (and (= (reg!9627 r!17423) lt!1037811) (= r!17423 lt!1037817)) (= lambda!111107 lambda!111094))))

(assert (=> b!2980219 true))

(assert (=> b!2980219 true))

(declare-fun bs!527098 () Bool)

(declare-fun b!2980223 () Bool)

(assert (= bs!527098 (and b!2980223 b!2980004)))

(declare-fun lambda!111108 () Int)

(assert (=> bs!527098 (not (= lambda!111108 lambda!111093))))

(assert (=> bs!527098 (not (= lambda!111108 lambda!111094))))

(declare-fun bs!527099 () Bool)

(assert (= bs!527099 (and b!2980223 b!2980219)))

(assert (=> bs!527099 (not (= lambda!111108 lambda!111107))))

(assert (=> b!2980223 true))

(assert (=> b!2980223 true))

(declare-fun b!2980218 () Bool)

(declare-fun res!1228907 () Bool)

(declare-fun e!1874402 () Bool)

(assert (=> b!2980218 (=> res!1228907 e!1874402)))

(declare-fun call!199005 () Bool)

(assert (=> b!2980218 (= res!1228907 call!199005)))

(declare-fun e!1874401 () Bool)

(assert (=> b!2980218 (= e!1874401 e!1874402)))

(declare-fun call!199006 () Bool)

(assert (=> b!2980219 (= e!1874402 call!199006)))

(declare-fun b!2980220 () Bool)

(declare-fun e!1874403 () Bool)

(assert (=> b!2980220 (= e!1874403 (matchRSpec!1435 (regTwo!19109 r!17423) s!11993))))

(declare-fun b!2980221 () Bool)

(declare-fun c!489491 () Bool)

(assert (=> b!2980221 (= c!489491 (is-Union!9298 r!17423))))

(declare-fun e!1874406 () Bool)

(declare-fun e!1874405 () Bool)

(assert (=> b!2980221 (= e!1874406 e!1874405)))

(declare-fun bm!199000 () Bool)

(assert (=> bm!199000 (= call!199005 (isEmpty!19294 s!11993))))

(declare-fun b!2980222 () Bool)

(assert (=> b!2980222 (= e!1874405 e!1874401)))

(declare-fun c!489493 () Bool)

(assert (=> b!2980222 (= c!489493 (is-Star!9298 r!17423))))

(declare-fun b!2980224 () Bool)

(assert (=> b!2980224 (= e!1874405 e!1874403)))

(declare-fun res!1228905 () Bool)

(assert (=> b!2980224 (= res!1228905 (matchRSpec!1435 (regOne!19109 r!17423) s!11993))))

(assert (=> b!2980224 (=> res!1228905 e!1874403)))

(declare-fun b!2980225 () Bool)

(declare-fun e!1874404 () Bool)

(assert (=> b!2980225 (= e!1874404 call!199005)))

(declare-fun b!2980226 () Bool)

(declare-fun e!1874407 () Bool)

(assert (=> b!2980226 (= e!1874404 e!1874407)))

(declare-fun res!1228906 () Bool)

(assert (=> b!2980226 (= res!1228906 (not (is-EmptyLang!9298 r!17423)))))

(assert (=> b!2980226 (=> (not res!1228906) (not e!1874407))))

(declare-fun b!2980227 () Bool)

(declare-fun c!489494 () Bool)

(assert (=> b!2980227 (= c!489494 (is-ElementMatch!9298 r!17423))))

(assert (=> b!2980227 (= e!1874407 e!1874406)))

(declare-fun b!2980228 () Bool)

(assert (=> b!2980228 (= e!1874406 (= s!11993 (Cons!35039 (c!489438 r!17423) Nil!35039)))))

(declare-fun bm!199001 () Bool)

(assert (=> bm!199001 (= call!199006 (Exists!1578 (ite c!489493 lambda!111107 lambda!111108)))))

(declare-fun d!843511 () Bool)

(declare-fun c!489492 () Bool)

(assert (=> d!843511 (= c!489492 (is-EmptyExpr!9298 r!17423))))

(assert (=> d!843511 (= (matchRSpec!1435 r!17423 s!11993) e!1874404)))

(assert (=> b!2980223 (= e!1874401 call!199006)))

(assert (= (and d!843511 c!489492) b!2980225))

(assert (= (and d!843511 (not c!489492)) b!2980226))

(assert (= (and b!2980226 res!1228906) b!2980227))

(assert (= (and b!2980227 c!489494) b!2980228))

(assert (= (and b!2980227 (not c!489494)) b!2980221))

(assert (= (and b!2980221 c!489491) b!2980224))

(assert (= (and b!2980221 (not c!489491)) b!2980222))

(assert (= (and b!2980224 (not res!1228905)) b!2980220))

(assert (= (and b!2980222 c!489493) b!2980218))

(assert (= (and b!2980222 (not c!489493)) b!2980223))

(assert (= (and b!2980218 (not res!1228907)) b!2980219))

(assert (= (or b!2980219 b!2980223) bm!199001))

(assert (= (or b!2980225 b!2980218) bm!199000))

(declare-fun m!3341823 () Bool)

(assert (=> b!2980220 m!3341823))

(assert (=> bm!199000 m!3341729))

(declare-fun m!3341825 () Bool)

(assert (=> b!2980224 m!3341825))

(declare-fun m!3341827 () Bool)

(assert (=> bm!199001 m!3341827))

(assert (=> b!2979996 d!843511))

(declare-fun b!2980266 () Bool)

(declare-fun res!1228934 () Bool)

(declare-fun e!1874430 () Bool)

(assert (=> b!2980266 (=> res!1228934 e!1874430)))

(declare-fun e!1874431 () Bool)

(assert (=> b!2980266 (= res!1228934 e!1874431)))

(declare-fun res!1228932 () Bool)

(assert (=> b!2980266 (=> (not res!1228932) (not e!1874431))))

(declare-fun lt!1037876 () Bool)

(assert (=> b!2980266 (= res!1228932 lt!1037876)))

(declare-fun d!843513 () Bool)

(declare-fun e!1874428 () Bool)

(assert (=> d!843513 e!1874428))

(declare-fun c!489504 () Bool)

(assert (=> d!843513 (= c!489504 (is-EmptyExpr!9298 r!17423))))

(declare-fun e!1874429 () Bool)

(assert (=> d!843513 (= lt!1037876 e!1874429)))

(declare-fun c!489503 () Bool)

(assert (=> d!843513 (= c!489503 (isEmpty!19294 s!11993))))

(assert (=> d!843513 (validRegex!4031 r!17423)))

(assert (=> d!843513 (= (matchR!4180 r!17423 s!11993) lt!1037876)))

(declare-fun b!2980267 () Bool)

(assert (=> b!2980267 (= e!1874429 (nullable!2989 r!17423))))

(declare-fun b!2980268 () Bool)

(declare-fun call!199009 () Bool)

(assert (=> b!2980268 (= e!1874428 (= lt!1037876 call!199009))))

(declare-fun b!2980269 () Bool)

(declare-fun res!1228935 () Bool)

(assert (=> b!2980269 (=> res!1228935 e!1874430)))

(assert (=> b!2980269 (= res!1228935 (not (is-ElementMatch!9298 r!17423)))))

(declare-fun e!1874433 () Bool)

(assert (=> b!2980269 (= e!1874433 e!1874430)))

(declare-fun b!2980270 () Bool)

(declare-fun res!1228929 () Bool)

(declare-fun e!1874432 () Bool)

(assert (=> b!2980270 (=> res!1228929 e!1874432)))

(declare-fun tail!4874 (List!35163) List!35163)

(assert (=> b!2980270 (= res!1228929 (not (isEmpty!19294 (tail!4874 s!11993))))))

(declare-fun b!2980271 () Bool)

(declare-fun head!6648 (List!35163) C!18782)

(assert (=> b!2980271 (= e!1874432 (not (= (head!6648 s!11993) (c!489438 r!17423))))))

(declare-fun b!2980272 () Bool)

(declare-fun e!1874427 () Bool)

(assert (=> b!2980272 (= e!1874430 e!1874427)))

(declare-fun res!1228930 () Bool)

(assert (=> b!2980272 (=> (not res!1228930) (not e!1874427))))

(assert (=> b!2980272 (= res!1228930 (not lt!1037876))))

(declare-fun b!2980273 () Bool)

(declare-fun res!1228933 () Bool)

(assert (=> b!2980273 (=> (not res!1228933) (not e!1874431))))

(assert (=> b!2980273 (= res!1228933 (not call!199009))))

(declare-fun bm!199004 () Bool)

(assert (=> bm!199004 (= call!199009 (isEmpty!19294 s!11993))))

(declare-fun b!2980274 () Bool)

(assert (=> b!2980274 (= e!1874431 (= (head!6648 s!11993) (c!489438 r!17423)))))

(declare-fun b!2980275 () Bool)

(assert (=> b!2980275 (= e!1874427 e!1874432)))

(declare-fun res!1228936 () Bool)

(assert (=> b!2980275 (=> res!1228936 e!1874432)))

(assert (=> b!2980275 (= res!1228936 call!199009)))

(declare-fun b!2980276 () Bool)

(declare-fun derivativeStep!2589 (Regex!9298 C!18782) Regex!9298)

(assert (=> b!2980276 (= e!1874429 (matchR!4180 (derivativeStep!2589 r!17423 (head!6648 s!11993)) (tail!4874 s!11993)))))

(declare-fun b!2980277 () Bool)

(declare-fun res!1228931 () Bool)

(assert (=> b!2980277 (=> (not res!1228931) (not e!1874431))))

(assert (=> b!2980277 (= res!1228931 (isEmpty!19294 (tail!4874 s!11993)))))

(declare-fun b!2980278 () Bool)

(assert (=> b!2980278 (= e!1874433 (not lt!1037876))))

(declare-fun b!2980279 () Bool)

(assert (=> b!2980279 (= e!1874428 e!1874433)))

(declare-fun c!489505 () Bool)

(assert (=> b!2980279 (= c!489505 (is-EmptyLang!9298 r!17423))))

(assert (= (and d!843513 c!489503) b!2980267))

(assert (= (and d!843513 (not c!489503)) b!2980276))

(assert (= (and d!843513 c!489504) b!2980268))

(assert (= (and d!843513 (not c!489504)) b!2980279))

(assert (= (and b!2980279 c!489505) b!2980278))

(assert (= (and b!2980279 (not c!489505)) b!2980269))

(assert (= (and b!2980269 (not res!1228935)) b!2980266))

(assert (= (and b!2980266 res!1228932) b!2980273))

(assert (= (and b!2980273 res!1228933) b!2980277))

(assert (= (and b!2980277 res!1228931) b!2980274))

(assert (= (and b!2980266 (not res!1228934)) b!2980272))

(assert (= (and b!2980272 res!1228930) b!2980275))

(assert (= (and b!2980275 (not res!1228936)) b!2980270))

(assert (= (and b!2980270 (not res!1228929)) b!2980271))

(assert (= (or b!2980268 b!2980273 b!2980275) bm!199004))

(declare-fun m!3341851 () Bool)

(assert (=> b!2980276 m!3341851))

(assert (=> b!2980276 m!3341851))

(declare-fun m!3341853 () Bool)

(assert (=> b!2980276 m!3341853))

(declare-fun m!3341855 () Bool)

(assert (=> b!2980276 m!3341855))

(assert (=> b!2980276 m!3341853))

(assert (=> b!2980276 m!3341855))

(declare-fun m!3341857 () Bool)

(assert (=> b!2980276 m!3341857))

(declare-fun m!3341859 () Bool)

(assert (=> b!2980267 m!3341859))

(assert (=> b!2980270 m!3341855))

(assert (=> b!2980270 m!3341855))

(declare-fun m!3341861 () Bool)

(assert (=> b!2980270 m!3341861))

(assert (=> bm!199004 m!3341729))

(assert (=> b!2980271 m!3341851))

(assert (=> b!2980277 m!3341855))

(assert (=> b!2980277 m!3341855))

(assert (=> b!2980277 m!3341861))

(assert (=> d!843513 m!3341729))

(assert (=> d!843513 m!3341753))

(assert (=> b!2980274 m!3341851))

(assert (=> b!2979996 d!843513))

(declare-fun d!843517 () Bool)

(assert (=> d!843517 (= (matchR!4180 r!17423 s!11993) (matchRSpec!1435 r!17423 s!11993))))

(declare-fun lt!1037879 () Unit!48975)

(declare-fun choose!17648 (Regex!9298 List!35163) Unit!48975)

(assert (=> d!843517 (= lt!1037879 (choose!17648 r!17423 s!11993))))

(assert (=> d!843517 (validRegex!4031 r!17423)))

(assert (=> d!843517 (= (mainMatchTheorem!1435 r!17423 s!11993) lt!1037879)))

(declare-fun bs!527100 () Bool)

(assert (= bs!527100 d!843517))

(assert (=> bs!527100 m!3341737))

(assert (=> bs!527100 m!3341735))

(declare-fun m!3341863 () Bool)

(assert (=> bs!527100 m!3341863))

(assert (=> bs!527100 m!3341753))

(assert (=> b!2979996 d!843517))

(declare-fun b!2980280 () Bool)

(declare-fun res!1228942 () Bool)

(declare-fun e!1874437 () Bool)

(assert (=> b!2980280 (=> res!1228942 e!1874437)))

(declare-fun e!1874438 () Bool)

(assert (=> b!2980280 (= res!1228942 e!1874438)))

(declare-fun res!1228940 () Bool)

(assert (=> b!2980280 (=> (not res!1228940) (not e!1874438))))

(declare-fun lt!1037882 () Bool)

(assert (=> b!2980280 (= res!1228940 lt!1037882)))

(declare-fun d!843519 () Bool)

(declare-fun e!1874435 () Bool)

(assert (=> d!843519 e!1874435))

(declare-fun c!489507 () Bool)

(assert (=> d!843519 (= c!489507 (is-EmptyExpr!9298 lt!1037811))))

(declare-fun e!1874436 () Bool)

(assert (=> d!843519 (= lt!1037882 e!1874436)))

(declare-fun c!489506 () Bool)

(assert (=> d!843519 (= c!489506 (isEmpty!19294 (_1!20099 (get!10816 lt!1037816))))))

(assert (=> d!843519 (validRegex!4031 lt!1037811)))

(assert (=> d!843519 (= (matchR!4180 lt!1037811 (_1!20099 (get!10816 lt!1037816))) lt!1037882)))

(declare-fun b!2980281 () Bool)

(assert (=> b!2980281 (= e!1874436 (nullable!2989 lt!1037811))))

(declare-fun b!2980282 () Bool)

(declare-fun call!199010 () Bool)

(assert (=> b!2980282 (= e!1874435 (= lt!1037882 call!199010))))

(declare-fun b!2980283 () Bool)

(declare-fun res!1228943 () Bool)

(assert (=> b!2980283 (=> res!1228943 e!1874437)))

(assert (=> b!2980283 (= res!1228943 (not (is-ElementMatch!9298 lt!1037811)))))

(declare-fun e!1874440 () Bool)

(assert (=> b!2980283 (= e!1874440 e!1874437)))

(declare-fun b!2980284 () Bool)

(declare-fun res!1228937 () Bool)

(declare-fun e!1874439 () Bool)

(assert (=> b!2980284 (=> res!1228937 e!1874439)))

(assert (=> b!2980284 (= res!1228937 (not (isEmpty!19294 (tail!4874 (_1!20099 (get!10816 lt!1037816))))))))

(declare-fun b!2980285 () Bool)

(assert (=> b!2980285 (= e!1874439 (not (= (head!6648 (_1!20099 (get!10816 lt!1037816))) (c!489438 lt!1037811))))))

(declare-fun b!2980286 () Bool)

(declare-fun e!1874434 () Bool)

(assert (=> b!2980286 (= e!1874437 e!1874434)))

(declare-fun res!1228938 () Bool)

(assert (=> b!2980286 (=> (not res!1228938) (not e!1874434))))

(assert (=> b!2980286 (= res!1228938 (not lt!1037882))))

(declare-fun b!2980287 () Bool)

(declare-fun res!1228941 () Bool)

(assert (=> b!2980287 (=> (not res!1228941) (not e!1874438))))

(assert (=> b!2980287 (= res!1228941 (not call!199010))))

(declare-fun bm!199005 () Bool)

(assert (=> bm!199005 (= call!199010 (isEmpty!19294 (_1!20099 (get!10816 lt!1037816))))))

(declare-fun b!2980288 () Bool)

(assert (=> b!2980288 (= e!1874438 (= (head!6648 (_1!20099 (get!10816 lt!1037816))) (c!489438 lt!1037811)))))

(declare-fun b!2980289 () Bool)

(assert (=> b!2980289 (= e!1874434 e!1874439)))

(declare-fun res!1228944 () Bool)

(assert (=> b!2980289 (=> res!1228944 e!1874439)))

(assert (=> b!2980289 (= res!1228944 call!199010)))

(declare-fun b!2980290 () Bool)

(assert (=> b!2980290 (= e!1874436 (matchR!4180 (derivativeStep!2589 lt!1037811 (head!6648 (_1!20099 (get!10816 lt!1037816)))) (tail!4874 (_1!20099 (get!10816 lt!1037816)))))))

(declare-fun b!2980291 () Bool)

(declare-fun res!1228939 () Bool)

(assert (=> b!2980291 (=> (not res!1228939) (not e!1874438))))

(assert (=> b!2980291 (= res!1228939 (isEmpty!19294 (tail!4874 (_1!20099 (get!10816 lt!1037816)))))))

(declare-fun b!2980292 () Bool)

(assert (=> b!2980292 (= e!1874440 (not lt!1037882))))

(declare-fun b!2980293 () Bool)

(assert (=> b!2980293 (= e!1874435 e!1874440)))

(declare-fun c!489508 () Bool)

(assert (=> b!2980293 (= c!489508 (is-EmptyLang!9298 lt!1037811))))

(assert (= (and d!843519 c!489506) b!2980281))

(assert (= (and d!843519 (not c!489506)) b!2980290))

(assert (= (and d!843519 c!489507) b!2980282))

(assert (= (and d!843519 (not c!489507)) b!2980293))

(assert (= (and b!2980293 c!489508) b!2980292))

(assert (= (and b!2980293 (not c!489508)) b!2980283))

(assert (= (and b!2980283 (not res!1228943)) b!2980280))

(assert (= (and b!2980280 res!1228940) b!2980287))

(assert (= (and b!2980287 res!1228941) b!2980291))

(assert (= (and b!2980291 res!1228939) b!2980288))

(assert (= (and b!2980280 (not res!1228942)) b!2980286))

(assert (= (and b!2980286 res!1228938) b!2980289))

(assert (= (and b!2980289 (not res!1228944)) b!2980284))

(assert (= (and b!2980284 (not res!1228937)) b!2980285))

(assert (= (or b!2980282 b!2980287 b!2980289) bm!199005))

(declare-fun m!3341865 () Bool)

(assert (=> b!2980290 m!3341865))

(assert (=> b!2980290 m!3341865))

(declare-fun m!3341867 () Bool)

(assert (=> b!2980290 m!3341867))

(declare-fun m!3341869 () Bool)

(assert (=> b!2980290 m!3341869))

(assert (=> b!2980290 m!3341867))

(assert (=> b!2980290 m!3341869))

(declare-fun m!3341871 () Bool)

(assert (=> b!2980290 m!3341871))

(declare-fun m!3341873 () Bool)

(assert (=> b!2980281 m!3341873))

(assert (=> b!2980284 m!3341869))

(assert (=> b!2980284 m!3341869))

(declare-fun m!3341875 () Bool)

(assert (=> b!2980284 m!3341875))

(declare-fun m!3341877 () Bool)

(assert (=> bm!199005 m!3341877))

(assert (=> b!2980285 m!3341865))

(assert (=> b!2980291 m!3341869))

(assert (=> b!2980291 m!3341869))

(assert (=> b!2980291 m!3341875))

(assert (=> d!843519 m!3341877))

(declare-fun m!3341879 () Bool)

(assert (=> d!843519 m!3341879))

(assert (=> b!2980288 m!3341865))

(assert (=> b!2980006 d!843519))

(declare-fun d!843521 () Bool)

(assert (=> d!843521 (= (get!10816 lt!1037816) (v!34832 lt!1037816))))

(assert (=> b!2980006 d!843521))

(declare-fun b!2980294 () Bool)

(declare-fun res!1228945 () Bool)

(declare-fun e!1874446 () Bool)

(assert (=> b!2980294 (=> res!1228945 e!1874446)))

(assert (=> b!2980294 (= res!1228945 (not (is-Concat!14619 lt!1037817)))))

(declare-fun e!1874443 () Bool)

(assert (=> b!2980294 (= e!1874443 e!1874446)))

(declare-fun b!2980295 () Bool)

(declare-fun e!1874447 () Bool)

(assert (=> b!2980295 (= e!1874447 e!1874443)))

(declare-fun c!489510 () Bool)

(assert (=> b!2980295 (= c!489510 (is-Union!9298 lt!1037817))))

(declare-fun b!2980296 () Bool)

(declare-fun e!1874441 () Bool)

(assert (=> b!2980296 (= e!1874441 e!1874447)))

(declare-fun c!489509 () Bool)

(assert (=> b!2980296 (= c!489509 (is-Star!9298 lt!1037817))))

(declare-fun b!2980297 () Bool)

(declare-fun res!1228949 () Bool)

(declare-fun e!1874445 () Bool)

(assert (=> b!2980297 (=> (not res!1228949) (not e!1874445))))

(declare-fun call!199013 () Bool)

(assert (=> b!2980297 (= res!1228949 call!199013)))

(assert (=> b!2980297 (= e!1874443 e!1874445)))

(declare-fun bm!199006 () Bool)

(declare-fun call!199012 () Bool)

(assert (=> bm!199006 (= call!199013 call!199012)))

(declare-fun b!2980298 () Bool)

(declare-fun e!1874442 () Bool)

(assert (=> b!2980298 (= e!1874442 call!199013)))

(declare-fun d!843523 () Bool)

(declare-fun res!1228947 () Bool)

(assert (=> d!843523 (=> res!1228947 e!1874441)))

(assert (=> d!843523 (= res!1228947 (is-ElementMatch!9298 lt!1037817))))

(assert (=> d!843523 (= (validRegex!4031 lt!1037817) e!1874441)))

(declare-fun bm!199007 () Bool)

(declare-fun call!199011 () Bool)

(assert (=> bm!199007 (= call!199011 (validRegex!4031 (ite c!489510 (regTwo!19109 lt!1037817) (regOne!19108 lt!1037817))))))

(declare-fun b!2980299 () Bool)

(assert (=> b!2980299 (= e!1874445 call!199011)))

(declare-fun b!2980300 () Bool)

(assert (=> b!2980300 (= e!1874446 e!1874442)))

(declare-fun res!1228948 () Bool)

(assert (=> b!2980300 (=> (not res!1228948) (not e!1874442))))

(assert (=> b!2980300 (= res!1228948 call!199011)))

(declare-fun b!2980301 () Bool)

(declare-fun e!1874444 () Bool)

(assert (=> b!2980301 (= e!1874447 e!1874444)))

(declare-fun res!1228946 () Bool)

(assert (=> b!2980301 (= res!1228946 (not (nullable!2989 (reg!9627 lt!1037817))))))

(assert (=> b!2980301 (=> (not res!1228946) (not e!1874444))))

(declare-fun b!2980302 () Bool)

(assert (=> b!2980302 (= e!1874444 call!199012)))

(declare-fun bm!199008 () Bool)

(assert (=> bm!199008 (= call!199012 (validRegex!4031 (ite c!489509 (reg!9627 lt!1037817) (ite c!489510 (regOne!19109 lt!1037817) (regTwo!19108 lt!1037817)))))))

(assert (= (and d!843523 (not res!1228947)) b!2980296))

(assert (= (and b!2980296 c!489509) b!2980301))

(assert (= (and b!2980296 (not c!489509)) b!2980295))

(assert (= (and b!2980301 res!1228946) b!2980302))

(assert (= (and b!2980295 c!489510) b!2980297))

(assert (= (and b!2980295 (not c!489510)) b!2980294))

(assert (= (and b!2980297 res!1228949) b!2980299))

(assert (= (and b!2980294 (not res!1228945)) b!2980300))

(assert (= (and b!2980300 res!1228948) b!2980298))

(assert (= (or b!2980297 b!2980298) bm!199006))

(assert (= (or b!2980299 b!2980300) bm!199007))

(assert (= (or b!2980302 bm!199006) bm!199008))

(declare-fun m!3341881 () Bool)

(assert (=> bm!199007 m!3341881))

(declare-fun m!3341883 () Bool)

(assert (=> b!2980301 m!3341883))

(declare-fun m!3341885 () Bool)

(assert (=> bm!199008 m!3341885))

(assert (=> b!2980000 d!843523))

(declare-fun d!843525 () Bool)

(assert (=> d!843525 (= (isEmpty!19294 s!11993) (is-Nil!35039 s!11993))))

(assert (=> b!2980005 d!843525))

(declare-fun bs!527101 () Bool)

(declare-fun b!2980308 () Bool)

(assert (= bs!527101 (and b!2980308 b!2980004)))

(declare-fun lambda!111111 () Int)

(assert (=> bs!527101 (not (= lambda!111111 lambda!111093))))

(assert (=> bs!527101 (= (= (reg!9627 lt!1037817) lt!1037811) (= lambda!111111 lambda!111094))))

(declare-fun bs!527102 () Bool)

(assert (= bs!527102 (and b!2980308 b!2980219)))

(assert (=> bs!527102 (= (and (= (reg!9627 lt!1037817) (reg!9627 r!17423)) (= lt!1037817 r!17423)) (= lambda!111111 lambda!111107))))

(declare-fun bs!527103 () Bool)

(assert (= bs!527103 (and b!2980308 b!2980223)))

(assert (=> bs!527103 (not (= lambda!111111 lambda!111108))))

(assert (=> b!2980308 true))

(assert (=> b!2980308 true))

(declare-fun bs!527104 () Bool)

(declare-fun b!2980312 () Bool)

(assert (= bs!527104 (and b!2980312 b!2980004)))

(declare-fun lambda!111112 () Int)

(assert (=> bs!527104 (not (= lambda!111112 lambda!111093))))

(declare-fun bs!527105 () Bool)

(assert (= bs!527105 (and b!2980312 b!2980219)))

(assert (=> bs!527105 (not (= lambda!111112 lambda!111107))))

(declare-fun bs!527106 () Bool)

(assert (= bs!527106 (and b!2980312 b!2980308)))

(assert (=> bs!527106 (not (= lambda!111112 lambda!111111))))

(declare-fun bs!527107 () Bool)

(assert (= bs!527107 (and b!2980312 b!2980223)))

(assert (=> bs!527107 (= (and (= (regOne!19108 lt!1037817) (regOne!19108 r!17423)) (= (regTwo!19108 lt!1037817) (regTwo!19108 r!17423))) (= lambda!111112 lambda!111108))))

(assert (=> bs!527104 (not (= lambda!111112 lambda!111094))))

(assert (=> b!2980312 true))

(assert (=> b!2980312 true))

(declare-fun b!2980307 () Bool)

(declare-fun res!1228956 () Bool)

(declare-fun e!1874451 () Bool)

(assert (=> b!2980307 (=> res!1228956 e!1874451)))

(declare-fun call!199014 () Bool)

(assert (=> b!2980307 (= res!1228956 call!199014)))

(declare-fun e!1874450 () Bool)

(assert (=> b!2980307 (= e!1874450 e!1874451)))

(declare-fun call!199015 () Bool)

(assert (=> b!2980308 (= e!1874451 call!199015)))

(declare-fun b!2980309 () Bool)

(declare-fun e!1874452 () Bool)

(assert (=> b!2980309 (= e!1874452 (matchRSpec!1435 (regTwo!19109 lt!1037817) s!11993))))

(declare-fun b!2980310 () Bool)

(declare-fun c!489511 () Bool)

(assert (=> b!2980310 (= c!489511 (is-Union!9298 lt!1037817))))

(declare-fun e!1874455 () Bool)

(declare-fun e!1874454 () Bool)

(assert (=> b!2980310 (= e!1874455 e!1874454)))

(declare-fun bm!199009 () Bool)

(assert (=> bm!199009 (= call!199014 (isEmpty!19294 s!11993))))

(declare-fun b!2980311 () Bool)

(assert (=> b!2980311 (= e!1874454 e!1874450)))

(declare-fun c!489513 () Bool)

(assert (=> b!2980311 (= c!489513 (is-Star!9298 lt!1037817))))

(declare-fun b!2980313 () Bool)

(assert (=> b!2980313 (= e!1874454 e!1874452)))

(declare-fun res!1228954 () Bool)

(assert (=> b!2980313 (= res!1228954 (matchRSpec!1435 (regOne!19109 lt!1037817) s!11993))))

(assert (=> b!2980313 (=> res!1228954 e!1874452)))

(declare-fun b!2980314 () Bool)

(declare-fun e!1874453 () Bool)

(assert (=> b!2980314 (= e!1874453 call!199014)))

(declare-fun b!2980315 () Bool)

(declare-fun e!1874456 () Bool)

(assert (=> b!2980315 (= e!1874453 e!1874456)))

(declare-fun res!1228955 () Bool)

(assert (=> b!2980315 (= res!1228955 (not (is-EmptyLang!9298 lt!1037817)))))

(assert (=> b!2980315 (=> (not res!1228955) (not e!1874456))))

(declare-fun b!2980316 () Bool)

(declare-fun c!489514 () Bool)

(assert (=> b!2980316 (= c!489514 (is-ElementMatch!9298 lt!1037817))))

(assert (=> b!2980316 (= e!1874456 e!1874455)))

(declare-fun b!2980317 () Bool)

(assert (=> b!2980317 (= e!1874455 (= s!11993 (Cons!35039 (c!489438 lt!1037817) Nil!35039)))))

(declare-fun bm!199010 () Bool)

(assert (=> bm!199010 (= call!199015 (Exists!1578 (ite c!489513 lambda!111111 lambda!111112)))))

(declare-fun d!843527 () Bool)

(declare-fun c!489512 () Bool)

(assert (=> d!843527 (= c!489512 (is-EmptyExpr!9298 lt!1037817))))

(assert (=> d!843527 (= (matchRSpec!1435 lt!1037817 s!11993) e!1874453)))

(assert (=> b!2980312 (= e!1874450 call!199015)))

(assert (= (and d!843527 c!489512) b!2980314))

(assert (= (and d!843527 (not c!489512)) b!2980315))

(assert (= (and b!2980315 res!1228955) b!2980316))

(assert (= (and b!2980316 c!489514) b!2980317))

(assert (= (and b!2980316 (not c!489514)) b!2980310))

(assert (= (and b!2980310 c!489511) b!2980313))

(assert (= (and b!2980310 (not c!489511)) b!2980311))

(assert (= (and b!2980313 (not res!1228954)) b!2980309))

(assert (= (and b!2980311 c!489513) b!2980307))

(assert (= (and b!2980311 (not c!489513)) b!2980312))

(assert (= (and b!2980307 (not res!1228956)) b!2980308))

(assert (= (or b!2980308 b!2980312) bm!199010))

(assert (= (or b!2980314 b!2980307) bm!199009))

(declare-fun m!3341887 () Bool)

(assert (=> b!2980309 m!3341887))

(assert (=> bm!199009 m!3341729))

(declare-fun m!3341889 () Bool)

(assert (=> b!2980313 m!3341889))

(declare-fun m!3341891 () Bool)

(assert (=> bm!199010 m!3341891))

(assert (=> b!2980005 d!843527))

(declare-fun d!843529 () Bool)

(assert (=> d!843529 (= (matchR!4180 lt!1037817 s!11993) (matchRSpec!1435 lt!1037817 s!11993))))

(declare-fun lt!1037883 () Unit!48975)

(assert (=> d!843529 (= lt!1037883 (choose!17648 lt!1037817 s!11993))))

(assert (=> d!843529 (validRegex!4031 lt!1037817)))

(assert (=> d!843529 (= (mainMatchTheorem!1435 lt!1037817 s!11993) lt!1037883)))

(declare-fun bs!527108 () Bool)

(assert (= bs!527108 d!843529))

(assert (=> bs!527108 m!3341721))

(assert (=> bs!527108 m!3341731))

(declare-fun m!3341893 () Bool)

(assert (=> bs!527108 m!3341893))

(assert (=> bs!527108 m!3341723))

(assert (=> b!2980005 d!843529))

(declare-fun b!2980318 () Bool)

(declare-fun res!1228962 () Bool)

(declare-fun e!1874460 () Bool)

(assert (=> b!2980318 (=> res!1228962 e!1874460)))

(declare-fun e!1874461 () Bool)

(assert (=> b!2980318 (= res!1228962 e!1874461)))

(declare-fun res!1228960 () Bool)

(assert (=> b!2980318 (=> (not res!1228960) (not e!1874461))))

(declare-fun lt!1037884 () Bool)

(assert (=> b!2980318 (= res!1228960 lt!1037884)))

(declare-fun d!843531 () Bool)

(declare-fun e!1874458 () Bool)

(assert (=> d!843531 e!1874458))

(declare-fun c!489516 () Bool)

(assert (=> d!843531 (= c!489516 (is-EmptyExpr!9298 lt!1037817))))

(declare-fun e!1874459 () Bool)

(assert (=> d!843531 (= lt!1037884 e!1874459)))

(declare-fun c!489515 () Bool)

(assert (=> d!843531 (= c!489515 (isEmpty!19294 s!11993))))

(assert (=> d!843531 (validRegex!4031 lt!1037817)))

(assert (=> d!843531 (= (matchR!4180 lt!1037817 s!11993) lt!1037884)))

(declare-fun b!2980319 () Bool)

(assert (=> b!2980319 (= e!1874459 (nullable!2989 lt!1037817))))

(declare-fun b!2980320 () Bool)

(declare-fun call!199016 () Bool)

(assert (=> b!2980320 (= e!1874458 (= lt!1037884 call!199016))))

(declare-fun b!2980321 () Bool)

(declare-fun res!1228963 () Bool)

(assert (=> b!2980321 (=> res!1228963 e!1874460)))

(assert (=> b!2980321 (= res!1228963 (not (is-ElementMatch!9298 lt!1037817)))))

(declare-fun e!1874463 () Bool)

(assert (=> b!2980321 (= e!1874463 e!1874460)))

(declare-fun b!2980322 () Bool)

(declare-fun res!1228957 () Bool)

(declare-fun e!1874462 () Bool)

(assert (=> b!2980322 (=> res!1228957 e!1874462)))

(assert (=> b!2980322 (= res!1228957 (not (isEmpty!19294 (tail!4874 s!11993))))))

(declare-fun b!2980323 () Bool)

(assert (=> b!2980323 (= e!1874462 (not (= (head!6648 s!11993) (c!489438 lt!1037817))))))

(declare-fun b!2980324 () Bool)

(declare-fun e!1874457 () Bool)

(assert (=> b!2980324 (= e!1874460 e!1874457)))

(declare-fun res!1228958 () Bool)

(assert (=> b!2980324 (=> (not res!1228958) (not e!1874457))))

(assert (=> b!2980324 (= res!1228958 (not lt!1037884))))

(declare-fun b!2980325 () Bool)

(declare-fun res!1228961 () Bool)

(assert (=> b!2980325 (=> (not res!1228961) (not e!1874461))))

(assert (=> b!2980325 (= res!1228961 (not call!199016))))

(declare-fun bm!199011 () Bool)

(assert (=> bm!199011 (= call!199016 (isEmpty!19294 s!11993))))

(declare-fun b!2980326 () Bool)

(assert (=> b!2980326 (= e!1874461 (= (head!6648 s!11993) (c!489438 lt!1037817)))))

(declare-fun b!2980327 () Bool)

(assert (=> b!2980327 (= e!1874457 e!1874462)))

(declare-fun res!1228964 () Bool)

(assert (=> b!2980327 (=> res!1228964 e!1874462)))

(assert (=> b!2980327 (= res!1228964 call!199016)))

(declare-fun b!2980328 () Bool)

(assert (=> b!2980328 (= e!1874459 (matchR!4180 (derivativeStep!2589 lt!1037817 (head!6648 s!11993)) (tail!4874 s!11993)))))

(declare-fun b!2980329 () Bool)

(declare-fun res!1228959 () Bool)

(assert (=> b!2980329 (=> (not res!1228959) (not e!1874461))))

(assert (=> b!2980329 (= res!1228959 (isEmpty!19294 (tail!4874 s!11993)))))

(declare-fun b!2980330 () Bool)

(assert (=> b!2980330 (= e!1874463 (not lt!1037884))))

(declare-fun b!2980331 () Bool)

(assert (=> b!2980331 (= e!1874458 e!1874463)))

(declare-fun c!489517 () Bool)

(assert (=> b!2980331 (= c!489517 (is-EmptyLang!9298 lt!1037817))))

(assert (= (and d!843531 c!489515) b!2980319))

(assert (= (and d!843531 (not c!489515)) b!2980328))

(assert (= (and d!843531 c!489516) b!2980320))

(assert (= (and d!843531 (not c!489516)) b!2980331))

(assert (= (and b!2980331 c!489517) b!2980330))

(assert (= (and b!2980331 (not c!489517)) b!2980321))

(assert (= (and b!2980321 (not res!1228963)) b!2980318))

(assert (= (and b!2980318 res!1228960) b!2980325))

(assert (= (and b!2980325 res!1228961) b!2980329))

(assert (= (and b!2980329 res!1228959) b!2980326))

(assert (= (and b!2980318 (not res!1228962)) b!2980324))

(assert (= (and b!2980324 res!1228958) b!2980327))

(assert (= (and b!2980327 (not res!1228964)) b!2980322))

(assert (= (and b!2980322 (not res!1228957)) b!2980323))

(assert (= (or b!2980320 b!2980325 b!2980327) bm!199011))

(assert (=> b!2980328 m!3341851))

(assert (=> b!2980328 m!3341851))

(declare-fun m!3341895 () Bool)

(assert (=> b!2980328 m!3341895))

(assert (=> b!2980328 m!3341855))

(assert (=> b!2980328 m!3341895))

(assert (=> b!2980328 m!3341855))

(declare-fun m!3341897 () Bool)

(assert (=> b!2980328 m!3341897))

(declare-fun m!3341899 () Bool)

(assert (=> b!2980319 m!3341899))

(assert (=> b!2980322 m!3341855))

(assert (=> b!2980322 m!3341855))

(assert (=> b!2980322 m!3341861))

(assert (=> bm!199011 m!3341729))

(assert (=> b!2980323 m!3341851))

(assert (=> b!2980329 m!3341855))

(assert (=> b!2980329 m!3341855))

(assert (=> b!2980329 m!3341861))

(assert (=> d!843531 m!3341729))

(assert (=> d!843531 m!3341723))

(assert (=> b!2980326 m!3341851))

(assert (=> b!2979999 d!843531))

(declare-fun b!2980356 () Bool)

(declare-fun e!1874479 () Bool)

(declare-fun lt!1037892 () Option!6699)

(declare-fun ++!8364 (List!35163 List!35163) List!35163)

(assert (=> b!2980356 (= e!1874479 (= (++!8364 (_1!20099 (get!10816 lt!1037892)) (_2!20099 (get!10816 lt!1037892))) s!11993))))

(declare-fun b!2980357 () Bool)

(declare-fun res!1228984 () Bool)

(assert (=> b!2980357 (=> (not res!1228984) (not e!1874479))))

(assert (=> b!2980357 (= res!1228984 (matchR!4180 lt!1037811 (_1!20099 (get!10816 lt!1037892))))))

(declare-fun b!2980358 () Bool)

(declare-fun lt!1037893 () Unit!48975)

(declare-fun lt!1037894 () Unit!48975)

(assert (=> b!2980358 (= lt!1037893 lt!1037894)))

(assert (=> b!2980358 (= (++!8364 (++!8364 Nil!35039 (Cons!35039 (h!40459 s!11993) Nil!35039)) (t!234228 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!983 (List!35163 C!18782 List!35163 List!35163) Unit!48975)

(assert (=> b!2980358 (= lt!1037894 (lemmaMoveElementToOtherListKeepsConcatEq!983 Nil!35039 (h!40459 s!11993) (t!234228 s!11993) s!11993))))

(declare-fun e!1874478 () Option!6699)

(assert (=> b!2980358 (= e!1874478 (findConcatSeparation!1093 lt!1037811 lt!1037817 (++!8364 Nil!35039 (Cons!35039 (h!40459 s!11993) Nil!35039)) (t!234228 s!11993) s!11993))))

(declare-fun b!2980359 () Bool)

(declare-fun e!1874476 () Bool)

(assert (=> b!2980359 (= e!1874476 (not (isDefined!5250 lt!1037892)))))

(declare-fun b!2980360 () Bool)

(declare-fun res!1228981 () Bool)

(assert (=> b!2980360 (=> (not res!1228981) (not e!1874479))))

(assert (=> b!2980360 (= res!1228981 (matchR!4180 lt!1037817 (_2!20099 (get!10816 lt!1037892))))))

(declare-fun b!2980361 () Bool)

(declare-fun e!1874477 () Option!6699)

(assert (=> b!2980361 (= e!1874477 (Some!6698 (tuple2!33935 Nil!35039 s!11993)))))

(declare-fun d!843533 () Bool)

(assert (=> d!843533 e!1874476))

(declare-fun res!1228983 () Bool)

(assert (=> d!843533 (=> res!1228983 e!1874476)))

(assert (=> d!843533 (= res!1228983 e!1874479)))

(declare-fun res!1228985 () Bool)

(assert (=> d!843533 (=> (not res!1228985) (not e!1874479))))

(assert (=> d!843533 (= res!1228985 (isDefined!5250 lt!1037892))))

(assert (=> d!843533 (= lt!1037892 e!1874477)))

(declare-fun c!489523 () Bool)

(declare-fun e!1874480 () Bool)

(assert (=> d!843533 (= c!489523 e!1874480)))

(declare-fun res!1228982 () Bool)

(assert (=> d!843533 (=> (not res!1228982) (not e!1874480))))

(assert (=> d!843533 (= res!1228982 (matchR!4180 lt!1037811 Nil!35039))))

(assert (=> d!843533 (validRegex!4031 lt!1037811)))

(assert (=> d!843533 (= (findConcatSeparation!1093 lt!1037811 lt!1037817 Nil!35039 s!11993 s!11993) lt!1037892)))

(declare-fun b!2980362 () Bool)

(assert (=> b!2980362 (= e!1874477 e!1874478)))

(declare-fun c!489522 () Bool)

(assert (=> b!2980362 (= c!489522 (is-Nil!35039 s!11993))))

(declare-fun b!2980363 () Bool)

(assert (=> b!2980363 (= e!1874478 None!6698)))

(declare-fun b!2980364 () Bool)

(assert (=> b!2980364 (= e!1874480 (matchR!4180 lt!1037817 s!11993))))

(assert (= (and d!843533 res!1228982) b!2980364))

(assert (= (and d!843533 c!489523) b!2980361))

(assert (= (and d!843533 (not c!489523)) b!2980362))

(assert (= (and b!2980362 c!489522) b!2980363))

(assert (= (and b!2980362 (not c!489522)) b!2980358))

(assert (= (and d!843533 res!1228985) b!2980357))

(assert (= (and b!2980357 res!1228984) b!2980360))

(assert (= (and b!2980360 res!1228981) b!2980356))

(assert (= (and d!843533 (not res!1228983)) b!2980359))

(declare-fun m!3341907 () Bool)

(assert (=> b!2980357 m!3341907))

(declare-fun m!3341909 () Bool)

(assert (=> b!2980357 m!3341909))

(assert (=> b!2980360 m!3341907))

(declare-fun m!3341911 () Bool)

(assert (=> b!2980360 m!3341911))

(declare-fun m!3341913 () Bool)

(assert (=> d!843533 m!3341913))

(declare-fun m!3341915 () Bool)

(assert (=> d!843533 m!3341915))

(assert (=> d!843533 m!3341879))

(declare-fun m!3341917 () Bool)

(assert (=> b!2980358 m!3341917))

(assert (=> b!2980358 m!3341917))

(declare-fun m!3341919 () Bool)

(assert (=> b!2980358 m!3341919))

(declare-fun m!3341921 () Bool)

(assert (=> b!2980358 m!3341921))

(assert (=> b!2980358 m!3341917))

(declare-fun m!3341923 () Bool)

(assert (=> b!2980358 m!3341923))

(assert (=> b!2980356 m!3341907))

(declare-fun m!3341925 () Bool)

(assert (=> b!2980356 m!3341925))

(assert (=> b!2980364 m!3341721))

(assert (=> b!2980359 m!3341913))

(assert (=> b!2980004 d!843533))

(declare-fun d!843537 () Bool)

(declare-fun choose!17650 (Int) Bool)

(assert (=> d!843537 (= (Exists!1578 lambda!111093) (choose!17650 lambda!111093))))

(declare-fun bs!527111 () Bool)

(assert (= bs!527111 d!843537))

(declare-fun m!3341927 () Bool)

(assert (=> bs!527111 m!3341927))

(assert (=> b!2980004 d!843537))

(declare-fun bs!527112 () Bool)

(declare-fun d!843539 () Bool)

(assert (= bs!527112 (and d!843539 b!2980004)))

(declare-fun lambda!111121 () Int)

(assert (=> bs!527112 (= lambda!111121 lambda!111093)))

(declare-fun bs!527113 () Bool)

(assert (= bs!527113 (and d!843539 b!2980219)))

(assert (=> bs!527113 (not (= lambda!111121 lambda!111107))))

(declare-fun bs!527114 () Bool)

(assert (= bs!527114 (and d!843539 b!2980308)))

(assert (=> bs!527114 (not (= lambda!111121 lambda!111111))))

(declare-fun bs!527115 () Bool)

(assert (= bs!527115 (and d!843539 b!2980223)))

(assert (=> bs!527115 (not (= lambda!111121 lambda!111108))))

(assert (=> bs!527112 (not (= lambda!111121 lambda!111094))))

(declare-fun bs!527116 () Bool)

(assert (= bs!527116 (and d!843539 b!2980312)))

(assert (=> bs!527116 (not (= lambda!111121 lambda!111112))))

(assert (=> d!843539 true))

(assert (=> d!843539 true))

(assert (=> d!843539 true))

(assert (=> d!843539 (= (isDefined!5250 (findConcatSeparation!1093 lt!1037811 lt!1037817 Nil!35039 s!11993 s!11993)) (Exists!1578 lambda!111121))))

(declare-fun lt!1037899 () Unit!48975)

(declare-fun choose!17651 (Regex!9298 Regex!9298 List!35163) Unit!48975)

(assert (=> d!843539 (= lt!1037899 (choose!17651 lt!1037811 lt!1037817 s!11993))))

(assert (=> d!843539 (validRegex!4031 lt!1037811)))

(assert (=> d!843539 (= (lemmaFindConcatSeparationEquivalentToExists!871 lt!1037811 lt!1037817 s!11993) lt!1037899)))

(declare-fun bs!527117 () Bool)

(assert (= bs!527117 d!843539))

(assert (=> bs!527117 m!3341741))

(assert (=> bs!527117 m!3341741))

(declare-fun m!3341929 () Bool)

(assert (=> bs!527117 m!3341929))

(declare-fun m!3341931 () Bool)

(assert (=> bs!527117 m!3341931))

(assert (=> bs!527117 m!3341879))

(declare-fun m!3341933 () Bool)

(assert (=> bs!527117 m!3341933))

(assert (=> b!2980004 d!843539))

(declare-fun d!843541 () Bool)

(declare-fun isEmpty!19296 (Option!6699) Bool)

(assert (=> d!843541 (= (isDefined!5250 lt!1037816) (not (isEmpty!19296 lt!1037816)))))

(declare-fun bs!527118 () Bool)

(assert (= bs!527118 d!843541))

(declare-fun m!3341935 () Bool)

(assert (=> bs!527118 m!3341935))

(assert (=> b!2980004 d!843541))

(declare-fun bs!527124 () Bool)

(declare-fun d!843543 () Bool)

(assert (= bs!527124 (and d!843543 b!2980004)))

(declare-fun lambda!111127 () Int)

(assert (=> bs!527124 (= (= (Star!9298 lt!1037811) lt!1037817) (= lambda!111127 lambda!111093))))

(declare-fun bs!527125 () Bool)

(assert (= bs!527125 (and d!843543 b!2980219)))

(assert (=> bs!527125 (not (= lambda!111127 lambda!111107))))

(declare-fun bs!527126 () Bool)

(assert (= bs!527126 (and d!843543 b!2980308)))

(assert (=> bs!527126 (not (= lambda!111127 lambda!111111))))

(declare-fun bs!527127 () Bool)

(assert (= bs!527127 (and d!843543 b!2980223)))

(assert (=> bs!527127 (not (= lambda!111127 lambda!111108))))

(assert (=> bs!527124 (not (= lambda!111127 lambda!111094))))

(declare-fun bs!527128 () Bool)

(assert (= bs!527128 (and d!843543 b!2980312)))

(assert (=> bs!527128 (not (= lambda!111127 lambda!111112))))

(declare-fun bs!527129 () Bool)

(assert (= bs!527129 (and d!843543 d!843539)))

(assert (=> bs!527129 (= (= (Star!9298 lt!1037811) lt!1037817) (= lambda!111127 lambda!111121))))

(assert (=> d!843543 true))

(assert (=> d!843543 true))

(declare-fun lambda!111128 () Int)

(assert (=> bs!527124 (not (= lambda!111128 lambda!111093))))

(assert (=> bs!527125 (= (and (= lt!1037811 (reg!9627 r!17423)) (= (Star!9298 lt!1037811) r!17423)) (= lambda!111128 lambda!111107))))

(assert (=> bs!527126 (= (and (= lt!1037811 (reg!9627 lt!1037817)) (= (Star!9298 lt!1037811) lt!1037817)) (= lambda!111128 lambda!111111))))

(declare-fun bs!527130 () Bool)

(assert (= bs!527130 d!843543))

(assert (=> bs!527130 (not (= lambda!111128 lambda!111127))))

(assert (=> bs!527127 (not (= lambda!111128 lambda!111108))))

(assert (=> bs!527124 (= (= (Star!9298 lt!1037811) lt!1037817) (= lambda!111128 lambda!111094))))

(assert (=> bs!527128 (not (= lambda!111128 lambda!111112))))

(assert (=> bs!527129 (not (= lambda!111128 lambda!111121))))

(assert (=> d!843543 true))

(assert (=> d!843543 true))

(assert (=> d!843543 (= (Exists!1578 lambda!111127) (Exists!1578 lambda!111128))))

(declare-fun lt!1037903 () Unit!48975)

(declare-fun choose!17652 (Regex!9298 List!35163) Unit!48975)

(assert (=> d!843543 (= lt!1037903 (choose!17652 lt!1037811 s!11993))))

(assert (=> d!843543 (validRegex!4031 lt!1037811)))

(assert (=> d!843543 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!263 lt!1037811 s!11993) lt!1037903)))

(declare-fun m!3341947 () Bool)

(assert (=> bs!527130 m!3341947))

(declare-fun m!3341949 () Bool)

(assert (=> bs!527130 m!3341949))

(declare-fun m!3341951 () Bool)

(assert (=> bs!527130 m!3341951))

(assert (=> bs!527130 m!3341879))

(assert (=> b!2980004 d!843543))

(declare-fun d!843551 () Bool)

(assert (=> d!843551 (= (Exists!1578 lambda!111094) (choose!17650 lambda!111094))))

(declare-fun bs!527131 () Bool)

(assert (= bs!527131 d!843551))

(declare-fun m!3341953 () Bool)

(assert (=> bs!527131 m!3341953))

(assert (=> b!2980004 d!843551))

(declare-fun b!2980394 () Bool)

(declare-fun e!1874491 () Bool)

(declare-fun tp!948952 () Bool)

(declare-fun tp!948948 () Bool)

(assert (=> b!2980394 (= e!1874491 (and tp!948952 tp!948948))))

(declare-fun b!2980395 () Bool)

(declare-fun tp!948949 () Bool)

(assert (=> b!2980395 (= e!1874491 tp!948949)))

(assert (=> b!2980003 (= tp!948917 e!1874491)))

(declare-fun b!2980393 () Bool)

(assert (=> b!2980393 (= e!1874491 tp_is_empty!16159)))

(declare-fun b!2980396 () Bool)

(declare-fun tp!948950 () Bool)

(declare-fun tp!948951 () Bool)

(assert (=> b!2980396 (= e!1874491 (and tp!948950 tp!948951))))

(assert (= (and b!2980003 (is-ElementMatch!9298 (regOne!19108 r!17423))) b!2980393))

(assert (= (and b!2980003 (is-Concat!14619 (regOne!19108 r!17423))) b!2980394))

(assert (= (and b!2980003 (is-Star!9298 (regOne!19108 r!17423))) b!2980395))

(assert (= (and b!2980003 (is-Union!9298 (regOne!19108 r!17423))) b!2980396))

(declare-fun b!2980398 () Bool)

(declare-fun e!1874492 () Bool)

(declare-fun tp!948957 () Bool)

(declare-fun tp!948953 () Bool)

(assert (=> b!2980398 (= e!1874492 (and tp!948957 tp!948953))))

(declare-fun b!2980399 () Bool)

(declare-fun tp!948954 () Bool)

(assert (=> b!2980399 (= e!1874492 tp!948954)))

(assert (=> b!2980003 (= tp!948915 e!1874492)))

(declare-fun b!2980397 () Bool)

(assert (=> b!2980397 (= e!1874492 tp_is_empty!16159)))

(declare-fun b!2980400 () Bool)

(declare-fun tp!948955 () Bool)

(declare-fun tp!948956 () Bool)

(assert (=> b!2980400 (= e!1874492 (and tp!948955 tp!948956))))

(assert (= (and b!2980003 (is-ElementMatch!9298 (regTwo!19108 r!17423))) b!2980397))

(assert (= (and b!2980003 (is-Concat!14619 (regTwo!19108 r!17423))) b!2980398))

(assert (= (and b!2980003 (is-Star!9298 (regTwo!19108 r!17423))) b!2980399))

(assert (= (and b!2980003 (is-Union!9298 (regTwo!19108 r!17423))) b!2980400))

(declare-fun b!2980402 () Bool)

(declare-fun e!1874493 () Bool)

(declare-fun tp!948962 () Bool)

(declare-fun tp!948958 () Bool)

(assert (=> b!2980402 (= e!1874493 (and tp!948962 tp!948958))))

(declare-fun b!2980403 () Bool)

(declare-fun tp!948959 () Bool)

(assert (=> b!2980403 (= e!1874493 tp!948959)))

(assert (=> b!2979997 (= tp!948918 e!1874493)))

(declare-fun b!2980401 () Bool)

(assert (=> b!2980401 (= e!1874493 tp_is_empty!16159)))

(declare-fun b!2980404 () Bool)

(declare-fun tp!948960 () Bool)

(declare-fun tp!948961 () Bool)

(assert (=> b!2980404 (= e!1874493 (and tp!948960 tp!948961))))

(assert (= (and b!2979997 (is-ElementMatch!9298 (reg!9627 r!17423))) b!2980401))

(assert (= (and b!2979997 (is-Concat!14619 (reg!9627 r!17423))) b!2980402))

(assert (= (and b!2979997 (is-Star!9298 (reg!9627 r!17423))) b!2980403))

(assert (= (and b!2979997 (is-Union!9298 (reg!9627 r!17423))) b!2980404))

(declare-fun b!2980409 () Bool)

(declare-fun e!1874496 () Bool)

(declare-fun tp!948965 () Bool)

(assert (=> b!2980409 (= e!1874496 (and tp_is_empty!16159 tp!948965))))

(assert (=> b!2980007 (= tp!948916 e!1874496)))

(assert (= (and b!2980007 (is-Cons!35039 (t!234228 s!11993))) b!2980409))

(declare-fun b!2980411 () Bool)

(declare-fun e!1874497 () Bool)

(declare-fun tp!948970 () Bool)

(declare-fun tp!948966 () Bool)

(assert (=> b!2980411 (= e!1874497 (and tp!948970 tp!948966))))

(declare-fun b!2980412 () Bool)

(declare-fun tp!948967 () Bool)

(assert (=> b!2980412 (= e!1874497 tp!948967)))

(assert (=> b!2980001 (= tp!948914 e!1874497)))

(declare-fun b!2980410 () Bool)

(assert (=> b!2980410 (= e!1874497 tp_is_empty!16159)))

(declare-fun b!2980413 () Bool)

(declare-fun tp!948968 () Bool)

(declare-fun tp!948969 () Bool)

(assert (=> b!2980413 (= e!1874497 (and tp!948968 tp!948969))))

(assert (= (and b!2980001 (is-ElementMatch!9298 (regOne!19109 r!17423))) b!2980410))

(assert (= (and b!2980001 (is-Concat!14619 (regOne!19109 r!17423))) b!2980411))

(assert (= (and b!2980001 (is-Star!9298 (regOne!19109 r!17423))) b!2980412))

(assert (= (and b!2980001 (is-Union!9298 (regOne!19109 r!17423))) b!2980413))

(declare-fun b!2980415 () Bool)

(declare-fun e!1874498 () Bool)

(declare-fun tp!948975 () Bool)

(declare-fun tp!948971 () Bool)

(assert (=> b!2980415 (= e!1874498 (and tp!948975 tp!948971))))

(declare-fun b!2980416 () Bool)

(declare-fun tp!948972 () Bool)

(assert (=> b!2980416 (= e!1874498 tp!948972)))

(assert (=> b!2980001 (= tp!948919 e!1874498)))

(declare-fun b!2980414 () Bool)

(assert (=> b!2980414 (= e!1874498 tp_is_empty!16159)))

(declare-fun b!2980417 () Bool)

(declare-fun tp!948973 () Bool)

(declare-fun tp!948974 () Bool)

(assert (=> b!2980417 (= e!1874498 (and tp!948973 tp!948974))))

(assert (= (and b!2980001 (is-ElementMatch!9298 (regTwo!19109 r!17423))) b!2980414))

(assert (= (and b!2980001 (is-Concat!14619 (regTwo!19109 r!17423))) b!2980415))

(assert (= (and b!2980001 (is-Star!9298 (regTwo!19109 r!17423))) b!2980416))

(assert (= (and b!2980001 (is-Union!9298 (regTwo!19109 r!17423))) b!2980417))

(push 1)

(assert (not bm!198994))

(assert (not b!2980394))

(assert (not bm!199000))

(assert (not bm!198983))

(assert (not b!2980398))

(assert (not bm!199004))

(assert (not b!2980285))

(assert (not b!2980301))

(assert (not b!2980267))

(assert (not bm!198985))

(assert (not bm!199008))

(assert (not b!2980404))

(assert (not b!2980395))

(assert (not d!843503))

(assert (not d!843551))

(assert (not b!2980413))

(assert (not b!2980277))

(assert (not b!2980359))

(assert (not bm!199009))

(assert (not b!2980309))

(assert (not b!2980319))

(assert (not b!2980409))

(assert tp_is_empty!16159)

(assert (not b!2980281))

(assert (not b!2980323))

(assert (not d!843537))

(assert (not b!2980270))

(assert (not bm!198980))

(assert (not d!843533))

(assert (not b!2980357))

(assert (not b!2980329))

(assert (not b!2980415))

(assert (not d!843541))

(assert (not d!843519))

(assert (not b!2980416))

(assert (not b!2980417))

(assert (not b!2980166))

(assert (not b!2980400))

(assert (not bm!199001))

(assert (not b!2980291))

(assert (not b!2980313))

(assert (not b!2980133))

(assert (not b!2980403))

(assert (not bm!199005))

(assert (not bm!198995))

(assert (not bm!199010))

(assert (not d!843539))

(assert (not d!843529))

(assert (not d!843531))

(assert (not b!2980276))

(assert (not b!2980224))

(assert (not b!2980271))

(assert (not b!2980290))

(assert (not d!843543))

(assert (not bm!198986))

(assert (not b!2980358))

(assert (not bm!199011))

(assert (not b!2980128))

(assert (not b!2980326))

(assert (not b!2980356))

(assert (not b!2980399))

(assert (not b!2980402))

(assert (not b!2980274))

(assert (not b!2980411))

(assert (not b!2980288))

(assert (not b!2980412))

(assert (not bm!199007))

(assert (not b!2980364))

(assert (not bm!198984))

(assert (not b!2980360))

(assert (not d!843513))

(assert (not b!2980396))

(assert (not b!2980220))

(assert (not b!2980322))

(assert (not b!2980284))

(assert (not d!843517))

(assert (not b!2980328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

