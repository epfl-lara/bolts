; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5306 () Bool)

(assert start!5306)

(assert (=> start!5306 true))

(assert (=> start!5306 true))

(declare-fun res!23017 () Bool)

(declare-fun e!24338 () Bool)

(assert (=> start!5306 (=> (not res!23017) (not e!24338))))

(declare-datatypes ((List!1039 0))(
  ( (Nil!1036) (Cons!1035 (h!1603 (_ BitVec 64)) (t!3880 List!1039)) )
))
(declare-fun lt!14116 () List!1039)

(declare-fun lambda!242 () Int)

(declare-fun forall!184 (List!1039 Int) Bool)

(assert (=> start!5306 (= res!23017 (forall!184 lt!14116 lambda!242))))

(declare-datatypes ((B!816 0))(
  ( (B!817 (val!908 Int)) )
))
(declare-datatypes ((tuple2!1480 0))(
  ( (tuple2!1481 (_1!750 (_ BitVec 64)) (_2!750 B!816)) )
))
(declare-datatypes ((List!1040 0))(
  ( (Nil!1037) (Cons!1036 (h!1604 tuple2!1480) (t!3881 List!1040)) )
))
(declare-datatypes ((ListLongMap!1061 0))(
  ( (ListLongMap!1062 (toList!546 List!1040)) )
))
(declare-fun lm!266 () ListLongMap!1061)

(declare-fun value!232 () B!816)

(declare-fun getKeysOf!6 (List!1040 B!816) List!1039)

(assert (=> start!5306 (= lt!14116 (getKeysOf!6 (toList!546 lm!266) value!232))))

(assert (=> start!5306 e!24338))

(declare-fun e!24339 () Bool)

(declare-fun inv!1733 (ListLongMap!1061) Bool)

(assert (=> start!5306 (and (inv!1733 lm!266) e!24339)))

(declare-fun tp_is_empty!1739 () Bool)

(assert (=> start!5306 tp_is_empty!1739))

(declare-fun b!38290 () Bool)

(assert (=> b!38290 (= e!24338 (not (forall!184 lt!14116 lambda!242)))))

(declare-fun b!38291 () Bool)

(declare-fun tp!5711 () Bool)

(assert (=> b!38291 (= e!24339 tp!5711)))

(assert (= (and start!5306 res!23017) b!38290))

(assert (= start!5306 b!38291))

(declare-fun m!30893 () Bool)

(assert (=> start!5306 m!30893))

(declare-fun m!30895 () Bool)

(assert (=> start!5306 m!30895))

(declare-fun m!30897 () Bool)

(assert (=> start!5306 m!30897))

(assert (=> b!38290 m!30893))

(push 1)

(assert (not start!5306))

(assert (not b!38290))

(assert (not b!38291))

(assert tp_is_empty!1739)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

