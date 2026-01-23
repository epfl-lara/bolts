; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230324 () Bool)

(assert start!230324)

(declare-fun b!2330920 () Bool)

(declare-fun res!995060 () Bool)

(declare-fun e!1493365 () Bool)

(assert (=> b!2330920 (=> (not res!995060) (not e!1493365))))

(declare-datatypes ((C!13812 0))(
  ( (C!13813 (val!8066 Int)) )
))
(declare-datatypes ((Regex!6827 0))(
  ( (ElementMatch!6827 (c!370309 C!13812)) (Concat!11449 (regOne!14166 Regex!6827) (regTwo!14166 Regex!6827)) (EmptyExpr!6827) (Star!6827 (reg!7156 Regex!6827)) (EmptyLang!6827) (Union!6827 (regOne!14167 Regex!6827) (regTwo!14167 Regex!6827)) )
))
(declare-fun r!26197 () Regex!6827)

(declare-fun nullable!1906 (Regex!6827) Bool)

(assert (=> b!2330920 (= res!995060 (nullable!1906 (regOne!14166 r!26197)))))

(declare-fun b!2330921 () Bool)

(declare-fun res!995059 () Bool)

(assert (=> b!2330921 (=> (not res!995059) (not e!1493365))))

(get-info :version)

(assert (=> b!2330921 (= res!995059 (and (not ((_ is EmptyExpr!6827) r!26197)) (not ((_ is EmptyLang!6827) r!26197)) (not ((_ is ElementMatch!6827) r!26197)) (not ((_ is Union!6827) r!26197)) (not ((_ is Star!6827) r!26197))))))

(declare-fun b!2330922 () Bool)

(declare-fun res!995057 () Bool)

(assert (=> b!2330922 (=> (not res!995057) (not e!1493365))))

(assert (=> b!2330922 (= res!995057 (not (nullable!1906 r!26197)))))

(declare-fun res!995061 () Bool)

(assert (=> start!230324 (=> (not res!995061) (not e!1493365))))

(declare-fun validRegex!2572 (Regex!6827) Bool)

(assert (=> start!230324 (= res!995061 (validRegex!2572 r!26197))))

(assert (=> start!230324 e!1493365))

(declare-fun e!1493366 () Bool)

(assert (=> start!230324 e!1493366))

(declare-fun tp_is_empty!10965 () Bool)

(assert (=> start!230324 tp_is_empty!10965))

(declare-fun b!2330923 () Bool)

(declare-fun tp!738638 () Bool)

(assert (=> b!2330923 (= e!1493366 tp!738638)))

(declare-fun b!2330924 () Bool)

(assert (=> b!2330924 (= e!1493365 (not (validRegex!2572 (regOne!14166 r!26197))))))

(declare-fun b!2330925 () Bool)

(declare-fun tp!738637 () Bool)

(declare-fun tp!738640 () Bool)

(assert (=> b!2330925 (= e!1493366 (and tp!738637 tp!738640))))

(declare-fun b!2330926 () Bool)

(declare-fun res!995058 () Bool)

(assert (=> b!2330926 (=> (not res!995058) (not e!1493365))))

(declare-fun c!13498 () C!13812)

(declare-fun derivativeStep!1566 (Regex!6827 C!13812) Regex!6827)

(assert (=> b!2330926 (= res!995058 (nullable!1906 (derivativeStep!1566 r!26197 c!13498)))))

(declare-fun b!2330927 () Bool)

(assert (=> b!2330927 (= e!1493366 tp_is_empty!10965)))

(declare-fun b!2330928 () Bool)

(declare-fun tp!738639 () Bool)

(declare-fun tp!738641 () Bool)

(assert (=> b!2330928 (= e!1493366 (and tp!738639 tp!738641))))

(assert (= (and start!230324 res!995061) b!2330922))

(assert (= (and b!2330922 res!995057) b!2330926))

(assert (= (and b!2330926 res!995058) b!2330921))

(assert (= (and b!2330921 res!995059) b!2330920))

(assert (= (and b!2330920 res!995060) b!2330924))

