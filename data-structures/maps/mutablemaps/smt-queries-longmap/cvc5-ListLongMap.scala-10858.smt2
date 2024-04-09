; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127234 () Bool)

(assert start!127234)

(declare-fun b!1494745 () Bool)

(declare-fun e!837296 () Bool)

(declare-fun e!837295 () Bool)

(assert (=> b!1494745 (= e!837296 e!837295)))

(declare-fun res!1016952 () Bool)

(assert (=> b!1494745 (=> (not res!1016952) (not e!837295))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12393 0))(
  ( (MissingZero!12393 (index!51963 (_ BitVec 32))) (Found!12393 (index!51964 (_ BitVec 32))) (Intermediate!12393 (undefined!13205 Bool) (index!51965 (_ BitVec 32)) (x!133576 (_ BitVec 32))) (Undefined!12393) (MissingVacant!12393 (index!51966 (_ BitVec 32))) )
))
(declare-fun lt!651468 () SeekEntryResult!12393)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1494745 (= res!1016952 (= lt!651468 (Intermediate!12393 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!651469 () (_ BitVec 64))

(declare-datatypes ((array!99735 0))(
  ( (array!99736 (arr!48130 (Array (_ BitVec 32) (_ BitVec 64))) (size!48681 (_ BitVec 32))) )
))
(declare-fun lt!651466 () array!99735)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99735 (_ BitVec 32)) SeekEntryResult!12393)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494745 (= lt!651468 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651469 mask!2687) lt!651469 lt!651466 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99735)

(assert (=> b!1494745 (= lt!651469 (select (store (arr!48130 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1494746 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!837293 () Bool)

(assert (=> b!1494746 (= e!837293 (or (= (select (arr!48130 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48130 a!2862) intermediateBeforeIndex!19) (select (arr!48130 a!2862) j!93))))))

(declare-fun b!1494747 () Bool)

(declare-fun e!837292 () Bool)

(assert (=> b!1494747 (= e!837292 e!837296)))

(declare-fun res!1016949 () Bool)

(assert (=> b!1494747 (=> (not res!1016949) (not e!837296))))

(declare-fun lt!651465 () SeekEntryResult!12393)

(assert (=> b!1494747 (= res!1016949 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48130 a!2862) j!93) mask!2687) (select (arr!48130 a!2862) j!93) a!2862 mask!2687) lt!651465))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1494747 (= lt!651465 (Intermediate!12393 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1494748 () Bool)

(declare-fun res!1016939 () Bool)

(declare-fun e!837298 () Bool)

(assert (=> b!1494748 (=> (not res!1016939) (not e!837298))))

(assert (=> b!1494748 (= res!1016939 (and (= (size!48681 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48681 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48681 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1016953 () Bool)

(assert (=> start!127234 (=> (not res!1016953) (not e!837298))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127234 (= res!1016953 (validMask!0 mask!2687))))

(assert (=> start!127234 e!837298))

(assert (=> start!127234 true))

(declare-fun array_inv!37075 (array!99735) Bool)

(assert (=> start!127234 (array_inv!37075 a!2862)))

(declare-fun b!1494749 () Bool)

(declare-fun res!1016943 () Bool)

(assert (=> b!1494749 (=> (not res!1016943) (not e!837298))))

(declare-datatypes ((List!34811 0))(
  ( (Nil!34808) (Cons!34807 (h!36199 (_ BitVec 64)) (t!49512 List!34811)) )
))
(declare-fun arrayNoDuplicates!0 (array!99735 (_ BitVec 32) List!34811) Bool)

(assert (=> b!1494749 (= res!1016943 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34808))))

(declare-fun e!837294 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1494750 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1494750 (= e!837294 (= lt!651468 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651469 lt!651466 mask!2687)))))

(declare-fun b!1494751 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99735 (_ BitVec 32)) SeekEntryResult!12393)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99735 (_ BitVec 32)) SeekEntryResult!12393)

(assert (=> b!1494751 (= e!837294 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651469 lt!651466 mask!2687) (seekEntryOrOpen!0 lt!651469 lt!651466 mask!2687)))))

(declare-fun b!1494752 () Bool)

(declare-fun res!1016951 () Bool)

(assert (=> b!1494752 (=> (not res!1016951) (not e!837298))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1494752 (= res!1016951 (validKeyInArray!0 (select (arr!48130 a!2862) i!1006)))))

