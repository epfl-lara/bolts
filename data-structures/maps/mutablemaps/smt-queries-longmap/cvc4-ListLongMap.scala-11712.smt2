; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137108 () Bool)

(assert start!137108)

(declare-fun b!1579807 () Bool)

(declare-fun e!881327 () Bool)

(declare-fun e!881326 () Bool)

(assert (=> b!1579807 (= e!881327 e!881326)))

(declare-fun res!1079286 () Bool)

(assert (=> b!1579807 (=> (not res!1079286) (not e!881326))))

(declare-datatypes ((B!2616 0))(
  ( (B!2617 (val!19670 Int)) )
))
(declare-datatypes ((tuple2!25610 0))(
  ( (tuple2!25611 (_1!12815 (_ BitVec 64)) (_2!12815 B!2616)) )
))
(declare-datatypes ((List!36951 0))(
  ( (Nil!36948) (Cons!36947 (h!38491 tuple2!25610) (t!51872 List!36951)) )
))
(declare-datatypes ((tuple2!25612 0))(
  ( (tuple2!25613 (_1!12816 tuple2!25610) (_2!12816 List!36951)) )
))
(declare-datatypes ((Option!890 0))(
  ( (Some!889 (v!22380 tuple2!25612)) (None!888) )
))
(declare-fun lt!676570 () Option!890)

(declare-fun isEmpty!1158 (Option!890) Bool)

(assert (=> b!1579807 (= res!1079286 (not (isEmpty!1158 lt!676570)))))

(declare-fun l!1390 () List!36951)

(declare-fun unapply!72 (List!36951) Option!890)

(assert (=> b!1579807 (= lt!676570 (unapply!72 l!1390))))

(declare-fun b!1579808 () Bool)

(declare-fun res!1079287 () Bool)

(assert (=> b!1579808 (=> (not res!1079287) (not e!881327))))

(declare-fun key!405 () (_ BitVec 64))

(declare-fun value!194 () B!2616)

(declare-fun contains!10479 (List!36951 tuple2!25610) Bool)

(assert (=> b!1579808 (= res!1079287 (contains!10479 l!1390 (tuple2!25611 key!405 value!194)))))

(declare-fun b!1579809 () Bool)

(declare-fun e!881328 () Bool)

(declare-fun tp_is_empty!39161 () Bool)

(declare-fun tp!114394 () Bool)

(assert (=> b!1579809 (= e!881328 (and tp_is_empty!39161 tp!114394))))

(declare-fun b!1579810 () Bool)

(declare-fun res!1079285 () Bool)

(assert (=> b!1579810 (=> (not res!1079285) (not e!881327))))

(declare-fun containsKey!892 (List!36951 (_ BitVec 64)) Bool)

(assert (=> b!1579810 (= res!1079285 (containsKey!892 l!1390 key!405))))

(declare-fun res!1079288 () Bool)

(assert (=> start!137108 (=> (not res!1079288) (not e!881327))))

(declare-fun isStrictlySorted!1046 (List!36951) Bool)

(assert (=> start!137108 (= res!1079288 (isStrictlySorted!1046 l!1390))))

(assert (=> start!137108 e!881327))

(assert (=> start!137108 e!881328))

(assert (=> start!137108 true))

(assert (=> start!137108 tp_is_empty!39161))

(declare-fun b!1579811 () Bool)

(declare-fun isDefined!595 (Option!890) Bool)

(assert (=> b!1579811 (= e!881326 (not (isDefined!595 lt!676570)))))

(assert (= (and start!137108 res!1079288) b!1579810))

(assert (= (and b!1579810 res!1079285) b!1579808))

(assert (= (and b!1579808 res!1079287) b!1579807))

(assert (= (and b!1579807 res!1079286) b!1579811))

(assert (= (and start!137108 (is-Cons!36947 l!1390)) b!1579809))

(declare-fun m!1451453 () Bool)

(assert (=> b!1579808 m!1451453))

(declare-fun m!1451455 () Bool)

(assert (=> b!1579807 m!1451455))

(declare-fun m!1451457 () Bool)

(assert (=> b!1579807 m!1451457))

(declare-fun m!1451459 () Bool)

(assert (=> b!1579810 m!1451459))

(declare-fun m!1451461 () Bool)

(assert (=> b!1579811 m!1451461))

(declare-fun m!1451463 () Bool)

(assert (=> start!137108 m!1451463))

(push 1)

(assert (not b!1579808))

(assert (not start!137108))

(assert (not b!1579810))

(assert (not b!1579807))

(assert tp_is_empty!39161)

(assert (not b!1579811))

