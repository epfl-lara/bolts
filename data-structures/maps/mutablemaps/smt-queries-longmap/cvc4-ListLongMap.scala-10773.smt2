; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126182 () Bool)

(assert start!126182)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!645061 () (_ BitVec 64))

(declare-fun b!1476674 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99205 0))(
  ( (array!99206 (arr!47877 (Array (_ BitVec 32) (_ BitVec 64))) (size!48428 (_ BitVec 32))) )
))
(declare-fun lt!645062 () array!99205)

(declare-fun e!828488 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12140 0))(
  ( (MissingZero!12140 (index!50951 (_ BitVec 32))) (Found!12140 (index!50952 (_ BitVec 32))) (Intermediate!12140 (undefined!12952 Bool) (index!50953 (_ BitVec 32)) (x!132550 (_ BitVec 32))) (Undefined!12140) (MissingVacant!12140 (index!50954 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99205 (_ BitVec 32)) SeekEntryResult!12140)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99205 (_ BitVec 32)) SeekEntryResult!12140)

(assert (=> b!1476674 (= e!828488 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645061 lt!645062 mask!2687) (seekEntryOrOpen!0 lt!645061 lt!645062 mask!2687)))))

(declare-fun b!1476675 () Bool)

(declare-fun e!828490 () Bool)

(declare-fun e!828486 () Bool)

(assert (=> b!1476675 (= e!828490 e!828486)))

(declare-fun res!1002989 () Bool)

(assert (=> b!1476675 (=> (not res!1002989) (not e!828486))))

(declare-fun lt!645059 () SeekEntryResult!12140)

