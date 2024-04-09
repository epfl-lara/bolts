; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131004 () Bool)

(assert start!131004)

(declare-fun b!1536336 () Bool)

(declare-fun e!855144 () Bool)

(declare-fun e!855143 () Bool)

(assert (=> b!1536336 (= e!855144 e!855143)))

(declare-fun res!1053570 () Bool)

(assert (=> b!1536336 (=> (not res!1053570) (not e!855143))))

(declare-datatypes ((SeekEntryResult!13381 0))(
  ( (MissingZero!13381 (index!55918 (_ BitVec 32))) (Found!13381 (index!55919 (_ BitVec 32))) (Intermediate!13381 (undefined!14193 Bool) (index!55920 (_ BitVec 32)) (x!137658 (_ BitVec 32))) (Undefined!13381) (MissingVacant!13381 (index!55921 (_ BitVec 32))) )
))
(declare-fun lt!664279 () SeekEntryResult!13381)

(declare-fun lt!664277 () SeekEntryResult!13381)

(assert (=> b!1536336 (= res!1053570 (= lt!664279 lt!664277))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102029 0))(
  ( (array!102030 (arr!49226 (Array (_ BitVec 32) (_ BitVec 64))) (size!49777 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102029)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun lt!664276 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102029 (_ BitVec 32)) SeekEntryResult!13381)

(assert (=> b!1536336 (= lt!664279 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664276 vacantIndex!5 (select (arr!49226 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536337 () Bool)

(declare-fun res!1053563 () Bool)

(declare-fun e!855146 () Bool)

(assert (=> b!1536337 (=> (not res!1053563) (not e!855146))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536337 (= res!1053563 (validKeyInArray!0 (select (arr!49226 a!2792) i!951)))))

(declare-fun b!1536338 () Bool)

(declare-fun res!1053569 () Bool)

(assert (=> b!1536338 (=> (not res!1053569) (not e!855146))))

(declare-datatypes ((List!35880 0))(
  ( (Nil!35877) (Cons!35876 (h!37322 (_ BitVec 64)) (t!50581 List!35880)) )
))
(declare-fun arrayNoDuplicates!0 (array!102029 (_ BitVec 32) List!35880) Bool)

(assert (=> b!1536338 (= res!1053569 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35877))))

(declare-fun b!1536340 () Bool)

(declare-fun res!1053568 () Bool)

(assert (=> b!1536340 (=> (not res!1053568) (not e!855146))))

(assert (=> b!1536340 (= res!1053568 (and (= (size!49777 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49777 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49777 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536341 () Bool)

(declare-fun res!1053566 () Bool)

(declare-fun e!855142 () Bool)

(assert (=> b!1536341 (=> (not res!1053566) (not e!855142))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536341 (= res!1053566 (not (= (select (arr!49226 a!2792) index!463) (select (arr!49226 a!2792) j!64))))))

(declare-fun b!1536342 () Bool)

(assert (=> b!1536342 (= e!855143 (not (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvslt vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)))))))

(assert (=> b!1536342 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664276 vacantIndex!5 (select (store (arr!49226 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102030 (store (arr!49226 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49777 a!2792)) mask!2480) lt!664279)))

(declare-datatypes ((Unit!51286 0))(
  ( (Unit!51287) )
))
(declare-fun lt!664278 () Unit!51286)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102029 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51286)

(assert (=> b!1536342 (= lt!664278 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664276 vacantIndex!5 mask!2480))))

(declare-fun b!1536343 () Bool)

(declare-fun res!1053567 () Bool)

(assert (=> b!1536343 (=> (not res!1053567) (not e!855146))))

(assert (=> b!1536343 (= res!1053567 (validKeyInArray!0 (select (arr!49226 a!2792) j!64)))))

(declare-fun b!1536339 () Bool)

(declare-fun res!1053565 () Bool)

(assert (=> b!1536339 (=> (not res!1053565) (not e!855146))))

(assert (=> b!1536339 (= res!1053565 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49777 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49777 a!2792)) (= (select (arr!49226 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1053561 () Bool)

(assert (=> start!131004 (=> (not res!1053561) (not e!855146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131004 (= res!1053561 (validMask!0 mask!2480))))

(assert (=> start!131004 e!855146))

(assert (=> start!131004 true))

(declare-fun array_inv!38171 (array!102029) Bool)

(assert (=> start!131004 (array_inv!38171 a!2792)))

(declare-fun b!1536344 () Bool)

(assert (=> b!1536344 (= e!855146 e!855142)))

(declare-fun res!1053560 () Bool)

(assert (=> b!1536344 (=> (not res!1053560) (not e!855142))))

(assert (=> b!1536344 (= res!1053560 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49226 a!2792) j!64) a!2792 mask!2480) lt!664277))))

(assert (=> b!1536344 (= lt!664277 (Found!13381 j!64))))

(declare-fun b!1536345 () Bool)

(assert (=> b!1536345 (= e!855142 e!855144)))

(declare-fun res!1053562 () Bool)

(assert (=> b!1536345 (=> (not res!1053562) (not e!855144))))

(assert (=> b!1536345 (= res!1053562 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664276 #b00000000000000000000000000000000) (bvslt lt!664276 (size!49777 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536345 (= lt!664276 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536346 () Bool)

(declare-fun res!1053564 () Bool)

(assert (=> b!1536346 (=> (not res!1053564) (not e!855146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102029 (_ BitVec 32)) Bool)

(assert (=> b!1536346 (= res!1053564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131004 res!1053561) b!1536340))

(assert (= (and b!1536340 res!1053568) b!1536337))

(assert (= (and b!1536337 res!1053563) b!1536343))

(assert (= (and b!1536343 res!1053567) b!1536346))

(assert (= (and b!1536346 res!1053564) b!1536338))

(assert (= (and b!1536338 res!1053569) b!1536339))

(assert (= (and b!1536339 res!1053565) b!1536344))

(assert (= (and b!1536344 res!1053560) b!1536341))

(assert (= (and b!1536341 res!1053566) b!1536345))

(assert (= (and b!1536345 res!1053562) b!1536336))

(assert (= (and b!1536336 res!1053570) b!1536342))

(declare-fun m!1418851 () Bool)

(assert (=> b!1536338 m!1418851))

(declare-fun m!1418853 () Bool)

(assert (=> b!1536337 m!1418853))

(assert (=> b!1536337 m!1418853))

(declare-fun m!1418855 () Bool)

(assert (=> b!1536337 m!1418855))

(declare-fun m!1418857 () Bool)

(assert (=> b!1536346 m!1418857))

(declare-fun m!1418859 () Bool)

(assert (=> start!131004 m!1418859))

(declare-fun m!1418861 () Bool)

(assert (=> start!131004 m!1418861))

(declare-fun m!1418863 () Bool)

(assert (=> b!1536344 m!1418863))

(assert (=> b!1536344 m!1418863))

(declare-fun m!1418865 () Bool)

(assert (=> b!1536344 m!1418865))

(declare-fun m!1418867 () Bool)

(assert (=> b!1536339 m!1418867))

(declare-fun m!1418869 () Bool)

(assert (=> b!1536345 m!1418869))

(declare-fun m!1418871 () Bool)

(assert (=> b!1536342 m!1418871))

(declare-fun m!1418873 () Bool)

(assert (=> b!1536342 m!1418873))

(assert (=> b!1536342 m!1418873))

(declare-fun m!1418875 () Bool)

(assert (=> b!1536342 m!1418875))

(declare-fun m!1418877 () Bool)

(assert (=> b!1536342 m!1418877))

(assert (=> b!1536336 m!1418863))

(assert (=> b!1536336 m!1418863))

(declare-fun m!1418879 () Bool)

(assert (=> b!1536336 m!1418879))

(assert (=> b!1536343 m!1418863))

(assert (=> b!1536343 m!1418863))

(declare-fun m!1418881 () Bool)

(assert (=> b!1536343 m!1418881))

(declare-fun m!1418883 () Bool)

(assert (=> b!1536341 m!1418883))

(assert (=> b!1536341 m!1418863))

(check-sat (not b!1536346) (not b!1536342) (not b!1536337) (not b!1536344) (not start!131004) (not b!1536338) (not b!1536345) (not b!1536343) (not b!1536336))
(check-sat)
