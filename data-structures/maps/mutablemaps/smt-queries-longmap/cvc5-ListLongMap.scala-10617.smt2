; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124882 () Bool)

(assert start!124882)

(declare-fun b!1449082 () Bool)

(declare-fun res!980670 () Bool)

(declare-fun e!816081 () Bool)

(assert (=> b!1449082 (=> (not res!980670) (not e!816081))))

(declare-datatypes ((array!98247 0))(
  ( (array!98248 (arr!47407 (Array (_ BitVec 32) (_ BitVec 64))) (size!47958 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98247)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1449082 (= res!980670 (validKeyInArray!0 (select (arr!47407 a!2862) j!93)))))

(declare-fun b!1449083 () Bool)

(declare-fun res!980671 () Bool)

(assert (=> b!1449083 (=> (not res!980671) (not e!816081))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98247 (_ BitVec 32)) Bool)

(assert (=> b!1449083 (= res!980671 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1449084 () Bool)

(declare-fun res!980667 () Bool)

(assert (=> b!1449084 (=> (not res!980667) (not e!816081))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1449084 (= res!980667 (and (= (size!47958 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47958 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47958 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1449085 () Bool)

(declare-fun e!816079 () Bool)

(declare-fun e!816083 () Bool)

(assert (=> b!1449085 (= e!816079 (not e!816083))))

(declare-fun res!980661 () Bool)

(assert (=> b!1449085 (=> res!980661 e!816083)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1449085 (= res!980661 (or (and (= (select (arr!47407 a!2862) index!646) (select (store (arr!47407 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47407 a!2862) index!646) (select (arr!47407 a!2862) j!93))) (not (= (select (arr!47407 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47407 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816077 () Bool)

(assert (=> b!1449085 e!816077))

(declare-fun res!980666 () Bool)

(assert (=> b!1449085 (=> (not res!980666) (not e!816077))))

(declare-datatypes ((SeekEntryResult!11682 0))(
  ( (MissingZero!11682 (index!49119 (_ BitVec 32))) (Found!11682 (index!49120 (_ BitVec 32))) (Intermediate!11682 (undefined!12494 Bool) (index!49121 (_ BitVec 32)) (x!130790 (_ BitVec 32))) (Undefined!11682) (MissingVacant!11682 (index!49122 (_ BitVec 32))) )
))
(declare-fun lt!635740 () SeekEntryResult!11682)

(assert (=> b!1449085 (= res!980666 (and (= lt!635740 (Found!11682 j!93)) (or (= (select (arr!47407 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47407 a!2862) intermediateBeforeIndex!19) (select (arr!47407 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98247 (_ BitVec 32)) SeekEntryResult!11682)

(assert (=> b!1449085 (= lt!635740 (seekEntryOrOpen!0 (select (arr!47407 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1449085 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48808 0))(
  ( (Unit!48809) )
))
(declare-fun lt!635743 () Unit!48808)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98247 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48808)

(assert (=> b!1449085 (= lt!635743 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!980662 () Bool)

(assert (=> start!124882 (=> (not res!980662) (not e!816081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124882 (= res!980662 (validMask!0 mask!2687))))

(assert (=> start!124882 e!816081))

(assert (=> start!124882 true))

(declare-fun array_inv!36352 (array!98247) Bool)

(assert (=> start!124882 (array_inv!36352 a!2862)))

(declare-fun b!1449086 () Bool)

(declare-fun e!816078 () Bool)

(declare-fun e!816082 () Bool)

(assert (=> b!1449086 (= e!816078 e!816082)))

(declare-fun res!980674 () Bool)

(assert (=> b!1449086 (=> (not res!980674) (not e!816082))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98247 (_ BitVec 32)) SeekEntryResult!11682)

(assert (=> b!1449086 (= res!980674 (= lt!635740 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47407 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun e!816080 () Bool)

(declare-fun lt!635739 () (_ BitVec 64))

(declare-fun lt!635741 () array!98247)

(declare-fun lt!635742 () SeekEntryResult!11682)

(declare-fun b!1449087 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98247 (_ BitVec 32)) SeekEntryResult!11682)

(assert (=> b!1449087 (= e!816080 (= lt!635742 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635739 lt!635741 mask!2687)))))

(declare-fun b!1449088 () Bool)

(declare-fun res!980663 () Bool)

(assert (=> b!1449088 (=> (not res!980663) (not e!816079))))

(assert (=> b!1449088 (= res!980663 e!816080)))

(declare-fun c!133724 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1449088 (= c!133724 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1449089 () Bool)

(assert (=> b!1449089 (= e!816077 e!816078)))

(declare-fun res!980668 () Bool)

(assert (=> b!1449089 (=> res!980668 e!816078)))

(assert (=> b!1449089 (= res!980668 (or (and (= (select (arr!47407 a!2862) index!646) (select (store (arr!47407 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47407 a!2862) index!646) (select (arr!47407 a!2862) j!93))) (not (= (select (arr!47407 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1449090 () Bool)

(assert (=> b!1449090 (= e!816080 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635739 lt!635741 mask!2687) (seekEntryOrOpen!0 lt!635739 lt!635741 mask!2687)))))

(declare-fun b!1449091 () Bool)

(declare-fun res!980660 () Bool)

(assert (=> b!1449091 (=> (not res!980660) (not e!816081))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1449091 (= res!980660 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47958 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47958 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47958 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1449092 () Bool)

(declare-fun e!816085 () Bool)

(declare-fun e!816086 () Bool)

(assert (=> b!1449092 (= e!816085 e!816086)))

(declare-fun res!980669 () Bool)

(assert (=> b!1449092 (=> (not res!980669) (not e!816086))))

(declare-fun lt!635738 () SeekEntryResult!11682)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1449092 (= res!980669 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47407 a!2862) j!93) mask!2687) (select (arr!47407 a!2862) j!93) a!2862 mask!2687) lt!635738))))

(assert (=> b!1449092 (= lt!635738 (Intermediate!11682 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1449093 () Bool)

(declare-fun res!980665 () Bool)

(assert (=> b!1449093 (=> (not res!980665) (not e!816081))))

(assert (=> b!1449093 (= res!980665 (validKeyInArray!0 (select (arr!47407 a!2862) i!1006)))))

(declare-fun b!1449094 () Bool)

(assert (=> b!1449094 (= e!816082 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1449095 () Bool)

(declare-fun res!980675 () Bool)

(assert (=> b!1449095 (=> (not res!980675) (not e!816086))))

(assert (=> b!1449095 (= res!980675 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47407 a!2862) j!93) a!2862 mask!2687) lt!635738))))

(declare-fun b!1449096 () Bool)

(assert (=> b!1449096 (= e!816081 e!816085)))

(declare-fun res!980672 () Bool)

(assert (=> b!1449096 (=> (not res!980672) (not e!816085))))

(assert (=> b!1449096 (= res!980672 (= (select (store (arr!47407 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1449096 (= lt!635741 (array!98248 (store (arr!47407 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47958 a!2862)))))

(declare-fun b!1449097 () Bool)

(declare-fun res!980664 () Bool)

(assert (=> b!1449097 (=> (not res!980664) (not e!816079))))

(assert (=> b!1449097 (= res!980664 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1449098 () Bool)

(assert (=> b!1449098 (= e!816083 true)))

(declare-fun lt!635737 () SeekEntryResult!11682)

(assert (=> b!1449098 (= lt!635737 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47407 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1449099 () Bool)

(declare-fun res!980676 () Bool)

(assert (=> b!1449099 (=> (not res!980676) (not e!816081))))

(declare-datatypes ((List!34088 0))(
  ( (Nil!34085) (Cons!34084 (h!35434 (_ BitVec 64)) (t!48789 List!34088)) )
))
(declare-fun arrayNoDuplicates!0 (array!98247 (_ BitVec 32) List!34088) Bool)

(assert (=> b!1449099 (= res!980676 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34085))))

(declare-fun b!1449100 () Bool)

(assert (=> b!1449100 (= e!816086 e!816079)))

(declare-fun res!980673 () Bool)

(assert (=> b!1449100 (=> (not res!980673) (not e!816079))))

(assert (=> b!1449100 (= res!980673 (= lt!635742 (Intermediate!11682 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1449100 (= lt!635742 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635739 mask!2687) lt!635739 lt!635741 mask!2687))))

(assert (=> b!1449100 (= lt!635739 (select (store (arr!47407 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!124882 res!980662) b!1449084))

(assert (= (and b!1449084 res!980667) b!1449093))

(assert (= (and b!1449093 res!980665) b!1449082))

(assert (= (and b!1449082 res!980670) b!1449083))

(assert (= (and b!1449083 res!980671) b!1449099))

(assert (= (and b!1449099 res!980676) b!1449091))

(assert (= (and b!1449091 res!980660) b!1449096))

(assert (= (and b!1449096 res!980672) b!1449092))

(assert (= (and b!1449092 res!980669) b!1449095))

(assert (= (and b!1449095 res!980675) b!1449100))

(assert (= (and b!1449100 res!980673) b!1449088))

(assert (= (and b!1449088 c!133724) b!1449087))

(assert (= (and b!1449088 (not c!133724)) b!1449090))

(assert (= (and b!1449088 res!980663) b!1449097))

(assert (= (and b!1449097 res!980664) b!1449085))

(assert (= (and b!1449085 res!980666) b!1449089))

(assert (= (and b!1449089 (not res!980668)) b!1449086))

(assert (= (and b!1449086 res!980674) b!1449094))

(assert (= (and b!1449085 (not res!980661)) b!1449098))

(declare-fun m!1337865 () Bool)

(assert (=> b!1449096 m!1337865))

(declare-fun m!1337867 () Bool)

(assert (=> b!1449096 m!1337867))

(declare-fun m!1337869 () Bool)

(assert (=> b!1449086 m!1337869))

(assert (=> b!1449086 m!1337869))

(declare-fun m!1337871 () Bool)

(assert (=> b!1449086 m!1337871))

(declare-fun m!1337873 () Bool)

(assert (=> b!1449090 m!1337873))

(declare-fun m!1337875 () Bool)

(assert (=> b!1449090 m!1337875))

(declare-fun m!1337877 () Bool)

(assert (=> start!124882 m!1337877))

(declare-fun m!1337879 () Bool)

(assert (=> start!124882 m!1337879))

(assert (=> b!1449098 m!1337869))

(assert (=> b!1449098 m!1337869))

(declare-fun m!1337881 () Bool)

(assert (=> b!1449098 m!1337881))

(assert (=> b!1449095 m!1337869))

(assert (=> b!1449095 m!1337869))

(declare-fun m!1337883 () Bool)

(assert (=> b!1449095 m!1337883))

(declare-fun m!1337885 () Bool)

(assert (=> b!1449085 m!1337885))

(assert (=> b!1449085 m!1337865))

(declare-fun m!1337887 () Bool)

(assert (=> b!1449085 m!1337887))

(declare-fun m!1337889 () Bool)

(assert (=> b!1449085 m!1337889))

(declare-fun m!1337891 () Bool)

(assert (=> b!1449085 m!1337891))

(assert (=> b!1449085 m!1337869))

(declare-fun m!1337893 () Bool)

(assert (=> b!1449085 m!1337893))

(declare-fun m!1337895 () Bool)

(assert (=> b!1449085 m!1337895))

(assert (=> b!1449085 m!1337869))

(declare-fun m!1337897 () Bool)

(assert (=> b!1449087 m!1337897))

(declare-fun m!1337899 () Bool)

(assert (=> b!1449093 m!1337899))

(assert (=> b!1449093 m!1337899))

(declare-fun m!1337901 () Bool)

(assert (=> b!1449093 m!1337901))

(assert (=> b!1449092 m!1337869))

(assert (=> b!1449092 m!1337869))

(declare-fun m!1337903 () Bool)

(assert (=> b!1449092 m!1337903))

(assert (=> b!1449092 m!1337903))

(assert (=> b!1449092 m!1337869))

(declare-fun m!1337905 () Bool)

(assert (=> b!1449092 m!1337905))

(declare-fun m!1337907 () Bool)

(assert (=> b!1449100 m!1337907))

(assert (=> b!1449100 m!1337907))

(declare-fun m!1337909 () Bool)

(assert (=> b!1449100 m!1337909))

(assert (=> b!1449100 m!1337865))

(declare-fun m!1337911 () Bool)

(assert (=> b!1449100 m!1337911))

(declare-fun m!1337913 () Bool)

(assert (=> b!1449099 m!1337913))

(declare-fun m!1337915 () Bool)

(assert (=> b!1449083 m!1337915))

(assert (=> b!1449082 m!1337869))

(assert (=> b!1449082 m!1337869))

(declare-fun m!1337917 () Bool)

(assert (=> b!1449082 m!1337917))

(assert (=> b!1449089 m!1337891))

(assert (=> b!1449089 m!1337865))

(assert (=> b!1449089 m!1337889))

(assert (=> b!1449089 m!1337869))

(push 1)

