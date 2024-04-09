; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124626 () Bool)

(assert start!124626)

(declare-fun b!1442199 () Bool)

(declare-fun res!974546 () Bool)

(declare-fun e!812900 () Bool)

(assert (=> b!1442199 (=> (not res!974546) (not e!812900))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11554 0))(
  ( (MissingZero!11554 (index!48607 (_ BitVec 32))) (Found!11554 (index!48608 (_ BitVec 32))) (Intermediate!11554 (undefined!12366 Bool) (index!48609 (_ BitVec 32)) (x!130318 (_ BitVec 32))) (Undefined!11554) (MissingVacant!11554 (index!48610 (_ BitVec 32))) )
))
(declare-fun lt!633453 () SeekEntryResult!11554)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97991 0))(
  ( (array!97992 (arr!47279 (Array (_ BitVec 32) (_ BitVec 64))) (size!47830 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97991)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97991 (_ BitVec 32)) SeekEntryResult!11554)

(assert (=> b!1442199 (= res!974546 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47279 a!2862) j!93) a!2862 mask!2687) lt!633453))))

(declare-fun b!1442200 () Bool)

(declare-fun res!974556 () Bool)

(declare-fun e!812903 () Bool)

(assert (=> b!1442200 (=> (not res!974556) (not e!812903))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97991 (_ BitVec 32)) Bool)

