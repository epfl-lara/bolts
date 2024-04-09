; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129256 () Bool)

(assert start!129256)

(declare-fun b!1516819 () Bool)

(declare-fun res!1036794 () Bool)

(declare-fun e!846358 () Bool)

(assert (=> b!1516819 (=> (not res!1036794) (not e!846358))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101025 0))(
  ( (array!101026 (arr!48745 (Array (_ BitVec 32) (_ BitVec 64))) (size!49296 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101025)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516819 (= res!1036794 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49296 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49296 a!2804))))))

(declare-fun b!1516820 () Bool)

(declare-fun res!1036802 () Bool)

(declare-fun e!846359 () Bool)

(assert (=> b!1516820 (=> (not res!1036802) (not e!846359))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12937 0))(
  ( (MissingZero!12937 (index!54142 (_ BitVec 32))) (Found!12937 (index!54143 (_ BitVec 32))) (Intermediate!12937 (undefined!13749 Bool) (index!54144 (_ BitVec 32)) (x!135844 (_ BitVec 32))) (Undefined!12937) (MissingVacant!12937 (index!54145 (_ BitVec 32))) )
))
(declare-fun lt!657526 () SeekEntryResult!12937)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101025 (_ BitVec 32)) SeekEntryResult!12937)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516820 (= res!1036802 (= lt!657526 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48745 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48745 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101026 (store (arr!48745 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49296 a!2804)) mask!2512)))))

(declare-fun res!1036805 () Bool)

