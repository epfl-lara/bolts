; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295828 () Bool)

(assert start!295828)

(declare-fun b!3137884 () Bool)

(declare-fun e!1957717 () Bool)

(declare-fun tp!982195 () Bool)

(declare-fun tp!982194 () Bool)

(assert (=> b!3137884 (= e!1957717 (and tp!982195 tp!982194))))

(declare-fun res!1282187 () Bool)

(declare-fun e!1957716 () Bool)

(assert (=> start!295828 (=> (not res!1282187) (not e!1957716))))

(declare-datatypes ((C!19484 0))(
  ( (C!19485 (val!11778 Int)) )
))
(declare-datatypes ((Regex!9649 0))(
  ( (ElementMatch!9649 (c!527383 C!19484)) (Concat!14970 (regOne!19810 Regex!9649) (regTwo!19810 Regex!9649)) (EmptyExpr!9649) (Star!9649 (reg!9978 Regex!9649)) (EmptyLang!9649) (Union!9649 (regOne!19811 Regex!9649) (regTwo!19811 Regex!9649)) )
))
(declare-fun r!17345 () Regex!9649)

(declare-fun validRegex!4382 (Regex!9649) Bool)

(assert (=> start!295828 (= res!1282187 (validRegex!4382 r!17345))))

(assert (=> start!295828 e!1957716))

(assert (=> start!295828 e!1957717))

(declare-fun b!3137885 () Bool)

(declare-fun tp_is_empty!16861 () Bool)

(assert (=> b!3137885 (= e!1957717 tp_is_empty!16861)))

(declare-fun b!3137886 () Bool)

(declare-fun tp!982192 () Bool)

(declare-fun tp!982191 () Bool)

(assert (=> b!3137886 (= e!1957717 (and tp!982192 tp!982191))))

(declare-fun b!3137887 () Bool)

(assert (=> b!3137887 (= e!1957716 (not (validRegex!4382 (regOne!19811 r!17345))))))

(declare-fun b!3137888 () Bool)

(declare-fun tp!982193 () Bool)

(assert (=> b!3137888 (= e!1957717 tp!982193)))

(declare-fun b!3137889 () Bool)

(declare-fun res!1282188 () Bool)

(assert (=> b!3137889 (=> (not res!1282188) (not e!1957716))))

(get-info :version)

(assert (=> b!3137889 (= res!1282188 (and (not ((_ is EmptyLang!9649) r!17345)) (not ((_ is ElementMatch!9649) r!17345)) (not ((_ is EmptyExpr!9649) r!17345)) (not ((_ is Star!9649) r!17345)) ((_ is Union!9649) r!17345)))))

(assert (= (and start!295828 res!1282187) b!3137889))

(assert (= (and b!3137889 res!1282188) b!3137887))

(assert (= (and start!295828 ((_ is ElementMatch!9649) r!17345)) b!3137885))

(assert (= (and start!295828 ((_ is Concat!14970) r!17345)) b!3137884))

(assert (= (and start!295828 ((_ is Star!9649) r!17345)) b!3137888))

(assert (= (and start!295828 ((_ is Union!9649) r!17345)) b!3137886))

(declare-fun m!3417265 () Bool)

(assert (=> start!295828 m!3417265))

(declare-fun m!3417267 () Bool)

(assert (=> b!3137887 m!3417267))

(check-sat (not b!3137888) tp_is_empty!16861 (not b!3137887) (not b!3137886) (not b!3137884) (not start!295828))
(check-sat)
(get-model)

(declare-fun d!865518 () Bool)

(declare-fun res!1282222 () Bool)

(declare-fun e!1957765 () Bool)

(assert (=> d!865518 (=> res!1282222 e!1957765)))

(assert (=> d!865518 (= res!1282222 ((_ is ElementMatch!9649) r!17345))))

(assert (=> d!865518 (= (validRegex!4382 r!17345) e!1957765)))

(declare-fun b!3137950 () Bool)

(declare-fun e!1957766 () Bool)

(declare-fun e!1957767 () Bool)

