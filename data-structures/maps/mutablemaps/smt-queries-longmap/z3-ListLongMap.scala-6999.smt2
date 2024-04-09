; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88902 () Bool)

(assert start!88902)

(declare-fun b!1019955 () Bool)

(declare-fun e!574101 () Bool)

(declare-fun e!574100 () Bool)

(assert (=> b!1019955 (= e!574101 e!574100)))

(declare-fun res!683756 () Bool)

(assert (=> b!1019955 (=> (not res!683756) (not e!574100))))

(declare-datatypes ((B!1702 0))(
  ( (B!1703 (val!11935 Int)) )
))
(declare-datatypes ((tuple2!15506 0))(
  ( (tuple2!15507 (_1!7763 (_ BitVec 64)) (_2!7763 B!1702)) )
))
(declare-datatypes ((List!21737 0))(
  ( (Nil!21734) (Cons!21733 (h!22931 tuple2!15506) (t!30754 List!21737)) )
))
(declare-fun l!996 () List!21737)

(declare-fun key!261 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1019955 (= res!683756 (and (or (not ((_ is Cons!21733) l!996)) (bvsge (_1!7763 (h!22931 l!996)) key!261)) (or (not ((_ is Cons!21733) l!996)) (not (= (_1!7763 (h!22931 l!996)) key!261)))))))

(declare-fun value!172 () B!1702)

(declare-fun lt!449752 () List!21737)

(declare-fun insertStrictlySorted!366 (List!21737 (_ BitVec 64) B!1702) List!21737)

(assert (=> b!1019955 (= lt!449752 (insertStrictlySorted!366 l!996 key!261 value!172))))

(declare-fun b!1019954 () Bool)

(declare-fun res!683757 () Bool)

(assert (=> b!1019954 (=> (not res!683757) (not e!574101))))

(declare-fun containsKey!549 (List!21737 (_ BitVec 64)) Bool)

(assert (=> b!1019954 (= res!683757 (containsKey!549 l!996 key!261))))

(declare-fun b!1019956 () Bool)

(declare-fun length!51 (List!21737) Int)

(assert (=> b!1019956 (= e!574100 (not (= (length!51 lt!449752) (length!51 l!996))))))

(declare-fun res!683755 () Bool)

(assert (=> start!88902 (=> (not res!683755) (not e!574101))))

(declare-fun isStrictlySorted!684 (List!21737) Bool)

(assert (=> start!88902 (= res!683755 (isStrictlySorted!684 l!996))))

(assert (=> start!88902 e!574101))

(declare-fun e!574102 () Bool)

(assert (=> start!88902 e!574102))

(assert (=> start!88902 true))

(declare-fun tp_is_empty!23769 () Bool)

(assert (=> start!88902 tp_is_empty!23769))

(declare-fun b!1019957 () Bool)

(declare-fun tp!71195 () Bool)

(assert (=> b!1019957 (= e!574102 (and tp_is_empty!23769 tp!71195))))

(assert (= (and start!88902 res!683755) b!1019954))

(assert (= (and b!1019954 res!683757) b!1019955))

(assert (= (and b!1019955 res!683756) b!1019956))

(assert (= (and start!88902 ((_ is Cons!21733) l!996)) b!1019957))

(declare-fun m!940241 () Bool)

(assert (=> b!1019955 m!940241))

(declare-fun m!940243 () Bool)

(assert (=> b!1019954 m!940243))

(declare-fun m!940245 () Bool)

(assert (=> b!1019956 m!940245))

(declare-fun m!940247 () Bool)

(assert (=> b!1019956 m!940247))

(declare-fun m!940249 () Bool)

(assert (=> start!88902 m!940249))

(check-sat tp_is_empty!23769 (not b!1019957) (not b!1019954) (not b!1019955) (not start!88902) (not b!1019956))
(check-sat)
(get-model)

(declare-fun b!1020006 () Bool)

(declare-fun e!574136 () List!21737)

(declare-fun call!43165 () List!21737)

(assert (=> b!1020006 (= e!574136 call!43165)))

(declare-fun e!574134 () List!21737)

(declare-fun b!1020007 () Bool)

(declare-fun c!103412 () Bool)

(declare-fun c!103413 () Bool)

(assert (=> b!1020007 (= e!574134 (ite c!103413 (t!30754 l!996) (ite c!103412 (Cons!21733 (h!22931 l!996) (t!30754 l!996)) Nil!21734)))))

