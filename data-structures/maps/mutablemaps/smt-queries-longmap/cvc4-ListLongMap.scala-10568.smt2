; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124592 () Bool)

(assert start!124592)

(declare-fun b!1441408 () Bool)

(declare-fun res!973866 () Bool)

(declare-fun e!812579 () Bool)

(assert (=> b!1441408 (=> (not res!973866) (not e!812579))))

(declare-datatypes ((array!97957 0))(
  ( (array!97958 (arr!47262 (Array (_ BitVec 32) (_ BitVec 64))) (size!47813 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97957)

(declare-datatypes ((List!33943 0))(
  ( (Nil!33940) (Cons!33939 (h!35289 (_ BitVec 64)) (t!48644 List!33943)) )
))
(declare-fun arrayNoDuplicates!0 (array!97957 (_ BitVec 32) List!33943) Bool)

(assert (=> b!1441408 (= res!973866 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33940))))

(declare-fun b!1441409 () Bool)

(declare-fun e!812577 () Bool)

(assert (=> b!1441409 (= e!812579 e!812577)))

(declare-fun res!973859 () Bool)

(assert (=> b!1441409 (=> (not res!973859) (not e!812577))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1441409 (= res!973859 (= (select (store (arr!47262 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633200 () array!97957)

(assert (=> b!1441409 (= lt!633200 (array!97958 (store (arr!47262 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47813 a!2862)))))

(declare-fun b!1441410 () Bool)

(declare-fun e!812582 () Bool)

(assert (=> b!1441410 (= e!812582 false)))

(declare-fun lt!633198 () Bool)

(declare-fun e!812580 () Bool)

(assert (=> b!1441410 (= lt!633198 e!812580)))

(declare-fun c!133289 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441410 (= c!133289 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441411 () Bool)

(declare-fun res!973861 () Bool)

(declare-fun e!812581 () Bool)

(assert (=> b!1441411 (=> (not res!973861) (not e!812581))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11537 0))(
  ( (MissingZero!11537 (index!48539 (_ BitVec 32))) (Found!11537 (index!48540 (_ BitVec 32))) (Intermediate!11537 (undefined!12349 Bool) (index!48541 (_ BitVec 32)) (x!130253 (_ BitVec 32))) (Undefined!11537) (MissingVacant!11537 (index!48542 (_ BitVec 32))) )
))
(declare-fun lt!633201 () SeekEntryResult!11537)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97957 (_ BitVec 32)) SeekEntryResult!11537)

(assert (=> b!1441411 (= res!973861 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47262 a!2862) j!93) a!2862 mask!2687) lt!633201))))

(declare-fun b!1441412 () Bool)

(declare-fun res!973863 () Bool)

(assert (=> b!1441412 (=> (not res!973863) (not e!812579))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441412 (= res!973863 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47813 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47813 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47813 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441413 () Bool)

(declare-fun res!973860 () Bool)

(assert (=> b!1441413 (=> (not res!973860) (not e!812579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441413 (= res!973860 (validKeyInArray!0 (select (arr!47262 a!2862) i!1006)))))

(declare-fun res!973865 () Bool)

(assert (=> start!124592 (=> (not res!973865) (not e!812579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124592 (= res!973865 (validMask!0 mask!2687))))

(assert (=> start!124592 e!812579))

(assert (=> start!124592 true))

(declare-fun array_inv!36207 (array!97957) Bool)

(assert (=> start!124592 (array_inv!36207 a!2862)))

(declare-fun lt!633202 () SeekEntryResult!11537)

(declare-fun lt!633199 () (_ BitVec 64))

(declare-fun b!1441414 () Bool)

(assert (=> b!1441414 (= e!812580 (not (= lt!633202 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633199 lt!633200 mask!2687))))))

(declare-fun b!1441415 () Bool)

(assert (=> b!1441415 (= e!812577 e!812581)))

(declare-fun res!973858 () Bool)

(assert (=> b!1441415 (=> (not res!973858) (not e!812581))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441415 (= res!973858 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47262 a!2862) j!93) mask!2687) (select (arr!47262 a!2862) j!93) a!2862 mask!2687) lt!633201))))

(assert (=> b!1441415 (= lt!633201 (Intermediate!11537 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441416 () Bool)

(assert (=> b!1441416 (= e!812581 e!812582)))

(declare-fun res!973856 () Bool)

(assert (=> b!1441416 (=> (not res!973856) (not e!812582))))

(assert (=> b!1441416 (= res!973856 (= lt!633202 (Intermediate!11537 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1441416 (= lt!633202 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633199 mask!2687) lt!633199 lt!633200 mask!2687))))

(assert (=> b!1441416 (= lt!633199 (select (store (arr!47262 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441417 () Bool)

(declare-fun res!973864 () Bool)

(assert (=> b!1441417 (=> (not res!973864) (not e!812579))))

(assert (=> b!1441417 (= res!973864 (and (= (size!47813 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47813 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47813 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441418 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97957 (_ BitVec 32)) SeekEntryResult!11537)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97957 (_ BitVec 32)) SeekEntryResult!11537)

(assert (=> b!1441418 (= e!812580 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633199 lt!633200 mask!2687) (seekEntryOrOpen!0 lt!633199 lt!633200 mask!2687))))))

(declare-fun b!1441419 () Bool)

(declare-fun res!973857 () Bool)

(assert (=> b!1441419 (=> (not res!973857) (not e!812579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97957 (_ BitVec 32)) Bool)

(assert (=> b!1441419 (= res!973857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441420 () Bool)

(declare-fun res!973862 () Bool)

(assert (=> b!1441420 (=> (not res!973862) (not e!812579))))

(assert (=> b!1441420 (= res!973862 (validKeyInArray!0 (select (arr!47262 a!2862) j!93)))))

(assert (= (and start!124592 res!973865) b!1441417))

(assert (= (and b!1441417 res!973864) b!1441413))

(assert (= (and b!1441413 res!973860) b!1441420))

(assert (= (and b!1441420 res!973862) b!1441419))

(assert (= (and b!1441419 res!973857) b!1441408))

(assert (= (and b!1441408 res!973866) b!1441412))

(assert (= (and b!1441412 res!973863) b!1441409))

(assert (= (and b!1441409 res!973859) b!1441415))

(assert (= (and b!1441415 res!973858) b!1441411))

(assert (= (and b!1441411 res!973861) b!1441416))

(assert (= (and b!1441416 res!973856) b!1441410))

(assert (= (and b!1441410 c!133289) b!1441414))

(assert (= (and b!1441410 (not c!133289)) b!1441418))

(declare-fun m!1330687 () Bool)

(assert (=> b!1441418 m!1330687))

(declare-fun m!1330689 () Bool)

(assert (=> b!1441418 m!1330689))

(declare-fun m!1330691 () Bool)

(assert (=> b!1441419 m!1330691))

(declare-fun m!1330693 () Bool)

(assert (=> b!1441415 m!1330693))

(assert (=> b!1441415 m!1330693))

(declare-fun m!1330695 () Bool)

(assert (=> b!1441415 m!1330695))

(assert (=> b!1441415 m!1330695))

(assert (=> b!1441415 m!1330693))

(declare-fun m!1330697 () Bool)

(assert (=> b!1441415 m!1330697))

(declare-fun m!1330699 () Bool)

(assert (=> b!1441409 m!1330699))

(declare-fun m!1330701 () Bool)

(assert (=> b!1441409 m!1330701))

(assert (=> b!1441411 m!1330693))

(assert (=> b!1441411 m!1330693))

(declare-fun m!1330703 () Bool)

(assert (=> b!1441411 m!1330703))

(declare-fun m!1330705 () Bool)

(assert (=> b!1441416 m!1330705))

(assert (=> b!1441416 m!1330705))

(declare-fun m!1330707 () Bool)

(assert (=> b!1441416 m!1330707))

(assert (=> b!1441416 m!1330699))

(declare-fun m!1330709 () Bool)

(assert (=> b!1441416 m!1330709))

(declare-fun m!1330711 () Bool)

(assert (=> b!1441408 m!1330711))

(declare-fun m!1330713 () Bool)

(assert (=> b!1441413 m!1330713))

(assert (=> b!1441413 m!1330713))

(declare-fun m!1330715 () Bool)

(assert (=> b!1441413 m!1330715))

(assert (=> b!1441420 m!1330693))

(assert (=> b!1441420 m!1330693))

(declare-fun m!1330717 () Bool)

(assert (=> b!1441420 m!1330717))

(declare-fun m!1330719 () Bool)

(assert (=> b!1441414 m!1330719))

(declare-fun m!1330721 () Bool)

(assert (=> start!124592 m!1330721))

(declare-fun m!1330723 () Bool)

(assert (=> start!124592 m!1330723))

(push 1)

(assert (not b!1441408))

(assert (not b!1441420))

(assert (not b!1441419))

(assert (not b!1441418))

(assert (not start!124592))

