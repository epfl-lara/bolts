; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125592 () Bool)

(assert start!125592)

(declare-fun b!1468853 () Bool)

(declare-fun res!997502 () Bool)

(declare-fun e!824730 () Bool)

(assert (=> b!1468853 (=> (not res!997502) (not e!824730))))

(declare-datatypes ((array!98957 0))(
  ( (array!98958 (arr!47762 (Array (_ BitVec 32) (_ BitVec 64))) (size!48313 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98957)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468853 (= res!997502 (validKeyInArray!0 (select (arr!47762 a!2862) i!1006)))))

(declare-fun res!997507 () Bool)

(assert (=> start!125592 (=> (not res!997507) (not e!824730))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125592 (= res!997507 (validMask!0 mask!2687))))

(assert (=> start!125592 e!824730))

(assert (=> start!125592 true))

(declare-fun array_inv!36707 (array!98957) Bool)

(assert (=> start!125592 (array_inv!36707 a!2862)))

(declare-fun b!1468854 () Bool)

(declare-fun res!997506 () Bool)

(assert (=> b!1468854 (=> (not res!997506) (not e!824730))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1468854 (= res!997506 (and (= (size!48313 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48313 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48313 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468855 () Bool)

(declare-fun res!997501 () Bool)

(assert (=> b!1468855 (=> (not res!997501) (not e!824730))))

(assert (=> b!1468855 (= res!997501 (validKeyInArray!0 (select (arr!47762 a!2862) j!93)))))

(declare-fun b!1468856 () Bool)

(declare-fun res!997505 () Bool)

(assert (=> b!1468856 (=> (not res!997505) (not e!824730))))

(declare-datatypes ((List!34443 0))(
  ( (Nil!34440) (Cons!34439 (h!35789 (_ BitVec 64)) (t!49144 List!34443)) )
))
(declare-fun arrayNoDuplicates!0 (array!98957 (_ BitVec 32) List!34443) Bool)

(assert (=> b!1468856 (= res!997505 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34440))))

(declare-fun b!1468857 () Bool)

(declare-fun e!824732 () Bool)

(assert (=> b!1468857 (= e!824732 false)))

(declare-datatypes ((SeekEntryResult!12025 0))(
  ( (MissingZero!12025 (index!50491 (_ BitVec 32))) (Found!12025 (index!50492 (_ BitVec 32))) (Intermediate!12025 (undefined!12837 Bool) (index!50493 (_ BitVec 32)) (x!132077 (_ BitVec 32))) (Undefined!12025) (MissingVacant!12025 (index!50494 (_ BitVec 32))) )
))
(declare-fun lt!642339 () SeekEntryResult!12025)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98957 (_ BitVec 32)) SeekEntryResult!12025)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468857 (= lt!642339 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47762 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47762 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98958 (store (arr!47762 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48313 a!2862)) mask!2687))))

(declare-fun b!1468858 () Bool)

(declare-fun res!997509 () Bool)

(assert (=> b!1468858 (=> (not res!997509) (not e!824730))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468858 (= res!997509 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48313 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48313 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48313 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47762 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468859 () Bool)

(declare-fun res!997508 () Bool)

(assert (=> b!1468859 (=> (not res!997508) (not e!824730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98957 (_ BitVec 32)) Bool)

(assert (=> b!1468859 (= res!997508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468860 () Bool)

(assert (=> b!1468860 (= e!824730 e!824732)))

(declare-fun res!997503 () Bool)

(assert (=> b!1468860 (=> (not res!997503) (not e!824732))))

(declare-fun lt!642340 () SeekEntryResult!12025)

(assert (=> b!1468860 (= res!997503 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47762 a!2862) j!93) mask!2687) (select (arr!47762 a!2862) j!93) a!2862 mask!2687) lt!642340))))

(assert (=> b!1468860 (= lt!642340 (Intermediate!12025 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468861 () Bool)

(declare-fun res!997504 () Bool)

(assert (=> b!1468861 (=> (not res!997504) (not e!824732))))

(assert (=> b!1468861 (= res!997504 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47762 a!2862) j!93) a!2862 mask!2687) lt!642340))))

(assert (= (and start!125592 res!997507) b!1468854))

(assert (= (and b!1468854 res!997506) b!1468853))

(assert (= (and b!1468853 res!997502) b!1468855))

(assert (= (and b!1468855 res!997501) b!1468859))

(assert (= (and b!1468859 res!997508) b!1468856))

(assert (= (and b!1468856 res!997505) b!1468858))

(assert (= (and b!1468858 res!997509) b!1468860))

(assert (= (and b!1468860 res!997503) b!1468861))

(assert (= (and b!1468861 res!997504) b!1468857))

(declare-fun m!1356065 () Bool)

(assert (=> b!1468859 m!1356065))

(declare-fun m!1356067 () Bool)

(assert (=> start!125592 m!1356067))

(declare-fun m!1356069 () Bool)

(assert (=> start!125592 m!1356069))

(declare-fun m!1356071 () Bool)

(assert (=> b!1468861 m!1356071))

(assert (=> b!1468861 m!1356071))

(declare-fun m!1356073 () Bool)

(assert (=> b!1468861 m!1356073))

(assert (=> b!1468860 m!1356071))

(assert (=> b!1468860 m!1356071))

(declare-fun m!1356075 () Bool)

(assert (=> b!1468860 m!1356075))

(assert (=> b!1468860 m!1356075))

(assert (=> b!1468860 m!1356071))

(declare-fun m!1356077 () Bool)

(assert (=> b!1468860 m!1356077))

(declare-fun m!1356079 () Bool)

(assert (=> b!1468858 m!1356079))

(declare-fun m!1356081 () Bool)

(assert (=> b!1468858 m!1356081))

(assert (=> b!1468857 m!1356079))

(declare-fun m!1356083 () Bool)

(assert (=> b!1468857 m!1356083))

(assert (=> b!1468857 m!1356083))

(declare-fun m!1356085 () Bool)

(assert (=> b!1468857 m!1356085))

(assert (=> b!1468857 m!1356085))

(assert (=> b!1468857 m!1356083))

(declare-fun m!1356087 () Bool)

(assert (=> b!1468857 m!1356087))

(declare-fun m!1356089 () Bool)

(assert (=> b!1468856 m!1356089))

(declare-fun m!1356091 () Bool)

(assert (=> b!1468853 m!1356091))

(assert (=> b!1468853 m!1356091))

(declare-fun m!1356093 () Bool)

(assert (=> b!1468853 m!1356093))

(assert (=> b!1468855 m!1356071))

(assert (=> b!1468855 m!1356071))

(declare-fun m!1356095 () Bool)

(assert (=> b!1468855 m!1356095))

(check-sat (not b!1468853) (not start!125592) (not b!1468857) (not b!1468856) (not b!1468860) (not b!1468859) (not b!1468861) (not b!1468855))
(check-sat)
