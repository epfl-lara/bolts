; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125620 () Bool)

(assert start!125620)

(declare-fun b!1469311 () Bool)

(declare-fun res!997926 () Bool)

(declare-fun e!824919 () Bool)

(assert (=> b!1469311 (=> (not res!997926) (not e!824919))))

(declare-datatypes ((array!98985 0))(
  ( (array!98986 (arr!47776 (Array (_ BitVec 32) (_ BitVec 64))) (size!48327 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98985)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469311 (= res!997926 (validKeyInArray!0 (select (arr!47776 a!2862) j!93)))))

(declare-fun b!1469312 () Bool)

(declare-fun res!997922 () Bool)

(declare-fun e!824921 () Bool)

(assert (=> b!1469312 (=> (not res!997922) (not e!824921))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12039 0))(
  ( (MissingZero!12039 (index!50547 (_ BitVec 32))) (Found!12039 (index!50548 (_ BitVec 32))) (Intermediate!12039 (undefined!12851 Bool) (index!50549 (_ BitVec 32)) (x!132131 (_ BitVec 32))) (Undefined!12039) (MissingVacant!12039 (index!50550 (_ BitVec 32))) )
))
(declare-fun lt!642485 () SeekEntryResult!12039)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98985 (_ BitVec 32)) SeekEntryResult!12039)

(assert (=> b!1469312 (= res!997922 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47776 a!2862) j!93) a!2862 mask!2687) lt!642485))))

(declare-fun b!1469313 () Bool)

(declare-fun e!824916 () Bool)

(assert (=> b!1469313 (= e!824916 false)))

(declare-fun lt!642486 () Bool)

(declare-fun e!824918 () Bool)

(assert (=> b!1469313 (= lt!642486 e!824918)))

