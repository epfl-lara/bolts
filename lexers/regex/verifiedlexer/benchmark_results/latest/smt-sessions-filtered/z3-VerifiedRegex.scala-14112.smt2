; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742558 () Bool)

(assert start!742558)

(declare-fun b!7839894 () Bool)

(declare-fun res!3118115 () Bool)

(declare-fun e!4635466 () Bool)

(assert (=> b!7839894 (=> (not res!3118115) (not e!4635466))))

(declare-datatypes ((C!42364 0))(
  ( (C!42365 (val!31622 Int)) )
))
(declare-datatypes ((Regex!21019 0))(
  ( (ElementMatch!21019 (c!1441428 C!42364)) (Concat!29864 (regOne!42550 Regex!21019) (regTwo!42550 Regex!21019)) (EmptyExpr!21019) (Star!21019 (reg!21348 Regex!21019)) (EmptyLang!21019) (Union!21019 (regOne!42551 Regex!21019) (regTwo!42551 Regex!21019)) )
))
(declare-fun r2!3226 () Regex!21019)

(declare-fun validRegex!11433 (Regex!21019) Bool)

(assert (=> b!7839894 (= res!3118115 (validRegex!11433 r2!3226))))

(declare-fun b!7839895 () Bool)

(declare-fun e!4635471 () Bool)

(declare-datatypes ((List!73856 0))(
  ( (Nil!73732) (Cons!73732 (h!80180 C!42364) (t!388591 List!73856)) )
))
(declare-datatypes ((tuple2!70028 0))(
  ( (tuple2!70029 (_1!38317 List!73856) (_2!38317 List!73856)) )
))
(declare-fun lt!2678381 () tuple2!70028)

(declare-fun s!10212 () List!73856)

(declare-fun ++!18053 (List!73856 List!73856) List!73856)

(assert (=> b!7839895 (= e!4635471 (not (= (++!18053 (_1!38317 lt!2678381) (_2!38317 lt!2678381)) s!10212)))))

(declare-fun b!7839896 () Bool)

(declare-fun e!4635463 () Bool)

(declare-fun tp_is_empty!52393 () Bool)

(declare-fun tp!2320230 () Bool)

(assert (=> b!7839896 (= e!4635463 (and tp_is_empty!52393 tp!2320230))))

(declare-fun b!7839897 () Bool)

(declare-fun e!4635464 () Bool)

(assert (=> b!7839897 (= e!4635466 e!4635464)))

(declare-fun res!3118112 () Bool)

(assert (=> b!7839897 (=> (not res!3118112) (not e!4635464))))

(declare-fun e!4635469 () Bool)

(assert (=> b!7839897 (= res!3118112 e!4635469)))

(declare-fun res!3118110 () Bool)

(assert (=> b!7839897 (=> res!3118110 e!4635469)))

(declare-fun lt!2678382 () Bool)

(assert (=> b!7839897 (= res!3118110 lt!2678382)))

(declare-datatypes ((Option!17808 0))(
  ( (None!17807) (Some!17807 (v!54942 tuple2!70028)) )
))
(declare-fun lt!2678380 () Option!17808)

(declare-fun isDefined!14408 (Option!17808) Bool)

(assert (=> b!7839897 (= lt!2678382 (not (isDefined!14408 lt!2678380)))))

(declare-fun s1!2717 () List!73856)

(declare-fun s2!2463 () List!73856)

(assert (=> b!7839897 (= lt!2678380 (Some!17807 (tuple2!70029 s1!2717 s2!2463)))))

(declare-fun b!7839898 () Bool)

(declare-fun res!3118109 () Bool)

(assert (=> b!7839898 (=> res!3118109 e!4635471)))

(declare-fun matchR!10473 (Regex!21019 List!73856) Bool)

(assert (=> b!7839898 (= res!3118109 (not (matchR!10473 r2!3226 (_2!38317 lt!2678381))))))

(declare-fun b!7839899 () Bool)

(declare-fun e!4635465 () Bool)

(declare-fun tp!2320232 () Bool)

(assert (=> b!7839899 (= e!4635465 tp!2320232)))

(declare-fun b!7839900 () Bool)

(declare-fun tp!2320234 () Bool)

(declare-fun tp!2320227 () Bool)

(assert (=> b!7839900 (= e!4635465 (and tp!2320234 tp!2320227))))

(declare-fun b!7839901 () Bool)

(declare-fun tp!2320235 () Bool)

(declare-fun tp!2320223 () Bool)

(assert (=> b!7839901 (= e!4635465 (and tp!2320235 tp!2320223))))

(declare-fun b!7839902 () Bool)

(declare-fun res!3118111 () Bool)

(assert (=> b!7839902 (=> (not res!3118111) (not e!4635466))))

(declare-fun r1!3326 () Regex!21019)

(assert (=> b!7839902 (= res!3118111 (matchR!10473 r1!3326 s1!2717))))

(declare-fun b!7839903 () Bool)

(declare-fun e!4635468 () Bool)

(assert (=> b!7839903 (= e!4635468 tp_is_empty!52393)))

(declare-fun b!7839904 () Bool)

(declare-fun e!4635467 () Bool)

(declare-fun tp!2320231 () Bool)

(assert (=> b!7839904 (= e!4635467 (and tp_is_empty!52393 tp!2320231))))

(declare-fun b!7839905 () Bool)

(assert (=> b!7839905 (= e!4635465 tp_is_empty!52393)))

(declare-fun b!7839906 () Bool)

(assert (=> b!7839906 (= e!4635464 (not lt!2678382))))

(declare-fun res!3118108 () Bool)

(assert (=> start!742558 (=> (not res!3118108) (not e!4635466))))

(assert (=> start!742558 (= res!3118108 (validRegex!11433 r1!3326))))

(assert (=> start!742558 e!4635466))

(assert (=> start!742558 e!4635463))

(assert (=> start!742558 e!4635465))

(assert (=> start!742558 e!4635467))

(assert (=> start!742558 e!4635468))

(declare-fun e!4635470 () Bool)

(assert (=> start!742558 e!4635470))

(declare-fun b!7839907 () Bool)

(declare-fun res!3118114 () Bool)

(assert (=> b!7839907 (=> (not res!3118114) (not e!4635466))))

(assert (=> b!7839907 (= res!3118114 (= (++!18053 s1!2717 s2!2463) s!10212))))

(declare-fun b!7839908 () Bool)

(assert (=> b!7839908 (= e!4635469 e!4635471)))

(declare-fun res!3118113 () Bool)

(assert (=> b!7839908 (=> res!3118113 e!4635471)))

(assert (=> b!7839908 (= res!3118113 (not (matchR!10473 r1!3326 (_1!38317 lt!2678381))))))

(declare-fun get!26432 (Option!17808) tuple2!70028)

(assert (=> b!7839908 (= lt!2678381 (get!26432 lt!2678380))))

(declare-fun b!7839909 () Bool)

(declare-fun tp!2320226 () Bool)

(declare-fun tp!2320225 () Bool)

(assert (=> b!7839909 (= e!4635468 (and tp!2320226 tp!2320225))))

(declare-fun b!7839910 () Bool)

(declare-fun tp!2320228 () Bool)

(assert (=> b!7839910 (= e!4635468 tp!2320228)))

(declare-fun b!7839911 () Bool)

(declare-fun tp!2320224 () Bool)

(declare-fun tp!2320233 () Bool)

(assert (=> b!7839911 (= e!4635468 (and tp!2320224 tp!2320233))))

(declare-fun b!7839912 () Bool)

(declare-fun tp!2320229 () Bool)

(assert (=> b!7839912 (= e!4635470 (and tp_is_empty!52393 tp!2320229))))

(declare-fun b!7839913 () Bool)

(declare-fun res!3118116 () Bool)

(assert (=> b!7839913 (=> (not res!3118116) (not e!4635466))))

(assert (=> b!7839913 (= res!3118116 (matchR!10473 r2!3226 s2!2463))))

(assert (= (and start!742558 res!3118108) b!7839894))

(assert (= (and b!7839894 res!3118115) b!7839907))

(assert (= (and b!7839907 res!3118114) b!7839902))

(assert (= (and b!7839902 res!3118111) b!7839913))

(assert (= (and b!7839913 res!3118116) b!7839897))

(assert (= (and b!7839897 (not res!3118110)) b!7839908))

(assert (= (and b!7839908 (not res!3118113)) b!7839898))

(assert (= (and b!7839898 (not res!3118109)) b!7839895))

(assert (= (and b!7839897 res!3118112) b!7839906))

(get-info :version)

(assert (= (and start!742558 ((_ is Cons!73732) s1!2717)) b!7839896))

(assert (= (and start!742558 ((_ is ElementMatch!21019) r1!3326)) b!7839905))

(assert (= (and start!742558 ((_ is Concat!29864) r1!3326)) b!7839901))

(assert (= (and start!742558 ((_ is Star!21019) r1!3326)) b!7839899))

