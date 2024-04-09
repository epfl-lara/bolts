; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43962 () Bool)

(assert start!43962)

(declare-fun res!288859 () Bool)

(declare-fun e!285468 () Bool)

(assert (=> start!43962 (=> (not res!288859) (not e!285468))))

(declare-datatypes ((B!1150 0))(
  ( (B!1151 (val!7027 Int)) )
))
(declare-datatypes ((tuple2!9252 0))(
  ( (tuple2!9253 (_1!4636 (_ BitVec 64)) (_2!4636 B!1150)) )
))
(declare-datatypes ((List!9326 0))(
  ( (Nil!9323) (Cons!9322 (h!10178 tuple2!9252) (t!15559 List!9326)) )
))
(declare-fun l!956 () List!9326)

(declare-fun isStrictlySorted!426 (List!9326) Bool)

(assert (=> start!43962 (= res!288859 (isStrictlySorted!426 l!956))))

(assert (=> start!43962 e!285468))

(declare-fun e!285469 () Bool)

(assert (=> start!43962 e!285469))

(assert (=> start!43962 true))

(declare-fun tp_is_empty!13959 () Bool)

(assert (=> start!43962 tp_is_empty!13959))

(declare-fun b!484860 () Bool)

(declare-fun res!288860 () Bool)

