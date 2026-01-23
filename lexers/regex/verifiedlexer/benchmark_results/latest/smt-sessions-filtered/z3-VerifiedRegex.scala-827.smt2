; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45592 () Bool)

(assert start!45592)

(declare-fun b!475863 () Bool)

(declare-fun res!210882 () Bool)

(declare-fun e!290505 () Bool)

(assert (=> b!475863 (=> (not res!210882) (not e!290505))))

(declare-datatypes ((C!3224 0))(
  ( (C!3225 (val!1598 Int)) )
))
(declare-datatypes ((Regex!1151 0))(
  ( (ElementMatch!1151 (c!95258 C!3224)) (Concat!2051 (regOne!2814 Regex!1151) (regTwo!2814 Regex!1151)) (EmptyExpr!1151) (Star!1151 (reg!1480 Regex!1151)) (EmptyLang!1151) (Union!1151 (regOne!2815 Regex!1151) (regTwo!2815 Regex!1151)) )
))
(declare-fun r!20230 () Regex!1151)

(get-info :version)

(assert (=> b!475863 (= res!210882 (and (not ((_ is EmptyLang!1151) r!20230)) (not ((_ is EmptyExpr!1151) r!20230)) (not ((_ is ElementMatch!1151) r!20230)) ((_ is Union!1151) r!20230)))))

(declare-fun b!475864 () Bool)

(declare-fun e!290504 () Bool)

(declare-fun tp_is_empty!2299 () Bool)

(assert (=> b!475864 (= e!290504 tp_is_empty!2299)))

(declare-fun b!475865 () Bool)

(declare-fun tp!132770 () Bool)

(declare-fun tp!132767 () Bool)

(assert (=> b!475865 (= e!290504 (and tp!132770 tp!132767))))

(declare-fun res!210883 () Bool)

(assert (=> start!45592 (=> (not res!210883) (not e!290505))))

(declare-fun validRegex!379 (Regex!1151) Bool)

(assert (=> start!45592 (= res!210883 (validRegex!379 r!20230))))

(assert (=> start!45592 e!290505))

(assert (=> start!45592 e!290504))

(declare-fun b!475866 () Bool)

(declare-fun lostCause!145 (Regex!1151) Bool)

(assert (=> b!475866 (= e!290505 (not (lostCause!145 (regOne!2815 r!20230))))))

(declare-fun b!475867 () Bool)

(declare-fun tp!132768 () Bool)

(assert (=> b!475867 (= e!290504 tp!132768)))

(declare-fun b!475868 () Bool)

(declare-fun tp!132771 () Bool)

(declare-fun tp!132769 () Bool)

(assert (=> b!475868 (= e!290504 (and tp!132771 tp!132769))))

(declare-fun b!475869 () Bool)

(declare-fun res!210881 () Bool)

(assert (=> b!475869 (=> (not res!210881) (not e!290505))))

(assert (=> b!475869 (= res!210881 (lostCause!145 r!20230))))

(declare-fun b!475870 () Bool)

(declare-fun res!210880 () Bool)

(assert (=> b!475870 (=> (not res!210880) (not e!290505))))

(assert (=> b!475870 (= res!210880 (validRegex!379 (regOne!2815 r!20230)))))

(assert (= (and start!45592 res!210883) b!475869))

(assert (= (and b!475869 res!210881) b!475863))

(assert (= (and b!475863 res!210882) b!475870))

(assert (= (and b!475870 res!210880) b!475866))

(assert (= (and start!45592 ((_ is ElementMatch!1151) r!20230)) b!475864))

(assert (= (and start!45592 ((_ is Concat!2051) r!20230)) b!475865))

(assert (= (and start!45592 ((_ is Star!1151) r!20230)) b!475867))

(assert (= (and start!45592 ((_ is Union!1151) r!20230)) b!475868))

(declare-fun m!747307 () Bool)

(assert (=> start!45592 m!747307))

(declare-fun m!747309 () Bool)

(assert (=> b!475866 m!747309))

(declare-fun m!747311 () Bool)

(assert (=> b!475869 m!747311))

(declare-fun m!747313 () Bool)

(assert (=> b!475870 m!747313))

(check-sat (not b!475869) (not b!475867) (not b!475866) (not b!475868) (not start!45592) tp_is_empty!2299 (not b!475870) (not b!475865))
(check-sat)
(get-model)

(declare-fun d!179930 () Bool)

(declare-fun lostCauseFct!55 (Regex!1151) Bool)

(assert (=> d!179930 (= (lostCause!145 (regOne!2815 r!20230)) (lostCauseFct!55 (regOne!2815 r!20230)))))

(declare-fun bs!58704 () Bool)

(assert (= bs!58704 d!179930))

(declare-fun m!747315 () Bool)

(assert (=> bs!58704 m!747315))

(assert (=> b!475866 d!179930))

(declare-fun b!475955 () Bool)

(declare-fun res!210915 () Bool)

(declare-fun e!290559 () Bool)

(assert (=> b!475955 (=> (not res!210915) (not e!290559))))

(declare-fun call!33196 () Bool)

(assert (=> b!475955 (= res!210915 call!33196)))

(declare-fun e!290560 () Bool)

(assert (=> b!475955 (= e!290560 e!290559)))

(declare-fun bm!33191 () Bool)

(declare-fun call!33197 () Bool)

(declare-fun call!33198 () Bool)

(assert (=> bm!33191 (= call!33197 call!33198)))

(declare-fun b!475956 () Bool)

(declare-fun e!290557 () Bool)

(declare-fun e!290555 () Bool)

(assert (=> b!475956 (= e!290557 e!290555)))

(declare-fun c!95272 () Bool)

(assert (=> b!475956 (= c!95272 ((_ is Star!1151) (regOne!2815 r!20230)))))

(declare-fun bm!33192 () Bool)

(declare-fun c!95271 () Bool)

(assert (=> bm!33192 (= call!33196 (validRegex!379 (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230)))))))

(declare-fun b!475958 () Bool)

(declare-fun e!290556 () Bool)

(assert (=> b!475958 (= e!290556 call!33198)))

(declare-fun b!475959 () Bool)

(declare-fun res!210916 () Bool)

(declare-fun e!290558 () Bool)

(assert (=> b!475959 (=> res!210916 e!290558)))

(assert (=> b!475959 (= res!210916 (not ((_ is Concat!2051) (regOne!2815 r!20230))))))

(assert (=> b!475959 (= e!290560 e!290558)))

(declare-fun b!475960 () Bool)

(declare-fun e!290561 () Bool)

(assert (=> b!475960 (= e!290561 call!33196)))

(declare-fun b!475961 () Bool)

(assert (=> b!475961 (= e!290558 e!290561)))

(declare-fun res!210914 () Bool)

(assert (=> b!475961 (=> (not res!210914) (not e!290561))))

(assert (=> b!475961 (= res!210914 call!33197)))

(declare-fun b!475962 () Bool)

(assert (=> b!475962 (= e!290555 e!290556)))

(declare-fun res!210917 () Bool)

(declare-fun nullable!286 (Regex!1151) Bool)

(assert (=> b!475962 (= res!210917 (not (nullable!286 (reg!1480 (regOne!2815 r!20230)))))))

(assert (=> b!475962 (=> (not res!210917) (not e!290556))))

(declare-fun b!475963 () Bool)

(assert (=> b!475963 (= e!290555 e!290560)))

(assert (=> b!475963 (= c!95271 ((_ is Union!1151) (regOne!2815 r!20230)))))

(declare-fun bm!33193 () Bool)

(assert (=> bm!33193 (= call!33198 (validRegex!379 (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230))))))))

(declare-fun b!475957 () Bool)

(assert (=> b!475957 (= e!290559 call!33197)))

(declare-fun d!179932 () Bool)

(declare-fun res!210918 () Bool)

(assert (=> d!179932 (=> res!210918 e!290557)))

(assert (=> d!179932 (= res!210918 ((_ is ElementMatch!1151) (regOne!2815 r!20230)))))

(assert (=> d!179932 (= (validRegex!379 (regOne!2815 r!20230)) e!290557)))

(assert (= (and d!179932 (not res!210918)) b!475956))

(assert (= (and b!475956 c!95272) b!475962))

(assert (= (and b!475956 (not c!95272)) b!475963))

(assert (= (and b!475962 res!210917) b!475958))

(assert (= (and b!475963 c!95271) b!475955))

(assert (= (and b!475963 (not c!95271)) b!475959))

(assert (= (and b!475955 res!210915) b!475957))

(assert (= (and b!475959 (not res!210916)) b!475961))

(assert (= (and b!475961 res!210914) b!475960))

(assert (= (or b!475957 b!475961) bm!33191))

(assert (= (or b!475955 b!475960) bm!33192))

(assert (= (or b!475958 bm!33191) bm!33193))

(declare-fun m!747333 () Bool)

(assert (=> bm!33192 m!747333))

(declare-fun m!747335 () Bool)

(assert (=> b!475962 m!747335))

(declare-fun m!747337 () Bool)

(assert (=> bm!33193 m!747337))

(assert (=> b!475870 d!179932))

(declare-fun b!475964 () Bool)

(declare-fun res!210920 () Bool)

(declare-fun e!290566 () Bool)

(assert (=> b!475964 (=> (not res!210920) (not e!290566))))

(declare-fun call!33199 () Bool)

(assert (=> b!475964 (= res!210920 call!33199)))

(declare-fun e!290567 () Bool)

(assert (=> b!475964 (= e!290567 e!290566)))

(declare-fun bm!33194 () Bool)

(declare-fun call!33200 () Bool)

(declare-fun call!33201 () Bool)

(assert (=> bm!33194 (= call!33200 call!33201)))

(declare-fun b!475965 () Bool)

(declare-fun e!290564 () Bool)

(declare-fun e!290562 () Bool)

(assert (=> b!475965 (= e!290564 e!290562)))

(declare-fun c!95274 () Bool)

(assert (=> b!475965 (= c!95274 ((_ is Star!1151) r!20230))))

(declare-fun bm!33195 () Bool)

(declare-fun c!95273 () Bool)

(assert (=> bm!33195 (= call!33199 (validRegex!379 (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230))))))

(declare-fun b!475967 () Bool)

(declare-fun e!290563 () Bool)

(assert (=> b!475967 (= e!290563 call!33201)))

(declare-fun b!475968 () Bool)

