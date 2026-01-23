; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73714 () Bool)

(assert start!73714)

(declare-fun b!823980 () Bool)

(declare-fun res!379901 () Bool)

(declare-fun e!544052 () Bool)

(assert (=> b!823980 (=> (not res!379901) (not e!544052))))

(declare-datatypes ((C!4676 0))(
  ( (C!4677 (val!2586 Int)) )
))
(declare-datatypes ((Regex!2053 0))(
  ( (ElementMatch!2053 (c!133646 C!4676)) (Concat!3784 (regOne!4618 Regex!2053) (regTwo!4618 Regex!2053)) (EmptyExpr!2053) (Star!2053 (reg!2382 Regex!2053)) (EmptyLang!2053) (Union!2053 (regOne!4619 Regex!2053) (regTwo!4619 Regex!2053)) )
))
(declare-fun r!27177 () Regex!2053)

(get-info :version)

(assert (=> b!823980 (= res!379901 (and (not ((_ is EmptyExpr!2053) r!27177)) (not ((_ is EmptyLang!2053) r!27177)) (not ((_ is ElementMatch!2053) r!27177)) ((_ is Star!2053) r!27177)))))

(declare-fun b!823981 () Bool)

(declare-fun e!544053 () Bool)

(declare-fun tp_is_empty!3829 () Bool)

(assert (=> b!823981 (= e!544053 tp_is_empty!3829)))

(declare-fun b!823982 () Bool)

(declare-fun tp!257563 () Bool)

(declare-fun tp!257564 () Bool)

(assert (=> b!823982 (= e!544053 (and tp!257563 tp!257564))))

(declare-fun b!823983 () Bool)

(declare-fun tp!257562 () Bool)

(assert (=> b!823983 (= e!544053 tp!257562)))

(declare-fun b!823984 () Bool)

(declare-fun res!379903 () Bool)

(assert (=> b!823984 (=> (not res!379903) (not e!544052))))

(declare-fun c!13916 () C!4676)

(declare-datatypes ((List!8879 0))(
  ( (Nil!8863) (Cons!8863 (h!14264 C!4676) (t!93171 List!8879)) )
))
(declare-fun contains!1644 (List!8879 C!4676) Bool)

(declare-fun firstChars!24 (Regex!2053) List!8879)

(assert (=> b!823984 (= res!379903 (contains!1644 (firstChars!24 r!27177) c!13916))))

(declare-fun res!379902 () Bool)

(assert (=> start!73714 (=> (not res!379902) (not e!544052))))

(declare-fun validRegex!606 (Regex!2053) Bool)

(assert (=> start!73714 (= res!379902 (validRegex!606 r!27177))))

(assert (=> start!73714 e!544052))

(assert (=> start!73714 e!544053))

(assert (=> start!73714 tp_is_empty!3829))

(declare-fun b!823985 () Bool)

(declare-fun res!379900 () Bool)

(assert (=> b!823985 (=> (not res!379900) (not e!544052))))

(assert (=> b!823985 (= res!379900 (validRegex!606 (reg!2382 r!27177)))))

(declare-fun b!823986 () Bool)

(declare-fun tp!257560 () Bool)

(declare-fun tp!257561 () Bool)

(assert (=> b!823986 (= e!544053 (and tp!257560 tp!257561))))

(declare-fun b!823987 () Bool)

(assert (=> b!823987 (= e!544052 (not (contains!1644 (firstChars!24 (reg!2382 r!27177)) c!13916)))))

(assert (= (and start!73714 res!379902) b!823984))

(assert (= (and b!823984 res!379903) b!823980))

(assert (= (and b!823980 res!379901) b!823985))

(assert (= (and b!823985 res!379900) b!823987))

(assert (= (and start!73714 ((_ is ElementMatch!2053) r!27177)) b!823981))

(assert (= (and start!73714 ((_ is Concat!3784) r!27177)) b!823982))

(assert (= (and start!73714 ((_ is Star!2053) r!27177)) b!823983))

(assert (= (and start!73714 ((_ is Union!2053) r!27177)) b!823986))

(declare-fun m!1064089 () Bool)

(assert (=> b!823984 m!1064089))

(assert (=> b!823984 m!1064089))

(declare-fun m!1064091 () Bool)

(assert (=> b!823984 m!1064091))

