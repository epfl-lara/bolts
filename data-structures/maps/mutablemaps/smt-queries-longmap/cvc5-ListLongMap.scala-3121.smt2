; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43960 () Bool)

(assert start!43960)

(declare-fun res!288853 () Bool)

(declare-fun e!285463 () Bool)

(assert (=> start!43960 (=> (not res!288853) (not e!285463))))

(declare-datatypes ((B!1148 0))(
  ( (B!1149 (val!7026 Int)) )
))
(declare-datatypes ((tuple2!9250 0))(
  ( (tuple2!9251 (_1!4635 (_ BitVec 64)) (_2!4635 B!1148)) )
))
(declare-datatypes ((List!9325 0))(
  ( (Nil!9322) (Cons!9321 (h!10177 tuple2!9250) (t!15558 List!9325)) )
))
(declare-fun l!956 () List!9325)

(declare-fun isStrictlySorted!425 (List!9325) Bool)

(assert (=> start!43960 (= res!288853 (isStrictlySorted!425 l!956))))

(assert (=> start!43960 e!285463))

(declare-fun e!285462 () Bool)

(assert (=> start!43960 e!285462))

(assert (=> start!43960 true))

(declare-fun tp_is_empty!13957 () Bool)

(assert (=> start!43960 tp_is_empty!13957))

(declare-fun b!484851 () Bool)

(declare-fun res!288854 () Bool)

(assert (=> b!484851 (=> (not res!288854) (not e!285463))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!391 (List!9325 (_ BitVec 64)) Bool)

(assert (=> b!484851 (= res!288854 (not (containsKey!391 l!956 key!251)))))

(declare-fun b!484852 () Bool)

(assert (=> b!484852 (= e!285463 (and (is-Cons!9321 l!956) (= (_1!4635 (h!10177 l!956)) key!251)))))

(declare-fun value!166 () B!1148)

(declare-fun lt!219443 () List!9325)

(declare-fun insertStrictlySorted!244 (List!9325 (_ BitVec 64) B!1148) List!9325)

(assert (=> b!484852 (= lt!219443 (insertStrictlySorted!244 l!956 key!251 value!166))))

(declare-fun b!484853 () Bool)

(declare-fun tp!43573 () Bool)

(assert (=> b!484853 (= e!285462 (and tp_is_empty!13957 tp!43573))))

(assert (= (and start!43960 res!288853) b!484851))

(assert (= (and b!484851 res!288854) b!484852))

(assert (= (and start!43960 (is-Cons!9321 l!956)) b!484853))

(declare-fun m!465229 () Bool)

(assert (=> start!43960 m!465229))

(declare-fun m!465231 () Bool)

(assert (=> b!484851 m!465231))

(declare-fun m!465233 () Bool)

(assert (=> b!484852 m!465233))

(push 1)

(assert (not start!43960))

(assert (not b!484852))

(assert (not b!484851))

(assert (not b!484853))

(assert tp_is_empty!13957)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77185 () Bool)

(declare-fun res!288875 () Bool)

(declare-fun e!285484 () Bool)

(assert (=> d!77185 (=> res!288875 e!285484)))

(assert (=> d!77185 (= res!288875 (and (is-Cons!9321 l!956) (= (_1!4635 (h!10177 l!956)) key!251)))))

(assert (=> d!77185 (= (containsKey!391 l!956 key!251) e!285484)))

(declare-fun b!484880 () Bool)

(declare-fun e!285485 () Bool)

(assert (=> b!484880 (= e!285484 e!285485)))

(declare-fun res!288876 () Bool)

(assert (=> b!484880 (=> (not res!288876) (not e!285485))))

(assert (=> b!484880 (= res!288876 (and (or (not (is-Cons!9321 l!956)) (bvsle (_1!4635 (h!10177 l!956)) key!251)) (is-Cons!9321 l!956) (bvslt (_1!4635 (h!10177 l!956)) key!251)))))

(declare-fun b!484881 () Bool)

(assert (=> b!484881 (= e!285485 (containsKey!391 (t!15558 l!956) key!251))))

(assert (= (and d!77185 (not res!288875)) b!484880))

(assert (= (and b!484880 res!288876) b!484881))

(declare-fun m!465247 () Bool)

(assert (=> b!484881 m!465247))

(assert (=> b!484851 d!77185))

(declare-fun d!77191 () Bool)

(declare-fun res!288889 () Bool)

(declare-fun e!285498 () Bool)

(assert (=> d!77191 (=> res!288889 e!285498)))

(assert (=> d!77191 (= res!288889 (or (is-Nil!9322 l!956) (is-Nil!9322 (t!15558 l!956))))))

(assert (=> d!77191 (= (isStrictlySorted!425 l!956) e!285498)))

(declare-fun b!484894 () Bool)

(declare-fun e!285499 () Bool)

(assert (=> b!484894 (= e!285498 e!285499)))

(declare-fun res!288890 () Bool)

(assert (=> b!484894 (=> (not res!288890) (not e!285499))))

(assert (=> b!484894 (= res!288890 (bvslt (_1!4635 (h!10177 l!956)) (_1!4635 (h!10177 (t!15558 l!956)))))))

(declare-fun b!484895 () Bool)

(assert (=> b!484895 (= e!285499 (isStrictlySorted!425 (t!15558 l!956)))))

(assert (= (and d!77191 (not res!288889)) b!484894))

(assert (= (and b!484894 res!288890) b!484895))

(declare-fun m!465253 () Bool)

(assert (=> b!484895 m!465253))