(declare-fun res!210921 () Bool)

(declare-fun e!290565 () Bool)

(assert (=> b!475968 (=> res!210921 e!290565)))

(assert (=> b!475968 (= res!210921 (not ((_ is Concat!2051) r!20230)))))

(assert (=> b!475968 (= e!290567 e!290565)))

(declare-fun b!475969 () Bool)

(declare-fun e!290568 () Bool)

(assert (=> b!475969 (= e!290568 call!33199)))

(declare-fun b!475970 () Bool)

(assert (=> b!475970 (= e!290565 e!290568)))

(declare-fun res!210919 () Bool)

(assert (=> b!475970 (=> (not res!210919) (not e!290568))))

(assert (=> b!475970 (= res!210919 call!33200)))

(declare-fun b!475971 () Bool)

(assert (=> b!475971 (= e!290562 e!290563)))

(declare-fun res!210922 () Bool)

(assert (=> b!475971 (= res!210922 (not (nullable!286 (reg!1480 r!20230))))))

(assert (=> b!475971 (=> (not res!210922) (not e!290563))))

(declare-fun b!475972 () Bool)

(assert (=> b!475972 (= e!290562 e!290567)))

(assert (=> b!475972 (= c!95273 ((_ is Union!1151) r!20230))))

(declare-fun bm!33196 () Bool)

(assert (=> bm!33196 (= call!33201 (validRegex!379 (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230)))))))

(declare-fun b!475966 () Bool)

(assert (=> b!475966 (= e!290566 call!33200)))

(declare-fun d!179940 () Bool)

(declare-fun res!210923 () Bool)

(assert (=> d!179940 (=> res!210923 e!290564)))

(assert (=> d!179940 (= res!210923 ((_ is ElementMatch!1151) r!20230))))

(assert (=> d!179940 (= (validRegex!379 r!20230) e!290564)))

(assert (= (and d!179940 (not res!210923)) b!475965))

(assert (= (and b!475965 c!95274) b!475971))

(assert (= (and b!475965 (not c!95274)) b!475972))

(assert (= (and b!475971 res!210922) b!475967))

(assert (= (and b!475972 c!95273) b!475964))

(assert (= (and b!475972 (not c!95273)) b!475968))

(assert (= (and b!475964 res!210920) b!475966))

(assert (= (and b!475968 (not res!210921)) b!475970))

(assert (= (and b!475970 res!210919) b!475969))

(assert (= (or b!475966 b!475970) bm!33194))

(assert (= (or b!475964 b!475969) bm!33195))

(assert (= (or b!475967 bm!33194) bm!33196))

(declare-fun m!747339 () Bool)

(assert (=> bm!33195 m!747339))

(declare-fun m!747341 () Bool)

(assert (=> b!475971 m!747341))

(declare-fun m!747343 () Bool)

(assert (=> bm!33196 m!747343))

(assert (=> start!45592 d!179940))

(declare-fun d!179942 () Bool)

(assert (=> d!179942 (= (lostCause!145 r!20230) (lostCauseFct!55 r!20230))))

(declare-fun bs!58707 () Bool)

(assert (= bs!58707 d!179942))

(declare-fun m!747345 () Bool)

(assert (=> bs!58707 m!747345))

(assert (=> b!475869 d!179942))

(declare-fun b!475984 () Bool)

(declare-fun e!290571 () Bool)

(declare-fun tp!132818 () Bool)

(declare-fun tp!132819 () Bool)

(assert (=> b!475984 (= e!290571 (and tp!132818 tp!132819))))

(assert (=> b!475868 (= tp!132771 e!290571)))

(declare-fun b!475983 () Bool)

(assert (=> b!475983 (= e!290571 tp_is_empty!2299)))

(declare-fun b!475985 () Bool)

(declare-fun tp!132821 () Bool)

(assert (=> b!475985 (= e!290571 tp!132821)))

(declare-fun b!475986 () Bool)

(declare-fun tp!132820 () Bool)

(declare-fun tp!132817 () Bool)

(assert (=> b!475986 (= e!290571 (and tp!132820 tp!132817))))

(assert (= (and b!475868 ((_ is ElementMatch!1151) (regOne!2815 r!20230))) b!475983))

(assert (= (and b!475868 ((_ is Concat!2051) (regOne!2815 r!20230))) b!475984))

(assert (= (and b!475868 ((_ is Star!1151) (regOne!2815 r!20230))) b!475985))

(assert (= (and b!475868 ((_ is Union!1151) (regOne!2815 r!20230))) b!475986))

(declare-fun b!475988 () Bool)

(declare-fun e!290572 () Bool)

(declare-fun tp!132823 () Bool)

(declare-fun tp!132824 () Bool)

(assert (=> b!475988 (= e!290572 (and tp!132823 tp!132824))))

(assert (=> b!475868 (= tp!132769 e!290572)))

(declare-fun b!475987 () Bool)

(assert (=> b!475987 (= e!290572 tp_is_empty!2299)))

(declare-fun b!475989 () Bool)

(declare-fun tp!132826 () Bool)

(assert (=> b!475989 (= e!290572 tp!132826)))

(declare-fun b!475990 () Bool)

(declare-fun tp!132825 () Bool)

(declare-fun tp!132822 () Bool)

(assert (=> b!475990 (= e!290572 (and tp!132825 tp!132822))))

(assert (= (and b!475868 ((_ is ElementMatch!1151) (regTwo!2815 r!20230))) b!475987))

(assert (= (and b!475868 ((_ is Concat!2051) (regTwo!2815 r!20230))) b!475988))

(assert (= (and b!475868 ((_ is Star!1151) (regTwo!2815 r!20230))) b!475989))

(assert (= (and b!475868 ((_ is Union!1151) (regTwo!2815 r!20230))) b!475990))

(declare-fun b!475992 () Bool)

(declare-fun e!290573 () Bool)

(declare-fun tp!132828 () Bool)

(declare-fun tp!132829 () Bool)

(assert (=> b!475992 (= e!290573 (and tp!132828 tp!132829))))

(assert (=> b!475867 (= tp!132768 e!290573)))

(declare-fun b!475991 () Bool)

(assert (=> b!475991 (= e!290573 tp_is_empty!2299)))

(declare-fun b!475993 () Bool)

(declare-fun tp!132831 () Bool)

(assert (=> b!475993 (= e!290573 tp!132831)))

(declare-fun b!475994 () Bool)

(declare-fun tp!132830 () Bool)

(declare-fun tp!132827 () Bool)

(assert (=> b!475994 (= e!290573 (and tp!132830 tp!132827))))

(assert (= (and b!475867 ((_ is ElementMatch!1151) (reg!1480 r!20230))) b!475991))

(assert (= (and b!475867 ((_ is Concat!2051) (reg!1480 r!20230))) b!475992))

(assert (= (and b!475867 ((_ is Star!1151) (reg!1480 r!20230))) b!475993))

(assert (= (and b!475867 ((_ is Union!1151) (reg!1480 r!20230))) b!475994))

(declare-fun b!475996 () Bool)

(declare-fun e!290574 () Bool)

(declare-fun tp!132833 () Bool)

(declare-fun tp!132834 () Bool)

(assert (=> b!475996 (= e!290574 (and tp!132833 tp!132834))))

(assert (=> b!475865 (= tp!132770 e!290574)))

(declare-fun b!475995 () Bool)

(assert (=> b!475995 (= e!290574 tp_is_empty!2299)))

(declare-fun b!475997 () Bool)

(declare-fun tp!132836 () Bool)

(assert (=> b!475997 (= e!290574 tp!132836)))

(declare-fun b!475998 () Bool)

(declare-fun tp!132835 () Bool)

(declare-fun tp!132832 () Bool)

(assert (=> b!475998 (= e!290574 (and tp!132835 tp!132832))))

(assert (= (and b!475865 ((_ is ElementMatch!1151) (regOne!2814 r!20230))) b!475995))

(assert (= (and b!475865 ((_ is Concat!2051) (regOne!2814 r!20230))) b!475996))

(assert (= (and b!475865 ((_ is Star!1151) (regOne!2814 r!20230))) b!475997))

(assert (= (and b!475865 ((_ is Union!1151) (regOne!2814 r!20230))) b!475998))

(declare-fun b!476000 () Bool)

(declare-fun e!290575 () Bool)

(declare-fun tp!132838 () Bool)

(declare-fun tp!132839 () Bool)

(assert (=> b!476000 (= e!290575 (and tp!132838 tp!132839))))

(assert (=> b!475865 (= tp!132767 e!290575)))

(declare-fun b!475999 () Bool)

(assert (=> b!475999 (= e!290575 tp_is_empty!2299)))

(declare-fun b!476001 () Bool)

(declare-fun tp!132841 () Bool)

(assert (=> b!476001 (= e!290575 tp!132841)))

(declare-fun b!476002 () Bool)

(declare-fun tp!132840 () Bool)

(declare-fun tp!132837 () Bool)

(assert (=> b!476002 (= e!290575 (and tp!132840 tp!132837))))

(assert (= (and b!475865 ((_ is ElementMatch!1151) (regTwo!2814 r!20230))) b!475999))

(assert (= (and b!475865 ((_ is Concat!2051) (regTwo!2814 r!20230))) b!476000))

(assert (= (and b!475865 ((_ is Star!1151) (regTwo!2814 r!20230))) b!476001))

(assert (= (and b!475865 ((_ is Union!1151) (regTwo!2814 r!20230))) b!476002))

(check-sat (not bm!33195) (not bm!33193) (not b!476002) (not b!475962) (not b!475989) (not b!475971) (not b!475986) (not bm!33196) (not d!179930) (not bm!33192) tp_is_empty!2299 (not b!475994) (not b!476000) (not b!475996) (not b!475984) (not d!179942) (not b!475985) (not b!475993) (not b!475997) (not b!475992) (not b!475988) (not b!475998) (not b!476001) (not b!475990))
(check-sat)
(get-model)

(declare-fun d!179944 () Bool)

(declare-fun lt!210735 () Bool)

(declare-datatypes ((List!4595 0))(
  ( (Nil!4585) (Cons!4585 (h!9982 C!3224) (t!73113 List!4595)) )
))
(declare-datatypes ((Option!1213 0))(
  ( (None!1212) (Some!1212 (v!15624 List!4595)) )
))
(declare-fun isEmpty!3539 (Option!1213) Bool)

