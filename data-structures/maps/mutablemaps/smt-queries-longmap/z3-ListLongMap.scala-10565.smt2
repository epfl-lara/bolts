; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124572 () Bool)

(assert start!124572)

(declare-fun b!1441018 () Bool)

(declare-fun e!812402 () Bool)

(declare-fun e!812400 () Bool)

(assert (=> b!1441018 (= e!812402 e!812400)))

(declare-fun res!973530 () Bool)

(assert (=> b!1441018 (=> (not res!973530) (not e!812400))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97937 0))(
  ( (array!97938 (arr!47252 (Array (_ BitVec 32) (_ BitVec 64))) (size!47803 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97937)

(assert (=> b!1441018 (= res!973530 (= (select (store (arr!47252 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!633048 () array!97937)

(assert (=> b!1441018 (= lt!633048 (array!97938 (store (arr!47252 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47803 a!2862)))))

(declare-fun b!1441019 () Bool)

(declare-fun e!812399 () Bool)

(assert (=> b!1441019 (= e!812399 false)))

(declare-fun lt!633049 () Bool)

(declare-fun e!812401 () Bool)

(assert (=> b!1441019 (= lt!633049 e!812401)))

(declare-fun c!133259 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441019 (= c!133259 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441020 () Bool)

(declare-fun res!973529 () Bool)

(assert (=> b!1441020 (=> (not res!973529) (not e!812402))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441020 (= res!973529 (validKeyInArray!0 (select (arr!47252 a!2862) j!93)))))

(declare-fun res!973536 () Bool)

(assert (=> start!124572 (=> (not res!973536) (not e!812402))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124572 (= res!973536 (validMask!0 mask!2687))))

(assert (=> start!124572 e!812402))

(assert (=> start!124572 true))

(declare-fun array_inv!36197 (array!97937) Bool)

(assert (=> start!124572 (array_inv!36197 a!2862)))

(declare-fun b!1441021 () Bool)

(declare-fun e!812397 () Bool)

(assert (=> b!1441021 (= e!812397 e!812399)))

(declare-fun res!973533 () Bool)

(assert (=> b!1441021 (=> (not res!973533) (not e!812399))))

(declare-datatypes ((SeekEntryResult!11527 0))(
  ( (MissingZero!11527 (index!48499 (_ BitVec 32))) (Found!11527 (index!48500 (_ BitVec 32))) (Intermediate!11527 (undefined!12339 Bool) (index!48501 (_ BitVec 32)) (x!130219 (_ BitVec 32))) (Undefined!11527) (MissingVacant!11527 (index!48502 (_ BitVec 32))) )
))
(declare-fun lt!633051 () SeekEntryResult!11527)

(assert (=> b!1441021 (= res!973533 (= lt!633051 (Intermediate!11527 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!633052 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97937 (_ BitVec 32)) SeekEntryResult!11527)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441021 (= lt!633051 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633052 mask!2687) lt!633052 lt!633048 mask!2687))))

(assert (=> b!1441021 (= lt!633052 (select (store (arr!47252 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441022 () Bool)

(declare-fun res!973532 () Bool)

(assert (=> b!1441022 (=> (not res!973532) (not e!812402))))

(declare-datatypes ((List!33933 0))(
  ( (Nil!33930) (Cons!33929 (h!35279 (_ BitVec 64)) (t!48634 List!33933)) )
))
(declare-fun arrayNoDuplicates!0 (array!97937 (_ BitVec 32) List!33933) Bool)

(assert (=> b!1441022 (= res!973532 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33930))))

(declare-fun b!1441023 () Bool)

(declare-fun res!973528 () Bool)

(assert (=> b!1441023 (=> (not res!973528) (not e!812402))))

(assert (=> b!1441023 (= res!973528 (validKeyInArray!0 (select (arr!47252 a!2862) i!1006)))))

(declare-fun b!1441024 () Bool)

(assert (=> b!1441024 (= e!812400 e!812397)))

(declare-fun res!973534 () Bool)

(assert (=> b!1441024 (=> (not res!973534) (not e!812397))))

(declare-fun lt!633050 () SeekEntryResult!11527)

(assert (=> b!1441024 (= res!973534 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47252 a!2862) j!93) mask!2687) (select (arr!47252 a!2862) j!93) a!2862 mask!2687) lt!633050))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441024 (= lt!633050 (Intermediate!11527 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441025 () Bool)

(declare-fun res!973527 () Bool)

(assert (=> b!1441025 (=> (not res!973527) (not e!812402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97937 (_ BitVec 32)) Bool)

(assert (=> b!1441025 (= res!973527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441026 () Bool)

(declare-fun res!973535 () Bool)

(assert (=> b!1441026 (=> (not res!973535) (not e!812402))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1441026 (= res!973535 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47803 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47803 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47803 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441027 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97937 (_ BitVec 32)) SeekEntryResult!11527)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97937 (_ BitVec 32)) SeekEntryResult!11527)

(assert (=> b!1441027 (= e!812401 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633052 lt!633048 mask!2687) (seekEntryOrOpen!0 lt!633052 lt!633048 mask!2687))))))

(declare-fun b!1441028 () Bool)

(declare-fun res!973531 () Bool)

(assert (=> b!1441028 (=> (not res!973531) (not e!812397))))

(assert (=> b!1441028 (= res!973531 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47252 a!2862) j!93) a!2862 mask!2687) lt!633050))))

(declare-fun b!1441029 () Bool)

(assert (=> b!1441029 (= e!812401 (not (= lt!633051 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633052 lt!633048 mask!2687))))))

(declare-fun b!1441030 () Bool)

(declare-fun res!973526 () Bool)

(assert (=> b!1441030 (=> (not res!973526) (not e!812402))))

(assert (=> b!1441030 (= res!973526 (and (= (size!47803 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47803 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47803 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124572 res!973536) b!1441030))

(assert (= (and b!1441030 res!973526) b!1441023))

(assert (= (and b!1441023 res!973528) b!1441020))

(assert (= (and b!1441020 res!973529) b!1441025))

(assert (= (and b!1441025 res!973527) b!1441022))

(assert (= (and b!1441022 res!973532) b!1441026))

(assert (= (and b!1441026 res!973535) b!1441018))

(assert (= (and b!1441018 res!973530) b!1441024))

(assert (= (and b!1441024 res!973534) b!1441028))

(assert (= (and b!1441028 res!973531) b!1441021))

(assert (= (and b!1441021 res!973533) b!1441019))

(assert (= (and b!1441019 c!133259) b!1441029))

(assert (= (and b!1441019 (not c!133259)) b!1441027))

(declare-fun m!1330307 () Bool)

(assert (=> b!1441029 m!1330307))

(declare-fun m!1330309 () Bool)

(assert (=> b!1441027 m!1330309))

(declare-fun m!1330311 () Bool)

(assert (=> b!1441027 m!1330311))

(declare-fun m!1330313 () Bool)

(assert (=> b!1441024 m!1330313))

(assert (=> b!1441024 m!1330313))

(declare-fun m!1330315 () Bool)

(assert (=> b!1441024 m!1330315))

(assert (=> b!1441024 m!1330315))

(assert (=> b!1441024 m!1330313))

(declare-fun m!1330317 () Bool)

(assert (=> b!1441024 m!1330317))

(assert (=> b!1441020 m!1330313))

(assert (=> b!1441020 m!1330313))

(declare-fun m!1330319 () Bool)

(assert (=> b!1441020 m!1330319))

(declare-fun m!1330321 () Bool)

(assert (=> b!1441018 m!1330321))

(declare-fun m!1330323 () Bool)

(assert (=> b!1441018 m!1330323))

(declare-fun m!1330325 () Bool)

(assert (=> b!1441021 m!1330325))

(assert (=> b!1441021 m!1330325))

(declare-fun m!1330327 () Bool)

(assert (=> b!1441021 m!1330327))

(assert (=> b!1441021 m!1330321))

(declare-fun m!1330329 () Bool)

(assert (=> b!1441021 m!1330329))

(assert (=> b!1441028 m!1330313))

(assert (=> b!1441028 m!1330313))

(declare-fun m!1330331 () Bool)

(assert (=> b!1441028 m!1330331))

(declare-fun m!1330333 () Bool)

(assert (=> b!1441025 m!1330333))

(declare-fun m!1330335 () Bool)

(assert (=> b!1441023 m!1330335))

(assert (=> b!1441023 m!1330335))

(declare-fun m!1330337 () Bool)

(assert (=> b!1441023 m!1330337))

(declare-fun m!1330339 () Bool)

(assert (=> start!124572 m!1330339))

(declare-fun m!1330341 () Bool)

(assert (=> start!124572 m!1330341))

(declare-fun m!1330343 () Bool)

(assert (=> b!1441022 m!1330343))

(check-sat (not b!1441027) (not b!1441022) (not b!1441021) (not b!1441025) (not b!1441024) (not b!1441028) (not b!1441020) (not b!1441029) (not b!1441023) (not start!124572))
(check-sat)
