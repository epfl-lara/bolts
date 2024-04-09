; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126432 () Bool)

(assert start!126432)

(declare-fun b!1481685 () Bool)

(declare-fun res!1007089 () Bool)

(declare-fun e!830994 () Bool)

(assert (=> b!1481685 (=> (not res!1007089) (not e!830994))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99368 0))(
  ( (array!99369 (arr!47957 (Array (_ BitVec 32) (_ BitVec 64))) (size!48508 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99368)

(assert (=> b!1481685 (= res!1007089 (and (= (size!48508 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48508 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48508 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1481686 () Bool)

(declare-fun e!830995 () Bool)

(declare-fun e!830997 () Bool)

(assert (=> b!1481686 (= e!830995 e!830997)))

(declare-fun res!1007093 () Bool)

(assert (=> b!1481686 (=> (not res!1007093) (not e!830997))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12220 0))(
  ( (MissingZero!12220 (index!51271 (_ BitVec 32))) (Found!12220 (index!51272 (_ BitVec 32))) (Intermediate!12220 (undefined!13032 Bool) (index!51273 (_ BitVec 32)) (x!132858 (_ BitVec 32))) (Undefined!12220) (MissingVacant!12220 (index!51274 (_ BitVec 32))) )
))
(declare-fun lt!646816 () SeekEntryResult!12220)

(assert (=> b!1481686 (= res!1007093 (= lt!646816 (Intermediate!12220 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!646814 () array!99368)

(declare-fun lt!646812 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99368 (_ BitVec 32)) SeekEntryResult!12220)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1481686 (= lt!646816 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646812 mask!2687) lt!646812 lt!646814 mask!2687))))

(assert (=> b!1481686 (= lt!646812 (select (store (arr!47957 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1007091 () Bool)

(assert (=> start!126432 (=> (not res!1007091) (not e!830994))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126432 (= res!1007091 (validMask!0 mask!2687))))

(assert (=> start!126432 e!830994))

(assert (=> start!126432 true))

(declare-fun array_inv!36902 (array!99368) Bool)

(assert (=> start!126432 (array_inv!36902 a!2862)))

(declare-fun b!1481687 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!830993 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99368 (_ BitVec 32)) SeekEntryResult!12220)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99368 (_ BitVec 32)) SeekEntryResult!12220)

(assert (=> b!1481687 (= e!830993 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646812 lt!646814 mask!2687) (seekEntryOrOpen!0 lt!646812 lt!646814 mask!2687)))))

(declare-fun b!1481688 () Bool)

(declare-fun res!1007094 () Bool)

(assert (=> b!1481688 (=> (not res!1007094) (not e!830994))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1481688 (= res!1007094 (validKeyInArray!0 (select (arr!47957 a!2862) j!93)))))

(declare-fun e!830996 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1481689 () Bool)

(assert (=> b!1481689 (= e!830996 (and (or (= (select (arr!47957 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47957 a!2862) intermediateBeforeIndex!19) (select (arr!47957 a!2862) j!93))) (or (and (= (select (arr!47957 a!2862) index!646) (select (store (arr!47957 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47957 a!2862) index!646) (select (arr!47957 a!2862) j!93))) (= (select (arr!47957 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47957 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1481690 () Bool)

(declare-fun e!830998 () Bool)

(assert (=> b!1481690 (= e!830998 e!830995)))

(declare-fun res!1007081 () Bool)

(assert (=> b!1481690 (=> (not res!1007081) (not e!830995))))

(declare-fun lt!646815 () SeekEntryResult!12220)

(assert (=> b!1481690 (= res!1007081 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47957 a!2862) j!93) mask!2687) (select (arr!47957 a!2862) j!93) a!2862 mask!2687) lt!646815))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1481690 (= lt!646815 (Intermediate!12220 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1481691 () Bool)

(assert (=> b!1481691 (= e!830997 (not true))))

(assert (=> b!1481691 e!830996))

(declare-fun res!1007082 () Bool)

(assert (=> b!1481691 (=> (not res!1007082) (not e!830996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99368 (_ BitVec 32)) Bool)

(assert (=> b!1481691 (= res!1007082 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49728 0))(
  ( (Unit!49729) )
))
(declare-fun lt!646813 () Unit!49728)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99368 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49728)

(assert (=> b!1481691 (= lt!646813 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1481692 () Bool)

(declare-fun res!1007086 () Bool)

(assert (=> b!1481692 (=> (not res!1007086) (not e!830994))))

(declare-datatypes ((List!34638 0))(
  ( (Nil!34635) (Cons!34634 (h!36005 (_ BitVec 64)) (t!49339 List!34638)) )
))
(declare-fun arrayNoDuplicates!0 (array!99368 (_ BitVec 32) List!34638) Bool)

(assert (=> b!1481692 (= res!1007086 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34635))))

(declare-fun b!1481693 () Bool)

(assert (=> b!1481693 (= e!830994 e!830998)))

(declare-fun res!1007080 () Bool)

(assert (=> b!1481693 (=> (not res!1007080) (not e!830998))))

(assert (=> b!1481693 (= res!1007080 (= (select (store (arr!47957 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1481693 (= lt!646814 (array!99369 (store (arr!47957 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48508 a!2862)))))

(declare-fun b!1481694 () Bool)

(declare-fun res!1007087 () Bool)

(assert (=> b!1481694 (=> (not res!1007087) (not e!830995))))

(assert (=> b!1481694 (= res!1007087 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47957 a!2862) j!93) a!2862 mask!2687) lt!646815))))

(declare-fun b!1481695 () Bool)

(declare-fun res!1007083 () Bool)

(assert (=> b!1481695 (=> (not res!1007083) (not e!830996))))

(assert (=> b!1481695 (= res!1007083 (= (seekEntryOrOpen!0 (select (arr!47957 a!2862) j!93) a!2862 mask!2687) (Found!12220 j!93)))))

(declare-fun b!1481696 () Bool)

(declare-fun res!1007084 () Bool)

(assert (=> b!1481696 (=> (not res!1007084) (not e!830994))))

(assert (=> b!1481696 (= res!1007084 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1481697 () Bool)

(assert (=> b!1481697 (= e!830993 (= lt!646816 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646812 lt!646814 mask!2687)))))

(declare-fun b!1481698 () Bool)

(declare-fun res!1007088 () Bool)

(assert (=> b!1481698 (=> (not res!1007088) (not e!830994))))

(assert (=> b!1481698 (= res!1007088 (validKeyInArray!0 (select (arr!47957 a!2862) i!1006)))))

(declare-fun b!1481699 () Bool)

(declare-fun res!1007090 () Bool)

(assert (=> b!1481699 (=> (not res!1007090) (not e!830997))))

(assert (=> b!1481699 (= res!1007090 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1481700 () Bool)

(declare-fun res!1007085 () Bool)

(assert (=> b!1481700 (=> (not res!1007085) (not e!830997))))

(assert (=> b!1481700 (= res!1007085 e!830993)))

(declare-fun c!136826 () Bool)

(assert (=> b!1481700 (= c!136826 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1481701 () Bool)

(declare-fun res!1007092 () Bool)

(assert (=> b!1481701 (=> (not res!1007092) (not e!830994))))

(assert (=> b!1481701 (= res!1007092 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48508 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48508 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48508 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!126432 res!1007091) b!1481685))

(assert (= (and b!1481685 res!1007089) b!1481698))

(assert (= (and b!1481698 res!1007088) b!1481688))

(assert (= (and b!1481688 res!1007094) b!1481696))

(assert (= (and b!1481696 res!1007084) b!1481692))

(assert (= (and b!1481692 res!1007086) b!1481701))

(assert (= (and b!1481701 res!1007092) b!1481693))

(assert (= (and b!1481693 res!1007080) b!1481690))

(assert (= (and b!1481690 res!1007081) b!1481694))

(assert (= (and b!1481694 res!1007087) b!1481686))

(assert (= (and b!1481686 res!1007093) b!1481700))

(assert (= (and b!1481700 c!136826) b!1481697))

(assert (= (and b!1481700 (not c!136826)) b!1481687))

(assert (= (and b!1481700 res!1007085) b!1481699))

(assert (= (and b!1481699 res!1007090) b!1481691))

(assert (= (and b!1481691 res!1007082) b!1481695))

(assert (= (and b!1481695 res!1007083) b!1481689))

(declare-fun m!1367477 () Bool)

(assert (=> b!1481687 m!1367477))

(declare-fun m!1367479 () Bool)

(assert (=> b!1481687 m!1367479))

(declare-fun m!1367481 () Bool)

(assert (=> b!1481690 m!1367481))

(assert (=> b!1481690 m!1367481))

(declare-fun m!1367483 () Bool)

(assert (=> b!1481690 m!1367483))

(assert (=> b!1481690 m!1367483))

(assert (=> b!1481690 m!1367481))

(declare-fun m!1367485 () Bool)

(assert (=> b!1481690 m!1367485))

(declare-fun m!1367487 () Bool)

(assert (=> b!1481693 m!1367487))

(declare-fun m!1367489 () Bool)

(assert (=> b!1481693 m!1367489))

(declare-fun m!1367491 () Bool)

(assert (=> b!1481696 m!1367491))

(assert (=> b!1481694 m!1367481))

(assert (=> b!1481694 m!1367481))

(declare-fun m!1367493 () Bool)

(assert (=> b!1481694 m!1367493))

(assert (=> b!1481688 m!1367481))

(assert (=> b!1481688 m!1367481))

(declare-fun m!1367495 () Bool)

(assert (=> b!1481688 m!1367495))

(assert (=> b!1481695 m!1367481))

(assert (=> b!1481695 m!1367481))

(declare-fun m!1367497 () Bool)

(assert (=> b!1481695 m!1367497))

(declare-fun m!1367499 () Bool)

(assert (=> b!1481691 m!1367499))

(declare-fun m!1367501 () Bool)

(assert (=> b!1481691 m!1367501))

(declare-fun m!1367503 () Bool)

(assert (=> start!126432 m!1367503))

(declare-fun m!1367505 () Bool)

(assert (=> start!126432 m!1367505))

(declare-fun m!1367507 () Bool)

(assert (=> b!1481686 m!1367507))

(assert (=> b!1481686 m!1367507))

(declare-fun m!1367509 () Bool)

(assert (=> b!1481686 m!1367509))

(assert (=> b!1481686 m!1367487))

(declare-fun m!1367511 () Bool)

(assert (=> b!1481686 m!1367511))

(declare-fun m!1367513 () Bool)

(assert (=> b!1481692 m!1367513))

(declare-fun m!1367515 () Bool)

(assert (=> b!1481698 m!1367515))

(assert (=> b!1481698 m!1367515))

(declare-fun m!1367517 () Bool)

(assert (=> b!1481698 m!1367517))

(assert (=> b!1481689 m!1367487))

(declare-fun m!1367519 () Bool)

(assert (=> b!1481689 m!1367519))

(declare-fun m!1367521 () Bool)

(assert (=> b!1481689 m!1367521))

(declare-fun m!1367523 () Bool)

(assert (=> b!1481689 m!1367523))

(assert (=> b!1481689 m!1367481))

(declare-fun m!1367525 () Bool)

(assert (=> b!1481697 m!1367525))

(check-sat (not start!126432) (not b!1481688) (not b!1481690) (not b!1481691) (not b!1481686) (not b!1481687) (not b!1481695) (not b!1481696) (not b!1481694) (not b!1481698) (not b!1481692) (not b!1481697))
(check-sat)