(declare-fun getLanguageWitness!48 (Regex!1151) Option!1213)

(assert (=> d!179944 (= lt!210735 (isEmpty!3539 (getLanguageWitness!48 (regOne!2815 r!20230))))))

(declare-fun e!290645 () Bool)

(assert (=> d!179944 (= lt!210735 e!290645)))

(declare-fun res!210975 () Bool)

(assert (=> d!179944 (=> (not res!210975) (not e!290645))))

(assert (=> d!179944 (= res!210975 (not ((_ is EmptyExpr!1151) (regOne!2815 r!20230))))))

(assert (=> d!179944 (= (lostCauseFct!55 (regOne!2815 r!20230)) lt!210735)))

(declare-fun b!476097 () Bool)

(declare-fun e!290647 () Bool)

(declare-fun call!33226 () Bool)

(assert (=> b!476097 (= e!290647 call!33226)))

(declare-fun bm!33221 () Bool)

(declare-fun call!33227 () Bool)

(declare-fun c!95289 () Bool)

(assert (=> bm!33221 (= call!33227 (lostCause!145 (ite c!95289 (regOne!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230)))))))

(declare-fun bm!33222 () Bool)

(assert (=> bm!33222 (= call!33226 (lostCause!145 (ite c!95289 (regTwo!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230)))))))

(declare-fun b!476098 () Bool)

(declare-fun e!290643 () Bool)

(assert (=> b!476098 (= e!290643 call!33226)))

(declare-fun b!476099 () Bool)

(declare-fun e!290646 () Bool)

(assert (=> b!476099 (= e!290646 e!290647)))

(declare-fun res!210977 () Bool)

(assert (=> b!476099 (= res!210977 call!33227)))

(assert (=> b!476099 (=> (not res!210977) (not e!290647))))

(declare-fun b!476100 () Bool)

(assert (=> b!476100 (= e!290646 e!290643)))

(declare-fun res!210974 () Bool)

(assert (=> b!476100 (= res!210974 call!33227)))

(assert (=> b!476100 (=> res!210974 e!290643)))

(declare-fun b!476101 () Bool)

(declare-fun e!290644 () Bool)

(assert (=> b!476101 (= e!290645 e!290644)))

(declare-fun res!210978 () Bool)

(assert (=> b!476101 (=> res!210978 e!290644)))

(assert (=> b!476101 (= res!210978 ((_ is EmptyLang!1151) (regOne!2815 r!20230)))))

(declare-fun b!476102 () Bool)

(declare-fun e!290649 () Bool)

(assert (=> b!476102 (= e!290644 e!290649)))

(declare-fun res!210976 () Bool)

(assert (=> b!476102 (=> (not res!210976) (not e!290649))))

(assert (=> b!476102 (= res!210976 (and (not ((_ is ElementMatch!1151) (regOne!2815 r!20230))) (not ((_ is Star!1151) (regOne!2815 r!20230)))))))

(declare-fun b!476103 () Bool)

(assert (=> b!476103 (= e!290649 e!290646)))

(assert (=> b!476103 (= c!95289 ((_ is Union!1151) (regOne!2815 r!20230)))))

(assert (= (and d!179944 res!210975) b!476101))

(assert (= (and b!476101 (not res!210978)) b!476102))

(assert (= (and b!476102 res!210976) b!476103))

(assert (= (and b!476103 c!95289) b!476099))

(assert (= (and b!476103 (not c!95289)) b!476100))

(assert (= (and b!476099 res!210977) b!476097))

(assert (= (and b!476100 (not res!210974)) b!476098))

(assert (= (or b!476099 b!476100) bm!33221))

(assert (= (or b!476097 b!476098) bm!33222))

(declare-fun m!747391 () Bool)

(assert (=> d!179944 m!747391))

(assert (=> d!179944 m!747391))

(declare-fun m!747393 () Bool)

(assert (=> d!179944 m!747393))

(declare-fun m!747395 () Bool)

(assert (=> bm!33221 m!747395))

(declare-fun m!747397 () Bool)

(assert (=> bm!33222 m!747397))

(assert (=> d!179930 d!179944))

(declare-fun d!179962 () Bool)

(declare-fun lt!210736 () Bool)

(assert (=> d!179962 (= lt!210736 (isEmpty!3539 (getLanguageWitness!48 r!20230)))))

(declare-fun e!290661 () Bool)

(assert (=> d!179962 (= lt!210736 e!290661)))

(declare-fun res!210980 () Bool)

(assert (=> d!179962 (=> (not res!210980) (not e!290661))))

(assert (=> d!179962 (= res!210980 (not ((_ is EmptyExpr!1151) r!20230)))))

(assert (=> d!179962 (= (lostCauseFct!55 r!20230) lt!210736)))

(declare-fun b!476140 () Bool)

(declare-fun e!290663 () Bool)

(declare-fun call!33228 () Bool)

(assert (=> b!476140 (= e!290663 call!33228)))

(declare-fun bm!33223 () Bool)

(declare-fun call!33229 () Bool)

(declare-fun c!95290 () Bool)

(assert (=> bm!33223 (= call!33229 (lostCause!145 (ite c!95290 (regOne!2815 r!20230) (regOne!2814 r!20230))))))

(declare-fun bm!33224 () Bool)

(assert (=> bm!33224 (= call!33228 (lostCause!145 (ite c!95290 (regTwo!2815 r!20230) (regTwo!2814 r!20230))))))

(declare-fun b!476142 () Bool)

(declare-fun e!290659 () Bool)

(assert (=> b!476142 (= e!290659 call!33228)))

(declare-fun b!476144 () Bool)

(declare-fun e!290662 () Bool)

(assert (=> b!476144 (= e!290662 e!290663)))

(declare-fun res!210982 () Bool)

(assert (=> b!476144 (= res!210982 call!33229)))

(assert (=> b!476144 (=> (not res!210982) (not e!290663))))

(declare-fun b!476146 () Bool)

(assert (=> b!476146 (= e!290662 e!290659)))

(declare-fun res!210979 () Bool)

(assert (=> b!476146 (= res!210979 call!33229)))

(assert (=> b!476146 (=> res!210979 e!290659)))

(declare-fun b!476148 () Bool)

(declare-fun e!290660 () Bool)

(assert (=> b!476148 (= e!290661 e!290660)))

(declare-fun res!210983 () Bool)

(assert (=> b!476148 (=> res!210983 e!290660)))

(assert (=> b!476148 (= res!210983 ((_ is EmptyLang!1151) r!20230))))

(declare-fun b!476149 () Bool)

(declare-fun e!290665 () Bool)

(assert (=> b!476149 (= e!290660 e!290665)))

(declare-fun res!210981 () Bool)

(assert (=> b!476149 (=> (not res!210981) (not e!290665))))

(assert (=> b!476149 (= res!210981 (and (not ((_ is ElementMatch!1151) r!20230)) (not ((_ is Star!1151) r!20230))))))

(declare-fun b!476150 () Bool)

(assert (=> b!476150 (= e!290665 e!290662)))

(assert (=> b!476150 (= c!95290 ((_ is Union!1151) r!20230))))

(assert (= (and d!179962 res!210980) b!476148))

(assert (= (and b!476148 (not res!210983)) b!476149))

(assert (= (and b!476149 res!210981) b!476150))

(assert (= (and b!476150 c!95290) b!476144))

(assert (= (and b!476150 (not c!95290)) b!476146))

(assert (= (and b!476144 res!210982) b!476140))

(assert (= (and b!476146 (not res!210979)) b!476142))

(assert (= (or b!476144 b!476146) bm!33223))

(assert (= (or b!476140 b!476142) bm!33224))

(declare-fun m!747399 () Bool)

(assert (=> d!179962 m!747399))

(assert (=> d!179962 m!747399))

(declare-fun m!747401 () Bool)

(assert (=> d!179962 m!747401))

(declare-fun m!747403 () Bool)

(assert (=> bm!33223 m!747403))

(declare-fun m!747405 () Bool)

(assert (=> bm!33224 m!747405))

(assert (=> d!179942 d!179962))

(declare-fun d!179964 () Bool)

(declare-fun nullableFct!99 (Regex!1151) Bool)

(assert (=> d!179964 (= (nullable!286 (reg!1480 (regOne!2815 r!20230))) (nullableFct!99 (reg!1480 (regOne!2815 r!20230))))))

(declare-fun bs!58710 () Bool)

(assert (= bs!58710 d!179964))

(declare-fun m!747407 () Bool)

(assert (=> bs!58710 m!747407))

(assert (=> b!475962 d!179964))

(declare-fun d!179966 () Bool)

(assert (=> d!179966 (= (nullable!286 (reg!1480 r!20230)) (nullableFct!99 (reg!1480 r!20230)))))

(declare-fun bs!58711 () Bool)

(assert (= bs!58711 d!179966))

(declare-fun m!747409 () Bool)

(assert (=> bs!58711 m!747409))

(assert (=> b!475971 d!179966))

(declare-fun b!476195 () Bool)

(declare-fun res!210985 () Bool)

(declare-fun e!290681 () Bool)

(assert (=> b!476195 (=> (not res!210985) (not e!290681))))

(declare-fun call!33230 () Bool)

(assert (=> b!476195 (= res!210985 call!33230)))

(declare-fun e!290682 () Bool)

(assert (=> b!476195 (= e!290682 e!290681)))

(declare-fun bm!33225 () Bool)

(declare-fun call!33231 () Bool)

(declare-fun call!33232 () Bool)

(assert (=> bm!33225 (= call!33231 call!33232)))

(declare-fun b!476196 () Bool)

(declare-fun e!290679 () Bool)

(declare-fun e!290677 () Bool)

(assert (=> b!476196 (= e!290679 e!290677)))

(declare-fun c!95292 () Bool)

(assert (=> b!476196 (= c!95292 ((_ is Star!1151) (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230)))))))

(declare-fun c!95291 () Bool)

(declare-fun bm!33226 () Bool)

(assert (=> bm!33226 (= call!33230 (validRegex!379 (ite c!95291 (regOne!2815 (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230)))) (regTwo!2814 (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230)))))))))

(declare-fun b!476198 () Bool)

(declare-fun e!290678 () Bool)

(assert (=> b!476198 (= e!290678 call!33232)))

(declare-fun b!476199 () Bool)