(assert (= (and start!230324 ((_ is ElementMatch!6827) r!26197)) b!2330927))

(assert (= (and start!230324 ((_ is Concat!11449) r!26197)) b!2330928))

(assert (= (and start!230324 ((_ is Star!6827) r!26197)) b!2330923))

(assert (= (and start!230324 ((_ is Union!6827) r!26197)) b!2330925))

(declare-fun m!2760791 () Bool)

(assert (=> b!2330920 m!2760791))

(declare-fun m!2760793 () Bool)

(assert (=> b!2330926 m!2760793))

(assert (=> b!2330926 m!2760793))

(declare-fun m!2760795 () Bool)

(assert (=> b!2330926 m!2760795))

(declare-fun m!2760797 () Bool)

(assert (=> start!230324 m!2760797))

(declare-fun m!2760799 () Bool)

(assert (=> b!2330922 m!2760799))

(declare-fun m!2760801 () Bool)

(assert (=> b!2330924 m!2760801))

(check-sat tp_is_empty!10965 (not start!230324) (not b!2330926) (not b!2330928) (not b!2330922) (not b!2330925) (not b!2330924) (not b!2330920) (not b!2330923))
(check-sat)
(get-model)

(declare-fun b!2330967 () Bool)

(declare-fun e!1493395 () Bool)

(declare-fun e!1493394 () Bool)

(assert (=> b!2330967 (= e!1493395 e!1493394)))

(declare-fun c!370325 () Bool)

(assert (=> b!2330967 (= c!370325 ((_ is Union!6827) (regOne!14166 r!26197)))))

(declare-fun b!2330968 () Bool)

(declare-fun e!1493391 () Bool)

(declare-fun call!139107 () Bool)

(assert (=> b!2330968 (= e!1493391 call!139107)))

(declare-fun bm!139100 () Bool)

(declare-fun c!370324 () Bool)

(declare-fun call!139106 () Bool)

(assert (=> bm!139100 (= call!139106 (validRegex!2572 (ite c!370324 (reg!7156 (regOne!14166 r!26197)) (ite c!370325 (regTwo!14167 (regOne!14166 r!26197)) (regTwo!14166 (regOne!14166 r!26197))))))))

(declare-fun b!2330969 () Bool)

(declare-fun res!995074 () Bool)

(declare-fun e!1493396 () Bool)

(assert (=> b!2330969 (=> res!995074 e!1493396)))

(assert (=> b!2330969 (= res!995074 (not ((_ is Concat!11449) (regOne!14166 r!26197))))))

(assert (=> b!2330969 (= e!1493394 e!1493396)))

(declare-fun b!2330970 () Bool)

(declare-fun e!1493392 () Bool)

(assert (=> b!2330970 (= e!1493392 call!139106)))

(declare-fun d!689923 () Bool)

(declare-fun res!995072 () Bool)

(declare-fun e!1493393 () Bool)

(assert (=> d!689923 (=> res!995072 e!1493393)))

(assert (=> d!689923 (= res!995072 ((_ is ElementMatch!6827) (regOne!14166 r!26197)))))

(assert (=> d!689923 (= (validRegex!2572 (regOne!14166 r!26197)) e!1493393)))

(declare-fun bm!139101 () Bool)

(declare-fun call!139105 () Bool)

(assert (=> bm!139101 (= call!139105 (validRegex!2572 (ite c!370325 (regOne!14167 (regOne!14166 r!26197)) (regOne!14166 (regOne!14166 r!26197)))))))

(declare-fun b!2330971 () Bool)

(assert (=> b!2330971 (= e!1493396 e!1493391)))

(declare-fun res!995073 () Bool)

(assert (=> b!2330971 (=> (not res!995073) (not e!1493391))))

(assert (=> b!2330971 (= res!995073 call!139105)))

(declare-fun b!2330972 () Bool)

(assert (=> b!2330972 (= e!1493393 e!1493395)))

(assert (=> b!2330972 (= c!370324 ((_ is Star!6827) (regOne!14166 r!26197)))))

(declare-fun b!2330973 () Bool)

(assert (=> b!2330973 (= e!1493395 e!1493392)))

