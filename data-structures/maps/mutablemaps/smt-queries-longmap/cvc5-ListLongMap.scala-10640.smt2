; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125020 () Bool)

(assert start!125020)

(declare-fun res!984072 () Bool)

(declare-fun e!817852 () Bool)

(assert (=> start!125020 (=> (not res!984072) (not e!817852))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125020 (= res!984072 (validMask!0 mask!2687))))

(assert (=> start!125020 e!817852))

(assert (=> start!125020 true))

(declare-datatypes ((array!98385 0))(
  ( (array!98386 (arr!47476 (Array (_ BitVec 32) (_ BitVec 64))) (size!48027 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98385)

(declare-fun array_inv!36421 (array!98385) Bool)

(assert (=> start!125020 (array_inv!36421 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!817853 () Bool)

(declare-fun lt!637044 () array!98385)

(declare-fun lt!637040 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11751 0))(
  ( (MissingZero!11751 (index!49395 (_ BitVec 32))) (Found!11751 (index!49396 (_ BitVec 32))) (Intermediate!11751 (undefined!12563 Bool) (index!49397 (_ BitVec 32)) (x!131043 (_ BitVec 32))) (Undefined!11751) (MissingVacant!11751 (index!49398 (_ BitVec 32))) )
))
(declare-fun lt!637045 () SeekEntryResult!11751)

(declare-fun b!1452900 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98385 (_ BitVec 32)) SeekEntryResult!11751)

(assert (=> b!1452900 (= e!817853 (= lt!637045 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637040 lt!637044 mask!2687)))))

(declare-fun b!1452901 () Bool)

(declare-fun res!984078 () Bool)

(declare-fun e!817855 () Bool)

(assert (=> b!1452901 (=> (not res!984078) (not e!817855))))

(assert (=> b!1452901 (= res!984078 e!817853)))

(declare-fun c!133931 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1452901 (= c!133931 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1452902 () Bool)

(declare-fun e!817851 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98385 (_ BitVec 32)) SeekEntryResult!11751)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98385 (_ BitVec 32)) SeekEntryResult!11751)

(assert (=> b!1452902 (= e!817851 (= (seekEntryOrOpen!0 lt!637040 lt!637044 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637040 lt!637044 mask!2687)))))

(declare-fun b!1452903 () Bool)

(declare-fun res!984070 () Bool)

(assert (=> b!1452903 (=> (not res!984070) (not e!817852))))

(declare-datatypes ((List!34157 0))(
  ( (Nil!34154) (Cons!34153 (h!35503 (_ BitVec 64)) (t!48858 List!34157)) )
))
(declare-fun arrayNoDuplicates!0 (array!98385 (_ BitVec 32) List!34157) Bool)

(assert (=> b!1452903 (= res!984070 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34154))))

(declare-fun b!1452904 () Bool)

(declare-fun e!817849 () Bool)

(declare-fun e!817850 () Bool)

(assert (=> b!1452904 (= e!817849 e!817850)))

(declare-fun res!984068 () Bool)

(assert (=> b!1452904 (=> res!984068 e!817850)))

