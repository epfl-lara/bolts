; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135568 () Bool)

(assert start!135568)

(declare-fun res!1075619 () Bool)

(declare-fun e!877933 () Bool)

(assert (=> start!135568 (=> (not res!1075619) (not e!877933))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135568 (= res!1075619 (validMask!0 mask!877))))

(assert (=> start!135568 e!877933))

(assert (=> start!135568 true))

(declare-datatypes ((array!105203 0))(
  ( (array!105204 (arr!50745 (Array (_ BitVec 32) (_ BitVec 64))) (size!51296 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105203)

(declare-fun array_inv!39390 (array!105203) Bool)

(assert (=> start!135568 (array_inv!39390 _keys!591)))

(declare-fun b!1574192 () Bool)

(declare-fun e!877935 () Bool)

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574192 (= e!877935 (bvslt (bvsub (size!51296 _keys!591) (bvadd #b00000000000000000000000000000001 i!537)) (bvsub (size!51296 _keys!591) i!537)))))

(declare-fun b!1574190 () Bool)

(declare-fun res!1075621 () Bool)

(assert (=> b!1574190 (=> (not res!1075621) (not e!877933))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574190 (= res!1075621 (validKeyInArray!0 (select (arr!50745 _keys!591) i!537)))))

(declare-fun b!1574191 () Bool)

(assert (=> b!1574191 (= e!877933 (not e!877935))))

(declare-fun res!1075620 () Bool)

(assert (=> b!1574191 (=> res!1075620 e!877935)))

(declare-datatypes ((SeekEntryResult!13650 0))(
  ( (MissingZero!13650 (index!56997 (_ BitVec 32))) (Found!13650 (index!56998 (_ BitVec 32))) (Intermediate!13650 (undefined!14462 Bool) (index!56999 (_ BitVec 32)) (x!141882 (_ BitVec 32))) (Undefined!13650) (MissingVacant!13650 (index!57000 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105203 (_ BitVec 32)) SeekEntryResult!13650)

(assert (=> b!1574191 (= res!1075620 (not (= (seekEntryOrOpen!0 (select (arr!50745 _keys!591) i!537) _keys!591 mask!877) (Found!13650 i!537))))))

(declare-fun arrayContainsKey!0 (array!105203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574191 (arrayContainsKey!0 _keys!591 (select (arr!50745 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52112 0))(
  ( (Unit!52113) )
))
(declare-fun lt!674698 () Unit!52112)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105203 (_ BitVec 64) (_ BitVec 32)) Unit!52112)

(assert (=> b!1574191 (= lt!674698 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50745 _keys!591) i!537) i!537))))

(declare-fun b!1574189 () Bool)

(declare-fun res!1075622 () Bool)

(assert (=> b!1574189 (=> (not res!1075622) (not e!877933))))

(assert (=> b!1574189 (= res!1075622 (and (= (size!51296 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51296 _keys!591)) (bvslt i!537 (size!51296 _keys!591))))))

(assert (= (and start!135568 res!1075619) b!1574189))

(assert (= (and b!1574189 res!1075622) b!1574190))

(assert (= (and b!1574190 res!1075621) b!1574191))

(assert (= (and b!1574191 (not res!1075620)) b!1574192))

(declare-fun m!1447487 () Bool)

(assert (=> start!135568 m!1447487))

(declare-fun m!1447489 () Bool)

(assert (=> start!135568 m!1447489))

(declare-fun m!1447491 () Bool)

(assert (=> b!1574190 m!1447491))

(assert (=> b!1574190 m!1447491))

(declare-fun m!1447493 () Bool)

(assert (=> b!1574190 m!1447493))

(assert (=> b!1574191 m!1447491))

(assert (=> b!1574191 m!1447491))

(declare-fun m!1447495 () Bool)

(assert (=> b!1574191 m!1447495))

(assert (=> b!1574191 m!1447491))

(declare-fun m!1447497 () Bool)

(assert (=> b!1574191 m!1447497))

(assert (=> b!1574191 m!1447491))

(declare-fun m!1447499 () Bool)

(assert (=> b!1574191 m!1447499))

(push 1)

(assert (not b!1574190))

(assert (not b!1574191))

(assert (not start!135568))

(check-sat)

(pop 1)

(push 1)

(check-sat)