(declare-fun m!1064093 () Bool)

(assert (=> start!73714 m!1064093))

(declare-fun m!1064095 () Bool)

(assert (=> b!823985 m!1064095))

(declare-fun m!1064097 () Bool)

(assert (=> b!823987 m!1064097))

(assert (=> b!823987 m!1064097))

(declare-fun m!1064099 () Bool)

(assert (=> b!823987 m!1064099))

(check-sat (not b!823983) (not b!823987) (not b!823986) tp_is_empty!3829 (not b!823985) (not start!73714) (not b!823984) (not b!823982))
(check-sat)
(get-model)

(declare-fun d!259106 () Bool)

(declare-fun lt!317422 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1291 (List!8879) (InoxSet C!4676))

(assert (=> d!259106 (= lt!317422 (select (content!1291 (firstChars!24 r!27177)) c!13916))))

(declare-fun e!544062 () Bool)

(assert (=> d!259106 (= lt!317422 e!544062)))

(declare-fun res!379912 () Bool)

(assert (=> d!259106 (=> (not res!379912) (not e!544062))))

(assert (=> d!259106 (= res!379912 ((_ is Cons!8863) (firstChars!24 r!27177)))))

(assert (=> d!259106 (= (contains!1644 (firstChars!24 r!27177) c!13916) lt!317422)))

(declare-fun b!823996 () Bool)

(declare-fun e!544063 () Bool)

(assert (=> b!823996 (= e!544062 e!544063)))

(declare-fun res!379913 () Bool)

(assert (=> b!823996 (=> res!379913 e!544063)))

(assert (=> b!823996 (= res!379913 (= (h!14264 (firstChars!24 r!27177)) c!13916))))

(declare-fun b!823997 () Bool)

(assert (=> b!823997 (= e!544063 (contains!1644 (t!93171 (firstChars!24 r!27177)) c!13916))))

(assert (= (and d!259106 res!379912) b!823996))

(assert (= (and b!823996 (not res!379913)) b!823997))

(assert (=> d!259106 m!1064089))

(declare-fun m!1064101 () Bool)

(assert (=> d!259106 m!1064101))

(declare-fun m!1064103 () Bool)

(assert (=> d!259106 m!1064103))

(declare-fun m!1064105 () Bool)

(assert (=> b!823997 m!1064105))

(assert (=> b!823984 d!259106))

(declare-fun b!824040 () Bool)

(declare-fun e!544086 () List!8879)

(declare-fun call!47449 () List!8879)

(assert (=> b!824040 (= e!544086 call!47449)))

(declare-fun b!824041 () Bool)

(declare-fun c!133669 () Bool)

(declare-fun nullable!503 (Regex!2053) Bool)

(assert (=> b!824041 (= c!133669 (nullable!503 (regOne!4618 r!27177)))))

(declare-fun e!544087 () List!8879)

(assert (=> b!824041 (= e!544087 e!544086)))

(declare-fun b!824042 () Bool)

(declare-fun e!544089 () List!8879)

(declare-fun call!47451 () List!8879)

(assert (=> b!824042 (= e!544089 call!47451)))

(declare-fun b!824043 () Bool)

(declare-fun c!133668 () Bool)

(assert (=> b!824043 (= c!133668 ((_ is Star!2053) r!27177))))

(declare-fun e!544088 () List!8879)

(assert (=> b!824043 (= e!544088 e!544089)))

(declare-fun bm!47444 () Bool)

(declare-fun call!47448 () List!8879)

(declare-fun c!133670 () Bool)

(assert (=> bm!47444 (= call!47448 (firstChars!24 (ite c!133670 (regOne!4619 r!27177) (regTwo!4618 r!27177))))))

(declare-fun bm!47445 () Bool)

(declare-fun call!47452 () List!8879)

(declare-fun call!47450 () List!8879)

(declare-fun ++!2279 (List!8879 List!8879) List!8879)

(assert (=> bm!47445 (= call!47450 (++!2279 (ite c!133670 call!47448 call!47449) (ite c!133670 call!47452 call!47448)))))

(declare-fun b!824044 () Bool)

(declare-fun e!544090 () List!8879)

(assert (=> b!824044 (= e!544090 e!544088)))

(declare-fun c!133667 () Bool)

