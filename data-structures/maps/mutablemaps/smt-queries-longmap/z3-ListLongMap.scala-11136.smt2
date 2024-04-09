; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130146 () Bool)

(assert start!130146)

(declare-fun b!1527153 () Bool)

(declare-fun res!1045331 () Bool)

(declare-fun e!851209 () Bool)

(assert (=> b!1527153 (=> (not res!1045331) (not e!851209))))

(declare-datatypes ((array!101486 0))(
  ( (array!101487 (arr!48965 (Array (_ BitVec 32) (_ BitVec 64))) (size!49516 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101486)

(declare-datatypes ((List!35628 0))(
  ( (Nil!35625) (Cons!35624 (h!37058 (_ BitVec 64)) (t!50329 List!35628)) )
))
(declare-fun arrayNoDuplicates!0 (array!101486 (_ BitVec 32) List!35628) Bool)

(assert (=> b!1527153 (= res!1045331 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35625))))

(declare-fun b!1527154 () Bool)

(declare-fun e!851204 () Bool)

(declare-fun e!851208 () Bool)

(assert (=> b!1527154 (= e!851204 e!851208)))

(declare-fun res!1045326 () Bool)

(assert (=> b!1527154 (=> (not res!1045326) (not e!851208))))

(declare-fun lt!661296 () array!101486)

(declare-datatypes ((SeekEntryResult!13151 0))(
  ( (MissingZero!13151 (index!54998 (_ BitVec 32))) (Found!13151 (index!54999 (_ BitVec 32))) (Intermediate!13151 (undefined!13963 Bool) (index!55000 (_ BitVec 32)) (x!136696 (_ BitVec 32))) (Undefined!13151) (MissingVacant!13151 (index!55001 (_ BitVec 32))) )
))
(declare-fun lt!661298 () SeekEntryResult!13151)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!661299 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101486 (_ BitVec 32)) SeekEntryResult!13151)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1527154 (= res!1045326 (= lt!661298 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!661299 mask!2512) lt!661299 lt!661296 mask!2512)))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1527154 (= lt!661299 (select (store (arr!48965 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1527154 (= lt!661296 (array!101487 (store (arr!48965 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49516 a!2804)))))

(declare-fun b!1527156 () Bool)

(assert (=> b!1527156 (= e!851208 (not true))))

(declare-fun e!851210 () Bool)

(assert (=> b!1527156 e!851210))

(declare-fun res!1045328 () Bool)

(assert (=> b!1527156 (=> (not res!1045328) (not e!851210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101486 (_ BitVec 32)) Bool)

(assert (=> b!1527156 (= res!1045328 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51042 0))(
  ( (Unit!51043) )
))
(declare-fun lt!661300 () Unit!51042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101486 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51042)

(assert (=> b!1527156 (= lt!661300 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1527157 () Bool)

(declare-fun res!1045333 () Bool)

(assert (=> b!1527157 (=> (not res!1045333) (not e!851209))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1527157 (= res!1045333 (validKeyInArray!0 (select (arr!48965 a!2804) i!961)))))

(declare-fun b!1527158 () Bool)

(declare-fun res!1045329 () Bool)

(assert (=> b!1527158 (=> (not res!1045329) (not e!851209))))

(assert (=> b!1527158 (= res!1045329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1527159 () Bool)

(declare-fun e!851207 () Bool)

(declare-fun e!851206 () Bool)

(assert (=> b!1527159 (= e!851207 e!851206)))

(declare-fun res!1045336 () Bool)

(assert (=> b!1527159 (=> (not res!1045336) (not e!851206))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101486 (_ BitVec 32)) SeekEntryResult!13151)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101486 (_ BitVec 32)) SeekEntryResult!13151)

(assert (=> b!1527159 (= res!1045336 (= (seekEntryOrOpen!0 (select (arr!48965 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48965 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1527160 () Bool)

(assert (=> b!1527160 (= e!851209 e!851204)))

(declare-fun res!1045325 () Bool)

(assert (=> b!1527160 (=> (not res!1045325) (not e!851204))))

(declare-fun lt!661297 () SeekEntryResult!13151)

(assert (=> b!1527160 (= res!1045325 (= lt!661298 lt!661297))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1527160 (= lt!661297 (Intermediate!13151 false resIndex!21 resX!21))))

(assert (=> b!1527160 (= lt!661298 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48965 a!2804) j!70) mask!2512) (select (arr!48965 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1527161 () Bool)

(declare-fun res!1045335 () Bool)

(assert (=> b!1527161 (=> (not res!1045335) (not e!851204))))

(assert (=> b!1527161 (= res!1045335 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48965 a!2804) j!70) a!2804 mask!2512) lt!661297))))

(declare-fun b!1527162 () Bool)

(assert (=> b!1527162 (= e!851206 (= (seekEntryOrOpen!0 lt!661299 lt!661296 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!661299 lt!661296 mask!2512)))))

(declare-fun res!1045338 () Bool)

(assert (=> start!130146 (=> (not res!1045338) (not e!851209))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130146 (= res!1045338 (validMask!0 mask!2512))))

(assert (=> start!130146 e!851209))

(assert (=> start!130146 true))

(declare-fun array_inv!37910 (array!101486) Bool)

(assert (=> start!130146 (array_inv!37910 a!2804)))

(declare-fun b!1527155 () Bool)

(declare-fun res!1045327 () Bool)

(assert (=> b!1527155 (=> (not res!1045327) (not e!851209))))

(assert (=> b!1527155 (= res!1045327 (and (= (size!49516 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49516 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49516 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1527163 () Bool)

(assert (=> b!1527163 (= e!851210 e!851207)))

(declare-fun res!1045330 () Bool)

(assert (=> b!1527163 (=> res!1045330 e!851207)))

(assert (=> b!1527163 (= res!1045330 (or (not (= (select (arr!48965 a!2804) j!70) lt!661299)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48965 a!2804) index!487) (select (arr!48965 a!2804) j!70)) (not (= (select (arr!48965 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1527164 () Bool)

(declare-fun res!1045332 () Bool)

(assert (=> b!1527164 (=> (not res!1045332) (not e!851209))))

(assert (=> b!1527164 (= res!1045332 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49516 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49516 a!2804))))))

(declare-fun b!1527165 () Bool)

(declare-fun res!1045334 () Bool)

(assert (=> b!1527165 (=> (not res!1045334) (not e!851209))))

(assert (=> b!1527165 (= res!1045334 (validKeyInArray!0 (select (arr!48965 a!2804) j!70)))))

(declare-fun b!1527166 () Bool)

(declare-fun res!1045337 () Bool)

(assert (=> b!1527166 (=> (not res!1045337) (not e!851210))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101486 (_ BitVec 32)) SeekEntryResult!13151)

(assert (=> b!1527166 (= res!1045337 (= (seekEntry!0 (select (arr!48965 a!2804) j!70) a!2804 mask!2512) (Found!13151 j!70)))))

(assert (= (and start!130146 res!1045338) b!1527155))

(assert (= (and b!1527155 res!1045327) b!1527157))

(assert (= (and b!1527157 res!1045333) b!1527165))

(assert (= (and b!1527165 res!1045334) b!1527158))

(assert (= (and b!1527158 res!1045329) b!1527153))

(assert (= (and b!1527153 res!1045331) b!1527164))

(assert (= (and b!1527164 res!1045332) b!1527160))

(assert (= (and b!1527160 res!1045325) b!1527161))

(assert (= (and b!1527161 res!1045335) b!1527154))

(assert (= (and b!1527154 res!1045326) b!1527156))

(assert (= (and b!1527156 res!1045328) b!1527166))

(assert (= (and b!1527166 res!1045337) b!1527163))

(assert (= (and b!1527163 (not res!1045330)) b!1527159))

(assert (= (and b!1527159 res!1045336) b!1527162))

(declare-fun m!1410085 () Bool)

(assert (=> b!1527166 m!1410085))

(assert (=> b!1527166 m!1410085))

(declare-fun m!1410087 () Bool)

(assert (=> b!1527166 m!1410087))

(assert (=> b!1527165 m!1410085))

(assert (=> b!1527165 m!1410085))

(declare-fun m!1410089 () Bool)

(assert (=> b!1527165 m!1410089))

(assert (=> b!1527159 m!1410085))

(assert (=> b!1527159 m!1410085))

(declare-fun m!1410091 () Bool)

(assert (=> b!1527159 m!1410091))

(assert (=> b!1527159 m!1410085))

(declare-fun m!1410093 () Bool)

(assert (=> b!1527159 m!1410093))

(declare-fun m!1410095 () Bool)

(assert (=> b!1527154 m!1410095))

(assert (=> b!1527154 m!1410095))

(declare-fun m!1410097 () Bool)

(assert (=> b!1527154 m!1410097))

(declare-fun m!1410099 () Bool)

(assert (=> b!1527154 m!1410099))

(declare-fun m!1410101 () Bool)

(assert (=> b!1527154 m!1410101))

(declare-fun m!1410103 () Bool)

(assert (=> b!1527156 m!1410103))

(declare-fun m!1410105 () Bool)

(assert (=> b!1527156 m!1410105))

(declare-fun m!1410107 () Bool)

(assert (=> b!1527153 m!1410107))

(assert (=> b!1527160 m!1410085))

(assert (=> b!1527160 m!1410085))

(declare-fun m!1410109 () Bool)

(assert (=> b!1527160 m!1410109))

(assert (=> b!1527160 m!1410109))

(assert (=> b!1527160 m!1410085))

(declare-fun m!1410111 () Bool)

(assert (=> b!1527160 m!1410111))

(declare-fun m!1410113 () Bool)

(assert (=> b!1527158 m!1410113))

(declare-fun m!1410115 () Bool)

(assert (=> b!1527157 m!1410115))

(assert (=> b!1527157 m!1410115))

(declare-fun m!1410117 () Bool)

(assert (=> b!1527157 m!1410117))

(declare-fun m!1410119 () Bool)

(assert (=> b!1527162 m!1410119))

(declare-fun m!1410121 () Bool)

(assert (=> b!1527162 m!1410121))

(assert (=> b!1527161 m!1410085))

(assert (=> b!1527161 m!1410085))

(declare-fun m!1410123 () Bool)

(assert (=> b!1527161 m!1410123))

(declare-fun m!1410125 () Bool)

(assert (=> start!130146 m!1410125))

(declare-fun m!1410127 () Bool)

(assert (=> start!130146 m!1410127))

(assert (=> b!1527163 m!1410085))

(declare-fun m!1410129 () Bool)

(assert (=> b!1527163 m!1410129))

(check-sat (not b!1527154) (not b!1527158) (not b!1527156) (not b!1527159) (not start!130146) (not b!1527162) (not b!1527157) (not b!1527160) (not b!1527165) (not b!1527153) (not b!1527166) (not b!1527161))
(check-sat)
