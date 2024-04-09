; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126896 () Bool)

(assert start!126896)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!99586 0))(
  ( (array!99587 (arr!48060 (Array (_ BitVec 32) (_ BitVec 64))) (size!48611 (_ BitVec 32))) )
))
(declare-fun lt!649641 () array!99586)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!649640 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun e!834891 () Bool)

(declare-datatypes ((SeekEntryResult!12323 0))(
  ( (MissingZero!12323 (index!51683 (_ BitVec 32))) (Found!12323 (index!51684 (_ BitVec 32))) (Intermediate!12323 (undefined!13135 Bool) (index!51685 (_ BitVec 32)) (x!133278 (_ BitVec 32))) (Undefined!12323) (MissingVacant!12323 (index!51686 (_ BitVec 32))) )
))
(declare-fun lt!649639 () SeekEntryResult!12323)

(declare-fun b!1489708 () Bool)

(declare-fun lt!649635 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99586 (_ BitVec 32)) SeekEntryResult!12323)

(assert (=> b!1489708 (= e!834891 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649635 intermediateAfterIndex!19 lt!649640 lt!649641 mask!2687) lt!649639)))))

(declare-fun b!1489709 () Bool)

(declare-fun e!834897 () Bool)

(assert (=> b!1489709 (= e!834897 true)))

(declare-fun lt!649636 () SeekEntryResult!12323)

(assert (=> b!1489709 (= lt!649636 lt!649639)))

(declare-datatypes ((Unit!49934 0))(
  ( (Unit!49935) )
))
(declare-fun lt!649638 () Unit!49934)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99586)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!99586 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49934)

