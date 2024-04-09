; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43870 () Bool)

(assert start!43870)

(declare-fun b!484260 () Bool)

(declare-fun res!288569 () Bool)

(declare-fun e!285083 () Bool)

(assert (=> b!484260 (=> (not res!288569) (not e!285083))))

(declare-datatypes ((B!1136 0))(
  ( (B!1137 (val!7020 Int)) )
))
(declare-datatypes ((tuple2!9238 0))(
  ( (tuple2!9239 (_1!4629 (_ BitVec 64)) (_2!4629 B!1136)) )
))
(declare-datatypes ((List!9319 0))(
  ( (Nil!9316) (Cons!9315 (h!10171 tuple2!9238) (t!15549 List!9319)) )
))
(declare-fun l!956 () List!9319)

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!385 (List!9319 (_ BitVec 64)) Bool)

(assert (=> b!484260 (= res!288569 (not (containsKey!385 l!956 key!251)))))

(declare-fun b!484261 () Bool)

(declare-fun e!285085 () Bool)

(assert (=> b!484261 (= e!285083 e!285085)))

(declare-fun res!288568 () Bool)

(assert (=> b!484261 (=> (not res!288568) (not e!285085))))

(assert (=> b!484261 (= res!288568 (and (is-Cons!9315 l!956) (bvslt (_1!4629 (h!10171 l!956)) key!251)))))

(declare-fun lt!219341 () List!9319)

(declare-fun value!166 () B!1136)

(declare-fun insertStrictlySorted!238 (List!9319 (_ BitVec 64) B!1136) List!9319)

(assert (=> b!484261 (= lt!219341 (insertStrictlySorted!238 l!956 key!251 value!166))))

(declare-fun res!288567 () Bool)

(assert (=> start!43870 (=> (not res!288567) (not e!285083))))

(declare-fun isStrictlySorted!419 (List!9319) Bool)

(assert (=> start!43870 (= res!288567 (isStrictlySorted!419 l!956))))

(assert (=> start!43870 e!285083))

(declare-fun e!285084 () Bool)

(assert (=> start!43870 e!285084))

(assert (=> start!43870 true))

(declare-fun tp_is_empty!13945 () Bool)

(assert (=> start!43870 tp_is_empty!13945))

(declare-fun b!484262 () Bool)

(declare-fun tp!43534 () Bool)

(assert (=> b!484262 (= e!285084 (and tp_is_empty!13945 tp!43534))))

(declare-fun b!484263 () Bool)

(declare-fun res!288566 () Bool)

(assert (=> b!484263 (=> (not res!288566) (not e!285085))))

(assert (=> b!484263 (= res!288566 (not (containsKey!385 (t!15549 l!956) key!251)))))

(declare-fun b!484264 () Bool)

(declare-fun ListPrimitiveSize!64 (List!9319) Int)

(assert (=> b!484264 (= e!285085 (>= (ListPrimitiveSize!64 (t!15549 l!956)) (ListPrimitiveSize!64 l!956)))))

(declare-fun b!484265 () Bool)

(declare-fun res!288565 () Bool)

(assert (=> b!484265 (=> (not res!288565) (not e!285085))))

(assert (=> b!484265 (= res!288565 (isStrictlySorted!419 (t!15549 l!956)))))

(assert (= (and start!43870 res!288567) b!484260))

(assert (= (and b!484260 res!288569) b!484261))

(assert (= (and b!484261 res!288568) b!484265))

(assert (= (and b!484265 res!288565) b!484263))

(assert (= (and b!484263 res!288566) b!484264))

(assert (= (and start!43870 (is-Cons!9315 l!956)) b!484262))

(declare-fun m!464857 () Bool)

(assert (=> b!484260 m!464857))

(declare-fun m!464859 () Bool)

(assert (=> b!484264 m!464859))

(declare-fun m!464861 () Bool)

(assert (=> b!484264 m!464861))

(declare-fun m!464863 () Bool)

(assert (=> b!484261 m!464863))

(declare-fun m!464865 () Bool)

(assert (=> b!484265 m!464865))

(declare-fun m!464867 () Bool)

(assert (=> b!484263 m!464867))

(declare-fun m!464869 () Bool)

(assert (=> start!43870 m!464869))

(push 1)

(assert (not b!484262))

(assert tp_is_empty!13945)

(assert (not b!484265))

(assert (not b!484263))