(assert (=> b!824044 (= c!133667 ((_ is ElementMatch!2053) r!27177))))

(declare-fun b!824045 () Bool)

(assert (=> b!824045 (= e!544086 call!47450)))

(declare-fun b!824046 () Bool)

(assert (=> b!824046 (= e!544089 e!544087)))

(assert (=> b!824046 (= c!133670 ((_ is Union!2053) r!27177))))

(declare-fun b!824047 () Bool)

(assert (=> b!824047 (= e!544087 call!47450)))

(declare-fun b!824048 () Bool)

(assert (=> b!824048 (= e!544088 (Cons!8863 (c!133646 r!27177) Nil!8863))))

(declare-fun bm!47446 () Bool)

(assert (=> bm!47446 (= call!47452 call!47451)))

(declare-fun d!259110 () Bool)

(declare-fun c!133671 () Bool)

(assert (=> d!259110 (= c!133671 (or ((_ is EmptyExpr!2053) r!27177) ((_ is EmptyLang!2053) r!27177)))))

(assert (=> d!259110 (= (firstChars!24 r!27177) e!544090)))

(declare-fun bm!47443 () Bool)

(assert (=> bm!47443 (= call!47449 call!47452)))

(declare-fun bm!47447 () Bool)

(assert (=> bm!47447 (= call!47451 (firstChars!24 (ite c!133668 (reg!2382 r!27177) (ite c!133670 (regTwo!4619 r!27177) (regOne!4618 r!27177)))))))

(declare-fun b!824049 () Bool)

(assert (=> b!824049 (= e!544090 Nil!8863)))

(assert (= (and d!259110 c!133671) b!824049))

(assert (= (and d!259110 (not c!133671)) b!824044))

(assert (= (and b!824044 c!133667) b!824048))

(assert (= (and b!824044 (not c!133667)) b!824043))

(assert (= (and b!824043 c!133668) b!824042))

(assert (= (and b!824043 (not c!133668)) b!824046))

(assert (= (and b!824046 c!133670) b!824047))

(assert (= (and b!824046 (not c!133670)) b!824041))

(assert (= (and b!824041 c!133669) b!824045))

(assert (= (and b!824041 (not c!133669)) b!824040))

(assert (= (or b!824045 b!824040) bm!47443))

(assert (= (or b!824047 bm!47443) bm!47446))

(assert (= (or b!824047 b!824045) bm!47444))

(assert (= (or b!824047 b!824045) bm!47445))

(assert (= (or b!824042 bm!47446) bm!47447))

(declare-fun m!1064113 () Bool)

(assert (=> b!824041 m!1064113))

(declare-fun m!1064115 () Bool)

(assert (=> bm!47444 m!1064115))

(declare-fun m!1064117 () Bool)

(assert (=> bm!47445 m!1064117))

(declare-fun m!1064119 () Bool)

(assert (=> bm!47447 m!1064119))

(assert (=> b!823984 d!259110))

(declare-fun b!824090 () Bool)

(declare-fun res!379931 () Bool)

(declare-fun e!544120 () Bool)

(assert (=> b!824090 (=> (not res!379931) (not e!544120))))

(declare-fun call!47470 () Bool)

(assert (=> b!824090 (= res!379931 call!47470)))

(declare-fun e!544118 () Bool)

(assert (=> b!824090 (= e!544118 e!544120)))

(declare-fun b!824091 () Bool)

(declare-fun call!47471 () Bool)

(assert (=> b!824091 (= e!544120 call!47471)))

(declare-fun b!824092 () Bool)

(declare-fun e!544117 () Bool)

(declare-fun e!544122 () Bool)

(assert (=> b!824092 (= e!544117 e!544122)))

(declare-fun c!133687 () Bool)

(assert (=> b!824092 (= c!133687 ((_ is Star!2053) (reg!2382 r!27177)))))

(declare-fun d!259114 () Bool)

(declare-fun res!379929 () Bool)

(assert (=> d!259114 (=> res!379929 e!544117)))

(assert (=> d!259114 (= res!379929 ((_ is ElementMatch!2053) (reg!2382 r!27177)))))

(assert (=> d!259114 (= (validRegex!606 (reg!2382 r!27177)) e!544117)))

(declare-fun bm!47464 () Bool)

(declare-fun c!133686 () Bool)

