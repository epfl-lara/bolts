; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!289410 () Bool)

(assert start!289410)

(declare-fun b!3002742 () Bool)

(assert (=> b!3002742 true))

(assert (=> b!3002742 true))

(assert (=> b!3002742 true))

(declare-fun lambda!112194 () Int)

(declare-fun lambda!112193 () Int)

(assert (=> b!3002742 (not (= lambda!112194 lambda!112193))))

(assert (=> b!3002742 true))

(assert (=> b!3002742 true))

(assert (=> b!3002742 true))

(declare-fun e!1886135 () Bool)

(declare-fun e!1886139 () Bool)

(assert (=> b!3002742 (= e!1886135 e!1886139)))

(declare-fun res!1237452 () Bool)

(assert (=> b!3002742 (=> res!1237452 e!1886139)))

(declare-fun lt!1042247 () Bool)

(assert (=> b!3002742 (= res!1237452 (not lt!1042247))))

(declare-fun Exists!1643 (Int) Bool)

(assert (=> b!3002742 (= (Exists!1643 lambda!112193) (Exists!1643 lambda!112194))))

(declare-datatypes ((Unit!49163 0))(
  ( (Unit!49164) )
))
(declare-fun lt!1042242 () Unit!49163)

(declare-datatypes ((C!18934 0))(
  ( (C!18935 (val!11503 Int)) )
))
(declare-datatypes ((Regex!9374 0))(
  ( (ElementMatch!9374 (c!494204 C!18934)) (Concat!14695 (regOne!19260 Regex!9374) (regTwo!19260 Regex!9374)) (EmptyExpr!9374) (Star!9374 (reg!9703 Regex!9374)) (EmptyLang!9374) (Union!9374 (regOne!19261 Regex!9374) (regTwo!19261 Regex!9374)) )
))
(declare-fun lt!1042243 () Regex!9374)

(declare-datatypes ((List!35239 0))(
  ( (Nil!35115) (Cons!35115 (h!40535 C!18934) (t!234304 List!35239)) )
))
(declare-fun s!11993 () List!35239)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!309 (Regex!9374 List!35239) Unit!49163)

(assert (=> b!3002742 (= lt!1042242 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!309 lt!1042243 s!11993))))

(assert (=> b!3002742 (= lt!1042247 (Exists!1643 lambda!112193))))

(declare-datatypes ((tuple2!34042 0))(
  ( (tuple2!34043 (_1!20153 List!35239) (_2!20153 List!35239)) )
))
(declare-datatypes ((Option!6753 0))(
  ( (None!6752) (Some!6752 (v!34886 tuple2!34042)) )
))
(declare-fun lt!1042241 () Option!6753)

(declare-fun isDefined!5304 (Option!6753) Bool)

(assert (=> b!3002742 (= lt!1042247 (isDefined!5304 lt!1042241))))

(declare-fun lt!1042246 () Regex!9374)

(declare-fun findConcatSeparation!1147 (Regex!9374 Regex!9374 List!35239 List!35239 List!35239) Option!6753)

(assert (=> b!3002742 (= lt!1042241 (findConcatSeparation!1147 lt!1042243 lt!1042246 Nil!35115 s!11993 s!11993))))

(declare-fun lt!1042248 () Unit!49163)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!925 (Regex!9374 Regex!9374 List!35239) Unit!49163)

(assert (=> b!3002742 (= lt!1042248 (lemmaFindConcatSeparationEquivalentToExists!925 lt!1042243 lt!1042246 s!11993))))

(declare-fun b!3002743 () Bool)

(declare-fun matchR!4256 (Regex!9374 List!35239) Bool)

(declare-fun get!10908 (Option!6753) tuple2!34042)

(assert (=> b!3002743 (= e!1886139 (matchR!4256 lt!1042243 (_1!20153 (get!10908 lt!1042241))))))

(declare-fun b!3002744 () Bool)

(declare-fun e!1886138 () Bool)

(declare-fun tp_is_empty!16311 () Bool)

(declare-fun tp!954216 () Bool)

(assert (=> b!3002744 (= e!1886138 (and tp_is_empty!16311 tp!954216))))

(declare-fun b!3002745 () Bool)

(declare-fun e!1886134 () Bool)

(declare-fun tp!954214 () Bool)

(assert (=> b!3002745 (= e!1886134 tp!954214)))

(declare-fun b!3002747 () Bool)

(declare-fun tp!954215 () Bool)

(declare-fun tp!954217 () Bool)

(assert (=> b!3002747 (= e!1886134 (and tp!954215 tp!954217))))

(declare-fun b!3002748 () Bool)

(assert (=> b!3002748 (= e!1886134 tp_is_empty!16311)))

(declare-fun b!3002749 () Bool)

(declare-fun e!1886137 () Bool)

(declare-fun e!1886136 () Bool)

(assert (=> b!3002749 (= e!1886137 e!1886136)))

(declare-fun res!1237449 () Bool)

(assert (=> b!3002749 (=> res!1237449 e!1886136)))

(declare-fun isEmptyLang!464 (Regex!9374) Bool)

(assert (=> b!3002749 (= res!1237449 (isEmptyLang!464 lt!1042243))))

(declare-fun r!17423 () Regex!9374)

(declare-fun simplify!365 (Regex!9374) Regex!9374)

(assert (=> b!3002749 (= lt!1042243 (simplify!365 (reg!9703 r!17423)))))

(declare-fun b!3002750 () Bool)

(declare-fun e!1886133 () Bool)

(assert (=> b!3002750 (= e!1886136 e!1886133)))

(declare-fun res!1237451 () Bool)

(assert (=> b!3002750 (=> res!1237451 e!1886133)))

(assert (=> b!3002750 (= res!1237451 (not (matchR!4256 lt!1042246 s!11993)))))

(assert (=> b!3002750 (= lt!1042246 (Star!9374 lt!1042243))))

(declare-fun b!3002751 () Bool)

(assert (=> b!3002751 (= e!1886133 e!1886135)))

(declare-fun res!1237450 () Bool)

(assert (=> b!3002751 (=> res!1237450 e!1886135)))

(declare-fun isEmpty!19388 (List!35239) Bool)

(assert (=> b!3002751 (= res!1237450 (isEmpty!19388 s!11993))))

(declare-fun matchRSpec!1511 (Regex!9374 List!35239) Bool)

(assert (=> b!3002751 (matchRSpec!1511 lt!1042246 s!11993)))

(declare-fun lt!1042244 () Unit!49163)

(declare-fun mainMatchTheorem!1511 (Regex!9374 List!35239) Unit!49163)

(assert (=> b!3002751 (= lt!1042244 (mainMatchTheorem!1511 lt!1042246 s!11993))))

(declare-fun b!3002752 () Bool)

(declare-fun tp!954218 () Bool)

(declare-fun tp!954219 () Bool)

(assert (=> b!3002752 (= e!1886134 (and tp!954218 tp!954219))))

(declare-fun res!1237447 () Bool)

(declare-fun e!1886132 () Bool)

(assert (=> start!289410 (=> (not res!1237447) (not e!1886132))))

(declare-fun validRegex!4107 (Regex!9374) Bool)

(assert (=> start!289410 (= res!1237447 (validRegex!4107 r!17423))))

(assert (=> start!289410 e!1886132))

(assert (=> start!289410 e!1886134))

(assert (=> start!289410 e!1886138))

(declare-fun b!3002746 () Bool)

(assert (=> b!3002746 (= e!1886132 (not e!1886137))))

(declare-fun res!1237448 () Bool)

(assert (=> b!3002746 (=> res!1237448 e!1886137)))

(declare-fun lt!1042249 () Bool)

(assert (=> b!3002746 (= res!1237448 (or lt!1042249 (is-Concat!14695 r!17423) (is-Union!9374 r!17423) (not (is-Star!9374 r!17423))))))

(assert (=> b!3002746 (= lt!1042249 (matchRSpec!1511 r!17423 s!11993))))

(assert (=> b!3002746 (= lt!1042249 (matchR!4256 r!17423 s!11993))))

(declare-fun lt!1042245 () Unit!49163)

(assert (=> b!3002746 (= lt!1042245 (mainMatchTheorem!1511 r!17423 s!11993))))

(assert (= (and start!289410 res!1237447) b!3002746))

(assert (= (and b!3002746 (not res!1237448)) b!3002749))

(assert (= (and b!3002749 (not res!1237449)) b!3002750))

(assert (= (and b!3002750 (not res!1237451)) b!3002751))

(assert (= (and b!3002751 (not res!1237450)) b!3002742))

(assert (= (and b!3002742 (not res!1237452)) b!3002743))

(assert (= (and start!289410 (is-ElementMatch!9374 r!17423)) b!3002748))

(assert (= (and start!289410 (is-Concat!14695 r!17423)) b!3002752))

(assert (= (and start!289410 (is-Star!9374 r!17423)) b!3002745))

(assert (= (and start!289410 (is-Union!9374 r!17423)) b!3002747))

(assert (= (and start!289410 (is-Cons!35115 s!11993)) b!3002744))

(declare-fun m!3353009 () Bool)

(assert (=> b!3002743 m!3353009))

(declare-fun m!3353011 () Bool)

(assert (=> b!3002743 m!3353011))

(declare-fun m!3353013 () Bool)

(assert (=> b!3002746 m!3353013))

(declare-fun m!3353015 () Bool)

(assert (=> b!3002746 m!3353015))

(declare-fun m!3353017 () Bool)

(assert (=> b!3002746 m!3353017))

(declare-fun m!3353019 () Bool)

(assert (=> b!3002751 m!3353019))

(declare-fun m!3353021 () Bool)

(assert (=> b!3002751 m!3353021))

(declare-fun m!3353023 () Bool)

(assert (=> b!3002751 m!3353023))

(declare-fun m!3353025 () Bool)

(assert (=> start!289410 m!3353025))

(declare-fun m!3353027 () Bool)

(assert (=> b!3002742 m!3353027))

(declare-fun m!3353029 () Bool)

(assert (=> b!3002742 m!3353029))

(declare-fun m!3353031 () Bool)

(assert (=> b!3002742 m!3353031))

(declare-fun m!3353033 () Bool)

(assert (=> b!3002742 m!3353033))

(declare-fun m!3353035 () Bool)

(assert (=> b!3002742 m!3353035))

(assert (=> b!3002742 m!3353027))

(declare-fun m!3353037 () Bool)

(assert (=> b!3002742 m!3353037))

(declare-fun m!3353039 () Bool)

(assert (=> b!3002749 m!3353039))

(declare-fun m!3353041 () Bool)

(assert (=> b!3002749 m!3353041))

