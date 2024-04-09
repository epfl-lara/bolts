; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128908 () Bool)

(assert start!128908)

(declare-fun b!1510173 () Bool)

(declare-fun e!843381 () Bool)

(declare-fun e!843382 () Bool)

(assert (=> b!1510173 (= e!843381 e!843382)))

(declare-fun res!1030151 () Bool)

(assert (=> b!1510173 (=> (not res!1030151) (not e!843382))))

(declare-datatypes ((SeekEntryResult!12763 0))(
  ( (MissingZero!12763 (index!53446 (_ BitVec 32))) (Found!12763 (index!53447 (_ BitVec 32))) (Intermediate!12763 (undefined!13575 Bool) (index!53448 (_ BitVec 32)) (x!135206 (_ BitVec 32))) (Undefined!12763) (MissingVacant!12763 (index!53449 (_ BitVec 32))) )
))
(declare-fun lt!655072 () SeekEntryResult!12763)

(declare-fun lt!655070 () SeekEntryResult!12763)

(assert (=> b!1510173 (= res!1030151 (= lt!655072 lt!655070))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1510173 (= lt!655070 (Intermediate!12763 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100677 0))(
  ( (array!100678 (arr!48571 (Array (_ BitVec 32) (_ BitVec 64))) (size!49122 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100677)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100677 (_ BitVec 32)) SeekEntryResult!12763)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1510173 (= lt!655072 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48571 a!2804) j!70) mask!2512) (select (arr!48571 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1510174 () Bool)

(declare-fun res!1030152 () Bool)

(assert (=> b!1510174 (=> (not res!1030152) (not e!843381))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1510174 (= res!1030152 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49122 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49122 a!2804))))))

(declare-fun b!1510175 () Bool)

(declare-fun res!1030149 () Bool)

(assert (=> b!1510175 (=> (not res!1030149) (not e!843381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1510175 (= res!1030149 (validKeyInArray!0 (select (arr!48571 a!2804) j!70)))))

(declare-fun b!1510176 () Bool)

(declare-fun res!1030158 () Bool)

(assert (=> b!1510176 (=> (not res!1030158) (not e!843381))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1510176 (= res!1030158 (validKeyInArray!0 (select (arr!48571 a!2804) i!961)))))

(declare-fun b!1510177 () Bool)

(declare-fun res!1030155 () Bool)

(assert (=> b!1510177 (=> (not res!1030155) (not e!843381))))

(declare-datatypes ((List!35234 0))(
  ( (Nil!35231) (Cons!35230 (h!36643 (_ BitVec 64)) (t!49935 List!35234)) )
))
(declare-fun arrayNoDuplicates!0 (array!100677 (_ BitVec 32) List!35234) Bool)

(assert (=> b!1510177 (= res!1030155 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35231))))

(declare-fun res!1030156 () Bool)

(assert (=> start!128908 (=> (not res!1030156) (not e!843381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128908 (= res!1030156 (validMask!0 mask!2512))))

(assert (=> start!128908 e!843381))

(assert (=> start!128908 true))

(declare-fun array_inv!37516 (array!100677) Bool)

(assert (=> start!128908 (array_inv!37516 a!2804)))

(declare-fun b!1510178 () Bool)

(declare-fun e!843383 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100677 (_ BitVec 32)) SeekEntryResult!12763)

(assert (=> b!1510178 (= e!843383 (= (seekEntry!0 (select (arr!48571 a!2804) j!70) a!2804 mask!2512) (Found!12763 j!70)))))

(declare-fun b!1510179 () Bool)

(declare-fun res!1030148 () Bool)

(assert (=> b!1510179 (=> (not res!1030148) (not e!843382))))

(assert (=> b!1510179 (= res!1030148 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48571 a!2804) j!70) a!2804 mask!2512) lt!655070))))

(declare-fun b!1510180 () Bool)

(declare-fun res!1030154 () Bool)

(assert (=> b!1510180 (=> (not res!1030154) (not e!843381))))

