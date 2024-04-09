; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52150 () Bool)

(assert start!52150)

(declare-fun b!568746 () Bool)

(declare-fun e!327252 () Bool)

(declare-fun e!327253 () Bool)

(assert (=> b!568746 (= e!327252 e!327253)))

(declare-fun res!358919 () Bool)

(assert (=> b!568746 (=> (not res!358919) (not e!327253))))

(declare-datatypes ((SeekEntryResult!5557 0))(
  ( (MissingZero!5557 (index!24455 (_ BitVec 32))) (Found!5557 (index!24456 (_ BitVec 32))) (Intermediate!5557 (undefined!6369 Bool) (index!24457 (_ BitVec 32)) (x!53363 (_ BitVec 32))) (Undefined!5557) (MissingVacant!5557 (index!24458 (_ BitVec 32))) )
))
(declare-fun lt!259177 () SeekEntryResult!5557)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568746 (= res!358919 (or (= lt!259177 (MissingZero!5557 i!1132)) (= lt!259177 (MissingVacant!5557 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35627 0))(
  ( (array!35628 (arr!17101 (Array (_ BitVec 32) (_ BitVec 64))) (size!17465 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35627)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35627 (_ BitVec 32)) SeekEntryResult!5557)

(assert (=> b!568746 (= lt!259177 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!568747 () Bool)

(declare-fun res!358916 () Bool)

(assert (=> b!568747 (=> (not res!358916) (not e!327252))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!568747 (= res!358916 (and (= (size!17465 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17465 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17465 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568748 () Bool)

(declare-fun res!358914 () Bool)

(assert (=> b!568748 (=> (not res!358914) (not e!327252))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568748 (= res!358914 (validKeyInArray!0 (select (arr!17101 a!3118) j!142)))))

(declare-fun res!358917 () Bool)

(assert (=> start!52150 (=> (not res!358917) (not e!327252))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52150 (= res!358917 (validMask!0 mask!3119))))

(assert (=> start!52150 e!327252))

(assert (=> start!52150 true))

(declare-fun array_inv!12875 (array!35627) Bool)

(assert (=> start!52150 (array_inv!12875 a!3118)))

(declare-fun b!568749 () Bool)

(declare-fun res!358921 () Bool)

(assert (=> b!568749 (=> (not res!358921) (not e!327252))))

(declare-fun arrayContainsKey!0 (array!35627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568749 (= res!358921 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568750 () Bool)

(declare-fun e!327250 () Bool)

(assert (=> b!568750 (= e!327250 (not true))))

(declare-fun lt!259178 () SeekEntryResult!5557)

(declare-fun lt!259173 () SeekEntryResult!5557)

(get-info :version)

(assert (=> b!568750 (and (= lt!259178 (Found!5557 j!142)) (or (undefined!6369 lt!259173) (not ((_ is Intermediate!5557) lt!259173)) (= (select (arr!17101 a!3118) (index!24457 lt!259173)) (select (arr!17101 a!3118) j!142)) (not (= (select (arr!17101 a!3118) (index!24457 lt!259173)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259178 (MissingZero!5557 (index!24457 lt!259173)))))))

(assert (=> b!568750 (= lt!259178 (seekEntryOrOpen!0 (select (arr!17101 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35627 (_ BitVec 32)) Bool)

(assert (=> b!568750 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17816 0))(
  ( (Unit!17817) )
))
(declare-fun lt!259174 () Unit!17816)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35627 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17816)

(assert (=> b!568750 (= lt!259174 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568751 () Bool)

(declare-fun res!358922 () Bool)

(assert (=> b!568751 (=> (not res!358922) (not e!327253))))

(declare-datatypes ((List!11234 0))(
  ( (Nil!11231) (Cons!11230 (h!12251 (_ BitVec 64)) (t!17470 List!11234)) )
))
(declare-fun arrayNoDuplicates!0 (array!35627 (_ BitVec 32) List!11234) Bool)

(assert (=> b!568751 (= res!358922 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11231))))

(declare-fun b!568752 () Bool)

(declare-fun res!358920 () Bool)

(assert (=> b!568752 (=> (not res!358920) (not e!327253))))

(assert (=> b!568752 (= res!358920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568753 () Bool)

(assert (=> b!568753 (= e!327253 e!327250)))

(declare-fun res!358918 () Bool)

(assert (=> b!568753 (=> (not res!358918) (not e!327250))))

(declare-fun lt!259175 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35627 (_ BitVec 32)) SeekEntryResult!5557)

(assert (=> b!568753 (= res!358918 (= lt!259173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259175 (select (store (arr!17101 a!3118) i!1132 k0!1914) j!142) (array!35628 (store (arr!17101 a!3118) i!1132 k0!1914) (size!17465 a!3118)) mask!3119)))))

(declare-fun lt!259176 () (_ BitVec 32))

(assert (=> b!568753 (= lt!259173 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259176 (select (arr!17101 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568753 (= lt!259175 (toIndex!0 (select (store (arr!17101 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!568753 (= lt!259176 (toIndex!0 (select (arr!17101 a!3118) j!142) mask!3119))))

(declare-fun b!568754 () Bool)

(declare-fun res!358915 () Bool)

(assert (=> b!568754 (=> (not res!358915) (not e!327252))))

(assert (=> b!568754 (= res!358915 (validKeyInArray!0 k0!1914))))

(assert (= (and start!52150 res!358917) b!568747))

(assert (= (and b!568747 res!358916) b!568748))

(assert (= (and b!568748 res!358914) b!568754))

(assert (= (and b!568754 res!358915) b!568749))

(assert (= (and b!568749 res!358921) b!568746))

(assert (= (and b!568746 res!358919) b!568752))

(assert (= (and b!568752 res!358920) b!568751))

(assert (= (and b!568751 res!358922) b!568753))

(assert (= (and b!568753 res!358918) b!568750))

(declare-fun m!547311 () Bool)

(assert (=> b!568750 m!547311))

(declare-fun m!547313 () Bool)

(assert (=> b!568750 m!547313))

(declare-fun m!547315 () Bool)

(assert (=> b!568750 m!547315))

(declare-fun m!547317 () Bool)

(assert (=> b!568750 m!547317))

(assert (=> b!568750 m!547311))

(declare-fun m!547319 () Bool)

(assert (=> b!568750 m!547319))

(declare-fun m!547321 () Bool)

(assert (=> b!568746 m!547321))

(declare-fun m!547323 () Bool)

(assert (=> b!568751 m!547323))

(assert (=> b!568748 m!547311))

(assert (=> b!568748 m!547311))

(declare-fun m!547325 () Bool)

(assert (=> b!568748 m!547325))

(declare-fun m!547327 () Bool)

(assert (=> b!568754 m!547327))

(assert (=> b!568753 m!547311))

(declare-fun m!547329 () Bool)

(assert (=> b!568753 m!547329))

(assert (=> b!568753 m!547311))

(declare-fun m!547331 () Bool)

(assert (=> b!568753 m!547331))

(assert (=> b!568753 m!547311))

(declare-fun m!547333 () Bool)

(assert (=> b!568753 m!547333))

(assert (=> b!568753 m!547333))

(declare-fun m!547335 () Bool)

(assert (=> b!568753 m!547335))

(declare-fun m!547337 () Bool)

(assert (=> b!568753 m!547337))

(assert (=> b!568753 m!547333))

(declare-fun m!547339 () Bool)

(assert (=> b!568753 m!547339))

(declare-fun m!547341 () Bool)

(assert (=> b!568749 m!547341))

(declare-fun m!547343 () Bool)

(assert (=> b!568752 m!547343))

(declare-fun m!547345 () Bool)

(assert (=> start!52150 m!547345))

(declare-fun m!547347 () Bool)

(assert (=> start!52150 m!547347))

(check-sat (not b!568749) (not b!568746) (not b!568750) (not b!568751) (not b!568748) (not start!52150) (not b!568753) (not b!568752) (not b!568754))
(check-sat)
