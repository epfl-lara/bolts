; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135564 () Bool)

(assert start!135564)

(declare-fun b!1574167 () Bool)

(declare-fun e!877916 () Bool)

(declare-fun e!877917 () Bool)

(assert (=> b!1574167 (= e!877916 (not e!877917))))

(declare-fun res!1075598 () Bool)

(assert (=> b!1574167 (=> res!1075598 e!877917)))

(declare-datatypes ((array!105199 0))(
  ( (array!105200 (arr!50743 (Array (_ BitVec 32) (_ BitVec 64))) (size!51294 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105199)

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun i!537 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13648 0))(
  ( (MissingZero!13648 (index!56989 (_ BitVec 32))) (Found!13648 (index!56990 (_ BitVec 32))) (Intermediate!13648 (undefined!14460 Bool) (index!56991 (_ BitVec 32)) (x!141880 (_ BitVec 32))) (Undefined!13648) (MissingVacant!13648 (index!56992 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105199 (_ BitVec 32)) SeekEntryResult!13648)

(assert (=> b!1574167 (= res!1075598 (not (= (seekEntryOrOpen!0 (select (arr!50743 _keys!591) i!537) _keys!591 mask!877) (Found!13648 i!537))))))

(declare-fun arrayContainsKey!0 (array!105199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574167 (arrayContainsKey!0 _keys!591 (select (arr!50743 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52108 0))(
  ( (Unit!52109) )
))
(declare-fun lt!674692 () Unit!52108)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105199 (_ BitVec 64) (_ BitVec 32)) Unit!52108)

(assert (=> b!1574167 (= lt!674692 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50743 _keys!591) i!537) i!537))))

(declare-fun b!1574168 () Bool)

(assert (=> b!1574168 (= e!877917 (bvslt (bvsub (size!51294 _keys!591) (bvadd #b00000000000000000000000000000001 i!537)) (bvsub (size!51294 _keys!591) i!537)))))

(declare-fun b!1574165 () Bool)

(declare-fun res!1075596 () Bool)

(assert (=> b!1574165 (=> (not res!1075596) (not e!877916))))

(assert (=> b!1574165 (= res!1075596 (and (= (size!51294 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51294 _keys!591)) (bvslt i!537 (size!51294 _keys!591))))))

(declare-fun b!1574166 () Bool)

(declare-fun res!1075597 () Bool)

(assert (=> b!1574166 (=> (not res!1075597) (not e!877916))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574166 (= res!1075597 (validKeyInArray!0 (select (arr!50743 _keys!591) i!537)))))

(declare-fun res!1075595 () Bool)

(assert (=> start!135564 (=> (not res!1075595) (not e!877916))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135564 (= res!1075595 (validMask!0 mask!877))))

(assert (=> start!135564 e!877916))

(assert (=> start!135564 true))

(declare-fun array_inv!39388 (array!105199) Bool)

(assert (=> start!135564 (array_inv!39388 _keys!591)))

(assert (= (and start!135564 res!1075595) b!1574165))

(assert (= (and b!1574165 res!1075596) b!1574166))

(assert (= (and b!1574166 res!1075597) b!1574167))

(assert (= (and b!1574167 (not res!1075598)) b!1574168))

(declare-fun m!1447459 () Bool)

(assert (=> b!1574167 m!1447459))

(assert (=> b!1574167 m!1447459))

(declare-fun m!1447461 () Bool)

(assert (=> b!1574167 m!1447461))

(assert (=> b!1574167 m!1447459))

(declare-fun m!1447463 () Bool)

(assert (=> b!1574167 m!1447463))

(assert (=> b!1574167 m!1447459))

(declare-fun m!1447465 () Bool)

(assert (=> b!1574167 m!1447465))

(assert (=> b!1574166 m!1447459))

(assert (=> b!1574166 m!1447459))

(declare-fun m!1447467 () Bool)

(assert (=> b!1574166 m!1447467))

(declare-fun m!1447469 () Bool)

(assert (=> start!135564 m!1447469))

(declare-fun m!1447471 () Bool)

(assert (=> start!135564 m!1447471))

(push 1)

(assert (not start!135564))

(assert (not b!1574166))

(assert (not b!1574167))

(check-sat)

(pop 1)

(push 1)

(check-sat)

