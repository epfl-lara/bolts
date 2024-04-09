; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75120 () Bool)

(assert start!75120)

(declare-fun b!885139 () Bool)

(declare-fun res!601299 () Bool)

(declare-fun e!492650 () Bool)

(assert (=> b!885139 (=> (not res!601299) (not e!492650))))

(declare-datatypes ((B!1248 0))(
  ( (B!1249 (val!8930 Int)) )
))
(declare-datatypes ((tuple2!11880 0))(
  ( (tuple2!11881 (_1!5950 (_ BitVec 64)) (_2!5950 B!1248)) )
))
(declare-datatypes ((List!17730 0))(
  ( (Nil!17727) (Cons!17726 (h!18857 tuple2!11880) (t!25015 List!17730)) )
))
(declare-fun l!906 () List!17730)

(declare-fun key1!49 () (_ BitVec 64))

(assert (=> b!885139 (= res!601299 (and (is-Cons!17726 l!906) (bvslt (_1!5950 (h!18857 l!906)) key1!49)))))

(declare-fun res!601301 () Bool)

(assert (=> start!75120 (=> (not res!601301) (not e!492650))))

(declare-fun isStrictlySorted!466 (List!17730) Bool)

(assert (=> start!75120 (= res!601301 (isStrictlySorted!466 l!906))))

(assert (=> start!75120 e!492650))

(declare-fun e!492649 () Bool)

(assert (=> start!75120 e!492649))

(assert (=> start!75120 true))

(declare-fun tp_is_empty!17759 () Bool)

(assert (=> start!75120 tp_is_empty!17759))

(declare-fun b!885140 () Bool)

(declare-fun res!601300 () Bool)

(assert (=> b!885140 (=> (not res!601300) (not e!492650))))

(assert (=> b!885140 (= res!601300 (isStrictlySorted!466 (t!25015 l!906)))))

(declare-fun b!885141 () Bool)

(assert (=> b!885141 (= e!492650 (not true))))

(declare-fun v2!16 () B!1248)

(declare-fun v1!38 () B!1248)

(declare-fun insertStrictlySorted!287 (List!17730 (_ BitVec 64) B!1248) List!17730)

(assert (=> b!885141 (= (insertStrictlySorted!287 (insertStrictlySorted!287 (t!25015 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!287 (t!25015 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30191 0))(
  ( (Unit!30192) )
))
(declare-fun lt!400935 () Unit!30191)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!6 (List!17730 (_ BitVec 64) B!1248 B!1248) Unit!30191)

(assert (=> b!885141 (= lt!400935 (lemmaInsertStrictlySortedErasesIfSameKey!6 (t!25015 l!906) key1!49 v1!38 v2!16))))

(declare-fun b!885142 () Bool)

(declare-fun tp!54246 () Bool)

(assert (=> b!885142 (= e!492649 (and tp_is_empty!17759 tp!54246))))

(assert (= (and start!75120 res!601301) b!885139))

(assert (= (and b!885139 res!601299) b!885140))

(assert (= (and b!885140 res!601300) b!885141))

(assert (= (and start!75120 (is-Cons!17726 l!906)) b!885142))

(declare-fun m!825503 () Bool)

(assert (=> start!75120 m!825503))

(declare-fun m!825505 () Bool)

(assert (=> b!885140 m!825505))

(declare-fun m!825507 () Bool)

(assert (=> b!885141 m!825507))

(assert (=> b!885141 m!825507))

(declare-fun m!825509 () Bool)

(assert (=> b!885141 m!825509))

(declare-fun m!825511 () Bool)

(assert (=> b!885141 m!825511))

(declare-fun m!825513 () Bool)

(assert (=> b!885141 m!825513))

(push 1)

(assert (not b!885140))

(assert (not b!885142))

(assert (not b!885141))

(assert (not start!75120))

(assert tp_is_empty!17759)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

