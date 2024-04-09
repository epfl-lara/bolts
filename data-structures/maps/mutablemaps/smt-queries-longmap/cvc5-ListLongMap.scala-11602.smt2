; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135450 () Bool)

(assert start!135450)

(declare-fun res!1075234 () Bool)

(declare-fun e!877671 () Bool)

(assert (=> start!135450 (=> (not res!1075234) (not e!877671))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135450 (= res!1075234 (validMask!0 mask!877))))

(assert (=> start!135450 e!877671))

(assert (=> start!135450 true))

(declare-datatypes ((array!105121 0))(
  ( (array!105122 (arr!50707 (Array (_ BitVec 32) (_ BitVec 64))) (size!51258 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105121)

(declare-fun array_inv!39352 (array!105121) Bool)

(assert (=> start!135450 (array_inv!39352 _keys!591)))

(declare-fun b!1573803 () Bool)

(declare-fun res!1075235 () Bool)

(assert (=> b!1573803 (=> (not res!1075235) (not e!877671))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573803 (= res!1075235 (and (= (size!51258 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51258 _keys!591)) (bvslt i!537 (size!51258 _keys!591))))))

(declare-fun b!1573804 () Bool)

(declare-fun res!1075233 () Bool)

(assert (=> b!1573804 (=> (not res!1075233) (not e!877671))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573804 (= res!1075233 (validKeyInArray!0 (select (arr!50707 _keys!591) i!537)))))

(declare-fun b!1573805 () Bool)

(assert (=> b!1573805 (= e!877671 (not true))))

(declare-fun arrayContainsKey!0 (array!105121 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573805 (arrayContainsKey!0 _keys!591 (select (arr!50707 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52054 0))(
  ( (Unit!52055) )
))
(declare-fun lt!674584 () Unit!52054)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105121 (_ BitVec 64) (_ BitVec 32)) Unit!52054)

(assert (=> b!1573805 (= lt!674584 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50707 _keys!591) i!537) i!537))))

(assert (= (and start!135450 res!1075234) b!1573803))

(assert (= (and b!1573803 res!1075235) b!1573804))

(assert (= (and b!1573804 res!1075233) b!1573805))

(declare-fun m!1447027 () Bool)

(assert (=> start!135450 m!1447027))

(declare-fun m!1447029 () Bool)

(assert (=> start!135450 m!1447029))

(declare-fun m!1447031 () Bool)

(assert (=> b!1573804 m!1447031))

(assert (=> b!1573804 m!1447031))

(declare-fun m!1447033 () Bool)

(assert (=> b!1573804 m!1447033))

(assert (=> b!1573805 m!1447031))

(assert (=> b!1573805 m!1447031))

(declare-fun m!1447035 () Bool)

(assert (=> b!1573805 m!1447035))

(assert (=> b!1573805 m!1447031))

(declare-fun m!1447037 () Bool)

(assert (=> b!1573805 m!1447037))

(push 1)

(assert (not b!1573804))

(assert (not b!1573805))

(assert (not start!135450))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

