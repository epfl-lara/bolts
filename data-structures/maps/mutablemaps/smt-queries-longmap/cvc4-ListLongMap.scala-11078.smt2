; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129350 () Bool)

(assert start!129350)

(declare-fun b!1518669 () Bool)

(declare-fun e!847220 () Bool)

(declare-fun e!847217 () Bool)

(assert (=> b!1518669 (= e!847220 e!847217)))

(declare-fun res!1038656 () Bool)

(assert (=> b!1518669 (=> (not res!1038656) (not e!847217))))

(declare-datatypes ((array!101119 0))(
  ( (array!101120 (arr!48792 (Array (_ BitVec 32) (_ BitVec 64))) (size!49343 (_ BitVec 32))) )
))
(declare-fun lt!658265 () array!101119)

(declare-fun lt!658264 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12984 0))(
  ( (MissingZero!12984 (index!54330 (_ BitVec 32))) (Found!12984 (index!54331 (_ BitVec 32))) (Intermediate!12984 (undefined!13796 Bool) (index!54332 (_ BitVec 32)) (x!136011 (_ BitVec 32))) (Undefined!12984) (MissingVacant!12984 (index!54333 (_ BitVec 32))) )
))
(declare-fun lt!658266 () SeekEntryResult!12984)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101119 (_ BitVec 32)) SeekEntryResult!12984)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518669 (= res!1038656 (= lt!658266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!658264 mask!2512) lt!658264 lt!658265 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!101119)

