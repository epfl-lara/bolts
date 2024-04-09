; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125616 () Bool)

(assert start!125616)

(declare-fun b!1469233 () Bool)

(declare-fun e!824883 () Bool)

(declare-fun e!824881 () Bool)

(assert (=> b!1469233 (= e!824883 e!824881)))

(declare-fun res!997855 () Bool)

(assert (=> b!1469233 (=> (not res!997855) (not e!824881))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12037 0))(
  ( (MissingZero!12037 (index!50539 (_ BitVec 32))) (Found!12037 (index!50540 (_ BitVec 32))) (Intermediate!12037 (undefined!12849 Bool) (index!50541 (_ BitVec 32)) (x!132121 (_ BitVec 32))) (Undefined!12037) (MissingVacant!12037 (index!50542 (_ BitVec 32))) )
))
(declare-fun lt!642457 () SeekEntryResult!12037)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469233 (= res!997855 (= lt!642457 (Intermediate!12037 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!98981 0))(
  ( (array!98982 (arr!47774 (Array (_ BitVec 32) (_ BitVec 64))) (size!48325 (_ BitVec 32))) )
))
(declare-fun lt!642454 () array!98981)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!642456 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98981 (_ BitVec 32)) SeekEntryResult!12037)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469233 (= lt!642457 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642456 mask!2687) lt!642456 lt!642454 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98981)

(assert (=> b!1469233 (= lt!642456 (select (store (arr!47774 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1469234 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!824882 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98981 (_ BitVec 32)) SeekEntryResult!12037)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98981 (_ BitVec 32)) SeekEntryResult!12037)

(assert (=> b!1469234 (= e!824882 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642456 lt!642454 mask!2687) (seekEntryOrOpen!0 lt!642456 lt!642454 mask!2687))))))

(declare-fun b!1469235 () Bool)

(declare-fun res!997854 () Bool)

(assert (=> b!1469235 (=> (not res!997854) (not e!824883))))

(declare-fun lt!642455 () SeekEntryResult!12037)

(assert (=> b!1469235 (= res!997854 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47774 a!2862) j!93) a!2862 mask!2687) lt!642455))))

(declare-fun b!1469236 () Bool)

(declare-fun res!997861 () Bool)

(declare-fun e!824884 () Bool)

(assert (=> b!1469236 (=> (not res!997861) (not e!824884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469236 (= res!997861 (validKeyInArray!0 (select (arr!47774 a!2862) i!1006)))))

(declare-fun b!1469237 () Bool)

(declare-fun res!997860 () Bool)

(assert (=> b!1469237 (=> (not res!997860) (not e!824884))))

(assert (=> b!1469237 (= res!997860 (validKeyInArray!0 (select (arr!47774 a!2862) j!93)))))

(declare-fun b!1469238 () Bool)

(declare-fun res!997857 () Bool)

(assert (=> b!1469238 (=> (not res!997857) (not e!824884))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469238 (= res!997857 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48325 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48325 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48325 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469239 () Bool)

(declare-fun res!997853 () Bool)

(assert (=> b!1469239 (=> (not res!997853) (not e!824884))))

(declare-datatypes ((List!34455 0))(
  ( (Nil!34452) (Cons!34451 (h!35801 (_ BitVec 64)) (t!49156 List!34455)) )
))
(declare-fun arrayNoDuplicates!0 (array!98981 (_ BitVec 32) List!34455) Bool)

(assert (=> b!1469239 (= res!997853 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34452))))

(declare-fun b!1469240 () Bool)

(declare-fun e!824880 () Bool)

(assert (=> b!1469240 (= e!824880 e!824883)))

(declare-fun res!997863 () Bool)

(assert (=> b!1469240 (=> (not res!997863) (not e!824883))))

(assert (=> b!1469240 (= res!997863 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47774 a!2862) j!93) mask!2687) (select (arr!47774 a!2862) j!93) a!2862 mask!2687) lt!642455))))

