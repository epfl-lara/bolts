; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132536 () Bool)

(assert start!132536)

(declare-fun b!1553831 () Bool)

(declare-fun res!1063554 () Bool)

(declare-fun e!865189 () Bool)

(assert (=> b!1553831 (=> (not res!1063554) (not e!865189))))

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1553831 (= res!1063554 (not (= a0!49 a!523)))))

(declare-fun b!1553832 () Bool)

(declare-fun e!865190 () Bool)

(assert (=> b!1553832 (= e!865189 (not e!865190))))

(declare-fun res!1063553 () Bool)

(assert (=> b!1553832 (=> res!1063553 e!865190)))

(declare-datatypes ((B!2226 0))(
  ( (B!2227 (val!19199 Int)) )
))
(declare-datatypes ((tuple2!24914 0))(
  ( (tuple2!24915 (_1!12467 (_ BitVec 64)) (_2!12467 B!2226)) )
))
(declare-datatypes ((List!36379 0))(
  ( (Nil!36376) (Cons!36375 (h!37822 tuple2!24914) (t!51107 List!36379)) )
))
(declare-datatypes ((ListLongMap!22535 0))(
  ( (ListLongMap!22536 (toList!11283 List!36379)) )
))
(declare-fun lm!249 () ListLongMap!22535)

(declare-fun isStrictlySorted!892 (List!36379) Bool)

(assert (=> b!1553832 (= res!1063553 (not (isStrictlySorted!892 (toList!11283 lm!249))))))

(declare-fun e!865188 () Bool)

(assert (=> b!1553832 e!865188))

(declare-fun res!1063552 () Bool)

(assert (=> b!1553832 (=> (not res!1063552) (not e!865188))))

(declare-fun lt!669799 () List!36379)

(declare-fun containsKey!764 (List!36379 (_ BitVec 64)) Bool)

(assert (=> b!1553832 (= res!1063552 (containsKey!764 lt!669799 a0!49))))

(declare-fun b!96 () B!2226)

(declare-fun insertStrictlySorted!512 (List!36379 (_ BitVec 64) B!2226) List!36379)

(assert (=> b!1553832 (= lt!669799 (insertStrictlySorted!512 (toList!11283 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51700 0))(
  ( (Unit!51701) )
))
(declare-fun lt!669798 () Unit!51700)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!9 (List!36379 (_ BitVec 64) B!2226 (_ BitVec 64)) Unit!51700)

(assert (=> b!1553832 (= lt!669798 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!9 (toList!11283 lm!249) a!523 b!96 a0!49))))

(declare-fun b!1553833 () Bool)

(assert (=> b!1553833 (= e!865190 true)))

(declare-datatypes ((Option!821 0))(
  ( (Some!820 (v!22001 B!2226)) (None!819) )
))
(declare-fun isDefined!555 (Option!821) Bool)

(declare-fun getValueByKey!746 (List!36379 (_ BitVec 64)) Option!821)

(assert (=> b!1553833 (isDefined!555 (getValueByKey!746 (toList!11283 lm!249) a0!49))))

(declare-fun lt!669800 () Unit!51700)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!506 (List!36379 (_ BitVec 64)) Unit!51700)

(assert (=> b!1553833 (= lt!669800 (lemmaContainsKeyImpliesGetValueByKeyDefined!506 (toList!11283 lm!249) a0!49))))

(declare-fun b!1553834 () Bool)

(declare-fun res!1063551 () Bool)

(assert (=> b!1553834 (=> (not res!1063551) (not e!865189))))

(assert (=> b!1553834 (= res!1063551 (containsKey!764 (toList!11283 lm!249) a0!49))))

(declare-fun res!1063550 () Bool)

(assert (=> start!132536 (=> (not res!1063550) (not e!865189))))

(declare-fun contains!10158 (ListLongMap!22535 (_ BitVec 64)) Bool)

(assert (=> start!132536 (= res!1063550 (contains!10158 lm!249 a0!49))))

(assert (=> start!132536 e!865189))

(declare-fun e!865191 () Bool)

(declare-fun inv!57321 (ListLongMap!22535) Bool)

(assert (=> start!132536 (and (inv!57321 lm!249) e!865191)))

(assert (=> start!132536 true))

(declare-fun tp_is_empty!38237 () Bool)

(assert (=> start!132536 tp_is_empty!38237))

(declare-fun b!1553835 () Bool)

(assert (=> b!1553835 (= e!865188 (= (getValueByKey!746 lt!669799 a0!49) (getValueByKey!746 (toList!11283 lm!249) a0!49)))))

(declare-fun b!1553836 () Bool)

(declare-fun tp!112144 () Bool)

(assert (=> b!1553836 (= e!865191 tp!112144)))

(assert (= (and start!132536 res!1063550) b!1553831))

(assert (= (and b!1553831 res!1063554) b!1553834))

(assert (= (and b!1553834 res!1063551) b!1553832))

(assert (= (and b!1553832 res!1063552) b!1553835))

(assert (= (and b!1553832 (not res!1063553)) b!1553833))

(assert (= start!132536 b!1553836))

(declare-fun m!1432427 () Bool)

(assert (=> b!1553834 m!1432427))

(declare-fun m!1432429 () Bool)

(assert (=> b!1553832 m!1432429))

(declare-fun m!1432431 () Bool)

(assert (=> b!1553832 m!1432431))

(declare-fun m!1432433 () Bool)

(assert (=> b!1553832 m!1432433))

(declare-fun m!1432435 () Bool)

(assert (=> b!1553832 m!1432435))

(declare-fun m!1432437 () Bool)

(assert (=> start!132536 m!1432437))

(declare-fun m!1432439 () Bool)

(assert (=> start!132536 m!1432439))

(declare-fun m!1432441 () Bool)

(assert (=> b!1553835 m!1432441))

(declare-fun m!1432443 () Bool)

(assert (=> b!1553835 m!1432443))

(assert (=> b!1553833 m!1432443))

(assert (=> b!1553833 m!1432443))

(declare-fun m!1432445 () Bool)

(assert (=> b!1553833 m!1432445))

(declare-fun m!1432447 () Bool)

(assert (=> b!1553833 m!1432447))

(push 1)

(assert (not b!1553836))

(assert (not b!1553833))

(assert (not b!1553835))

(assert (not start!132536))

(assert (not b!1553832))

(assert (not b!1553834))

(assert tp_is_empty!38237)

(check-sat)