(declare-fun lt!637042 () (_ BitVec 64))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1452904 (= res!984068 (or (and (= (select (arr!47476 a!2862) index!646) lt!637042) (= (select (arr!47476 a!2862) index!646) (select (arr!47476 a!2862) j!93))) (= (select (arr!47476 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1452904 (= lt!637042 (select (store (arr!47476 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1452905 () Bool)

(declare-fun res!984065 () Bool)

(assert (=> b!1452905 (=> (not res!984065) (not e!817852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452905 (= res!984065 (validKeyInArray!0 (select (arr!47476 a!2862) j!93)))))

(declare-fun b!1452906 () Bool)

(declare-fun res!984076 () Bool)

(declare-fun e!817856 () Bool)

(assert (=> b!1452906 (=> (not res!984076) (not e!817856))))

(declare-fun lt!637041 () SeekEntryResult!11751)

(assert (=> b!1452906 (= res!984076 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47476 a!2862) j!93) a!2862 mask!2687) lt!637041))))

(declare-fun b!1452907 () Bool)

(assert (=> b!1452907 (= e!817855 (not true))))

(assert (=> b!1452907 e!817849))

(declare-fun res!984071 () Bool)

(assert (=> b!1452907 (=> (not res!984071) (not e!817849))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98385 (_ BitVec 32)) Bool)

(assert (=> b!1452907 (= res!984071 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48946 0))(
  ( (Unit!48947) )
))
(declare-fun lt!637043 () Unit!48946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98385 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48946)

(assert (=> b!1452907 (= lt!637043 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452908 () Bool)

(declare-fun res!984079 () Bool)

(assert (=> b!1452908 (=> (not res!984079) (not e!817852))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1452908 (= res!984079 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48027 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48027 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48027 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452909 () Bool)

(declare-fun res!984074 () Bool)

(assert (=> b!1452909 (=> (not res!984074) (not e!817849))))

(assert (=> b!1452909 (= res!984074 (or (= (select (arr!47476 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47476 a!2862) intermediateBeforeIndex!19) (select (arr!47476 a!2862) j!93))))))

(declare-fun b!1452910 () Bool)

(declare-fun e!817854 () Bool)

(assert (=> b!1452910 (= e!817852 e!817854)))

(declare-fun res!984073 () Bool)

(assert (=> b!1452910 (=> (not res!984073) (not e!817854))))

(assert (=> b!1452910 (= res!984073 (= (select (store (arr!47476 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452910 (= lt!637044 (array!98386 (store (arr!47476 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48027 a!2862)))))

(declare-fun b!1452911 () Bool)

(declare-fun res!984069 () Bool)

(assert (=> b!1452911 (=> (not res!984069) (not e!817852))))

(assert (=> b!1452911 (= res!984069 (validKeyInArray!0 (select (arr!47476 a!2862) i!1006)))))

(declare-fun b!1452912 () Bool)

(assert (=> b!1452912 (= e!817853 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637040 lt!637044 mask!2687) (seekEntryOrOpen!0 lt!637040 lt!637044 mask!2687)))))

(declare-fun b!1452913 () Bool)

(declare-fun res!984067 () Bool)

(assert (=> b!1452913 (=> (not res!984067) (not e!817849))))

(assert (=> b!1452913 (= res!984067 (= (seekEntryOrOpen!0 (select (arr!47476 a!2862) j!93) a!2862 mask!2687) (Found!11751 j!93)))))

(declare-fun b!1452914 () Bool)

(declare-fun res!984064 () Bool)

(assert (=> b!1452914 (=> (not res!984064) (not e!817852))))

(assert (=> b!1452914 (= res!984064 (and (= (size!48027 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48027 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48027 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452915 () Bool)

(assert (=> b!1452915 (= e!817856 e!817855)))

(declare-fun res!984077 () Bool)

(assert (=> b!1452915 (=> (not res!984077) (not e!817855))))

(assert (=> b!1452915 (= res!984077 (= lt!637045 (Intermediate!11751 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452915 (= lt!637045 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637040 mask!2687) lt!637040 lt!637044 mask!2687))))

(assert (=> b!1452915 (= lt!637040 (select (store (arr!47476 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452916 () Bool)

(assert (=> b!1452916 (= e!817850 e!817851)))

(declare-fun res!984075 () Bool)

(assert (=> b!1452916 (=> (not res!984075) (not e!817851))))

(assert (=> b!1452916 (= res!984075 (and (= index!646 intermediateAfterIndex!19) (= lt!637042 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1452917 () Bool)

(assert (=> b!1452917 (= e!817854 e!817856)))

(declare-fun res!984066 () Bool)

(assert (=> b!1452917 (=> (not res!984066) (not e!817856))))

(assert (=> b!1452917 (= res!984066 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47476 a!2862) j!93) mask!2687) (select (arr!47476 a!2862) j!93) a!2862 mask!2687) lt!637041))))

(assert (=> b!1452917 (= lt!637041 (Intermediate!11751 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452918 () Bool)

(declare-fun res!984081 () Bool)

(assert (=> b!1452918 (=> (not res!984081) (not e!817855))))

(assert (=> b!1452918 (= res!984081 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452919 () Bool)

(declare-fun res!984080 () Bool)

(assert (=> b!1452919 (=> (not res!984080) (not e!817852))))

(assert (=> b!1452919 (= res!984080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125020 res!984072) b!1452914))

(assert (= (and b!1452914 res!984064) b!1452911))

(assert (= (and b!1452911 res!984069) b!1452905))

(assert (= (and b!1452905 res!984065) b!1452919))

(assert (= (and b!1452919 res!984080) b!1452903))

(assert (= (and b!1452903 res!984070) b!1452908))

(assert (= (and b!1452908 res!984079) b!1452910))

(assert (= (and b!1452910 res!984073) b!1452917))

(assert (= (and b!1452917 res!984066) b!1452906))

(assert (= (and b!1452906 res!984076) b!1452915))

(assert (= (and b!1452915 res!984077) b!1452901))

(assert (= (and b!1452901 c!133931) b!1452900))

(assert (= (and b!1452901 (not c!133931)) b!1452912))

(assert (= (and b!1452901 res!984078) b!1452918))

(assert (= (and b!1452918 res!984081) b!1452907))

(assert (= (and b!1452907 res!984071) b!1452913))

(assert (= (and b!1452913 res!984067) b!1452909))

(assert (= (and b!1452909 res!984074) b!1452904))

(assert (= (and b!1452904 (not res!984068)) b!1452916))

(assert (= (and b!1452916 res!984075) b!1452902))

(declare-fun m!1341513 () Bool)

(assert (=> b!1452913 m!1341513))

(assert (=> b!1452913 m!1341513))

(declare-fun m!1341515 () Bool)

(assert (=> b!1452913 m!1341515))

(declare-fun m!1341517 () Bool)

(assert (=> b!1452919 m!1341517))

(declare-fun m!1341519 () Bool)

(assert (=> b!1452903 m!1341519))

(assert (=> b!1452917 m!1341513))

(assert (=> b!1452917 m!1341513))

(declare-fun m!1341521 () Bool)

(assert (=> b!1452917 m!1341521))

(assert (=> b!1452917 m!1341521))

(assert (=> b!1452917 m!1341513))

(declare-fun m!1341523 () Bool)

(assert (=> b!1452917 m!1341523))

(declare-fun m!1341525 () Bool)

(assert (=> b!1452902 m!1341525))

(declare-fun m!1341527 () Bool)

(assert (=> b!1452902 m!1341527))

(assert (=> b!1452906 m!1341513))

(assert (=> b!1452906 m!1341513))

(declare-fun m!1341529 () Bool)

(assert (=> b!1452906 m!1341529))

(declare-fun m!1341531 () Bool)

(assert (=> b!1452911 m!1341531))

(assert (=> b!1452911 m!1341531))

(declare-fun m!1341533 () Bool)

(assert (=> b!1452911 m!1341533))

(declare-fun m!1341535 () Bool)

(assert (=> b!1452910 m!1341535))

(declare-fun m!1341537 () Bool)

(assert (=> b!1452910 m!1341537))

(declare-fun m!1341539 () Bool)

(assert (=> b!1452909 m!1341539))

(assert (=> b!1452909 m!1341513))

(declare-fun m!1341541 () Bool)

(assert (=> b!1452900 m!1341541))

(declare-fun m!1341543 () Bool)

(assert (=> b!1452904 m!1341543))

(assert (=> b!1452904 m!1341513))

(assert (=> b!1452904 m!1341535))

(declare-fun m!1341545 () Bool)

(assert (=> b!1452904 m!1341545))

(assert (=> b!1452912 m!1341527))

(assert (=> b!1452912 m!1341525))

(declare-fun m!1341547 () Bool)

(assert (=> b!1452907 m!1341547))

(declare-fun m!1341549 () Bool)

(assert (=> b!1452907 m!1341549))

(declare-fun m!1341551 () Bool)

(assert (=> b!1452915 m!1341551))

(assert (=> b!1452915 m!1341551))

(declare-fun m!1341553 () Bool)

(assert (=> b!1452915 m!1341553))

(assert (=> b!1452915 m!1341535))

(declare-fun m!1341555 () Bool)

(assert (=> b!1452915 m!1341555))

(declare-fun m!1341557 () Bool)

(assert (=> start!125020 m!1341557))

(declare-fun m!1341559 () Bool)

(assert (=> start!125020 m!1341559))

(assert (=> b!1452905 m!1341513))

(assert (=> b!1452905 m!1341513))

(declare-fun m!1341561 () Bool)

(assert (=> b!1452905 m!1341561))

(push 1)