(declare-fun res!995076 () Bool)

(assert (=> b!2330973 (= res!995076 (not (nullable!1906 (reg!7156 (regOne!14166 r!26197)))))))

(assert (=> b!2330973 (=> (not res!995076) (not e!1493392))))

(declare-fun b!2330974 () Bool)

(declare-fun e!1493397 () Bool)

(assert (=> b!2330974 (= e!1493397 call!139107)))

(declare-fun bm!139102 () Bool)

(assert (=> bm!139102 (= call!139107 call!139106)))

(declare-fun b!2330975 () Bool)

(declare-fun res!995075 () Bool)

(assert (=> b!2330975 (=> (not res!995075) (not e!1493397))))

(assert (=> b!2330975 (= res!995075 call!139105)))

(assert (=> b!2330975 (= e!1493394 e!1493397)))

(assert (= (and d!689923 (not res!995072)) b!2330972))

(assert (= (and b!2330972 c!370324) b!2330973))

(assert (= (and b!2330972 (not c!370324)) b!2330967))

(assert (= (and b!2330973 res!995076) b!2330970))

(assert (= (and b!2330967 c!370325) b!2330975))

(assert (= (and b!2330967 (not c!370325)) b!2330969))

(assert (= (and b!2330975 res!995075) b!2330974))

(assert (= (and b!2330969 (not res!995074)) b!2330971))

(assert (= (and b!2330971 res!995073) b!2330968))

(assert (= (or b!2330974 b!2330968) bm!139102))

(assert (= (or b!2330975 b!2330971) bm!139101))

(assert (= (or b!2330970 bm!139102) bm!139100))

(declare-fun m!2760805 () Bool)

(assert (=> bm!139100 m!2760805))

(declare-fun m!2760807 () Bool)

(assert (=> bm!139101 m!2760807))

(declare-fun m!2760809 () Bool)

(assert (=> b!2330973 m!2760809))

(assert (=> b!2330924 d!689923))

(declare-fun d!689927 () Bool)

(declare-fun nullableFct!471 (Regex!6827) Bool)

(assert (=> d!689927 (= (nullable!1906 r!26197) (nullableFct!471 r!26197))))

(declare-fun bs!459804 () Bool)

(assert (= bs!459804 d!689927))

(declare-fun m!2760811 () Bool)

(assert (=> bs!459804 m!2760811))

(assert (=> b!2330922 d!689927))

(declare-fun b!2330976 () Bool)

(declare-fun e!1493402 () Bool)

(declare-fun e!1493401 () Bool)

(assert (=> b!2330976 (= e!1493402 e!1493401)))

(declare-fun c!370327 () Bool)

(assert (=> b!2330976 (= c!370327 ((_ is Union!6827) r!26197))))

(declare-fun b!2330977 () Bool)

(declare-fun e!1493398 () Bool)

(declare-fun call!139116 () Bool)

(assert (=> b!2330977 (= e!1493398 call!139116)))

(declare-fun call!139115 () Bool)

(declare-fun c!370326 () Bool)

(declare-fun bm!139109 () Bool)

(assert (=> bm!139109 (= call!139115 (validRegex!2572 (ite c!370326 (reg!7156 r!26197) (ite c!370327 (regTwo!14167 r!26197) (regTwo!14166 r!26197)))))))

(declare-fun b!2330978 () Bool)

(declare-fun res!995079 () Bool)

(declare-fun e!1493403 () Bool)

(assert (=> b!2330978 (=> res!995079 e!1493403)))

(assert (=> b!2330978 (= res!995079 (not ((_ is Concat!11449) r!26197)))))

(assert (=> b!2330978 (= e!1493401 e!1493403)))

(declare-fun b!2330979 () Bool)

(declare-fun e!1493399 () Bool)

(assert (=> b!2330979 (= e!1493399 call!139115)))

(declare-fun d!689929 () Bool)

(declare-fun res!995077 () Bool)

(declare-fun e!1493400 () Bool)

(assert (=> d!689929 (=> res!995077 e!1493400)))