(assert (=> b!3137950 (= e!1957766 e!1957767)))

(declare-fun res!1282220 () Bool)

(assert (=> b!3137950 (=> (not res!1282220) (not e!1957767))))

(declare-fun call!225068 () Bool)

(assert (=> b!3137950 (= res!1282220 call!225068)))

(declare-fun bm!225062 () Bool)

(declare-fun c!527396 () Bool)

(assert (=> bm!225062 (= call!225068 (validRegex!4382 (ite c!527396 (regTwo!19811 r!17345) (regOne!19810 r!17345))))))

(declare-fun b!3137951 () Bool)

(declare-fun call!225067 () Bool)

(assert (=> b!3137951 (= e!1957767 call!225067)))

(declare-fun c!527397 () Bool)

(declare-fun call!225069 () Bool)

(declare-fun bm!225063 () Bool)

(assert (=> bm!225063 (= call!225069 (validRegex!4382 (ite c!527397 (reg!9978 r!17345) (ite c!527396 (regOne!19811 r!17345) (regTwo!19810 r!17345)))))))

(declare-fun b!3137952 () Bool)

(declare-fun e!1957764 () Bool)

(declare-fun e!1957768 () Bool)

(assert (=> b!3137952 (= e!1957764 e!1957768)))

(assert (=> b!3137952 (= c!527396 ((_ is Union!9649) r!17345))))

(declare-fun b!3137953 () Bool)

(declare-fun res!1282223 () Bool)

(assert (=> b!3137953 (=> res!1282223 e!1957766)))

(assert (=> b!3137953 (= res!1282223 (not ((_ is Concat!14970) r!17345)))))

(assert (=> b!3137953 (= e!1957768 e!1957766)))

(declare-fun b!3137954 () Bool)

(assert (=> b!3137954 (= e!1957765 e!1957764)))

(assert (=> b!3137954 (= c!527397 ((_ is Star!9649) r!17345))))

(declare-fun bm!225064 () Bool)

(assert (=> bm!225064 (= call!225067 call!225069)))

(declare-fun b!3137955 () Bool)

(declare-fun e!1957763 () Bool)

(assert (=> b!3137955 (= e!1957764 e!1957763)))

(declare-fun res!1282219 () Bool)

(declare-fun nullable!3283 (Regex!9649) Bool)

(assert (=> b!3137955 (= res!1282219 (not (nullable!3283 (reg!9978 r!17345))))))

(assert (=> b!3137955 (=> (not res!1282219) (not e!1957763))))

(declare-fun b!3137956 () Bool)

(declare-fun res!1282221 () Bool)

(declare-fun e!1957762 () Bool)

(assert (=> b!3137956 (=> (not res!1282221) (not e!1957762))))

(assert (=> b!3137956 (= res!1282221 call!225067)))

(assert (=> b!3137956 (= e!1957768 e!1957762)))

(declare-fun b!3137957 () Bool)

(assert (=> b!3137957 (= e!1957763 call!225069)))

(declare-fun b!3137958 () Bool)

(assert (=> b!3137958 (= e!1957762 call!225068)))

(assert (= (and d!865518 (not res!1282222)) b!3137954))

(assert (= (and b!3137954 c!527397) b!3137955))

(assert (= (and b!3137954 (not c!527397)) b!3137952))

(assert (= (and b!3137955 res!1282219) b!3137957))

(assert (= (and b!3137952 c!527396) b!3137956))

(assert (= (and b!3137952 (not c!527396)) b!3137953))

(assert (= (and b!3137956 res!1282221) b!3137958))

(assert (= (and b!3137953 (not res!1282223)) b!3137950))

(assert (= (and b!3137950 res!1282220) b!3137951))

(assert (= (or b!3137958 b!3137950) bm!225062))

(assert (= (or b!3137956 b!3137951) bm!225064))

(assert (= (or b!3137957 bm!225064) bm!225063))

(declare-fun m!3417281 () Bool)

(assert (=> bm!225062 m!3417281))

(declare-fun m!3417283 () Bool)

(assert (=> bm!225063 m!3417283))

