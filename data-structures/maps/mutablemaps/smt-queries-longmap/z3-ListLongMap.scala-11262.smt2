; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131400 () Bool)

(assert start!131400)

(declare-fun b!1540116 () Bool)

(declare-fun e!856604 () Bool)

(declare-fun e!856603 () Bool)

(assert (=> b!1540116 (= e!856604 e!856603)))

(declare-fun res!1056944 () Bool)

(assert (=> b!1540116 (=> (not res!1056944) (not e!856603))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102275 0))(
  ( (array!102276 (arr!49343 (Array (_ BitVec 32) (_ BitVec 64))) (size!49894 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102275)

(declare-fun lt!665199 () (_ BitVec 32))

(assert (=> b!1540116 (= res!1056944 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665199 #b00000000000000000000000000000000) (bvslt lt!665199 (size!49894 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540116 (= lt!665199 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1540117 () Bool)

(declare-fun res!1056954 () Bool)

(declare-fun e!856601 () Bool)

(assert (=> b!1540117 (=> (not res!1056954) (not e!856601))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102275 (_ BitVec 32)) Bool)

(assert (=> b!1540117 (= res!1056954 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540118 () Bool)

(declare-fun res!1056948 () Bool)

(assert (=> b!1540118 (=> (not res!1056948) (not e!856601))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1540118 (= res!1056948 (and (= (size!49894 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49894 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49894 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1540119 () Bool)

(declare-fun res!1056952 () Bool)

(assert (=> b!1540119 (=> (not res!1056952) (not e!856601))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1540119 (= res!1056952 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49894 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49894 a!2792)) (= (select (arr!49343 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540120 () Bool)

(declare-fun e!856600 () Bool)

(assert (=> b!1540120 (= e!856603 e!856600)))

(declare-fun res!1056953 () Bool)

(assert (=> b!1540120 (=> (not res!1056953) (not e!856600))))

(declare-datatypes ((SeekEntryResult!13492 0))(
  ( (MissingZero!13492 (index!56362 (_ BitVec 32))) (Found!13492 (index!56363 (_ BitVec 32))) (Intermediate!13492 (undefined!14304 Bool) (index!56364 (_ BitVec 32)) (x!138102 (_ BitVec 32))) (Undefined!13492) (MissingVacant!13492 (index!56365 (_ BitVec 32))) )
))
(declare-fun lt!665198 () SeekEntryResult!13492)

(declare-fun lt!665200 () SeekEntryResult!13492)

(assert (=> b!1540120 (= res!1056953 (= lt!665198 lt!665200))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102275 (_ BitVec 32)) SeekEntryResult!13492)

(assert (=> b!1540120 (= lt!665198 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665199 vacantIndex!5 (select (arr!49343 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540121 () Bool)

(assert (=> b!1540121 (= e!856600 (not true))))

(assert (=> b!1540121 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665199 vacantIndex!5 (select (store (arr!49343 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102276 (store (arr!49343 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49894 a!2792)) mask!2480) lt!665198)))

(declare-datatypes ((Unit!51376 0))(
  ( (Unit!51377) )
))
(declare-fun lt!665197 () Unit!51376)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102275 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51376)

(assert (=> b!1540121 (= lt!665197 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665199 vacantIndex!5 mask!2480))))

(declare-fun res!1056950 () Bool)

(assert (=> start!131400 (=> (not res!1056950) (not e!856601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131400 (= res!1056950 (validMask!0 mask!2480))))

(assert (=> start!131400 e!856601))

(assert (=> start!131400 true))

(declare-fun array_inv!38288 (array!102275) Bool)

(assert (=> start!131400 (array_inv!38288 a!2792)))

(declare-fun b!1540122 () Bool)

(declare-fun res!1056949 () Bool)

(assert (=> b!1540122 (=> (not res!1056949) (not e!856601))))

(declare-datatypes ((List!35997 0))(
  ( (Nil!35994) (Cons!35993 (h!37439 (_ BitVec 64)) (t!50698 List!35997)) )
))
(declare-fun arrayNoDuplicates!0 (array!102275 (_ BitVec 32) List!35997) Bool)

(assert (=> b!1540122 (= res!1056949 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35994))))

(declare-fun b!1540123 () Bool)

(declare-fun res!1056947 () Bool)

(assert (=> b!1540123 (=> (not res!1056947) (not e!856601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540123 (= res!1056947 (validKeyInArray!0 (select (arr!49343 a!2792) j!64)))))

(declare-fun b!1540124 () Bool)

(declare-fun res!1056945 () Bool)

(assert (=> b!1540124 (=> (not res!1056945) (not e!856604))))

(assert (=> b!1540124 (= res!1056945 (not (= (select (arr!49343 a!2792) index!463) (select (arr!49343 a!2792) j!64))))))

(declare-fun b!1540125 () Bool)

(assert (=> b!1540125 (= e!856601 e!856604)))

(declare-fun res!1056951 () Bool)

(assert (=> b!1540125 (=> (not res!1056951) (not e!856604))))

(assert (=> b!1540125 (= res!1056951 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49343 a!2792) j!64) a!2792 mask!2480) lt!665200))))

(assert (=> b!1540125 (= lt!665200 (Found!13492 j!64))))

(declare-fun b!1540126 () Bool)

(declare-fun res!1056946 () Bool)

(assert (=> b!1540126 (=> (not res!1056946) (not e!856601))))

(assert (=> b!1540126 (= res!1056946 (validKeyInArray!0 (select (arr!49343 a!2792) i!951)))))

(assert (= (and start!131400 res!1056950) b!1540118))

(assert (= (and b!1540118 res!1056948) b!1540126))

(assert (= (and b!1540126 res!1056946) b!1540123))

(assert (= (and b!1540123 res!1056947) b!1540117))

(assert (= (and b!1540117 res!1056954) b!1540122))

(assert (= (and b!1540122 res!1056949) b!1540119))

(assert (= (and b!1540119 res!1056952) b!1540125))

(assert (= (and b!1540125 res!1056951) b!1540124))

(assert (= (and b!1540124 res!1056945) b!1540116))

(assert (= (and b!1540116 res!1056944) b!1540120))

(assert (= (and b!1540120 res!1056953) b!1540121))

(declare-fun m!1422271 () Bool)

(assert (=> b!1540120 m!1422271))

(assert (=> b!1540120 m!1422271))

(declare-fun m!1422273 () Bool)

(assert (=> b!1540120 m!1422273))

(declare-fun m!1422275 () Bool)

(assert (=> start!131400 m!1422275))

(declare-fun m!1422277 () Bool)

(assert (=> start!131400 m!1422277))

(declare-fun m!1422279 () Bool)

(assert (=> b!1540117 m!1422279))

(declare-fun m!1422281 () Bool)

(assert (=> b!1540126 m!1422281))

(assert (=> b!1540126 m!1422281))

(declare-fun m!1422283 () Bool)

(assert (=> b!1540126 m!1422283))

(declare-fun m!1422285 () Bool)

(assert (=> b!1540124 m!1422285))

(assert (=> b!1540124 m!1422271))

(assert (=> b!1540123 m!1422271))

(assert (=> b!1540123 m!1422271))

(declare-fun m!1422287 () Bool)

(assert (=> b!1540123 m!1422287))

(declare-fun m!1422289 () Bool)

(assert (=> b!1540116 m!1422289))

(assert (=> b!1540125 m!1422271))

(assert (=> b!1540125 m!1422271))

(declare-fun m!1422291 () Bool)

(assert (=> b!1540125 m!1422291))

(declare-fun m!1422293 () Bool)

(assert (=> b!1540121 m!1422293))

(declare-fun m!1422295 () Bool)

(assert (=> b!1540121 m!1422295))

(assert (=> b!1540121 m!1422295))

(declare-fun m!1422297 () Bool)

(assert (=> b!1540121 m!1422297))

(declare-fun m!1422299 () Bool)

(assert (=> b!1540121 m!1422299))

(declare-fun m!1422301 () Bool)

(assert (=> b!1540119 m!1422301))

(declare-fun m!1422303 () Bool)

(assert (=> b!1540122 m!1422303))

(check-sat (not b!1540120) (not start!131400) (not b!1540121) (not b!1540125) (not b!1540126) (not b!1540117) (not b!1540116) (not b!1540122) (not b!1540123))
(check-sat)
