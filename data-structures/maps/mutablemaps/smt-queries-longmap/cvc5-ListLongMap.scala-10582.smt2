; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124672 () Bool)

(assert start!124672)

(declare-fun b!1443390 () Bool)

(declare-fun res!975607 () Bool)

(declare-fun e!813399 () Bool)

(assert (=> b!1443390 (=> (not res!975607) (not e!813399))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98037 0))(
  ( (array!98038 (arr!47302 (Array (_ BitVec 32) (_ BitVec 64))) (size!47853 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98037)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443390 (= res!975607 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47853 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47853 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47853 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443391 () Bool)

(declare-fun res!975598 () Bool)

(assert (=> b!1443391 (=> (not res!975598) (not e!813399))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443391 (= res!975598 (validKeyInArray!0 (select (arr!47302 a!2862) i!1006)))))

(declare-fun b!1443392 () Bool)

(declare-fun res!975608 () Bool)

(assert (=> b!1443392 (=> (not res!975608) (not e!813399))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1443392 (= res!975608 (and (= (size!47853 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47853 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47853 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443393 () Bool)

(declare-fun res!975602 () Bool)

(assert (=> b!1443393 (=> (not res!975602) (not e!813399))))

(assert (=> b!1443393 (= res!975602 (validKeyInArray!0 (select (arr!47302 a!2862) j!93)))))

(declare-fun res!975604 () Bool)

(assert (=> start!124672 (=> (not res!975604) (not e!813399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124672 (= res!975604 (validMask!0 mask!2687))))

(assert (=> start!124672 e!813399))

(assert (=> start!124672 true))

(declare-fun array_inv!36247 (array!98037) Bool)

(assert (=> start!124672 (array_inv!36247 a!2862)))

(declare-fun b!1443394 () Bool)

(declare-fun res!975600 () Bool)

(declare-fun e!813401 () Bool)

(assert (=> b!1443394 (=> res!975600 e!813401)))

(declare-datatypes ((SeekEntryResult!11577 0))(
  ( (MissingZero!11577 (index!48699 (_ BitVec 32))) (Found!11577 (index!48700 (_ BitVec 32))) (Intermediate!11577 (undefined!12389 Bool) (index!48701 (_ BitVec 32)) (x!130405 (_ BitVec 32))) (Undefined!11577) (MissingVacant!11577 (index!48702 (_ BitVec 32))) )
))
(declare-fun lt!633810 () SeekEntryResult!11577)

(declare-fun lt!633809 () array!98037)

(declare-fun lt!633811 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98037 (_ BitVec 32)) SeekEntryResult!11577)

(assert (=> b!1443394 (= res!975600 (not (= lt!633810 (seekEntryOrOpen!0 lt!633811 lt!633809 mask!2687))))))

(declare-fun e!813398 () Bool)

(declare-fun b!1443395 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98037 (_ BitVec 32)) SeekEntryResult!11577)

(assert (=> b!1443395 (= e!813398 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633811 lt!633809 mask!2687) (seekEntryOrOpen!0 lt!633811 lt!633809 mask!2687)))))

(declare-fun b!1443396 () Bool)

(declare-fun res!975612 () Bool)

(declare-fun e!813402 () Bool)

(assert (=> b!1443396 (=> (not res!975612) (not e!813402))))

(declare-fun lt!633814 () SeekEntryResult!11577)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98037 (_ BitVec 32)) SeekEntryResult!11577)

(assert (=> b!1443396 (= res!975612 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47302 a!2862) j!93) a!2862 mask!2687) lt!633814))))

(declare-fun b!1443397 () Bool)

(declare-fun res!975611 () Bool)

(declare-fun e!813400 () Bool)

(assert (=> b!1443397 (=> (not res!975611) (not e!813400))))

