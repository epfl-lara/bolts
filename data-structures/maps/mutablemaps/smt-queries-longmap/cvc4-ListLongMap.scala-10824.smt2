; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126704 () Bool)

(assert start!126704)

(declare-fun b!1486859 () Bool)

(declare-fun e!833495 () Bool)

(declare-fun e!833502 () Bool)

(assert (=> b!1486859 (= e!833495 e!833502)))

(declare-fun res!1011272 () Bool)

(assert (=> b!1486859 (=> (not res!1011272) (not e!833502))))

(declare-datatypes ((SeekEntryResult!12293 0))(
  ( (MissingZero!12293 (index!51563 (_ BitVec 32))) (Found!12293 (index!51564 (_ BitVec 32))) (Intermediate!12293 (undefined!13105 Bool) (index!51565 (_ BitVec 32)) (x!133144 (_ BitVec 32))) (Undefined!12293) (MissingVacant!12293 (index!51566 (_ BitVec 32))) )
))
(declare-fun lt!648579 () SeekEntryResult!12293)

(declare-datatypes ((array!99520 0))(
  ( (array!99521 (arr!48030 (Array (_ BitVec 32) (_ BitVec 64))) (size!48581 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99520)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99520 (_ BitVec 32)) SeekEntryResult!12293)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486859 (= res!1011272 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48030 a!2862) j!93) mask!2687) (select (arr!48030 a!2862) j!93) a!2862 mask!2687) lt!648579))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1486859 (= lt!648579 (Intermediate!12293 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!833498 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!648577 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!648576 () array!99520)

(declare-fun b!1486860 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99520 (_ BitVec 32)) SeekEntryResult!12293)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99520 (_ BitVec 32)) SeekEntryResult!12293)

(assert (=> b!1486860 (= e!833498 (= (seekEntryOrOpen!0 lt!648577 lt!648576 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648577 lt!648576 mask!2687)))))

(declare-fun b!1486861 () Bool)

(declare-fun e!833499 () Bool)

(assert (=> b!1486861 (= e!833499 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648577 lt!648576 mask!2687) (seekEntryOrOpen!0 lt!648577 lt!648576 mask!2687)))))

(declare-fun b!1486862 () Bool)

(declare-fun res!1011280 () Bool)

(declare-fun e!833504 () Bool)

(assert (=> b!1486862 (=> (not res!1011280) (not e!833504))))

(assert (=> b!1486862 (= res!1011280 (or (= (select (arr!48030 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48030 a!2862) intermediateBeforeIndex!19) (select (arr!48030 a!2862) j!93))))))

(declare-fun b!1486863 () Bool)

(declare-fun res!1011273 () Bool)

(declare-fun e!833500 () Bool)

