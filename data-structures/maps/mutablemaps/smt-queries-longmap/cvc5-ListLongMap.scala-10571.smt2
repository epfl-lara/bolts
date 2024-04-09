; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124606 () Bool)

(assert start!124606)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!633304 () (_ BitVec 64))

(declare-fun e!812706 () Bool)

(declare-datatypes ((array!97971 0))(
  ( (array!97972 (arr!47269 (Array (_ BitVec 32) (_ BitVec 64))) (size!47820 (_ BitVec 32))) )
))
(declare-fun lt!633305 () array!97971)

(declare-fun b!1441721 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11544 0))(
  ( (MissingZero!11544 (index!48567 (_ BitVec 32))) (Found!11544 (index!48568 (_ BitVec 32))) (Intermediate!11544 (undefined!12356 Bool) (index!48569 (_ BitVec 32)) (x!130284 (_ BitVec 32))) (Undefined!11544) (MissingVacant!11544 (index!48570 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97971 (_ BitVec 32)) SeekEntryResult!11544)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97971 (_ BitVec 32)) SeekEntryResult!11544)

(assert (=> b!1441721 (= e!812706 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633304 lt!633305 mask!2687) (seekEntryOrOpen!0 lt!633304 lt!633305 mask!2687)))))

(declare-fun b!1441722 () Bool)

(declare-fun e!812707 () Bool)

(declare-fun e!812708 () Bool)

(assert (=> b!1441722 (= e!812707 e!812708)))

(declare-fun res!974129 () Bool)