(assert (not b!1579809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166293 () Bool)

(declare-fun lt!676573 () Bool)

(declare-fun content!832 (List!36951) (Set tuple2!25610))

(assert (=> d!166293 (= lt!676573 (member (tuple2!25611 key!405 value!194) (content!832 l!1390)))))

(declare-fun e!881346 () Bool)

(assert (=> d!166293 (= lt!676573 e!881346)))

(declare-fun res!1079305 () Bool)

(assert (=> d!166293 (=> (not res!1079305) (not e!881346))))

(assert (=> d!166293 (= res!1079305 (is-Cons!36947 l!1390))))

(assert (=> d!166293 (= (contains!10479 l!1390 (tuple2!25611 key!405 value!194)) lt!676573)))

(declare-fun b!1579828 () Bool)

(declare-fun e!881345 () Bool)

(assert (=> b!1579828 (= e!881346 e!881345)))

(declare-fun res!1079306 () Bool)

(assert (=> b!1579828 (=> res!1079306 e!881345)))

(assert (=> b!1579828 (= res!1079306 (= (h!38491 l!1390) (tuple2!25611 key!405 value!194)))))

(declare-fun b!1579829 () Bool)

(assert (=> b!1579829 (= e!881345 (contains!10479 (t!51872 l!1390) (tuple2!25611 key!405 value!194)))))

(assert (= (and d!166293 res!1079305) b!1579828))

(assert (= (and b!1579828 (not res!1079306)) b!1579829))

(declare-fun m!1451469 () Bool)

(assert (=> d!166293 m!1451469))

(declare-fun m!1451471 () Bool)

(assert (=> d!166293 m!1451471))

(declare-fun m!1451473 () Bool)

(assert (=> b!1579829 m!1451473))

(assert (=> b!1579808 d!166293))

(declare-fun d!166303 () Bool)

(declare-fun res!1079315 () Bool)

(declare-fun e!881355 () Bool)

(assert (=> d!166303 (=> res!1079315 e!881355)))

(assert (=> d!166303 (= res!1079315 (or (is-Nil!36948 l!1390) (is-Nil!36948 (t!51872 l!1390))))))

(assert (=> d!166303 (= (isStrictlySorted!1046 l!1390) e!881355)))

(declare-fun b!1579836 () Bool)

(declare-fun e!881356 () Bool)

(assert (=> b!1579836 (= e!881355 e!881356)))

(declare-fun res!1079316 () Bool)

(assert (=> b!1579836 (=> (not res!1079316) (not e!881356))))

(assert (=> b!1579836 (= res!1079316 (bvslt (_1!12815 (h!38491 l!1390)) (_1!12815 (h!38491 (t!51872 l!1390)))))))

(declare-fun b!1579837 () Bool)

(assert (=> b!1579837 (= e!881356 (isStrictlySorted!1046 (t!51872 l!1390)))))

(assert (= (and d!166303 (not res!1079315)) b!1579836))

(assert (= (and b!1579836 res!1079316) b!1579837))

(declare-fun m!1451475 () Bool)

(assert (=> b!1579837 m!1451475))

(assert (=> start!137108 d!166303))

(declare-fun d!166311 () Bool)

(assert (=> d!166311 (= (isDefined!595 lt!676570) (not (isEmpty!1158 lt!676570)))))

(declare-fun bs!45755 () Bool)

(assert (= bs!45755 d!166311))

(assert (=> bs!45755 m!1451455))

(assert (=> b!1579811 d!166311))

(declare-fun d!166313 () Bool)

(declare-fun res!1079337 () Bool)

(declare-fun e!881377 () Bool)

(assert (=> d!166313 (=> res!1079337 e!881377)))

(assert (=> d!166313 (= res!1079337 (and (is-Cons!36947 l!1390) (= (_1!12815 (h!38491 l!1390)) key!405)))))

(assert (=> d!166313 (= (containsKey!892 l!1390 key!405) e!881377)))

(declare-fun b!1579860 () Bool)

(declare-fun e!881378 () Bool)

(assert (=> b!1579860 (= e!881377 e!881378)))

(declare-fun res!1079338 () Bool)

(assert (=> b!1579860 (=> (not res!1079338) (not e!881378))))

(assert (=> b!1579860 (= res!1079338 (and (or (not (is-Cons!36947 l!1390)) (bvsle (_1!12815 (h!38491 l!1390)) key!405)) (is-Cons!36947 l!1390) (bvslt (_1!12815 (h!38491 l!1390)) key!405)))))

(declare-fun b!1579861 () Bool)

(assert (=> b!1579861 (= e!881378 (containsKey!892 (t!51872 l!1390) key!405))))

(assert (= (and d!166313 (not res!1079337)) b!1579860))

(assert (= (and b!1579860 res!1079338) b!1579861))

(declare-fun m!1451481 () Bool)

(assert (=> b!1579861 m!1451481))

(assert (=> b!1579810 d!166313))

(declare-fun d!166319 () Bool)

(assert (=> d!166319 (= (isEmpty!1158 lt!676570) (not (is-Some!889 lt!676570)))))

(assert (=> b!1579807 d!166319))

(declare-fun d!166323 () Bool)

(assert (=> d!166323 (= (unapply!72 l!1390) (ite (is-Nil!36948 l!1390) None!888 (Some!889 (tuple2!25613 (h!38491 l!1390) (t!51872 l!1390)))))))

(assert (=> b!1579807 d!166323))

(declare-fun b!1579880 () Bool)

(declare-fun e!881391 () Bool)

(declare-fun tp!114403 () Bool)

(assert (=> b!1579880 (= e!881391 (and tp_is_empty!39161 tp!114403))))

(assert (=> b!1579809 (= tp!114394 e!881391)))

(assert (= (and b!1579809 (is-Cons!36947 (t!51872 l!1390))) b!1579880))

(push 1)