(assert (=> b!1489709 (= lt!649638 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!649635 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1489710 () Bool)

(declare-fun e!834898 () Bool)

(declare-fun e!834892 () Bool)

(assert (=> b!1489710 (= e!834898 (not e!834892))))

(declare-fun res!1013208 () Bool)

(assert (=> b!1489710 (=> res!1013208 e!834892)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1489710 (= res!1013208 (or (and (= (select (arr!48060 a!2862) index!646) (select (store (arr!48060 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48060 a!2862) index!646) (select (arr!48060 a!2862) j!93))) (= (select (arr!48060 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1489710 (and (= lt!649636 (Found!12323 j!93)) (or (= (select (arr!48060 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48060 a!2862) intermediateBeforeIndex!19) (select (arr!48060 a!2862) j!93))) (let ((bdg!54742 (select (store (arr!48060 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!48060 a!2862) index!646) bdg!54742) (= (select (arr!48060 a!2862) index!646) (select (arr!48060 a!2862) j!93))) (= (select (arr!48060 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!54742 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99586 (_ BitVec 32)) SeekEntryResult!12323)

(assert (=> b!1489710 (= lt!649636 (seekEntryOrOpen!0 (select (arr!48060 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99586 (_ BitVec 32)) Bool)

(assert (=> b!1489710 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!649637 () Unit!49934)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99586 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49934)

(assert (=> b!1489710 (= lt!649637 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1489711 () Bool)

(declare-fun res!1013202 () Bool)

(assert (=> b!1489711 (=> (not res!1013202) (not e!834898))))

(assert (=> b!1489711 (= res!1013202 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1013213 () Bool)

(declare-fun e!834896 () Bool)

(assert (=> start!126896 (=> (not res!1013213) (not e!834896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126896 (= res!1013213 (validMask!0 mask!2687))))

(assert (=> start!126896 e!834896))

(assert (=> start!126896 true))

(declare-fun array_inv!37005 (array!99586) Bool)

(assert (=> start!126896 (array_inv!37005 a!2862)))

(declare-fun lt!649642 () SeekEntryResult!12323)

(declare-fun b!1489712 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99586 (_ BitVec 32)) SeekEntryResult!12323)

(assert (=> b!1489712 (= e!834891 (not (= lt!649642 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649635 lt!649640 lt!649641 mask!2687))))))

(declare-fun b!1489713 () Bool)

(declare-fun e!834893 () Bool)

(assert (=> b!1489713 (= e!834896 e!834893)))

(declare-fun res!1013210 () Bool)

(assert (=> b!1489713 (=> (not res!1013210) (not e!834893))))

(assert (=> b!1489713 (= res!1013210 (= (select (store (arr!48060 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1489713 (= lt!649641 (array!99587 (store (arr!48060 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48611 a!2862)))))

(declare-fun b!1489714 () Bool)

(declare-fun res!1013198 () Bool)

(assert (=> b!1489714 (=> res!1013198 e!834897)))

(assert (=> b!1489714 (= res!1013198 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1489715 () Bool)

(declare-fun res!1013205 () Bool)

(assert (=> b!1489715 (=> (not res!1013205) (not e!834896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1489715 (= res!1013205 (validKeyInArray!0 (select (arr!48060 a!2862) j!93)))))

(declare-fun b!1489716 () Bool)

(declare-fun res!1013212 () Bool)

(assert (=> b!1489716 (=> (not res!1013212) (not e!834896))))

(assert (=> b!1489716 (= res!1013212 (and (= (size!48611 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48611 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48611 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1489717 () Bool)

(declare-fun e!834894 () Bool)

(assert (=> b!1489717 (= e!834894 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649640 lt!649641 mask!2687) (seekEntryOrOpen!0 lt!649640 lt!649641 mask!2687)))))

(declare-fun b!1489718 () Bool)

(assert (=> b!1489718 (= e!834892 e!834897)))

(declare-fun res!1013214 () Bool)

(assert (=> b!1489718 (=> res!1013214 e!834897)))

(assert (=> b!1489718 (= res!1013214 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!649635 #b00000000000000000000000000000000) (bvsge lt!649635 (size!48611 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489718 (= lt!649635 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1489718 (= lt!649639 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649640 lt!649641 mask!2687))))

(assert (=> b!1489718 (= lt!649639 (seekEntryOrOpen!0 lt!649640 lt!649641 mask!2687))))

(declare-fun b!1489719 () Bool)

(declare-fun res!1013200 () Bool)

(assert (=> b!1489719 (=> (not res!1013200) (not e!834896))))

(assert (=> b!1489719 (= res!1013200 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48611 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48611 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48611 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1489720 () Bool)

(declare-fun e!834899 () Bool)

(assert (=> b!1489720 (= e!834899 e!834898)))

(declare-fun res!1013197 () Bool)

(assert (=> b!1489720 (=> (not res!1013197) (not e!834898))))

(assert (=> b!1489720 (= res!1013197 (= lt!649642 (Intermediate!12323 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1489720 (= lt!649642 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649640 mask!2687) lt!649640 lt!649641 mask!2687))))

(assert (=> b!1489720 (= lt!649640 (select (store (arr!48060 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1489721 () Bool)

(declare-fun res!1013206 () Bool)

(assert (=> b!1489721 (=> (not res!1013206) (not e!834896))))

(assert (=> b!1489721 (= res!1013206 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1489722 () Bool)

(assert (=> b!1489722 (= e!834893 e!834899)))

(declare-fun res!1013204 () Bool)

(assert (=> b!1489722 (=> (not res!1013204) (not e!834899))))

(declare-fun lt!649634 () SeekEntryResult!12323)

(assert (=> b!1489722 (= res!1013204 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48060 a!2862) j!93) mask!2687) (select (arr!48060 a!2862) j!93) a!2862 mask!2687) lt!649634))))

(assert (=> b!1489722 (= lt!649634 (Intermediate!12323 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1489723 () Bool)

(declare-fun res!1013211 () Bool)

(assert (=> b!1489723 (=> (not res!1013211) (not e!834898))))

(assert (=> b!1489723 (= res!1013211 e!834894)))

(declare-fun c!137786 () Bool)

(assert (=> b!1489723 (= c!137786 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1489724 () Bool)

(declare-fun res!1013203 () Bool)

(assert (=> b!1489724 (=> (not res!1013203) (not e!834896))))

(assert (=> b!1489724 (= res!1013203 (validKeyInArray!0 (select (arr!48060 a!2862) i!1006)))))

(declare-fun b!1489725 () Bool)

(declare-fun res!1013209 () Bool)

(assert (=> b!1489725 (=> res!1013209 e!834897)))

(assert (=> b!1489725 (= res!1013209 e!834891)))

(declare-fun c!137785 () Bool)

(assert (=> b!1489725 (= c!137785 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1489726 () Bool)

(declare-fun res!1013201 () Bool)

(assert (=> b!1489726 (=> (not res!1013201) (not e!834899))))

(assert (=> b!1489726 (= res!1013201 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48060 a!2862) j!93) a!2862 mask!2687) lt!649634))))

(declare-fun b!1489727 () Bool)

(assert (=> b!1489727 (= e!834894 (= lt!649642 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649640 lt!649641 mask!2687)))))

(declare-fun b!1489728 () Bool)

(declare-fun res!1013199 () Bool)

(assert (=> b!1489728 (=> res!1013199 e!834897)))

(assert (=> b!1489728 (= res!1013199 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!649635 (select (arr!48060 a!2862) j!93) a!2862 mask!2687) lt!649634)))))

(declare-fun b!1489729 () Bool)

(declare-fun res!1013207 () Bool)

(assert (=> b!1489729 (=> (not res!1013207) (not e!834896))))

(declare-datatypes ((List!34741 0))(
  ( (Nil!34738) (Cons!34737 (h!36120 (_ BitVec 64)) (t!49442 List!34741)) )
))
(declare-fun arrayNoDuplicates!0 (array!99586 (_ BitVec 32) List!34741) Bool)

(assert (=> b!1489729 (= res!1013207 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34738))))

(assert (= (and start!126896 res!1013213) b!1489716))

(assert (= (and b!1489716 res!1013212) b!1489724))

(assert (= (and b!1489724 res!1013203) b!1489715))

(assert (= (and b!1489715 res!1013205) b!1489721))

(assert (= (and b!1489721 res!1013206) b!1489729))

(assert (= (and b!1489729 res!1013207) b!1489719))

(assert (= (and b!1489719 res!1013200) b!1489713))

(assert (= (and b!1489713 res!1013210) b!1489722))

(assert (= (and b!1489722 res!1013204) b!1489726))

(assert (= (and b!1489726 res!1013201) b!1489720))

(assert (= (and b!1489720 res!1013197) b!1489723))

(assert (= (and b!1489723 c!137786) b!1489727))

(assert (= (and b!1489723 (not c!137786)) b!1489717))

(assert (= (and b!1489723 res!1013211) b!1489711))

(assert (= (and b!1489711 res!1013202) b!1489710))

(assert (= (and b!1489710 (not res!1013208)) b!1489718))

(assert (= (and b!1489718 (not res!1013214)) b!1489728))

(assert (= (and b!1489728 (not res!1013199)) b!1489725))

(assert (= (and b!1489725 c!137785) b!1489712))

(assert (= (and b!1489725 (not c!137785)) b!1489708))

(assert (= (and b!1489725 (not res!1013209)) b!1489714))

(assert (= (and b!1489714 (not res!1013198)) b!1489709))

(declare-fun m!1373967 () Bool)

(assert (=> b!1489721 m!1373967))

(declare-fun m!1373969 () Bool)

(assert (=> b!1489710 m!1373969))

(declare-fun m!1373971 () Bool)

(assert (=> b!1489710 m!1373971))

(declare-fun m!1373973 () Bool)

(assert (=> b!1489710 m!1373973))

(declare-fun m!1373975 () Bool)

(assert (=> b!1489710 m!1373975))

(declare-fun m!1373977 () Bool)

(assert (=> b!1489710 m!1373977))

(declare-fun m!1373979 () Bool)

(assert (=> b!1489710 m!1373979))

(declare-fun m!1373981 () Bool)

(assert (=> b!1489710 m!1373981))

(declare-fun m!1373983 () Bool)

(assert (=> b!1489710 m!1373983))

(assert (=> b!1489710 m!1373979))

(assert (=> b!1489726 m!1373979))

(assert (=> b!1489726 m!1373979))

(declare-fun m!1373985 () Bool)

(assert (=> b!1489726 m!1373985))

(declare-fun m!1373987 () Bool)

(assert (=> b!1489724 m!1373987))

(assert (=> b!1489724 m!1373987))

(declare-fun m!1373989 () Bool)

(assert (=> b!1489724 m!1373989))

(declare-fun m!1373991 () Bool)

(assert (=> b!1489720 m!1373991))

(assert (=> b!1489720 m!1373991))

(declare-fun m!1373993 () Bool)

(assert (=> b!1489720 m!1373993))

(assert (=> b!1489720 m!1373971))

(declare-fun m!1373995 () Bool)

(assert (=> b!1489720 m!1373995))

(declare-fun m!1373997 () Bool)

(assert (=> b!1489717 m!1373997))

(declare-fun m!1373999 () Bool)

(assert (=> b!1489717 m!1373999))

(assert (=> b!1489722 m!1373979))

(assert (=> b!1489722 m!1373979))

(declare-fun m!1374001 () Bool)

(assert (=> b!1489722 m!1374001))

(assert (=> b!1489722 m!1374001))

(assert (=> b!1489722 m!1373979))

(declare-fun m!1374003 () Bool)

(assert (=> b!1489722 m!1374003))

(declare-fun m!1374005 () Bool)

(assert (=> b!1489718 m!1374005))

(assert (=> b!1489718 m!1373997))

(assert (=> b!1489718 m!1373999))

(assert (=> b!1489728 m!1373979))

(assert (=> b!1489728 m!1373979))

(declare-fun m!1374007 () Bool)

(assert (=> b!1489728 m!1374007))

(declare-fun m!1374009 () Bool)

(assert (=> b!1489708 m!1374009))

(declare-fun m!1374011 () Bool)

(assert (=> b!1489729 m!1374011))

(declare-fun m!1374013 () Bool)

(assert (=> b!1489727 m!1374013))

(declare-fun m!1374015 () Bool)

(assert (=> b!1489712 m!1374015))

(declare-fun m!1374017 () Bool)

(assert (=> b!1489709 m!1374017))

(declare-fun m!1374019 () Bool)

(assert (=> start!126896 m!1374019))

(declare-fun m!1374021 () Bool)

(assert (=> start!126896 m!1374021))

(assert (=> b!1489713 m!1373971))

(declare-fun m!1374023 () Bool)

(assert (=> b!1489713 m!1374023))

(assert (=> b!1489715 m!1373979))

(assert (=> b!1489715 m!1373979))

(declare-fun m!1374025 () Bool)

(assert (=> b!1489715 m!1374025))

(push 1)

