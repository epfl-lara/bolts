; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125048 () Bool)

(assert start!125048)

(declare-fun b!1453756 () Bool)

(declare-fun res!984827 () Bool)

(declare-fun e!818239 () Bool)

(assert (=> b!1453756 (=> (not res!984827) (not e!818239))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98413 0))(
  ( (array!98414 (arr!47490 (Array (_ BitVec 32) (_ BitVec 64))) (size!48041 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98413)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1453756 (= res!984827 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48041 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48041 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48041 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453757 () Bool)

(declare-fun res!984820 () Bool)

(assert (=> b!1453757 (=> (not res!984820) (not e!818239))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98413 (_ BitVec 32)) Bool)

(assert (=> b!1453757 (= res!984820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!984825 () Bool)

(assert (=> start!125048 (=> (not res!984825) (not e!818239))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125048 (= res!984825 (validMask!0 mask!2687))))

(assert (=> start!125048 e!818239))

(assert (=> start!125048 true))

(declare-fun array_inv!36435 (array!98413) Bool)

(assert (=> start!125048 (array_inv!36435 a!2862)))

(declare-fun b!1453758 () Bool)

(declare-fun e!818238 () Bool)

(declare-fun e!818241 () Bool)

(assert (=> b!1453758 (= e!818238 e!818241)))

(declare-fun res!984832 () Bool)

(assert (=> b!1453758 (=> (not res!984832) (not e!818241))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11765 0))(
  ( (MissingZero!11765 (index!49451 (_ BitVec 32))) (Found!11765 (index!49452 (_ BitVec 32))) (Intermediate!11765 (undefined!12577 Bool) (index!49453 (_ BitVec 32)) (x!131089 (_ BitVec 32))) (Undefined!11765) (MissingVacant!11765 (index!49454 (_ BitVec 32))) )
))
(declare-fun lt!637312 () SeekEntryResult!11765)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98413 (_ BitVec 32)) SeekEntryResult!11765)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453758 (= res!984832 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47490 a!2862) j!93) mask!2687) (select (arr!47490 a!2862) j!93) a!2862 mask!2687) lt!637312))))

