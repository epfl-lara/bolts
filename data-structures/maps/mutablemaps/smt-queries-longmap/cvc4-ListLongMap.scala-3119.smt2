; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43874 () Bool)

(assert start!43874)

(declare-fun b!484296 () Bool)

(declare-fun res!288597 () Bool)

(declare-fun e!285102 () Bool)

(assert (=> b!484296 (=> (not res!288597) (not e!285102))))

(declare-datatypes ((B!1140 0))(
  ( (B!1141 (val!7022 Int)) )
))
(declare-datatypes ((tuple2!9242 0))(
  ( (tuple2!9243 (_1!4631 (_ BitVec 64)) (_2!4631 B!1140)) )
))
(declare-datatypes ((List!9321 0))(
  ( (Nil!9318) (Cons!9317 (h!10173 tuple2!9242) (t!15551 List!9321)) )
))
(declare-fun l!956 () List!9321)

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!387 (List!9321 (_ BitVec 64)) Bool)

(assert (=> b!484296 (= res!288597 (not (containsKey!387 l!956 key!251)))))

(declare-fun b!484297 () Bool)

(declare-fun e!285101 () Bool)

(assert (=> b!484297 (= e!285102 e!285101)))

(declare-fun res!288598 () Bool)

(assert (=> b!484297 (=> (not res!288598) (not e!285101))))

(assert (=> b!484297 (= res!288598 (and (is-Cons!9317 l!956) (bvslt (_1!4631 (h!10173 l!956)) key!251)))))

(declare-fun lt!219347 () List!9321)

(declare-fun value!166 () B!1140)

(declare-fun insertStrictlySorted!240 (List!9321 (_ BitVec 64) B!1140) List!9321)

(assert (=> b!484297 (= lt!219347 (insertStrictlySorted!240 l!956 key!251 value!166))))

(declare-fun res!288595 () Bool)

(assert (=> start!43874 (=> (not res!288595) (not e!285102))))

(declare-fun isStrictlySorted!421 (List!9321) Bool)

(assert (=> start!43874 (= res!288595 (isStrictlySorted!421 l!956))))

(assert (=> start!43874 e!285102))

(declare-fun e!285103 () Bool)

(assert (=> start!43874 e!285103))

(assert (=> start!43874 true))

(declare-fun tp_is_empty!13949 () Bool)

(assert (=> start!43874 tp_is_empty!13949))

(declare-fun b!484298 () Bool)

(declare-fun tp!43540 () Bool)

(assert (=> b!484298 (= e!285103 (and tp_is_empty!13949 tp!43540))))

(declare-fun b!484299 () Bool)

(declare-fun res!288599 () Bool)

(assert (=> b!484299 (=> (not res!288599) (not e!285101))))

(assert (=> b!484299 (= res!288599 (isStrictlySorted!421 (t!15551 l!956)))))

(declare-fun b!484300 () Bool)

(declare-fun ListPrimitiveSize!66 (List!9321) Int)

(assert (=> b!484300 (= e!285101 (>= (ListPrimitiveSize!66 (t!15551 l!956)) (ListPrimitiveSize!66 l!956)))))

(declare-fun b!484301 () Bool)

(declare-fun res!288596 () Bool)

(assert (=> b!484301 (=> (not res!288596) (not e!285101))))

(assert (=> b!484301 (= res!288596 (not (containsKey!387 (t!15551 l!956) key!251)))))

(assert (= (and start!43874 res!288595) b!484296))

(assert (= (and b!484296 res!288597) b!484297))

(assert (= (and b!484297 res!288598) b!484299))

(assert (= (and b!484299 res!288599) b!484301))

(assert (= (and b!484301 res!288596) b!484300))

(assert (= (and start!43874 (is-Cons!9317 l!956)) b!484298))

(declare-fun m!464885 () Bool)

(assert (=> b!484299 m!464885))

(declare-fun m!464887 () Bool)

(assert (=> b!484296 m!464887))

(declare-fun m!464889 () Bool)

(assert (=> start!43874 m!464889))

(declare-fun m!464891 () Bool)

(assert (=> b!484301 m!464891))

(declare-fun m!464893 () Bool)

(assert (=> b!484297 m!464893))

(declare-fun m!464895 () Bool)

(assert (=> b!484300 m!464895))

(declare-fun m!464897 () Bool)

(assert (=> b!484300 m!464897))

(push 1)

(assert (not b!484298))

(assert tp_is_empty!13949)

(assert (not b!484296))

(assert (not b!484297))

