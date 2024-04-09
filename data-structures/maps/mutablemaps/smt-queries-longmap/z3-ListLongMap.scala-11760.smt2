; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138036 () Bool)

(assert start!138036)

(declare-fun e!884144 () Bool)

(declare-fun newKey!123 () (_ BitVec 64))

(declare-datatypes ((B!2902 0))(
  ( (B!2903 (val!19813 Int)) )
))
(declare-datatypes ((tuple2!25958 0))(
  ( (tuple2!25959 (_1!12989 (_ BitVec 64)) (_2!12989 B!2902)) )
))
(declare-datatypes ((List!37094 0))(
  ( (Nil!37091) (Cons!37090 (h!38634 tuple2!25958) (t!52015 List!37094)) )
))
(declare-fun l!1251 () List!37094)

(declare-fun newValue!123 () B!2902)

(declare-fun b!1583857 () Bool)

(declare-fun isStrictlySorted!1156 (List!37094) Bool)

(declare-fun insertStrictlySorted!623 (List!37094 (_ BitVec 64) B!2902) List!37094)

(assert (=> b!1583857 (= e!884144 (not (isStrictlySorted!1156 (insertStrictlySorted!623 l!1251 newKey!123 newValue!123))))))

(declare-fun b!1583855 () Bool)

(declare-fun res!1081959 () Bool)

(assert (=> b!1583855 (=> (not res!1081959) (not e!884144))))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!990 (List!37094 (_ BitVec 64)) Bool)

(assert (=> b!1583855 (= res!1081959 (not (containsKey!990 l!1251 otherKey!56)))))

(declare-fun b!1583856 () Bool)

(declare-fun res!1081960 () Bool)

(assert (=> b!1583856 (=> (not res!1081960) (not e!884144))))

(get-info :version)

(assert (=> b!1583856 (= res!1081960 (and (not (= otherKey!56 newKey!123)) (not ((_ is Cons!37090) l!1251))))))

(declare-fun res!1081961 () Bool)

(assert (=> start!138036 (=> (not res!1081961) (not e!884144))))

(assert (=> start!138036 (= res!1081961 (isStrictlySorted!1156 l!1251))))

(assert (=> start!138036 e!884144))

(declare-fun e!884145 () Bool)

(assert (=> start!138036 e!884145))

(assert (=> start!138036 true))

(declare-fun tp_is_empty!39435 () Bool)

(assert (=> start!138036 tp_is_empty!39435))

(declare-fun b!1583858 () Bool)

(declare-fun tp!115054 () Bool)

(assert (=> b!1583858 (= e!884145 (and tp_is_empty!39435 tp!115054))))

(assert (= (and start!138036 res!1081961) b!1583855))

(assert (= (and b!1583855 res!1081959) b!1583856))

(assert (= (and b!1583856 res!1081960) b!1583857))

(assert (= (and start!138036 ((_ is Cons!37090) l!1251)) b!1583858))

(declare-fun m!1453483 () Bool)

(assert (=> b!1583857 m!1453483))

(assert (=> b!1583857 m!1453483))

(declare-fun m!1453485 () Bool)

(assert (=> b!1583857 m!1453485))

(declare-fun m!1453487 () Bool)

(assert (=> b!1583855 m!1453487))

(declare-fun m!1453489 () Bool)

(assert (=> start!138036 m!1453489))

(check-sat (not b!1583855) tp_is_empty!39435 (not start!138036) (not b!1583857) (not b!1583858))
(check-sat)
(get-model)

(declare-fun d!167281 () Bool)

(declare-fun res!1081985 () Bool)

(declare-fun e!884166 () Bool)

(assert (=> d!167281 (=> res!1081985 e!884166)))

(assert (=> d!167281 (= res!1081985 (and ((_ is Cons!37090) l!1251) (= (_1!12989 (h!38634 l!1251)) otherKey!56)))))

(assert (=> d!167281 (= (containsKey!990 l!1251 otherKey!56) e!884166)))

(declare-fun b!1583885 () Bool)

(declare-fun e!884167 () Bool)

(assert (=> b!1583885 (= e!884166 e!884167)))

(declare-fun res!1081986 () Bool)

(assert (=> b!1583885 (=> (not res!1081986) (not e!884167))))

(assert (=> b!1583885 (= res!1081986 (and (or (not ((_ is Cons!37090) l!1251)) (bvsle (_1!12989 (h!38634 l!1251)) otherKey!56)) ((_ is Cons!37090) l!1251) (bvslt (_1!12989 (h!38634 l!1251)) otherKey!56)))))

(declare-fun b!1583886 () Bool)

(assert (=> b!1583886 (= e!884167 (containsKey!990 (t!52015 l!1251) otherKey!56))))

