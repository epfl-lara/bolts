; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125964 () Bool)

(assert start!125964)

(declare-fun b!1474482 () Bool)

(declare-fun res!1001787 () Bool)

(declare-fun e!827307 () Bool)

(assert (=> b!1474482 (=> (not res!1001787) (not e!827307))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12121 0))(
  ( (MissingZero!12121 (index!50875 (_ BitVec 32))) (Found!12121 (index!50876 (_ BitVec 32))) (Intermediate!12121 (undefined!12933 Bool) (index!50877 (_ BitVec 32)) (x!132456 (_ BitVec 32))) (Undefined!12121) (MissingVacant!12121 (index!50878 (_ BitVec 32))) )
))
(declare-fun lt!644226 () SeekEntryResult!12121)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!99158 0))(
  ( (array!99159 (arr!47858 (Array (_ BitVec 32) (_ BitVec 64))) (size!48409 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99158)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99158 (_ BitVec 32)) SeekEntryResult!12121)

(assert (=> b!1474482 (= res!1001787 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47858 a!2862) j!93) a!2862 mask!2687) lt!644226))))

(declare-fun b!1474483 () Bool)

(declare-fun res!1001784 () Bool)

(declare-fun e!827310 () Bool)

(assert (=> b!1474483 (=> (not res!1001784) (not e!827310))))

(declare-datatypes ((List!34539 0))(
  ( (Nil!34536) (Cons!34535 (h!35894 (_ BitVec 64)) (t!49240 List!34539)) )
))
(declare-fun arrayNoDuplicates!0 (array!99158 (_ BitVec 32) List!34539) Bool)

(assert (=> b!1474483 (= res!1001784 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34536))))

(declare-fun b!1474484 () Bool)

(declare-fun res!1001785 () Bool)

