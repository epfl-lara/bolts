; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125334 () Bool)

(assert start!125334)

(declare-fun b!1463023 () Bool)

(declare-fun e!822362 () Bool)

(declare-fun e!822353 () Bool)

(assert (=> b!1463023 (= e!822362 e!822353)))

(declare-fun res!992446 () Bool)

(assert (=> b!1463023 (=> res!992446 e!822353)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98699 0))(
  ( (array!98700 (arr!47633 (Array (_ BitVec 32) (_ BitVec 64))) (size!48184 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98699)

(declare-fun lt!640602 () (_ BitVec 32))

(assert (=> b!1463023 (= res!992446 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640602 #b00000000000000000000000000000000) (bvsge lt!640602 (size!48184 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463023 (= lt!640602 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1463024 () Bool)

(declare-fun res!992453 () Bool)

(declare-fun e!822356 () Bool)

(assert (=> b!1463024 (=> (not res!992453) (not e!822356))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1463024 (= res!992453 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463025 () Bool)

(declare-fun res!992456 () Bool)

(declare-fun e!822357 () Bool)

(assert (=> b!1463025 (=> (not res!992456) (not e!822357))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463025 (= res!992456 (validKeyInArray!0 (select (arr!47633 a!2862) i!1006)))))

(declare-fun b!1463026 () Bool)

(declare-fun e!822361 () Bool)

(declare-fun e!822360 () Bool)

(assert (=> b!1463026 (= e!822361 e!822360)))

(declare-fun res!992454 () Bool)

(assert (=> b!1463026 (=> (not res!992454) (not e!822360))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11908 0))(
  ( (MissingZero!11908 (index!50023 (_ BitVec 32))) (Found!11908 (index!50024 (_ BitVec 32))) (Intermediate!11908 (undefined!12720 Bool) (index!50025 (_ BitVec 32)) (x!131616 (_ BitVec 32))) (Undefined!11908) (MissingVacant!11908 (index!50026 (_ BitVec 32))) )
))
(declare-fun lt!640603 () SeekEntryResult!11908)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98699 (_ BitVec 32)) SeekEntryResult!11908)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463026 (= res!992454 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47633 a!2862) j!93) mask!2687) (select (arr!47633 a!2862) j!93) a!2862 mask!2687) lt!640603))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1463026 (= lt!640603 (Intermediate!11908 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463027 () Bool)

(declare-fun res!992449 () Bool)

(assert (=> b!1463027 (=> (not res!992449) (not e!822357))))

(assert (=> b!1463027 (= res!992449 (and (= (size!48184 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48184 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48184 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463028 () Bool)

(assert (=> b!1463028 (= e!822353 true)))

(declare-fun lt!640600 () Bool)

(declare-fun e!822355 () Bool)

(assert (=> b!1463028 (= lt!640600 e!822355)))

(declare-fun c!134804 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1463028 (= c!134804 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463029 () Bool)

(declare-fun e!822359 () Bool)

(assert (=> b!1463029 (= e!822359 (or (= (select (arr!47633 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47633 a!2862) intermediateBeforeIndex!19) (select (arr!47633 a!2862) j!93))))))

(declare-fun b!1463030 () Bool)

(assert (=> b!1463030 (= e!822356 (not e!822362))))

(declare-fun res!992457 () Bool)

(assert (=> b!1463030 (=> res!992457 e!822362)))

(assert (=> b!1463030 (= res!992457 (or (and (= (select (arr!47633 a!2862) index!646) (select (store (arr!47633 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47633 a!2862) index!646) (select (arr!47633 a!2862) j!93))) (= (select (arr!47633 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1463030 e!822359))

(declare-fun res!992460 () Bool)

(assert (=> b!1463030 (=> (not res!992460) (not e!822359))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98699 (_ BitVec 32)) Bool)

(assert (=> b!1463030 (= res!992460 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49260 0))(
  ( (Unit!49261) )
))
(declare-fun lt!640605 () Unit!49260)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49260)

(assert (=> b!1463030 (= lt!640605 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463031 () Bool)

(assert (=> b!1463031 (= e!822357 e!822361)))

(declare-fun res!992451 () Bool)

(assert (=> b!1463031 (=> (not res!992451) (not e!822361))))

(assert (=> b!1463031 (= res!992451 (= (select (store (arr!47633 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640604 () array!98699)

(assert (=> b!1463031 (= lt!640604 (array!98700 (store (arr!47633 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48184 a!2862)))))

(declare-fun b!1463032 () Bool)

(declare-fun res!992447 () Bool)

(assert (=> b!1463032 (=> (not res!992447) (not e!822359))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98699 (_ BitVec 32)) SeekEntryResult!11908)

(assert (=> b!1463032 (= res!992447 (= (seekEntryOrOpen!0 (select (arr!47633 a!2862) j!93) a!2862 mask!2687) (Found!11908 j!93)))))

(declare-fun b!1463033 () Bool)

(declare-fun res!992445 () Bool)

(assert (=> b!1463033 (=> (not res!992445) (not e!822357))))

(assert (=> b!1463033 (= res!992445 (validKeyInArray!0 (select (arr!47633 a!2862) j!93)))))

(declare-fun b!1463034 () Bool)

(declare-fun res!992455 () Bool)

(assert (=> b!1463034 (=> (not res!992455) (not e!822360))))

(assert (=> b!1463034 (= res!992455 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47633 a!2862) j!93) a!2862 mask!2687) lt!640603))))

(declare-fun b!1463035 () Bool)

(declare-fun res!992458 () Bool)

(assert (=> b!1463035 (=> res!992458 e!822353)))

(assert (=> b!1463035 (= res!992458 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640602 (select (arr!47633 a!2862) j!93) a!2862 mask!2687) lt!640603)))))

(declare-fun b!1463036 () Bool)

(declare-fun lt!640601 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98699 (_ BitVec 32)) SeekEntryResult!11908)

(assert (=> b!1463036 (= e!822355 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640602 intermediateAfterIndex!19 lt!640601 lt!640604 mask!2687) (seekEntryOrOpen!0 lt!640601 lt!640604 mask!2687))))))

(declare-fun b!1463037 () Bool)

(declare-fun res!992443 () Bool)

(assert (=> b!1463037 (=> (not res!992443) (not e!822357))))

(assert (=> b!1463037 (= res!992443 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48184 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48184 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48184 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463038 () Bool)

(declare-fun res!992459 () Bool)

(assert (=> b!1463038 (=> (not res!992459) (not e!822356))))

(declare-fun e!822358 () Bool)

(assert (=> b!1463038 (= res!992459 e!822358)))

(declare-fun c!134803 () Bool)

(assert (=> b!1463038 (= c!134803 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!992452 () Bool)

(assert (=> start!125334 (=> (not res!992452) (not e!822357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125334 (= res!992452 (validMask!0 mask!2687))))

(assert (=> start!125334 e!822357))

(assert (=> start!125334 true))

(declare-fun array_inv!36578 (array!98699) Bool)

(assert (=> start!125334 (array_inv!36578 a!2862)))

(declare-fun lt!640606 () SeekEntryResult!11908)

(declare-fun b!1463039 () Bool)

(assert (=> b!1463039 (= e!822358 (= lt!640606 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640601 lt!640604 mask!2687)))))

(declare-fun b!1463040 () Bool)

(assert (=> b!1463040 (= e!822360 e!822356)))

(declare-fun res!992448 () Bool)

(assert (=> b!1463040 (=> (not res!992448) (not e!822356))))

(assert (=> b!1463040 (= res!992448 (= lt!640606 (Intermediate!11908 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1463040 (= lt!640606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640601 mask!2687) lt!640601 lt!640604 mask!2687))))

(assert (=> b!1463040 (= lt!640601 (select (store (arr!47633 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463041 () Bool)

(assert (=> b!1463041 (= e!822355 (not (= lt!640606 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640602 lt!640601 lt!640604 mask!2687))))))

(declare-fun b!1463042 () Bool)

(declare-fun res!992444 () Bool)

(assert (=> b!1463042 (=> (not res!992444) (not e!822357))))

(declare-datatypes ((List!34314 0))(
  ( (Nil!34311) (Cons!34310 (h!35660 (_ BitVec 64)) (t!49015 List!34314)) )
))
(declare-fun arrayNoDuplicates!0 (array!98699 (_ BitVec 32) List!34314) Bool)

(assert (=> b!1463042 (= res!992444 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34311))))

(declare-fun b!1463043 () Bool)

(declare-fun res!992450 () Bool)

(assert (=> b!1463043 (=> (not res!992450) (not e!822357))))

(assert (=> b!1463043 (= res!992450 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1463044 () Bool)

(assert (=> b!1463044 (= e!822358 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640601 lt!640604 mask!2687) (seekEntryOrOpen!0 lt!640601 lt!640604 mask!2687)))))

(assert (= (and start!125334 res!992452) b!1463027))

(assert (= (and b!1463027 res!992449) b!1463025))

(assert (= (and b!1463025 res!992456) b!1463033))

(assert (= (and b!1463033 res!992445) b!1463043))

(assert (= (and b!1463043 res!992450) b!1463042))

(assert (= (and b!1463042 res!992444) b!1463037))

(assert (= (and b!1463037 res!992443) b!1463031))

(assert (= (and b!1463031 res!992451) b!1463026))

(assert (= (and b!1463026 res!992454) b!1463034))

(assert (= (and b!1463034 res!992455) b!1463040))

(assert (= (and b!1463040 res!992448) b!1463038))

(assert (= (and b!1463038 c!134803) b!1463039))

(assert (= (and b!1463038 (not c!134803)) b!1463044))

(assert (= (and b!1463038 res!992459) b!1463024))

(assert (= (and b!1463024 res!992453) b!1463030))

(assert (= (and b!1463030 res!992460) b!1463032))

(assert (= (and b!1463032 res!992447) b!1463029))

(assert (= (and b!1463030 (not res!992457)) b!1463023))

(assert (= (and b!1463023 (not res!992446)) b!1463035))

(assert (= (and b!1463035 (not res!992458)) b!1463028))

(assert (= (and b!1463028 c!134804) b!1463041))

(assert (= (and b!1463028 (not c!134804)) b!1463036))

(declare-fun m!1350457 () Bool)

(assert (=> b!1463031 m!1350457))

(declare-fun m!1350459 () Bool)

(assert (=> b!1463031 m!1350459))

(declare-fun m!1350461 () Bool)

(assert (=> b!1463026 m!1350461))

(assert (=> b!1463026 m!1350461))

(declare-fun m!1350463 () Bool)

(assert (=> b!1463026 m!1350463))

(assert (=> b!1463026 m!1350463))

(assert (=> b!1463026 m!1350461))

(declare-fun m!1350465 () Bool)

(assert (=> b!1463026 m!1350465))

(declare-fun m!1350467 () Bool)

(assert (=> b!1463036 m!1350467))

(declare-fun m!1350469 () Bool)

(assert (=> b!1463036 m!1350469))

(declare-fun m!1350471 () Bool)

(assert (=> b!1463030 m!1350471))

(assert (=> b!1463030 m!1350457))

(declare-fun m!1350473 () Bool)

(assert (=> b!1463030 m!1350473))

(declare-fun m!1350475 () Bool)

(assert (=> b!1463030 m!1350475))

(declare-fun m!1350477 () Bool)

(assert (=> b!1463030 m!1350477))

(assert (=> b!1463030 m!1350461))

(assert (=> b!1463035 m!1350461))

(assert (=> b!1463035 m!1350461))

(declare-fun m!1350479 () Bool)

(assert (=> b!1463035 m!1350479))

(declare-fun m!1350481 () Bool)

(assert (=> b!1463023 m!1350481))

(assert (=> b!1463034 m!1350461))

(assert (=> b!1463034 m!1350461))

(declare-fun m!1350483 () Bool)

(assert (=> b!1463034 m!1350483))

(declare-fun m!1350485 () Bool)

(assert (=> start!125334 m!1350485))

(declare-fun m!1350487 () Bool)

(assert (=> start!125334 m!1350487))

(declare-fun m!1350489 () Bool)

(assert (=> b!1463043 m!1350489))

(declare-fun m!1350491 () Bool)

(assert (=> b!1463042 m!1350491))

(declare-fun m!1350493 () Bool)

(assert (=> b!1463044 m!1350493))

(assert (=> b!1463044 m!1350469))

(assert (=> b!1463033 m!1350461))

(assert (=> b!1463033 m!1350461))

(declare-fun m!1350495 () Bool)

(assert (=> b!1463033 m!1350495))

(declare-fun m!1350497 () Bool)

(assert (=> b!1463041 m!1350497))

(assert (=> b!1463032 m!1350461))

(assert (=> b!1463032 m!1350461))

(declare-fun m!1350499 () Bool)

(assert (=> b!1463032 m!1350499))

(declare-fun m!1350501 () Bool)

(assert (=> b!1463029 m!1350501))

(assert (=> b!1463029 m!1350461))

(declare-fun m!1350503 () Bool)

(assert (=> b!1463039 m!1350503))

(declare-fun m!1350505 () Bool)

(assert (=> b!1463025 m!1350505))

(assert (=> b!1463025 m!1350505))

(declare-fun m!1350507 () Bool)

(assert (=> b!1463025 m!1350507))

(declare-fun m!1350509 () Bool)

(assert (=> b!1463040 m!1350509))

(assert (=> b!1463040 m!1350509))

(declare-fun m!1350511 () Bool)

(assert (=> b!1463040 m!1350511))

(assert (=> b!1463040 m!1350457))

(declare-fun m!1350513 () Bool)

(assert (=> b!1463040 m!1350513))

(check-sat (not b!1463042) (not b!1463043) (not b!1463025) (not b!1463044) (not b!1463023) (not b!1463034) (not start!125334) (not b!1463026) (not b!1463039) (not b!1463041) (not b!1463035) (not b!1463040) (not b!1463033) (not b!1463030) (not b!1463032) (not b!1463036))
(check-sat)