(declare-fun m!3417285 () Bool)

(assert (=> b!3137955 m!3417285))

(assert (=> start!295828 d!865518))

(declare-fun d!865522 () Bool)

(declare-fun res!1282227 () Bool)

(declare-fun e!1957772 () Bool)

(assert (=> d!865522 (=> res!1282227 e!1957772)))

(assert (=> d!865522 (= res!1282227 ((_ is ElementMatch!9649) (regOne!19811 r!17345)))))

(assert (=> d!865522 (= (validRegex!4382 (regOne!19811 r!17345)) e!1957772)))

(declare-fun b!3137963 () Bool)

(declare-fun e!1957773 () Bool)

(declare-fun e!1957774 () Bool)

(assert (=> b!3137963 (= e!1957773 e!1957774)))

(declare-fun res!1282225 () Bool)

(assert (=> b!3137963 (=> (not res!1282225) (not e!1957774))))

(declare-fun call!225071 () Bool)

(assert (=> b!3137963 (= res!1282225 call!225071)))

(declare-fun bm!225065 () Bool)

(declare-fun c!527398 () Bool)

(assert (=> bm!225065 (= call!225071 (validRegex!4382 (ite c!527398 (regTwo!19811 (regOne!19811 r!17345)) (regOne!19810 (regOne!19811 r!17345)))))))

(declare-fun b!3137964 () Bool)

(declare-fun call!225070 () Bool)

(assert (=> b!3137964 (= e!1957774 call!225070)))

(declare-fun c!527399 () Bool)

(declare-fun call!225072 () Bool)

(declare-fun bm!225066 () Bool)

(assert (=> bm!225066 (= call!225072 (validRegex!4382 (ite c!527399 (reg!9978 (regOne!19811 r!17345)) (ite c!527398 (regOne!19811 (regOne!19811 r!17345)) (regTwo!19810 (regOne!19811 r!17345))))))))

(declare-fun b!3137965 () Bool)

(declare-fun e!1957771 () Bool)

(declare-fun e!1957775 () Bool)

(assert (=> b!3137965 (= e!1957771 e!1957775)))

(assert (=> b!3137965 (= c!527398 ((_ is Union!9649) (regOne!19811 r!17345)))))

(declare-fun b!3137966 () Bool)

(declare-fun res!1282228 () Bool)

(assert (=> b!3137966 (=> res!1282228 e!1957773)))

(assert (=> b!3137966 (= res!1282228 (not ((_ is Concat!14970) (regOne!19811 r!17345))))))

(assert (=> b!3137966 (= e!1957775 e!1957773)))

(declare-fun b!3137967 () Bool)

(assert (=> b!3137967 (= e!1957772 e!1957771)))

(assert (=> b!3137967 (= c!527399 ((_ is Star!9649) (regOne!19811 r!17345)))))

(declare-fun bm!225067 () Bool)

(assert (=> bm!225067 (= call!225070 call!225072)))

(declare-fun b!3137968 () Bool)

(declare-fun e!1957770 () Bool)

(assert (=> b!3137968 (= e!1957771 e!1957770)))

(declare-fun res!1282224 () Bool)

(assert (=> b!3137968 (= res!1282224 (not (nullable!3283 (reg!9978 (regOne!19811 r!17345)))))))

(assert (=> b!3137968 (=> (not res!1282224) (not e!1957770))))

(declare-fun b!3137969 () Bool)

(declare-fun res!1282226 () Bool)

(declare-fun e!1957769 () Bool)

(assert (=> b!3137969 (=> (not res!1282226) (not e!1957769))))

(assert (=> b!3137969 (= res!1282226 call!225070)))

(assert (=> b!3137969 (= e!1957775 e!1957769)))

(declare-fun b!3137970 () Bool)

(assert (=> b!3137970 (= e!1957770 call!225072)))

(declare-fun b!3137971 () Bool)

(assert (=> b!3137971 (= e!1957769 call!225071)))

(assert (= (and d!865522 (not res!1282227)) b!3137967))

(assert (= (and b!3137967 c!527399) b!3137968))

