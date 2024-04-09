; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131044 () Bool)

(assert start!131044)

(declare-fun b!1537005 () Bool)

(declare-fun res!1054237 () Bool)

(declare-fun e!855453 () Bool)

(assert (=> b!1537005 (=> (not res!1054237) (not e!855453))))

(declare-datatypes ((array!102069 0))(
  ( (array!102070 (arr!49246 (Array (_ BitVec 32) (_ BitVec 64))) (size!49797 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102069)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537005 (= res!1054237 (not (= (select (arr!49246 a!2792) index!463) (select (arr!49246 a!2792) j!64))))))

(declare-fun b!1537006 () Bool)

(declare-fun res!1054238 () Bool)

(declare-fun e!855451 () Bool)

(assert (=> b!1537006 (=> (not res!1054238) (not e!855451))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537006 (= res!1054238 (validKeyInArray!0 (select (arr!49246 a!2792) i!951)))))

(declare-fun b!1537007 () Bool)

(declare-fun res!1054230 () Bool)

(assert (=> b!1537007 (=> (not res!1054230) (not e!855451))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1537007 (= res!1054230 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49797 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49797 a!2792)) (= (select (arr!49246 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537008 () Bool)

(declare-fun e!855452 () Bool)

(assert (=> b!1537008 (= e!855452 (not true))))

(declare-datatypes ((SeekEntryResult!13401 0))(
  ( (MissingZero!13401 (index!55998 (_ BitVec 32))) (Found!13401 (index!55999 (_ BitVec 32))) (Intermediate!13401 (undefined!14213 Bool) (index!56000 (_ BitVec 32)) (x!137734 (_ BitVec 32))) (Undefined!13401) (MissingVacant!13401 (index!56001 (_ BitVec 32))) )
))
(declare-fun lt!664527 () SeekEntryResult!13401)

(declare-fun lt!664526 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102069 (_ BitVec 32)) SeekEntryResult!13401)

(assert (=> b!1537008 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664526 vacantIndex!5 (select (store (arr!49246 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102070 (store (arr!49246 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49797 a!2792)) mask!2480) lt!664527)))

(declare-datatypes ((Unit!51326 0))(
  ( (Unit!51327) )
))
(declare-fun lt!664525 () Unit!51326)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51326)

(assert (=> b!1537008 (= lt!664525 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664526 vacantIndex!5 mask!2480))))

(declare-fun b!1537009 () Bool)

(declare-fun e!855455 () Bool)

(assert (=> b!1537009 (= e!855455 e!855452)))

(declare-fun res!1054229 () Bool)

(assert (=> b!1537009 (=> (not res!1054229) (not e!855452))))

(declare-fun lt!664528 () SeekEntryResult!13401)

(assert (=> b!1537009 (= res!1054229 (= lt!664527 lt!664528))))

(assert (=> b!1537009 (= lt!664527 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664526 vacantIndex!5 (select (arr!49246 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537010 () Bool)

(declare-fun res!1054236 () Bool)

(assert (=> b!1537010 (=> (not res!1054236) (not e!855451))))

(declare-datatypes ((List!35900 0))(
  ( (Nil!35897) (Cons!35896 (h!37342 (_ BitVec 64)) (t!50601 List!35900)) )
))
(declare-fun arrayNoDuplicates!0 (array!102069 (_ BitVec 32) List!35900) Bool)

(assert (=> b!1537010 (= res!1054236 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35897))))

(declare-fun b!1537011 () Bool)

(assert (=> b!1537011 (= e!855451 e!855453)))

(declare-fun res!1054232 () Bool)

(assert (=> b!1537011 (=> (not res!1054232) (not e!855453))))

(assert (=> b!1537011 (= res!1054232 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49246 a!2792) j!64) a!2792 mask!2480) lt!664528))))

(assert (=> b!1537011 (= lt!664528 (Found!13401 j!64))))

(declare-fun b!1537012 () Bool)

(declare-fun res!1054234 () Bool)

(assert (=> b!1537012 (=> (not res!1054234) (not e!855451))))

(assert (=> b!1537012 (= res!1054234 (validKeyInArray!0 (select (arr!49246 a!2792) j!64)))))

(declare-fun b!1537013 () Bool)

(declare-fun res!1054233 () Bool)

(assert (=> b!1537013 (=> (not res!1054233) (not e!855451))))

(assert (=> b!1537013 (= res!1054233 (and (= (size!49797 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49797 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49797 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1054235 () Bool)

(assert (=> start!131044 (=> (not res!1054235) (not e!855451))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131044 (= res!1054235 (validMask!0 mask!2480))))

(assert (=> start!131044 e!855451))

(assert (=> start!131044 true))

(declare-fun array_inv!38191 (array!102069) Bool)

(assert (=> start!131044 (array_inv!38191 a!2792)))

(declare-fun b!1537014 () Bool)

(assert (=> b!1537014 (= e!855453 e!855455)))

(declare-fun res!1054239 () Bool)

(assert (=> b!1537014 (=> (not res!1054239) (not e!855455))))

(assert (=> b!1537014 (= res!1054239 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664526 #b00000000000000000000000000000000) (bvslt lt!664526 (size!49797 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537014 (= lt!664526 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1537015 () Bool)

(declare-fun res!1054231 () Bool)

(assert (=> b!1537015 (=> (not res!1054231) (not e!855451))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102069 (_ BitVec 32)) Bool)

(assert (=> b!1537015 (= res!1054231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131044 res!1054235) b!1537013))

(assert (= (and b!1537013 res!1054233) b!1537006))

(assert (= (and b!1537006 res!1054238) b!1537012))

(assert (= (and b!1537012 res!1054234) b!1537015))

(assert (= (and b!1537015 res!1054231) b!1537010))

(assert (= (and b!1537010 res!1054236) b!1537007))

(assert (= (and b!1537007 res!1054230) b!1537011))

(assert (= (and b!1537011 res!1054232) b!1537005))

(assert (= (and b!1537005 res!1054237) b!1537014))

(assert (= (and b!1537014 res!1054239) b!1537009))

(assert (= (and b!1537009 res!1054229) b!1537008))

(declare-fun m!1419549 () Bool)

(assert (=> b!1537008 m!1419549))

(declare-fun m!1419551 () Bool)

(assert (=> b!1537008 m!1419551))

(assert (=> b!1537008 m!1419551))

(declare-fun m!1419553 () Bool)

(assert (=> b!1537008 m!1419553))

(declare-fun m!1419555 () Bool)

(assert (=> b!1537008 m!1419555))

(declare-fun m!1419557 () Bool)

(assert (=> b!1537010 m!1419557))

(declare-fun m!1419559 () Bool)

(assert (=> b!1537011 m!1419559))

(assert (=> b!1537011 m!1419559))

(declare-fun m!1419561 () Bool)

(assert (=> b!1537011 m!1419561))

(declare-fun m!1419563 () Bool)

(assert (=> b!1537005 m!1419563))

(assert (=> b!1537005 m!1419559))

(declare-fun m!1419565 () Bool)

(assert (=> b!1537015 m!1419565))

(declare-fun m!1419567 () Bool)

(assert (=> b!1537007 m!1419567))

(assert (=> b!1537009 m!1419559))

(assert (=> b!1537009 m!1419559))

(declare-fun m!1419569 () Bool)

(assert (=> b!1537009 m!1419569))

(declare-fun m!1419571 () Bool)

(assert (=> b!1537006 m!1419571))

(assert (=> b!1537006 m!1419571))

(declare-fun m!1419573 () Bool)

(assert (=> b!1537006 m!1419573))

(assert (=> b!1537012 m!1419559))

(assert (=> b!1537012 m!1419559))

(declare-fun m!1419575 () Bool)

(assert (=> b!1537012 m!1419575))

(declare-fun m!1419577 () Bool)

(assert (=> start!131044 m!1419577))

(declare-fun m!1419579 () Bool)

(assert (=> start!131044 m!1419579))

(declare-fun m!1419581 () Bool)

(assert (=> b!1537014 m!1419581))

(push 1)

