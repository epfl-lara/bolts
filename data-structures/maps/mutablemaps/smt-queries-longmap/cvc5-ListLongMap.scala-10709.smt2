; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125434 () Bool)

(assert start!125434)

(declare-fun b!1466323 () Bool)

(declare-fun res!995149 () Bool)

(declare-fun e!823825 () Bool)

(assert (=> b!1466323 (=> res!995149 e!823825)))

(declare-fun lt!641681 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11958 0))(
  ( (MissingZero!11958 (index!50223 (_ BitVec 32))) (Found!11958 (index!50224 (_ BitVec 32))) (Intermediate!11958 (undefined!12770 Bool) (index!50225 (_ BitVec 32)) (x!131802 (_ BitVec 32))) (Undefined!11958) (MissingVacant!11958 (index!50226 (_ BitVec 32))) )
))
(declare-fun lt!641680 () SeekEntryResult!11958)

(declare-datatypes ((array!98799 0))(
  ( (array!98800 (arr!47683 (Array (_ BitVec 32) (_ BitVec 64))) (size!48234 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98799)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98799 (_ BitVec 32)) SeekEntryResult!11958)

(assert (=> b!1466323 (= res!995149 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641681 (select (arr!47683 a!2862) j!93) a!2862 mask!2687) lt!641680)))))

(declare-fun lt!641686 () (_ BitVec 64))

(declare-fun e!823832 () Bool)

(declare-fun b!1466324 () Bool)

(declare-fun lt!641683 () array!98799)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98799 (_ BitVec 32)) SeekEntryResult!11958)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98799 (_ BitVec 32)) SeekEntryResult!11958)

(assert (=> b!1466324 (= e!823832 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641681 intermediateAfterIndex!19 lt!641686 lt!641683 mask!2687) (seekEntryOrOpen!0 lt!641686 lt!641683 mask!2687))))))

(declare-fun b!1466325 () Bool)

(declare-fun e!823828 () Bool)

(declare-fun e!823831 () Bool)

(assert (=> b!1466325 (= e!823828 e!823831)))

(declare-fun res!995158 () Bool)