(assert (= (and b!3137967 (not c!527399)) b!3137965))

(assert (= (and b!3137968 res!1282224) b!3137970))

(assert (= (and b!3137965 c!527398) b!3137969))

(assert (= (and b!3137965 (not c!527398)) b!3137966))

(assert (= (and b!3137969 res!1282226) b!3137971))

(assert (= (and b!3137966 (not res!1282228)) b!3137963))

(assert (= (and b!3137963 res!1282225) b!3137964))

(assert (= (or b!3137971 b!3137963) bm!225065))

(assert (= (or b!3137969 b!3137964) bm!225067))

(assert (= (or b!3137970 bm!225067) bm!225066))

(declare-fun m!3417287 () Bool)

(assert (=> bm!225065 m!3417287))

(declare-fun m!3417289 () Bool)

(assert (=> bm!225066 m!3417289))

(declare-fun m!3417291 () Bool)

(assert (=> b!3137968 m!3417291))

(assert (=> b!3137887 d!865522))

(declare-fun b!3138003 () Bool)

(declare-fun e!1957783 () Bool)

(declare-fun tp!982242 () Bool)

(declare-fun tp!982243 () Bool)

(assert (=> b!3138003 (= e!1957783 (and tp!982242 tp!982243))))

(assert (=> b!3137884 (= tp!982195 e!1957783)))

(declare-fun b!3138005 () Bool)

(declare-fun tp!982244 () Bool)

(declare-fun tp!982245 () Bool)

(assert (=> b!3138005 (= e!1957783 (and tp!982244 tp!982245))))

(declare-fun b!3138002 () Bool)

(assert (=> b!3138002 (= e!1957783 tp_is_empty!16861)))

(declare-fun b!3138004 () Bool)

(declare-fun tp!982241 () Bool)

(assert (=> b!3138004 (= e!1957783 tp!982241)))

(assert (= (and b!3137884 ((_ is ElementMatch!9649) (regOne!19810 r!17345))) b!3138002))

(assert (= (and b!3137884 ((_ is Concat!14970) (regOne!19810 r!17345))) b!3138003))

(assert (= (and b!3137884 ((_ is Star!9649) (regOne!19810 r!17345))) b!3138004))

(assert (= (and b!3137884 ((_ is Union!9649) (regOne!19810 r!17345))) b!3138005))

(declare-fun b!3138007 () Bool)

(declare-fun e!1957784 () Bool)

(declare-fun tp!982247 () Bool)

(declare-fun tp!982248 () Bool)

(assert (=> b!3138007 (= e!1957784 (and tp!982247 tp!982248))))

(assert (=> b!3137884 (= tp!982194 e!1957784)))

(declare-fun b!3138009 () Bool)

(declare-fun tp!982249 () Bool)

(declare-fun tp!982250 () Bool)

(assert (=> b!3138009 (= e!1957784 (and tp!982249 tp!982250))))

(declare-fun b!3138006 () Bool)

(assert (=> b!3138006 (= e!1957784 tp_is_empty!16861)))

(declare-fun b!3138008 () Bool)

(declare-fun tp!982246 () Bool)

(assert (=> b!3138008 (= e!1957784 tp!982246)))

(assert (= (and b!3137884 ((_ is ElementMatch!9649) (regTwo!19810 r!17345))) b!3138006))

(assert (= (and b!3137884 ((_ is Concat!14970) (regTwo!19810 r!17345))) b!3138007))

(assert (= (and b!3137884 ((_ is Star!9649) (regTwo!19810 r!17345))) b!3138008))

(assert (= (and b!3137884 ((_ is Union!9649) (regTwo!19810 r!17345))) b!3138009))

(declare-fun b!3138011 () Bool)

(declare-fun e!1957785 () Bool)

(declare-fun tp!982252 () Bool)

(declare-fun tp!982253 () Bool)

(assert (=> b!3138011 (= e!1957785 (and tp!982252 tp!982253))))

(assert (=> b!3137886 (= tp!982192 e!1957785)))

(declare-fun b!3138013 () Bool)