(assert (not start!43874))

(assert (not b!484299))

(assert (not b!484300))

(assert (not b!484301))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!31128 () Bool)

(declare-fun call!31131 () List!9321)

(declare-fun call!31132 () List!9321)

(assert (=> bm!31128 (= call!31131 call!31132)))

(declare-fun b!484392 () Bool)

(declare-fun c!58196 () Bool)

(assert (=> b!484392 (= c!58196 (and (is-Cons!9317 l!956) (bvsgt (_1!4631 (h!10173 l!956)) key!251)))))

(declare-fun e!285164 () List!9321)

(declare-fun e!285167 () List!9321)

(assert (=> b!484392 (= e!285164 e!285167)))

(declare-fun b!484393 () Bool)

(assert (=> b!484393 (= e!285167 call!31131)))

(declare-fun b!484394 () Bool)

(declare-fun res!288638 () Bool)

(declare-fun e!285168 () Bool)

(assert (=> b!484394 (=> (not res!288638) (not e!285168))))

(declare-fun lt!219358 () List!9321)

(assert (=> b!484394 (= res!288638 (containsKey!387 lt!219358 key!251))))

(declare-fun d!76985 () Bool)

(assert (=> d!76985 e!285168))

(declare-fun res!288639 () Bool)

(assert (=> d!76985 (=> (not res!288639) (not e!285168))))

(assert (=> d!76985 (= res!288639 (isStrictlySorted!421 lt!219358))))

(declare-fun e!285165 () List!9321)

(assert (=> d!76985 (= lt!219358 e!285165)))

(declare-fun c!58199 () Bool)

(assert (=> d!76985 (= c!58199 (and (is-Cons!9317 l!956) (bvslt (_1!4631 (h!10173 l!956)) key!251)))))

(assert (=> d!76985 (isStrictlySorted!421 l!956)))

(assert (=> d!76985 (= (insertStrictlySorted!240 l!956 key!251 value!166) lt!219358)))

(declare-fun bm!31129 () Bool)

(declare-fun call!31133 () List!9321)

(assert (=> bm!31129 (= call!31132 call!31133)))

(declare-fun e!285166 () List!9321)

(declare-fun b!484395 () Bool)

(assert (=> b!484395 (= e!285166 (insertStrictlySorted!240 (t!15551 l!956) key!251 value!166))))

(declare-fun b!484396 () Bool)

(assert (=> b!484396 (= e!285165 call!31133)))

(declare-fun b!484397 () Bool)

(declare-fun contains!2684 (List!9321 tuple2!9242) Bool)

(assert (=> b!484397 (= e!285168 (contains!2684 lt!219358 (tuple2!9243 key!251 value!166)))))

(declare-fun bm!31130 () Bool)

(declare-fun $colon$colon!122 (List!9321 tuple2!9242) List!9321)

(assert (=> bm!31130 (= call!31133 ($colon$colon!122 e!285166 (ite c!58199 (h!10173 l!956) (tuple2!9243 key!251 value!166))))))

(declare-fun c!58197 () Bool)

(assert (=> bm!31130 (= c!58197 c!58199)))

(declare-fun b!484398 () Bool)

(assert (=> b!484398 (= e!285165 e!285164)))

(declare-fun c!58198 () Bool)

(assert (=> b!484398 (= c!58198 (and (is-Cons!9317 l!956) (= (_1!4631 (h!10173 l!956)) key!251)))))

(declare-fun b!484399 () Bool)

(assert (=> b!484399 (= e!285167 call!31131)))

(declare-fun b!484400 () Bool)

(assert (=> b!484400 (= e!285166 (ite c!58198 (t!15551 l!956) (ite c!58196 (Cons!9317 (h!10173 l!956) (t!15551 l!956)) Nil!9318)))))

(declare-fun b!484401 () Bool)

(assert (=> b!484401 (= e!285164 call!31132)))

(assert (= (and d!76985 c!58199) b!484396))

(assert (= (and d!76985 (not c!58199)) b!484398))

(assert (= (and b!484398 c!58198) b!484401))

(assert (= (and b!484398 (not c!58198)) b!484392))

(assert (= (and b!484392 c!58196) b!484393))

(assert (= (and b!484392 (not c!58196)) b!484399))

(assert (= (or b!484393 b!484399) bm!31128))

(assert (= (or b!484401 bm!31128) bm!31129))

(assert (= (or b!484396 bm!31129) bm!31130))

(assert (= (and bm!31130 c!58197) b!484395))

