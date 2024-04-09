; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125348 () Bool)

(assert start!125348)

(declare-fun b!1463485 () Bool)

(declare-fun e!822572 () Bool)

(declare-fun e!822566 () Bool)

(assert (=> b!1463485 (= e!822572 e!822566)))

(declare-fun res!992836 () Bool)

(assert (=> b!1463485 (=> (not res!992836) (not e!822566))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98713 0))(
  ( (array!98714 (arr!47640 (Array (_ BitVec 32) (_ BitVec 64))) (size!48191 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98713)

(assert (=> b!1463485 (= res!992836 (= (select (store (arr!47640 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640748 () array!98713)

(assert (=> b!1463485 (= lt!640748 (array!98714 (store (arr!47640 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48191 a!2862)))))

(declare-fun b!1463486 () Bool)

(declare-fun e!822567 () Bool)

(declare-fun e!822563 () Bool)

(assert (=> b!1463486 (= e!822567 (not e!822563))))

(declare-fun res!992827 () Bool)

(assert (=> b!1463486 (=> res!992827 e!822563)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1463486 (= res!992827 (or (and (= (select (arr!47640 a!2862) index!646) (select (store (arr!47640 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47640 a!2862) index!646) (select (arr!47640 a!2862) j!93))) (= (select (arr!47640 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822570 () Bool)

(assert (=> b!1463486 e!822570))

(declare-fun res!992823 () Bool)

(assert (=> b!1463486 (=> (not res!992823) (not e!822570))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98713 (_ BitVec 32)) Bool)

(assert (=> b!1463486 (= res!992823 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49274 0))(
  ( (Unit!49275) )
))
(declare-fun lt!640749 () Unit!49274)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98713 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49274)

(assert (=> b!1463486 (= lt!640749 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463487 () Bool)

(declare-fun e!822568 () Bool)

(assert (=> b!1463487 (= e!822563 e!822568)))

(declare-fun res!992824 () Bool)

(assert (=> b!1463487 (=> res!992824 e!822568)))

(declare-fun lt!640751 () (_ BitVec 32))

(assert (=> b!1463487 (= res!992824 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640751 #b00000000000000000000000000000000) (bvsge lt!640751 (size!48191 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463487 (= lt!640751 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!992826 () Bool)

(assert (=> start!125348 (=> (not res!992826) (not e!822572))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125348 (= res!992826 (validMask!0 mask!2687))))

(assert (=> start!125348 e!822572))

(assert (=> start!125348 true))

(declare-fun array_inv!36585 (array!98713) Bool)

(assert (=> start!125348 (array_inv!36585 a!2862)))

(declare-fun b!1463488 () Bool)

(declare-fun res!992832 () Bool)

(assert (=> b!1463488 (=> (not res!992832) (not e!822572))))

(assert (=> b!1463488 (= res!992832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1463489 () Bool)

(assert (=> b!1463489 (= e!822570 (or (= (select (arr!47640 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47640 a!2862) intermediateBeforeIndex!19) (select (arr!47640 a!2862) j!93))))))

(declare-fun b!1463490 () Bool)

(declare-datatypes ((SeekEntryResult!11915 0))(
  ( (MissingZero!11915 (index!50051 (_ BitVec 32))) (Found!11915 (index!50052 (_ BitVec 32))) (Intermediate!11915 (undefined!12727 Bool) (index!50053 (_ BitVec 32)) (x!131639 (_ BitVec 32))) (Undefined!11915) (MissingVacant!11915 (index!50054 (_ BitVec 32))) )
))
(declare-fun lt!640752 () SeekEntryResult!11915)

(declare-fun lt!640750 () (_ BitVec 64))

(declare-fun e!822571 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98713 (_ BitVec 32)) SeekEntryResult!11915)

(assert (=> b!1463490 (= e!822571 (= lt!640752 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640750 lt!640748 mask!2687)))))

(declare-fun b!1463491 () Bool)

(declare-fun e!822565 () Bool)

(assert (=> b!1463491 (= e!822566 e!822565)))

(declare-fun res!992828 () Bool)

(assert (=> b!1463491 (=> (not res!992828) (not e!822565))))

(declare-fun lt!640747 () SeekEntryResult!11915)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463491 (= res!992828 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47640 a!2862) j!93) mask!2687) (select (arr!47640 a!2862) j!93) a!2862 mask!2687) lt!640747))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1463491 (= lt!640747 (Intermediate!11915 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463492 () Bool)

(assert (=> b!1463492 (= e!822565 e!822567)))

(declare-fun res!992838 () Bool)

(assert (=> b!1463492 (=> (not res!992838) (not e!822567))))

(assert (=> b!1463492 (= res!992838 (= lt!640752 (Intermediate!11915 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1463492 (= lt!640752 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640750 mask!2687) lt!640750 lt!640748 mask!2687))))

(assert (=> b!1463492 (= lt!640750 (select (store (arr!47640 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463493 () Bool)

(declare-fun res!992831 () Bool)

(assert (=> b!1463493 (=> (not res!992831) (not e!822572))))

(declare-datatypes ((List!34321 0))(
  ( (Nil!34318) (Cons!34317 (h!35667 (_ BitVec 64)) (t!49022 List!34321)) )
))
(declare-fun arrayNoDuplicates!0 (array!98713 (_ BitVec 32) List!34321) Bool)

(assert (=> b!1463493 (= res!992831 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34318))))

(declare-fun e!822564 () Bool)

(declare-fun b!1463494 () Bool)

(assert (=> b!1463494 (= e!822564 (not (= lt!640752 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640751 lt!640750 lt!640748 mask!2687))))))

(declare-fun b!1463495 () Bool)

(declare-fun res!992829 () Bool)

(assert (=> b!1463495 (=> (not res!992829) (not e!822572))))

(assert (=> b!1463495 (= res!992829 (and (= (size!48191 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48191 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48191 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463496 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98713 (_ BitVec 32)) SeekEntryResult!11915)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98713 (_ BitVec 32)) SeekEntryResult!11915)

(assert (=> b!1463496 (= e!822564 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640751 intermediateAfterIndex!19 lt!640750 lt!640748 mask!2687) (seekEntryOrOpen!0 lt!640750 lt!640748 mask!2687))))))

(declare-fun b!1463497 () Bool)

(assert (=> b!1463497 (= e!822571 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640750 lt!640748 mask!2687) (seekEntryOrOpen!0 lt!640750 lt!640748 mask!2687)))))

(declare-fun b!1463498 () Bool)

(declare-fun res!992837 () Bool)

(assert (=> b!1463498 (=> (not res!992837) (not e!822565))))

(assert (=> b!1463498 (= res!992837 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47640 a!2862) j!93) a!2862 mask!2687) lt!640747))))

(declare-fun b!1463499 () Bool)

(declare-fun res!992825 () Bool)

(assert (=> b!1463499 (=> (not res!992825) (not e!822572))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463499 (= res!992825 (validKeyInArray!0 (select (arr!47640 a!2862) j!93)))))

(declare-fun b!1463500 () Bool)

(declare-fun res!992834 () Bool)

(assert (=> b!1463500 (=> res!992834 e!822568)))

(assert (=> b!1463500 (= res!992834 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640751 (select (arr!47640 a!2862) j!93) a!2862 mask!2687) lt!640747)))))

(declare-fun b!1463501 () Bool)

(assert (=> b!1463501 (= e!822568 true)))

(declare-fun lt!640753 () Bool)

(assert (=> b!1463501 (= lt!640753 e!822564)))

(declare-fun c!134846 () Bool)

(assert (=> b!1463501 (= c!134846 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463502 () Bool)

(declare-fun res!992830 () Bool)

(assert (=> b!1463502 (=> (not res!992830) (not e!822567))))

(assert (=> b!1463502 (= res!992830 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463503 () Bool)

(declare-fun res!992821 () Bool)

(assert (=> b!1463503 (=> (not res!992821) (not e!822572))))

(assert (=> b!1463503 (= res!992821 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48191 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48191 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48191 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463504 () Bool)

(declare-fun res!992835 () Bool)

(assert (=> b!1463504 (=> (not res!992835) (not e!822567))))

(assert (=> b!1463504 (= res!992835 e!822571)))

(declare-fun c!134845 () Bool)

(assert (=> b!1463504 (= c!134845 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1463505 () Bool)

(declare-fun res!992833 () Bool)

(assert (=> b!1463505 (=> (not res!992833) (not e!822570))))

(assert (=> b!1463505 (= res!992833 (= (seekEntryOrOpen!0 (select (arr!47640 a!2862) j!93) a!2862 mask!2687) (Found!11915 j!93)))))

(declare-fun b!1463506 () Bool)

(declare-fun res!992822 () Bool)

(assert (=> b!1463506 (=> (not res!992822) (not e!822572))))

(assert (=> b!1463506 (= res!992822 (validKeyInArray!0 (select (arr!47640 a!2862) i!1006)))))

(assert (= (and start!125348 res!992826) b!1463495))

(assert (= (and b!1463495 res!992829) b!1463506))

(assert (= (and b!1463506 res!992822) b!1463499))

(assert (= (and b!1463499 res!992825) b!1463488))

(assert (= (and b!1463488 res!992832) b!1463493))

(assert (= (and b!1463493 res!992831) b!1463503))

(assert (= (and b!1463503 res!992821) b!1463485))

(assert (= (and b!1463485 res!992836) b!1463491))

(assert (= (and b!1463491 res!992828) b!1463498))

(assert (= (and b!1463498 res!992837) b!1463492))

(assert (= (and b!1463492 res!992838) b!1463504))

(assert (= (and b!1463504 c!134845) b!1463490))

(assert (= (and b!1463504 (not c!134845)) b!1463497))

(assert (= (and b!1463504 res!992835) b!1463502))

(assert (= (and b!1463502 res!992830) b!1463486))

(assert (= (and b!1463486 res!992823) b!1463505))

(assert (= (and b!1463505 res!992833) b!1463489))

(assert (= (and b!1463486 (not res!992827)) b!1463487))

(assert (= (and b!1463487 (not res!992824)) b!1463500))

(assert (= (and b!1463500 (not res!992834)) b!1463501))

(assert (= (and b!1463501 c!134846) b!1463494))

(assert (= (and b!1463501 (not c!134846)) b!1463496))

(declare-fun m!1350863 () Bool)

(assert (=> b!1463505 m!1350863))

(assert (=> b!1463505 m!1350863))

(declare-fun m!1350865 () Bool)

(assert (=> b!1463505 m!1350865))

(declare-fun m!1350867 () Bool)

(assert (=> b!1463496 m!1350867))

(declare-fun m!1350869 () Bool)

(assert (=> b!1463496 m!1350869))

(declare-fun m!1350871 () Bool)

(assert (=> b!1463489 m!1350871))

(assert (=> b!1463489 m!1350863))

(declare-fun m!1350873 () Bool)

(assert (=> b!1463497 m!1350873))

(assert (=> b!1463497 m!1350869))

(declare-fun m!1350875 () Bool)

(assert (=> start!125348 m!1350875))

(declare-fun m!1350877 () Bool)

(assert (=> start!125348 m!1350877))

(declare-fun m!1350879 () Bool)

(assert (=> b!1463485 m!1350879))

(declare-fun m!1350881 () Bool)

(assert (=> b!1463485 m!1350881))

(declare-fun m!1350883 () Bool)

(assert (=> b!1463486 m!1350883))

(assert (=> b!1463486 m!1350879))

(declare-fun m!1350885 () Bool)

(assert (=> b!1463486 m!1350885))

(declare-fun m!1350887 () Bool)

(assert (=> b!1463486 m!1350887))

(declare-fun m!1350889 () Bool)

(assert (=> b!1463486 m!1350889))

(assert (=> b!1463486 m!1350863))

(assert (=> b!1463499 m!1350863))

(assert (=> b!1463499 m!1350863))

(declare-fun m!1350891 () Bool)

(assert (=> b!1463499 m!1350891))

(assert (=> b!1463500 m!1350863))

(assert (=> b!1463500 m!1350863))

(declare-fun m!1350893 () Bool)

(assert (=> b!1463500 m!1350893))

(declare-fun m!1350895 () Bool)

(assert (=> b!1463493 m!1350895))

(declare-fun m!1350897 () Bool)

(assert (=> b!1463492 m!1350897))

(assert (=> b!1463492 m!1350897))

(declare-fun m!1350899 () Bool)

(assert (=> b!1463492 m!1350899))

(assert (=> b!1463492 m!1350879))

(declare-fun m!1350901 () Bool)

(assert (=> b!1463492 m!1350901))

(declare-fun m!1350903 () Bool)

(assert (=> b!1463494 m!1350903))

(assert (=> b!1463498 m!1350863))

(assert (=> b!1463498 m!1350863))

(declare-fun m!1350905 () Bool)

(assert (=> b!1463498 m!1350905))

(declare-fun m!1350907 () Bool)

(assert (=> b!1463487 m!1350907))

(assert (=> b!1463491 m!1350863))

(assert (=> b!1463491 m!1350863))

(declare-fun m!1350909 () Bool)

(assert (=> b!1463491 m!1350909))

(assert (=> b!1463491 m!1350909))

(assert (=> b!1463491 m!1350863))

(declare-fun m!1350911 () Bool)

(assert (=> b!1463491 m!1350911))

(declare-fun m!1350913 () Bool)

(assert (=> b!1463506 m!1350913))

(assert (=> b!1463506 m!1350913))

(declare-fun m!1350915 () Bool)

(assert (=> b!1463506 m!1350915))

(declare-fun m!1350917 () Bool)

(assert (=> b!1463488 m!1350917))

(declare-fun m!1350919 () Bool)

(assert (=> b!1463490 m!1350919))

(push 1)

