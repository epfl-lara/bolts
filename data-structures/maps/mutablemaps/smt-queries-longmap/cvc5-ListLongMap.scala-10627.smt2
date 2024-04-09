; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124942 () Bool)

(assert start!124942)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!816989 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1450859 () Bool)

(assert (=> b!1450859 (= e!816989 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450860 () Bool)

(declare-fun res!982261 () Bool)

(declare-fun e!816987 () Bool)

(assert (=> b!1450860 (=> (not res!982261) (not e!816987))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((array!98307 0))(
  ( (array!98308 (arr!47437 (Array (_ BitVec 32) (_ BitVec 64))) (size!47988 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98307)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450860 (= res!982261 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47988 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47988 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47988 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450861 () Bool)

(declare-fun e!816988 () Bool)

(assert (=> b!1450861 (= e!816987 e!816988)))

(declare-fun res!982264 () Bool)

(assert (=> b!1450861 (=> (not res!982264) (not e!816988))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1450861 (= res!982264 (= (select (store (arr!47437 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!636435 () array!98307)

(assert (=> b!1450861 (= lt!636435 (array!98308 (store (arr!47437 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47988 a!2862)))))

(declare-fun b!1450862 () Bool)

(declare-fun e!816984 () Bool)

(assert (=> b!1450862 (= e!816984 e!816989)))

(declare-fun res!982257 () Bool)

(assert (=> b!1450862 (=> (not res!982257) (not e!816989))))

(declare-datatypes ((SeekEntryResult!11712 0))(
  ( (MissingZero!11712 (index!49239 (_ BitVec 32))) (Found!11712 (index!49240 (_ BitVec 32))) (Intermediate!11712 (undefined!12524 Bool) (index!49241 (_ BitVec 32)) (x!130900 (_ BitVec 32))) (Undefined!11712) (MissingVacant!11712 (index!49242 (_ BitVec 32))) )
))
(declare-fun lt!636438 () SeekEntryResult!11712)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98307 (_ BitVec 32)) SeekEntryResult!11712)

(assert (=> b!1450862 (= res!982257 (= lt!636438 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47437 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450864 () Bool)

(declare-fun res!982259 () Bool)

(declare-fun e!816985 () Bool)

(assert (=> b!1450864 (=> res!982259 e!816985)))

(declare-fun lt!636433 () SeekEntryResult!11712)

(assert (=> b!1450864 (= res!982259 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47437 a!2862) j!93) a!2862 mask!2687) lt!636433)))))

(declare-fun b!1450865 () Bool)

(declare-fun e!816979 () Bool)

(assert (=> b!1450865 (= e!816988 e!816979)))

(declare-fun res!982263 () Bool)

(assert (=> b!1450865 (=> (not res!982263) (not e!816979))))

(declare-fun lt!636437 () SeekEntryResult!11712)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98307 (_ BitVec 32)) SeekEntryResult!11712)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450865 (= res!982263 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47437 a!2862) j!93) mask!2687) (select (arr!47437 a!2862) j!93) a!2862 mask!2687) lt!636437))))

(assert (=> b!1450865 (= lt!636437 (Intermediate!11712 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1450866 () Bool)

(declare-fun e!816981 () Bool)

(assert (=> b!1450866 (= e!816985 e!816981)))

(declare-fun res!982258 () Bool)

(assert (=> b!1450866 (=> res!982258 e!816981)))

(assert (=> b!1450866 (= res!982258 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!636434 () (_ BitVec 64))

(assert (=> b!1450866 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636434 lt!636435 mask!2687) lt!636433)))

(declare-datatypes ((Unit!48868 0))(
  ( (Unit!48869) )
))
(declare-fun lt!636432 () Unit!48868)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48868)

(assert (=> b!1450866 (= lt!636432 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450867 () Bool)

(declare-fun res!982272 () Bool)

(assert (=> b!1450867 (=> (not res!982272) (not e!816987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98307 (_ BitVec 32)) Bool)

(assert (=> b!1450867 (= res!982272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450868 () Bool)

(declare-fun e!816980 () Bool)

(assert (=> b!1450868 (= e!816979 e!816980)))

(declare-fun res!982266 () Bool)

(assert (=> b!1450868 (=> (not res!982266) (not e!816980))))

(declare-fun lt!636439 () SeekEntryResult!11712)

(assert (=> b!1450868 (= res!982266 (= lt!636439 (Intermediate!11712 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1450868 (= lt!636439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636434 mask!2687) lt!636434 lt!636435 mask!2687))))

(assert (=> b!1450868 (= lt!636434 (select (store (arr!47437 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450869 () Bool)

(declare-fun res!982268 () Bool)

(assert (=> b!1450869 (=> (not res!982268) (not e!816987))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450869 (= res!982268 (validKeyInArray!0 (select (arr!47437 a!2862) j!93)))))

(declare-fun res!982273 () Bool)

(assert (=> start!124942 (=> (not res!982273) (not e!816987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124942 (= res!982273 (validMask!0 mask!2687))))

(assert (=> start!124942 e!816987))

(assert (=> start!124942 true))

(declare-fun array_inv!36382 (array!98307) Bool)

(assert (=> start!124942 (array_inv!36382 a!2862)))

(declare-fun b!1450863 () Bool)

(assert (=> b!1450863 (= e!816981 (validKeyInArray!0 lt!636434))))

(declare-fun b!1450870 () Bool)

(declare-fun e!816986 () Bool)

(assert (=> b!1450870 (= e!816986 e!816984)))

(declare-fun res!982274 () Bool)

(assert (=> b!1450870 (=> res!982274 e!816984)))

(assert (=> b!1450870 (= res!982274 (or (and (= (select (arr!47437 a!2862) index!646) (select (store (arr!47437 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47437 a!2862) index!646) (select (arr!47437 a!2862) j!93))) (not (= (select (arr!47437 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816983 () Bool)

(declare-fun b!1450871 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98307 (_ BitVec 32)) SeekEntryResult!11712)

(assert (=> b!1450871 (= e!816983 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636434 lt!636435 mask!2687) (seekEntryOrOpen!0 lt!636434 lt!636435 mask!2687)))))

(declare-fun b!1450872 () Bool)

(declare-fun res!982262 () Bool)

(assert (=> b!1450872 (=> (not res!982262) (not e!816987))))

(assert (=> b!1450872 (= res!982262 (validKeyInArray!0 (select (arr!47437 a!2862) i!1006)))))

(declare-fun b!1450873 () Bool)

(declare-fun res!982269 () Bool)

(assert (=> b!1450873 (=> (not res!982269) (not e!816980))))

(assert (=> b!1450873 (= res!982269 e!816983)))

(declare-fun c!133814 () Bool)

(assert (=> b!1450873 (= c!133814 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450874 () Bool)

(declare-fun res!982270 () Bool)

(assert (=> b!1450874 (=> (not res!982270) (not e!816987))))

(declare-datatypes ((List!34118 0))(
  ( (Nil!34115) (Cons!34114 (h!35464 (_ BitVec 64)) (t!48819 List!34118)) )
))
(declare-fun arrayNoDuplicates!0 (array!98307 (_ BitVec 32) List!34118) Bool)

(assert (=> b!1450874 (= res!982270 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34115))))

(declare-fun b!1450875 () Bool)

(assert (=> b!1450875 (= e!816980 (not e!816985))))

(declare-fun res!982265 () Bool)

(assert (=> b!1450875 (=> res!982265 e!816985)))

(assert (=> b!1450875 (= res!982265 (or (and (= (select (arr!47437 a!2862) index!646) (select (store (arr!47437 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47437 a!2862) index!646) (select (arr!47437 a!2862) j!93))) (not (= (select (arr!47437 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47437 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1450875 e!816986))

(declare-fun res!982267 () Bool)

(assert (=> b!1450875 (=> (not res!982267) (not e!816986))))

(assert (=> b!1450875 (= res!982267 (and (= lt!636438 lt!636433) (or (= (select (arr!47437 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47437 a!2862) intermediateBeforeIndex!19) (select (arr!47437 a!2862) j!93)))))))

(assert (=> b!1450875 (= lt!636433 (Found!11712 j!93))))

(assert (=> b!1450875 (= lt!636438 (seekEntryOrOpen!0 (select (arr!47437 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1450875 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!636436 () Unit!48868)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98307 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48868)

(assert (=> b!1450875 (= lt!636436 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450876 () Bool)

(assert (=> b!1450876 (= e!816983 (= lt!636439 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636434 lt!636435 mask!2687)))))

(declare-fun b!1450877 () Bool)

(declare-fun res!982271 () Bool)

(assert (=> b!1450877 (=> (not res!982271) (not e!816979))))

(assert (=> b!1450877 (= res!982271 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47437 a!2862) j!93) a!2862 mask!2687) lt!636437))))

(declare-fun b!1450878 () Bool)

(declare-fun res!982275 () Bool)

(assert (=> b!1450878 (=> (not res!982275) (not e!816987))))

(assert (=> b!1450878 (= res!982275 (and (= (size!47988 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47988 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47988 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450879 () Bool)

(declare-fun res!982260 () Bool)

(assert (=> b!1450879 (=> (not res!982260) (not e!816980))))

(assert (=> b!1450879 (= res!982260 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!124942 res!982273) b!1450878))

(assert (= (and b!1450878 res!982275) b!1450872))

(assert (= (and b!1450872 res!982262) b!1450869))

(assert (= (and b!1450869 res!982268) b!1450867))

(assert (= (and b!1450867 res!982272) b!1450874))

(assert (= (and b!1450874 res!982270) b!1450860))

(assert (= (and b!1450860 res!982261) b!1450861))

(assert (= (and b!1450861 res!982264) b!1450865))

(assert (= (and b!1450865 res!982263) b!1450877))

(assert (= (and b!1450877 res!982271) b!1450868))

(assert (= (and b!1450868 res!982266) b!1450873))

(assert (= (and b!1450873 c!133814) b!1450876))

(assert (= (and b!1450873 (not c!133814)) b!1450871))

(assert (= (and b!1450873 res!982269) b!1450879))

(assert (= (and b!1450879 res!982260) b!1450875))

(assert (= (and b!1450875 res!982267) b!1450870))

(assert (= (and b!1450870 (not res!982274)) b!1450862))

(assert (= (and b!1450862 res!982257) b!1450859))

(assert (= (and b!1450875 (not res!982265)) b!1450864))

(assert (= (and b!1450864 (not res!982259)) b!1450866))

(assert (= (and b!1450866 (not res!982258)) b!1450863))

(declare-fun m!1339527 () Bool)

(assert (=> b!1450863 m!1339527))

(declare-fun m!1339529 () Bool)

(assert (=> b!1450872 m!1339529))

(assert (=> b!1450872 m!1339529))

(declare-fun m!1339531 () Bool)

(assert (=> b!1450872 m!1339531))

(declare-fun m!1339533 () Bool)

(assert (=> b!1450876 m!1339533))

(declare-fun m!1339535 () Bool)

(assert (=> b!1450865 m!1339535))

(assert (=> b!1450865 m!1339535))

(declare-fun m!1339537 () Bool)

(assert (=> b!1450865 m!1339537))

(assert (=> b!1450865 m!1339537))

(assert (=> b!1450865 m!1339535))

(declare-fun m!1339539 () Bool)

(assert (=> b!1450865 m!1339539))

(declare-fun m!1339541 () Bool)

(assert (=> b!1450861 m!1339541))

(declare-fun m!1339543 () Bool)

(assert (=> b!1450861 m!1339543))

(declare-fun m!1339545 () Bool)

(assert (=> b!1450866 m!1339545))

(declare-fun m!1339547 () Bool)

(assert (=> b!1450866 m!1339547))

(declare-fun m!1339549 () Bool)

(assert (=> b!1450867 m!1339549))

(declare-fun m!1339551 () Bool)

(assert (=> b!1450870 m!1339551))

(assert (=> b!1450870 m!1339541))

(declare-fun m!1339553 () Bool)

(assert (=> b!1450870 m!1339553))

(assert (=> b!1450870 m!1339535))

(assert (=> b!1450877 m!1339535))

(assert (=> b!1450877 m!1339535))

(declare-fun m!1339555 () Bool)

(assert (=> b!1450877 m!1339555))

(assert (=> b!1450862 m!1339535))

(assert (=> b!1450862 m!1339535))

(declare-fun m!1339557 () Bool)

(assert (=> b!1450862 m!1339557))

(declare-fun m!1339559 () Bool)

(assert (=> b!1450874 m!1339559))

(assert (=> b!1450871 m!1339545))

(declare-fun m!1339561 () Bool)

(assert (=> b!1450871 m!1339561))

(assert (=> b!1450869 m!1339535))

(assert (=> b!1450869 m!1339535))

(declare-fun m!1339563 () Bool)

(assert (=> b!1450869 m!1339563))

(declare-fun m!1339565 () Bool)

(assert (=> b!1450875 m!1339565))

(assert (=> b!1450875 m!1339541))

(declare-fun m!1339567 () Bool)

(assert (=> b!1450875 m!1339567))

(assert (=> b!1450875 m!1339553))

(assert (=> b!1450875 m!1339551))

(assert (=> b!1450875 m!1339535))

(declare-fun m!1339569 () Bool)

(assert (=> b!1450875 m!1339569))

(declare-fun m!1339571 () Bool)

(assert (=> b!1450875 m!1339571))

(assert (=> b!1450875 m!1339535))

(declare-fun m!1339573 () Bool)

(assert (=> b!1450868 m!1339573))

(assert (=> b!1450868 m!1339573))

(declare-fun m!1339575 () Bool)

(assert (=> b!1450868 m!1339575))

(assert (=> b!1450868 m!1339541))

(declare-fun m!1339577 () Bool)

(assert (=> b!1450868 m!1339577))

(declare-fun m!1339579 () Bool)

(assert (=> start!124942 m!1339579))

(declare-fun m!1339581 () Bool)

(assert (=> start!124942 m!1339581))

(assert (=> b!1450864 m!1339535))

(assert (=> b!1450864 m!1339535))

(declare-fun m!1339583 () Bool)

(assert (=> b!1450864 m!1339583))

(push 1)

