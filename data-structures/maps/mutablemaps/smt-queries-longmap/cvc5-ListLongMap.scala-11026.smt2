; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129034 () Bool)

(assert start!129034)

(declare-fun b!1512400 () Bool)

(declare-fun res!1032377 () Bool)

(declare-fun e!844222 () Bool)

(assert (=> b!1512400 (=> (not res!1032377) (not e!844222))))

(declare-datatypes ((array!100803 0))(
  ( (array!100804 (arr!48634 (Array (_ BitVec 32) (_ BitVec 64))) (size!49185 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100803)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100803 (_ BitVec 32)) Bool)

(assert (=> b!1512400 (= res!1032377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512401 () Bool)

(declare-fun res!1032385 () Bool)

(assert (=> b!1512401 (=> (not res!1032385) (not e!844222))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1512401 (= res!1032385 (and (= (size!49185 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49185 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49185 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512402 () Bool)

(declare-fun res!1032386 () Bool)

(assert (=> b!1512402 (=> (not res!1032386) (not e!844222))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512402 (= res!1032386 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49185 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49185 a!2804))))))

(declare-fun b!1512403 () Bool)

(declare-fun res!1032378 () Bool)

(declare-fun e!844219 () Bool)

(assert (=> b!1512403 (=> (not res!1032378) (not e!844219))))

(declare-datatypes ((SeekEntryResult!12826 0))(
  ( (MissingZero!12826 (index!53698 (_ BitVec 32))) (Found!12826 (index!53699 (_ BitVec 32))) (Intermediate!12826 (undefined!13638 Bool) (index!53700 (_ BitVec 32)) (x!135437 (_ BitVec 32))) (Undefined!12826) (MissingVacant!12826 (index!53701 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!100803 (_ BitVec 32)) SeekEntryResult!12826)

(assert (=> b!1512403 (= res!1032378 (= (seekEntry!0 (select (arr!48634 a!2804) j!70) a!2804 mask!2512) (Found!12826 j!70)))))

(declare-fun b!1512404 () Bool)

(declare-fun res!1032382 () Bool)

(assert (=> b!1512404 (=> (not res!1032382) (not e!844222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512404 (= res!1032382 (validKeyInArray!0 (select (arr!48634 a!2804) j!70)))))

(declare-fun res!1032383 () Bool)

(assert (=> start!129034 (=> (not res!1032383) (not e!844222))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129034 (= res!1032383 (validMask!0 mask!2512))))

(assert (=> start!129034 e!844222))

(assert (=> start!129034 true))

(declare-fun array_inv!37579 (array!100803) Bool)

(assert (=> start!129034 (array_inv!37579 a!2804)))

(declare-fun b!1512405 () Bool)

(declare-fun res!1032379 () Bool)

(assert (=> b!1512405 (=> (not res!1032379) (not e!844222))))

(declare-datatypes ((List!35297 0))(
  ( (Nil!35294) (Cons!35293 (h!36706 (_ BitVec 64)) (t!49998 List!35297)) )
))
(declare-fun arrayNoDuplicates!0 (array!100803 (_ BitVec 32) List!35297) Bool)

(assert (=> b!1512405 (= res!1032379 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35294))))

(declare-fun b!1512406 () Bool)

(declare-fun res!1032376 () Bool)

(assert (=> b!1512406 (=> (not res!1032376) (not e!844222))))

(assert (=> b!1512406 (= res!1032376 (validKeyInArray!0 (select (arr!48634 a!2804) i!961)))))

(declare-fun b!1512407 () Bool)

(declare-fun res!1032375 () Bool)

(declare-fun e!844223 () Bool)

(assert (=> b!1512407 (=> (not res!1032375) (not e!844223))))

(declare-fun lt!655637 () SeekEntryResult!12826)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100803 (_ BitVec 32)) SeekEntryResult!12826)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512407 (= res!1032375 (= lt!655637 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48634 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48634 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100804 (store (arr!48634 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49185 a!2804)) mask!2512)))))

(declare-fun b!1512408 () Bool)

(declare-fun e!844220 () Bool)

(assert (=> b!1512408 (= e!844219 e!844220)))

(declare-fun res!1032387 () Bool)

(assert (=> b!1512408 (=> res!1032387 e!844220)))

(assert (=> b!1512408 (= res!1032387 (or (not (= (select (arr!48634 a!2804) j!70) (select (store (arr!48634 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48634 a!2804) index!487) (select (arr!48634 a!2804) j!70)) (not (= (select (arr!48634 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512409 () Bool)

(assert (=> b!1512409 (= e!844223 (not (or (not (= (select (arr!48634 a!2804) j!70) (select (store (arr!48634 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48634 a!2804) index!487) (select (arr!48634 a!2804) j!70)) (not (= (select (arr!48634 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvslt mask!2512 #b00000000000000000000000000000000) (bvslt index!487 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(assert (=> b!1512409 e!844219))

(declare-fun res!1032384 () Bool)

(assert (=> b!1512409 (=> (not res!1032384) (not e!844219))))

(assert (=> b!1512409 (= res!1032384 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50476 0))(
  ( (Unit!50477) )
))
(declare-fun lt!655639 () Unit!50476)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100803 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50476)

(assert (=> b!1512409 (= lt!655639 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512410 () Bool)

(assert (=> b!1512410 (= e!844222 e!844223)))

(declare-fun res!1032380 () Bool)

(assert (=> b!1512410 (=> (not res!1032380) (not e!844223))))

(declare-fun lt!655638 () SeekEntryResult!12826)

(assert (=> b!1512410 (= res!1032380 (= lt!655637 lt!655638))))

(assert (=> b!1512410 (= lt!655638 (Intermediate!12826 false resIndex!21 resX!21))))

(assert (=> b!1512410 (= lt!655637 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48634 a!2804) j!70) mask!2512) (select (arr!48634 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512411 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100803 (_ BitVec 32)) SeekEntryResult!12826)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100803 (_ BitVec 32)) SeekEntryResult!12826)

(assert (=> b!1512411 (= e!844220 (= (seekEntryOrOpen!0 (select (arr!48634 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48634 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512412 () Bool)

(declare-fun res!1032381 () Bool)

(assert (=> b!1512412 (=> (not res!1032381) (not e!844223))))

(assert (=> b!1512412 (= res!1032381 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48634 a!2804) j!70) a!2804 mask!2512) lt!655638))))

(assert (= (and start!129034 res!1032383) b!1512401))

(assert (= (and b!1512401 res!1032385) b!1512406))

(assert (= (and b!1512406 res!1032376) b!1512404))

(assert (= (and b!1512404 res!1032382) b!1512400))

(assert (= (and b!1512400 res!1032377) b!1512405))

(assert (= (and b!1512405 res!1032379) b!1512402))

(assert (= (and b!1512402 res!1032386) b!1512410))

(assert (= (and b!1512410 res!1032380) b!1512412))

(assert (= (and b!1512412 res!1032381) b!1512407))

(assert (= (and b!1512407 res!1032375) b!1512409))

(assert (= (and b!1512409 res!1032384) b!1512403))

(assert (= (and b!1512403 res!1032378) b!1512408))

(assert (= (and b!1512408 (not res!1032387)) b!1512411))

(declare-fun m!1395225 () Bool)

(assert (=> start!129034 m!1395225))

(declare-fun m!1395227 () Bool)

(assert (=> start!129034 m!1395227))

(declare-fun m!1395229 () Bool)

(assert (=> b!1512412 m!1395229))

(assert (=> b!1512412 m!1395229))

(declare-fun m!1395231 () Bool)

(assert (=> b!1512412 m!1395231))

(declare-fun m!1395233 () Bool)

(assert (=> b!1512400 m!1395233))

(declare-fun m!1395235 () Bool)

(assert (=> b!1512406 m!1395235))

(assert (=> b!1512406 m!1395235))

(declare-fun m!1395237 () Bool)

(assert (=> b!1512406 m!1395237))

(assert (=> b!1512403 m!1395229))

(assert (=> b!1512403 m!1395229))

(declare-fun m!1395239 () Bool)

(assert (=> b!1512403 m!1395239))

(assert (=> b!1512408 m!1395229))

(declare-fun m!1395241 () Bool)

(assert (=> b!1512408 m!1395241))

(declare-fun m!1395243 () Bool)

(assert (=> b!1512408 m!1395243))

(declare-fun m!1395245 () Bool)

(assert (=> b!1512408 m!1395245))

(assert (=> b!1512410 m!1395229))

(assert (=> b!1512410 m!1395229))

(declare-fun m!1395247 () Bool)

(assert (=> b!1512410 m!1395247))

(assert (=> b!1512410 m!1395247))

(assert (=> b!1512410 m!1395229))

(declare-fun m!1395249 () Bool)

(assert (=> b!1512410 m!1395249))

(assert (=> b!1512407 m!1395241))

(assert (=> b!1512407 m!1395243))

(assert (=> b!1512407 m!1395243))

(declare-fun m!1395251 () Bool)

(assert (=> b!1512407 m!1395251))

(assert (=> b!1512407 m!1395251))

(assert (=> b!1512407 m!1395243))

(declare-fun m!1395253 () Bool)

(assert (=> b!1512407 m!1395253))

(declare-fun m!1395255 () Bool)

(assert (=> b!1512405 m!1395255))

(assert (=> b!1512411 m!1395229))

(assert (=> b!1512411 m!1395229))

(declare-fun m!1395257 () Bool)

(assert (=> b!1512411 m!1395257))

(assert (=> b!1512411 m!1395229))

(declare-fun m!1395259 () Bool)

(assert (=> b!1512411 m!1395259))

(assert (=> b!1512404 m!1395229))

(assert (=> b!1512404 m!1395229))

(declare-fun m!1395261 () Bool)

(assert (=> b!1512404 m!1395261))

(assert (=> b!1512409 m!1395229))

(declare-fun m!1395263 () Bool)

(assert (=> b!1512409 m!1395263))

(assert (=> b!1512409 m!1395241))

(assert (=> b!1512409 m!1395245))

(assert (=> b!1512409 m!1395243))

(declare-fun m!1395265 () Bool)

(assert (=> b!1512409 m!1395265))

(push 1)

(assert (not b!1512404))

(assert (not b!1512405))

(assert (not b!1512412))

(assert (not b!1512411))

(assert (not start!129034))

(assert (not b!1512410))

(assert (not b!1512400))

(assert (not b!1512409))

(assert (not b!1512407))

(assert (not b!1512403))

(assert (not b!1512406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