(assert (not b!484260))

(assert (not b!484264))

(assert (not start!43870))

(assert (not b!484261))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76979 () Bool)

(declare-fun res!288614 () Bool)

(declare-fun e!285118 () Bool)

(assert (=> d!76979 (=> res!288614 e!285118)))

(assert (=> d!76979 (= res!288614 (or (is-Nil!9316 (t!15549 l!956)) (is-Nil!9316 (t!15549 (t!15549 l!956)))))))

(assert (=> d!76979 (= (isStrictlySorted!419 (t!15549 l!956)) e!285118)))

(declare-fun b!484316 () Bool)

(declare-fun e!285119 () Bool)

(assert (=> b!484316 (= e!285118 e!285119)))

(declare-fun res!288615 () Bool)

(assert (=> b!484316 (=> (not res!288615) (not e!285119))))

(assert (=> b!484316 (= res!288615 (bvslt (_1!4629 (h!10171 (t!15549 l!956))) (_1!4629 (h!10171 (t!15549 (t!15549 l!956))))))))

(declare-fun b!484317 () Bool)

(assert (=> b!484317 (= e!285119 (isStrictlySorted!419 (t!15549 (t!15549 l!956))))))

(assert (= (and d!76979 (not res!288614)) b!484316))

(assert (= (and b!484316 res!288615) b!484317))

(declare-fun m!464899 () Bool)

(assert (=> b!484317 m!464899))

(assert (=> b!484265 d!76979))

(declare-fun d!76983 () Bool)

(declare-fun res!288624 () Bool)

(declare-fun e!285128 () Bool)

(assert (=> d!76983 (=> res!288624 e!285128)))

(assert (=> d!76983 (= res!288624 (and (is-Cons!9315 l!956) (= (_1!4629 (h!10171 l!956)) key!251)))))

(assert (=> d!76983 (= (containsKey!385 l!956 key!251) e!285128)))

(declare-fun b!484326 () Bool)

(declare-fun e!285129 () Bool)

(assert (=> b!484326 (= e!285128 e!285129)))

(declare-fun res!288625 () Bool)

(assert (=> b!484326 (=> (not res!288625) (not e!285129))))

(assert (=> b!484326 (= res!288625 (and (or (not (is-Cons!9315 l!956)) (bvsle (_1!4629 (h!10171 l!956)) key!251)) (is-Cons!9315 l!956) (bvslt (_1!4629 (h!10171 l!956)) key!251)))))

(declare-fun b!484327 () Bool)

(assert (=> b!484327 (= e!285129 (containsKey!385 (t!15549 l!956) key!251))))

(assert (= (and d!76983 (not res!288624)) b!484326))

(assert (= (and b!484326 res!288625) b!484327))

(assert (=> b!484327 m!464867))

(assert (=> b!484260 d!76983))

(declare-fun d!76991 () Bool)

(declare-fun res!288626 () Bool)

(declare-fun e!285130 () Bool)

(assert (=> d!76991 (=> res!288626 e!285130)))

(assert (=> d!76991 (= res!288626 (and (is-Cons!9315 (t!15549 l!956)) (= (_1!4629 (h!10171 (t!15549 l!956))) key!251)))))

(assert (=> d!76991 (= (containsKey!385 (t!15549 l!956) key!251) e!285130)))

(declare-fun b!484328 () Bool)

(declare-fun e!285131 () Bool)

(assert (=> b!484328 (= e!285130 e!285131)))

(declare-fun res!288627 () Bool)

(assert (=> b!484328 (=> (not res!288627) (not e!285131))))

(assert (=> b!484328 (= res!288627 (and (or (not (is-Cons!9315 (t!15549 l!956))) (bvsle (_1!4629 (h!10171 (t!15549 l!956))) key!251)) (is-Cons!9315 (t!15549 l!956)) (bvslt (_1!4629 (h!10171 (t!15549 l!956))) key!251)))))

(declare-fun b!484329 () Bool)

(assert (=> b!484329 (= e!285131 (containsKey!385 (t!15549 (t!15549 l!956)) key!251))))

(assert (= (and d!76991 (not res!288626)) b!484328))

(assert (= (and b!484328 res!288627) b!484329))

(declare-fun m!464903 () Bool)

(assert (=> b!484329 m!464903))

(assert (=> b!484263 d!76991))

(declare-fun d!76993 () Bool)

