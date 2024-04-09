; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129118 () Bool)

(assert start!129118)

(declare-fun b!1514130 () Bool)

(declare-fun e!845047 () Bool)

(declare-fun e!845043 () Bool)

(assert (=> b!1514130 (= e!845047 e!845043)))

(declare-fun res!1034115 () Bool)

(assert (=> b!1514130 (=> (not res!1034115) (not e!845043))))

(declare-datatypes ((SeekEntryResult!12868 0))(
  ( (MissingZero!12868 (index!53866 (_ BitVec 32))) (Found!12868 (index!53867 (_ BitVec 32))) (Intermediate!12868 (undefined!13680 Bool) (index!53868 (_ BitVec 32)) (x!135591 (_ BitVec 32))) (Undefined!12868) (MissingVacant!12868 (index!53869 (_ BitVec 32))) )
))
(declare-fun lt!656201 () SeekEntryResult!12868)

(declare-datatypes ((array!100887 0))(
  ( (array!100888 (arr!48676 (Array (_ BitVec 32) (_ BitVec 64))) (size!49227 (_ BitVec 32))) )
))
(declare-fun lt!656202 () array!100887)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!656200 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100887 (_ BitVec 32)) SeekEntryResult!12868)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514130 (= res!1034115 (= lt!656201 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656200 mask!2512) lt!656200 lt!656202 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!100887)

(assert (=> b!1514130 (= lt!656200 (select (store (arr!48676 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514130 (= lt!656202 (array!100888 (store (arr!48676 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49227 a!2804)))))

(declare-fun b!1514131 () Bool)

(declare-fun e!845044 () Bool)

(assert (=> b!1514131 (= e!845044 e!845047)))

(declare-fun res!1034112 () Bool)

(assert (=> b!1514131 (=> (not res!1034112) (not e!845047))))

(declare-fun lt!656199 () SeekEntryResult!12868)

(assert (=> b!1514131 (= res!1034112 (= lt!656201 lt!656199))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1514131 (= lt!656199 (Intermediate!12868 false resIndex!21 resX!21))))

(assert (=> b!1514131 (= lt!656201 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48676 a!2804) j!70) mask!2512) (select (arr!48676 a!2804) j!70) a!2804 mask!2512))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun e!845045 () Bool)

(declare-fun b!1514132 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100887 (_ BitVec 32)) SeekEntryResult!12868)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100887 (_ BitVec 32)) SeekEntryResult!12868)

(assert (=> b!1514132 (= e!845045 (= (seekEntryOrOpen!0 lt!656200 lt!656202 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656200 lt!656202 mask!2512)))))

(declare-fun b!1514133 () Bool)

(declare-fun res!1034109 () Bool)

(assert (=> b!1514133 (=> (not res!1034109) (not e!845044))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514133 (= res!1034109 (validKeyInArray!0 (select (arr!48676 a!2804) j!70)))))

(declare-fun b!1514134 () Bool)

(declare-fun res!1034111 () Bool)

(assert (=> b!1514134 (=> (not res!1034111) (not e!845044))))

(assert (=> b!1514134 (= res!1034111 (validKeyInArray!0 (select (arr!48676 a!2804) i!961)))))

(declare-fun b!1514135 () Bool)

(declare-fun res!1034114 () Bool)

(assert (=> b!1514135 (=> (not res!1034114) (not e!845044))))

(declare-datatypes ((List!35339 0))(
  ( (Nil!35336) (Cons!35335 (h!36748 (_ BitVec 64)) (t!50040 List!35339)) )
))
(declare-fun arrayNoDuplicates!0 (array!100887 (_ BitVec 32) List!35339) Bool)

(assert (=> b!1514135 (= res!1034114 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35336))))

(declare-fun b!1514136 () Bool)

(assert (=> b!1514136 (= e!845043 (not true))))

(declare-fun e!845046 () Bool)

(assert (=> b!1514136 e!845046))

(declare-fun res!1034107 () Bool)