(assert (=> bm!47464 (= call!47470 (validRegex!606 (ite c!133686 (regOne!4619 (reg!2382 r!27177)) (regTwo!4618 (reg!2382 r!27177)))))))

(declare-fun bm!47465 () Bool)

(declare-fun call!47469 () Bool)

(assert (=> bm!47465 (= call!47471 call!47469)))

(declare-fun b!824093 () Bool)

(declare-fun e!544121 () Bool)

(declare-fun e!544119 () Bool)

(assert (=> b!824093 (= e!544121 e!544119)))

(declare-fun res!379932 () Bool)

(assert (=> b!824093 (=> (not res!379932) (not e!544119))))

(assert (=> b!824093 (= res!379932 call!47471)))

(declare-fun b!824094 () Bool)

(declare-fun res!379928 () Bool)

(assert (=> b!824094 (=> res!379928 e!544121)))

(assert (=> b!824094 (= res!379928 (not ((_ is Concat!3784) (reg!2382 r!27177))))))

(assert (=> b!824094 (= e!544118 e!544121)))

(declare-fun b!824095 () Bool)

(declare-fun e!544123 () Bool)

(assert (=> b!824095 (= e!544122 e!544123)))

(declare-fun res!379930 () Bool)

(assert (=> b!824095 (= res!379930 (not (nullable!503 (reg!2382 (reg!2382 r!27177)))))))

(assert (=> b!824095 (=> (not res!379930) (not e!544123))))

(declare-fun b!824096 () Bool)

(assert (=> b!824096 (= e!544123 call!47469)))

(declare-fun b!824097 () Bool)

(assert (=> b!824097 (= e!544122 e!544118)))

(assert (=> b!824097 (= c!133686 ((_ is Union!2053) (reg!2382 r!27177)))))

(declare-fun b!824098 () Bool)

(assert (=> b!824098 (= e!544119 call!47470)))

(declare-fun bm!47466 () Bool)

(assert (=> bm!47466 (= call!47469 (validRegex!606 (ite c!133687 (reg!2382 (reg!2382 r!27177)) (ite c!133686 (regTwo!4619 (reg!2382 r!27177)) (regOne!4618 (reg!2382 r!27177))))))))

(assert (= (and d!259114 (not res!379929)) b!824092))

(assert (= (and b!824092 c!133687) b!824095))

(assert (= (and b!824092 (not c!133687)) b!824097))

(assert (= (and b!824095 res!379930) b!824096))

(assert (= (and b!824097 c!133686) b!824090))

(assert (= (and b!824097 (not c!133686)) b!824094))

(assert (= (and b!824090 res!379931) b!824091))

(assert (= (and b!824094 (not res!379928)) b!824093))

(assert (= (and b!824093 res!379932) b!824098))

(assert (= (or b!824090 b!824098) bm!47464))

(assert (= (or b!824091 b!824093) bm!47465))

(assert (= (or b!824096 bm!47465) bm!47466))

(declare-fun m!1064143 () Bool)

(assert (=> bm!47464 m!1064143))

(declare-fun m!1064145 () Bool)

(assert (=> b!824095 m!1064145))

(declare-fun m!1064147 () Bool)

(assert (=> bm!47466 m!1064147))

(assert (=> b!823985 d!259114))

(declare-fun b!824101 () Bool)

(declare-fun res!379938 () Bool)

(declare-fun e!544129 () Bool)

(assert (=> b!824101 (=> (not res!379938) (not e!544129))))

(declare-fun call!47473 () Bool)

(assert (=> b!824101 (= res!379938 call!47473)))

(declare-fun e!544127 () Bool)

(assert (=> b!824101 (= e!544127 e!544129)))

(declare-fun b!824102 () Bool)

(declare-fun call!47474 () Bool)

(assert (=> b!824102 (= e!544129 call!47474)))

(declare-fun b!824103 () Bool)

(declare-fun e!544126 () Bool)

(declare-fun e!544131 () Bool)

(assert (=> b!824103 (= e!544126 e!544131)))

(declare-fun c!133689 () Bool)

(assert (=> b!824103 (= c!133689 ((_ is Star!2053) r!27177))))

(declare-fun d!259122 () Bool)

(declare-fun res!379936 () Bool)

(assert (=> d!259122 (=> res!379936 e!544126)))