(assert (=> b!1474484 (=> (not res!1001785) (not e!827310))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1474484 (= res!1001785 (and (= (size!48409 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48409 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48409 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1474485 () Bool)

(declare-fun e!827306 () Bool)

(assert (=> b!1474485 (= e!827310 e!827306)))

(declare-fun res!1001793 () Bool)

(assert (=> b!1474485 (=> (not res!1001793) (not e!827306))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1474485 (= res!1001793 (= (select (store (arr!47858 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!644227 () array!99158)

(assert (=> b!1474485 (= lt!644227 (array!99159 (store (arr!47858 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48409 a!2862)))))

(declare-fun b!1474486 () Bool)

(declare-fun res!1001788 () Bool)

(declare-fun e!827308 () Bool)

(assert (=> b!1474486 (=> (not res!1001788) (not e!827308))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99158 (_ BitVec 32)) SeekEntryResult!12121)

(assert (=> b!1474486 (= res!1001788 (= (seekEntryOrOpen!0 (select (arr!47858 a!2862) j!93) a!2862 mask!2687) (Found!12121 j!93)))))

(declare-fun b!1474487 () Bool)

(declare-fun res!1001791 () Bool)

(assert (=> b!1474487 (=> (not res!1001791) (not e!827310))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474487 (= res!1001791 (validKeyInArray!0 (select (arr!47858 a!2862) i!1006)))))

(declare-fun b!1474489 () Bool)

(declare-fun e!827309 () Bool)

(assert (=> b!1474489 (= e!827309 (not true))))

(assert (=> b!1474489 e!827308))

(declare-fun res!1001783 () Bool)

(assert (=> b!1474489 (=> (not res!1001783) (not e!827308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99158 (_ BitVec 32)) Bool)

(assert (=> b!1474489 (= res!1001783 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49530 0))(
  ( (Unit!49531) )
))
(declare-fun lt!644229 () Unit!49530)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99158 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49530)

(assert (=> b!1474489 (= lt!644229 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474490 () Bool)

(declare-fun res!1001790 () Bool)

(assert (=> b!1474490 (=> (not res!1001790) (not e!827310))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1474490 (= res!1001790 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48409 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48409 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48409 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474491 () Bool)

(declare-fun res!1001789 () Bool)

(assert (=> b!1474491 (=> (not res!1001789) (not e!827310))))

(assert (=> b!1474491 (= res!1001789 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1474492 () Bool)

(assert (=> b!1474492 (= e!827307 e!827309)))

(declare-fun res!1001792 () Bool)

(assert (=> b!1474492 (=> (not res!1001792) (not e!827309))))

(declare-fun lt!644228 () SeekEntryResult!12121)

(assert (=> b!1474492 (= res!1001792 (= lt!644228 (Intermediate!12121 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!644230 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474492 (= lt!644228 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644230 mask!2687) lt!644230 lt!644227 mask!2687))))

(assert (=> b!1474492 (= lt!644230 (select (store (arr!47858 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1474493 () Bool)

(declare-fun e!827312 () Bool)

(assert (=> b!1474493 (= e!827312 (= lt!644228 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644230 lt!644227 mask!2687)))))

(declare-fun b!1474488 () Bool)

(assert (=> b!1474488 (= e!827308 (or (= (select (arr!47858 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47858 a!2862) intermediateBeforeIndex!19) (select (arr!47858 a!2862) j!93))))))

(declare-fun res!1001780 () Bool)

(assert (=> start!125964 (=> (not res!1001780) (not e!827310))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125964 (= res!1001780 (validMask!0 mask!2687))))

(assert (=> start!125964 e!827310))

(assert (=> start!125964 true))

(declare-fun array_inv!36803 (array!99158) Bool)

(assert (=> start!125964 (array_inv!36803 a!2862)))

(declare-fun b!1474494 () Bool)

(declare-fun res!1001781 () Bool)

(assert (=> b!1474494 (=> (not res!1001781) (not e!827310))))

(assert (=> b!1474494 (= res!1001781 (validKeyInArray!0 (select (arr!47858 a!2862) j!93)))))

(declare-fun b!1474495 () Bool)

(assert (=> b!1474495 (= e!827306 e!827307)))

(declare-fun res!1001786 () Bool)

(assert (=> b!1474495 (=> (not res!1001786) (not e!827307))))

(assert (=> b!1474495 (= res!1001786 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47858 a!2862) j!93) mask!2687) (select (arr!47858 a!2862) j!93) a!2862 mask!2687) lt!644226))))

(assert (=> b!1474495 (= lt!644226 (Intermediate!12121 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474496 () Bool)

(declare-fun res!1001779 () Bool)

(assert (=> b!1474496 (=> (not res!1001779) (not e!827309))))

(assert (=> b!1474496 (= res!1001779 e!827312)))

(declare-fun c!135869 () Bool)

(assert (=> b!1474496 (= c!135869 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474497 () Bool)

(declare-fun res!1001782 () Bool)

(assert (=> b!1474497 (=> (not res!1001782) (not e!827309))))

(assert (=> b!1474497 (= res!1001782 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474498 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99158 (_ BitVec 32)) SeekEntryResult!12121)

(assert (=> b!1474498 (= e!827312 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644230 lt!644227 mask!2687) (seekEntryOrOpen!0 lt!644230 lt!644227 mask!2687)))))

(assert (= (and start!125964 res!1001780) b!1474484))

(assert (= (and b!1474484 res!1001785) b!1474487))

(assert (= (and b!1474487 res!1001791) b!1474494))

(assert (= (and b!1474494 res!1001781) b!1474491))

(assert (= (and b!1474491 res!1001789) b!1474483))

(assert (= (and b!1474483 res!1001784) b!1474490))

(assert (= (and b!1474490 res!1001790) b!1474485))

(assert (= (and b!1474485 res!1001793) b!1474495))

(assert (= (and b!1474495 res!1001786) b!1474482))

(assert (= (and b!1474482 res!1001787) b!1474492))

(assert (= (and b!1474492 res!1001792) b!1474496))

(assert (= (and b!1474496 c!135869) b!1474493))

(assert (= (and b!1474496 (not c!135869)) b!1474498))

(assert (= (and b!1474496 res!1001779) b!1474497))

(assert (= (and b!1474497 res!1001782) b!1474489))

(assert (= (and b!1474489 res!1001783) b!1474486))

(assert (= (and b!1474486 res!1001788) b!1474488))

(declare-fun m!1360975 () Bool)

(assert (=> b!1474488 m!1360975))

(declare-fun m!1360977 () Bool)

(assert (=> b!1474488 m!1360977))

(assert (=> b!1474495 m!1360977))

(assert (=> b!1474495 m!1360977))

(declare-fun m!1360979 () Bool)

(assert (=> b!1474495 m!1360979))

(assert (=> b!1474495 m!1360979))

(assert (=> b!1474495 m!1360977))

(declare-fun m!1360981 () Bool)

(assert (=> b!1474495 m!1360981))

(declare-fun m!1360983 () Bool)

(assert (=> b!1474493 m!1360983))

(declare-fun m!1360985 () Bool)

(assert (=> b!1474498 m!1360985))

(declare-fun m!1360987 () Bool)

(assert (=> b!1474498 m!1360987))

(declare-fun m!1360989 () Bool)

(assert (=> b!1474487 m!1360989))

(assert (=> b!1474487 m!1360989))

(declare-fun m!1360991 () Bool)

(assert (=> b!1474487 m!1360991))

(declare-fun m!1360993 () Bool)

(assert (=> b!1474491 m!1360993))

(declare-fun m!1360995 () Bool)

(assert (=> b!1474485 m!1360995))

(declare-fun m!1360997 () Bool)

(assert (=> b!1474485 m!1360997))

(declare-fun m!1360999 () Bool)

(assert (=> start!125964 m!1360999))

(declare-fun m!1361001 () Bool)

(assert (=> start!125964 m!1361001))

(declare-fun m!1361003 () Bool)

(assert (=> b!1474492 m!1361003))

(assert (=> b!1474492 m!1361003))

(declare-fun m!1361005 () Bool)

(assert (=> b!1474492 m!1361005))

(assert (=> b!1474492 m!1360995))

(declare-fun m!1361007 () Bool)

(assert (=> b!1474492 m!1361007))

(assert (=> b!1474486 m!1360977))

(assert (=> b!1474486 m!1360977))

(declare-fun m!1361009 () Bool)

(assert (=> b!1474486 m!1361009))

(assert (=> b!1474482 m!1360977))

(assert (=> b!1474482 m!1360977))

(declare-fun m!1361011 () Bool)

(assert (=> b!1474482 m!1361011))

(declare-fun m!1361013 () Bool)

(assert (=> b!1474483 m!1361013))

(assert (=> b!1474494 m!1360977))

(assert (=> b!1474494 m!1360977))

(declare-fun m!1361015 () Bool)

(assert (=> b!1474494 m!1361015))

(declare-fun m!1361017 () Bool)

(assert (=> b!1474489 m!1361017))

(declare-fun m!1361019 () Bool)

(assert (=> b!1474489 m!1361019))

(check-sat (not b!1474489) (not b!1474498) (not b!1474494) (not b!1474482) (not b!1474493) (not b!1474486) (not b!1474491) (not b!1474483) (not b!1474495) (not b!1474492) (not b!1474487) (not start!125964))
(check-sat)
