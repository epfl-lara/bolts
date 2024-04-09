; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131402 () Bool)

(assert start!131402)

(declare-fun b!1540149 () Bool)

(declare-fun res!1056977 () Bool)

(declare-fun e!856617 () Bool)

(assert (=> b!1540149 (=> (not res!1056977) (not e!856617))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102277 0))(
  ( (array!102278 (arr!49344 (Array (_ BitVec 32) (_ BitVec 64))) (size!49895 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102277)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1540149 (= res!1056977 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49895 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49895 a!2792)) (= (select (arr!49344 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540150 () Bool)

(declare-fun res!1056982 () Bool)

(assert (=> b!1540150 (=> (not res!1056982) (not e!856617))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540150 (= res!1056982 (validKeyInArray!0 (select (arr!49344 a!2792) i!951)))))

(declare-fun b!1540152 () Bool)

(declare-fun res!1056985 () Bool)

(assert (=> b!1540152 (=> (not res!1056985) (not e!856617))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1540152 (= res!1056985 (and (= (size!49895 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49895 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49895 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1540153 () Bool)

(declare-fun e!856619 () Bool)

(assert (=> b!1540153 (= e!856619 (not true))))

(declare-datatypes ((SeekEntryResult!13493 0))(
  ( (MissingZero!13493 (index!56366 (_ BitVec 32))) (Found!13493 (index!56367 (_ BitVec 32))) (Intermediate!13493 (undefined!14305 Bool) (index!56368 (_ BitVec 32)) (x!138103 (_ BitVec 32))) (Undefined!13493) (MissingVacant!13493 (index!56369 (_ BitVec 32))) )
))
(declare-fun lt!665210 () SeekEntryResult!13493)

(declare-fun lt!665212 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102277 (_ BitVec 32)) SeekEntryResult!13493)

(assert (=> b!1540153 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665212 vacantIndex!5 (select (store (arr!49344 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102278 (store (arr!49344 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49895 a!2792)) mask!2480) lt!665210)))

(declare-datatypes ((Unit!51378 0))(
  ( (Unit!51379) )
))
(declare-fun lt!665211 () Unit!51378)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102277 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51378)

(assert (=> b!1540153 (= lt!665211 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665212 vacantIndex!5 mask!2480))))

(declare-fun b!1540154 () Bool)

(declare-fun e!856615 () Bool)

(assert (=> b!1540154 (= e!856615 e!856619)))

(declare-fun res!1056984 () Bool)

(assert (=> b!1540154 (=> (not res!1056984) (not e!856619))))

(declare-fun lt!665209 () SeekEntryResult!13493)

(assert (=> b!1540154 (= res!1056984 (= lt!665210 lt!665209))))

(assert (=> b!1540154 (= lt!665210 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665212 vacantIndex!5 (select (arr!49344 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540155 () Bool)

(declare-fun res!1056978 () Bool)

(assert (=> b!1540155 (=> (not res!1056978) (not e!856617))))

(assert (=> b!1540155 (= res!1056978 (validKeyInArray!0 (select (arr!49344 a!2792) j!64)))))

(declare-fun b!1540156 () Bool)

(declare-fun res!1056986 () Bool)

(assert (=> b!1540156 (=> (not res!1056986) (not e!856617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102277 (_ BitVec 32)) Bool)

(assert (=> b!1540156 (= res!1056986 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540157 () Bool)

(declare-fun e!856618 () Bool)

(assert (=> b!1540157 (= e!856617 e!856618)))

(declare-fun res!1056983 () Bool)

(assert (=> b!1540157 (=> (not res!1056983) (not e!856618))))

(assert (=> b!1540157 (= res!1056983 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49344 a!2792) j!64) a!2792 mask!2480) lt!665209))))

(assert (=> b!1540157 (= lt!665209 (Found!13493 j!64))))

(declare-fun b!1540158 () Bool)

(declare-fun res!1056987 () Bool)

(assert (=> b!1540158 (=> (not res!1056987) (not e!856618))))

(assert (=> b!1540158 (= res!1056987 (not (= (select (arr!49344 a!2792) index!463) (select (arr!49344 a!2792) j!64))))))

(declare-fun b!1540159 () Bool)

(declare-fun res!1056981 () Bool)

(assert (=> b!1540159 (=> (not res!1056981) (not e!856617))))

(declare-datatypes ((List!35998 0))(
  ( (Nil!35995) (Cons!35994 (h!37440 (_ BitVec 64)) (t!50699 List!35998)) )
))
(declare-fun arrayNoDuplicates!0 (array!102277 (_ BitVec 32) List!35998) Bool)

(assert (=> b!1540159 (= res!1056981 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35995))))

(declare-fun res!1056980 () Bool)

(assert (=> start!131402 (=> (not res!1056980) (not e!856617))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131402 (= res!1056980 (validMask!0 mask!2480))))

(assert (=> start!131402 e!856617))

(assert (=> start!131402 true))

(declare-fun array_inv!38289 (array!102277) Bool)

(assert (=> start!131402 (array_inv!38289 a!2792)))

(declare-fun b!1540151 () Bool)

(assert (=> b!1540151 (= e!856618 e!856615)))

(declare-fun res!1056979 () Bool)

(assert (=> b!1540151 (=> (not res!1056979) (not e!856615))))

(assert (=> b!1540151 (= res!1056979 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665212 #b00000000000000000000000000000000) (bvslt lt!665212 (size!49895 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540151 (= lt!665212 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131402 res!1056980) b!1540152))

(assert (= (and b!1540152 res!1056985) b!1540150))

(assert (= (and b!1540150 res!1056982) b!1540155))

(assert (= (and b!1540155 res!1056978) b!1540156))

(assert (= (and b!1540156 res!1056986) b!1540159))

(assert (= (and b!1540159 res!1056981) b!1540149))

(assert (= (and b!1540149 res!1056977) b!1540157))

(assert (= (and b!1540157 res!1056983) b!1540158))

(assert (= (and b!1540158 res!1056987) b!1540151))

(assert (= (and b!1540151 res!1056979) b!1540154))

(assert (= (and b!1540154 res!1056984) b!1540153))

(declare-fun m!1422305 () Bool)

(assert (=> b!1540155 m!1422305))

(assert (=> b!1540155 m!1422305))

(declare-fun m!1422307 () Bool)

(assert (=> b!1540155 m!1422307))

(declare-fun m!1422309 () Bool)

(assert (=> b!1540156 m!1422309))

(declare-fun m!1422311 () Bool)

(assert (=> b!1540149 m!1422311))

(assert (=> b!1540157 m!1422305))

(assert (=> b!1540157 m!1422305))

(declare-fun m!1422313 () Bool)

(assert (=> b!1540157 m!1422313))

(declare-fun m!1422315 () Bool)

(assert (=> b!1540159 m!1422315))

(declare-fun m!1422317 () Bool)

(assert (=> b!1540153 m!1422317))

(declare-fun m!1422319 () Bool)

(assert (=> b!1540153 m!1422319))

(assert (=> b!1540153 m!1422319))

(declare-fun m!1422321 () Bool)

(assert (=> b!1540153 m!1422321))

(declare-fun m!1422323 () Bool)

(assert (=> b!1540153 m!1422323))

(declare-fun m!1422325 () Bool)

(assert (=> b!1540158 m!1422325))

(assert (=> b!1540158 m!1422305))

(declare-fun m!1422327 () Bool)

(assert (=> b!1540150 m!1422327))

(assert (=> b!1540150 m!1422327))

(declare-fun m!1422329 () Bool)

(assert (=> b!1540150 m!1422329))

(declare-fun m!1422331 () Bool)

(assert (=> start!131402 m!1422331))

(declare-fun m!1422333 () Bool)

(assert (=> start!131402 m!1422333))

(assert (=> b!1540154 m!1422305))

(assert (=> b!1540154 m!1422305))

(declare-fun m!1422335 () Bool)

(assert (=> b!1540154 m!1422335))

(declare-fun m!1422337 () Bool)

(assert (=> b!1540151 m!1422337))

(push 1)

(assert (not b!1540154))

(assert (not b!1540150))

