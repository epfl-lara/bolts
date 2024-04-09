; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131000 () Bool)

(assert start!131000)

(declare-fun b!1536270 () Bool)

(declare-fun res!1053499 () Bool)

(declare-fun e!855114 () Bool)

(assert (=> b!1536270 (=> (not res!1053499) (not e!855114))))

(declare-datatypes ((array!102025 0))(
  ( (array!102026 (arr!49224 (Array (_ BitVec 32) (_ BitVec 64))) (size!49775 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102025)

(declare-datatypes ((List!35878 0))(
  ( (Nil!35875) (Cons!35874 (h!37320 (_ BitVec 64)) (t!50579 List!35878)) )
))
(declare-fun arrayNoDuplicates!0 (array!102025 (_ BitVec 32) List!35878) Bool)

(assert (=> b!1536270 (= res!1053499 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35875))))

(declare-fun res!1053504 () Bool)

(assert (=> start!131000 (=> (not res!1053504) (not e!855114))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131000 (= res!1053504 (validMask!0 mask!2480))))

(assert (=> start!131000 e!855114))

(assert (=> start!131000 true))

(declare-fun array_inv!38169 (array!102025) Bool)

(assert (=> start!131000 (array_inv!38169 a!2792)))

(declare-fun b!1536271 () Bool)

(declare-fun res!1053503 () Bool)

(assert (=> b!1536271 (=> (not res!1053503) (not e!855114))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536271 (= res!1053503 (validKeyInArray!0 (select (arr!49224 a!2792) j!64)))))

(declare-fun b!1536272 () Bool)

(declare-fun e!855113 () Bool)

(assert (=> b!1536272 (= e!855114 e!855113)))

(declare-fun res!1053494 () Bool)

(assert (=> b!1536272 (=> (not res!1053494) (not e!855113))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13379 0))(
  ( (MissingZero!13379 (index!55910 (_ BitVec 32))) (Found!13379 (index!55911 (_ BitVec 32))) (Intermediate!13379 (undefined!14191 Bool) (index!55912 (_ BitVec 32)) (x!137648 (_ BitVec 32))) (Undefined!13379) (MissingVacant!13379 (index!55913 (_ BitVec 32))) )
))
(declare-fun lt!664253 () SeekEntryResult!13379)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102025 (_ BitVec 32)) SeekEntryResult!13379)

(assert (=> b!1536272 (= res!1053494 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49224 a!2792) j!64) a!2792 mask!2480) lt!664253))))

(assert (=> b!1536272 (= lt!664253 (Found!13379 j!64))))

(declare-fun b!1536273 () Bool)

(declare-fun e!855116 () Bool)

(assert (=> b!1536273 (= e!855113 e!855116)))

(declare-fun res!1053497 () Bool)

(assert (=> b!1536273 (=> (not res!1053497) (not e!855116))))

(declare-fun lt!664255 () (_ BitVec 32))