(assert (= (and bm!31130 (not c!58197)) b!484400))

(assert (= (and d!76985 res!288639) b!484394))

(assert (= (and b!484394 res!288638) b!484397))

(declare-fun m!464907 () Bool)

(assert (=> d!76985 m!464907))

(assert (=> d!76985 m!464889))

(declare-fun m!464909 () Bool)

(assert (=> bm!31130 m!464909))

(declare-fun m!464911 () Bool)

(assert (=> b!484394 m!464911))

(declare-fun m!464913 () Bool)

(assert (=> b!484397 m!464913))

(declare-fun m!464915 () Bool)

(assert (=> b!484395 m!464915))

(assert (=> b!484297 d!76985))

(declare-fun d!77001 () Bool)

(declare-fun res!288650 () Bool)

(declare-fun e!285186 () Bool)

(assert (=> d!77001 (=> res!288650 e!285186)))

(assert (=> d!77001 (= res!288650 (and (is-Cons!9317 (t!15551 l!956)) (= (_1!4631 (h!10173 (t!15551 l!956))) key!251)))))

(assert (=> d!77001 (= (containsKey!387 (t!15551 l!956) key!251) e!285186)))

(declare-fun b!484432 () Bool)

(declare-fun e!285187 () Bool)

(assert (=> b!484432 (= e!285186 e!285187)))

(declare-fun res!288651 () Bool)

(assert (=> b!484432 (=> (not res!288651) (not e!285187))))

(assert (=> b!484432 (= res!288651 (and (or (not (is-Cons!9317 (t!15551 l!956))) (bvsle (_1!4631 (h!10173 (t!15551 l!956))) key!251)) (is-Cons!9317 (t!15551 l!956)) (bvslt (_1!4631 (h!10173 (t!15551 l!956))) key!251)))))

(declare-fun b!484433 () Bool)

(assert (=> b!484433 (= e!285187 (containsKey!387 (t!15551 (t!15551 l!956)) key!251))))

(assert (= (and d!77001 (not res!288650)) b!484432))

(assert (= (and b!484432 res!288651) b!484433))

(declare-fun m!464929 () Bool)

(assert (=> b!484433 m!464929))

(assert (=> b!484301 d!77001))

(declare-fun d!77009 () Bool)

(declare-fun res!288654 () Bool)

(declare-fun e!285190 () Bool)

(assert (=> d!77009 (=> res!288654 e!285190)))

(assert (=> d!77009 (= res!288654 (and (is-Cons!9317 l!956) (= (_1!4631 (h!10173 l!956)) key!251)))))

(assert (=> d!77009 (= (containsKey!387 l!956 key!251) e!285190)))

(declare-fun b!484436 () Bool)

(declare-fun e!285191 () Bool)

(assert (=> b!484436 (= e!285190 e!285191)))

(declare-fun res!288655 () Bool)

(assert (=> b!484436 (=> (not res!288655) (not e!285191))))

(assert (=> b!484436 (= res!288655 (and (or (not (is-Cons!9317 l!956)) (bvsle (_1!4631 (h!10173 l!956)) key!251)) (is-Cons!9317 l!956) (bvslt (_1!4631 (h!10173 l!956)) key!251)))))

(declare-fun b!484437 () Bool)

(assert (=> b!484437 (= e!285191 (containsKey!387 (t!15551 l!956) key!251))))

(assert (= (and d!77009 (not res!288654)) b!484436))

(assert (= (and b!484436 res!288655) b!484437))

(assert (=> b!484437 m!464891))

(assert (=> b!484296 d!77009))

(declare-fun d!77011 () Bool)

(declare-fun res!288662 () Bool)

(declare-fun e!285207 () Bool)

(assert (=> d!77011 (=> res!288662 e!285207)))

(assert (=> d!77011 (= res!288662 (or (is-Nil!9318 (t!15551 l!956)) (is-Nil!9318 (t!15551 (t!15551 l!956)))))))

(assert (=> d!77011 (= (isStrictlySorted!421 (t!15551 l!956)) e!285207)))

(declare-fun b!484462 () Bool)

(declare-fun e!285208 () Bool)

(assert (=> b!484462 (= e!285207 e!285208)))

(declare-fun res!288663 () Bool)

(assert (=> b!484462 (=> (not res!288663) (not e!285208))))

(assert (=> b!484462 (= res!288663 (bvslt (_1!4631 (h!10173 (t!15551 l!956))) (_1!4631 (h!10173 (t!15551 (t!15551 l!956))))))))

