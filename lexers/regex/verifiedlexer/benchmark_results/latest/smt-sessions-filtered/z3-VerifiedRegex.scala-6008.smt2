; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294348 () Bool)

(assert start!294348)

(declare-fun b!3103178 () Bool)

(declare-fun e!1939071 () Bool)

(declare-fun tp!975067 () Bool)

(declare-fun tp!975068 () Bool)

(assert (=> b!3103178 (= e!1939071 (and tp!975067 tp!975068))))

(declare-fun b!3103179 () Bool)

(declare-fun e!1939075 () Bool)

(declare-fun e!1939069 () Bool)

(assert (=> b!3103179 (= e!1939075 e!1939069)))

(declare-fun res!1270994 () Bool)

(assert (=> b!3103179 (=> (not res!1270994) (not e!1939069))))

(declare-datatypes ((C!19320 0))(
  ( (C!19321 (val!11696 Int)) )
))
(declare-datatypes ((Regex!9567 0))(
  ( (ElementMatch!9567 (c!518707 C!19320)) (Concat!14888 (regOne!19646 Regex!9567) (regTwo!19646 Regex!9567)) (EmptyExpr!9567) (Star!9567 (reg!9896 Regex!9567)) (EmptyLang!9567) (Union!9567 (regOne!19647 Regex!9567) (regTwo!19647 Regex!9567)) )
))
(declare-fun r!17423 () Regex!9567)

(declare-fun validRegex!4300 (Regex!9567) Bool)

(assert (=> b!3103179 (= res!1270994 (validRegex!4300 (regTwo!19647 r!17423)))))

(declare-datatypes ((List!35432 0))(
  ( (Nil!35308) (Cons!35308 (h!40728 C!19320) (t!234497 List!35432)) )
))
(declare-fun s!11993 () List!35432)

(declare-fun matchR!4449 (Regex!9567 List!35432) Bool)

(assert (=> b!3103179 (matchR!4449 (Union!9567 (regTwo!19647 r!17423) (regOne!19647 r!17423)) s!11993)))

(declare-datatypes ((Unit!49573 0))(
  ( (Unit!49574) )
))
(declare-fun lt!1056125 () Unit!49573)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!80 (Regex!9567 Regex!9567 List!35432) Unit!49573)

(assert (=> b!3103179 (= lt!1056125 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!80 (regTwo!19647 r!17423) (regOne!19647 r!17423) s!11993))))

(declare-fun res!1270996 () Bool)

(declare-fun e!1939073 () Bool)

(assert (=> start!294348 (=> (not res!1270996) (not e!1939073))))

(assert (=> start!294348 (= res!1270996 (validRegex!4300 r!17423))))

(assert (=> start!294348 e!1939073))

(assert (=> start!294348 e!1939071))

(declare-fun e!1939074 () Bool)

(assert (=> start!294348 e!1939074))

(declare-fun b!3103180 () Bool)

(assert (=> b!3103180 (= e!1939069 (validRegex!4300 (regOne!19647 r!17423)))))

(declare-fun b!3103181 () Bool)

(declare-fun e!1939070 () Bool)

(assert (=> b!3103181 (= e!1939073 (not e!1939070))))

(declare-fun res!1270992 () Bool)

(assert (=> b!3103181 (=> res!1270992 e!1939070)))

(declare-fun lt!1056124 () Bool)

(get-info :version)

(assert (=> b!3103181 (= res!1270992 (or lt!1056124 ((_ is Concat!14888) r!17423) (not ((_ is Union!9567) r!17423))))))

(declare-fun matchRSpec!1704 (Regex!9567 List!35432) Bool)

(assert (=> b!3103181 (= lt!1056124 (matchRSpec!1704 r!17423 s!11993))))

(assert (=> b!3103181 (= lt!1056124 (matchR!4449 r!17423 s!11993))))

(declare-fun lt!1056123 () Unit!49573)

(declare-fun mainMatchTheorem!1704 (Regex!9567 List!35432) Unit!49573)

(assert (=> b!3103181 (= lt!1056123 (mainMatchTheorem!1704 r!17423 s!11993))))

(declare-fun b!3103182 () Bool)

(declare-fun tp!975065 () Bool)

(declare-fun tp!975066 () Bool)

(assert (=> b!3103182 (= e!1939071 (and tp!975065 tp!975066))))

(declare-fun b!3103183 () Bool)

(declare-fun tp_is_empty!16697 () Bool)

(declare-fun tp!975064 () Bool)

(assert (=> b!3103183 (= e!1939074 (and tp_is_empty!16697 tp!975064))))

(declare-fun b!3103184 () Bool)

(declare-fun e!1939072 () Bool)

(assert (=> b!3103184 (= e!1939072 e!1939075)))

(declare-fun res!1270995 () Bool)

(assert (=> b!3103184 (=> res!1270995 e!1939075)))

(declare-fun lt!1056126 () Bool)

(assert (=> b!3103184 (= res!1270995 (not lt!1056126))))

(declare-fun lt!1056127 () Regex!9567)

(assert (=> b!3103184 (= lt!1056126 (matchR!4449 lt!1056127 s!11993))))

(assert (=> b!3103184 (= lt!1056126 (matchR!4449 (regTwo!19647 r!17423) s!11993))))

(declare-fun lt!1056122 () Unit!49573)

(declare-fun lemmaSimplifySound!330 (Regex!9567 List!35432) Unit!49573)

(assert (=> b!3103184 (= lt!1056122 (lemmaSimplifySound!330 (regTwo!19647 r!17423) s!11993))))

(declare-fun b!3103185 () Bool)

(declare-fun tp!975069 () Bool)

(assert (=> b!3103185 (= e!1939071 tp!975069)))

(declare-fun b!3103186 () Bool)

(assert (=> b!3103186 (= e!1939070 e!1939072)))

(declare-fun res!1270993 () Bool)

(assert (=> b!3103186 (=> res!1270993 e!1939072)))

(declare-fun lt!1056128 () Regex!9567)

(declare-fun isEmptyLang!618 (Regex!9567) Bool)

(assert (=> b!3103186 (= res!1270993 (not (isEmptyLang!618 lt!1056128)))))

(declare-fun simplify!522 (Regex!9567) Regex!9567)

(assert (=> b!3103186 (= lt!1056127 (simplify!522 (regTwo!19647 r!17423)))))

(assert (=> b!3103186 (= lt!1056128 (simplify!522 (regOne!19647 r!17423)))))

(declare-fun b!3103187 () Bool)

(assert (=> b!3103187 (= e!1939071 tp_is_empty!16697)))

(assert (= (and start!294348 res!1270996) b!3103181))

(assert (= (and b!3103181 (not res!1270992)) b!3103186))

(assert (= (and b!3103186 (not res!1270993)) b!3103184))

(assert (= (and b!3103184 (not res!1270995)) b!3103179))

(assert (= (and b!3103179 res!1270994) b!3103180))

(assert (= (and start!294348 ((_ is ElementMatch!9567) r!17423)) b!3103187))

(assert (= (and start!294348 ((_ is Concat!14888) r!17423)) b!3103178))

(assert (= (and start!294348 ((_ is Star!9567) r!17423)) b!3103185))

(assert (= (and start!294348 ((_ is Union!9567) r!17423)) b!3103182))

(assert (= (and start!294348 ((_ is Cons!35308) s!11993)) b!3103183))

(declare-fun m!3401813 () Bool)

(assert (=> start!294348 m!3401813))

(declare-fun m!3401815 () Bool)

(assert (=> b!3103181 m!3401815))

(declare-fun m!3401817 () Bool)

(assert (=> b!3103181 m!3401817))

(declare-fun m!3401819 () Bool)

(assert (=> b!3103181 m!3401819))

(declare-fun m!3401821 () Bool)

(assert (=> b!3103179 m!3401821))

(declare-fun m!3401823 () Bool)

(assert (=> b!3103179 m!3401823))

(declare-fun m!3401825 () Bool)

(assert (=> b!3103179 m!3401825))

(declare-fun m!3401827 () Bool)

(assert (=> b!3103184 m!3401827))

(declare-fun m!3401829 () Bool)

(assert (=> b!3103184 m!3401829))

(declare-fun m!3401831 () Bool)

(assert (=> b!3103184 m!3401831))

(declare-fun m!3401833 () Bool)

(assert (=> b!3103180 m!3401833))

(declare-fun m!3401835 () Bool)

(assert (=> b!3103186 m!3401835))

(declare-fun m!3401837 () Bool)

(assert (=> b!3103186 m!3401837))

(declare-fun m!3401839 () Bool)

(assert (=> b!3103186 m!3401839))

(check-sat (not b!3103183) (not b!3103186) (not b!3103185) (not b!3103182) (not b!3103179) (not start!294348) (not b!3103178) (not b!3103180) tp_is_empty!16697 (not b!3103181) (not b!3103184))
(check-sat)
(get-model)

(declare-fun b!3103233 () Bool)

(declare-fun e!1939113 () Bool)

(declare-fun e!1939115 () Bool)

(assert (=> b!3103233 (= e!1939113 e!1939115)))

(declare-fun res!1271022 () Bool)

(declare-fun nullable!3213 (Regex!9567) Bool)

(assert (=> b!3103233 (= res!1271022 (not (nullable!3213 (reg!9896 (regTwo!19647 r!17423)))))))

(assert (=> b!3103233 (=> (not res!1271022) (not e!1939115))))

(declare-fun d!861181 () Bool)

(declare-fun res!1271023 () Bool)

(declare-fun e!1939112 () Bool)

(assert (=> d!861181 (=> res!1271023 e!1939112)))

(assert (=> d!861181 (= res!1271023 ((_ is ElementMatch!9567) (regTwo!19647 r!17423)))))

(assert (=> d!861181 (= (validRegex!4300 (regTwo!19647 r!17423)) e!1939112)))

(declare-fun b!3103234 () Bool)

(declare-fun e!1939116 () Bool)

(declare-fun e!1939114 () Bool)

(assert (=> b!3103234 (= e!1939116 e!1939114)))

(declare-fun res!1271025 () Bool)

(assert (=> b!3103234 (=> (not res!1271025) (not e!1939114))))

(declare-fun call!218975 () Bool)

(assert (=> b!3103234 (= res!1271025 call!218975)))

(declare-fun b!3103235 () Bool)

(assert (=> b!3103235 (= e!1939112 e!1939113)))

(declare-fun c!518719 () Bool)

(assert (=> b!3103235 (= c!518719 ((_ is Star!9567) (regTwo!19647 r!17423)))))

(declare-fun b!3103236 () Bool)

(declare-fun res!1271026 () Bool)

(declare-fun e!1939117 () Bool)

(assert (=> b!3103236 (=> (not res!1271026) (not e!1939117))))

(declare-fun call!218974 () Bool)

(assert (=> b!3103236 (= res!1271026 call!218974)))

(declare-fun e!1939111 () Bool)

(assert (=> b!3103236 (= e!1939111 e!1939117)))

(declare-fun b!3103237 () Bool)

(declare-fun call!218976 () Bool)

(assert (=> b!3103237 (= e!1939115 call!218976)))

(declare-fun b!3103238 () Bool)

(assert (=> b!3103238 (= e!1939117 call!218975)))

(declare-fun b!3103239 () Bool)

(assert (=> b!3103239 (= e!1939113 e!1939111)))

(declare-fun c!518718 () Bool)

(assert (=> b!3103239 (= c!518718 ((_ is Union!9567) (regTwo!19647 r!17423)))))

