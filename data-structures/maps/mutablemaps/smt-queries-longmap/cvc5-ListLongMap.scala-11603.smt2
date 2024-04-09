; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135456 () Bool)

(assert start!135456)

(declare-fun res!1075260 () Bool)

(declare-fun e!877688 () Bool)

(assert (=> start!135456 (=> (not res!1075260) (not e!877688))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135456 (= res!1075260 (validMask!0 mask!877))))

(assert (=> start!135456 e!877688))

(assert (=> start!135456 true))

(declare-datatypes ((array!105127 0))(
  ( (array!105128 (arr!50710 (Array (_ BitVec 32) (_ BitVec 64))) (size!51261 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105127)

(declare-fun array_inv!39355 (array!105127) Bool)

(assert (=> start!135456 (array_inv!39355 _keys!591)))

(declare-fun b!1573830 () Bool)

(declare-fun res!1075262 () Bool)

(assert (=> b!1573830 (=> (not res!1075262) (not e!877688))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573830 (= res!1075262 (and (= (size!51261 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51261 _keys!591)) (bvslt i!537 (size!51261 _keys!591))))))

(declare-fun b!1573831 () Bool)

(declare-fun res!1075261 () Bool)

(assert (=> b!1573831 (=> (not res!1075261) (not e!877688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573831 (= res!1075261 (validKeyInArray!0 (select (arr!50710 _keys!591) i!537)))))

(declare-fun b!1573832 () Bool)

(assert (=> b!1573832 (= e!877688 (not (bvsge mask!877 #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!105127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573832 (arrayContainsKey!0 _keys!591 (select (arr!50710 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52060 0))(
  ( (Unit!52061) )
))
(declare-fun lt!674593 () Unit!52060)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105127 (_ BitVec 64) (_ BitVec 32)) Unit!52060)

(assert (=> b!1573832 (= lt!674593 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50710 _keys!591) i!537) i!537))))

(assert (= (and start!135456 res!1075260) b!1573830))

(assert (= (and b!1573830 res!1075262) b!1573831))

(assert (= (and b!1573831 res!1075261) b!1573832))

(declare-fun m!1447063 () Bool)

(assert (=> start!135456 m!1447063))

(declare-fun m!1447065 () Bool)

(assert (=> start!135456 m!1447065))

(declare-fun m!1447067 () Bool)

(assert (=> b!1573831 m!1447067))

(assert (=> b!1573831 m!1447067))

(declare-fun m!1447069 () Bool)

(assert (=> b!1573831 m!1447069))

(assert (=> b!1573832 m!1447067))

(assert (=> b!1573832 m!1447067))

(declare-fun m!1447071 () Bool)

(assert (=> b!1573832 m!1447071))

(assert (=> b!1573832 m!1447067))

(declare-fun m!1447073 () Bool)

(assert (=> b!1573832 m!1447073))

(push 1)

(assert (not b!1573831))

(assert (not b!1573832))

(assert (not start!135456))

(check-sat)

(pop 1)

