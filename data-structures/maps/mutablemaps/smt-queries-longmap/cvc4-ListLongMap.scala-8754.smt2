; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106280 () Bool)

(assert start!106280)

(declare-fun res!842184 () Bool)

(declare-fun e!720105 () Bool)

(assert (=> start!106280 (=> (not res!842184) (not e!720105))))

(declare-datatypes ((B!1920 0))(
  ( (B!1921 (val!16295 Int)) )
))
(declare-datatypes ((tuple2!21258 0))(
  ( (tuple2!21259 (_1!10639 (_ BitVec 64)) (_2!10639 B!1920)) )
))
(declare-datatypes ((List!28462 0))(
  ( (Nil!28459) (Cons!28458 (h!29667 tuple2!21258) (t!41990 List!28462)) )
))
(declare-datatypes ((ListLongMap!19143 0))(
  ( (ListLongMap!19144 (toList!9587 List!28462)) )
))
(declare-fun lm!212 () ListLongMap!19143)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7645 (ListLongMap!19143 (_ BitVec 64)) Bool)

(assert (=> start!106280 (= res!842184 (not (contains!7645 lm!212 a1!67)))))

(assert (=> start!106280 e!720105))

(declare-fun e!720106 () Bool)

(declare-fun inv!44082 (ListLongMap!19143) Bool)

(assert (=> start!106280 (and (inv!44082 lm!212) e!720106)))

(assert (=> start!106280 true))

(declare-fun b!1264503 () Bool)

(declare-fun res!842185 () Bool)

(assert (=> b!1264503 (=> (not res!842185) (not e!720105))))

(declare-fun isStrictlySorted!770 (List!28462) Bool)

(assert (=> b!1264503 (= res!842185 (isStrictlySorted!770 (toList!9587 lm!212)))))

(declare-fun b!1264504 () Bool)

(declare-fun containsKey!631 (List!28462 (_ BitVec 64)) Bool)

(assert (=> b!1264504 (= e!720105 (containsKey!631 (toList!9587 lm!212) a1!67))))

(declare-fun b!1264505 () Bool)

(declare-fun tp!96228 () Bool)

(assert (=> b!1264505 (= e!720106 tp!96228)))

(assert (= (and start!106280 res!842184) b!1264503))

(assert (= (and b!1264503 res!842185) b!1264504))

(assert (= start!106280 b!1264505))

(declare-fun m!1165081 () Bool)

(assert (=> start!106280 m!1165081))

(declare-fun m!1165083 () Bool)

(assert (=> start!106280 m!1165083))

(declare-fun m!1165085 () Bool)

(assert (=> b!1264503 m!1165085))

(declare-fun m!1165087 () Bool)

(assert (=> b!1264504 m!1165087))

(push 1)

(assert (not b!1264504))

(assert (not b!1264503))

(assert (not start!106280))

(assert (not b!1264505))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138675 () Bool)

(declare-fun res!842202 () Bool)

(declare-fun e!720123 () Bool)

(assert (=> d!138675 (=> res!842202 e!720123)))

(assert (=> d!138675 (= res!842202 (and (is-Cons!28458 (toList!9587 lm!212)) (= (_1!10639 (h!29667 (toList!9587 lm!212))) a1!67)))))

(assert (=> d!138675 (= (containsKey!631 (toList!9587 lm!212) a1!67) e!720123)))

(declare-fun b!1264522 () Bool)

(declare-fun e!720124 () Bool)

(assert (=> b!1264522 (= e!720123 e!720124)))

(declare-fun res!842203 () Bool)

(assert (=> b!1264522 (=> (not res!842203) (not e!720124))))

(assert (=> b!1264522 (= res!842203 (and (or (not (is-Cons!28458 (toList!9587 lm!212))) (bvsle (_1!10639 (h!29667 (toList!9587 lm!212))) a1!67)) (is-Cons!28458 (toList!9587 lm!212)) (bvslt (_1!10639 (h!29667 (toList!9587 lm!212))) a1!67)))))

(declare-fun b!1264523 () Bool)

(assert (=> b!1264523 (= e!720124 (containsKey!631 (t!41990 (toList!9587 lm!212)) a1!67))))

(assert (= (and d!138675 (not res!842202)) b!1264522))

(assert (= (and b!1264522 res!842203) b!1264523))

(declare-fun m!1165093 () Bool)

(assert (=> b!1264523 m!1165093))

(assert (=> b!1264504 d!138675))

(declare-fun d!138681 () Bool)

(declare-fun res!842211 () Bool)

(declare-fun e!720135 () Bool)

(assert (=> d!138681 (=> res!842211 e!720135)))

(assert (=> d!138681 (= res!842211 (or (is-Nil!28459 (toList!9587 lm!212)) (is-Nil!28459 (t!41990 (toList!9587 lm!212)))))))

(assert (=> d!138681 (= (isStrictlySorted!770 (toList!9587 lm!212)) e!720135)))

(declare-fun b!1264537 () Bool)

(declare-fun e!720136 () Bool)

(assert (=> b!1264537 (= e!720135 e!720136)))

