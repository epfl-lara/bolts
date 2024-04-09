; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130296 () Bool)

(assert start!130296)

(declare-fun b!1529189 () Bool)

(declare-fun res!1047040 () Bool)

(declare-fun e!852236 () Bool)

(assert (=> b!1529189 (=> (not res!1047040) (not e!852236))))

(declare-datatypes ((array!101573 0))(
  ( (array!101574 (arr!49007 (Array (_ BitVec 32) (_ BitVec 64))) (size!49558 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101573)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1529189 (= res!1047040 (validKeyInArray!0 (select (arr!49007 a!2804) j!70)))))

(declare-fun b!1529190 () Bool)

(declare-fun res!1047035 () Bool)

(declare-fun e!852234 () Bool)

(assert (=> b!1529190 (=> (not res!1047035) (not e!852234))))

(declare-datatypes ((SeekEntryResult!13193 0))(
  ( (MissingZero!13193 (index!55166 (_ BitVec 32))) (Found!13193 (index!55167 (_ BitVec 32))) (Intermediate!13193 (undefined!14005 Bool) (index!55168 (_ BitVec 32)) (x!136859 (_ BitVec 32))) (Undefined!13193) (MissingVacant!13193 (index!55169 (_ BitVec 32))) )
))
(declare-fun lt!662315 () SeekEntryResult!13193)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101573 (_ BitVec 32)) SeekEntryResult!13193)

(assert (=> b!1529190 (= res!1047035 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49007 a!2804) j!70) a!2804 mask!2512) lt!662315))))

(declare-fun b!1529191 () Bool)

(declare-fun res!1047041 () Bool)

(assert (=> b!1529191 (=> (not res!1047041) (not e!852234))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!662314 () SeekEntryResult!13193)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529191 (= res!1047041 (= lt!662314 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49007 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49007 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101574 (store (arr!49007 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49558 a!2804)) mask!2512)))))

(declare-fun b!1529192 () Bool)

(declare-fun res!1047036 () Bool)

(assert (=> b!1529192 (=> (not res!1047036) (not e!852236))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101573 (_ BitVec 32)) Bool)

