; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125134 () Bool)

(assert start!125134)

(declare-fun b!1456594 () Bool)

(declare-fun res!987150 () Bool)

(declare-fun e!819525 () Bool)

(assert (=> b!1456594 (=> (not res!987150) (not e!819525))))

(declare-datatypes ((array!98499 0))(
  ( (array!98500 (arr!47533 (Array (_ BitVec 32) (_ BitVec 64))) (size!48084 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98499)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456594 (= res!987150 (validKeyInArray!0 (select (arr!47533 a!2862) j!93)))))

(declare-fun b!1456595 () Bool)

(declare-fun res!987149 () Bool)

(assert (=> b!1456595 (=> (not res!987149) (not e!819525))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98499 (_ BitVec 32)) Bool)

(assert (=> b!1456595 (= res!987149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1456596 () Bool)

(declare-fun res!987157 () Bool)

(declare-fun e!819529 () Bool)

(assert (=> b!1456596 (=> (not res!987157) (not e!819529))))

(declare-fun e!819524 () Bool)

(assert (=> b!1456596 (= res!987157 e!819524)))

(declare-fun c!134239 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1456596 (= c!134239 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!638344 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11808 0))(
  ( (MissingZero!11808 (index!49623 (_ BitVec 32))) (Found!11808 (index!49624 (_ BitVec 32))) (Intermediate!11808 (undefined!12620 Bool) (index!49625 (_ BitVec 32)) (x!131252 (_ BitVec 32))) (Undefined!11808) (MissingVacant!11808 (index!49626 (_ BitVec 32))) )
))
(declare-fun lt!638345 () SeekEntryResult!11808)

(declare-fun lt!638341 () array!98499)

(declare-fun b!1456597 () Bool)

(declare-fun e!819532 () Bool)

(declare-fun lt!638343 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98499 (_ BitVec 32)) SeekEntryResult!11808)

(assert (=> b!1456597 (= e!819532 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638343 intermediateAfterIndex!19 lt!638344 lt!638341 mask!2687) lt!638345)))))

(declare-fun b!1456598 () Bool)

(declare-fun res!987151 () Bool)

(assert (=> b!1456598 (=> (not res!987151) (not e!819525))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1456598 (= res!987151 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48084 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48084 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48084 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456599 () Bool)

(declare-fun res!987156 () Bool)

(assert (=> b!1456599 (=> (not res!987156) (not e!819525))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1456599 (= res!987156 (and (= (size!48084 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48084 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48084 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!987154 () Bool)

(assert (=> start!125134 (=> (not res!987154) (not e!819525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125134 (= res!987154 (validMask!0 mask!2687))))

(assert (=> start!125134 e!819525))

(assert (=> start!125134 true))

(declare-fun array_inv!36478 (array!98499) Bool)

(assert (=> start!125134 (array_inv!36478 a!2862)))

(declare-fun b!1456600 () Bool)

(declare-fun res!987148 () Bool)

(assert (=> b!1456600 (=> (not res!987148) (not e!819525))))

(declare-datatypes ((List!34214 0))(
  ( (Nil!34211) (Cons!34210 (h!35560 (_ BitVec 64)) (t!48915 List!34214)) )
))
(declare-fun arrayNoDuplicates!0 (array!98499 (_ BitVec 32) List!34214) Bool)

(assert (=> b!1456600 (= res!987148 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34211))))

(declare-fun b!1456601 () Bool)

(declare-fun e!819531 () Bool)

(declare-fun e!819530 () Bool)

(assert (=> b!1456601 (= e!819531 e!819530)))

(declare-fun res!987159 () Bool)

(assert (=> b!1456601 (=> (not res!987159) (not e!819530))))

(declare-fun lt!638340 () SeekEntryResult!11808)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98499 (_ BitVec 32)) SeekEntryResult!11808)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456601 (= res!987159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47533 a!2862) j!93) mask!2687) (select (arr!47533 a!2862) j!93) a!2862 mask!2687) lt!638340))))

(assert (=> b!1456601 (= lt!638340 (Intermediate!11808 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456602 () Bool)

(declare-fun res!987142 () Bool)

(assert (=> b!1456602 (=> (not res!987142) (not e!819530))))

(assert (=> b!1456602 (= res!987142 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47533 a!2862) j!93) a!2862 mask!2687) lt!638340))))

(declare-fun b!1456603 () Bool)

(assert (=> b!1456603 (= e!819530 e!819529)))

(declare-fun res!987144 () Bool)

(assert (=> b!1456603 (=> (not res!987144) (not e!819529))))

(declare-fun lt!638342 () SeekEntryResult!11808)