(declare-fun res!210986 () Bool)

(declare-fun e!290680 () Bool)

(assert (=> b!476199 (=> res!210986 e!290680)))

(assert (=> b!476199 (= res!210986 (not ((_ is Concat!2051) (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230))))))))

(assert (=> b!476199 (= e!290682 e!290680)))

(declare-fun b!476200 () Bool)

(declare-fun e!290683 () Bool)

(assert (=> b!476200 (= e!290683 call!33230)))

(declare-fun b!476201 () Bool)

(assert (=> b!476201 (= e!290680 e!290683)))

(declare-fun res!210984 () Bool)

(assert (=> b!476201 (=> (not res!210984) (not e!290683))))

(assert (=> b!476201 (= res!210984 call!33231)))

(declare-fun b!476202 () Bool)

(assert (=> b!476202 (= e!290677 e!290678)))

(declare-fun res!210987 () Bool)

(assert (=> b!476202 (= res!210987 (not (nullable!286 (reg!1480 (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230)))))))))

(assert (=> b!476202 (=> (not res!210987) (not e!290678))))

(declare-fun b!476203 () Bool)

(assert (=> b!476203 (= e!290677 e!290682)))

(assert (=> b!476203 (= c!95291 ((_ is Union!1151) (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230)))))))

(declare-fun bm!33227 () Bool)

(assert (=> bm!33227 (= call!33232 (validRegex!379 (ite c!95292 (reg!1480 (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230)))) (ite c!95291 (regTwo!2815 (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230)))) (regOne!2814 (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230))))))))))

(declare-fun b!476197 () Bool)

(assert (=> b!476197 (= e!290681 call!33231)))

(declare-fun d!179968 () Bool)

(declare-fun res!210988 () Bool)

(assert (=> d!179968 (=> res!210988 e!290679)))

(assert (=> d!179968 (= res!210988 ((_ is ElementMatch!1151) (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230)))))))

(assert (=> d!179968 (= (validRegex!379 (ite c!95271 (regOne!2815 (regOne!2815 r!20230)) (regTwo!2814 (regOne!2815 r!20230)))) e!290679)))

(assert (= (and d!179968 (not res!210988)) b!476196))

(assert (= (and b!476196 c!95292) b!476202))

(assert (= (and b!476196 (not c!95292)) b!476203))

(assert (= (and b!476202 res!210987) b!476198))

(assert (= (and b!476203 c!95291) b!476195))

(assert (= (and b!476203 (not c!95291)) b!476199))

(assert (= (and b!476195 res!210985) b!476197))

(assert (= (and b!476199 (not res!210986)) b!476201))

(assert (= (and b!476201 res!210984) b!476200))

(assert (= (or b!476197 b!476201) bm!33225))

(assert (= (or b!476195 b!476200) bm!33226))

(assert (= (or b!476198 bm!33225) bm!33227))

(declare-fun m!747411 () Bool)

(assert (=> bm!33226 m!747411))

(declare-fun m!747413 () Bool)

(assert (=> b!476202 m!747413))

(declare-fun m!747415 () Bool)

(assert (=> bm!33227 m!747415))

(assert (=> bm!33192 d!179968))

(declare-fun b!476204 () Bool)

(declare-fun res!210990 () Bool)

(declare-fun e!290688 () Bool)

(assert (=> b!476204 (=> (not res!210990) (not e!290688))))

(declare-fun call!33233 () Bool)

(assert (=> b!476204 (= res!210990 call!33233)))

(declare-fun e!290689 () Bool)

(assert (=> b!476204 (= e!290689 e!290688)))

(declare-fun bm!33228 () Bool)

(declare-fun call!33234 () Bool)

(declare-fun call!33235 () Bool)

(assert (=> bm!33228 (= call!33234 call!33235)))

(declare-fun b!476205 () Bool)

(declare-fun e!290686 () Bool)

(declare-fun e!290684 () Bool)

(assert (=> b!476205 (= e!290686 e!290684)))

(declare-fun c!95294 () Bool)

(assert (=> b!476205 (= c!95294 ((_ is Star!1151) (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230))))))

(declare-fun bm!33229 () Bool)

(declare-fun c!95293 () Bool)

(assert (=> bm!33229 (= call!33233 (validRegex!379 (ite c!95293 (regOne!2815 (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230))) (regTwo!2814 (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230))))))))

(declare-fun b!476207 () Bool)

(declare-fun e!290685 () Bool)

(assert (=> b!476207 (= e!290685 call!33235)))

(declare-fun b!476208 () Bool)

(declare-fun res!210991 () Bool)

(declare-fun e!290687 () Bool)

(assert (=> b!476208 (=> res!210991 e!290687)))

(assert (=> b!476208 (= res!210991 (not ((_ is Concat!2051) (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230)))))))

(assert (=> b!476208 (= e!290689 e!290687)))

(declare-fun b!476209 () Bool)

(declare-fun e!290690 () Bool)

(assert (=> b!476209 (= e!290690 call!33233)))

(declare-fun b!476210 () Bool)

(assert (=> b!476210 (= e!290687 e!290690)))

(declare-fun res!210989 () Bool)

(assert (=> b!476210 (=> (not res!210989) (not e!290690))))

(assert (=> b!476210 (= res!210989 call!33234)))

(declare-fun b!476211 () Bool)

(assert (=> b!476211 (= e!290684 e!290685)))

(declare-fun res!210992 () Bool)

(assert (=> b!476211 (= res!210992 (not (nullable!286 (reg!1480 (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230))))))))

(assert (=> b!476211 (=> (not res!210992) (not e!290685))))

(declare-fun b!476212 () Bool)

(assert (=> b!476212 (= e!290684 e!290689)))

(assert (=> b!476212 (= c!95293 ((_ is Union!1151) (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230))))))

(declare-fun bm!33230 () Bool)

(assert (=> bm!33230 (= call!33235 (validRegex!379 (ite c!95294 (reg!1480 (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230))) (ite c!95293 (regTwo!2815 (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230))) (regOne!2814 (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230)))))))))

(declare-fun b!476206 () Bool)

(assert (=> b!476206 (= e!290688 call!33234)))

(declare-fun d!179970 () Bool)

(declare-fun res!210993 () Bool)

(assert (=> d!179970 (=> res!210993 e!290686)))

(assert (=> d!179970 (= res!210993 ((_ is ElementMatch!1151) (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230))))))

(assert (=> d!179970 (= (validRegex!379 (ite c!95273 (regOne!2815 r!20230) (regTwo!2814 r!20230))) e!290686)))

(assert (= (and d!179970 (not res!210993)) b!476205))

(assert (= (and b!476205 c!95294) b!476211))

(assert (= (and b!476205 (not c!95294)) b!476212))

(assert (= (and b!476211 res!210992) b!476207))

(assert (= (and b!476212 c!95293) b!476204))

(assert (= (and b!476212 (not c!95293)) b!476208))

(assert (= (and b!476204 res!210990) b!476206))

(assert (= (and b!476208 (not res!210991)) b!476210))

(assert (= (and b!476210 res!210989) b!476209))

(assert (= (or b!476206 b!476210) bm!33228))

(assert (= (or b!476204 b!476209) bm!33229))

(assert (= (or b!476207 bm!33228) bm!33230))

(declare-fun m!747417 () Bool)

(assert (=> bm!33229 m!747417))

(declare-fun m!747419 () Bool)

(assert (=> b!476211 m!747419))

(declare-fun m!747421 () Bool)

(assert (=> bm!33230 m!747421))

(assert (=> bm!33195 d!179970))

(declare-fun b!476213 () Bool)

(declare-fun res!210995 () Bool)

(declare-fun e!290695 () Bool)

(assert (=> b!476213 (=> (not res!210995) (not e!290695))))

(declare-fun call!33236 () Bool)

(assert (=> b!476213 (= res!210995 call!33236)))

(declare-fun e!290696 () Bool)

(assert (=> b!476213 (= e!290696 e!290695)))

(declare-fun bm!33231 () Bool)

(declare-fun call!33237 () Bool)

(declare-fun call!33238 () Bool)

(assert (=> bm!33231 (= call!33237 call!33238)))

(declare-fun b!476214 () Bool)

(declare-fun e!290693 () Bool)

(declare-fun e!290691 () Bool)

(assert (=> b!476214 (= e!290693 e!290691)))

(declare-fun c!95296 () Bool)

(assert (=> b!476214 (= c!95296 ((_ is Star!1151) (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230))))))))

(declare-fun bm!33232 () Bool)

(declare-fun c!95295 () Bool)

(assert (=> bm!33232 (= call!33236 (validRegex!379 (ite c!95295 (regOne!2815 (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230))))) (regTwo!2814 (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230))))))))))

(declare-fun b!476216 () Bool)

(declare-fun e!290692 () Bool)

(assert (=> b!476216 (= e!290692 call!33238)))

(declare-fun b!476217 () Bool)

(declare-fun res!210996 () Bool)

(declare-fun e!290694 () Bool)

(assert (=> b!476217 (=> res!210996 e!290694)))

(assert (=> b!476217 (= res!210996 (not ((_ is Concat!2051) (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230)))))))))

(assert (=> b!476217 (= e!290696 e!290694)))

(declare-fun b!476218 () Bool)

(declare-fun e!290697 () Bool)

(assert (=> b!476218 (= e!290697 call!33236)))

(declare-fun b!476219 () Bool)

(assert (=> b!476219 (= e!290694 e!290697)))

(declare-fun res!210994 () Bool)

(assert (=> b!476219 (=> (not res!210994) (not e!290697))))

(assert (=> b!476219 (= res!210994 call!33237)))

(declare-fun b!476220 () Bool)

(assert (=> b!476220 (= e!290691 e!290692)))

(declare-fun res!210997 () Bool)

(assert (=> b!476220 (= res!210997 (not (nullable!286 (reg!1480 (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230))))))))))

(assert (=> b!476220 (=> (not res!210997) (not e!290692))))

(declare-fun b!476221 () Bool)

(assert (=> b!476221 (= e!290691 e!290696)))

(assert (=> b!476221 (= c!95295 ((_ is Union!1151) (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230))))))))

(declare-fun bm!33233 () Bool)

(assert (=> bm!33233 (= call!33238 (validRegex!379 (ite c!95296 (reg!1480 (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230))))) (ite c!95295 (regTwo!2815 (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230))))) (regOne!2814 (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230)))))))))))

