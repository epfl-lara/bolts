; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126412 () Bool)

(assert start!126412)

(declare-fun b!1481175 () Bool)

(declare-fun res!1006639 () Bool)

(declare-fun e!830784 () Bool)

(assert (=> b!1481175 (=> (not res!1006639) (not e!830784))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12210 0))(
  ( (MissingZero!12210 (index!51231 (_ BitVec 32))) (Found!12210 (index!51232 (_ BitVec 32))) (Intermediate!12210 (undefined!13022 Bool) (index!51233 (_ BitVec 32)) (x!132824 (_ BitVec 32))) (Undefined!12210) (MissingVacant!12210 (index!51234 (_ BitVec 32))) )
))
(declare-fun lt!646663 () SeekEntryResult!12210)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99348 0))(
  ( (array!99349 (arr!47947 (Array (_ BitVec 32) (_ BitVec 64))) (size!48498 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99348)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99348 (_ BitVec 32)) SeekEntryResult!12210)

(assert (=> b!1481175 (= res!1006639 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47947 a!2862) j!93) a!2862 mask!2687) lt!646663))))

(declare-fun res!1006631 () Bool)

(declare-fun e!830785 () Bool)

(assert (=> start!126412 (=> (not res!1006631) (not e!830785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126412 (= res!1006631 (validMask!0 mask!2687))))

(assert (=> start!126412 e!830785))

(assert (=> start!126412 true))

(declare-fun array_inv!36892 (array!99348) Bool)

(assert (=> start!126412 (array_inv!36892 a!2862)))

(declare-fun b!1481176 () Bool)

(declare-fun e!830786 () Bool)

(assert (=> b!1481176 (= e!830784 e!830786)))

(declare-fun res!1006632 () Bool)

(assert (=> b!1481176 (=> (not res!1006632) (not e!830786))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!646662 () SeekEntryResult!12210)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1481176 (= res!1006632 (= lt!646662 (Intermediate!12210 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646666 () (_ BitVec 64))

(declare-fun lt!646665 () array!99348)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481176 (= lt!646662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646666 mask!2687) lt!646666 lt!646665 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1481176 (= lt!646666 (select (store (arr!47947 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481177 () Bool)

(declare-fun e!830788 () Bool)

(assert (=> b!1481177 (= e!830785 e!830788)))

(declare-fun res!1006633 () Bool)

(assert (=> b!1481177 (=> (not res!1006633) (not e!830788))))

(assert (=> b!1481177 (= res!1006633 (= (select (store (arr!47947 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481177 (= lt!646665 (array!99349 (store (arr!47947 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48498 a!2862)))))

(declare-fun b!1481178 () Bool)

(declare-fun res!1006637 () Bool)

(declare-fun e!830783 () Bool)

(assert (=> b!1481178 (=> (not res!1006637) (not e!830783))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99348 (_ BitVec 32)) SeekEntryResult!12210)

(assert (=> b!1481178 (= res!1006637 (= (seekEntryOrOpen!0 (select (arr!47947 a!2862) j!93) a!2862 mask!2687) (Found!12210 j!93)))))

(declare-fun b!1481179 () Bool)

(declare-fun e!830789 () Bool)

(assert (=> b!1481179 (= e!830789 (= lt!646662 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646666 lt!646665 mask!2687)))))

(declare-fun b!1481180 () Bool)

(declare-fun res!1006643 () Bool)

(assert (=> b!1481180 (=> (not res!1006643) (not e!830785))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1481180 (= res!1006643 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48498 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48498 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48498 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481181 () Bool)

(assert (=> b!1481181 (= e!830783 (and (or (= (select (arr!47947 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47947 a!2862) intermediateBeforeIndex!19) (select (arr!47947 a!2862) j!93))) (or (and (= (select (arr!47947 a!2862) index!646) (select (store (arr!47947 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47947 a!2862) index!646) (select (arr!47947 a!2862) j!93))) (= (select (arr!47947 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(declare-fun b!1481182 () Bool)

(declare-fun res!1006642 () Bool)

(assert (=> b!1481182 (=> (not res!1006642) (not e!830786))))

(assert (=> b!1481182 (= res!1006642 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481183 () Bool)

(assert (=> b!1481183 (= e!830786 (not true))))

(assert (=> b!1481183 e!830783))

(declare-fun res!1006634 () Bool)

(assert (=> b!1481183 (=> (not res!1006634) (not e!830783))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99348 (_ BitVec 32)) Bool)

(assert (=> b!1481183 (= res!1006634 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49708 0))(
  ( (Unit!49709) )
))
(declare-fun lt!646664 () Unit!49708)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99348 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49708)

(assert (=> b!1481183 (= lt!646664 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481184 () Bool)

(declare-fun res!1006640 () Bool)

(assert (=> b!1481184 (=> (not res!1006640) (not e!830785))))

(assert (=> b!1481184 (= res!1006640 (and (= (size!48498 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48498 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48498 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481185 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99348 (_ BitVec 32)) SeekEntryResult!12210)

(assert (=> b!1481185 (= e!830789 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646666 lt!646665 mask!2687) (seekEntryOrOpen!0 lt!646666 lt!646665 mask!2687)))))

(declare-fun b!1481186 () Bool)

(declare-fun res!1006630 () Bool)

(assert (=> b!1481186 (=> (not res!1006630) (not e!830785))))

(declare-datatypes ((List!34628 0))(
  ( (Nil!34625) (Cons!34624 (h!35995 (_ BitVec 64)) (t!49329 List!34628)) )
))
(declare-fun arrayNoDuplicates!0 (array!99348 (_ BitVec 32) List!34628) Bool)

(assert (=> b!1481186 (= res!1006630 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34625))))

(declare-fun b!1481187 () Bool)

(declare-fun res!1006641 () Bool)

(assert (=> b!1481187 (=> (not res!1006641) (not e!830785))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481187 (= res!1006641 (validKeyInArray!0 (select (arr!47947 a!2862) j!93)))))

(declare-fun b!1481188 () Bool)

(declare-fun res!1006635 () Bool)

(assert (=> b!1481188 (=> (not res!1006635) (not e!830785))))

(assert (=> b!1481188 (= res!1006635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481189 () Bool)

(declare-fun res!1006644 () Bool)

(assert (=> b!1481189 (=> (not res!1006644) (not e!830786))))

(assert (=> b!1481189 (= res!1006644 e!830789)))

(declare-fun c!136796 () Bool)

(assert (=> b!1481189 (= c!136796 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481190 () Bool)

(assert (=> b!1481190 (= e!830788 e!830784)))

(declare-fun res!1006636 () Bool)

(assert (=> b!1481190 (=> (not res!1006636) (not e!830784))))

(assert (=> b!1481190 (= res!1006636 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47947 a!2862) j!93) mask!2687) (select (arr!47947 a!2862) j!93) a!2862 mask!2687) lt!646663))))

(assert (=> b!1481190 (= lt!646663 (Intermediate!12210 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481191 () Bool)

(declare-fun res!1006638 () Bool)

(assert (=> b!1481191 (=> (not res!1006638) (not e!830785))))

(assert (=> b!1481191 (= res!1006638 (validKeyInArray!0 (select (arr!47947 a!2862) i!1006)))))

(assert (= (and start!126412 res!1006631) b!1481184))

(assert (= (and b!1481184 res!1006640) b!1481191))

(assert (= (and b!1481191 res!1006638) b!1481187))

(assert (= (and b!1481187 res!1006641) b!1481188))

(assert (= (and b!1481188 res!1006635) b!1481186))

(assert (= (and b!1481186 res!1006630) b!1481180))

(assert (= (and b!1481180 res!1006643) b!1481177))

(assert (= (and b!1481177 res!1006633) b!1481190))

(assert (= (and b!1481190 res!1006636) b!1481175))

(assert (= (and b!1481175 res!1006639) b!1481176))

(assert (= (and b!1481176 res!1006632) b!1481189))

(assert (= (and b!1481189 c!136796) b!1481179))

(assert (= (and b!1481189 (not c!136796)) b!1481185))

(assert (= (and b!1481189 res!1006644) b!1481182))

(assert (= (and b!1481182 res!1006642) b!1481183))

(assert (= (and b!1481183 res!1006634) b!1481178))

(assert (= (and b!1481178 res!1006637) b!1481181))

(declare-fun m!1366977 () Bool)

(assert (=> b!1481185 m!1366977))

(declare-fun m!1366979 () Bool)

(assert (=> b!1481185 m!1366979))

(declare-fun m!1366981 () Bool)

(assert (=> b!1481187 m!1366981))

(assert (=> b!1481187 m!1366981))

(declare-fun m!1366983 () Bool)

(assert (=> b!1481187 m!1366983))

(assert (=> b!1481190 m!1366981))

(assert (=> b!1481190 m!1366981))

(declare-fun m!1366985 () Bool)

(assert (=> b!1481190 m!1366985))

(assert (=> b!1481190 m!1366985))

(assert (=> b!1481190 m!1366981))

(declare-fun m!1366987 () Bool)

(assert (=> b!1481190 m!1366987))

(declare-fun m!1366989 () Bool)

(assert (=> b!1481176 m!1366989))

(assert (=> b!1481176 m!1366989))

(declare-fun m!1366991 () Bool)

(assert (=> b!1481176 m!1366991))

(declare-fun m!1366993 () Bool)

(assert (=> b!1481176 m!1366993))

(declare-fun m!1366995 () Bool)

(assert (=> b!1481176 m!1366995))

(declare-fun m!1366997 () Bool)

(assert (=> start!126412 m!1366997))

(declare-fun m!1366999 () Bool)

(assert (=> start!126412 m!1366999))

(declare-fun m!1367001 () Bool)

(assert (=> b!1481186 m!1367001))

(assert (=> b!1481175 m!1366981))

(assert (=> b!1481175 m!1366981))

(declare-fun m!1367003 () Bool)

(assert (=> b!1481175 m!1367003))

(assert (=> b!1481177 m!1366993))

(declare-fun m!1367005 () Bool)

(assert (=> b!1481177 m!1367005))

(declare-fun m!1367007 () Bool)

(assert (=> b!1481179 m!1367007))

(declare-fun m!1367009 () Bool)

(assert (=> b!1481191 m!1367009))

(assert (=> b!1481191 m!1367009))

(declare-fun m!1367011 () Bool)

(assert (=> b!1481191 m!1367011))

(assert (=> b!1481178 m!1366981))

(assert (=> b!1481178 m!1366981))

(declare-fun m!1367013 () Bool)

(assert (=> b!1481178 m!1367013))

(assert (=> b!1481181 m!1366993))

(declare-fun m!1367015 () Bool)

(assert (=> b!1481181 m!1367015))

(declare-fun m!1367017 () Bool)

(assert (=> b!1481181 m!1367017))

(declare-fun m!1367019 () Bool)

(assert (=> b!1481181 m!1367019))

(assert (=> b!1481181 m!1366981))

(declare-fun m!1367021 () Bool)

(assert (=> b!1481188 m!1367021))

(declare-fun m!1367023 () Bool)

(assert (=> b!1481183 m!1367023))

(declare-fun m!1367025 () Bool)

(assert (=> b!1481183 m!1367025))

(push 1)

