; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126418 () Bool)

(assert start!126418)

(declare-fun b!1481328 () Bool)

(declare-fun e!830851 () Bool)

(declare-fun e!830852 () Bool)

(assert (=> b!1481328 (= e!830851 e!830852)))

(declare-fun res!1006769 () Bool)

(assert (=> b!1481328 (=> (not res!1006769) (not e!830852))))

(declare-datatypes ((SeekEntryResult!12213 0))(
  ( (MissingZero!12213 (index!51243 (_ BitVec 32))) (Found!12213 (index!51244 (_ BitVec 32))) (Intermediate!12213 (undefined!13025 Bool) (index!51245 (_ BitVec 32)) (x!132835 (_ BitVec 32))) (Undefined!12213) (MissingVacant!12213 (index!51246 (_ BitVec 32))) )
))
(declare-fun lt!646708 () SeekEntryResult!12213)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1481328 (= res!1006769 (= lt!646708 (Intermediate!12213 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!99354 0))(
  ( (array!99355 (arr!47950 (Array (_ BitVec 32) (_ BitVec 64))) (size!48501 (_ BitVec 32))) )
))
(declare-fun lt!646710 () array!99354)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!646711 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99354 (_ BitVec 32)) SeekEntryResult!12213)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481328 (= lt!646708 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646711 mask!2687) lt!646711 lt!646710 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99354)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1481328 (= lt!646711 (select (store (arr!47950 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481329 () Bool)

(declare-fun res!1006773 () Bool)

(declare-fun e!830848 () Bool)

(assert (=> b!1481329 (=> (not res!1006773) (not e!830848))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99354 (_ BitVec 32)) SeekEntryResult!12213)

(assert (=> b!1481329 (= res!1006773 (= (seekEntryOrOpen!0 (select (arr!47950 a!2862) j!93) a!2862 mask!2687) (Found!12213 j!93)))))

(declare-fun b!1481330 () Bool)

(declare-fun e!830849 () Bool)

(assert (=> b!1481330 (= e!830849 e!830851)))

(declare-fun res!1006776 () Bool)

(assert (=> b!1481330 (=> (not res!1006776) (not e!830851))))

(declare-fun lt!646709 () SeekEntryResult!12213)

(assert (=> b!1481330 (= res!1006776 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47950 a!2862) j!93) mask!2687) (select (arr!47950 a!2862) j!93) a!2862 mask!2687) lt!646709))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1481330 (= lt!646709 (Intermediate!12213 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1006768 () Bool)

(declare-fun e!830850 () Bool)

(assert (=> start!126418 (=> (not res!1006768) (not e!830850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126418 (= res!1006768 (validMask!0 mask!2687))))

(assert (=> start!126418 e!830850))

(assert (=> start!126418 true))

(declare-fun array_inv!36895 (array!99354) Bool)

(assert (=> start!126418 (array_inv!36895 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1481331 () Bool)

(declare-fun e!830847 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1481331 (= e!830847 (= lt!646708 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646711 lt!646710 mask!2687)))))

(declare-fun b!1481332 () Bool)

(assert (=> b!1481332 (= e!830852 (not (or (and (= (select (arr!47950 a!2862) index!646) (select (store (arr!47950 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47950 a!2862) index!646) (select (arr!47950 a!2862) j!93))) (= (select (arr!47950 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= (select (store (arr!47950 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1481332 e!830848))

(declare-fun res!1006774 () Bool)

(assert (=> b!1481332 (=> (not res!1006774) (not e!830848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99354 (_ BitVec 32)) Bool)

(assert (=> b!1481332 (= res!1006774 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49714 0))(
  ( (Unit!49715) )
))
(declare-fun lt!646707 () Unit!49714)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99354 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49714)

(assert (=> b!1481332 (= lt!646707 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481333 () Bool)

(assert (=> b!1481333 (= e!830850 e!830849)))

(declare-fun res!1006777 () Bool)

(assert (=> b!1481333 (=> (not res!1006777) (not e!830849))))

(assert (=> b!1481333 (= res!1006777 (= (select (store (arr!47950 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481333 (= lt!646710 (array!99355 (store (arr!47950 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48501 a!2862)))))

(declare-fun b!1481334 () Bool)

(declare-fun res!1006766 () Bool)

(assert (=> b!1481334 (=> (not res!1006766) (not e!830850))))

(assert (=> b!1481334 (= res!1006766 (and (= (size!48501 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48501 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48501 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481335 () Bool)

(declare-fun res!1006771 () Bool)

(assert (=> b!1481335 (=> (not res!1006771) (not e!830850))))

(assert (=> b!1481335 (= res!1006771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481336 () Bool)

(declare-fun res!1006767 () Bool)

(assert (=> b!1481336 (=> (not res!1006767) (not e!830850))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481336 (= res!1006767 (validKeyInArray!0 (select (arr!47950 a!2862) i!1006)))))

(declare-fun b!1481337 () Bool)

(declare-fun res!1006772 () Bool)

(assert (=> b!1481337 (=> (not res!1006772) (not e!830852))))

(assert (=> b!1481337 (= res!1006772 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481338 () Bool)

(declare-fun res!1006770 () Bool)

(assert (=> b!1481338 (=> (not res!1006770) (not e!830850))))

(declare-datatypes ((List!34631 0))(
  ( (Nil!34628) (Cons!34627 (h!35998 (_ BitVec 64)) (t!49332 List!34631)) )
))
(declare-fun arrayNoDuplicates!0 (array!99354 (_ BitVec 32) List!34631) Bool)

(assert (=> b!1481338 (= res!1006770 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34628))))

(declare-fun b!1481339 () Bool)

(declare-fun res!1006779 () Bool)

(assert (=> b!1481339 (=> (not res!1006779) (not e!830850))))

(assert (=> b!1481339 (= res!1006779 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48501 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48501 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48501 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481340 () Bool)

(assert (=> b!1481340 (= e!830848 (and (or (= (select (arr!47950 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47950 a!2862) intermediateBeforeIndex!19) (select (arr!47950 a!2862) j!93))) (or (and (= (select (arr!47950 a!2862) index!646) (select (store (arr!47950 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47950 a!2862) index!646) (select (arr!47950 a!2862) j!93))) (= (select (arr!47950 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (= index!646 intermediateAfterIndex!19))))))

(declare-fun b!1481341 () Bool)

(declare-fun res!1006778 () Bool)

(assert (=> b!1481341 (=> (not res!1006778) (not e!830852))))

(assert (=> b!1481341 (= res!1006778 e!830847)))

(declare-fun c!136805 () Bool)

(assert (=> b!1481341 (= c!136805 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481342 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99354 (_ BitVec 32)) SeekEntryResult!12213)

(assert (=> b!1481342 (= e!830847 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646711 lt!646710 mask!2687) (seekEntryOrOpen!0 lt!646711 lt!646710 mask!2687)))))

(declare-fun b!1481343 () Bool)

(declare-fun res!1006765 () Bool)

(assert (=> b!1481343 (=> (not res!1006765) (not e!830851))))

(assert (=> b!1481343 (= res!1006765 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47950 a!2862) j!93) a!2862 mask!2687) lt!646709))))

(declare-fun b!1481344 () Bool)

(declare-fun res!1006775 () Bool)

(assert (=> b!1481344 (=> (not res!1006775) (not e!830850))))

(assert (=> b!1481344 (= res!1006775 (validKeyInArray!0 (select (arr!47950 a!2862) j!93)))))

(assert (= (and start!126418 res!1006768) b!1481334))

(assert (= (and b!1481334 res!1006766) b!1481336))

(assert (= (and b!1481336 res!1006767) b!1481344))

(assert (= (and b!1481344 res!1006775) b!1481335))

(assert (= (and b!1481335 res!1006771) b!1481338))

(assert (= (and b!1481338 res!1006770) b!1481339))

(assert (= (and b!1481339 res!1006779) b!1481333))

(assert (= (and b!1481333 res!1006777) b!1481330))

(assert (= (and b!1481330 res!1006776) b!1481343))

(assert (= (and b!1481343 res!1006765) b!1481328))

(assert (= (and b!1481328 res!1006769) b!1481341))

(assert (= (and b!1481341 c!136805) b!1481331))

(assert (= (and b!1481341 (not c!136805)) b!1481342))

(assert (= (and b!1481341 res!1006778) b!1481337))

(assert (= (and b!1481337 res!1006772) b!1481332))

(assert (= (and b!1481332 res!1006774) b!1481329))

(assert (= (and b!1481329 res!1006773) b!1481340))

(declare-fun m!1367127 () Bool)

(assert (=> b!1481331 m!1367127))

(declare-fun m!1367129 () Bool)

(assert (=> b!1481332 m!1367129))

(declare-fun m!1367131 () Bool)

(assert (=> b!1481332 m!1367131))

(declare-fun m!1367133 () Bool)

(assert (=> b!1481332 m!1367133))

(declare-fun m!1367135 () Bool)

(assert (=> b!1481332 m!1367135))

(declare-fun m!1367137 () Bool)

(assert (=> b!1481332 m!1367137))

(declare-fun m!1367139 () Bool)

(assert (=> b!1481332 m!1367139))

(declare-fun m!1367141 () Bool)

(assert (=> b!1481336 m!1367141))

(assert (=> b!1481336 m!1367141))

(declare-fun m!1367143 () Bool)

(assert (=> b!1481336 m!1367143))

(declare-fun m!1367145 () Bool)

(assert (=> start!126418 m!1367145))

(declare-fun m!1367147 () Bool)

(assert (=> start!126418 m!1367147))

(declare-fun m!1367149 () Bool)

(assert (=> b!1481342 m!1367149))

(declare-fun m!1367151 () Bool)

(assert (=> b!1481342 m!1367151))

(assert (=> b!1481343 m!1367139))

(assert (=> b!1481343 m!1367139))

(declare-fun m!1367153 () Bool)

(assert (=> b!1481343 m!1367153))

(assert (=> b!1481329 m!1367139))

(assert (=> b!1481329 m!1367139))

(declare-fun m!1367155 () Bool)

(assert (=> b!1481329 m!1367155))

(assert (=> b!1481340 m!1367131))

(declare-fun m!1367157 () Bool)

(assert (=> b!1481340 m!1367157))

(assert (=> b!1481340 m!1367133))

(assert (=> b!1481340 m!1367135))

(assert (=> b!1481340 m!1367139))

(assert (=> b!1481333 m!1367131))

(declare-fun m!1367159 () Bool)

(assert (=> b!1481333 m!1367159))

(assert (=> b!1481330 m!1367139))

(assert (=> b!1481330 m!1367139))

(declare-fun m!1367161 () Bool)

(assert (=> b!1481330 m!1367161))

(assert (=> b!1481330 m!1367161))

(assert (=> b!1481330 m!1367139))

(declare-fun m!1367163 () Bool)

(assert (=> b!1481330 m!1367163))

(declare-fun m!1367165 () Bool)

(assert (=> b!1481328 m!1367165))

(assert (=> b!1481328 m!1367165))

(declare-fun m!1367167 () Bool)

(assert (=> b!1481328 m!1367167))

(assert (=> b!1481328 m!1367131))

(declare-fun m!1367169 () Bool)

(assert (=> b!1481328 m!1367169))

(declare-fun m!1367171 () Bool)

(assert (=> b!1481338 m!1367171))

(assert (=> b!1481344 m!1367139))

(assert (=> b!1481344 m!1367139))

(declare-fun m!1367173 () Bool)

(assert (=> b!1481344 m!1367173))

(declare-fun m!1367175 () Bool)

(assert (=> b!1481335 m!1367175))

(push 1)

