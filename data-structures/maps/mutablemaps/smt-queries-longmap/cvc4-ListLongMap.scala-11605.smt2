; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135472 () Bool)

(assert start!135472)

(declare-fun res!1075334 () Bool)

(declare-fun e!877737 () Bool)

(assert (=> start!135472 (=> (not res!1075334) (not e!877737))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135472 (= res!1075334 (validMask!0 mask!877))))

(assert (=> start!135472 e!877737))

(assert (=> start!135472 true))

(declare-datatypes ((array!105143 0))(
  ( (array!105144 (arr!50718 (Array (_ BitVec 32) (_ BitVec 64))) (size!51269 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105143)

(declare-fun array_inv!39363 (array!105143) Bool)

(assert (=> start!135472 (array_inv!39363 _keys!591)))

(declare-fun b!1573902 () Bool)

(declare-fun res!1075332 () Bool)

(assert (=> b!1573902 (=> (not res!1075332) (not e!877737))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573902 (= res!1075332 (and (= (size!51269 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51269 _keys!591)) (bvslt i!537 (size!51269 _keys!591))))))

(declare-fun b!1573903 () Bool)

(declare-fun res!1075333 () Bool)

(assert (=> b!1573903 (=> (not res!1075333) (not e!877737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573903 (= res!1075333 (validKeyInArray!0 (select (arr!50718 _keys!591) i!537)))))

(declare-fun b!1573904 () Bool)

(assert (=> b!1573904 (= e!877737 (not true))))

(declare-fun arrayContainsKey!0 (array!105143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573904 (arrayContainsKey!0 _keys!591 (select (arr!50718 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52076 0))(
  ( (Unit!52077) )
))
(declare-fun lt!674617 () Unit!52076)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105143 (_ BitVec 64) (_ BitVec 32)) Unit!52076)

(assert (=> b!1573904 (= lt!674617 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50718 _keys!591) i!537) i!537))))

(assert (= (and start!135472 res!1075334) b!1573902))

(assert (= (and b!1573902 res!1075332) b!1573903))

(assert (= (and b!1573903 res!1075333) b!1573904))

(declare-fun m!1447159 () Bool)

(assert (=> start!135472 m!1447159))

(declare-fun m!1447161 () Bool)

(assert (=> start!135472 m!1447161))

(declare-fun m!1447163 () Bool)

(assert (=> b!1573903 m!1447163))

(assert (=> b!1573903 m!1447163))

(declare-fun m!1447165 () Bool)

(assert (=> b!1573903 m!1447165))

(assert (=> b!1573904 m!1447163))

(assert (=> b!1573904 m!1447163))

(declare-fun m!1447167 () Bool)

(assert (=> b!1573904 m!1447167))

(assert (=> b!1573904 m!1447163))

(declare-fun m!1447169 () Bool)

(assert (=> b!1573904 m!1447169))

(push 1)

(assert (not start!135472))

(assert (not b!1573903))

(assert (not b!1573904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

