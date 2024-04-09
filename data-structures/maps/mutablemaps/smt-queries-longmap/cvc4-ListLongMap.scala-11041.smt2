; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129128 () Bool)

(assert start!129128)

(declare-fun b!1514340 () Bool)

(declare-datatypes ((array!100897 0))(
  ( (array!100898 (arr!48681 (Array (_ BitVec 32) (_ BitVec 64))) (size!49232 (_ BitVec 32))) )
))
(declare-fun lt!656274 () array!100897)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun e!845149 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!656277 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12873 0))(
  ( (MissingZero!12873 (index!53886 (_ BitVec 32))) (Found!12873 (index!53887 (_ BitVec 32))) (Intermediate!12873 (undefined!13685 Bool) (index!53888 (_ BitVec 32)) (x!135604 (_ BitVec 32))) (Undefined!12873) (MissingVacant!12873 (index!53889 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100897 (_ BitVec 32)) SeekEntryResult!12873)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100897 (_ BitVec 32)) SeekEntryResult!12873)

(assert (=> b!1514340 (= e!845149 (= (seekEntryOrOpen!0 lt!656277 lt!656274 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656277 lt!656274 mask!2512)))))

(declare-fun b!1514341 () Bool)

(declare-fun res!1034320 () Bool)

(declare-fun e!845151 () Bool)

(assert (=> b!1514341 (=> (not res!1034320) (not e!845151))))

(declare-fun a!2804 () array!100897)

(declare-datatypes ((List!35344 0))(
  ( (Nil!35341) (Cons!35340 (h!36753 (_ BitVec 64)) (t!50045 List!35344)) )
))
(declare-fun arrayNoDuplicates!0 (array!100897 (_ BitVec 32) List!35344) Bool)

(assert (=> b!1514341 (= res!1034320 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35341))))

(declare-fun b!1514342 () Bool)

(declare-fun e!845153 () Bool)

(declare-fun e!845148 () Bool)

(assert (=> b!1514342 (= e!845153 e!845148)))

(declare-fun res!1034325 () Bool)

(assert (=> b!1514342 (=> res!1034325 e!845148)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1514342 (= res!1034325 (or (not (= (select (arr!48681 a!2804) j!70) lt!656277)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48681 a!2804) index!487) (select (arr!48681 a!2804) j!70)) (not (= (select (arr!48681 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514343 () Bool)

(declare-fun res!1034321 () Bool)

(declare-fun e!845152 () Bool)

(assert (=> b!1514343 (=> (not res!1034321) (not e!845152))))

(declare-fun lt!656275 () SeekEntryResult!12873)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100897 (_ BitVec 32)) SeekEntryResult!12873)

(assert (=> b!1514343 (= res!1034321 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48681 a!2804) j!70) a!2804 mask!2512) lt!656275))))

(declare-fun b!1514344 () Bool)

(declare-fun res!1034324 () Bool)

