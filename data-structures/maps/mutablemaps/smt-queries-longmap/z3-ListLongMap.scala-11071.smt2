; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129306 () Bool)

(assert start!129306)

(declare-fun b!1517794 () Bool)

(declare-fun res!1037778 () Bool)

(declare-fun e!846809 () Bool)

(assert (=> b!1517794 (=> (not res!1037778) (not e!846809))))

(declare-datatypes ((array!101075 0))(
  ( (array!101076 (arr!48770 (Array (_ BitVec 32) (_ BitVec 64))) (size!49321 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101075)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517794 (= res!1037778 (validKeyInArray!0 (select (arr!48770 a!2804) j!70)))))

(declare-fun b!1517795 () Bool)

(declare-fun res!1037772 () Bool)

(assert (=> b!1517795 (=> (not res!1037772) (not e!846809))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101075 (_ BitVec 32)) Bool)

(assert (=> b!1517795 (= res!1037772 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517796 () Bool)

(declare-fun res!1037779 () Bool)

(assert (=> b!1517796 (=> (not res!1037779) (not e!846809))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1517796 (= res!1037779 (validKeyInArray!0 (select (arr!48770 a!2804) i!961)))))

(declare-fun b!1517797 () Bool)

(declare-fun e!846806 () Bool)

(declare-fun e!846805 () Bool)

(assert (=> b!1517797 (= e!846806 (not e!846805))))

(declare-fun res!1037780 () Bool)

(assert (=> b!1517797 (=> res!1037780 e!846805)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1517797 (= res!1037780 (or (not (= (select (arr!48770 a!2804) j!70) (select (store (arr!48770 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846807 () Bool)

(assert (=> b!1517797 e!846807))

(declare-fun res!1037773 () Bool)

(assert (=> b!1517797 (=> (not res!1037773) (not e!846807))))

(assert (=> b!1517797 (= res!1037773 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50748 0))(
  ( (Unit!50749) )
))
(declare-fun lt!657900 () Unit!50748)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50748)

(assert (=> b!1517797 (= lt!657900 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1037777 () Bool)

(assert (=> start!129306 (=> (not res!1037777) (not e!846809))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129306 (= res!1037777 (validMask!0 mask!2512))))

(assert (=> start!129306 e!846809))

(assert (=> start!129306 true))

(declare-fun array_inv!37715 (array!101075) Bool)

(assert (=> start!129306 (array_inv!37715 a!2804)))

(declare-fun b!1517798 () Bool)

(declare-fun res!1037770 () Bool)

(assert (=> b!1517798 (=> (not res!1037770) (not e!846806))))

(declare-datatypes ((SeekEntryResult!12962 0))(
  ( (MissingZero!12962 (index!54242 (_ BitVec 32))) (Found!12962 (index!54243 (_ BitVec 32))) (Intermediate!12962 (undefined!13774 Bool) (index!54244 (_ BitVec 32)) (x!135933 (_ BitVec 32))) (Undefined!12962) (MissingVacant!12962 (index!54245 (_ BitVec 32))) )
))
(declare-fun lt!657898 () SeekEntryResult!12962)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101075 (_ BitVec 32)) SeekEntryResult!12962)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517798 (= res!1037770 (= lt!657898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48770 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48770 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101076 (store (arr!48770 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49321 a!2804)) mask!2512)))))

(declare-fun b!1517799 () Bool)

(declare-fun res!1037776 () Bool)

(assert (=> b!1517799 (=> (not res!1037776) (not e!846806))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun lt!657899 () SeekEntryResult!12962)

(assert (=> b!1517799 (= res!1037776 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48770 a!2804) j!70) a!2804 mask!2512) lt!657899))))

(declare-fun b!1517800 () Bool)

(declare-fun res!1037775 () Bool)

(assert (=> b!1517800 (=> (not res!1037775) (not e!846809))))

(declare-datatypes ((List!35433 0))(
  ( (Nil!35430) (Cons!35429 (h!36842 (_ BitVec 64)) (t!50134 List!35433)) )
))
(declare-fun arrayNoDuplicates!0 (array!101075 (_ BitVec 32) List!35433) Bool)

(assert (=> b!1517800 (= res!1037775 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35430))))

(declare-fun b!1517801 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101075 (_ BitVec 32)) SeekEntryResult!12962)

(assert (=> b!1517801 (= e!846807 (= (seekEntry!0 (select (arr!48770 a!2804) j!70) a!2804 mask!2512) (Found!12962 j!70)))))

(declare-fun b!1517802 () Bool)

(declare-fun res!1037771 () Bool)

(assert (=> b!1517802 (=> (not res!1037771) (not e!846809))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1517802 (= res!1037771 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49321 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49321 a!2804))))))

(declare-fun b!1517803 () Bool)

(declare-fun e!846804 () Bool)

(assert (=> b!1517803 (= e!846804 true)))

(declare-fun lt!657897 () (_ BitVec 32))

(declare-fun lt!657901 () SeekEntryResult!12962)

