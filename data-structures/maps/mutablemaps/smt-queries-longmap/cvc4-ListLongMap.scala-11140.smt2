; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130238 () Bool)

(assert start!130238)

(declare-fun b!1528108 () Bool)

(declare-fun res!1045958 () Bool)

(declare-fun e!851729 () Bool)

(assert (=> b!1528108 (=> (not res!1045958) (not e!851729))))

(declare-datatypes ((array!101515 0))(
  ( (array!101516 (arr!48978 (Array (_ BitVec 32) (_ BitVec 64))) (size!49529 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101515)

(declare-datatypes ((List!35641 0))(
  ( (Nil!35638) (Cons!35637 (h!37074 (_ BitVec 64)) (t!50342 List!35641)) )
))
(declare-fun arrayNoDuplicates!0 (array!101515 (_ BitVec 32) List!35641) Bool)

(assert (=> b!1528108 (= res!1045958 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35638))))

(declare-fun b!1528110 () Bool)

(declare-fun e!851727 () Bool)

(declare-fun e!851725 () Bool)

(assert (=> b!1528110 (= e!851727 e!851725)))

(declare-fun res!1045963 () Bool)

(assert (=> b!1528110 (=> res!1045963 e!851725)))

(declare-datatypes ((SeekEntryResult!13164 0))(
  ( (MissingZero!13164 (index!55050 (_ BitVec 32))) (Found!13164 (index!55051 (_ BitVec 32))) (Intermediate!13164 (undefined!13976 Bool) (index!55052 (_ BitVec 32)) (x!136750 (_ BitVec 32))) (Undefined!13164) (MissingVacant!13164 (index!55053 (_ BitVec 32))) )
))
(declare-fun lt!661748 () SeekEntryResult!13164)

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1528110 (= res!1045963 (not (= lt!661748 (Found!13164 j!70))))))

(declare-fun lt!661746 () SeekEntryResult!13164)

(declare-fun lt!661753 () SeekEntryResult!13164)

(assert (=> b!1528110 (= lt!661746 lt!661753)))

(declare-fun lt!661751 () (_ BitVec 64))

(declare-fun lt!661744 () array!101515)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101515 (_ BitVec 32)) SeekEntryResult!13164)

