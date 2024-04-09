; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137780 () Bool)

(assert start!137780)

(declare-fun b!1582566 () Bool)

(declare-fun e!883289 () Bool)

(declare-fun tp_is_empty!39341 () Bool)

(declare-fun tp!114829 () Bool)

(assert (=> b!1582566 (= e!883289 (and tp_is_empty!39341 tp!114829))))

(declare-fun b!1582567 () Bool)

(declare-fun res!1081228 () Bool)

(declare-fun e!883290 () Bool)

(assert (=> b!1582567 (=> (not res!1081228) (not e!883290))))

(declare-datatypes ((B!2808 0))(
  ( (B!2809 (val!19766 Int)) )
))
(declare-datatypes ((tuple2!25864 0))(
  ( (tuple2!25865 (_1!12942 (_ BitVec 64)) (_2!12942 B!2808)) )
))
(declare-datatypes ((List!37047 0))(
  ( (Nil!37044) (Cons!37043 (h!38587 tuple2!25864) (t!51968 List!37047)) )
))
(declare-fun l!1065 () List!37047)

(declare-fun key!287 () (_ BitVec 64))

(assert (=> b!1582567 (= res!1081228 (and (is-Cons!37043 l!1065) (not (= (_1!12942 (h!38587 l!1065)) key!287))))))

(declare-fun b!1582568 () Bool)

(declare-fun res!1081227 () Bool)

(assert (=> b!1582568 (=> (not res!1081227) (not e!883290))))

(declare-fun containsKey!967 (List!37047 (_ BitVec 64)) Bool)

(assert (=> b!1582568 (= res!1081227 (containsKey!967 l!1065 key!287))))

(declare-fun b!1582569 () Bool)

(declare-fun res!1081229 () Bool)

(assert (=> b!1582569 (=> (not res!1081229) (not e!883290))))

(assert (=> b!1582569 (= res!1081229 (containsKey!967 (t!51968 l!1065) key!287))))

(declare-fun b!1582570 () Bool)

(assert (=> b!1582570 (= e!883290 (not true))))

(declare-datatypes ((Option!941 0))(
  ( (Some!940 (v!22464 B!2808)) (None!939) )
))
(declare-fun isDefined!601 (Option!941) Bool)

(declare-fun getValueByKey!833 (List!37047 (_ BitVec 64)) Option!941)

(assert (=> b!1582570 (isDefined!601 (getValueByKey!833 (t!51968 l!1065) key!287))))

(declare-datatypes ((Unit!52215 0))(
  ( (Unit!52216) )
))
(declare-fun lt!677050 () Unit!52215)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!549 (List!37047 (_ BitVec 64)) Unit!52215)

(assert (=> b!1582570 (= lt!677050 (lemmaContainsKeyImpliesGetValueByKeyDefined!549 (t!51968 l!1065) key!287))))

(declare-fun b!1582571 () Bool)

(declare-fun res!1081225 () Bool)

(assert (=> b!1582571 (=> (not res!1081225) (not e!883290))))

(declare-fun isStrictlySorted!1121 (List!37047) Bool)

(assert (=> b!1582571 (= res!1081225 (isStrictlySorted!1121 (t!51968 l!1065)))))

(declare-fun res!1081226 () Bool)

(assert (=> start!137780 (=> (not res!1081226) (not e!883290))))

(assert (=> start!137780 (= res!1081226 (isStrictlySorted!1121 l!1065))))

(assert (=> start!137780 e!883290))

(assert (=> start!137780 e!883289))

(assert (=> start!137780 true))

(assert (= (and start!137780 res!1081226) b!1582568))

(assert (= (and b!1582568 res!1081227) b!1582567))

(assert (= (and b!1582567 res!1081228) b!1582571))

(assert (= (and b!1582571 res!1081225) b!1582569))

(assert (= (and b!1582569 res!1081229) b!1582570))

(assert (= (and start!137780 (is-Cons!37043 l!1065)) b!1582566))

(declare-fun m!1452921 () Bool)

(assert (=> b!1582569 m!1452921))

(declare-fun m!1452923 () Bool)

(assert (=> b!1582571 m!1452923))

(declare-fun m!1452925 () Bool)

(assert (=> b!1582568 m!1452925))

(declare-fun m!1452927 () Bool)

(assert (=> b!1582570 m!1452927))

(assert (=> b!1582570 m!1452927))

(declare-fun m!1452929 () Bool)

(assert (=> b!1582570 m!1452929))

(declare-fun m!1452931 () Bool)

(assert (=> b!1582570 m!1452931))

(declare-fun m!1452933 () Bool)

(assert (=> start!137780 m!1452933))

(push 1)

(assert (not b!1582569))

(assert (not b!1582568))

(assert (not b!1582570))

(assert tp_is_empty!39341)

(assert (not b!1582571))

(assert (not b!1582566))

(assert (not start!137780))

(check-sat)