(declare-fun b!476215 () Bool)

(assert (=> b!476215 (= e!290695 call!33237)))

(declare-fun d!179972 () Bool)

(declare-fun res!210998 () Bool)

(assert (=> d!179972 (=> res!210998 e!290693)))

(assert (=> d!179972 (= res!210998 ((_ is ElementMatch!1151) (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230))))))))

(assert (=> d!179972 (= (validRegex!379 (ite c!95272 (reg!1480 (regOne!2815 r!20230)) (ite c!95271 (regTwo!2815 (regOne!2815 r!20230)) (regOne!2814 (regOne!2815 r!20230))))) e!290693)))

(assert (= (and d!179972 (not res!210998)) b!476214))

(assert (= (and b!476214 c!95296) b!476220))

(assert (= (and b!476214 (not c!95296)) b!476221))

(assert (= (and b!476220 res!210997) b!476216))

(assert (= (and b!476221 c!95295) b!476213))

(assert (= (and b!476221 (not c!95295)) b!476217))

(assert (= (and b!476213 res!210995) b!476215))

(assert (= (and b!476217 (not res!210996)) b!476219))

(assert (= (and b!476219 res!210994) b!476218))

(assert (= (or b!476215 b!476219) bm!33231))

(assert (= (or b!476213 b!476218) bm!33232))

(assert (= (or b!476216 bm!33231) bm!33233))

(declare-fun m!747423 () Bool)

(assert (=> bm!33232 m!747423))

(declare-fun m!747425 () Bool)

(assert (=> b!476220 m!747425))

(declare-fun m!747427 () Bool)

(assert (=> bm!33233 m!747427))

(assert (=> bm!33193 d!179972))

(declare-fun b!476222 () Bool)

(declare-fun res!211000 () Bool)

(declare-fun e!290702 () Bool)

(assert (=> b!476222 (=> (not res!211000) (not e!290702))))

(declare-fun call!33239 () Bool)

(assert (=> b!476222 (= res!211000 call!33239)))

(declare-fun e!290703 () Bool)

(assert (=> b!476222 (= e!290703 e!290702)))

(declare-fun bm!33234 () Bool)

(declare-fun call!33240 () Bool)

(declare-fun call!33241 () Bool)

(assert (=> bm!33234 (= call!33240 call!33241)))

(declare-fun b!476223 () Bool)

(declare-fun e!290700 () Bool)

(declare-fun e!290698 () Bool)

(assert (=> b!476223 (= e!290700 e!290698)))

(declare-fun c!95298 () Bool)

(assert (=> b!476223 (= c!95298 ((_ is Star!1151) (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230)))))))

(declare-fun bm!33235 () Bool)

(declare-fun c!95297 () Bool)

(assert (=> bm!33235 (= call!33239 (validRegex!379 (ite c!95297 (regOne!2815 (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230)))) (regTwo!2814 (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230)))))))))

(declare-fun b!476225 () Bool)

(declare-fun e!290699 () Bool)

(assert (=> b!476225 (= e!290699 call!33241)))

(declare-fun b!476226 () Bool)

(declare-fun res!211001 () Bool)

(declare-fun e!290701 () Bool)

(assert (=> b!476226 (=> res!211001 e!290701)))

(assert (=> b!476226 (= res!211001 (not ((_ is Concat!2051) (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230))))))))

(assert (=> b!476226 (= e!290703 e!290701)))

(declare-fun b!476227 () Bool)

(declare-fun e!290704 () Bool)

(assert (=> b!476227 (= e!290704 call!33239)))

(declare-fun b!476228 () Bool)

(assert (=> b!476228 (= e!290701 e!290704)))

(declare-fun res!210999 () Bool)

(assert (=> b!476228 (=> (not res!210999) (not e!290704))))

(assert (=> b!476228 (= res!210999 call!33240)))

(declare-fun b!476229 () Bool)

(assert (=> b!476229 (= e!290698 e!290699)))

(declare-fun res!211002 () Bool)

(assert (=> b!476229 (= res!211002 (not (nullable!286 (reg!1480 (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230)))))))))

(assert (=> b!476229 (=> (not res!211002) (not e!290699))))

(declare-fun b!476230 () Bool)

(assert (=> b!476230 (= e!290698 e!290703)))

(assert (=> b!476230 (= c!95297 ((_ is Union!1151) (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230)))))))

(declare-fun bm!33236 () Bool)

(assert (=> bm!33236 (= call!33241 (validRegex!379 (ite c!95298 (reg!1480 (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230)))) (ite c!95297 (regTwo!2815 (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230)))) (regOne!2814 (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230))))))))))

(declare-fun b!476224 () Bool)

(assert (=> b!476224 (= e!290702 call!33240)))

(declare-fun d!179974 () Bool)

(declare-fun res!211003 () Bool)

(assert (=> d!179974 (=> res!211003 e!290700)))

(assert (=> d!179974 (= res!211003 ((_ is ElementMatch!1151) (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230)))))))

(assert (=> d!179974 (= (validRegex!379 (ite c!95274 (reg!1480 r!20230) (ite c!95273 (regTwo!2815 r!20230) (regOne!2814 r!20230)))) e!290700)))

(assert (= (and d!179974 (not res!211003)) b!476223))

(assert (= (and b!476223 c!95298) b!476229))

(assert (= (and b!476223 (not c!95298)) b!476230))

(assert (= (and b!476229 res!211002) b!476225))

(assert (= (and b!476230 c!95297) b!476222))

(assert (= (and b!476230 (not c!95297)) b!476226))

(assert (= (and b!476222 res!211000) b!476224))

(assert (= (and b!476226 (not res!211001)) b!476228))

(assert (= (and b!476228 res!210999) b!476227))

(assert (= (or b!476224 b!476228) bm!33234))

(assert (= (or b!476222 b!476227) bm!33235))

(assert (= (or b!476225 bm!33234) bm!33236))

(declare-fun m!747429 () Bool)

(assert (=> bm!33235 m!747429))

(declare-fun m!747431 () Bool)

(assert (=> b!476229 m!747431))

(declare-fun m!747433 () Bool)

(assert (=> bm!33236 m!747433))

(assert (=> bm!33196 d!179974))

(declare-fun b!476232 () Bool)

(declare-fun e!290705 () Bool)

(declare-fun tp!132968 () Bool)

(declare-fun tp!132969 () Bool)

(assert (=> b!476232 (= e!290705 (and tp!132968 tp!132969))))

(assert (=> b!475990 (= tp!132825 e!290705)))

(declare-fun b!476231 () Bool)

(assert (=> b!476231 (= e!290705 tp_is_empty!2299)))

(declare-fun b!476233 () Bool)

(declare-fun tp!132971 () Bool)

(assert (=> b!476233 (= e!290705 tp!132971)))

(declare-fun b!476234 () Bool)

(declare-fun tp!132970 () Bool)

(declare-fun tp!132967 () Bool)

(assert (=> b!476234 (= e!290705 (and tp!132970 tp!132967))))

(assert (= (and b!475990 ((_ is ElementMatch!1151) (regOne!2815 (regTwo!2815 r!20230)))) b!476231))

(assert (= (and b!475990 ((_ is Concat!2051) (regOne!2815 (regTwo!2815 r!20230)))) b!476232))

(assert (= (and b!475990 ((_ is Star!1151) (regOne!2815 (regTwo!2815 r!20230)))) b!476233))

(assert (= (and b!475990 ((_ is Union!1151) (regOne!2815 (regTwo!2815 r!20230)))) b!476234))

(declare-fun b!476236 () Bool)

(declare-fun e!290706 () Bool)

(declare-fun tp!132973 () Bool)

(declare-fun tp!132974 () Bool)

(assert (=> b!476236 (= e!290706 (and tp!132973 tp!132974))))

(assert (=> b!475990 (= tp!132822 e!290706)))

(declare-fun b!476235 () Bool)

(assert (=> b!476235 (= e!290706 tp_is_empty!2299)))

(declare-fun b!476237 () Bool)

(declare-fun tp!132976 () Bool)

(assert (=> b!476237 (= e!290706 tp!132976)))

(declare-fun b!476238 () Bool)

(declare-fun tp!132975 () Bool)

(declare-fun tp!132972 () Bool)

(assert (=> b!476238 (= e!290706 (and tp!132975 tp!132972))))

(assert (= (and b!475990 ((_ is ElementMatch!1151) (regTwo!2815 (regTwo!2815 r!20230)))) b!476235))

(assert (= (and b!475990 ((_ is Concat!2051) (regTwo!2815 (regTwo!2815 r!20230)))) b!476236))

(assert (= (and b!475990 ((_ is Star!1151) (regTwo!2815 (regTwo!2815 r!20230)))) b!476237))

(assert (= (and b!475990 ((_ is Union!1151) (regTwo!2815 (regTwo!2815 r!20230)))) b!476238))

(declare-fun b!476240 () Bool)

(declare-fun e!290707 () Bool)

(declare-fun tp!132978 () Bool)

(declare-fun tp!132979 () Bool)

(assert (=> b!476240 (= e!290707 (and tp!132978 tp!132979))))

(assert (=> b!475985 (= tp!132821 e!290707)))

(declare-fun b!476239 () Bool)

(assert (=> b!476239 (= e!290707 tp_is_empty!2299)))

(declare-fun b!476241 () Bool)

(declare-fun tp!132981 () Bool)

(assert (=> b!476241 (= e!290707 tp!132981)))

(declare-fun b!476242 () Bool)

(declare-fun tp!132980 () Bool)

(declare-fun tp!132977 () Bool)

(assert (=> b!476242 (= e!290707 (and tp!132980 tp!132977))))

(assert (= (and b!475985 ((_ is ElementMatch!1151) (reg!1480 (regOne!2815 r!20230)))) b!476239))

(assert (= (and b!475985 ((_ is Concat!2051) (reg!1480 (regOne!2815 r!20230)))) b!476240))

(assert (= (and b!475985 ((_ is Star!1151) (reg!1480 (regOne!2815 r!20230)))) b!476241))

(assert (= (and b!475985 ((_ is Union!1151) (reg!1480 (regOne!2815 r!20230)))) b!476242))

(declare-fun b!476244 () Bool)

(declare-fun e!290708 () Bool)

(declare-fun tp!132983 () Bool)