(assert (=> d!689929 (= res!995077 ((_ is ElementMatch!6827) r!26197))))

(assert (=> d!689929 (= (validRegex!2572 r!26197) e!1493400)))

(declare-fun bm!139110 () Bool)

(declare-fun call!139114 () Bool)

(assert (=> bm!139110 (= call!139114 (validRegex!2572 (ite c!370327 (regOne!14167 r!26197) (regOne!14166 r!26197))))))

(declare-fun b!2330980 () Bool)

(assert (=> b!2330980 (= e!1493403 e!1493398)))

(declare-fun res!995078 () Bool)

(assert (=> b!2330980 (=> (not res!995078) (not e!1493398))))

(assert (=> b!2330980 (= res!995078 call!139114)))

(declare-fun b!2330981 () Bool)

(assert (=> b!2330981 (= e!1493400 e!1493402)))

(assert (=> b!2330981 (= c!370326 ((_ is Star!6827) r!26197))))

(declare-fun b!2330982 () Bool)

(assert (=> b!2330982 (= e!1493402 e!1493399)))

(declare-fun res!995081 () Bool)

(assert (=> b!2330982 (= res!995081 (not (nullable!1906 (reg!7156 r!26197))))))

(assert (=> b!2330982 (=> (not res!995081) (not e!1493399))))

(declare-fun b!2330983 () Bool)

(declare-fun e!1493404 () Bool)

(assert (=> b!2330983 (= e!1493404 call!139116)))

(declare-fun bm!139111 () Bool)

(assert (=> bm!139111 (= call!139116 call!139115)))

(declare-fun b!2330984 () Bool)

(declare-fun res!995080 () Bool)

(assert (=> b!2330984 (=> (not res!995080) (not e!1493404))))

(assert (=> b!2330984 (= res!995080 call!139114)))

(assert (=> b!2330984 (= e!1493401 e!1493404)))

(assert (= (and d!689929 (not res!995077)) b!2330981))

(assert (= (and b!2330981 c!370326) b!2330982))

(assert (= (and b!2330981 (not c!370326)) b!2330976))

(assert (= (and b!2330982 res!995081) b!2330979))

(assert (= (and b!2330976 c!370327) b!2330984))

(assert (= (and b!2330976 (not c!370327)) b!2330978))

(assert (= (and b!2330984 res!995080) b!2330983))

(assert (= (and b!2330978 (not res!995079)) b!2330980))

(assert (= (and b!2330980 res!995078) b!2330977))

(assert (= (or b!2330983 b!2330977) bm!139111))

(assert (= (or b!2330984 b!2330980) bm!139110))

(assert (= (or b!2330979 bm!139111) bm!139109))

(declare-fun m!2760813 () Bool)

(assert (=> bm!139109 m!2760813))

(declare-fun m!2760815 () Bool)

(assert (=> bm!139110 m!2760815))

(declare-fun m!2760817 () Bool)

(assert (=> b!2330982 m!2760817))

(assert (=> start!230324 d!689929))

(declare-fun d!689931 () Bool)

(assert (=> d!689931 (= (nullable!1906 (derivativeStep!1566 r!26197 c!13498)) (nullableFct!471 (derivativeStep!1566 r!26197 c!13498)))))

(declare-fun bs!459805 () Bool)

(assert (= bs!459805 d!689931))

(assert (=> bs!459805 m!2760793))

(declare-fun m!2760819 () Bool)

(assert (=> bs!459805 m!2760819))

(assert (=> b!2330926 d!689931))

(declare-fun b!2331051 () Bool)

(declare-fun c!370351 () Bool)

(assert (=> b!2331051 (= c!370351 ((_ is Union!6827) r!26197))))

(declare-fun e!1493450 () Regex!6827)

(declare-fun e!1493448 () Regex!6827)

(assert (=> b!2331051 (= e!1493450 e!1493448)))

(declare-fun b!2331052 () Bool)

(declare-fun e!1493449 () Regex!6827)

(declare-fun call!139141 () Regex!6827)

(assert (=> b!2331052 (= e!1493449 (Union!6827 (Concat!11449 call!139141 (regTwo!14166 r!26197)) EmptyLang!6827))))

