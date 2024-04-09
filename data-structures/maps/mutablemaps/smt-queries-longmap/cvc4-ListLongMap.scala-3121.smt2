; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43964 () Bool)

(assert start!43964)

(declare-fun res!288866 () Bool)

(declare-fun e!285475 () Bool)

(assert (=> start!43964 (=> (not res!288866) (not e!285475))))

(declare-datatypes ((B!1152 0))(
  ( (B!1153 (val!7028 Int)) )
))
(declare-datatypes ((tuple2!9254 0))(
  ( (tuple2!9255 (_1!4637 (_ BitVec 64)) (_2!4637 B!1152)) )
))
(declare-datatypes ((List!9327 0))(
  ( (Nil!9324) (Cons!9323 (h!10179 tuple2!9254) (t!15560 List!9327)) )
))
(declare-fun l!956 () List!9327)

(declare-fun isStrictlySorted!427 (List!9327) Bool)

(assert (=> start!43964 (= res!288866 (isStrictlySorted!427 l!956))))

(assert (=> start!43964 e!285475))

(declare-fun e!285474 () Bool)

(assert (=> start!43964 e!285474))

(assert (=> start!43964 true))

(declare-fun tp_is_empty!13961 () Bool)

(assert (=> start!43964 tp_is_empty!13961))

(declare-fun b!484869 () Bool)

(declare-fun res!288865 () Bool)

(assert (=> b!484869 (=> (not res!288865) (not e!285475))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!393 (List!9327 (_ BitVec 64)) Bool)

(assert (=> b!484869 (= res!288865 (not (containsKey!393 l!956 key!251)))))

(declare-fun b!484870 () Bool)

(assert (=> b!484870 (= e!285475 (and (is-Cons!9323 l!956) (= (_1!4637 (h!10179 l!956)) key!251)))))

(declare-fun lt!219449 () List!9327)

(declare-fun value!166 () B!1152)

(declare-fun insertStrictlySorted!246 (List!9327 (_ BitVec 64) B!1152) List!9327)

(assert (=> b!484870 (= lt!219449 (insertStrictlySorted!246 l!956 key!251 value!166))))

(declare-fun b!484871 () Bool)

(declare-fun tp!43579 () Bool)

(assert (=> b!484871 (= e!285474 (and tp_is_empty!13961 tp!43579))))

(assert (= (and start!43964 res!288866) b!484869))

(assert (= (and b!484869 res!288865) b!484870))

(assert (= (and start!43964 (is-Cons!9323 l!956)) b!484871))

(declare-fun m!465241 () Bool)

(assert (=> start!43964 m!465241))

(declare-fun m!465243 () Bool)

(assert (=> b!484869 m!465243))

(declare-fun m!465245 () Bool)

(assert (=> b!484870 m!465245))

(push 1)

(assert (not b!484871))

(assert (not start!43964))

(assert tp_is_empty!13961)

(assert (not b!484870))

(assert (not b!484869))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!285524 () List!9327)

(declare-fun c!58316 () Bool)

(declare-fun c!58318 () Bool)

(declare-fun b!484940 () Bool)

(assert (=> b!484940 (= e!285524 (ite c!58318 (t!15560 l!956) (ite c!58316 (Cons!9323 (h!10179 l!956) (t!15560 l!956)) Nil!9324)))))

(declare-fun b!484941 () Bool)

(assert (=> b!484941 (= c!58316 (and (is-Cons!9323 l!956) (bvsgt (_1!4637 (h!10179 l!956)) key!251)))))

(declare-fun e!285522 () List!9327)

(declare-fun e!285525 () List!9327)

(assert (=> b!484941 (= e!285522 e!285525)))

(declare-fun bm!31194 () Bool)

(declare-fun call!31199 () List!9327)

(declare-fun c!58317 () Bool)

(declare-fun $colon$colon!127 (List!9327 tuple2!9254) List!9327)

(assert (=> bm!31194 (= call!31199 ($colon$colon!127 e!285524 (ite c!58317 (h!10179 l!956) (tuple2!9255 key!251 value!166))))))

(declare-fun c!58319 () Bool)

(assert (=> bm!31194 (= c!58319 c!58317)))

(declare-fun b!484942 () Bool)

(declare-fun res!288896 () Bool)

(declare-fun e!285523 () Bool)

(assert (=> b!484942 (=> (not res!288896) (not e!285523))))

(declare-fun lt!219456 () List!9327)

(assert (=> b!484942 (= res!288896 (containsKey!393 lt!219456 key!251))))

(declare-fun b!484943 () Bool)

(declare-fun contains!2689 (List!9327 tuple2!9254) Bool)

(assert (=> b!484943 (= e!285523 (contains!2689 lt!219456 (tuple2!9255 key!251 value!166)))))

(declare-fun bm!31195 () Bool)

(declare-fun call!31200 () List!9327)

(assert (=> bm!31195 (= call!31200 call!31199)))

(declare-fun b!484944 () Bool)

(declare-fun call!31201 () List!9327)

(assert (=> b!484944 (= e!285525 call!31201)))

(declare-fun b!484945 () Bool)

(assert (=> b!484945 (= e!285524 (insertStrictlySorted!246 (t!15560 l!956) key!251 value!166))))

(declare-fun bm!31196 () Bool)

