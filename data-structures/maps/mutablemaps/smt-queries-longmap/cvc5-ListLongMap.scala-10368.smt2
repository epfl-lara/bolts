; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122062 () Bool)

(assert start!122062)

(declare-fun b!1416235 () Bool)

(declare-fun e!801583 () Bool)

(declare-fun e!801581 () Bool)

(assert (=> b!1416235 (= e!801583 e!801581)))

(declare-fun res!952388 () Bool)

(assert (=> b!1416235 (=> res!952388 e!801581)))

(declare-datatypes ((SeekEntryResult!10993 0))(
  ( (MissingZero!10993 (index!46363 (_ BitVec 32))) (Found!10993 (index!46364 (_ BitVec 32))) (Intermediate!10993 (undefined!11805 Bool) (index!46365 (_ BitVec 32)) (x!127971 (_ BitVec 32))) (Undefined!10993) (MissingVacant!10993 (index!46366 (_ BitVec 32))) )
))
(declare-fun lt!624813 () SeekEntryResult!10993)

(declare-fun lt!624820 () SeekEntryResult!10993)

(assert (=> b!1416235 (= res!952388 (or (= lt!624813 lt!624820) (not (is-Intermediate!10993 lt!624820))))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun lt!624818 () (_ BitVec 64))

(declare-datatypes ((array!96666 0))(
  ( (array!96667 (arr!46660 (Array (_ BitVec 32) (_ BitVec 64))) (size!47211 (_ BitVec 32))) )
))
(declare-fun lt!624819 () array!96666)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96666 (_ BitVec 32)) SeekEntryResult!10993)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416235 (= lt!624820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624818 mask!2840) lt!624818 lt!624819 mask!2840))))

