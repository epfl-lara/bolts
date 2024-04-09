; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106256 () Bool)

(assert start!106256)

(declare-fun res!842140 () Bool)

(declare-fun e!720042 () Bool)

(assert (=> start!106256 (=> (not res!842140) (not e!720042))))

(declare-datatypes ((B!1914 0))(
  ( (B!1915 (val!16292 Int)) )
))
(declare-datatypes ((tuple2!21252 0))(
  ( (tuple2!21253 (_1!10636 (_ BitVec 64)) (_2!10636 B!1914)) )
))
(declare-datatypes ((List!28459 0))(
  ( (Nil!28456) (Cons!28455 (h!29664 tuple2!21252) (t!41987 List!28459)) )
))
(declare-datatypes ((ListLongMap!19137 0))(
  ( (ListLongMap!19138 (toList!9584 List!28459)) )
))
(declare-fun lm!212 () ListLongMap!19137)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7642 (ListLongMap!19137 (_ BitVec 64)) Bool)

(assert (=> start!106256 (= res!842140 (not (contains!7642 lm!212 a1!67)))))

(assert (=> start!106256 e!720042))

(declare-fun e!720043 () Bool)

(declare-fun inv!44074 (ListLongMap!19137) Bool)

(assert (=> start!106256 (and (inv!44074 lm!212) e!720043)))

(assert (=> start!106256 true))

(declare-fun b!1264417 () Bool)

(declare-fun isStrictlySorted!767 (List!28459) Bool)

(assert (=> b!1264417 (= e!720042 (not (isStrictlySorted!767 (toList!9584 lm!212))))))

(declare-fun b!1264418 () Bool)

(declare-fun tp!96210 () Bool)

(assert (=> b!1264418 (= e!720043 tp!96210)))

(assert (= (and start!106256 res!842140) b!1264417))

(assert (= start!106256 b!1264418))

(declare-fun m!1165029 () Bool)

(assert (=> start!106256 m!1165029))

(declare-fun m!1165031 () Bool)

(assert (=> start!106256 m!1165031))

(declare-fun m!1165033 () Bool)

(assert (=> b!1264417 m!1165033))

(push 1)

(assert (not b!1264417))

(assert (not start!106256))

(assert (not b!1264418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!138655 () Bool)

(declare-fun res!842151 () Bool)

(declare-fun e!720054 () Bool)

(assert (=> d!138655 (=> res!842151 e!720054)))

(assert (=> d!138655 (= res!842151 (or (is-Nil!28456 (toList!9584 lm!212)) (is-Nil!28456 (t!41987 (toList!9584 lm!212)))))))

(assert (=> d!138655 (= (isStrictlySorted!767 (toList!9584 lm!212)) e!720054)))

(declare-fun b!1264429 () Bool)

(declare-fun e!720055 () Bool)

(assert (=> b!1264429 (= e!720054 e!720055)))

(declare-fun res!842152 () Bool)

(assert (=> b!1264429 (=> (not res!842152) (not e!720055))))

(assert (=> b!1264429 (= res!842152 (bvslt (_1!10636 (h!29664 (toList!9584 lm!212))) (_1!10636 (h!29664 (t!41987 (toList!9584 lm!212))))))))

(declare-fun b!1264430 () Bool)

(assert (=> b!1264430 (= e!720055 (isStrictlySorted!767 (t!41987 (toList!9584 lm!212))))))

(assert (= (and d!138655 (not res!842151)) b!1264429))

(assert (= (and b!1264429 res!842152) b!1264430))

(declare-fun m!1165037 () Bool)

(assert (=> b!1264430 m!1165037))

(assert (=> b!1264417 d!138655))

(declare-fun d!138659 () Bool)

(declare-fun e!720079 () Bool)

(assert (=> d!138659 e!720079))

(declare-fun res!842165 () Bool)

(assert (=> d!138659 (=> res!842165 e!720079)))

(declare-fun lt!573773 () Bool)

(assert (=> d!138659 (= res!842165 (not lt!573773))))

(declare-fun lt!573776 () Bool)

