; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135460 () Bool)

(assert start!135460)

(declare-fun res!1075279 () Bool)

(declare-fun e!877701 () Bool)

(assert (=> start!135460 (=> (not res!1075279) (not e!877701))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135460 (= res!1075279 (validMask!0 mask!877))))

(assert (=> start!135460 e!877701))

(assert (=> start!135460 true))

(declare-datatypes ((array!105131 0))(
  ( (array!105132 (arr!50712 (Array (_ BitVec 32) (_ BitVec 64))) (size!51263 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105131)

(declare-fun array_inv!39357 (array!105131) Bool)

(assert (=> start!135460 (array_inv!39357 _keys!591)))

(declare-fun b!1573848 () Bool)

(declare-fun res!1075280 () Bool)

(assert (=> b!1573848 (=> (not res!1075280) (not e!877701))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573848 (= res!1075280 (and (= (size!51263 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51263 _keys!591)) (bvslt i!537 (size!51263 _keys!591))))))

(declare-fun b!1573849 () Bool)

(declare-fun res!1075278 () Bool)

(assert (=> b!1573849 (=> (not res!1075278) (not e!877701))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573849 (= res!1075278 (validKeyInArray!0 (select (arr!50712 _keys!591) i!537)))))

(declare-fun b!1573850 () Bool)

(assert (=> b!1573850 (= e!877701 (not (bvsge mask!877 #b00000000000000000000000000000000)))))

(declare-fun arrayContainsKey!0 (array!105131 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573850 (arrayContainsKey!0 _keys!591 (select (arr!50712 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52064 0))(
  ( (Unit!52065) )
))
(declare-fun lt!674599 () Unit!52064)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105131 (_ BitVec 64) (_ BitVec 32)) Unit!52064)

(assert (=> b!1573850 (= lt!674599 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50712 _keys!591) i!537) i!537))))

(assert (= (and start!135460 res!1075279) b!1573848))

(assert (= (and b!1573848 res!1075280) b!1573849))

(assert (= (and b!1573849 res!1075278) b!1573850))

(declare-fun m!1447087 () Bool)

(assert (=> start!135460 m!1447087))

(declare-fun m!1447089 () Bool)

(assert (=> start!135460 m!1447089))

(declare-fun m!1447091 () Bool)

(assert (=> b!1573849 m!1447091))

(assert (=> b!1573849 m!1447091))

(declare-fun m!1447093 () Bool)

(assert (=> b!1573849 m!1447093))

(assert (=> b!1573850 m!1447091))

(assert (=> b!1573850 m!1447091))

(declare-fun m!1447095 () Bool)

(assert (=> b!1573850 m!1447095))

(assert (=> b!1573850 m!1447091))

(declare-fun m!1447097 () Bool)

(assert (=> b!1573850 m!1447097))

(push 1)

