; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124646 () Bool)

(assert start!124646)

(declare-fun b!1442709 () Bool)

(declare-fun e!813109 () Bool)

(assert (=> b!1442709 (= e!813109 (not true))))

(declare-fun e!813113 () Bool)

(assert (=> b!1442709 e!813113))

(declare-fun res!974997 () Bool)

(assert (=> b!1442709 (=> (not res!974997) (not e!813113))))

(declare-datatypes ((array!98011 0))(
  ( (array!98012 (arr!47289 (Array (_ BitVec 32) (_ BitVec 64))) (size!47840 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98011)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98011 (_ BitVec 32)) Bool)

(assert (=> b!1442709 (= res!974997 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48572 0))(
  ( (Unit!48573) )
))
(declare-fun lt!633605 () Unit!48572)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98011 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48572)

(assert (=> b!1442709 (= lt!633605 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!633607 () array!98011)

(declare-fun b!1442710 () Bool)

(declare-fun e!813112 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!633603 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11564 0))(
  ( (MissingZero!11564 (index!48647 (_ BitVec 32))) (Found!11564 (index!48648 (_ BitVec 32))) (Intermediate!11564 (undefined!12376 Bool) (index!48649 (_ BitVec 32)) (x!130352 (_ BitVec 32))) (Undefined!11564) (MissingVacant!11564 (index!48650 (_ BitVec 32))) )
))
(declare-fun lt!633606 () SeekEntryResult!11564)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98011 (_ BitVec 32)) SeekEntryResult!11564)

(assert (=> b!1442710 (= e!813112 (= lt!633606 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633603 lt!633607 mask!2687)))))

(declare-fun b!1442711 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98011 (_ BitVec 32)) SeekEntryResult!11564)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98011 (_ BitVec 32)) SeekEntryResult!11564)

(assert (=> b!1442711 (= e!813112 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633603 lt!633607 mask!2687) (seekEntryOrOpen!0 lt!633603 lt!633607 mask!2687)))))

(declare-fun res!974995 () Bool)

(declare-fun e!813108 () Bool)