(assert (=> b!1529192 (= res!1047036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1529193 () Bool)

(declare-fun res!1047037 () Bool)

(assert (=> b!1529193 (=> (not res!1047037) (not e!852236))))

(declare-datatypes ((List!35670 0))(
  ( (Nil!35667) (Cons!35666 (h!37103 (_ BitVec 64)) (t!50371 List!35670)) )
))
(declare-fun arrayNoDuplicates!0 (array!101573 (_ BitVec 32) List!35670) Bool)

(assert (=> b!1529193 (= res!1047037 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35667))))

(declare-fun b!1529194 () Bool)

(declare-fun e!852232 () Bool)

(assert (=> b!1529194 (= e!852232 true)))

(declare-fun lt!662317 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1529194 (= lt!662317 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun res!1047039 () Bool)

(assert (=> start!130296 (=> (not res!1047039) (not e!852236))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130296 (= res!1047039 (validMask!0 mask!2512))))

(assert (=> start!130296 e!852236))

(assert (=> start!130296 true))

(declare-fun array_inv!37952 (array!101573) Bool)

(assert (=> start!130296 (array_inv!37952 a!2804)))

(declare-fun b!1529195 () Bool)

(assert (=> b!1529195 (= e!852234 (not e!852232))))

(declare-fun res!1047044 () Bool)

(assert (=> b!1529195 (=> res!1047044 e!852232)))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1529195 (= res!1047044 (or (not (= (select (arr!49007 a!2804) j!70) (select (store (arr!49007 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852235 () Bool)

(assert (=> b!1529195 e!852235))

(declare-fun res!1047038 () Bool)

(assert (=> b!1529195 (=> (not res!1047038) (not e!852235))))

(assert (=> b!1529195 (= res!1047038 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51126 0))(
  ( (Unit!51127) )
))
(declare-fun lt!662316 () Unit!51126)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101573 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51126)

(assert (=> b!1529195 (= lt!662316 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1529196 () Bool)

(assert (=> b!1529196 (= e!852236 e!852234)))

(declare-fun res!1047034 () Bool)

(assert (=> b!1529196 (=> (not res!1047034) (not e!852234))))

(assert (=> b!1529196 (= res!1047034 (= lt!662314 lt!662315))))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1529196 (= lt!662315 (Intermediate!13193 false resIndex!21 resX!21))))

(assert (=> b!1529196 (= lt!662314 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49007 a!2804) j!70) mask!2512) (select (arr!49007 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1529197 () Bool)

(declare-fun res!1047045 () Bool)

(assert (=> b!1529197 (=> (not res!1047045) (not e!852236))))

(assert (=> b!1529197 (= res!1047045 (validKeyInArray!0 (select (arr!49007 a!2804) i!961)))))

(declare-fun b!1529198 () Bool)

(declare-fun res!1047043 () Bool)

(assert (=> b!1529198 (=> (not res!1047043) (not e!852236))))

(assert (=> b!1529198 (= res!1047043 (and (= (size!49558 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49558 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49558 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1529199 () Bool)

(declare-fun res!1047042 () Bool)

(assert (=> b!1529199 (=> (not res!1047042) (not e!852236))))

(assert (=> b!1529199 (= res!1047042 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49558 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49558 a!2804))))))

(declare-fun b!1529200 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101573 (_ BitVec 32)) SeekEntryResult!13193)

(assert (=> b!1529200 (= e!852235 (= (seekEntry!0 (select (arr!49007 a!2804) j!70) a!2804 mask!2512) (Found!13193 j!70)))))

(assert (= (and start!130296 res!1047039) b!1529198))

(assert (= (and b!1529198 res!1047043) b!1529197))

(assert (= (and b!1529197 res!1047045) b!1529189))

(assert (= (and b!1529189 res!1047040) b!1529192))

(assert (= (and b!1529192 res!1047036) b!1529193))

(assert (= (and b!1529193 res!1047037) b!1529199))

(assert (= (and b!1529199 res!1047042) b!1529196))

(assert (= (and b!1529196 res!1047034) b!1529190))

(assert (= (and b!1529190 res!1047035) b!1529191))

(assert (= (and b!1529191 res!1047041) b!1529195))

(assert (= (and b!1529195 res!1047038) b!1529200))

(assert (= (and b!1529195 (not res!1047044)) b!1529194))

(declare-fun m!1412177 () Bool)

(assert (=> b!1529195 m!1412177))

(declare-fun m!1412179 () Bool)

(assert (=> b!1529195 m!1412179))

(declare-fun m!1412181 () Bool)

(assert (=> b!1529195 m!1412181))

(declare-fun m!1412183 () Bool)

(assert (=> b!1529195 m!1412183))

(declare-fun m!1412185 () Bool)

(assert (=> b!1529195 m!1412185))

(assert (=> b!1529191 m!1412181))

(assert (=> b!1529191 m!1412183))

(assert (=> b!1529191 m!1412183))

(declare-fun m!1412187 () Bool)

(assert (=> b!1529191 m!1412187))

(assert (=> b!1529191 m!1412187))

(assert (=> b!1529191 m!1412183))

(declare-fun m!1412189 () Bool)

(assert (=> b!1529191 m!1412189))

(assert (=> b!1529200 m!1412177))

(assert (=> b!1529200 m!1412177))

(declare-fun m!1412191 () Bool)

(assert (=> b!1529200 m!1412191))

(assert (=> b!1529196 m!1412177))

(assert (=> b!1529196 m!1412177))

(declare-fun m!1412193 () Bool)

(assert (=> b!1529196 m!1412193))

(assert (=> b!1529196 m!1412193))

(assert (=> b!1529196 m!1412177))

(declare-fun m!1412195 () Bool)

(assert (=> b!1529196 m!1412195))

(declare-fun m!1412197 () Bool)

(assert (=> b!1529194 m!1412197))

(declare-fun m!1412199 () Bool)

(assert (=> b!1529192 m!1412199))

(declare-fun m!1412201 () Bool)

(assert (=> start!130296 m!1412201))

(declare-fun m!1412203 () Bool)

(assert (=> start!130296 m!1412203))

(assert (=> b!1529190 m!1412177))

(assert (=> b!1529190 m!1412177))

(declare-fun m!1412205 () Bool)

(assert (=> b!1529190 m!1412205))

(declare-fun m!1412207 () Bool)

(assert (=> b!1529193 m!1412207))

(assert (=> b!1529189 m!1412177))

(assert (=> b!1529189 m!1412177))

(declare-fun m!1412209 () Bool)

(assert (=> b!1529189 m!1412209))

(declare-fun m!1412211 () Bool)

(assert (=> b!1529197 m!1412211))

(assert (=> b!1529197 m!1412211))

(declare-fun m!1412213 () Bool)

(assert (=> b!1529197 m!1412213))

(check-sat (not b!1529193) (not b!1529192) (not b!1529189) (not b!1529194) (not b!1529197) (not b!1529191) (not b!1529190) (not b!1529196) (not start!130296) (not b!1529200) (not b!1529195))
(check-sat)
