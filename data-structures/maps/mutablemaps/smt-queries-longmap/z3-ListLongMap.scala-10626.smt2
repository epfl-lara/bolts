; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124938 () Bool)

(assert start!124938)

(declare-fun b!1450737 () Bool)

(declare-fun res!982156 () Bool)

(declare-fun e!816925 () Bool)

(assert (=> b!1450737 (=> (not res!982156) (not e!816925))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98303 0))(
  ( (array!98304 (arr!47435 (Array (_ BitVec 32) (_ BitVec 64))) (size!47986 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98303)

(assert (=> b!1450737 (= res!982156 (and (= (size!47986 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47986 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47986 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450738 () Bool)

(declare-fun e!816922 () Bool)

(assert (=> b!1450738 (= e!816925 e!816922)))

(declare-fun res!982147 () Bool)

(assert (=> b!1450738 (=> (not res!982147) (not e!816922))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450738 (= res!982147 (= (select (store (arr!47435 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636391 () array!98303)

(assert (=> b!1450738 (= lt!636391 (array!98304 (store (arr!47435 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47986 a!2862)))))

(declare-fun b!1450739 () Bool)

(declare-fun e!816920 () Bool)

(assert (=> b!1450739 (= e!816920 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11710 0))(
  ( (MissingZero!11710 (index!49231 (_ BitVec 32))) (Found!11710 (index!49232 (_ BitVec 32))) (Intermediate!11710 (undefined!12522 Bool) (index!49233 (_ BitVec 32)) (x!130890 (_ BitVec 32))) (Undefined!11710) (MissingVacant!11710 (index!49234 (_ BitVec 32))) )
))
(declare-fun lt!636387 () SeekEntryResult!11710)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!636386 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98303 (_ BitVec 32)) SeekEntryResult!11710)

(assert (=> b!1450739 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636386 lt!636391 mask!2687) lt!636387)))

(declare-datatypes ((Unit!48864 0))(
  ( (Unit!48865) )
))
(declare-fun lt!636385 () Unit!48864)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98303 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48864)

(assert (=> b!1450739 (= lt!636385 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450740 () Bool)

(declare-fun res!982149 () Bool)

(assert (=> b!1450740 (=> (not res!982149) (not e!816925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98303 (_ BitVec 32)) Bool)

(assert (=> b!1450740 (= res!982149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450742 () Bool)

(declare-fun e!816917 () Bool)

(assert (=> b!1450742 (= e!816917 (not e!816920))))

(declare-fun res!982151 () Bool)

(assert (=> b!1450742 (=> res!982151 e!816920)))

(assert (=> b!1450742 (= res!982151 (or (and (= (select (arr!47435 a!2862) index!646) (select (store (arr!47435 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47435 a!2862) index!646) (select (arr!47435 a!2862) j!93))) (not (= (select (arr!47435 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47435 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816923 () Bool)

(assert (=> b!1450742 e!816923))

(declare-fun res!982161 () Bool)

(assert (=> b!1450742 (=> (not res!982161) (not e!816923))))

(declare-fun lt!636389 () SeekEntryResult!11710)

(assert (=> b!1450742 (= res!982161 (and (= lt!636389 lt!636387) (or (= (select (arr!47435 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47435 a!2862) intermediateBeforeIndex!19) (select (arr!47435 a!2862) j!93)))))))

(assert (=> b!1450742 (= lt!636387 (Found!11710 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98303 (_ BitVec 32)) SeekEntryResult!11710)

(assert (=> b!1450742 (= lt!636389 (seekEntryOrOpen!0 (select (arr!47435 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1450742 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636390 () Unit!48864)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98303 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48864)

(assert (=> b!1450742 (= lt!636390 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450743 () Bool)

(declare-fun res!982154 () Bool)

(assert (=> b!1450743 (=> res!982154 e!816920)))

(assert (=> b!1450743 (= res!982154 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47435 a!2862) j!93) a!2862 mask!2687) lt!636387)))))

(declare-fun b!1450744 () Bool)

(declare-fun res!982163 () Bool)

(assert (=> b!1450744 (=> (not res!982163) (not e!816925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450744 (= res!982163 (validKeyInArray!0 (select (arr!47435 a!2862) j!93)))))

(declare-fun b!1450745 () Bool)

(declare-fun res!982164 () Bool)

(assert (=> b!1450745 (=> (not res!982164) (not e!816917))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1450745 (= res!982164 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450746 () Bool)

(declare-fun e!816924 () Bool)

(assert (=> b!1450746 (= e!816924 e!816917)))

(declare-fun res!982153 () Bool)

(assert (=> b!1450746 (=> (not res!982153) (not e!816917))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun lt!636384 () SeekEntryResult!11710)

(assert (=> b!1450746 (= res!982153 (= lt!636384 (Intermediate!11710 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98303 (_ BitVec 32)) SeekEntryResult!11710)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450746 (= lt!636384 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636386 mask!2687) lt!636386 lt!636391 mask!2687))))

(assert (=> b!1450746 (= lt!636386 (select (store (arr!47435 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450747 () Bool)

(declare-fun res!982148 () Bool)

(assert (=> b!1450747 (=> (not res!982148) (not e!816925))))

(assert (=> b!1450747 (= res!982148 (validKeyInArray!0 (select (arr!47435 a!2862) i!1006)))))

(declare-fun b!1450748 () Bool)

(declare-fun res!982150 () Bool)

(assert (=> b!1450748 (=> (not res!982150) (not e!816925))))

(assert (=> b!1450748 (= res!982150 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47986 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47986 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47986 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!816918 () Bool)

(declare-fun b!1450749 () Bool)

(assert (=> b!1450749 (= e!816918 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636386 lt!636391 mask!2687) (seekEntryOrOpen!0 lt!636386 lt!636391 mask!2687)))))

(declare-fun b!1450750 () Bool)

(assert (=> b!1450750 (= e!816922 e!816924)))

(declare-fun res!982157 () Bool)

(assert (=> b!1450750 (=> (not res!982157) (not e!816924))))

(declare-fun lt!636388 () SeekEntryResult!11710)

(assert (=> b!1450750 (= res!982157 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47435 a!2862) j!93) mask!2687) (select (arr!47435 a!2862) j!93) a!2862 mask!2687) lt!636388))))

(assert (=> b!1450750 (= lt!636388 (Intermediate!11710 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450741 () Bool)

(declare-fun res!982155 () Bool)

(assert (=> b!1450741 (=> (not res!982155) (not e!816924))))

(assert (=> b!1450741 (= res!982155 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47435 a!2862) j!93) a!2862 mask!2687) lt!636388))))

(declare-fun res!982152 () Bool)

(assert (=> start!124938 (=> (not res!982152) (not e!816925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124938 (= res!982152 (validMask!0 mask!2687))))

(assert (=> start!124938 e!816925))

(assert (=> start!124938 true))

(declare-fun array_inv!36380 (array!98303) Bool)

(assert (=> start!124938 (array_inv!36380 a!2862)))

(declare-fun b!1450751 () Bool)

(assert (=> b!1450751 (= e!816918 (= lt!636384 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636386 lt!636391 mask!2687)))))

(declare-fun b!1450752 () Bool)

(declare-fun e!816926 () Bool)

(declare-fun e!816921 () Bool)

(assert (=> b!1450752 (= e!816926 e!816921)))

(declare-fun res!982160 () Bool)

(assert (=> b!1450752 (=> (not res!982160) (not e!816921))))

(assert (=> b!1450752 (= res!982160 (= lt!636389 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47435 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450753 () Bool)

(declare-fun res!982159 () Bool)

(assert (=> b!1450753 (=> (not res!982159) (not e!816917))))

(assert (=> b!1450753 (= res!982159 e!816918)))

(declare-fun c!133808 () Bool)

(assert (=> b!1450753 (= c!133808 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450754 () Bool)

(assert (=> b!1450754 (= e!816923 e!816926)))

(declare-fun res!982158 () Bool)

(assert (=> b!1450754 (=> res!982158 e!816926)))

(assert (=> b!1450754 (= res!982158 (or (and (= (select (arr!47435 a!2862) index!646) (select (store (arr!47435 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47435 a!2862) index!646) (select (arr!47435 a!2862) j!93))) (not (= (select (arr!47435 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450755 () Bool)

(assert (=> b!1450755 (= e!816921 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450756 () Bool)

(declare-fun res!982162 () Bool)

(assert (=> b!1450756 (=> (not res!982162) (not e!816925))))

(declare-datatypes ((List!34116 0))(
  ( (Nil!34113) (Cons!34112 (h!35462 (_ BitVec 64)) (t!48817 List!34116)) )
))
(declare-fun arrayNoDuplicates!0 (array!98303 (_ BitVec 32) List!34116) Bool)

(assert (=> b!1450756 (= res!982162 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34113))))

(assert (= (and start!124938 res!982152) b!1450737))

(assert (= (and b!1450737 res!982156) b!1450747))

(assert (= (and b!1450747 res!982148) b!1450744))

(assert (= (and b!1450744 res!982163) b!1450740))

(assert (= (and b!1450740 res!982149) b!1450756))

(assert (= (and b!1450756 res!982162) b!1450748))

(assert (= (and b!1450748 res!982150) b!1450738))

(assert (= (and b!1450738 res!982147) b!1450750))

(assert (= (and b!1450750 res!982157) b!1450741))

(assert (= (and b!1450741 res!982155) b!1450746))

(assert (= (and b!1450746 res!982153) b!1450753))

(assert (= (and b!1450753 c!133808) b!1450751))

(assert (= (and b!1450753 (not c!133808)) b!1450749))

(assert (= (and b!1450753 res!982159) b!1450745))

(assert (= (and b!1450745 res!982164) b!1450742))

(assert (= (and b!1450742 res!982161) b!1450754))

(assert (= (and b!1450754 (not res!982158)) b!1450752))

(assert (= (and b!1450752 res!982160) b!1450755))

(assert (= (and b!1450742 (not res!982151)) b!1450743))

(assert (= (and b!1450743 (not res!982154)) b!1450739))

(declare-fun m!1339415 () Bool)

(assert (=> b!1450738 m!1339415))

(declare-fun m!1339417 () Bool)

(assert (=> b!1450738 m!1339417))

(declare-fun m!1339419 () Bool)

(assert (=> b!1450744 m!1339419))

(assert (=> b!1450744 m!1339419))

(declare-fun m!1339421 () Bool)

(assert (=> b!1450744 m!1339421))

(declare-fun m!1339423 () Bool)

(assert (=> b!1450754 m!1339423))

(assert (=> b!1450754 m!1339415))

(declare-fun m!1339425 () Bool)

(assert (=> b!1450754 m!1339425))

(assert (=> b!1450754 m!1339419))

(assert (=> b!1450741 m!1339419))

(assert (=> b!1450741 m!1339419))

(declare-fun m!1339427 () Bool)

(assert (=> b!1450741 m!1339427))

(assert (=> b!1450752 m!1339419))

(assert (=> b!1450752 m!1339419))

(declare-fun m!1339429 () Bool)

(assert (=> b!1450752 m!1339429))

(declare-fun m!1339431 () Bool)

(assert (=> b!1450747 m!1339431))

(assert (=> b!1450747 m!1339431))

(declare-fun m!1339433 () Bool)

(assert (=> b!1450747 m!1339433))

(declare-fun m!1339435 () Bool)

(assert (=> b!1450739 m!1339435))

(declare-fun m!1339437 () Bool)

(assert (=> b!1450739 m!1339437))

(assert (=> b!1450749 m!1339435))

(declare-fun m!1339439 () Bool)

(assert (=> b!1450749 m!1339439))

(assert (=> b!1450743 m!1339419))

(assert (=> b!1450743 m!1339419))

(declare-fun m!1339441 () Bool)

(assert (=> b!1450743 m!1339441))

(assert (=> b!1450750 m!1339419))

(assert (=> b!1450750 m!1339419))

(declare-fun m!1339443 () Bool)

(assert (=> b!1450750 m!1339443))

(assert (=> b!1450750 m!1339443))

(assert (=> b!1450750 m!1339419))

(declare-fun m!1339445 () Bool)

(assert (=> b!1450750 m!1339445))

(declare-fun m!1339447 () Bool)

(assert (=> b!1450746 m!1339447))

(assert (=> b!1450746 m!1339447))

(declare-fun m!1339449 () Bool)

(assert (=> b!1450746 m!1339449))

(assert (=> b!1450746 m!1339415))

(declare-fun m!1339451 () Bool)

(assert (=> b!1450746 m!1339451))

(declare-fun m!1339453 () Bool)

(assert (=> start!124938 m!1339453))

(declare-fun m!1339455 () Bool)

(assert (=> start!124938 m!1339455))

(declare-fun m!1339457 () Bool)

(assert (=> b!1450740 m!1339457))

(declare-fun m!1339459 () Bool)

(assert (=> b!1450742 m!1339459))

(assert (=> b!1450742 m!1339415))

(declare-fun m!1339461 () Bool)

(assert (=> b!1450742 m!1339461))

(assert (=> b!1450742 m!1339425))

(assert (=> b!1450742 m!1339423))

(assert (=> b!1450742 m!1339419))

(declare-fun m!1339463 () Bool)

(assert (=> b!1450742 m!1339463))

(declare-fun m!1339465 () Bool)

(assert (=> b!1450742 m!1339465))

(assert (=> b!1450742 m!1339419))

(declare-fun m!1339467 () Bool)

(assert (=> b!1450756 m!1339467))

(declare-fun m!1339469 () Bool)

(assert (=> b!1450751 m!1339469))

(check-sat (not start!124938) (not b!1450741) (not b!1450747) (not b!1450751) (not b!1450750) (not b!1450756) (not b!1450749) (not b!1450744) (not b!1450752) (not b!1450742) (not b!1450739) (not b!1450743) (not b!1450740) (not b!1450746))
(check-sat)