(assert (= (and d!167281 (not res!1081985)) b!1583885))

(assert (= (and b!1583885 res!1081986) b!1583886))

(declare-fun m!1453501 () Bool)

(assert (=> b!1583886 m!1453501))

(assert (=> b!1583855 d!167281))

(declare-fun d!167287 () Bool)

(declare-fun res!1082001 () Bool)

(declare-fun e!884182 () Bool)

(assert (=> d!167287 (=> res!1082001 e!884182)))

(assert (=> d!167287 (= res!1082001 (or ((_ is Nil!37091) (insertStrictlySorted!623 l!1251 newKey!123 newValue!123)) ((_ is Nil!37091) (t!52015 (insertStrictlySorted!623 l!1251 newKey!123 newValue!123)))))))

(assert (=> d!167287 (= (isStrictlySorted!1156 (insertStrictlySorted!623 l!1251 newKey!123 newValue!123)) e!884182)))

(declare-fun b!1583901 () Bool)

(declare-fun e!884183 () Bool)

(assert (=> b!1583901 (= e!884182 e!884183)))

(declare-fun res!1082002 () Bool)

(assert (=> b!1583901 (=> (not res!1082002) (not e!884183))))

(assert (=> b!1583901 (= res!1082002 (bvslt (_1!12989 (h!38634 (insertStrictlySorted!623 l!1251 newKey!123 newValue!123))) (_1!12989 (h!38634 (t!52015 (insertStrictlySorted!623 l!1251 newKey!123 newValue!123))))))))

(declare-fun b!1583902 () Bool)

(assert (=> b!1583902 (= e!884183 (isStrictlySorted!1156 (t!52015 (insertStrictlySorted!623 l!1251 newKey!123 newValue!123))))))

(assert (= (and d!167287 (not res!1082001)) b!1583901))

(assert (= (and b!1583901 res!1082002) b!1583902))

(declare-fun m!1453509 () Bool)

(assert (=> b!1583902 m!1453509))

(assert (=> b!1583857 d!167287))

(declare-fun bm!72534 () Bool)

(declare-fun call!72539 () List!37094)

(declare-fun call!72537 () List!37094)

(assert (=> bm!72534 (= call!72539 call!72537)))

(declare-fun d!167295 () Bool)

(declare-fun e!884226 () Bool)

(assert (=> d!167295 e!884226))

(declare-fun res!1082020 () Bool)

(assert (=> d!167295 (=> (not res!1082020) (not e!884226))))

(declare-fun lt!677158 () List!37094)

(assert (=> d!167295 (= res!1082020 (isStrictlySorted!1156 lt!677158))))

(declare-fun e!884227 () List!37094)

(assert (=> d!167295 (= lt!677158 e!884227)))

(declare-fun c!146774 () Bool)

(assert (=> d!167295 (= c!146774 (and ((_ is Cons!37090) l!1251) (bvslt (_1!12989 (h!38634 l!1251)) newKey!123)))))

(assert (=> d!167295 (isStrictlySorted!1156 l!1251)))

(assert (=> d!167295 (= (insertStrictlySorted!623 l!1251 newKey!123 newValue!123) lt!677158)))

(declare-fun b!1583983 () Bool)

(declare-fun e!884224 () List!37094)

(assert (=> b!1583983 (= e!884227 e!884224)))

(declare-fun c!146773 () Bool)

(assert (=> b!1583983 (= c!146773 (and ((_ is Cons!37090) l!1251) (= (_1!12989 (h!38634 l!1251)) newKey!123)))))

(declare-fun b!1583984 () Bool)

(declare-fun e!884225 () List!37094)

(declare-fun c!146772 () Bool)

(assert (=> b!1583984 (= e!884225 (ite c!146773 (t!52015 l!1251) (ite c!146772 (Cons!37090 (h!38634 l!1251) (t!52015 l!1251)) Nil!37091)))))

(declare-fun b!1583985 () Bool)

(assert (=> b!1583985 (= e!884224 call!72537)))

(declare-fun b!1583986 () Bool)

(assert (=> b!1583986 (= e!884225 (insertStrictlySorted!623 (t!52015 l!1251) newKey!123 newValue!123))))

(declare-fun b!1583987 () Bool)

(declare-fun e!884228 () List!37094)

(assert (=> b!1583987 (= e!884228 call!72539)))

(declare-fun b!1583988 () Bool)

(declare-fun call!72538 () List!37094)

(assert (=> b!1583988 (= e!884227 call!72538)))

(declare-fun b!1583989 () Bool)

(assert (=> b!1583989 (= c!146772 (and ((_ is Cons!37090) l!1251) (bvsgt (_1!12989 (h!38634 l!1251)) newKey!123)))))