(declare-fun bm!218969 () Bool)

(assert (=> bm!218969 (= call!218974 (validRegex!4300 (ite c!518718 (regOne!19647 (regTwo!19647 r!17423)) (regTwo!19646 (regTwo!19647 r!17423)))))))

(declare-fun b!3103240 () Bool)

(declare-fun res!1271024 () Bool)

(assert (=> b!3103240 (=> res!1271024 e!1939116)))

(assert (=> b!3103240 (= res!1271024 (not ((_ is Concat!14888) (regTwo!19647 r!17423))))))

(assert (=> b!3103240 (= e!1939111 e!1939116)))

(declare-fun bm!218970 () Bool)

(assert (=> bm!218970 (= call!218976 (validRegex!4300 (ite c!518719 (reg!9896 (regTwo!19647 r!17423)) (ite c!518718 (regTwo!19647 (regTwo!19647 r!17423)) (regOne!19646 (regTwo!19647 r!17423))))))))

(declare-fun b!3103241 () Bool)

(assert (=> b!3103241 (= e!1939114 call!218974)))

(declare-fun bm!218971 () Bool)

(assert (=> bm!218971 (= call!218975 call!218976)))

(assert (= (and d!861181 (not res!1271023)) b!3103235))

(assert (= (and b!3103235 c!518719) b!3103233))

(assert (= (and b!3103235 (not c!518719)) b!3103239))

(assert (= (and b!3103233 res!1271022) b!3103237))

(assert (= (and b!3103239 c!518718) b!3103236))

(assert (= (and b!3103239 (not c!518718)) b!3103240))

(assert (= (and b!3103236 res!1271026) b!3103238))

(assert (= (and b!3103240 (not res!1271024)) b!3103234))

(assert (= (and b!3103234 res!1271025) b!3103241))

(assert (= (or b!3103236 b!3103241) bm!218969))

(assert (= (or b!3103238 b!3103234) bm!218971))

(assert (= (or b!3103237 bm!218971) bm!218970))

(declare-fun m!3401847 () Bool)

(assert (=> b!3103233 m!3401847))

(declare-fun m!3401849 () Bool)

(assert (=> bm!218969 m!3401849))

(declare-fun m!3401851 () Bool)

(assert (=> bm!218970 m!3401851))

(assert (=> b!3103179 d!861181))

(declare-fun b!3103292 () Bool)

(declare-fun e!1939150 () Bool)

(declare-fun e!1939151 () Bool)

(assert (=> b!3103292 (= e!1939150 e!1939151)))

(declare-fun res!1271051 () Bool)

(assert (=> b!3103292 (=> (not res!1271051) (not e!1939151))))

(declare-fun lt!1056131 () Bool)

(assert (=> b!3103292 (= res!1271051 (not lt!1056131))))

(declare-fun b!3103294 () Bool)

(declare-fun res!1271052 () Bool)

(declare-fun e!1939149 () Bool)

(assert (=> b!3103294 (=> (not res!1271052) (not e!1939149))))

(declare-fun isEmpty!19659 (List!35432) Bool)

(declare-fun tail!5093 (List!35432) List!35432)

(assert (=> b!3103294 (= res!1271052 (isEmpty!19659 (tail!5093 s!11993)))))

(declare-fun b!3103295 () Bool)

(declare-fun res!1271050 () Bool)

(assert (=> b!3103295 (=> res!1271050 e!1939150)))

(assert (=> b!3103295 (= res!1271050 e!1939149)))

(declare-fun res!1271049 () Bool)

(assert (=> b!3103295 (=> (not res!1271049) (not e!1939149))))

(assert (=> b!3103295 (= res!1271049 lt!1056131)))

(declare-fun b!3103296 () Bool)

(declare-fun res!1271055 () Bool)

(assert (=> b!3103296 (=> res!1271055 e!1939150)))

(assert (=> b!3103296 (= res!1271055 (not ((_ is ElementMatch!9567) (Union!9567 (regTwo!19647 r!17423) (regOne!19647 r!17423)))))))

(declare-fun e!1939146 () Bool)

(assert (=> b!3103296 (= e!1939146 e!1939150)))

(declare-fun b!3103297 () Bool)

(declare-fun e!1939148 () Bool)

(assert (=> b!3103297 (= e!1939151 e!1939148)))

(declare-fun res!1271053 () Bool)

(assert (=> b!3103297 (=> res!1271053 e!1939148)))

(declare-fun call!218979 () Bool)

(assert (=> b!3103297 (= res!1271053 call!218979)))

(declare-fun b!3103298 () Bool)

(declare-fun e!1939147 () Bool)

(declare-fun derivativeStep!2808 (Regex!9567 C!19320) Regex!9567)

(declare-fun head!6867 (List!35432) C!19320)

(assert (=> b!3103298 (= e!1939147 (matchR!4449 (derivativeStep!2808 (Union!9567 (regTwo!19647 r!17423) (regOne!19647 r!17423)) (head!6867 s!11993)) (tail!5093 s!11993)))))

(declare-fun b!3103299 () Bool)

(assert (=> b!3103299 (= e!1939149 (= (head!6867 s!11993) (c!518707 (Union!9567 (regTwo!19647 r!17423) (regOne!19647 r!17423)))))))

(declare-fun b!3103300 () Bool)

(assert (=> b!3103300 (= e!1939148 (not (= (head!6867 s!11993) (c!518707 (Union!9567 (regTwo!19647 r!17423) (regOne!19647 r!17423))))))))

(declare-fun b!3103301 () Bool)

(assert (=> b!3103301 (= e!1939147 (nullable!3213 (Union!9567 (regTwo!19647 r!17423) (regOne!19647 r!17423))))))

(declare-fun bm!218974 () Bool)

(assert (=> bm!218974 (= call!218979 (isEmpty!19659 s!11993))))

(declare-fun b!3103302 () Bool)

(assert (=> b!3103302 (= e!1939146 (not lt!1056131))))

(declare-fun b!3103303 () Bool)

(declare-fun res!1271056 () Bool)

(assert (=> b!3103303 (=> (not res!1271056) (not e!1939149))))

(assert (=> b!3103303 (= res!1271056 (not call!218979))))

(declare-fun b!3103304 () Bool)

(declare-fun e!1939152 () Bool)

(assert (=> b!3103304 (= e!1939152 (= lt!1056131 call!218979))))

(declare-fun b!3103305 () Bool)

(assert (=> b!3103305 (= e!1939152 e!1939146)))

(declare-fun c!518735 () Bool)

(assert (=> b!3103305 (= c!518735 ((_ is EmptyLang!9567) (Union!9567 (regTwo!19647 r!17423) (regOne!19647 r!17423))))))

(declare-fun d!861185 () Bool)

(assert (=> d!861185 e!1939152))

(declare-fun c!518734 () Bool)

(assert (=> d!861185 (= c!518734 ((_ is EmptyExpr!9567) (Union!9567 (regTwo!19647 r!17423) (regOne!19647 r!17423))))))

(assert (=> d!861185 (= lt!1056131 e!1939147)))

(declare-fun c!518736 () Bool)

(assert (=> d!861185 (= c!518736 (isEmpty!19659 s!11993))))

(assert (=> d!861185 (validRegex!4300 (Union!9567 (regTwo!19647 r!17423) (regOne!19647 r!17423)))))

(assert (=> d!861185 (= (matchR!4449 (Union!9567 (regTwo!19647 r!17423) (regOne!19647 r!17423)) s!11993) lt!1056131)))

(declare-fun b!3103293 () Bool)

(declare-fun res!1271054 () Bool)

(assert (=> b!3103293 (=> res!1271054 e!1939148)))

(assert (=> b!3103293 (= res!1271054 (not (isEmpty!19659 (tail!5093 s!11993))))))

(assert (= (and d!861185 c!518736) b!3103301))

(assert (= (and d!861185 (not c!518736)) b!3103298))

(assert (= (and d!861185 c!518734) b!3103304))

(assert (= (and d!861185 (not c!518734)) b!3103305))

(assert (= (and b!3103305 c!518735) b!3103302))

(assert (= (and b!3103305 (not c!518735)) b!3103296))

(assert (= (and b!3103296 (not res!1271055)) b!3103295))

(assert (= (and b!3103295 res!1271049) b!3103303))

(assert (= (and b!3103303 res!1271056) b!3103294))

(assert (= (and b!3103294 res!1271052) b!3103299))

(assert (= (and b!3103295 (not res!1271050)) b!3103292))

(assert (= (and b!3103292 res!1271051) b!3103297))

(assert (= (and b!3103297 (not res!1271053)) b!3103293))

(assert (= (and b!3103293 (not res!1271054)) b!3103300))

(assert (= (or b!3103304 b!3103297 b!3103303) bm!218974))

(declare-fun m!3401853 () Bool)

(assert (=> d!861185 m!3401853))

(declare-fun m!3401855 () Bool)

(assert (=> d!861185 m!3401855))

(declare-fun m!3401857 () Bool)

(assert (=> b!3103301 m!3401857))

(declare-fun m!3401859 () Bool)

(assert (=> b!3103300 m!3401859))

(assert (=> b!3103298 m!3401859))

(assert (=> b!3103298 m!3401859))

(declare-fun m!3401861 () Bool)

(assert (=> b!3103298 m!3401861))

(declare-fun m!3401863 () Bool)

(assert (=> b!3103298 m!3401863))

(assert (=> b!3103298 m!3401861))

(assert (=> b!3103298 m!3401863))

(declare-fun m!3401865 () Bool)

(assert (=> b!3103298 m!3401865))

(assert (=> b!3103294 m!3401863))

(assert (=> b!3103294 m!3401863))

(declare-fun m!3401867 () Bool)

(assert (=> b!3103294 m!3401867))

(assert (=> bm!218974 m!3401853))

(assert (=> b!3103299 m!3401859))

(assert (=> b!3103293 m!3401863))

(assert (=> b!3103293 m!3401863))

(assert (=> b!3103293 m!3401867))

(assert (=> b!3103179 d!861185))

(declare-fun d!861187 () Bool)

(assert (=> d!861187 (matchR!4449 (Union!9567 (regTwo!19647 r!17423) (regOne!19647 r!17423)) s!11993)))

(declare-fun lt!1056134 () Unit!49573)

(declare-fun choose!18360 (Regex!9567 Regex!9567 List!35432) Unit!49573)

(assert (=> d!861187 (= lt!1056134 (choose!18360 (regTwo!19647 r!17423) (regOne!19647 r!17423) s!11993))))

(declare-fun e!1939155 () Bool)

(assert (=> d!861187 e!1939155))

(declare-fun res!1271059 () Bool)

(assert (=> d!861187 (=> (not res!1271059) (not e!1939155))))

(assert (=> d!861187 (= res!1271059 (validRegex!4300 (regTwo!19647 r!17423)))))

(assert (=> d!861187 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!80 (regTwo!19647 r!17423) (regOne!19647 r!17423) s!11993) lt!1056134)))

(declare-fun b!3103308 () Bool)

(assert (=> b!3103308 (= e!1939155 (validRegex!4300 (regOne!19647 r!17423)))))

(assert (= (and d!861187 res!1271059) b!3103308))

(assert (=> d!861187 m!3401823))

(declare-fun m!3401869 () Bool)

(assert (=> d!861187 m!3401869))

(assert (=> d!861187 m!3401821))

(assert (=> b!3103308 m!3401833))