(assert (=> b!1528110 (= lt!661753 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661751 lt!661744 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101515 (_ BitVec 32)) SeekEntryResult!13164)

(assert (=> b!1528110 (= lt!661746 (seekEntryOrOpen!0 lt!661751 lt!661744 mask!2512))))

(declare-fun lt!661747 () SeekEntryResult!13164)

(assert (=> b!1528110 (= lt!661747 lt!661748)))

(assert (=> b!1528110 (= lt!661748 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48978 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1528110 (= lt!661747 (seekEntryOrOpen!0 (select (arr!48978 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528111 () Bool)

(declare-fun res!1045956 () Bool)

(assert (=> b!1528111 (=> (not res!1045956) (not e!851729))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1528111 (= res!1045956 (and (= (size!49529 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49529 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49529 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1528112 () Bool)

(assert (=> b!1528112 (= e!851725 true)))

(assert (=> b!1528112 (= lt!661753 lt!661748)))

(declare-datatypes ((Unit!51068 0))(
  ( (Unit!51069) )
))
(declare-fun lt!661745 () Unit!51068)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!101515 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51068)

(assert (=> b!1528112 (= lt!661745 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1528113 () Bool)

(declare-fun res!1045965 () Bool)

(assert (=> b!1528113 (=> (not res!1045965) (not e!851729))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1528113 (= res!1045965 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49529 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49529 a!2804))))))

(declare-fun b!1528114 () Bool)

(declare-fun e!851726 () Bool)

(declare-fun e!851728 () Bool)

(assert (=> b!1528114 (= e!851726 e!851728)))

(declare-fun res!1045954 () Bool)

(assert (=> b!1528114 (=> (not res!1045954) (not e!851728))))

(declare-fun lt!661750 () SeekEntryResult!13164)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101515 (_ BitVec 32)) SeekEntryResult!13164)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1528114 (= res!1045954 (= lt!661750 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661751 mask!2512) lt!661751 lt!661744 mask!2512)))))

(assert (=> b!1528114 (= lt!661751 (select (store (arr!48978 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1528114 (= lt!661744 (array!101516 (store (arr!48978 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49529 a!2804)))))

(declare-fun b!1528115 () Bool)

(assert (=> b!1528115 (= e!851728 (not e!851727))))

(declare-fun res!1045964 () Bool)

(assert (=> b!1528115 (=> res!1045964 e!851727)))

(assert (=> b!1528115 (= res!1045964 (or (not (= (select (arr!48978 a!2804) j!70) lt!661751)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48978 a!2804) index!487) (select (arr!48978 a!2804) j!70)) (not (= (select (arr!48978 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!851723 () Bool)

(assert (=> b!1528115 e!851723))

(declare-fun res!1045953 () Bool)

(assert (=> b!1528115 (=> (not res!1045953) (not e!851723))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101515 (_ BitVec 32)) Bool)

(assert (=> b!1528115 (= res!1045953 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!661752 () Unit!51068)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101515 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51068)

(assert (=> b!1528115 (= lt!661752 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1528116 () Bool)

(declare-fun res!1045957 () Bool)

(assert (=> b!1528116 (=> (not res!1045957) (not e!851726))))

(declare-fun lt!661749 () SeekEntryResult!13164)

(assert (=> b!1528116 (= res!1045957 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48978 a!2804) j!70) a!2804 mask!2512) lt!661749))))

(declare-fun b!1528117 () Bool)

(declare-fun res!1045961 () Bool)

(assert (=> b!1528117 (=> (not res!1045961) (not e!851729))))

(assert (=> b!1528117 (= res!1045961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1528118 () Bool)

(declare-fun res!1045962 () Bool)

(assert (=> b!1528118 (=> (not res!1045962) (not e!851729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1528118 (= res!1045962 (validKeyInArray!0 (select (arr!48978 a!2804) j!70)))))

(declare-fun b!1528109 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101515 (_ BitVec 32)) SeekEntryResult!13164)

(assert (=> b!1528109 (= e!851723 (= (seekEntry!0 (select (arr!48978 a!2804) j!70) a!2804 mask!2512) (Found!13164 j!70)))))

(declare-fun res!1045960 () Bool)

(assert (=> start!130238 (=> (not res!1045960) (not e!851729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130238 (= res!1045960 (validMask!0 mask!2512))))

(assert (=> start!130238 e!851729))

(assert (=> start!130238 true))

(declare-fun array_inv!37923 (array!101515) Bool)

(assert (=> start!130238 (array_inv!37923 a!2804)))

(declare-fun b!1528119 () Bool)

(assert (=> b!1528119 (= e!851729 e!851726)))

(declare-fun res!1045955 () Bool)

(assert (=> b!1528119 (=> (not res!1045955) (not e!851726))))

(assert (=> b!1528119 (= res!1045955 (= lt!661750 lt!661749))))

(assert (=> b!1528119 (= lt!661749 (Intermediate!13164 false resIndex!21 resX!21))))

(assert (=> b!1528119 (= lt!661750 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48978 a!2804) j!70) mask!2512) (select (arr!48978 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1528120 () Bool)

(declare-fun res!1045959 () Bool)

(assert (=> b!1528120 (=> (not res!1045959) (not e!851729))))

(assert (=> b!1528120 (= res!1045959 (validKeyInArray!0 (select (arr!48978 a!2804) i!961)))))

(assert (= (and start!130238 res!1045960) b!1528111))

(assert (= (and b!1528111 res!1045956) b!1528120))

(assert (= (and b!1528120 res!1045959) b!1528118))

(assert (= (and b!1528118 res!1045962) b!1528117))

(assert (= (and b!1528117 res!1045961) b!1528108))

(assert (= (and b!1528108 res!1045958) b!1528113))

(assert (= (and b!1528113 res!1045965) b!1528119))

(assert (= (and b!1528119 res!1045955) b!1528116))

(assert (= (and b!1528116 res!1045957) b!1528114))

(assert (= (and b!1528114 res!1045954) b!1528115))

(assert (= (and b!1528115 res!1045953) b!1528109))

(assert (= (and b!1528115 (not res!1045964)) b!1528110))

(assert (= (and b!1528110 (not res!1045963)) b!1528112))

(declare-fun m!1410945 () Bool)

(assert (=> b!1528119 m!1410945))

(assert (=> b!1528119 m!1410945))

(declare-fun m!1410947 () Bool)

(assert (=> b!1528119 m!1410947))

(assert (=> b!1528119 m!1410947))

(assert (=> b!1528119 m!1410945))

(declare-fun m!1410949 () Bool)

(assert (=> b!1528119 m!1410949))

(assert (=> b!1528109 m!1410945))

(assert (=> b!1528109 m!1410945))

(declare-fun m!1410951 () Bool)

(assert (=> b!1528109 m!1410951))

(declare-fun m!1410953 () Bool)

(assert (=> start!130238 m!1410953))

(declare-fun m!1410955 () Bool)

(assert (=> start!130238 m!1410955))

(declare-fun m!1410957 () Bool)

(assert (=> b!1528114 m!1410957))

(assert (=> b!1528114 m!1410957))

(declare-fun m!1410959 () Bool)

(assert (=> b!1528114 m!1410959))

(declare-fun m!1410961 () Bool)

(assert (=> b!1528114 m!1410961))

(declare-fun m!1410963 () Bool)

(assert (=> b!1528114 m!1410963))

(declare-fun m!1410965 () Bool)

(assert (=> b!1528112 m!1410965))

(assert (=> b!1528115 m!1410945))

(declare-fun m!1410967 () Bool)

(assert (=> b!1528115 m!1410967))

(declare-fun m!1410969 () Bool)

(assert (=> b!1528115 m!1410969))

(declare-fun m!1410971 () Bool)

(assert (=> b!1528115 m!1410971))

(declare-fun m!1410973 () Bool)

(assert (=> b!1528108 m!1410973))

(declare-fun m!1410975 () Bool)

(assert (=> b!1528117 m!1410975))

(assert (=> b!1528110 m!1410945))

(declare-fun m!1410977 () Bool)

(assert (=> b!1528110 m!1410977))

(assert (=> b!1528110 m!1410945))

(declare-fun m!1410979 () Bool)

(assert (=> b!1528110 m!1410979))

(assert (=> b!1528110 m!1410945))

(declare-fun m!1410981 () Bool)

(assert (=> b!1528110 m!1410981))

(declare-fun m!1410983 () Bool)

(assert (=> b!1528110 m!1410983))

(declare-fun m!1410985 () Bool)

(assert (=> b!1528120 m!1410985))

(assert (=> b!1528120 m!1410985))

(declare-fun m!1410987 () Bool)

(assert (=> b!1528120 m!1410987))

(assert (=> b!1528116 m!1410945))

(assert (=> b!1528116 m!1410945))

(declare-fun m!1410989 () Bool)

(assert (=> b!1528116 m!1410989))

(assert (=> b!1528118 m!1410945))

(assert (=> b!1528118 m!1410945))

(declare-fun m!1410991 () Bool)

(assert (=> b!1528118 m!1410991))

(push 1)