(assert (=> d!259122 (= res!379936 ((_ is ElementMatch!2053) r!27177))))

(assert (=> d!259122 (= (validRegex!606 r!27177) e!544126)))

(declare-fun bm!47467 () Bool)

(declare-fun c!133688 () Bool)

(assert (=> bm!47467 (= call!47473 (validRegex!606 (ite c!133688 (regOne!4619 r!27177) (regTwo!4618 r!27177))))))

(declare-fun bm!47468 () Bool)

(declare-fun call!47472 () Bool)

(assert (=> bm!47468 (= call!47474 call!47472)))

(declare-fun b!824104 () Bool)

(declare-fun e!544130 () Bool)

(declare-fun e!544128 () Bool)

(assert (=> b!824104 (= e!544130 e!544128)))

(declare-fun res!379939 () Bool)

(assert (=> b!824104 (=> (not res!379939) (not e!544128))))

(assert (=> b!824104 (= res!379939 call!47474)))

(declare-fun b!824105 () Bool)

(declare-fun res!379935 () Bool)

(assert (=> b!824105 (=> res!379935 e!544130)))

(assert (=> b!824105 (= res!379935 (not ((_ is Concat!3784) r!27177)))))

(assert (=> b!824105 (= e!544127 e!544130)))

(declare-fun b!824106 () Bool)

(declare-fun e!544132 () Bool)

(assert (=> b!824106 (= e!544131 e!544132)))

(declare-fun res!379937 () Bool)

(assert (=> b!824106 (= res!379937 (not (nullable!503 (reg!2382 r!27177))))))

(assert (=> b!824106 (=> (not res!379937) (not e!544132))))

(declare-fun b!824107 () Bool)

(assert (=> b!824107 (= e!544132 call!47472)))

(declare-fun b!824108 () Bool)

(assert (=> b!824108 (= e!544131 e!544127)))

(assert (=> b!824108 (= c!133688 ((_ is Union!2053) r!27177))))

(declare-fun b!824109 () Bool)

(assert (=> b!824109 (= e!544128 call!47473)))

(declare-fun bm!47469 () Bool)

(assert (=> bm!47469 (= call!47472 (validRegex!606 (ite c!133689 (reg!2382 r!27177) (ite c!133688 (regTwo!4619 r!27177) (regOne!4618 r!27177)))))))

(assert (= (and d!259122 (not res!379936)) b!824103))

(assert (= (and b!824103 c!133689) b!824106))

(assert (= (and b!824103 (not c!133689)) b!824108))

(assert (= (and b!824106 res!379937) b!824107))

(assert (= (and b!824108 c!133688) b!824101))

(assert (= (and b!824108 (not c!133688)) b!824105))

(assert (= (and b!824101 res!379938) b!824102))

(assert (= (and b!824105 (not res!379935)) b!824104))

(assert (= (and b!824104 res!379939) b!824109))

(assert (= (or b!824101 b!824109) bm!47467))

(assert (= (or b!824102 b!824104) bm!47468))

(assert (= (or b!824107 bm!47468) bm!47469))

(declare-fun m!1064149 () Bool)

(assert (=> bm!47467 m!1064149))

(declare-fun m!1064151 () Bool)

(assert (=> b!824106 m!1064151))

(declare-fun m!1064153 () Bool)

(assert (=> bm!47469 m!1064153))

(assert (=> start!73714 d!259122))

(declare-fun d!259124 () Bool)

(declare-fun lt!317425 () Bool)

(assert (=> d!259124 (= lt!317425 (select (content!1291 (firstChars!24 (reg!2382 r!27177))) c!13916))))

(declare-fun e!544145 () Bool)

(assert (=> d!259124 (= lt!317425 e!544145)))

(declare-fun res!379948 () Bool)

(assert (=> d!259124 (=> (not res!379948) (not e!544145))))

(assert (=> d!259124 (= res!379948 ((_ is Cons!8863) (firstChars!24 (reg!2382 r!27177))))))

(assert (=> d!259124 (= (contains!1644 (firstChars!24 (reg!2382 r!27177)) c!13916) lt!317425)))

(declare-fun b!824126 () Bool)

(declare-fun e!544146 () Bool)

(assert (=> b!824126 (= e!544145 e!544146)))

(declare-fun res!379949 () Bool)

