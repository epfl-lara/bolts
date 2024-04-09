; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129110 () Bool)

(assert start!129110)

(declare-fun b!1513962 () Bool)

(declare-fun res!1033940 () Bool)

(declare-fun e!844964 () Bool)

(assert (=> b!1513962 (=> (not res!1033940) (not e!844964))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12864 0))(
  ( (MissingZero!12864 (index!53850 (_ BitVec 32))) (Found!12864 (index!53851 (_ BitVec 32))) (Intermediate!12864 (undefined!13676 Bool) (index!53852 (_ BitVec 32)) (x!135571 (_ BitVec 32))) (Undefined!12864) (MissingVacant!12864 (index!53853 (_ BitVec 32))) )
))
(declare-fun lt!656140 () SeekEntryResult!12864)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100879 0))(
  ( (array!100880 (arr!48672 (Array (_ BitVec 32) (_ BitVec 64))) (size!49223 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100879)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100879 (_ BitVec 32)) SeekEntryResult!12864)

(assert (=> b!1513962 (= res!1033940 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48672 a!2804) j!70) a!2804 mask!2512) lt!656140))))

(declare-fun lt!656143 () array!100879)

(declare-fun e!844959 () Bool)

(declare-fun lt!656141 () (_ BitVec 64))

(declare-fun b!1513963 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100879 (_ BitVec 32)) SeekEntryResult!12864)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100879 (_ BitVec 32)) SeekEntryResult!12864)

(assert (=> b!1513963 (= e!844959 (= (seekEntryOrOpen!0 lt!656141 lt!656143 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656141 lt!656143 mask!2512)))))

(declare-fun b!1513964 () Bool)

(declare-fun res!1033944 () Bool)

(declare-fun e!844960 () Bool)

(assert (=> b!1513964 (=> (not res!1033944) (not e!844960))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100879 (_ BitVec 32)) SeekEntryResult!12864)

(assert (=> b!1513964 (= res!1033944 (= (seekEntry!0 (select (arr!48672 a!2804) j!70) a!2804 mask!2512) (Found!12864 j!70)))))

(declare-fun b!1513965 () Bool)

(declare-fun e!844958 () Bool)

(assert (=> b!1513965 (= e!844958 e!844964)))

(declare-fun res!1033937 () Bool)

(assert (=> b!1513965 (=> (not res!1033937) (not e!844964))))

(declare-fun lt!656139 () SeekEntryResult!12864)