(assert (=> b!1510180 (= res!1030154 (and (= (size!49122 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49122 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49122 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1510181 () Bool)

(declare-fun res!1030150 () Bool)

(assert (=> b!1510181 (=> (not res!1030150) (not e!843381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100677 (_ BitVec 32)) Bool)

(assert (=> b!1510181 (= res!1030150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1510182 () Bool)

(assert (=> b!1510182 (= e!843382 (not true))))

(assert (=> b!1510182 e!843383))

(declare-fun res!1030157 () Bool)

(assert (=> b!1510182 (=> (not res!1030157) (not e!843383))))

(assert (=> b!1510182 (= res!1030157 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50350 0))(
  ( (Unit!50351) )
))
(declare-fun lt!655071 () Unit!50350)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50350)

(assert (=> b!1510182 (= lt!655071 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1510183 () Bool)

(declare-fun res!1030153 () Bool)

(assert (=> b!1510183 (=> (not res!1030153) (not e!843382))))

(assert (=> b!1510183 (= res!1030153 (= lt!655072 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48571 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48571 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100678 (store (arr!48571 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49122 a!2804)) mask!2512)))))

(assert (= (and start!128908 res!1030156) b!1510180))

(assert (= (and b!1510180 res!1030154) b!1510176))

(assert (= (and b!1510176 res!1030158) b!1510175))

(assert (= (and b!1510175 res!1030149) b!1510181))

(assert (= (and b!1510181 res!1030150) b!1510177))

(assert (= (and b!1510177 res!1030155) b!1510174))

(assert (= (and b!1510174 res!1030152) b!1510173))

(assert (= (and b!1510173 res!1030151) b!1510179))

(assert (= (and b!1510179 res!1030148) b!1510183))

(assert (= (and b!1510183 res!1030153) b!1510182))

(assert (= (and b!1510182 res!1030157) b!1510178))

(declare-fun m!1392795 () Bool)

(assert (=> b!1510182 m!1392795))

(declare-fun m!1392797 () Bool)

(assert (=> b!1510182 m!1392797))

(declare-fun m!1392799 () Bool)

(assert (=> b!1510178 m!1392799))

(assert (=> b!1510178 m!1392799))

(declare-fun m!1392801 () Bool)

(assert (=> b!1510178 m!1392801))

(assert (=> b!1510173 m!1392799))

(assert (=> b!1510173 m!1392799))

(declare-fun m!1392803 () Bool)

(assert (=> b!1510173 m!1392803))

(assert (=> b!1510173 m!1392803))

(assert (=> b!1510173 m!1392799))

(declare-fun m!1392805 () Bool)

(assert (=> b!1510173 m!1392805))

(assert (=> b!1510175 m!1392799))

(assert (=> b!1510175 m!1392799))

(declare-fun m!1392807 () Bool)

(assert (=> b!1510175 m!1392807))

(declare-fun m!1392809 () Bool)

(assert (=> start!128908 m!1392809))

(declare-fun m!1392811 () Bool)

(assert (=> start!128908 m!1392811))

(declare-fun m!1392813 () Bool)

(assert (=> b!1510177 m!1392813))

(declare-fun m!1392815 () Bool)

(assert (=> b!1510183 m!1392815))

(declare-fun m!1392817 () Bool)

(assert (=> b!1510183 m!1392817))

(assert (=> b!1510183 m!1392817))

(declare-fun m!1392819 () Bool)

(assert (=> b!1510183 m!1392819))

(assert (=> b!1510183 m!1392819))

(assert (=> b!1510183 m!1392817))

(declare-fun m!1392821 () Bool)

(assert (=> b!1510183 m!1392821))

(declare-fun m!1392823 () Bool)

(assert (=> b!1510176 m!1392823))

(assert (=> b!1510176 m!1392823))

(declare-fun m!1392825 () Bool)

(assert (=> b!1510176 m!1392825))

(assert (=> b!1510179 m!1392799))

(assert (=> b!1510179 m!1392799))

(declare-fun m!1392827 () Bool)

(assert (=> b!1510179 m!1392827))

(declare-fun m!1392829 () Bool)

(assert (=> b!1510181 m!1392829))

(push 1)

