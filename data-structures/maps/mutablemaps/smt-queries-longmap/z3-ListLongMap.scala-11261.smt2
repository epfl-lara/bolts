; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131394 () Bool)

(assert start!131394)

(declare-fun b!1540017 () Bool)

(declare-fun e!856555 () Bool)

(declare-fun e!856557 () Bool)

(assert (=> b!1540017 (= e!856555 e!856557)))

(declare-fun res!1056848 () Bool)

(assert (=> b!1540017 (=> (not res!1056848) (not e!856557))))

(declare-datatypes ((SeekEntryResult!13489 0))(
  ( (MissingZero!13489 (index!56350 (_ BitVec 32))) (Found!13489 (index!56351 (_ BitVec 32))) (Intermediate!13489 (undefined!14301 Bool) (index!56352 (_ BitVec 32)) (x!138091 (_ BitVec 32))) (Undefined!13489) (MissingVacant!13489 (index!56353 (_ BitVec 32))) )
))
(declare-fun lt!665161 () SeekEntryResult!13489)

(declare-fun lt!665164 () SeekEntryResult!13489)

(assert (=> b!1540017 (= res!1056848 (= lt!665161 lt!665164))))

(declare-datatypes ((array!102269 0))(
  ( (array!102270 (arr!49340 (Array (_ BitVec 32) (_ BitVec 64))) (size!49891 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102269)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun lt!665162 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102269 (_ BitVec 32)) SeekEntryResult!13489)

(assert (=> b!1540017 (= lt!665161 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665162 vacantIndex!5 (select (arr!49340 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1056845 () Bool)

(declare-fun e!856556 () Bool)

(assert (=> start!131394 (=> (not res!1056845) (not e!856556))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131394 (= res!1056845 (validMask!0 mask!2480))))

(assert (=> start!131394 e!856556))

(assert (=> start!131394 true))

(declare-fun array_inv!38285 (array!102269) Bool)

(assert (=> start!131394 (array_inv!38285 a!2792)))

(declare-fun b!1540018 () Bool)

(declare-fun res!1056847 () Bool)

(assert (=> b!1540018 (=> (not res!1056847) (not e!856556))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540018 (= res!1056847 (validKeyInArray!0 (select (arr!49340 a!2792) j!64)))))

(declare-fun b!1540019 () Bool)

(declare-fun res!1056846 () Bool)

(assert (=> b!1540019 (=> (not res!1056846) (not e!856556))))

(declare-datatypes ((List!35994 0))(
  ( (Nil!35991) (Cons!35990 (h!37436 (_ BitVec 64)) (t!50695 List!35994)) )
))
(declare-fun arrayNoDuplicates!0 (array!102269 (_ BitVec 32) List!35994) Bool)

(assert (=> b!1540019 (= res!1056846 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35991))))

(declare-fun b!1540020 () Bool)

(declare-fun res!1056850 () Bool)

(declare-fun e!856559 () Bool)

(assert (=> b!1540020 (=> (not res!1056850) (not e!856559))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1540020 (= res!1056850 (not (= (select (arr!49340 a!2792) index!463) (select (arr!49340 a!2792) j!64))))))

(declare-fun b!1540021 () Bool)

(declare-fun res!1056855 () Bool)

(assert (=> b!1540021 (=> (not res!1056855) (not e!856556))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102269 (_ BitVec 32)) Bool)

(assert (=> b!1540021 (= res!1056855 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540022 () Bool)

(assert (=> b!1540022 (= e!856557 (not true))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1540022 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665162 vacantIndex!5 (select (store (arr!49340 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102270 (store (arr!49340 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49891 a!2792)) mask!2480) lt!665161)))

(declare-datatypes ((Unit!51370 0))(
  ( (Unit!51371) )
))
(declare-fun lt!665163 () Unit!51370)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102269 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51370)

(assert (=> b!1540022 (= lt!665163 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665162 vacantIndex!5 mask!2480))))

(declare-fun b!1540023 () Bool)

(declare-fun res!1056851 () Bool)

(assert (=> b!1540023 (=> (not res!1056851) (not e!856556))))

(assert (=> b!1540023 (= res!1056851 (and (= (size!49891 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49891 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49891 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1540024 () Bool)

(assert (=> b!1540024 (= e!856556 e!856559)))

(declare-fun res!1056853 () Bool)

(assert (=> b!1540024 (=> (not res!1056853) (not e!856559))))

(assert (=> b!1540024 (= res!1056853 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49340 a!2792) j!64) a!2792 mask!2480) lt!665164))))

(assert (=> b!1540024 (= lt!665164 (Found!13489 j!64))))

(declare-fun b!1540025 () Bool)

(declare-fun res!1056849 () Bool)

(assert (=> b!1540025 (=> (not res!1056849) (not e!856556))))

(assert (=> b!1540025 (= res!1056849 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49891 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49891 a!2792)) (= (select (arr!49340 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540026 () Bool)

(assert (=> b!1540026 (= e!856559 e!856555)))

(declare-fun res!1056852 () Bool)

(assert (=> b!1540026 (=> (not res!1056852) (not e!856555))))

(assert (=> b!1540026 (= res!1056852 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665162 #b00000000000000000000000000000000) (bvslt lt!665162 (size!49891 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540026 (= lt!665162 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1540027 () Bool)

(declare-fun res!1056854 () Bool)

(assert (=> b!1540027 (=> (not res!1056854) (not e!856556))))

(assert (=> b!1540027 (= res!1056854 (validKeyInArray!0 (select (arr!49340 a!2792) i!951)))))

(assert (= (and start!131394 res!1056845) b!1540023))

(assert (= (and b!1540023 res!1056851) b!1540027))

(assert (= (and b!1540027 res!1056854) b!1540018))

(assert (= (and b!1540018 res!1056847) b!1540021))

(assert (= (and b!1540021 res!1056855) b!1540019))

(assert (= (and b!1540019 res!1056846) b!1540025))

(assert (= (and b!1540025 res!1056849) b!1540024))

(assert (= (and b!1540024 res!1056853) b!1540020))

(assert (= (and b!1540020 res!1056850) b!1540026))

(assert (= (and b!1540026 res!1056852) b!1540017))

(assert (= (and b!1540017 res!1056848) b!1540022))

(declare-fun m!1422169 () Bool)

(assert (=> b!1540017 m!1422169))

(assert (=> b!1540017 m!1422169))

(declare-fun m!1422171 () Bool)

(assert (=> b!1540017 m!1422171))

(declare-fun m!1422173 () Bool)

(assert (=> b!1540019 m!1422173))

(assert (=> b!1540024 m!1422169))

(assert (=> b!1540024 m!1422169))

(declare-fun m!1422175 () Bool)

(assert (=> b!1540024 m!1422175))

(declare-fun m!1422177 () Bool)

(assert (=> b!1540020 m!1422177))

(assert (=> b!1540020 m!1422169))

(declare-fun m!1422179 () Bool)

(assert (=> b!1540025 m!1422179))

(assert (=> b!1540018 m!1422169))

(assert (=> b!1540018 m!1422169))

(declare-fun m!1422181 () Bool)

(assert (=> b!1540018 m!1422181))

(declare-fun m!1422183 () Bool)

(assert (=> b!1540022 m!1422183))

(declare-fun m!1422185 () Bool)

(assert (=> b!1540022 m!1422185))

(assert (=> b!1540022 m!1422185))

(declare-fun m!1422187 () Bool)

(assert (=> b!1540022 m!1422187))

(declare-fun m!1422189 () Bool)

(assert (=> b!1540022 m!1422189))

(declare-fun m!1422191 () Bool)

(assert (=> start!131394 m!1422191))

(declare-fun m!1422193 () Bool)

(assert (=> start!131394 m!1422193))

(declare-fun m!1422195 () Bool)

(assert (=> b!1540027 m!1422195))

(assert (=> b!1540027 m!1422195))

(declare-fun m!1422197 () Bool)

(assert (=> b!1540027 m!1422197))

(declare-fun m!1422199 () Bool)

(assert (=> b!1540026 m!1422199))

(declare-fun m!1422201 () Bool)

(assert (=> b!1540021 m!1422201))

(check-sat (not b!1540019) (not b!1540027) (not b!1540022) (not b!1540026) (not b!1540018) (not b!1540024) (not start!131394) (not b!1540017) (not b!1540021))
(check-sat)