(declare-fun res!288628 () Bool)

(declare-fun e!285132 () Bool)

(assert (=> d!76993 (=> res!288628 e!285132)))

(assert (=> d!76993 (= res!288628 (or (is-Nil!9316 l!956) (is-Nil!9316 (t!15549 l!956))))))

(assert (=> d!76993 (= (isStrictlySorted!419 l!956) e!285132)))

(declare-fun b!484330 () Bool)

(declare-fun e!285133 () Bool)

(assert (=> b!484330 (= e!285132 e!285133)))

(declare-fun res!288629 () Bool)

(assert (=> b!484330 (=> (not res!288629) (not e!285133))))

(assert (=> b!484330 (= res!288629 (bvslt (_1!4629 (h!10171 l!956)) (_1!4629 (h!10171 (t!15549 l!956)))))))

(declare-fun b!484331 () Bool)

(assert (=> b!484331 (= e!285133 (isStrictlySorted!419 (t!15549 l!956)))))

(assert (= (and d!76993 (not res!288628)) b!484330))

(assert (= (and b!484330 res!288629) b!484331))

(assert (=> b!484331 m!464865))

(assert (=> start!43870 d!76993))

(declare-fun d!76995 () Bool)

(declare-fun lt!219350 () Int)

(assert (=> d!76995 (>= lt!219350 0)))

(declare-fun e!285136 () Int)

(assert (=> d!76995 (= lt!219350 e!285136)))

(declare-fun c!58172 () Bool)

(assert (=> d!76995 (= c!58172 (is-Nil!9316 (t!15549 l!956)))))

(assert (=> d!76995 (= (ListPrimitiveSize!64 (t!15549 l!956)) lt!219350)))

(declare-fun b!484336 () Bool)

(assert (=> b!484336 (= e!285136 0)))

(declare-fun b!484337 () Bool)

(assert (=> b!484337 (= e!285136 (+ 1 (ListPrimitiveSize!64 (t!15549 (t!15549 l!956)))))))

(assert (= (and d!76995 c!58172) b!484336))

(assert (= (and d!76995 (not c!58172)) b!484337))

(declare-fun m!464905 () Bool)

(assert (=> b!484337 m!464905))

(assert (=> b!484264 d!76995))

(declare-fun d!76997 () Bool)

(declare-fun lt!219351 () Int)

(assert (=> d!76997 (>= lt!219351 0)))

(declare-fun e!285137 () Int)

(assert (=> d!76997 (= lt!219351 e!285137)))

(declare-fun c!58173 () Bool)

(assert (=> d!76997 (= c!58173 (is-Nil!9316 l!956))))

(assert (=> d!76997 (= (ListPrimitiveSize!64 l!956) lt!219351)))

(declare-fun b!484338 () Bool)

(assert (=> b!484338 (= e!285137 0)))

(declare-fun b!484339 () Bool)

(assert (=> b!484339 (= e!285137 (+ 1 (ListPrimitiveSize!64 (t!15549 l!956))))))

(assert (= (and d!76997 c!58173) b!484338))

(assert (= (and d!76997 (not c!58173)) b!484339))

(assert (=> b!484339 m!464859))

(assert (=> b!484264 d!76997))

(declare-fun d!76999 () Bool)

(declare-fun e!285196 () Bool)

(assert (=> d!76999 e!285196))

(declare-fun res!288656 () Bool)

(assert (=> d!76999 (=> (not res!288656) (not e!285196))))

(declare-fun lt!219364 () List!9319)

(assert (=> d!76999 (= res!288656 (isStrictlySorted!419 lt!219364))))

(declare-fun e!285199 () List!9319)

(assert (=> d!76999 (= lt!219364 e!285199)))

(declare-fun c!58212 () Bool)

(assert (=> d!76999 (= c!58212 (and (is-Cons!9315 l!956) (bvslt (_1!4629 (h!10171 l!956)) key!251)))))

(assert (=> d!76999 (isStrictlySorted!419 l!956)))

(assert (=> d!76999 (= (insertStrictlySorted!238 l!956 key!251 value!166) lt!219364)))

(declare-fun b!484443 () Bool)

(declare-fun e!285195 () List!9319)

(assert (=> b!484443 (= e!285199 e!285195)))

(declare-fun c!58210 () Bool)

