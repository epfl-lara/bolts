; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135454 () Bool)

(assert start!135454)

(declare-fun res!1075251 () Bool)

(declare-fun e!877682 () Bool)

(assert (=> start!135454 (=> (not res!1075251) (not e!877682))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135454 (= res!1075251 (validMask!0 mask!877))))

(assert (=> start!135454 e!877682))

(assert (=> start!135454 true))

(declare-datatypes ((array!105125 0))(
  ( (array!105126 (arr!50709 (Array (_ BitVec 32) (_ BitVec 64))) (size!51260 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105125)

(declare-fun array_inv!39354 (array!105125) Bool)

(assert (=> start!135454 (array_inv!39354 _keys!591)))

(declare-fun b!1573821 () Bool)

(declare-fun res!1075253 () Bool)

(assert (=> b!1573821 (=> (not res!1075253) (not e!877682))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573821 (= res!1075253 (and (= (size!51260 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51260 _keys!591)) (bvslt i!537 (size!51260 _keys!591))))))

(declare-fun b!1573822 () Bool)

(declare-fun res!1075252 () Bool)

(assert (=> b!1573822 (=> (not res!1075252) (not e!877682))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573822 (= res!1075252 (validKeyInArray!0 (select (arr!50709 _keys!591) i!537)))))

(declare-fun b!1573823 () Bool)

(assert (=> b!1573823 (= e!877682 (not true))))

(declare-fun arrayContainsKey!0 (array!105125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573823 (arrayContainsKey!0 _keys!591 (select (arr!50709 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52058 0))(
  ( (Unit!52059) )
))
(declare-fun lt!674590 () Unit!52058)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105125 (_ BitVec 64) (_ BitVec 32)) Unit!52058)

(assert (=> b!1573823 (= lt!674590 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50709 _keys!591) i!537) i!537))))

(assert (= (and start!135454 res!1075251) b!1573821))

(assert (= (and b!1573821 res!1075253) b!1573822))

(assert (= (and b!1573822 res!1075252) b!1573823))

(declare-fun m!1447051 () Bool)

(assert (=> start!135454 m!1447051))

(declare-fun m!1447053 () Bool)

(assert (=> start!135454 m!1447053))

(declare-fun m!1447055 () Bool)

(assert (=> b!1573822 m!1447055))

(assert (=> b!1573822 m!1447055))

(declare-fun m!1447057 () Bool)

(assert (=> b!1573822 m!1447057))

(assert (=> b!1573823 m!1447055))

(assert (=> b!1573823 m!1447055))

(declare-fun m!1447059 () Bool)

(assert (=> b!1573823 m!1447059))

(assert (=> b!1573823 m!1447055))

(declare-fun m!1447061 () Bool)

(assert (=> b!1573823 m!1447061))

(push 1)

(assert (not b!1573822))