(assert (=> b!1583989 (= e!884224 e!884228)))

(declare-fun bm!72535 () Bool)

(assert (=> bm!72535 (= call!72537 call!72538)))

(declare-fun b!1583990 () Bool)

(declare-fun res!1082019 () Bool)

(assert (=> b!1583990 (=> (not res!1082019) (not e!884226))))

(assert (=> b!1583990 (= res!1082019 (containsKey!990 lt!677158 newKey!123))))

(declare-fun bm!72536 () Bool)

(declare-fun $colon$colon!1021 (List!37094 tuple2!25958) List!37094)

(assert (=> bm!72536 (= call!72538 ($colon$colon!1021 e!884225 (ite c!146774 (h!38634 l!1251) (tuple2!25959 newKey!123 newValue!123))))))

(declare-fun c!146775 () Bool)

(assert (=> bm!72536 (= c!146775 c!146774)))

(declare-fun b!1583991 () Bool)

(assert (=> b!1583991 (= e!884228 call!72539)))

(declare-fun b!1583992 () Bool)

(declare-fun contains!10541 (List!37094 tuple2!25958) Bool)

(assert (=> b!1583992 (= e!884226 (contains!10541 lt!677158 (tuple2!25959 newKey!123 newValue!123)))))

(assert (= (and d!167295 c!146774) b!1583988))

(assert (= (and d!167295 (not c!146774)) b!1583983))

(assert (= (and b!1583983 c!146773) b!1583985))

(assert (= (and b!1583983 (not c!146773)) b!1583989))

(assert (= (and b!1583989 c!146772) b!1583991))

(assert (= (and b!1583989 (not c!146772)) b!1583987))

(assert (= (or b!1583991 b!1583987) bm!72534))

(assert (= (or b!1583985 bm!72534) bm!72535))

(assert (= (or b!1583988 bm!72535) bm!72536))

(assert (= (and bm!72536 c!146775) b!1583986))

(assert (= (and bm!72536 (not c!146775)) b!1583984))

(assert (= (and d!167295 res!1082020) b!1583990))

(assert (= (and b!1583990 res!1082019) b!1583992))

(declare-fun m!1453531 () Bool)

(assert (=> b!1583992 m!1453531))

(declare-fun m!1453533 () Bool)

(assert (=> b!1583986 m!1453533))

(declare-fun m!1453535 () Bool)

(assert (=> d!167295 m!1453535))

(assert (=> d!167295 m!1453489))

(declare-fun m!1453537 () Bool)

(assert (=> bm!72536 m!1453537))

(declare-fun m!1453539 () Bool)

(assert (=> b!1583990 m!1453539))

(assert (=> b!1583857 d!167295))

(declare-fun d!167301 () Bool)

(declare-fun res!1082027 () Bool)

(declare-fun e!884235 () Bool)

(assert (=> d!167301 (=> res!1082027 e!884235)))

(assert (=> d!167301 (= res!1082027 (or ((_ is Nil!37091) l!1251) ((_ is Nil!37091) (t!52015 l!1251))))))

(assert (=> d!167301 (= (isStrictlySorted!1156 l!1251) e!884235)))

(declare-fun b!1583999 () Bool)

(declare-fun e!884236 () Bool)

(assert (=> b!1583999 (= e!884235 e!884236)))

(declare-fun res!1082028 () Bool)

(assert (=> b!1583999 (=> (not res!1082028) (not e!884236))))

(assert (=> b!1583999 (= res!1082028 (bvslt (_1!12989 (h!38634 l!1251)) (_1!12989 (h!38634 (t!52015 l!1251)))))))

(declare-fun b!1584000 () Bool)

(assert (=> b!1584000 (= e!884236 (isStrictlySorted!1156 (t!52015 l!1251)))))

(assert (= (and d!167301 (not res!1082027)) b!1583999))

(assert (= (and b!1583999 res!1082028) b!1584000))

(declare-fun m!1453543 () Bool)

(assert (=> b!1584000 m!1453543))

(assert (=> start!138036 d!167301))

(declare-fun b!1584010 () Bool)

(declare-fun e!884242 () Bool)

(declare-fun tp!115063 () Bool)

(assert (=> b!1584010 (= e!884242 (and tp_is_empty!39435 tp!115063))))

(assert (=> b!1583858 (= tp!115054 e!884242)))

(assert (= (and b!1583858 ((_ is Cons!37090) (t!52015 l!1251))) b!1584010))

(check-sat (not b!1583992) (not b!1583986) (not b!1584010) (not bm!72536) (not d!167295) (not b!1584000) (not b!1583886) (not b!1583902) (not b!1583990) tp_is_empty!39435)
(check-sat)
