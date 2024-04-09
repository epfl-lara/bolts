; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135558 () Bool)

(assert start!135558)

(declare-fun res!1075566 () Bool)

(declare-fun e!877896 () Bool)

(assert (=> start!135558 (=> (not res!1075566) (not e!877896))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135558 (= res!1075566 (validMask!0 mask!877))))

(assert (=> start!135558 e!877896))

(assert (=> start!135558 true))

(declare-datatypes ((array!105193 0))(
  ( (array!105194 (arr!50740 (Array (_ BitVec 32) (_ BitVec 64))) (size!51291 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105193)

(declare-fun array_inv!39385 (array!105193) Bool)

(assert (=> start!135558 (array_inv!39385 _keys!591)))

(declare-fun b!1574136 () Bool)

(declare-fun res!1075568 () Bool)

(assert (=> b!1574136 (=> (not res!1075568) (not e!877896))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574136 (= res!1075568 (and (= (size!51291 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51291 _keys!591)) (bvslt i!537 (size!51291 _keys!591))))))

(declare-fun b!1574137 () Bool)

(declare-fun res!1075567 () Bool)

(assert (=> b!1574137 (=> (not res!1075567) (not e!877896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574137 (= res!1075567 (validKeyInArray!0 (select (arr!50740 _keys!591) i!537)))))

(declare-fun b!1574138 () Bool)

(assert (=> b!1574138 (= e!877896 (not true))))

(declare-fun arrayContainsKey!0 (array!105193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574138 (arrayContainsKey!0 _keys!591 (select (arr!50740 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52102 0))(
  ( (Unit!52103) )
))
(declare-fun lt!674683 () Unit!52102)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105193 (_ BitVec 64) (_ BitVec 32)) Unit!52102)

(assert (=> b!1574138 (= lt!674683 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50740 _keys!591) i!537) i!537))))

(assert (= (and start!135558 res!1075566) b!1574136))

(assert (= (and b!1574136 res!1075568) b!1574137))

(assert (= (and b!1574137 res!1075567) b!1574138))

(declare-fun m!1447423 () Bool)

(assert (=> start!135558 m!1447423))

(declare-fun m!1447425 () Bool)

(assert (=> start!135558 m!1447425))

(declare-fun m!1447427 () Bool)

(assert (=> b!1574137 m!1447427))

(assert (=> b!1574137 m!1447427))

(declare-fun m!1447429 () Bool)

(assert (=> b!1574137 m!1447429))

(assert (=> b!1574138 m!1447427))

(assert (=> b!1574138 m!1447427))

(declare-fun m!1447431 () Bool)

(assert (=> b!1574138 m!1447431))

(assert (=> b!1574138 m!1447427))

(declare-fun m!1447433 () Bool)

(assert (=> b!1574138 m!1447433))

(push 1)

(assert (not b!1574138))

(assert (not b!1574137))

(assert (not start!135558))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