(assert (=> b!1443397 (= res!975611 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1443398 () Bool)

(declare-fun res!975601 () Bool)

(assert (=> b!1443398 (=> (not res!975601) (not e!813399))))

(declare-datatypes ((List!33983 0))(
  ( (Nil!33980) (Cons!33979 (h!35329 (_ BitVec 64)) (t!48684 List!33983)) )
))
(declare-fun arrayNoDuplicates!0 (array!98037 (_ BitVec 32) List!33983) Bool)

(assert (=> b!1443398 (= res!975601 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33980))))

(declare-fun b!1443399 () Bool)

(declare-fun res!975599 () Bool)

(assert (=> b!1443399 (=> (not res!975599) (not e!813400))))

(assert (=> b!1443399 (= res!975599 e!813398)))

(declare-fun c!133409 () Bool)

(assert (=> b!1443399 (= c!133409 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443400 () Bool)

(declare-fun e!813404 () Bool)

(assert (=> b!1443400 (= e!813399 e!813404)))

(declare-fun res!975610 () Bool)

(assert (=> b!1443400 (=> (not res!975610) (not e!813404))))

(assert (=> b!1443400 (= res!975610 (= (select (store (arr!47302 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443400 (= lt!633809 (array!98038 (store (arr!47302 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47853 a!2862)))))

(declare-fun b!1443401 () Bool)

(assert (=> b!1443401 (= e!813404 e!813402)))

(declare-fun res!975605 () Bool)

(assert (=> b!1443401 (=> (not res!975605) (not e!813402))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443401 (= res!975605 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47302 a!2862) j!93) mask!2687) (select (arr!47302 a!2862) j!93) a!2862 mask!2687) lt!633814))))

(assert (=> b!1443401 (= lt!633814 (Intermediate!11577 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443402 () Bool)

(assert (=> b!1443402 (= e!813400 (not e!813401))))

(declare-fun res!975603 () Bool)

(assert (=> b!1443402 (=> res!975603 e!813401)))

(assert (=> b!1443402 (= res!975603 (or (not (= (select (arr!47302 a!2862) index!646) (select (store (arr!47302 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47302 a!2862) index!646) (select (arr!47302 a!2862) j!93)))))))

(assert (=> b!1443402 (and (= lt!633810 (Found!11577 j!93)) (or (= (select (arr!47302 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47302 a!2862) intermediateBeforeIndex!19) (select (arr!47302 a!2862) j!93))))))

(assert (=> b!1443402 (= lt!633810 (seekEntryOrOpen!0 (select (arr!47302 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98037 (_ BitVec 32)) Bool)

(assert (=> b!1443402 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48598 0))(
  ( (Unit!48599) )
))
(declare-fun lt!633812 () Unit!48598)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98037 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48598)

(assert (=> b!1443402 (= lt!633812 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443403 () Bool)

(declare-fun res!975609 () Bool)

(assert (=> b!1443403 (=> (not res!975609) (not e!813399))))

(assert (=> b!1443403 (= res!975609 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443404 () Bool)

(assert (=> b!1443404 (= e!813402 e!813400)))

(declare-fun res!975606 () Bool)

(assert (=> b!1443404 (=> (not res!975606) (not e!813400))))

(declare-fun lt!633813 () SeekEntryResult!11577)

(assert (=> b!1443404 (= res!975606 (= lt!633813 (Intermediate!11577 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1443404 (= lt!633813 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633811 mask!2687) lt!633811 lt!633809 mask!2687))))

(assert (=> b!1443404 (= lt!633811 (select (store (arr!47302 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443405 () Bool)

(assert (=> b!1443405 (= e!813401 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1443406 () Bool)

(assert (=> b!1443406 (= e!813398 (= lt!633813 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633811 lt!633809 mask!2687)))))

(assert (= (and start!124672 res!975604) b!1443392))

(assert (= (and b!1443392 res!975608) b!1443391))

(assert (= (and b!1443391 res!975598) b!1443393))

(assert (= (and b!1443393 res!975602) b!1443403))

(assert (= (and b!1443403 res!975609) b!1443398))

(assert (= (and b!1443398 res!975601) b!1443390))

(assert (= (and b!1443390 res!975607) b!1443400))

(assert (= (and b!1443400 res!975610) b!1443401))

(assert (= (and b!1443401 res!975605) b!1443396))

(assert (= (and b!1443396 res!975612) b!1443404))

(assert (= (and b!1443404 res!975606) b!1443399))

(assert (= (and b!1443399 c!133409) b!1443406))

(assert (= (and b!1443399 (not c!133409)) b!1443395))

(assert (= (and b!1443399 res!975599) b!1443397))

(assert (= (and b!1443397 res!975611) b!1443402))

(assert (= (and b!1443402 (not res!975603)) b!1443394))

(assert (= (and b!1443394 (not res!975600)) b!1443405))

(declare-fun m!1332525 () Bool)

(assert (=> b!1443398 m!1332525))

(declare-fun m!1332527 () Bool)

(assert (=> b!1443406 m!1332527))

(declare-fun m!1332529 () Bool)

(assert (=> b!1443393 m!1332529))

(assert (=> b!1443393 m!1332529))

(declare-fun m!1332531 () Bool)

(assert (=> b!1443393 m!1332531))

(assert (=> b!1443401 m!1332529))

(assert (=> b!1443401 m!1332529))

(declare-fun m!1332533 () Bool)

(assert (=> b!1443401 m!1332533))

(assert (=> b!1443401 m!1332533))

(assert (=> b!1443401 m!1332529))

(declare-fun m!1332535 () Bool)

(assert (=> b!1443401 m!1332535))

(declare-fun m!1332537 () Bool)

(assert (=> b!1443395 m!1332537))

(declare-fun m!1332539 () Bool)

(assert (=> b!1443395 m!1332539))

(assert (=> b!1443396 m!1332529))

(assert (=> b!1443396 m!1332529))

(declare-fun m!1332541 () Bool)

(assert (=> b!1443396 m!1332541))

(declare-fun m!1332543 () Bool)

(assert (=> b!1443403 m!1332543))

(declare-fun m!1332545 () Bool)

(assert (=> start!124672 m!1332545))

(declare-fun m!1332547 () Bool)

(assert (=> start!124672 m!1332547))

(declare-fun m!1332549 () Bool)

(assert (=> b!1443391 m!1332549))

(assert (=> b!1443391 m!1332549))

(declare-fun m!1332551 () Bool)

(assert (=> b!1443391 m!1332551))

(declare-fun m!1332553 () Bool)

(assert (=> b!1443400 m!1332553))

(declare-fun m!1332555 () Bool)

(assert (=> b!1443400 m!1332555))

(declare-fun m!1332557 () Bool)

(assert (=> b!1443404 m!1332557))

(assert (=> b!1443404 m!1332557))

(declare-fun m!1332559 () Bool)

(assert (=> b!1443404 m!1332559))

(assert (=> b!1443404 m!1332553))

(declare-fun m!1332561 () Bool)

(assert (=> b!1443404 m!1332561))

(declare-fun m!1332563 () Bool)

(assert (=> b!1443402 m!1332563))

(assert (=> b!1443402 m!1332553))

(declare-fun m!1332565 () Bool)

(assert (=> b!1443402 m!1332565))

(declare-fun m!1332567 () Bool)

(assert (=> b!1443402 m!1332567))

(declare-fun m!1332569 () Bool)

(assert (=> b!1443402 m!1332569))

(assert (=> b!1443402 m!1332529))

(declare-fun m!1332571 () Bool)

(assert (=> b!1443402 m!1332571))

(declare-fun m!1332573 () Bool)

(assert (=> b!1443402 m!1332573))

(assert (=> b!1443402 m!1332529))

(assert (=> b!1443394 m!1332539))

(push 1)