(declare-fun a!2862 () array!99205)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99205 (_ BitVec 32)) SeekEntryResult!12140)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476675 (= res!1002989 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47877 a!2862) j!93) mask!2687) (select (arr!47877 a!2862) j!93) a!2862 mask!2687) lt!645059))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1476675 (= lt!645059 (Intermediate!12140 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476676 () Bool)

(declare-fun res!1002997 () Bool)

(declare-fun e!828489 () Bool)

(assert (=> b!1476676 (=> (not res!1002997) (not e!828489))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476676 (= res!1002997 (validKeyInArray!0 (select (arr!47877 a!2862) j!93)))))

(declare-fun res!1002992 () Bool)

(assert (=> start!126182 (=> (not res!1002992) (not e!828489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126182 (= res!1002992 (validMask!0 mask!2687))))

(assert (=> start!126182 e!828489))

(assert (=> start!126182 true))

(declare-fun array_inv!36822 (array!99205) Bool)

(assert (=> start!126182 (array_inv!36822 a!2862)))

(declare-fun b!1476677 () Bool)

(declare-fun res!1002996 () Bool)

(assert (=> b!1476677 (=> (not res!1002996) (not e!828489))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1476677 (= res!1002996 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48428 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48428 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48428 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476678 () Bool)

(declare-fun res!1002994 () Bool)

(assert (=> b!1476678 (=> (not res!1002994) (not e!828489))))

(declare-datatypes ((List!34558 0))(
  ( (Nil!34555) (Cons!34554 (h!35922 (_ BitVec 64)) (t!49259 List!34558)) )
))
(declare-fun arrayNoDuplicates!0 (array!99205 (_ BitVec 32) List!34558) Bool)

(assert (=> b!1476678 (= res!1002994 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34555))))

(declare-fun b!1476679 () Bool)

(declare-fun e!828491 () Bool)

(declare-fun e!828487 () Bool)

(assert (=> b!1476679 (= e!828491 e!828487)))

(declare-fun res!1002993 () Bool)

(assert (=> b!1476679 (=> (not res!1002993) (not e!828487))))

(declare-fun lt!645063 () SeekEntryResult!12140)

(assert (=> b!1476679 (= res!1002993 (= lt!645063 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47877 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476680 () Bool)

(declare-fun e!828493 () Bool)

(assert (=> b!1476680 (= e!828493 (not true))))

(declare-fun e!828494 () Bool)

(assert (=> b!1476680 e!828494))

(declare-fun res!1002999 () Bool)

(assert (=> b!1476680 (=> (not res!1002999) (not e!828494))))

(assert (=> b!1476680 (= res!1002999 (and (= lt!645063 (Found!12140 j!93)) (or (= (select (arr!47877 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47877 a!2862) intermediateBeforeIndex!19) (select (arr!47877 a!2862) j!93)))))))

(assert (=> b!1476680 (= lt!645063 (seekEntryOrOpen!0 (select (arr!47877 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99205 (_ BitVec 32)) Bool)

(assert (=> b!1476680 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49568 0))(
  ( (Unit!49569) )
))
(declare-fun lt!645060 () Unit!49568)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99205 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49568)

(assert (=> b!1476680 (= lt!645060 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!645064 () SeekEntryResult!12140)

(declare-fun b!1476681 () Bool)

(assert (=> b!1476681 (= e!828488 (= lt!645064 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645061 lt!645062 mask!2687)))))

(declare-fun b!1476682 () Bool)

(assert (=> b!1476682 (= e!828494 e!828491)))

(declare-fun res!1002987 () Bool)

(assert (=> b!1476682 (=> res!1002987 e!828491)))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1476682 (= res!1002987 (or (and (= (select (arr!47877 a!2862) index!646) (select (store (arr!47877 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47877 a!2862) index!646) (select (arr!47877 a!2862) j!93))) (not (= (select (arr!47877 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476683 () Bool)

(declare-fun res!1002998 () Bool)

(assert (=> b!1476683 (=> (not res!1002998) (not e!828486))))

(assert (=> b!1476683 (= res!1002998 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47877 a!2862) j!93) a!2862 mask!2687) lt!645059))))

(declare-fun b!1476684 () Bool)

(declare-fun res!1002991 () Bool)

(assert (=> b!1476684 (=> (not res!1002991) (not e!828489))))

(assert (=> b!1476684 (= res!1002991 (validKeyInArray!0 (select (arr!47877 a!2862) i!1006)))))

(declare-fun b!1476685 () Bool)

(assert (=> b!1476685 (= e!828486 e!828493)))

(declare-fun res!1002986 () Bool)

(assert (=> b!1476685 (=> (not res!1002986) (not e!828493))))

(assert (=> b!1476685 (= res!1002986 (= lt!645064 (Intermediate!12140 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1476685 (= lt!645064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645061 mask!2687) lt!645061 lt!645062 mask!2687))))

(assert (=> b!1476685 (= lt!645061 (select (store (arr!47877 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476686 () Bool)

(assert (=> b!1476686 (= e!828487 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1476687 () Bool)

(assert (=> b!1476687 (= e!828489 e!828490)))

(declare-fun res!1002984 () Bool)

(assert (=> b!1476687 (=> (not res!1002984) (not e!828490))))

(assert (=> b!1476687 (= res!1002984 (= (select (store (arr!47877 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476687 (= lt!645062 (array!99206 (store (arr!47877 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48428 a!2862)))))

(declare-fun b!1476688 () Bool)

(declare-fun res!1002985 () Bool)

(assert (=> b!1476688 (=> (not res!1002985) (not e!828489))))

(assert (=> b!1476688 (= res!1002985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476689 () Bool)

(declare-fun res!1002988 () Bool)

(assert (=> b!1476689 (=> (not res!1002988) (not e!828493))))

(assert (=> b!1476689 (= res!1002988 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476690 () Bool)

(declare-fun res!1002990 () Bool)

(assert (=> b!1476690 (=> (not res!1002990) (not e!828489))))

(assert (=> b!1476690 (= res!1002990 (and (= (size!48428 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48428 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48428 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1476691 () Bool)

(declare-fun res!1002995 () Bool)

(assert (=> b!1476691 (=> (not res!1002995) (not e!828493))))

(assert (=> b!1476691 (= res!1002995 e!828488)))

(declare-fun c!136367 () Bool)

(assert (=> b!1476691 (= c!136367 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126182 res!1002992) b!1476690))

(assert (= (and b!1476690 res!1002990) b!1476684))

(assert (= (and b!1476684 res!1002991) b!1476676))

(assert (= (and b!1476676 res!1002997) b!1476688))

(assert (= (and b!1476688 res!1002985) b!1476678))

(assert (= (and b!1476678 res!1002994) b!1476677))

(assert (= (and b!1476677 res!1002996) b!1476687))

(assert (= (and b!1476687 res!1002984) b!1476675))

(assert (= (and b!1476675 res!1002989) b!1476683))

(assert (= (and b!1476683 res!1002998) b!1476685))

(assert (= (and b!1476685 res!1002986) b!1476691))

(assert (= (and b!1476691 c!136367) b!1476681))

(assert (= (and b!1476691 (not c!136367)) b!1476674))

(assert (= (and b!1476691 res!1002995) b!1476689))

(assert (= (and b!1476689 res!1002988) b!1476680))

(assert (= (and b!1476680 res!1002999) b!1476682))

(assert (= (and b!1476682 (not res!1002987)) b!1476679))

(assert (= (and b!1476679 res!1002993) b!1476686))

(declare-fun m!1362707 () Bool)

(assert (=> b!1476675 m!1362707))

(assert (=> b!1476675 m!1362707))

(declare-fun m!1362709 () Bool)

(assert (=> b!1476675 m!1362709))

(assert (=> b!1476675 m!1362709))

(assert (=> b!1476675 m!1362707))

(declare-fun m!1362711 () Bool)

(assert (=> b!1476675 m!1362711))

(assert (=> b!1476676 m!1362707))

(assert (=> b!1476676 m!1362707))

(declare-fun m!1362713 () Bool)

(assert (=> b!1476676 m!1362713))

(assert (=> b!1476683 m!1362707))

(assert (=> b!1476683 m!1362707))

(declare-fun m!1362715 () Bool)

(assert (=> b!1476683 m!1362715))

(declare-fun m!1362717 () Bool)

(assert (=> b!1476687 m!1362717))

(declare-fun m!1362719 () Bool)

(assert (=> b!1476687 m!1362719))

(declare-fun m!1362721 () Bool)

(assert (=> b!1476678 m!1362721))

(declare-fun m!1362723 () Bool)

(assert (=> b!1476681 m!1362723))

(declare-fun m!1362725 () Bool)

(assert (=> b!1476680 m!1362725))

(declare-fun m!1362727 () Bool)

(assert (=> b!1476680 m!1362727))

(assert (=> b!1476680 m!1362707))

(declare-fun m!1362729 () Bool)

(assert (=> b!1476680 m!1362729))

(declare-fun m!1362731 () Bool)

(assert (=> b!1476680 m!1362731))

(assert (=> b!1476680 m!1362707))

(declare-fun m!1362733 () Bool)

(assert (=> b!1476682 m!1362733))

(assert (=> b!1476682 m!1362717))

(declare-fun m!1362735 () Bool)

(assert (=> b!1476682 m!1362735))

(assert (=> b!1476682 m!1362707))

(declare-fun m!1362737 () Bool)

(assert (=> b!1476685 m!1362737))

(assert (=> b!1476685 m!1362737))

(declare-fun m!1362739 () Bool)

(assert (=> b!1476685 m!1362739))

(assert (=> b!1476685 m!1362717))

(declare-fun m!1362741 () Bool)

(assert (=> b!1476685 m!1362741))

(assert (=> b!1476679 m!1362707))

(assert (=> b!1476679 m!1362707))

(declare-fun m!1362743 () Bool)

(assert (=> b!1476679 m!1362743))

(declare-fun m!1362745 () Bool)

(assert (=> b!1476688 m!1362745))

(declare-fun m!1362747 () Bool)

(assert (=> b!1476684 m!1362747))

(assert (=> b!1476684 m!1362747))

(declare-fun m!1362749 () Bool)

(assert (=> b!1476684 m!1362749))

(declare-fun m!1362751 () Bool)

(assert (=> b!1476674 m!1362751))

(declare-fun m!1362753 () Bool)

(assert (=> b!1476674 m!1362753))

(declare-fun m!1362755 () Bool)

(assert (=> start!126182 m!1362755))

(declare-fun m!1362757 () Bool)

(assert (=> start!126182 m!1362757))

(push 1)

(assert (not b!1476688))

(assert (not b!1476674))

(assert (not b!1476683))

(assert (not b!1476680))

(assert (not b!1476678))

(assert (not b!1476676))

(assert (not b!1476675))

(assert (not b!1476679))

(assert (not start!126182))

(assert (not b!1476681))

(assert (not b!1476685))

(assert (not b!1476684))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

