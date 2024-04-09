; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135488 () Bool)

(assert start!135488)

(declare-fun b!1573981 () Bool)

(declare-fun e!877789 () Bool)

(declare-fun e!877791 () Bool)

(assert (=> b!1573981 (= e!877789 (not e!877791))))

(declare-fun res!1075410 () Bool)

(assert (=> b!1573981 (=> res!1075410 e!877791)))

(declare-datatypes ((array!105159 0))(
  ( (array!105160 (arr!50726 (Array (_ BitVec 32) (_ BitVec 64))) (size!51277 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105159)

(declare-fun i!537 () (_ BitVec 32))

(declare-fun mask!877 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13643 0))(
  ( (MissingZero!13643 (index!56969 (_ BitVec 32))) (Found!13643 (index!56970 (_ BitVec 32))) (Intermediate!13643 (undefined!14455 Bool) (index!56971 (_ BitVec 32)) (x!141827 (_ BitVec 32))) (Undefined!13643) (MissingVacant!13643 (index!56972 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105159 (_ BitVec 32)) SeekEntryResult!13643)

(assert (=> b!1573981 (= res!1075410 (not (= (seekEntryOrOpen!0 (select (arr!50726 _keys!591) i!537) _keys!591 mask!877) (Found!13643 i!537))))))

(declare-fun arrayContainsKey!0 (array!105159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573981 (arrayContainsKey!0 _keys!591 (select (arr!50726 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52092 0))(
  ( (Unit!52093) )
))
(declare-fun lt!674659 () Unit!52092)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105159 (_ BitVec 64) (_ BitVec 32)) Unit!52092)

(assert (=> b!1573981 (= lt!674659 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50726 _keys!591) i!537) i!537))))

(declare-fun res!1075409 () Bool)

(assert (=> start!135488 (=> (not res!1075409) (not e!877789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135488 (= res!1075409 (validMask!0 mask!877))))

(assert (=> start!135488 e!877789))

(assert (=> start!135488 true))

(declare-fun array_inv!39371 (array!105159) Bool)

(assert (=> start!135488 (array_inv!39371 _keys!591)))

(declare-fun b!1573980 () Bool)

(declare-fun res!1075411 () Bool)

(assert (=> b!1573980 (=> (not res!1075411) (not e!877789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573980 (= res!1075411 (validKeyInArray!0 (select (arr!50726 _keys!591) i!537)))))

(declare-fun b!1573979 () Bool)

(declare-fun res!1075412 () Bool)

(assert (=> b!1573979 (=> (not res!1075412) (not e!877789))))

(assert (=> b!1573979 (= res!1075412 (and (= (size!51277 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51277 _keys!591)) (bvslt i!537 (size!51277 _keys!591))))))

(declare-fun b!1573982 () Bool)

(assert (=> b!1573982 (= e!877791 (bvsge (bvadd #b00000000000000000000000000000001 i!537) #b00000000000000000000000000000000))))

(assert (= (and start!135488 res!1075409) b!1573979))

(assert (= (and b!1573979 res!1075412) b!1573980))

(assert (= (and b!1573980 res!1075411) b!1573981))

(assert (= (and b!1573981 (not res!1075410)) b!1573982))

(declare-fun m!1447269 () Bool)

(assert (=> b!1573981 m!1447269))

(assert (=> b!1573981 m!1447269))

(declare-fun m!1447271 () Bool)

(assert (=> b!1573981 m!1447271))

(assert (=> b!1573981 m!1447269))

(declare-fun m!1447273 () Bool)

(assert (=> b!1573981 m!1447273))

(assert (=> b!1573981 m!1447269))

(declare-fun m!1447275 () Bool)

(assert (=> b!1573981 m!1447275))

(declare-fun m!1447277 () Bool)

(assert (=> start!135488 m!1447277))

(declare-fun m!1447279 () Bool)

(assert (=> start!135488 m!1447279))

(assert (=> b!1573980 m!1447269))

(assert (=> b!1573980 m!1447269))

(declare-fun m!1447281 () Bool)

(assert (=> b!1573980 m!1447281))

(check-sat (not b!1573981) (not start!135488) (not b!1573980))
(check-sat)
