; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129300 () Bool)

(assert start!129300)

(declare-fun b!1517677 () Bool)

(declare-fun res!1037654 () Bool)

(declare-fun e!846752 () Bool)

(assert (=> b!1517677 (=> (not res!1037654) (not e!846752))))

(declare-datatypes ((array!101069 0))(
  ( (array!101070 (arr!48767 (Array (_ BitVec 32) (_ BitVec 64))) (size!49318 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101069)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101069 (_ BitVec 32)) Bool)

(assert (=> b!1517677 (= res!1037654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517678 () Bool)

(declare-fun res!1037656 () Bool)

(assert (=> b!1517678 (=> (not res!1037656) (not e!846752))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517678 (= res!1037656 (validKeyInArray!0 (select (arr!48767 a!2804) i!961)))))

(declare-fun b!1517679 () Bool)

(declare-fun res!1037655 () Bool)

(declare-fun e!846750 () Bool)

(assert (=> b!1517679 (=> (not res!1037655) (not e!846750))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12959 0))(
  ( (MissingZero!12959 (index!54230 (_ BitVec 32))) (Found!12959 (index!54231 (_ BitVec 32))) (Intermediate!12959 (undefined!13771 Bool) (index!54232 (_ BitVec 32)) (x!135922 (_ BitVec 32))) (Undefined!12959) (MissingVacant!12959 (index!54233 (_ BitVec 32))) )
))
(declare-fun lt!657852 () SeekEntryResult!12959)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101069 (_ BitVec 32)) SeekEntryResult!12959)

(assert (=> b!1517679 (= res!1037655 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48767 a!2804) j!70) a!2804 mask!2512) lt!657852))))

(declare-fun b!1517680 () Bool)

(declare-fun e!846754 () Bool)

(assert (=> b!1517680 (= e!846754 true)))

(declare-fun lt!657853 () SeekEntryResult!12959)

(declare-fun lt!657855 () (_ BitVec 32))

