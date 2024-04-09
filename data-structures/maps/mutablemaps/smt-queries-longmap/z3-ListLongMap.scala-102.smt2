; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1682 () Bool)

(assert start!1682)

(declare-fun res!9806 () Bool)

(declare-fun e!7114 () Bool)

(assert (=> start!1682 (=> (not res!9806) (not e!7114))))

(declare-datatypes ((B!418 0))(
  ( (B!419 (val!304 Int)) )
))
(declare-datatypes ((tuple2!390 0))(
  ( (tuple2!391 (_1!195 (_ BitVec 64)) (_2!195 B!418)) )
))
(declare-datatypes ((List!351 0))(
  ( (Nil!348) (Cons!347 (h!913 tuple2!390) (t!2738 List!351)) )
))
(declare-datatypes ((ListLongMap!371 0))(
  ( (ListLongMap!372 (toList!201 List!351)) )
))
(declare-fun lm!265 () ListLongMap!371)

(declare-fun a!527 () (_ BitVec 64))

(declare-fun contains!169 (ListLongMap!371 (_ BitVec 64)) Bool)

(assert (=> start!1682 (= res!9806 (contains!169 lm!265 a!527))))

(assert (=> start!1682 e!7114))

(declare-fun e!7115 () Bool)

(declare-fun inv!599 (ListLongMap!371) Bool)

(assert (=> start!1682 (and (inv!599 lm!265) e!7115)))

(assert (=> start!1682 true))

(declare-fun tp_is_empty!591 () Bool)

(assert (=> start!1682 tp_is_empty!591))

(declare-fun b!11947 () Bool)

(assert (=> b!11947 (= e!7114 (not true))))

(declare-fun b!100 () B!418)

(declare-fun contains!170 (List!351 tuple2!390) Bool)

(assert (=> b!11947 (contains!170 (toList!201 lm!265) (tuple2!391 a!527 b!100))))

(declare-datatypes ((Unit!262 0))(
  ( (Unit!263) )
))
(declare-fun lt!3084 () Unit!262)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!2 (List!351 (_ BitVec 64) B!418) Unit!262)

(assert (=> b!11947 (= lt!3084 (lemmaGetValueByKeyImpliesContainsTuple!2 (toList!201 lm!265) a!527 b!100))))

(declare-fun b!11945 () Bool)

(declare-fun res!9807 () Bool)

(assert (=> b!11945 (=> (not res!9807) (not e!7114))))

(declare-datatypes ((Option!42 0))(
  ( (Some!41 (v!1356 B!418)) (None!40) )
))
(declare-fun getValueByKey!36 (List!351 (_ BitVec 64)) Option!42)

(assert (=> b!11945 (= res!9807 (= (getValueByKey!36 (toList!201 lm!265) a!527) (Some!41 b!100)))))

(declare-fun b!11946 () Bool)

(declare-fun res!9808 () Bool)

(assert (=> b!11946 (=> (not res!9808) (not e!7114))))

(declare-fun isStrictlySorted!54 (List!351) Bool)

(assert (=> b!11946 (= res!9808 (isStrictlySorted!54 (toList!201 lm!265)))))

(declare-fun b!11948 () Bool)

(declare-fun tp!2000 () Bool)

(assert (=> b!11948 (= e!7115 tp!2000)))

(assert (= (and start!1682 res!9806) b!11945))

(assert (= (and b!11945 res!9807) b!11946))

(assert (= (and b!11946 res!9808) b!11947))

(assert (= start!1682 b!11948))

(declare-fun m!8303 () Bool)

(assert (=> start!1682 m!8303))

(declare-fun m!8305 () Bool)

(assert (=> start!1682 m!8305))

(declare-fun m!8307 () Bool)

(assert (=> b!11947 m!8307))

(declare-fun m!8309 () Bool)

(assert (=> b!11947 m!8309))

(declare-fun m!8311 () Bool)

(assert (=> b!11945 m!8311))

(declare-fun m!8313 () Bool)

(assert (=> b!11946 m!8313))

(check-sat tp_is_empty!591 (not b!11947) (not b!11945) (not b!11948) (not b!11946) (not start!1682))
(check-sat)