(assert (=> b!1441722 (=> (not res!974129) (not e!812708))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!97971)

(assert (=> b!1441722 (= res!974129 (= (select (store (arr!47269 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441722 (= lt!633305 (array!97972 (store (arr!47269 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47820 a!2862)))))

(declare-fun b!1441723 () Bool)

(declare-fun res!974130 () Bool)

(declare-fun e!812705 () Bool)

(assert (=> b!1441723 (=> (not res!974130) (not e!812705))))

(assert (=> b!1441723 (= res!974130 e!812706)))

(declare-fun c!133310 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441723 (= c!133310 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441724 () Bool)

(declare-fun res!974138 () Bool)

(assert (=> b!1441724 (=> (not res!974138) (not e!812707))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1441724 (= res!974138 (and (= (size!47820 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47820 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47820 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!633303 () SeekEntryResult!11544)

(declare-fun b!1441725 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97971 (_ BitVec 32)) SeekEntryResult!11544)

(assert (=> b!1441725 (= e!812706 (= lt!633303 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633304 lt!633305 mask!2687)))))

(declare-fun b!1441726 () Bool)

(declare-fun e!812704 () Bool)

(assert (=> b!1441726 (= e!812708 e!812704)))

(declare-fun res!974133 () Bool)

(assert (=> b!1441726 (=> (not res!974133) (not e!812704))))

(declare-fun lt!633306 () SeekEntryResult!11544)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441726 (= res!974133 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47269 a!2862) j!93) mask!2687) (select (arr!47269 a!2862) j!93) a!2862 mask!2687) lt!633306))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441726 (= lt!633306 (Intermediate!11544 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441727 () Bool)

(declare-fun res!974139 () Bool)

(assert (=> b!1441727 (=> (not res!974139) (not e!812707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441727 (= res!974139 (validKeyInArray!0 (select (arr!47269 a!2862) i!1006)))))

(declare-fun b!1441728 () Bool)

(declare-fun res!974136 () Bool)

(assert (=> b!1441728 (=> (not res!974136) (not e!812707))))

(assert (=> b!1441728 (= res!974136 (validKeyInArray!0 (select (arr!47269 a!2862) j!93)))))

(declare-fun b!1441729 () Bool)

(declare-fun res!974132 () Bool)

(assert (=> b!1441729 (=> (not res!974132) (not e!812707))))

(assert (=> b!1441729 (= res!974132 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47820 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47820 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47820 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441730 () Bool)

(declare-fun res!974127 () Bool)

(assert (=> b!1441730 (=> (not res!974127) (not e!812707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97971 (_ BitVec 32)) Bool)

(assert (=> b!1441730 (= res!974127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441731 () Bool)

(declare-fun res!974128 () Bool)

(assert (=> b!1441731 (=> (not res!974128) (not e!812704))))

(assert (=> b!1441731 (= res!974128 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47269 a!2862) j!93) a!2862 mask!2687) lt!633306))))

(declare-fun res!974137 () Bool)

(assert (=> start!124606 (=> (not res!974137) (not e!812707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124606 (= res!974137 (validMask!0 mask!2687))))

(assert (=> start!124606 e!812707))

(assert (=> start!124606 true))

(declare-fun array_inv!36214 (array!97971) Bool)

(assert (=> start!124606 (array_inv!36214 a!2862)))

(declare-fun b!1441732 () Bool)

(declare-fun res!974135 () Bool)

(assert (=> b!1441732 (=> (not res!974135) (not e!812707))))

(declare-datatypes ((List!33950 0))(
  ( (Nil!33947) (Cons!33946 (h!35296 (_ BitVec 64)) (t!48651 List!33950)) )
))
(declare-fun arrayNoDuplicates!0 (array!97971 (_ BitVec 32) List!33950) Bool)

(assert (=> b!1441732 (= res!974135 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33947))))

(declare-fun b!1441733 () Bool)

(assert (=> b!1441733 (= e!812704 e!812705)))

(declare-fun res!974134 () Bool)

(assert (=> b!1441733 (=> (not res!974134) (not e!812705))))

(assert (=> b!1441733 (= res!974134 (= lt!633303 (Intermediate!11544 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1441733 (= lt!633303 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633304 mask!2687) lt!633304 lt!633305 mask!2687))))

(assert (=> b!1441733 (= lt!633304 (select (store (arr!47269 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441734 () Bool)

(assert (=> b!1441734 (= e!812705 (not true))))

(assert (=> b!1441734 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48532 0))(
  ( (Unit!48533) )
))
(declare-fun lt!633307 () Unit!48532)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97971 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48532)

(assert (=> b!1441734 (= lt!633307 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1441735 () Bool)

(declare-fun res!974131 () Bool)

(assert (=> b!1441735 (=> (not res!974131) (not e!812705))))

(assert (=> b!1441735 (= res!974131 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!124606 res!974137) b!1441724))

(assert (= (and b!1441724 res!974138) b!1441727))

(assert (= (and b!1441727 res!974139) b!1441728))

(assert (= (and b!1441728 res!974136) b!1441730))

(assert (= (and b!1441730 res!974127) b!1441732))

(assert (= (and b!1441732 res!974135) b!1441729))

(assert (= (and b!1441729 res!974132) b!1441722))

(assert (= (and b!1441722 res!974129) b!1441726))

(assert (= (and b!1441726 res!974133) b!1441731))

(assert (= (and b!1441731 res!974128) b!1441733))

(assert (= (and b!1441733 res!974134) b!1441723))

(assert (= (and b!1441723 c!133310) b!1441725))

(assert (= (and b!1441723 (not c!133310)) b!1441721))

(assert (= (and b!1441723 res!974130) b!1441735))

(assert (= (and b!1441735 res!974131) b!1441734))

(declare-fun m!1330977 () Bool)

(assert (=> b!1441734 m!1330977))

(declare-fun m!1330979 () Bool)

(assert (=> b!1441734 m!1330979))

(declare-fun m!1330981 () Bool)

(assert (=> b!1441730 m!1330981))

(declare-fun m!1330983 () Bool)

(assert (=> b!1441728 m!1330983))

(assert (=> b!1441728 m!1330983))

(declare-fun m!1330985 () Bool)

(assert (=> b!1441728 m!1330985))

(assert (=> b!1441731 m!1330983))

(assert (=> b!1441731 m!1330983))

(declare-fun m!1330987 () Bool)

(assert (=> b!1441731 m!1330987))

(declare-fun m!1330989 () Bool)

(assert (=> start!124606 m!1330989))

(declare-fun m!1330991 () Bool)

(assert (=> start!124606 m!1330991))

(declare-fun m!1330993 () Bool)

(assert (=> b!1441721 m!1330993))

(declare-fun m!1330995 () Bool)

(assert (=> b!1441721 m!1330995))

(declare-fun m!1330997 () Bool)

(assert (=> b!1441727 m!1330997))

(assert (=> b!1441727 m!1330997))

(declare-fun m!1330999 () Bool)

(assert (=> b!1441727 m!1330999))

(declare-fun m!1331001 () Bool)

(assert (=> b!1441733 m!1331001))

(assert (=> b!1441733 m!1331001))

(declare-fun m!1331003 () Bool)

(assert (=> b!1441733 m!1331003))

(declare-fun m!1331005 () Bool)

(assert (=> b!1441733 m!1331005))

(declare-fun m!1331007 () Bool)

(assert (=> b!1441733 m!1331007))

(assert (=> b!1441726 m!1330983))

(assert (=> b!1441726 m!1330983))

(declare-fun m!1331009 () Bool)

(assert (=> b!1441726 m!1331009))

(assert (=> b!1441726 m!1331009))

(assert (=> b!1441726 m!1330983))

(declare-fun m!1331011 () Bool)

(assert (=> b!1441726 m!1331011))

(assert (=> b!1441722 m!1331005))

(declare-fun m!1331013 () Bool)

(assert (=> b!1441722 m!1331013))

(declare-fun m!1331015 () Bool)

(assert (=> b!1441732 m!1331015))

(declare-fun m!1331017 () Bool)

(assert (=> b!1441725 m!1331017))

(push 1)

