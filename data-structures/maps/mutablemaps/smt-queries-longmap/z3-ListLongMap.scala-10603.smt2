; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124800 () Bool)

(assert start!124800)

(declare-fun b!1446745 () Bool)

(declare-fun e!814853 () Bool)

(declare-fun e!814855 () Bool)

(assert (=> b!1446745 (= e!814853 e!814855)))

(declare-fun res!978579 () Bool)

(assert (=> b!1446745 (=> (not res!978579) (not e!814855))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98165 0))(
  ( (array!98166 (arr!47366 (Array (_ BitVec 32) (_ BitVec 64))) (size!47917 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98165)

(assert (=> b!1446745 (= res!978579 (= (select (store (arr!47366 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634877 () array!98165)

(assert (=> b!1446745 (= lt!634877 (array!98166 (store (arr!47366 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47917 a!2862)))))

(declare-fun b!1446746 () Bool)

(declare-fun e!814848 () Bool)

(declare-fun e!814847 () Bool)

(assert (=> b!1446746 (= e!814848 (not e!814847))))

(declare-fun res!978575 () Bool)

(assert (=> b!1446746 (=> res!978575 e!814847)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1446746 (= res!978575 (or (and (= (select (arr!47366 a!2862) index!646) (select (store (arr!47366 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47366 a!2862) index!646) (select (arr!47366 a!2862) j!93))) (not (= (select (arr!47366 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47366 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!814856 () Bool)

(assert (=> b!1446746 e!814856))

(declare-fun res!978581 () Bool)

(assert (=> b!1446746 (=> (not res!978581) (not e!814856))))

(declare-datatypes ((SeekEntryResult!11641 0))(
  ( (MissingZero!11641 (index!48955 (_ BitVec 32))) (Found!11641 (index!48956 (_ BitVec 32))) (Intermediate!11641 (undefined!12453 Bool) (index!48957 (_ BitVec 32)) (x!130637 (_ BitVec 32))) (Undefined!11641) (MissingVacant!11641 (index!48958 (_ BitVec 32))) )
))
(declare-fun lt!634879 () SeekEntryResult!11641)

(assert (=> b!1446746 (= res!978581 (and (= lt!634879 (Found!11641 j!93)) (or (= (select (arr!47366 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47366 a!2862) intermediateBeforeIndex!19) (select (arr!47366 a!2862) j!93)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98165 (_ BitVec 32)) SeekEntryResult!11641)

(assert (=> b!1446746 (= lt!634879 (seekEntryOrOpen!0 (select (arr!47366 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98165 (_ BitVec 32)) Bool)

(assert (=> b!1446746 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48726 0))(
  ( (Unit!48727) )
))
(declare-fun lt!634882 () Unit!48726)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98165 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48726)

(assert (=> b!1446746 (= lt!634882 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446747 () Bool)

(assert (=> b!1446747 (= e!814847 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!634880 () SeekEntryResult!11641)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98165 (_ BitVec 32)) SeekEntryResult!11641)

(assert (=> b!1446747 (= lt!634880 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47366 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1446748 () Bool)

(declare-fun e!814851 () Bool)

(assert (=> b!1446748 (= e!814856 e!814851)))

(declare-fun res!978583 () Bool)

(assert (=> b!1446748 (=> res!978583 e!814851)))

(assert (=> b!1446748 (= res!978583 (or (and (= (select (arr!47366 a!2862) index!646) (select (store (arr!47366 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47366 a!2862) index!646) (select (arr!47366 a!2862) j!93))) (not (= (select (arr!47366 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1446749 () Bool)

(declare-fun res!978569 () Bool)

(assert (=> b!1446749 (=> (not res!978569) (not e!814848))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1446749 (= res!978569 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1446750 () Bool)

(declare-fun res!978571 () Bool)

(assert (=> b!1446750 (=> (not res!978571) (not e!814853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446750 (= res!978571 (validKeyInArray!0 (select (arr!47366 a!2862) j!93)))))

(declare-fun b!1446751 () Bool)

(declare-fun res!978578 () Bool)

(assert (=> b!1446751 (=> (not res!978578) (not e!814853))))

(assert (=> b!1446751 (= res!978578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446752 () Bool)

(declare-fun e!814849 () Bool)

(assert (=> b!1446752 (= e!814851 e!814849)))

(declare-fun res!978570 () Bool)

(assert (=> b!1446752 (=> (not res!978570) (not e!814849))))

(assert (=> b!1446752 (= res!978570 (= lt!634879 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47366 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1446753 () Bool)

(declare-fun res!978582 () Bool)

(assert (=> b!1446753 (=> (not res!978582) (not e!814853))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1446753 (= res!978582 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47917 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47917 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47917 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446754 () Bool)

(declare-fun res!978573 () Bool)

(assert (=> b!1446754 (=> (not res!978573) (not e!814853))))

(declare-datatypes ((List!34047 0))(
  ( (Nil!34044) (Cons!34043 (h!35393 (_ BitVec 64)) (t!48748 List!34047)) )
))
(declare-fun arrayNoDuplicates!0 (array!98165 (_ BitVec 32) List!34047) Bool)

(assert (=> b!1446754 (= res!978573 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34044))))

(declare-fun b!1446755 () Bool)

(declare-fun res!978580 () Bool)

(assert (=> b!1446755 (=> (not res!978580) (not e!814853))))

(assert (=> b!1446755 (= res!978580 (and (= (size!47917 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47917 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47917 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446756 () Bool)

(declare-fun e!814854 () Bool)

(assert (=> b!1446756 (= e!814854 e!814848)))

(declare-fun res!978572 () Bool)

(assert (=> b!1446756 (=> (not res!978572) (not e!814848))))

(declare-fun lt!634881 () SeekEntryResult!11641)

(assert (=> b!1446756 (= res!978572 (= lt!634881 (Intermediate!11641 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!634876 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98165 (_ BitVec 32)) SeekEntryResult!11641)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446756 (= lt!634881 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634876 mask!2687) lt!634876 lt!634877 mask!2687))))

(assert (=> b!1446756 (= lt!634876 (select (store (arr!47366 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446757 () Bool)

(assert (=> b!1446757 (= e!814849 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1446759 () Bool)

(declare-fun res!978576 () Bool)

(assert (=> b!1446759 (=> (not res!978576) (not e!814848))))

(declare-fun e!814850 () Bool)

(assert (=> b!1446759 (= res!978576 e!814850)))

(declare-fun c!133601 () Bool)

(assert (=> b!1446759 (= c!133601 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!978584 () Bool)

(assert (=> start!124800 (=> (not res!978584) (not e!814853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124800 (= res!978584 (validMask!0 mask!2687))))

(assert (=> start!124800 e!814853))

(assert (=> start!124800 true))

(declare-fun array_inv!36311 (array!98165) Bool)

(assert (=> start!124800 (array_inv!36311 a!2862)))

(declare-fun b!1446758 () Bool)

(assert (=> b!1446758 (= e!814855 e!814854)))

(declare-fun res!978574 () Bool)

(assert (=> b!1446758 (=> (not res!978574) (not e!814854))))

(declare-fun lt!634878 () SeekEntryResult!11641)

(assert (=> b!1446758 (= res!978574 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47366 a!2862) j!93) mask!2687) (select (arr!47366 a!2862) j!93) a!2862 mask!2687) lt!634878))))

(assert (=> b!1446758 (= lt!634878 (Intermediate!11641 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1446760 () Bool)

(assert (=> b!1446760 (= e!814850 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634876 lt!634877 mask!2687) (seekEntryOrOpen!0 lt!634876 lt!634877 mask!2687)))))

(declare-fun b!1446761 () Bool)

(declare-fun res!978585 () Bool)

(assert (=> b!1446761 (=> (not res!978585) (not e!814854))))

(assert (=> b!1446761 (= res!978585 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47366 a!2862) j!93) a!2862 mask!2687) lt!634878))))

(declare-fun b!1446762 () Bool)

(declare-fun res!978577 () Bool)

(assert (=> b!1446762 (=> (not res!978577) (not e!814853))))

(assert (=> b!1446762 (= res!978577 (validKeyInArray!0 (select (arr!47366 a!2862) i!1006)))))

(declare-fun b!1446763 () Bool)

(assert (=> b!1446763 (= e!814850 (= lt!634881 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634876 lt!634877 mask!2687)))))

(assert (= (and start!124800 res!978584) b!1446755))

(assert (= (and b!1446755 res!978580) b!1446762))

(assert (= (and b!1446762 res!978577) b!1446750))

(assert (= (and b!1446750 res!978571) b!1446751))

(assert (= (and b!1446751 res!978578) b!1446754))

(assert (= (and b!1446754 res!978573) b!1446753))

(assert (= (and b!1446753 res!978582) b!1446745))

(assert (= (and b!1446745 res!978579) b!1446758))

(assert (= (and b!1446758 res!978574) b!1446761))

(assert (= (and b!1446761 res!978585) b!1446756))

(assert (= (and b!1446756 res!978572) b!1446759))

(assert (= (and b!1446759 c!133601) b!1446763))

(assert (= (and b!1446759 (not c!133601)) b!1446760))

(assert (= (and b!1446759 res!978576) b!1446749))

(assert (= (and b!1446749 res!978569) b!1446746))

(assert (= (and b!1446746 res!978581) b!1446748))

(assert (= (and b!1446748 (not res!978583)) b!1446752))

(assert (= (and b!1446752 res!978570) b!1446757))

(assert (= (and b!1446746 (not res!978575)) b!1446747))

(declare-fun m!1335651 () Bool)

(assert (=> b!1446748 m!1335651))

(declare-fun m!1335653 () Bool)

(assert (=> b!1446748 m!1335653))

(declare-fun m!1335655 () Bool)

(assert (=> b!1446748 m!1335655))

(declare-fun m!1335657 () Bool)

(assert (=> b!1446748 m!1335657))

(declare-fun m!1335659 () Bool)

(assert (=> b!1446754 m!1335659))

(declare-fun m!1335661 () Bool)

(assert (=> b!1446756 m!1335661))

(assert (=> b!1446756 m!1335661))

(declare-fun m!1335663 () Bool)

(assert (=> b!1446756 m!1335663))

(assert (=> b!1446756 m!1335653))

(declare-fun m!1335665 () Bool)

(assert (=> b!1446756 m!1335665))

(declare-fun m!1335667 () Bool)

(assert (=> b!1446746 m!1335667))

(assert (=> b!1446746 m!1335653))

(declare-fun m!1335669 () Bool)

(assert (=> b!1446746 m!1335669))

(assert (=> b!1446746 m!1335655))

(assert (=> b!1446746 m!1335651))

(assert (=> b!1446746 m!1335657))

(declare-fun m!1335671 () Bool)

(assert (=> b!1446746 m!1335671))

(declare-fun m!1335673 () Bool)

(assert (=> b!1446746 m!1335673))

(assert (=> b!1446746 m!1335657))

(declare-fun m!1335675 () Bool)

(assert (=> b!1446760 m!1335675))

(declare-fun m!1335677 () Bool)

(assert (=> b!1446760 m!1335677))

(assert (=> b!1446750 m!1335657))

(assert (=> b!1446750 m!1335657))

(declare-fun m!1335679 () Bool)

(assert (=> b!1446750 m!1335679))

(assert (=> b!1446752 m!1335657))

(assert (=> b!1446752 m!1335657))

(declare-fun m!1335681 () Bool)

(assert (=> b!1446752 m!1335681))

(declare-fun m!1335683 () Bool)

(assert (=> b!1446763 m!1335683))

(declare-fun m!1335685 () Bool)

(assert (=> b!1446751 m!1335685))

(assert (=> b!1446747 m!1335657))

(assert (=> b!1446747 m!1335657))

(declare-fun m!1335687 () Bool)

(assert (=> b!1446747 m!1335687))

(assert (=> b!1446761 m!1335657))

(assert (=> b!1446761 m!1335657))

(declare-fun m!1335689 () Bool)

(assert (=> b!1446761 m!1335689))

(declare-fun m!1335691 () Bool)

(assert (=> start!124800 m!1335691))

(declare-fun m!1335693 () Bool)

(assert (=> start!124800 m!1335693))

(assert (=> b!1446745 m!1335653))

(declare-fun m!1335695 () Bool)

(assert (=> b!1446745 m!1335695))

(declare-fun m!1335697 () Bool)

(assert (=> b!1446762 m!1335697))

(assert (=> b!1446762 m!1335697))

(declare-fun m!1335699 () Bool)

(assert (=> b!1446762 m!1335699))

(assert (=> b!1446758 m!1335657))

(assert (=> b!1446758 m!1335657))

(declare-fun m!1335701 () Bool)

(assert (=> b!1446758 m!1335701))

(assert (=> b!1446758 m!1335701))

(assert (=> b!1446758 m!1335657))

(declare-fun m!1335703 () Bool)

(assert (=> b!1446758 m!1335703))

(check-sat (not b!1446763) (not b!1446747) (not b!1446752) (not b!1446761) (not b!1446762) (not start!124800) (not b!1446756) (not b!1446758) (not b!1446754) (not b!1446746) (not b!1446751) (not b!1446760) (not b!1446750))
(check-sat)