(assert (=> b!1469240 (= lt!642455 (Intermediate!12037 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469241 () Bool)

(declare-fun res!997862 () Bool)

(assert (=> b!1469241 (=> (not res!997862) (not e!824884))))

(assert (=> b!1469241 (= res!997862 (and (= (size!48325 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48325 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48325 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!997858 () Bool)

(assert (=> start!125616 (=> (not res!997858) (not e!824884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125616 (= res!997858 (validMask!0 mask!2687))))

(assert (=> start!125616 e!824884))

(assert (=> start!125616 true))

(declare-fun array_inv!36719 (array!98981) Bool)

(assert (=> start!125616 (array_inv!36719 a!2862)))

(declare-fun b!1469242 () Bool)

(assert (=> b!1469242 (= e!824882 (not (= lt!642457 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642456 lt!642454 mask!2687))))))

(declare-fun b!1469243 () Bool)

(declare-fun res!997856 () Bool)

(assert (=> b!1469243 (=> (not res!997856) (not e!824884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98981 (_ BitVec 32)) Bool)

(assert (=> b!1469243 (= res!997856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469244 () Bool)

(assert (=> b!1469244 (= e!824881 false)))

(declare-fun lt!642453 () Bool)

(assert (=> b!1469244 (= lt!642453 e!824882)))

(declare-fun c!135203 () Bool)

(assert (=> b!1469244 (= c!135203 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469245 () Bool)

(assert (=> b!1469245 (= e!824884 e!824880)))

(declare-fun res!997859 () Bool)

(assert (=> b!1469245 (=> (not res!997859) (not e!824880))))

(assert (=> b!1469245 (= res!997859 (= (select (store (arr!47774 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469245 (= lt!642454 (array!98982 (store (arr!47774 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48325 a!2862)))))

(assert (= (and start!125616 res!997858) b!1469241))

(assert (= (and b!1469241 res!997862) b!1469236))

(assert (= (and b!1469236 res!997861) b!1469237))

(assert (= (and b!1469237 res!997860) b!1469243))

(assert (= (and b!1469243 res!997856) b!1469239))

(assert (= (and b!1469239 res!997853) b!1469238))

(assert (= (and b!1469238 res!997857) b!1469245))

(assert (= (and b!1469245 res!997859) b!1469240))

(assert (= (and b!1469240 res!997863) b!1469235))

(assert (= (and b!1469235 res!997854) b!1469233))

(assert (= (and b!1469233 res!997855) b!1469244))

(assert (= (and b!1469244 c!135203) b!1469242))

(assert (= (and b!1469244 (not c!135203)) b!1469234))

(declare-fun m!1356473 () Bool)

(assert (=> b!1469245 m!1356473))

(declare-fun m!1356475 () Bool)

(assert (=> b!1469245 m!1356475))

(declare-fun m!1356477 () Bool)

(assert (=> b!1469236 m!1356477))

(assert (=> b!1469236 m!1356477))

(declare-fun m!1356479 () Bool)

(assert (=> b!1469236 m!1356479))

(declare-fun m!1356481 () Bool)

(assert (=> start!125616 m!1356481))

(declare-fun m!1356483 () Bool)

(assert (=> start!125616 m!1356483))

(declare-fun m!1356485 () Bool)

(assert (=> b!1469239 m!1356485))

(declare-fun m!1356487 () Bool)

(assert (=> b!1469234 m!1356487))

(declare-fun m!1356489 () Bool)

(assert (=> b!1469234 m!1356489))

(declare-fun m!1356491 () Bool)

(assert (=> b!1469235 m!1356491))

(assert (=> b!1469235 m!1356491))

(declare-fun m!1356493 () Bool)

(assert (=> b!1469235 m!1356493))

(declare-fun m!1356495 () Bool)

(assert (=> b!1469233 m!1356495))

(assert (=> b!1469233 m!1356495))

(declare-fun m!1356497 () Bool)

(assert (=> b!1469233 m!1356497))

(assert (=> b!1469233 m!1356473))

(declare-fun m!1356499 () Bool)

(assert (=> b!1469233 m!1356499))

(assert (=> b!1469240 m!1356491))

(assert (=> b!1469240 m!1356491))

(declare-fun m!1356501 () Bool)

(assert (=> b!1469240 m!1356501))

(assert (=> b!1469240 m!1356501))

(assert (=> b!1469240 m!1356491))

(declare-fun m!1356503 () Bool)

(assert (=> b!1469240 m!1356503))

(declare-fun m!1356505 () Bool)

(assert (=> b!1469243 m!1356505))

(assert (=> b!1469237 m!1356491))

(assert (=> b!1469237 m!1356491))

(declare-fun m!1356507 () Bool)

(assert (=> b!1469237 m!1356507))

(declare-fun m!1356509 () Bool)

(assert (=> b!1469242 m!1356509))

(check-sat (not b!1469236) (not b!1469242) (not b!1469240) (not b!1469234) (not b!1469235) (not start!125616) (not b!1469243) (not b!1469237) (not b!1469233) (not b!1469239))
(check-sat)
