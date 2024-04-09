; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106770 () Bool)

(assert start!106770)

(declare-fun res!843532 () Bool)

(declare-fun e!721821 () Bool)

(assert (=> start!106770 (=> (not res!843532) (not e!721821))))

(declare-datatypes ((B!2056 0))(
  ( (B!2057 (val!16363 Int)) )
))
(declare-datatypes ((tuple2!21394 0))(
  ( (tuple2!21395 (_1!10707 (_ BitVec 64)) (_2!10707 B!2056)) )
))
(declare-datatypes ((List!28530 0))(
  ( (Nil!28527) (Cons!28526 (h!29735 tuple2!21394) (t!42064 List!28530)) )
))
(declare-fun l!874 () List!28530)

(declare-fun isStrictlySorted!811 (List!28530) Bool)

(assert (=> start!106770 (= res!843532 (isStrictlySorted!811 l!874))))

(assert (=> start!106770 e!721821))

(declare-fun e!721822 () Bool)

(assert (=> start!106770 e!721822))

(assert (=> start!106770 true))

(declare-fun b!1267071 () Bool)

(declare-fun res!843534 () Bool)

(assert (=> b!1267071 (=> (not res!843534) (not e!721821))))

(assert (=> b!1267071 (= res!843534 (isStrictlySorted!811 (t!42064 l!874)))))

(declare-fun b!1267072 () Bool)

(declare-fun tp_is_empty!32577 () Bool)

(declare-fun tp!96555 () Bool)

(assert (=> b!1267072 (= e!721822 (and tp_is_empty!32577 tp!96555))))

(declare-fun b!1267073 () Bool)

(declare-fun res!843533 () Bool)

(assert (=> b!1267073 (=> (not res!843533) (not e!721821))))

(get-info :version)

(assert (=> b!1267073 (= res!843533 ((_ is Cons!28526) l!874))))

(declare-fun b!1267074 () Bool)

(assert (=> b!1267074 (= e!721821 (not true))))

(declare-fun key!235 () (_ BitVec 64))

(declare-fun removeStrictlySorted!166 (List!28530 (_ BitVec 64)) List!28530)

(assert (=> b!1267074 (= (removeStrictlySorted!166 (t!42064 l!874) key!235) (t!42064 l!874))))

(declare-datatypes ((Unit!42166 0))(
  ( (Unit!42167) )
))
(declare-fun lt!574253 () Unit!42166)

(declare-fun lemmaRemoveStrictlySortedNotPresentPreserves!5 (List!28530 (_ BitVec 64)) Unit!42166)

(assert (=> b!1267074 (= lt!574253 (lemmaRemoveStrictlySortedNotPresentPreserves!5 (t!42064 l!874) key!235))))

(declare-fun b!1267075 () Bool)

(declare-fun res!843535 () Bool)

(assert (=> b!1267075 (=> (not res!843535) (not e!721821))))

(declare-fun containsKey!672 (List!28530 (_ BitVec 64)) Bool)

(assert (=> b!1267075 (= res!843535 (not (containsKey!672 (t!42064 l!874) key!235)))))

(declare-fun b!1267076 () Bool)

(declare-fun res!843531 () Bool)

(assert (=> b!1267076 (=> (not res!843531) (not e!721821))))

(assert (=> b!1267076 (= res!843531 (not (containsKey!672 l!874 key!235)))))

(assert (= (and start!106770 res!843532) b!1267076))

(assert (= (and b!1267076 res!843531) b!1267073))

(assert (= (and b!1267073 res!843533) b!1267071))

(assert (= (and b!1267071 res!843534) b!1267075))

(assert (= (and b!1267075 res!843535) b!1267074))

(assert (= (and start!106770 ((_ is Cons!28526) l!874)) b!1267072))

(declare-fun m!1166577 () Bool)

(assert (=> b!1267071 m!1166577))

(declare-fun m!1166579 () Bool)

(assert (=> b!1267075 m!1166579))

(declare-fun m!1166581 () Bool)

(assert (=> b!1267076 m!1166581))

(declare-fun m!1166583 () Bool)

(assert (=> b!1267074 m!1166583))

(declare-fun m!1166585 () Bool)

(assert (=> b!1267074 m!1166585))

(declare-fun m!1166587 () Bool)

(assert (=> start!106770 m!1166587))

(check-sat (not b!1267076) tp_is_empty!32577 (not b!1267071) (not start!106770) (not b!1267072) (not b!1267074) (not b!1267075))
(check-sat)