(declare-fun b!1020008 () Bool)

(assert (=> b!1020008 (= c!103412 (and ((_ is Cons!21733) l!996) (bvsgt (_1!7763 (h!22931 l!996)) key!261)))))

(declare-fun e!574135 () List!21737)

(assert (=> b!1020008 (= e!574136 e!574135)))

(declare-fun b!1020009 () Bool)

(declare-fun call!43163 () List!21737)

(assert (=> b!1020009 (= e!574135 call!43163)))

(declare-fun bm!43160 () Bool)

(declare-fun call!43164 () List!21737)

(assert (=> bm!43160 (= call!43165 call!43164)))

(declare-fun b!1020010 () Bool)

(assert (=> b!1020010 (= e!574134 (insertStrictlySorted!366 (t!30754 l!996) key!261 value!172))))

(declare-fun bm!43161 () Bool)

(declare-fun c!103410 () Bool)

(declare-fun $colon$colon!598 (List!21737 tuple2!15506) List!21737)

(assert (=> bm!43161 (= call!43164 ($colon$colon!598 e!574134 (ite c!103410 (h!22931 l!996) (tuple2!15507 key!261 value!172))))))

(declare-fun c!103411 () Bool)

(assert (=> bm!43161 (= c!103411 c!103410)))

(declare-fun b!1020011 () Bool)

(declare-fun res!683784 () Bool)

(declare-fun e!574138 () Bool)

(assert (=> b!1020011 (=> (not res!683784) (not e!574138))))

(declare-fun lt!449762 () List!21737)

(assert (=> b!1020011 (= res!683784 (containsKey!549 lt!449762 key!261))))

(declare-fun b!1020012 () Bool)

(declare-fun e!574137 () List!21737)

(assert (=> b!1020012 (= e!574137 call!43164)))

(declare-fun d!122245 () Bool)

(assert (=> d!122245 e!574138))

(declare-fun res!683783 () Bool)

(assert (=> d!122245 (=> (not res!683783) (not e!574138))))

(assert (=> d!122245 (= res!683783 (isStrictlySorted!684 lt!449762))))

(assert (=> d!122245 (= lt!449762 e!574137)))

(assert (=> d!122245 (= c!103410 (and ((_ is Cons!21733) l!996) (bvslt (_1!7763 (h!22931 l!996)) key!261)))))

(assert (=> d!122245 (isStrictlySorted!684 l!996)))

(assert (=> d!122245 (= (insertStrictlySorted!366 l!996 key!261 value!172) lt!449762)))

(declare-fun bm!43162 () Bool)

(assert (=> bm!43162 (= call!43163 call!43165)))

(declare-fun b!1020013 () Bool)

(declare-fun contains!5927 (List!21737 tuple2!15506) Bool)

(assert (=> b!1020013 (= e!574138 (contains!5927 lt!449762 (tuple2!15507 key!261 value!172)))))

(declare-fun b!1020014 () Bool)

(assert (=> b!1020014 (= e!574135 call!43163)))

(declare-fun b!1020015 () Bool)

(assert (=> b!1020015 (= e!574137 e!574136)))

(assert (=> b!1020015 (= c!103413 (and ((_ is Cons!21733) l!996) (= (_1!7763 (h!22931 l!996)) key!261)))))

(assert (= (and d!122245 c!103410) b!1020012))

(assert (= (and d!122245 (not c!103410)) b!1020015))

(assert (= (and b!1020015 c!103413) b!1020006))

(assert (= (and b!1020015 (not c!103413)) b!1020008))

(assert (= (and b!1020008 c!103412) b!1020009))

(assert (= (and b!1020008 (not c!103412)) b!1020014))

(assert (= (or b!1020009 b!1020014) bm!43162))

(assert (= (or b!1020006 bm!43162) bm!43160))

(assert (= (or b!1020012 bm!43160) bm!43161))

(assert (= (and bm!43161 c!103411) b!1020010))

(assert (= (and bm!43161 (not c!103411)) b!1020007))

(assert (= (and d!122245 res!683783) b!1020011))

(assert (= (and b!1020011 res!683784) b!1020013))

(declare-fun m!940273 () Bool)

(assert (=> b!1020011 m!940273))

(declare-fun m!940275 () Bool)

(assert (=> bm!43161 m!940275))

(declare-fun m!940277 () Bool)

(assert (=> b!1020013 m!940277))

