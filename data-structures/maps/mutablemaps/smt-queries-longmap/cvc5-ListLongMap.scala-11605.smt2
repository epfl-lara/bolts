; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135468 () Bool)

(assert start!135468)

(declare-fun res!1075315 () Bool)

(declare-fun e!877725 () Bool)

(assert (=> start!135468 (=> (not res!1075315) (not e!877725))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135468 (= res!1075315 (validMask!0 mask!877))))

(assert (=> start!135468 e!877725))

(assert (=> start!135468 true))

(declare-datatypes ((array!105139 0))(
  ( (array!105140 (arr!50716 (Array (_ BitVec 32) (_ BitVec 64))) (size!51267 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105139)

(declare-fun array_inv!39361 (array!105139) Bool)

(assert (=> start!135468 (array_inv!39361 _keys!591)))

(declare-fun b!1573884 () Bool)

(declare-fun res!1075314 () Bool)

(assert (=> b!1573884 (=> (not res!1075314) (not e!877725))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573884 (= res!1075314 (and (= (size!51267 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51267 _keys!591)) (bvslt i!537 (size!51267 _keys!591))))))

(declare-fun b!1573885 () Bool)

(declare-fun res!1075316 () Bool)

(assert (=> b!1573885 (=> (not res!1075316) (not e!877725))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573885 (= res!1075316 (validKeyInArray!0 (select (arr!50716 _keys!591) i!537)))))

(declare-fun b!1573886 () Bool)

(assert (=> b!1573886 (= e!877725 (not true))))

(declare-fun arrayContainsKey!0 (array!105139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573886 (arrayContainsKey!0 _keys!591 (select (arr!50716 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52072 0))(
  ( (Unit!52073) )
))
(declare-fun lt!674611 () Unit!52072)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105139 (_ BitVec 64) (_ BitVec 32)) Unit!52072)

(assert (=> b!1573886 (= lt!674611 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50716 _keys!591) i!537) i!537))))

(assert (= (and start!135468 res!1075315) b!1573884))

(assert (= (and b!1573884 res!1075314) b!1573885))

(assert (= (and b!1573885 res!1075316) b!1573886))

(declare-fun m!1447135 () Bool)

(assert (=> start!135468 m!1447135))

(declare-fun m!1447137 () Bool)

(assert (=> start!135468 m!1447137))

(declare-fun m!1447139 () Bool)

(assert (=> b!1573885 m!1447139))

(assert (=> b!1573885 m!1447139))

(declare-fun m!1447141 () Bool)

(assert (=> b!1573885 m!1447141))

(assert (=> b!1573886 m!1447139))

(assert (=> b!1573886 m!1447139))

(declare-fun m!1447143 () Bool)

(assert (=> b!1573886 m!1447143))

(assert (=> b!1573886 m!1447139))

(declare-fun m!1447145 () Bool)

(assert (=> b!1573886 m!1447145))

(push 1)

(assert (not start!135468))

(assert (not b!1573885))

(assert (not b!1573886))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