(assert (=> b!3103179 d!861187))

(declare-fun b!3103309 () Bool)

(declare-fun e!1939160 () Bool)

(declare-fun e!1939161 () Bool)

(assert (=> b!3103309 (= e!1939160 e!1939161)))

(declare-fun res!1271062 () Bool)

(assert (=> b!3103309 (=> (not res!1271062) (not e!1939161))))

(declare-fun lt!1056135 () Bool)

(assert (=> b!3103309 (= res!1271062 (not lt!1056135))))

(declare-fun b!3103311 () Bool)

(declare-fun res!1271063 () Bool)

(declare-fun e!1939159 () Bool)

(assert (=> b!3103311 (=> (not res!1271063) (not e!1939159))))

(assert (=> b!3103311 (= res!1271063 (isEmpty!19659 (tail!5093 s!11993)))))

(declare-fun b!3103312 () Bool)

(declare-fun res!1271061 () Bool)

(assert (=> b!3103312 (=> res!1271061 e!1939160)))

(assert (=> b!3103312 (= res!1271061 e!1939159)))

(declare-fun res!1271060 () Bool)

(assert (=> b!3103312 (=> (not res!1271060) (not e!1939159))))

(assert (=> b!3103312 (= res!1271060 lt!1056135)))

(declare-fun b!3103313 () Bool)

(declare-fun res!1271066 () Bool)

(assert (=> b!3103313 (=> res!1271066 e!1939160)))

(assert (=> b!3103313 (= res!1271066 (not ((_ is ElementMatch!9567) lt!1056127)))))

(declare-fun e!1939156 () Bool)

(assert (=> b!3103313 (= e!1939156 e!1939160)))

(declare-fun b!3103314 () Bool)

(declare-fun e!1939158 () Bool)

(assert (=> b!3103314 (= e!1939161 e!1939158)))

(declare-fun res!1271064 () Bool)

(assert (=> b!3103314 (=> res!1271064 e!1939158)))

(declare-fun call!218980 () Bool)

(assert (=> b!3103314 (= res!1271064 call!218980)))

(declare-fun b!3103315 () Bool)

(declare-fun e!1939157 () Bool)

(assert (=> b!3103315 (= e!1939157 (matchR!4449 (derivativeStep!2808 lt!1056127 (head!6867 s!11993)) (tail!5093 s!11993)))))

(declare-fun b!3103316 () Bool)

(assert (=> b!3103316 (= e!1939159 (= (head!6867 s!11993) (c!518707 lt!1056127)))))

(declare-fun b!3103317 () Bool)

(assert (=> b!3103317 (= e!1939158 (not (= (head!6867 s!11993) (c!518707 lt!1056127))))))

(declare-fun b!3103318 () Bool)

(assert (=> b!3103318 (= e!1939157 (nullable!3213 lt!1056127))))

(declare-fun bm!218975 () Bool)

(assert (=> bm!218975 (= call!218980 (isEmpty!19659 s!11993))))

(declare-fun b!3103319 () Bool)

(assert (=> b!3103319 (= e!1939156 (not lt!1056135))))

(declare-fun b!3103320 () Bool)

(declare-fun res!1271067 () Bool)

(assert (=> b!3103320 (=> (not res!1271067) (not e!1939159))))

(assert (=> b!3103320 (= res!1271067 (not call!218980))))

(declare-fun b!3103321 () Bool)

(declare-fun e!1939162 () Bool)

(assert (=> b!3103321 (= e!1939162 (= lt!1056135 call!218980))))

(declare-fun b!3103322 () Bool)

(assert (=> b!3103322 (= e!1939162 e!1939156)))

(declare-fun c!518738 () Bool)

(assert (=> b!3103322 (= c!518738 ((_ is EmptyLang!9567) lt!1056127))))

(declare-fun d!861189 () Bool)

(assert (=> d!861189 e!1939162))

(declare-fun c!518737 () Bool)

(assert (=> d!861189 (= c!518737 ((_ is EmptyExpr!9567) lt!1056127))))

(assert (=> d!861189 (= lt!1056135 e!1939157)))

(declare-fun c!518739 () Bool)

(assert (=> d!861189 (= c!518739 (isEmpty!19659 s!11993))))

(assert (=> d!861189 (validRegex!4300 lt!1056127)))

(assert (=> d!861189 (= (matchR!4449 lt!1056127 s!11993) lt!1056135)))

(declare-fun b!3103310 () Bool)

(declare-fun res!1271065 () Bool)

(assert (=> b!3103310 (=> res!1271065 e!1939158)))

(assert (=> b!3103310 (= res!1271065 (not (isEmpty!19659 (tail!5093 s!11993))))))

(assert (= (and d!861189 c!518739) b!3103318))

(assert (= (and d!861189 (not c!518739)) b!3103315))

(assert (= (and d!861189 c!518737) b!3103321))

(assert (= (and d!861189 (not c!518737)) b!3103322))

(assert (= (and b!3103322 c!518738) b!3103319))

(assert (= (and b!3103322 (not c!518738)) b!3103313))

(assert (= (and b!3103313 (not res!1271066)) b!3103312))

(assert (= (and b!3103312 res!1271060) b!3103320))

(assert (= (and b!3103320 res!1271067) b!3103311))

(assert (= (and b!3103311 res!1271063) b!3103316))

(assert (= (and b!3103312 (not res!1271061)) b!3103309))

(assert (= (and b!3103309 res!1271062) b!3103314))

(assert (= (and b!3103314 (not res!1271064)) b!3103310))

(assert (= (and b!3103310 (not res!1271065)) b!3103317))

(assert (= (or b!3103321 b!3103314 b!3103320) bm!218975))

(assert (=> d!861189 m!3401853))

(declare-fun m!3401871 () Bool)

(assert (=> d!861189 m!3401871))

(declare-fun m!3401873 () Bool)

(assert (=> b!3103318 m!3401873))

(assert (=> b!3103317 m!3401859))

(assert (=> b!3103315 m!3401859))

(assert (=> b!3103315 m!3401859))

(declare-fun m!3401875 () Bool)

(assert (=> b!3103315 m!3401875))

(assert (=> b!3103315 m!3401863))

(assert (=> b!3103315 m!3401875))

(assert (=> b!3103315 m!3401863))

(declare-fun m!3401877 () Bool)

(assert (=> b!3103315 m!3401877))

(assert (=> b!3103311 m!3401863))

(assert (=> b!3103311 m!3401863))

(assert (=> b!3103311 m!3401867))

(assert (=> bm!218975 m!3401853))

(assert (=> b!3103316 m!3401859))

(assert (=> b!3103310 m!3401863))

(assert (=> b!3103310 m!3401863))

(assert (=> b!3103310 m!3401867))

(assert (=> b!3103184 d!861189))

(declare-fun b!3103323 () Bool)

(declare-fun e!1939167 () Bool)

(declare-fun e!1939168 () Bool)

(assert (=> b!3103323 (= e!1939167 e!1939168)))

(declare-fun res!1271070 () Bool)

(assert (=> b!3103323 (=> (not res!1271070) (not e!1939168))))

(declare-fun lt!1056136 () Bool)

(assert (=> b!3103323 (= res!1271070 (not lt!1056136))))

(declare-fun b!3103325 () Bool)

(declare-fun res!1271071 () Bool)

(declare-fun e!1939166 () Bool)

(assert (=> b!3103325 (=> (not res!1271071) (not e!1939166))))

(assert (=> b!3103325 (= res!1271071 (isEmpty!19659 (tail!5093 s!11993)))))

(declare-fun b!3103326 () Bool)

(declare-fun res!1271069 () Bool)

(assert (=> b!3103326 (=> res!1271069 e!1939167)))

(assert (=> b!3103326 (= res!1271069 e!1939166)))

(declare-fun res!1271068 () Bool)

(assert (=> b!3103326 (=> (not res!1271068) (not e!1939166))))

(assert (=> b!3103326 (= res!1271068 lt!1056136)))

(declare-fun b!3103327 () Bool)

(declare-fun res!1271074 () Bool)

(assert (=> b!3103327 (=> res!1271074 e!1939167)))

(assert (=> b!3103327 (= res!1271074 (not ((_ is ElementMatch!9567) (regTwo!19647 r!17423))))))

(declare-fun e!1939163 () Bool)

(assert (=> b!3103327 (= e!1939163 e!1939167)))

(declare-fun b!3103328 () Bool)

(declare-fun e!1939165 () Bool)

(assert (=> b!3103328 (= e!1939168 e!1939165)))

(declare-fun res!1271072 () Bool)

(assert (=> b!3103328 (=> res!1271072 e!1939165)))

(declare-fun call!218981 () Bool)

(assert (=> b!3103328 (= res!1271072 call!218981)))

(declare-fun b!3103329 () Bool)

(declare-fun e!1939164 () Bool)

(assert (=> b!3103329 (= e!1939164 (matchR!4449 (derivativeStep!2808 (regTwo!19647 r!17423) (head!6867 s!11993)) (tail!5093 s!11993)))))

(declare-fun b!3103330 () Bool)

(assert (=> b!3103330 (= e!1939166 (= (head!6867 s!11993) (c!518707 (regTwo!19647 r!17423))))))

(declare-fun b!3103331 () Bool)

(assert (=> b!3103331 (= e!1939165 (not (= (head!6867 s!11993) (c!518707 (regTwo!19647 r!17423)))))))

(declare-fun b!3103332 () Bool)

(assert (=> b!3103332 (= e!1939164 (nullable!3213 (regTwo!19647 r!17423)))))

(declare-fun bm!218976 () Bool)

(assert (=> bm!218976 (= call!218981 (isEmpty!19659 s!11993))))

(declare-fun b!3103333 () Bool)

(assert (=> b!3103333 (= e!1939163 (not lt!1056136))))

(declare-fun b!3103334 () Bool)

(declare-fun res!1271075 () Bool)

(assert (=> b!3103334 (=> (not res!1271075) (not e!1939166))))

(assert (=> b!3103334 (= res!1271075 (not call!218981))))

(declare-fun b!3103335 () Bool)

(declare-fun e!1939169 () Bool)

(assert (=> b!3103335 (= e!1939169 (= lt!1056136 call!218981))))

(declare-fun b!3103336 () Bool)

(assert (=> b!3103336 (= e!1939169 e!1939163)))

(declare-fun c!518741 () Bool)

(assert (=> b!3103336 (= c!518741 ((_ is EmptyLang!9567) (regTwo!19647 r!17423)))))

(declare-fun d!861191 () Bool)

(assert (=> d!861191 e!1939169))

(declare-fun c!518740 () Bool)

(assert (=> d!861191 (= c!518740 ((_ is EmptyExpr!9567) (regTwo!19647 r!17423)))))

(assert (=> d!861191 (= lt!1056136 e!1939164)))

(declare-fun c!518742 () Bool)

(assert (=> d!861191 (= c!518742 (isEmpty!19659 s!11993))))

(assert (=> d!861191 (validRegex!4300 (regTwo!19647 r!17423))))

(assert (=> d!861191 (= (matchR!4449 (regTwo!19647 r!17423) s!11993) lt!1056136)))

(declare-fun b!3103324 () Bool)

(declare-fun res!1271073 () Bool)

(assert (=> b!3103324 (=> res!1271073 e!1939165)))

(assert (=> b!3103324 (= res!1271073 (not (isEmpty!19659 (tail!5093 s!11993))))))

(assert (= (and d!861191 c!518742) b!3103332))

