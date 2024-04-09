; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128968 () Bool)

(assert start!128968)

(declare-fun b!1511172 () Bool)

(declare-fun res!1031153 () Bool)

(declare-fun e!843751 () Bool)

(assert (=> b!1511172 (=> (not res!1031153) (not e!843751))))

(declare-datatypes ((SeekEntryResult!12793 0))(
  ( (MissingZero!12793 (index!53566 (_ BitVec 32))) (Found!12793 (index!53567 (_ BitVec 32))) (Intermediate!12793 (undefined!13605 Bool) (index!53568 (_ BitVec 32)) (x!135316 (_ BitVec 32))) (Undefined!12793) (MissingVacant!12793 (index!53569 (_ BitVec 32))) )
))
(declare-fun lt!655342 () SeekEntryResult!12793)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100737 0))(
  ( (array!100738 (arr!48601 (Array (_ BitVec 32) (_ BitVec 64))) (size!49152 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100737)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100737 (_ BitVec 32)) SeekEntryResult!12793)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1511172 (= res!1031153 (= lt!655342 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48601 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48601 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100738 (store (arr!48601 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49152 a!2804)) mask!2512)))))

(declare-fun b!1511173 () Bool)

(declare-fun res!1031157 () Bool)

(declare-fun e!843752 () Bool)

(assert (=> b!1511173 (=> (not res!1031157) (not e!843752))))

(assert (=> b!1511173 (= res!1031157 (and (= (size!49152 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49152 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49152 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1511174 () Bool)

(declare-fun res!1031149 () Bool)

(assert (=> b!1511174 (=> (not res!1031149) (not e!843752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1511174 (= res!1031149 (validKeyInArray!0 (select (arr!48601 a!2804) i!961)))))

(declare-fun b!1511175 () Bool)

(declare-fun res!1031155 () Bool)

(assert (=> b!1511175 (=> (not res!1031155) (not e!843752))))

(assert (=> b!1511175 (= res!1031155 (validKeyInArray!0 (select (arr!48601 a!2804) j!70)))))

(declare-fun b!1511176 () Bool)

(declare-fun res!1031156 () Bool)

(assert (=> b!1511176 (=> (not res!1031156) (not e!843752))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1511176 (= res!1031156 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49152 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49152 a!2804))))))

(declare-fun b!1511178 () Bool)

(declare-fun res!1031152 () Bool)

(assert (=> b!1511178 (=> (not res!1031152) (not e!843752))))

(declare-datatypes ((List!35264 0))(
  ( (Nil!35261) (Cons!35260 (h!36673 (_ BitVec 64)) (t!49965 List!35264)) )
))
(declare-fun arrayNoDuplicates!0 (array!100737 (_ BitVec 32) List!35264) Bool)

(assert (=> b!1511178 (= res!1031152 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35261))))

(declare-fun b!1511179 () Bool)

(declare-fun res!1031151 () Bool)

(assert (=> b!1511179 (=> (not res!1031151) (not e!843751))))

(declare-fun lt!655340 () SeekEntryResult!12793)

(assert (=> b!1511179 (= res!1031151 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48601 a!2804) j!70) a!2804 mask!2512) lt!655340))))

(declare-fun b!1511180 () Bool)

(declare-fun res!1031150 () Bool)

