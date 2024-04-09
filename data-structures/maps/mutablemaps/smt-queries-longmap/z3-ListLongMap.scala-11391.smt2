; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132534 () Bool)

(assert start!132534)

(declare-fun b!1553813 () Bool)

(declare-fun res!1063535 () Bool)

(declare-fun e!865177 () Bool)

(assert (=> b!1553813 (=> (not res!1063535) (not e!865177))))

(declare-datatypes ((B!2224 0))(
  ( (B!2225 (val!19198 Int)) )
))
(declare-datatypes ((tuple2!24912 0))(
  ( (tuple2!24913 (_1!12466 (_ BitVec 64)) (_2!12466 B!2224)) )
))
(declare-datatypes ((List!36378 0))(
  ( (Nil!36375) (Cons!36374 (h!37821 tuple2!24912) (t!51106 List!36378)) )
))
(declare-datatypes ((ListLongMap!22533 0))(
  ( (ListLongMap!22534 (toList!11282 List!36378)) )
))
(declare-fun lm!249 () ListLongMap!22533)

(declare-fun a0!49 () (_ BitVec 64))

(declare-fun containsKey!763 (List!36378 (_ BitVec 64)) Bool)

(assert (=> b!1553813 (= res!1063535 (containsKey!763 (toList!11282 lm!249) a0!49))))

(declare-fun b!1553814 () Bool)

(declare-fun res!1063537 () Bool)

(assert (=> b!1553814 (=> (not res!1063537) (not e!865177))))

(declare-fun a!523 () (_ BitVec 64))

(assert (=> b!1553814 (= res!1063537 (not (= a0!49 a!523)))))

(declare-fun b!1553815 () Bool)

(declare-fun e!865179 () Bool)

(assert (=> b!1553815 (= e!865177 (not e!865179))))

(declare-fun res!1063539 () Bool)

(assert (=> b!1553815 (=> res!1063539 e!865179)))

(declare-fun isStrictlySorted!891 (List!36378) Bool)

(assert (=> b!1553815 (= res!1063539 (not (isStrictlySorted!891 (toList!11282 lm!249))))))

(declare-fun e!865176 () Bool)

(assert (=> b!1553815 e!865176))

(declare-fun res!1063538 () Bool)

(assert (=> b!1553815 (=> (not res!1063538) (not e!865176))))

(declare-fun lt!669789 () List!36378)

(assert (=> b!1553815 (= res!1063538 (containsKey!763 lt!669789 a0!49))))

(declare-fun b!96 () B!2224)

(declare-fun insertStrictlySorted!511 (List!36378 (_ BitVec 64) B!2224) List!36378)

(assert (=> b!1553815 (= lt!669789 (insertStrictlySorted!511 (toList!11282 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51698 0))(
  ( (Unit!51699) )
))
(declare-fun lt!669791 () Unit!51698)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!8 (List!36378 (_ BitVec 64) B!2224 (_ BitVec 64)) Unit!51698)

(assert (=> b!1553815 (= lt!669791 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!8 (toList!11282 lm!249) a!523 b!96 a0!49))))

(declare-fun b!1553816 () Bool)

(declare-fun e!865178 () Bool)

(declare-fun tp!112141 () Bool)

(assert (=> b!1553816 (= e!865178 tp!112141)))

(declare-fun res!1063536 () Bool)

(assert (=> start!132534 (=> (not res!1063536) (not e!865177))))

(declare-fun contains!10157 (ListLongMap!22533 (_ BitVec 64)) Bool)

(assert (=> start!132534 (= res!1063536 (contains!10157 lm!249 a0!49))))

(assert (=> start!132534 e!865177))

(declare-fun inv!57320 (ListLongMap!22533) Bool)

(assert (=> start!132534 (and (inv!57320 lm!249) e!865178)))

(assert (=> start!132534 true))

(declare-fun tp_is_empty!38235 () Bool)

(assert (=> start!132534 tp_is_empty!38235))

(declare-fun b!1553817 () Bool)

(declare-datatypes ((Option!820 0))(
  ( (Some!819 (v!22000 B!2224)) (None!818) )
))
(declare-fun getValueByKey!745 (List!36378 (_ BitVec 64)) Option!820)

(assert (=> b!1553817 (= e!865176 (= (getValueByKey!745 lt!669789 a0!49) (getValueByKey!745 (toList!11282 lm!249) a0!49)))))

(declare-fun b!1553818 () Bool)

(assert (=> b!1553818 (= e!865179 true)))

(declare-fun isDefined!554 (Option!820) Bool)

(assert (=> b!1553818 (isDefined!554 (getValueByKey!745 (toList!11282 lm!249) a0!49))))

(declare-fun lt!669790 () Unit!51698)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!505 (List!36378 (_ BitVec 64)) Unit!51698)

(assert (=> b!1553818 (= lt!669790 (lemmaContainsKeyImpliesGetValueByKeyDefined!505 (toList!11282 lm!249) a0!49))))

(assert (= (and start!132534 res!1063536) b!1553814))

(assert (= (and b!1553814 res!1063537) b!1553813))

(assert (= (and b!1553813 res!1063535) b!1553815))

(assert (= (and b!1553815 res!1063538) b!1553817))

(assert (= (and b!1553815 (not res!1063539)) b!1553818))

(assert (= start!132534 b!1553816))

(declare-fun m!1432405 () Bool)

(assert (=> start!132534 m!1432405))

(declare-fun m!1432407 () Bool)

(assert (=> start!132534 m!1432407))

(declare-fun m!1432409 () Bool)

(assert (=> b!1553815 m!1432409))

(declare-fun m!1432411 () Bool)

(assert (=> b!1553815 m!1432411))

(declare-fun m!1432413 () Bool)

(assert (=> b!1553815 m!1432413))

(declare-fun m!1432415 () Bool)

(assert (=> b!1553815 m!1432415))

(declare-fun m!1432417 () Bool)

(assert (=> b!1553817 m!1432417))

(declare-fun m!1432419 () Bool)

(assert (=> b!1553817 m!1432419))

(declare-fun m!1432421 () Bool)

(assert (=> b!1553813 m!1432421))

(assert (=> b!1553818 m!1432419))

(assert (=> b!1553818 m!1432419))

(declare-fun m!1432423 () Bool)

(assert (=> b!1553818 m!1432423))

(declare-fun m!1432425 () Bool)

(assert (=> b!1553818 m!1432425))

(check-sat (not b!1553813) (not b!1553817) (not b!1553818) (not b!1553816) tp_is_empty!38235 (not start!132534) (not b!1553815))
(check-sat)