(declare-fun b!2331053 () Bool)

(assert (=> b!2331053 (= e!1493450 (ite (= c!13498 (c!370309 r!26197)) EmptyExpr!6827 EmptyLang!6827))))

(declare-fun b!2331054 () Bool)

(declare-fun c!370353 () Bool)

(assert (=> b!2331054 (= c!370353 (nullable!1906 (regOne!14166 r!26197)))))

(declare-fun e!1493452 () Regex!6827)

(assert (=> b!2331054 (= e!1493452 e!1493449)))

(declare-fun bm!139136 () Bool)

(declare-fun call!139143 () Regex!6827)

(declare-fun call!139144 () Regex!6827)

(assert (=> bm!139136 (= call!139143 call!139144)))

(declare-fun b!2331055 () Bool)

(declare-fun e!1493451 () Regex!6827)

(assert (=> b!2331055 (= e!1493451 EmptyLang!6827)))

(declare-fun call!139142 () Regex!6827)

(declare-fun bm!139137 () Bool)

(assert (=> bm!139137 (= call!139142 (derivativeStep!1566 (ite c!370351 (regTwo!14167 r!26197) (regTwo!14166 r!26197)) c!13498))))

(declare-fun bm!139138 () Bool)

(assert (=> bm!139138 (= call!139141 call!139143)))

(declare-fun b!2331056 () Bool)

(assert (=> b!2331056 (= e!1493452 (Concat!11449 call!139143 r!26197))))

(declare-fun b!2331057 () Bool)

(assert (=> b!2331057 (= e!1493448 e!1493452)))

(declare-fun c!370352 () Bool)

(assert (=> b!2331057 (= c!370352 ((_ is Star!6827) r!26197))))

(declare-fun b!2331059 () Bool)

(assert (=> b!2331059 (= e!1493448 (Union!6827 call!139144 call!139142))))

(declare-fun bm!139139 () Bool)

(assert (=> bm!139139 (= call!139144 (derivativeStep!1566 (ite c!370351 (regOne!14167 r!26197) (ite c!370352 (reg!7156 r!26197) (regOne!14166 r!26197))) c!13498))))

(declare-fun b!2331060 () Bool)

(assert (=> b!2331060 (= e!1493451 e!1493450)))

(declare-fun c!370355 () Bool)

(assert (=> b!2331060 (= c!370355 ((_ is ElementMatch!6827) r!26197))))

(declare-fun b!2331058 () Bool)

(assert (=> b!2331058 (= e!1493449 (Union!6827 (Concat!11449 call!139141 (regTwo!14166 r!26197)) call!139142))))

(declare-fun d!689933 () Bool)

(declare-fun lt!862281 () Regex!6827)

(assert (=> d!689933 (validRegex!2572 lt!862281)))

(assert (=> d!689933 (= lt!862281 e!1493451)))

(declare-fun c!370354 () Bool)

(assert (=> d!689933 (= c!370354 (or ((_ is EmptyExpr!6827) r!26197) ((_ is EmptyLang!6827) r!26197)))))

(assert (=> d!689933 (validRegex!2572 r!26197)))

(assert (=> d!689933 (= (derivativeStep!1566 r!26197 c!13498) lt!862281)))

(assert (= (and d!689933 c!370354) b!2331055))

(assert (= (and d!689933 (not c!370354)) b!2331060))

(assert (= (and b!2331060 c!370355) b!2331053))

(assert (= (and b!2331060 (not c!370355)) b!2331051))

(assert (= (and b!2331051 c!370351) b!2331059))

(assert (= (and b!2331051 (not c!370351)) b!2331057))

(assert (= (and b!2331057 c!370352) b!2331056))

(assert (= (and b!2331057 (not c!370352)) b!2331054))

(assert (= (and b!2331054 c!370353) b!2331058))

(assert (= (and b!2331054 (not c!370353)) b!2331052))

(assert (= (or b!2331058 b!2331052) bm!139138))

(assert (= (or b!2331056 bm!139138) bm!139136))

(assert (= (or b!2331059 b!2331058) bm!139137))