(assert (=> start!124646 (=> (not res!974995) (not e!813108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124646 (= res!974995 (validMask!0 mask!2687))))

(assert (=> start!124646 e!813108))

(assert (=> start!124646 true))

(declare-fun array_inv!36234 (array!98011) Bool)

(assert (=> start!124646 (array_inv!36234 a!2862)))

(declare-fun b!1442712 () Bool)

(declare-fun res!975007 () Bool)

(assert (=> b!1442712 (=> (not res!975007) (not e!813108))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1442712 (= res!975007 (validKeyInArray!0 (select (arr!47289 a!2862) i!1006)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1442713 () Bool)

(assert (=> b!1442713 (= e!813113 (or (= (select (arr!47289 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47289 a!2862) intermediateBeforeIndex!19) (select (arr!47289 a!2862) j!93))))))

(declare-fun b!1442714 () Bool)

(declare-fun res!974996 () Bool)

(assert (=> b!1442714 (=> (not res!974996) (not e!813108))))

(assert (=> b!1442714 (= res!974996 (and (= (size!47840 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47840 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47840 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1442715 () Bool)

(declare-fun res!975004 () Bool)

(assert (=> b!1442715 (=> (not res!975004) (not e!813108))))

(assert (=> b!1442715 (= res!975004 (validKeyInArray!0 (select (arr!47289 a!2862) j!93)))))

(declare-fun b!1442716 () Bool)

(declare-fun res!975001 () Bool)

(declare-fun e!813107 () Bool)

(assert (=> b!1442716 (=> (not res!975001) (not e!813107))))

(declare-fun lt!633604 () SeekEntryResult!11564)

(assert (=> b!1442716 (= res!975001 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47289 a!2862) j!93) a!2862 mask!2687) lt!633604))))

(declare-fun b!1442717 () Bool)

(declare-fun res!974999 () Bool)

(assert (=> b!1442717 (=> (not res!974999) (not e!813108))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1442717 (= res!974999 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47840 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47840 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47840 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1442718 () Bool)

(declare-fun e!813111 () Bool)

(assert (=> b!1442718 (= e!813108 e!813111)))

(declare-fun res!975009 () Bool)

(assert (=> b!1442718 (=> (not res!975009) (not e!813111))))

(assert (=> b!1442718 (= res!975009 (= (select (store (arr!47289 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1442718 (= lt!633607 (array!98012 (store (arr!47289 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47840 a!2862)))))

(declare-fun b!1442719 () Bool)

(declare-fun res!975006 () Bool)

(assert (=> b!1442719 (=> (not res!975006) (not e!813108))))

(declare-datatypes ((List!33970 0))(
  ( (Nil!33967) (Cons!33966 (h!35316 (_ BitVec 64)) (t!48671 List!33970)) )
))
(declare-fun arrayNoDuplicates!0 (array!98011 (_ BitVec 32) List!33970) Bool)

(assert (=> b!1442719 (= res!975006 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33967))))

(declare-fun b!1442720 () Bool)

(assert (=> b!1442720 (= e!813107 e!813109)))

(declare-fun res!975003 () Bool)

(assert (=> b!1442720 (=> (not res!975003) (not e!813109))))

(assert (=> b!1442720 (= res!975003 (= lt!633606 (Intermediate!11564 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1442720 (= lt!633606 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633603 mask!2687) lt!633603 lt!633607 mask!2687))))

(assert (=> b!1442720 (= lt!633603 (select (store (arr!47289 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1442721 () Bool)

(declare-fun res!974998 () Bool)

(assert (=> b!1442721 (=> (not res!974998) (not e!813113))))

(assert (=> b!1442721 (= res!974998 (= (seekEntryOrOpen!0 (select (arr!47289 a!2862) j!93) a!2862 mask!2687) (Found!11564 j!93)))))

(declare-fun b!1442722 () Bool)

(declare-fun res!975000 () Bool)

(assert (=> b!1442722 (=> (not res!975000) (not e!813109))))

(assert (=> b!1442722 (= res!975000 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1442723 () Bool)

(assert (=> b!1442723 (= e!813111 e!813107)))

(declare-fun res!975005 () Bool)

(assert (=> b!1442723 (=> (not res!975005) (not e!813107))))

(assert (=> b!1442723 (= res!975005 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47289 a!2862) j!93) mask!2687) (select (arr!47289 a!2862) j!93) a!2862 mask!2687) lt!633604))))

(assert (=> b!1442723 (= lt!633604 (Intermediate!11564 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1442724 () Bool)

(declare-fun res!975002 () Bool)

(assert (=> b!1442724 (=> (not res!975002) (not e!813109))))

(assert (=> b!1442724 (= res!975002 e!813112)))

(declare-fun c!133370 () Bool)

(assert (=> b!1442724 (= c!133370 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1442725 () Bool)

(declare-fun res!975008 () Bool)

(assert (=> b!1442725 (=> (not res!975008) (not e!813108))))

(assert (=> b!1442725 (= res!975008 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124646 res!974995) b!1442714))

(assert (= (and b!1442714 res!974996) b!1442712))

(assert (= (and b!1442712 res!975007) b!1442715))

(assert (= (and b!1442715 res!975004) b!1442725))

(assert (= (and b!1442725 res!975008) b!1442719))

(assert (= (and b!1442719 res!975006) b!1442717))

(assert (= (and b!1442717 res!974999) b!1442718))

(assert (= (and b!1442718 res!975009) b!1442723))

(assert (= (and b!1442723 res!975005) b!1442716))

(assert (= (and b!1442716 res!975001) b!1442720))

(assert (= (and b!1442720 res!975003) b!1442724))

(assert (= (and b!1442724 c!133370) b!1442710))

(assert (= (and b!1442724 (not c!133370)) b!1442711))

(assert (= (and b!1442724 res!975002) b!1442722))

(assert (= (and b!1442722 res!975000) b!1442709))

(assert (= (and b!1442709 res!974997) b!1442721))

(assert (= (and b!1442721 res!974998) b!1442713))

(declare-fun m!1331885 () Bool)

(assert (=> b!1442720 m!1331885))

(assert (=> b!1442720 m!1331885))

(declare-fun m!1331887 () Bool)

(assert (=> b!1442720 m!1331887))

(declare-fun m!1331889 () Bool)

(assert (=> b!1442720 m!1331889))

(declare-fun m!1331891 () Bool)

(assert (=> b!1442720 m!1331891))

(declare-fun m!1331893 () Bool)

(assert (=> b!1442721 m!1331893))

(assert (=> b!1442721 m!1331893))

(declare-fun m!1331895 () Bool)

(assert (=> b!1442721 m!1331895))

(declare-fun m!1331897 () Bool)

(assert (=> b!1442711 m!1331897))

(declare-fun m!1331899 () Bool)

(assert (=> b!1442711 m!1331899))

(declare-fun m!1331901 () Bool)

(assert (=> b!1442713 m!1331901))

(assert (=> b!1442713 m!1331893))

(assert (=> b!1442715 m!1331893))

(assert (=> b!1442715 m!1331893))

(declare-fun m!1331903 () Bool)

(assert (=> b!1442715 m!1331903))

(declare-fun m!1331905 () Bool)

(assert (=> b!1442719 m!1331905))

(assert (=> b!1442718 m!1331889))

(declare-fun m!1331907 () Bool)

(assert (=> b!1442718 m!1331907))

(declare-fun m!1331909 () Bool)

(assert (=> b!1442725 m!1331909))

(assert (=> b!1442716 m!1331893))

(assert (=> b!1442716 m!1331893))

(declare-fun m!1331911 () Bool)

(assert (=> b!1442716 m!1331911))

(declare-fun m!1331913 () Bool)

(assert (=> b!1442712 m!1331913))

(assert (=> b!1442712 m!1331913))

(declare-fun m!1331915 () Bool)

(assert (=> b!1442712 m!1331915))

(declare-fun m!1331917 () Bool)

(assert (=> start!124646 m!1331917))

(declare-fun m!1331919 () Bool)

(assert (=> start!124646 m!1331919))

(declare-fun m!1331921 () Bool)

(assert (=> b!1442709 m!1331921))

(declare-fun m!1331923 () Bool)

(assert (=> b!1442709 m!1331923))

(declare-fun m!1331925 () Bool)

(assert (=> b!1442710 m!1331925))

(assert (=> b!1442723 m!1331893))

(assert (=> b!1442723 m!1331893))

(declare-fun m!1331927 () Bool)

(assert (=> b!1442723 m!1331927))

(assert (=> b!1442723 m!1331927))

(assert (=> b!1442723 m!1331893))

(declare-fun m!1331929 () Bool)

(assert (=> b!1442723 m!1331929))

(push 1)