(assert (=> b!1453758 (= lt!637312 (Intermediate!11765 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453759 () Bool)

(declare-fun res!984834 () Bool)

(assert (=> b!1453759 (=> (not res!984834) (not e!818239))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1453759 (= res!984834 (and (= (size!48041 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48041 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48041 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453760 () Bool)

(declare-fun res!984828 () Bool)

(declare-fun e!818235 () Bool)

(assert (=> b!1453760 (=> (not res!984828) (not e!818235))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98413 (_ BitVec 32)) SeekEntryResult!11765)

(assert (=> b!1453760 (= res!984828 (= (seekEntryOrOpen!0 (select (arr!47490 a!2862) j!93) a!2862 mask!2687) (Found!11765 j!93)))))

(declare-fun b!1453761 () Bool)

(declare-fun e!818236 () Bool)

(assert (=> b!1453761 (= e!818236 true)))

(declare-fun lt!637313 () Bool)

(declare-fun e!818237 () Bool)

(assert (=> b!1453761 (= lt!637313 e!818237)))

(declare-fun c!133981 () Bool)

(assert (=> b!1453761 (= c!133981 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1453762 () Bool)

(declare-fun e!818240 () Bool)

(declare-fun e!818234 () Bool)

(assert (=> b!1453762 (= e!818240 (not e!818234))))

(declare-fun res!984837 () Bool)

(assert (=> b!1453762 (=> res!984837 e!818234)))

(assert (=> b!1453762 (= res!984837 (or (and (= (select (arr!47490 a!2862) index!646) (select (store (arr!47490 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47490 a!2862) index!646) (select (arr!47490 a!2862) j!93))) (= (select (arr!47490 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1453762 e!818235))

(declare-fun res!984826 () Bool)

(assert (=> b!1453762 (=> (not res!984826) (not e!818235))))

(assert (=> b!1453762 (= res!984826 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48974 0))(
  ( (Unit!48975) )
))
(declare-fun lt!637308 () Unit!48974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98413 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48974)

(assert (=> b!1453762 (= lt!637308 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!818243 () Bool)

(declare-fun b!1453763 () Bool)

(declare-fun lt!637311 () array!98413)

(declare-fun lt!637310 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98413 (_ BitVec 32)) SeekEntryResult!11765)

(assert (=> b!1453763 (= e!818243 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637310 lt!637311 mask!2687) (seekEntryOrOpen!0 lt!637310 lt!637311 mask!2687)))))

(declare-fun b!1453764 () Bool)

(assert (=> b!1453764 (= e!818235 (and (or (= (select (arr!47490 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47490 a!2862) intermediateBeforeIndex!19) (select (arr!47490 a!2862) j!93))) (let ((bdg!53005 (select (store (arr!47490 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47490 a!2862) index!646) bdg!53005) (= (select (arr!47490 a!2862) index!646) (select (arr!47490 a!2862) j!93))) (= (select (arr!47490 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53005 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1453765 () Bool)

(declare-fun lt!637309 () SeekEntryResult!11765)

(assert (=> b!1453765 (= e!818243 (= lt!637309 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637310 lt!637311 mask!2687)))))

(declare-fun b!1453766 () Bool)

(declare-fun res!984833 () Bool)

(assert (=> b!1453766 (=> (not res!984833) (not e!818241))))

(assert (=> b!1453766 (= res!984833 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47490 a!2862) j!93) a!2862 mask!2687) lt!637312))))

(declare-fun b!1453767 () Bool)

(declare-fun res!984830 () Bool)

(assert (=> b!1453767 (=> (not res!984830) (not e!818240))))

(assert (=> b!1453767 (= res!984830 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453768 () Bool)

(declare-fun res!984831 () Bool)

(assert (=> b!1453768 (=> res!984831 e!818236)))

(declare-fun lt!637314 () (_ BitVec 32))

(assert (=> b!1453768 (= res!984831 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637314 (select (arr!47490 a!2862) j!93) a!2862 mask!2687) lt!637312)))))

(declare-fun b!1453769 () Bool)

(assert (=> b!1453769 (= e!818239 e!818238)))

(declare-fun res!984823 () Bool)

(assert (=> b!1453769 (=> (not res!984823) (not e!818238))))

(assert (=> b!1453769 (= res!984823 (= (select (store (arr!47490 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1453769 (= lt!637311 (array!98414 (store (arr!47490 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48041 a!2862)))))

(declare-fun b!1453770 () Bool)

(assert (=> b!1453770 (= e!818237 (not (= lt!637309 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637314 lt!637310 lt!637311 mask!2687))))))

(declare-fun b!1453771 () Bool)

(declare-fun res!984824 () Bool)

(assert (=> b!1453771 (=> (not res!984824) (not e!818239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453771 (= res!984824 (validKeyInArray!0 (select (arr!47490 a!2862) i!1006)))))

(declare-fun b!1453772 () Bool)

(assert (=> b!1453772 (= e!818241 e!818240)))

(declare-fun res!984829 () Bool)

(assert (=> b!1453772 (=> (not res!984829) (not e!818240))))

(assert (=> b!1453772 (= res!984829 (= lt!637309 (Intermediate!11765 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1453772 (= lt!637309 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637310 mask!2687) lt!637310 lt!637311 mask!2687))))

(assert (=> b!1453772 (= lt!637310 (select (store (arr!47490 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453773 () Bool)

(declare-fun res!984836 () Bool)

(assert (=> b!1453773 (=> (not res!984836) (not e!818240))))

(assert (=> b!1453773 (= res!984836 e!818243)))

(declare-fun c!133982 () Bool)

(assert (=> b!1453773 (= c!133982 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1453774 () Bool)

(declare-fun res!984835 () Bool)

(assert (=> b!1453774 (=> (not res!984835) (not e!818239))))

(assert (=> b!1453774 (= res!984835 (validKeyInArray!0 (select (arr!47490 a!2862) j!93)))))

(declare-fun b!1453775 () Bool)

(assert (=> b!1453775 (= e!818234 e!818236)))

(declare-fun res!984822 () Bool)

(assert (=> b!1453775 (=> res!984822 e!818236)))

(assert (=> b!1453775 (= res!984822 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637314 #b00000000000000000000000000000000) (bvsge lt!637314 (size!48041 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453775 (= lt!637314 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637315 () SeekEntryResult!11765)

(assert (=> b!1453775 (= lt!637315 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637310 lt!637311 mask!2687))))

(assert (=> b!1453775 (= lt!637315 (seekEntryOrOpen!0 lt!637310 lt!637311 mask!2687))))

(declare-fun b!1453776 () Bool)

(declare-fun res!984821 () Bool)

(assert (=> b!1453776 (=> (not res!984821) (not e!818239))))

(declare-datatypes ((List!34171 0))(
  ( (Nil!34168) (Cons!34167 (h!35517 (_ BitVec 64)) (t!48872 List!34171)) )
))
(declare-fun arrayNoDuplicates!0 (array!98413 (_ BitVec 32) List!34171) Bool)

(assert (=> b!1453776 (= res!984821 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34168))))

(declare-fun b!1453777 () Bool)

(assert (=> b!1453777 (= e!818237 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637314 intermediateAfterIndex!19 lt!637310 lt!637311 mask!2687) lt!637315)))))

(assert (= (and start!125048 res!984825) b!1453759))

(assert (= (and b!1453759 res!984834) b!1453771))

(assert (= (and b!1453771 res!984824) b!1453774))

(assert (= (and b!1453774 res!984835) b!1453757))

(assert (= (and b!1453757 res!984820) b!1453776))

(assert (= (and b!1453776 res!984821) b!1453756))

(assert (= (and b!1453756 res!984827) b!1453769))

(assert (= (and b!1453769 res!984823) b!1453758))

(assert (= (and b!1453758 res!984832) b!1453766))

(assert (= (and b!1453766 res!984833) b!1453772))

(assert (= (and b!1453772 res!984829) b!1453773))

(assert (= (and b!1453773 c!133982) b!1453765))

(assert (= (and b!1453773 (not c!133982)) b!1453763))

(assert (= (and b!1453773 res!984836) b!1453767))

(assert (= (and b!1453767 res!984830) b!1453762))

(assert (= (and b!1453762 res!984826) b!1453760))

(assert (= (and b!1453760 res!984828) b!1453764))

(assert (= (and b!1453762 (not res!984837)) b!1453775))

(assert (= (and b!1453775 (not res!984822)) b!1453768))

(assert (= (and b!1453768 (not res!984831)) b!1453761))

(assert (= (and b!1453761 c!133981) b!1453770))

(assert (= (and b!1453761 (not c!133981)) b!1453777))

(declare-fun m!1342229 () Bool)

(assert (=> start!125048 m!1342229))

(declare-fun m!1342231 () Bool)

(assert (=> start!125048 m!1342231))

(declare-fun m!1342233 () Bool)

(assert (=> b!1453762 m!1342233))

(declare-fun m!1342235 () Bool)

(assert (=> b!1453762 m!1342235))

(declare-fun m!1342237 () Bool)

(assert (=> b!1453762 m!1342237))

(declare-fun m!1342239 () Bool)

(assert (=> b!1453762 m!1342239))

(declare-fun m!1342241 () Bool)

(assert (=> b!1453762 m!1342241))

(declare-fun m!1342243 () Bool)

(assert (=> b!1453762 m!1342243))

(declare-fun m!1342245 () Bool)

(assert (=> b!1453757 m!1342245))

(declare-fun m!1342247 () Bool)

(assert (=> b!1453770 m!1342247))

(assert (=> b!1453764 m!1342235))

(declare-fun m!1342249 () Bool)

(assert (=> b!1453764 m!1342249))

(assert (=> b!1453764 m!1342237))

(assert (=> b!1453764 m!1342239))

(assert (=> b!1453764 m!1342243))

(assert (=> b!1453768 m!1342243))

(assert (=> b!1453768 m!1342243))

(declare-fun m!1342251 () Bool)

(assert (=> b!1453768 m!1342251))

(assert (=> b!1453758 m!1342243))

(assert (=> b!1453758 m!1342243))

(declare-fun m!1342253 () Bool)

(assert (=> b!1453758 m!1342253))

(assert (=> b!1453758 m!1342253))

(assert (=> b!1453758 m!1342243))

(declare-fun m!1342255 () Bool)

(assert (=> b!1453758 m!1342255))

(assert (=> b!1453774 m!1342243))

(assert (=> b!1453774 m!1342243))

(declare-fun m!1342257 () Bool)

(assert (=> b!1453774 m!1342257))

(declare-fun m!1342259 () Bool)

(assert (=> b!1453772 m!1342259))

(assert (=> b!1453772 m!1342259))

(declare-fun m!1342261 () Bool)

(assert (=> b!1453772 m!1342261))

(assert (=> b!1453772 m!1342235))

(declare-fun m!1342263 () Bool)

(assert (=> b!1453772 m!1342263))

(assert (=> b!1453766 m!1342243))

(assert (=> b!1453766 m!1342243))

(declare-fun m!1342265 () Bool)

(assert (=> b!1453766 m!1342265))

(assert (=> b!1453760 m!1342243))

(assert (=> b!1453760 m!1342243))

(declare-fun m!1342267 () Bool)

(assert (=> b!1453760 m!1342267))

(declare-fun m!1342269 () Bool)

(assert (=> b!1453771 m!1342269))

(assert (=> b!1453771 m!1342269))

(declare-fun m!1342271 () Bool)

(assert (=> b!1453771 m!1342271))

(declare-fun m!1342273 () Bool)

(assert (=> b!1453776 m!1342273))

(declare-fun m!1342275 () Bool)

(assert (=> b!1453777 m!1342275))

(declare-fun m!1342277 () Bool)

(assert (=> b!1453765 m!1342277))

(declare-fun m!1342279 () Bool)

(assert (=> b!1453763 m!1342279))

(declare-fun m!1342281 () Bool)

(assert (=> b!1453763 m!1342281))

(assert (=> b!1453769 m!1342235))

(declare-fun m!1342283 () Bool)

(assert (=> b!1453769 m!1342283))

(declare-fun m!1342285 () Bool)

(assert (=> b!1453775 m!1342285))

(assert (=> b!1453775 m!1342279))

(assert (=> b!1453775 m!1342281))

(push 1)