(declare-fun m!3353043 () Bool)

(assert (=> b!3002750 m!3353043))

(push 1)

(assert (not start!289410))

(assert (not b!3002752))

(assert (not b!3002744))

(assert (not b!3002749))

(assert (not b!3002750))

(assert (not b!3002751))

(assert (not b!3002745))

(assert (not b!3002742))

(assert (not b!3002747))

(assert (not b!3002746))

(assert (not b!3002743))

(assert tp_is_empty!16311)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!528512 () Bool)

(declare-fun b!3002847 () Bool)

(assert (= bs!528512 (and b!3002847 b!3002742)))

(declare-fun lambda!112207 () Int)

(assert (=> bs!528512 (not (= lambda!112207 lambda!112193))))

(assert (=> bs!528512 (= (and (= (reg!9703 r!17423) lt!1042243) (= r!17423 lt!1042246)) (= lambda!112207 lambda!112194))))

(assert (=> b!3002847 true))

(assert (=> b!3002847 true))

(declare-fun bs!528513 () Bool)

(declare-fun b!3002850 () Bool)

(assert (= bs!528513 (and b!3002850 b!3002742)))

(declare-fun lambda!112208 () Int)

(assert (=> bs!528513 (not (= lambda!112208 lambda!112193))))

(assert (=> bs!528513 (not (= lambda!112208 lambda!112194))))

(declare-fun bs!528514 () Bool)

(assert (= bs!528514 (and b!3002850 b!3002847)))

(assert (=> bs!528514 (not (= lambda!112208 lambda!112207))))

(assert (=> b!3002850 true))

(assert (=> b!3002850 true))

(declare-fun bm!201868 () Bool)

(declare-fun call!201873 () Bool)

(assert (=> bm!201868 (= call!201873 (isEmpty!19388 s!11993))))

(declare-fun b!3002840 () Bool)

(declare-fun c!494214 () Bool)

(assert (=> b!3002840 (= c!494214 (is-ElementMatch!9374 r!17423))))

(declare-fun e!1886194 () Bool)

(declare-fun e!1886191 () Bool)

(assert (=> b!3002840 (= e!1886194 e!1886191)))

(declare-fun b!3002841 () Bool)

(assert (=> b!3002841 (= e!1886191 (= s!11993 (Cons!35115 (c!494204 r!17423) Nil!35115)))))

(declare-fun b!3002842 () Bool)

(declare-fun e!1886188 () Bool)

(declare-fun e!1886193 () Bool)

(assert (=> b!3002842 (= e!1886188 e!1886193)))

(declare-fun res!1237502 () Bool)

(assert (=> b!3002842 (= res!1237502 (matchRSpec!1511 (regOne!19261 r!17423) s!11993))))

(assert (=> b!3002842 (=> res!1237502 e!1886193)))

(declare-fun bm!201869 () Bool)

(declare-fun call!201874 () Bool)

(declare-fun c!494217 () Bool)

(assert (=> bm!201869 (= call!201874 (Exists!1643 (ite c!494217 lambda!112207 lambda!112208)))))

(declare-fun b!3002843 () Bool)

(declare-fun c!494215 () Bool)

(assert (=> b!3002843 (= c!494215 (is-Union!9374 r!17423))))

(assert (=> b!3002843 (= e!1886191 e!1886188)))

(declare-fun b!3002844 () Bool)

(declare-fun e!1886190 () Bool)

(assert (=> b!3002844 (= e!1886190 e!1886194)))

(declare-fun res!1237503 () Bool)

(assert (=> b!3002844 (= res!1237503 (not (is-EmptyLang!9374 r!17423)))))

(assert (=> b!3002844 (=> (not res!1237503) (not e!1886194))))

(declare-fun d!846459 () Bool)

(declare-fun c!494216 () Bool)

(assert (=> d!846459 (= c!494216 (is-EmptyExpr!9374 r!17423))))

(assert (=> d!846459 (= (matchRSpec!1511 r!17423 s!11993) e!1886190)))

(declare-fun b!3002845 () Bool)

(assert (=> b!3002845 (= e!1886190 call!201873)))

(declare-fun b!3002846 () Bool)

(assert (=> b!3002846 (= e!1886193 (matchRSpec!1511 (regTwo!19261 r!17423) s!11993))))

(declare-fun e!1886192 () Bool)

(assert (=> b!3002847 (= e!1886192 call!201874)))

(declare-fun b!3002848 () Bool)

(declare-fun res!1237501 () Bool)

(assert (=> b!3002848 (=> res!1237501 e!1886192)))

(assert (=> b!3002848 (= res!1237501 call!201873)))

(declare-fun e!1886189 () Bool)

(assert (=> b!3002848 (= e!1886189 e!1886192)))

(declare-fun b!3002849 () Bool)

(assert (=> b!3002849 (= e!1886188 e!1886189)))

(assert (=> b!3002849 (= c!494217 (is-Star!9374 r!17423))))

(assert (=> b!3002850 (= e!1886189 call!201874)))

(assert (= (and d!846459 c!494216) b!3002845))

(assert (= (and d!846459 (not c!494216)) b!3002844))

(assert (= (and b!3002844 res!1237503) b!3002840))

(assert (= (and b!3002840 c!494214) b!3002841))

(assert (= (and b!3002840 (not c!494214)) b!3002843))

(assert (= (and b!3002843 c!494215) b!3002842))

(assert (= (and b!3002843 (not c!494215)) b!3002849))

(assert (= (and b!3002842 (not res!1237502)) b!3002846))

(assert (= (and b!3002849 c!494217) b!3002848))

(assert (= (and b!3002849 (not c!494217)) b!3002850))

(assert (= (and b!3002848 (not res!1237501)) b!3002847))

(assert (= (or b!3002847 b!3002850) bm!201869))

(assert (= (or b!3002845 b!3002848) bm!201868))

(assert (=> bm!201868 m!3353019))

(declare-fun m!3353081 () Bool)

(assert (=> b!3002842 m!3353081))

(declare-fun m!3353083 () Bool)

(assert (=> bm!201869 m!3353083))

(declare-fun m!3353085 () Bool)

(assert (=> b!3002846 m!3353085))

(assert (=> b!3002746 d!846459))

(declare-fun b!3002883 () Bool)

(declare-fun res!1237528 () Bool)

(declare-fun e!1886217 () Bool)

(assert (=> b!3002883 (=> (not res!1237528) (not e!1886217))))

(declare-fun call!201877 () Bool)

(assert (=> b!3002883 (= res!1237528 (not call!201877))))

(declare-fun b!3002884 () Bool)

(declare-fun res!1237525 () Bool)

(declare-fun e!1886213 () Bool)

(assert (=> b!3002884 (=> res!1237525 e!1886213)))

(assert (=> b!3002884 (= res!1237525 (not (is-ElementMatch!9374 r!17423)))))

(declare-fun e!1886214 () Bool)

(assert (=> b!3002884 (= e!1886214 e!1886213)))

(declare-fun bm!201872 () Bool)

(assert (=> bm!201872 (= call!201877 (isEmpty!19388 s!11993))))

(declare-fun b!3002885 () Bool)

(declare-fun res!1237524 () Bool)

(declare-fun e!1886216 () Bool)

(assert (=> b!3002885 (=> res!1237524 e!1886216)))

(declare-fun tail!4916 (List!35239) List!35239)

(assert (=> b!3002885 (= res!1237524 (not (isEmpty!19388 (tail!4916 s!11993))))))

(declare-fun b!3002886 () Bool)

(declare-fun res!1237531 () Bool)

(assert (=> b!3002886 (=> res!1237531 e!1886213)))

(assert (=> b!3002886 (= res!1237531 e!1886217)))

(declare-fun res!1237526 () Bool)

(assert (=> b!3002886 (=> (not res!1237526) (not e!1886217))))

(declare-fun lt!1042281 () Bool)

(assert (=> b!3002886 (= res!1237526 lt!1042281)))

(declare-fun b!3002887 () Bool)

(declare-fun e!1886212 () Bool)

(assert (=> b!3002887 (= e!1886212 (= lt!1042281 call!201877))))

(declare-fun b!3002888 () Bool)

(declare-fun res!1237529 () Bool)

(assert (=> b!3002888 (=> (not res!1237529) (not e!1886217))))

(assert (=> b!3002888 (= res!1237529 (isEmpty!19388 (tail!4916 s!11993)))))

(declare-fun b!3002889 () Bool)

(declare-fun e!1886211 () Bool)

(declare-fun nullable!3033 (Regex!9374) Bool)

(assert (=> b!3002889 (= e!1886211 (nullable!3033 r!17423))))

(declare-fun b!3002890 () Bool)

(declare-fun e!1886215 () Bool)

(assert (=> b!3002890 (= e!1886213 e!1886215)))

(declare-fun res!1237530 () Bool)

(assert (=> b!3002890 (=> (not res!1237530) (not e!1886215))))

(assert (=> b!3002890 (= res!1237530 (not lt!1042281))))

(declare-fun b!3002891 () Bool)

(assert (=> b!3002891 (= e!1886214 (not lt!1042281))))

(declare-fun d!846463 () Bool)

(assert (=> d!846463 e!1886212))

(declare-fun c!494224 () Bool)

(assert (=> d!846463 (= c!494224 (is-EmptyExpr!9374 r!17423))))

(assert (=> d!846463 (= lt!1042281 e!1886211)))

(declare-fun c!494225 () Bool)

(assert (=> d!846463 (= c!494225 (isEmpty!19388 s!11993))))

(assert (=> d!846463 (validRegex!4107 r!17423)))

(assert (=> d!846463 (= (matchR!4256 r!17423 s!11993) lt!1042281)))

(declare-fun b!3002892 () Bool)

(assert (=> b!3002892 (= e!1886215 e!1886216)))

(declare-fun res!1237527 () Bool)

(assert (=> b!3002892 (=> res!1237527 e!1886216)))

(assert (=> b!3002892 (= res!1237527 call!201877)))

(declare-fun b!3002893 () Bool)

(declare-fun derivativeStep!2631 (Regex!9374 C!18934) Regex!9374)

(declare-fun head!6690 (List!35239) C!18934)

(assert (=> b!3002893 (= e!1886211 (matchR!4256 (derivativeStep!2631 r!17423 (head!6690 s!11993)) (tail!4916 s!11993)))))

(declare-fun b!3002894 () Bool)

(assert (=> b!3002894 (= e!1886217 (= (head!6690 s!11993) (c!494204 r!17423)))))

(declare-fun b!3002895 () Bool)

(assert (=> b!3002895 (= e!1886216 (not (= (head!6690 s!11993) (c!494204 r!17423))))))

