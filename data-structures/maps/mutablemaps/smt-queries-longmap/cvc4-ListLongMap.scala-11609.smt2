; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135496 () Bool)

(assert start!135496)

(declare-fun res!1075450 () Bool)

(declare-fun e!877817 () Bool)

(assert (=> start!135496 (=> (not res!1075450) (not e!877817))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135496 (= res!1075450 (validMask!0 mask!877))))

(assert (=> start!135496 e!877817))

(assert (=> start!135496 true))

(declare-datatypes ((array!105167 0))(
  ( (array!105168 (arr!50730 (Array (_ BitVec 32) (_ BitVec 64))) (size!51281 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105167)

(declare-fun array_inv!39375 (array!105167) Bool)

(assert (=> start!135496 (array_inv!39375 _keys!591)))

(declare-fun b!1574019 () Bool)

(declare-fun res!1075449 () Bool)

(assert (=> b!1574019 (=> (not res!1075449) (not e!877817))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574019 (= res!1075449 (and (= (size!51281 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51281 _keys!591)) (bvslt i!537 (size!51281 _keys!591))))))

(declare-fun b!1574020 () Bool)

(declare-fun res!1075451 () Bool)

(assert (=> b!1574020 (=> (not res!1075451) (not e!877817))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574020 (= res!1075451 (validKeyInArray!0 (select (arr!50730 _keys!591) i!537)))))

(declare-fun b!1574021 () Bool)

(assert (=> b!1574021 (= e!877817 (not true))))

(declare-datatypes ((SeekEntryResult!13647 0))(
  ( (MissingZero!13647 (index!56985 (_ BitVec 32))) (Found!13647 (index!56986 (_ BitVec 32))) (Intermediate!13647 (undefined!14459 Bool) (index!56987 (_ BitVec 32)) (x!141839 (_ BitVec 32))) (Undefined!13647) (MissingVacant!13647 (index!56988 (_ BitVec 32))) )
))
(declare-fun lt!674679 () SeekEntryResult!13647)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105167 (_ BitVec 32)) SeekEntryResult!13647)

(assert (=> b!1574021 (= lt!674679 (seekEntryOrOpen!0 (select (arr!50730 _keys!591) i!537) _keys!591 mask!877))))

(declare-fun arrayContainsKey!0 (array!105167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574021 (arrayContainsKey!0 _keys!591 (select (arr!50730 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52100 0))(
  ( (Unit!52101) )
))
(declare-fun lt!674680 () Unit!52100)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105167 (_ BitVec 64) (_ BitVec 32)) Unit!52100)

(assert (=> b!1574021 (= lt!674680 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50730 _keys!591) i!537) i!537))))

(assert (= (and start!135496 res!1075450) b!1574019))

(assert (= (and b!1574019 res!1075449) b!1574020))

(assert (= (and b!1574020 res!1075451) b!1574021))

(declare-fun m!1447325 () Bool)

(assert (=> start!135496 m!1447325))

(declare-fun m!1447327 () Bool)

(assert (=> start!135496 m!1447327))

(declare-fun m!1447329 () Bool)

(assert (=> b!1574020 m!1447329))

(assert (=> b!1574020 m!1447329))

(declare-fun m!1447331 () Bool)

(assert (=> b!1574020 m!1447331))

(assert (=> b!1574021 m!1447329))

(assert (=> b!1574021 m!1447329))

(declare-fun m!1447333 () Bool)

(assert (=> b!1574021 m!1447333))

(assert (=> b!1574021 m!1447329))

(declare-fun m!1447335 () Bool)

(assert (=> b!1574021 m!1447335))

(assert (=> b!1574021 m!1447329))

(declare-fun m!1447337 () Bool)

(assert (=> b!1574021 m!1447337))

(push 1)

(assert (not b!1574020))

(assert (not b!1574021))

(assert (not start!135496))

(check-sat)

(pop 1)

