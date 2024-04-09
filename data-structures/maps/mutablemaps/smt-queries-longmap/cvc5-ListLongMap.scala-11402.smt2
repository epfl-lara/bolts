; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132808 () Bool)

(assert start!132808)

(declare-fun b!1555428 () Bool)

(declare-fun e!866241 () Bool)

(assert (=> b!1555428 (= e!866241 (not true))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun lt!670227 () Bool)

(declare-datatypes ((B!2288 0))(
  ( (B!2289 (val!19230 Int)) )
))
(declare-fun newValue!105 () B!2288)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((tuple2!24976 0))(
  ( (tuple2!24977 (_1!12498 (_ BitVec 64)) (_2!12498 B!2288)) )
))
(declare-datatypes ((List!36410 0))(
  ( (Nil!36407) (Cons!36406 (h!37853 tuple2!24976) (t!51138 List!36410)) )
))
(declare-fun l!1177 () List!36410)

(declare-fun containsKey!792 (List!36410 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!534 (List!36410 (_ BitVec 64) B!2288) List!36410)

(assert (=> b!1555428 (= lt!670227 (containsKey!792 (insertStrictlySorted!534 l!1177 newKey!105 newValue!105) otherKey!50))))

(declare-fun e!866240 () Bool)

(assert (=> b!1555428 e!866240))

(declare-fun res!1064364 () Bool)

(assert (=> b!1555428 (=> (not res!1064364) (not e!866240))))

(declare-fun lt!670229 () List!36410)

(assert (=> b!1555428 (= res!1064364 (= (containsKey!792 lt!670229 otherKey!50) (containsKey!792 (t!51138 l!1177) otherKey!50)))))

(assert (=> b!1555428 (= lt!670229 (insertStrictlySorted!534 (t!51138 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51767 0))(
  ( (Unit!51768) )
))
(declare-fun lt!670228 () Unit!51767)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!31 (List!36410 (_ BitVec 64) B!2288 (_ BitVec 64)) Unit!51767)

(assert (=> b!1555428 (= lt!670228 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!31 (t!51138 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1555429 () Bool)

(declare-fun res!1064367 () Bool)

(assert (=> b!1555429 (=> (not res!1064367) (not e!866241))))

(assert (=> b!1555429 (= res!1064367 (and (not (= newKey!105 otherKey!50)) (is-Cons!36406 l!1177) (not (= (_1!12498 (h!37853 l!1177)) otherKey!50))))))

(declare-fun b!1555430 () Bool)

(declare-fun res!1064365 () Bool)

(assert (=> b!1555430 (=> (not res!1064365) (not e!866241))))

(declare-fun isStrictlySorted!920 (List!36410) Bool)

(assert (=> b!1555430 (= res!1064365 (isStrictlySorted!920 (t!51138 l!1177)))))

(declare-fun res!1064366 () Bool)

(assert (=> start!132808 (=> (not res!1064366) (not e!866241))))

(assert (=> start!132808 (= res!1064366 (isStrictlySorted!920 l!1177))))

(assert (=> start!132808 e!866241))

(declare-fun e!866239 () Bool)

(assert (=> start!132808 e!866239))

(assert (=> start!132808 true))

(declare-fun tp_is_empty!38299 () Bool)

(assert (=> start!132808 tp_is_empty!38299))

(declare-fun b!1555431 () Bool)

(declare-datatypes ((Option!849 0))(
  ( (Some!848 (v!22029 B!2288)) (None!847) )
))
(declare-fun getValueByKey!774 (List!36410 (_ BitVec 64)) Option!849)

(assert (=> b!1555431 (= e!866240 (= (getValueByKey!774 lt!670229 otherKey!50) (getValueByKey!774 (t!51138 l!1177) otherKey!50)))))

(declare-fun b!1555432 () Bool)

(declare-fun tp!112291 () Bool)

(assert (=> b!1555432 (= e!866239 (and tp_is_empty!38299 tp!112291))))

(assert (= (and start!132808 res!1064366) b!1555429))

(assert (= (and b!1555429 res!1064367) b!1555430))

(assert (= (and b!1555430 res!1064365) b!1555428))

(assert (= (and b!1555428 res!1064364) b!1555431))

(assert (= (and start!132808 (is-Cons!36406 l!1177)) b!1555432))

(declare-fun m!1433433 () Bool)

(assert (=> b!1555428 m!1433433))

(declare-fun m!1433435 () Bool)

(assert (=> b!1555428 m!1433435))

(declare-fun m!1433437 () Bool)

(assert (=> b!1555428 m!1433437))

(assert (=> b!1555428 m!1433435))

(declare-fun m!1433439 () Bool)

(assert (=> b!1555428 m!1433439))

(declare-fun m!1433441 () Bool)

(assert (=> b!1555428 m!1433441))

(declare-fun m!1433443 () Bool)

(assert (=> b!1555428 m!1433443))

(declare-fun m!1433445 () Bool)

(assert (=> b!1555430 m!1433445))

(declare-fun m!1433447 () Bool)

(assert (=> start!132808 m!1433447))

(declare-fun m!1433449 () Bool)

(assert (=> b!1555431 m!1433449))

(declare-fun m!1433451 () Bool)

(assert (=> b!1555431 m!1433451))

(push 1)

(assert tp_is_empty!38299)

(assert (not b!1555430))

(assert (not b!1555431))

(assert (not b!1555428))

(assert (not start!132808))

(assert (not b!1555432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