(declare-fun b!1494753 () Bool)

(declare-fun res!1016944 () Bool)

(assert (=> b!1494753 (=> (not res!1016944) (not e!837298))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99735 (_ BitVec 32)) Bool)

(assert (=> b!1494753 (= res!1016944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1494754 () Bool)

(declare-fun res!1016947 () Bool)

(assert (=> b!1494754 (=> (not res!1016947) (not e!837293))))

(assert (=> b!1494754 (= res!1016947 (= (seekEntryOrOpen!0 (select (arr!48130 a!2862) j!93) a!2862 mask!2687) (Found!12393 j!93)))))

(declare-fun b!1494755 () Bool)

(declare-fun e!837297 () Bool)

(declare-fun e!837291 () Bool)

(assert (=> b!1494755 (= e!837297 e!837291)))

(declare-fun res!1016941 () Bool)

(assert (=> b!1494755 (=> res!1016941 e!837291)))

(declare-fun lt!651463 () (_ BitVec 32))

(assert (=> b!1494755 (= res!1016941 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!651463 #b00000000000000000000000000000000) (bvsge lt!651463 (size!48681 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494755 (= lt!651463 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1494756 () Bool)

(declare-fun res!1016948 () Bool)

(assert (=> b!1494756 (=> (not res!1016948) (not e!837295))))

(assert (=> b!1494756 (= res!1016948 e!837294)))

(declare-fun c!138437 () Bool)

(assert (=> b!1494756 (= c!138437 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1494757 () Bool)

(assert (=> b!1494757 (= e!837291 true)))

(declare-fun lt!651464 () SeekEntryResult!12393)

(assert (=> b!1494757 (= lt!651464 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651463 (select (arr!48130 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1494758 () Bool)

(assert (=> b!1494758 (= e!837298 e!837292)))

(declare-fun res!1016942 () Bool)

(assert (=> b!1494758 (=> (not res!1016942) (not e!837292))))

(assert (=> b!1494758 (= res!1016942 (= (select (store (arr!48130 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1494758 (= lt!651466 (array!99736 (store (arr!48130 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48681 a!2862)))))

(declare-fun b!1494759 () Bool)

(assert (=> b!1494759 (= e!837295 (not e!837297))))

(declare-fun res!1016945 () Bool)

(assert (=> b!1494759 (=> res!1016945 e!837297)))

(assert (=> b!1494759 (= res!1016945 (or (and (= (select (arr!48130 a!2862) index!646) (select (store (arr!48130 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48130 a!2862) index!646) (select (arr!48130 a!2862) j!93))) (= (select (arr!48130 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1494759 e!837293))

(declare-fun res!1016940 () Bool)

(assert (=> b!1494759 (=> (not res!1016940) (not e!837293))))

(assert (=> b!1494759 (= res!1016940 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50074 0))(
  ( (Unit!50075) )
))
(declare-fun lt!651467 () Unit!50074)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99735 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50074)

(assert (=> b!1494759 (= lt!651467 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1494760 () Bool)

(declare-fun res!1016954 () Bool)

(assert (=> b!1494760 (=> (not res!1016954) (not e!837298))))

(assert (=> b!1494760 (= res!1016954 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48681 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48681 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48681 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1494761 () Bool)

(declare-fun res!1016955 () Bool)

(assert (=> b!1494761 (=> (not res!1016955) (not e!837298))))

(assert (=> b!1494761 (= res!1016955 (validKeyInArray!0 (select (arr!48130 a!2862) j!93)))))

(declare-fun b!1494762 () Bool)

(declare-fun res!1016950 () Bool)

(assert (=> b!1494762 (=> (not res!1016950) (not e!837296))))

(assert (=> b!1494762 (= res!1016950 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48130 a!2862) j!93) a!2862 mask!2687) lt!651465))))

(declare-fun b!1494763 () Bool)

(declare-fun res!1016946 () Bool)

(assert (=> b!1494763 (=> (not res!1016946) (not e!837295))))

(assert (=> b!1494763 (= res!1016946 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!127234 res!1016953) b!1494748))

(assert (= (and b!1494748 res!1016939) b!1494752))

(assert (= (and b!1494752 res!1016951) b!1494761))

(assert (= (and b!1494761 res!1016955) b!1494753))

(assert (= (and b!1494753 res!1016944) b!1494749))

(assert (= (and b!1494749 res!1016943) b!1494760))

(assert (= (and b!1494760 res!1016954) b!1494758))

(assert (= (and b!1494758 res!1016942) b!1494747))

(assert (= (and b!1494747 res!1016949) b!1494762))

(assert (= (and b!1494762 res!1016950) b!1494745))

(assert (= (and b!1494745 res!1016952) b!1494756))

(assert (= (and b!1494756 c!138437) b!1494750))

(assert (= (and b!1494756 (not c!138437)) b!1494751))

(assert (= (and b!1494756 res!1016948) b!1494763))

(assert (= (and b!1494763 res!1016946) b!1494759))

(assert (= (and b!1494759 res!1016940) b!1494754))

(assert (= (and b!1494754 res!1016947) b!1494746))

(assert (= (and b!1494759 (not res!1016945)) b!1494755))

(assert (= (and b!1494755 (not res!1016941)) b!1494757))

(declare-fun m!1378395 () Bool)

(assert (=> b!1494759 m!1378395))

(declare-fun m!1378397 () Bool)

(assert (=> b!1494759 m!1378397))

(declare-fun m!1378399 () Bool)

(assert (=> b!1494759 m!1378399))

(declare-fun m!1378401 () Bool)

(assert (=> b!1494759 m!1378401))

(declare-fun m!1378403 () Bool)

(assert (=> b!1494759 m!1378403))

(declare-fun m!1378405 () Bool)

(assert (=> b!1494759 m!1378405))

(declare-fun m!1378407 () Bool)

(assert (=> b!1494746 m!1378407))

(assert (=> b!1494746 m!1378405))

(assert (=> b!1494758 m!1378397))

(declare-fun m!1378409 () Bool)

(assert (=> b!1494758 m!1378409))

(declare-fun m!1378411 () Bool)

(assert (=> b!1494755 m!1378411))

(assert (=> b!1494747 m!1378405))

(assert (=> b!1494747 m!1378405))

(declare-fun m!1378413 () Bool)

(assert (=> b!1494747 m!1378413))

(assert (=> b!1494747 m!1378413))

(assert (=> b!1494747 m!1378405))

(declare-fun m!1378415 () Bool)

(assert (=> b!1494747 m!1378415))

(declare-fun m!1378417 () Bool)

(assert (=> b!1494750 m!1378417))

(assert (=> b!1494761 m!1378405))

(assert (=> b!1494761 m!1378405))

(declare-fun m!1378419 () Bool)

(assert (=> b!1494761 m!1378419))

(assert (=> b!1494757 m!1378405))

(assert (=> b!1494757 m!1378405))

(declare-fun m!1378421 () Bool)

(assert (=> b!1494757 m!1378421))

(declare-fun m!1378423 () Bool)

(assert (=> start!127234 m!1378423))

(declare-fun m!1378425 () Bool)

(assert (=> start!127234 m!1378425))

(declare-fun m!1378427 () Bool)

(assert (=> b!1494751 m!1378427))

(declare-fun m!1378429 () Bool)

(assert (=> b!1494751 m!1378429))

(declare-fun m!1378431 () Bool)

(assert (=> b!1494752 m!1378431))

(assert (=> b!1494752 m!1378431))

(declare-fun m!1378433 () Bool)

(assert (=> b!1494752 m!1378433))

(assert (=> b!1494762 m!1378405))

(assert (=> b!1494762 m!1378405))

(declare-fun m!1378435 () Bool)

(assert (=> b!1494762 m!1378435))

(declare-fun m!1378437 () Bool)

(assert (=> b!1494753 m!1378437))

(assert (=> b!1494754 m!1378405))

(assert (=> b!1494754 m!1378405))

(declare-fun m!1378439 () Bool)

(assert (=> b!1494754 m!1378439))

(declare-fun m!1378441 () Bool)

(assert (=> b!1494745 m!1378441))

(assert (=> b!1494745 m!1378441))

(declare-fun m!1378443 () Bool)

(assert (=> b!1494745 m!1378443))

(assert (=> b!1494745 m!1378397))

(declare-fun m!1378445 () Bool)

(assert (=> b!1494745 m!1378445))

(declare-fun m!1378447 () Bool)

(assert (=> b!1494749 m!1378447))

(push 1)

