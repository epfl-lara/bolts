; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135482 () Bool)

(assert start!135482)

(declare-fun res!1075379 () Bool)

(declare-fun e!877767 () Bool)

(assert (=> start!135482 (=> (not res!1075379) (not e!877767))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135482 (= res!1075379 (validMask!0 mask!877))))

(assert (=> start!135482 e!877767))

(assert (=> start!135482 true))

(declare-datatypes ((array!105153 0))(
  ( (array!105154 (arr!50723 (Array (_ BitVec 32) (_ BitVec 64))) (size!51274 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105153)

(declare-fun array_inv!39368 (array!105153) Bool)

(assert (=> start!135482 (array_inv!39368 _keys!591)))

(declare-fun b!1573947 () Bool)

(declare-fun res!1075377 () Bool)

(assert (=> b!1573947 (=> (not res!1075377) (not e!877767))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573947 (= res!1075377 (and (= (size!51274 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51274 _keys!591)) (bvslt i!537 (size!51274 _keys!591))))))

(declare-fun b!1573948 () Bool)

(declare-fun res!1075378 () Bool)

(assert (=> b!1573948 (=> (not res!1075378) (not e!877767))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573948 (= res!1075378 (validKeyInArray!0 (select (arr!50723 _keys!591) i!537)))))

(declare-fun b!1573949 () Bool)

(assert (=> b!1573949 (= e!877767 (not true))))

(declare-datatypes ((SeekEntryResult!13640 0))(
  ( (MissingZero!13640 (index!56957 (_ BitVec 32))) (Found!13640 (index!56958 (_ BitVec 32))) (Intermediate!13640 (undefined!14452 Bool) (index!56959 (_ BitVec 32)) (x!141816 (_ BitVec 32))) (Undefined!13640) (MissingVacant!13640 (index!56960 (_ BitVec 32))) )
))
(declare-fun lt!674646 () SeekEntryResult!13640)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105153 (_ BitVec 32)) SeekEntryResult!13640)

(assert (=> b!1573949 (= lt!674646 (seekEntryOrOpen!0 (select (arr!50723 _keys!591) i!537) _keys!591 mask!877))))

(declare-fun arrayContainsKey!0 (array!105153 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573949 (arrayContainsKey!0 _keys!591 (select (arr!50723 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52086 0))(
  ( (Unit!52087) )
))
(declare-fun lt!674647 () Unit!52086)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105153 (_ BitVec 64) (_ BitVec 32)) Unit!52086)

(assert (=> b!1573949 (= lt!674647 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50723 _keys!591) i!537) i!537))))

(assert (= (and start!135482 res!1075379) b!1573947))

(assert (= (and b!1573947 res!1075377) b!1573948))

(assert (= (and b!1573948 res!1075378) b!1573949))

(declare-fun m!1447227 () Bool)

(assert (=> start!135482 m!1447227))

(declare-fun m!1447229 () Bool)

(assert (=> start!135482 m!1447229))

(declare-fun m!1447231 () Bool)

(assert (=> b!1573948 m!1447231))

(assert (=> b!1573948 m!1447231))

(declare-fun m!1447233 () Bool)

(assert (=> b!1573948 m!1447233))

(assert (=> b!1573949 m!1447231))

(assert (=> b!1573949 m!1447231))

(declare-fun m!1447235 () Bool)

(assert (=> b!1573949 m!1447235))

(assert (=> b!1573949 m!1447231))

(declare-fun m!1447237 () Bool)

(assert (=> b!1573949 m!1447237))

(assert (=> b!1573949 m!1447231))

(declare-fun m!1447239 () Bool)

(assert (=> b!1573949 m!1447239))

(check-sat (not b!1573948) (not b!1573949) (not start!135482))
