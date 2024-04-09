; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124392 () Bool)

(assert start!124392)

(declare-fun b!1438748 () Bool)

(declare-fun res!971409 () Bool)

(declare-fun e!811578 () Bool)

(assert (=> b!1438748 (=> (not res!971409) (not e!811578))))

(declare-datatypes ((array!97796 0))(
  ( (array!97797 (arr!47183 (Array (_ BitVec 32) (_ BitVec 64))) (size!47734 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97796)

(declare-datatypes ((List!33864 0))(
  ( (Nil!33861) (Cons!33860 (h!35207 (_ BitVec 64)) (t!48565 List!33864)) )
))
(declare-fun arrayNoDuplicates!0 (array!97796 (_ BitVec 32) List!33864) Bool)

(assert (=> b!1438748 (= res!971409 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33861))))

(declare-fun b!1438749 () Bool)

(declare-fun e!811580 () Bool)

(assert (=> b!1438749 (= e!811578 e!811580)))

(declare-fun res!971408 () Bool)

(assert (=> b!1438749 (=> (not res!971408) (not e!811580))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11458 0))(
  ( (MissingZero!11458 (index!48223 (_ BitVec 32))) (Found!11458 (index!48224 (_ BitVec 32))) (Intermediate!11458 (undefined!12270 Bool) (index!48225 (_ BitVec 32)) (x!129960 (_ BitVec 32))) (Undefined!11458) (MissingVacant!11458 (index!48226 (_ BitVec 32))) )
))
(declare-fun lt!632592 () SeekEntryResult!11458)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97796 (_ BitVec 32)) SeekEntryResult!11458)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438749 (= res!971408 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47183 a!2862) j!93) mask!2687) (select (arr!47183 a!2862) j!93) a!2862 mask!2687) lt!632592))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1438749 (= lt!632592 (Intermediate!11458 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438750 () Bool)

(declare-fun res!971411 () Bool)

(assert (=> b!1438750 (=> (not res!971411) (not e!811580))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1438750 (= res!971411 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47183 a!2862) j!93) a!2862 mask!2687) lt!632592))))

(declare-fun res!971407 () Bool)

(assert (=> start!124392 (=> (not res!971407) (not e!811578))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124392 (= res!971407 (validMask!0 mask!2687))))

(assert (=> start!124392 e!811578))

(assert (=> start!124392 true))

(declare-fun array_inv!36128 (array!97796) Bool)

(assert (=> start!124392 (array_inv!36128 a!2862)))

(declare-fun b!1438751 () Bool)

(declare-fun res!971413 () Bool)

(assert (=> b!1438751 (=> (not res!971413) (not e!811578))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1438751 (= res!971413 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47734 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47734 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47734 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47183 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1438752 () Bool)

(declare-fun res!971415 () Bool)

(assert (=> b!1438752 (=> (not res!971415) (not e!811578))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438752 (= res!971415 (validKeyInArray!0 (select (arr!47183 a!2862) i!1006)))))

(declare-fun b!1438753 () Bool)

(declare-fun res!971410 () Bool)

(assert (=> b!1438753 (=> (not res!971410) (not e!811578))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97796 (_ BitVec 32)) Bool)

(assert (=> b!1438753 (= res!971410 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438754 () Bool)

(assert (=> b!1438754 (= e!811580 false)))

(declare-fun lt!632593 () SeekEntryResult!11458)

(assert (=> b!1438754 (= lt!632593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47183 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47183 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97797 (store (arr!47183 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47734 a!2862)) mask!2687))))

(declare-fun b!1438755 () Bool)

(declare-fun res!971414 () Bool)

(assert (=> b!1438755 (=> (not res!971414) (not e!811578))))

(assert (=> b!1438755 (= res!971414 (validKeyInArray!0 (select (arr!47183 a!2862) j!93)))))

(declare-fun b!1438756 () Bool)

(declare-fun res!971412 () Bool)

(assert (=> b!1438756 (=> (not res!971412) (not e!811578))))

(assert (=> b!1438756 (= res!971412 (and (= (size!47734 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47734 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47734 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124392 res!971407) b!1438756))

(assert (= (and b!1438756 res!971412) b!1438752))

(assert (= (and b!1438752 res!971415) b!1438755))

(assert (= (and b!1438755 res!971414) b!1438753))

(assert (= (and b!1438753 res!971410) b!1438748))

(assert (= (and b!1438748 res!971409) b!1438751))

(assert (= (and b!1438751 res!971413) b!1438749))

(assert (= (and b!1438749 res!971408) b!1438750))

(assert (= (and b!1438750 res!971411) b!1438754))

(declare-fun m!1327931 () Bool)

(assert (=> b!1438750 m!1327931))

(assert (=> b!1438750 m!1327931))

(declare-fun m!1327933 () Bool)

(assert (=> b!1438750 m!1327933))

(declare-fun m!1327935 () Bool)

(assert (=> start!124392 m!1327935))

(declare-fun m!1327937 () Bool)

(assert (=> start!124392 m!1327937))

(declare-fun m!1327939 () Bool)

(assert (=> b!1438752 m!1327939))

(assert (=> b!1438752 m!1327939))

(declare-fun m!1327941 () Bool)

(assert (=> b!1438752 m!1327941))

(declare-fun m!1327943 () Bool)

(assert (=> b!1438754 m!1327943))

(declare-fun m!1327945 () Bool)

(assert (=> b!1438754 m!1327945))

(assert (=> b!1438754 m!1327945))

(declare-fun m!1327947 () Bool)

(assert (=> b!1438754 m!1327947))

(assert (=> b!1438754 m!1327947))

(assert (=> b!1438754 m!1327945))

(declare-fun m!1327949 () Bool)

(assert (=> b!1438754 m!1327949))

(assert (=> b!1438751 m!1327943))

(declare-fun m!1327951 () Bool)

(assert (=> b!1438751 m!1327951))

(declare-fun m!1327953 () Bool)

(assert (=> b!1438753 m!1327953))

(assert (=> b!1438755 m!1327931))

(assert (=> b!1438755 m!1327931))

(declare-fun m!1327955 () Bool)

(assert (=> b!1438755 m!1327955))

(assert (=> b!1438749 m!1327931))

(assert (=> b!1438749 m!1327931))

(declare-fun m!1327957 () Bool)

(assert (=> b!1438749 m!1327957))

(assert (=> b!1438749 m!1327957))

(assert (=> b!1438749 m!1327931))

(declare-fun m!1327959 () Bool)

(assert (=> b!1438749 m!1327959))

(declare-fun m!1327961 () Bool)

(assert (=> b!1438748 m!1327961))

(check-sat (not b!1438750) (not b!1438749) (not b!1438752) (not b!1438753) (not start!124392) (not b!1438755) (not b!1438754) (not b!1438748))
(check-sat)
