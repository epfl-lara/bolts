; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124500 () Bool)

(assert start!124500)

(declare-fun b!1439923 () Bool)

(declare-fun res!972468 () Bool)

(declare-fun e!812033 () Bool)

(assert (=> b!1439923 (=> (not res!972468) (not e!812033))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11491 0))(
  ( (MissingZero!11491 (index!48355 (_ BitVec 32))) (Found!11491 (index!48356 (_ BitVec 32))) (Intermediate!11491 (undefined!12303 Bool) (index!48357 (_ BitVec 32)) (x!130087 (_ BitVec 32))) (Undefined!11491) (MissingVacant!11491 (index!48358 (_ BitVec 32))) )
))
(declare-fun lt!632839 () SeekEntryResult!11491)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97865 0))(
  ( (array!97866 (arr!47216 (Array (_ BitVec 32) (_ BitVec 64))) (size!47767 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97865)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97865 (_ BitVec 32)) SeekEntryResult!11491)

(assert (=> b!1439923 (= res!972468 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47216 a!2862) j!93) a!2862 mask!2687) lt!632839))))

(declare-fun b!1439924 () Bool)

(declare-fun res!972466 () Bool)

(declare-fun e!812032 () Bool)

(assert (=> b!1439924 (=> (not res!972466) (not e!812032))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439924 (= res!972466 (and (= (size!47767 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47767 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47767 a!2862)) (not (= i!1006 j!93))))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1439925 () Bool)

(assert (=> b!1439925 (= e!812033 (and (bvsgt x!665 intermediateAfterX!19) (bvslt mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1439926 () Bool)

(declare-fun res!972464 () Bool)

(assert (=> b!1439926 (=> (not res!972464) (not e!812032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97865 (_ BitVec 32)) Bool)

(assert (=> b!1439926 (= res!972464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439927 () Bool)

(declare-fun res!972465 () Bool)

(assert (=> b!1439927 (=> (not res!972465) (not e!812032))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439927 (= res!972465 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47767 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47767 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47767 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47216 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439928 () Bool)

(declare-fun res!972467 () Bool)

(assert (=> b!1439928 (=> (not res!972467) (not e!812032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439928 (= res!972467 (validKeyInArray!0 (select (arr!47216 a!2862) j!93)))))

(declare-fun b!1439929 () Bool)

(declare-fun res!972460 () Bool)

(assert (=> b!1439929 (=> (not res!972460) (not e!812032))))

(assert (=> b!1439929 (= res!972460 (validKeyInArray!0 (select (arr!47216 a!2862) i!1006)))))

(declare-fun res!972459 () Bool)

(assert (=> start!124500 (=> (not res!972459) (not e!812032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124500 (= res!972459 (validMask!0 mask!2687))))

(assert (=> start!124500 e!812032))

(assert (=> start!124500 true))

(declare-fun array_inv!36161 (array!97865) Bool)

(assert (=> start!124500 (array_inv!36161 a!2862)))

(declare-fun b!1439930 () Bool)

(declare-fun res!972461 () Bool)

(assert (=> b!1439930 (=> (not res!972461) (not e!812033))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439930 (= res!972461 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47216 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47216 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97866 (store (arr!47216 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47767 a!2862)) mask!2687) (Intermediate!11491 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1439931 () Bool)

(declare-fun res!972463 () Bool)

(assert (=> b!1439931 (=> (not res!972463) (not e!812032))))

(declare-datatypes ((List!33897 0))(
  ( (Nil!33894) (Cons!33893 (h!35243 (_ BitVec 64)) (t!48598 List!33897)) )
))
(declare-fun arrayNoDuplicates!0 (array!97865 (_ BitVec 32) List!33897) Bool)

(assert (=> b!1439931 (= res!972463 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33894))))

(declare-fun b!1439932 () Bool)

(assert (=> b!1439932 (= e!812032 e!812033)))

(declare-fun res!972462 () Bool)

(assert (=> b!1439932 (=> (not res!972462) (not e!812033))))

(assert (=> b!1439932 (= res!972462 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47216 a!2862) j!93) mask!2687) (select (arr!47216 a!2862) j!93) a!2862 mask!2687) lt!632839))))

(assert (=> b!1439932 (= lt!632839 (Intermediate!11491 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124500 res!972459) b!1439924))

(assert (= (and b!1439924 res!972466) b!1439929))

(assert (= (and b!1439929 res!972460) b!1439928))

(assert (= (and b!1439928 res!972467) b!1439926))

(assert (= (and b!1439926 res!972464) b!1439931))

(assert (= (and b!1439931 res!972463) b!1439927))

(assert (= (and b!1439927 res!972465) b!1439932))

(assert (= (and b!1439932 res!972462) b!1439923))

(assert (= (and b!1439923 res!972468) b!1439930))

(assert (= (and b!1439930 res!972461) b!1439925))

(declare-fun m!1329119 () Bool)

(assert (=> b!1439923 m!1329119))

(assert (=> b!1439923 m!1329119))

(declare-fun m!1329121 () Bool)

(assert (=> b!1439923 m!1329121))

(declare-fun m!1329123 () Bool)

(assert (=> b!1439926 m!1329123))

(declare-fun m!1329125 () Bool)

(assert (=> b!1439930 m!1329125))

(declare-fun m!1329127 () Bool)

(assert (=> b!1439930 m!1329127))

(assert (=> b!1439930 m!1329127))

(declare-fun m!1329129 () Bool)

(assert (=> b!1439930 m!1329129))

(assert (=> b!1439930 m!1329129))

(assert (=> b!1439930 m!1329127))

(declare-fun m!1329131 () Bool)

(assert (=> b!1439930 m!1329131))

(declare-fun m!1329133 () Bool)

(assert (=> b!1439931 m!1329133))

(declare-fun m!1329135 () Bool)

(assert (=> start!124500 m!1329135))

(declare-fun m!1329137 () Bool)

(assert (=> start!124500 m!1329137))

(assert (=> b!1439932 m!1329119))

(assert (=> b!1439932 m!1329119))

(declare-fun m!1329139 () Bool)

(assert (=> b!1439932 m!1329139))

(assert (=> b!1439932 m!1329139))

(assert (=> b!1439932 m!1329119))

(declare-fun m!1329141 () Bool)

(assert (=> b!1439932 m!1329141))

(declare-fun m!1329143 () Bool)

(assert (=> b!1439929 m!1329143))

(assert (=> b!1439929 m!1329143))

(declare-fun m!1329145 () Bool)

(assert (=> b!1439929 m!1329145))

(assert (=> b!1439927 m!1329125))

(declare-fun m!1329147 () Bool)

(assert (=> b!1439927 m!1329147))

(assert (=> b!1439928 m!1329119))

(assert (=> b!1439928 m!1329119))

(declare-fun m!1329149 () Bool)

(assert (=> b!1439928 m!1329149))

(check-sat (not b!1439923) (not b!1439926) (not b!1439929) (not b!1439932) (not b!1439928) (not b!1439931) (not b!1439930) (not start!124500))
(check-sat)