(assert (= (and d!861191 (not c!518742)) b!3103329))

(assert (= (and d!861191 c!518740) b!3103335))

(assert (= (and d!861191 (not c!518740)) b!3103336))

(assert (= (and b!3103336 c!518741) b!3103333))

(assert (= (and b!3103336 (not c!518741)) b!3103327))

(assert (= (and b!3103327 (not res!1271074)) b!3103326))

(assert (= (and b!3103326 res!1271068) b!3103334))

(assert (= (and b!3103334 res!1271075) b!3103325))

(assert (= (and b!3103325 res!1271071) b!3103330))

(assert (= (and b!3103326 (not res!1271069)) b!3103323))

(assert (= (and b!3103323 res!1271070) b!3103328))

(assert (= (and b!3103328 (not res!1271072)) b!3103324))

(assert (= (and b!3103324 (not res!1271073)) b!3103331))

(assert (= (or b!3103335 b!3103328 b!3103334) bm!218976))

(assert (=> d!861191 m!3401853))

(assert (=> d!861191 m!3401821))

(declare-fun m!3401879 () Bool)

(assert (=> b!3103332 m!3401879))

(assert (=> b!3103331 m!3401859))

(assert (=> b!3103329 m!3401859))

(assert (=> b!3103329 m!3401859))

(declare-fun m!3401881 () Bool)

(assert (=> b!3103329 m!3401881))

(assert (=> b!3103329 m!3401863))

(assert (=> b!3103329 m!3401881))

(assert (=> b!3103329 m!3401863))

(declare-fun m!3401883 () Bool)

(assert (=> b!3103329 m!3401883))

(assert (=> b!3103325 m!3401863))

(assert (=> b!3103325 m!3401863))

(assert (=> b!3103325 m!3401867))

(assert (=> bm!218976 m!3401853))

(assert (=> b!3103330 m!3401859))

(assert (=> b!3103324 m!3401863))

(assert (=> b!3103324 m!3401863))

(assert (=> b!3103324 m!3401867))

(assert (=> b!3103184 d!861191))

(declare-fun d!861193 () Bool)

(assert (=> d!861193 (= (matchR!4449 (regTwo!19647 r!17423) s!11993) (matchR!4449 (simplify!522 (regTwo!19647 r!17423)) s!11993))))

(declare-fun lt!1056139 () Unit!49573)

(declare-fun choose!18361 (Regex!9567 List!35432) Unit!49573)

(assert (=> d!861193 (= lt!1056139 (choose!18361 (regTwo!19647 r!17423) s!11993))))

(assert (=> d!861193 (validRegex!4300 (regTwo!19647 r!17423))))

(assert (=> d!861193 (= (lemmaSimplifySound!330 (regTwo!19647 r!17423) s!11993) lt!1056139)))

(declare-fun bs!535710 () Bool)

(assert (= bs!535710 d!861193))

(assert (=> bs!535710 m!3401837))

(declare-fun m!3401885 () Bool)

(assert (=> bs!535710 m!3401885))

(assert (=> bs!535710 m!3401821))

(declare-fun m!3401887 () Bool)

(assert (=> bs!535710 m!3401887))

(assert (=> bs!535710 m!3401837))

(assert (=> bs!535710 m!3401829))

(assert (=> b!3103184 d!861193))

(declare-fun b!3103337 () Bool)

(declare-fun e!1939172 () Bool)

(declare-fun e!1939174 () Bool)

(assert (=> b!3103337 (= e!1939172 e!1939174)))

(declare-fun res!1271076 () Bool)

(assert (=> b!3103337 (= res!1271076 (not (nullable!3213 (reg!9896 r!17423))))))

(assert (=> b!3103337 (=> (not res!1271076) (not e!1939174))))

(declare-fun d!861195 () Bool)

(declare-fun res!1271077 () Bool)

(declare-fun e!1939171 () Bool)

(assert (=> d!861195 (=> res!1271077 e!1939171)))

(assert (=> d!861195 (= res!1271077 ((_ is ElementMatch!9567) r!17423))))

(assert (=> d!861195 (= (validRegex!4300 r!17423) e!1939171)))

(declare-fun b!3103338 () Bool)

(declare-fun e!1939175 () Bool)

(declare-fun e!1939173 () Bool)

(assert (=> b!3103338 (= e!1939175 e!1939173)))

(declare-fun res!1271079 () Bool)

(assert (=> b!3103338 (=> (not res!1271079) (not e!1939173))))

(declare-fun call!218983 () Bool)

(assert (=> b!3103338 (= res!1271079 call!218983)))

(declare-fun b!3103339 () Bool)

(assert (=> b!3103339 (= e!1939171 e!1939172)))

(declare-fun c!518744 () Bool)

(assert (=> b!3103339 (= c!518744 ((_ is Star!9567) r!17423))))

(declare-fun b!3103340 () Bool)

(declare-fun res!1271080 () Bool)

(declare-fun e!1939176 () Bool)

(assert (=> b!3103340 (=> (not res!1271080) (not e!1939176))))

(declare-fun call!218982 () Bool)

(assert (=> b!3103340 (= res!1271080 call!218982)))

(declare-fun e!1939170 () Bool)

(assert (=> b!3103340 (= e!1939170 e!1939176)))

(declare-fun b!3103341 () Bool)

(declare-fun call!218984 () Bool)

(assert (=> b!3103341 (= e!1939174 call!218984)))

(declare-fun b!3103342 () Bool)

(assert (=> b!3103342 (= e!1939176 call!218983)))

(declare-fun b!3103343 () Bool)

(assert (=> b!3103343 (= e!1939172 e!1939170)))

(declare-fun c!518743 () Bool)

(assert (=> b!3103343 (= c!518743 ((_ is Union!9567) r!17423))))

(declare-fun bm!218977 () Bool)

(assert (=> bm!218977 (= call!218982 (validRegex!4300 (ite c!518743 (regOne!19647 r!17423) (regTwo!19646 r!17423))))))

(declare-fun b!3103344 () Bool)

(declare-fun res!1271078 () Bool)

(assert (=> b!3103344 (=> res!1271078 e!1939175)))

(assert (=> b!3103344 (= res!1271078 (not ((_ is Concat!14888) r!17423)))))

(assert (=> b!3103344 (= e!1939170 e!1939175)))

(declare-fun bm!218978 () Bool)

(assert (=> bm!218978 (= call!218984 (validRegex!4300 (ite c!518744 (reg!9896 r!17423) (ite c!518743 (regTwo!19647 r!17423) (regOne!19646 r!17423)))))))

(declare-fun b!3103345 () Bool)

(assert (=> b!3103345 (= e!1939173 call!218982)))

(declare-fun bm!218979 () Bool)

(assert (=> bm!218979 (= call!218983 call!218984)))

(assert (= (and d!861195 (not res!1271077)) b!3103339))

(assert (= (and b!3103339 c!518744) b!3103337))

(assert (= (and b!3103339 (not c!518744)) b!3103343))

(assert (= (and b!3103337 res!1271076) b!3103341))

(assert (= (and b!3103343 c!518743) b!3103340))

(assert (= (and b!3103343 (not c!518743)) b!3103344))

(assert (= (and b!3103340 res!1271080) b!3103342))

(assert (= (and b!3103344 (not res!1271078)) b!3103338))

(assert (= (and b!3103338 res!1271079) b!3103345))

(assert (= (or b!3103340 b!3103345) bm!218977))

(assert (= (or b!3103342 b!3103338) bm!218979))

(assert (= (or b!3103341 bm!218979) bm!218978))

(declare-fun m!3401889 () Bool)

(assert (=> b!3103337 m!3401889))

(declare-fun m!3401891 () Bool)

(assert (=> bm!218977 m!3401891))

(declare-fun m!3401893 () Bool)

(assert (=> bm!218978 m!3401893))

(assert (=> start!294348 d!861195))

(declare-fun b!3103346 () Bool)

(declare-fun e!1939179 () Bool)

(declare-fun e!1939181 () Bool)

(assert (=> b!3103346 (= e!1939179 e!1939181)))

(declare-fun res!1271081 () Bool)

(assert (=> b!3103346 (= res!1271081 (not (nullable!3213 (reg!9896 (regOne!19647 r!17423)))))))

(assert (=> b!3103346 (=> (not res!1271081) (not e!1939181))))

(declare-fun d!861197 () Bool)

(declare-fun res!1271082 () Bool)

(declare-fun e!1939178 () Bool)

(assert (=> d!861197 (=> res!1271082 e!1939178)))

(assert (=> d!861197 (= res!1271082 ((_ is ElementMatch!9567) (regOne!19647 r!17423)))))

(assert (=> d!861197 (= (validRegex!4300 (regOne!19647 r!17423)) e!1939178)))

(declare-fun b!3103347 () Bool)

(declare-fun e!1939182 () Bool)

(declare-fun e!1939180 () Bool)

(assert (=> b!3103347 (= e!1939182 e!1939180)))

(declare-fun res!1271084 () Bool)

(assert (=> b!3103347 (=> (not res!1271084) (not e!1939180))))

(declare-fun call!218986 () Bool)

(assert (=> b!3103347 (= res!1271084 call!218986)))

(declare-fun b!3103348 () Bool)

(assert (=> b!3103348 (= e!1939178 e!1939179)))

(declare-fun c!518746 () Bool)

(assert (=> b!3103348 (= c!518746 ((_ is Star!9567) (regOne!19647 r!17423)))))

(declare-fun b!3103349 () Bool)

(declare-fun res!1271085 () Bool)

(declare-fun e!1939183 () Bool)

(assert (=> b!3103349 (=> (not res!1271085) (not e!1939183))))

(declare-fun call!218985 () Bool)

(assert (=> b!3103349 (= res!1271085 call!218985)))

(declare-fun e!1939177 () Bool)

(assert (=> b!3103349 (= e!1939177 e!1939183)))

(declare-fun b!3103350 () Bool)

(declare-fun call!218987 () Bool)

(assert (=> b!3103350 (= e!1939181 call!218987)))

(declare-fun b!3103351 () Bool)

(assert (=> b!3103351 (= e!1939183 call!218986)))

(declare-fun b!3103352 () Bool)

(assert (=> b!3103352 (= e!1939179 e!1939177)))

(declare-fun c!518745 () Bool)

(assert (=> b!3103352 (= c!518745 ((_ is Union!9567) (regOne!19647 r!17423)))))

(declare-fun bm!218980 () Bool)

(assert (=> bm!218980 (= call!218985 (validRegex!4300 (ite c!518745 (regOne!19647 (regOne!19647 r!17423)) (regTwo!19646 (regOne!19647 r!17423)))))))

(declare-fun b!3103353 () Bool)

(declare-fun res!1271083 () Bool)

(assert (=> b!3103353 (=> res!1271083 e!1939182)))

(assert (=> b!3103353 (= res!1271083 (not ((_ is Concat!14888) (regOne!19647 r!17423))))))

(assert (=> b!3103353 (= e!1939177 e!1939182)))

(declare-fun bm!218981 () Bool)

(assert (=> bm!218981 (= call!218987 (validRegex!4300 (ite c!518746 (reg!9896 (regOne!19647 r!17423)) (ite c!518745 (regTwo!19647 (regOne!19647 r!17423)) (regOne!19646 (regOne!19647 r!17423))))))))

(declare-fun b!3103354 () Bool)

(assert (=> b!3103354 (= e!1939180 call!218985)))