(declare-fun c!135209 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469313 (= c!135209 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469315 () Bool)

(declare-fun res!997929 () Bool)

(assert (=> b!1469315 (=> (not res!997929) (not e!824919))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1469315 (= res!997929 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48327 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48327 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48327 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469316 () Bool)

(declare-fun e!824920 () Bool)

(assert (=> b!1469316 (= e!824919 e!824920)))

(declare-fun res!997920 () Bool)

(assert (=> b!1469316 (=> (not res!997920) (not e!824920))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469316 (= res!997920 (= (select (store (arr!47776 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!642484 () array!98985)

(assert (=> b!1469316 (= lt!642484 (array!98986 (store (arr!47776 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48327 a!2862)))))

(declare-fun b!1469317 () Bool)

(assert (=> b!1469317 (= e!824920 e!824921)))

(declare-fun res!997927 () Bool)

(assert (=> b!1469317 (=> (not res!997927) (not e!824921))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469317 (= res!997927 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47776 a!2862) j!93) mask!2687) (select (arr!47776 a!2862) j!93) a!2862 mask!2687) lt!642485))))

(assert (=> b!1469317 (= lt!642485 (Intermediate!12039 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469318 () Bool)

(assert (=> b!1469318 (= e!824921 e!824916)))

(declare-fun res!997921 () Bool)

(assert (=> b!1469318 (=> (not res!997921) (not e!824916))))

(declare-fun lt!642487 () SeekEntryResult!12039)

(assert (=> b!1469318 (= res!997921 (= lt!642487 (Intermediate!12039 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642483 () (_ BitVec 64))

(assert (=> b!1469318 (= lt!642487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642483 mask!2687) lt!642483 lt!642484 mask!2687))))

(assert (=> b!1469318 (= lt!642483 (select (store (arr!47776 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469319 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98985 (_ BitVec 32)) SeekEntryResult!12039)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98985 (_ BitVec 32)) SeekEntryResult!12039)

(assert (=> b!1469319 (= e!824918 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642483 lt!642484 mask!2687) (seekEntryOrOpen!0 lt!642483 lt!642484 mask!2687))))))

(declare-fun b!1469320 () Bool)

(declare-fun res!997919 () Bool)

(assert (=> b!1469320 (=> (not res!997919) (not e!824919))))

(assert (=> b!1469320 (= res!997919 (and (= (size!48327 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48327 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48327 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469321 () Bool)

(declare-fun res!997924 () Bool)

(assert (=> b!1469321 (=> (not res!997924) (not e!824919))))

(assert (=> b!1469321 (= res!997924 (validKeyInArray!0 (select (arr!47776 a!2862) i!1006)))))

(declare-fun b!1469322 () Bool)

(declare-fun res!997923 () Bool)

(assert (=> b!1469322 (=> (not res!997923) (not e!824919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98985 (_ BitVec 32)) Bool)

(assert (=> b!1469322 (= res!997923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469323 () Bool)

(assert (=> b!1469323 (= e!824918 (not (= lt!642487 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642483 lt!642484 mask!2687))))))

(declare-fun res!997925 () Bool)

(assert (=> start!125620 (=> (not res!997925) (not e!824919))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125620 (= res!997925 (validMask!0 mask!2687))))

(assert (=> start!125620 e!824919))

(assert (=> start!125620 true))

(declare-fun array_inv!36721 (array!98985) Bool)

(assert (=> start!125620 (array_inv!36721 a!2862)))

(declare-fun b!1469314 () Bool)

(declare-fun res!997928 () Bool)

(assert (=> b!1469314 (=> (not res!997928) (not e!824919))))

(declare-datatypes ((List!34457 0))(
  ( (Nil!34454) (Cons!34453 (h!35803 (_ BitVec 64)) (t!49158 List!34457)) )
))
(declare-fun arrayNoDuplicates!0 (array!98985 (_ BitVec 32) List!34457) Bool)

(assert (=> b!1469314 (= res!997928 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34454))))

(assert (= (and start!125620 res!997925) b!1469320))

(assert (= (and b!1469320 res!997919) b!1469321))

(assert (= (and b!1469321 res!997924) b!1469311))

(assert (= (and b!1469311 res!997926) b!1469322))

(assert (= (and b!1469322 res!997923) b!1469314))

(assert (= (and b!1469314 res!997928) b!1469315))

(assert (= (and b!1469315 res!997929) b!1469316))

(assert (= (and b!1469316 res!997920) b!1469317))

(assert (= (and b!1469317 res!997927) b!1469312))

(assert (= (and b!1469312 res!997922) b!1469318))

(assert (= (and b!1469318 res!997921) b!1469313))

(assert (= (and b!1469313 c!135209) b!1469323))

(assert (= (and b!1469313 (not c!135209)) b!1469319))

(declare-fun m!1356549 () Bool)

(assert (=> b!1469319 m!1356549))

(declare-fun m!1356551 () Bool)

(assert (=> b!1469319 m!1356551))

(declare-fun m!1356553 () Bool)

(assert (=> b!1469314 m!1356553))

(declare-fun m!1356555 () Bool)

(assert (=> b!1469312 m!1356555))

(assert (=> b!1469312 m!1356555))

(declare-fun m!1356557 () Bool)

(assert (=> b!1469312 m!1356557))

(declare-fun m!1356559 () Bool)

(assert (=> start!125620 m!1356559))

(declare-fun m!1356561 () Bool)

(assert (=> start!125620 m!1356561))

(declare-fun m!1356563 () Bool)

(assert (=> b!1469318 m!1356563))

(assert (=> b!1469318 m!1356563))

(declare-fun m!1356565 () Bool)

(assert (=> b!1469318 m!1356565))

(declare-fun m!1356567 () Bool)

(assert (=> b!1469318 m!1356567))

(declare-fun m!1356569 () Bool)

(assert (=> b!1469318 m!1356569))

(assert (=> b!1469311 m!1356555))

(assert (=> b!1469311 m!1356555))

(declare-fun m!1356571 () Bool)

(assert (=> b!1469311 m!1356571))

(declare-fun m!1356573 () Bool)

(assert (=> b!1469322 m!1356573))

(declare-fun m!1356575 () Bool)

(assert (=> b!1469321 m!1356575))

(assert (=> b!1469321 m!1356575))

(declare-fun m!1356577 () Bool)

(assert (=> b!1469321 m!1356577))

(assert (=> b!1469316 m!1356567))

(declare-fun m!1356579 () Bool)

(assert (=> b!1469316 m!1356579))

(assert (=> b!1469317 m!1356555))

(assert (=> b!1469317 m!1356555))

(declare-fun m!1356581 () Bool)

(assert (=> b!1469317 m!1356581))

(assert (=> b!1469317 m!1356581))

(assert (=> b!1469317 m!1356555))

(declare-fun m!1356583 () Bool)

(assert (=> b!1469317 m!1356583))

(declare-fun m!1356585 () Bool)

(assert (=> b!1469323 m!1356585))

(push 1)