(assert (=> b!1511180 (=> (not res!1031150) (not e!843752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100737 (_ BitVec 32)) Bool)

(assert (=> b!1511180 (= res!1031150 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1511181 () Bool)

(assert (=> b!1511181 (= e!843752 e!843751)))

(declare-fun res!1031148 () Bool)

(assert (=> b!1511181 (=> (not res!1031148) (not e!843751))))

(assert (=> b!1511181 (= res!1031148 (= lt!655342 lt!655340))))

(assert (=> b!1511181 (= lt!655340 (Intermediate!12793 false resIndex!21 resX!21))))

(assert (=> b!1511181 (= lt!655342 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48601 a!2804) j!70) mask!2512) (select (arr!48601 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1511182 () Bool)

(declare-fun e!843749 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100737 (_ BitVec 32)) SeekEntryResult!12793)

(assert (=> b!1511182 (= e!843749 (= (seekEntry!0 (select (arr!48601 a!2804) j!70) a!2804 mask!2512) (Found!12793 j!70)))))

(declare-fun b!1511177 () Bool)

(assert (=> b!1511177 (= e!843751 (not true))))

(assert (=> b!1511177 e!843749))

(declare-fun res!1031147 () Bool)

(assert (=> b!1511177 (=> (not res!1031147) (not e!843749))))

(assert (=> b!1511177 (= res!1031147 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50410 0))(
  ( (Unit!50411) )
))
(declare-fun lt!655341 () Unit!50410)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100737 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50410)

(assert (=> b!1511177 (= lt!655341 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1031154 () Bool)

(assert (=> start!128968 (=> (not res!1031154) (not e!843752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128968 (= res!1031154 (validMask!0 mask!2512))))

(assert (=> start!128968 e!843752))

(assert (=> start!128968 true))

(declare-fun array_inv!37546 (array!100737) Bool)

(assert (=> start!128968 (array_inv!37546 a!2804)))

(assert (= (and start!128968 res!1031154) b!1511173))

(assert (= (and b!1511173 res!1031157) b!1511174))

(assert (= (and b!1511174 res!1031149) b!1511175))

(assert (= (and b!1511175 res!1031155) b!1511180))

(assert (= (and b!1511180 res!1031150) b!1511178))

(assert (= (and b!1511178 res!1031152) b!1511176))

(assert (= (and b!1511176 res!1031156) b!1511181))

(assert (= (and b!1511181 res!1031148) b!1511179))

(assert (= (and b!1511179 res!1031151) b!1511172))

(assert (= (and b!1511172 res!1031153) b!1511177))

(assert (= (and b!1511177 res!1031147) b!1511182))

(declare-fun m!1393905 () Bool)

(assert (=> b!1511179 m!1393905))

(assert (=> b!1511179 m!1393905))

(declare-fun m!1393907 () Bool)

(assert (=> b!1511179 m!1393907))

(declare-fun m!1393909 () Bool)

(assert (=> b!1511172 m!1393909))

(declare-fun m!1393911 () Bool)

(assert (=> b!1511172 m!1393911))

(assert (=> b!1511172 m!1393911))

(declare-fun m!1393913 () Bool)

(assert (=> b!1511172 m!1393913))

(assert (=> b!1511172 m!1393913))

(assert (=> b!1511172 m!1393911))

(declare-fun m!1393915 () Bool)

(assert (=> b!1511172 m!1393915))

(assert (=> b!1511182 m!1393905))

(assert (=> b!1511182 m!1393905))

(declare-fun m!1393917 () Bool)

(assert (=> b!1511182 m!1393917))

(assert (=> b!1511175 m!1393905))

(assert (=> b!1511175 m!1393905))

(declare-fun m!1393919 () Bool)

(assert (=> b!1511175 m!1393919))

(assert (=> b!1511181 m!1393905))

(assert (=> b!1511181 m!1393905))

(declare-fun m!1393921 () Bool)

(assert (=> b!1511181 m!1393921))

(assert (=> b!1511181 m!1393921))

(assert (=> b!1511181 m!1393905))

(declare-fun m!1393923 () Bool)

(assert (=> b!1511181 m!1393923))

(declare-fun m!1393925 () Bool)

(assert (=> b!1511174 m!1393925))

(assert (=> b!1511174 m!1393925))

(declare-fun m!1393927 () Bool)

(assert (=> b!1511174 m!1393927))

(declare-fun m!1393929 () Bool)

(assert (=> b!1511177 m!1393929))

(declare-fun m!1393931 () Bool)

(assert (=> b!1511177 m!1393931))

(declare-fun m!1393933 () Bool)

(assert (=> start!128968 m!1393933))

(declare-fun m!1393935 () Bool)

(assert (=> start!128968 m!1393935))

(declare-fun m!1393937 () Bool)

(assert (=> b!1511178 m!1393937))

(declare-fun m!1393939 () Bool)

(assert (=> b!1511180 m!1393939))

(push 1)

