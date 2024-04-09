; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106772 () Bool)

(assert start!106772)

(declare-fun b!1267089 () Bool)

(declare-fun e!721828 () Bool)

(assert (=> b!1267089 (= e!721828 (not true))))

(declare-datatypes ((B!2058 0))(
  ( (B!2059 (val!16364 Int)) )
))
(declare-datatypes ((tuple2!21396 0))(
  ( (tuple2!21397 (_1!10708 (_ BitVec 64)) (_2!10708 B!2058)) )
))
(declare-datatypes ((List!28531 0))(
  ( (Nil!28528) (Cons!28527 (h!29736 tuple2!21396) (t!42065 List!28531)) )
))
(declare-fun l!874 () List!28531)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun removeStrictlySorted!167 (List!28531 (_ BitVec 64)) List!28531)

(assert (=> b!1267089 (= (removeStrictlySorted!167 (t!42065 l!874) key!235) (t!42065 l!874))))

(declare-datatypes ((Unit!42168 0))(
  ( (Unit!42169) )
))
(declare-fun lt!574256 () Unit!42168)

(declare-fun lemmaRemoveStrictlySortedNotPresentPreserves!6 (List!28531 (_ BitVec 64)) Unit!42168)

(assert (=> b!1267089 (= lt!574256 (lemmaRemoveStrictlySortedNotPresentPreserves!6 (t!42065 l!874) key!235))))

(declare-fun b!1267090 () Bool)

(declare-fun res!843549 () Bool)

(assert (=> b!1267090 (=> (not res!843549) (not e!721828))))

(declare-fun containsKey!673 (List!28531 (_ BitVec 64)) Bool)

(assert (=> b!1267090 (= res!843549 (not (containsKey!673 l!874 key!235)))))

(declare-fun b!1267091 () Bool)

(declare-fun res!843547 () Bool)

(assert (=> b!1267091 (=> (not res!843547) (not e!721828))))

(declare-fun isStrictlySorted!812 (List!28531) Bool)

(assert (=> b!1267091 (= res!843547 (isStrictlySorted!812 (t!42065 l!874)))))

(declare-fun res!843546 () Bool)

(assert (=> start!106772 (=> (not res!843546) (not e!721828))))

(assert (=> start!106772 (= res!843546 (isStrictlySorted!812 l!874))))

(assert (=> start!106772 e!721828))

(declare-fun e!721827 () Bool)

(assert (=> start!106772 e!721827))

(assert (=> start!106772 true))

(declare-fun b!1267092 () Bool)

(declare-fun res!843550 () Bool)

(assert (=> b!1267092 (=> (not res!843550) (not e!721828))))

(assert (=> b!1267092 (= res!843550 (not (containsKey!673 (t!42065 l!874) key!235)))))

(declare-fun b!1267093 () Bool)

(declare-fun res!843548 () Bool)

(assert (=> b!1267093 (=> (not res!843548) (not e!721828))))

(assert (=> b!1267093 (= res!843548 (is-Cons!28527 l!874))))

(declare-fun b!1267094 () Bool)

(declare-fun tp_is_empty!32579 () Bool)

(declare-fun tp!96558 () Bool)

(assert (=> b!1267094 (= e!721827 (and tp_is_empty!32579 tp!96558))))

(assert (= (and start!106772 res!843546) b!1267090))

(assert (= (and b!1267090 res!843549) b!1267093))

(assert (= (and b!1267093 res!843548) b!1267091))

(assert (= (and b!1267091 res!843547) b!1267092))

(assert (= (and b!1267092 res!843550) b!1267089))

(assert (= (and start!106772 (is-Cons!28527 l!874)) b!1267094))

(declare-fun m!1166589 () Bool)

(assert (=> b!1267089 m!1166589))

(declare-fun m!1166591 () Bool)

(assert (=> b!1267089 m!1166591))

(declare-fun m!1166593 () Bool)

(assert (=> b!1267092 m!1166593))

(declare-fun m!1166595 () Bool)

(assert (=> start!106772 m!1166595))

(declare-fun m!1166597 () Bool)

(assert (=> b!1267091 m!1166597))

(declare-fun m!1166599 () Bool)

(assert (=> b!1267090 m!1166599))

(push 1)

(assert (not b!1267091))

(assert (not start!106772))

(assert tp_is_empty!32579)

(assert (not b!1267094))

(assert (not b!1267092))

(assert (not b!1267089))

(assert (not b!1267090))

(check-sat)

