; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124914 () Bool)

(assert start!124914)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98279 0))(
  ( (array!98280 (arr!47423 (Array (_ BitVec 32) (_ BitVec 64))) (size!47974 (_ BitVec 32))) )
))
(declare-fun lt!636099 () array!98279)

(declare-fun lt!636101 () (_ BitVec 64))

(declare-fun b!1450017 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!816563 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11698 0))(
  ( (MissingZero!11698 (index!49183 (_ BitVec 32))) (Found!11698 (index!49184 (_ BitVec 32))) (Intermediate!11698 (undefined!12510 Bool) (index!49185 (_ BitVec 32)) (x!130846 (_ BitVec 32))) (Undefined!11698) (MissingVacant!11698 (index!49186 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98279 (_ BitVec 32)) SeekEntryResult!11698)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98279 (_ BitVec 32)) SeekEntryResult!11698)

(assert (=> b!1450017 (= e!816563 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636101 lt!636099 mask!2687) (seekEntryOrOpen!0 lt!636101 lt!636099 mask!2687)))))

(declare-fun b!1450018 () Bool)

(declare-fun res!981513 () Bool)

(declare-fun e!816557 () Bool)

(assert (=> b!1450018 (=> (not res!981513) (not e!816557))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun a!2862 () array!98279)

(assert (=> b!1450018 (= res!981513 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47974 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47974 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47974 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450019 () Bool)

(declare-fun e!816559 () Bool)

(assert (=> b!1450019 (= e!816559 true)))

(declare-fun lt!636096 () SeekEntryResult!11698)

(assert (=> b!1450019 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636101 lt!636099 mask!2687) lt!636096)))

(declare-datatypes ((Unit!48840 0))(
  ( (Unit!48841) )
))
(declare-fun lt!636100 () Unit!48840)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48840)

