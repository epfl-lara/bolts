; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129020 () Bool)

(assert start!129020)

(declare-fun b!1512127 () Bool)

(declare-fun e!844117 () Bool)

(declare-fun e!844116 () Bool)

(assert (=> b!1512127 (= e!844117 e!844116)))

(declare-fun res!1032114 () Bool)

(assert (=> b!1512127 (=> res!1032114 e!844116)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!100789 0))(
  ( (array!100790 (arr!48627 (Array (_ BitVec 32) (_ BitVec 64))) (size!49178 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100789)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(assert (=> b!1512127 (= res!1032114 (or (not (= (select (arr!48627 a!2804) j!70) (select (store (arr!48627 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48627 a!2804) index!487) (select (arr!48627 a!2804) j!70)) (not (= (select (arr!48627 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512128 () Bool)

(declare-fun e!844115 () Bool)

(declare-fun e!844114 () Bool)

(assert (=> b!1512128 (= e!844115 e!844114)))

(declare-fun res!1032102 () Bool)

(assert (=> b!1512128 (=> (not res!1032102) (not e!844114))))

(declare-datatypes ((SeekEntryResult!12819 0))(
  ( (MissingZero!12819 (index!53670 (_ BitVec 32))) (Found!12819 (index!53671 (_ BitVec 32))) (Intermediate!12819 (undefined!13631 Bool) (index!53672 (_ BitVec 32)) (x!135406 (_ BitVec 32))) (Undefined!12819) (MissingVacant!12819 (index!53673 (_ BitVec 32))) )
))
(declare-fun lt!655576 () SeekEntryResult!12819)

(declare-fun lt!655574 () SeekEntryResult!12819)

(assert (=> b!1512128 (= res!1032102 (= lt!655576 lt!655574))))

(assert (=> b!1512128 (= lt!655574 (Intermediate!12819 false resIndex!21 resX!21))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100789 (_ BitVec 32)) SeekEntryResult!12819)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512128 (= lt!655576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48627 a!2804) j!70) mask!2512) (select (arr!48627 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512129 () Bool)

(declare-fun res!1032107 () Bool)

(assert (=> b!1512129 (=> (not res!1032107) (not e!844117))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100789 (_ BitVec 32)) SeekEntryResult!12819)

(assert (=> b!1512129 (= res!1032107 (= (seekEntry!0 (select (arr!48627 a!2804) j!70) a!2804 mask!2512) (Found!12819 j!70)))))

(declare-fun b!1512130 () Bool)

(declare-fun res!1032109 () Bool)

(assert (=> b!1512130 (=> (not res!1032109) (not e!844114))))

(assert (=> b!1512130 (= res!1032109 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48627 a!2804) j!70) a!2804 mask!2512) lt!655574))))

(declare-fun b!1512131 () Bool)

(declare-fun res!1032105 () Bool)

(assert (=> b!1512131 (=> (not res!1032105) (not e!844115))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512131 (= res!1032105 (validKeyInArray!0 (select (arr!48627 a!2804) j!70)))))

(declare-fun b!1512132 () Bool)

(assert (=> b!1512132 (= e!844114 (not true))))

(assert (=> b!1512132 e!844117))

(declare-fun res!1032112 () Bool)

(assert (=> b!1512132 (=> (not res!1032112) (not e!844117))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100789 (_ BitVec 32)) Bool)

(assert (=> b!1512132 (= res!1032112 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50462 0))(
  ( (Unit!50463) )
))
(declare-fun lt!655575 () Unit!50462)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100789 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50462)

(assert (=> b!1512132 (= lt!655575 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512133 () Bool)

(declare-fun res!1032108 () Bool)

(assert (=> b!1512133 (=> (not res!1032108) (not e!844115))))

(declare-datatypes ((List!35290 0))(
  ( (Nil!35287) (Cons!35286 (h!36699 (_ BitVec 64)) (t!49991 List!35290)) )
))
(declare-fun arrayNoDuplicates!0 (array!100789 (_ BitVec 32) List!35290) Bool)

(assert (=> b!1512133 (= res!1032108 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35287))))

(declare-fun res!1032110 () Bool)

(assert (=> start!129020 (=> (not res!1032110) (not e!844115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129020 (= res!1032110 (validMask!0 mask!2512))))

(assert (=> start!129020 e!844115))

(assert (=> start!129020 true))

(declare-fun array_inv!37572 (array!100789) Bool)

(assert (=> start!129020 (array_inv!37572 a!2804)))

(declare-fun b!1512134 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100789 (_ BitVec 32)) SeekEntryResult!12819)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100789 (_ BitVec 32)) SeekEntryResult!12819)

(assert (=> b!1512134 (= e!844116 (= (seekEntryOrOpen!0 (select (arr!48627 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48627 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512135 () Bool)

(declare-fun res!1032106 () Bool)

(assert (=> b!1512135 (=> (not res!1032106) (not e!844115))))

(assert (=> b!1512135 (= res!1032106 (and (= (size!49178 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49178 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49178 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512136 () Bool)

(declare-fun res!1032111 () Bool)

(assert (=> b!1512136 (=> (not res!1032111) (not e!844115))))

(assert (=> b!1512136 (= res!1032111 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49178 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49178 a!2804))))))

(declare-fun b!1512137 () Bool)

(declare-fun res!1032104 () Bool)

(assert (=> b!1512137 (=> (not res!1032104) (not e!844114))))

(assert (=> b!1512137 (= res!1032104 (= lt!655576 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48627 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48627 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100790 (store (arr!48627 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49178 a!2804)) mask!2512)))))

(declare-fun b!1512138 () Bool)

(declare-fun res!1032113 () Bool)

(assert (=> b!1512138 (=> (not res!1032113) (not e!844115))))

(assert (=> b!1512138 (= res!1032113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512139 () Bool)

(declare-fun res!1032103 () Bool)

(assert (=> b!1512139 (=> (not res!1032103) (not e!844115))))

(assert (=> b!1512139 (= res!1032103 (validKeyInArray!0 (select (arr!48627 a!2804) i!961)))))

(assert (= (and start!129020 res!1032110) b!1512135))

(assert (= (and b!1512135 res!1032106) b!1512139))

(assert (= (and b!1512139 res!1032103) b!1512131))

(assert (= (and b!1512131 res!1032105) b!1512138))

(assert (= (and b!1512138 res!1032113) b!1512133))

(assert (= (and b!1512133 res!1032108) b!1512136))

(assert (= (and b!1512136 res!1032111) b!1512128))

(assert (= (and b!1512128 res!1032102) b!1512130))

(assert (= (and b!1512130 res!1032109) b!1512137))

(assert (= (and b!1512137 res!1032104) b!1512132))

(assert (= (and b!1512132 res!1032112) b!1512129))

(assert (= (and b!1512129 res!1032107) b!1512127))

(assert (= (and b!1512127 (not res!1032114)) b!1512134))

(declare-fun m!1394931 () Bool)

(assert (=> b!1512129 m!1394931))

(assert (=> b!1512129 m!1394931))

(declare-fun m!1394933 () Bool)

(assert (=> b!1512129 m!1394933))

(declare-fun m!1394935 () Bool)

(assert (=> start!129020 m!1394935))

(declare-fun m!1394937 () Bool)

(assert (=> start!129020 m!1394937))

(declare-fun m!1394939 () Bool)

(assert (=> b!1512139 m!1394939))

(assert (=> b!1512139 m!1394939))

(declare-fun m!1394941 () Bool)

(assert (=> b!1512139 m!1394941))

(assert (=> b!1512127 m!1394931))

(declare-fun m!1394943 () Bool)

(assert (=> b!1512127 m!1394943))

(declare-fun m!1394945 () Bool)

(assert (=> b!1512127 m!1394945))

(declare-fun m!1394947 () Bool)

(assert (=> b!1512127 m!1394947))

(declare-fun m!1394949 () Bool)

(assert (=> b!1512133 m!1394949))

(assert (=> b!1512131 m!1394931))

(assert (=> b!1512131 m!1394931))

(declare-fun m!1394951 () Bool)

(assert (=> b!1512131 m!1394951))

(assert (=> b!1512134 m!1394931))

(assert (=> b!1512134 m!1394931))

(declare-fun m!1394953 () Bool)

(assert (=> b!1512134 m!1394953))

(assert (=> b!1512134 m!1394931))

(declare-fun m!1394955 () Bool)

(assert (=> b!1512134 m!1394955))

(assert (=> b!1512137 m!1394943))

(assert (=> b!1512137 m!1394945))

(assert (=> b!1512137 m!1394945))

(declare-fun m!1394957 () Bool)

(assert (=> b!1512137 m!1394957))

(assert (=> b!1512137 m!1394957))

(assert (=> b!1512137 m!1394945))

(declare-fun m!1394959 () Bool)

(assert (=> b!1512137 m!1394959))

(assert (=> b!1512128 m!1394931))

(assert (=> b!1512128 m!1394931))

(declare-fun m!1394961 () Bool)

(assert (=> b!1512128 m!1394961))

(assert (=> b!1512128 m!1394961))

(assert (=> b!1512128 m!1394931))

(declare-fun m!1394963 () Bool)

(assert (=> b!1512128 m!1394963))

(declare-fun m!1394965 () Bool)

(assert (=> b!1512138 m!1394965))

(assert (=> b!1512130 m!1394931))

(assert (=> b!1512130 m!1394931))

(declare-fun m!1394967 () Bool)

(assert (=> b!1512130 m!1394967))

(declare-fun m!1394969 () Bool)

(assert (=> b!1512132 m!1394969))

(declare-fun m!1394971 () Bool)

(assert (=> b!1512132 m!1394971))

(push 1)

(assert (not b!1512128))

(assert (not b!1512129))