(declare-fun bm!218982 () Bool)

(assert (=> bm!218982 (= call!218986 call!218987)))

(assert (= (and d!861197 (not res!1271082)) b!3103348))

(assert (= (and b!3103348 c!518746) b!3103346))

(assert (= (and b!3103348 (not c!518746)) b!3103352))

(assert (= (and b!3103346 res!1271081) b!3103350))

(assert (= (and b!3103352 c!518745) b!3103349))

(assert (= (and b!3103352 (not c!518745)) b!3103353))

(assert (= (and b!3103349 res!1271085) b!3103351))

(assert (= (and b!3103353 (not res!1271083)) b!3103347))

(assert (= (and b!3103347 res!1271084) b!3103354))

(assert (= (or b!3103349 b!3103354) bm!218980))

(assert (= (or b!3103351 b!3103347) bm!218982))

(assert (= (or b!3103350 bm!218982) bm!218981))

(declare-fun m!3401895 () Bool)

(assert (=> b!3103346 m!3401895))

(declare-fun m!3401897 () Bool)

(assert (=> bm!218980 m!3401897))

(declare-fun m!3401899 () Bool)

(assert (=> bm!218981 m!3401899))

(assert (=> b!3103180 d!861197))

(declare-fun b!3103661 () Bool)

(assert (=> b!3103661 true))

(assert (=> b!3103661 true))

(declare-fun bs!535714 () Bool)

(declare-fun b!3103658 () Bool)

(assert (= bs!535714 (and b!3103658 b!3103661)))

(declare-fun lambda!114928 () Int)

(declare-fun lambda!114927 () Int)

(assert (=> bs!535714 (not (= lambda!114928 lambda!114927))))

(assert (=> b!3103658 true))

(assert (=> b!3103658 true))

(declare-fun b!3103652 () Bool)

(declare-fun e!1939341 () Bool)

(declare-fun call!219038 () Bool)

(assert (=> b!3103652 (= e!1939341 call!219038)))

(declare-fun b!3103653 () Bool)

(declare-fun c!518826 () Bool)

(assert (=> b!3103653 (= c!518826 ((_ is ElementMatch!9567) r!17423))))

(declare-fun e!1939339 () Bool)

(declare-fun e!1939338 () Bool)

(assert (=> b!3103653 (= e!1939339 e!1939338)))

(declare-fun b!3103654 () Bool)

(declare-fun e!1939340 () Bool)

(declare-fun e!1939344 () Bool)

(assert (=> b!3103654 (= e!1939340 e!1939344)))

(declare-fun res!1271188 () Bool)

(assert (=> b!3103654 (= res!1271188 (matchRSpec!1704 (regOne!19647 r!17423) s!11993))))

(assert (=> b!3103654 (=> res!1271188 e!1939344)))

(declare-fun b!3103655 () Bool)

(assert (=> b!3103655 (= e!1939338 (= s!11993 (Cons!35308 (c!518707 r!17423) Nil!35308)))))

(declare-fun b!3103656 () Bool)

(declare-fun res!1271190 () Bool)

(declare-fun e!1939342 () Bool)

(assert (=> b!3103656 (=> res!1271190 e!1939342)))

(assert (=> b!3103656 (= res!1271190 call!219038)))

(declare-fun e!1939343 () Bool)

(assert (=> b!3103656 (= e!1939343 e!1939342)))

(declare-fun call!219039 () Bool)

(assert (=> b!3103658 (= e!1939343 call!219039)))

(declare-fun b!3103659 () Bool)

(assert (=> b!3103659 (= e!1939340 e!1939343)))

(declare-fun c!518827 () Bool)

(assert (=> b!3103659 (= c!518827 ((_ is Star!9567) r!17423))))

(declare-fun bm!219033 () Bool)

(assert (=> bm!219033 (= call!219038 (isEmpty!19659 s!11993))))

(declare-fun b!3103657 () Bool)

(assert (=> b!3103657 (= e!1939344 (matchRSpec!1704 (regTwo!19647 r!17423) s!11993))))

(declare-fun d!861199 () Bool)

(declare-fun c!518828 () Bool)

(assert (=> d!861199 (= c!518828 ((_ is EmptyExpr!9567) r!17423))))

(assert (=> d!861199 (= (matchRSpec!1704 r!17423 s!11993) e!1939341)))

(declare-fun bm!219034 () Bool)

(declare-fun Exists!1830 (Int) Bool)

(assert (=> bm!219034 (= call!219039 (Exists!1830 (ite c!518827 lambda!114927 lambda!114928)))))

(declare-fun b!3103660 () Bool)

(declare-fun c!518825 () Bool)

(assert (=> b!3103660 (= c!518825 ((_ is Union!9567) r!17423))))

(assert (=> b!3103660 (= e!1939338 e!1939340)))

(assert (=> b!3103661 (= e!1939342 call!219039)))

(declare-fun b!3103662 () Bool)

(assert (=> b!3103662 (= e!1939341 e!1939339)))

(declare-fun res!1271189 () Bool)

(assert (=> b!3103662 (= res!1271189 (not ((_ is EmptyLang!9567) r!17423)))))

(assert (=> b!3103662 (=> (not res!1271189) (not e!1939339))))

(assert (= (and d!861199 c!518828) b!3103652))

(assert (= (and d!861199 (not c!518828)) b!3103662))

(assert (= (and b!3103662 res!1271189) b!3103653))

(assert (= (and b!3103653 c!518826) b!3103655))

(assert (= (and b!3103653 (not c!518826)) b!3103660))

(assert (= (and b!3103660 c!518825) b!3103654))

(assert (= (and b!3103660 (not c!518825)) b!3103659))

(assert (= (and b!3103654 (not res!1271188)) b!3103657))

(assert (= (and b!3103659 c!518827) b!3103656))

(assert (= (and b!3103659 (not c!518827)) b!3103658))

(assert (= (and b!3103656 (not res!1271190)) b!3103661))

(assert (= (or b!3103661 b!3103658) bm!219034))

(assert (= (or b!3103652 b!3103656) bm!219033))

(declare-fun m!3401997 () Bool)

(assert (=> b!3103654 m!3401997))

(assert (=> bm!219033 m!3401853))

(declare-fun m!3401999 () Bool)

(assert (=> b!3103657 m!3401999))

(declare-fun m!3402001 () Bool)

(assert (=> bm!219034 m!3402001))

(assert (=> b!3103181 d!861199))

(declare-fun b!3103667 () Bool)

(declare-fun e!1939349 () Bool)

(declare-fun e!1939350 () Bool)

(assert (=> b!3103667 (= e!1939349 e!1939350)))

(declare-fun res!1271193 () Bool)

(assert (=> b!3103667 (=> (not res!1271193) (not e!1939350))))

(declare-fun lt!1056179 () Bool)

(assert (=> b!3103667 (= res!1271193 (not lt!1056179))))

(declare-fun b!3103669 () Bool)

(declare-fun res!1271194 () Bool)

(declare-fun e!1939348 () Bool)

(assert (=> b!3103669 (=> (not res!1271194) (not e!1939348))))

(assert (=> b!3103669 (= res!1271194 (isEmpty!19659 (tail!5093 s!11993)))))

(declare-fun b!3103670 () Bool)

(declare-fun res!1271192 () Bool)

(assert (=> b!3103670 (=> res!1271192 e!1939349)))

(assert (=> b!3103670 (= res!1271192 e!1939348)))

(declare-fun res!1271191 () Bool)

(assert (=> b!3103670 (=> (not res!1271191) (not e!1939348))))

(assert (=> b!3103670 (= res!1271191 lt!1056179)))

(declare-fun b!3103671 () Bool)

(declare-fun res!1271197 () Bool)

(assert (=> b!3103671 (=> res!1271197 e!1939349)))

(assert (=> b!3103671 (= res!1271197 (not ((_ is ElementMatch!9567) r!17423)))))

(declare-fun e!1939345 () Bool)

(assert (=> b!3103671 (= e!1939345 e!1939349)))

(declare-fun b!3103672 () Bool)

(declare-fun e!1939347 () Bool)

(assert (=> b!3103672 (= e!1939350 e!1939347)))

(declare-fun res!1271195 () Bool)

(assert (=> b!3103672 (=> res!1271195 e!1939347)))

(declare-fun call!219040 () Bool)

(assert (=> b!3103672 (= res!1271195 call!219040)))

(declare-fun b!3103673 () Bool)

(declare-fun e!1939346 () Bool)

(assert (=> b!3103673 (= e!1939346 (matchR!4449 (derivativeStep!2808 r!17423 (head!6867 s!11993)) (tail!5093 s!11993)))))

(declare-fun b!3103674 () Bool)

(assert (=> b!3103674 (= e!1939348 (= (head!6867 s!11993) (c!518707 r!17423)))))

(declare-fun b!3103675 () Bool)

(assert (=> b!3103675 (= e!1939347 (not (= (head!6867 s!11993) (c!518707 r!17423))))))

(declare-fun b!3103676 () Bool)

(assert (=> b!3103676 (= e!1939346 (nullable!3213 r!17423))))

(declare-fun bm!219035 () Bool)

(assert (=> bm!219035 (= call!219040 (isEmpty!19659 s!11993))))

(declare-fun b!3103677 () Bool)

(assert (=> b!3103677 (= e!1939345 (not lt!1056179))))

(declare-fun b!3103678 () Bool)

(declare-fun res!1271198 () Bool)

(assert (=> b!3103678 (=> (not res!1271198) (not e!1939348))))

(assert (=> b!3103678 (= res!1271198 (not call!219040))))

(declare-fun b!3103679 () Bool)

(declare-fun e!1939351 () Bool)

(assert (=> b!3103679 (= e!1939351 (= lt!1056179 call!219040))))

(declare-fun b!3103680 () Bool)

(assert (=> b!3103680 (= e!1939351 e!1939345)))

(declare-fun c!518830 () Bool)

(assert (=> b!3103680 (= c!518830 ((_ is EmptyLang!9567) r!17423))))

(declare-fun d!861225 () Bool)

(assert (=> d!861225 e!1939351))

(declare-fun c!518829 () Bool)

(assert (=> d!861225 (= c!518829 ((_ is EmptyExpr!9567) r!17423))))

(assert (=> d!861225 (= lt!1056179 e!1939346)))

(declare-fun c!518831 () Bool)

(assert (=> d!861225 (= c!518831 (isEmpty!19659 s!11993))))

(assert (=> d!861225 (validRegex!4300 r!17423)))

(assert (=> d!861225 (= (matchR!4449 r!17423 s!11993) lt!1056179)))

(declare-fun b!3103668 () Bool)

(declare-fun res!1271196 () Bool)

(assert (=> b!3103668 (=> res!1271196 e!1939347)))

(assert (=> b!3103668 (= res!1271196 (not (isEmpty!19659 (tail!5093 s!11993))))))

(assert (= (and d!861225 c!518831) b!3103676))

(assert (= (and d!861225 (not c!518831)) b!3103673))

(assert (= (and d!861225 c!518829) b!3103679))

(assert (= (and d!861225 (not c!518829)) b!3103680))

(assert (= (and b!3103680 c!518830) b!3103677))

(assert (= (and b!3103680 (not c!518830)) b!3103671))

(assert (= (and b!3103671 (not res!1271197)) b!3103670))

(assert (= (and b!3103670 res!1271191) b!3103678))

(assert (= (and b!3103678 res!1271198) b!3103669))

(assert (= (and b!3103669 res!1271194) b!3103674))