(assert (=> b!1466325 (=> (not res!995158) (not e!823831))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!641684 () SeekEntryResult!11958)

(assert (=> b!1466325 (= res!995158 (= lt!641684 (Intermediate!11958 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466325 (= lt!641684 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641686 mask!2687) lt!641686 lt!641683 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1466325 (= lt!641686 (select (store (arr!47683 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466326 () Bool)

(assert (=> b!1466326 (= e!823825 true)))

(declare-fun lt!641685 () SeekEntryResult!11958)

(assert (=> b!1466326 (= lt!641685 (seekEntryOrOpen!0 lt!641686 lt!641683 mask!2687))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((Unit!49360 0))(
  ( (Unit!49361) )
))
(declare-fun lt!641682 () Unit!49360)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49360)

(assert (=> b!1466326 (= lt!641682 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641681 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1466327 () Bool)

(declare-fun res!995147 () Bool)

(assert (=> b!1466327 (=> (not res!995147) (not e!823828))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1466327 (= res!995147 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47683 a!2862) j!93) a!2862 mask!2687) lt!641680))))

(declare-fun b!1466328 () Bool)

(declare-fun res!995155 () Bool)

(declare-fun e!823824 () Bool)

(assert (=> b!1466328 (=> (not res!995155) (not e!823824))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466328 (= res!995155 (validKeyInArray!0 (select (arr!47683 a!2862) j!93)))))

(declare-fun b!1466329 () Bool)

(declare-fun e!823827 () Bool)

(assert (=> b!1466329 (= e!823824 e!823827)))

(declare-fun res!995148 () Bool)

(assert (=> b!1466329 (=> (not res!995148) (not e!823827))))

(assert (=> b!1466329 (= res!995148 (= (select (store (arr!47683 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466329 (= lt!641683 (array!98800 (store (arr!47683 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48234 a!2862)))))

(declare-fun e!823830 () Bool)

(declare-fun b!1466330 () Bool)

(assert (=> b!1466330 (= e!823830 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641686 lt!641683 mask!2687) (seekEntryOrOpen!0 lt!641686 lt!641683 mask!2687)))))

(declare-fun b!1466331 () Bool)

(declare-fun e!823826 () Bool)

(assert (=> b!1466331 (= e!823826 e!823825)))

(declare-fun res!995160 () Bool)

(assert (=> b!1466331 (=> res!995160 e!823825)))

(assert (=> b!1466331 (= res!995160 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641681 #b00000000000000000000000000000000) (bvsge lt!641681 (size!48234 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466331 (= lt!641681 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466332 () Bool)

(assert (=> b!1466332 (= e!823830 (= lt!641684 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641686 lt!641683 mask!2687)))))

(declare-fun b!1466333 () Bool)

(assert (=> b!1466333 (= e!823831 (not e!823826))))

(declare-fun res!995146 () Bool)

(assert (=> b!1466333 (=> res!995146 e!823826)))

(assert (=> b!1466333 (= res!995146 (or (and (= (select (arr!47683 a!2862) index!646) (select (store (arr!47683 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47683 a!2862) index!646) (select (arr!47683 a!2862) j!93))) (= (select (arr!47683 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1466333 (and (= lt!641685 (Found!11958 j!93)) (or (= (select (arr!47683 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47683 a!2862) intermediateBeforeIndex!19) (select (arr!47683 a!2862) j!93))))))

(assert (=> b!1466333 (= lt!641685 (seekEntryOrOpen!0 (select (arr!47683 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98799 (_ BitVec 32)) Bool)

(assert (=> b!1466333 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!641679 () Unit!49360)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49360)

(assert (=> b!1466333 (= lt!641679 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466334 () Bool)

(declare-fun res!995151 () Bool)

(assert (=> b!1466334 (=> (not res!995151) (not e!823824))))

(assert (=> b!1466334 (= res!995151 (and (= (size!48234 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48234 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48234 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1466335 () Bool)

(declare-fun res!995157 () Bool)

(assert (=> b!1466335 (=> res!995157 e!823825)))

(assert (=> b!1466335 (= res!995157 e!823832)))

(declare-fun c!135104 () Bool)

(assert (=> b!1466335 (= c!135104 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466336 () Bool)

(declare-fun res!995143 () Bool)

(assert (=> b!1466336 (=> (not res!995143) (not e!823831))))

(assert (=> b!1466336 (= res!995143 e!823830)))

(declare-fun c!135103 () Bool)

(assert (=> b!1466336 (= c!135103 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1466337 () Bool)

(assert (=> b!1466337 (= e!823832 (not (= lt!641684 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641681 lt!641686 lt!641683 mask!2687))))))

(declare-fun b!1466338 () Bool)

(declare-fun res!995144 () Bool)

(assert (=> b!1466338 (=> (not res!995144) (not e!823824))))

(assert (=> b!1466338 (= res!995144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466339 () Bool)

(assert (=> b!1466339 (= e!823827 e!823828)))

(declare-fun res!995152 () Bool)

(assert (=> b!1466339 (=> (not res!995152) (not e!823828))))

(assert (=> b!1466339 (= res!995152 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47683 a!2862) j!93) mask!2687) (select (arr!47683 a!2862) j!93) a!2862 mask!2687) lt!641680))))

(assert (=> b!1466339 (= lt!641680 (Intermediate!11958 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466340 () Bool)

(declare-fun res!995159 () Bool)

(assert (=> b!1466340 (=> (not res!995159) (not e!823824))))

(assert (=> b!1466340 (= res!995159 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48234 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48234 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48234 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!995154 () Bool)

(assert (=> start!125434 (=> (not res!995154) (not e!823824))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125434 (= res!995154 (validMask!0 mask!2687))))

(assert (=> start!125434 e!823824))

(assert (=> start!125434 true))

(declare-fun array_inv!36628 (array!98799) Bool)

(assert (=> start!125434 (array_inv!36628 a!2862)))

(declare-fun b!1466341 () Bool)

(declare-fun res!995153 () Bool)

(assert (=> b!1466341 (=> (not res!995153) (not e!823824))))

(assert (=> b!1466341 (= res!995153 (validKeyInArray!0 (select (arr!47683 a!2862) i!1006)))))

(declare-fun b!1466342 () Bool)

(declare-fun res!995150 () Bool)

(assert (=> b!1466342 (=> res!995150 e!823825)))

(assert (=> b!1466342 (= res!995150 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466343 () Bool)

(declare-fun res!995156 () Bool)

(assert (=> b!1466343 (=> (not res!995156) (not e!823824))))

(declare-datatypes ((List!34364 0))(
  ( (Nil!34361) (Cons!34360 (h!35710 (_ BitVec 64)) (t!49065 List!34364)) )
))
(declare-fun arrayNoDuplicates!0 (array!98799 (_ BitVec 32) List!34364) Bool)

(assert (=> b!1466343 (= res!995156 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34361))))

(declare-fun b!1466344 () Bool)

(declare-fun res!995145 () Bool)

(assert (=> b!1466344 (=> (not res!995145) (not e!823831))))

(assert (=> b!1466344 (= res!995145 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!125434 res!995154) b!1466334))

(assert (= (and b!1466334 res!995151) b!1466341))

(assert (= (and b!1466341 res!995153) b!1466328))

(assert (= (and b!1466328 res!995155) b!1466338))

(assert (= (and b!1466338 res!995144) b!1466343))

(assert (= (and b!1466343 res!995156) b!1466340))

(assert (= (and b!1466340 res!995159) b!1466329))

(assert (= (and b!1466329 res!995148) b!1466339))

(assert (= (and b!1466339 res!995152) b!1466327))

(assert (= (and b!1466327 res!995147) b!1466325))

(assert (= (and b!1466325 res!995158) b!1466336))

(assert (= (and b!1466336 c!135103) b!1466332))

(assert (= (and b!1466336 (not c!135103)) b!1466330))

(assert (= (and b!1466336 res!995143) b!1466344))

(assert (= (and b!1466344 res!995145) b!1466333))

(assert (= (and b!1466333 (not res!995146)) b!1466331))

(assert (= (and b!1466331 (not res!995160)) b!1466323))

(assert (= (and b!1466323 (not res!995149)) b!1466335))

(assert (= (and b!1466335 c!135104) b!1466337))

(assert (= (and b!1466335 (not c!135104)) b!1466324))

(assert (= (and b!1466335 (not res!995157)) b!1466342))

(assert (= (and b!1466342 (not res!995150)) b!1466326))

(declare-fun m!1353375 () Bool)

(assert (=> b!1466337 m!1353375))

(declare-fun m!1353377 () Bool)

(assert (=> b!1466327 m!1353377))

(assert (=> b!1466327 m!1353377))

(declare-fun m!1353379 () Bool)

(assert (=> b!1466327 m!1353379))

(declare-fun m!1353381 () Bool)

(assert (=> b!1466341 m!1353381))

(assert (=> b!1466341 m!1353381))

(declare-fun m!1353383 () Bool)

(assert (=> b!1466341 m!1353383))

(declare-fun m!1353385 () Bool)

(assert (=> b!1466343 m!1353385))

(declare-fun m!1353387 () Bool)

(assert (=> b!1466331 m!1353387))

(assert (=> b!1466323 m!1353377))

(assert (=> b!1466323 m!1353377))

(declare-fun m!1353389 () Bool)

(assert (=> b!1466323 m!1353389))

(declare-fun m!1353391 () Bool)

(assert (=> b!1466324 m!1353391))

(declare-fun m!1353393 () Bool)

(assert (=> b!1466324 m!1353393))

(declare-fun m!1353395 () Bool)

(assert (=> b!1466329 m!1353395))

(declare-fun m!1353397 () Bool)

(assert (=> b!1466329 m!1353397))

(declare-fun m!1353399 () Bool)

(assert (=> b!1466333 m!1353399))

(assert (=> b!1466333 m!1353395))

(declare-fun m!1353401 () Bool)

(assert (=> b!1466333 m!1353401))

(declare-fun m!1353403 () Bool)

(assert (=> b!1466333 m!1353403))

(declare-fun m!1353405 () Bool)

(assert (=> b!1466333 m!1353405))

(assert (=> b!1466333 m!1353377))

(declare-fun m!1353407 () Bool)

(assert (=> b!1466333 m!1353407))

(declare-fun m!1353409 () Bool)

(assert (=> b!1466333 m!1353409))

(assert (=> b!1466333 m!1353377))

(declare-fun m!1353411 () Bool)

(assert (=> b!1466330 m!1353411))

(assert (=> b!1466330 m!1353393))

(assert (=> b!1466339 m!1353377))

(assert (=> b!1466339 m!1353377))

(declare-fun m!1353413 () Bool)

(assert (=> b!1466339 m!1353413))

(assert (=> b!1466339 m!1353413))

(assert (=> b!1466339 m!1353377))

(declare-fun m!1353415 () Bool)

(assert (=> b!1466339 m!1353415))

(declare-fun m!1353417 () Bool)

(assert (=> b!1466338 m!1353417))

(assert (=> b!1466328 m!1353377))

(assert (=> b!1466328 m!1353377))

(declare-fun m!1353419 () Bool)

(assert (=> b!1466328 m!1353419))

(declare-fun m!1353421 () Bool)

(assert (=> start!125434 m!1353421))

(declare-fun m!1353423 () Bool)

(assert (=> start!125434 m!1353423))

(assert (=> b!1466326 m!1353393))

(declare-fun m!1353425 () Bool)

(assert (=> b!1466326 m!1353425))

(declare-fun m!1353427 () Bool)

(assert (=> b!1466325 m!1353427))

(assert (=> b!1466325 m!1353427))

(declare-fun m!1353429 () Bool)

(assert (=> b!1466325 m!1353429))

(assert (=> b!1466325 m!1353395))

(declare-fun m!1353431 () Bool)

(assert (=> b!1466325 m!1353431))

(declare-fun m!1353433 () Bool)

(assert (=> b!1466332 m!1353433))

(push 1)