(assert (=> b!1513965 (= res!1033937 (= lt!656139 lt!656140))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1513965 (= lt!656140 (Intermediate!12864 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513965 (= lt!656139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48672 a!2804) j!70) mask!2512) (select (arr!48672 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1033942 () Bool)

(assert (=> start!129110 (=> (not res!1033942) (not e!844958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129110 (= res!1033942 (validMask!0 mask!2512))))

(assert (=> start!129110 e!844958))

(assert (=> start!129110 true))

(declare-fun array_inv!37617 (array!100879) Bool)

(assert (=> start!129110 (array_inv!37617 a!2804)))

(declare-fun b!1513966 () Bool)

(declare-fun e!844961 () Bool)

(assert (=> b!1513966 (= e!844960 e!844961)))

(declare-fun res!1033949 () Bool)

(assert (=> b!1513966 (=> res!1033949 e!844961)))

(assert (=> b!1513966 (= res!1033949 (or (not (= (select (arr!48672 a!2804) j!70) lt!656141)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48672 a!2804) index!487) (select (arr!48672 a!2804) j!70)) (not (= (select (arr!48672 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513967 () Bool)

(declare-fun res!1033939 () Bool)

(assert (=> b!1513967 (=> (not res!1033939) (not e!844958))))

(assert (=> b!1513967 (= res!1033939 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49223 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49223 a!2804))))))

(declare-fun b!1513968 () Bool)

(declare-fun res!1033938 () Bool)

(assert (=> b!1513968 (=> (not res!1033938) (not e!844958))))

(declare-datatypes ((List!35335 0))(
  ( (Nil!35332) (Cons!35331 (h!36744 (_ BitVec 64)) (t!50036 List!35335)) )
))
(declare-fun arrayNoDuplicates!0 (array!100879 (_ BitVec 32) List!35335) Bool)

(assert (=> b!1513968 (= res!1033938 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35332))))

(declare-fun b!1513969 () Bool)

(declare-fun res!1033948 () Bool)

(assert (=> b!1513969 (=> (not res!1033948) (not e!844958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513969 (= res!1033948 (validKeyInArray!0 (select (arr!48672 a!2804) j!70)))))

(declare-fun b!1513970 () Bool)

(declare-fun res!1033950 () Bool)

(assert (=> b!1513970 (=> (not res!1033950) (not e!844958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100879 (_ BitVec 32)) Bool)

(assert (=> b!1513970 (= res!1033950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513971 () Bool)

(declare-fun res!1033947 () Bool)

(assert (=> b!1513971 (=> (not res!1033947) (not e!844958))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1513971 (= res!1033947 (validKeyInArray!0 (select (arr!48672 a!2804) i!961)))))

(declare-fun b!1513972 () Bool)

(assert (=> b!1513972 (= e!844961 e!844959)))

(declare-fun res!1033945 () Bool)

(assert (=> b!1513972 (=> (not res!1033945) (not e!844959))))

(assert (=> b!1513972 (= res!1033945 (= (seekEntryOrOpen!0 (select (arr!48672 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48672 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513973 () Bool)

(declare-fun res!1033946 () Bool)

(assert (=> b!1513973 (=> (not res!1033946) (not e!844958))))

(assert (=> b!1513973 (= res!1033946 (and (= (size!49223 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49223 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49223 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513974 () Bool)

(declare-fun e!844962 () Bool)

(assert (=> b!1513974 (= e!844964 e!844962)))

(declare-fun res!1033943 () Bool)

(assert (=> b!1513974 (=> (not res!1033943) (not e!844962))))

(assert (=> b!1513974 (= res!1033943 (= lt!656139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656141 mask!2512) lt!656141 lt!656143 mask!2512)))))

(assert (=> b!1513974 (= lt!656141 (select (store (arr!48672 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513974 (= lt!656143 (array!100880 (store (arr!48672 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49223 a!2804)))))

(declare-fun b!1513975 () Bool)

(assert (=> b!1513975 (= e!844962 (not true))))

(assert (=> b!1513975 e!844960))

(declare-fun res!1033941 () Bool)

(assert (=> b!1513975 (=> (not res!1033941) (not e!844960))))

(assert (=> b!1513975 (= res!1033941 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50552 0))(
  ( (Unit!50553) )
))
(declare-fun lt!656142 () Unit!50552)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100879 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50552)

(assert (=> b!1513975 (= lt!656142 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129110 res!1033942) b!1513973))

(assert (= (and b!1513973 res!1033946) b!1513971))

(assert (= (and b!1513971 res!1033947) b!1513969))

(assert (= (and b!1513969 res!1033948) b!1513970))

(assert (= (and b!1513970 res!1033950) b!1513968))

(assert (= (and b!1513968 res!1033938) b!1513967))

(assert (= (and b!1513967 res!1033939) b!1513965))

(assert (= (and b!1513965 res!1033937) b!1513962))

(assert (= (and b!1513962 res!1033940) b!1513974))

(assert (= (and b!1513974 res!1033943) b!1513975))

(assert (= (and b!1513975 res!1033941) b!1513964))

(assert (= (and b!1513964 res!1033944) b!1513966))

(assert (= (and b!1513966 (not res!1033949)) b!1513972))

(assert (= (and b!1513972 res!1033945) b!1513963))

(declare-fun m!1396931 () Bool)

(assert (=> b!1513964 m!1396931))

(assert (=> b!1513964 m!1396931))

(declare-fun m!1396933 () Bool)

(assert (=> b!1513964 m!1396933))

(declare-fun m!1396935 () Bool)

(assert (=> b!1513963 m!1396935))

(declare-fun m!1396937 () Bool)

(assert (=> b!1513963 m!1396937))

(assert (=> b!1513965 m!1396931))

(assert (=> b!1513965 m!1396931))

(declare-fun m!1396939 () Bool)

(assert (=> b!1513965 m!1396939))

(assert (=> b!1513965 m!1396939))

(assert (=> b!1513965 m!1396931))

(declare-fun m!1396941 () Bool)

(assert (=> b!1513965 m!1396941))

(assert (=> b!1513966 m!1396931))

(declare-fun m!1396943 () Bool)

(assert (=> b!1513966 m!1396943))

(declare-fun m!1396945 () Bool)

(assert (=> b!1513971 m!1396945))

(assert (=> b!1513971 m!1396945))

(declare-fun m!1396947 () Bool)

(assert (=> b!1513971 m!1396947))

(declare-fun m!1396949 () Bool)

(assert (=> b!1513975 m!1396949))

(declare-fun m!1396951 () Bool)

(assert (=> b!1513975 m!1396951))

(declare-fun m!1396953 () Bool)

(assert (=> b!1513970 m!1396953))

(assert (=> b!1513962 m!1396931))

(assert (=> b!1513962 m!1396931))

(declare-fun m!1396955 () Bool)

(assert (=> b!1513962 m!1396955))

(declare-fun m!1396957 () Bool)

(assert (=> start!129110 m!1396957))

(declare-fun m!1396959 () Bool)

(assert (=> start!129110 m!1396959))

(declare-fun m!1396961 () Bool)

(assert (=> b!1513974 m!1396961))

(assert (=> b!1513974 m!1396961))

(declare-fun m!1396963 () Bool)

(assert (=> b!1513974 m!1396963))

(declare-fun m!1396965 () Bool)

(assert (=> b!1513974 m!1396965))

(declare-fun m!1396967 () Bool)

(assert (=> b!1513974 m!1396967))

(declare-fun m!1396969 () Bool)

(assert (=> b!1513968 m!1396969))

(assert (=> b!1513969 m!1396931))

(assert (=> b!1513969 m!1396931))

(declare-fun m!1396971 () Bool)

(assert (=> b!1513969 m!1396971))

(assert (=> b!1513972 m!1396931))

(assert (=> b!1513972 m!1396931))

(declare-fun m!1396973 () Bool)

(assert (=> b!1513972 m!1396973))

(assert (=> b!1513972 m!1396931))

(declare-fun m!1396975 () Bool)

(assert (=> b!1513972 m!1396975))

(push 1)

(assert (not b!1513968))

(assert (not b!1513963))

(assert (not b!1513972))

(assert (not b!1513969))

(assert (not b!1513970))

(assert (not b!1513975))

(assert (not b!1513974))

(assert (not start!129110))

(assert (not b!1513962))

(assert (not b!1513971))

(assert (not b!1513965))

(assert (not b!1513964))

(check-sat)

(pop 1)