(assert (= (and b!3103670 (not res!1271192)) b!3103667))

(assert (= (and b!3103667 res!1271193) b!3103672))

(assert (= (and b!3103672 (not res!1271195)) b!3103668))

(assert (= (and b!3103668 (not res!1271196)) b!3103675))

(assert (= (or b!3103679 b!3103672 b!3103678) bm!219035))

(assert (=> d!861225 m!3401853))

(assert (=> d!861225 m!3401813))

(declare-fun m!3402003 () Bool)

(assert (=> b!3103676 m!3402003))

(assert (=> b!3103675 m!3401859))

(assert (=> b!3103673 m!3401859))

(assert (=> b!3103673 m!3401859))

(declare-fun m!3402005 () Bool)

(assert (=> b!3103673 m!3402005))

(assert (=> b!3103673 m!3401863))

(assert (=> b!3103673 m!3402005))

(assert (=> b!3103673 m!3401863))

(declare-fun m!3402007 () Bool)

(assert (=> b!3103673 m!3402007))

(assert (=> b!3103669 m!3401863))

(assert (=> b!3103669 m!3401863))

(assert (=> b!3103669 m!3401867))

(assert (=> bm!219035 m!3401853))

(assert (=> b!3103674 m!3401859))

(assert (=> b!3103668 m!3401863))

(assert (=> b!3103668 m!3401863))

(assert (=> b!3103668 m!3401867))

(assert (=> b!3103181 d!861225))

(declare-fun d!861227 () Bool)

(assert (=> d!861227 (= (matchR!4449 r!17423 s!11993) (matchRSpec!1704 r!17423 s!11993))))

(declare-fun lt!1056182 () Unit!49573)

(declare-fun choose!18362 (Regex!9567 List!35432) Unit!49573)

(assert (=> d!861227 (= lt!1056182 (choose!18362 r!17423 s!11993))))

(assert (=> d!861227 (validRegex!4300 r!17423)))

(assert (=> d!861227 (= (mainMatchTheorem!1704 r!17423 s!11993) lt!1056182)))

(declare-fun bs!535715 () Bool)

(assert (= bs!535715 d!861227))

(assert (=> bs!535715 m!3401817))

(assert (=> bs!535715 m!3401815))

(declare-fun m!3402009 () Bool)

(assert (=> bs!535715 m!3402009))

(assert (=> bs!535715 m!3401813))

(assert (=> b!3103181 d!861227))

(declare-fun d!861229 () Bool)

(assert (=> d!861229 (= (isEmptyLang!618 lt!1056128) ((_ is EmptyLang!9567) lt!1056128))))

(assert (=> b!3103186 d!861229))

(declare-fun b!3103731 () Bool)

(declare-fun e!1939385 () Regex!9567)

(declare-fun lt!1056195 () Regex!9567)

(assert (=> b!3103731 (= e!1939385 lt!1056195)))

(declare-fun b!3103732 () Bool)

(declare-fun c!518863 () Bool)

(declare-fun lt!1056198 () Regex!9567)

(declare-fun isEmptyExpr!624 (Regex!9567) Bool)

(assert (=> b!3103732 (= c!518863 (isEmptyExpr!624 lt!1056198))))

(declare-fun e!1939391 () Regex!9567)

(declare-fun e!1939386 () Regex!9567)

(assert (=> b!3103732 (= e!1939391 e!1939386)))

(declare-fun b!3103733 () Bool)

(declare-fun c!518864 () Bool)

(assert (=> b!3103733 (= c!518864 ((_ is Union!9567) (regTwo!19647 r!17423)))))

(declare-fun e!1939389 () Regex!9567)

(declare-fun e!1939390 () Regex!9567)

(assert (=> b!3103733 (= e!1939389 e!1939390)))

(declare-fun b!3103734 () Bool)

(declare-fun e!1939380 () Bool)

(declare-fun lt!1056196 () Regex!9567)

(assert (=> b!3103734 (= e!1939380 (= (nullable!3213 lt!1056196) (nullable!3213 (regTwo!19647 r!17423))))))

(declare-fun b!3103735 () Bool)

(declare-fun e!1939387 () Regex!9567)

(declare-fun lt!1056199 () Regex!9567)

(assert (=> b!3103735 (= e!1939387 (Concat!14888 lt!1056198 lt!1056199))))

(declare-fun b!3103736 () Bool)

(declare-fun e!1939388 () Regex!9567)

(assert (=> b!3103736 (= e!1939388 EmptyLang!9567)))

(declare-fun b!3103737 () Bool)

(declare-fun lt!1056197 () Regex!9567)

(assert (=> b!3103737 (= e!1939385 (Union!9567 lt!1056195 lt!1056197))))

(declare-fun b!3103738 () Bool)

(declare-fun c!518857 () Bool)

(assert (=> b!3103738 (= c!518857 ((_ is EmptyExpr!9567) (regTwo!19647 r!17423)))))

(declare-fun e!1939393 () Regex!9567)

(declare-fun e!1939381 () Regex!9567)

(assert (=> b!3103738 (= e!1939393 e!1939381)))

(declare-fun b!3103739 () Bool)

(assert (=> b!3103739 (= e!1939386 lt!1056199)))

(declare-fun b!3103740 () Bool)

(assert (=> b!3103740 (= e!1939388 e!1939393)))

(declare-fun c!518858 () Bool)

(assert (=> b!3103740 (= c!518858 ((_ is ElementMatch!9567) (regTwo!19647 r!17423)))))

(declare-fun b!3103741 () Bool)

(declare-fun e!1939384 () Regex!9567)

(assert (=> b!3103741 (= e!1939384 lt!1056197)))

(declare-fun bm!219050 () Bool)

(declare-fun call!219060 () Bool)

(assert (=> bm!219050 (= call!219060 (isEmptyLang!618 (ite c!518864 lt!1056195 lt!1056198)))))

(declare-fun b!3103742 () Bool)

(declare-fun c!518854 () Bool)

(declare-fun e!1939383 () Bool)

(assert (=> b!3103742 (= c!518854 e!1939383)))

(declare-fun res!1271206 () Bool)

(assert (=> b!3103742 (=> res!1271206 e!1939383)))

(declare-fun call!219057 () Bool)

(assert (=> b!3103742 (= res!1271206 call!219057)))

(declare-fun lt!1056200 () Regex!9567)

(declare-fun call!219056 () Regex!9567)

(assert (=> b!3103742 (= lt!1056200 call!219056)))

(declare-fun e!1939392 () Regex!9567)

(assert (=> b!3103742 (= e!1939389 e!1939392)))

(declare-fun b!3103743 () Bool)

(assert (=> b!3103743 (= e!1939390 e!1939391)))

(declare-fun call!219061 () Regex!9567)

(assert (=> b!3103743 (= lt!1056198 call!219061)))

(declare-fun call!219058 () Regex!9567)

(assert (=> b!3103743 (= lt!1056199 call!219058)))

(declare-fun res!1271207 () Bool)

(assert (=> b!3103743 (= res!1271207 call!219060)))

(declare-fun e!1939382 () Bool)

(assert (=> b!3103743 (=> res!1271207 e!1939382)))

(declare-fun c!518856 () Bool)

(assert (=> b!3103743 (= c!518856 e!1939382)))

(declare-fun b!3103744 () Bool)

(assert (=> b!3103744 (= e!1939391 EmptyLang!9567)))

(declare-fun b!3103745 () Bool)

(assert (=> b!3103745 (= e!1939381 EmptyExpr!9567)))

(declare-fun b!3103746 () Bool)

(assert (=> b!3103746 (= e!1939387 lt!1056198)))

(declare-fun c!518861 () Bool)

(declare-fun bm!219051 () Bool)

(assert (=> bm!219051 (= call!219057 (isEmptyLang!618 (ite c!518861 lt!1056200 (ite c!518864 lt!1056197 lt!1056199))))))

(declare-fun b!3103747 () Bool)

(assert (=> b!3103747 (= e!1939392 EmptyExpr!9567)))

(declare-fun bm!219052 () Bool)

(declare-fun call!219059 () Bool)

(assert (=> bm!219052 (= call!219059 call!219057)))

(declare-fun b!3103748 () Bool)

(assert (=> b!3103748 (= e!1939382 call!219059)))

(declare-fun b!3103749 () Bool)

(assert (=> b!3103749 (= e!1939381 e!1939389)))

(assert (=> b!3103749 (= c!518861 ((_ is Star!9567) (regTwo!19647 r!17423)))))

(declare-fun b!3103750 () Bool)

(assert (=> b!3103750 (= e!1939386 e!1939387)))

(declare-fun c!518862 () Bool)

(declare-fun call!219055 () Bool)

(assert (=> b!3103750 (= c!518862 call!219055)))

(declare-fun b!3103751 () Bool)

(assert (=> b!3103751 (= e!1939393 (regTwo!19647 r!17423))))

(declare-fun b!3103752 () Bool)

(assert (=> b!3103752 (= e!1939383 call!219055)))

(declare-fun bm!219053 () Bool)

(assert (=> bm!219053 (= call!219061 call!219056)))

(declare-fun bm!219054 () Bool)

(assert (=> bm!219054 (= call!219056 (simplify!522 (ite c!518861 (reg!9896 (regTwo!19647 r!17423)) (ite c!518864 (regTwo!19647 (regTwo!19647 r!17423)) (regOne!19646 (regTwo!19647 r!17423))))))))

(declare-fun b!3103753 () Bool)

(assert (=> b!3103753 (= e!1939392 (Star!9567 lt!1056200))))

(declare-fun b!3103754 () Bool)

(declare-fun c!518859 () Bool)

(assert (=> b!3103754 (= c!518859 call!219059)))

(assert (=> b!3103754 (= e!1939384 e!1939385)))

(declare-fun d!861231 () Bool)

(assert (=> d!861231 e!1939380))

(declare-fun res!1271205 () Bool)

(assert (=> d!861231 (=> (not res!1271205) (not e!1939380))))

(assert (=> d!861231 (= res!1271205 (validRegex!4300 lt!1056196))))

(assert (=> d!861231 (= lt!1056196 e!1939388)))

(declare-fun c!518860 () Bool)

(assert (=> d!861231 (= c!518860 ((_ is EmptyLang!9567) (regTwo!19647 r!17423)))))

(assert (=> d!861231 (validRegex!4300 (regTwo!19647 r!17423))))

(assert (=> d!861231 (= (simplify!522 (regTwo!19647 r!17423)) lt!1056196)))

(declare-fun bm!219055 () Bool)

(assert (=> bm!219055 (= call!219058 (simplify!522 (ite c!518864 (regOne!19647 (regTwo!19647 r!17423)) (regTwo!19646 (regTwo!19647 r!17423)))))))

(declare-fun bm!219056 () Bool)

(assert (=> bm!219056 (= call!219055 (isEmptyExpr!624 (ite c!518861 lt!1056200 lt!1056199)))))

(declare-fun b!3103755 () Bool)

(assert (=> b!3103755 (= e!1939390 e!1939384)))

(assert (=> b!3103755 (= lt!1056195 call!219058)))

(assert (=> b!3103755 (= lt!1056197 call!219061)))

(declare-fun c!518855 () Bool)

(assert (=> b!3103755 (= c!518855 call!219060)))

(assert (= (and d!861231 c!518860) b!3103736))

(assert (= (and d!861231 (not c!518860)) b!3103740))

(assert (= (and b!3103740 c!518858) b!3103751))