(assert (=> b!1517803 (= lt!657901 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657897 (select (arr!48770 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517804 () Bool)

(assert (=> b!1517804 (= e!846809 e!846806)))

(declare-fun res!1037781 () Bool)

(assert (=> b!1517804 (=> (not res!1037781) (not e!846806))))

(assert (=> b!1517804 (= res!1037781 (= lt!657898 lt!657899))))

(assert (=> b!1517804 (= lt!657899 (Intermediate!12962 false resIndex!21 resX!21))))

(assert (=> b!1517804 (= lt!657898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48770 a!2804) j!70) mask!2512) (select (arr!48770 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517805 () Bool)

(declare-fun res!1037774 () Bool)

(assert (=> b!1517805 (=> (not res!1037774) (not e!846809))))

(assert (=> b!1517805 (= res!1037774 (and (= (size!49321 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49321 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49321 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517806 () Bool)

(assert (=> b!1517806 (= e!846805 e!846804)))

(declare-fun res!1037769 () Bool)

(assert (=> b!1517806 (=> res!1037769 e!846804)))

(assert (=> b!1517806 (= res!1037769 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657897 #b00000000000000000000000000000000) (bvsge lt!657897 (size!49321 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517806 (= lt!657897 (nextIndex!0 index!487 x!534 mask!2512))))

(assert (= (and start!129306 res!1037777) b!1517805))

(assert (= (and b!1517805 res!1037774) b!1517796))

(assert (= (and b!1517796 res!1037779) b!1517794))

(assert (= (and b!1517794 res!1037778) b!1517795))

(assert (= (and b!1517795 res!1037772) b!1517800))

(assert (= (and b!1517800 res!1037775) b!1517802))

(assert (= (and b!1517802 res!1037771) b!1517804))

(assert (= (and b!1517804 res!1037781) b!1517799))

(assert (= (and b!1517799 res!1037776) b!1517798))

(assert (= (and b!1517798 res!1037770) b!1517797))

(assert (= (and b!1517797 res!1037773) b!1517801))

(assert (= (and b!1517797 (not res!1037780)) b!1517806))

(assert (= (and b!1517806 (not res!1037769)) b!1517803))

(declare-fun m!1401151 () Bool)

(assert (=> b!1517804 m!1401151))

(assert (=> b!1517804 m!1401151))

(declare-fun m!1401153 () Bool)

(assert (=> b!1517804 m!1401153))

(assert (=> b!1517804 m!1401153))

(assert (=> b!1517804 m!1401151))

(declare-fun m!1401155 () Bool)

(assert (=> b!1517804 m!1401155))

(assert (=> b!1517797 m!1401151))

(declare-fun m!1401157 () Bool)

(assert (=> b!1517797 m!1401157))

(declare-fun m!1401159 () Bool)

(assert (=> b!1517797 m!1401159))

(declare-fun m!1401161 () Bool)

(assert (=> b!1517797 m!1401161))

(declare-fun m!1401163 () Bool)

(assert (=> b!1517797 m!1401163))

(assert (=> b!1517801 m!1401151))

(assert (=> b!1517801 m!1401151))

(declare-fun m!1401165 () Bool)

(assert (=> b!1517801 m!1401165))

(assert (=> b!1517803 m!1401151))

(assert (=> b!1517803 m!1401151))

(declare-fun m!1401167 () Bool)

(assert (=> b!1517803 m!1401167))

(assert (=> b!1517799 m!1401151))

(assert (=> b!1517799 m!1401151))

(declare-fun m!1401169 () Bool)

(assert (=> b!1517799 m!1401169))

(declare-fun m!1401171 () Bool)

(assert (=> start!129306 m!1401171))

(declare-fun m!1401173 () Bool)

(assert (=> start!129306 m!1401173))

(declare-fun m!1401175 () Bool)

(assert (=> b!1517796 m!1401175))

(assert (=> b!1517796 m!1401175))

(declare-fun m!1401177 () Bool)

(assert (=> b!1517796 m!1401177))

(declare-fun m!1401179 () Bool)

(assert (=> b!1517800 m!1401179))

(declare-fun m!1401181 () Bool)

(assert (=> b!1517795 m!1401181))

(assert (=> b!1517798 m!1401159))

(assert (=> b!1517798 m!1401161))

(assert (=> b!1517798 m!1401161))

(declare-fun m!1401183 () Bool)

(assert (=> b!1517798 m!1401183))

(assert (=> b!1517798 m!1401183))

(assert (=> b!1517798 m!1401161))

(declare-fun m!1401185 () Bool)

(assert (=> b!1517798 m!1401185))

(assert (=> b!1517794 m!1401151))

(assert (=> b!1517794 m!1401151))

(declare-fun m!1401187 () Bool)

(assert (=> b!1517794 m!1401187))

(declare-fun m!1401189 () Bool)

(assert (=> b!1517806 m!1401189))

(check-sat (not b!1517803) (not start!129306) (not b!1517801) (not b!1517799) (not b!1517804) (not b!1517794) (not b!1517797) (not b!1517795) (not b!1517800) (not b!1517806) (not b!1517798) (not b!1517796))
(check-sat)