(assert (=> b!1514344 (=> (not res!1034324) (not e!845151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100897 (_ BitVec 32)) Bool)

(assert (=> b!1514344 (= res!1034324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514345 () Bool)

(declare-fun res!1034315 () Bool)

(assert (=> b!1514345 (=> (not res!1034315) (not e!845151))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514345 (= res!1034315 (and (= (size!49232 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49232 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49232 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514346 () Bool)

(assert (=> b!1514346 (= e!845151 e!845152)))

(declare-fun res!1034322 () Bool)

(assert (=> b!1514346 (=> (not res!1034322) (not e!845152))))

(declare-fun lt!656278 () SeekEntryResult!12873)

(assert (=> b!1514346 (= res!1034322 (= lt!656278 lt!656275))))

(assert (=> b!1514346 (= lt!656275 (Intermediate!12873 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514346 (= lt!656278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48681 a!2804) j!70) mask!2512) (select (arr!48681 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514348 () Bool)

(declare-fun res!1034323 () Bool)

(assert (=> b!1514348 (=> (not res!1034323) (not e!845151))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514348 (= res!1034323 (validKeyInArray!0 (select (arr!48681 a!2804) j!70)))))

(declare-fun b!1514349 () Bool)

(declare-fun e!845147 () Bool)

(assert (=> b!1514349 (= e!845147 (not true))))

(assert (=> b!1514349 e!845153))

(declare-fun res!1034328 () Bool)

(assert (=> b!1514349 (=> (not res!1034328) (not e!845153))))

(assert (=> b!1514349 (= res!1034328 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50570 0))(
  ( (Unit!50571) )
))
(declare-fun lt!656276 () Unit!50570)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100897 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50570)

(assert (=> b!1514349 (= lt!656276 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514350 () Bool)

(assert (=> b!1514350 (= e!845152 e!845147)))

(declare-fun res!1034316 () Bool)

(assert (=> b!1514350 (=> (not res!1034316) (not e!845147))))

(assert (=> b!1514350 (= res!1034316 (= lt!656278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656277 mask!2512) lt!656277 lt!656274 mask!2512)))))

(assert (=> b!1514350 (= lt!656277 (select (store (arr!48681 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514350 (= lt!656274 (array!100898 (store (arr!48681 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49232 a!2804)))))

(declare-fun b!1514351 () Bool)

(declare-fun res!1034327 () Bool)

(assert (=> b!1514351 (=> (not res!1034327) (not e!845153))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100897 (_ BitVec 32)) SeekEntryResult!12873)

(assert (=> b!1514351 (= res!1034327 (= (seekEntry!0 (select (arr!48681 a!2804) j!70) a!2804 mask!2512) (Found!12873 j!70)))))

(declare-fun b!1514352 () Bool)

(assert (=> b!1514352 (= e!845148 e!845149)))

(declare-fun res!1034319 () Bool)

(assert (=> b!1514352 (=> (not res!1034319) (not e!845149))))

(assert (=> b!1514352 (= res!1034319 (= (seekEntryOrOpen!0 (select (arr!48681 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48681 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514353 () Bool)

(declare-fun res!1034317 () Bool)

(assert (=> b!1514353 (=> (not res!1034317) (not e!845151))))

(assert (=> b!1514353 (= res!1034317 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49232 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49232 a!2804))))))

(declare-fun b!1514347 () Bool)

(declare-fun res!1034318 () Bool)

(assert (=> b!1514347 (=> (not res!1034318) (not e!845151))))

(assert (=> b!1514347 (= res!1034318 (validKeyInArray!0 (select (arr!48681 a!2804) i!961)))))

(declare-fun res!1034326 () Bool)

(assert (=> start!129128 (=> (not res!1034326) (not e!845151))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129128 (= res!1034326 (validMask!0 mask!2512))))

(assert (=> start!129128 e!845151))

(assert (=> start!129128 true))

(declare-fun array_inv!37626 (array!100897) Bool)

(assert (=> start!129128 (array_inv!37626 a!2804)))

(assert (= (and start!129128 res!1034326) b!1514345))

(assert (= (and b!1514345 res!1034315) b!1514347))

(assert (= (and b!1514347 res!1034318) b!1514348))

(assert (= (and b!1514348 res!1034323) b!1514344))

(assert (= (and b!1514344 res!1034324) b!1514341))

(assert (= (and b!1514341 res!1034320) b!1514353))

(assert (= (and b!1514353 res!1034317) b!1514346))

(assert (= (and b!1514346 res!1034322) b!1514343))

(assert (= (and b!1514343 res!1034321) b!1514350))

(assert (= (and b!1514350 res!1034316) b!1514349))

(assert (= (and b!1514349 res!1034328) b!1514351))

(assert (= (and b!1514351 res!1034327) b!1514342))

(assert (= (and b!1514342 (not res!1034325)) b!1514352))

(assert (= (and b!1514352 res!1034319) b!1514340))

(declare-fun m!1397345 () Bool)

(assert (=> start!129128 m!1397345))

(declare-fun m!1397347 () Bool)

(assert (=> start!129128 m!1397347))

(declare-fun m!1397349 () Bool)

(assert (=> b!1514342 m!1397349))

(declare-fun m!1397351 () Bool)

(assert (=> b!1514342 m!1397351))

(declare-fun m!1397353 () Bool)

(assert (=> b!1514349 m!1397353))

(declare-fun m!1397355 () Bool)

(assert (=> b!1514349 m!1397355))

(declare-fun m!1397357 () Bool)

(assert (=> b!1514341 m!1397357))

(assert (=> b!1514351 m!1397349))

(assert (=> b!1514351 m!1397349))

(declare-fun m!1397359 () Bool)

(assert (=> b!1514351 m!1397359))

(declare-fun m!1397361 () Bool)

(assert (=> b!1514350 m!1397361))

(assert (=> b!1514350 m!1397361))

(declare-fun m!1397363 () Bool)

(assert (=> b!1514350 m!1397363))

(declare-fun m!1397365 () Bool)

(assert (=> b!1514350 m!1397365))

(declare-fun m!1397367 () Bool)

(assert (=> b!1514350 m!1397367))

(assert (=> b!1514352 m!1397349))

(assert (=> b!1514352 m!1397349))

(declare-fun m!1397369 () Bool)

(assert (=> b!1514352 m!1397369))

(assert (=> b!1514352 m!1397349))

(declare-fun m!1397371 () Bool)

(assert (=> b!1514352 m!1397371))

(assert (=> b!1514348 m!1397349))

(assert (=> b!1514348 m!1397349))

(declare-fun m!1397373 () Bool)

(assert (=> b!1514348 m!1397373))

(declare-fun m!1397375 () Bool)

(assert (=> b!1514344 m!1397375))

(declare-fun m!1397377 () Bool)

(assert (=> b!1514347 m!1397377))

(assert (=> b!1514347 m!1397377))

(declare-fun m!1397379 () Bool)

(assert (=> b!1514347 m!1397379))

(assert (=> b!1514346 m!1397349))

(assert (=> b!1514346 m!1397349))

(declare-fun m!1397381 () Bool)

(assert (=> b!1514346 m!1397381))

(assert (=> b!1514346 m!1397381))

(assert (=> b!1514346 m!1397349))

(declare-fun m!1397383 () Bool)

(assert (=> b!1514346 m!1397383))

(declare-fun m!1397385 () Bool)

(assert (=> b!1514340 m!1397385))

(declare-fun m!1397387 () Bool)

(assert (=> b!1514340 m!1397387))

(assert (=> b!1514343 m!1397349))

(assert (=> b!1514343 m!1397349))

(declare-fun m!1397389 () Bool)

(assert (=> b!1514343 m!1397389))

(push 1)

