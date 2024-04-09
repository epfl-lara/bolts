; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129078 () Bool)

(assert start!129078)

(declare-fun b!1513290 () Bool)

(declare-fun e!844627 () Bool)

(declare-fun e!844623 () Bool)

(assert (=> b!1513290 (= e!844627 e!844623)))

(declare-fun res!1033270 () Bool)

(assert (=> b!1513290 (=> (not res!1033270) (not e!844623))))

(declare-datatypes ((array!100847 0))(
  ( (array!100848 (arr!48656 (Array (_ BitVec 32) (_ BitVec 64))) (size!49207 (_ BitVec 32))) )
))
(declare-fun lt!655901 () array!100847)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!655903 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12848 0))(
  ( (MissingZero!12848 (index!53786 (_ BitVec 32))) (Found!12848 (index!53787 (_ BitVec 32))) (Intermediate!12848 (undefined!13660 Bool) (index!53788 (_ BitVec 32)) (x!135515 (_ BitVec 32))) (Undefined!12848) (MissingVacant!12848 (index!53789 (_ BitVec 32))) )
))
(declare-fun lt!655902 () SeekEntryResult!12848)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100847 (_ BitVec 32)) SeekEntryResult!12848)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513290 (= res!1033270 (= lt!655902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655903 mask!2512) lt!655903 lt!655901 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!100847)