(assert (= (and b!3103740 (not c!518858)) b!3103738))

(assert (= (and b!3103738 c!518857) b!3103745))

(assert (= (and b!3103738 (not c!518857)) b!3103749))

(assert (= (and b!3103749 c!518861) b!3103742))

(assert (= (and b!3103749 (not c!518861)) b!3103733))

(assert (= (and b!3103742 (not res!1271206)) b!3103752))

(assert (= (and b!3103742 c!518854) b!3103747))

(assert (= (and b!3103742 (not c!518854)) b!3103753))

(assert (= (and b!3103733 c!518864) b!3103755))

(assert (= (and b!3103733 (not c!518864)) b!3103743))

(assert (= (and b!3103755 c!518855) b!3103741))

(assert (= (and b!3103755 (not c!518855)) b!3103754))

(assert (= (and b!3103754 c!518859) b!3103731))

(assert (= (and b!3103754 (not c!518859)) b!3103737))

(assert (= (and b!3103743 (not res!1271207)) b!3103748))

(assert (= (and b!3103743 c!518856) b!3103744))

(assert (= (and b!3103743 (not c!518856)) b!3103732))

(assert (= (and b!3103732 c!518863) b!3103739))

(assert (= (and b!3103732 (not c!518863)) b!3103750))

(assert (= (and b!3103750 c!518862) b!3103746))

(assert (= (and b!3103750 (not c!518862)) b!3103735))

(assert (= (or b!3103755 b!3103743) bm!219055))

(assert (= (or b!3103755 b!3103743) bm!219053))

(assert (= (or b!3103755 b!3103743) bm!219050))

(assert (= (or b!3103754 b!3103748) bm!219052))

(assert (= (or b!3103752 b!3103750) bm!219056))

(assert (= (or b!3103742 bm!219053) bm!219054))

(assert (= (or b!3103742 bm!219052) bm!219051))

(assert (= (and d!861231 res!1271205) b!3103734))

(declare-fun m!3402011 () Bool)

(assert (=> bm!219055 m!3402011))

(declare-fun m!3402013 () Bool)

(assert (=> bm!219051 m!3402013))

(declare-fun m!3402015 () Bool)

(assert (=> bm!219054 m!3402015))

(declare-fun m!3402017 () Bool)

(assert (=> bm!219056 m!3402017))

(declare-fun m!3402019 () Bool)

(assert (=> b!3103732 m!3402019))

(declare-fun m!3402021 () Bool)

(assert (=> bm!219050 m!3402021))

(declare-fun m!3402023 () Bool)

(assert (=> d!861231 m!3402023))

(assert (=> d!861231 m!3401821))

(declare-fun m!3402025 () Bool)

(assert (=> b!3103734 m!3402025))

(assert (=> b!3103734 m!3401879))

(assert (=> b!3103186 d!861231))

(declare-fun b!3103756 () Bool)

(declare-fun e!1939399 () Regex!9567)

(declare-fun lt!1056201 () Regex!9567)

(assert (=> b!3103756 (= e!1939399 lt!1056201)))

(declare-fun b!3103757 () Bool)

(declare-fun c!518874 () Bool)

(declare-fun lt!1056204 () Regex!9567)

(assert (=> b!3103757 (= c!518874 (isEmptyExpr!624 lt!1056204))))

(declare-fun e!1939405 () Regex!9567)

(declare-fun e!1939400 () Regex!9567)

(assert (=> b!3103757 (= e!1939405 e!1939400)))

(declare-fun b!3103758 () Bool)

(declare-fun c!518875 () Bool)

(assert (=> b!3103758 (= c!518875 ((_ is Union!9567) (regOne!19647 r!17423)))))

(declare-fun e!1939403 () Regex!9567)

(declare-fun e!1939404 () Regex!9567)

(assert (=> b!3103758 (= e!1939403 e!1939404)))

(declare-fun b!3103759 () Bool)

(declare-fun e!1939394 () Bool)

(declare-fun lt!1056202 () Regex!9567)

(assert (=> b!3103759 (= e!1939394 (= (nullable!3213 lt!1056202) (nullable!3213 (regOne!19647 r!17423))))))

(declare-fun b!3103760 () Bool)

(declare-fun e!1939401 () Regex!9567)

(declare-fun lt!1056205 () Regex!9567)

(assert (=> b!3103760 (= e!1939401 (Concat!14888 lt!1056204 lt!1056205))))

(declare-fun b!3103761 () Bool)

(declare-fun e!1939402 () Regex!9567)

(assert (=> b!3103761 (= e!1939402 EmptyLang!9567)))

(declare-fun b!3103762 () Bool)

(declare-fun lt!1056203 () Regex!9567)

(assert (=> b!3103762 (= e!1939399 (Union!9567 lt!1056201 lt!1056203))))

(declare-fun b!3103763 () Bool)

(declare-fun c!518868 () Bool)

(assert (=> b!3103763 (= c!518868 ((_ is EmptyExpr!9567) (regOne!19647 r!17423)))))

(declare-fun e!1939407 () Regex!9567)

(declare-fun e!1939395 () Regex!9567)

(assert (=> b!3103763 (= e!1939407 e!1939395)))

(declare-fun b!3103764 () Bool)

(assert (=> b!3103764 (= e!1939400 lt!1056205)))

(declare-fun b!3103765 () Bool)

(assert (=> b!3103765 (= e!1939402 e!1939407)))

(declare-fun c!518869 () Bool)

(assert (=> b!3103765 (= c!518869 ((_ is ElementMatch!9567) (regOne!19647 r!17423)))))

(declare-fun b!3103766 () Bool)

(declare-fun e!1939398 () Regex!9567)

(assert (=> b!3103766 (= e!1939398 lt!1056203)))

(declare-fun call!219067 () Bool)

(declare-fun bm!219057 () Bool)

(assert (=> bm!219057 (= call!219067 (isEmptyLang!618 (ite c!518875 lt!1056201 lt!1056204)))))

(declare-fun b!3103767 () Bool)

(declare-fun c!518865 () Bool)

(declare-fun e!1939397 () Bool)

(assert (=> b!3103767 (= c!518865 e!1939397)))

(declare-fun res!1271209 () Bool)

(assert (=> b!3103767 (=> res!1271209 e!1939397)))

(declare-fun call!219064 () Bool)

(assert (=> b!3103767 (= res!1271209 call!219064)))

(declare-fun lt!1056206 () Regex!9567)

(declare-fun call!219063 () Regex!9567)

(assert (=> b!3103767 (= lt!1056206 call!219063)))

(declare-fun e!1939406 () Regex!9567)

(assert (=> b!3103767 (= e!1939403 e!1939406)))

(declare-fun b!3103768 () Bool)

(assert (=> b!3103768 (= e!1939404 e!1939405)))

(declare-fun call!219068 () Regex!9567)

(assert (=> b!3103768 (= lt!1056204 call!219068)))

(declare-fun call!219065 () Regex!9567)

(assert (=> b!3103768 (= lt!1056205 call!219065)))

(declare-fun res!1271210 () Bool)

(assert (=> b!3103768 (= res!1271210 call!219067)))

(declare-fun e!1939396 () Bool)

(assert (=> b!3103768 (=> res!1271210 e!1939396)))

(declare-fun c!518867 () Bool)

(assert (=> b!3103768 (= c!518867 e!1939396)))

(declare-fun b!3103769 () Bool)

(assert (=> b!3103769 (= e!1939405 EmptyLang!9567)))

(declare-fun b!3103770 () Bool)

(assert (=> b!3103770 (= e!1939395 EmptyExpr!9567)))

(declare-fun b!3103771 () Bool)

(assert (=> b!3103771 (= e!1939401 lt!1056204)))

(declare-fun c!518872 () Bool)

(declare-fun bm!219058 () Bool)

(assert (=> bm!219058 (= call!219064 (isEmptyLang!618 (ite c!518872 lt!1056206 (ite c!518875 lt!1056203 lt!1056205))))))

(declare-fun b!3103772 () Bool)

(assert (=> b!3103772 (= e!1939406 EmptyExpr!9567)))

(declare-fun bm!219059 () Bool)

(declare-fun call!219066 () Bool)

(assert (=> bm!219059 (= call!219066 call!219064)))

(declare-fun b!3103773 () Bool)

(assert (=> b!3103773 (= e!1939396 call!219066)))

(declare-fun b!3103774 () Bool)

(assert (=> b!3103774 (= e!1939395 e!1939403)))

(assert (=> b!3103774 (= c!518872 ((_ is Star!9567) (regOne!19647 r!17423)))))

(declare-fun b!3103775 () Bool)

(assert (=> b!3103775 (= e!1939400 e!1939401)))

(declare-fun c!518873 () Bool)

(declare-fun call!219062 () Bool)

(assert (=> b!3103775 (= c!518873 call!219062)))

(declare-fun b!3103776 () Bool)

(assert (=> b!3103776 (= e!1939407 (regOne!19647 r!17423))))

(declare-fun b!3103777 () Bool)

(assert (=> b!3103777 (= e!1939397 call!219062)))

(declare-fun bm!219060 () Bool)

(assert (=> bm!219060 (= call!219068 call!219063)))

(declare-fun bm!219061 () Bool)

(assert (=> bm!219061 (= call!219063 (simplify!522 (ite c!518872 (reg!9896 (regOne!19647 r!17423)) (ite c!518875 (regTwo!19647 (regOne!19647 r!17423)) (regOne!19646 (regOne!19647 r!17423))))))))

(declare-fun b!3103778 () Bool)

(assert (=> b!3103778 (= e!1939406 (Star!9567 lt!1056206))))

(declare-fun b!3103779 () Bool)

(declare-fun c!518870 () Bool)

(assert (=> b!3103779 (= c!518870 call!219066)))

(assert (=> b!3103779 (= e!1939398 e!1939399)))

(declare-fun d!861233 () Bool)

(assert (=> d!861233 e!1939394))

(declare-fun res!1271208 () Bool)

(assert (=> d!861233 (=> (not res!1271208) (not e!1939394))))

(assert (=> d!861233 (= res!1271208 (validRegex!4300 lt!1056202))))

(assert (=> d!861233 (= lt!1056202 e!1939402)))

(declare-fun c!518871 () Bool)

(assert (=> d!861233 (= c!518871 ((_ is EmptyLang!9567) (regOne!19647 r!17423)))))

(assert (=> d!861233 (validRegex!4300 (regOne!19647 r!17423))))

(assert (=> d!861233 (= (simplify!522 (regOne!19647 r!17423)) lt!1056202)))

(declare-fun bm!219062 () Bool)

(assert (=> bm!219062 (= call!219065 (simplify!522 (ite c!518875 (regOne!19647 (regOne!19647 r!17423)) (regTwo!19646 (regOne!19647 r!17423)))))))

(declare-fun bm!219063 () Bool)

(assert (=> bm!219063 (= call!219062 (isEmptyExpr!624 (ite c!518872 lt!1056206 lt!1056205)))))

(declare-fun b!3103780 () Bool)

(assert (=> b!3103780 (= e!1939404 e!1939398)))

(assert (=> b!3103780 (= lt!1056201 call!219065)))

(assert (=> b!3103780 (= lt!1056203 call!219068)))

(declare-fun c!518866 () Bool)

(assert (=> b!3103780 (= c!518866 call!219067)))

(assert (= (and d!861233 c!518871) b!3103761))

(assert (= (and d!861233 (not c!518871)) b!3103765))