(assert (=> b!484443 (= c!58210 (and (is-Cons!9315 l!956) (= (_1!4629 (h!10171 l!956)) key!251)))))

(declare-fun b!484444 () Bool)

(declare-fun call!31143 () List!9319)

(assert (=> b!484444 (= e!285195 call!31143)))

(declare-fun b!484445 () Bool)

(declare-fun call!31144 () List!9319)

(assert (=> b!484445 (= e!285199 call!31144)))

(declare-fun b!484446 () Bool)

(declare-fun res!288657 () Bool)

(assert (=> b!484446 (=> (not res!288657) (not e!285196))))

(assert (=> b!484446 (= res!288657 (containsKey!385 lt!219364 key!251))))

(declare-fun b!484447 () Bool)

(declare-fun e!285198 () List!9319)

(declare-fun c!58213 () Bool)

(assert (=> b!484447 (= e!285198 (ite c!58210 (t!15549 l!956) (ite c!58213 (Cons!9315 (h!10171 l!956) (t!15549 l!956)) Nil!9316)))))

(declare-fun b!484448 () Bool)

(declare-fun e!285197 () List!9319)

(declare-fun call!31145 () List!9319)

(assert (=> b!484448 (= e!285197 call!31145)))

(declare-fun bm!31140 () Bool)

(assert (=> bm!31140 (= call!31145 call!31143)))

(declare-fun b!484449 () Bool)

(assert (=> b!484449 (= e!285198 (insertStrictlySorted!238 (t!15549 l!956) key!251 value!166))))

(declare-fun bm!31141 () Bool)

(assert (=> bm!31141 (= call!31143 call!31144)))

(declare-fun b!484450 () Bool)

(assert (=> b!484450 (= e!285197 call!31145)))

(declare-fun b!484451 () Bool)

(assert (=> b!484451 (= c!58213 (and (is-Cons!9315 l!956) (bvsgt (_1!4629 (h!10171 l!956)) key!251)))))

(assert (=> b!484451 (= e!285195 e!285197)))

(declare-fun b!484452 () Bool)

(declare-fun contains!2685 (List!9319 tuple2!9238) Bool)

(assert (=> b!484452 (= e!285196 (contains!2685 lt!219364 (tuple2!9239 key!251 value!166)))))

(declare-fun bm!31142 () Bool)

(declare-fun $colon$colon!123 (List!9319 tuple2!9238) List!9319)

(assert (=> bm!31142 (= call!31144 ($colon$colon!123 e!285198 (ite c!58212 (h!10171 l!956) (tuple2!9239 key!251 value!166))))))

(declare-fun c!58211 () Bool)

(assert (=> bm!31142 (= c!58211 c!58212)))

(assert (= (and d!76999 c!58212) b!484445))

(assert (= (and d!76999 (not c!58212)) b!484443))

(assert (= (and b!484443 c!58210) b!484444))

(assert (= (and b!484443 (not c!58210)) b!484451))

(assert (= (and b!484451 c!58213) b!484448))

(assert (= (and b!484451 (not c!58213)) b!484450))

(assert (= (or b!484448 b!484450) bm!31140))

(assert (= (or b!484444 bm!31140) bm!31141))

(assert (= (or b!484445 bm!31141) bm!31142))

(assert (= (and bm!31142 c!58211) b!484449))

(assert (= (and bm!31142 (not c!58211)) b!484447))

(assert (= (and d!76999 res!288656) b!484446))

(assert (= (and b!484446 res!288657) b!484452))

(declare-fun m!464933 () Bool)

(assert (=> bm!31142 m!464933))

(declare-fun m!464935 () Bool)

(assert (=> d!76999 m!464935))

(assert (=> d!76999 m!464869))

(declare-fun m!464937 () Bool)

(assert (=> b!484452 m!464937))

(declare-fun m!464939 () Bool)

(assert (=> b!484446 m!464939))

(declare-fun m!464941 () Bool)

(assert (=> b!484449 m!464941))

(assert (=> b!484261 d!76999))

(declare-fun b!484461 () Bool)

(declare-fun e!285206 () Bool)

(declare-fun tp!43546 () Bool)

(assert (=> b!484461 (= e!285206 (and tp_is_empty!13945 tp!43546))))

(assert (=> b!484262 (= tp!43534 e!285206)))

(assert (= (and b!484262 (is-Cons!9315 (t!15549 l!956))) b!484461))

(push 1)

