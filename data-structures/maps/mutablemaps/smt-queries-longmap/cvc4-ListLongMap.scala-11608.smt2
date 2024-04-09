; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135490 () Bool)

(assert start!135490)

(declare-fun b!1573992 () Bool)

(declare-fun res!1075421 () Bool)

(declare-fun e!877799 () Bool)

(assert (=> b!1573992 (=> (not res!1075421) (not e!877799))))

(declare-datatypes ((array!105161 0))(
  ( (array!105162 (arr!50727 (Array (_ BitVec 32) (_ BitVec 64))) (size!51278 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105161)

(declare-fun i!537 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573992 (= res!1075421 (validKeyInArray!0 (select (arr!50727 _keys!591) i!537)))))

(declare-fun b!1573993 () Bool)

(declare-fun e!877800 () Bool)

(assert (=> b!1573993 (= e!877799 (not e!877800))))

(declare-fun res!1075423 () Bool)

(assert (=> b!1573993 (=> res!1075423 e!877800)))

(declare-fun mask!877 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13644 0))(
  ( (MissingZero!13644 (index!56973 (_ BitVec 32))) (Found!13644 (index!56974 (_ BitVec 32))) (Intermediate!13644 (undefined!14456 Bool) (index!56975 (_ BitVec 32)) (x!141828 (_ BitVec 32))) (Undefined!13644) (MissingVacant!13644 (index!56976 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105161 (_ BitVec 32)) SeekEntryResult!13644)

(assert (=> b!1573993 (= res!1075423 (not (= (seekEntryOrOpen!0 (select (arr!50727 _keys!591) i!537) _keys!591 mask!877) (Found!13644 i!537))))))

(declare-fun arrayContainsKey!0 (array!105161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573993 (arrayContainsKey!0 _keys!591 (select (arr!50727 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52094 0))(
  ( (Unit!52095) )
))
(declare-fun lt!674662 () Unit!52094)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105161 (_ BitVec 64) (_ BitVec 32)) Unit!52094)

(assert (=> b!1573993 (= lt!674662 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50727 _keys!591) i!537) i!537))))

(declare-fun b!1573991 () Bool)

(declare-fun res!1075424 () Bool)

(assert (=> b!1573991 (=> (not res!1075424) (not e!877799))))

(assert (=> b!1573991 (= res!1075424 (and (= (size!51278 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51278 _keys!591)) (bvslt i!537 (size!51278 _keys!591))))))

(declare-fun b!1573994 () Bool)

(assert (=> b!1573994 (= e!877800 (bvsge (bvadd #b00000000000000000000000000000001 i!537) #b00000000000000000000000000000000))))

(declare-fun res!1075422 () Bool)

(assert (=> start!135490 (=> (not res!1075422) (not e!877799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135490 (= res!1075422 (validMask!0 mask!877))))

(assert (=> start!135490 e!877799))

(assert (=> start!135490 true))

(declare-fun array_inv!39372 (array!105161) Bool)

(assert (=> start!135490 (array_inv!39372 _keys!591)))

(assert (= (and start!135490 res!1075422) b!1573991))

(assert (= (and b!1573991 res!1075424) b!1573992))

(assert (= (and b!1573992 res!1075421) b!1573993))

(assert (= (and b!1573993 (not res!1075423)) b!1573994))

(declare-fun m!1447283 () Bool)

(assert (=> b!1573992 m!1447283))

(assert (=> b!1573992 m!1447283))

(declare-fun m!1447285 () Bool)

(assert (=> b!1573992 m!1447285))

(assert (=> b!1573993 m!1447283))

(assert (=> b!1573993 m!1447283))

(declare-fun m!1447287 () Bool)

(assert (=> b!1573993 m!1447287))

(assert (=> b!1573993 m!1447283))

(declare-fun m!1447289 () Bool)

(assert (=> b!1573993 m!1447289))

(assert (=> b!1573993 m!1447283))

(declare-fun m!1447291 () Bool)

(assert (=> b!1573993 m!1447291))

(declare-fun m!1447293 () Bool)

(assert (=> start!135490 m!1447293))

(declare-fun m!1447295 () Bool)

(assert (=> start!135490 m!1447295))

(push 1)

(assert (not b!1573992))

(assert (not b!1573993))

(assert (not start!135490))

(check-sat)

(pop 1)

(push 1)

(check-sat)