(assert (= (or b!2331059 bm!139136) bm!139139))

(assert (=> b!2331054 m!2760791))

(declare-fun m!2760843 () Bool)

(assert (=> bm!139137 m!2760843))

(declare-fun m!2760845 () Bool)

(assert (=> bm!139139 m!2760845))

(declare-fun m!2760847 () Bool)

(assert (=> d!689933 m!2760847))

(assert (=> d!689933 m!2760797))

(assert (=> b!2330926 d!689933))

(declare-fun d!689943 () Bool)

(assert (=> d!689943 (= (nullable!1906 (regOne!14166 r!26197)) (nullableFct!471 (regOne!14166 r!26197)))))

(declare-fun bs!459808 () Bool)

(assert (= bs!459808 d!689943))

(declare-fun m!2760849 () Bool)

(assert (=> bs!459808 m!2760849))

(assert (=> b!2330920 d!689943))

(declare-fun b!2331098 () Bool)

(declare-fun e!1493461 () Bool)

(declare-fun tp!738686 () Bool)

(declare-fun tp!738682 () Bool)

(assert (=> b!2331098 (= e!1493461 (and tp!738686 tp!738682))))

(declare-fun b!2331097 () Bool)

(assert (=> b!2331097 (= e!1493461 tp_is_empty!10965)))

(declare-fun b!2331100 () Bool)

(declare-fun tp!738684 () Bool)

(declare-fun tp!738685 () Bool)

(assert (=> b!2331100 (= e!1493461 (and tp!738684 tp!738685))))

(assert (=> b!2330928 (= tp!738639 e!1493461)))

(declare-fun b!2331099 () Bool)

(declare-fun tp!738683 () Bool)

(assert (=> b!2331099 (= e!1493461 tp!738683)))

(assert (= (and b!2330928 ((_ is ElementMatch!6827) (regOne!14166 r!26197))) b!2331097))

(assert (= (and b!2330928 ((_ is Concat!11449) (regOne!14166 r!26197))) b!2331098))

(assert (= (and b!2330928 ((_ is Star!6827) (regOne!14166 r!26197))) b!2331099))

(assert (= (and b!2330928 ((_ is Union!6827) (regOne!14166 r!26197))) b!2331100))

(declare-fun b!2331106 () Bool)

(declare-fun e!1493463 () Bool)

(declare-fun tp!738696 () Bool)

(declare-fun tp!738692 () Bool)

(assert (=> b!2331106 (= e!1493463 (and tp!738696 tp!738692))))

(declare-fun b!2331105 () Bool)

(assert (=> b!2331105 (= e!1493463 tp_is_empty!10965)))

(declare-fun b!2331108 () Bool)

(declare-fun tp!738694 () Bool)

(declare-fun tp!738695 () Bool)

(assert (=> b!2331108 (= e!1493463 (and tp!738694 tp!738695))))

(assert (=> b!2330928 (= tp!738641 e!1493463)))

(declare-fun b!2331107 () Bool)

(declare-fun tp!738693 () Bool)

(assert (=> b!2331107 (= e!1493463 tp!738693)))

(assert (= (and b!2330928 ((_ is ElementMatch!6827) (regTwo!14166 r!26197))) b!2331105))

(assert (= (and b!2330928 ((_ is Concat!11449) (regTwo!14166 r!26197))) b!2331106))

(assert (= (and b!2330928 ((_ is Star!6827) (regTwo!14166 r!26197))) b!2331107))

(assert (= (and b!2330928 ((_ is Union!6827) (regTwo!14166 r!26197))) b!2331108))

(declare-fun b!2331110 () Bool)

(declare-fun e!1493464 () Bool)

(declare-fun tp!738701 () Bool)

(declare-fun tp!738697 () Bool)

(assert (=> b!2331110 (= e!1493464 (and tp!738701 tp!738697))))

(declare-fun b!2331109 () Bool)

(assert (=> b!2331109 (= e!1493464 tp_is_empty!10965)))

(declare-fun b!2331112 () Bool)

(declare-fun tp!738699 () Bool)