(assert (=> start!43960 d!77191))

(declare-fun bm!31212 () Bool)

(declare-fun call!31215 () List!9325)

(declare-fun call!31216 () List!9325)

(assert (=> bm!31212 (= call!31215 call!31216)))

(declare-fun b!484982 () Bool)

(declare-fun e!285548 () List!9325)

(assert (=> b!484982 (= e!285548 call!31216)))

(declare-fun c!58328 () Bool)

(declare-fun c!58330 () Bool)

(declare-fun b!484983 () Bool)

(declare-fun e!285549 () List!9325)

(assert (=> b!484983 (= e!285549 (ite c!58328 (t!15558 l!956) (ite c!58330 (Cons!9321 (h!10177 l!956) (t!15558 l!956)) Nil!9322)))))

(declare-fun b!484984 () Bool)

(declare-fun res!288914 () Bool)

(declare-fun e!285547 () Bool)

(assert (=> b!484984 (=> (not res!288914) (not e!285547))))

(declare-fun lt!219458 () List!9325)

(assert (=> b!484984 (= res!288914 (containsKey!391 lt!219458 key!251))))

(declare-fun call!31217 () List!9325)

(declare-fun c!58329 () Bool)

(declare-fun bm!31213 () Bool)

(declare-fun $colon$colon!128 (List!9325 tuple2!9250) List!9325)

(assert (=> bm!31213 (= call!31217 ($colon$colon!128 e!285549 (ite c!58329 (h!10177 l!956) (tuple2!9251 key!251 value!166))))))

(declare-fun c!58331 () Bool)

(assert (=> bm!31213 (= c!58331 c!58329)))

(declare-fun b!484985 () Bool)

(declare-fun e!285546 () List!9325)

(assert (=> b!484985 (= e!285546 e!285548)))

(assert (=> b!484985 (= c!58328 (and (is-Cons!9321 l!956) (= (_1!4635 (h!10177 l!956)) key!251)))))

(declare-fun b!484986 () Bool)

(assert (=> b!484986 (= c!58330 (and (is-Cons!9321 l!956) (bvsgt (_1!4635 (h!10177 l!956)) key!251)))))

(declare-fun e!285550 () List!9325)

(assert (=> b!484986 (= e!285548 e!285550)))

(declare-fun d!77197 () Bool)

(assert (=> d!77197 e!285547))

(declare-fun res!288913 () Bool)

(assert (=> d!77197 (=> (not res!288913) (not e!285547))))

(assert (=> d!77197 (= res!288913 (isStrictlySorted!425 lt!219458))))

(assert (=> d!77197 (= lt!219458 e!285546)))

(assert (=> d!77197 (= c!58329 (and (is-Cons!9321 l!956) (bvslt (_1!4635 (h!10177 l!956)) key!251)))))

(assert (=> d!77197 (isStrictlySorted!425 l!956)))

(assert (=> d!77197 (= (insertStrictlySorted!244 l!956 key!251 value!166) lt!219458)))

(declare-fun b!484987 () Bool)

(declare-fun contains!2691 (List!9325 tuple2!9250) Bool)

(assert (=> b!484987 (= e!285547 (contains!2691 lt!219458 (tuple2!9251 key!251 value!166)))))

(declare-fun b!484988 () Bool)

(assert (=> b!484988 (= e!285549 (insertStrictlySorted!244 (t!15558 l!956) key!251 value!166))))

(declare-fun b!484989 () Bool)

(assert (=> b!484989 (= e!285550 call!31215)))

(declare-fun b!484990 () Bool)

(assert (=> b!484990 (= e!285550 call!31215)))

(declare-fun bm!31214 () Bool)

(assert (=> bm!31214 (= call!31216 call!31217)))

(declare-fun b!484991 () Bool)

(assert (=> b!484991 (= e!285546 call!31217)))

(assert (= (and d!77197 c!58329) b!484991))

(assert (= (and d!77197 (not c!58329)) b!484985))

(assert (= (and b!484985 c!58328) b!484982))

(assert (= (and b!484985 (not c!58328)) b!484986))

(assert (= (and b!484986 c!58330) b!484990))

(assert (= (and b!484986 (not c!58330)) b!484989))

(assert (= (or b!484990 b!484989) bm!31212))

(assert (= (or b!484982 bm!31212) bm!31214))

(assert (= (or b!484991 bm!31214) bm!31213))

(assert (= (and bm!31213 c!58331) b!484988))

(assert (= (and bm!31213 (not c!58331)) b!484983))

(assert (= (and d!77197 res!288913) b!484984))

(assert (= (and b!484984 res!288914) b!484987))

(declare-fun m!465275 () Bool)

(assert (=> d!77197 m!465275))

(assert (=> d!77197 m!465229))

(declare-fun m!465279 () Bool)

(assert (=> b!484984 m!465279))

(declare-fun m!465281 () Bool)

(assert (=> bm!31213 m!465281))

(declare-fun m!465283 () Bool)

(assert (=> b!484987 m!465283))

(declare-fun m!465285 () Bool)

(assert (=> b!484988 m!465285))

(assert (=> b!484852 d!77197))

(declare-fun b!485009 () Bool)

(declare-fun e!285562 () Bool)

(declare-fun tp!43585 () Bool)

(assert (=> b!485009 (= e!285562 (and tp_is_empty!13957 tp!43585))))

(assert (=> b!484853 (= tp!43573 e!285562)))

(assert (= (and b!484853 (is-Cons!9321 (t!15558 l!956))) b!485009))

(push 1)

