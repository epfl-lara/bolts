; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124986 () Bool)

(assert start!124986)

(declare-datatypes ((array!98351 0))(
  ( (array!98352 (arr!47459 (Array (_ BitVec 32) (_ BitVec 64))) (size!48010 (_ BitVec 32))) )
))
(declare-fun lt!636783 () array!98351)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!817481 () Bool)

(declare-fun lt!636784 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1452018 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11734 0))(
  ( (MissingZero!11734 (index!49327 (_ BitVec 32))) (Found!11734 (index!49328 (_ BitVec 32))) (Intermediate!11734 (undefined!12546 Bool) (index!49329 (_ BitVec 32)) (x!130978 (_ BitVec 32))) (Undefined!11734) (MissingVacant!11734 (index!49330 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98351 (_ BitVec 32)) SeekEntryResult!11734)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98351 (_ BitVec 32)) SeekEntryResult!11734)

(assert (=> b!1452018 (= e!817481 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636784 lt!636783 mask!2687) (seekEntryOrOpen!0 lt!636784 lt!636783 mask!2687)))))

(declare-fun b!1452019 () Bool)

(declare-fun res!983291 () Bool)

(declare-fun e!817478 () Bool)

(assert (=> b!1452019 (=> (not res!983291) (not e!817478))))

(declare-fun a!2862 () array!98351)

(declare-datatypes ((List!34140 0))(
  ( (Nil!34137) (Cons!34136 (h!35486 (_ BitVec 64)) (t!48841 List!34140)) )
))
(declare-fun arrayNoDuplicates!0 (array!98351 (_ BitVec 32) List!34140) Bool)

(assert (=> b!1452019 (= res!983291 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34137))))

(declare-fun b!1452020 () Bool)

(declare-fun e!817484 () Bool)

(declare-fun e!817480 () Bool)

(assert (=> b!1452020 (= e!817484 e!817480)))

(declare-fun res!983286 () Bool)