(assert (= (and b!3103765 c!518869) b!3103776))

(assert (= (and b!3103765 (not c!518869)) b!3103763))

(assert (= (and b!3103763 c!518868) b!3103770))

(assert (= (and b!3103763 (not c!518868)) b!3103774))

(assert (= (and b!3103774 c!518872) b!3103767))

(assert (= (and b!3103774 (not c!518872)) b!3103758))

(assert (= (and b!3103767 (not res!1271209)) b!3103777))

(assert (= (and b!3103767 c!518865) b!3103772))

(assert (= (and b!3103767 (not c!518865)) b!3103778))

(assert (= (and b!3103758 c!518875) b!3103780))

(assert (= (and b!3103758 (not c!518875)) b!3103768))

(assert (= (and b!3103780 c!518866) b!3103766))

(assert (= (and b!3103780 (not c!518866)) b!3103779))

(assert (= (and b!3103779 c!518870) b!3103756))

(assert (= (and b!3103779 (not c!518870)) b!3103762))

(assert (= (and b!3103768 (not res!1271210)) b!3103773))

(assert (= (and b!3103768 c!518867) b!3103769))

(assert (= (and b!3103768 (not c!518867)) b!3103757))

(assert (= (and b!3103757 c!518874) b!3103764))

(assert (= (and b!3103757 (not c!518874)) b!3103775))

(assert (= (and b!3103775 c!518873) b!3103771))

(assert (= (and b!3103775 (not c!518873)) b!3103760))

(assert (= (or b!3103780 b!3103768) bm!219062))

(assert (= (or b!3103780 b!3103768) bm!219060))

(assert (= (or b!3103780 b!3103768) bm!219057))

(assert (= (or b!3103779 b!3103773) bm!219059))

(assert (= (or b!3103777 b!3103775) bm!219063))

(assert (= (or b!3103767 bm!219060) bm!219061))

(assert (= (or b!3103767 bm!219059) bm!219058))

(assert (= (and d!861233 res!1271208) b!3103759))

(declare-fun m!3402027 () Bool)

(assert (=> bm!219062 m!3402027))

(declare-fun m!3402029 () Bool)

(assert (=> bm!219058 m!3402029))

(declare-fun m!3402031 () Bool)

(assert (=> bm!219061 m!3402031))

(declare-fun m!3402033 () Bool)

(assert (=> bm!219063 m!3402033))

(declare-fun m!3402035 () Bool)

(assert (=> b!3103757 m!3402035))

(declare-fun m!3402037 () Bool)

(assert (=> bm!219057 m!3402037))

(declare-fun m!3402039 () Bool)

(assert (=> d!861233 m!3402039))

(assert (=> d!861233 m!3401833))

(declare-fun m!3402041 () Bool)

(assert (=> b!3103759 m!3402041))

(declare-fun m!3402043 () Bool)

(assert (=> b!3103759 m!3402043))

(assert (=> b!3103186 d!861233))

(declare-fun b!3103793 () Bool)

(declare-fun e!1939410 () Bool)

(declare-fun tp!975118 () Bool)

(assert (=> b!3103793 (= e!1939410 tp!975118)))

(declare-fun b!3103792 () Bool)

(declare-fun tp!975121 () Bool)

(declare-fun tp!975122 () Bool)

(assert (=> b!3103792 (= e!1939410 (and tp!975121 tp!975122))))

(declare-fun b!3103794 () Bool)

(declare-fun tp!975119 () Bool)

(declare-fun tp!975120 () Bool)

(assert (=> b!3103794 (= e!1939410 (and tp!975119 tp!975120))))

(declare-fun b!3103791 () Bool)

(assert (=> b!3103791 (= e!1939410 tp_is_empty!16697)))

(assert (=> b!3103185 (= tp!975069 e!1939410)))

(assert (= (and b!3103185 ((_ is ElementMatch!9567) (reg!9896 r!17423))) b!3103791))

(assert (= (and b!3103185 ((_ is Concat!14888) (reg!9896 r!17423))) b!3103792))

(assert (= (and b!3103185 ((_ is Star!9567) (reg!9896 r!17423))) b!3103793))

(assert (= (and b!3103185 ((_ is Union!9567) (reg!9896 r!17423))) b!3103794))

(declare-fun b!3103799 () Bool)

(declare-fun e!1939413 () Bool)

(declare-fun tp!975125 () Bool)

(assert (=> b!3103799 (= e!1939413 (and tp_is_empty!16697 tp!975125))))

(assert (=> b!3103183 (= tp!975064 e!1939413)))

(assert (= (and b!3103183 ((_ is Cons!35308) (t!234497 s!11993))) b!3103799))

(declare-fun b!3103802 () Bool)

(declare-fun e!1939414 () Bool)

(declare-fun tp!975126 () Bool)

(assert (=> b!3103802 (= e!1939414 tp!975126)))

(declare-fun b!3103801 () Bool)

(declare-fun tp!975129 () Bool)

(declare-fun tp!975130 () Bool)

(assert (=> b!3103801 (= e!1939414 (and tp!975129 tp!975130))))

(declare-fun b!3103803 () Bool)

(declare-fun tp!975127 () Bool)

(declare-fun tp!975128 () Bool)

(assert (=> b!3103803 (= e!1939414 (and tp!975127 tp!975128))))

(declare-fun b!3103800 () Bool)

(assert (=> b!3103800 (= e!1939414 tp_is_empty!16697)))

(assert (=> b!3103178 (= tp!975067 e!1939414)))

(assert (= (and b!3103178 ((_ is ElementMatch!9567) (regOne!19646 r!17423))) b!3103800))

(assert (= (and b!3103178 ((_ is Concat!14888) (regOne!19646 r!17423))) b!3103801))

(assert (= (and b!3103178 ((_ is Star!9567) (regOne!19646 r!17423))) b!3103802))

(assert (= (and b!3103178 ((_ is Union!9567) (regOne!19646 r!17423))) b!3103803))

(declare-fun b!3103806 () Bool)

(declare-fun e!1939415 () Bool)

(declare-fun tp!975131 () Bool)

(assert (=> b!3103806 (= e!1939415 tp!975131)))

(declare-fun b!3103805 () Bool)

(declare-fun tp!975134 () Bool)

(declare-fun tp!975135 () Bool)

(assert (=> b!3103805 (= e!1939415 (and tp!975134 tp!975135))))

(declare-fun b!3103807 () Bool)

(declare-fun tp!975132 () Bool)

(declare-fun tp!975133 () Bool)

(assert (=> b!3103807 (= e!1939415 (and tp!975132 tp!975133))))

(declare-fun b!3103804 () Bool)

(assert (=> b!3103804 (= e!1939415 tp_is_empty!16697)))

(assert (=> b!3103178 (= tp!975068 e!1939415)))

(assert (= (and b!3103178 ((_ is ElementMatch!9567) (regTwo!19646 r!17423))) b!3103804))

(assert (= (and b!3103178 ((_ is Concat!14888) (regTwo!19646 r!17423))) b!3103805))

(assert (= (and b!3103178 ((_ is Star!9567) (regTwo!19646 r!17423))) b!3103806))

(assert (= (and b!3103178 ((_ is Union!9567) (regTwo!19646 r!17423))) b!3103807))

(declare-fun b!3103810 () Bool)

(declare-fun e!1939416 () Bool)

(declare-fun tp!975136 () Bool)

(assert (=> b!3103810 (= e!1939416 tp!975136)))

(declare-fun b!3103809 () Bool)

(declare-fun tp!975139 () Bool)

(declare-fun tp!975140 () Bool)

(assert (=> b!3103809 (= e!1939416 (and tp!975139 tp!975140))))

(declare-fun b!3103811 () Bool)

(declare-fun tp!975137 () Bool)

(declare-fun tp!975138 () Bool)

(assert (=> b!3103811 (= e!1939416 (and tp!975137 tp!975138))))

(declare-fun b!3103808 () Bool)

(assert (=> b!3103808 (= e!1939416 tp_is_empty!16697)))

(assert (=> b!3103182 (= tp!975065 e!1939416)))

(assert (= (and b!3103182 ((_ is ElementMatch!9567) (regOne!19647 r!17423))) b!3103808))

(assert (= (and b!3103182 ((_ is Concat!14888) (regOne!19647 r!17423))) b!3103809))

(assert (= (and b!3103182 ((_ is Star!9567) (regOne!19647 r!17423))) b!3103810))

(assert (= (and b!3103182 ((_ is Union!9567) (regOne!19647 r!17423))) b!3103811))

(declare-fun b!3103814 () Bool)

(declare-fun e!1939417 () Bool)

(declare-fun tp!975141 () Bool)

(assert (=> b!3103814 (= e!1939417 tp!975141)))

(declare-fun b!3103813 () Bool)

(declare-fun tp!975144 () Bool)

(declare-fun tp!975145 () Bool)

(assert (=> b!3103813 (= e!1939417 (and tp!975144 tp!975145))))

(declare-fun b!3103815 () Bool)

(declare-fun tp!975142 () Bool)

(declare-fun tp!975143 () Bool)

(assert (=> b!3103815 (= e!1939417 (and tp!975142 tp!975143))))

(declare-fun b!3103812 () Bool)

(assert (=> b!3103812 (= e!1939417 tp_is_empty!16697)))

(assert (=> b!3103182 (= tp!975066 e!1939417)))

(assert (= (and b!3103182 ((_ is ElementMatch!9567) (regTwo!19647 r!17423))) b!3103812))

(assert (= (and b!3103182 ((_ is Concat!14888) (regTwo!19647 r!17423))) b!3103813))

(assert (= (and b!3103182 ((_ is Star!9567) (regTwo!19647 r!17423))) b!3103814))

(assert (= (and b!3103182 ((_ is Union!9567) (regTwo!19647 r!17423))) b!3103815))

(check-sat (not d!861233) (not bm!219062) (not b!3103657) (not b!3103337) (not b!3103301) (not b!3103317) (not bm!219061) (not bm!219051) (not b!3103324) (not b!3103311) (not b!3103298) (not d!861227) (not b!3103299) (not b!3103805) (not b!3103734) (not b!3103813) (not b!3103809) (not bm!219035) (not bm!219034) (not b!3103300) (not b!3103233) (not d!861189) (not b!3103308) (not b!3103799) (not b!3103815) (not b!3103675) (not b!3103676) (not bm!219057) (not bm!218969) (not bm!218981) (not b!3103325) (not d!861225) (not b!3103332) (not b!3103294) tp_is_empty!16697 (not b!3103654) (not b!3103674) (not b!3103732) (not b!3103293) (not bm!219033) (not bm!218975) (not bm!219058) (not bm!219063) (not d!861231) (not bm!218970) (not bm!218974) (not b!3103316) (not bm!218976) (not bm!219056) (not b!3103811) (not b!3103310) (not b!3103806) (not b!3103814) (not b!3103673) (not b!3103792) (not b!3103668) (not bm!218978) (not d!861185) (not b!3103793) (not d!861193) (not b!3103318) (not d!861191) (not b!3103330) (not b!3103807) (not bm!219050) (not bm!218977) (not b!3103803) (not b!3103810) (not b!3103329) (not b!3103759) (not b!3103757) (not b!3103331) (not b!3103801) (not bm!219054) (not b!3103315) (not b!3103669) (not b!3103802) (not d!861187) (not b!3103794) (not bm!219055) (not bm!218980) (not b!3103346))
(check-sat)
