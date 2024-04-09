; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124998 () Bool)

(assert start!124998)

(declare-fun b!1452324 () Bool)

(declare-fun res!983554 () Bool)

(declare-fun e!817608 () Bool)

(assert (=> b!1452324 (=> (not res!983554) (not e!817608))))

(declare-datatypes ((array!98363 0))(
  ( (array!98364 (arr!47465 (Array (_ BitVec 32) (_ BitVec 64))) (size!48016 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98363)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98363 (_ BitVec 32)) Bool)

(assert (=> b!1452324 (= res!983554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452325 () Bool)

(declare-fun res!983556 () Bool)

(assert (=> b!1452325 (=> (not res!983556) (not e!817608))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452325 (= res!983556 (validKeyInArray!0 (select (arr!47465 a!2862) j!93)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!817606 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1452327 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1452327 (= e!817606 (and (or (= (select (arr!47465 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47465 a!2862) intermediateBeforeIndex!19) (select (arr!47465 a!2862) j!93))) (or (and (= (select (arr!47465 a!2862) index!646) (select (store (arr!47465 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47465 a!2862) index!646) (select (arr!47465 a!2862) j!93))) (= (select (arr!47465 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47465 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452328 () Bool)

(declare-fun res!983555 () Bool)

(declare-fun e!817604 () Bool)

(assert (=> b!1452328 (=> (not res!983555) (not e!817604))))

(declare-fun e!817609 () Bool)

(assert (=> b!1452328 (= res!983555 e!817609)))

(declare-fun c!133898 () Bool)

(assert (=> b!1452328 (= c!133898 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452329 () Bool)

(declare-fun e!817607 () Bool)

(assert (=> b!1452329 (= e!817608 e!817607)))

(declare-fun res!983563 () Bool)

(assert (=> b!1452329 (=> (not res!983563) (not e!817607))))

(assert (=> b!1452329 (= res!983563 (= (select (store (arr!47465 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636876 () array!98363)

(assert (=> b!1452329 (= lt!636876 (array!98364 (store (arr!47465 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48016 a!2862)))))

(declare-fun b!1452330 () Bool)

(declare-fun res!983567 () Bool)

(assert (=> b!1452330 (=> (not res!983567) (not e!817608))))

(declare-datatypes ((List!34146 0))(
  ( (Nil!34143) (Cons!34142 (h!35492 (_ BitVec 64)) (t!48847 List!34146)) )
))
(declare-fun arrayNoDuplicates!0 (array!98363 (_ BitVec 32) List!34146) Bool)

(assert (=> b!1452330 (= res!983567 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34143))))

(declare-fun b!1452331 () Bool)

(declare-fun res!983559 () Bool)

(assert (=> b!1452331 (=> (not res!983559) (not e!817606))))

(declare-datatypes ((SeekEntryResult!11740 0))(
  ( (MissingZero!11740 (index!49351 (_ BitVec 32))) (Found!11740 (index!49352 (_ BitVec 32))) (Intermediate!11740 (undefined!12552 Bool) (index!49353 (_ BitVec 32)) (x!131000 (_ BitVec 32))) (Undefined!11740) (MissingVacant!11740 (index!49354 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98363 (_ BitVec 32)) SeekEntryResult!11740)

(assert (=> b!1452331 (= res!983559 (= (seekEntryOrOpen!0 (select (arr!47465 a!2862) j!93) a!2862 mask!2687) (Found!11740 j!93)))))

(declare-fun lt!636877 () SeekEntryResult!11740)

(declare-fun b!1452332 () Bool)

(declare-fun lt!636873 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98363 (_ BitVec 32)) SeekEntryResult!11740)

(assert (=> b!1452332 (= e!817609 (= lt!636877 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636873 lt!636876 mask!2687)))))

(declare-fun b!1452333 () Bool)

(declare-fun e!817610 () Bool)

(assert (=> b!1452333 (= e!817610 e!817604)))

(declare-fun res!983562 () Bool)

(assert (=> b!1452333 (=> (not res!983562) (not e!817604))))

(assert (=> b!1452333 (= res!983562 (= lt!636877 (Intermediate!11740 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452333 (= lt!636877 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636873 mask!2687) lt!636873 lt!636876 mask!2687))))

(assert (=> b!1452333 (= lt!636873 (select (store (arr!47465 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452334 () Bool)

(assert (=> b!1452334 (= e!817607 e!817610)))

(declare-fun res!983566 () Bool)

(assert (=> b!1452334 (=> (not res!983566) (not e!817610))))

(declare-fun lt!636875 () SeekEntryResult!11740)

(assert (=> b!1452334 (= res!983566 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47465 a!2862) j!93) mask!2687) (select (arr!47465 a!2862) j!93) a!2862 mask!2687) lt!636875))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452334 (= lt!636875 (Intermediate!11740 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452335 () Bool)

(declare-fun res!983557 () Bool)

(assert (=> b!1452335 (=> (not res!983557) (not e!817610))))

(assert (=> b!1452335 (= res!983557 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47465 a!2862) j!93) a!2862 mask!2687) lt!636875))))

(declare-fun b!1452336 () Bool)

(declare-fun res!983560 () Bool)

(assert (=> b!1452336 (=> (not res!983560) (not e!817608))))

(assert (=> b!1452336 (= res!983560 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48016 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48016 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48016 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!983565 () Bool)

(assert (=> start!124998 (=> (not res!983565) (not e!817608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124998 (= res!983565 (validMask!0 mask!2687))))

(assert (=> start!124998 e!817608))

(assert (=> start!124998 true))

(declare-fun array_inv!36410 (array!98363) Bool)

(assert (=> start!124998 (array_inv!36410 a!2862)))

(declare-fun b!1452326 () Bool)

(declare-fun res!983561 () Bool)

(assert (=> b!1452326 (=> (not res!983561) (not e!817604))))

(assert (=> b!1452326 (= res!983561 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452337 () Bool)

(declare-fun res!983558 () Bool)

(assert (=> b!1452337 (=> (not res!983558) (not e!817608))))

(assert (=> b!1452337 (= res!983558 (and (= (size!48016 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48016 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48016 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452338 () Bool)

(assert (=> b!1452338 (= e!817604 (not true))))

(assert (=> b!1452338 e!817606))

(declare-fun res!983564 () Bool)

(assert (=> b!1452338 (=> (not res!983564) (not e!817606))))

(assert (=> b!1452338 (= res!983564 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48924 0))(
  ( (Unit!48925) )
))
(declare-fun lt!636874 () Unit!48924)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98363 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48924)

(assert (=> b!1452338 (= lt!636874 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452339 () Bool)

(declare-fun res!983568 () Bool)

(assert (=> b!1452339 (=> (not res!983568) (not e!817608))))

(assert (=> b!1452339 (= res!983568 (validKeyInArray!0 (select (arr!47465 a!2862) i!1006)))))

(declare-fun b!1452340 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98363 (_ BitVec 32)) SeekEntryResult!11740)

(assert (=> b!1452340 (= e!817609 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636873 lt!636876 mask!2687) (seekEntryOrOpen!0 lt!636873 lt!636876 mask!2687)))))

(assert (= (and start!124998 res!983565) b!1452337))

(assert (= (and b!1452337 res!983558) b!1452339))

(assert (= (and b!1452339 res!983568) b!1452325))

(assert (= (and b!1452325 res!983556) b!1452324))

(assert (= (and b!1452324 res!983554) b!1452330))

(assert (= (and b!1452330 res!983567) b!1452336))

(assert (= (and b!1452336 res!983560) b!1452329))

(assert (= (and b!1452329 res!983563) b!1452334))

(assert (= (and b!1452334 res!983566) b!1452335))

(assert (= (and b!1452335 res!983557) b!1452333))

(assert (= (and b!1452333 res!983562) b!1452328))

(assert (= (and b!1452328 c!133898) b!1452332))

(assert (= (and b!1452328 (not c!133898)) b!1452340))

(assert (= (and b!1452328 res!983555) b!1452326))

(assert (= (and b!1452326 res!983561) b!1452338))

(assert (= (and b!1452338 res!983564) b!1452331))

(assert (= (and b!1452331 res!983559) b!1452327))

(declare-fun m!1340957 () Bool)

(assert (=> b!1452335 m!1340957))

(assert (=> b!1452335 m!1340957))

(declare-fun m!1340959 () Bool)

(assert (=> b!1452335 m!1340959))

(declare-fun m!1340961 () Bool)

(assert (=> b!1452339 m!1340961))

(assert (=> b!1452339 m!1340961))

(declare-fun m!1340963 () Bool)

(assert (=> b!1452339 m!1340963))

(assert (=> b!1452325 m!1340957))

(assert (=> b!1452325 m!1340957))

(declare-fun m!1340965 () Bool)

(assert (=> b!1452325 m!1340965))

(assert (=> b!1452331 m!1340957))

(assert (=> b!1452331 m!1340957))

(declare-fun m!1340967 () Bool)

(assert (=> b!1452331 m!1340967))

(declare-fun m!1340969 () Bool)

(assert (=> b!1452329 m!1340969))

(declare-fun m!1340971 () Bool)

(assert (=> b!1452329 m!1340971))

(declare-fun m!1340973 () Bool)

(assert (=> b!1452332 m!1340973))

(assert (=> b!1452327 m!1340969))

(declare-fun m!1340975 () Bool)

(assert (=> b!1452327 m!1340975))

(declare-fun m!1340977 () Bool)

(assert (=> b!1452327 m!1340977))

(declare-fun m!1340979 () Bool)

(assert (=> b!1452327 m!1340979))

(assert (=> b!1452327 m!1340957))

(declare-fun m!1340981 () Bool)

(assert (=> start!124998 m!1340981))

(declare-fun m!1340983 () Bool)

(assert (=> start!124998 m!1340983))

(declare-fun m!1340985 () Bool)

(assert (=> b!1452340 m!1340985))

(declare-fun m!1340987 () Bool)

(assert (=> b!1452340 m!1340987))

(declare-fun m!1340989 () Bool)

(assert (=> b!1452333 m!1340989))

(assert (=> b!1452333 m!1340989))

(declare-fun m!1340991 () Bool)

(assert (=> b!1452333 m!1340991))

(assert (=> b!1452333 m!1340969))

(declare-fun m!1340993 () Bool)

(assert (=> b!1452333 m!1340993))

(declare-fun m!1340995 () Bool)

(assert (=> b!1452330 m!1340995))

(assert (=> b!1452334 m!1340957))

(assert (=> b!1452334 m!1340957))

(declare-fun m!1340997 () Bool)

(assert (=> b!1452334 m!1340997))

(assert (=> b!1452334 m!1340997))

(assert (=> b!1452334 m!1340957))

(declare-fun m!1340999 () Bool)

(assert (=> b!1452334 m!1340999))

(declare-fun m!1341001 () Bool)

(assert (=> b!1452338 m!1341001))

(declare-fun m!1341003 () Bool)

(assert (=> b!1452338 m!1341003))

(declare-fun m!1341005 () Bool)

(assert (=> b!1452324 m!1341005))

(check-sat (not b!1452325) (not start!124998) (not b!1452339) (not b!1452335) (not b!1452331) (not b!1452334) (not b!1452333) (not b!1452332) (not b!1452340) (not b!1452330) (not b!1452338) (not b!1452324))
(check-sat)