(declare-fun b!3002896 () Bool)

(assert (=> b!3002896 (= e!1886212 e!1886214)))

(declare-fun c!494226 () Bool)

(assert (=> b!3002896 (= c!494226 (is-EmptyLang!9374 r!17423))))

(assert (= (and d!846463 c!494225) b!3002889))

(assert (= (and d!846463 (not c!494225)) b!3002893))

(assert (= (and d!846463 c!494224) b!3002887))

(assert (= (and d!846463 (not c!494224)) b!3002896))

(assert (= (and b!3002896 c!494226) b!3002891))

(assert (= (and b!3002896 (not c!494226)) b!3002884))

(assert (= (and b!3002884 (not res!1237525)) b!3002886))

(assert (= (and b!3002886 res!1237526) b!3002883))

(assert (= (and b!3002883 res!1237528) b!3002888))

(assert (= (and b!3002888 res!1237529) b!3002894))

(assert (= (and b!3002886 (not res!1237531)) b!3002890))

(assert (= (and b!3002890 res!1237530) b!3002892))

(assert (= (and b!3002892 (not res!1237527)) b!3002885))

(assert (= (and b!3002885 (not res!1237524)) b!3002895))

(assert (= (or b!3002887 b!3002883 b!3002892) bm!201872))

(declare-fun m!3353087 () Bool)

(assert (=> b!3002895 m!3353087))

(assert (=> d!846463 m!3353019))

(assert (=> d!846463 m!3353025))

(declare-fun m!3353089 () Bool)

(assert (=> b!3002889 m!3353089))

(declare-fun m!3353091 () Bool)

(assert (=> b!3002888 m!3353091))

(assert (=> b!3002888 m!3353091))

(declare-fun m!3353093 () Bool)

(assert (=> b!3002888 m!3353093))

(assert (=> b!3002885 m!3353091))

(assert (=> b!3002885 m!3353091))

(assert (=> b!3002885 m!3353093))

(assert (=> bm!201872 m!3353019))

(assert (=> b!3002893 m!3353087))

(assert (=> b!3002893 m!3353087))

(declare-fun m!3353095 () Bool)

(assert (=> b!3002893 m!3353095))

(assert (=> b!3002893 m!3353091))

(assert (=> b!3002893 m!3353095))

(assert (=> b!3002893 m!3353091))

(declare-fun m!3353097 () Bool)

(assert (=> b!3002893 m!3353097))

(assert (=> b!3002894 m!3353087))

(assert (=> b!3002746 d!846463))

(declare-fun d!846465 () Bool)

(assert (=> d!846465 (= (matchR!4256 r!17423 s!11993) (matchRSpec!1511 r!17423 s!11993))))

(declare-fun lt!1042284 () Unit!49163)

(declare-fun choose!17808 (Regex!9374 List!35239) Unit!49163)

(assert (=> d!846465 (= lt!1042284 (choose!17808 r!17423 s!11993))))

(assert (=> d!846465 (validRegex!4107 r!17423)))

(assert (=> d!846465 (= (mainMatchTheorem!1511 r!17423 s!11993) lt!1042284)))

(declare-fun bs!528515 () Bool)

(assert (= bs!528515 d!846465))

(assert (=> bs!528515 m!3353015))

(assert (=> bs!528515 m!3353013))

(declare-fun m!3353099 () Bool)

(assert (=> bs!528515 m!3353099))

(assert (=> bs!528515 m!3353025))

(assert (=> b!3002746 d!846465))

(declare-fun b!3002921 () Bool)

(declare-fun e!1886240 () Bool)

(declare-fun e!1886237 () Bool)

(assert (=> b!3002921 (= e!1886240 e!1886237)))

(declare-fun c!494232 () Bool)

(assert (=> b!3002921 (= c!494232 (is-Union!9374 r!17423))))

(declare-fun c!494231 () Bool)

(declare-fun call!201886 () Bool)

(declare-fun bm!201879 () Bool)

(assert (=> bm!201879 (= call!201886 (validRegex!4107 (ite c!494231 (reg!9703 r!17423) (ite c!494232 (regTwo!19261 r!17423) (regOne!19260 r!17423)))))))

(declare-fun b!3002922 () Bool)

(declare-fun e!1886238 () Bool)

(assert (=> b!3002922 (= e!1886238 e!1886240)))

(assert (=> b!3002922 (= c!494231 (is-Star!9374 r!17423))))

(declare-fun d!846467 () Bool)

(declare-fun res!1237548 () Bool)

(assert (=> d!846467 (=> res!1237548 e!1886238)))

(assert (=> d!846467 (= res!1237548 (is-ElementMatch!9374 r!17423))))

(assert (=> d!846467 (= (validRegex!4107 r!17423) e!1886238)))

(declare-fun b!3002923 () Bool)

(declare-fun e!1886235 () Bool)

(declare-fun call!201884 () Bool)

(assert (=> b!3002923 (= e!1886235 call!201884)))

(declare-fun b!3002924 () Bool)

(declare-fun res!1237549 () Bool)

(assert (=> b!3002924 (=> (not res!1237549) (not e!1886235))))

(declare-fun call!201885 () Bool)

(assert (=> b!3002924 (= res!1237549 call!201885)))

(assert (=> b!3002924 (= e!1886237 e!1886235)))

(declare-fun bm!201880 () Bool)

(assert (=> bm!201880 (= call!201885 (validRegex!4107 (ite c!494232 (regOne!19261 r!17423) (regTwo!19260 r!17423))))))

(declare-fun bm!201881 () Bool)

(assert (=> bm!201881 (= call!201884 call!201886)))

(declare-fun b!3002925 () Bool)

(declare-fun res!1237551 () Bool)

(declare-fun e!1886236 () Bool)

(assert (=> b!3002925 (=> res!1237551 e!1886236)))

(assert (=> b!3002925 (= res!1237551 (not (is-Concat!14695 r!17423)))))

(assert (=> b!3002925 (= e!1886237 e!1886236)))

(declare-fun b!3002926 () Bool)

(declare-fun e!1886234 () Bool)

(assert (=> b!3002926 (= e!1886236 e!1886234)))

(declare-fun res!1237550 () Bool)

(assert (=> b!3002926 (=> (not res!1237550) (not e!1886234))))

(assert (=> b!3002926 (= res!1237550 call!201884)))

(declare-fun b!3002927 () Bool)

(declare-fun e!1886239 () Bool)

(assert (=> b!3002927 (= e!1886239 call!201886)))

(declare-fun b!3002928 () Bool)

(assert (=> b!3002928 (= e!1886240 e!1886239)))

(declare-fun res!1237552 () Bool)

(assert (=> b!3002928 (= res!1237552 (not (nullable!3033 (reg!9703 r!17423))))))

(assert (=> b!3002928 (=> (not res!1237552) (not e!1886239))))

(declare-fun b!3002929 () Bool)

(assert (=> b!3002929 (= e!1886234 call!201885)))

(assert (= (and d!846467 (not res!1237548)) b!3002922))

(assert (= (and b!3002922 c!494231) b!3002928))

(assert (= (and b!3002922 (not c!494231)) b!3002921))

(assert (= (and b!3002928 res!1237552) b!3002927))

(assert (= (and b!3002921 c!494232) b!3002924))

(assert (= (and b!3002921 (not c!494232)) b!3002925))

(assert (= (and b!3002924 res!1237549) b!3002923))

(assert (= (and b!3002925 (not res!1237551)) b!3002926))

(assert (= (and b!3002926 res!1237550) b!3002929))

(assert (= (or b!3002924 b!3002929) bm!201880))

(assert (= (or b!3002923 b!3002926) bm!201881))

(assert (= (or b!3002927 bm!201881) bm!201879))

(declare-fun m!3353101 () Bool)

(assert (=> bm!201879 m!3353101))

(declare-fun m!3353103 () Bool)

(assert (=> bm!201880 m!3353103))

(declare-fun m!3353105 () Bool)

(assert (=> b!3002928 m!3353105))

(assert (=> start!289410 d!846467))

(declare-fun d!846469 () Bool)

(declare-fun choose!17809 (Int) Bool)

(assert (=> d!846469 (= (Exists!1643 lambda!112194) (choose!17809 lambda!112194))))

(declare-fun bs!528517 () Bool)

(assert (= bs!528517 d!846469))

(declare-fun m!3353107 () Bool)

(assert (=> bs!528517 m!3353107))

(assert (=> b!3002742 d!846469))

(declare-fun b!3002948 () Bool)

(declare-fun e!1886251 () Bool)

(assert (=> b!3002948 (= e!1886251 (matchR!4256 lt!1042246 s!11993))))

(declare-fun b!3002949 () Bool)

(declare-fun res!1237563 () Bool)

(declare-fun e!1886254 () Bool)

(assert (=> b!3002949 (=> (not res!1237563) (not e!1886254))))

(declare-fun lt!1042296 () Option!6753)

(assert (=> b!3002949 (= res!1237563 (matchR!4256 lt!1042243 (_1!20153 (get!10908 lt!1042296))))))

(declare-fun d!846471 () Bool)

(declare-fun e!1886253 () Bool)

(assert (=> d!846471 e!1886253))

(declare-fun res!1237564 () Bool)

(assert (=> d!846471 (=> res!1237564 e!1886253)))

(assert (=> d!846471 (= res!1237564 e!1886254)))

(declare-fun res!1237567 () Bool)

(assert (=> d!846471 (=> (not res!1237567) (not e!1886254))))

(assert (=> d!846471 (= res!1237567 (isDefined!5304 lt!1042296))))

(declare-fun e!1886252 () Option!6753)

(assert (=> d!846471 (= lt!1042296 e!1886252)))

(declare-fun c!494237 () Bool)

(assert (=> d!846471 (= c!494237 e!1886251)))

(declare-fun res!1237566 () Bool)

(assert (=> d!846471 (=> (not res!1237566) (not e!1886251))))

(assert (=> d!846471 (= res!1237566 (matchR!4256 lt!1042243 Nil!35115))))

(assert (=> d!846471 (validRegex!4107 lt!1042243)))

(assert (=> d!846471 (= (findConcatSeparation!1147 lt!1042243 lt!1042246 Nil!35115 s!11993 s!11993) lt!1042296)))

(declare-fun b!3002950 () Bool)

(declare-fun ++!8402 (List!35239 List!35239) List!35239)

(assert (=> b!3002950 (= e!1886254 (= (++!8402 (_1!20153 (get!10908 lt!1042296)) (_2!20153 (get!10908 lt!1042296))) s!11993))))

(declare-fun b!3002951 () Bool)

(declare-fun e!1886255 () Option!6753)