(assert (=> b!1518669 (= lt!658264 (select (store (arr!48792 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1518669 (= lt!658265 (array!101120 (store (arr!48792 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49343 a!2804)))))

(declare-fun b!1518670 () Bool)

(declare-fun e!847223 () Bool)

(declare-fun e!847218 () Bool)

(assert (=> b!1518670 (= e!847223 e!847218)))

(declare-fun res!1038655 () Bool)

(assert (=> b!1518670 (=> res!1038655 e!847218)))

(declare-fun lt!658262 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1518670 (= res!1038655 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!658262 #b00000000000000000000000000000000) (bvsge lt!658262 (size!49343 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1518670 (= lt!658262 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1518671 () Bool)

(assert (=> b!1518671 (= e!847218 (bvsge mask!2512 #b00000000000000000000000000000000))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101119 (_ BitVec 32)) SeekEntryResult!12984)

(assert (=> b!1518671 (= (seekEntryOrOpen!0 (select (arr!48792 a!2804) j!70) a!2804 mask!2512) (seekEntryOrOpen!0 lt!658264 lt!658265 mask!2512))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((Unit!50792 0))(
  ( (Unit!50793) )
))
(declare-fun lt!658261 () Unit!50792)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 (array!101119 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50792)

(assert (=> b!1518671 (= lt!658261 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1!0 a!2804 i!961 j!70 (bvadd #b00000000000000000000000000000001 x!534) lt!658262 resX!21 resIndex!21 mask!2512))))

(declare-fun b!1518672 () Bool)

(declare-fun res!1038649 () Bool)

(declare-fun e!847221 () Bool)

(assert (=> b!1518672 (=> (not res!1038649) (not e!847221))))

(assert (=> b!1518672 (= res!1038649 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49343 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49343 a!2804))))))

(declare-fun b!1518673 () Bool)

(declare-fun res!1038653 () Bool)

(assert (=> b!1518673 (=> (not res!1038653) (not e!847220))))

(declare-fun lt!658267 () SeekEntryResult!12984)

(assert (=> b!1518673 (= res!1038653 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48792 a!2804) j!70) a!2804 mask!2512) lt!658267))))

(declare-fun b!1518674 () Bool)

(assert (=> b!1518674 (= e!847221 e!847220)))

(declare-fun res!1038647 () Bool)

(assert (=> b!1518674 (=> (not res!1038647) (not e!847220))))

(assert (=> b!1518674 (= res!1038647 (= lt!658266 lt!658267))))

(assert (=> b!1518674 (= lt!658267 (Intermediate!12984 false resIndex!21 resX!21))))

(assert (=> b!1518674 (= lt!658266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48792 a!2804) j!70) mask!2512) (select (arr!48792 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1518675 () Bool)

(declare-fun res!1038654 () Bool)

(assert (=> b!1518675 (=> (not res!1038654) (not e!847221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101119 (_ BitVec 32)) Bool)

(assert (=> b!1518675 (= res!1038654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1518676 () Bool)

(declare-fun res!1038645 () Bool)

(assert (=> b!1518676 (=> (not res!1038645) (not e!847221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1518676 (= res!1038645 (validKeyInArray!0 (select (arr!48792 a!2804) i!961)))))

(declare-fun b!1518677 () Bool)

(declare-fun res!1038644 () Bool)

(assert (=> b!1518677 (=> (not res!1038644) (not e!847221))))

(assert (=> b!1518677 (= res!1038644 (validKeyInArray!0 (select (arr!48792 a!2804) j!70)))))

(declare-fun res!1038657 () Bool)

(assert (=> start!129350 (=> (not res!1038657) (not e!847221))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129350 (= res!1038657 (validMask!0 mask!2512))))

(assert (=> start!129350 e!847221))

(assert (=> start!129350 true))

(declare-fun array_inv!37737 (array!101119) Bool)

(assert (=> start!129350 (array_inv!37737 a!2804)))

(declare-fun b!1518678 () Bool)

(declare-fun res!1038652 () Bool)

(assert (=> b!1518678 (=> (not res!1038652) (not e!847221))))

(declare-datatypes ((List!35455 0))(
  ( (Nil!35452) (Cons!35451 (h!36864 (_ BitVec 64)) (t!50156 List!35455)) )
))
(declare-fun arrayNoDuplicates!0 (array!101119 (_ BitVec 32) List!35455) Bool)

(assert (=> b!1518678 (= res!1038652 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35452))))

(declare-fun e!847219 () Bool)

(declare-fun b!1518679 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101119 (_ BitVec 32)) SeekEntryResult!12984)

(assert (=> b!1518679 (= e!847219 (= (seekEntry!0 (select (arr!48792 a!2804) j!70) a!2804 mask!2512) (Found!12984 j!70)))))

(declare-fun b!1518680 () Bool)

(assert (=> b!1518680 (= e!847217 (not e!847223))))

(declare-fun res!1038650 () Bool)

(assert (=> b!1518680 (=> res!1038650 e!847223)))

(assert (=> b!1518680 (= res!1038650 (or (not (= (select (arr!48792 a!2804) j!70) lt!658264)) (= x!534 resX!21)))))

(assert (=> b!1518680 e!847219))

(declare-fun res!1038646 () Bool)

(assert (=> b!1518680 (=> (not res!1038646) (not e!847219))))

(assert (=> b!1518680 (= res!1038646 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!658263 () Unit!50792)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101119 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50792)

(assert (=> b!1518680 (= lt!658263 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1518681 () Bool)

(declare-fun res!1038651 () Bool)

(assert (=> b!1518681 (=> res!1038651 e!847218)))

(assert (=> b!1518681 (= res!1038651 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!658262 (select (arr!48792 a!2804) j!70) a!2804 mask!2512) lt!658267)))))

(declare-fun b!1518682 () Bool)

(declare-fun res!1038648 () Bool)

(assert (=> b!1518682 (=> (not res!1038648) (not e!847221))))

(assert (=> b!1518682 (= res!1038648 (and (= (size!49343 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49343 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49343 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!129350 res!1038657) b!1518682))

(assert (= (and b!1518682 res!1038648) b!1518676))

(assert (= (and b!1518676 res!1038645) b!1518677))

(assert (= (and b!1518677 res!1038644) b!1518675))

(assert (= (and b!1518675 res!1038654) b!1518678))

(assert (= (and b!1518678 res!1038652) b!1518672))

(assert (= (and b!1518672 res!1038649) b!1518674))

(assert (= (and b!1518674 res!1038647) b!1518673))

(assert (= (and b!1518673 res!1038653) b!1518669))

(assert (= (and b!1518669 res!1038656) b!1518680))

(assert (= (and b!1518680 res!1038646) b!1518679))

(assert (= (and b!1518680 (not res!1038650)) b!1518670))

(assert (= (and b!1518670 (not res!1038655)) b!1518681))

(assert (= (and b!1518681 (not res!1038651)) b!1518671))

(declare-fun m!1402061 () Bool)

(assert (=> b!1518675 m!1402061))

(declare-fun m!1402063 () Bool)

(assert (=> b!1518673 m!1402063))

(assert (=> b!1518673 m!1402063))

(declare-fun m!1402065 () Bool)

(assert (=> b!1518673 m!1402065))

(assert (=> b!1518681 m!1402063))

(assert (=> b!1518681 m!1402063))

(declare-fun m!1402067 () Bool)

(assert (=> b!1518681 m!1402067))

(assert (=> b!1518680 m!1402063))

(declare-fun m!1402069 () Bool)

(assert (=> b!1518680 m!1402069))

(declare-fun m!1402071 () Bool)

(assert (=> b!1518680 m!1402071))

(declare-fun m!1402073 () Bool)

(assert (=> b!1518669 m!1402073))

(assert (=> b!1518669 m!1402073))

(declare-fun m!1402075 () Bool)

(assert (=> b!1518669 m!1402075))

(declare-fun m!1402077 () Bool)

(assert (=> b!1518669 m!1402077))

(declare-fun m!1402079 () Bool)

(assert (=> b!1518669 m!1402079))

(declare-fun m!1402081 () Bool)

(assert (=> b!1518678 m!1402081))

(assert (=> b!1518677 m!1402063))

(assert (=> b!1518677 m!1402063))

(declare-fun m!1402083 () Bool)

(assert (=> b!1518677 m!1402083))

(declare-fun m!1402085 () Bool)

(assert (=> start!129350 m!1402085))

(declare-fun m!1402087 () Bool)

(assert (=> start!129350 m!1402087))

(assert (=> b!1518679 m!1402063))

(assert (=> b!1518679 m!1402063))

(declare-fun m!1402089 () Bool)

(assert (=> b!1518679 m!1402089))

(assert (=> b!1518671 m!1402063))

(assert (=> b!1518671 m!1402063))

(declare-fun m!1402091 () Bool)

(assert (=> b!1518671 m!1402091))

(declare-fun m!1402093 () Bool)

(assert (=> b!1518671 m!1402093))

(declare-fun m!1402095 () Bool)

(assert (=> b!1518671 m!1402095))

(assert (=> b!1518674 m!1402063))

(assert (=> b!1518674 m!1402063))

(declare-fun m!1402097 () Bool)

(assert (=> b!1518674 m!1402097))

(assert (=> b!1518674 m!1402097))

(assert (=> b!1518674 m!1402063))

(declare-fun m!1402099 () Bool)

(assert (=> b!1518674 m!1402099))

(declare-fun m!1402101 () Bool)

(assert (=> b!1518670 m!1402101))

(declare-fun m!1402103 () Bool)

(assert (=> b!1518676 m!1402103))

(assert (=> b!1518676 m!1402103))

(declare-fun m!1402105 () Bool)

(assert (=> b!1518676 m!1402105))

(push 1)

(assert (not b!1518679))

(assert (not b!1518676))

(assert (not b!1518673))

(assert (not b!1518669))

(assert (not start!129350))

(assert (not b!1518680))

(assert (not b!1518678))

(assert (not b!1518675))

(assert (not b!1518681))

(assert (not b!1518671))

(assert (not b!1518670))

(assert (not b!1518674))

(assert (not b!1518677))

(check-sat)

(pop 1)