(assert (=> b!1517680 (= lt!657853 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657855 (select (arr!48767 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517681 () Bool)

(declare-fun res!1037657 () Bool)

(assert (=> b!1517681 (=> (not res!1037657) (not e!846752))))

(assert (=> b!1517681 (= res!1037657 (and (= (size!49318 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49318 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49318 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517682 () Bool)

(declare-fun e!846755 () Bool)

(assert (=> b!1517682 (= e!846750 (not e!846755))))

(declare-fun res!1037664 () Bool)

(assert (=> b!1517682 (=> res!1037664 e!846755)))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517682 (= res!1037664 (or (not (= (select (arr!48767 a!2804) j!70) (select (store (arr!48767 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846751 () Bool)

(assert (=> b!1517682 e!846751))

(declare-fun res!1037663 () Bool)

(assert (=> b!1517682 (=> (not res!1037663) (not e!846751))))

(assert (=> b!1517682 (= res!1037663 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50742 0))(
  ( (Unit!50743) )
))
(declare-fun lt!657854 () Unit!50742)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50742)

(assert (=> b!1517682 (= lt!657854 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517683 () Bool)

(declare-fun res!1037662 () Bool)

(assert (=> b!1517683 (=> (not res!1037662) (not e!846750))))

(declare-fun lt!657856 () SeekEntryResult!12959)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517683 (= res!1037662 (= lt!657856 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48767 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48767 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101070 (store (arr!48767 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49318 a!2804)) mask!2512)))))

(declare-fun res!1037652 () Bool)

(assert (=> start!129300 (=> (not res!1037652) (not e!846752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129300 (= res!1037652 (validMask!0 mask!2512))))

(assert (=> start!129300 e!846752))

(assert (=> start!129300 true))

(declare-fun array_inv!37712 (array!101069) Bool)

(assert (=> start!129300 (array_inv!37712 a!2804)))

(declare-fun b!1517684 () Bool)

(assert (=> b!1517684 (= e!846755 e!846754)))

(declare-fun res!1037660 () Bool)

(assert (=> b!1517684 (=> res!1037660 e!846754)))

(assert (=> b!1517684 (= res!1037660 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657855 #b00000000000000000000000000000000) (bvsge lt!657855 (size!49318 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517684 (= lt!657855 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517685 () Bool)

(declare-fun res!1037661 () Bool)

(assert (=> b!1517685 (=> (not res!1037661) (not e!846752))))

(declare-datatypes ((List!35430 0))(
  ( (Nil!35427) (Cons!35426 (h!36839 (_ BitVec 64)) (t!50131 List!35430)) )
))
(declare-fun arrayNoDuplicates!0 (array!101069 (_ BitVec 32) List!35430) Bool)

(assert (=> b!1517685 (= res!1037661 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35427))))

(declare-fun b!1517686 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101069 (_ BitVec 32)) SeekEntryResult!12959)

(assert (=> b!1517686 (= e!846751 (= (seekEntry!0 (select (arr!48767 a!2804) j!70) a!2804 mask!2512) (Found!12959 j!70)))))

(declare-fun b!1517687 () Bool)

(declare-fun res!1037659 () Bool)

(assert (=> b!1517687 (=> (not res!1037659) (not e!846752))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517687 (= res!1037659 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49318 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49318 a!2804))))))

(declare-fun b!1517688 () Bool)

(assert (=> b!1517688 (= e!846752 e!846750)))

(declare-fun res!1037658 () Bool)

(assert (=> b!1517688 (=> (not res!1037658) (not e!846750))))

(assert (=> b!1517688 (= res!1037658 (= lt!657856 lt!657852))))

(assert (=> b!1517688 (= lt!657852 (Intermediate!12959 false resIndex!21 resX!21))))

(assert (=> b!1517688 (= lt!657856 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48767 a!2804) j!70) mask!2512) (select (arr!48767 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517689 () Bool)

(declare-fun res!1037653 () Bool)

(assert (=> b!1517689 (=> (not res!1037653) (not e!846752))))

(assert (=> b!1517689 (= res!1037653 (validKeyInArray!0 (select (arr!48767 a!2804) j!70)))))

(assert (= (and start!129300 res!1037652) b!1517681))

(assert (= (and b!1517681 res!1037657) b!1517678))

(assert (= (and b!1517678 res!1037656) b!1517689))

(assert (= (and b!1517689 res!1037653) b!1517677))

(assert (= (and b!1517677 res!1037654) b!1517685))

(assert (= (and b!1517685 res!1037661) b!1517687))

(assert (= (and b!1517687 res!1037659) b!1517688))

(assert (= (and b!1517688 res!1037658) b!1517679))

(assert (= (and b!1517679 res!1037655) b!1517683))

(assert (= (and b!1517683 res!1037662) b!1517682))

(assert (= (and b!1517682 res!1037663) b!1517686))

(assert (= (and b!1517682 (not res!1037664)) b!1517684))

(assert (= (and b!1517684 (not res!1037660)) b!1517680))

(declare-fun m!1401031 () Bool)

(assert (=> b!1517680 m!1401031))

(assert (=> b!1517680 m!1401031))

(declare-fun m!1401033 () Bool)

(assert (=> b!1517680 m!1401033))

(assert (=> b!1517686 m!1401031))

(assert (=> b!1517686 m!1401031))

(declare-fun m!1401035 () Bool)

(assert (=> b!1517686 m!1401035))

(declare-fun m!1401037 () Bool)

(assert (=> b!1517677 m!1401037))

(declare-fun m!1401039 () Bool)

(assert (=> b!1517678 m!1401039))

(assert (=> b!1517678 m!1401039))

(declare-fun m!1401041 () Bool)

(assert (=> b!1517678 m!1401041))

(declare-fun m!1401043 () Bool)

(assert (=> start!129300 m!1401043))

(declare-fun m!1401045 () Bool)

(assert (=> start!129300 m!1401045))

(assert (=> b!1517689 m!1401031))

(assert (=> b!1517689 m!1401031))

(declare-fun m!1401047 () Bool)

(assert (=> b!1517689 m!1401047))

(assert (=> b!1517688 m!1401031))

(assert (=> b!1517688 m!1401031))

(declare-fun m!1401049 () Bool)

(assert (=> b!1517688 m!1401049))

(assert (=> b!1517688 m!1401049))

(assert (=> b!1517688 m!1401031))

(declare-fun m!1401051 () Bool)

(assert (=> b!1517688 m!1401051))

(assert (=> b!1517679 m!1401031))

(assert (=> b!1517679 m!1401031))

(declare-fun m!1401053 () Bool)

(assert (=> b!1517679 m!1401053))

(declare-fun m!1401055 () Bool)

(assert (=> b!1517685 m!1401055))

(declare-fun m!1401057 () Bool)

(assert (=> b!1517684 m!1401057))

(assert (=> b!1517682 m!1401031))

(declare-fun m!1401059 () Bool)

(assert (=> b!1517682 m!1401059))

(declare-fun m!1401061 () Bool)

(assert (=> b!1517682 m!1401061))

(declare-fun m!1401063 () Bool)

(assert (=> b!1517682 m!1401063))

(declare-fun m!1401065 () Bool)

(assert (=> b!1517682 m!1401065))

(assert (=> b!1517683 m!1401061))

(assert (=> b!1517683 m!1401063))

(assert (=> b!1517683 m!1401063))

(declare-fun m!1401067 () Bool)

(assert (=> b!1517683 m!1401067))

(assert (=> b!1517683 m!1401067))

(assert (=> b!1517683 m!1401063))

(declare-fun m!1401069 () Bool)

(assert (=> b!1517683 m!1401069))

(check-sat (not start!129300) (not b!1517677) (not b!1517683) (not b!1517685) (not b!1517689) (not b!1517686) (not b!1517678) (not b!1517682) (not b!1517688) (not b!1517680) (not b!1517684) (not b!1517679))
(check-sat)
