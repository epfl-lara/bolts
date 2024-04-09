; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124628 () Bool)

(assert start!124628)

(declare-fun res!974599 () Bool)

(declare-fun e!812919 () Bool)

(assert (=> start!124628 (=> (not res!974599) (not e!812919))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124628 (= res!974599 (validMask!0 mask!2687))))

(assert (=> start!124628 e!812919))

(assert (=> start!124628 true))

(declare-datatypes ((array!97993 0))(
  ( (array!97994 (arr!47280 (Array (_ BitVec 32) (_ BitVec 64))) (size!47831 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97993)

(declare-fun array_inv!36225 (array!97993) Bool)

(assert (=> start!124628 (array_inv!36225 a!2862)))

(declare-fun b!1442250 () Bool)

(declare-fun e!812924 () Bool)

(assert (=> b!1442250 (= e!812919 e!812924)))

(declare-fun res!974603 () Bool)

(assert (=> b!1442250 (=> (not res!974603) (not e!812924))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1442250 (= res!974603 (= (select (store (arr!47280 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633469 () array!97993)

(assert (=> b!1442250 (= lt!633469 (array!97994 (store (arr!47280 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47831 a!2862)))))

(declare-fun b!1442251 () Bool)

(declare-fun e!812920 () Bool)

(assert (=> b!1442251 (= e!812924 e!812920)))

(declare-fun res!974593 () Bool)

(assert (=> b!1442251 (=> (not res!974593) (not e!812920))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11555 0))(
  ( (MissingZero!11555 (index!48611 (_ BitVec 32))) (Found!11555 (index!48612 (_ BitVec 32))) (Intermediate!11555 (undefined!12367 Bool) (index!48613 (_ BitVec 32)) (x!130319 (_ BitVec 32))) (Undefined!11555) (MissingVacant!11555 (index!48614 (_ BitVec 32))) )
))
(declare-fun lt!633468 () SeekEntryResult!11555)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97993 (_ BitVec 32)) SeekEntryResult!11555)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442251 (= res!974593 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47280 a!2862) j!93) mask!2687) (select (arr!47280 a!2862) j!93) a!2862 mask!2687) lt!633468))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442251 (= lt!633468 (Intermediate!11555 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442252 () Bool)

(declare-fun res!974597 () Bool)

(declare-fun e!812923 () Bool)

(assert (=> b!1442252 (=> (not res!974597) (not e!812923))))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1442252 (= res!974597 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442253 () Bool)

(declare-fun res!974598 () Bool)

(assert (=> b!1442253 (=> (not res!974598) (not e!812919))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1442253 (= res!974598 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47831 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47831 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47831 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442254 () Bool)

(declare-fun res!974604 () Bool)

(assert (=> b!1442254 (=> (not res!974604) (not e!812919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442254 (= res!974604 (validKeyInArray!0 (select (arr!47280 a!2862) j!93)))))

(declare-fun b!1442255 () Bool)

(declare-fun res!974591 () Bool)

(assert (=> b!1442255 (=> (not res!974591) (not e!812919))))

(assert (=> b!1442255 (= res!974591 (and (= (size!47831 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47831 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47831 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442256 () Bool)

(declare-fun res!974602 () Bool)

(assert (=> b!1442256 (=> (not res!974602) (not e!812919))))

(assert (=> b!1442256 (= res!974602 (validKeyInArray!0 (select (arr!47280 a!2862) i!1006)))))

(declare-fun b!1442257 () Bool)

(declare-fun res!974596 () Bool)

(assert (=> b!1442257 (=> (not res!974596) (not e!812920))))

(assert (=> b!1442257 (= res!974596 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47280 a!2862) j!93) a!2862 mask!2687) lt!633468))))

(declare-fun b!1442258 () Bool)

(assert (=> b!1442258 (= e!812923 (not (or (not (= (select (arr!47280 a!2862) index!646) (select (store (arr!47280 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47280 a!2862) index!646) (select (arr!47280 a!2862) j!93))) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(declare-fun e!812921 () Bool)

(assert (=> b!1442258 e!812921))

(declare-fun res!974601 () Bool)

(assert (=> b!1442258 (=> (not res!974601) (not e!812921))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97993 (_ BitVec 32)) Bool)

(assert (=> b!1442258 (= res!974601 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48554 0))(
  ( (Unit!48555) )
))
(declare-fun lt!633470 () Unit!48554)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97993 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48554)

(assert (=> b!1442258 (= lt!633470 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!812918 () Bool)

(declare-fun lt!633472 () (_ BitVec 64))

(declare-fun lt!633471 () SeekEntryResult!11555)

(declare-fun b!1442259 () Bool)

(assert (=> b!1442259 (= e!812918 (= lt!633471 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633472 lt!633469 mask!2687)))))

(declare-fun b!1442260 () Bool)

(declare-fun res!974590 () Bool)

(assert (=> b!1442260 (=> (not res!974590) (not e!812923))))

(assert (=> b!1442260 (= res!974590 e!812918)))

(declare-fun c!133343 () Bool)

(assert (=> b!1442260 (= c!133343 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442261 () Bool)

(declare-fun res!974592 () Bool)

(assert (=> b!1442261 (=> (not res!974592) (not e!812921))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97993 (_ BitVec 32)) SeekEntryResult!11555)

(assert (=> b!1442261 (= res!974592 (= (seekEntryOrOpen!0 (select (arr!47280 a!2862) j!93) a!2862 mask!2687) (Found!11555 j!93)))))

(declare-fun b!1442262 () Bool)

(declare-fun res!974595 () Bool)

(assert (=> b!1442262 (=> (not res!974595) (not e!812919))))

(declare-datatypes ((List!33961 0))(
  ( (Nil!33958) (Cons!33957 (h!35307 (_ BitVec 64)) (t!48662 List!33961)) )
))
(declare-fun arrayNoDuplicates!0 (array!97993 (_ BitVec 32) List!33961) Bool)

(assert (=> b!1442262 (= res!974595 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33958))))

(declare-fun b!1442263 () Bool)

(declare-fun res!974594 () Bool)

(assert (=> b!1442263 (=> (not res!974594) (not e!812919))))

(assert (=> b!1442263 (= res!974594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442264 () Bool)

(assert (=> b!1442264 (= e!812920 e!812923)))

(declare-fun res!974600 () Bool)

(assert (=> b!1442264 (=> (not res!974600) (not e!812923))))

(assert (=> b!1442264 (= res!974600 (= lt!633471 (Intermediate!11555 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1442264 (= lt!633471 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633472 mask!2687) lt!633472 lt!633469 mask!2687))))

(assert (=> b!1442264 (= lt!633472 (select (store (arr!47280 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442265 () Bool)

(assert (=> b!1442265 (= e!812921 (or (= (select (arr!47280 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47280 a!2862) intermediateBeforeIndex!19) (select (arr!47280 a!2862) j!93))))))

(declare-fun b!1442266 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97993 (_ BitVec 32)) SeekEntryResult!11555)

(assert (=> b!1442266 (= e!812918 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633472 lt!633469 mask!2687) (seekEntryOrOpen!0 lt!633472 lt!633469 mask!2687)))))

(assert (= (and start!124628 res!974599) b!1442255))

(assert (= (and b!1442255 res!974591) b!1442256))

(assert (= (and b!1442256 res!974602) b!1442254))

(assert (= (and b!1442254 res!974604) b!1442263))

(assert (= (and b!1442263 res!974594) b!1442262))

(assert (= (and b!1442262 res!974595) b!1442253))

(assert (= (and b!1442253 res!974598) b!1442250))

(assert (= (and b!1442250 res!974603) b!1442251))

(assert (= (and b!1442251 res!974593) b!1442257))

(assert (= (and b!1442257 res!974596) b!1442264))

(assert (= (and b!1442264 res!974600) b!1442260))

(assert (= (and b!1442260 c!133343) b!1442259))

(assert (= (and b!1442260 (not c!133343)) b!1442266))

(assert (= (and b!1442260 res!974590) b!1442252))

(assert (= (and b!1442252 res!974597) b!1442258))

(assert (= (and b!1442258 res!974601) b!1442261))

(assert (= (and b!1442261 res!974592) b!1442265))

(declare-fun m!1331467 () Bool)

(assert (=> b!1442259 m!1331467))

(declare-fun m!1331469 () Bool)

(assert (=> b!1442256 m!1331469))

(assert (=> b!1442256 m!1331469))

(declare-fun m!1331471 () Bool)

(assert (=> b!1442256 m!1331471))

(declare-fun m!1331473 () Bool)

(assert (=> b!1442250 m!1331473))

(declare-fun m!1331475 () Bool)

(assert (=> b!1442250 m!1331475))

(declare-fun m!1331477 () Bool)

(assert (=> b!1442264 m!1331477))

(assert (=> b!1442264 m!1331477))

(declare-fun m!1331479 () Bool)

(assert (=> b!1442264 m!1331479))

(assert (=> b!1442264 m!1331473))

(declare-fun m!1331481 () Bool)

(assert (=> b!1442264 m!1331481))

(declare-fun m!1331483 () Bool)

(assert (=> b!1442266 m!1331483))

(declare-fun m!1331485 () Bool)

(assert (=> b!1442266 m!1331485))

(declare-fun m!1331487 () Bool)

(assert (=> b!1442263 m!1331487))

(declare-fun m!1331489 () Bool)

(assert (=> b!1442261 m!1331489))

(assert (=> b!1442261 m!1331489))

(declare-fun m!1331491 () Bool)

(assert (=> b!1442261 m!1331491))

(assert (=> b!1442257 m!1331489))

(assert (=> b!1442257 m!1331489))

(declare-fun m!1331493 () Bool)

(assert (=> b!1442257 m!1331493))

(assert (=> b!1442254 m!1331489))

(assert (=> b!1442254 m!1331489))

(declare-fun m!1331495 () Bool)

(assert (=> b!1442254 m!1331495))

(declare-fun m!1331497 () Bool)

(assert (=> b!1442265 m!1331497))

(assert (=> b!1442265 m!1331489))

(declare-fun m!1331499 () Bool)

(assert (=> b!1442258 m!1331499))

(assert (=> b!1442258 m!1331473))

(declare-fun m!1331501 () Bool)

(assert (=> b!1442258 m!1331501))

(declare-fun m!1331503 () Bool)

(assert (=> b!1442258 m!1331503))

(declare-fun m!1331505 () Bool)

(assert (=> b!1442258 m!1331505))

(assert (=> b!1442258 m!1331489))

(declare-fun m!1331507 () Bool)

(assert (=> b!1442262 m!1331507))

(assert (=> b!1442251 m!1331489))

(assert (=> b!1442251 m!1331489))

(declare-fun m!1331509 () Bool)

(assert (=> b!1442251 m!1331509))

(assert (=> b!1442251 m!1331509))

(assert (=> b!1442251 m!1331489))

(declare-fun m!1331511 () Bool)

(assert (=> b!1442251 m!1331511))

(declare-fun m!1331513 () Bool)

(assert (=> start!124628 m!1331513))

(declare-fun m!1331515 () Bool)

(assert (=> start!124628 m!1331515))

(push 1)

(assert (not b!1442262))

(assert (not b!1442261))

(assert (not b!1442251))

(assert (not b!1442263))

(assert (not b!1442266))

(assert (not b!1442257))

(assert (not b!1442264))

(assert (not b!1442256))

(assert (not b!1442259))

(assert (not b!1442254))

(assert (not start!124628))

(assert (not b!1442258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

