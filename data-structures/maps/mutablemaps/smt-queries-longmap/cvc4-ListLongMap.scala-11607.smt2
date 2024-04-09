; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135484 () Bool)

(assert start!135484)

(declare-fun res!1075388 () Bool)

(declare-fun e!877772 () Bool)

(assert (=> start!135484 (=> (not res!1075388) (not e!877772))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135484 (= res!1075388 (validMask!0 mask!877))))

(assert (=> start!135484 e!877772))

(assert (=> start!135484 true))

(declare-datatypes ((array!105155 0))(
  ( (array!105156 (arr!50724 (Array (_ BitVec 32) (_ BitVec 64))) (size!51275 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105155)

(declare-fun array_inv!39369 (array!105155) Bool)

(assert (=> start!135484 (array_inv!39369 _keys!591)))

(declare-fun b!1573956 () Bool)

(declare-fun res!1075386 () Bool)

(assert (=> b!1573956 (=> (not res!1075386) (not e!877772))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573956 (= res!1075386 (and (= (size!51275 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51275 _keys!591)) (bvslt i!537 (size!51275 _keys!591))))))

(declare-fun b!1573957 () Bool)

(declare-fun res!1075387 () Bool)

(assert (=> b!1573957 (=> (not res!1075387) (not e!877772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573957 (= res!1075387 (validKeyInArray!0 (select (arr!50724 _keys!591) i!537)))))

(declare-fun b!1573958 () Bool)

(assert (=> b!1573958 (= e!877772 (not true))))

(declare-datatypes ((SeekEntryResult!13641 0))(
  ( (MissingZero!13641 (index!56961 (_ BitVec 32))) (Found!13641 (index!56962 (_ BitVec 32))) (Intermediate!13641 (undefined!14453 Bool) (index!56963 (_ BitVec 32)) (x!141817 (_ BitVec 32))) (Undefined!13641) (MissingVacant!13641 (index!56964 (_ BitVec 32))) )
))
(declare-fun lt!674653 () SeekEntryResult!13641)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105155 (_ BitVec 32)) SeekEntryResult!13641)

(assert (=> b!1573958 (= lt!674653 (seekEntryOrOpen!0 (select (arr!50724 _keys!591) i!537) _keys!591 mask!877))))

(declare-fun arrayContainsKey!0 (array!105155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573958 (arrayContainsKey!0 _keys!591 (select (arr!50724 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52088 0))(
  ( (Unit!52089) )
))
(declare-fun lt!674652 () Unit!52088)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105155 (_ BitVec 64) (_ BitVec 32)) Unit!52088)

(assert (=> b!1573958 (= lt!674652 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50724 _keys!591) i!537) i!537))))

(assert (= (and start!135484 res!1075388) b!1573956))

(assert (= (and b!1573956 res!1075386) b!1573957))

(assert (= (and b!1573957 res!1075387) b!1573958))

(declare-fun m!1447241 () Bool)

(assert (=> start!135484 m!1447241))

(declare-fun m!1447243 () Bool)

(assert (=> start!135484 m!1447243))

(declare-fun m!1447245 () Bool)

(assert (=> b!1573957 m!1447245))

(assert (=> b!1573957 m!1447245))

(declare-fun m!1447247 () Bool)

(assert (=> b!1573957 m!1447247))

(assert (=> b!1573958 m!1447245))

(assert (=> b!1573958 m!1447245))

(declare-fun m!1447249 () Bool)

(assert (=> b!1573958 m!1447249))

(assert (=> b!1573958 m!1447245))

(declare-fun m!1447251 () Bool)

(assert (=> b!1573958 m!1447251))

(assert (=> b!1573958 m!1447245))

(declare-fun m!1447253 () Bool)

(assert (=> b!1573958 m!1447253))

(push 1)

(assert (not b!1573957))

(assert (not b!1573958))

(assert (not start!135484))

(check-sat)

(pop 1)

(push 1)

(check-sat)

