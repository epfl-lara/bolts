; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126272 () Bool)

(assert start!126272)

(declare-fun b!1479104 () Bool)

(declare-fun e!829704 () Bool)

(assert (=> b!1479104 (= e!829704 (not true))))

(declare-fun e!829706 () Bool)

(assert (=> b!1479104 e!829706))

(declare-fun res!1005144 () Bool)

(assert (=> b!1479104 (=> (not res!1005144) (not e!829706))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99295 0))(
  ( (array!99296 (arr!47922 (Array (_ BitVec 32) (_ BitVec 64))) (size!48473 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99295)

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12185 0))(
  ( (MissingZero!12185 (index!51131 (_ BitVec 32))) (Found!12185 (index!51132 (_ BitVec 32))) (Intermediate!12185 (undefined!12997 Bool) (index!51133 (_ BitVec 32)) (x!132715 (_ BitVec 32))) (Undefined!12185) (MissingVacant!12185 (index!51134 (_ BitVec 32))) )
))
(declare-fun lt!645870 () SeekEntryResult!12185)

(assert (=> b!1479104 (= res!1005144 (and (= lt!645870 (Found!12185 j!93)) (or (= (select (arr!47922 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47922 a!2862) intermediateBeforeIndex!19) (select (arr!47922 a!2862) j!93)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99295 (_ BitVec 32)) SeekEntryResult!12185)

(assert (=> b!1479104 (= lt!645870 (seekEntryOrOpen!0 (select (arr!47922 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99295 (_ BitVec 32)) Bool)

(assert (=> b!1479104 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49658 0))(
  ( (Unit!49659) )
))
(declare-fun lt!645871 () Unit!49658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99295 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49658)

(assert (=> b!1479104 (= lt!645871 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479105 () Bool)

(declare-fun res!1005148 () Bool)

(declare-fun e!829701 () Bool)

(assert (=> b!1479105 (=> (not res!1005148) (not e!829701))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!645872 () SeekEntryResult!12185)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99295 (_ BitVec 32)) SeekEntryResult!12185)

(assert (=> b!1479105 (= res!1005148 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47922 a!2862) j!93) a!2862 mask!2687) lt!645872))))

(declare-fun b!1479106 () Bool)

(declare-fun e!829703 () Bool)

(assert (=> b!1479106 (= e!829703 e!829701)))

(declare-fun res!1005147 () Bool)

(assert (=> b!1479106 (=> (not res!1005147) (not e!829701))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479106 (= res!1005147 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47922 a!2862) j!93) mask!2687) (select (arr!47922 a!2862) j!93) a!2862 mask!2687) lt!645872))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1479106 (= lt!645872 (Intermediate!12185 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479108 () Bool)

(declare-fun res!1005145 () Bool)

(declare-fun e!829705 () Bool)

(assert (=> b!1479108 (=> (not res!1005145) (not e!829705))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1479108 (= res!1005145 (and (= (size!48473 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48473 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48473 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1479109 () Bool)

(declare-fun res!1005150 () Bool)

(assert (=> b!1479109 (=> (not res!1005150) (not e!829704))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1479109 (= res!1005150 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1479110 () Bool)

(declare-fun res!1005149 () Bool)

(assert (=> b!1479110 (=> (not res!1005149) (not e!829705))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479110 (= res!1005149 (validKeyInArray!0 (select (arr!47922 a!2862) i!1006)))))

(declare-fun b!1479111 () Bool)

(declare-fun res!1005152 () Bool)

(assert (=> b!1479111 (=> (not res!1005152) (not e!829705))))

(declare-datatypes ((List!34603 0))(
  ( (Nil!34600) (Cons!34599 (h!35967 (_ BitVec 64)) (t!49304 List!34603)) )
))
(declare-fun arrayNoDuplicates!0 (array!99295 (_ BitVec 32) List!34603) Bool)

(assert (=> b!1479111 (= res!1005152 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34600))))

(declare-fun b!1479112 () Bool)

(assert (=> b!1479112 (= e!829705 e!829703)))

(declare-fun res!1005157 () Bool)

(assert (=> b!1479112 (=> (not res!1005157) (not e!829703))))

(assert (=> b!1479112 (= res!1005157 (= (select (store (arr!47922 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!645869 () array!99295)

(assert (=> b!1479112 (= lt!645869 (array!99296 (store (arr!47922 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48473 a!2862)))))

(declare-fun b!1479113 () Bool)

(declare-fun e!829708 () Bool)

(assert (=> b!1479113 (= e!829706 e!829708)))

(declare-fun res!1005154 () Bool)

(assert (=> b!1479113 (=> res!1005154 e!829708)))

(assert (=> b!1479113 (= res!1005154 (or (and (= (select (arr!47922 a!2862) index!646) (select (store (arr!47922 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47922 a!2862) index!646) (select (arr!47922 a!2862) j!93))) (not (= (select (arr!47922 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479114 () Bool)

(declare-fun res!1005155 () Bool)

(assert (=> b!1479114 (=> (not res!1005155) (not e!829704))))

(declare-fun e!829707 () Bool)

(assert (=> b!1479114 (= res!1005155 e!829707)))

(declare-fun c!136502 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479114 (= c!136502 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479115 () Bool)

(declare-fun e!829702 () Bool)

(assert (=> b!1479115 (= e!829708 e!829702)))

(declare-fun res!1005146 () Bool)

(assert (=> b!1479115 (=> (not res!1005146) (not e!829702))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99295 (_ BitVec 32)) SeekEntryResult!12185)

(assert (=> b!1479115 (= res!1005146 (= lt!645870 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47922 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479116 () Bool)

(declare-fun res!1005159 () Bool)

(assert (=> b!1479116 (=> (not res!1005159) (not e!829705))))

(assert (=> b!1479116 (= res!1005159 (validKeyInArray!0 (select (arr!47922 a!2862) j!93)))))

(declare-fun b!1479117 () Bool)

(assert (=> b!1479117 (= e!829701 e!829704)))

(declare-fun res!1005153 () Bool)

(assert (=> b!1479117 (=> (not res!1005153) (not e!829704))))

(declare-fun lt!645874 () SeekEntryResult!12185)

(assert (=> b!1479117 (= res!1005153 (= lt!645874 (Intermediate!12185 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645873 () (_ BitVec 64))

(assert (=> b!1479117 (= lt!645874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645873 mask!2687) lt!645873 lt!645869 mask!2687))))

(assert (=> b!1479117 (= lt!645873 (select (store (arr!47922 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479118 () Bool)

(assert (=> b!1479118 (= e!829707 (= lt!645874 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645873 lt!645869 mask!2687)))))

(declare-fun b!1479119 () Bool)

(declare-fun res!1005151 () Bool)

(assert (=> b!1479119 (=> (not res!1005151) (not e!829705))))

(assert (=> b!1479119 (= res!1005151 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479120 () Bool)

(declare-fun res!1005156 () Bool)

(assert (=> b!1479120 (=> (not res!1005156) (not e!829705))))

(assert (=> b!1479120 (= res!1005156 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48473 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48473 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48473 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479121 () Bool)

(assert (=> b!1479121 (= e!829707 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645873 lt!645869 mask!2687) (seekEntryOrOpen!0 lt!645873 lt!645869 mask!2687)))))

(declare-fun b!1479107 () Bool)

(assert (=> b!1479107 (= e!829702 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun res!1005158 () Bool)

(assert (=> start!126272 (=> (not res!1005158) (not e!829705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126272 (= res!1005158 (validMask!0 mask!2687))))

(assert (=> start!126272 e!829705))

(assert (=> start!126272 true))

(declare-fun array_inv!36867 (array!99295) Bool)

(assert (=> start!126272 (array_inv!36867 a!2862)))

(assert (= (and start!126272 res!1005158) b!1479108))

(assert (= (and b!1479108 res!1005145) b!1479110))

(assert (= (and b!1479110 res!1005149) b!1479116))

(assert (= (and b!1479116 res!1005159) b!1479119))

(assert (= (and b!1479119 res!1005151) b!1479111))

(assert (= (and b!1479111 res!1005152) b!1479120))

(assert (= (and b!1479120 res!1005156) b!1479112))

(assert (= (and b!1479112 res!1005157) b!1479106))

(assert (= (and b!1479106 res!1005147) b!1479105))

(assert (= (and b!1479105 res!1005148) b!1479117))

(assert (= (and b!1479117 res!1005153) b!1479114))

(assert (= (and b!1479114 c!136502) b!1479118))

(assert (= (and b!1479114 (not c!136502)) b!1479121))

(assert (= (and b!1479114 res!1005155) b!1479109))

(assert (= (and b!1479109 res!1005150) b!1479104))

(assert (= (and b!1479104 res!1005144) b!1479113))

(assert (= (and b!1479113 (not res!1005154)) b!1479115))

(assert (= (and b!1479115 res!1005146) b!1479107))

(declare-fun m!1365047 () Bool)

(assert (=> b!1479113 m!1365047))

(declare-fun m!1365049 () Bool)

(assert (=> b!1479113 m!1365049))

(declare-fun m!1365051 () Bool)

(assert (=> b!1479113 m!1365051))

(declare-fun m!1365053 () Bool)

(assert (=> b!1479113 m!1365053))

(assert (=> b!1479105 m!1365053))

(assert (=> b!1479105 m!1365053))

(declare-fun m!1365055 () Bool)

(assert (=> b!1479105 m!1365055))

(declare-fun m!1365057 () Bool)

(assert (=> b!1479104 m!1365057))

(declare-fun m!1365059 () Bool)

(assert (=> b!1479104 m!1365059))

(assert (=> b!1479104 m!1365053))

(declare-fun m!1365061 () Bool)

(assert (=> b!1479104 m!1365061))

(declare-fun m!1365063 () Bool)

(assert (=> b!1479104 m!1365063))

(assert (=> b!1479104 m!1365053))

(declare-fun m!1365065 () Bool)

(assert (=> b!1479111 m!1365065))

(assert (=> b!1479112 m!1365049))

(declare-fun m!1365067 () Bool)

(assert (=> b!1479112 m!1365067))

(declare-fun m!1365069 () Bool)

(assert (=> b!1479119 m!1365069))

(declare-fun m!1365071 () Bool)

(assert (=> start!126272 m!1365071))

(declare-fun m!1365073 () Bool)

(assert (=> start!126272 m!1365073))

(assert (=> b!1479106 m!1365053))

(assert (=> b!1479106 m!1365053))

(declare-fun m!1365075 () Bool)

(assert (=> b!1479106 m!1365075))

(assert (=> b!1479106 m!1365075))

(assert (=> b!1479106 m!1365053))

(declare-fun m!1365077 () Bool)

(assert (=> b!1479106 m!1365077))

(declare-fun m!1365079 () Bool)

(assert (=> b!1479110 m!1365079))

(assert (=> b!1479110 m!1365079))

(declare-fun m!1365081 () Bool)

(assert (=> b!1479110 m!1365081))

(assert (=> b!1479116 m!1365053))

(assert (=> b!1479116 m!1365053))

(declare-fun m!1365083 () Bool)

(assert (=> b!1479116 m!1365083))

(declare-fun m!1365085 () Bool)

(assert (=> b!1479121 m!1365085))

(declare-fun m!1365087 () Bool)

(assert (=> b!1479121 m!1365087))

(declare-fun m!1365089 () Bool)

(assert (=> b!1479118 m!1365089))

(assert (=> b!1479115 m!1365053))

(assert (=> b!1479115 m!1365053))

(declare-fun m!1365091 () Bool)

(assert (=> b!1479115 m!1365091))

(declare-fun m!1365093 () Bool)

(assert (=> b!1479117 m!1365093))

(assert (=> b!1479117 m!1365093))

(declare-fun m!1365095 () Bool)

(assert (=> b!1479117 m!1365095))

(assert (=> b!1479117 m!1365049))

(declare-fun m!1365097 () Bool)

(assert (=> b!1479117 m!1365097))

(push 1)

(assert (not b!1479121))

(assert (not b!1479119))

(assert (not b!1479105))

(assert (not b!1479116))

(assert (not b!1479117))

(assert (not b!1479115))

(assert (not b!1479104))

(assert (not start!126272))

(assert (not b!1479106))

(assert (not b!1479110))

(assert (not b!1479111))

(assert (not b!1479118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