(assert (=> b!484860 (=> (not res!288860) (not e!285468))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!392 (List!9326 (_ BitVec 64)) Bool)

(assert (=> b!484860 (= res!288860 (not (containsKey!392 l!956 key!251)))))

(declare-fun b!484861 () Bool)

(get-info :version)

(assert (=> b!484861 (= e!285468 (and ((_ is Cons!9322) l!956) (= (_1!4636 (h!10178 l!956)) key!251)))))

(declare-fun lt!219446 () List!9326)

(declare-fun value!166 () B!1150)

(declare-fun insertStrictlySorted!245 (List!9326 (_ BitVec 64) B!1150) List!9326)

(assert (=> b!484861 (= lt!219446 (insertStrictlySorted!245 l!956 key!251 value!166))))

(declare-fun b!484862 () Bool)

(declare-fun tp!43576 () Bool)

(assert (=> b!484862 (= e!285469 (and tp_is_empty!13959 tp!43576))))

(assert (= (and start!43962 res!288859) b!484860))

(assert (= (and b!484860 res!288860) b!484861))

(assert (= (and start!43962 ((_ is Cons!9322) l!956)) b!484862))

(declare-fun m!465235 () Bool)

(assert (=> start!43962 m!465235))

(declare-fun m!465237 () Bool)

(assert (=> b!484860 m!465237))

(declare-fun m!465239 () Bool)

(assert (=> b!484861 m!465239))

(check-sat (not b!484861) tp_is_empty!13959 (not start!43962) (not b!484860) (not b!484862))
(check-sat)
(get-model)

(declare-fun d!77187 () Bool)

(declare-fun res!288877 () Bool)

(declare-fun e!285486 () Bool)

(assert (=> d!77187 (=> res!288877 e!285486)))

(assert (=> d!77187 (= res!288877 (and ((_ is Cons!9322) l!956) (= (_1!4636 (h!10178 l!956)) key!251)))))

(assert (=> d!77187 (= (containsKey!392 l!956 key!251) e!285486)))

(declare-fun b!484882 () Bool)

(declare-fun e!285487 () Bool)

(assert (=> b!484882 (= e!285486 e!285487)))

(declare-fun res!288878 () Bool)

(assert (=> b!484882 (=> (not res!288878) (not e!285487))))

(assert (=> b!484882 (= res!288878 (and (or (not ((_ is Cons!9322) l!956)) (bvsle (_1!4636 (h!10178 l!956)) key!251)) ((_ is Cons!9322) l!956) (bvslt (_1!4636 (h!10178 l!956)) key!251)))))

(declare-fun b!484883 () Bool)

(assert (=> b!484883 (= e!285487 (containsKey!392 (t!15559 l!956) key!251))))

(assert (= (and d!77187 (not res!288877)) b!484882))

(assert (= (and b!484882 res!288878) b!484883))

(declare-fun m!465249 () Bool)

(assert (=> b!484883 m!465249))

(assert (=> b!484860 d!77187))

(declare-fun d!77193 () Bool)

(declare-fun res!288887 () Bool)

(declare-fun e!285496 () Bool)

(assert (=> d!77193 (=> res!288887 e!285496)))

(assert (=> d!77193 (= res!288887 (or ((_ is Nil!9323) l!956) ((_ is Nil!9323) (t!15559 l!956))))))

(assert (=> d!77193 (= (isStrictlySorted!426 l!956) e!285496)))

(declare-fun b!484892 () Bool)

(declare-fun e!285497 () Bool)

(assert (=> b!484892 (= e!285496 e!285497)))

(declare-fun res!288888 () Bool)

(assert (=> b!484892 (=> (not res!288888) (not e!285497))))

(assert (=> b!484892 (= res!288888 (bvslt (_1!4636 (h!10178 l!956)) (_1!4636 (h!10178 (t!15559 l!956)))))))

(declare-fun b!484893 () Bool)

(assert (=> b!484893 (= e!285497 (isStrictlySorted!426 (t!15559 l!956)))))

(assert (= (and d!77193 (not res!288887)) b!484892))

(assert (= (and b!484892 res!288888) b!484893))

(declare-fun m!465251 () Bool)

(assert (=> b!484893 m!465251))

(assert (=> start!43962 d!77193))

(declare-fun b!484972 () Bool)

(declare-fun e!285542 () List!9326)

(declare-fun call!31212 () List!9326)

(assert (=> b!484972 (= e!285542 call!31212)))

(declare-fun bm!31209 () Bool)

(declare-fun call!31214 () List!9326)

(declare-fun call!31213 () List!9326)

(assert (=> bm!31209 (= call!31214 call!31213)))

(declare-fun b!484973 () Bool)

(declare-fun e!285543 () List!9326)

(declare-fun e!285545 () List!9326)

(assert (=> b!484973 (= e!285543 e!285545)))

(declare-fun c!58325 () Bool)

(assert (=> b!484973 (= c!58325 (and ((_ is Cons!9322) l!956) (= (_1!4636 (h!10178 l!956)) key!251)))))

(declare-fun b!484974 () Bool)

(declare-fun c!58327 () Bool)

(assert (=> b!484974 (= c!58327 (and ((_ is Cons!9322) l!956) (bvsgt (_1!4636 (h!10178 l!956)) key!251)))))

(assert (=> b!484974 (= e!285545 e!285542)))

(declare-fun d!77195 () Bool)

(declare-fun e!285541 () Bool)

(assert (=> d!77195 e!285541))

(declare-fun res!288911 () Bool)

(assert (=> d!77195 (=> (not res!288911) (not e!285541))))

(declare-fun lt!219457 () List!9326)

(assert (=> d!77195 (= res!288911 (isStrictlySorted!426 lt!219457))))

(assert (=> d!77195 (= lt!219457 e!285543)))

(declare-fun c!58324 () Bool)

(assert (=> d!77195 (= c!58324 (and ((_ is Cons!9322) l!956) (bvslt (_1!4636 (h!10178 l!956)) key!251)))))

(assert (=> d!77195 (isStrictlySorted!426 l!956)))

(assert (=> d!77195 (= (insertStrictlySorted!245 l!956 key!251 value!166) lt!219457)))

(declare-fun e!285544 () List!9326)

(declare-fun bm!31210 () Bool)

(declare-fun $colon$colon!129 (List!9326 tuple2!9252) List!9326)

(assert (=> bm!31210 (= call!31213 ($colon$colon!129 e!285544 (ite c!58324 (h!10178 l!956) (tuple2!9253 key!251 value!166))))))

(declare-fun c!58326 () Bool)

(assert (=> bm!31210 (= c!58326 c!58324)))

(declare-fun b!484975 () Bool)

(declare-fun contains!2690 (List!9326 tuple2!9252) Bool)

(assert (=> b!484975 (= e!285541 (contains!2690 lt!219457 (tuple2!9253 key!251 value!166)))))

(declare-fun b!484976 () Bool)

(assert (=> b!484976 (= e!285545 call!31214)))

(declare-fun b!484977 () Bool)

(declare-fun res!288912 () Bool)

(assert (=> b!484977 (=> (not res!288912) (not e!285541))))

(assert (=> b!484977 (= res!288912 (containsKey!392 lt!219457 key!251))))

(declare-fun b!484978 () Bool)

(assert (=> b!484978 (= e!285544 (insertStrictlySorted!245 (t!15559 l!956) key!251 value!166))))

(declare-fun b!484979 () Bool)

(assert (=> b!484979 (= e!285542 call!31212)))

(declare-fun b!484980 () Bool)

(assert (=> b!484980 (= e!285544 (ite c!58325 (t!15559 l!956) (ite c!58327 (Cons!9322 (h!10178 l!956) (t!15559 l!956)) Nil!9323)))))

(declare-fun b!484981 () Bool)

(assert (=> b!484981 (= e!285543 call!31213)))

(declare-fun bm!31211 () Bool)

(assert (=> bm!31211 (= call!31212 call!31214)))

(assert (= (and d!77195 c!58324) b!484981))

(assert (= (and d!77195 (not c!58324)) b!484973))

(assert (= (and b!484973 c!58325) b!484976))

(assert (= (and b!484973 (not c!58325)) b!484974))

(assert (= (and b!484974 c!58327) b!484972))

(assert (= (and b!484974 (not c!58327)) b!484979))

(assert (= (or b!484972 b!484979) bm!31211))

(assert (= (or b!484976 bm!31211) bm!31209))

(assert (= (or b!484981 bm!31209) bm!31210))

(assert (= (and bm!31210 c!58326) b!484978))

(assert (= (and bm!31210 (not c!58326)) b!484980))

(assert (= (and d!77195 res!288911) b!484977))

(assert (= (and b!484977 res!288912) b!484975))

(declare-fun m!465267 () Bool)

(assert (=> b!484978 m!465267))

(declare-fun m!465269 () Bool)

(assert (=> d!77195 m!465269))

(assert (=> d!77195 m!465235))

(declare-fun m!465271 () Bool)

(assert (=> b!484975 m!465271))

(declare-fun m!465273 () Bool)

(assert (=> bm!31210 m!465273))

(declare-fun m!465277 () Bool)

(assert (=> b!484977 m!465277))

(assert (=> b!484861 d!77195))

(declare-fun b!485006 () Bool)

(declare-fun e!285561 () Bool)

(declare-fun tp!43584 () Bool)

(assert (=> b!485006 (= e!285561 (and tp_is_empty!13959 tp!43584))))

(assert (=> b!484862 (= tp!43576 e!285561)))

(assert (= (and b!484862 ((_ is Cons!9322) (t!15559 l!956))) b!485006))

(check-sat (not b!485006) (not b!484978) tp_is_empty!13959 (not d!77195) (not b!484975) (not b!484977) (not b!484893) (not bm!31210) (not b!484883))
(check-sat)
