; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106768 () Bool)

(assert start!106768)

(declare-fun b!1267053 () Bool)

(declare-fun e!721815 () Bool)

(assert (=> b!1267053 (= e!721815 (not true))))

(declare-datatypes ((B!2054 0))(
  ( (B!2055 (val!16362 Int)) )
))
(declare-datatypes ((tuple2!21392 0))(
  ( (tuple2!21393 (_1!10706 (_ BitVec 64)) (_2!10706 B!2054)) )
))
(declare-datatypes ((List!28529 0))(
  ( (Nil!28526) (Cons!28525 (h!29734 tuple2!21392) (t!42063 List!28529)) )
))
(declare-fun l!874 () List!28529)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun removeStrictlySorted!165 (List!28529 (_ BitVec 64)) List!28529)

(assert (=> b!1267053 (= (removeStrictlySorted!165 (t!42063 l!874) key!235) (t!42063 l!874))))

(declare-datatypes ((Unit!42164 0))(
  ( (Unit!42165) )
))
(declare-fun lt!574250 () Unit!42164)

(declare-fun lemmaRemoveStrictlySortedNotPresentPreserves!4 (List!28529 (_ BitVec 64)) Unit!42164)

(assert (=> b!1267053 (= lt!574250 (lemmaRemoveStrictlySortedNotPresentPreserves!4 (t!42063 l!874) key!235))))

(declare-fun b!1267054 () Bool)

(declare-fun res!843520 () Bool)

(assert (=> b!1267054 (=> (not res!843520) (not e!721815))))

(declare-fun isStrictlySorted!810 (List!28529) Bool)

(assert (=> b!1267054 (= res!843520 (isStrictlySorted!810 (t!42063 l!874)))))

(declare-fun b!1267055 () Bool)

(declare-fun res!843516 () Bool)

(assert (=> b!1267055 (=> (not res!843516) (not e!721815))))

(declare-fun containsKey!671 (List!28529 (_ BitVec 64)) Bool)

(assert (=> b!1267055 (= res!843516 (not (containsKey!671 (t!42063 l!874) key!235)))))

(declare-fun res!843517 () Bool)

(assert (=> start!106768 (=> (not res!843517) (not e!721815))))

(assert (=> start!106768 (= res!843517 (isStrictlySorted!810 l!874))))

(assert (=> start!106768 e!721815))

(declare-fun e!721816 () Bool)

(assert (=> start!106768 e!721816))

(assert (=> start!106768 true))

(declare-fun b!1267056 () Bool)

(declare-fun res!843518 () Bool)

(assert (=> b!1267056 (=> (not res!843518) (not e!721815))))

(assert (=> b!1267056 (= res!843518 (not (containsKey!671 l!874 key!235)))))

(declare-fun b!1267057 () Bool)

(declare-fun res!843519 () Bool)

(assert (=> b!1267057 (=> (not res!843519) (not e!721815))))

(assert (=> b!1267057 (= res!843519 (is-Cons!28525 l!874))))

(declare-fun b!1267058 () Bool)

(declare-fun tp_is_empty!32575 () Bool)

(declare-fun tp!96552 () Bool)

(assert (=> b!1267058 (= e!721816 (and tp_is_empty!32575 tp!96552))))

(assert (= (and start!106768 res!843517) b!1267056))

(assert (= (and b!1267056 res!843518) b!1267057))

(assert (= (and b!1267057 res!843519) b!1267054))

(assert (= (and b!1267054 res!843520) b!1267055))

(assert (= (and b!1267055 res!843516) b!1267053))

(assert (= (and start!106768 (is-Cons!28525 l!874)) b!1267058))

(declare-fun m!1166565 () Bool)

(assert (=> b!1267053 m!1166565))

(declare-fun m!1166567 () Bool)

(assert (=> b!1267053 m!1166567))

(declare-fun m!1166569 () Bool)

(assert (=> b!1267055 m!1166569))

(declare-fun m!1166571 () Bool)

(assert (=> b!1267056 m!1166571))

(declare-fun m!1166573 () Bool)

(assert (=> b!1267054 m!1166573))

(declare-fun m!1166575 () Bool)

(assert (=> start!106768 m!1166575))

(push 1)

(assert tp_is_empty!32575)

(assert (not b!1267058))

(assert (not b!1267055))

(assert (not b!1267053))

(assert (not b!1267056))

(assert (not start!106768))

(assert (not b!1267054))

(check-sat)