(assert (=> b!1452020 (=> (not res!983286) (not e!817480))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!636786 () SeekEntryResult!11734)

(assert (=> b!1452020 (= res!983286 (= lt!636786 (Intermediate!11734 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98351 (_ BitVec 32)) SeekEntryResult!11734)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452020 (= lt!636786 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636784 mask!2687) lt!636784 lt!636783 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1452020 (= lt!636784 (select (store (arr!47459 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452021 () Bool)

(declare-fun res!983290 () Bool)

(declare-fun e!817479 () Bool)

(assert (=> b!1452021 (=> (not res!983290) (not e!817479))))

(assert (=> b!1452021 (= res!983290 (= (seekEntryOrOpen!0 (select (arr!47459 a!2862) j!93) a!2862 mask!2687) (Found!11734 j!93)))))

(declare-fun b!1452022 () Bool)

(declare-fun res!983294 () Bool)

(assert (=> b!1452022 (=> (not res!983294) (not e!817480))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452022 (= res!983294 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452023 () Bool)

(declare-fun res!983295 () Bool)

(assert (=> b!1452023 (=> (not res!983295) (not e!817480))))

(assert (=> b!1452023 (= res!983295 e!817481)))

(declare-fun c!133880 () Bool)

(assert (=> b!1452023 (= c!133880 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452024 () Bool)

(assert (=> b!1452024 (= e!817481 (= lt!636786 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636784 lt!636783 mask!2687)))))

(declare-fun b!1452025 () Bool)

(declare-fun e!817483 () Bool)

(assert (=> b!1452025 (= e!817478 e!817483)))

(declare-fun res!983296 () Bool)

(assert (=> b!1452025 (=> (not res!983296) (not e!817483))))

(assert (=> b!1452025 (= res!983296 (= (select (store (arr!47459 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452025 (= lt!636783 (array!98352 (store (arr!47459 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48010 a!2862)))))

(declare-fun res!983289 () Bool)

(assert (=> start!124986 (=> (not res!983289) (not e!817478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124986 (= res!983289 (validMask!0 mask!2687))))

(assert (=> start!124986 e!817478))

(assert (=> start!124986 true))

(declare-fun array_inv!36404 (array!98351) Bool)

(assert (=> start!124986 (array_inv!36404 a!2862)))

(declare-fun b!1452026 () Bool)

(declare-fun res!983292 () Bool)

(assert (=> b!1452026 (=> (not res!983292) (not e!817484))))

(declare-fun lt!636787 () SeekEntryResult!11734)

(assert (=> b!1452026 (= res!983292 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47459 a!2862) j!93) a!2862 mask!2687) lt!636787))))

(declare-fun b!1452027 () Bool)

(assert (=> b!1452027 (= e!817480 (not true))))

(assert (=> b!1452027 e!817479))

(declare-fun res!983288 () Bool)

(assert (=> b!1452027 (=> (not res!983288) (not e!817479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98351 (_ BitVec 32)) Bool)

(assert (=> b!1452027 (= res!983288 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48912 0))(
  ( (Unit!48913) )
))
(declare-fun lt!636785 () Unit!48912)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48912)

(assert (=> b!1452027 (= lt!636785 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452028 () Bool)

(declare-fun res!983298 () Bool)

(assert (=> b!1452028 (=> (not res!983298) (not e!817478))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452028 (= res!983298 (validKeyInArray!0 (select (arr!47459 a!2862) i!1006)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1452029 () Bool)

(assert (=> b!1452029 (= e!817479 (and (or (= (select (arr!47459 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47459 a!2862) intermediateBeforeIndex!19) (select (arr!47459 a!2862) j!93))) (or (and (= (select (arr!47459 a!2862) index!646) (select (store (arr!47459 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47459 a!2862) index!646) (select (arr!47459 a!2862) j!93))) (= (select (arr!47459 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47459 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452030 () Bool)

(declare-fun res!983284 () Bool)

(assert (=> b!1452030 (=> (not res!983284) (not e!817478))))

(assert (=> b!1452030 (= res!983284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452031 () Bool)

(declare-fun res!983285 () Bool)

(assert (=> b!1452031 (=> (not res!983285) (not e!817478))))

(assert (=> b!1452031 (= res!983285 (and (= (size!48010 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48010 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48010 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452032 () Bool)

(declare-fun res!983293 () Bool)

(assert (=> b!1452032 (=> (not res!983293) (not e!817478))))

(assert (=> b!1452032 (= res!983293 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48010 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48010 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48010 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452033 () Bool)

(assert (=> b!1452033 (= e!817483 e!817484)))

(declare-fun res!983297 () Bool)

(assert (=> b!1452033 (=> (not res!983297) (not e!817484))))

(assert (=> b!1452033 (= res!983297 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47459 a!2862) j!93) mask!2687) (select (arr!47459 a!2862) j!93) a!2862 mask!2687) lt!636787))))

(assert (=> b!1452033 (= lt!636787 (Intermediate!11734 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452034 () Bool)

(declare-fun res!983287 () Bool)

(assert (=> b!1452034 (=> (not res!983287) (not e!817478))))

(assert (=> b!1452034 (= res!983287 (validKeyInArray!0 (select (arr!47459 a!2862) j!93)))))

(assert (= (and start!124986 res!983289) b!1452031))

(assert (= (and b!1452031 res!983285) b!1452028))

(assert (= (and b!1452028 res!983298) b!1452034))

(assert (= (and b!1452034 res!983287) b!1452030))

(assert (= (and b!1452030 res!983284) b!1452019))

(assert (= (and b!1452019 res!983291) b!1452032))

(assert (= (and b!1452032 res!983293) b!1452025))

(assert (= (and b!1452025 res!983296) b!1452033))

(assert (= (and b!1452033 res!983297) b!1452026))

(assert (= (and b!1452026 res!983292) b!1452020))

(assert (= (and b!1452020 res!983286) b!1452023))

(assert (= (and b!1452023 c!133880) b!1452024))

(assert (= (and b!1452023 (not c!133880)) b!1452018))

(assert (= (and b!1452023 res!983295) b!1452022))

(assert (= (and b!1452022 res!983294) b!1452027))

(assert (= (and b!1452027 res!983288) b!1452021))

(assert (= (and b!1452021 res!983290) b!1452029))

(declare-fun m!1340657 () Bool)

(assert (=> start!124986 m!1340657))

(declare-fun m!1340659 () Bool)

(assert (=> start!124986 m!1340659))

(declare-fun m!1340661 () Bool)

(assert (=> b!1452033 m!1340661))

(assert (=> b!1452033 m!1340661))

(declare-fun m!1340663 () Bool)

(assert (=> b!1452033 m!1340663))

(assert (=> b!1452033 m!1340663))

(assert (=> b!1452033 m!1340661))

(declare-fun m!1340665 () Bool)

(assert (=> b!1452033 m!1340665))

(declare-fun m!1340667 () Bool)

(assert (=> b!1452027 m!1340667))

(declare-fun m!1340669 () Bool)

(assert (=> b!1452027 m!1340669))

(declare-fun m!1340671 () Bool)

(assert (=> b!1452020 m!1340671))

(assert (=> b!1452020 m!1340671))

(declare-fun m!1340673 () Bool)

(assert (=> b!1452020 m!1340673))

(declare-fun m!1340675 () Bool)

(assert (=> b!1452020 m!1340675))

(declare-fun m!1340677 () Bool)

(assert (=> b!1452020 m!1340677))

(assert (=> b!1452025 m!1340675))

(declare-fun m!1340679 () Bool)

(assert (=> b!1452025 m!1340679))

(declare-fun m!1340681 () Bool)

(assert (=> b!1452018 m!1340681))

(declare-fun m!1340683 () Bool)

(assert (=> b!1452018 m!1340683))

(assert (=> b!1452021 m!1340661))

(assert (=> b!1452021 m!1340661))

(declare-fun m!1340685 () Bool)

(assert (=> b!1452021 m!1340685))

(declare-fun m!1340687 () Bool)

(assert (=> b!1452028 m!1340687))

(assert (=> b!1452028 m!1340687))

(declare-fun m!1340689 () Bool)

(assert (=> b!1452028 m!1340689))

(assert (=> b!1452029 m!1340675))

(declare-fun m!1340691 () Bool)

(assert (=> b!1452029 m!1340691))

(declare-fun m!1340693 () Bool)

(assert (=> b!1452029 m!1340693))

(declare-fun m!1340695 () Bool)

(assert (=> b!1452029 m!1340695))

(assert (=> b!1452029 m!1340661))

(declare-fun m!1340697 () Bool)

(assert (=> b!1452019 m!1340697))

(declare-fun m!1340699 () Bool)

(assert (=> b!1452030 m!1340699))

(assert (=> b!1452034 m!1340661))

(assert (=> b!1452034 m!1340661))

(declare-fun m!1340701 () Bool)

(assert (=> b!1452034 m!1340701))

(assert (=> b!1452026 m!1340661))

(assert (=> b!1452026 m!1340661))

(declare-fun m!1340703 () Bool)

(assert (=> b!1452026 m!1340703))

(declare-fun m!1340705 () Bool)

(assert (=> b!1452024 m!1340705))

(check-sat (not b!1452021) (not b!1452034) (not b!1452028) (not start!124986) (not b!1452024) (not b!1452027) (not b!1452033) (not b!1452026) (not b!1452018) (not b!1452030) (not b!1452020) (not b!1452019))
(check-sat)
