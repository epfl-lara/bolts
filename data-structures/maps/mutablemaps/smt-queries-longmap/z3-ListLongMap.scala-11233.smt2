; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131064 () Bool)

(assert start!131064)

(declare-fun b!1537335 () Bool)

(declare-fun res!1054568 () Bool)

(declare-fun e!855604 () Bool)

(assert (=> b!1537335 (=> (not res!1054568) (not e!855604))))

(declare-datatypes ((array!102089 0))(
  ( (array!102090 (arr!49256 (Array (_ BitVec 32) (_ BitVec 64))) (size!49807 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102089)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537335 (= res!1054568 (validKeyInArray!0 (select (arr!49256 a!2792) j!64)))))

(declare-fun b!1537336 () Bool)

(declare-fun e!855603 () Bool)

(assert (=> b!1537336 (= e!855603 (not true))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13411 0))(
  ( (MissingZero!13411 (index!56038 (_ BitVec 32))) (Found!13411 (index!56039 (_ BitVec 32))) (Intermediate!13411 (undefined!14223 Bool) (index!56040 (_ BitVec 32)) (x!137768 (_ BitVec 32))) (Undefined!13411) (MissingVacant!13411 (index!56041 (_ BitVec 32))) )
))
(declare-fun lt!664647 () SeekEntryResult!13411)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun lt!664648 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102089 (_ BitVec 32)) SeekEntryResult!13411)

(assert (=> b!1537336 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664648 vacantIndex!5 (select (store (arr!49256 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102090 (store (arr!49256 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49807 a!2792)) mask!2480) lt!664647)))

(declare-datatypes ((Unit!51346 0))(
  ( (Unit!51347) )
))
(declare-fun lt!664646 () Unit!51346)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102089 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51346)

(assert (=> b!1537336 (= lt!664646 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664648 vacantIndex!5 mask!2480))))

(declare-fun res!1054561 () Bool)

(assert (=> start!131064 (=> (not res!1054561) (not e!855604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131064 (= res!1054561 (validMask!0 mask!2480))))

(assert (=> start!131064 e!855604))

(assert (=> start!131064 true))

(declare-fun array_inv!38201 (array!102089) Bool)

(assert (=> start!131064 (array_inv!38201 a!2792)))

(declare-fun b!1537337 () Bool)

(declare-fun e!855602 () Bool)

(assert (=> b!1537337 (= e!855604 e!855602)))

(declare-fun res!1054560 () Bool)

(assert (=> b!1537337 (=> (not res!1054560) (not e!855602))))

(declare-fun lt!664645 () SeekEntryResult!13411)

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537337 (= res!1054560 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49256 a!2792) j!64) a!2792 mask!2480) lt!664645))))

(assert (=> b!1537337 (= lt!664645 (Found!13411 j!64))))

(declare-fun b!1537338 () Bool)

(declare-fun res!1054564 () Bool)

(assert (=> b!1537338 (=> (not res!1054564) (not e!855604))))