(declare-fun tp!738700 () Bool)

(assert (=> b!2331112 (= e!1493464 (and tp!738699 tp!738700))))

(assert (=> b!2330923 (= tp!738638 e!1493464)))

(declare-fun b!2331111 () Bool)

(declare-fun tp!738698 () Bool)

(assert (=> b!2331111 (= e!1493464 tp!738698)))

(assert (= (and b!2330923 ((_ is ElementMatch!6827) (reg!7156 r!26197))) b!2331109))

(assert (= (and b!2330923 ((_ is Concat!11449) (reg!7156 r!26197))) b!2331110))

(assert (= (and b!2330923 ((_ is Star!6827) (reg!7156 r!26197))) b!2331111))

(assert (= (and b!2330923 ((_ is Union!6827) (reg!7156 r!26197))) b!2331112))

(declare-fun b!2331114 () Bool)

(declare-fun e!1493465 () Bool)

(declare-fun tp!738706 () Bool)

(declare-fun tp!738702 () Bool)

(assert (=> b!2331114 (= e!1493465 (and tp!738706 tp!738702))))

(declare-fun b!2331113 () Bool)

(assert (=> b!2331113 (= e!1493465 tp_is_empty!10965)))

(declare-fun b!2331116 () Bool)

(declare-fun tp!738704 () Bool)

(declare-fun tp!738705 () Bool)

(assert (=> b!2331116 (= e!1493465 (and tp!738704 tp!738705))))

(assert (=> b!2330925 (= tp!738637 e!1493465)))

(declare-fun b!2331115 () Bool)

(declare-fun tp!738703 () Bool)

(assert (=> b!2331115 (= e!1493465 tp!738703)))

(assert (= (and b!2330925 ((_ is ElementMatch!6827) (regOne!14167 r!26197))) b!2331113))

(assert (= (and b!2330925 ((_ is Concat!11449) (regOne!14167 r!26197))) b!2331114))

(assert (= (and b!2330925 ((_ is Star!6827) (regOne!14167 r!26197))) b!2331115))

(assert (= (and b!2330925 ((_ is Union!6827) (regOne!14167 r!26197))) b!2331116))

(declare-fun b!2331118 () Bool)

(declare-fun e!1493466 () Bool)

(declare-fun tp!738711 () Bool)

(declare-fun tp!738707 () Bool)

(assert (=> b!2331118 (= e!1493466 (and tp!738711 tp!738707))))

(declare-fun b!2331117 () Bool)

(assert (=> b!2331117 (= e!1493466 tp_is_empty!10965)))

(declare-fun b!2331120 () Bool)

(declare-fun tp!738709 () Bool)

(declare-fun tp!738710 () Bool)

(assert (=> b!2331120 (= e!1493466 (and tp!738709 tp!738710))))

(assert (=> b!2330925 (= tp!738640 e!1493466)))

(declare-fun b!2331119 () Bool)

(declare-fun tp!738708 () Bool)

(assert (=> b!2331119 (= e!1493466 tp!738708)))

(assert (= (and b!2330925 ((_ is ElementMatch!6827) (regTwo!14167 r!26197))) b!2331117))

(assert (= (and b!2330925 ((_ is Concat!11449) (regTwo!14167 r!26197))) b!2331118))

(assert (= (and b!2330925 ((_ is Star!6827) (regTwo!14167 r!26197))) b!2331119))

(assert (= (and b!2330925 ((_ is Union!6827) (regTwo!14167 r!26197))) b!2331120))

(check-sat (not bm!139110) (not b!2331120) tp_is_empty!10965 (not b!2331106) (not bm!139101) (not bm!139139) (not b!2330973) (not b!2331118) (not b!2331107) (not b!2331114) (not b!2331112) (not b!2331099) (not b!2331111) (not d!689927) (not bm!139109) (not d!689943) (not d!689931) (not b!2331115) (not b!2331054) (not b!2331119) (not d!689933) (not b!2331108) (not b!2331098) (not b!2331110) (not b!2331116) (not bm!139100) (not b!2330982) (not bm!139137) (not b!2331100))
(check-sat)