(assert (=> b!1456603 (= res!987144 (= lt!638342 (Intermediate!11808 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1456603 (= lt!638342 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638344 mask!2687) lt!638344 lt!638341 mask!2687))))

(assert (=> b!1456603 (= lt!638344 (select (store (arr!47533 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456604 () Bool)

(declare-fun e!819528 () Bool)

(assert (=> b!1456604 (= e!819528 true)))

(declare-fun lt!638346 () Bool)

(assert (=> b!1456604 (= lt!638346 e!819532)))

(declare-fun c!134240 () Bool)

(assert (=> b!1456604 (= c!134240 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1456605 () Bool)

(declare-fun res!987143 () Bool)

(assert (=> b!1456605 (=> (not res!987143) (not e!819529))))

(assert (=> b!1456605 (= res!987143 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456606 () Bool)

(declare-fun res!987145 () Bool)

(declare-fun e!819526 () Bool)

(assert (=> b!1456606 (=> (not res!987145) (not e!819526))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98499 (_ BitVec 32)) SeekEntryResult!11808)

(assert (=> b!1456606 (= res!987145 (= (seekEntryOrOpen!0 (select (arr!47533 a!2862) j!93) a!2862 mask!2687) (Found!11808 j!93)))))

(declare-fun b!1456607 () Bool)

(assert (=> b!1456607 (= e!819524 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638344 lt!638341 mask!2687) (seekEntryOrOpen!0 lt!638344 lt!638341 mask!2687)))))

(declare-fun b!1456608 () Bool)

(declare-fun e!819527 () Bool)

(assert (=> b!1456608 (= e!819529 (not e!819527))))

(declare-fun res!987152 () Bool)

(assert (=> b!1456608 (=> res!987152 e!819527)))

(assert (=> b!1456608 (= res!987152 (or (and (= (select (arr!47533 a!2862) index!646) (select (store (arr!47533 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47533 a!2862) index!646) (select (arr!47533 a!2862) j!93))) (= (select (arr!47533 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456608 e!819526))

(declare-fun res!987153 () Bool)

(assert (=> b!1456608 (=> (not res!987153) (not e!819526))))

(assert (=> b!1456608 (= res!987153 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49060 0))(
  ( (Unit!49061) )
))
(declare-fun lt!638347 () Unit!49060)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98499 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49060)

(assert (=> b!1456608 (= lt!638347 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456609 () Bool)

(declare-fun res!987155 () Bool)

(assert (=> b!1456609 (=> res!987155 e!819528)))

(assert (=> b!1456609 (= res!987155 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638343 (select (arr!47533 a!2862) j!93) a!2862 mask!2687) lt!638340)))))

(declare-fun b!1456610 () Bool)

(assert (=> b!1456610 (= e!819525 e!819531)))

(declare-fun res!987146 () Bool)

(assert (=> b!1456610 (=> (not res!987146) (not e!819531))))

(assert (=> b!1456610 (= res!987146 (= (select (store (arr!47533 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456610 (= lt!638341 (array!98500 (store (arr!47533 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48084 a!2862)))))

(declare-fun b!1456611 () Bool)

(assert (=> b!1456611 (= e!819524 (= lt!638342 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638344 lt!638341 mask!2687)))))

(declare-fun b!1456612 () Bool)

(declare-fun res!987158 () Bool)

(assert (=> b!1456612 (=> (not res!987158) (not e!819525))))

(assert (=> b!1456612 (= res!987158 (validKeyInArray!0 (select (arr!47533 a!2862) i!1006)))))

(declare-fun b!1456613 () Bool)

(assert (=> b!1456613 (= e!819526 (and (or (= (select (arr!47533 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47533 a!2862) intermediateBeforeIndex!19) (select (arr!47533 a!2862) j!93))) (let ((bdg!53269 (select (store (arr!47533 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47533 a!2862) index!646) bdg!53269) (= (select (arr!47533 a!2862) index!646) (select (arr!47533 a!2862) j!93))) (= (select (arr!47533 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53269 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456614 () Bool)

(assert (=> b!1456614 (= e!819527 e!819528)))

(declare-fun res!987147 () Bool)

(assert (=> b!1456614 (=> res!987147 e!819528)))

(assert (=> b!1456614 (= res!987147 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638343 #b00000000000000000000000000000000) (bvsge lt!638343 (size!48084 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456614 (= lt!638343 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456614 (= lt!638345 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638344 lt!638341 mask!2687))))

(assert (=> b!1456614 (= lt!638345 (seekEntryOrOpen!0 lt!638344 lt!638341 mask!2687))))

(declare-fun b!1456615 () Bool)

(assert (=> b!1456615 (= e!819532 (not (= lt!638342 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638343 lt!638344 lt!638341 mask!2687))))))

(assert (= (and start!125134 res!987154) b!1456599))

(assert (= (and b!1456599 res!987156) b!1456612))

(assert (= (and b!1456612 res!987158) b!1456594))

(assert (= (and b!1456594 res!987150) b!1456595))

(assert (= (and b!1456595 res!987149) b!1456600))

(assert (= (and b!1456600 res!987148) b!1456598))

(assert (= (and b!1456598 res!987151) b!1456610))

(assert (= (and b!1456610 res!987146) b!1456601))

(assert (= (and b!1456601 res!987159) b!1456602))

(assert (= (and b!1456602 res!987142) b!1456603))

(assert (= (and b!1456603 res!987144) b!1456596))

(assert (= (and b!1456596 c!134239) b!1456611))

(assert (= (and b!1456596 (not c!134239)) b!1456607))

(assert (= (and b!1456596 res!987157) b!1456605))

(assert (= (and b!1456605 res!987143) b!1456608))

(assert (= (and b!1456608 res!987153) b!1456606))

(assert (= (and b!1456606 res!987145) b!1456613))

(assert (= (and b!1456608 (not res!987152)) b!1456614))

(assert (= (and b!1456614 (not res!987147)) b!1456609))

(assert (= (and b!1456609 (not res!987155)) b!1456604))

(assert (= (and b!1456604 c!134240) b!1456615))

(assert (= (and b!1456604 (not c!134240)) b!1456597))

(declare-fun m!1344723 () Bool)

(assert (=> b!1456597 m!1344723))

(declare-fun m!1344725 () Bool)

(assert (=> b!1456606 m!1344725))

(assert (=> b!1456606 m!1344725))

(declare-fun m!1344727 () Bool)

(assert (=> b!1456606 m!1344727))

(declare-fun m!1344729 () Bool)

(assert (=> start!125134 m!1344729))

(declare-fun m!1344731 () Bool)

(assert (=> start!125134 m!1344731))

(assert (=> b!1456602 m!1344725))

(assert (=> b!1456602 m!1344725))

(declare-fun m!1344733 () Bool)

(assert (=> b!1456602 m!1344733))

(declare-fun m!1344735 () Bool)

(assert (=> b!1456600 m!1344735))

(declare-fun m!1344737 () Bool)

(assert (=> b!1456603 m!1344737))

(assert (=> b!1456603 m!1344737))

(declare-fun m!1344739 () Bool)

(assert (=> b!1456603 m!1344739))

(declare-fun m!1344741 () Bool)

(assert (=> b!1456603 m!1344741))

(declare-fun m!1344743 () Bool)

(assert (=> b!1456603 m!1344743))

(declare-fun m!1344745 () Bool)

(assert (=> b!1456612 m!1344745))

(assert (=> b!1456612 m!1344745))

(declare-fun m!1344747 () Bool)

(assert (=> b!1456612 m!1344747))

(assert (=> b!1456610 m!1344741))

(declare-fun m!1344749 () Bool)

(assert (=> b!1456610 m!1344749))

(declare-fun m!1344751 () Bool)

(assert (=> b!1456607 m!1344751))

(declare-fun m!1344753 () Bool)

(assert (=> b!1456607 m!1344753))

(assert (=> b!1456594 m!1344725))

(assert (=> b!1456594 m!1344725))

(declare-fun m!1344755 () Bool)

(assert (=> b!1456594 m!1344755))

(assert (=> b!1456609 m!1344725))

(assert (=> b!1456609 m!1344725))

(declare-fun m!1344757 () Bool)

(assert (=> b!1456609 m!1344757))

(assert (=> b!1456601 m!1344725))

(assert (=> b!1456601 m!1344725))

(declare-fun m!1344759 () Bool)

(assert (=> b!1456601 m!1344759))

(assert (=> b!1456601 m!1344759))

(assert (=> b!1456601 m!1344725))

(declare-fun m!1344761 () Bool)

(assert (=> b!1456601 m!1344761))

(declare-fun m!1344763 () Bool)

(assert (=> b!1456614 m!1344763))

(assert (=> b!1456614 m!1344751))

(assert (=> b!1456614 m!1344753))

(declare-fun m!1344765 () Bool)

(assert (=> b!1456595 m!1344765))

(assert (=> b!1456613 m!1344741))

(declare-fun m!1344767 () Bool)

(assert (=> b!1456613 m!1344767))

(declare-fun m!1344769 () Bool)

(assert (=> b!1456613 m!1344769))

(declare-fun m!1344771 () Bool)

(assert (=> b!1456613 m!1344771))

(assert (=> b!1456613 m!1344725))

(declare-fun m!1344773 () Bool)

(assert (=> b!1456615 m!1344773))

(declare-fun m!1344775 () Bool)

(assert (=> b!1456608 m!1344775))

(assert (=> b!1456608 m!1344741))

(assert (=> b!1456608 m!1344769))

(assert (=> b!1456608 m!1344771))

(declare-fun m!1344777 () Bool)

(assert (=> b!1456608 m!1344777))

(assert (=> b!1456608 m!1344725))

(declare-fun m!1344779 () Bool)

(assert (=> b!1456611 m!1344779))

(push 1)

