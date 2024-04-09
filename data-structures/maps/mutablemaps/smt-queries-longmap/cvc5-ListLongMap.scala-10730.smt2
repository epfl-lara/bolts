; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125560 () Bool)

(assert start!125560)

(declare-fun b!1468421 () Bool)

(declare-fun res!997070 () Bool)

(declare-fun e!824588 () Bool)

(assert (=> b!1468421 (=> (not res!997070) (not e!824588))))

(declare-datatypes ((array!98925 0))(
  ( (array!98926 (arr!47746 (Array (_ BitVec 32) (_ BitVec 64))) (size!48297 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98925)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468421 (= res!997070 (validKeyInArray!0 (select (arr!47746 a!2862) j!93)))))

(declare-fun b!1468422 () Bool)

(declare-fun res!997074 () Bool)

(declare-fun e!824586 () Bool)

(assert (=> b!1468422 (=> (not res!997074) (not e!824586))))

(declare-datatypes ((SeekEntryResult!12009 0))(
  ( (MissingZero!12009 (index!50427 (_ BitVec 32))) (Found!12009 (index!50428 (_ BitVec 32))) (Intermediate!12009 (undefined!12821 Bool) (index!50429 (_ BitVec 32)) (x!132021 (_ BitVec 32))) (Undefined!12009) (MissingVacant!12009 (index!50430 (_ BitVec 32))) )
))
(declare-fun lt!642243 () SeekEntryResult!12009)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98925 (_ BitVec 32)) SeekEntryResult!12009)

(assert (=> b!1468422 (= res!997074 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47746 a!2862) j!93) a!2862 mask!2687) lt!642243))))

(declare-fun b!1468423 () Bool)

(declare-fun res!997076 () Bool)

(assert (=> b!1468423 (=> (not res!997076) (not e!824588))))

(declare-datatypes ((List!34427 0))(
  ( (Nil!34424) (Cons!34423 (h!35773 (_ BitVec 64)) (t!49128 List!34427)) )
))
(declare-fun arrayNoDuplicates!0 (array!98925 (_ BitVec 32) List!34427) Bool)

(assert (=> b!1468423 (= res!997076 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34424))))

(declare-fun b!1468424 () Bool)

(assert (=> b!1468424 (= e!824588 e!824586)))

(declare-fun res!997072 () Bool)

(assert (=> b!1468424 (=> (not res!997072) (not e!824586))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468424 (= res!997072 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47746 a!2862) j!93) mask!2687) (select (arr!47746 a!2862) j!93) a!2862 mask!2687) lt!642243))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468424 (= lt!642243 (Intermediate!12009 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468425 () Bool)

(declare-fun res!997077 () Bool)

(assert (=> b!1468425 (=> (not res!997077) (not e!824588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98925 (_ BitVec 32)) Bool)

(assert (=> b!1468425 (= res!997077 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468426 () Bool)

(declare-fun res!997073 () Bool)

(assert (=> b!1468426 (=> (not res!997073) (not e!824588))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1468426 (= res!997073 (and (= (size!48297 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48297 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48297 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!997071 () Bool)

(assert (=> start!125560 (=> (not res!997071) (not e!824588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125560 (= res!997071 (validMask!0 mask!2687))))

(assert (=> start!125560 e!824588))

(assert (=> start!125560 true))

(declare-fun array_inv!36691 (array!98925) Bool)

(assert (=> start!125560 (array_inv!36691 a!2862)))

(declare-fun b!1468427 () Bool)

(declare-fun res!997069 () Bool)

(assert (=> b!1468427 (=> (not res!997069) (not e!824588))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468427 (= res!997069 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48297 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48297 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48297 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47746 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468428 () Bool)

(assert (=> b!1468428 (= e!824586 false)))

(declare-fun lt!642244 () SeekEntryResult!12009)

(assert (=> b!1468428 (= lt!642244 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47746 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47746 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98926 (store (arr!47746 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48297 a!2862)) mask!2687))))

(declare-fun b!1468429 () Bool)

(declare-fun res!997075 () Bool)

(assert (=> b!1468429 (=> (not res!997075) (not e!824588))))

(assert (=> b!1468429 (= res!997075 (validKeyInArray!0 (select (arr!47746 a!2862) i!1006)))))

(assert (= (and start!125560 res!997071) b!1468426))

(assert (= (and b!1468426 res!997073) b!1468429))

(assert (= (and b!1468429 res!997075) b!1468421))

(assert (= (and b!1468421 res!997070) b!1468425))

(assert (= (and b!1468425 res!997077) b!1468423))

(assert (= (and b!1468423 res!997076) b!1468427))

(assert (= (and b!1468427 res!997069) b!1468424))

(assert (= (and b!1468424 res!997072) b!1468422))

(assert (= (and b!1468422 res!997074) b!1468428))

(declare-fun m!1355553 () Bool)

(assert (=> b!1468421 m!1355553))

(assert (=> b!1468421 m!1355553))

(declare-fun m!1355555 () Bool)

(assert (=> b!1468421 m!1355555))

(assert (=> b!1468424 m!1355553))

(assert (=> b!1468424 m!1355553))

(declare-fun m!1355557 () Bool)

(assert (=> b!1468424 m!1355557))

(assert (=> b!1468424 m!1355557))

(assert (=> b!1468424 m!1355553))

(declare-fun m!1355559 () Bool)

(assert (=> b!1468424 m!1355559))

(declare-fun m!1355561 () Bool)

(assert (=> b!1468425 m!1355561))

(declare-fun m!1355563 () Bool)

(assert (=> b!1468423 m!1355563))

(declare-fun m!1355565 () Bool)

(assert (=> b!1468428 m!1355565))

(declare-fun m!1355567 () Bool)

(assert (=> b!1468428 m!1355567))

(assert (=> b!1468428 m!1355567))

(declare-fun m!1355569 () Bool)

(assert (=> b!1468428 m!1355569))

(assert (=> b!1468428 m!1355569))

(assert (=> b!1468428 m!1355567))

(declare-fun m!1355571 () Bool)

(assert (=> b!1468428 m!1355571))

(declare-fun m!1355573 () Bool)

(assert (=> start!125560 m!1355573))

(declare-fun m!1355575 () Bool)

(assert (=> start!125560 m!1355575))

(assert (=> b!1468422 m!1355553))

(assert (=> b!1468422 m!1355553))

(declare-fun m!1355577 () Bool)

(assert (=> b!1468422 m!1355577))

(declare-fun m!1355579 () Bool)

(assert (=> b!1468429 m!1355579))

(assert (=> b!1468429 m!1355579))

(declare-fun m!1355581 () Bool)

(assert (=> b!1468429 m!1355581))

(assert (=> b!1468427 m!1355565))

(declare-fun m!1355583 () Bool)

(assert (=> b!1468427 m!1355583))

(push 1)

