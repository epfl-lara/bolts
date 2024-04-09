; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135466 () Bool)

(assert start!135466)

(declare-fun res!1075307 () Bool)

(declare-fun e!877719 () Bool)

(assert (=> start!135466 (=> (not res!1075307) (not e!877719))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135466 (= res!1075307 (validMask!0 mask!877))))

(assert (=> start!135466 e!877719))

(assert (=> start!135466 true))

(declare-datatypes ((array!105137 0))(
  ( (array!105138 (arr!50715 (Array (_ BitVec 32) (_ BitVec 64))) (size!51266 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105137)

(declare-fun array_inv!39360 (array!105137) Bool)

(assert (=> start!135466 (array_inv!39360 _keys!591)))

(declare-fun b!1573875 () Bool)

(declare-fun res!1075306 () Bool)

(assert (=> b!1573875 (=> (not res!1075306) (not e!877719))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573875 (= res!1075306 (and (= (size!51266 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51266 _keys!591)) (bvslt i!537 (size!51266 _keys!591))))))

(declare-fun b!1573876 () Bool)

(declare-fun res!1075305 () Bool)

(assert (=> b!1573876 (=> (not res!1075305) (not e!877719))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573876 (= res!1075305 (validKeyInArray!0 (select (arr!50715 _keys!591) i!537)))))

(declare-fun b!1573877 () Bool)

(assert (=> b!1573877 (= e!877719 (not true))))

(declare-fun arrayContainsKey!0 (array!105137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573877 (arrayContainsKey!0 _keys!591 (select (arr!50715 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52070 0))(
  ( (Unit!52071) )
))
(declare-fun lt!674608 () Unit!52070)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105137 (_ BitVec 64) (_ BitVec 32)) Unit!52070)

(assert (=> b!1573877 (= lt!674608 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50715 _keys!591) i!537) i!537))))

(assert (= (and start!135466 res!1075307) b!1573875))

(assert (= (and b!1573875 res!1075306) b!1573876))

(assert (= (and b!1573876 res!1075305) b!1573877))

(declare-fun m!1447123 () Bool)

(assert (=> start!135466 m!1447123))

(declare-fun m!1447125 () Bool)

(assert (=> start!135466 m!1447125))

(declare-fun m!1447127 () Bool)

(assert (=> b!1573876 m!1447127))

(assert (=> b!1573876 m!1447127))

(declare-fun m!1447129 () Bool)

(assert (=> b!1573876 m!1447129))

(assert (=> b!1573877 m!1447127))

(assert (=> b!1573877 m!1447127))

(declare-fun m!1447131 () Bool)

(assert (=> b!1573877 m!1447131))

(assert (=> b!1573877 m!1447127))

(declare-fun m!1447133 () Bool)

(assert (=> b!1573877 m!1447133))

(push 1)

(assert (not b!1573877))

(assert (not start!135466))

(assert (not b!1573876))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

