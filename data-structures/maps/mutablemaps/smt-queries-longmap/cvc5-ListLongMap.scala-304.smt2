; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5302 () Bool)

(assert start!5302)

(assert (=> start!5302 true))

(assert (=> start!5302 true))

(declare-fun res!23011 () Bool)

(declare-fun e!24327 () Bool)

(assert (=> start!5302 (=> (not res!23011) (not e!24327))))

(declare-datatypes ((List!1035 0))(
  ( (Nil!1032) (Cons!1031 (h!1599 (_ BitVec 64)) (t!3876 List!1035)) )
))
(declare-fun lt!14110 () List!1035)

(declare-fun lambda!232 () Int)

(declare-fun forall!182 (List!1035 Int) Bool)

(assert (=> start!5302 (= res!23011 (forall!182 lt!14110 lambda!232))))

(declare-datatypes ((B!812 0))(
  ( (B!813 (val!906 Int)) )
))
(declare-datatypes ((tuple2!1476 0))(
  ( (tuple2!1477 (_1!748 (_ BitVec 64)) (_2!748 B!812)) )
))
(declare-datatypes ((List!1036 0))(
  ( (Nil!1033) (Cons!1032 (h!1600 tuple2!1476) (t!3877 List!1036)) )
))
(declare-datatypes ((ListLongMap!1057 0))(
  ( (ListLongMap!1058 (toList!544 List!1036)) )
))
(declare-fun lm!266 () ListLongMap!1057)

(declare-fun value!232 () B!812)

(declare-fun getKeysOf!4 (List!1036 B!812) List!1035)

(assert (=> start!5302 (= lt!14110 (getKeysOf!4 (toList!544 lm!266) value!232))))

(assert (=> start!5302 e!24327))

(declare-fun e!24326 () Bool)

(declare-fun inv!1731 (ListLongMap!1057) Bool)

(assert (=> start!5302 (and (inv!1731 lm!266) e!24326)))

(declare-fun tp_is_empty!1735 () Bool)

(assert (=> start!5302 tp_is_empty!1735))

(declare-fun b!38270 () Bool)

(assert (=> b!38270 (= e!24327 (not (forall!182 lt!14110 lambda!232)))))

(declare-fun b!38271 () Bool)

(declare-fun tp!5705 () Bool)

(assert (=> b!38271 (= e!24326 tp!5705)))

(assert (= (and start!5302 res!23011) b!38270))

(assert (= start!5302 b!38271))

(declare-fun m!30881 () Bool)

(assert (=> start!5302 m!30881))

(declare-fun m!30883 () Bool)

(assert (=> start!5302 m!30883))

(declare-fun m!30885 () Bool)

(assert (=> start!5302 m!30885))

(assert (=> b!38270 m!30881))

(push 1)

(assert (not b!38270))

(assert (not start!5302))

(assert (not b!38271))

(assert tp_is_empty!1735)

(check-sat)

(pop 1)

