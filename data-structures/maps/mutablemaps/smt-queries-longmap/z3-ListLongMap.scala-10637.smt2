; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125004 () Bool)

(assert start!125004)

(declare-fun res!983703 () Bool)

(declare-fun e!817673 () Bool)

(assert (=> start!125004 (=> (not res!983703) (not e!817673))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125004 (= res!983703 (validMask!0 mask!2687))))

(assert (=> start!125004 e!817673))

(assert (=> start!125004 true))

(declare-datatypes ((array!98369 0))(
  ( (array!98370 (arr!47468 (Array (_ BitVec 32) (_ BitVec 64))) (size!48019 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98369)

(declare-fun array_inv!36413 (array!98369) Bool)

(assert (=> start!125004 (array_inv!36413 a!2862)))

(declare-fun b!1452477 () Bool)

(declare-fun res!983693 () Bool)

(assert (=> b!1452477 (=> (not res!983693) (not e!817673))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1452477 (= res!983693 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48019 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48019 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48019 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452478 () Bool)

(declare-fun res!983695 () Bool)

(assert (=> b!1452478 (=> (not res!983695) (not e!817673))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452478 (= res!983695 (validKeyInArray!0 (select (arr!47468 a!2862) i!1006)))))

(declare-fun b!1452479 () Bool)

(declare-fun res!983692 () Bool)

(assert (=> b!1452479 (=> (not res!983692) (not e!817673))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1452479 (= res!983692 (and (= (size!48019 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48019 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48019 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452480 () Bool)

(declare-fun e!817671 () Bool)

(declare-fun e!817672 () Bool)

(assert (=> b!1452480 (= e!817671 e!817672)))

(declare-fun res!983690 () Bool)

(assert (=> b!1452480 (=> (not res!983690) (not e!817672))))

(declare-datatypes ((SeekEntryResult!11743 0))(
  ( (MissingZero!11743 (index!49363 (_ BitVec 32))) (Found!11743 (index!49364 (_ BitVec 32))) (Intermediate!11743 (undefined!12555 Bool) (index!49365 (_ BitVec 32)) (x!131011 (_ BitVec 32))) (Undefined!11743) (MissingVacant!11743 (index!49366 (_ BitVec 32))) )
))
(declare-fun lt!636922 () SeekEntryResult!11743)

(assert (=> b!1452480 (= res!983690 (= lt!636922 (Intermediate!11743 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!636919 () array!98369)

(declare-fun lt!636920 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98369 (_ BitVec 32)) SeekEntryResult!11743)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452480 (= lt!636922 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636920 mask!2687) lt!636920 lt!636919 mask!2687))))

(assert (=> b!1452480 (= lt!636920 (select (store (arr!47468 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452481 () Bool)

(declare-fun e!817668 () Bool)

(assert (=> b!1452481 (= e!817673 e!817668)))

(declare-fun res!983698 () Bool)

(assert (=> b!1452481 (=> (not res!983698) (not e!817668))))

(assert (=> b!1452481 (= res!983698 (= (select (store (arr!47468 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452481 (= lt!636919 (array!98370 (store (arr!47468 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48019 a!2862)))))

(declare-fun b!1452482 () Bool)

(declare-fun res!983689 () Bool)

(assert (=> b!1452482 (=> (not res!983689) (not e!817671))))

(declare-fun lt!636918 () SeekEntryResult!11743)

(assert (=> b!1452482 (= res!983689 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47468 a!2862) j!93) a!2862 mask!2687) lt!636918))))

(declare-fun b!1452483 () Bool)

(declare-fun res!983696 () Bool)

(assert (=> b!1452483 (=> (not res!983696) (not e!817673))))

(declare-datatypes ((List!34149 0))(
  ( (Nil!34146) (Cons!34145 (h!35495 (_ BitVec 64)) (t!48850 List!34149)) )
))
(declare-fun arrayNoDuplicates!0 (array!98369 (_ BitVec 32) List!34149) Bool)

(assert (=> b!1452483 (= res!983696 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34146))))

(declare-fun b!1452484 () Bool)

(declare-fun res!983702 () Bool)

(declare-fun e!817670 () Bool)

(assert (=> b!1452484 (=> (not res!983702) (not e!817670))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98369 (_ BitVec 32)) SeekEntryResult!11743)

(assert (=> b!1452484 (= res!983702 (= (seekEntryOrOpen!0 (select (arr!47468 a!2862) j!93) a!2862 mask!2687) (Found!11743 j!93)))))

(declare-fun b!1452485 () Bool)

(declare-fun res!983701 () Bool)

(assert (=> b!1452485 (=> (not res!983701) (not e!817672))))

(declare-fun e!817667 () Bool)

(assert (=> b!1452485 (= res!983701 e!817667)))

(declare-fun c!133907 () Bool)

(assert (=> b!1452485 (= c!133907 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452486 () Bool)

(assert (=> b!1452486 (= e!817670 (and (or (= (select (arr!47468 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47468 a!2862) intermediateBeforeIndex!19) (select (arr!47468 a!2862) j!93))) (or (and (= (select (arr!47468 a!2862) index!646) (select (store (arr!47468 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47468 a!2862) index!646) (select (arr!47468 a!2862) j!93))) (= (select (arr!47468 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47468 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452487 () Bool)

(declare-fun res!983691 () Bool)

(assert (=> b!1452487 (=> (not res!983691) (not e!817673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98369 (_ BitVec 32)) Bool)

(assert (=> b!1452487 (= res!983691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452488 () Bool)

(assert (=> b!1452488 (= e!817672 (not (or (and (= (select (arr!47468 a!2862) index!646) (select (store (arr!47468 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47468 a!2862) index!646) (select (arr!47468 a!2862) j!93))) (= (select (arr!47468 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvslt intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1452488 e!817670))

(declare-fun res!983697 () Bool)

(assert (=> b!1452488 (=> (not res!983697) (not e!817670))))

(assert (=> b!1452488 (= res!983697 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48930 0))(
  ( (Unit!48931) )
))
(declare-fun lt!636921 () Unit!48930)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98369 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48930)

(assert (=> b!1452488 (= lt!636921 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452489 () Bool)

(assert (=> b!1452489 (= e!817667 (= lt!636922 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636920 lt!636919 mask!2687)))))

(declare-fun b!1452490 () Bool)

(assert (=> b!1452490 (= e!817668 e!817671)))

(declare-fun res!983694 () Bool)

(assert (=> b!1452490 (=> (not res!983694) (not e!817671))))

(assert (=> b!1452490 (= res!983694 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47468 a!2862) j!93) mask!2687) (select (arr!47468 a!2862) j!93) a!2862 mask!2687) lt!636918))))

(assert (=> b!1452490 (= lt!636918 (Intermediate!11743 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452491 () Bool)

(declare-fun res!983699 () Bool)

(assert (=> b!1452491 (=> (not res!983699) (not e!817672))))

(assert (=> b!1452491 (= res!983699 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452492 () Bool)

(declare-fun res!983700 () Bool)

(assert (=> b!1452492 (=> (not res!983700) (not e!817673))))

(assert (=> b!1452492 (= res!983700 (validKeyInArray!0 (select (arr!47468 a!2862) j!93)))))

(declare-fun b!1452493 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98369 (_ BitVec 32)) SeekEntryResult!11743)

(assert (=> b!1452493 (= e!817667 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636920 lt!636919 mask!2687) (seekEntryOrOpen!0 lt!636920 lt!636919 mask!2687)))))

(assert (= (and start!125004 res!983703) b!1452479))

(assert (= (and b!1452479 res!983692) b!1452478))

(assert (= (and b!1452478 res!983695) b!1452492))

(assert (= (and b!1452492 res!983700) b!1452487))

(assert (= (and b!1452487 res!983691) b!1452483))

(assert (= (and b!1452483 res!983696) b!1452477))

(assert (= (and b!1452477 res!983693) b!1452481))

(assert (= (and b!1452481 res!983698) b!1452490))

(assert (= (and b!1452490 res!983694) b!1452482))

(assert (= (and b!1452482 res!983689) b!1452480))

(assert (= (and b!1452480 res!983690) b!1452485))

(assert (= (and b!1452485 c!133907) b!1452489))

(assert (= (and b!1452485 (not c!133907)) b!1452493))

(assert (= (and b!1452485 res!983701) b!1452491))

(assert (= (and b!1452491 res!983699) b!1452488))

(assert (= (and b!1452488 res!983697) b!1452484))

(assert (= (and b!1452484 res!983702) b!1452486))

(declare-fun m!1341107 () Bool)

(assert (=> b!1452488 m!1341107))

(declare-fun m!1341109 () Bool)

(assert (=> b!1452488 m!1341109))

(declare-fun m!1341111 () Bool)

(assert (=> b!1452488 m!1341111))

(declare-fun m!1341113 () Bool)

(assert (=> b!1452488 m!1341113))

(declare-fun m!1341115 () Bool)

(assert (=> b!1452488 m!1341115))

(declare-fun m!1341117 () Bool)

(assert (=> b!1452488 m!1341117))

(declare-fun m!1341119 () Bool)

(assert (=> b!1452487 m!1341119))

(declare-fun m!1341121 () Bool)

(assert (=> b!1452478 m!1341121))

(assert (=> b!1452478 m!1341121))

(declare-fun m!1341123 () Bool)

(assert (=> b!1452478 m!1341123))

(assert (=> b!1452492 m!1341117))

(assert (=> b!1452492 m!1341117))

(declare-fun m!1341125 () Bool)

(assert (=> b!1452492 m!1341125))

(declare-fun m!1341127 () Bool)

(assert (=> start!125004 m!1341127))

(declare-fun m!1341129 () Bool)

(assert (=> start!125004 m!1341129))

(declare-fun m!1341131 () Bool)

(assert (=> b!1452493 m!1341131))

(declare-fun m!1341133 () Bool)

(assert (=> b!1452493 m!1341133))

(declare-fun m!1341135 () Bool)

(assert (=> b!1452480 m!1341135))

(assert (=> b!1452480 m!1341135))

(declare-fun m!1341137 () Bool)

(assert (=> b!1452480 m!1341137))

(assert (=> b!1452480 m!1341109))

(declare-fun m!1341139 () Bool)

(assert (=> b!1452480 m!1341139))

(assert (=> b!1452484 m!1341117))

(assert (=> b!1452484 m!1341117))

(declare-fun m!1341141 () Bool)

(assert (=> b!1452484 m!1341141))

(assert (=> b!1452482 m!1341117))

(assert (=> b!1452482 m!1341117))

(declare-fun m!1341143 () Bool)

(assert (=> b!1452482 m!1341143))

(assert (=> b!1452481 m!1341109))

(declare-fun m!1341145 () Bool)

(assert (=> b!1452481 m!1341145))

(assert (=> b!1452490 m!1341117))

(assert (=> b!1452490 m!1341117))

(declare-fun m!1341147 () Bool)

(assert (=> b!1452490 m!1341147))

(assert (=> b!1452490 m!1341147))

(assert (=> b!1452490 m!1341117))

(declare-fun m!1341149 () Bool)

(assert (=> b!1452490 m!1341149))

(declare-fun m!1341151 () Bool)

(assert (=> b!1452483 m!1341151))

(declare-fun m!1341153 () Bool)

(assert (=> b!1452489 m!1341153))

(assert (=> b!1452486 m!1341109))

(declare-fun m!1341155 () Bool)

(assert (=> b!1452486 m!1341155))

(assert (=> b!1452486 m!1341111))

(assert (=> b!1452486 m!1341113))

(assert (=> b!1452486 m!1341117))

(check-sat (not b!1452488) (not b!1452484) (not start!125004) (not b!1452487) (not b!1452480) (not b!1452492) (not b!1452482) (not b!1452493) (not b!1452483) (not b!1452489) (not b!1452478) (not b!1452490))
(check-sat)