(assert (=> b!1486863 (=> (not res!1011273) (not e!833500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1486863 (= res!1011273 (validKeyInArray!0 (select (arr!48030 a!2862) j!93)))))

(declare-fun b!1486864 () Bool)

(declare-fun res!1011285 () Bool)

(assert (=> b!1486864 (=> (not res!1011285) (not e!833500))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1486864 (= res!1011285 (and (= (size!48581 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48581 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48581 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1486866 () Bool)

(declare-fun res!1011288 () Bool)

(assert (=> b!1486866 (=> (not res!1011288) (not e!833502))))

(assert (=> b!1486866 (= res!1011288 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48030 a!2862) j!93) a!2862 mask!2687) lt!648579))))

(declare-fun b!1486867 () Bool)

(declare-fun res!1011284 () Bool)

(declare-fun e!833496 () Bool)

(assert (=> b!1486867 (=> (not res!1011284) (not e!833496))))

(assert (=> b!1486867 (= res!1011284 e!833499)))

(declare-fun c!137321 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1486867 (= c!137321 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1486868 () Bool)

(declare-fun e!833503 () Bool)

(assert (=> b!1486868 (= e!833503 true)))

(declare-fun lt!648575 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1486868 (= lt!648575 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1486869 () Bool)

(assert (=> b!1486869 (= e!833496 (not e!833503))))

(declare-fun res!1011282 () Bool)

(assert (=> b!1486869 (=> res!1011282 e!833503)))

(assert (=> b!1486869 (= res!1011282 (or (and (= (select (arr!48030 a!2862) index!646) (select (store (arr!48030 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48030 a!2862) index!646) (select (arr!48030 a!2862) j!93))) (= (select (arr!48030 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486869 e!833504))

(declare-fun res!1011276 () Bool)

(assert (=> b!1486869 (=> (not res!1011276) (not e!833504))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99520 (_ BitVec 32)) Bool)

(assert (=> b!1486869 (= res!1011276 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49874 0))(
  ( (Unit!49875) )
))
(declare-fun lt!648578 () Unit!49874)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99520 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49874)

(assert (=> b!1486869 (= lt!648578 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1486870 () Bool)

(assert (=> b!1486870 (= e!833500 e!833495)))

(declare-fun res!1011274 () Bool)

(assert (=> b!1486870 (=> (not res!1011274) (not e!833495))))

(assert (=> b!1486870 (= res!1011274 (= (select (store (arr!48030 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1486870 (= lt!648576 (array!99521 (store (arr!48030 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48581 a!2862)))))

(declare-fun lt!648580 () SeekEntryResult!12293)

(declare-fun b!1486871 () Bool)

(assert (=> b!1486871 (= e!833499 (= lt!648580 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648577 lt!648576 mask!2687)))))

(declare-fun b!1486872 () Bool)

(declare-fun e!833497 () Bool)

(assert (=> b!1486872 (= e!833504 e!833497)))

(declare-fun res!1011270 () Bool)

(assert (=> b!1486872 (=> res!1011270 e!833497)))

(declare-fun lt!648574 () (_ BitVec 64))

(assert (=> b!1486872 (= res!1011270 (or (and (= (select (arr!48030 a!2862) index!646) lt!648574) (= (select (arr!48030 a!2862) index!646) (select (arr!48030 a!2862) j!93))) (= (select (arr!48030 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1486872 (= lt!648574 (select (store (arr!48030 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1486873 () Bool)

(declare-fun res!1011279 () Bool)

(assert (=> b!1486873 (=> (not res!1011279) (not e!833500))))

(assert (=> b!1486873 (= res!1011279 (validKeyInArray!0 (select (arr!48030 a!2862) i!1006)))))

(declare-fun b!1486874 () Bool)

(declare-fun res!1011278 () Bool)

(assert (=> b!1486874 (=> (not res!1011278) (not e!833500))))

(assert (=> b!1486874 (= res!1011278 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48581 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48581 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48581 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1486875 () Bool)

(declare-fun res!1011277 () Bool)

(assert (=> b!1486875 (=> (not res!1011277) (not e!833496))))

(assert (=> b!1486875 (= res!1011277 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1486876 () Bool)

(declare-fun res!1011275 () Bool)

(assert (=> b!1486876 (=> (not res!1011275) (not e!833504))))

(assert (=> b!1486876 (= res!1011275 (= (seekEntryOrOpen!0 (select (arr!48030 a!2862) j!93) a!2862 mask!2687) (Found!12293 j!93)))))

(declare-fun b!1486877 () Bool)

(declare-fun res!1011271 () Bool)

(assert (=> b!1486877 (=> (not res!1011271) (not e!833500))))

(declare-datatypes ((List!34711 0))(
  ( (Nil!34708) (Cons!34707 (h!36084 (_ BitVec 64)) (t!49412 List!34711)) )
))
(declare-fun arrayNoDuplicates!0 (array!99520 (_ BitVec 32) List!34711) Bool)

(assert (=> b!1486877 (= res!1011271 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34708))))

(declare-fun b!1486878 () Bool)

(assert (=> b!1486878 (= e!833502 e!833496)))

(declare-fun res!1011287 () Bool)

(assert (=> b!1486878 (=> (not res!1011287) (not e!833496))))

(assert (=> b!1486878 (= res!1011287 (= lt!648580 (Intermediate!12293 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1486878 (= lt!648580 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648577 mask!2687) lt!648577 lt!648576 mask!2687))))

(assert (=> b!1486878 (= lt!648577 (select (store (arr!48030 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1486879 () Bool)

(assert (=> b!1486879 (= e!833497 e!833498)))

(declare-fun res!1011286 () Bool)

(assert (=> b!1486879 (=> (not res!1011286) (not e!833498))))

(assert (=> b!1486879 (= res!1011286 (and (= index!646 intermediateAfterIndex!19) (= lt!648574 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1486865 () Bool)

(declare-fun res!1011283 () Bool)

(assert (=> b!1486865 (=> (not res!1011283) (not e!833500))))

(assert (=> b!1486865 (= res!1011283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1011281 () Bool)

(assert (=> start!126704 (=> (not res!1011281) (not e!833500))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126704 (= res!1011281 (validMask!0 mask!2687))))

(assert (=> start!126704 e!833500))

(assert (=> start!126704 true))

(declare-fun array_inv!36975 (array!99520) Bool)

(assert (=> start!126704 (array_inv!36975 a!2862)))

(assert (= (and start!126704 res!1011281) b!1486864))

(assert (= (and b!1486864 res!1011285) b!1486873))

(assert (= (and b!1486873 res!1011279) b!1486863))

(assert (= (and b!1486863 res!1011273) b!1486865))

(assert (= (and b!1486865 res!1011283) b!1486877))

(assert (= (and b!1486877 res!1011271) b!1486874))

(assert (= (and b!1486874 res!1011278) b!1486870))

(assert (= (and b!1486870 res!1011274) b!1486859))

(assert (= (and b!1486859 res!1011272) b!1486866))

(assert (= (and b!1486866 res!1011288) b!1486878))

(assert (= (and b!1486878 res!1011287) b!1486867))

(assert (= (and b!1486867 c!137321) b!1486871))

(assert (= (and b!1486867 (not c!137321)) b!1486861))

(assert (= (and b!1486867 res!1011284) b!1486875))

(assert (= (and b!1486875 res!1011277) b!1486869))

(assert (= (and b!1486869 res!1011276) b!1486876))

(assert (= (and b!1486876 res!1011275) b!1486862))

(assert (= (and b!1486862 res!1011280) b!1486872))

(assert (= (and b!1486872 (not res!1011270)) b!1486879))

(assert (= (and b!1486879 res!1011286) b!1486860))

(assert (= (and b!1486869 (not res!1011282)) b!1486868))

(declare-fun m!1371707 () Bool)

(assert (=> b!1486873 m!1371707))

(assert (=> b!1486873 m!1371707))

(declare-fun m!1371709 () Bool)

(assert (=> b!1486873 m!1371709))

(declare-fun m!1371711 () Bool)

(assert (=> start!126704 m!1371711))

(declare-fun m!1371713 () Bool)

(assert (=> start!126704 m!1371713))

(declare-fun m!1371715 () Bool)

(assert (=> b!1486860 m!1371715))

(declare-fun m!1371717 () Bool)

(assert (=> b!1486860 m!1371717))

(declare-fun m!1371719 () Bool)

(assert (=> b!1486872 m!1371719))

(declare-fun m!1371721 () Bool)

(assert (=> b!1486872 m!1371721))

(declare-fun m!1371723 () Bool)

(assert (=> b!1486872 m!1371723))

(declare-fun m!1371725 () Bool)

(assert (=> b!1486872 m!1371725))

(declare-fun m!1371727 () Bool)

(assert (=> b!1486869 m!1371727))

(assert (=> b!1486869 m!1371723))

(assert (=> b!1486869 m!1371725))

(assert (=> b!1486869 m!1371719))

(declare-fun m!1371729 () Bool)

(assert (=> b!1486869 m!1371729))

(assert (=> b!1486869 m!1371721))

(declare-fun m!1371731 () Bool)

(assert (=> b!1486871 m!1371731))

(declare-fun m!1371733 () Bool)

(assert (=> b!1486868 m!1371733))

(declare-fun m!1371735 () Bool)

(assert (=> b!1486862 m!1371735))

(assert (=> b!1486862 m!1371721))

(declare-fun m!1371737 () Bool)

(assert (=> b!1486877 m!1371737))

(declare-fun m!1371739 () Bool)

(assert (=> b!1486865 m!1371739))

(assert (=> b!1486876 m!1371721))

(assert (=> b!1486876 m!1371721))

(declare-fun m!1371741 () Bool)

(assert (=> b!1486876 m!1371741))

(assert (=> b!1486861 m!1371717))

(assert (=> b!1486861 m!1371715))

(assert (=> b!1486870 m!1371723))

(declare-fun m!1371743 () Bool)

(assert (=> b!1486870 m!1371743))

(assert (=> b!1486866 m!1371721))

(assert (=> b!1486866 m!1371721))

(declare-fun m!1371745 () Bool)

(assert (=> b!1486866 m!1371745))

(assert (=> b!1486859 m!1371721))

(assert (=> b!1486859 m!1371721))

(declare-fun m!1371747 () Bool)

(assert (=> b!1486859 m!1371747))

(assert (=> b!1486859 m!1371747))

(assert (=> b!1486859 m!1371721))

(declare-fun m!1371749 () Bool)

(assert (=> b!1486859 m!1371749))

(declare-fun m!1371751 () Bool)

(assert (=> b!1486878 m!1371751))

(assert (=> b!1486878 m!1371751))

(declare-fun m!1371753 () Bool)

(assert (=> b!1486878 m!1371753))

(assert (=> b!1486878 m!1371723))

(declare-fun m!1371755 () Bool)

(assert (=> b!1486878 m!1371755))

(assert (=> b!1486863 m!1371721))

(assert (=> b!1486863 m!1371721))

(declare-fun m!1371757 () Bool)

(assert (=> b!1486863 m!1371757))

(push 1)