(assert (=> start!129256 (=> (not res!1036805) (not e!846358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129256 (= res!1036805 (validMask!0 mask!2512))))

(assert (=> start!129256 e!846358))

(assert (=> start!129256 true))

(declare-fun array_inv!37690 (array!101025) Bool)

(assert (=> start!129256 (array_inv!37690 a!2804)))

(declare-fun b!1516821 () Bool)

(declare-fun res!1036803 () Bool)

(assert (=> b!1516821 (=> (not res!1036803) (not e!846358))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101025 (_ BitVec 32)) Bool)

(assert (=> b!1516821 (= res!1036803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1516822 () Bool)

(declare-fun res!1036804 () Bool)

(assert (=> b!1516822 (=> (not res!1036804) (not e!846358))))

(assert (=> b!1516822 (= res!1036804 (and (= (size!49296 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49296 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49296 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516823 () Bool)

(declare-fun e!846355 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101025 (_ BitVec 32)) SeekEntryResult!12937)

(assert (=> b!1516823 (= e!846355 (= (seekEntry!0 (select (arr!48745 a!2804) j!70) a!2804 mask!2512) (Found!12937 j!70)))))

(declare-fun b!1516824 () Bool)

(declare-fun e!846354 () Bool)

(assert (=> b!1516824 (= e!846359 (not e!846354))))

(declare-fun res!1036801 () Bool)

(assert (=> b!1516824 (=> res!1036801 e!846354)))

(assert (=> b!1516824 (= res!1036801 (or (not (= (select (arr!48745 a!2804) j!70) (select (store (arr!48745 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1516824 e!846355))

(declare-fun res!1036806 () Bool)

(assert (=> b!1516824 (=> (not res!1036806) (not e!846355))))

(assert (=> b!1516824 (= res!1036806 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50698 0))(
  ( (Unit!50699) )
))
(declare-fun lt!657522 () Unit!50698)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101025 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50698)

(assert (=> b!1516824 (= lt!657522 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516825 () Bool)

(declare-fun e!846357 () Bool)

(assert (=> b!1516825 (= e!846354 e!846357)))

(declare-fun res!1036798 () Bool)

(assert (=> b!1516825 (=> res!1036798 e!846357)))

(declare-fun lt!657523 () (_ BitVec 32))

(assert (=> b!1516825 (= res!1036798 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657523 #b00000000000000000000000000000000) (bvsge lt!657523 (size!49296 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516825 (= lt!657523 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1516826 () Bool)

(declare-fun res!1036800 () Bool)

(assert (=> b!1516826 (=> (not res!1036800) (not e!846358))))

(declare-datatypes ((List!35408 0))(
  ( (Nil!35405) (Cons!35404 (h!36817 (_ BitVec 64)) (t!50109 List!35408)) )
))
(declare-fun arrayNoDuplicates!0 (array!101025 (_ BitVec 32) List!35408) Bool)

(assert (=> b!1516826 (= res!1036800 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35405))))

(declare-fun b!1516827 () Bool)

(declare-fun res!1036799 () Bool)

(assert (=> b!1516827 (=> (not res!1036799) (not e!846359))))

(declare-fun lt!657525 () SeekEntryResult!12937)

(assert (=> b!1516827 (= res!1036799 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48745 a!2804) j!70) a!2804 mask!2512) lt!657525))))

(declare-fun b!1516828 () Bool)

(assert (=> b!1516828 (= e!846358 e!846359)))

(declare-fun res!1036797 () Bool)

(assert (=> b!1516828 (=> (not res!1036797) (not e!846359))))

(assert (=> b!1516828 (= res!1036797 (= lt!657526 lt!657525))))

(assert (=> b!1516828 (= lt!657525 (Intermediate!12937 false resIndex!21 resX!21))))

(assert (=> b!1516828 (= lt!657526 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48745 a!2804) j!70) mask!2512) (select (arr!48745 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516829 () Bool)

(assert (=> b!1516829 (= e!846357 true)))

(declare-fun lt!657524 () SeekEntryResult!12937)

(assert (=> b!1516829 (= lt!657524 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657523 (select (arr!48745 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1516830 () Bool)

(declare-fun res!1036796 () Bool)

(assert (=> b!1516830 (=> (not res!1036796) (not e!846358))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516830 (= res!1036796 (validKeyInArray!0 (select (arr!48745 a!2804) j!70)))))

(declare-fun b!1516831 () Bool)

(declare-fun res!1036795 () Bool)

(assert (=> b!1516831 (=> (not res!1036795) (not e!846358))))

(assert (=> b!1516831 (= res!1036795 (validKeyInArray!0 (select (arr!48745 a!2804) i!961)))))

(assert (= (and start!129256 res!1036805) b!1516822))

(assert (= (and b!1516822 res!1036804) b!1516831))

(assert (= (and b!1516831 res!1036795) b!1516830))

(assert (= (and b!1516830 res!1036796) b!1516821))

(assert (= (and b!1516821 res!1036803) b!1516826))

(assert (= (and b!1516826 res!1036800) b!1516819))

(assert (= (and b!1516819 res!1036794) b!1516828))

(assert (= (and b!1516828 res!1036797) b!1516827))

(assert (= (and b!1516827 res!1036799) b!1516820))

(assert (= (and b!1516820 res!1036802) b!1516824))

(assert (= (and b!1516824 res!1036806) b!1516823))

(assert (= (and b!1516824 (not res!1036801)) b!1516825))

(assert (= (and b!1516825 (not res!1036798)) b!1516829))

(declare-fun m!1400151 () Bool)

(assert (=> b!1516831 m!1400151))

(assert (=> b!1516831 m!1400151))

(declare-fun m!1400153 () Bool)

(assert (=> b!1516831 m!1400153))

(declare-fun m!1400155 () Bool)

(assert (=> b!1516826 m!1400155))

(declare-fun m!1400157 () Bool)

(assert (=> b!1516824 m!1400157))

(declare-fun m!1400159 () Bool)

(assert (=> b!1516824 m!1400159))

(declare-fun m!1400161 () Bool)

(assert (=> b!1516824 m!1400161))

(declare-fun m!1400163 () Bool)

(assert (=> b!1516824 m!1400163))

(declare-fun m!1400165 () Bool)

(assert (=> b!1516824 m!1400165))

(assert (=> b!1516828 m!1400157))

(assert (=> b!1516828 m!1400157))

(declare-fun m!1400167 () Bool)

(assert (=> b!1516828 m!1400167))

(assert (=> b!1516828 m!1400167))

(assert (=> b!1516828 m!1400157))

(declare-fun m!1400169 () Bool)

(assert (=> b!1516828 m!1400169))

(declare-fun m!1400171 () Bool)

(assert (=> start!129256 m!1400171))

(declare-fun m!1400173 () Bool)

(assert (=> start!129256 m!1400173))

(declare-fun m!1400175 () Bool)

(assert (=> b!1516821 m!1400175))

(assert (=> b!1516830 m!1400157))

(assert (=> b!1516830 m!1400157))

(declare-fun m!1400177 () Bool)

(assert (=> b!1516830 m!1400177))

(assert (=> b!1516827 m!1400157))

(assert (=> b!1516827 m!1400157))

(declare-fun m!1400179 () Bool)

(assert (=> b!1516827 m!1400179))

(declare-fun m!1400181 () Bool)

(assert (=> b!1516825 m!1400181))

(assert (=> b!1516823 m!1400157))

(assert (=> b!1516823 m!1400157))

(declare-fun m!1400183 () Bool)

(assert (=> b!1516823 m!1400183))

(assert (=> b!1516829 m!1400157))

(assert (=> b!1516829 m!1400157))

(declare-fun m!1400185 () Bool)

(assert (=> b!1516829 m!1400185))

(assert (=> b!1516820 m!1400161))

(assert (=> b!1516820 m!1400163))

(assert (=> b!1516820 m!1400163))

(declare-fun m!1400187 () Bool)

(assert (=> b!1516820 m!1400187))

(assert (=> b!1516820 m!1400187))

(assert (=> b!1516820 m!1400163))

(declare-fun m!1400189 () Bool)

(assert (=> b!1516820 m!1400189))

(push 1)

