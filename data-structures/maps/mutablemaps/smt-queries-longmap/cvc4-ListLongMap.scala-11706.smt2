; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136970 () Bool)

(assert start!136970)

(declare-datatypes ((B!2580 0))(
  ( (B!2581 (val!19652 Int)) )
))
(declare-datatypes ((tuple2!25570 0))(
  ( (tuple2!25571 (_1!12795 (_ BitVec 64)) (_2!12795 B!2580)) )
))
(declare-datatypes ((List!36933 0))(
  ( (Nil!36930) (Cons!36929 (h!38473 tuple2!25570) (t!51854 List!36933)) )
))
(declare-datatypes ((ListLongMap!22921 0))(
  ( (ListLongMap!22922 (toList!11476 List!36933)) )
))
(declare-fun thiss!201 () ListLongMap!22921)

(declare-fun isStrictlySorted!1031 (List!36933) Bool)

(assert (=> start!136970 (not (isStrictlySorted!1031 (toList!11476 thiss!201)))))

(declare-fun e!880896 () Bool)

(declare-fun inv!58938 (ListLongMap!22921) Bool)

(assert (=> start!136970 (and (inv!58938 thiss!201) e!880896)))

(declare-fun b!1579121 () Bool)

(declare-fun tp!114304 () Bool)

(assert (=> b!1579121 (= e!880896 tp!114304)))

(assert (= start!136970 b!1579121))

(declare-fun m!1451047 () Bool)

(assert (=> start!136970 m!1451047))

(declare-fun m!1451049 () Bool)

(assert (=> start!136970 m!1451049))

(push 1)

(assert (not start!136970))

(assert (not b!1579121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166173 () Bool)

(declare-fun res!1079035 () Bool)

(declare-fun e!880916 () Bool)

(assert (=> d!166173 (=> res!1079035 e!880916)))

(assert (=> d!166173 (= res!1079035 (or (is-Nil!36930 (toList!11476 thiss!201)) (is-Nil!36930 (t!51854 (toList!11476 thiss!201)))))))

(assert (=> d!166173 (= (isStrictlySorted!1031 (toList!11476 thiss!201)) e!880916)))

(declare-fun b!1579143 () Bool)

(declare-fun e!880917 () Bool)

(assert (=> b!1579143 (= e!880916 e!880917)))

(declare-fun res!1079036 () Bool)

(assert (=> b!1579143 (=> (not res!1079036) (not e!880917))))

(assert (=> b!1579143 (= res!1079036 (bvslt (_1!12795 (h!38473 (toList!11476 thiss!201))) (_1!12795 (h!38473 (t!51854 (toList!11476 thiss!201))))))))

(declare-fun b!1579144 () Bool)

(assert (=> b!1579144 (= e!880917 (isStrictlySorted!1031 (t!51854 (toList!11476 thiss!201))))))

(assert (= (and d!166173 (not res!1079035)) b!1579143))

(assert (= (and b!1579143 res!1079036) b!1579144))

(declare-fun m!1451055 () Bool)

(assert (=> b!1579144 m!1451055))