(assert (=> bm!31196 (= call!31201 call!31200)))

(declare-fun b!484946 () Bool)

(assert (=> b!484946 (= e!285525 call!31201)))

(declare-fun b!484948 () Bool)

(assert (=> b!484948 (= e!285522 call!31200)))

(declare-fun b!484949 () Bool)

(declare-fun e!285526 () List!9327)

(assert (=> b!484949 (= e!285526 e!285522)))

(assert (=> b!484949 (= c!58318 (and (is-Cons!9323 l!956) (= (_1!4637 (h!10179 l!956)) key!251)))))

(declare-fun b!484947 () Bool)

(assert (=> b!484947 (= e!285526 call!31199)))

(declare-fun d!77189 () Bool)

(assert (=> d!77189 e!285523))

(declare-fun res!288895 () Bool)

(assert (=> d!77189 (=> (not res!288895) (not e!285523))))

(assert (=> d!77189 (= res!288895 (isStrictlySorted!427 lt!219456))))

(assert (=> d!77189 (= lt!219456 e!285526)))

(assert (=> d!77189 (= c!58317 (and (is-Cons!9323 l!956) (bvslt (_1!4637 (h!10179 l!956)) key!251)))))

(assert (=> d!77189 (isStrictlySorted!427 l!956)))

(assert (=> d!77189 (= (insertStrictlySorted!246 l!956 key!251 value!166) lt!219456)))

(assert (= (and d!77189 c!58317) b!484947))

(assert (= (and d!77189 (not c!58317)) b!484949))

(assert (= (and b!484949 c!58318) b!484948))

(assert (= (and b!484949 (not c!58318)) b!484941))

(assert (= (and b!484941 c!58316) b!484944))

(assert (= (and b!484941 (not c!58316)) b!484946))

(assert (= (or b!484944 b!484946) bm!31196))

(assert (= (or b!484948 bm!31196) bm!31195))

(assert (= (or b!484947 bm!31195) bm!31194))

(assert (= (and bm!31194 c!58319) b!484945))

(assert (= (and bm!31194 (not c!58319)) b!484940))

(assert (= (and d!77189 res!288895) b!484942))

(assert (= (and b!484942 res!288896) b!484943))

(declare-fun m!465255 () Bool)

(assert (=> b!484942 m!465255))

(declare-fun m!465257 () Bool)

(assert (=> d!77189 m!465257))

(assert (=> d!77189 m!465241))

(declare-fun m!465259 () Bool)

(assert (=> bm!31194 m!465259))

(declare-fun m!465261 () Bool)

(assert (=> b!484943 m!465261))

(declare-fun m!465263 () Bool)

(assert (=> b!484945 m!465263))

(assert (=> b!484870 d!77189))

(declare-fun d!77199 () Bool)

(declare-fun res!288909 () Bool)

(declare-fun e!285539 () Bool)

(assert (=> d!77199 (=> res!288909 e!285539)))

(assert (=> d!77199 (= res!288909 (and (is-Cons!9323 l!956) (= (_1!4637 (h!10179 l!956)) key!251)))))

(assert (=> d!77199 (= (containsKey!393 l!956 key!251) e!285539)))

(declare-fun b!484970 () Bool)

(declare-fun e!285540 () Bool)

(assert (=> b!484970 (= e!285539 e!285540)))

(declare-fun res!288910 () Bool)

(assert (=> b!484970 (=> (not res!288910) (not e!285540))))

(assert (=> b!484970 (= res!288910 (and (or (not (is-Cons!9323 l!956)) (bvsle (_1!4637 (h!10179 l!956)) key!251)) (is-Cons!9323 l!956) (bvslt (_1!4637 (h!10179 l!956)) key!251)))))

(declare-fun b!484971 () Bool)

(assert (=> b!484971 (= e!285540 (containsKey!393 (t!15560 l!956) key!251))))

(assert (= (and d!77199 (not res!288909)) b!484970))

(assert (= (and b!484970 res!288910) b!484971))

(declare-fun m!465265 () Bool)

(assert (=> b!484971 m!465265))

(assert (=> b!484869 d!77199))

(declare-fun d!77201 () Bool)

(declare-fun res!288919 () Bool)

(declare-fun e!285559 () Bool)

(assert (=> d!77201 (=> res!288919 e!285559)))

(assert (=> d!77201 (= res!288919 (or (is-Nil!9324 l!956) (is-Nil!9324 (t!15560 l!956))))))

(assert (=> d!77201 (= (isStrictlySorted!427 l!956) e!285559)))

(declare-fun b!485004 () Bool)

(declare-fun e!285560 () Bool)

(assert (=> b!485004 (= e!285559 e!285560)))

(declare-fun res!288920 () Bool)

(assert (=> b!485004 (=> (not res!288920) (not e!285560))))

(assert (=> b!485004 (= res!288920 (bvslt (_1!4637 (h!10179 l!956)) (_1!4637 (h!10179 (t!15560 l!956)))))))

(declare-fun b!485005 () Bool)

(assert (=> b!485005 (= e!285560 (isStrictlySorted!427 (t!15560 l!956)))))

(assert (= (and d!77201 (not res!288919)) b!485004))

(assert (= (and b!485004 res!288920) b!485005))

(declare-fun m!465287 () Bool)

(assert (=> b!485005 m!465287))