(assert (=> b!824126 (=> res!379949 e!544146)))

(assert (=> b!824126 (= res!379949 (= (h!14264 (firstChars!24 (reg!2382 r!27177))) c!13916))))

(declare-fun b!824127 () Bool)

(assert (=> b!824127 (= e!544146 (contains!1644 (t!93171 (firstChars!24 (reg!2382 r!27177))) c!13916))))

(assert (= (and d!259124 res!379948) b!824126))

(assert (= (and b!824126 (not res!379949)) b!824127))

(assert (=> d!259124 m!1064097))

(declare-fun m!1064155 () Bool)

(assert (=> d!259124 m!1064155))

(declare-fun m!1064157 () Bool)

(assert (=> d!259124 m!1064157))

(declare-fun m!1064159 () Bool)

(assert (=> b!824127 m!1064159))

(assert (=> b!823987 d!259124))

(declare-fun b!824128 () Bool)

(declare-fun e!544147 () List!8879)

(declare-fun call!47480 () List!8879)

(assert (=> b!824128 (= e!544147 call!47480)))

(declare-fun b!824129 () Bool)

(declare-fun c!133696 () Bool)

(assert (=> b!824129 (= c!133696 (nullable!503 (regOne!4618 (reg!2382 r!27177))))))

(declare-fun e!544148 () List!8879)

(assert (=> b!824129 (= e!544148 e!544147)))

(declare-fun b!824130 () Bool)

(declare-fun e!544150 () List!8879)

(declare-fun call!47482 () List!8879)

(assert (=> b!824130 (= e!544150 call!47482)))

(declare-fun b!824131 () Bool)

(declare-fun c!133695 () Bool)

(assert (=> b!824131 (= c!133695 ((_ is Star!2053) (reg!2382 r!27177)))))

(declare-fun e!544149 () List!8879)

(assert (=> b!824131 (= e!544149 e!544150)))

(declare-fun bm!47473 () Bool)

(declare-fun call!47479 () List!8879)

(declare-fun c!133697 () Bool)

(assert (=> bm!47473 (= call!47479 (firstChars!24 (ite c!133697 (regOne!4619 (reg!2382 r!27177)) (regTwo!4618 (reg!2382 r!27177)))))))

(declare-fun call!47481 () List!8879)

(declare-fun bm!47474 () Bool)

(declare-fun call!47483 () List!8879)

(assert (=> bm!47474 (= call!47481 (++!2279 (ite c!133697 call!47479 call!47480) (ite c!133697 call!47483 call!47479)))))

(declare-fun b!824132 () Bool)

(declare-fun e!544151 () List!8879)

(assert (=> b!824132 (= e!544151 e!544149)))

(declare-fun c!133694 () Bool)

(assert (=> b!824132 (= c!133694 ((_ is ElementMatch!2053) (reg!2382 r!27177)))))

(declare-fun b!824133 () Bool)

(assert (=> b!824133 (= e!544147 call!47481)))

(declare-fun b!824134 () Bool)

(assert (=> b!824134 (= e!544150 e!544148)))

(assert (=> b!824134 (= c!133697 ((_ is Union!2053) (reg!2382 r!27177)))))

(declare-fun b!824135 () Bool)

(assert (=> b!824135 (= e!544148 call!47481)))

(declare-fun b!824136 () Bool)

(assert (=> b!824136 (= e!544149 (Cons!8863 (c!133646 (reg!2382 r!27177)) Nil!8863))))

(declare-fun bm!47475 () Bool)

(assert (=> bm!47475 (= call!47483 call!47482)))

(declare-fun d!259126 () Bool)

(declare-fun c!133698 () Bool)

(assert (=> d!259126 (= c!133698 (or ((_ is EmptyExpr!2053) (reg!2382 r!27177)) ((_ is EmptyLang!2053) (reg!2382 r!27177))))))

(assert (=> d!259126 (= (firstChars!24 (reg!2382 r!27177)) e!544151)))

(declare-fun bm!47472 () Bool)

(assert (=> bm!47472 (= call!47480 call!47483)))

(declare-fun bm!47476 () Bool)

(assert (=> bm!47476 (= call!47482 (firstChars!24 (ite c!133695 (reg!2382 (reg!2382 r!27177)) (ite c!133697 (regTwo!4619 (reg!2382 r!27177)) (regOne!4618 (reg!2382 r!27177))))))))