(declare-fun tp!982254 () Bool)

(declare-fun tp!982255 () Bool)

(assert (=> b!3138013 (= e!1957785 (and tp!982254 tp!982255))))

(declare-fun b!3138010 () Bool)

(assert (=> b!3138010 (= e!1957785 tp_is_empty!16861)))

(declare-fun b!3138012 () Bool)

(declare-fun tp!982251 () Bool)

(assert (=> b!3138012 (= e!1957785 tp!982251)))

(assert (= (and b!3137886 ((_ is ElementMatch!9649) (regOne!19811 r!17345))) b!3138010))

(assert (= (and b!3137886 ((_ is Concat!14970) (regOne!19811 r!17345))) b!3138011))

(assert (= (and b!3137886 ((_ is Star!9649) (regOne!19811 r!17345))) b!3138012))

(assert (= (and b!3137886 ((_ is Union!9649) (regOne!19811 r!17345))) b!3138013))

(declare-fun b!3138015 () Bool)

(declare-fun e!1957786 () Bool)

(declare-fun tp!982257 () Bool)

(declare-fun tp!982258 () Bool)

(assert (=> b!3138015 (= e!1957786 (and tp!982257 tp!982258))))

(assert (=> b!3137886 (= tp!982191 e!1957786)))

(declare-fun b!3138017 () Bool)

(declare-fun tp!982259 () Bool)

(declare-fun tp!982260 () Bool)

(assert (=> b!3138017 (= e!1957786 (and tp!982259 tp!982260))))

(declare-fun b!3138014 () Bool)

(assert (=> b!3138014 (= e!1957786 tp_is_empty!16861)))

(declare-fun b!3138016 () Bool)

(declare-fun tp!982256 () Bool)

(assert (=> b!3138016 (= e!1957786 tp!982256)))

(assert (= (and b!3137886 ((_ is ElementMatch!9649) (regTwo!19811 r!17345))) b!3138014))

(assert (= (and b!3137886 ((_ is Concat!14970) (regTwo!19811 r!17345))) b!3138015))

(assert (= (and b!3137886 ((_ is Star!9649) (regTwo!19811 r!17345))) b!3138016))

(assert (= (and b!3137886 ((_ is Union!9649) (regTwo!19811 r!17345))) b!3138017))

(declare-fun b!3138019 () Bool)

(declare-fun e!1957787 () Bool)

(declare-fun tp!982262 () Bool)

(declare-fun tp!982263 () Bool)

(assert (=> b!3138019 (= e!1957787 (and tp!982262 tp!982263))))

(assert (=> b!3137888 (= tp!982193 e!1957787)))

(declare-fun b!3138021 () Bool)

(declare-fun tp!982264 () Bool)

(declare-fun tp!982265 () Bool)

(assert (=> b!3138021 (= e!1957787 (and tp!982264 tp!982265))))

(declare-fun b!3138018 () Bool)

(assert (=> b!3138018 (= e!1957787 tp_is_empty!16861)))

(declare-fun b!3138020 () Bool)

(declare-fun tp!982261 () Bool)

(assert (=> b!3138020 (= e!1957787 tp!982261)))

(assert (= (and b!3137888 ((_ is ElementMatch!9649) (reg!9978 r!17345))) b!3138018))

(assert (= (and b!3137888 ((_ is Concat!14970) (reg!9978 r!17345))) b!3138019))

(assert (= (and b!3137888 ((_ is Star!9649) (reg!9978 r!17345))) b!3138020))

(assert (= (and b!3137888 ((_ is Union!9649) (reg!9978 r!17345))) b!3138021))

(check-sat (not b!3137955) (not bm!225063) (not bm!225065) (not b!3138012) (not b!3138013) (not b!3138004) (not b!3138016) (not b!3138005) (not b!3138007) (not b!3137968) (not b!3138017) (not b!3138008) (not b!3138011) tp_is_empty!16861 (not b!3138015) (not bm!225062) (not bm!225066) (not b!3138021) (not b!3138019) (not b!3138003) (not b!3138009) (not b!3138020))
(check-sat)