(assert (=> b!1536273 (= res!1053497 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664255 #b00000000000000000000000000000000) (bvslt lt!664255 (size!49775 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536273 (= lt!664255 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536274 () Bool)

(declare-fun e!855115 () Bool)

(assert (=> b!1536274 (= e!855116 e!855115)))

(declare-fun res!1053502 () Bool)

(assert (=> b!1536274 (=> (not res!1053502) (not e!855115))))

(declare-fun lt!664254 () SeekEntryResult!13379)

(assert (=> b!1536274 (= res!1053502 (= lt!664254 lt!664253))))

(assert (=> b!1536274 (= lt!664254 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664255 vacantIndex!5 (select (arr!49224 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536275 () Bool)

(declare-fun res!1053498 () Bool)

(assert (=> b!1536275 (=> (not res!1053498) (not e!855114))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102025 (_ BitVec 32)) Bool)

(assert (=> b!1536275 (= res!1053498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536276 () Bool)

(declare-fun res!1053496 () Bool)

(assert (=> b!1536276 (=> (not res!1053496) (not e!855114))))

(assert (=> b!1536276 (= res!1053496 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49775 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49775 a!2792)) (= (select (arr!49224 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536277 () Bool)

(declare-fun res!1053501 () Bool)

(assert (=> b!1536277 (=> (not res!1053501) (not e!855114))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536277 (= res!1053501 (validKeyInArray!0 (select (arr!49224 a!2792) i!951)))))

(declare-fun b!1536278 () Bool)

(assert (=> b!1536278 (= e!855115 (not true))))

(assert (=> b!1536278 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664255 vacantIndex!5 (select (store (arr!49224 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102026 (store (arr!49224 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49775 a!2792)) mask!2480) lt!664254)))

(declare-datatypes ((Unit!51282 0))(
  ( (Unit!51283) )
))
(declare-fun lt!664252 () Unit!51282)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102025 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51282)

(assert (=> b!1536278 (= lt!664252 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664255 vacantIndex!5 mask!2480))))

(declare-fun b!1536279 () Bool)

(declare-fun res!1053500 () Bool)

(assert (=> b!1536279 (=> (not res!1053500) (not e!855114))))

(assert (=> b!1536279 (= res!1053500 (and (= (size!49775 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49775 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49775 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536280 () Bool)

(declare-fun res!1053495 () Bool)

(assert (=> b!1536280 (=> (not res!1053495) (not e!855113))))

(assert (=> b!1536280 (= res!1053495 (not (= (select (arr!49224 a!2792) index!463) (select (arr!49224 a!2792) j!64))))))

(assert (= (and start!131000 res!1053504) b!1536279))

(assert (= (and b!1536279 res!1053500) b!1536277))

(assert (= (and b!1536277 res!1053501) b!1536271))

(assert (= (and b!1536271 res!1053503) b!1536275))

(assert (= (and b!1536275 res!1053498) b!1536270))

(assert (= (and b!1536270 res!1053499) b!1536276))

(assert (= (and b!1536276 res!1053496) b!1536272))

(assert (= (and b!1536272 res!1053494) b!1536280))

(assert (= (and b!1536280 res!1053495) b!1536273))

(assert (= (and b!1536273 res!1053497) b!1536274))

(assert (= (and b!1536274 res!1053502) b!1536278))

(declare-fun m!1418783 () Bool)

(assert (=> b!1536271 m!1418783))

(assert (=> b!1536271 m!1418783))

(declare-fun m!1418785 () Bool)

(assert (=> b!1536271 m!1418785))

(assert (=> b!1536274 m!1418783))

(assert (=> b!1536274 m!1418783))

(declare-fun m!1418787 () Bool)

(assert (=> b!1536274 m!1418787))

(declare-fun m!1418789 () Bool)

(assert (=> b!1536275 m!1418789))

(assert (=> b!1536272 m!1418783))

(assert (=> b!1536272 m!1418783))

(declare-fun m!1418791 () Bool)

(assert (=> b!1536272 m!1418791))

(declare-fun m!1418793 () Bool)

(assert (=> start!131000 m!1418793))

(declare-fun m!1418795 () Bool)

(assert (=> start!131000 m!1418795))

(declare-fun m!1418797 () Bool)

(assert (=> b!1536270 m!1418797))

(declare-fun m!1418799 () Bool)

(assert (=> b!1536280 m!1418799))

(assert (=> b!1536280 m!1418783))

(declare-fun m!1418801 () Bool)

(assert (=> b!1536278 m!1418801))

(declare-fun m!1418803 () Bool)

(assert (=> b!1536278 m!1418803))

(assert (=> b!1536278 m!1418803))

(declare-fun m!1418805 () Bool)

(assert (=> b!1536278 m!1418805))

(declare-fun m!1418807 () Bool)

(assert (=> b!1536278 m!1418807))

(declare-fun m!1418809 () Bool)

(assert (=> b!1536277 m!1418809))

(assert (=> b!1536277 m!1418809))

(declare-fun m!1418811 () Bool)

(assert (=> b!1536277 m!1418811))

(declare-fun m!1418813 () Bool)

(assert (=> b!1536276 m!1418813))

(declare-fun m!1418815 () Bool)

(assert (=> b!1536273 m!1418815))

(push 1)

(assert (not start!131000))

(assert (not b!1536272))

(assert (not b!1536271))