(declare-fun b!824137 () Bool)

(assert (=> b!824137 (= e!544151 Nil!8863)))

(assert (= (and d!259126 c!133698) b!824137))

(assert (= (and d!259126 (not c!133698)) b!824132))

(assert (= (and b!824132 c!133694) b!824136))

(assert (= (and b!824132 (not c!133694)) b!824131))

(assert (= (and b!824131 c!133695) b!824130))

(assert (= (and b!824131 (not c!133695)) b!824134))

(assert (= (and b!824134 c!133697) b!824135))

(assert (= (and b!824134 (not c!133697)) b!824129))

(assert (= (and b!824129 c!133696) b!824133))

(assert (= (and b!824129 (not c!133696)) b!824128))

(assert (= (or b!824133 b!824128) bm!47472))

(assert (= (or b!824135 bm!47472) bm!47475))

(assert (= (or b!824135 b!824133) bm!47473))

(assert (= (or b!824135 b!824133) bm!47474))

(assert (= (or b!824130 bm!47475) bm!47476))

(declare-fun m!1064161 () Bool)

(assert (=> b!824129 m!1064161))

(declare-fun m!1064163 () Bool)

(assert (=> bm!47473 m!1064163))

(declare-fun m!1064165 () Bool)

(assert (=> bm!47474 m!1064165))

(declare-fun m!1064167 () Bool)

(assert (=> bm!47476 m!1064167))

(assert (=> b!823987 d!259126))

(declare-fun b!824151 () Bool)

(declare-fun e!544154 () Bool)

(declare-fun tp!257578 () Bool)

(declare-fun tp!257576 () Bool)

(assert (=> b!824151 (= e!544154 (and tp!257578 tp!257576))))

(declare-fun b!824149 () Bool)

(declare-fun tp!257577 () Bool)

(declare-fun tp!257575 () Bool)

(assert (=> b!824149 (= e!544154 (and tp!257577 tp!257575))))

(declare-fun b!824148 () Bool)

(assert (=> b!824148 (= e!544154 tp_is_empty!3829)))

(assert (=> b!823983 (= tp!257562 e!544154)))

(declare-fun b!824150 () Bool)

(declare-fun tp!257579 () Bool)

(assert (=> b!824150 (= e!544154 tp!257579)))

(assert (= (and b!823983 ((_ is ElementMatch!2053) (reg!2382 r!27177))) b!824148))

(assert (= (and b!823983 ((_ is Concat!3784) (reg!2382 r!27177))) b!824149))

(assert (= (and b!823983 ((_ is Star!2053) (reg!2382 r!27177))) b!824150))

(assert (= (and b!823983 ((_ is Union!2053) (reg!2382 r!27177))) b!824151))

(declare-fun b!824155 () Bool)

(declare-fun e!544155 () Bool)

(declare-fun tp!257583 () Bool)

(declare-fun tp!257581 () Bool)

(assert (=> b!824155 (= e!544155 (and tp!257583 tp!257581))))

(declare-fun b!824153 () Bool)

(declare-fun tp!257582 () Bool)

(declare-fun tp!257580 () Bool)

(assert (=> b!824153 (= e!544155 (and tp!257582 tp!257580))))

(declare-fun b!824152 () Bool)

(assert (=> b!824152 (= e!544155 tp_is_empty!3829)))

(assert (=> b!823982 (= tp!257563 e!544155)))

(declare-fun b!824154 () Bool)

(declare-fun tp!257584 () Bool)

(assert (=> b!824154 (= e!544155 tp!257584)))

(assert (= (and b!823982 ((_ is ElementMatch!2053) (regOne!4618 r!27177))) b!824152))

(assert (= (and b!823982 ((_ is Concat!3784) (regOne!4618 r!27177))) b!824153))

(assert (= (and b!823982 ((_ is Star!2053) (regOne!4618 r!27177))) b!824154))

(assert (= (and b!823982 ((_ is Union!2053) (regOne!4618 r!27177))) b!824155))

(declare-fun b!824159 () Bool)

(declare-fun e!544156 () Bool)

(declare-fun tp!257588 () Bool)

(declare-fun tp!257586 () Bool)