(declare-fun tp!132984 () Bool)

(assert (=> b!476244 (= e!290708 (and tp!132983 tp!132984))))

(assert (=> b!475994 (= tp!132830 e!290708)))

(declare-fun b!476243 () Bool)

(assert (=> b!476243 (= e!290708 tp_is_empty!2299)))

(declare-fun b!476245 () Bool)

(declare-fun tp!132986 () Bool)

(assert (=> b!476245 (= e!290708 tp!132986)))

(declare-fun b!476246 () Bool)

(declare-fun tp!132985 () Bool)

(declare-fun tp!132982 () Bool)

(assert (=> b!476246 (= e!290708 (and tp!132985 tp!132982))))

(assert (= (and b!475994 ((_ is ElementMatch!1151) (regOne!2815 (reg!1480 r!20230)))) b!476243))

(assert (= (and b!475994 ((_ is Concat!2051) (regOne!2815 (reg!1480 r!20230)))) b!476244))

(assert (= (and b!475994 ((_ is Star!1151) (regOne!2815 (reg!1480 r!20230)))) b!476245))

(assert (= (and b!475994 ((_ is Union!1151) (regOne!2815 (reg!1480 r!20230)))) b!476246))

(declare-fun b!476248 () Bool)

(declare-fun e!290709 () Bool)

(declare-fun tp!132988 () Bool)

(declare-fun tp!132989 () Bool)

(assert (=> b!476248 (= e!290709 (and tp!132988 tp!132989))))

(assert (=> b!475994 (= tp!132827 e!290709)))

(declare-fun b!476247 () Bool)

(assert (=> b!476247 (= e!290709 tp_is_empty!2299)))

(declare-fun b!476249 () Bool)

(declare-fun tp!132991 () Bool)

(assert (=> b!476249 (= e!290709 tp!132991)))

(declare-fun b!476250 () Bool)

(declare-fun tp!132990 () Bool)

(declare-fun tp!132987 () Bool)

(assert (=> b!476250 (= e!290709 (and tp!132990 tp!132987))))

(assert (= (and b!475994 ((_ is ElementMatch!1151) (regTwo!2815 (reg!1480 r!20230)))) b!476247))

(assert (= (and b!475994 ((_ is Concat!2051) (regTwo!2815 (reg!1480 r!20230)))) b!476248))

(assert (= (and b!475994 ((_ is Star!1151) (regTwo!2815 (reg!1480 r!20230)))) b!476249))

(assert (= (and b!475994 ((_ is Union!1151) (regTwo!2815 (reg!1480 r!20230)))) b!476250))

(declare-fun b!476252 () Bool)

(declare-fun e!290710 () Bool)

(declare-fun tp!132993 () Bool)

(declare-fun tp!132994 () Bool)

(assert (=> b!476252 (= e!290710 (and tp!132993 tp!132994))))

(assert (=> b!475989 (= tp!132826 e!290710)))

(declare-fun b!476251 () Bool)

(assert (=> b!476251 (= e!290710 tp_is_empty!2299)))

(declare-fun b!476253 () Bool)

(declare-fun tp!132996 () Bool)

(assert (=> b!476253 (= e!290710 tp!132996)))

(declare-fun b!476254 () Bool)

(declare-fun tp!132995 () Bool)

(declare-fun tp!132992 () Bool)

(assert (=> b!476254 (= e!290710 (and tp!132995 tp!132992))))

(assert (= (and b!475989 ((_ is ElementMatch!1151) (reg!1480 (regTwo!2815 r!20230)))) b!476251))

(assert (= (and b!475989 ((_ is Concat!2051) (reg!1480 (regTwo!2815 r!20230)))) b!476252))

(assert (= (and b!475989 ((_ is Star!1151) (reg!1480 (regTwo!2815 r!20230)))) b!476253))

(assert (= (and b!475989 ((_ is Union!1151) (reg!1480 (regTwo!2815 r!20230)))) b!476254))

(declare-fun b!476256 () Bool)

(declare-fun e!290711 () Bool)

(declare-fun tp!132998 () Bool)

(declare-fun tp!132999 () Bool)

(assert (=> b!476256 (= e!290711 (and tp!132998 tp!132999))))

(assert (=> b!475998 (= tp!132835 e!290711)))

(declare-fun b!476255 () Bool)

(assert (=> b!476255 (= e!290711 tp_is_empty!2299)))

(declare-fun b!476257 () Bool)

(declare-fun tp!133001 () Bool)

(assert (=> b!476257 (= e!290711 tp!133001)))

(declare-fun b!476258 () Bool)

(declare-fun tp!133000 () Bool)

(declare-fun tp!132997 () Bool)

(assert (=> b!476258 (= e!290711 (and tp!133000 tp!132997))))

(assert (= (and b!475998 ((_ is ElementMatch!1151) (regOne!2815 (regOne!2814 r!20230)))) b!476255))

(assert (= (and b!475998 ((_ is Concat!2051) (regOne!2815 (regOne!2814 r!20230)))) b!476256))

(assert (= (and b!475998 ((_ is Star!1151) (regOne!2815 (regOne!2814 r!20230)))) b!476257))

(assert (= (and b!475998 ((_ is Union!1151) (regOne!2815 (regOne!2814 r!20230)))) b!476258))

(declare-fun b!476260 () Bool)

(declare-fun e!290712 () Bool)

(declare-fun tp!133003 () Bool)

(declare-fun tp!133004 () Bool)

(assert (=> b!476260 (= e!290712 (and tp!133003 tp!133004))))

(assert (=> b!475998 (= tp!132832 e!290712)))

(declare-fun b!476259 () Bool)

(assert (=> b!476259 (= e!290712 tp_is_empty!2299)))

(declare-fun b!476261 () Bool)

(declare-fun tp!133006 () Bool)

(assert (=> b!476261 (= e!290712 tp!133006)))

(declare-fun b!476262 () Bool)

(declare-fun tp!133005 () Bool)

(declare-fun tp!133002 () Bool)

(assert (=> b!476262 (= e!290712 (and tp!133005 tp!133002))))

(assert (= (and b!475998 ((_ is ElementMatch!1151) (regTwo!2815 (regOne!2814 r!20230)))) b!476259))

(assert (= (and b!475998 ((_ is Concat!2051) (regTwo!2815 (regOne!2814 r!20230)))) b!476260))

(assert (= (and b!475998 ((_ is Star!1151) (regTwo!2815 (regOne!2814 r!20230)))) b!476261))

(assert (= (and b!475998 ((_ is Union!1151) (regTwo!2815 (regOne!2814 r!20230)))) b!476262))

(declare-fun b!476264 () Bool)

(declare-fun e!290713 () Bool)

(declare-fun tp!133008 () Bool)

(declare-fun tp!133009 () Bool)

(assert (=> b!476264 (= e!290713 (and tp!133008 tp!133009))))

(assert (=> b!475984 (= tp!132818 e!290713)))

(declare-fun b!476263 () Bool)

(assert (=> b!476263 (= e!290713 tp_is_empty!2299)))

(declare-fun b!476265 () Bool)

(declare-fun tp!133011 () Bool)

(assert (=> b!476265 (= e!290713 tp!133011)))

(declare-fun b!476266 () Bool)

(declare-fun tp!133010 () Bool)

(declare-fun tp!133007 () Bool)

(assert (=> b!476266 (= e!290713 (and tp!133010 tp!133007))))

(assert (= (and b!475984 ((_ is ElementMatch!1151) (regOne!2814 (regOne!2815 r!20230)))) b!476263))

(assert (= (and b!475984 ((_ is Concat!2051) (regOne!2814 (regOne!2815 r!20230)))) b!476264))

(assert (= (and b!475984 ((_ is Star!1151) (regOne!2814 (regOne!2815 r!20230)))) b!476265))

(assert (= (and b!475984 ((_ is Union!1151) (regOne!2814 (regOne!2815 r!20230)))) b!476266))

(declare-fun b!476268 () Bool)

(declare-fun e!290714 () Bool)

(declare-fun tp!133013 () Bool)

(declare-fun tp!133014 () Bool)

(assert (=> b!476268 (= e!290714 (and tp!133013 tp!133014))))

(assert (=> b!475984 (= tp!132819 e!290714)))

(declare-fun b!476267 () Bool)

(assert (=> b!476267 (= e!290714 tp_is_empty!2299)))

(declare-fun b!476269 () Bool)

(declare-fun tp!133016 () Bool)

(assert (=> b!476269 (= e!290714 tp!133016)))

(declare-fun b!476270 () Bool)

(declare-fun tp!133015 () Bool)

(declare-fun tp!133012 () Bool)

(assert (=> b!476270 (= e!290714 (and tp!133015 tp!133012))))

(assert (= (and b!475984 ((_ is ElementMatch!1151) (regTwo!2814 (regOne!2815 r!20230)))) b!476267))

(assert (= (and b!475984 ((_ is Concat!2051) (regTwo!2814 (regOne!2815 r!20230)))) b!476268))

(assert (= (and b!475984 ((_ is Star!1151) (regTwo!2814 (regOne!2815 r!20230)))) b!476269))

(assert (= (and b!475984 ((_ is Union!1151) (regTwo!2814 (regOne!2815 r!20230)))) b!476270))

(declare-fun b!476272 () Bool)

(declare-fun e!290715 () Bool)

(declare-fun tp!133018 () Bool)

(declare-fun tp!133019 () Bool)

(assert (=> b!476272 (= e!290715 (and tp!133018 tp!133019))))

(assert (=> b!475993 (= tp!132831 e!290715)))

(declare-fun b!476271 () Bool)

(assert (=> b!476271 (= e!290715 tp_is_empty!2299)))

(declare-fun b!476273 () Bool)

(declare-fun tp!133021 () Bool)

(assert (=> b!476273 (= e!290715 tp!133021)))

(declare-fun b!476274 () Bool)

(declare-fun tp!133020 () Bool)

(declare-fun tp!133017 () Bool)

(assert (=> b!476274 (= e!290715 (and tp!133020 tp!133017))))

(assert (= (and b!475993 ((_ is ElementMatch!1151) (reg!1480 (reg!1480 r!20230)))) b!476271))

(assert (= (and b!475993 ((_ is Concat!2051) (reg!1480 (reg!1480 r!20230)))) b!476272))

(assert (= (and b!475993 ((_ is Star!1151) (reg!1480 (reg!1480 r!20230)))) b!476273))