(assert (= (and start!742558 ((_ is Union!21019) r1!3326)) b!7839900))

(assert (= (and start!742558 ((_ is Cons!73732) s!10212)) b!7839904))

(assert (= (and start!742558 ((_ is ElementMatch!21019) r2!3226)) b!7839903))

(assert (= (and start!742558 ((_ is Concat!29864) r2!3226)) b!7839911))

(assert (= (and start!742558 ((_ is Star!21019) r2!3226)) b!7839910))

(assert (= (and start!742558 ((_ is Union!21019) r2!3226)) b!7839909))

(assert (= (and start!742558 ((_ is Cons!73732) s2!2463)) b!7839912))

(declare-fun m!8253062 () Bool)

(assert (=> b!7839898 m!8253062))

(declare-fun m!8253064 () Bool)

(assert (=> start!742558 m!8253064))

(declare-fun m!8253066 () Bool)

(assert (=> b!7839902 m!8253066))

(declare-fun m!8253068 () Bool)

(assert (=> b!7839895 m!8253068))

(declare-fun m!8253070 () Bool)

(assert (=> b!7839894 m!8253070))

(declare-fun m!8253072 () Bool)

(assert (=> b!7839907 m!8253072))

(declare-fun m!8253074 () Bool)

(assert (=> b!7839897 m!8253074))

(declare-fun m!8253076 () Bool)

(assert (=> b!7839908 m!8253076))

(declare-fun m!8253078 () Bool)

(assert (=> b!7839908 m!8253078))

(declare-fun m!8253080 () Bool)

(assert (=> b!7839913 m!8253080))

(check-sat (not b!7839902) (not b!7839896) (not b!7839911) (not b!7839901) (not b!7839898) tp_is_empty!52393 (not b!7839908) (not b!7839910) (not b!7839897) (not b!7839909) (not b!7839904) (not b!7839913) (not b!7839895) (not start!742558) (not b!7839894) (not b!7839899) (not b!7839900) (not b!7839912) (not b!7839907))
(check-sat)
(get-model)

(declare-fun d!2351981 () Bool)

(declare-fun e!4635492 () Bool)

(assert (=> d!2351981 e!4635492))

(declare-fun c!1441439 () Bool)

(assert (=> d!2351981 (= c!1441439 ((_ is EmptyExpr!21019) r1!3326))))

(declare-fun lt!2678387 () Bool)

(declare-fun e!4635491 () Bool)

(assert (=> d!2351981 (= lt!2678387 e!4635491)))

(declare-fun c!1441437 () Bool)

(declare-fun isEmpty!42302 (List!73856) Bool)

(assert (=> d!2351981 (= c!1441437 (isEmpty!42302 s1!2717))))

(assert (=> d!2351981 (validRegex!11433 r1!3326)))

(assert (=> d!2351981 (= (matchR!10473 r1!3326 s1!2717) lt!2678387)))

(declare-fun bm!726628 () Bool)

(declare-fun call!726633 () Bool)

(assert (=> bm!726628 (= call!726633 (isEmpty!42302 s1!2717))))

(declare-fun b!7839950 () Bool)

(assert (=> b!7839950 (= e!4635492 (= lt!2678387 call!726633))))

(declare-fun b!7839951 () Bool)

(declare-fun e!4635490 () Bool)

(declare-fun head!15999 (List!73856) C!42364)

(assert (=> b!7839951 (= e!4635490 (= (head!15999 s1!2717) (c!1441428 r1!3326)))))

(declare-fun b!7839952 () Bool)

(declare-fun nullable!9312 (Regex!21019) Bool)

(assert (=> b!7839952 (= e!4635491 (nullable!9312 r1!3326))))

(declare-fun b!7839953 () Bool)

(declare-fun res!3118139 () Bool)

(assert (=> b!7839953 (=> (not res!3118139) (not e!4635490))))

(assert (=> b!7839953 (= res!3118139 (not call!726633))))

(declare-fun b!7839954 () Bool)

(declare-fun res!3118137 () Bool)

(declare-fun e!4635496 () Bool)

(assert (=> b!7839954 (=> res!3118137 e!4635496)))

(assert (=> b!7839954 (= res!3118137 e!4635490)))

(declare-fun res!3118142 () Bool)

(assert (=> b!7839954 (=> (not res!3118142) (not e!4635490))))

(assert (=> b!7839954 (= res!3118142 lt!2678387)))

(declare-fun b!7839955 () Bool)

(declare-fun derivativeStep!6269 (Regex!21019 C!42364) Regex!21019)

(declare-fun tail!15540 (List!73856) List!73856)

(assert (=> b!7839955 (= e!4635491 (matchR!10473 (derivativeStep!6269 r1!3326 (head!15999 s1!2717)) (tail!15540 s1!2717)))))

(declare-fun b!7839956 () Bool)

(declare-fun res!3118140 () Bool)

(assert (=> b!7839956 (=> (not res!3118140) (not e!4635490))))

(assert (=> b!7839956 (= res!3118140 (isEmpty!42302 (tail!15540 s1!2717)))))

(declare-fun b!7839957 () Bool)

(declare-fun e!4635493 () Bool)

(assert (=> b!7839957 (= e!4635493 (not lt!2678387))))

(declare-fun b!7839958 () Bool)

(declare-fun e!4635495 () Bool)

(declare-fun e!4635494 () Bool)

(assert (=> b!7839958 (= e!4635495 e!4635494)))

(declare-fun res!3118144 () Bool)

(assert (=> b!7839958 (=> res!3118144 e!4635494)))

(assert (=> b!7839958 (= res!3118144 call!726633)))

(declare-fun b!7839959 () Bool)

(declare-fun res!3118141 () Bool)

(assert (=> b!7839959 (=> res!3118141 e!4635496)))

(assert (=> b!7839959 (= res!3118141 (not ((_ is ElementMatch!21019) r1!3326)))))

(assert (=> b!7839959 (= e!4635493 e!4635496)))

(declare-fun b!7839960 () Bool)

(assert (=> b!7839960 (= e!4635496 e!4635495)))

(declare-fun res!3118143 () Bool)

(assert (=> b!7839960 (=> (not res!3118143) (not e!4635495))))

(assert (=> b!7839960 (= res!3118143 (not lt!2678387))))

(declare-fun b!7839961 () Bool)

(assert (=> b!7839961 (= e!4635494 (not (= (head!15999 s1!2717) (c!1441428 r1!3326))))))

(declare-fun b!7839962 () Bool)

(declare-fun res!3118138 () Bool)

(assert (=> b!7839962 (=> res!3118138 e!4635494)))

(assert (=> b!7839962 (= res!3118138 (not (isEmpty!42302 (tail!15540 s1!2717))))))

(declare-fun b!7839963 () Bool)

(assert (=> b!7839963 (= e!4635492 e!4635493)))

(declare-fun c!1441438 () Bool)

(assert (=> b!7839963 (= c!1441438 ((_ is EmptyLang!21019) r1!3326))))

(assert (= (and d!2351981 c!1441437) b!7839952))

(assert (= (and d!2351981 (not c!1441437)) b!7839955))

(assert (= (and d!2351981 c!1441439) b!7839950))

(assert (= (and d!2351981 (not c!1441439)) b!7839963))

(assert (= (and b!7839963 c!1441438) b!7839957))

(assert (= (and b!7839963 (not c!1441438)) b!7839959))

(assert (= (and b!7839959 (not res!3118141)) b!7839954))

(assert (= (and b!7839954 res!3118142) b!7839953))

(assert (= (and b!7839953 res!3118139) b!7839956))

(assert (= (and b!7839956 res!3118140) b!7839951))

(assert (= (and b!7839954 (not res!3118137)) b!7839960))

(assert (= (and b!7839960 res!3118143) b!7839958))

(assert (= (and b!7839958 (not res!3118144)) b!7839962))

(assert (= (and b!7839962 (not res!3118138)) b!7839961))

(assert (= (or b!7839950 b!7839953 b!7839958) bm!726628))

(declare-fun m!8253082 () Bool)

(assert (=> d!2351981 m!8253082))

(assert (=> d!2351981 m!8253064))

(declare-fun m!8253084 () Bool)

(assert (=> b!7839952 m!8253084))

(declare-fun m!8253086 () Bool)

(assert (=> b!7839956 m!8253086))

(assert (=> b!7839956 m!8253086))

(declare-fun m!8253088 () Bool)

(assert (=> b!7839956 m!8253088))

(declare-fun m!8253090 () Bool)

(assert (=> b!7839961 m!8253090))

(assert (=> bm!726628 m!8253082))

(assert (=> b!7839955 m!8253090))

(assert (=> b!7839955 m!8253090))

(declare-fun m!8253092 () Bool)

(assert (=> b!7839955 m!8253092))

(assert (=> b!7839955 m!8253086))

(assert (=> b!7839955 m!8253092))