(assert (=> b!824159 (= e!544156 (and tp!257588 tp!257586))))

(declare-fun b!824157 () Bool)

(declare-fun tp!257587 () Bool)

(declare-fun tp!257585 () Bool)

(assert (=> b!824157 (= e!544156 (and tp!257587 tp!257585))))

(declare-fun b!824156 () Bool)

(assert (=> b!824156 (= e!544156 tp_is_empty!3829)))

(assert (=> b!823982 (= tp!257564 e!544156)))

(declare-fun b!824158 () Bool)

(declare-fun tp!257589 () Bool)

(assert (=> b!824158 (= e!544156 tp!257589)))

(assert (= (and b!823982 ((_ is ElementMatch!2053) (regTwo!4618 r!27177))) b!824156))

(assert (= (and b!823982 ((_ is Concat!3784) (regTwo!4618 r!27177))) b!824157))

(assert (= (and b!823982 ((_ is Star!2053) (regTwo!4618 r!27177))) b!824158))

(assert (= (and b!823982 ((_ is Union!2053) (regTwo!4618 r!27177))) b!824159))

(declare-fun b!824163 () Bool)

(declare-fun e!544157 () Bool)

(declare-fun tp!257593 () Bool)

(declare-fun tp!257591 () Bool)

(assert (=> b!824163 (= e!544157 (and tp!257593 tp!257591))))

(declare-fun b!824161 () Bool)

(declare-fun tp!257592 () Bool)

(declare-fun tp!257590 () Bool)

(assert (=> b!824161 (= e!544157 (and tp!257592 tp!257590))))

(declare-fun b!824160 () Bool)

(assert (=> b!824160 (= e!544157 tp_is_empty!3829)))

(assert (=> b!823986 (= tp!257560 e!544157)))

(declare-fun b!824162 () Bool)

(declare-fun tp!257594 () Bool)

(assert (=> b!824162 (= e!544157 tp!257594)))

(assert (= (and b!823986 ((_ is ElementMatch!2053) (regOne!4619 r!27177))) b!824160))

(assert (= (and b!823986 ((_ is Concat!3784) (regOne!4619 r!27177))) b!824161))

(assert (= (and b!823986 ((_ is Star!2053) (regOne!4619 r!27177))) b!824162))

(assert (= (and b!823986 ((_ is Union!2053) (regOne!4619 r!27177))) b!824163))

(declare-fun b!824167 () Bool)

(declare-fun e!544158 () Bool)

(declare-fun tp!257598 () Bool)

(declare-fun tp!257596 () Bool)

(assert (=> b!824167 (= e!544158 (and tp!257598 tp!257596))))

(declare-fun b!824165 () Bool)

(declare-fun tp!257597 () Bool)

(declare-fun tp!257595 () Bool)

(assert (=> b!824165 (= e!544158 (and tp!257597 tp!257595))))

(declare-fun b!824164 () Bool)

(assert (=> b!824164 (= e!544158 tp_is_empty!3829)))

(assert (=> b!823986 (= tp!257561 e!544158)))

(declare-fun b!824166 () Bool)

(declare-fun tp!257599 () Bool)

(assert (=> b!824166 (= e!544158 tp!257599)))

(assert (= (and b!823986 ((_ is ElementMatch!2053) (regTwo!4619 r!27177))) b!824164))

(assert (= (and b!823986 ((_ is Concat!3784) (regTwo!4619 r!27177))) b!824165))

(assert (= (and b!823986 ((_ is Star!2053) (regTwo!4619 r!27177))) b!824166))

(assert (= (and b!823986 ((_ is Union!2053) (regTwo!4619 r!27177))) b!824167))

(check-sat (not bm!47469) (not b!824162) (not bm!47464) (not bm!47447) (not b!824149) (not b!824127) (not d!259106) (not b!824157) (not b!824129) (not bm!47473) (not bm!47476) (not b!824154) (not b!824158) (not b!824159) (not d!259124) (not bm!47445) (not b!824165) (not b!824161) (not b!824150) (not b!824155) (not b!824163) (not b!824041) (not b!824106) tp_is_empty!3829 (not b!824167) (not b!824095) (not bm!47467) (not bm!47466) (not bm!47474) (not b!823997) (not b!824151) (not b!824166) (not bm!47444) (not b!824153))
(check-sat)