(assert (=> b!1450019 (= lt!636100 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!981502 () Bool)

(assert (=> start!124914 (=> (not res!981502) (not e!816557))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124914 (= res!981502 (validMask!0 mask!2687))))

(assert (=> start!124914 e!816557))

(assert (=> start!124914 true))

(declare-fun array_inv!36368 (array!98279) Bool)

(assert (=> start!124914 (array_inv!36368 a!2862)))

(declare-fun b!1450020 () Bool)

(declare-fun e!816560 () Bool)

(assert (=> b!1450020 (= e!816560 (not e!816559))))

(declare-fun res!981515 () Bool)

(assert (=> b!1450020 (=> res!981515 e!816559)))

(assert (=> b!1450020 (= res!981515 (or (and (= (select (arr!47423 a!2862) index!646) (select (store (arr!47423 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47423 a!2862) index!646) (select (arr!47423 a!2862) j!93))) (not (= (select (arr!47423 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47423 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816558 () Bool)

(assert (=> b!1450020 e!816558))

(declare-fun res!981503 () Bool)

(assert (=> b!1450020 (=> (not res!981503) (not e!816558))))

(declare-fun lt!636097 () SeekEntryResult!11698)

(assert (=> b!1450020 (= res!981503 (and (= lt!636097 lt!636096) (or (= (select (arr!47423 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47423 a!2862) intermediateBeforeIndex!19) (select (arr!47423 a!2862) j!93)))))))

(assert (=> b!1450020 (= lt!636096 (Found!11698 j!93))))

(assert (=> b!1450020 (= lt!636097 (seekEntryOrOpen!0 (select (arr!47423 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98279 (_ BitVec 32)) Bool)

(assert (=> b!1450020 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636102 () Unit!48840)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48840)

(assert (=> b!1450020 (= lt!636102 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450021 () Bool)

(declare-fun res!981509 () Bool)

(assert (=> b!1450021 (=> (not res!981509) (not e!816557))))

(assert (=> b!1450021 (= res!981509 (and (= (size!47974 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47974 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47974 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450022 () Bool)

(declare-fun res!981505 () Bool)

(assert (=> b!1450022 (=> (not res!981505) (not e!816557))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450022 (= res!981505 (validKeyInArray!0 (select (arr!47423 a!2862) j!93)))))

(declare-fun b!1450023 () Bool)

(declare-fun e!816566 () Bool)

(declare-fun e!816561 () Bool)

(assert (=> b!1450023 (= e!816566 e!816561)))

(declare-fun res!981514 () Bool)

(assert (=> b!1450023 (=> (not res!981514) (not e!816561))))

(declare-fun lt!636103 () SeekEntryResult!11698)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98279 (_ BitVec 32)) SeekEntryResult!11698)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450023 (= res!981514 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47423 a!2862) j!93) mask!2687) (select (arr!47423 a!2862) j!93) a!2862 mask!2687) lt!636103))))

(assert (=> b!1450023 (= lt!636103 (Intermediate!11698 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450024 () Bool)

(declare-fun res!981516 () Bool)

(assert (=> b!1450024 (=> (not res!981516) (not e!816560))))

(assert (=> b!1450024 (= res!981516 e!816563)))

(declare-fun c!133772 () Bool)

(assert (=> b!1450024 (= c!133772 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450025 () Bool)

(declare-fun res!981504 () Bool)

(assert (=> b!1450025 (=> (not res!981504) (not e!816557))))

(declare-datatypes ((List!34104 0))(
  ( (Nil!34101) (Cons!34100 (h!35450 (_ BitVec 64)) (t!48805 List!34104)) )
))
(declare-fun arrayNoDuplicates!0 (array!98279 (_ BitVec 32) List!34104) Bool)

(assert (=> b!1450025 (= res!981504 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34101))))

(declare-fun b!1450026 () Bool)

(assert (=> b!1450026 (= e!816561 e!816560)))

(declare-fun res!981506 () Bool)

(assert (=> b!1450026 (=> (not res!981506) (not e!816560))))

(declare-fun lt!636098 () SeekEntryResult!11698)

(assert (=> b!1450026 (= res!981506 (= lt!636098 (Intermediate!11698 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1450026 (= lt!636098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636101 mask!2687) lt!636101 lt!636099 mask!2687))))

(assert (=> b!1450026 (= lt!636101 (select (store (arr!47423 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450027 () Bool)

(declare-fun e!816565 () Bool)

(declare-fun e!816564 () Bool)

(assert (=> b!1450027 (= e!816565 e!816564)))

(declare-fun res!981501 () Bool)

(assert (=> b!1450027 (=> (not res!981501) (not e!816564))))

(assert (=> b!1450027 (= res!981501 (= lt!636097 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47423 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450028 () Bool)

(assert (=> b!1450028 (= e!816563 (= lt!636098 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636101 lt!636099 mask!2687)))))

(declare-fun b!1450029 () Bool)

(assert (=> b!1450029 (= e!816558 e!816565)))

(declare-fun res!981499 () Bool)

(assert (=> b!1450029 (=> res!981499 e!816565)))

(assert (=> b!1450029 (= res!981499 (or (and (= (select (arr!47423 a!2862) index!646) (select (store (arr!47423 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47423 a!2862) index!646) (select (arr!47423 a!2862) j!93))) (not (= (select (arr!47423 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450030 () Bool)

(declare-fun res!981508 () Bool)

(assert (=> b!1450030 (=> (not res!981508) (not e!816560))))

(assert (=> b!1450030 (= res!981508 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450031 () Bool)

(declare-fun res!981500 () Bool)

(assert (=> b!1450031 (=> (not res!981500) (not e!816557))))

(assert (=> b!1450031 (= res!981500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450032 () Bool)

(declare-fun res!981507 () Bool)

(assert (=> b!1450032 (=> (not res!981507) (not e!816561))))

(assert (=> b!1450032 (= res!981507 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47423 a!2862) j!93) a!2862 mask!2687) lt!636103))))

(declare-fun b!1450033 () Bool)

(declare-fun res!981512 () Bool)

(assert (=> b!1450033 (=> res!981512 e!816559)))

(assert (=> b!1450033 (= res!981512 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47423 a!2862) j!93) a!2862 mask!2687) lt!636096)))))

(declare-fun b!1450034 () Bool)

(assert (=> b!1450034 (= e!816557 e!816566)))

(declare-fun res!981510 () Bool)

(assert (=> b!1450034 (=> (not res!981510) (not e!816566))))

(assert (=> b!1450034 (= res!981510 (= (select (store (arr!47423 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1450034 (= lt!636099 (array!98280 (store (arr!47423 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47974 a!2862)))))

(declare-fun b!1450035 () Bool)

(declare-fun res!981511 () Bool)

(assert (=> b!1450035 (=> (not res!981511) (not e!816557))))

(assert (=> b!1450035 (= res!981511 (validKeyInArray!0 (select (arr!47423 a!2862) i!1006)))))

(declare-fun b!1450036 () Bool)

(assert (=> b!1450036 (= e!816564 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(assert (= (and start!124914 res!981502) b!1450021))

(assert (= (and b!1450021 res!981509) b!1450035))

(assert (= (and b!1450035 res!981511) b!1450022))

(assert (= (and b!1450022 res!981505) b!1450031))

(assert (= (and b!1450031 res!981500) b!1450025))

(assert (= (and b!1450025 res!981504) b!1450018))

(assert (= (and b!1450018 res!981513) b!1450034))

(assert (= (and b!1450034 res!981510) b!1450023))

(assert (= (and b!1450023 res!981514) b!1450032))

(assert (= (and b!1450032 res!981507) b!1450026))

(assert (= (and b!1450026 res!981506) b!1450024))

(assert (= (and b!1450024 c!133772) b!1450028))

(assert (= (and b!1450024 (not c!133772)) b!1450017))

(assert (= (and b!1450024 res!981516) b!1450030))

(assert (= (and b!1450030 res!981508) b!1450020))

(assert (= (and b!1450020 res!981503) b!1450029))

(assert (= (and b!1450029 (not res!981499)) b!1450027))

(assert (= (and b!1450027 res!981501) b!1450036))

(assert (= (and b!1450020 (not res!981515)) b!1450033))

(assert (= (and b!1450033 (not res!981512)) b!1450019))

(declare-fun m!1338743 () Bool)

(assert (=> b!1450027 m!1338743))

(assert (=> b!1450027 m!1338743))

(declare-fun m!1338745 () Bool)

(assert (=> b!1450027 m!1338745))

(declare-fun m!1338747 () Bool)

(assert (=> b!1450019 m!1338747))

(declare-fun m!1338749 () Bool)

(assert (=> b!1450019 m!1338749))

(declare-fun m!1338751 () Bool)

(assert (=> b!1450020 m!1338751))

(declare-fun m!1338753 () Bool)

(assert (=> b!1450020 m!1338753))

(declare-fun m!1338755 () Bool)

(assert (=> b!1450020 m!1338755))

(declare-fun m!1338757 () Bool)

(assert (=> b!1450020 m!1338757))

(declare-fun m!1338759 () Bool)

(assert (=> b!1450020 m!1338759))

(assert (=> b!1450020 m!1338743))

(declare-fun m!1338761 () Bool)

(assert (=> b!1450020 m!1338761))

(declare-fun m!1338763 () Bool)

(assert (=> b!1450020 m!1338763))

(assert (=> b!1450020 m!1338743))

(assert (=> b!1450023 m!1338743))

(assert (=> b!1450023 m!1338743))

(declare-fun m!1338765 () Bool)

(assert (=> b!1450023 m!1338765))

(assert (=> b!1450023 m!1338765))

(assert (=> b!1450023 m!1338743))

(declare-fun m!1338767 () Bool)

(assert (=> b!1450023 m!1338767))

(assert (=> b!1450029 m!1338759))

(assert (=> b!1450029 m!1338753))

(assert (=> b!1450029 m!1338757))

(assert (=> b!1450029 m!1338743))

(declare-fun m!1338769 () Bool)

(assert (=> b!1450028 m!1338769))

(declare-fun m!1338771 () Bool)

(assert (=> b!1450035 m!1338771))

(assert (=> b!1450035 m!1338771))

(declare-fun m!1338773 () Bool)

(assert (=> b!1450035 m!1338773))

(assert (=> b!1450034 m!1338753))

(declare-fun m!1338775 () Bool)

(assert (=> b!1450034 m!1338775))

(assert (=> b!1450033 m!1338743))

(assert (=> b!1450033 m!1338743))

(declare-fun m!1338777 () Bool)

(assert (=> b!1450033 m!1338777))

(declare-fun m!1338779 () Bool)

(assert (=> b!1450031 m!1338779))

(declare-fun m!1338781 () Bool)

(assert (=> start!124914 m!1338781))

(declare-fun m!1338783 () Bool)

(assert (=> start!124914 m!1338783))

(assert (=> b!1450032 m!1338743))

(assert (=> b!1450032 m!1338743))

(declare-fun m!1338785 () Bool)

(assert (=> b!1450032 m!1338785))

(declare-fun m!1338787 () Bool)

(assert (=> b!1450025 m!1338787))

(declare-fun m!1338789 () Bool)

(assert (=> b!1450026 m!1338789))

(assert (=> b!1450026 m!1338789))

(declare-fun m!1338791 () Bool)

(assert (=> b!1450026 m!1338791))

(assert (=> b!1450026 m!1338753))

(declare-fun m!1338793 () Bool)

(assert (=> b!1450026 m!1338793))

(assert (=> b!1450017 m!1338747))

(declare-fun m!1338795 () Bool)

(assert (=> b!1450017 m!1338795))

(assert (=> b!1450022 m!1338743))

(assert (=> b!1450022 m!1338743))

(declare-fun m!1338797 () Bool)

(assert (=> b!1450022 m!1338797))

(check-sat (not b!1450019) (not b!1450033) (not b!1450031) (not b!1450022) (not b!1450026) (not b!1450025) (not b!1450023) (not b!1450020) (not b!1450028) (not b!1450035) (not b!1450027) (not start!124914) (not b!1450017) (not b!1450032))
(check-sat)