(declare-fun a!2901 () array!96666)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1416235 (= lt!624818 (select (store (arr!46660 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1416235 (= lt!624819 (array!96667 (store (arr!46660 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47211 a!2901)))))

(declare-fun b!1416236 () Bool)

(declare-fun res!952391 () Bool)

(declare-fun e!801584 () Bool)

(assert (=> b!1416236 (=> (not res!952391) (not e!801584))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96666 (_ BitVec 32)) Bool)

(assert (=> b!1416236 (= res!952391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416237 () Bool)

(declare-fun res!952390 () Bool)

(assert (=> b!1416237 (=> (not res!952390) (not e!801584))))

(declare-datatypes ((List!33359 0))(
  ( (Nil!33356) (Cons!33355 (h!34642 (_ BitVec 64)) (t!48060 List!33359)) )
))
(declare-fun arrayNoDuplicates!0 (array!96666 (_ BitVec 32) List!33359) Bool)

(assert (=> b!1416237 (= res!952390 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33356))))

(declare-fun b!1416238 () Bool)

(declare-fun e!801580 () Bool)

(assert (=> b!1416238 (= e!801581 e!801580)))

(declare-fun res!952386 () Bool)

(assert (=> b!1416238 (=> res!952386 e!801580)))

(declare-fun lt!624811 () (_ BitVec 32))

(assert (=> b!1416238 (= res!952386 (or (bvslt (x!127971 lt!624813) #b00000000000000000000000000000000) (bvsgt (x!127971 lt!624813) #b01111111111111111111111111111110) (bvslt (x!127971 lt!624820) #b00000000000000000000000000000000) (bvsgt (x!127971 lt!624820) #b01111111111111111111111111111110) (bvslt lt!624811 #b00000000000000000000000000000000) (bvsge lt!624811 (size!47211 a!2901)) (bvslt (index!46365 lt!624813) #b00000000000000000000000000000000) (bvsge (index!46365 lt!624813) (size!47211 a!2901)) (bvslt (index!46365 lt!624820) #b00000000000000000000000000000000) (bvsge (index!46365 lt!624820) (size!47211 a!2901)) (not (= lt!624813 (Intermediate!10993 false (index!46365 lt!624813) (x!127971 lt!624813)))) (not (= lt!624820 (Intermediate!10993 false (index!46365 lt!624820) (x!127971 lt!624820))))))))

(declare-fun lt!624816 () SeekEntryResult!10993)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96666 (_ BitVec 32)) SeekEntryResult!10993)

(assert (=> b!1416238 (= lt!624816 (seekKeyOrZeroReturnVacant!0 (x!127971 lt!624820) (index!46365 lt!624820) (index!46365 lt!624820) (select (arr!46660 a!2901) j!112) lt!624819 mask!2840))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96666 (_ BitVec 32)) SeekEntryResult!10993)

(assert (=> b!1416238 (= lt!624816 (seekEntryOrOpen!0 lt!624818 lt!624819 mask!2840))))

(assert (=> b!1416238 (and (not (undefined!11805 lt!624820)) (= (index!46365 lt!624820) i!1037) (bvslt (x!127971 lt!624820) (x!127971 lt!624813)) (= (select (store (arr!46660 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46365 lt!624820)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!47910 0))(
  ( (Unit!47911) )
))
(declare-fun lt!624812 () Unit!47910)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96666 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47910)

(assert (=> b!1416238 (= lt!624812 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624811 (x!127971 lt!624813) (index!46365 lt!624813) (x!127971 lt!624820) (index!46365 lt!624820) (undefined!11805 lt!624820) mask!2840))))

(declare-fun res!952387 () Bool)

(assert (=> start!122062 (=> (not res!952387) (not e!801584))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122062 (= res!952387 (validMask!0 mask!2840))))

(assert (=> start!122062 e!801584))

(assert (=> start!122062 true))

(declare-fun array_inv!35605 (array!96666) Bool)

(assert (=> start!122062 (array_inv!35605 a!2901)))

(declare-fun b!1416239 () Bool)

(declare-fun res!952394 () Bool)

(assert (=> b!1416239 (=> (not res!952394) (not e!801584))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416239 (= res!952394 (validKeyInArray!0 (select (arr!46660 a!2901) i!1037)))))

(declare-fun b!1416240 () Bool)

(assert (=> b!1416240 (= e!801584 (not e!801583))))

(declare-fun res!952395 () Bool)

(assert (=> b!1416240 (=> res!952395 e!801583)))

(assert (=> b!1416240 (= res!952395 (or (not (is-Intermediate!10993 lt!624813)) (undefined!11805 lt!624813)))))

(declare-fun lt!624814 () SeekEntryResult!10993)

(assert (=> b!1416240 (= lt!624814 (Found!10993 j!112))))

(assert (=> b!1416240 (= lt!624814 (seekEntryOrOpen!0 (select (arr!46660 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416240 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624817 () Unit!47910)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96666 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47910)

(assert (=> b!1416240 (= lt!624817 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416240 (= lt!624813 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624811 (select (arr!46660 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416240 (= lt!624811 (toIndex!0 (select (arr!46660 a!2901) j!112) mask!2840))))

(declare-fun b!1416241 () Bool)

(assert (=> b!1416241 (= e!801580 true)))

(assert (=> b!1416241 (= lt!624814 lt!624816)))

(declare-fun lt!624815 () Unit!47910)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96666 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47910)

(assert (=> b!1416241 (= lt!624815 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624811 (x!127971 lt!624813) (index!46365 lt!624813) (x!127971 lt!624820) (index!46365 lt!624820) mask!2840))))

(declare-fun b!1416242 () Bool)

(declare-fun res!952392 () Bool)

(assert (=> b!1416242 (=> (not res!952392) (not e!801584))))

(assert (=> b!1416242 (= res!952392 (validKeyInArray!0 (select (arr!46660 a!2901) j!112)))))

(declare-fun b!1416243 () Bool)

(declare-fun res!952393 () Bool)

(assert (=> b!1416243 (=> res!952393 e!801580)))

(assert (=> b!1416243 (= res!952393 (not (= lt!624820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624811 lt!624818 lt!624819 mask!2840))))))

(declare-fun b!1416244 () Bool)

(declare-fun res!952389 () Bool)

(assert (=> b!1416244 (=> (not res!952389) (not e!801584))))

(assert (=> b!1416244 (= res!952389 (and (= (size!47211 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47211 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47211 a!2901)) (not (= i!1037 j!112))))))

(assert (= (and start!122062 res!952387) b!1416244))

(assert (= (and b!1416244 res!952389) b!1416239))

(assert (= (and b!1416239 res!952394) b!1416242))

(assert (= (and b!1416242 res!952392) b!1416236))

(assert (= (and b!1416236 res!952391) b!1416237))

(assert (= (and b!1416237 res!952390) b!1416240))

(assert (= (and b!1416240 (not res!952395)) b!1416235))

(assert (= (and b!1416235 (not res!952388)) b!1416238))

(assert (= (and b!1416238 (not res!952386)) b!1416243))

(assert (= (and b!1416243 (not res!952393)) b!1416241))

(declare-fun m!1306955 () Bool)

(assert (=> b!1416235 m!1306955))

(assert (=> b!1416235 m!1306955))

(declare-fun m!1306957 () Bool)

(assert (=> b!1416235 m!1306957))

(declare-fun m!1306959 () Bool)

(assert (=> b!1416235 m!1306959))

(declare-fun m!1306961 () Bool)

(assert (=> b!1416235 m!1306961))

(declare-fun m!1306963 () Bool)

(assert (=> b!1416237 m!1306963))

(declare-fun m!1306965 () Bool)

(assert (=> b!1416238 m!1306965))

(declare-fun m!1306967 () Bool)

(assert (=> b!1416238 m!1306967))

(assert (=> b!1416238 m!1306965))

(declare-fun m!1306969 () Bool)

(assert (=> b!1416238 m!1306969))

(declare-fun m!1306971 () Bool)

(assert (=> b!1416238 m!1306971))

(declare-fun m!1306973 () Bool)

(assert (=> b!1416238 m!1306973))

(assert (=> b!1416238 m!1306959))

(declare-fun m!1306975 () Bool)

(assert (=> b!1416241 m!1306975))

(declare-fun m!1306977 () Bool)

(assert (=> b!1416239 m!1306977))

(assert (=> b!1416239 m!1306977))

(declare-fun m!1306979 () Bool)

(assert (=> b!1416239 m!1306979))

(declare-fun m!1306981 () Bool)

(assert (=> b!1416236 m!1306981))

(assert (=> b!1416242 m!1306965))

(assert (=> b!1416242 m!1306965))

(declare-fun m!1306983 () Bool)

(assert (=> b!1416242 m!1306983))

(declare-fun m!1306985 () Bool)

(assert (=> b!1416243 m!1306985))

(assert (=> b!1416240 m!1306965))

(declare-fun m!1306987 () Bool)

(assert (=> b!1416240 m!1306987))

(assert (=> b!1416240 m!1306965))

(assert (=> b!1416240 m!1306965))

(declare-fun m!1306989 () Bool)

(assert (=> b!1416240 m!1306989))

(declare-fun m!1306991 () Bool)

(assert (=> b!1416240 m!1306991))

(assert (=> b!1416240 m!1306965))

(declare-fun m!1306993 () Bool)

(assert (=> b!1416240 m!1306993))

(declare-fun m!1306995 () Bool)

(assert (=> b!1416240 m!1306995))

(declare-fun m!1306997 () Bool)

(assert (=> start!122062 m!1306997))

(declare-fun m!1306999 () Bool)

(assert (=> start!122062 m!1306999))

(push 1)