(assert (= (and b!475993 ((_ is Union!1151) (reg!1480 (reg!1480 r!20230)))) b!476274))

(declare-fun b!476276 () Bool)

(declare-fun e!290716 () Bool)

(declare-fun tp!133023 () Bool)

(declare-fun tp!133024 () Bool)

(assert (=> b!476276 (= e!290716 (and tp!133023 tp!133024))))

(assert (=> b!476002 (= tp!132840 e!290716)))

(declare-fun b!476275 () Bool)

(assert (=> b!476275 (= e!290716 tp_is_empty!2299)))

(declare-fun b!476277 () Bool)

(declare-fun tp!133026 () Bool)

(assert (=> b!476277 (= e!290716 tp!133026)))

(declare-fun b!476278 () Bool)

(declare-fun tp!133025 () Bool)

(declare-fun tp!133022 () Bool)

(assert (=> b!476278 (= e!290716 (and tp!133025 tp!133022))))

(assert (= (and b!476002 ((_ is ElementMatch!1151) (regOne!2815 (regTwo!2814 r!20230)))) b!476275))

(assert (= (and b!476002 ((_ is Concat!2051) (regOne!2815 (regTwo!2814 r!20230)))) b!476276))

(assert (= (and b!476002 ((_ is Star!1151) (regOne!2815 (regTwo!2814 r!20230)))) b!476277))

(assert (= (and b!476002 ((_ is Union!1151) (regOne!2815 (regTwo!2814 r!20230)))) b!476278))

(declare-fun b!476280 () Bool)

(declare-fun e!290717 () Bool)

(declare-fun tp!133028 () Bool)

(declare-fun tp!133029 () Bool)

(assert (=> b!476280 (= e!290717 (and tp!133028 tp!133029))))

(assert (=> b!476002 (= tp!132837 e!290717)))

(declare-fun b!476279 () Bool)

(assert (=> b!476279 (= e!290717 tp_is_empty!2299)))

(declare-fun b!476281 () Bool)

(declare-fun tp!133031 () Bool)

(assert (=> b!476281 (= e!290717 tp!133031)))

(declare-fun b!476282 () Bool)

(declare-fun tp!133030 () Bool)

(declare-fun tp!133027 () Bool)

(assert (=> b!476282 (= e!290717 (and tp!133030 tp!133027))))

(assert (= (and b!476002 ((_ is ElementMatch!1151) (regTwo!2815 (regTwo!2814 r!20230)))) b!476279))

(assert (= (and b!476002 ((_ is Concat!2051) (regTwo!2815 (regTwo!2814 r!20230)))) b!476280))

(assert (= (and b!476002 ((_ is Star!1151) (regTwo!2815 (regTwo!2814 r!20230)))) b!476281))

(assert (= (and b!476002 ((_ is Union!1151) (regTwo!2815 (regTwo!2814 r!20230)))) b!476282))

(declare-fun b!476284 () Bool)

(declare-fun e!290718 () Bool)

(declare-fun tp!133033 () Bool)

(declare-fun tp!133034 () Bool)

(assert (=> b!476284 (= e!290718 (and tp!133033 tp!133034))))

(assert (=> b!475988 (= tp!132823 e!290718)))

(declare-fun b!476283 () Bool)

(assert (=> b!476283 (= e!290718 tp_is_empty!2299)))

(declare-fun b!476285 () Bool)

(declare-fun tp!133036 () Bool)

(assert (=> b!476285 (= e!290718 tp!133036)))

(declare-fun b!476286 () Bool)

(declare-fun tp!133035 () Bool)

(declare-fun tp!133032 () Bool)

(assert (=> b!476286 (= e!290718 (and tp!133035 tp!133032))))

(assert (= (and b!475988 ((_ is ElementMatch!1151) (regOne!2814 (regTwo!2815 r!20230)))) b!476283))

(assert (= (and b!475988 ((_ is Concat!2051) (regOne!2814 (regTwo!2815 r!20230)))) b!476284))

(assert (= (and b!475988 ((_ is Star!1151) (regOne!2814 (regTwo!2815 r!20230)))) b!476285))

(assert (= (and b!475988 ((_ is Union!1151) (regOne!2814 (regTwo!2815 r!20230)))) b!476286))

(declare-fun b!476288 () Bool)

(declare-fun e!290719 () Bool)

(declare-fun tp!133038 () Bool)

(declare-fun tp!133039 () Bool)

(assert (=> b!476288 (= e!290719 (and tp!133038 tp!133039))))

(assert (=> b!475988 (= tp!132824 e!290719)))

(declare-fun b!476287 () Bool)

(assert (=> b!476287 (= e!290719 tp_is_empty!2299)))

(declare-fun b!476289 () Bool)

(declare-fun tp!133041 () Bool)

(assert (=> b!476289 (= e!290719 tp!133041)))

(declare-fun b!476290 () Bool)

(declare-fun tp!133040 () Bool)

(declare-fun tp!133037 () Bool)

(assert (=> b!476290 (= e!290719 (and tp!133040 tp!133037))))

(assert (= (and b!475988 ((_ is ElementMatch!1151) (regTwo!2814 (regTwo!2815 r!20230)))) b!476287))

(assert (= (and b!475988 ((_ is Concat!2051) (regTwo!2814 (regTwo!2815 r!20230)))) b!476288))

(assert (= (and b!475988 ((_ is Star!1151) (regTwo!2814 (regTwo!2815 r!20230)))) b!476289))

(assert (= (and b!475988 ((_ is Union!1151) (regTwo!2814 (regTwo!2815 r!20230)))) b!476290))

(declare-fun b!476292 () Bool)

(declare-fun e!290720 () Bool)

(declare-fun tp!133043 () Bool)

(declare-fun tp!133044 () Bool)

(assert (=> b!476292 (= e!290720 (and tp!133043 tp!133044))))

(assert (=> b!475997 (= tp!132836 e!290720)))

(declare-fun b!476291 () Bool)

(assert (=> b!476291 (= e!290720 tp_is_empty!2299)))

(declare-fun b!476293 () Bool)

(declare-fun tp!133046 () Bool)

(assert (=> b!476293 (= e!290720 tp!133046)))

(declare-fun b!476294 () Bool)

(declare-fun tp!133045 () Bool)

(declare-fun tp!133042 () Bool)

(assert (=> b!476294 (= e!290720 (and tp!133045 tp!133042))))

(assert (= (and b!475997 ((_ is ElementMatch!1151) (reg!1480 (regOne!2814 r!20230)))) b!476291))

(assert (= (and b!475997 ((_ is Concat!2051) (reg!1480 (regOne!2814 r!20230)))) b!476292))

(assert (= (and b!475997 ((_ is Star!1151) (reg!1480 (regOne!2814 r!20230)))) b!476293))

(assert (= (and b!475997 ((_ is Union!1151) (reg!1480 (regOne!2814 r!20230)))) b!476294))

(declare-fun b!476296 () Bool)

(declare-fun e!290721 () Bool)

(declare-fun tp!133048 () Bool)

(declare-fun tp!133049 () Bool)

(assert (=> b!476296 (= e!290721 (and tp!133048 tp!133049))))

(assert (=> b!475986 (= tp!132820 e!290721)))

(declare-fun b!476295 () Bool)

(assert (=> b!476295 (= e!290721 tp_is_empty!2299)))

(declare-fun b!476297 () Bool)

(declare-fun tp!133051 () Bool)

(assert (=> b!476297 (= e!290721 tp!133051)))

(declare-fun b!476298 () Bool)

(declare-fun tp!133050 () Bool)

(declare-fun tp!133047 () Bool)

(assert (=> b!476298 (= e!290721 (and tp!133050 tp!133047))))

(assert (= (and b!475986 ((_ is ElementMatch!1151) (regOne!2815 (regOne!2815 r!20230)))) b!476295))

(assert (= (and b!475986 ((_ is Concat!2051) (regOne!2815 (regOne!2815 r!20230)))) b!476296))

(assert (= (and b!475986 ((_ is Star!1151) (regOne!2815 (regOne!2815 r!20230)))) b!476297))

(assert (= (and b!475986 ((_ is Union!1151) (regOne!2815 (regOne!2815 r!20230)))) b!476298))

(declare-fun b!476300 () Bool)

(declare-fun e!290722 () Bool)

(declare-fun tp!133053 () Bool)

(declare-fun tp!133054 () Bool)

(assert (=> b!476300 (= e!290722 (and tp!133053 tp!133054))))

(assert (=> b!475986 (= tp!132817 e!290722)))

(declare-fun b!476299 () Bool)

(assert (=> b!476299 (= e!290722 tp_is_empty!2299)))

(declare-fun b!476301 () Bool)

(declare-fun tp!133056 () Bool)

(assert (=> b!476301 (= e!290722 tp!133056)))

(declare-fun b!476302 () Bool)

(declare-fun tp!133055 () Bool)

(declare-fun tp!133052 () Bool)

(assert (=> b!476302 (= e!290722 (and tp!133055 tp!133052))))

(assert (= (and b!475986 ((_ is ElementMatch!1151) (regTwo!2815 (regOne!2815 r!20230)))) b!476299))

(assert (= (and b!475986 ((_ is Concat!2051) (regTwo!2815 (regOne!2815 r!20230)))) b!476300))

(assert (= (and b!475986 ((_ is Star!1151) (regTwo!2815 (regOne!2815 r!20230)))) b!476301))

(assert (= (and b!475986 ((_ is Union!1151) (regTwo!2815 (regOne!2815 r!20230)))) b!476302))

(declare-fun b!476304 () Bool)

(declare-fun e!290723 () Bool)

(declare-fun tp!133058 () Bool)

(declare-fun tp!133059 () Bool)

(assert (=> b!476304 (= e!290723 (and tp!133058 tp!133059))))

(assert (=> b!475992 (= tp!132828 e!290723)))

(declare-fun b!476303 () Bool)

(assert (=> b!476303 (= e!290723 tp_is_empty!2299)))

(declare-fun b!476305 () Bool)

(declare-fun tp!133061 () Bool)

(assert (=> b!476305 (= e!290723 tp!133061)))

(declare-fun b!476306 () Bool)

(declare-fun tp!133060 () Bool)

(declare-fun tp!133057 () Bool)