(assert (=> b!1513290 (= lt!655903 (select (store (arr!48656 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513290 (= lt!655901 (array!100848 (store (arr!48656 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49207 a!2804)))))

(declare-fun b!1513291 () Bool)

(declare-fun e!844622 () Bool)

(declare-fun e!844626 () Bool)

(assert (=> b!1513291 (= e!844622 e!844626)))

(declare-fun res!1033271 () Bool)

(assert (=> b!1513291 (=> res!1033271 e!844626)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1513291 (= res!1033271 (or (not (= (select (arr!48656 a!2804) j!70) lt!655903)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48656 a!2804) index!487) (select (arr!48656 a!2804) j!70)) (not (= (select (arr!48656 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513292 () Bool)

(declare-fun res!1033277 () Bool)

(declare-fun e!844628 () Bool)

(assert (=> b!1513292 (=> (not res!1033277) (not e!844628))))

(declare-datatypes ((List!35319 0))(
  ( (Nil!35316) (Cons!35315 (h!36728 (_ BitVec 64)) (t!50020 List!35319)) )
))
(declare-fun arrayNoDuplicates!0 (array!100847 (_ BitVec 32) List!35319) Bool)

(assert (=> b!1513292 (= res!1033277 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35316))))

(declare-fun b!1513293 () Bool)

(declare-fun res!1033276 () Bool)

(assert (=> b!1513293 (=> (not res!1033276) (not e!844622))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100847 (_ BitVec 32)) SeekEntryResult!12848)

(assert (=> b!1513293 (= res!1033276 (= (seekEntry!0 (select (arr!48656 a!2804) j!70) a!2804 mask!2512) (Found!12848 j!70)))))

(declare-fun b!1513294 () Bool)

(declare-fun res!1033265 () Bool)

(assert (=> b!1513294 (=> (not res!1033265) (not e!844628))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100847 (_ BitVec 32)) Bool)

(assert (=> b!1513294 (= res!1033265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun e!844625 () Bool)

(declare-fun b!1513295 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100847 (_ BitVec 32)) SeekEntryResult!12848)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100847 (_ BitVec 32)) SeekEntryResult!12848)

(assert (=> b!1513295 (= e!844625 (= (seekEntryOrOpen!0 lt!655903 lt!655901 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655903 lt!655901 mask!2512)))))

(declare-fun b!1513296 () Bool)

(declare-fun res!1033266 () Bool)

(assert (=> b!1513296 (=> (not res!1033266) (not e!844628))))

(assert (=> b!1513296 (= res!1033266 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49207 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49207 a!2804))))))

(declare-fun b!1513297 () Bool)

(assert (=> b!1513297 (= e!844623 (not true))))

(assert (=> b!1513297 e!844622))

(declare-fun res!1033268 () Bool)

(assert (=> b!1513297 (=> (not res!1033268) (not e!844622))))

(assert (=> b!1513297 (= res!1033268 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50520 0))(
  ( (Unit!50521) )
))
(declare-fun lt!655899 () Unit!50520)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100847 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50520)

(assert (=> b!1513297 (= lt!655899 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513298 () Bool)

(declare-fun res!1033273 () Bool)

(assert (=> b!1513298 (=> (not res!1033273) (not e!844627))))

(declare-fun lt!655900 () SeekEntryResult!12848)

(assert (=> b!1513298 (= res!1033273 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48656 a!2804) j!70) a!2804 mask!2512) lt!655900))))

(declare-fun b!1513299 () Bool)

(declare-fun res!1033274 () Bool)

(assert (=> b!1513299 (=> (not res!1033274) (not e!844628))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513299 (= res!1033274 (validKeyInArray!0 (select (arr!48656 a!2804) i!961)))))

(declare-fun res!1033278 () Bool)

(assert (=> start!129078 (=> (not res!1033278) (not e!844628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129078 (= res!1033278 (validMask!0 mask!2512))))

(assert (=> start!129078 e!844628))

(assert (=> start!129078 true))

(declare-fun array_inv!37601 (array!100847) Bool)

(assert (=> start!129078 (array_inv!37601 a!2804)))

(declare-fun b!1513300 () Bool)

(assert (=> b!1513300 (= e!844628 e!844627)))

(declare-fun res!1033269 () Bool)

(assert (=> b!1513300 (=> (not res!1033269) (not e!844627))))

(assert (=> b!1513300 (= res!1033269 (= lt!655902 lt!655900))))

(assert (=> b!1513300 (= lt!655900 (Intermediate!12848 false resIndex!21 resX!21))))

(assert (=> b!1513300 (= lt!655902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48656 a!2804) j!70) mask!2512) (select (arr!48656 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513301 () Bool)

(declare-fun res!1033275 () Bool)

(assert (=> b!1513301 (=> (not res!1033275) (not e!844628))))

(assert (=> b!1513301 (= res!1033275 (and (= (size!49207 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49207 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49207 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513302 () Bool)

(assert (=> b!1513302 (= e!844626 e!844625)))

(declare-fun res!1033272 () Bool)

(assert (=> b!1513302 (=> (not res!1033272) (not e!844625))))

(assert (=> b!1513302 (= res!1033272 (= (seekEntryOrOpen!0 (select (arr!48656 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48656 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513303 () Bool)

(declare-fun res!1033267 () Bool)

(assert (=> b!1513303 (=> (not res!1033267) (not e!844628))))

(assert (=> b!1513303 (= res!1033267 (validKeyInArray!0 (select (arr!48656 a!2804) j!70)))))

(assert (= (and start!129078 res!1033278) b!1513301))

(assert (= (and b!1513301 res!1033275) b!1513299))

(assert (= (and b!1513299 res!1033274) b!1513303))

(assert (= (and b!1513303 res!1033267) b!1513294))

(assert (= (and b!1513294 res!1033265) b!1513292))

(assert (= (and b!1513292 res!1033277) b!1513296))

(assert (= (and b!1513296 res!1033266) b!1513300))

(assert (= (and b!1513300 res!1033269) b!1513298))

(assert (= (and b!1513298 res!1033273) b!1513290))

(assert (= (and b!1513290 res!1033270) b!1513297))

(assert (= (and b!1513297 res!1033268) b!1513293))

(assert (= (and b!1513293 res!1033276) b!1513291))

(assert (= (and b!1513291 (not res!1033271)) b!1513302))

(assert (= (and b!1513302 res!1033272) b!1513295))

(declare-fun m!1396195 () Bool)

(assert (=> b!1513297 m!1396195))

(declare-fun m!1396197 () Bool)

(assert (=> b!1513297 m!1396197))

(declare-fun m!1396199 () Bool)

(assert (=> b!1513300 m!1396199))

(assert (=> b!1513300 m!1396199))

(declare-fun m!1396201 () Bool)

(assert (=> b!1513300 m!1396201))

(assert (=> b!1513300 m!1396201))

(assert (=> b!1513300 m!1396199))

(declare-fun m!1396203 () Bool)

(assert (=> b!1513300 m!1396203))

(assert (=> b!1513302 m!1396199))

(assert (=> b!1513302 m!1396199))

(declare-fun m!1396205 () Bool)

(assert (=> b!1513302 m!1396205))

(assert (=> b!1513302 m!1396199))

(declare-fun m!1396207 () Bool)

(assert (=> b!1513302 m!1396207))

(declare-fun m!1396209 () Bool)

(assert (=> b!1513294 m!1396209))

(declare-fun m!1396211 () Bool)

(assert (=> b!1513299 m!1396211))

(assert (=> b!1513299 m!1396211))

(declare-fun m!1396213 () Bool)

(assert (=> b!1513299 m!1396213))

(assert (=> b!1513293 m!1396199))

(assert (=> b!1513293 m!1396199))

(declare-fun m!1396215 () Bool)

(assert (=> b!1513293 m!1396215))

(assert (=> b!1513303 m!1396199))

(assert (=> b!1513303 m!1396199))

(declare-fun m!1396217 () Bool)

(assert (=> b!1513303 m!1396217))

(assert (=> b!1513298 m!1396199))

(assert (=> b!1513298 m!1396199))

(declare-fun m!1396219 () Bool)

(assert (=> b!1513298 m!1396219))

(declare-fun m!1396221 () Bool)

(assert (=> b!1513295 m!1396221))

(declare-fun m!1396223 () Bool)

(assert (=> b!1513295 m!1396223))

(declare-fun m!1396225 () Bool)

(assert (=> start!129078 m!1396225))

(declare-fun m!1396227 () Bool)

(assert (=> start!129078 m!1396227))

(declare-fun m!1396229 () Bool)

(assert (=> b!1513290 m!1396229))

(assert (=> b!1513290 m!1396229))

(declare-fun m!1396231 () Bool)

(assert (=> b!1513290 m!1396231))

(declare-fun m!1396233 () Bool)

(assert (=> b!1513290 m!1396233))

(declare-fun m!1396235 () Bool)

(assert (=> b!1513290 m!1396235))

(assert (=> b!1513291 m!1396199))

(declare-fun m!1396237 () Bool)

(assert (=> b!1513291 m!1396237))

(declare-fun m!1396239 () Bool)

(assert (=> b!1513292 m!1396239))

(check-sat (not b!1513294) (not start!129078) (not b!1513292) (not b!1513299) (not b!1513303) (not b!1513293) (not b!1513297) (not b!1513298) (not b!1513300) (not b!1513295) (not b!1513302) (not b!1513290))
(check-sat)