(assert (=> b!1537338 (= res!1054564 (and (= (size!49807 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49807 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49807 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537339 () Bool)

(declare-fun res!1054569 () Bool)

(assert (=> b!1537339 (=> (not res!1054569) (not e!855604))))

(assert (=> b!1537339 (= res!1054569 (validKeyInArray!0 (select (arr!49256 a!2792) i!951)))))

(declare-fun b!1537340 () Bool)

(declare-fun res!1054559 () Bool)

(assert (=> b!1537340 (=> (not res!1054559) (not e!855604))))

(declare-datatypes ((List!35910 0))(
  ( (Nil!35907) (Cons!35906 (h!37352 (_ BitVec 64)) (t!50611 List!35910)) )
))
(declare-fun arrayNoDuplicates!0 (array!102089 (_ BitVec 32) List!35910) Bool)

(assert (=> b!1537340 (= res!1054559 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35907))))

(declare-fun b!1537341 () Bool)

(declare-fun res!1054563 () Bool)

(assert (=> b!1537341 (=> (not res!1054563) (not e!855602))))

(assert (=> b!1537341 (= res!1054563 (not (= (select (arr!49256 a!2792) index!463) (select (arr!49256 a!2792) j!64))))))

(declare-fun b!1537342 () Bool)

(declare-fun e!855601 () Bool)

(assert (=> b!1537342 (= e!855602 e!855601)))

(declare-fun res!1054565 () Bool)

(assert (=> b!1537342 (=> (not res!1054565) (not e!855601))))

(assert (=> b!1537342 (= res!1054565 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664648 #b00000000000000000000000000000000) (bvslt lt!664648 (size!49807 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537342 (= lt!664648 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1537343 () Bool)

(declare-fun res!1054566 () Bool)

(assert (=> b!1537343 (=> (not res!1054566) (not e!855604))))

(assert (=> b!1537343 (= res!1054566 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49807 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49807 a!2792)) (= (select (arr!49256 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537344 () Bool)

(declare-fun res!1054562 () Bool)

(assert (=> b!1537344 (=> (not res!1054562) (not e!855604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102089 (_ BitVec 32)) Bool)

(assert (=> b!1537344 (= res!1054562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537345 () Bool)

(assert (=> b!1537345 (= e!855601 e!855603)))

(declare-fun res!1054567 () Bool)

(assert (=> b!1537345 (=> (not res!1054567) (not e!855603))))

(assert (=> b!1537345 (= res!1054567 (= lt!664647 lt!664645))))

(assert (=> b!1537345 (= lt!664647 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664648 vacantIndex!5 (select (arr!49256 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!131064 res!1054561) b!1537338))

(assert (= (and b!1537338 res!1054564) b!1537339))

(assert (= (and b!1537339 res!1054569) b!1537335))

(assert (= (and b!1537335 res!1054568) b!1537344))

(assert (= (and b!1537344 res!1054562) b!1537340))

(assert (= (and b!1537340 res!1054559) b!1537343))

(assert (= (and b!1537343 res!1054566) b!1537337))

(assert (= (and b!1537337 res!1054560) b!1537341))

(assert (= (and b!1537341 res!1054563) b!1537342))

(assert (= (and b!1537342 res!1054565) b!1537345))

(assert (= (and b!1537345 res!1054567) b!1537336))

(declare-fun m!1419889 () Bool)

(assert (=> b!1537339 m!1419889))

(assert (=> b!1537339 m!1419889))

(declare-fun m!1419891 () Bool)

(assert (=> b!1537339 m!1419891))

(declare-fun m!1419893 () Bool)

(assert (=> b!1537335 m!1419893))

(assert (=> b!1537335 m!1419893))

(declare-fun m!1419895 () Bool)

(assert (=> b!1537335 m!1419895))

(assert (=> b!1537345 m!1419893))

(assert (=> b!1537345 m!1419893))

(declare-fun m!1419897 () Bool)

(assert (=> b!1537345 m!1419897))

(declare-fun m!1419899 () Bool)

(assert (=> start!131064 m!1419899))

(declare-fun m!1419901 () Bool)

(assert (=> start!131064 m!1419901))

(declare-fun m!1419903 () Bool)

(assert (=> b!1537336 m!1419903))

(declare-fun m!1419905 () Bool)

(assert (=> b!1537336 m!1419905))

(assert (=> b!1537336 m!1419905))

(declare-fun m!1419907 () Bool)

(assert (=> b!1537336 m!1419907))

(declare-fun m!1419909 () Bool)

(assert (=> b!1537336 m!1419909))

(declare-fun m!1419911 () Bool)

(assert (=> b!1537340 m!1419911))

(declare-fun m!1419913 () Bool)

(assert (=> b!1537343 m!1419913))

(declare-fun m!1419915 () Bool)

(assert (=> b!1537342 m!1419915))

(declare-fun m!1419917 () Bool)

(assert (=> b!1537341 m!1419917))

(assert (=> b!1537341 m!1419893))

(declare-fun m!1419919 () Bool)

(assert (=> b!1537344 m!1419919))

(assert (=> b!1537337 m!1419893))

(assert (=> b!1537337 m!1419893))

(declare-fun m!1419921 () Bool)

(assert (=> b!1537337 m!1419921))

(check-sat (not b!1537345) (not b!1537342) (not b!1537344) (not b!1537340) (not b!1537337) (not b!1537335) (not b!1537339) (not start!131064) (not b!1537336))
