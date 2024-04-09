; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126440 () Bool)

(assert start!126440)

(declare-fun res!1007266 () Bool)

(declare-fun e!831078 () Bool)

(assert (=> start!126440 (=> (not res!1007266) (not e!831078))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126440 (= res!1007266 (validMask!0 mask!2687))))

(assert (=> start!126440 e!831078))

(assert (=> start!126440 true))

(declare-datatypes ((array!99376 0))(
  ( (array!99377 (arr!47961 (Array (_ BitVec 32) (_ BitVec 64))) (size!48512 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99376)

(declare-fun array_inv!36906 (array!99376) Bool)

(assert (=> start!126440 (array_inv!36906 a!2862)))

(declare-fun b!1481889 () Bool)

(declare-fun e!831079 () Bool)

(declare-fun e!831083 () Bool)

(assert (=> b!1481889 (= e!831079 e!831083)))

(declare-fun res!1007270 () Bool)

(assert (=> b!1481889 (=> (not res!1007270) (not e!831083))))

(declare-datatypes ((SeekEntryResult!12224 0))(
  ( (MissingZero!12224 (index!51287 (_ BitVec 32))) (Found!12224 (index!51288 (_ BitVec 32))) (Intermediate!12224 (undefined!13036 Bool) (index!51289 (_ BitVec 32)) (x!132870 (_ BitVec 32))) (Undefined!12224) (MissingVacant!12224 (index!51290 (_ BitVec 32))) )
))
(declare-fun lt!646876 () SeekEntryResult!12224)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99376 (_ BitVec 32)) SeekEntryResult!12224)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481889 (= res!1007270 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47961 a!2862) j!93) mask!2687) (select (arr!47961 a!2862) j!93) a!2862 mask!2687) lt!646876))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1481889 (= lt!646876 (Intermediate!12224 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481890 () Bool)

(declare-fun res!1007272 () Bool)

(assert (=> b!1481890 (=> (not res!1007272) (not e!831078))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1481890 (= res!1007272 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48512 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48512 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48512 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1481891 () Bool)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun e!831080 () Bool)

(assert (=> b!1481891 (= e!831080 (and (or (= (select (arr!47961 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47961 a!2862) intermediateBeforeIndex!19) (select (arr!47961 a!2862) j!93))) (or (and (= (select (arr!47961 a!2862) index!646) (select (store (arr!47961 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47961 a!2862) index!646) (select (arr!47961 a!2862) j!93))) (= (select (arr!47961 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47961 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1481892 () Bool)

(declare-fun res!1007262 () Bool)

(assert (=> b!1481892 (=> (not res!1007262) (not e!831078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481892 (= res!1007262 (validKeyInArray!0 (select (arr!47961 a!2862) i!1006)))))

(declare-fun b!1481893 () Bool)

(assert (=> b!1481893 (= e!831078 e!831079)))

(declare-fun res!1007273 () Bool)

(assert (=> b!1481893 (=> (not res!1007273) (not e!831079))))

(assert (=> b!1481893 (= res!1007273 (= (select (store (arr!47961 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!646873 () array!99376)

(assert (=> b!1481893 (= lt!646873 (array!99377 (store (arr!47961 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48512 a!2862)))))

(declare-fun b!1481894 () Bool)

(declare-fun res!1007265 () Bool)

(assert (=> b!1481894 (=> (not res!1007265) (not e!831078))))

(assert (=> b!1481894 (= res!1007265 (and (= (size!48512 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48512 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48512 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481895 () Bool)

(declare-fun res!1007268 () Bool)

(assert (=> b!1481895 (=> (not res!1007268) (not e!831083))))

(assert (=> b!1481895 (= res!1007268 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47961 a!2862) j!93) a!2862 mask!2687) lt!646876))))

(declare-fun lt!646875 () (_ BitVec 64))

(declare-fun lt!646872 () SeekEntryResult!12224)

(declare-fun e!831081 () Bool)

(declare-fun b!1481896 () Bool)

(assert (=> b!1481896 (= e!831081 (= lt!646872 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646875 lt!646873 mask!2687)))))

(declare-fun b!1481897 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99376 (_ BitVec 32)) SeekEntryResult!12224)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99376 (_ BitVec 32)) SeekEntryResult!12224)

(assert (=> b!1481897 (= e!831081 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646875 lt!646873 mask!2687) (seekEntryOrOpen!0 lt!646875 lt!646873 mask!2687)))))

(declare-fun b!1481898 () Bool)

(declare-fun res!1007274 () Bool)

(assert (=> b!1481898 (=> (not res!1007274) (not e!831078))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99376 (_ BitVec 32)) Bool)

(assert (=> b!1481898 (= res!1007274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481899 () Bool)

(declare-fun res!1007271 () Bool)

(assert (=> b!1481899 (=> (not res!1007271) (not e!831078))))

(declare-datatypes ((List!34642 0))(
  ( (Nil!34639) (Cons!34638 (h!36009 (_ BitVec 64)) (t!49343 List!34642)) )
))
(declare-fun arrayNoDuplicates!0 (array!99376 (_ BitVec 32) List!34642) Bool)

(assert (=> b!1481899 (= res!1007271 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34639))))

(declare-fun b!1481900 () Bool)

(declare-fun res!1007267 () Bool)

(declare-fun e!831082 () Bool)

(assert (=> b!1481900 (=> (not res!1007267) (not e!831082))))

(assert (=> b!1481900 (= res!1007267 e!831081)))

(declare-fun c!136838 () Bool)

(assert (=> b!1481900 (= c!136838 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481901 () Bool)

(declare-fun res!1007269 () Bool)

(assert (=> b!1481901 (=> (not res!1007269) (not e!831082))))

(assert (=> b!1481901 (= res!1007269 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481902 () Bool)

(declare-fun res!1007264 () Bool)

(assert (=> b!1481902 (=> (not res!1007264) (not e!831080))))

(assert (=> b!1481902 (= res!1007264 (= (seekEntryOrOpen!0 (select (arr!47961 a!2862) j!93) a!2862 mask!2687) (Found!12224 j!93)))))

(declare-fun b!1481903 () Bool)

(assert (=> b!1481903 (= e!831083 e!831082)))

(declare-fun res!1007261 () Bool)

(assert (=> b!1481903 (=> (not res!1007261) (not e!831082))))

(assert (=> b!1481903 (= res!1007261 (= lt!646872 (Intermediate!12224 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1481903 (= lt!646872 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646875 mask!2687) lt!646875 lt!646873 mask!2687))))

(assert (=> b!1481903 (= lt!646875 (select (store (arr!47961 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1481904 () Bool)

(declare-fun res!1007263 () Bool)

(assert (=> b!1481904 (=> (not res!1007263) (not e!831078))))

(assert (=> b!1481904 (= res!1007263 (validKeyInArray!0 (select (arr!47961 a!2862) j!93)))))

(declare-fun b!1481905 () Bool)

(assert (=> b!1481905 (= e!831082 (not true))))

(assert (=> b!1481905 e!831080))

(declare-fun res!1007260 () Bool)

(assert (=> b!1481905 (=> (not res!1007260) (not e!831080))))

(assert (=> b!1481905 (= res!1007260 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49736 0))(
  ( (Unit!49737) )
))
(declare-fun lt!646874 () Unit!49736)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99376 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49736)

(assert (=> b!1481905 (= lt!646874 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126440 res!1007266) b!1481894))

(assert (= (and b!1481894 res!1007265) b!1481892))

(assert (= (and b!1481892 res!1007262) b!1481904))

(assert (= (and b!1481904 res!1007263) b!1481898))

(assert (= (and b!1481898 res!1007274) b!1481899))

(assert (= (and b!1481899 res!1007271) b!1481890))

(assert (= (and b!1481890 res!1007272) b!1481893))

(assert (= (and b!1481893 res!1007273) b!1481889))

(assert (= (and b!1481889 res!1007270) b!1481895))

(assert (= (and b!1481895 res!1007268) b!1481903))

(assert (= (and b!1481903 res!1007261) b!1481900))

(assert (= (and b!1481900 c!136838) b!1481896))

(assert (= (and b!1481900 (not c!136838)) b!1481897))

(assert (= (and b!1481900 res!1007267) b!1481901))

(assert (= (and b!1481901 res!1007269) b!1481905))

(assert (= (and b!1481905 res!1007260) b!1481902))

(assert (= (and b!1481902 res!1007264) b!1481891))

(declare-fun m!1367677 () Bool)

(assert (=> b!1481904 m!1367677))

(assert (=> b!1481904 m!1367677))

(declare-fun m!1367679 () Bool)

(assert (=> b!1481904 m!1367679))

(declare-fun m!1367681 () Bool)

(assert (=> b!1481905 m!1367681))

(declare-fun m!1367683 () Bool)

(assert (=> b!1481905 m!1367683))

(assert (=> b!1481902 m!1367677))

(assert (=> b!1481902 m!1367677))

(declare-fun m!1367685 () Bool)

(assert (=> b!1481902 m!1367685))

(assert (=> b!1481895 m!1367677))

(assert (=> b!1481895 m!1367677))

(declare-fun m!1367687 () Bool)

(assert (=> b!1481895 m!1367687))

(declare-fun m!1367689 () Bool)

(assert (=> b!1481893 m!1367689))

(declare-fun m!1367691 () Bool)

(assert (=> b!1481893 m!1367691))

(declare-fun m!1367693 () Bool)

(assert (=> b!1481898 m!1367693))

(declare-fun m!1367695 () Bool)

(assert (=> b!1481899 m!1367695))

(assert (=> b!1481889 m!1367677))

(assert (=> b!1481889 m!1367677))

(declare-fun m!1367697 () Bool)

(assert (=> b!1481889 m!1367697))

(assert (=> b!1481889 m!1367697))

(assert (=> b!1481889 m!1367677))

(declare-fun m!1367699 () Bool)

(assert (=> b!1481889 m!1367699))

(declare-fun m!1367701 () Bool)

(assert (=> start!126440 m!1367701))

(declare-fun m!1367703 () Bool)

(assert (=> start!126440 m!1367703))

(declare-fun m!1367705 () Bool)

(assert (=> b!1481892 m!1367705))

(assert (=> b!1481892 m!1367705))

(declare-fun m!1367707 () Bool)

(assert (=> b!1481892 m!1367707))

(assert (=> b!1481891 m!1367689))

(declare-fun m!1367709 () Bool)

(assert (=> b!1481891 m!1367709))

(declare-fun m!1367711 () Bool)

(assert (=> b!1481891 m!1367711))

(declare-fun m!1367713 () Bool)

(assert (=> b!1481891 m!1367713))

(assert (=> b!1481891 m!1367677))

(declare-fun m!1367715 () Bool)

(assert (=> b!1481903 m!1367715))

(assert (=> b!1481903 m!1367715))

(declare-fun m!1367717 () Bool)

(assert (=> b!1481903 m!1367717))

(assert (=> b!1481903 m!1367689))

(declare-fun m!1367719 () Bool)

(assert (=> b!1481903 m!1367719))

(declare-fun m!1367721 () Bool)

(assert (=> b!1481897 m!1367721))

(declare-fun m!1367723 () Bool)

(assert (=> b!1481897 m!1367723))

(declare-fun m!1367725 () Bool)

(assert (=> b!1481896 m!1367725))

(push 1)

