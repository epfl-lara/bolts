; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124638 () Bool)

(assert start!124638)

(declare-fun b!1442505 () Bool)

(declare-fun res!974825 () Bool)

(declare-fun e!813024 () Bool)

(assert (=> b!1442505 (=> (not res!974825) (not e!813024))))

(declare-datatypes ((array!98003 0))(
  ( (array!98004 (arr!47285 (Array (_ BitVec 32) (_ BitVec 64))) (size!47836 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98003)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98003 (_ BitVec 32)) Bool)

(assert (=> b!1442505 (= res!974825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun e!813027 () Bool)

(declare-fun b!1442506 () Bool)

(assert (=> b!1442506 (= e!813027 (or (= (select (arr!47285 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47285 a!2862) intermediateBeforeIndex!19) (select (arr!47285 a!2862) j!93))))))

(declare-fun b!1442507 () Bool)

(declare-fun res!974815 () Bool)

(declare-fun e!813029 () Bool)

(assert (=> b!1442507 (=> (not res!974815) (not e!813029))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1442507 (= res!974815 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442508 () Bool)

(declare-fun e!813026 () Bool)

(assert (=> b!1442508 (= e!813024 e!813026)))

(declare-fun res!974818 () Bool)

(assert (=> b!1442508 (=> (not res!974818) (not e!813026))))

(assert (=> b!1442508 (= res!974818 (= (select (store (arr!47285 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633545 () array!98003)

(assert (=> b!1442508 (= lt!633545 (array!98004 (store (arr!47285 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47836 a!2862)))))

(declare-fun b!1442510 () Bool)

(declare-fun res!974820 () Bool)

(assert (=> b!1442510 (=> (not res!974820) (not e!813027))))

(declare-datatypes ((SeekEntryResult!11560 0))(
  ( (MissingZero!11560 (index!48631 (_ BitVec 32))) (Found!11560 (index!48632 (_ BitVec 32))) (Intermediate!11560 (undefined!12372 Bool) (index!48633 (_ BitVec 32)) (x!130340 (_ BitVec 32))) (Undefined!11560) (MissingVacant!11560 (index!48634 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98003 (_ BitVec 32)) SeekEntryResult!11560)

(assert (=> b!1442510 (= res!974820 (= (seekEntryOrOpen!0 (select (arr!47285 a!2862) j!93) a!2862 mask!2687) (Found!11560 j!93)))))

(declare-fun b!1442511 () Bool)

(assert (=> b!1442511 (= e!813029 (not true))))

(assert (=> b!1442511 e!813027))

(declare-fun res!974826 () Bool)

(assert (=> b!1442511 (=> (not res!974826) (not e!813027))))

(assert (=> b!1442511 (= res!974826 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48564 0))(
  ( (Unit!48565) )
))
(declare-fun lt!633547 () Unit!48564)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98003 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48564)

(assert (=> b!1442511 (= lt!633547 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442512 () Bool)

(declare-fun res!974829 () Bool)

(assert (=> b!1442512 (=> (not res!974829) (not e!813024))))

(declare-datatypes ((List!33966 0))(
  ( (Nil!33963) (Cons!33962 (h!35312 (_ BitVec 64)) (t!48667 List!33966)) )
))
(declare-fun arrayNoDuplicates!0 (array!98003 (_ BitVec 32) List!33966) Bool)

(assert (=> b!1442512 (= res!974829 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33963))))

(declare-fun b!1442513 () Bool)

(declare-fun e!813023 () Bool)

(assert (=> b!1442513 (= e!813023 e!813029)))

(declare-fun res!974822 () Bool)

(assert (=> b!1442513 (=> (not res!974822) (not e!813029))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!633546 () SeekEntryResult!11560)

(assert (=> b!1442513 (= res!974822 (= lt!633546 (Intermediate!11560 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633544 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98003 (_ BitVec 32)) SeekEntryResult!11560)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442513 (= lt!633546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633544 mask!2687) lt!633544 lt!633545 mask!2687))))

(assert (=> b!1442513 (= lt!633544 (select (store (arr!47285 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442514 () Bool)

(declare-fun res!974827 () Bool)

(assert (=> b!1442514 (=> (not res!974827) (not e!813024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442514 (= res!974827 (validKeyInArray!0 (select (arr!47285 a!2862) i!1006)))))

(declare-fun b!1442515 () Bool)

(declare-fun e!813025 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98003 (_ BitVec 32)) SeekEntryResult!11560)

(assert (=> b!1442515 (= e!813025 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633544 lt!633545 mask!2687) (seekEntryOrOpen!0 lt!633544 lt!633545 mask!2687)))))

(declare-fun b!1442516 () Bool)

(declare-fun res!974817 () Bool)

(assert (=> b!1442516 (=> (not res!974817) (not e!813024))))

(assert (=> b!1442516 (= res!974817 (and (= (size!47836 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47836 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47836 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442517 () Bool)

(assert (=> b!1442517 (= e!813026 e!813023)))

(declare-fun res!974823 () Bool)

(assert (=> b!1442517 (=> (not res!974823) (not e!813023))))

(declare-fun lt!633543 () SeekEntryResult!11560)

(assert (=> b!1442517 (= res!974823 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47285 a!2862) j!93) mask!2687) (select (arr!47285 a!2862) j!93) a!2862 mask!2687) lt!633543))))

(assert (=> b!1442517 (= lt!633543 (Intermediate!11560 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442518 () Bool)

(declare-fun res!974824 () Bool)

(assert (=> b!1442518 (=> (not res!974824) (not e!813024))))

(assert (=> b!1442518 (= res!974824 (validKeyInArray!0 (select (arr!47285 a!2862) j!93)))))

(declare-fun b!1442519 () Bool)

(declare-fun res!974819 () Bool)

(assert (=> b!1442519 (=> (not res!974819) (not e!813023))))

(assert (=> b!1442519 (= res!974819 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47285 a!2862) j!93) a!2862 mask!2687) lt!633543))))

(declare-fun b!1442520 () Bool)

(declare-fun res!974821 () Bool)

(assert (=> b!1442520 (=> (not res!974821) (not e!813024))))

(assert (=> b!1442520 (= res!974821 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47836 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47836 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47836 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442521 () Bool)

(assert (=> b!1442521 (= e!813025 (= lt!633546 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633544 lt!633545 mask!2687)))))

(declare-fun b!1442509 () Bool)

(declare-fun res!974828 () Bool)

(assert (=> b!1442509 (=> (not res!974828) (not e!813029))))

(assert (=> b!1442509 (= res!974828 e!813025)))

(declare-fun c!133358 () Bool)

(assert (=> b!1442509 (= c!133358 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!974816 () Bool)

(assert (=> start!124638 (=> (not res!974816) (not e!813024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124638 (= res!974816 (validMask!0 mask!2687))))

(assert (=> start!124638 e!813024))

(assert (=> start!124638 true))

(declare-fun array_inv!36230 (array!98003) Bool)

(assert (=> start!124638 (array_inv!36230 a!2862)))

(assert (= (and start!124638 res!974816) b!1442516))

(assert (= (and b!1442516 res!974817) b!1442514))

(assert (= (and b!1442514 res!974827) b!1442518))

(assert (= (and b!1442518 res!974824) b!1442505))

(assert (= (and b!1442505 res!974825) b!1442512))

(assert (= (and b!1442512 res!974829) b!1442520))

(assert (= (and b!1442520 res!974821) b!1442508))

(assert (= (and b!1442508 res!974818) b!1442517))

(assert (= (and b!1442517 res!974823) b!1442519))

(assert (= (and b!1442519 res!974819) b!1442513))

(assert (= (and b!1442513 res!974822) b!1442509))

(assert (= (and b!1442509 c!133358) b!1442521))

(assert (= (and b!1442509 (not c!133358)) b!1442515))

(assert (= (and b!1442509 res!974828) b!1442507))

(assert (= (and b!1442507 res!974815) b!1442511))

(assert (= (and b!1442511 res!974826) b!1442510))

(assert (= (and b!1442510 res!974820) b!1442506))

(declare-fun m!1331701 () Bool)

(assert (=> b!1442506 m!1331701))

(declare-fun m!1331703 () Bool)

(assert (=> b!1442506 m!1331703))

(declare-fun m!1331705 () Bool)

(assert (=> b!1442508 m!1331705))

(declare-fun m!1331707 () Bool)

(assert (=> b!1442508 m!1331707))

(declare-fun m!1331709 () Bool)

(assert (=> start!124638 m!1331709))

(declare-fun m!1331711 () Bool)

(assert (=> start!124638 m!1331711))

(declare-fun m!1331713 () Bool)

(assert (=> b!1442511 m!1331713))

(declare-fun m!1331715 () Bool)

(assert (=> b!1442511 m!1331715))

(declare-fun m!1331717 () Bool)

(assert (=> b!1442513 m!1331717))

(assert (=> b!1442513 m!1331717))

(declare-fun m!1331719 () Bool)

(assert (=> b!1442513 m!1331719))

(assert (=> b!1442513 m!1331705))

(declare-fun m!1331721 () Bool)

(assert (=> b!1442513 m!1331721))

(assert (=> b!1442517 m!1331703))

(assert (=> b!1442517 m!1331703))

(declare-fun m!1331723 () Bool)

(assert (=> b!1442517 m!1331723))

(assert (=> b!1442517 m!1331723))

(assert (=> b!1442517 m!1331703))

(declare-fun m!1331725 () Bool)

(assert (=> b!1442517 m!1331725))

(declare-fun m!1331727 () Bool)

(assert (=> b!1442514 m!1331727))

(assert (=> b!1442514 m!1331727))

(declare-fun m!1331729 () Bool)

(assert (=> b!1442514 m!1331729))

(assert (=> b!1442518 m!1331703))

(assert (=> b!1442518 m!1331703))

(declare-fun m!1331731 () Bool)

(assert (=> b!1442518 m!1331731))

(assert (=> b!1442519 m!1331703))

(assert (=> b!1442519 m!1331703))

(declare-fun m!1331733 () Bool)

(assert (=> b!1442519 m!1331733))

(declare-fun m!1331735 () Bool)

(assert (=> b!1442505 m!1331735))

(declare-fun m!1331737 () Bool)

(assert (=> b!1442515 m!1331737))

(declare-fun m!1331739 () Bool)

(assert (=> b!1442515 m!1331739))

(declare-fun m!1331741 () Bool)

(assert (=> b!1442512 m!1331741))

(assert (=> b!1442510 m!1331703))

(assert (=> b!1442510 m!1331703))

(declare-fun m!1331743 () Bool)

(assert (=> b!1442510 m!1331743))

(declare-fun m!1331745 () Bool)

(assert (=> b!1442521 m!1331745))

(check-sat (not b!1442515) (not b!1442518) (not b!1442513) (not b!1442510) (not b!1442519) (not b!1442514) (not b!1442505) (not b!1442511) (not start!124638) (not b!1442512) (not b!1442517) (not b!1442521))