(assert (=> b!1442200 (= res!974556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1442201 () Bool)

(declare-fun res!974545 () Bool)

(assert (=> b!1442201 (=> (not res!974545) (not e!812903))))

(declare-datatypes ((List!33960 0))(
  ( (Nil!33957) (Cons!33956 (h!35306 (_ BitVec 64)) (t!48661 List!33960)) )
))
(declare-fun arrayNoDuplicates!0 (array!97991 (_ BitVec 32) List!33960) Bool)

(assert (=> b!1442201 (= res!974545 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33957))))

(declare-fun b!1442202 () Bool)

(declare-fun e!812899 () Bool)

(assert (=> b!1442202 (= e!812899 e!812900)))

(declare-fun res!974551 () Bool)

(assert (=> b!1442202 (=> (not res!974551) (not e!812900))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442202 (= res!974551 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47279 a!2862) j!93) mask!2687) (select (arr!47279 a!2862) j!93) a!2862 mask!2687) lt!633453))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442202 (= lt!633453 (Intermediate!11554 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!812898 () Bool)

(declare-fun b!1442203 () Bool)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1442203 (= e!812898 (not (or (not (= (select (arr!47279 a!2862) index!646) (select (store (arr!47279 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47279 a!2862) index!646) (select (arr!47279 a!2862) j!93))) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(declare-fun e!812901 () Bool)

(assert (=> b!1442203 e!812901))

(declare-fun res!974547 () Bool)

(assert (=> b!1442203 (=> (not res!974547) (not e!812901))))

(assert (=> b!1442203 (= res!974547 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48552 0))(
  ( (Unit!48553) )
))
(declare-fun lt!633454 () Unit!48552)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97991 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48552)

(assert (=> b!1442203 (= lt!633454 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1442204 () Bool)

(assert (=> b!1442204 (= e!812900 e!812898)))

(declare-fun res!974553 () Bool)

(assert (=> b!1442204 (=> (not res!974553) (not e!812898))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!633455 () SeekEntryResult!11554)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1442204 (= res!974553 (= lt!633455 (Intermediate!11554 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633456 () array!97991)

(declare-fun lt!633457 () (_ BitVec 64))

(assert (=> b!1442204 (= lt!633455 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633457 mask!2687) lt!633457 lt!633456 mask!2687))))

(assert (=> b!1442204 (= lt!633457 (select (store (arr!47279 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442205 () Bool)

(declare-fun res!974552 () Bool)

(assert (=> b!1442205 (=> (not res!974552) (not e!812898))))

(declare-fun e!812897 () Bool)

(assert (=> b!1442205 (= res!974552 e!812897)))

(declare-fun c!133340 () Bool)

(assert (=> b!1442205 (= c!133340 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!974550 () Bool)

(assert (=> start!124626 (=> (not res!974550) (not e!812903))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124626 (= res!974550 (validMask!0 mask!2687))))

(assert (=> start!124626 e!812903))

(assert (=> start!124626 true))

(declare-fun array_inv!36224 (array!97991) Bool)

(assert (=> start!124626 (array_inv!36224 a!2862)))

(declare-fun b!1442206 () Bool)

(assert (=> b!1442206 (= e!812903 e!812899)))

(declare-fun res!974559 () Bool)

(assert (=> b!1442206 (=> (not res!974559) (not e!812899))))

(assert (=> b!1442206 (= res!974559 (= (select (store (arr!47279 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442206 (= lt!633456 (array!97992 (store (arr!47279 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47830 a!2862)))))

(declare-fun b!1442207 () Bool)

(declare-fun res!974548 () Bool)

(assert (=> b!1442207 (=> (not res!974548) (not e!812903))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442207 (= res!974548 (validKeyInArray!0 (select (arr!47279 a!2862) i!1006)))))

(declare-fun b!1442208 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97991 (_ BitVec 32)) SeekEntryResult!11554)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97991 (_ BitVec 32)) SeekEntryResult!11554)

(assert (=> b!1442208 (= e!812897 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633457 lt!633456 mask!2687) (seekEntryOrOpen!0 lt!633457 lt!633456 mask!2687)))))

(declare-fun b!1442209 () Bool)

(assert (=> b!1442209 (= e!812897 (= lt!633455 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633457 lt!633456 mask!2687)))))

(declare-fun b!1442210 () Bool)

(declare-fun res!974557 () Bool)

(assert (=> b!1442210 (=> (not res!974557) (not e!812898))))

(assert (=> b!1442210 (= res!974557 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442211 () Bool)

(declare-fun res!974554 () Bool)

(assert (=> b!1442211 (=> (not res!974554) (not e!812903))))

(assert (=> b!1442211 (= res!974554 (and (= (size!47830 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47830 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47830 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442212 () Bool)

(assert (=> b!1442212 (= e!812901 (or (= (select (arr!47279 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47279 a!2862) intermediateBeforeIndex!19) (select (arr!47279 a!2862) j!93))))))

(declare-fun b!1442213 () Bool)

(declare-fun res!974558 () Bool)

(assert (=> b!1442213 (=> (not res!974558) (not e!812901))))

(assert (=> b!1442213 (= res!974558 (= (seekEntryOrOpen!0 (select (arr!47279 a!2862) j!93) a!2862 mask!2687) (Found!11554 j!93)))))

(declare-fun b!1442214 () Bool)

(declare-fun res!974549 () Bool)

(assert (=> b!1442214 (=> (not res!974549) (not e!812903))))

(assert (=> b!1442214 (= res!974549 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47830 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47830 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47830 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442215 () Bool)

(declare-fun res!974555 () Bool)

(assert (=> b!1442215 (=> (not res!974555) (not e!812903))))

(assert (=> b!1442215 (= res!974555 (validKeyInArray!0 (select (arr!47279 a!2862) j!93)))))

(assert (= (and start!124626 res!974550) b!1442211))

(assert (= (and b!1442211 res!974554) b!1442207))

(assert (= (and b!1442207 res!974548) b!1442215))

(assert (= (and b!1442215 res!974555) b!1442200))

(assert (= (and b!1442200 res!974556) b!1442201))

(assert (= (and b!1442201 res!974545) b!1442214))

(assert (= (and b!1442214 res!974549) b!1442206))

(assert (= (and b!1442206 res!974559) b!1442202))

(assert (= (and b!1442202 res!974551) b!1442199))

(assert (= (and b!1442199 res!974546) b!1442204))

(assert (= (and b!1442204 res!974553) b!1442205))

(assert (= (and b!1442205 c!133340) b!1442209))

(assert (= (and b!1442205 (not c!133340)) b!1442208))

(assert (= (and b!1442205 res!974552) b!1442210))

(assert (= (and b!1442210 res!974557) b!1442203))

(assert (= (and b!1442203 res!974547) b!1442213))

(assert (= (and b!1442213 res!974558) b!1442212))

(declare-fun m!1331417 () Bool)

(assert (=> b!1442204 m!1331417))

(assert (=> b!1442204 m!1331417))

(declare-fun m!1331419 () Bool)

(assert (=> b!1442204 m!1331419))

(declare-fun m!1331421 () Bool)

(assert (=> b!1442204 m!1331421))

(declare-fun m!1331423 () Bool)

(assert (=> b!1442204 m!1331423))

(declare-fun m!1331425 () Bool)

(assert (=> b!1442208 m!1331425))

(declare-fun m!1331427 () Bool)

(assert (=> b!1442208 m!1331427))

(declare-fun m!1331429 () Bool)

(assert (=> b!1442212 m!1331429))

(declare-fun m!1331431 () Bool)

(assert (=> b!1442212 m!1331431))

(declare-fun m!1331433 () Bool)

(assert (=> b!1442209 m!1331433))

(declare-fun m!1331435 () Bool)

(assert (=> b!1442207 m!1331435))

(assert (=> b!1442207 m!1331435))

(declare-fun m!1331437 () Bool)

(assert (=> b!1442207 m!1331437))

(declare-fun m!1331439 () Bool)

(assert (=> start!124626 m!1331439))

(declare-fun m!1331441 () Bool)

(assert (=> start!124626 m!1331441))

(assert (=> b!1442202 m!1331431))

(assert (=> b!1442202 m!1331431))

(declare-fun m!1331443 () Bool)

(assert (=> b!1442202 m!1331443))

(assert (=> b!1442202 m!1331443))

(assert (=> b!1442202 m!1331431))

(declare-fun m!1331445 () Bool)

(assert (=> b!1442202 m!1331445))

(declare-fun m!1331447 () Bool)

(assert (=> b!1442203 m!1331447))

(assert (=> b!1442203 m!1331421))

(declare-fun m!1331449 () Bool)

(assert (=> b!1442203 m!1331449))

(declare-fun m!1331451 () Bool)

(assert (=> b!1442203 m!1331451))

(declare-fun m!1331453 () Bool)

(assert (=> b!1442203 m!1331453))

(assert (=> b!1442203 m!1331431))

(declare-fun m!1331455 () Bool)

(assert (=> b!1442201 m!1331455))

(assert (=> b!1442215 m!1331431))

(assert (=> b!1442215 m!1331431))

(declare-fun m!1331457 () Bool)

(assert (=> b!1442215 m!1331457))

(assert (=> b!1442206 m!1331421))

(declare-fun m!1331459 () Bool)

(assert (=> b!1442206 m!1331459))

(assert (=> b!1442199 m!1331431))

(assert (=> b!1442199 m!1331431))

(declare-fun m!1331461 () Bool)

(assert (=> b!1442199 m!1331461))

(declare-fun m!1331463 () Bool)

(assert (=> b!1442200 m!1331463))

(assert (=> b!1442213 m!1331431))

(assert (=> b!1442213 m!1331431))

(declare-fun m!1331465 () Bool)

(assert (=> b!1442213 m!1331465))

(check-sat (not b!1442201) (not b!1442200) (not b!1442213) (not b!1442202) (not b!1442203) (not start!124626) (not b!1442204) (not b!1442208) (not b!1442215) (not b!1442209) (not b!1442207) (not b!1442199))
(check-sat)