(declare-fun m!940279 () Bool)

(assert (=> d!122245 m!940279))

(assert (=> d!122245 m!940249))

(declare-fun m!940281 () Bool)

(assert (=> b!1020010 m!940281))

(assert (=> b!1019955 d!122245))

(declare-fun d!122263 () Bool)

(declare-fun res!683797 () Bool)

(declare-fun e!574163 () Bool)

(assert (=> d!122263 (=> res!683797 e!574163)))

(assert (=> d!122263 (= res!683797 (and ((_ is Cons!21733) l!996) (= (_1!7763 (h!22931 l!996)) key!261)))))

(assert (=> d!122263 (= (containsKey!549 l!996 key!261) e!574163)))

(declare-fun b!1020056 () Bool)

(declare-fun e!574164 () Bool)

(assert (=> b!1020056 (= e!574163 e!574164)))

(declare-fun res!683798 () Bool)

(assert (=> b!1020056 (=> (not res!683798) (not e!574164))))

(assert (=> b!1020056 (= res!683798 (and (or (not ((_ is Cons!21733) l!996)) (bvsle (_1!7763 (h!22931 l!996)) key!261)) ((_ is Cons!21733) l!996) (bvslt (_1!7763 (h!22931 l!996)) key!261)))))

(declare-fun b!1020057 () Bool)

(assert (=> b!1020057 (= e!574164 (containsKey!549 (t!30754 l!996) key!261))))

(assert (= (and d!122263 (not res!683797)) b!1020056))

(assert (= (and b!1020056 res!683798) b!1020057))

(declare-fun m!940283 () Bool)

(assert (=> b!1020057 m!940283))

(assert (=> b!1019954 d!122263))

(declare-fun d!122265 () Bool)

(declare-fun size!31154 (List!21737) Int)

(assert (=> d!122265 (= (length!51 lt!449752) (size!31154 lt!449752))))

(declare-fun bs!29716 () Bool)

(assert (= bs!29716 d!122265))

(declare-fun m!940285 () Bool)

(assert (=> bs!29716 m!940285))

(assert (=> b!1019956 d!122265))

(declare-fun d!122267 () Bool)

(assert (=> d!122267 (= (length!51 l!996) (size!31154 l!996))))

(declare-fun bs!29717 () Bool)

(assert (= bs!29717 d!122267))

(declare-fun m!940287 () Bool)

(assert (=> bs!29717 m!940287))

(assert (=> b!1019956 d!122267))

(declare-fun d!122269 () Bool)

(declare-fun res!683807 () Bool)

(declare-fun e!574179 () Bool)

(assert (=> d!122269 (=> res!683807 e!574179)))

(assert (=> d!122269 (= res!683807 (or ((_ is Nil!21734) l!996) ((_ is Nil!21734) (t!30754 l!996))))))

(assert (=> d!122269 (= (isStrictlySorted!684 l!996) e!574179)))

(declare-fun b!1020082 () Bool)

(declare-fun e!574180 () Bool)

(assert (=> b!1020082 (= e!574179 e!574180)))

(declare-fun res!683808 () Bool)

(assert (=> b!1020082 (=> (not res!683808) (not e!574180))))

(assert (=> b!1020082 (= res!683808 (bvslt (_1!7763 (h!22931 l!996)) (_1!7763 (h!22931 (t!30754 l!996)))))))

(declare-fun b!1020083 () Bool)

(assert (=> b!1020083 (= e!574180 (isStrictlySorted!684 (t!30754 l!996)))))

(assert (= (and d!122269 (not res!683807)) b!1020082))

(assert (= (and b!1020082 res!683808) b!1020083))

(declare-fun m!940309 () Bool)

(assert (=> b!1020083 m!940309))

(assert (=> start!88902 d!122269))

(declare-fun b!1020088 () Bool)

(declare-fun e!574183 () Bool)

(declare-fun tp!71201 () Bool)

(assert (=> b!1020088 (= e!574183 (and tp_is_empty!23769 tp!71201))))

(assert (=> b!1019957 (= tp!71195 e!574183)))

(assert (= (and b!1019957 ((_ is Cons!21733) (t!30754 l!996))) b!1020088))

(check-sat tp_is_empty!23769 (not b!1020088) (not bm!43161) (not b!1020011) (not b!1020057) (not b!1020013) (not d!122245) (not d!122265) (not b!1020010) (not d!122267) (not b!1020083))
(check-sat)