(assert (=> b!7839955 m!8253086))

(declare-fun m!8253094 () Bool)

(assert (=> b!7839955 m!8253094))

(assert (=> b!7839962 m!8253086))

(assert (=> b!7839962 m!8253086))

(assert (=> b!7839962 m!8253088))

(assert (=> b!7839951 m!8253090))

(assert (=> b!7839902 d!2351981))

(declare-fun b!7839976 () Bool)

(declare-fun e!4635504 () List!73856)

(assert (=> b!7839976 (= e!4635504 s2!2463)))

(declare-fun b!7839979 () Bool)

(declare-fun lt!2678391 () List!73856)

(declare-fun e!4635503 () Bool)

(assert (=> b!7839979 (= e!4635503 (or (not (= s2!2463 Nil!73732)) (= lt!2678391 s1!2717)))))

(declare-fun b!7839978 () Bool)

(declare-fun res!3118152 () Bool)

(assert (=> b!7839978 (=> (not res!3118152) (not e!4635503))))

(declare-fun size!42784 (List!73856) Int)

(assert (=> b!7839978 (= res!3118152 (= (size!42784 lt!2678391) (+ (size!42784 s1!2717) (size!42784 s2!2463))))))

(declare-fun d!2351985 () Bool)

(assert (=> d!2351985 e!4635503))

(declare-fun res!3118151 () Bool)

