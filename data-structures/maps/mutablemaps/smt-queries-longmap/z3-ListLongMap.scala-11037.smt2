; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129102 () Bool)

(assert start!129102)

(declare-fun b!1513794 () Bool)

(declare-fun e!844880 () Bool)

(assert (=> b!1513794 (= e!844880 (not true))))

(declare-fun e!844879 () Bool)

(assert (=> b!1513794 e!844879))

(declare-fun res!1033774 () Bool)

(assert (=> b!1513794 (=> (not res!1033774) (not e!844879))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100871 0))(
  ( (array!100872 (arr!48668 (Array (_ BitVec 32) (_ BitVec 64))) (size!49219 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100871)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100871 (_ BitVec 32)) Bool)

(assert (=> b!1513794 (= res!1033774 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50544 0))(
  ( (Unit!50545) )
))
(declare-fun lt!656083 () Unit!50544)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100871 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50544)

(assert (=> b!1513794 (= lt!656083 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513795 () Bool)

(declare-fun res!1033780 () Bool)

(declare-fun e!844875 () Bool)

(assert (=> b!1513795 (=> (not res!1033780) (not e!844875))))

(declare-datatypes ((List!35331 0))(
  ( (Nil!35328) (Cons!35327 (h!36740 (_ BitVec 64)) (t!50032 List!35331)) )
))
(declare-fun arrayNoDuplicates!0 (array!100871 (_ BitVec 32) List!35331) Bool)

(assert (=> b!1513795 (= res!1033780 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35328))))

(declare-fun b!1513796 () Bool)

(declare-fun res!1033778 () Bool)

(assert (=> b!1513796 (=> (not res!1033778) (not e!844879))))

(declare-datatypes ((SeekEntryResult!12860 0))(
  ( (MissingZero!12860 (index!53834 (_ BitVec 32))) (Found!12860 (index!53835 (_ BitVec 32))) (Intermediate!12860 (undefined!13672 Bool) (index!53836 (_ BitVec 32)) (x!135559 (_ BitVec 32))) (Undefined!12860) (MissingVacant!12860 (index!53837 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100871 (_ BitVec 32)) SeekEntryResult!12860)

(assert (=> b!1513796 (= res!1033778 (= (seekEntry!0 (select (arr!48668 a!2804) j!70) a!2804 mask!2512) (Found!12860 j!70)))))

(declare-fun res!1033773 () Bool)

(assert (=> start!129102 (=> (not res!1033773) (not e!844875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129102 (= res!1033773 (validMask!0 mask!2512))))

(assert (=> start!129102 e!844875))

(assert (=> start!129102 true))

(declare-fun array_inv!37613 (array!100871) Bool)

(assert (=> start!129102 (array_inv!37613 a!2804)))

(declare-fun b!1513797 () Bool)

(declare-fun res!1033770 () Bool)

(assert (=> b!1513797 (=> (not res!1033770) (not e!844875))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1513797 (= res!1033770 (and (= (size!49219 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49219 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49219 a!2804)) (not (= i!961 j!70))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!656079 () array!100871)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!656080 () (_ BitVec 64))

(declare-fun b!1513798 () Bool)

(declare-fun e!844878 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100871 (_ BitVec 32)) SeekEntryResult!12860)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100871 (_ BitVec 32)) SeekEntryResult!12860)

(assert (=> b!1513798 (= e!844878 (= (seekEntryOrOpen!0 lt!656080 lt!656079 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656080 lt!656079 mask!2512)))))

(declare-fun b!1513799 () Bool)

(declare-fun e!844877 () Bool)

(assert (=> b!1513799 (= e!844877 e!844878)))

(declare-fun res!1033775 () Bool)

(assert (=> b!1513799 (=> (not res!1033775) (not e!844878))))

(assert (=> b!1513799 (= res!1033775 (= (seekEntryOrOpen!0 (select (arr!48668 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48668 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513800 () Bool)

(declare-fun res!1033772 () Bool)

(assert (=> b!1513800 (=> (not res!1033772) (not e!844875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513800 (= res!1033772 (validKeyInArray!0 (select (arr!48668 a!2804) i!961)))))

(declare-fun b!1513801 () Bool)

(assert (=> b!1513801 (= e!844879 e!844877)))

(declare-fun res!1033781 () Bool)

(assert (=> b!1513801 (=> res!1033781 e!844877)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1513801 (= res!1033781 (or (not (= (select (arr!48668 a!2804) j!70) lt!656080)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48668 a!2804) index!487) (select (arr!48668 a!2804) j!70)) (not (= (select (arr!48668 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513802 () Bool)

(declare-fun res!1033771 () Bool)

(assert (=> b!1513802 (=> (not res!1033771) (not e!844875))))

(assert (=> b!1513802 (= res!1033771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513803 () Bool)

(declare-fun e!844874 () Bool)

(assert (=> b!1513803 (= e!844875 e!844874)))

(declare-fun res!1033782 () Bool)

(assert (=> b!1513803 (=> (not res!1033782) (not e!844874))))

(declare-fun lt!656082 () SeekEntryResult!12860)

(declare-fun lt!656081 () SeekEntryResult!12860)

(assert (=> b!1513803 (= res!1033782 (= lt!656082 lt!656081))))

(assert (=> b!1513803 (= lt!656081 (Intermediate!12860 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100871 (_ BitVec 32)) SeekEntryResult!12860)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513803 (= lt!656082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48668 a!2804) j!70) mask!2512) (select (arr!48668 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513804 () Bool)

(assert (=> b!1513804 (= e!844874 e!844880)))

(declare-fun res!1033777 () Bool)

(assert (=> b!1513804 (=> (not res!1033777) (not e!844880))))

(assert (=> b!1513804 (= res!1033777 (= lt!656082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656080 mask!2512) lt!656080 lt!656079 mask!2512)))))

(assert (=> b!1513804 (= lt!656080 (select (store (arr!48668 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513804 (= lt!656079 (array!100872 (store (arr!48668 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49219 a!2804)))))

(declare-fun b!1513805 () Bool)

(declare-fun res!1033779 () Bool)

(assert (=> b!1513805 (=> (not res!1033779) (not e!844874))))

(assert (=> b!1513805 (= res!1033779 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48668 a!2804) j!70) a!2804 mask!2512) lt!656081))))

(declare-fun b!1513806 () Bool)

(declare-fun res!1033776 () Bool)

(assert (=> b!1513806 (=> (not res!1033776) (not e!844875))))

(assert (=> b!1513806 (= res!1033776 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49219 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49219 a!2804))))))

(declare-fun b!1513807 () Bool)

(declare-fun res!1033769 () Bool)

(assert (=> b!1513807 (=> (not res!1033769) (not e!844875))))

(assert (=> b!1513807 (= res!1033769 (validKeyInArray!0 (select (arr!48668 a!2804) j!70)))))

(assert (= (and start!129102 res!1033773) b!1513797))

(assert (= (and b!1513797 res!1033770) b!1513800))

(assert (= (and b!1513800 res!1033772) b!1513807))

(assert (= (and b!1513807 res!1033769) b!1513802))

(assert (= (and b!1513802 res!1033771) b!1513795))

(assert (= (and b!1513795 res!1033780) b!1513806))

(assert (= (and b!1513806 res!1033776) b!1513803))

(assert (= (and b!1513803 res!1033782) b!1513805))

(assert (= (and b!1513805 res!1033779) b!1513804))

(assert (= (and b!1513804 res!1033777) b!1513794))

(assert (= (and b!1513794 res!1033774) b!1513796))

(assert (= (and b!1513796 res!1033778) b!1513801))

(assert (= (and b!1513801 (not res!1033781)) b!1513799))

(assert (= (and b!1513799 res!1033775) b!1513798))

(declare-fun m!1396747 () Bool)

(assert (=> start!129102 m!1396747))

(declare-fun m!1396749 () Bool)

(assert (=> start!129102 m!1396749))

(declare-fun m!1396751 () Bool)

(assert (=> b!1513802 m!1396751))

(declare-fun m!1396753 () Bool)

(assert (=> b!1513801 m!1396753))

(declare-fun m!1396755 () Bool)

(assert (=> b!1513801 m!1396755))

(declare-fun m!1396757 () Bool)

(assert (=> b!1513800 m!1396757))

(assert (=> b!1513800 m!1396757))

(declare-fun m!1396759 () Bool)

(assert (=> b!1513800 m!1396759))

(declare-fun m!1396761 () Bool)

(assert (=> b!1513794 m!1396761))

(declare-fun m!1396763 () Bool)

(assert (=> b!1513794 m!1396763))

(assert (=> b!1513803 m!1396753))

(assert (=> b!1513803 m!1396753))

(declare-fun m!1396765 () Bool)

(assert (=> b!1513803 m!1396765))

(assert (=> b!1513803 m!1396765))

(assert (=> b!1513803 m!1396753))

(declare-fun m!1396767 () Bool)

(assert (=> b!1513803 m!1396767))

(assert (=> b!1513807 m!1396753))

(assert (=> b!1513807 m!1396753))

(declare-fun m!1396769 () Bool)

(assert (=> b!1513807 m!1396769))

(declare-fun m!1396771 () Bool)

(assert (=> b!1513804 m!1396771))

(assert (=> b!1513804 m!1396771))

(declare-fun m!1396773 () Bool)

(assert (=> b!1513804 m!1396773))

(declare-fun m!1396775 () Bool)

(assert (=> b!1513804 m!1396775))

(declare-fun m!1396777 () Bool)

(assert (=> b!1513804 m!1396777))

(assert (=> b!1513799 m!1396753))

(assert (=> b!1513799 m!1396753))

(declare-fun m!1396779 () Bool)

(assert (=> b!1513799 m!1396779))

(assert (=> b!1513799 m!1396753))

(declare-fun m!1396781 () Bool)

(assert (=> b!1513799 m!1396781))

(declare-fun m!1396783 () Bool)

(assert (=> b!1513795 m!1396783))

(declare-fun m!1396785 () Bool)

(assert (=> b!1513798 m!1396785))

(declare-fun m!1396787 () Bool)

(assert (=> b!1513798 m!1396787))

(assert (=> b!1513796 m!1396753))

(assert (=> b!1513796 m!1396753))

(declare-fun m!1396789 () Bool)

(assert (=> b!1513796 m!1396789))

(assert (=> b!1513805 m!1396753))

(assert (=> b!1513805 m!1396753))

(declare-fun m!1396791 () Bool)

(assert (=> b!1513805 m!1396791))

(check-sat (not b!1513795) (not b!1513800) (not b!1513802) (not b!1513807) (not b!1513804) (not b!1513794) (not b!1513796) (not start!129102) (not b!1513798) (not b!1513803) (not b!1513805) (not b!1513799))
(check-sat)
