; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129308 () Bool)

(assert start!129308)

(declare-fun b!1517833 () Bool)

(declare-fun res!1037818 () Bool)

(declare-fun e!846825 () Bool)

(assert (=> b!1517833 (=> (not res!1037818) (not e!846825))))

(declare-datatypes ((array!101077 0))(
  ( (array!101078 (arr!48771 (Array (_ BitVec 32) (_ BitVec 64))) (size!49322 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101077)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101077 (_ BitVec 32)) Bool)

(assert (=> b!1517833 (= res!1037818 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517834 () Bool)

(declare-fun res!1037817 () Bool)

(assert (=> b!1517834 (=> (not res!1037817) (not e!846825))))

(declare-datatypes ((List!35434 0))(
  ( (Nil!35431) (Cons!35430 (h!36843 (_ BitVec 64)) (t!50135 List!35434)) )
))
(declare-fun arrayNoDuplicates!0 (array!101077 (_ BitVec 32) List!35434) Bool)

(assert (=> b!1517834 (= res!1037817 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35431))))

(declare-fun e!846827 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun b!1517835 () Bool)

(declare-datatypes ((SeekEntryResult!12963 0))(
  ( (MissingZero!12963 (index!54246 (_ BitVec 32))) (Found!12963 (index!54247 (_ BitVec 32))) (Intermediate!12963 (undefined!13775 Bool) (index!54248 (_ BitVec 32)) (x!135934 (_ BitVec 32))) (Undefined!12963) (MissingVacant!12963 (index!54249 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101077 (_ BitVec 32)) SeekEntryResult!12963)

(assert (=> b!1517835 (= e!846827 (= (seekEntry!0 (select (arr!48771 a!2804) j!70) a!2804 mask!2512) (Found!12963 j!70)))))

(declare-fun b!1517836 () Bool)

(declare-fun res!1037816 () Bool)

(assert (=> b!1517836 (=> (not res!1037816) (not e!846825))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517836 (= res!1037816 (validKeyInArray!0 (select (arr!48771 a!2804) i!961)))))

(declare-fun b!1517837 () Bool)

(declare-fun e!846824 () Bool)

(assert (=> b!1517837 (= e!846825 e!846824)))

(declare-fun res!1037820 () Bool)

(assert (=> b!1517837 (=> (not res!1037820) (not e!846824))))

(declare-fun lt!657912 () SeekEntryResult!12963)

(declare-fun lt!657914 () SeekEntryResult!12963)

(assert (=> b!1517837 (= res!1037820 (= lt!657912 lt!657914))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517837 (= lt!657914 (Intermediate!12963 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101077 (_ BitVec 32)) SeekEntryResult!12963)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517837 (= lt!657912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48771 a!2804) j!70) mask!2512) (select (arr!48771 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517838 () Bool)

(declare-fun e!846823 () Bool)

(declare-fun e!846826 () Bool)

(assert (=> b!1517838 (= e!846823 e!846826)))

(declare-fun res!1037819 () Bool)

(assert (=> b!1517838 (=> res!1037819 e!846826)))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lt!657916 () (_ BitVec 32))

(assert (=> b!1517838 (= res!1037819 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657916 #b00000000000000000000000000000000) (bvsge lt!657916 (size!49322 a!2804))))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517838 (= lt!657916 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517839 () Bool)

(declare-fun res!1037815 () Bool)

(assert (=> b!1517839 (=> (not res!1037815) (not e!846824))))

(assert (=> b!1517839 (= res!1037815 (= lt!657912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48771 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48771 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101078 (store (arr!48771 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49322 a!2804)) mask!2512)))))

(declare-fun b!1517840 () Bool)

(declare-fun res!1037810 () Bool)

(assert (=> b!1517840 (=> (not res!1037810) (not e!846825))))

(assert (=> b!1517840 (= res!1037810 (and (= (size!49322 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49322 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49322 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517841 () Bool)

(declare-fun res!1037814 () Bool)

(assert (=> b!1517841 (=> (not res!1037814) (not e!846825))))

(assert (=> b!1517841 (= res!1037814 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49322 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49322 a!2804))))))

(declare-fun res!1037809 () Bool)

(assert (=> start!129308 (=> (not res!1037809) (not e!846825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129308 (= res!1037809 (validMask!0 mask!2512))))

(assert (=> start!129308 e!846825))

(assert (=> start!129308 true))

(declare-fun array_inv!37716 (array!101077) Bool)

(assert (=> start!129308 (array_inv!37716 a!2804)))

(declare-fun b!1517842 () Bool)

(assert (=> b!1517842 (= e!846826 true)))

(declare-fun lt!657915 () SeekEntryResult!12963)

(assert (=> b!1517842 (= lt!657915 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657916 (select (arr!48771 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517843 () Bool)

(declare-fun res!1037811 () Bool)

(assert (=> b!1517843 (=> (not res!1037811) (not e!846825))))

(assert (=> b!1517843 (= res!1037811 (validKeyInArray!0 (select (arr!48771 a!2804) j!70)))))

(declare-fun b!1517844 () Bool)

(assert (=> b!1517844 (= e!846824 (not e!846823))))

(declare-fun res!1037813 () Bool)

(assert (=> b!1517844 (=> res!1037813 e!846823)))

(assert (=> b!1517844 (= res!1037813 (or (not (= (select (arr!48771 a!2804) j!70) (select (store (arr!48771 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1517844 e!846827))

(declare-fun res!1037812 () Bool)

(assert (=> b!1517844 (=> (not res!1037812) (not e!846827))))

(assert (=> b!1517844 (= res!1037812 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50750 0))(
  ( (Unit!50751) )
))
(declare-fun lt!657913 () Unit!50750)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50750)

(assert (=> b!1517844 (= lt!657913 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517845 () Bool)

(declare-fun res!1037808 () Bool)

(assert (=> b!1517845 (=> (not res!1037808) (not e!846824))))

(assert (=> b!1517845 (= res!1037808 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48771 a!2804) j!70) a!2804 mask!2512) lt!657914))))

(assert (= (and start!129308 res!1037809) b!1517840))

(assert (= (and b!1517840 res!1037810) b!1517836))

(assert (= (and b!1517836 res!1037816) b!1517843))

(assert (= (and b!1517843 res!1037811) b!1517833))

(assert (= (and b!1517833 res!1037818) b!1517834))

(assert (= (and b!1517834 res!1037817) b!1517841))

(assert (= (and b!1517841 res!1037814) b!1517837))

(assert (= (and b!1517837 res!1037820) b!1517845))

(assert (= (and b!1517845 res!1037808) b!1517839))

(assert (= (and b!1517839 res!1037815) b!1517844))

(assert (= (and b!1517844 res!1037812) b!1517835))

(assert (= (and b!1517844 (not res!1037813)) b!1517838))

(assert (= (and b!1517838 (not res!1037819)) b!1517842))

(declare-fun m!1401191 () Bool)

(assert (=> b!1517844 m!1401191))

(declare-fun m!1401193 () Bool)

(assert (=> b!1517844 m!1401193))

(declare-fun m!1401195 () Bool)

(assert (=> b!1517844 m!1401195))

(declare-fun m!1401197 () Bool)

(assert (=> b!1517844 m!1401197))

(declare-fun m!1401199 () Bool)

(assert (=> b!1517844 m!1401199))

(assert (=> b!1517837 m!1401191))

(assert (=> b!1517837 m!1401191))

(declare-fun m!1401201 () Bool)

(assert (=> b!1517837 m!1401201))

(assert (=> b!1517837 m!1401201))

(assert (=> b!1517837 m!1401191))

(declare-fun m!1401203 () Bool)

(assert (=> b!1517837 m!1401203))

(assert (=> b!1517835 m!1401191))

(assert (=> b!1517835 m!1401191))

(declare-fun m!1401205 () Bool)

(assert (=> b!1517835 m!1401205))

(declare-fun m!1401207 () Bool)

(assert (=> b!1517833 m!1401207))

(declare-fun m!1401209 () Bool)

(assert (=> b!1517836 m!1401209))

(assert (=> b!1517836 m!1401209))

(declare-fun m!1401211 () Bool)

(assert (=> b!1517836 m!1401211))

(declare-fun m!1401213 () Bool)

(assert (=> b!1517838 m!1401213))

(assert (=> b!1517842 m!1401191))

(assert (=> b!1517842 m!1401191))

(declare-fun m!1401215 () Bool)

(assert (=> b!1517842 m!1401215))

(assert (=> b!1517839 m!1401195))

(assert (=> b!1517839 m!1401197))

(assert (=> b!1517839 m!1401197))

(declare-fun m!1401217 () Bool)

(assert (=> b!1517839 m!1401217))

(assert (=> b!1517839 m!1401217))

(assert (=> b!1517839 m!1401197))

(declare-fun m!1401219 () Bool)

(assert (=> b!1517839 m!1401219))

(assert (=> b!1517845 m!1401191))

(assert (=> b!1517845 m!1401191))

(declare-fun m!1401221 () Bool)

(assert (=> b!1517845 m!1401221))

(declare-fun m!1401223 () Bool)

(assert (=> start!129308 m!1401223))

(declare-fun m!1401225 () Bool)

(assert (=> start!129308 m!1401225))

(assert (=> b!1517843 m!1401191))

(assert (=> b!1517843 m!1401191))

(declare-fun m!1401227 () Bool)

(assert (=> b!1517843 m!1401227))

(declare-fun m!1401229 () Bool)

(assert (=> b!1517834 m!1401229))

(push 1)

(assert (not b!1517833))

(assert (not b!1517839))

(assert (not start!129308))

(assert (not b!1517843))

(assert (not b!1517834))

(assert (not b!1517845))

(assert (not b!1517836))