(assert (=> d!2351985 (=> (not res!3118151) (not e!4635503))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15653 (List!73856) (InoxSet C!42364))

(assert (=> d!2351985 (= res!3118151 (= (content!15653 lt!2678391) ((_ map or) (content!15653 s1!2717) (content!15653 s2!2463))))))

(assert (=> d!2351985 (= lt!2678391 e!4635504)))

(declare-fun c!1441443 () Bool)

(assert (=> d!2351985 (= c!1441443 ((_ is Nil!73732) s1!2717))))

(assert (=> d!2351985 (= (++!18053 s1!2717 s2!2463) lt!2678391)))

(declare-fun b!7839977 () Bool)

(assert (=> b!7839977 (= e!4635504 (Cons!73732 (h!80180 s1!2717) (++!18053 (t!388591 s1!2717) s2!2463)))))

(assert (= (and d!2351985 c!1441443) b!7839976))

(assert (= (and d!2351985 (not c!1441443)) b!7839977))

(assert (= (and d!2351985 res!3118151) b!7839978))

(assert (= (and b!7839978 res!3118152) b!7839979))

(declare-fun m!8253110 () Bool)

(assert (=> b!7839978 m!8253110))

(declare-fun m!8253112 () Bool)

(assert (=> b!7839978 m!8253112))

(declare-fun m!8253114 () Bool)

(assert (=> b!7839978 m!8253114))

(declare-fun m!8253116 () Bool)

(assert (=> d!2351985 m!8253116))

(declare-fun m!8253118 () Bool)

(assert (=> d!2351985 m!8253118))

(declare-fun m!8253120 () Bool)

(assert (=> d!2351985 m!8253120))

(declare-fun m!8253122 () Bool)

(assert (=> b!7839977 m!8253122))

(assert (=> b!7839907 d!2351985))

(declare-fun b!7839980 () Bool)

(declare-fun e!4635506 () List!73856)

(assert (=> b!7839980 (= e!4635506 (_2!38317 lt!2678381))))

(declare-fun b!7839983 () Bool)

(declare-fun e!4635505 () Bool)

(declare-fun lt!2678392 () List!73856)

(assert (=> b!7839983 (= e!4635505 (or (not (= (_2!38317 lt!2678381) Nil!73732)) (= lt!2678392 (_1!38317 lt!2678381))))))

(declare-fun b!7839982 () Bool)

(declare-fun res!3118154 () Bool)

(assert (=> b!7839982 (=> (not res!3118154) (not e!4635505))))

(assert (=> b!7839982 (= res!3118154 (= (size!42784 lt!2678392) (+ (size!42784 (_1!38317 lt!2678381)) (size!42784 (_2!38317 lt!2678381)))))))

(declare-fun d!2351989 () Bool)

(assert (=> d!2351989 e!4635505))

(declare-fun res!3118153 () Bool)

(assert (=> d!2351989 (=> (not res!3118153) (not e!4635505))))

(assert (=> d!2351989 (= res!3118153 (= (content!15653 lt!2678392) ((_ map or) (content!15653 (_1!38317 lt!2678381)) (content!15653 (_2!38317 lt!2678381)))))))

(assert (=> d!2351989 (= lt!2678392 e!4635506)))

(declare-fun c!1441444 () Bool)

(assert (=> d!2351989 (= c!1441444 ((_ is Nil!73732) (_1!38317 lt!2678381)))))

(assert (=> d!2351989 (= (++!18053 (_1!38317 lt!2678381) (_2!38317 lt!2678381)) lt!2678392)))

(declare-fun b!7839981 () Bool)

(assert (=> b!7839981 (= e!4635506 (Cons!73732 (h!80180 (_1!38317 lt!2678381)) (++!18053 (t!388591 (_1!38317 lt!2678381)) (_2!38317 lt!2678381))))))

(assert (= (and d!2351989 c!1441444) b!7839980))

(assert (= (and d!2351989 (not c!1441444)) b!7839981))

(assert (= (and d!2351989 res!3118153) b!7839982))

(assert (= (and b!7839982 res!3118154) b!7839983))

(declare-fun m!8253124 () Bool)

(assert (=> b!7839982 m!8253124))

(declare-fun m!8253126 () Bool)

(assert (=> b!7839982 m!8253126))

(declare-fun m!8253128 () Bool)

(assert (=> b!7839982 m!8253128))

(declare-fun m!8253130 () Bool)

(assert (=> d!2351989 m!8253130))

(declare-fun m!8253132 () Bool)

(assert (=> d!2351989 m!8253132))

(declare-fun m!8253134 () Bool)

(assert (=> d!2351989 m!8253134))

(declare-fun m!8253136 () Bool)

(assert (=> b!7839981 m!8253136))

(assert (=> b!7839895 d!2351989))

(declare-fun d!2351991 () Bool)

(declare-fun res!3118167 () Bool)

(declare-fun e!4635522 () Bool)

(assert (=> d!2351991 (=> res!3118167 e!4635522)))

(assert (=> d!2351991 (= res!3118167 ((_ is ElementMatch!21019) r2!3226))))

(assert (=> d!2351991 (= (validRegex!11433 r2!3226) e!4635522)))

(declare-fun b!7840002 () Bool)

(declare-fun e!4635525 () Bool)

(declare-fun call!726640 () Bool)

(assert (=> b!7840002 (= e!4635525 call!726640)))

(declare-fun b!7840003 () Bool)

(declare-fun e!4635521 () Bool)

(declare-fun call!726641 () Bool)

(assert (=> b!7840003 (= e!4635521 call!726641)))

(declare-fun b!7840004 () Bool)

(declare-fun e!4635526 () Bool)

(assert (=> b!7840004 (= e!4635522 e!4635526)))

(declare-fun c!1441449 () Bool)

(assert (=> b!7840004 (= c!1441449 ((_ is Star!21019) r2!3226))))

(declare-fun b!7840005 () Bool)

(assert (=> b!7840005 (= e!4635526 e!4635521)))

(declare-fun res!3118165 () Bool)

(assert (=> b!7840005 (= res!3118165 (not (nullable!9312 (reg!21348 r2!3226))))))

(assert (=> b!7840005 (=> (not res!3118165) (not e!4635521))))

(declare-fun bm!726635 () Bool)

(assert (=> bm!726635 (= call!726640 call!726641)))

(declare-fun c!1441450 () Bool)

(declare-fun bm!726636 () Bool)

(assert (=> bm!726636 (= call!726641 (validRegex!11433 (ite c!1441449 (reg!21348 r2!3226) (ite c!1441450 (regTwo!42551 r2!3226) (regTwo!42550 r2!3226)))))))

(declare-fun b!7840006 () Bool)

(declare-fun res!3118169 () Bool)

(declare-fun e!4635523 () Bool)

(assert (=> b!7840006 (=> res!3118169 e!4635523)))

(assert (=> b!7840006 (= res!3118169 (not ((_ is Concat!29864) r2!3226)))))

(declare-fun e!4635527 () Bool)

(assert (=> b!7840006 (= e!4635527 e!4635523)))

(declare-fun bm!726637 () Bool)

(declare-fun call!726642 () Bool)

(assert (=> bm!726637 (= call!726642 (validRegex!11433 (ite c!1441450 (regOne!42551 r2!3226) (regOne!42550 r2!3226))))))

(declare-fun b!7840007 () Bool)

(assert (=> b!7840007 (= e!4635523 e!4635525)))

(declare-fun res!3118168 () Bool)

(assert (=> b!7840007 (=> (not res!3118168) (not e!4635525))))

(assert (=> b!7840007 (= res!3118168 call!726642)))

(declare-fun b!7840008 () Bool)

(declare-fun res!3118166 () Bool)

(declare-fun e!4635524 () Bool)

(assert (=> b!7840008 (=> (not res!3118166) (not e!4635524))))

(assert (=> b!7840008 (= res!3118166 call!726642)))

(assert (=> b!7840008 (= e!4635527 e!4635524)))

(declare-fun b!7840009 () Bool)

(assert (=> b!7840009 (= e!4635526 e!4635527)))

(assert (=> b!7840009 (= c!1441450 ((_ is Union!21019) r2!3226))))

(declare-fun b!7840010 () Bool)

(assert (=> b!7840010 (= e!4635524 call!726640)))

(assert (= (and d!2351991 (not res!3118167)) b!7840004))

(assert (= (and b!7840004 c!1441449) b!7840005))

(assert (= (and b!7840004 (not c!1441449)) b!7840009))

(assert (= (and b!7840005 res!3118165) b!7840003))

(assert (= (and b!7840009 c!1441450) b!7840008))

(assert (= (and b!7840009 (not c!1441450)) b!7840006))

(assert (= (and b!7840008 res!3118166) b!7840010))

(assert (= (and b!7840006 (not res!3118169)) b!7840007))

(assert (= (and b!7840007 res!3118168) b!7840002))

(assert (= (or b!7840008 b!7840007) bm!726637))

(assert (= (or b!7840010 b!7840002) bm!726635))

(assert (= (or b!7840003 bm!726635) bm!726636))

(declare-fun m!8253138 () Bool)

(assert (=> b!7840005 m!8253138))

(declare-fun m!8253140 () Bool)

(assert (=> bm!726636 m!8253140))

(declare-fun m!8253142 () Bool)

(assert (=> bm!726637 m!8253142))

(assert (=> b!7839894 d!2351991))

(declare-fun d!2351993 () Bool)

(declare-fun res!3118172 () Bool)

(declare-fun e!4635529 () Bool)

(assert (=> d!2351993 (=> res!3118172 e!4635529)))

(assert (=> d!2351993 (= res!3118172 ((_ is ElementMatch!21019) r1!3326))))

(assert (=> d!2351993 (= (validRegex!11433 r1!3326) e!4635529)))

(declare-fun b!7840011 () Bool)

(declare-fun e!4635532 () Bool)

(declare-fun call!726643 () Bool)

(assert (=> b!7840011 (= e!4635532 call!726643)))

(declare-fun b!7840012 () Bool)

(declare-fun e!4635528 () Bool)

(declare-fun call!726644 () Bool)

(assert (=> b!7840012 (= e!4635528 call!726644)))

(declare-fun b!7840013 () Bool)

(declare-fun e!4635533 () Bool)

(assert (=> b!7840013 (= e!4635529 e!4635533)))

(declare-fun c!1441451 () Bool)

(assert (=> b!7840013 (= c!1441451 ((_ is Star!21019) r1!3326))))

(declare-fun b!7840014 () Bool)

(assert (=> b!7840014 (= e!4635533 e!4635528)))

(declare-fun res!3118170 () Bool)

(assert (=> b!7840014 (= res!3118170 (not (nullable!9312 (reg!21348 r1!3326))))))

(assert (=> b!7840014 (=> (not res!3118170) (not e!4635528))))

(declare-fun bm!726638 () Bool)

(assert (=> bm!726638 (= call!726643 call!726644)))

(declare-fun bm!726639 () Bool)

(declare-fun c!1441452 () Bool)

(assert (=> bm!726639 (= call!726644 (validRegex!11433 (ite c!1441451 (reg!21348 r1!3326) (ite c!1441452 (regTwo!42551 r1!3326) (regTwo!42550 r1!3326)))))))

(declare-fun b!7840015 () Bool)

(declare-fun res!3118174 () Bool)

(declare-fun e!4635530 () Bool)

(assert (=> b!7840015 (=> res!3118174 e!4635530)))

(assert (=> b!7840015 (= res!3118174 (not ((_ is Concat!29864) r1!3326)))))

(declare-fun e!4635534 () Bool)

(assert (=> b!7840015 (= e!4635534 e!4635530)))

(declare-fun bm!726640 () Bool)

(declare-fun call!726645 () Bool)

(assert (=> bm!726640 (= call!726645 (validRegex!11433 (ite c!1441452 (regOne!42551 r1!3326) (regOne!42550 r1!3326))))))

(declare-fun b!7840016 () Bool)

(assert (=> b!7840016 (= e!4635530 e!4635532)))

(declare-fun res!3118173 () Bool)

(assert (=> b!7840016 (=> (not res!3118173) (not e!4635532))))

(assert (=> b!7840016 (= res!3118173 call!726645)))

(declare-fun b!7840017 () Bool)

(declare-fun res!3118171 () Bool)

(declare-fun e!4635531 () Bool)

(assert (=> b!7840017 (=> (not res!3118171) (not e!4635531))))

(assert (=> b!7840017 (= res!3118171 call!726645)))

(assert (=> b!7840017 (= e!4635534 e!4635531)))

(declare-fun b!7840018 () Bool)

(assert (=> b!7840018 (= e!4635533 e!4635534)))

(assert (=> b!7840018 (= c!1441452 ((_ is Union!21019) r1!3326))))

(declare-fun b!7840019 () Bool)

(assert (=> b!7840019 (= e!4635531 call!726643)))

(assert (= (and d!2351993 (not res!3118172)) b!7840013))

(assert (= (and b!7840013 c!1441451) b!7840014))

(assert (= (and b!7840013 (not c!1441451)) b!7840018))

(assert (= (and b!7840014 res!3118170) b!7840012))

(assert (= (and b!7840018 c!1441452) b!7840017))

(assert (= (and b!7840018 (not c!1441452)) b!7840015))

(assert (= (and b!7840017 res!3118171) b!7840019))

(assert (= (and b!7840015 (not res!3118174)) b!7840016))

(assert (= (and b!7840016 res!3118173) b!7840011))

(assert (= (or b!7840017 b!7840016) bm!726640))

(assert (= (or b!7840019 b!7840011) bm!726638))

(assert (= (or b!7840012 bm!726638) bm!726639))

(declare-fun m!8253144 () Bool)

(assert (=> b!7840014 m!8253144))

(declare-fun m!8253146 () Bool)

(assert (=> bm!726639 m!8253146))

(declare-fun m!8253148 () Bool)

(assert (=> bm!726640 m!8253148))

(assert (=> start!742558 d!2351993))

(declare-fun d!2351995 () Bool)

(declare-fun e!4635537 () Bool)

(assert (=> d!2351995 e!4635537))

(declare-fun c!1441455 () Bool)

(assert (=> d!2351995 (= c!1441455 ((_ is EmptyExpr!21019) r2!3226))))

(declare-fun lt!2678393 () Bool)

(declare-fun e!4635536 () Bool)

(assert (=> d!2351995 (= lt!2678393 e!4635536)))

(declare-fun c!1441453 () Bool)

(assert (=> d!2351995 (= c!1441453 (isEmpty!42302 (_2!38317 lt!2678381)))))

(assert (=> d!2351995 (validRegex!11433 r2!3226)))

(assert (=> d!2351995 (= (matchR!10473 r2!3226 (_2!38317 lt!2678381)) lt!2678393)))

(declare-fun bm!726641 () Bool)

(declare-fun call!726646 () Bool)

(assert (=> bm!726641 (= call!726646 (isEmpty!42302 (_2!38317 lt!2678381)))))

(declare-fun b!7840020 () Bool)

(assert (=> b!7840020 (= e!4635537 (= lt!2678393 call!726646))))

(declare-fun b!7840021 () Bool)

(declare-fun e!4635535 () Bool)

(assert (=> b!7840021 (= e!4635535 (= (head!15999 (_2!38317 lt!2678381)) (c!1441428 r2!3226)))))

(declare-fun b!7840022 () Bool)

(assert (=> b!7840022 (= e!4635536 (nullable!9312 r2!3226))))

(declare-fun b!7840023 () Bool)

(declare-fun res!3118177 () Bool)

(assert (=> b!7840023 (=> (not res!3118177) (not e!4635535))))

(assert (=> b!7840023 (= res!3118177 (not call!726646))))

(declare-fun b!7840024 () Bool)

(declare-fun res!3118175 () Bool)

(declare-fun e!4635541 () Bool)

(assert (=> b!7840024 (=> res!3118175 e!4635541)))

(assert (=> b!7840024 (= res!3118175 e!4635535)))

(declare-fun res!3118180 () Bool)

(assert (=> b!7840024 (=> (not res!3118180) (not e!4635535))))

(assert (=> b!7840024 (= res!3118180 lt!2678393)))

(declare-fun b!7840025 () Bool)

(assert (=> b!7840025 (= e!4635536 (matchR!10473 (derivativeStep!6269 r2!3226 (head!15999 (_2!38317 lt!2678381))) (tail!15540 (_2!38317 lt!2678381))))))

(declare-fun b!7840026 () Bool)

(declare-fun res!3118178 () Bool)

(assert (=> b!7840026 (=> (not res!3118178) (not e!4635535))))

(assert (=> b!7840026 (= res!3118178 (isEmpty!42302 (tail!15540 (_2!38317 lt!2678381))))))

(declare-fun b!7840027 () Bool)

(declare-fun e!4635538 () Bool)

(assert (=> b!7840027 (= e!4635538 (not lt!2678393))))

(declare-fun b!7840028 () Bool)

(declare-fun e!4635540 () Bool)

(declare-fun e!4635539 () Bool)

(assert (=> b!7840028 (= e!4635540 e!4635539)))

(declare-fun res!3118182 () Bool)

(assert (=> b!7840028 (=> res!3118182 e!4635539)))

(assert (=> b!7840028 (= res!3118182 call!726646)))

(declare-fun b!7840029 () Bool)

(declare-fun res!3118179 () Bool)

(assert (=> b!7840029 (=> res!3118179 e!4635541)))

(assert (=> b!7840029 (= res!3118179 (not ((_ is ElementMatch!21019) r2!3226)))))

(assert (=> b!7840029 (= e!4635538 e!4635541)))

(declare-fun b!7840030 () Bool)

(assert (=> b!7840030 (= e!4635541 e!4635540)))

(declare-fun res!3118181 () Bool)

(assert (=> b!7840030 (=> (not res!3118181) (not e!4635540))))

(assert (=> b!7840030 (= res!3118181 (not lt!2678393))))

(declare-fun b!7840031 () Bool)

(assert (=> b!7840031 (= e!4635539 (not (= (head!15999 (_2!38317 lt!2678381)) (c!1441428 r2!3226))))))

(declare-fun b!7840032 () Bool)

(declare-fun res!3118176 () Bool)

(assert (=> b!7840032 (=> res!3118176 e!4635539)))

(assert (=> b!7840032 (= res!3118176 (not (isEmpty!42302 (tail!15540 (_2!38317 lt!2678381)))))))

(declare-fun b!7840033 () Bool)

(assert (=> b!7840033 (= e!4635537 e!4635538)))

(declare-fun c!1441454 () Bool)

(assert (=> b!7840033 (= c!1441454 ((_ is EmptyLang!21019) r2!3226))))

(assert (= (and d!2351995 c!1441453) b!7840022))

(assert (= (and d!2351995 (not c!1441453)) b!7840025))

(assert (= (and d!2351995 c!1441455) b!7840020))

(assert (= (and d!2351995 (not c!1441455)) b!7840033))

(assert (= (and b!7840033 c!1441454) b!7840027))

(assert (= (and b!7840033 (not c!1441454)) b!7840029))

(assert (= (and b!7840029 (not res!3118179)) b!7840024))

(assert (= (and b!7840024 res!3118180) b!7840023))

(assert (= (and b!7840023 res!3118177) b!7840026))

(assert (= (and b!7840026 res!3118178) b!7840021))

(assert (= (and b!7840024 (not res!3118175)) b!7840030))

(assert (= (and b!7840030 res!3118181) b!7840028))

(assert (= (and b!7840028 (not res!3118182)) b!7840032))

(assert (= (and b!7840032 (not res!3118176)) b!7840031))

(assert (= (or b!7840020 b!7840023 b!7840028) bm!726641))

(declare-fun m!8253150 () Bool)

(assert (=> d!2351995 m!8253150))

(assert (=> d!2351995 m!8253070))

(declare-fun m!8253152 () Bool)

(assert (=> b!7840022 m!8253152))

(declare-fun m!8253154 () Bool)

(assert (=> b!7840026 m!8253154))

(assert (=> b!7840026 m!8253154))

(declare-fun m!8253156 () Bool)

(assert (=> b!7840026 m!8253156))

(declare-fun m!8253158 () Bool)

(assert (=> b!7840031 m!8253158))

(assert (=> bm!726641 m!8253150))

(assert (=> b!7840025 m!8253158))

(assert (=> b!7840025 m!8253158))

(declare-fun m!8253160 () Bool)

(assert (=> b!7840025 m!8253160))

(assert (=> b!7840025 m!8253154))

(assert (=> b!7840025 m!8253160))

(assert (=> b!7840025 m!8253154))

(declare-fun m!8253162 () Bool)

(assert (=> b!7840025 m!8253162))

(assert (=> b!7840032 m!8253154))

(assert (=> b!7840032 m!8253154))

(assert (=> b!7840032 m!8253156))

(assert (=> b!7840021 m!8253158))

(assert (=> b!7839898 d!2351995))

(declare-fun d!2351997 () Bool)

(declare-fun e!4635544 () Bool)

(assert (=> d!2351997 e!4635544))

(declare-fun c!1441458 () Bool)

(assert (=> d!2351997 (= c!1441458 ((_ is EmptyExpr!21019) r1!3326))))

(declare-fun lt!2678394 () Bool)

(declare-fun e!4635543 () Bool)

(assert (=> d!2351997 (= lt!2678394 e!4635543)))

(declare-fun c!1441456 () Bool)

(assert (=> d!2351997 (= c!1441456 (isEmpty!42302 (_1!38317 lt!2678381)))))

(assert (=> d!2351997 (validRegex!11433 r1!3326)))

(assert (=> d!2351997 (= (matchR!10473 r1!3326 (_1!38317 lt!2678381)) lt!2678394)))

(declare-fun bm!726642 () Bool)

(declare-fun call!726647 () Bool)

(assert (=> bm!726642 (= call!726647 (isEmpty!42302 (_1!38317 lt!2678381)))))

(declare-fun b!7840034 () Bool)

(assert (=> b!7840034 (= e!4635544 (= lt!2678394 call!726647))))

(declare-fun b!7840035 () Bool)

(declare-fun e!4635542 () Bool)

(assert (=> b!7840035 (= e!4635542 (= (head!15999 (_1!38317 lt!2678381)) (c!1441428 r1!3326)))))

(declare-fun b!7840036 () Bool)

(assert (=> b!7840036 (= e!4635543 (nullable!9312 r1!3326))))

(declare-fun b!7840037 () Bool)

(declare-fun res!3118185 () Bool)

(assert (=> b!7840037 (=> (not res!3118185) (not e!4635542))))

(assert (=> b!7840037 (= res!3118185 (not call!726647))))

(declare-fun b!7840038 () Bool)

(declare-fun res!3118183 () Bool)

(declare-fun e!4635548 () Bool)

(assert (=> b!7840038 (=> res!3118183 e!4635548)))

(assert (=> b!7840038 (= res!3118183 e!4635542)))

(declare-fun res!3118188 () Bool)

(assert (=> b!7840038 (=> (not res!3118188) (not e!4635542))))

(assert (=> b!7840038 (= res!3118188 lt!2678394)))

(declare-fun b!7840039 () Bool)

(assert (=> b!7840039 (= e!4635543 (matchR!10473 (derivativeStep!6269 r1!3326 (head!15999 (_1!38317 lt!2678381))) (tail!15540 (_1!38317 lt!2678381))))))

(declare-fun b!7840040 () Bool)

(declare-fun res!3118186 () Bool)

(assert (=> b!7840040 (=> (not res!3118186) (not e!4635542))))

(assert (=> b!7840040 (= res!3118186 (isEmpty!42302 (tail!15540 (_1!38317 lt!2678381))))))

(declare-fun b!7840041 () Bool)

(declare-fun e!4635545 () Bool)

(assert (=> b!7840041 (= e!4635545 (not lt!2678394))))

(declare-fun b!7840042 () Bool)

(declare-fun e!4635547 () Bool)

(declare-fun e!4635546 () Bool)

(assert (=> b!7840042 (= e!4635547 e!4635546)))

(declare-fun res!3118190 () Bool)

(assert (=> b!7840042 (=> res!3118190 e!4635546)))

(assert (=> b!7840042 (= res!3118190 call!726647)))

(declare-fun b!7840043 () Bool)

(declare-fun res!3118187 () Bool)

(assert (=> b!7840043 (=> res!3118187 e!4635548)))

(assert (=> b!7840043 (= res!3118187 (not ((_ is ElementMatch!21019) r1!3326)))))

(assert (=> b!7840043 (= e!4635545 e!4635548)))

(declare-fun b!7840044 () Bool)

(assert (=> b!7840044 (= e!4635548 e!4635547)))

(declare-fun res!3118189 () Bool)

(assert (=> b!7840044 (=> (not res!3118189) (not e!4635547))))

(assert (=> b!7840044 (= res!3118189 (not lt!2678394))))

(declare-fun b!7840045 () Bool)

(assert (=> b!7840045 (= e!4635546 (not (= (head!15999 (_1!38317 lt!2678381)) (c!1441428 r1!3326))))))

(declare-fun b!7840046 () Bool)

(declare-fun res!3118184 () Bool)

(assert (=> b!7840046 (=> res!3118184 e!4635546)))

(assert (=> b!7840046 (= res!3118184 (not (isEmpty!42302 (tail!15540 (_1!38317 lt!2678381)))))))

(declare-fun b!7840047 () Bool)

(assert (=> b!7840047 (= e!4635544 e!4635545)))

(declare-fun c!1441457 () Bool)

(assert (=> b!7840047 (= c!1441457 ((_ is EmptyLang!21019) r1!3326))))

(assert (= (and d!2351997 c!1441456) b!7840036))

(assert (= (and d!2351997 (not c!1441456)) b!7840039))

(assert (= (and d!2351997 c!1441458) b!7840034))

(assert (= (and d!2351997 (not c!1441458)) b!7840047))

(assert (= (and b!7840047 c!1441457) b!7840041))

(assert (= (and b!7840047 (not c!1441457)) b!7840043))

(assert (= (and b!7840043 (not res!3118187)) b!7840038))

(assert (= (and b!7840038 res!3118188) b!7840037))

(assert (= (and b!7840037 res!3118185) b!7840040))

(assert (= (and b!7840040 res!3118186) b!7840035))

(assert (= (and b!7840038 (not res!3118183)) b!7840044))

(assert (= (and b!7840044 res!3118189) b!7840042))

(assert (= (and b!7840042 (not res!3118190)) b!7840046))

(assert (= (and b!7840046 (not res!3118184)) b!7840045))

(assert (= (or b!7840034 b!7840037 b!7840042) bm!726642))

(declare-fun m!8253164 () Bool)

(assert (=> d!2351997 m!8253164))

(assert (=> d!2351997 m!8253064))

(assert (=> b!7840036 m!8253084))

(declare-fun m!8253166 () Bool)

(assert (=> b!7840040 m!8253166))

(assert (=> b!7840040 m!8253166))

(declare-fun m!8253168 () Bool)

(assert (=> b!7840040 m!8253168))

(declare-fun m!8253170 () Bool)

(assert (=> b!7840045 m!8253170))

(assert (=> bm!726642 m!8253164))

(assert (=> b!7840039 m!8253170))

(assert (=> b!7840039 m!8253170))

(declare-fun m!8253172 () Bool)

(assert (=> b!7840039 m!8253172))

(assert (=> b!7840039 m!8253166))

(assert (=> b!7840039 m!8253172))

(assert (=> b!7840039 m!8253166))

(declare-fun m!8253174 () Bool)

(assert (=> b!7840039 m!8253174))

(assert (=> b!7840046 m!8253166))

(assert (=> b!7840046 m!8253166))

(assert (=> b!7840046 m!8253168))

(assert (=> b!7840035 m!8253170))

(assert (=> b!7839908 d!2351997))

(declare-fun d!2351999 () Bool)

(assert (=> d!2351999 (= (get!26432 lt!2678380) (v!54942 lt!2678380))))

(assert (=> b!7839908 d!2351999))

(declare-fun d!2352001 () Bool)

(declare-fun e!4635557 () Bool)

(assert (=> d!2352001 e!4635557))

(declare-fun c!1441467 () Bool)

(assert (=> d!2352001 (= c!1441467 ((_ is EmptyExpr!21019) r2!3226))))

(declare-fun lt!2678397 () Bool)

(declare-fun e!4635556 () Bool)

(assert (=> d!2352001 (= lt!2678397 e!4635556)))

(declare-fun c!1441465 () Bool)

(assert (=> d!2352001 (= c!1441465 (isEmpty!42302 s2!2463))))

(assert (=> d!2352001 (validRegex!11433 r2!3226)))

(assert (=> d!2352001 (= (matchR!10473 r2!3226 s2!2463) lt!2678397)))

(declare-fun bm!726643 () Bool)

(declare-fun call!726648 () Bool)

(assert (=> bm!726643 (= call!726648 (isEmpty!42302 s2!2463))))

(declare-fun b!7840060 () Bool)

(assert (=> b!7840060 (= e!4635557 (= lt!2678397 call!726648))))

(declare-fun b!7840061 () Bool)

(declare-fun e!4635555 () Bool)

(assert (=> b!7840061 (= e!4635555 (= (head!15999 s2!2463) (c!1441428 r2!3226)))))

(declare-fun b!7840062 () Bool)

(assert (=> b!7840062 (= e!4635556 (nullable!9312 r2!3226))))

(declare-fun b!7840063 () Bool)

(declare-fun res!3118193 () Bool)

(assert (=> b!7840063 (=> (not res!3118193) (not e!4635555))))

(assert (=> b!7840063 (= res!3118193 (not call!726648))))

(declare-fun b!7840064 () Bool)

(declare-fun res!3118191 () Bool)

(declare-fun e!4635561 () Bool)

(assert (=> b!7840064 (=> res!3118191 e!4635561)))

(assert (=> b!7840064 (= res!3118191 e!4635555)))

(declare-fun res!3118196 () Bool)

(assert (=> b!7840064 (=> (not res!3118196) (not e!4635555))))

(assert (=> b!7840064 (= res!3118196 lt!2678397)))

(declare-fun b!7840065 () Bool)

(assert (=> b!7840065 (= e!4635556 (matchR!10473 (derivativeStep!6269 r2!3226 (head!15999 s2!2463)) (tail!15540 s2!2463)))))

(declare-fun b!7840066 () Bool)

(declare-fun res!3118194 () Bool)

(assert (=> b!7840066 (=> (not res!3118194) (not e!4635555))))

(assert (=> b!7840066 (= res!3118194 (isEmpty!42302 (tail!15540 s2!2463)))))

(declare-fun b!7840067 () Bool)

(declare-fun e!4635558 () Bool)

(assert (=> b!7840067 (= e!4635558 (not lt!2678397))))

(declare-fun b!7840068 () Bool)

(declare-fun e!4635560 () Bool)

(declare-fun e!4635559 () Bool)

(assert (=> b!7840068 (= e!4635560 e!4635559)))

(declare-fun res!3118198 () Bool)

(assert (=> b!7840068 (=> res!3118198 e!4635559)))

(assert (=> b!7840068 (= res!3118198 call!726648)))

(declare-fun b!7840069 () Bool)

(declare-fun res!3118195 () Bool)

(assert (=> b!7840069 (=> res!3118195 e!4635561)))

(assert (=> b!7840069 (= res!3118195 (not ((_ is ElementMatch!21019) r2!3226)))))

(assert (=> b!7840069 (= e!4635558 e!4635561)))

(declare-fun b!7840070 () Bool)

(assert (=> b!7840070 (= e!4635561 e!4635560)))

(declare-fun res!3118197 () Bool)

(assert (=> b!7840070 (=> (not res!3118197) (not e!4635560))))

(assert (=> b!7840070 (= res!3118197 (not lt!2678397))))

(declare-fun b!7840071 () Bool)

(assert (=> b!7840071 (= e!4635559 (not (= (head!15999 s2!2463) (c!1441428 r2!3226))))))

(declare-fun b!7840072 () Bool)

(declare-fun res!3118192 () Bool)

(assert (=> b!7840072 (=> res!3118192 e!4635559)))

(assert (=> b!7840072 (= res!3118192 (not (isEmpty!42302 (tail!15540 s2!2463))))))

(declare-fun b!7840073 () Bool)

(assert (=> b!7840073 (= e!4635557 e!4635558)))

(declare-fun c!1441466 () Bool)

(assert (=> b!7840073 (= c!1441466 ((_ is EmptyLang!21019) r2!3226))))

(assert (= (and d!2352001 c!1441465) b!7840062))

(assert (= (and d!2352001 (not c!1441465)) b!7840065))

(assert (= (and d!2352001 c!1441467) b!7840060))

(assert (= (and d!2352001 (not c!1441467)) b!7840073))

(assert (= (and b!7840073 c!1441466) b!7840067))

(assert (= (and b!7840073 (not c!1441466)) b!7840069))

(assert (= (and b!7840069 (not res!3118195)) b!7840064))

(assert (= (and b!7840064 res!3118196) b!7840063))

(assert (= (and b!7840063 res!3118193) b!7840066))

(assert (= (and b!7840066 res!3118194) b!7840061))

(assert (= (and b!7840064 (not res!3118191)) b!7840070))

(assert (= (and b!7840070 res!3118197) b!7840068))

(assert (= (and b!7840068 (not res!3118198)) b!7840072))

(assert (= (and b!7840072 (not res!3118192)) b!7840071))

(assert (= (or b!7840060 b!7840063 b!7840068) bm!726643))

(declare-fun m!8253176 () Bool)

(assert (=> d!2352001 m!8253176))

(assert (=> d!2352001 m!8253070))

(assert (=> b!7840062 m!8253152))

(declare-fun m!8253178 () Bool)

(assert (=> b!7840066 m!8253178))

(assert (=> b!7840066 m!8253178))

(declare-fun m!8253180 () Bool)

(assert (=> b!7840066 m!8253180))

(declare-fun m!8253182 () Bool)

(assert (=> b!7840071 m!8253182))

(assert (=> bm!726643 m!8253176))

(assert (=> b!7840065 m!8253182))

(assert (=> b!7840065 m!8253182))

(declare-fun m!8253184 () Bool)

(assert (=> b!7840065 m!8253184))

(assert (=> b!7840065 m!8253178))

(assert (=> b!7840065 m!8253184))

(assert (=> b!7840065 m!8253178))

(declare-fun m!8253186 () Bool)

(assert (=> b!7840065 m!8253186))

(assert (=> b!7840072 m!8253178))

(assert (=> b!7840072 m!8253178))

(assert (=> b!7840072 m!8253180))

(assert (=> b!7840061 m!8253182))

(assert (=> b!7839913 d!2352001))

(declare-fun d!2352003 () Bool)

(declare-fun isEmpty!42304 (Option!17808) Bool)

(assert (=> d!2352003 (= (isDefined!14408 lt!2678380) (not (isEmpty!42304 lt!2678380)))))

(declare-fun bs!1966950 () Bool)

(assert (= bs!1966950 d!2352003))

(declare-fun m!8253188 () Bool)

(assert (=> bs!1966950 m!8253188))

(assert (=> b!7839897 d!2352003))

(declare-fun b!7840094 () Bool)

(declare-fun e!4635572 () Bool)

(declare-fun tp!2320238 () Bool)

(assert (=> b!7840094 (= e!4635572 (and tp_is_empty!52393 tp!2320238))))

(assert (=> b!7839912 (= tp!2320229 e!4635572)))

(assert (= (and b!7839912 ((_ is Cons!73732) (t!388591 s2!2463))) b!7840094))

(declare-fun b!7840095 () Bool)

(declare-fun e!4635573 () Bool)

(declare-fun tp!2320239 () Bool)

(assert (=> b!7840095 (= e!4635573 (and tp_is_empty!52393 tp!2320239))))

(assert (=> b!7839896 (= tp!2320230 e!4635573)))

(assert (= (and b!7839896 ((_ is Cons!73732) (t!388591 s1!2717))) b!7840095))

(declare-fun b!7840108 () Bool)

(declare-fun e!4635576 () Bool)

(declare-fun tp!2320253 () Bool)

(assert (=> b!7840108 (= e!4635576 tp!2320253)))

(declare-fun b!7840106 () Bool)

(assert (=> b!7840106 (= e!4635576 tp_is_empty!52393)))

(assert (=> b!7839901 (= tp!2320235 e!4635576)))

(declare-fun b!7840109 () Bool)

(declare-fun tp!2320252 () Bool)

(declare-fun tp!2320254 () Bool)

(assert (=> b!7840109 (= e!4635576 (and tp!2320252 tp!2320254))))

(declare-fun b!7840107 () Bool)

(declare-fun tp!2320250 () Bool)

(declare-fun tp!2320251 () Bool)

(assert (=> b!7840107 (= e!4635576 (and tp!2320250 tp!2320251))))

(assert (= (and b!7839901 ((_ is ElementMatch!21019) (regOne!42550 r1!3326))) b!7840106))

(assert (= (and b!7839901 ((_ is Concat!29864) (regOne!42550 r1!3326))) b!7840107))

(assert (= (and b!7839901 ((_ is Star!21019) (regOne!42550 r1!3326))) b!7840108))

(assert (= (and b!7839901 ((_ is Union!21019) (regOne!42550 r1!3326))) b!7840109))

(declare-fun b!7840112 () Bool)

(declare-fun e!4635577 () Bool)

(declare-fun tp!2320258 () Bool)

(assert (=> b!7840112 (= e!4635577 tp!2320258)))

(declare-fun b!7840110 () Bool)

(assert (=> b!7840110 (= e!4635577 tp_is_empty!52393)))

(assert (=> b!7839901 (= tp!2320223 e!4635577)))

(declare-fun b!7840113 () Bool)

(declare-fun tp!2320257 () Bool)

(declare-fun tp!2320259 () Bool)

(assert (=> b!7840113 (= e!4635577 (and tp!2320257 tp!2320259))))

(declare-fun b!7840111 () Bool)

(declare-fun tp!2320255 () Bool)

(declare-fun tp!2320256 () Bool)

(assert (=> b!7840111 (= e!4635577 (and tp!2320255 tp!2320256))))

(assert (= (and b!7839901 ((_ is ElementMatch!21019) (regTwo!42550 r1!3326))) b!7840110))

(assert (= (and b!7839901 ((_ is Concat!29864) (regTwo!42550 r1!3326))) b!7840111))

(assert (= (and b!7839901 ((_ is Star!21019) (regTwo!42550 r1!3326))) b!7840112))

(assert (= (and b!7839901 ((_ is Union!21019) (regTwo!42550 r1!3326))) b!7840113))

(declare-fun b!7840116 () Bool)

(declare-fun e!4635578 () Bool)

(declare-fun tp!2320263 () Bool)

(assert (=> b!7840116 (= e!4635578 tp!2320263)))

(declare-fun b!7840114 () Bool)

(assert (=> b!7840114 (= e!4635578 tp_is_empty!52393)))

(assert (=> b!7839911 (= tp!2320224 e!4635578)))

(declare-fun b!7840117 () Bool)

(declare-fun tp!2320262 () Bool)

(declare-fun tp!2320264 () Bool)

(assert (=> b!7840117 (= e!4635578 (and tp!2320262 tp!2320264))))

(declare-fun b!7840115 () Bool)

(declare-fun tp!2320260 () Bool)

(declare-fun tp!2320261 () Bool)

(assert (=> b!7840115 (= e!4635578 (and tp!2320260 tp!2320261))))

(assert (= (and b!7839911 ((_ is ElementMatch!21019) (regOne!42550 r2!3226))) b!7840114))

(assert (= (and b!7839911 ((_ is Concat!29864) (regOne!42550 r2!3226))) b!7840115))

(assert (= (and b!7839911 ((_ is Star!21019) (regOne!42550 r2!3226))) b!7840116))

(assert (= (and b!7839911 ((_ is Union!21019) (regOne!42550 r2!3226))) b!7840117))

(declare-fun b!7840120 () Bool)

(declare-fun e!4635579 () Bool)

(declare-fun tp!2320268 () Bool)

(assert (=> b!7840120 (= e!4635579 tp!2320268)))

(declare-fun b!7840118 () Bool)

(assert (=> b!7840118 (= e!4635579 tp_is_empty!52393)))

(assert (=> b!7839911 (= tp!2320233 e!4635579)))

(declare-fun b!7840121 () Bool)

(declare-fun tp!2320267 () Bool)

(declare-fun tp!2320269 () Bool)

(assert (=> b!7840121 (= e!4635579 (and tp!2320267 tp!2320269))))

(declare-fun b!7840119 () Bool)

(declare-fun tp!2320265 () Bool)

(declare-fun tp!2320266 () Bool)

(assert (=> b!7840119 (= e!4635579 (and tp!2320265 tp!2320266))))

(assert (= (and b!7839911 ((_ is ElementMatch!21019) (regTwo!42550 r2!3226))) b!7840118))

(assert (= (and b!7839911 ((_ is Concat!29864) (regTwo!42550 r2!3226))) b!7840119))

(assert (= (and b!7839911 ((_ is Star!21019) (regTwo!42550 r2!3226))) b!7840120))

(assert (= (and b!7839911 ((_ is Union!21019) (regTwo!42550 r2!3226))) b!7840121))

(declare-fun b!7840124 () Bool)

(declare-fun e!4635580 () Bool)

(declare-fun tp!2320273 () Bool)

(assert (=> b!7840124 (= e!4635580 tp!2320273)))

(declare-fun b!7840122 () Bool)

(assert (=> b!7840122 (= e!4635580 tp_is_empty!52393)))

(assert (=> b!7839900 (= tp!2320234 e!4635580)))

(declare-fun b!7840125 () Bool)

(declare-fun tp!2320272 () Bool)

(declare-fun tp!2320274 () Bool)

(assert (=> b!7840125 (= e!4635580 (and tp!2320272 tp!2320274))))

(declare-fun b!7840123 () Bool)

(declare-fun tp!2320270 () Bool)

(declare-fun tp!2320271 () Bool)

(assert (=> b!7840123 (= e!4635580 (and tp!2320270 tp!2320271))))

(assert (= (and b!7839900 ((_ is ElementMatch!21019) (regOne!42551 r1!3326))) b!7840122))

(assert (= (and b!7839900 ((_ is Concat!29864) (regOne!42551 r1!3326))) b!7840123))

(assert (= (and b!7839900 ((_ is Star!21019) (regOne!42551 r1!3326))) b!7840124))

(assert (= (and b!7839900 ((_ is Union!21019) (regOne!42551 r1!3326))) b!7840125))

(declare-fun b!7840128 () Bool)

(declare-fun e!4635581 () Bool)

(declare-fun tp!2320278 () Bool)

(assert (=> b!7840128 (= e!4635581 tp!2320278)))

(declare-fun b!7840126 () Bool)

(assert (=> b!7840126 (= e!4635581 tp_is_empty!52393)))

(assert (=> b!7839900 (= tp!2320227 e!4635581)))

(declare-fun b!7840129 () Bool)

(declare-fun tp!2320277 () Bool)

(declare-fun tp!2320279 () Bool)

(assert (=> b!7840129 (= e!4635581 (and tp!2320277 tp!2320279))))

(declare-fun b!7840127 () Bool)

(declare-fun tp!2320275 () Bool)

(declare-fun tp!2320276 () Bool)

(assert (=> b!7840127 (= e!4635581 (and tp!2320275 tp!2320276))))

(assert (= (and b!7839900 ((_ is ElementMatch!21019) (regTwo!42551 r1!3326))) b!7840126))

(assert (= (and b!7839900 ((_ is Concat!29864) (regTwo!42551 r1!3326))) b!7840127))

(assert (= (and b!7839900 ((_ is Star!21019) (regTwo!42551 r1!3326))) b!7840128))

(assert (= (and b!7839900 ((_ is Union!21019) (regTwo!42551 r1!3326))) b!7840129))

(declare-fun b!7840132 () Bool)

(declare-fun e!4635582 () Bool)

(declare-fun tp!2320283 () Bool)

(assert (=> b!7840132 (= e!4635582 tp!2320283)))

(declare-fun b!7840130 () Bool)

(assert (=> b!7840130 (= e!4635582 tp_is_empty!52393)))

(assert (=> b!7839910 (= tp!2320228 e!4635582)))

(declare-fun b!7840133 () Bool)

(declare-fun tp!2320282 () Bool)

(declare-fun tp!2320284 () Bool)

(assert (=> b!7840133 (= e!4635582 (and tp!2320282 tp!2320284))))

(declare-fun b!7840131 () Bool)

(declare-fun tp!2320280 () Bool)

(declare-fun tp!2320281 () Bool)

(assert (=> b!7840131 (= e!4635582 (and tp!2320280 tp!2320281))))

(assert (= (and b!7839910 ((_ is ElementMatch!21019) (reg!21348 r2!3226))) b!7840130))

(assert (= (and b!7839910 ((_ is Concat!29864) (reg!21348 r2!3226))) b!7840131))

(assert (= (and b!7839910 ((_ is Star!21019) (reg!21348 r2!3226))) b!7840132))

(assert (= (and b!7839910 ((_ is Union!21019) (reg!21348 r2!3226))) b!7840133))

(declare-fun b!7840136 () Bool)

(declare-fun e!4635583 () Bool)

(declare-fun tp!2320288 () Bool)

(assert (=> b!7840136 (= e!4635583 tp!2320288)))

(declare-fun b!7840134 () Bool)

(assert (=> b!7840134 (= e!4635583 tp_is_empty!52393)))

(assert (=> b!7839899 (= tp!2320232 e!4635583)))

(declare-fun b!7840137 () Bool)

(declare-fun tp!2320287 () Bool)

(declare-fun tp!2320289 () Bool)

(assert (=> b!7840137 (= e!4635583 (and tp!2320287 tp!2320289))))

(declare-fun b!7840135 () Bool)

(declare-fun tp!2320285 () Bool)

(declare-fun tp!2320286 () Bool)

(assert (=> b!7840135 (= e!4635583 (and tp!2320285 tp!2320286))))

(assert (= (and b!7839899 ((_ is ElementMatch!21019) (reg!21348 r1!3326))) b!7840134))

(assert (= (and b!7839899 ((_ is Concat!29864) (reg!21348 r1!3326))) b!7840135))

(assert (= (and b!7839899 ((_ is Star!21019) (reg!21348 r1!3326))) b!7840136))

(assert (= (and b!7839899 ((_ is Union!21019) (reg!21348 r1!3326))) b!7840137))

(declare-fun b!7840138 () Bool)

(declare-fun e!4635584 () Bool)

(declare-fun tp!2320290 () Bool)

(assert (=> b!7840138 (= e!4635584 (and tp_is_empty!52393 tp!2320290))))

(assert (=> b!7839904 (= tp!2320231 e!4635584)))

(assert (= (and b!7839904 ((_ is Cons!73732) (t!388591 s!10212))) b!7840138))

(declare-fun b!7840141 () Bool)

(declare-fun e!4635585 () Bool)

(declare-fun tp!2320294 () Bool)

(assert (=> b!7840141 (= e!4635585 tp!2320294)))

(declare-fun b!7840139 () Bool)

(assert (=> b!7840139 (= e!4635585 tp_is_empty!52393)))

(assert (=> b!7839909 (= tp!2320226 e!4635585)))

(declare-fun b!7840142 () Bool)

(declare-fun tp!2320293 () Bool)

(declare-fun tp!2320295 () Bool)

(assert (=> b!7840142 (= e!4635585 (and tp!2320293 tp!2320295))))

(declare-fun b!7840140 () Bool)

(declare-fun tp!2320291 () Bool)

(declare-fun tp!2320292 () Bool)

(assert (=> b!7840140 (= e!4635585 (and tp!2320291 tp!2320292))))

(assert (= (and b!7839909 ((_ is ElementMatch!21019) (regOne!42551 r2!3226))) b!7840139))

(assert (= (and b!7839909 ((_ is Concat!29864) (regOne!42551 r2!3226))) b!7840140))

(assert (= (and b!7839909 ((_ is Star!21019) (regOne!42551 r2!3226))) b!7840141))

(assert (= (and b!7839909 ((_ is Union!21019) (regOne!42551 r2!3226))) b!7840142))

(declare-fun b!7840145 () Bool)

(declare-fun e!4635586 () Bool)

(declare-fun tp!2320299 () Bool)

(assert (=> b!7840145 (= e!4635586 tp!2320299)))

(declare-fun b!7840143 () Bool)

(assert (=> b!7840143 (= e!4635586 tp_is_empty!52393)))

(assert (=> b!7839909 (= tp!2320225 e!4635586)))

(declare-fun b!7840146 () Bool)

(declare-fun tp!2320298 () Bool)

(declare-fun tp!2320300 () Bool)

(assert (=> b!7840146 (= e!4635586 (and tp!2320298 tp!2320300))))

(declare-fun b!7840144 () Bool)

(declare-fun tp!2320296 () Bool)

(declare-fun tp!2320297 () Bool)

(assert (=> b!7840144 (= e!4635586 (and tp!2320296 tp!2320297))))

(assert (= (and b!7839909 ((_ is ElementMatch!21019) (regTwo!42551 r2!3226))) b!7840143))

(assert (= (and b!7839909 ((_ is Concat!29864) (regTwo!42551 r2!3226))) b!7840144))

(assert (= (and b!7839909 ((_ is Star!21019) (regTwo!42551 r2!3226))) b!7840145))

(assert (= (and b!7839909 ((_ is Union!21019) (regTwo!42551 r2!3226))) b!7840146))

(check-sat (not b!7840127) (not b!7840146) (not b!7839961) (not b!7840124) (not bm!726637) (not b!7840132) (not b!7839952) (not b!7840071) (not b!7840026) (not b!7840005) (not b!7840094) (not b!7840032) (not b!7840035) (not d!2351981) (not bm!726636) (not b!7840065) (not b!7840120) (not b!7840108) (not bm!726641) (not b!7840113) (not b!7840031) (not b!7840111) (not b!7840144) (not b!7840123) (not b!7840109) (not b!7840137) (not d!2352003) (not b!7840040) (not b!7840062) (not bm!726643) (not b!7840095) (not b!7839962) (not b!7840133) (not b!7840115) (not b!7839982) (not d!2351985) (not b!7839977) (not b!7840145) (not bm!726628) (not b!7840072) (not b!7840131) (not b!7840136) (not b!7840025) (not bm!726639) (not d!2351997) (not b!7839955) (not b!7839951) (not b!7840045) (not b!7840021) (not bm!726642) (not b!7840036) (not b!7840138) (not b!7840140) (not b!7840046) (not b!7840141) (not d!2351989) (not b!7840119) (not b!7839981) (not d!2351995) (not b!7840112) (not b!7840125) (not d!2352001) tp_is_empty!52393 (not b!7840142) (not b!7840066) (not b!7840117) (not b!7840061) (not b!7840107) (not b!7840039) (not b!7840116) (not b!7839978) (not b!7840014) (not b!7840129) (not b!7840135) (not b!7839956) (not b!7840121) (not b!7840022) (not b!7840128) (not bm!726640))
(check-sat)
