; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!484942 () Bool)

(assert start!484942)

(declare-fun tp!1349727 () Bool)

(declare-fun tp_is_empty!31665 () Bool)

(declare-fun b!4747644 () Bool)

(declare-fun e!2961369 () Bool)

(declare-fun tp_is_empty!31667 () Bool)

(assert (=> b!4747644 (= e!2961369 (and tp_is_empty!31665 tp_is_empty!31667 tp!1349727))))

(declare-fun b!4747645 () Bool)

(declare-fun res!2012513 () Bool)

(declare-fun e!2961370 () Bool)

(assert (=> b!4747645 (=> (not res!2012513) (not e!2961370))))

(declare-datatypes ((K!14383 0))(
  ( (K!14384 (val!19777 Int)) )
))
(declare-datatypes ((V!14629 0))(
  ( (V!14630 (val!19778 Int)) )
))
(declare-datatypes ((tuple2!54746 0))(
  ( (tuple2!54747 (_1!30667 K!14383) (_2!30667 V!14629)) )
))
(declare-datatypes ((List!53151 0))(
  ( (Nil!53027) (Cons!53027 (h!59424 tuple2!54746) (t!360461 List!53151)) )
))
(declare-fun l!14304 () List!53151)

(assert (=> b!4747645 (= res!2012513 (not (is-Nil!53027 l!14304)))))

(declare-fun b!4747646 () Bool)

(declare-fun res!2012514 () Bool)

(assert (=> b!4747646 (=> (not res!2012514) (not e!2961370))))

(declare-fun t!14174 () tuple2!54746)

(declare-fun noDuplicateKeys!2093 (List!53151) Bool)

(assert (=> b!4747646 (= res!2012514 (noDuplicateKeys!2093 (Cons!53027 t!14174 l!14304)))))

(declare-fun res!2012512 () Bool)

(assert (=> start!484942 (=> (not res!2012512) (not e!2961370))))

(assert (=> start!484942 (= res!2012512 (noDuplicateKeys!2093 l!14304))))

(assert (=> start!484942 e!2961370))

(assert (=> start!484942 e!2961369))

(assert (=> start!484942 (and tp_is_empty!31665 tp_is_empty!31667)))

(declare-datatypes ((ListMap!5435 0))(
  ( (ListMap!5436 (toList!6063 List!53151)) )
))
(declare-fun acc!1214 () ListMap!5435)

(declare-fun e!2961371 () Bool)

(declare-fun inv!68256 (ListMap!5435) Bool)

(assert (=> start!484942 (and (inv!68256 acc!1214) e!2961371)))

(declare-fun b!4747647 () Bool)

(declare-fun tp!1349726 () Bool)

(assert (=> b!4747647 (= e!2961371 tp!1349726)))

(declare-fun b!4747648 () Bool)

(assert (=> b!4747648 (= e!2961370 (not true))))

(declare-fun lt!1909678 () ListMap!5435)

(declare-fun lt!1909680 () ListMap!5435)

(declare-fun eq!1170 (ListMap!5435 ListMap!5435) Bool)

(declare-fun addToMapMapFromBucket!1519 (List!53151 ListMap!5435) ListMap!5435)

(declare-fun +!2329 (ListMap!5435 tuple2!54746) ListMap!5435)

(assert (=> b!4747648 (eq!1170 (addToMapMapFromBucket!1519 (Cons!53027 t!14174 (t!360461 l!14304)) lt!1909680) (+!2329 lt!1909678 t!14174))))

(declare-datatypes ((Unit!134497 0))(
  ( (Unit!134498) )
))
(declare-fun lt!1909679 () Unit!134497)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!417 (tuple2!54746 List!53151 ListMap!5435) Unit!134497)

(assert (=> b!4747648 (= lt!1909679 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!417 t!14174 (t!360461 l!14304) lt!1909680))))

(assert (=> b!4747648 (= lt!1909678 (addToMapMapFromBucket!1519 (t!360461 l!14304) lt!1909680))))

(assert (=> b!4747648 (= lt!1909680 (+!2329 acc!1214 (h!59424 l!14304)))))

(assert (= (and start!484942 res!2012512) b!4747646))

(assert (= (and b!4747646 res!2012514) b!4747645))

(assert (= (and b!4747645 res!2012513) b!4747648))

(assert (= (and start!484942 (is-Cons!53027 l!14304)) b!4747644))

(assert (= start!484942 b!4747647))

(declare-fun m!5705015 () Bool)

(assert (=> b!4747646 m!5705015))

(declare-fun m!5705017 () Bool)

(assert (=> start!484942 m!5705017))

(declare-fun m!5705019 () Bool)

(assert (=> start!484942 m!5705019))

(declare-fun m!5705021 () Bool)

(assert (=> b!4747648 m!5705021))

(declare-fun m!5705023 () Bool)

(assert (=> b!4747648 m!5705023))

(declare-fun m!5705025 () Bool)

(assert (=> b!4747648 m!5705025))

(declare-fun m!5705027 () Bool)

(assert (=> b!4747648 m!5705027))

(declare-fun m!5705029 () Bool)

(assert (=> b!4747648 m!5705029))

(declare-fun m!5705031 () Bool)

(assert (=> b!4747648 m!5705031))

(assert (=> b!4747648 m!5705027))

(assert (=> b!4747648 m!5705025))

(push 1)

(assert (not b!4747646))

(assert (not b!4747648))

(assert tp_is_empty!31665)

(assert (not b!4747647))

(assert (not start!484942))

(assert tp_is_empty!31667)

(assert (not b!4747644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

