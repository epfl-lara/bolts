; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129120 () Bool)

(assert start!129120)

(declare-fun res!1034158 () Bool)

(declare-fun e!845069 () Bool)

(assert (=> start!129120 (=> (not res!1034158) (not e!845069))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129120 (= res!1034158 (validMask!0 mask!2512))))

(assert (=> start!129120 e!845069))

(assert (=> start!129120 true))

(declare-datatypes ((array!100889 0))(
  ( (array!100890 (arr!48677 (Array (_ BitVec 32) (_ BitVec 64))) (size!49228 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100889)

(declare-fun array_inv!37622 (array!100889) Bool)

(assert (=> start!129120 (array_inv!37622 a!2804)))

(declare-fun b!1514172 () Bool)

(declare-fun res!1034147 () Bool)

(assert (=> b!1514172 (=> (not res!1034147) (not e!845069))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514172 (= res!1034147 (validKeyInArray!0 (select (arr!48677 a!2804) j!70)))))

(declare-fun b!1514173 () Bool)

(declare-fun res!1034148 () Bool)

(declare-fun e!845066 () Bool)

(assert (=> b!1514173 (=> (not res!1034148) (not e!845066))))

(declare-datatypes ((SeekEntryResult!12869 0))(
  ( (MissingZero!12869 (index!53870 (_ BitVec 32))) (Found!12869 (index!53871 (_ BitVec 32))) (Intermediate!12869 (undefined!13681 Bool) (index!53872 (_ BitVec 32)) (x!135592 (_ BitVec 32))) (Undefined!12869) (MissingVacant!12869 (index!53873 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100889 (_ BitVec 32)) SeekEntryResult!12869)

(assert (=> b!1514173 (= res!1034148 (= (seekEntry!0 (select (arr!48677 a!2804) j!70) a!2804 mask!2512) (Found!12869 j!70)))))

(declare-fun b!1514174 () Bool)

(declare-fun e!845067 () Bool)

(assert (=> b!1514174 (= e!845066 e!845067)))

(declare-fun res!1034150 () Bool)

(assert (=> b!1514174 (=> res!1034150 e!845067)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun lt!656214 () (_ BitVec 64))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514174 (= res!1034150 (or (not (= (select (arr!48677 a!2804) j!70) lt!656214)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48677 a!2804) index!487) (select (arr!48677 a!2804) j!70)) (not (= (select (arr!48677 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514175 () Bool)

(declare-fun e!845068 () Bool)

(declare-fun lt!656215 () array!100889)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100889 (_ BitVec 32)) SeekEntryResult!12869)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100889 (_ BitVec 32)) SeekEntryResult!12869)

(assert (=> b!1514175 (= e!845068 (= (seekEntryOrOpen!0 lt!656214 lt!656215 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656214 lt!656215 mask!2512)))))

(declare-fun b!1514176 () Bool)

(declare-fun res!1034156 () Bool)

(assert (=> b!1514176 (=> (not res!1034156) (not e!845069))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514176 (= res!1034156 (and (= (size!49228 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49228 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49228 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514177 () Bool)

(declare-fun res!1034149 () Bool)

(assert (=> b!1514177 (=> (not res!1034149) (not e!845069))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100889 (_ BitVec 32)) Bool)

(assert (=> b!1514177 (= res!1034149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514178 () Bool)

(declare-fun res!1034153 () Bool)

(assert (=> b!1514178 (=> (not res!1034153) (not e!845069))))

(declare-datatypes ((List!35340 0))(
  ( (Nil!35337) (Cons!35336 (h!36749 (_ BitVec 64)) (t!50041 List!35340)) )
))
(declare-fun arrayNoDuplicates!0 (array!100889 (_ BitVec 32) List!35340) Bool)

(assert (=> b!1514178 (= res!1034153 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35337))))

(declare-fun b!1514179 () Bool)

(declare-fun e!845064 () Bool)

(declare-fun e!845063 () Bool)

(assert (=> b!1514179 (= e!845064 e!845063)))

(declare-fun res!1034152 () Bool)

(assert (=> b!1514179 (=> (not res!1034152) (not e!845063))))

(declare-fun lt!656218 () SeekEntryResult!12869)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100889 (_ BitVec 32)) SeekEntryResult!12869)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514179 (= res!1034152 (= lt!656218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656214 mask!2512) lt!656214 lt!656215 mask!2512)))))

(assert (=> b!1514179 (= lt!656214 (select (store (arr!48677 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514179 (= lt!656215 (array!100890 (store (arr!48677 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49228 a!2804)))))

(declare-fun b!1514180 () Bool)

(assert (=> b!1514180 (= e!845069 e!845064)))

(declare-fun res!1034160 () Bool)

(assert (=> b!1514180 (=> (not res!1034160) (not e!845064))))

(declare-fun lt!656217 () SeekEntryResult!12869)

(assert (=> b!1514180 (= res!1034160 (= lt!656218 lt!656217))))

(assert (=> b!1514180 (= lt!656217 (Intermediate!12869 false resIndex!21 resX!21))))

(assert (=> b!1514180 (= lt!656218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48677 a!2804) j!70) mask!2512) (select (arr!48677 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514181 () Bool)

(declare-fun res!1034157 () Bool)

(assert (=> b!1514181 (=> (not res!1034157) (not e!845069))))

(assert (=> b!1514181 (= res!1034157 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49228 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49228 a!2804))))))

(declare-fun b!1514182 () Bool)

(assert (=> b!1514182 (= e!845063 (not true))))

(assert (=> b!1514182 e!845066))

(declare-fun res!1034155 () Bool)

(assert (=> b!1514182 (=> (not res!1034155) (not e!845066))))

(assert (=> b!1514182 (= res!1034155 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50562 0))(
  ( (Unit!50563) )
))
(declare-fun lt!656216 () Unit!50562)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100889 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50562)

(assert (=> b!1514182 (= lt!656216 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514183 () Bool)

(declare-fun res!1034151 () Bool)

(assert (=> b!1514183 (=> (not res!1034151) (not e!845064))))

(assert (=> b!1514183 (= res!1034151 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48677 a!2804) j!70) a!2804 mask!2512) lt!656217))))

(declare-fun b!1514184 () Bool)

(assert (=> b!1514184 (= e!845067 e!845068)))

(declare-fun res!1034159 () Bool)

(assert (=> b!1514184 (=> (not res!1034159) (not e!845068))))

(assert (=> b!1514184 (= res!1034159 (= (seekEntryOrOpen!0 (select (arr!48677 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48677 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514185 () Bool)

(declare-fun res!1034154 () Bool)

(assert (=> b!1514185 (=> (not res!1034154) (not e!845069))))

(assert (=> b!1514185 (= res!1034154 (validKeyInArray!0 (select (arr!48677 a!2804) i!961)))))

(assert (= (and start!129120 res!1034158) b!1514176))

(assert (= (and b!1514176 res!1034156) b!1514185))

(assert (= (and b!1514185 res!1034154) b!1514172))

(assert (= (and b!1514172 res!1034147) b!1514177))

(assert (= (and b!1514177 res!1034149) b!1514178))

(assert (= (and b!1514178 res!1034153) b!1514181))

(assert (= (and b!1514181 res!1034157) b!1514180))

(assert (= (and b!1514180 res!1034160) b!1514183))

(assert (= (and b!1514183 res!1034151) b!1514179))

(assert (= (and b!1514179 res!1034152) b!1514182))

(assert (= (and b!1514182 res!1034155) b!1514173))

(assert (= (and b!1514173 res!1034148) b!1514174))

(assert (= (and b!1514174 (not res!1034150)) b!1514184))

(assert (= (and b!1514184 res!1034159) b!1514175))

(declare-fun m!1397161 () Bool)

(assert (=> b!1514174 m!1397161))

(declare-fun m!1397163 () Bool)

(assert (=> b!1514174 m!1397163))

(declare-fun m!1397165 () Bool)

(assert (=> b!1514178 m!1397165))

(declare-fun m!1397167 () Bool)

(assert (=> b!1514175 m!1397167))

(declare-fun m!1397169 () Bool)

(assert (=> b!1514175 m!1397169))

(declare-fun m!1397171 () Bool)

(assert (=> b!1514179 m!1397171))

(assert (=> b!1514179 m!1397171))

(declare-fun m!1397173 () Bool)

(assert (=> b!1514179 m!1397173))

(declare-fun m!1397175 () Bool)

(assert (=> b!1514179 m!1397175))

(declare-fun m!1397177 () Bool)

(assert (=> b!1514179 m!1397177))

(assert (=> b!1514183 m!1397161))

(assert (=> b!1514183 m!1397161))

(declare-fun m!1397179 () Bool)

(assert (=> b!1514183 m!1397179))

(declare-fun m!1397181 () Bool)

(assert (=> start!129120 m!1397181))

(declare-fun m!1397183 () Bool)

(assert (=> start!129120 m!1397183))

(assert (=> b!1514180 m!1397161))

(assert (=> b!1514180 m!1397161))

(declare-fun m!1397185 () Bool)

(assert (=> b!1514180 m!1397185))

(assert (=> b!1514180 m!1397185))

(assert (=> b!1514180 m!1397161))

(declare-fun m!1397187 () Bool)

(assert (=> b!1514180 m!1397187))

(declare-fun m!1397189 () Bool)

(assert (=> b!1514182 m!1397189))

(declare-fun m!1397191 () Bool)

(assert (=> b!1514182 m!1397191))

(assert (=> b!1514184 m!1397161))

(assert (=> b!1514184 m!1397161))

(declare-fun m!1397193 () Bool)

(assert (=> b!1514184 m!1397193))

(assert (=> b!1514184 m!1397161))

(declare-fun m!1397195 () Bool)

(assert (=> b!1514184 m!1397195))

(assert (=> b!1514173 m!1397161))

(assert (=> b!1514173 m!1397161))

(declare-fun m!1397197 () Bool)

(assert (=> b!1514173 m!1397197))

(assert (=> b!1514172 m!1397161))

(assert (=> b!1514172 m!1397161))

(declare-fun m!1397199 () Bool)

(assert (=> b!1514172 m!1397199))

(declare-fun m!1397201 () Bool)

(assert (=> b!1514177 m!1397201))

(declare-fun m!1397203 () Bool)

(assert (=> b!1514185 m!1397203))

(assert (=> b!1514185 m!1397203))

(declare-fun m!1397205 () Bool)

(assert (=> b!1514185 m!1397205))

(check-sat (not b!1514177) (not b!1514178) (not b!1514180) (not b!1514185) (not b!1514179) (not b!1514182) (not b!1514183) (not b!1514184) (not b!1514175) (not b!1514173) (not start!129120) (not b!1514172))
(check-sat)