(assert (=> b!3002951 (= e!1886252 e!1886255)))

(declare-fun c!494238 () Bool)

(assert (=> b!3002951 (= c!494238 (is-Nil!35115 s!11993))))

(declare-fun b!3002952 () Bool)

(declare-fun res!1237565 () Bool)

(assert (=> b!3002952 (=> (not res!1237565) (not e!1886254))))

(assert (=> b!3002952 (= res!1237565 (matchR!4256 lt!1042246 (_2!20153 (get!10908 lt!1042296))))))

(declare-fun b!3002953 () Bool)

(assert (=> b!3002953 (= e!1886253 (not (isDefined!5304 lt!1042296)))))

(declare-fun b!3002954 () Bool)

(declare-fun lt!1042295 () Unit!49163)

(declare-fun lt!1042294 () Unit!49163)

(assert (=> b!3002954 (= lt!1042295 lt!1042294)))

(assert (=> b!3002954 (= (++!8402 (++!8402 Nil!35115 (Cons!35115 (h!40535 s!11993) Nil!35115)) (t!234304 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1013 (List!35239 C!18934 List!35239 List!35239) Unit!49163)

(assert (=> b!3002954 (= lt!1042294 (lemmaMoveElementToOtherListKeepsConcatEq!1013 Nil!35115 (h!40535 s!11993) (t!234304 s!11993) s!11993))))

(assert (=> b!3002954 (= e!1886255 (findConcatSeparation!1147 lt!1042243 lt!1042246 (++!8402 Nil!35115 (Cons!35115 (h!40535 s!11993) Nil!35115)) (t!234304 s!11993) s!11993))))

(declare-fun b!3002955 () Bool)

(assert (=> b!3002955 (= e!1886255 None!6752)))

(declare-fun b!3002956 () Bool)

(assert (=> b!3002956 (= e!1886252 (Some!6752 (tuple2!34043 Nil!35115 s!11993)))))

(assert (= (and d!846471 res!1237566) b!3002948))

(assert (= (and d!846471 c!494237) b!3002956))

(assert (= (and d!846471 (not c!494237)) b!3002951))

(assert (= (and b!3002951 c!494238) b!3002955))

(assert (= (and b!3002951 (not c!494238)) b!3002954))

(assert (= (and d!846471 res!1237567) b!3002949))

(assert (= (and b!3002949 res!1237563) b!3002952))

(assert (= (and b!3002952 res!1237565) b!3002950))

(assert (= (and d!846471 (not res!1237564)) b!3002953))

(declare-fun m!3353119 () Bool)

(assert (=> b!3002952 m!3353119))

(declare-fun m!3353121 () Bool)

(assert (=> b!3002952 m!3353121))

(assert (=> b!3002949 m!3353119))

(declare-fun m!3353123 () Bool)

(assert (=> b!3002949 m!3353123))

(declare-fun m!3353125 () Bool)

(assert (=> d!846471 m!3353125))

(declare-fun m!3353127 () Bool)

(assert (=> d!846471 m!3353127))

(declare-fun m!3353129 () Bool)

(assert (=> d!846471 m!3353129))

(declare-fun m!3353131 () Bool)

(assert (=> b!3002954 m!3353131))

(assert (=> b!3002954 m!3353131))

(declare-fun m!3353133 () Bool)

(assert (=> b!3002954 m!3353133))

(declare-fun m!3353135 () Bool)

(assert (=> b!3002954 m!3353135))

(assert (=> b!3002954 m!3353131))

(declare-fun m!3353137 () Bool)

(assert (=> b!3002954 m!3353137))

(assert (=> b!3002948 m!3353043))

(assert (=> b!3002953 m!3353125))

(assert (=> b!3002950 m!3353119))

(declare-fun m!3353139 () Bool)

(assert (=> b!3002950 m!3353139))

(assert (=> b!3002742 d!846471))

(declare-fun d!846477 () Bool)

(declare-fun isEmpty!19390 (Option!6753) Bool)

(assert (=> d!846477 (= (isDefined!5304 lt!1042241) (not (isEmpty!19390 lt!1042241)))))

(declare-fun bs!528520 () Bool)

(assert (= bs!528520 d!846477))

(declare-fun m!3353141 () Bool)

(assert (=> bs!528520 m!3353141))

(assert (=> b!3002742 d!846477))

(declare-fun d!846479 () Bool)

(assert (=> d!846479 (= (Exists!1643 lambda!112193) (choose!17809 lambda!112193))))

(declare-fun bs!528521 () Bool)

(assert (= bs!528521 d!846479))

(declare-fun m!3353143 () Bool)

(assert (=> bs!528521 m!3353143))

(assert (=> b!3002742 d!846479))

(declare-fun bs!528525 () Bool)

(declare-fun d!846481 () Bool)

(assert (= bs!528525 (and d!846481 b!3002742)))

(declare-fun lambda!112220 () Int)

(assert (=> bs!528525 (= lambda!112220 lambda!112193)))

(assert (=> bs!528525 (not (= lambda!112220 lambda!112194))))

(declare-fun bs!528526 () Bool)

(assert (= bs!528526 (and d!846481 b!3002847)))

(assert (=> bs!528526 (not (= lambda!112220 lambda!112207))))

(declare-fun bs!528527 () Bool)

(assert (= bs!528527 (and d!846481 b!3002850)))

(assert (=> bs!528527 (not (= lambda!112220 lambda!112208))))

(assert (=> d!846481 true))

(assert (=> d!846481 true))

(assert (=> d!846481 true))

(assert (=> d!846481 (= (isDefined!5304 (findConcatSeparation!1147 lt!1042243 lt!1042246 Nil!35115 s!11993 s!11993)) (Exists!1643 lambda!112220))))

(declare-fun lt!1042300 () Unit!49163)

(declare-fun choose!17810 (Regex!9374 Regex!9374 List!35239) Unit!49163)

(assert (=> d!846481 (= lt!1042300 (choose!17810 lt!1042243 lt!1042246 s!11993))))

(assert (=> d!846481 (validRegex!4107 lt!1042243)))

(assert (=> d!846481 (= (lemmaFindConcatSeparationEquivalentToExists!925 lt!1042243 lt!1042246 s!11993) lt!1042300)))

(declare-fun bs!528528 () Bool)

(assert (= bs!528528 d!846481))

(declare-fun m!3353151 () Bool)

(assert (=> bs!528528 m!3353151))

(declare-fun m!3353153 () Bool)

(assert (=> bs!528528 m!3353153))

(assert (=> bs!528528 m!3353129))

(assert (=> bs!528528 m!3353035))

(assert (=> bs!528528 m!3353035))

(declare-fun m!3353155 () Bool)

(assert (=> bs!528528 m!3353155))

(assert (=> b!3002742 d!846481))

(declare-fun bs!528529 () Bool)

(declare-fun d!846485 () Bool)

(assert (= bs!528529 (and d!846485 b!3002742)))

(declare-fun lambda!112225 () Int)

(assert (=> bs!528529 (= (= (Star!9374 lt!1042243) lt!1042246) (= lambda!112225 lambda!112193))))

(declare-fun bs!528530 () Bool)

(assert (= bs!528530 (and d!846485 d!846481)))

(assert (=> bs!528530 (= (= (Star!9374 lt!1042243) lt!1042246) (= lambda!112225 lambda!112220))))

(assert (=> bs!528529 (not (= lambda!112225 lambda!112194))))

(declare-fun bs!528531 () Bool)

(assert (= bs!528531 (and d!846485 b!3002850)))

(assert (=> bs!528531 (not (= lambda!112225 lambda!112208))))

(declare-fun bs!528532 () Bool)

(assert (= bs!528532 (and d!846485 b!3002847)))

(assert (=> bs!528532 (not (= lambda!112225 lambda!112207))))

(assert (=> d!846485 true))

(assert (=> d!846485 true))

(declare-fun lambda!112226 () Int)

(assert (=> bs!528529 (not (= lambda!112226 lambda!112193))))

(assert (=> bs!528530 (not (= lambda!112226 lambda!112220))))

(assert (=> bs!528529 (= (= (Star!9374 lt!1042243) lt!1042246) (= lambda!112226 lambda!112194))))

(assert (=> bs!528531 (not (= lambda!112226 lambda!112208))))

(declare-fun bs!528533 () Bool)

(assert (= bs!528533 d!846485))

(assert (=> bs!528533 (not (= lambda!112226 lambda!112225))))

(assert (=> bs!528532 (= (and (= lt!1042243 (reg!9703 r!17423)) (= (Star!9374 lt!1042243) r!17423)) (= lambda!112226 lambda!112207))))

(assert (=> d!846485 true))

(assert (=> d!846485 true))

(assert (=> d!846485 (= (Exists!1643 lambda!112225) (Exists!1643 lambda!112226))))

(declare-fun lt!1042303 () Unit!49163)

(declare-fun choose!17811 (Regex!9374 List!35239) Unit!49163)

(assert (=> d!846485 (= lt!1042303 (choose!17811 lt!1042243 s!11993))))

(assert (=> d!846485 (validRegex!4107 lt!1042243)))

(assert (=> d!846485 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!309 lt!1042243 s!11993) lt!1042303)))

(declare-fun m!3353157 () Bool)

(assert (=> bs!528533 m!3353157))

(declare-fun m!3353159 () Bool)

(assert (=> bs!528533 m!3353159))

(declare-fun m!3353161 () Bool)

(assert (=> bs!528533 m!3353161))

(assert (=> bs!528533 m!3353129))

(assert (=> b!3002742 d!846485))

(declare-fun b!3002975 () Bool)

(declare-fun res!1237590 () Bool)

(declare-fun e!1886270 () Bool)

(assert (=> b!3002975 (=> (not res!1237590) (not e!1886270))))

(declare-fun call!201887 () Bool)

(assert (=> b!3002975 (= res!1237590 (not call!201887))))

(declare-fun b!3002976 () Bool)

(declare-fun res!1237587 () Bool)

(declare-fun e!1886266 () Bool)

(assert (=> b!3002976 (=> res!1237587 e!1886266)))

(assert (=> b!3002976 (= res!1237587 (not (is-ElementMatch!9374 lt!1042243)))))

(declare-fun e!1886267 () Bool)

(assert (=> b!3002976 (= e!1886267 e!1886266)))

(declare-fun bm!201882 () Bool)

(assert (=> bm!201882 (= call!201887 (isEmpty!19388 (_1!20153 (get!10908 lt!1042241))))))

(declare-fun b!3002977 () Bool)

(declare-fun res!1237586 () Bool)

(declare-fun e!1886269 () Bool)

(assert (=> b!3002977 (=> res!1237586 e!1886269)))

(assert (=> b!3002977 (= res!1237586 (not (isEmpty!19388 (tail!4916 (_1!20153 (get!10908 lt!1042241))))))))

(declare-fun b!3002978 () Bool)

(declare-fun res!1237593 () Bool)

(assert (=> b!3002978 (=> res!1237593 e!1886266)))

(assert (=> b!3002978 (= res!1237593 e!1886270)))

(declare-fun res!1237588 () Bool)

(assert (=> b!3002978 (=> (not res!1237588) (not e!1886270))))

(declare-fun lt!1042304 () Bool)

(assert (=> b!3002978 (= res!1237588 lt!1042304)))

(declare-fun b!3002979 () Bool)

(declare-fun e!1886265 () Bool)

(assert (=> b!3002979 (= e!1886265 (= lt!1042304 call!201887))))

(declare-fun b!3002980 () Bool)

(declare-fun res!1237591 () Bool)

(assert (=> b!3002980 (=> (not res!1237591) (not e!1886270))))

(assert (=> b!3002980 (= res!1237591 (isEmpty!19388 (tail!4916 (_1!20153 (get!10908 lt!1042241)))))))

(declare-fun b!3002981 () Bool)

(declare-fun e!1886264 () Bool)

(assert (=> b!3002981 (= e!1886264 (nullable!3033 lt!1042243))))

(declare-fun b!3002982 () Bool)

(declare-fun e!1886268 () Bool)

(assert (=> b!3002982 (= e!1886266 e!1886268)))

(declare-fun res!1237592 () Bool)

(assert (=> b!3002982 (=> (not res!1237592) (not e!1886268))))

(assert (=> b!3002982 (= res!1237592 (not lt!1042304))))

(declare-fun b!3002983 () Bool)

(assert (=> b!3002983 (= e!1886267 (not lt!1042304))))

(declare-fun d!846487 () Bool)

(assert (=> d!846487 e!1886265))

(declare-fun c!494239 () Bool)

(assert (=> d!846487 (= c!494239 (is-EmptyExpr!9374 lt!1042243))))

(assert (=> d!846487 (= lt!1042304 e!1886264)))

(declare-fun c!494240 () Bool)

(assert (=> d!846487 (= c!494240 (isEmpty!19388 (_1!20153 (get!10908 lt!1042241))))))

(assert (=> d!846487 (validRegex!4107 lt!1042243)))

(assert (=> d!846487 (= (matchR!4256 lt!1042243 (_1!20153 (get!10908 lt!1042241))) lt!1042304)))

(declare-fun b!3002984 () Bool)

(assert (=> b!3002984 (= e!1886268 e!1886269)))

(declare-fun res!1237589 () Bool)

(assert (=> b!3002984 (=> res!1237589 e!1886269)))

(assert (=> b!3002984 (= res!1237589 call!201887)))

(declare-fun b!3002985 () Bool)

(assert (=> b!3002985 (= e!1886264 (matchR!4256 (derivativeStep!2631 lt!1042243 (head!6690 (_1!20153 (get!10908 lt!1042241)))) (tail!4916 (_1!20153 (get!10908 lt!1042241)))))))

(declare-fun b!3002986 () Bool)

(assert (=> b!3002986 (= e!1886270 (= (head!6690 (_1!20153 (get!10908 lt!1042241))) (c!494204 lt!1042243)))))

(declare-fun b!3002987 () Bool)

(assert (=> b!3002987 (= e!1886269 (not (= (head!6690 (_1!20153 (get!10908 lt!1042241))) (c!494204 lt!1042243))))))

(declare-fun b!3002988 () Bool)

(assert (=> b!3002988 (= e!1886265 e!1886267)))

(declare-fun c!494241 () Bool)

(assert (=> b!3002988 (= c!494241 (is-EmptyLang!9374 lt!1042243))))

(assert (= (and d!846487 c!494240) b!3002981))

(assert (= (and d!846487 (not c!494240)) b!3002985))

(assert (= (and d!846487 c!494239) b!3002979))

(assert (= (and d!846487 (not c!494239)) b!3002988))

(assert (= (and b!3002988 c!494241) b!3002983))

(assert (= (and b!3002988 (not c!494241)) b!3002976))

(assert (= (and b!3002976 (not res!1237587)) b!3002978))

(assert (= (and b!3002978 res!1237588) b!3002975))

(assert (= (and b!3002975 res!1237590) b!3002980))

(assert (= (and b!3002980 res!1237591) b!3002986))

(assert (= (and b!3002978 (not res!1237593)) b!3002982))

(assert (= (and b!3002982 res!1237592) b!3002984))

(assert (= (and b!3002984 (not res!1237589)) b!3002977))

(assert (= (and b!3002977 (not res!1237586)) b!3002987))

(assert (= (or b!3002979 b!3002975 b!3002984) bm!201882))

(declare-fun m!3353163 () Bool)

(assert (=> b!3002987 m!3353163))

(declare-fun m!3353165 () Bool)

(assert (=> d!846487 m!3353165))

(assert (=> d!846487 m!3353129))

(declare-fun m!3353167 () Bool)

(assert (=> b!3002981 m!3353167))

(declare-fun m!3353169 () Bool)

(assert (=> b!3002980 m!3353169))

(assert (=> b!3002980 m!3353169))

(declare-fun m!3353171 () Bool)

(assert (=> b!3002980 m!3353171))

(assert (=> b!3002977 m!3353169))

(assert (=> b!3002977 m!3353169))

(assert (=> b!3002977 m!3353171))

(assert (=> bm!201882 m!3353165))

(assert (=> b!3002985 m!3353163))

(assert (=> b!3002985 m!3353163))

(declare-fun m!3353173 () Bool)

(assert (=> b!3002985 m!3353173))

(assert (=> b!3002985 m!3353169))

(assert (=> b!3002985 m!3353173))

(assert (=> b!3002985 m!3353169))

(declare-fun m!3353175 () Bool)

(assert (=> b!3002985 m!3353175))

(assert (=> b!3002986 m!3353163))

(assert (=> b!3002743 d!846487))

(declare-fun d!846489 () Bool)

(assert (=> d!846489 (= (get!10908 lt!1042241) (v!34886 lt!1042241))))

(assert (=> b!3002743 d!846489))

(declare-fun d!846491 () Bool)

(assert (=> d!846491 (= (isEmptyLang!464 lt!1042243) (is-EmptyLang!9374 lt!1042243))))

(assert (=> b!3002749 d!846491))

(declare-fun b!3003066 () Bool)

(declare-fun e!1886325 () Regex!9374)

(declare-fun e!1886327 () Regex!9374)

(assert (=> b!3003066 (= e!1886325 e!1886327)))

(declare-fun c!494279 () Bool)

(declare-fun lt!1042330 () Regex!9374)

(declare-fun isEmptyExpr!477 (Regex!9374) Bool)

(assert (=> b!3003066 (= c!494279 (isEmptyExpr!477 lt!1042330))))

(declare-fun bm!201897 () Bool)

(declare-fun c!494271 () Bool)

(declare-fun lt!1042328 () Regex!9374)

(declare-fun call!201903 () Bool)

(declare-fun lt!1042326 () Regex!9374)

(assert (=> bm!201897 (= call!201903 (isEmptyExpr!477 (ite c!494271 lt!1042326 lt!1042328)))))

(declare-fun b!3003067 () Bool)

(declare-fun e!1886316 () Regex!9374)

(declare-fun lt!1042329 () Regex!9374)

(assert (=> b!3003067 (= e!1886316 lt!1042329)))

(declare-fun call!201902 () Regex!9374)

(declare-fun bm!201898 () Bool)

(declare-fun c!494272 () Bool)

(assert (=> bm!201898 (= call!201902 (simplify!365 (ite c!494271 (reg!9703 (reg!9703 r!17423)) (ite c!494272 (regTwo!19261 (reg!9703 r!17423)) (regOne!19260 (reg!9703 r!17423))))))))

(declare-fun call!201905 () Bool)

(declare-fun bm!201899 () Bool)

(assert (=> bm!201899 (= call!201905 (isEmptyLang!464 (ite c!494272 lt!1042329 lt!1042330)))))

(declare-fun b!3003069 () Bool)

(declare-fun c!494270 () Bool)

(declare-fun call!201904 () Bool)

(assert (=> b!3003069 (= c!494270 call!201904)))

(declare-fun e!1886314 () Regex!9374)

(assert (=> b!3003069 (= e!1886314 e!1886316)))

(declare-fun lt!1042327 () Regex!9374)

(declare-fun bm!201900 () Bool)

(declare-fun call!201906 () Bool)

(assert (=> bm!201900 (= call!201906 (isEmptyLang!464 (ite c!494271 lt!1042326 (ite c!494272 lt!1042327 lt!1042328))))))

(declare-fun b!3003070 () Bool)

(declare-fun e!1886318 () Regex!9374)

(declare-fun e!1886320 () Regex!9374)

(assert (=> b!3003070 (= e!1886318 e!1886320)))

(declare-fun call!201908 () Regex!9374)

(assert (=> b!3003070 (= lt!1042328 call!201908)))

(declare-fun call!201907 () Regex!9374)

(assert (=> b!3003070 (= lt!1042330 call!201907)))

(declare-fun res!1237616 () Bool)

(assert (=> b!3003070 (= res!1237616 call!201904)))

(declare-fun e!1886317 () Bool)

(assert (=> b!3003070 (=> res!1237616 e!1886317)))

(declare-fun c!494276 () Bool)

(assert (=> b!3003070 (= c!494276 e!1886317)))

(declare-fun b!3003071 () Bool)

(declare-fun e!1886323 () Regex!9374)

(assert (=> b!3003071 (= e!1886323 EmptyExpr!9374)))

(declare-fun b!3003072 () Bool)

(declare-fun e!1886322 () Regex!9374)

(assert (=> b!3003072 (= e!1886322 EmptyLang!9374)))

(declare-fun b!3003073 () Bool)

(declare-fun c!494278 () Bool)

(declare-fun e!1886315 () Bool)

(assert (=> b!3003073 (= c!494278 e!1886315)))

(declare-fun res!1237615 () Bool)

(assert (=> b!3003073 (=> res!1237615 e!1886315)))

(assert (=> b!3003073 (= res!1237615 call!201906)))

(assert (=> b!3003073 (= lt!1042326 call!201902)))

(declare-fun e!1886326 () Regex!9374)

(assert (=> b!3003073 (= e!1886326 e!1886323)))

(declare-fun bm!201901 () Bool)

(assert (=> bm!201901 (= call!201908 call!201902)))

(declare-fun b!3003074 () Bool)

(assert (=> b!3003074 (= e!1886327 (Concat!14695 lt!1042328 lt!1042330))))

(declare-fun b!3003068 () Bool)

(assert (=> b!3003068 (= e!1886320 EmptyLang!9374)))

(declare-fun d!846493 () Bool)

(declare-fun e!1886321 () Bool)

(assert (=> d!846493 e!1886321))

(declare-fun res!1237617 () Bool)

(assert (=> d!846493 (=> (not res!1237617) (not e!1886321))))

(declare-fun lt!1042331 () Regex!9374)

(assert (=> d!846493 (= res!1237617 (validRegex!4107 lt!1042331))))

(assert (=> d!846493 (= lt!1042331 e!1886322)))

(declare-fun c!494275 () Bool)

(assert (=> d!846493 (= c!494275 (is-EmptyLang!9374 (reg!9703 r!17423)))))

(assert (=> d!846493 (validRegex!4107 (reg!9703 r!17423))))

(assert (=> d!846493 (= (simplify!365 (reg!9703 r!17423)) lt!1042331)))

(declare-fun b!3003075 () Bool)

(assert (=> b!3003075 (= e!1886321 (= (nullable!3033 lt!1042331) (nullable!3033 (reg!9703 r!17423))))))

(declare-fun b!3003076 () Bool)

(assert (=> b!3003076 (= e!1886323 (Star!9374 lt!1042326))))

(declare-fun b!3003077 () Bool)

(assert (=> b!3003077 (= e!1886327 lt!1042328)))

(declare-fun b!3003078 () Bool)

(declare-fun c!494274 () Bool)

(assert (=> b!3003078 (= c!494274 call!201903)))

(assert (=> b!3003078 (= e!1886320 e!1886325)))

(declare-fun b!3003079 () Bool)

(declare-fun e!1886324 () Regex!9374)

(assert (=> b!3003079 (= e!1886324 (reg!9703 r!17423))))

(declare-fun b!3003080 () Bool)

(assert (=> b!3003080 (= e!1886325 lt!1042330)))

(declare-fun b!3003081 () Bool)

(assert (=> b!3003081 (= e!1886318 e!1886314)))

(assert (=> b!3003081 (= lt!1042329 call!201907)))

(assert (=> b!3003081 (= lt!1042327 call!201908)))

(declare-fun c!494277 () Bool)

(assert (=> b!3003081 (= c!494277 call!201905)))

(declare-fun b!3003082 () Bool)

(assert (=> b!3003082 (= e!1886322 e!1886324)))

(declare-fun c!494273 () Bool)

(assert (=> b!3003082 (= c!494273 (is-ElementMatch!9374 (reg!9703 r!17423)))))

(declare-fun b!3003083 () Bool)

(declare-fun e!1886319 () Regex!9374)

(assert (=> b!3003083 (= e!1886319 EmptyExpr!9374)))

(declare-fun b!3003084 () Bool)

(assert (=> b!3003084 (= e!1886315 call!201903)))

(declare-fun b!3003085 () Bool)

(declare-fun c!494280 () Bool)

(assert (=> b!3003085 (= c!494280 (is-EmptyExpr!9374 (reg!9703 r!17423)))))

(assert (=> b!3003085 (= e!1886324 e!1886319)))

(declare-fun bm!201902 () Bool)

(assert (=> bm!201902 (= call!201904 call!201906)))

(declare-fun b!3003086 () Bool)

(assert (=> b!3003086 (= c!494272 (is-Union!9374 (reg!9703 r!17423)))))

(assert (=> b!3003086 (= e!1886326 e!1886318)))

(declare-fun b!3003087 () Bool)

(assert (=> b!3003087 (= e!1886314 lt!1042327)))

(declare-fun b!3003088 () Bool)

(assert (=> b!3003088 (= e!1886319 e!1886326)))

(assert (=> b!3003088 (= c!494271 (is-Star!9374 (reg!9703 r!17423)))))

(declare-fun b!3003089 () Bool)

(assert (=> b!3003089 (= e!1886316 (Union!9374 lt!1042329 lt!1042327))))

(declare-fun bm!201903 () Bool)

(assert (=> bm!201903 (= call!201907 (simplify!365 (ite c!494272 (regOne!19261 (reg!9703 r!17423)) (regTwo!19260 (reg!9703 r!17423)))))))

(declare-fun b!3003090 () Bool)

(assert (=> b!3003090 (= e!1886317 call!201905)))

(assert (= (and d!846493 c!494275) b!3003072))

(assert (= (and d!846493 (not c!494275)) b!3003082))

(assert (= (and b!3003082 c!494273) b!3003079))

(assert (= (and b!3003082 (not c!494273)) b!3003085))

(assert (= (and b!3003085 c!494280) b!3003083))

(assert (= (and b!3003085 (not c!494280)) b!3003088))

(assert (= (and b!3003088 c!494271) b!3003073))

(assert (= (and b!3003088 (not c!494271)) b!3003086))

(assert (= (and b!3003073 (not res!1237615)) b!3003084))

(assert (= (and b!3003073 c!494278) b!3003071))

(assert (= (and b!3003073 (not c!494278)) b!3003076))

(assert (= (and b!3003086 c!494272) b!3003081))

(assert (= (and b!3003086 (not c!494272)) b!3003070))

(assert (= (and b!3003081 c!494277) b!3003087))

(assert (= (and b!3003081 (not c!494277)) b!3003069))

(assert (= (and b!3003069 c!494270) b!3003067))

(assert (= (and b!3003069 (not c!494270)) b!3003089))

(assert (= (and b!3003070 (not res!1237616)) b!3003090))

(assert (= (and b!3003070 c!494276) b!3003068))

(assert (= (and b!3003070 (not c!494276)) b!3003078))

(assert (= (and b!3003078 c!494274) b!3003080))

(assert (= (and b!3003078 (not c!494274)) b!3003066))

(assert (= (and b!3003066 c!494279) b!3003077))

(assert (= (and b!3003066 (not c!494279)) b!3003074))

(assert (= (or b!3003081 b!3003070) bm!201903))

(assert (= (or b!3003081 b!3003070) bm!201901))

(assert (= (or b!3003069 b!3003070) bm!201902))

(assert (= (or b!3003081 b!3003090) bm!201899))

(assert (= (or b!3003084 b!3003078) bm!201897))

(assert (= (or b!3003073 bm!201901) bm!201898))

(assert (= (or b!3003073 bm!201902) bm!201900))

(assert (= (and d!846493 res!1237617) b!3003075))

(declare-fun m!3353201 () Bool)

(assert (=> b!3003066 m!3353201))

(declare-fun m!3353203 () Bool)

(assert (=> bm!201897 m!3353203))

(declare-fun m!3353205 () Bool)

(assert (=> b!3003075 m!3353205))

(assert (=> b!3003075 m!3353105))

(declare-fun m!3353207 () Bool)

(assert (=> d!846493 m!3353207))

(declare-fun m!3353209 () Bool)

(assert (=> d!846493 m!3353209))

(declare-fun m!3353211 () Bool)

(assert (=> bm!201898 m!3353211))

(declare-fun m!3353213 () Bool)

(assert (=> bm!201899 m!3353213))

(declare-fun m!3353215 () Bool)

(assert (=> bm!201900 m!3353215))

(declare-fun m!3353217 () Bool)

(assert (=> bm!201903 m!3353217))

(assert (=> b!3002749 d!846493))

(declare-fun b!3003091 () Bool)

(declare-fun res!1237622 () Bool)

(declare-fun e!1886334 () Bool)

(assert (=> b!3003091 (=> (not res!1237622) (not e!1886334))))

(declare-fun call!201909 () Bool)

(assert (=> b!3003091 (= res!1237622 (not call!201909))))

(declare-fun b!3003092 () Bool)

(declare-fun res!1237619 () Bool)

(declare-fun e!1886330 () Bool)

(assert (=> b!3003092 (=> res!1237619 e!1886330)))

(assert (=> b!3003092 (= res!1237619 (not (is-ElementMatch!9374 lt!1042246)))))

(declare-fun e!1886331 () Bool)

(assert (=> b!3003092 (= e!1886331 e!1886330)))

(declare-fun bm!201904 () Bool)

(assert (=> bm!201904 (= call!201909 (isEmpty!19388 s!11993))))

(declare-fun b!3003093 () Bool)

(declare-fun res!1237618 () Bool)

(declare-fun e!1886333 () Bool)

(assert (=> b!3003093 (=> res!1237618 e!1886333)))

(assert (=> b!3003093 (= res!1237618 (not (isEmpty!19388 (tail!4916 s!11993))))))

(declare-fun b!3003094 () Bool)

(declare-fun res!1237625 () Bool)

(assert (=> b!3003094 (=> res!1237625 e!1886330)))

(assert (=> b!3003094 (= res!1237625 e!1886334)))

(declare-fun res!1237620 () Bool)

(assert (=> b!3003094 (=> (not res!1237620) (not e!1886334))))

(declare-fun lt!1042332 () Bool)

(assert (=> b!3003094 (= res!1237620 lt!1042332)))

(declare-fun b!3003095 () Bool)

(declare-fun e!1886329 () Bool)

(assert (=> b!3003095 (= e!1886329 (= lt!1042332 call!201909))))

(declare-fun b!3003096 () Bool)

(declare-fun res!1237623 () Bool)

(assert (=> b!3003096 (=> (not res!1237623) (not e!1886334))))

(assert (=> b!3003096 (= res!1237623 (isEmpty!19388 (tail!4916 s!11993)))))

(declare-fun b!3003097 () Bool)

(declare-fun e!1886328 () Bool)

(assert (=> b!3003097 (= e!1886328 (nullable!3033 lt!1042246))))

(declare-fun b!3003098 () Bool)

(declare-fun e!1886332 () Bool)

(assert (=> b!3003098 (= e!1886330 e!1886332)))

(declare-fun res!1237624 () Bool)

(assert (=> b!3003098 (=> (not res!1237624) (not e!1886332))))

(assert (=> b!3003098 (= res!1237624 (not lt!1042332))))

(declare-fun b!3003099 () Bool)

(assert (=> b!3003099 (= e!1886331 (not lt!1042332))))

(declare-fun d!846503 () Bool)

(assert (=> d!846503 e!1886329))

(declare-fun c!494281 () Bool)

(assert (=> d!846503 (= c!494281 (is-EmptyExpr!9374 lt!1042246))))

(assert (=> d!846503 (= lt!1042332 e!1886328)))

(declare-fun c!494282 () Bool)

(assert (=> d!846503 (= c!494282 (isEmpty!19388 s!11993))))

(assert (=> d!846503 (validRegex!4107 lt!1042246)))

(assert (=> d!846503 (= (matchR!4256 lt!1042246 s!11993) lt!1042332)))

(declare-fun b!3003100 () Bool)

(assert (=> b!3003100 (= e!1886332 e!1886333)))

(declare-fun res!1237621 () Bool)

(assert (=> b!3003100 (=> res!1237621 e!1886333)))

(assert (=> b!3003100 (= res!1237621 call!201909)))

(declare-fun b!3003101 () Bool)

(assert (=> b!3003101 (= e!1886328 (matchR!4256 (derivativeStep!2631 lt!1042246 (head!6690 s!11993)) (tail!4916 s!11993)))))

(declare-fun b!3003102 () Bool)

(assert (=> b!3003102 (= e!1886334 (= (head!6690 s!11993) (c!494204 lt!1042246)))))

(declare-fun b!3003103 () Bool)

(assert (=> b!3003103 (= e!1886333 (not (= (head!6690 s!11993) (c!494204 lt!1042246))))))

(declare-fun b!3003104 () Bool)

(assert (=> b!3003104 (= e!1886329 e!1886331)))

(declare-fun c!494283 () Bool)

(assert (=> b!3003104 (= c!494283 (is-EmptyLang!9374 lt!1042246))))

(assert (= (and d!846503 c!494282) b!3003097))

(assert (= (and d!846503 (not c!494282)) b!3003101))

(assert (= (and d!846503 c!494281) b!3003095))

(assert (= (and d!846503 (not c!494281)) b!3003104))

(assert (= (and b!3003104 c!494283) b!3003099))

(assert (= (and b!3003104 (not c!494283)) b!3003092))

(assert (= (and b!3003092 (not res!1237619)) b!3003094))

(assert (= (and b!3003094 res!1237620) b!3003091))

(assert (= (and b!3003091 res!1237622) b!3003096))

(assert (= (and b!3003096 res!1237623) b!3003102))

(assert (= (and b!3003094 (not res!1237625)) b!3003098))

(assert (= (and b!3003098 res!1237624) b!3003100))

(assert (= (and b!3003100 (not res!1237621)) b!3003093))

(assert (= (and b!3003093 (not res!1237618)) b!3003103))

(assert (= (or b!3003095 b!3003091 b!3003100) bm!201904))

(assert (=> b!3003103 m!3353087))

(assert (=> d!846503 m!3353019))

(declare-fun m!3353219 () Bool)

(assert (=> d!846503 m!3353219))

(declare-fun m!3353221 () Bool)

(assert (=> b!3003097 m!3353221))

(assert (=> b!3003096 m!3353091))

(assert (=> b!3003096 m!3353091))

(assert (=> b!3003096 m!3353093))

(assert (=> b!3003093 m!3353091))

(assert (=> b!3003093 m!3353091))

(assert (=> b!3003093 m!3353093))

(assert (=> bm!201904 m!3353019))

(assert (=> b!3003101 m!3353087))

(assert (=> b!3003101 m!3353087))

(declare-fun m!3353223 () Bool)

(assert (=> b!3003101 m!3353223))

(assert (=> b!3003101 m!3353091))

(assert (=> b!3003101 m!3353223))

(assert (=> b!3003101 m!3353091))

(declare-fun m!3353225 () Bool)

(assert (=> b!3003101 m!3353225))

(assert (=> b!3003102 m!3353087))

(assert (=> b!3002750 d!846503))

(declare-fun d!846505 () Bool)

(assert (=> d!846505 (= (isEmpty!19388 s!11993) (is-Nil!35115 s!11993))))

(assert (=> b!3002751 d!846505))

(declare-fun bs!528536 () Bool)

(declare-fun b!3003112 () Bool)

(assert (= bs!528536 (and b!3003112 b!3002742)))

(declare-fun lambda!112227 () Int)

(assert (=> bs!528536 (not (= lambda!112227 lambda!112193))))

(assert (=> bs!528536 (= (= (reg!9703 lt!1042246) lt!1042243) (= lambda!112227 lambda!112194))))

(declare-fun bs!528537 () Bool)

(assert (= bs!528537 (and b!3003112 b!3002850)))

(assert (=> bs!528537 (not (= lambda!112227 lambda!112208))))

(declare-fun bs!528538 () Bool)

(assert (= bs!528538 (and b!3003112 d!846481)))

(assert (=> bs!528538 (not (= lambda!112227 lambda!112220))))

(declare-fun bs!528539 () Bool)

(assert (= bs!528539 (and b!3003112 d!846485)))

(assert (=> bs!528539 (= (and (= (reg!9703 lt!1042246) lt!1042243) (= lt!1042246 (Star!9374 lt!1042243))) (= lambda!112227 lambda!112226))))

(assert (=> bs!528539 (not (= lambda!112227 lambda!112225))))

(declare-fun bs!528540 () Bool)

(assert (= bs!528540 (and b!3003112 b!3002847)))

(assert (=> bs!528540 (= (and (= (reg!9703 lt!1042246) (reg!9703 r!17423)) (= lt!1042246 r!17423)) (= lambda!112227 lambda!112207))))

(assert (=> b!3003112 true))

(assert (=> b!3003112 true))

(declare-fun bs!528541 () Bool)

(declare-fun b!3003115 () Bool)

(assert (= bs!528541 (and b!3003115 b!3002742)))

(declare-fun lambda!112228 () Int)

(assert (=> bs!528541 (not (= lambda!112228 lambda!112193))))

(declare-fun bs!528542 () Bool)

(assert (= bs!528542 (and b!3003115 b!3003112)))

(assert (=> bs!528542 (not (= lambda!112228 lambda!112227))))

(assert (=> bs!528541 (not (= lambda!112228 lambda!112194))))

(declare-fun bs!528543 () Bool)

(assert (= bs!528543 (and b!3003115 b!3002850)))

(assert (=> bs!528543 (= (and (= (regOne!19260 lt!1042246) (regOne!19260 r!17423)) (= (regTwo!19260 lt!1042246) (regTwo!19260 r!17423))) (= lambda!112228 lambda!112208))))

(declare-fun bs!528544 () Bool)

(assert (= bs!528544 (and b!3003115 d!846481)))

(assert (=> bs!528544 (not (= lambda!112228 lambda!112220))))

(declare-fun bs!528545 () Bool)

(assert (= bs!528545 (and b!3003115 d!846485)))

(assert (=> bs!528545 (not (= lambda!112228 lambda!112226))))

(assert (=> bs!528545 (not (= lambda!112228 lambda!112225))))

(declare-fun bs!528546 () Bool)

(assert (= bs!528546 (and b!3003115 b!3002847)))

(assert (=> bs!528546 (not (= lambda!112228 lambda!112207))))

(assert (=> b!3003115 true))

(assert (=> b!3003115 true))

(declare-fun bm!201905 () Bool)

(declare-fun call!201910 () Bool)

(assert (=> bm!201905 (= call!201910 (isEmpty!19388 s!11993))))

(declare-fun b!3003105 () Bool)

(declare-fun c!494284 () Bool)

(assert (=> b!3003105 (= c!494284 (is-ElementMatch!9374 lt!1042246))))

(declare-fun e!1886341 () Bool)

(declare-fun e!1886338 () Bool)

(assert (=> b!3003105 (= e!1886341 e!1886338)))

(declare-fun b!3003106 () Bool)

(assert (=> b!3003106 (= e!1886338 (= s!11993 (Cons!35115 (c!494204 lt!1042246) Nil!35115)))))

(declare-fun b!3003107 () Bool)

(declare-fun e!1886335 () Bool)

(declare-fun e!1886340 () Bool)

(assert (=> b!3003107 (= e!1886335 e!1886340)))

(declare-fun res!1237627 () Bool)

(assert (=> b!3003107 (= res!1237627 (matchRSpec!1511 (regOne!19261 lt!1042246) s!11993))))

(assert (=> b!3003107 (=> res!1237627 e!1886340)))

(declare-fun bm!201906 () Bool)

(declare-fun call!201911 () Bool)

(declare-fun c!494287 () Bool)

(assert (=> bm!201906 (= call!201911 (Exists!1643 (ite c!494287 lambda!112227 lambda!112228)))))

(declare-fun b!3003108 () Bool)

(declare-fun c!494285 () Bool)

(assert (=> b!3003108 (= c!494285 (is-Union!9374 lt!1042246))))

(assert (=> b!3003108 (= e!1886338 e!1886335)))

(declare-fun b!3003109 () Bool)

(declare-fun e!1886337 () Bool)

(assert (=> b!3003109 (= e!1886337 e!1886341)))

(declare-fun res!1237628 () Bool)

(assert (=> b!3003109 (= res!1237628 (not (is-EmptyLang!9374 lt!1042246)))))

(assert (=> b!3003109 (=> (not res!1237628) (not e!1886341))))

(declare-fun d!846507 () Bool)

(declare-fun c!494286 () Bool)

(assert (=> d!846507 (= c!494286 (is-EmptyExpr!9374 lt!1042246))))

(assert (=> d!846507 (= (matchRSpec!1511 lt!1042246 s!11993) e!1886337)))

(declare-fun b!3003110 () Bool)

(assert (=> b!3003110 (= e!1886337 call!201910)))

(declare-fun b!3003111 () Bool)

(assert (=> b!3003111 (= e!1886340 (matchRSpec!1511 (regTwo!19261 lt!1042246) s!11993))))

(declare-fun e!1886339 () Bool)

(assert (=> b!3003112 (= e!1886339 call!201911)))

(declare-fun b!3003113 () Bool)

(declare-fun res!1237626 () Bool)

(assert (=> b!3003113 (=> res!1237626 e!1886339)))

(assert (=> b!3003113 (= res!1237626 call!201910)))

(declare-fun e!1886336 () Bool)

(assert (=> b!3003113 (= e!1886336 e!1886339)))

(declare-fun b!3003114 () Bool)

(assert (=> b!3003114 (= e!1886335 e!1886336)))

(assert (=> b!3003114 (= c!494287 (is-Star!9374 lt!1042246))))

(assert (=> b!3003115 (= e!1886336 call!201911)))

(assert (= (and d!846507 c!494286) b!3003110))

(assert (= (and d!846507 (not c!494286)) b!3003109))

(assert (= (and b!3003109 res!1237628) b!3003105))

(assert (= (and b!3003105 c!494284) b!3003106))

(assert (= (and b!3003105 (not c!494284)) b!3003108))

(assert (= (and b!3003108 c!494285) b!3003107))

(assert (= (and b!3003108 (not c!494285)) b!3003114))

(assert (= (and b!3003107 (not res!1237627)) b!3003111))

(assert (= (and b!3003114 c!494287) b!3003113))

(assert (= (and b!3003114 (not c!494287)) b!3003115))

(assert (= (and b!3003113 (not res!1237626)) b!3003112))

(assert (= (or b!3003112 b!3003115) bm!201906))

(assert (= (or b!3003110 b!3003113) bm!201905))

(assert (=> bm!201905 m!3353019))

(declare-fun m!3353227 () Bool)

(assert (=> b!3003107 m!3353227))

(declare-fun m!3353229 () Bool)

(assert (=> bm!201906 m!3353229))

(declare-fun m!3353231 () Bool)

(assert (=> b!3003111 m!3353231))

(assert (=> b!3002751 d!846507))

(declare-fun d!846509 () Bool)

(assert (=> d!846509 (= (matchR!4256 lt!1042246 s!11993) (matchRSpec!1511 lt!1042246 s!11993))))

(declare-fun lt!1042333 () Unit!49163)

(assert (=> d!846509 (= lt!1042333 (choose!17808 lt!1042246 s!11993))))

(assert (=> d!846509 (validRegex!4107 lt!1042246)))

(assert (=> d!846509 (= (mainMatchTheorem!1511 lt!1042246 s!11993) lt!1042333)))

(declare-fun bs!528547 () Bool)

(assert (= bs!528547 d!846509))

(assert (=> bs!528547 m!3353043))

(assert (=> bs!528547 m!3353021))

(declare-fun m!3353233 () Bool)

(assert (=> bs!528547 m!3353233))

(assert (=> bs!528547 m!3353219))

(assert (=> b!3002751 d!846509))

(declare-fun b!3003155 () Bool)

(declare-fun e!1886360 () Bool)

(declare-fun tp!954249 () Bool)

(declare-fun tp!954252 () Bool)

(assert (=> b!3003155 (= e!1886360 (and tp!954249 tp!954252))))

(declare-fun b!3003156 () Bool)

(declare-fun tp!954250 () Bool)

(assert (=> b!3003156 (= e!1886360 tp!954250)))

(declare-fun b!3003154 () Bool)

(assert (=> b!3003154 (= e!1886360 tp_is_empty!16311)))

(declare-fun b!3003157 () Bool)

(declare-fun tp!954251 () Bool)

(declare-fun tp!954248 () Bool)

(assert (=> b!3003157 (= e!1886360 (and tp!954251 tp!954248))))

(assert (=> b!3002752 (= tp!954218 e!1886360)))

(assert (= (and b!3002752 (is-ElementMatch!9374 (regOne!19260 r!17423))) b!3003154))

(assert (= (and b!3002752 (is-Concat!14695 (regOne!19260 r!17423))) b!3003155))

(assert (= (and b!3002752 (is-Star!9374 (regOne!19260 r!17423))) b!3003156))

(assert (= (and b!3002752 (is-Union!9374 (regOne!19260 r!17423))) b!3003157))

(declare-fun b!3003159 () Bool)

(declare-fun e!1886361 () Bool)

(declare-fun tp!954254 () Bool)

(declare-fun tp!954257 () Bool)

(assert (=> b!3003159 (= e!1886361 (and tp!954254 tp!954257))))

(declare-fun b!3003160 () Bool)

(declare-fun tp!954255 () Bool)

(assert (=> b!3003160 (= e!1886361 tp!954255)))

(declare-fun b!3003158 () Bool)

(assert (=> b!3003158 (= e!1886361 tp_is_empty!16311)))

(declare-fun b!3003161 () Bool)

(declare-fun tp!954256 () Bool)

(declare-fun tp!954253 () Bool)

(assert (=> b!3003161 (= e!1886361 (and tp!954256 tp!954253))))

(assert (=> b!3002752 (= tp!954219 e!1886361)))

(assert (= (and b!3002752 (is-ElementMatch!9374 (regTwo!19260 r!17423))) b!3003158))

(assert (= (and b!3002752 (is-Concat!14695 (regTwo!19260 r!17423))) b!3003159))

(assert (= (and b!3002752 (is-Star!9374 (regTwo!19260 r!17423))) b!3003160))

(assert (= (and b!3002752 (is-Union!9374 (regTwo!19260 r!17423))) b!3003161))

(declare-fun b!3003163 () Bool)

(declare-fun e!1886362 () Bool)

(declare-fun tp!954259 () Bool)

(declare-fun tp!954262 () Bool)

(assert (=> b!3003163 (= e!1886362 (and tp!954259 tp!954262))))

(declare-fun b!3003164 () Bool)

(declare-fun tp!954260 () Bool)

(assert (=> b!3003164 (= e!1886362 tp!954260)))

(declare-fun b!3003162 () Bool)

(assert (=> b!3003162 (= e!1886362 tp_is_empty!16311)))

(declare-fun b!3003165 () Bool)

(declare-fun tp!954261 () Bool)

(declare-fun tp!954258 () Bool)

(assert (=> b!3003165 (= e!1886362 (and tp!954261 tp!954258))))

(assert (=> b!3002747 (= tp!954215 e!1886362)))

(assert (= (and b!3002747 (is-ElementMatch!9374 (regOne!19261 r!17423))) b!3003162))

(assert (= (and b!3002747 (is-Concat!14695 (regOne!19261 r!17423))) b!3003163))

(assert (= (and b!3002747 (is-Star!9374 (regOne!19261 r!17423))) b!3003164))

(assert (= (and b!3002747 (is-Union!9374 (regOne!19261 r!17423))) b!3003165))

(declare-fun b!3003167 () Bool)

(declare-fun e!1886363 () Bool)

(declare-fun tp!954264 () Bool)

(declare-fun tp!954267 () Bool)

(assert (=> b!3003167 (= e!1886363 (and tp!954264 tp!954267))))

(declare-fun b!3003168 () Bool)

(declare-fun tp!954265 () Bool)

(assert (=> b!3003168 (= e!1886363 tp!954265)))

(declare-fun b!3003166 () Bool)

(assert (=> b!3003166 (= e!1886363 tp_is_empty!16311)))

(declare-fun b!3003169 () Bool)

(declare-fun tp!954266 () Bool)

(declare-fun tp!954263 () Bool)

(assert (=> b!3003169 (= e!1886363 (and tp!954266 tp!954263))))

(assert (=> b!3002747 (= tp!954217 e!1886363)))

(assert (= (and b!3002747 (is-ElementMatch!9374 (regTwo!19261 r!17423))) b!3003166))

(assert (= (and b!3002747 (is-Concat!14695 (regTwo!19261 r!17423))) b!3003167))

(assert (= (and b!3002747 (is-Star!9374 (regTwo!19261 r!17423))) b!3003168))

(assert (= (and b!3002747 (is-Union!9374 (regTwo!19261 r!17423))) b!3003169))

(declare-fun b!3003174 () Bool)

(declare-fun e!1886366 () Bool)

(declare-fun tp!954270 () Bool)

(assert (=> b!3003174 (= e!1886366 (and tp_is_empty!16311 tp!954270))))

(assert (=> b!3002744 (= tp!954216 e!1886366)))

(assert (= (and b!3002744 (is-Cons!35115 (t!234304 s!11993))) b!3003174))

(declare-fun b!3003176 () Bool)

(declare-fun e!1886367 () Bool)

(declare-fun tp!954272 () Bool)

(declare-fun tp!954275 () Bool)

(assert (=> b!3003176 (= e!1886367 (and tp!954272 tp!954275))))

(declare-fun b!3003177 () Bool)

(declare-fun tp!954273 () Bool)

(assert (=> b!3003177 (= e!1886367 tp!954273)))

(declare-fun b!3003175 () Bool)

(assert (=> b!3003175 (= e!1886367 tp_is_empty!16311)))

(declare-fun b!3003178 () Bool)

(declare-fun tp!954274 () Bool)

(declare-fun tp!954271 () Bool)

(assert (=> b!3003178 (= e!1886367 (and tp!954274 tp!954271))))

(assert (=> b!3002745 (= tp!954214 e!1886367)))

(assert (= (and b!3002745 (is-ElementMatch!9374 (reg!9703 r!17423))) b!3003175))

(assert (= (and b!3002745 (is-Concat!14695 (reg!9703 r!17423))) b!3003176))

(assert (= (and b!3002745 (is-Star!9374 (reg!9703 r!17423))) b!3003177))

(assert (= (and b!3002745 (is-Union!9374 (reg!9703 r!17423))) b!3003178))

(push 1)

(assert (not bm!201905))

(assert (not b!3002981))

(assert (not b!3003167))

(assert (not b!3003161))

(assert (not d!846465))

(assert (not b!3003159))

(assert (not b!3003066))

(assert (not bm!201882))

(assert (not b!3003157))

(assert (not bm!201868))

(assert (not b!3002893))

(assert (not d!846481))

(assert (not b!3003174))

(assert (not b!3003155))

(assert (not b!3002842))

(assert (not b!3003178))

(assert (not bm!201897))

(assert (not bm!201869))

(assert (not d!846471))

(assert (not b!3003164))

(assert (not d!846463))

(assert (not bm!201899))

(assert (not b!3003160))

(assert (not bm!201879))

(assert (not b!3003096))

(assert (not b!3003107))

(assert (not b!3003163))

(assert (not d!846485))

(assert (not b!3002950))

(assert (not b!3002952))

(assert (not bm!201906))

(assert (not b!3002985))

(assert (not b!3002885))

(assert (not b!3002954))

(assert (not b!3002948))

(assert (not d!846493))

(assert (not b!3003075))

(assert (not b!3002894))

(assert (not b!3003097))

(assert (not b!3003176))

(assert (not bm!201900))

(assert (not b!3003156))

(assert (not b!3002889))

(assert (not b!3002928))

(assert (not b!3003111))

(assert (not d!846503))

(assert (not d!846479))

(assert (not b!3003102))

(assert (not b!3003093))

(assert (not d!846477))

(assert (not d!846469))

(assert (not b!3003165))

(assert (not b!3002949))

(assert (not bm!201880))

(assert (not b!3002987))

(assert (not b!3002977))

(assert (not bm!201904))

(assert (not b!3002846))

(assert (not bm!201903))

(assert (not bm!201898))

(assert (not b!3003168))

(assert (not b!3002895))

(assert (not b!3003103))

(assert (not d!846487))

(assert (not b!3002888))

(assert (not b!3003177))

(assert (not b!3002986))

(assert (not bm!201872))

(assert (not b!3003101))

(assert tp_is_empty!16311)

(assert (not b!3002980))

(assert (not b!3003169))

(assert (not b!3002953))

(assert (not d!846509))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