(assert (=> b!476306 (= e!290723 (and tp!133060 tp!133057))))

(assert (= (and b!475992 ((_ is ElementMatch!1151) (regOne!2814 (reg!1480 r!20230)))) b!476303))

(assert (= (and b!475992 ((_ is Concat!2051) (regOne!2814 (reg!1480 r!20230)))) b!476304))

(assert (= (and b!475992 ((_ is Star!1151) (regOne!2814 (reg!1480 r!20230)))) b!476305))

(assert (= (and b!475992 ((_ is Union!1151) (regOne!2814 (reg!1480 r!20230)))) b!476306))

(declare-fun b!476308 () Bool)

(declare-fun e!290724 () Bool)

(declare-fun tp!133063 () Bool)

(declare-fun tp!133064 () Bool)

(assert (=> b!476308 (= e!290724 (and tp!133063 tp!133064))))

(assert (=> b!475992 (= tp!132829 e!290724)))

(declare-fun b!476307 () Bool)

(assert (=> b!476307 (= e!290724 tp_is_empty!2299)))

(declare-fun b!476309 () Bool)

(declare-fun tp!133066 () Bool)

(assert (=> b!476309 (= e!290724 tp!133066)))

(declare-fun b!476310 () Bool)

(declare-fun tp!133065 () Bool)

(declare-fun tp!133062 () Bool)

(assert (=> b!476310 (= e!290724 (and tp!133065 tp!133062))))

(assert (= (and b!475992 ((_ is ElementMatch!1151) (regTwo!2814 (reg!1480 r!20230)))) b!476307))

(assert (= (and b!475992 ((_ is Concat!2051) (regTwo!2814 (reg!1480 r!20230)))) b!476308))

(assert (= (and b!475992 ((_ is Star!1151) (regTwo!2814 (reg!1480 r!20230)))) b!476309))

(assert (= (and b!475992 ((_ is Union!1151) (regTwo!2814 (reg!1480 r!20230)))) b!476310))

(declare-fun b!476312 () Bool)

(declare-fun e!290725 () Bool)

(declare-fun tp!133068 () Bool)

(declare-fun tp!133069 () Bool)

(assert (=> b!476312 (= e!290725 (and tp!133068 tp!133069))))

(assert (=> b!476001 (= tp!132841 e!290725)))

(declare-fun b!476311 () Bool)

(assert (=> b!476311 (= e!290725 tp_is_empty!2299)))

(declare-fun b!476313 () Bool)

(declare-fun tp!133071 () Bool)

(assert (=> b!476313 (= e!290725 tp!133071)))

(declare-fun b!476314 () Bool)

(declare-fun tp!133070 () Bool)

(declare-fun tp!133067 () Bool)

(assert (=> b!476314 (= e!290725 (and tp!133070 tp!133067))))

(assert (= (and b!476001 ((_ is ElementMatch!1151) (reg!1480 (regTwo!2814 r!20230)))) b!476311))

(assert (= (and b!476001 ((_ is Concat!2051) (reg!1480 (regTwo!2814 r!20230)))) b!476312))

(assert (= (and b!476001 ((_ is Star!1151) (reg!1480 (regTwo!2814 r!20230)))) b!476313))

(assert (= (and b!476001 ((_ is Union!1151) (reg!1480 (regTwo!2814 r!20230)))) b!476314))

(declare-fun b!476316 () Bool)

(declare-fun e!290726 () Bool)

(declare-fun tp!133073 () Bool)

(declare-fun tp!133074 () Bool)

(assert (=> b!476316 (= e!290726 (and tp!133073 tp!133074))))

(assert (=> b!475996 (= tp!132833 e!290726)))

(declare-fun b!476315 () Bool)

(assert (=> b!476315 (= e!290726 tp_is_empty!2299)))

(declare-fun b!476317 () Bool)

(declare-fun tp!133076 () Bool)

(assert (=> b!476317 (= e!290726 tp!133076)))

(declare-fun b!476318 () Bool)

(declare-fun tp!133075 () Bool)

(declare-fun tp!133072 () Bool)

(assert (=> b!476318 (= e!290726 (and tp!133075 tp!133072))))

(assert (= (and b!475996 ((_ is ElementMatch!1151) (regOne!2814 (regOne!2814 r!20230)))) b!476315))

(assert (= (and b!475996 ((_ is Concat!2051) (regOne!2814 (regOne!2814 r!20230)))) b!476316))

(assert (= (and b!475996 ((_ is Star!1151) (regOne!2814 (regOne!2814 r!20230)))) b!476317))

(assert (= (and b!475996 ((_ is Union!1151) (regOne!2814 (regOne!2814 r!20230)))) b!476318))

(declare-fun b!476320 () Bool)

(declare-fun e!290727 () Bool)

(declare-fun tp!133078 () Bool)

(declare-fun tp!133079 () Bool)

(assert (=> b!476320 (= e!290727 (and tp!133078 tp!133079))))

(assert (=> b!475996 (= tp!132834 e!290727)))

(declare-fun b!476319 () Bool)

(assert (=> b!476319 (= e!290727 tp_is_empty!2299)))

(declare-fun b!476321 () Bool)

(declare-fun tp!133081 () Bool)

(assert (=> b!476321 (= e!290727 tp!133081)))

(declare-fun b!476322 () Bool)

(declare-fun tp!133080 () Bool)

(declare-fun tp!133077 () Bool)

(assert (=> b!476322 (= e!290727 (and tp!133080 tp!133077))))

(assert (= (and b!475996 ((_ is ElementMatch!1151) (regTwo!2814 (regOne!2814 r!20230)))) b!476319))

(assert (= (and b!475996 ((_ is Concat!2051) (regTwo!2814 (regOne!2814 r!20230)))) b!476320))

(assert (= (and b!475996 ((_ is Star!1151) (regTwo!2814 (regOne!2814 r!20230)))) b!476321))

(assert (= (and b!475996 ((_ is Union!1151) (regTwo!2814 (regOne!2814 r!20230)))) b!476322))

(declare-fun b!476324 () Bool)

(declare-fun e!290728 () Bool)

(declare-fun tp!133083 () Bool)

(declare-fun tp!133084 () Bool)

(assert (=> b!476324 (= e!290728 (and tp!133083 tp!133084))))

(assert (=> b!476000 (= tp!132838 e!290728)))

(declare-fun b!476323 () Bool)

(assert (=> b!476323 (= e!290728 tp_is_empty!2299)))

(declare-fun b!476325 () Bool)

(declare-fun tp!133086 () Bool)

(assert (=> b!476325 (= e!290728 tp!133086)))

(declare-fun b!476326 () Bool)

(declare-fun tp!133085 () Bool)

(declare-fun tp!133082 () Bool)

(assert (=> b!476326 (= e!290728 (and tp!133085 tp!133082))))

(assert (= (and b!476000 ((_ is ElementMatch!1151) (regOne!2814 (regTwo!2814 r!20230)))) b!476323))

(assert (= (and b!476000 ((_ is Concat!2051) (regOne!2814 (regTwo!2814 r!20230)))) b!476324))

(assert (= (and b!476000 ((_ is Star!1151) (regOne!2814 (regTwo!2814 r!20230)))) b!476325))

(assert (= (and b!476000 ((_ is Union!1151) (regOne!2814 (regTwo!2814 r!20230)))) b!476326))

(declare-fun b!476328 () Bool)

(declare-fun e!290729 () Bool)

(declare-fun tp!133088 () Bool)

(declare-fun tp!133089 () Bool)

(assert (=> b!476328 (= e!290729 (and tp!133088 tp!133089))))

(assert (=> b!476000 (= tp!132839 e!290729)))

(declare-fun b!476327 () Bool)

(assert (=> b!476327 (= e!290729 tp_is_empty!2299)))

(declare-fun b!476329 () Bool)

(declare-fun tp!133091 () Bool)

(assert (=> b!476329 (= e!290729 tp!133091)))

(declare-fun b!476330 () Bool)

(declare-fun tp!133090 () Bool)

(declare-fun tp!133087 () Bool)

(assert (=> b!476330 (= e!290729 (and tp!133090 tp!133087))))

(assert (= (and b!476000 ((_ is ElementMatch!1151) (regTwo!2814 (regTwo!2814 r!20230)))) b!476327))

(assert (= (and b!476000 ((_ is Concat!2051) (regTwo!2814 (regTwo!2814 r!20230)))) b!476328))

(assert (= (and b!476000 ((_ is Star!1151) (regTwo!2814 (regTwo!2814 r!20230)))) b!476329))

(assert (= (and b!476000 ((_ is Union!1151) (regTwo!2814 (regTwo!2814 r!20230)))) b!476330))

(check-sat (not b!476277) (not b!476316) (not b!476241) (not b!476324) (not b!476322) (not b!476266) (not b!476326) (not b!476312) (not b!476202) (not b!476286) (not b!476310) (not b!476240) (not b!476302) (not b!476318) (not d!179962) (not b!476232) (not b!476284) (not b!476293) (not b!476254) (not b!476236) (not b!476211) (not d!179966) (not b!476264) (not b!476272) (not b!476330) (not b!476248) tp_is_empty!2299 (not b!476276) (not b!476252) (not b!476244) (not b!476260) (not bm!33226) (not b!476297) (not bm!33224) (not d!179964) (not b!476321) (not b!476306) (not b!476296) (not b!476281) (not bm!33221) (not b!476282) (not b!476270) (not b!476320) (not b!476285) (not b!476246) (not b!476328) (not b!476262) (not b!476300) (not b!476292) (not b!476242) (not b!476274) (not b!476325) (not b!476294) (not bm!33227) (not b!476309) (not b!476298) (not d!179944) (not b!476253) (not b!476234) (not bm!33233) (not b!476265) (not b!476257) (not bm!33232) (not b!476220) (not b!476269) (not b!476278) (not bm!33236) (not b!476250) (not b!476256) (not b!476301) (not b!476233) (not b!476317) (not b!476258) (not b!476280) (not b!476314) (not b!476268) (not b!476288) (not bm!33235) (not b!476245) (not b!476289) (not b!476290) (not bm!33223) (not bm!33222) (not b!476229) (not bm!33230) (not b!476305) (not b!476261) (not b!476249) (not b!476329) (not bm!33229) (not b!476304) (not b!476237) (not b!476308) (not b!476313) (not b!476238) (not b!476273))
(check-sat)