(assert (=> b!1514136 (=> (not res!1034107) (not e!845046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100887 (_ BitVec 32)) Bool)

(assert (=> b!1514136 (= res!1034107 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50560 0))(
  ( (Unit!50561) )
))
(declare-fun lt!656203 () Unit!50560)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100887 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50560)

(assert (=> b!1514136 (= lt!656203 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun res!1034108 () Bool)

(assert (=> start!129118 (=> (not res!1034108) (not e!845044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129118 (= res!1034108 (validMask!0 mask!2512))))

(assert (=> start!129118 e!845044))

(assert (=> start!129118 true))

(declare-fun array_inv!37621 (array!100887) Bool)

(assert (=> start!129118 (array_inv!37621 a!2804)))

(declare-fun b!1514137 () Bool)

(declare-fun res!1034106 () Bool)

(assert (=> b!1514137 (=> (not res!1034106) (not e!845044))))

(assert (=> b!1514137 (= res!1034106 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49227 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49227 a!2804))))))

(declare-fun b!1514138 () Bool)

(declare-fun res!1034110 () Bool)

(assert (=> b!1514138 (=> (not res!1034110) (not e!845046))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100887 (_ BitVec 32)) SeekEntryResult!12868)

(assert (=> b!1514138 (= res!1034110 (= (seekEntry!0 (select (arr!48676 a!2804) j!70) a!2804 mask!2512) (Found!12868 j!70)))))

(declare-fun b!1514139 () Bool)

(declare-fun e!845048 () Bool)

(assert (=> b!1514139 (= e!845048 e!845045)))

(declare-fun res!1034105 () Bool)

(assert (=> b!1514139 (=> (not res!1034105) (not e!845045))))

(assert (=> b!1514139 (= res!1034105 (= (seekEntryOrOpen!0 (select (arr!48676 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48676 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514140 () Bool)

(declare-fun res!1034118 () Bool)

(assert (=> b!1514140 (=> (not res!1034118) (not e!845044))))

(assert (=> b!1514140 (= res!1034118 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514141 () Bool)

(declare-fun res!1034116 () Bool)

(assert (=> b!1514141 (=> (not res!1034116) (not e!845044))))

(assert (=> b!1514141 (= res!1034116 (and (= (size!49227 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49227 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49227 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514142 () Bool)

(declare-fun res!1034113 () Bool)

(assert (=> b!1514142 (=> (not res!1034113) (not e!845047))))

(assert (=> b!1514142 (= res!1034113 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48676 a!2804) j!70) a!2804 mask!2512) lt!656199))))

(declare-fun b!1514143 () Bool)

(assert (=> b!1514143 (= e!845046 e!845048)))

(declare-fun res!1034117 () Bool)

(assert (=> b!1514143 (=> res!1034117 e!845048)))

(assert (=> b!1514143 (= res!1034117 (or (not (= (select (arr!48676 a!2804) j!70) lt!656200)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48676 a!2804) index!487) (select (arr!48676 a!2804) j!70)) (not (= (select (arr!48676 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!129118 res!1034108) b!1514141))

(assert (= (and b!1514141 res!1034116) b!1514134))

(assert (= (and b!1514134 res!1034111) b!1514133))

(assert (= (and b!1514133 res!1034109) b!1514140))

(assert (= (and b!1514140 res!1034118) b!1514135))

(assert (= (and b!1514135 res!1034114) b!1514137))

(assert (= (and b!1514137 res!1034106) b!1514131))

(assert (= (and b!1514131 res!1034112) b!1514142))

(assert (= (and b!1514142 res!1034113) b!1514130))

(assert (= (and b!1514130 res!1034115) b!1514136))

(assert (= (and b!1514136 res!1034107) b!1514138))

(assert (= (and b!1514138 res!1034110) b!1514143))

(assert (= (and b!1514143 (not res!1034117)) b!1514139))

(assert (= (and b!1514139 res!1034105) b!1514132))

(declare-fun m!1397115 () Bool)

(assert (=> b!1514131 m!1397115))

(assert (=> b!1514131 m!1397115))

(declare-fun m!1397117 () Bool)

(assert (=> b!1514131 m!1397117))

(assert (=> b!1514131 m!1397117))

(assert (=> b!1514131 m!1397115))

(declare-fun m!1397119 () Bool)

(assert (=> b!1514131 m!1397119))

(declare-fun m!1397121 () Bool)

(assert (=> b!1514134 m!1397121))

(assert (=> b!1514134 m!1397121))

(declare-fun m!1397123 () Bool)

(assert (=> b!1514134 m!1397123))

(assert (=> b!1514143 m!1397115))

(declare-fun m!1397125 () Bool)

(assert (=> b!1514143 m!1397125))

(assert (=> b!1514138 m!1397115))

(assert (=> b!1514138 m!1397115))

(declare-fun m!1397127 () Bool)

(assert (=> b!1514138 m!1397127))

(declare-fun m!1397129 () Bool)

(assert (=> b!1514140 m!1397129))

(declare-fun m!1397131 () Bool)

(assert (=> start!129118 m!1397131))

(declare-fun m!1397133 () Bool)

(assert (=> start!129118 m!1397133))

(declare-fun m!1397135 () Bool)

(assert (=> b!1514130 m!1397135))

(assert (=> b!1514130 m!1397135))

(declare-fun m!1397137 () Bool)

(assert (=> b!1514130 m!1397137))

(declare-fun m!1397139 () Bool)

(assert (=> b!1514130 m!1397139))

(declare-fun m!1397141 () Bool)

(assert (=> b!1514130 m!1397141))

(declare-fun m!1397143 () Bool)

(assert (=> b!1514135 m!1397143))

(assert (=> b!1514142 m!1397115))

(assert (=> b!1514142 m!1397115))

(declare-fun m!1397145 () Bool)

(assert (=> b!1514142 m!1397145))

(assert (=> b!1514133 m!1397115))

(assert (=> b!1514133 m!1397115))

(declare-fun m!1397147 () Bool)

(assert (=> b!1514133 m!1397147))

(declare-fun m!1397149 () Bool)

(assert (=> b!1514136 m!1397149))

(declare-fun m!1397151 () Bool)

(assert (=> b!1514136 m!1397151))

(assert (=> b!1514139 m!1397115))

(assert (=> b!1514139 m!1397115))

(declare-fun m!1397153 () Bool)

(assert (=> b!1514139 m!1397153))

(assert (=> b!1514139 m!1397115))

(declare-fun m!1397155 () Bool)

(assert (=> b!1514139 m!1397155))

(declare-fun m!1397157 () Bool)

(assert (=> b!1514132 m!1397157))

(declare-fun m!1397159 () Bool)

(assert (=> b!1514132 m!1397159))

(push 1)

