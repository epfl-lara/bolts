; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129694 () Bool)

(assert start!129694)

(declare-fun b!1522153 () Bool)

(declare-fun res!1041518 () Bool)

(declare-fun e!848750 () Bool)

(assert (=> b!1522153 (=> (not res!1041518) (not e!848750))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101296 0))(
  ( (array!101297 (arr!48876 (Array (_ BitVec 32) (_ BitVec 64))) (size!49427 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101296)

(declare-datatypes ((SeekEntryResult!13062 0))(
  ( (MissingZero!13062 (index!54642 (_ BitVec 32))) (Found!13062 (index!54643 (_ BitVec 32))) (Intermediate!13062 (undefined!13874 Bool) (index!54644 (_ BitVec 32)) (x!136333 (_ BitVec 32))) (Undefined!13062) (MissingVacant!13062 (index!54645 (_ BitVec 32))) )
))
(declare-fun lt!659470 () SeekEntryResult!13062)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101296 (_ BitVec 32)) SeekEntryResult!13062)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522153 (= res!1041518 (= lt!659470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804)) mask!2512)))))

(declare-fun b!1522154 () Bool)

(declare-fun res!1041513 () Bool)

(declare-fun e!848748 () Bool)

(assert (=> b!1522154 (=> (not res!1041513) (not e!848748))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1522154 (= res!1041513 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49427 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49427 a!2804))))))

(declare-fun b!1522155 () Bool)

(declare-fun res!1041522 () Bool)

(assert (=> b!1522155 (=> (not res!1041522) (not e!848748))))

(assert (=> b!1522155 (= res!1041522 (and (= (size!49427 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49427 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49427 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522156 () Bool)

(declare-fun res!1041519 () Bool)

(assert (=> b!1522156 (=> (not res!1041519) (not e!848748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101296 (_ BitVec 32)) Bool)

(assert (=> b!1522156 (= res!1041519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522157 () Bool)

(declare-fun res!1041521 () Bool)

(assert (=> b!1522157 (=> (not res!1041521) (not e!848748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522157 (= res!1041521 (validKeyInArray!0 (select (arr!48876 a!2804) j!70)))))

(declare-fun b!1522158 () Bool)

(declare-fun res!1041515 () Bool)

(assert (=> b!1522158 (=> (not res!1041515) (not e!848750))))

(declare-fun lt!659469 () SeekEntryResult!13062)

(assert (=> b!1522158 (= res!1041515 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48876 a!2804) j!70) a!2804 mask!2512) lt!659469))))

(declare-fun b!1522159 () Bool)

(declare-fun res!1041516 () Bool)

(assert (=> b!1522159 (=> (not res!1041516) (not e!848748))))

(assert (=> b!1522159 (= res!1041516 (validKeyInArray!0 (select (arr!48876 a!2804) i!961)))))

(declare-fun res!1041517 () Bool)

(assert (=> start!129694 (=> (not res!1041517) (not e!848748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129694 (= res!1041517 (validMask!0 mask!2512))))

(assert (=> start!129694 e!848748))

(assert (=> start!129694 true))

(declare-fun array_inv!37821 (array!101296) Bool)

(assert (=> start!129694 (array_inv!37821 a!2804)))

(declare-fun b!1522160 () Bool)

(assert (=> b!1522160 (= e!848748 e!848750)))

(declare-fun res!1041514 () Bool)

(assert (=> b!1522160 (=> (not res!1041514) (not e!848750))))

(assert (=> b!1522160 (= res!1041514 (= lt!659470 lt!659469))))

(assert (=> b!1522160 (= lt!659469 (Intermediate!13062 false resIndex!21 resX!21))))

(assert (=> b!1522160 (= lt!659470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) (select (arr!48876 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522161 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101296 (_ BitVec 32)) SeekEntryResult!13062)

(assert (=> b!1522161 (= e!848750 (not (= (seekEntry!0 (select (arr!48876 a!2804) j!70) a!2804 mask!2512) (Found!13062 j!70))))))

(assert (=> b!1522161 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50864 0))(
  ( (Unit!50865) )
))
(declare-fun lt!659468 () Unit!50864)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101296 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50864)

(assert (=> b!1522161 (= lt!659468 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522162 () Bool)

(declare-fun res!1041520 () Bool)

(assert (=> b!1522162 (=> (not res!1041520) (not e!848748))))

(declare-datatypes ((List!35539 0))(
  ( (Nil!35536) (Cons!35535 (h!36957 (_ BitVec 64)) (t!50240 List!35539)) )
))
(declare-fun arrayNoDuplicates!0 (array!101296 (_ BitVec 32) List!35539) Bool)

(assert (=> b!1522162 (= res!1041520 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35536))))

(assert (= (and start!129694 res!1041517) b!1522155))

(assert (= (and b!1522155 res!1041522) b!1522159))

(assert (= (and b!1522159 res!1041516) b!1522157))

(assert (= (and b!1522157 res!1041521) b!1522156))

(assert (= (and b!1522156 res!1041519) b!1522162))

(assert (= (and b!1522162 res!1041520) b!1522154))

(assert (= (and b!1522154 res!1041513) b!1522160))

(assert (= (and b!1522160 res!1041514) b!1522158))

(assert (= (and b!1522158 res!1041515) b!1522153))

(assert (= (and b!1522153 res!1041518) b!1522161))

(declare-fun m!1405355 () Bool)

(assert (=> b!1522161 m!1405355))

(assert (=> b!1522161 m!1405355))

(declare-fun m!1405357 () Bool)

(assert (=> b!1522161 m!1405357))

(declare-fun m!1405359 () Bool)

(assert (=> b!1522161 m!1405359))

(declare-fun m!1405361 () Bool)

(assert (=> b!1522161 m!1405361))

(assert (=> b!1522158 m!1405355))

(assert (=> b!1522158 m!1405355))

(declare-fun m!1405363 () Bool)

(assert (=> b!1522158 m!1405363))

(declare-fun m!1405365 () Bool)

(assert (=> b!1522162 m!1405365))

(assert (=> b!1522157 m!1405355))

(assert (=> b!1522157 m!1405355))

(declare-fun m!1405367 () Bool)

(assert (=> b!1522157 m!1405367))

(declare-fun m!1405369 () Bool)

(assert (=> b!1522159 m!1405369))

(assert (=> b!1522159 m!1405369))

(declare-fun m!1405371 () Bool)

(assert (=> b!1522159 m!1405371))

(assert (=> b!1522160 m!1405355))

(assert (=> b!1522160 m!1405355))

(declare-fun m!1405373 () Bool)

(assert (=> b!1522160 m!1405373))

(assert (=> b!1522160 m!1405373))

(assert (=> b!1522160 m!1405355))

(declare-fun m!1405375 () Bool)

(assert (=> b!1522160 m!1405375))

(declare-fun m!1405377 () Bool)

(assert (=> b!1522153 m!1405377))

(declare-fun m!1405379 () Bool)

(assert (=> b!1522153 m!1405379))

(assert (=> b!1522153 m!1405379))

(declare-fun m!1405381 () Bool)

(assert (=> b!1522153 m!1405381))

(assert (=> b!1522153 m!1405381))

(assert (=> b!1522153 m!1405379))

(declare-fun m!1405383 () Bool)

(assert (=> b!1522153 m!1405383))

(declare-fun m!1405385 () Bool)

(assert (=> start!129694 m!1405385))

(declare-fun m!1405387 () Bool)

(assert (=> start!129694 m!1405387))

(declare-fun m!1405389 () Bool)

(assert (=> b!1522156 m!1405389))

(push 1)

(assert (not start!129694))

(assert (not b!1522158))

(assert (not b!1522153))

(assert (not b!1522162))

(assert (not b!1522156))

(assert (not b!1522161))

(assert (not b!1522157))

(assert (not b!1522159))

(assert (not b!1522160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158991 () Bool)

(assert (=> d!158991 (= (validKeyInArray!0 (select (arr!48876 a!2804) i!961)) (and (not (= (select (arr!48876 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48876 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1522159 d!158991))

(declare-fun d!158993 () Bool)

(assert (=> d!158993 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129694 d!158993))

(declare-fun d!159001 () Bool)

(assert (=> d!159001 (= (array_inv!37821 a!2804) (bvsge (size!49427 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129694 d!159001))

(declare-fun b!1522277 () Bool)

(declare-fun lt!659512 () SeekEntryResult!13062)

(assert (=> b!1522277 (and (bvsge (index!54644 lt!659512) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659512) (size!49427 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804)))))))

(declare-fun res!1041563 () Bool)

(assert (=> b!1522277 (= res!1041563 (= (select (arr!48876 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804))) (index!54644 lt!659512)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848818 () Bool)

(assert (=> b!1522277 (=> res!1041563 e!848818)))

(declare-fun b!1522278 () Bool)

(declare-fun e!848819 () SeekEntryResult!13062)

(declare-fun e!848821 () SeekEntryResult!13062)

(assert (=> b!1522278 (= e!848819 e!848821)))

(declare-fun lt!659511 () (_ BitVec 64))

(declare-fun c!139910 () Bool)

(assert (=> b!1522278 (= c!139910 (or (= lt!659511 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!659511 lt!659511) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522279 () Bool)

(assert (=> b!1522279 (and (bvsge (index!54644 lt!659512) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659512) (size!49427 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804)))))))

(declare-fun res!1041561 () Bool)

(assert (=> b!1522279 (= res!1041561 (= (select (arr!48876 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804))) (index!54644 lt!659512)) (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1522279 (=> res!1041561 e!848818)))

(declare-fun e!848820 () Bool)

(assert (=> b!1522279 (= e!848820 e!848818)))

(declare-fun b!1522280 () Bool)

(declare-fun e!848817 () Bool)

(assert (=> b!1522280 (= e!848817 e!848820)))

(declare-fun res!1041562 () Bool)

(assert (=> b!1522280 (= res!1041562 (and (is-Intermediate!13062 lt!659512) (not (undefined!13874 lt!659512)) (bvslt (x!136333 lt!659512) #b01111111111111111111111111111110) (bvsge (x!136333 lt!659512) #b00000000000000000000000000000000) (bvsge (x!136333 lt!659512) #b00000000000000000000000000000000)))))

(assert (=> b!1522280 (=> (not res!1041562) (not e!848820))))

(declare-fun d!159005 () Bool)

(assert (=> d!159005 e!848817))

(declare-fun c!139909 () Bool)

(assert (=> d!159005 (= c!139909 (and (is-Intermediate!13062 lt!659512) (undefined!13874 lt!659512)))))

(assert (=> d!159005 (= lt!659512 e!848819)))

(declare-fun c!139908 () Bool)

(assert (=> d!159005 (= c!139908 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159005 (= lt!659511 (select (arr!48876 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804))) (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159005 (validMask!0 mask!2512)))

(assert (=> d!159005 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804)) mask!2512) lt!659512)))

(declare-fun b!1522281 () Bool)

(assert (=> b!1522281 (= e!848817 (bvsge (x!136333 lt!659512) #b01111111111111111111111111111110))))

(declare-fun b!1522282 () Bool)

(assert (=> b!1522282 (= e!848819 (Intermediate!13062 true (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522283 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522283 (= e!848821 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804)) mask!2512))))

(declare-fun b!1522284 () Bool)

(assert (=> b!1522284 (= e!848821 (Intermediate!13062 false (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522285 () Bool)

(assert (=> b!1522285 (and (bvsge (index!54644 lt!659512) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659512) (size!49427 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804)))))))

(assert (=> b!1522285 (= e!848818 (= (select (arr!48876 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804))) (index!54644 lt!659512)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159005 c!139908) b!1522282))

(assert (= (and d!159005 (not c!139908)) b!1522278))

(assert (= (and b!1522278 c!139910) b!1522284))

(assert (= (and b!1522278 (not c!139910)) b!1522283))

(assert (= (and d!159005 c!139909) b!1522281))

(assert (= (and d!159005 (not c!139909)) b!1522280))

(assert (= (and b!1522280 res!1041562) b!1522279))

(assert (= (and b!1522279 (not res!1041561)) b!1522277))

(assert (= (and b!1522277 (not res!1041563)) b!1522285))

(assert (=> d!159005 m!1405381))

(declare-fun m!1405429 () Bool)

(assert (=> d!159005 m!1405429))

(assert (=> d!159005 m!1405385))

(declare-fun m!1405431 () Bool)

(assert (=> b!1522285 m!1405431))

(assert (=> b!1522277 m!1405431))

(assert (=> b!1522283 m!1405381))

(declare-fun m!1405433 () Bool)

(assert (=> b!1522283 m!1405433))

(assert (=> b!1522283 m!1405433))

(assert (=> b!1522283 m!1405379))

(declare-fun m!1405435 () Bool)

(assert (=> b!1522283 m!1405435))

(assert (=> b!1522279 m!1405431))

(assert (=> b!1522153 d!159005))

(declare-fun d!159013 () Bool)

(declare-fun lt!659531 () (_ BitVec 32))

(declare-fun lt!659530 () (_ BitVec 32))

(assert (=> d!159013 (= lt!659531 (bvmul (bvxor lt!659530 (bvlshr lt!659530 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159013 (= lt!659530 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159013 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1041571 (let ((h!36960 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136339 (bvmul (bvxor h!36960 (bvlshr h!36960 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136339 (bvlshr x!136339 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1041571 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1041571 #b00000000000000000000000000000000))))))

(assert (=> d!159013 (= (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!659531 (bvlshr lt!659531 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1522153 d!159013))

(declare-fun b!1522307 () Bool)

(declare-fun lt!659533 () SeekEntryResult!13062)

(assert (=> b!1522307 (and (bvsge (index!54644 lt!659533) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659533) (size!49427 a!2804)))))

(declare-fun res!1041576 () Bool)

(assert (=> b!1522307 (= res!1041576 (= (select (arr!48876 a!2804) (index!54644 lt!659533)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848837 () Bool)

(assert (=> b!1522307 (=> res!1041576 e!848837)))

(declare-fun b!1522308 () Bool)

(declare-fun e!848838 () SeekEntryResult!13062)

(declare-fun e!848840 () SeekEntryResult!13062)

(assert (=> b!1522308 (= e!848838 e!848840)))

(declare-fun c!139919 () Bool)

(declare-fun lt!659532 () (_ BitVec 64))

(assert (=> b!1522308 (= c!139919 (or (= lt!659532 (select (arr!48876 a!2804) j!70)) (= (bvadd lt!659532 lt!659532) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522309 () Bool)

(assert (=> b!1522309 (and (bvsge (index!54644 lt!659533) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659533) (size!49427 a!2804)))))

(declare-fun res!1041574 () Bool)

(assert (=> b!1522309 (= res!1041574 (= (select (arr!48876 a!2804) (index!54644 lt!659533)) (select (arr!48876 a!2804) j!70)))))

(assert (=> b!1522309 (=> res!1041574 e!848837)))

(declare-fun e!848839 () Bool)

(assert (=> b!1522309 (= e!848839 e!848837)))

(declare-fun b!1522310 () Bool)

(declare-fun e!848836 () Bool)

(assert (=> b!1522310 (= e!848836 e!848839)))

(declare-fun res!1041575 () Bool)

(assert (=> b!1522310 (= res!1041575 (and (is-Intermediate!13062 lt!659533) (not (undefined!13874 lt!659533)) (bvslt (x!136333 lt!659533) #b01111111111111111111111111111110) (bvsge (x!136333 lt!659533) #b00000000000000000000000000000000) (bvsge (x!136333 lt!659533) x!534)))))

(assert (=> b!1522310 (=> (not res!1041575) (not e!848839))))

(declare-fun d!159023 () Bool)

(assert (=> d!159023 e!848836))

(declare-fun c!139918 () Bool)

(assert (=> d!159023 (= c!139918 (and (is-Intermediate!13062 lt!659533) (undefined!13874 lt!659533)))))

(assert (=> d!159023 (= lt!659533 e!848838)))

(declare-fun c!139917 () Bool)

(assert (=> d!159023 (= c!139917 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159023 (= lt!659532 (select (arr!48876 a!2804) index!487))))

(assert (=> d!159023 (validMask!0 mask!2512)))

(assert (=> d!159023 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48876 a!2804) j!70) a!2804 mask!2512) lt!659533)))

(declare-fun b!1522311 () Bool)

(assert (=> b!1522311 (= e!848836 (bvsge (x!136333 lt!659533) #b01111111111111111111111111111110))))

(declare-fun b!1522312 () Bool)

(assert (=> b!1522312 (= e!848838 (Intermediate!13062 true index!487 x!534))))

(declare-fun b!1522313 () Bool)

(assert (=> b!1522313 (= e!848840 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48876 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522314 () Bool)

(assert (=> b!1522314 (= e!848840 (Intermediate!13062 false index!487 x!534))))

(declare-fun b!1522315 () Bool)

(assert (=> b!1522315 (and (bvsge (index!54644 lt!659533) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659533) (size!49427 a!2804)))))

(assert (=> b!1522315 (= e!848837 (= (select (arr!48876 a!2804) (index!54644 lt!659533)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159023 c!139917) b!1522312))

(assert (= (and d!159023 (not c!139917)) b!1522308))

(assert (= (and b!1522308 c!139919) b!1522314))

(assert (= (and b!1522308 (not c!139919)) b!1522313))

(assert (= (and d!159023 c!139918) b!1522311))

(assert (= (and d!159023 (not c!139918)) b!1522310))

(assert (= (and b!1522310 res!1041575) b!1522309))

(assert (= (and b!1522309 (not res!1041574)) b!1522307))

(assert (= (and b!1522307 (not res!1041576)) b!1522315))

(declare-fun m!1405453 () Bool)

(assert (=> d!159023 m!1405453))

(assert (=> d!159023 m!1405385))

(declare-fun m!1405455 () Bool)

(assert (=> b!1522315 m!1405455))

(assert (=> b!1522307 m!1405455))

(declare-fun m!1405457 () Bool)

(assert (=> b!1522313 m!1405457))

(assert (=> b!1522313 m!1405457))

(assert (=> b!1522313 m!1405355))

(declare-fun m!1405459 () Bool)

(assert (=> b!1522313 m!1405459))

(assert (=> b!1522309 m!1405455))

(assert (=> b!1522158 d!159023))

(declare-fun b!1522316 () Bool)

(declare-fun lt!659535 () SeekEntryResult!13062)

(assert (=> b!1522316 (and (bvsge (index!54644 lt!659535) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659535) (size!49427 a!2804)))))

(declare-fun res!1041579 () Bool)

(assert (=> b!1522316 (= res!1041579 (= (select (arr!48876 a!2804) (index!54644 lt!659535)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848842 () Bool)

(assert (=> b!1522316 (=> res!1041579 e!848842)))

(declare-fun b!1522317 () Bool)

(declare-fun e!848843 () SeekEntryResult!13062)

(declare-fun e!848845 () SeekEntryResult!13062)

(assert (=> b!1522317 (= e!848843 e!848845)))

(declare-fun c!139922 () Bool)

(declare-fun lt!659534 () (_ BitVec 64))

(assert (=> b!1522317 (= c!139922 (or (= lt!659534 (select (arr!48876 a!2804) j!70)) (= (bvadd lt!659534 lt!659534) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522318 () Bool)

(assert (=> b!1522318 (and (bvsge (index!54644 lt!659535) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659535) (size!49427 a!2804)))))

(declare-fun res!1041577 () Bool)

(assert (=> b!1522318 (= res!1041577 (= (select (arr!48876 a!2804) (index!54644 lt!659535)) (select (arr!48876 a!2804) j!70)))))

(assert (=> b!1522318 (=> res!1041577 e!848842)))

(declare-fun e!848844 () Bool)

(assert (=> b!1522318 (= e!848844 e!848842)))

(declare-fun b!1522319 () Bool)

(declare-fun e!848841 () Bool)

(assert (=> b!1522319 (= e!848841 e!848844)))

(declare-fun res!1041578 () Bool)

(assert (=> b!1522319 (= res!1041578 (and (is-Intermediate!13062 lt!659535) (not (undefined!13874 lt!659535)) (bvslt (x!136333 lt!659535) #b01111111111111111111111111111110) (bvsge (x!136333 lt!659535) #b00000000000000000000000000000000) (bvsge (x!136333 lt!659535) #b00000000000000000000000000000000)))))

(assert (=> b!1522319 (=> (not res!1041578) (not e!848844))))

(declare-fun d!159025 () Bool)

(assert (=> d!159025 e!848841))

(declare-fun c!139921 () Bool)

(assert (=> d!159025 (= c!139921 (and (is-Intermediate!13062 lt!659535) (undefined!13874 lt!659535)))))

(assert (=> d!159025 (= lt!659535 e!848843)))

(declare-fun c!139920 () Bool)

(assert (=> d!159025 (= c!139920 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159025 (= lt!659534 (select (arr!48876 a!2804) (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512)))))

(assert (=> d!159025 (validMask!0 mask!2512)))

(assert (=> d!159025 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) (select (arr!48876 a!2804) j!70) a!2804 mask!2512) lt!659535)))

(declare-fun b!1522320 () Bool)

(assert (=> b!1522320 (= e!848841 (bvsge (x!136333 lt!659535) #b01111111111111111111111111111110))))

(declare-fun b!1522321 () Bool)

(assert (=> b!1522321 (= e!848843 (Intermediate!13062 true (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522322 () Bool)

(assert (=> b!1522322 (= e!848845 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48876 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522323 () Bool)

(assert (=> b!1522323 (= e!848845 (Intermediate!13062 false (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522324 () Bool)

(assert (=> b!1522324 (and (bvsge (index!54644 lt!659535) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659535) (size!49427 a!2804)))))

(assert (=> b!1522324 (= e!848842 (= (select (arr!48876 a!2804) (index!54644 lt!659535)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159025 c!139920) b!1522321))

(assert (= (and d!159025 (not c!139920)) b!1522317))

(assert (= (and b!1522317 c!139922) b!1522323))

(assert (= (and b!1522317 (not c!139922)) b!1522322))

(assert (= (and d!159025 c!139921) b!1522320))

(assert (= (and d!159025 (not c!139921)) b!1522319))

(assert (= (and b!1522319 res!1041578) b!1522318))

(assert (= (and b!1522318 (not res!1041577)) b!1522316))

(assert (= (and b!1522316 (not res!1041579)) b!1522324))

(assert (=> d!159025 m!1405373))

(declare-fun m!1405461 () Bool)

(assert (=> d!159025 m!1405461))

(assert (=> d!159025 m!1405385))

(declare-fun m!1405463 () Bool)

(assert (=> b!1522324 m!1405463))

(assert (=> b!1522316 m!1405463))

(assert (=> b!1522322 m!1405373))

(declare-fun m!1405467 () Bool)

(assert (=> b!1522322 m!1405467))

(assert (=> b!1522322 m!1405467))

(assert (=> b!1522322 m!1405355))

(declare-fun m!1405469 () Bool)

(assert (=> b!1522322 m!1405469))

(assert (=> b!1522318 m!1405463))

(assert (=> b!1522160 d!159025))

(declare-fun d!159029 () Bool)

(declare-fun lt!659543 () (_ BitVec 32))

(declare-fun lt!659542 () (_ BitVec 32))

(assert (=> d!159029 (= lt!659543 (bvmul (bvxor lt!659542 (bvlshr lt!659542 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159029 (= lt!659542 ((_ extract 31 0) (bvand (bvxor (select (arr!48876 a!2804) j!70) (bvlshr (select (arr!48876 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159029 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1041571 (let ((h!36960 ((_ extract 31 0) (bvand (bvxor (select (arr!48876 a!2804) j!70) (bvlshr (select (arr!48876 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136339 (bvmul (bvxor h!36960 (bvlshr h!36960 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136339 (bvlshr x!136339 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1041571 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1041571 #b00000000000000000000000000000000))))))

(assert (=> d!159029 (= (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) (bvand (bvxor lt!659543 (bvlshr lt!659543 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1522160 d!159029))

(declare-fun b!1522355 () Bool)

(declare-fun e!848866 () Bool)

(declare-fun call!68386 () Bool)

(assert (=> b!1522355 (= e!848866 call!68386)))

(declare-fun bm!68383 () Bool)

(assert (=> bm!68383 (= call!68386 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159031 () Bool)

(declare-fun res!1041587 () Bool)

(declare-fun e!848865 () Bool)

(assert (=> d!159031 (=> res!1041587 e!848865)))

(assert (=> d!159031 (= res!1041587 (bvsge #b00000000000000000000000000000000 (size!49427 a!2804)))))

(assert (=> d!159031 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!848865)))

(declare-fun b!1522356 () Bool)

(assert (=> b!1522356 (= e!848865 e!848866)))

(declare-fun c!139935 () Bool)

(assert (=> b!1522356 (= c!139935 (validKeyInArray!0 (select (arr!48876 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522357 () Bool)

(declare-fun e!848864 () Bool)

(assert (=> b!1522357 (= e!848864 call!68386)))

(declare-fun b!1522358 () Bool)

(assert (=> b!1522358 (= e!848866 e!848864)))

(declare-fun lt!659563 () (_ BitVec 64))

(assert (=> b!1522358 (= lt!659563 (select (arr!48876 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!659564 () Unit!50864)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101296 (_ BitVec 64) (_ BitVec 32)) Unit!50864)

(assert (=> b!1522358 (= lt!659564 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659563 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101296 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1522358 (arrayContainsKey!0 a!2804 lt!659563 #b00000000000000000000000000000000)))

(declare-fun lt!659562 () Unit!50864)

(assert (=> b!1522358 (= lt!659562 lt!659564)))

(declare-fun res!1041586 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101296 (_ BitVec 32)) SeekEntryResult!13062)

(assert (=> b!1522358 (= res!1041586 (= (seekEntryOrOpen!0 (select (arr!48876 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13062 #b00000000000000000000000000000000)))))

(assert (=> b!1522358 (=> (not res!1041586) (not e!848864))))

(assert (= (and d!159031 (not res!1041587)) b!1522356))

(assert (= (and b!1522356 c!139935) b!1522358))

(assert (= (and b!1522356 (not c!139935)) b!1522355))

(assert (= (and b!1522358 res!1041586) b!1522357))

(assert (= (or b!1522357 b!1522355) bm!68383))

(declare-fun m!1405489 () Bool)

(assert (=> bm!68383 m!1405489))

(declare-fun m!1405491 () Bool)

(assert (=> b!1522356 m!1405491))

(assert (=> b!1522356 m!1405491))

(declare-fun m!1405493 () Bool)

(assert (=> b!1522356 m!1405493))

(assert (=> b!1522358 m!1405491))

(declare-fun m!1405495 () Bool)

(assert (=> b!1522358 m!1405495))

(declare-fun m!1405497 () Bool)

(assert (=> b!1522358 m!1405497))

(assert (=> b!1522358 m!1405491))

(declare-fun m!1405499 () Bool)

(assert (=> b!1522358 m!1405499))

(assert (=> b!1522156 d!159031))

(declare-fun b!1522411 () Bool)

(declare-fun e!848903 () SeekEntryResult!13062)

(declare-fun e!848902 () SeekEntryResult!13062)

(assert (=> b!1522411 (= e!848903 e!848902)))

(declare-fun lt!659595 () (_ BitVec 64))

(declare-fun lt!659593 () SeekEntryResult!13062)

(assert (=> b!1522411 (= lt!659595 (select (arr!48876 a!2804) (index!54644 lt!659593)))))

(declare-fun c!139954 () Bool)

(assert (=> b!1522411 (= c!139954 (= lt!659595 (select (arr!48876 a!2804) j!70)))))

(declare-fun b!1522412 () Bool)

(assert (=> b!1522412 (= e!848903 Undefined!13062)))

(declare-fun d!159041 () Bool)

(declare-fun lt!659592 () SeekEntryResult!13062)

(assert (=> d!159041 (and (or (is-MissingVacant!13062 lt!659592) (not (is-Found!13062 lt!659592)) (and (bvsge (index!54643 lt!659592) #b00000000000000000000000000000000) (bvslt (index!54643 lt!659592) (size!49427 a!2804)))) (not (is-MissingVacant!13062 lt!659592)) (or (not (is-Found!13062 lt!659592)) (= (select (arr!48876 a!2804) (index!54643 lt!659592)) (select (arr!48876 a!2804) j!70))))))

(assert (=> d!159041 (= lt!659592 e!848903)))

(declare-fun c!139952 () Bool)

(assert (=> d!159041 (= c!139952 (and (is-Intermediate!13062 lt!659593) (undefined!13874 lt!659593)))))

(assert (=> d!159041 (= lt!659593 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) (select (arr!48876 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159041 (validMask!0 mask!2512)))

(assert (=> d!159041 (= (seekEntry!0 (select (arr!48876 a!2804) j!70) a!2804 mask!2512) lt!659592)))

(declare-fun b!1522413 () Bool)

(assert (=> b!1522413 (= e!848902 (Found!13062 (index!54644 lt!659593)))))

(declare-fun b!1522414 () Bool)

(declare-fun e!848904 () SeekEntryResult!13062)

(assert (=> b!1522414 (= e!848904 (MissingZero!13062 (index!54644 lt!659593)))))

(declare-fun b!1522415 () Bool)

(declare-fun lt!659594 () SeekEntryResult!13062)

(assert (=> b!1522415 (= e!848904 (ite (is-MissingVacant!13062 lt!659594) (MissingZero!13062 (index!54645 lt!659594)) lt!659594))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101296 (_ BitVec 32)) SeekEntryResult!13062)

(assert (=> b!1522415 (= lt!659594 (seekKeyOrZeroReturnVacant!0 (x!136333 lt!659593) (index!54644 lt!659593) (index!54644 lt!659593) (select (arr!48876 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522416 () Bool)

(declare-fun c!139953 () Bool)

(assert (=> b!1522416 (= c!139953 (= lt!659595 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522416 (= e!848902 e!848904)))

(assert (= (and d!159041 c!139952) b!1522412))

(assert (= (and d!159041 (not c!139952)) b!1522411))

(assert (= (and b!1522411 c!139954) b!1522413))

(assert (= (and b!1522411 (not c!139954)) b!1522416))

(assert (= (and b!1522416 c!139953) b!1522414))

(assert (= (and b!1522416 (not c!139953)) b!1522415))

(declare-fun m!1405531 () Bool)

(assert (=> b!1522411 m!1405531))

(declare-fun m!1405533 () Bool)

(assert (=> d!159041 m!1405533))

(assert (=> d!159041 m!1405355))

(assert (=> d!159041 m!1405373))

(assert (=> d!159041 m!1405373))

(assert (=> d!159041 m!1405355))

(assert (=> d!159041 m!1405375))

(assert (=> d!159041 m!1405385))

(assert (=> b!1522415 m!1405355))

(declare-fun m!1405535 () Bool)

(assert (=> b!1522415 m!1405535))

(assert (=> b!1522161 d!159041))

(declare-fun b!1522417 () Bool)

(declare-fun e!848907 () Bool)

(declare-fun call!68394 () Bool)

(assert (=> b!1522417 (= e!848907 call!68394)))

(declare-fun bm!68391 () Bool)

(assert (=> bm!68391 (= call!68394 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159057 () Bool)

(declare-fun res!1041609 () Bool)

(declare-fun e!848906 () Bool)

(assert (=> d!159057 (=> res!1041609 e!848906)))

(assert (=> d!159057 (= res!1041609 (bvsge j!70 (size!49427 a!2804)))))

(assert (=> d!159057 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!848906)))

(declare-fun b!1522418 () Bool)

(assert (=> b!1522418 (= e!848906 e!848907)))

(declare-fun c!139955 () Bool)

(assert (=> b!1522418 (= c!139955 (validKeyInArray!0 (select (arr!48876 a!2804) j!70)))))

(declare-fun b!1522419 () Bool)

(declare-fun e!848905 () Bool)

(assert (=> b!1522419 (= e!848905 call!68394)))

(declare-fun b!1522420 () Bool)

(assert (=> b!1522420 (= e!848907 e!848905)))

(declare-fun lt!659597 () (_ BitVec 64))

(assert (=> b!1522420 (= lt!659597 (select (arr!48876 a!2804) j!70))))

(declare-fun lt!659598 () Unit!50864)

(assert (=> b!1522420 (= lt!659598 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659597 j!70))))

(assert (=> b!1522420 (arrayContainsKey!0 a!2804 lt!659597 #b00000000000000000000000000000000)))

(declare-fun lt!659596 () Unit!50864)

(assert (=> b!1522420 (= lt!659596 lt!659598)))

(declare-fun res!1041608 () Bool)

(assert (=> b!1522420 (= res!1041608 (= (seekEntryOrOpen!0 (select (arr!48876 a!2804) j!70) a!2804 mask!2512) (Found!13062 j!70)))))

(assert (=> b!1522420 (=> (not res!1041608) (not e!848905))))

(assert (= (and d!159057 (not res!1041609)) b!1522418))

(assert (= (and b!1522418 c!139955) b!1522420))

(assert (= (and b!1522418 (not c!139955)) b!1522417))

(assert (= (and b!1522420 res!1041608) b!1522419))

(assert (= (or b!1522419 b!1522417) bm!68391))

(declare-fun m!1405537 () Bool)

(assert (=> bm!68391 m!1405537))

(assert (=> b!1522418 m!1405355))

(assert (=> b!1522418 m!1405355))

(assert (=> b!1522418 m!1405367))

(assert (=> b!1522420 m!1405355))

(declare-fun m!1405539 () Bool)

(assert (=> b!1522420 m!1405539))

(declare-fun m!1405541 () Bool)

(assert (=> b!1522420 m!1405541))

(assert (=> b!1522420 m!1405355))

(declare-fun m!1405543 () Bool)

(assert (=> b!1522420 m!1405543))

(assert (=> b!1522161 d!159057))

(declare-fun d!159059 () Bool)

(assert (=> d!159059 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!659601 () Unit!50864)

(declare-fun choose!38 (array!101296 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50864)

(assert (=> d!159059 (= lt!659601 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159059 (validMask!0 mask!2512)))

(assert (=> d!159059 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!659601)))

(declare-fun bs!43687 () Bool)

(assert (= bs!43687 d!159059))

(assert (=> bs!43687 m!1405359))

(declare-fun m!1405545 () Bool)

(assert (=> bs!43687 m!1405545))

(assert (=> bs!43687 m!1405385))

(assert (=> b!1522161 d!159059))

(declare-fun d!159061 () Bool)

(assert (=> d!159061 (= (validKeyInArray!0 (select (arr!48876 a!2804) j!70)) (and (not (= (select (arr!48876 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48876 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1522157 d!159061))

(declare-fun bm!68394 () Bool)

(declare-fun call!68397 () Bool)

(declare-fun c!139961 () Bool)

(assert (=> bm!68394 (= call!68397 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139961 (Cons!35535 (select (arr!48876 a!2804) #b00000000000000000000000000000000) Nil!35536) Nil!35536)))))

(declare-fun b!1522440 () Bool)

(declare-fun e!848924 () Bool)

(declare-fun e!848922 () Bool)

(assert (=> b!1522440 (= e!848924 e!848922)))

(declare-fun res!1041621 () Bool)

(assert (=> b!1522440 (=> (not res!1041621) (not e!848922))))

(declare-fun e!848921 () Bool)

(assert (=> b!1522440 (= res!1041621 (not e!848921))))

(declare-fun res!1041619 () Bool)

(assert (=> b!1522440 (=> (not res!1041619) (not e!848921))))

(assert (=> b!1522440 (= res!1041619 (validKeyInArray!0 (select (arr!48876 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522441 () Bool)

(declare-fun contains!9997 (List!35539 (_ BitVec 64)) Bool)

(assert (=> b!1522441 (= e!848921 (contains!9997 Nil!35536 (select (arr!48876 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522442 () Bool)

(declare-fun e!848923 () Bool)

(assert (=> b!1522442 (= e!848923 call!68397)))

(declare-fun d!159063 () Bool)

(declare-fun res!1041620 () Bool)

(assert (=> d!159063 (=> res!1041620 e!848924)))

(assert (=> d!159063 (= res!1041620 (bvsge #b00000000000000000000000000000000 (size!49427 a!2804)))))

(assert (=> d!159063 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35536) e!848924)))

(declare-fun b!1522443 () Bool)

(assert (=> b!1522443 (= e!848922 e!848923)))

(assert (=> b!1522443 (= c!139961 (validKeyInArray!0 (select (arr!48876 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522444 () Bool)

(assert (=> b!1522444 (= e!848923 call!68397)))

(assert (= (and d!159063 (not res!1041620)) b!1522440))

(assert (= (and b!1522440 res!1041619) b!1522441))

(assert (= (and b!1522440 res!1041621) b!1522443))

(assert (= (and b!1522443 c!139961) b!1522444))

(assert (= (and b!1522443 (not c!139961)) b!1522442))

(assert (= (or b!1522444 b!1522442) bm!68394))

(assert (=> bm!68394 m!1405491))

(declare-fun m!1405555 () Bool)

(assert (=> bm!68394 m!1405555))

(assert (=> b!1522440 m!1405491))

(assert (=> b!1522440 m!1405491))

(assert (=> b!1522440 m!1405493))

(assert (=> b!1522441 m!1405491))

(assert (=> b!1522441 m!1405491))

(declare-fun m!1405557 () Bool)

(assert (=> b!1522441 m!1405557))

(assert (=> b!1522443 m!1405491))

(assert (=> b!1522443 m!1405491))

(assert (=> b!1522443 m!1405493))

(assert (=> b!1522162 d!159063))

(push 1)

(assert (not d!159023))

(assert (not b!1522313))

(assert (not b!1522443))

(assert (not b!1522415))

(assert (not b!1522358))

(assert (not bm!68394))

(assert (not b!1522420))

(assert (not b!1522283))

(assert (not d!159005))

(assert (not bm!68391))

(assert (not d!159041))

(assert (not d!159059))

(assert (not b!1522418))

(assert (not bm!68383))

(assert (not b!1522440))

(assert (not d!159025))

(assert (not b!1522322))

(assert (not b!1522356))

(assert (not b!1522441))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1522541 () Bool)

(declare-fun lt!659649 () SeekEntryResult!13062)

(assert (=> b!1522541 (and (bvsge (index!54644 lt!659649) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659649) (size!49427 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804)))))))

(declare-fun res!1041654 () Bool)

(assert (=> b!1522541 (= res!1041654 (= (select (arr!48876 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804))) (index!54644 lt!659649)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848986 () Bool)

(assert (=> b!1522541 (=> res!1041654 e!848986)))

(declare-fun b!1522542 () Bool)

(declare-fun e!848987 () SeekEntryResult!13062)

(declare-fun e!848989 () SeekEntryResult!13062)

(assert (=> b!1522542 (= e!848987 e!848989)))

(declare-fun lt!659648 () (_ BitVec 64))

(declare-fun c!139997 () Bool)

(assert (=> b!1522542 (= c!139997 (or (= lt!659648 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!659648 lt!659648) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522543 () Bool)

(assert (=> b!1522543 (and (bvsge (index!54644 lt!659649) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659649) (size!49427 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804)))))))

(declare-fun res!1041652 () Bool)

(assert (=> b!1522543 (= res!1041652 (= (select (arr!48876 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804))) (index!54644 lt!659649)) (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1522543 (=> res!1041652 e!848986)))

(declare-fun e!848988 () Bool)

(assert (=> b!1522543 (= e!848988 e!848986)))

(declare-fun b!1522544 () Bool)

(declare-fun e!848985 () Bool)

(assert (=> b!1522544 (= e!848985 e!848988)))

(declare-fun res!1041653 () Bool)

(assert (=> b!1522544 (= res!1041653 (and (is-Intermediate!13062 lt!659649) (not (undefined!13874 lt!659649)) (bvslt (x!136333 lt!659649) #b01111111111111111111111111111110) (bvsge (x!136333 lt!659649) #b00000000000000000000000000000000) (bvsge (x!136333 lt!659649) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1522544 (=> (not res!1041653) (not e!848988))))

(declare-fun d!159109 () Bool)

(assert (=> d!159109 e!848985))

(declare-fun c!139996 () Bool)

(assert (=> d!159109 (= c!139996 (and (is-Intermediate!13062 lt!659649) (undefined!13874 lt!659649)))))

(assert (=> d!159109 (= lt!659649 e!848987)))

(declare-fun c!139995 () Bool)

(assert (=> d!159109 (= c!139995 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!159109 (= lt!659648 (select (arr!48876 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804))) (nextIndex!0 (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512)))))

(assert (=> d!159109 (validMask!0 mask!2512)))

(assert (=> d!159109 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804)) mask!2512) lt!659649)))

(declare-fun b!1522545 () Bool)

(assert (=> b!1522545 (= e!848985 (bvsge (x!136333 lt!659649) #b01111111111111111111111111111110))))

(declare-fun b!1522546 () Bool)

(assert (=> b!1522546 (= e!848987 (Intermediate!13062 true (nextIndex!0 (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1522547 () Bool)

(assert (=> b!1522547 (= e!848989 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2512) (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804)) mask!2512))))

(declare-fun b!1522548 () Bool)

(assert (=> b!1522548 (= e!848989 (Intermediate!13062 false (nextIndex!0 (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1522549 () Bool)

(assert (=> b!1522549 (and (bvsge (index!54644 lt!659649) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659649) (size!49427 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804)))))))

(assert (=> b!1522549 (= e!848986 (= (select (arr!48876 (array!101297 (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49427 a!2804))) (index!54644 lt!659649)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159109 c!139995) b!1522546))

(assert (= (and d!159109 (not c!139995)) b!1522542))

(assert (= (and b!1522542 c!139997) b!1522548))

(assert (= (and b!1522542 (not c!139997)) b!1522547))

(assert (= (and d!159109 c!139996) b!1522545))

(assert (= (and d!159109 (not c!139996)) b!1522544))

(assert (= (and b!1522544 res!1041653) b!1522543))

(assert (= (and b!1522543 (not res!1041652)) b!1522541))

(assert (= (and b!1522541 (not res!1041654)) b!1522549))

(assert (=> d!159109 m!1405433))

(declare-fun m!1405663 () Bool)

(assert (=> d!159109 m!1405663))

(assert (=> d!159109 m!1405385))

(declare-fun m!1405665 () Bool)

(assert (=> b!1522549 m!1405665))

(assert (=> b!1522541 m!1405665))

(assert (=> b!1522547 m!1405433))

(declare-fun m!1405667 () Bool)

(assert (=> b!1522547 m!1405667))

(assert (=> b!1522547 m!1405667))

(assert (=> b!1522547 m!1405379))

(declare-fun m!1405669 () Bool)

(assert (=> b!1522547 m!1405669))

(assert (=> b!1522543 m!1405665))

(assert (=> b!1522283 d!159109))

(declare-fun d!159111 () Bool)

(declare-fun lt!659652 () (_ BitVec 32))

(assert (=> d!159111 (and (bvsge lt!659652 #b00000000000000000000000000000000) (bvslt lt!659652 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!159111 (= lt!659652 (choose!52 (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512))))

(assert (=> d!159111 (validMask!0 mask!2512)))

(assert (=> d!159111 (= (nextIndex!0 (toIndex!0 (select (store (arr!48876 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) lt!659652)))

(declare-fun bs!43694 () Bool)

(assert (= bs!43694 d!159111))

(assert (=> bs!43694 m!1405381))

(declare-fun m!1405671 () Bool)

(assert (=> bs!43694 m!1405671))

(assert (=> bs!43694 m!1405385))

(assert (=> b!1522283 d!159111))

(declare-fun b!1522550 () Bool)

(declare-fun e!848992 () Bool)

(declare-fun call!68401 () Bool)

(assert (=> b!1522550 (= e!848992 call!68401)))

(declare-fun bm!68398 () Bool)

(assert (=> bm!68398 (= call!68401 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159113 () Bool)

(declare-fun res!1041656 () Bool)

(declare-fun e!848991 () Bool)

(assert (=> d!159113 (=> res!1041656 e!848991)))

(assert (=> d!159113 (= res!1041656 (bvsge (bvadd j!70 #b00000000000000000000000000000001) (size!49427 a!2804)))))

(assert (=> d!159113 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512) e!848991)))

(declare-fun b!1522551 () Bool)

(assert (=> b!1522551 (= e!848991 e!848992)))

(declare-fun c!139998 () Bool)

(assert (=> b!1522551 (= c!139998 (validKeyInArray!0 (select (arr!48876 a!2804) (bvadd j!70 #b00000000000000000000000000000001))))))

(declare-fun b!1522552 () Bool)

(declare-fun e!848990 () Bool)

(assert (=> b!1522552 (= e!848990 call!68401)))

(declare-fun b!1522553 () Bool)

(assert (=> b!1522553 (= e!848992 e!848990)))

(declare-fun lt!659654 () (_ BitVec 64))

(assert (=> b!1522553 (= lt!659654 (select (arr!48876 a!2804) (bvadd j!70 #b00000000000000000000000000000001)))))

(declare-fun lt!659655 () Unit!50864)

(assert (=> b!1522553 (= lt!659655 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659654 (bvadd j!70 #b00000000000000000000000000000001)))))

(assert (=> b!1522553 (arrayContainsKey!0 a!2804 lt!659654 #b00000000000000000000000000000000)))

(declare-fun lt!659653 () Unit!50864)

(assert (=> b!1522553 (= lt!659653 lt!659655)))

(declare-fun res!1041655 () Bool)

(assert (=> b!1522553 (= res!1041655 (= (seekEntryOrOpen!0 (select (arr!48876 a!2804) (bvadd j!70 #b00000000000000000000000000000001)) a!2804 mask!2512) (Found!13062 (bvadd j!70 #b00000000000000000000000000000001))))))

(assert (=> b!1522553 (=> (not res!1041655) (not e!848990))))

(assert (= (and d!159113 (not res!1041656)) b!1522551))

(assert (= (and b!1522551 c!139998) b!1522553))

(assert (= (and b!1522551 (not c!139998)) b!1522550))

(assert (= (and b!1522553 res!1041655) b!1522552))

(assert (= (or b!1522552 b!1522550) bm!68398))

(declare-fun m!1405673 () Bool)

(assert (=> bm!68398 m!1405673))

(declare-fun m!1405675 () Bool)

(assert (=> b!1522551 m!1405675))

(assert (=> b!1522551 m!1405675))

(declare-fun m!1405677 () Bool)

(assert (=> b!1522551 m!1405677))

(assert (=> b!1522553 m!1405675))

(declare-fun m!1405679 () Bool)

(assert (=> b!1522553 m!1405679))

(declare-fun m!1405681 () Bool)

(assert (=> b!1522553 m!1405681))

(assert (=> b!1522553 m!1405675))

(declare-fun m!1405683 () Bool)

(assert (=> b!1522553 m!1405683))

(assert (=> bm!68391 d!159113))

(assert (=> b!1522418 d!159061))

(assert (=> d!159005 d!158993))

(declare-fun b!1522566 () Bool)

(declare-fun e!849000 () SeekEntryResult!13062)

(declare-fun e!849001 () SeekEntryResult!13062)

(assert (=> b!1522566 (= e!849000 e!849001)))

(declare-fun lt!659661 () (_ BitVec 64))

(declare-fun c!140005 () Bool)

(assert (=> b!1522566 (= c!140005 (= lt!659661 (select (arr!48876 a!2804) j!70)))))

(declare-fun b!1522567 () Bool)

(declare-fun e!848999 () SeekEntryResult!13062)

(assert (=> b!1522567 (= e!848999 (MissingVacant!13062 (index!54644 lt!659593)))))

(declare-fun b!1522568 () Bool)

(assert (=> b!1522568 (= e!848999 (seekKeyOrZeroReturnVacant!0 (bvadd (x!136333 lt!659593) #b00000000000000000000000000000001) (nextIndex!0 (index!54644 lt!659593) (x!136333 lt!659593) mask!2512) (index!54644 lt!659593) (select (arr!48876 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522569 () Bool)

(declare-fun c!140007 () Bool)

(assert (=> b!1522569 (= c!140007 (= lt!659661 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522569 (= e!849001 e!848999)))

(declare-fun d!159115 () Bool)

(declare-fun lt!659660 () SeekEntryResult!13062)

(assert (=> d!159115 (and (or (is-Undefined!13062 lt!659660) (not (is-Found!13062 lt!659660)) (and (bvsge (index!54643 lt!659660) #b00000000000000000000000000000000) (bvslt (index!54643 lt!659660) (size!49427 a!2804)))) (or (is-Undefined!13062 lt!659660) (is-Found!13062 lt!659660) (not (is-MissingVacant!13062 lt!659660)) (not (= (index!54645 lt!659660) (index!54644 lt!659593))) (and (bvsge (index!54645 lt!659660) #b00000000000000000000000000000000) (bvslt (index!54645 lt!659660) (size!49427 a!2804)))) (or (is-Undefined!13062 lt!659660) (ite (is-Found!13062 lt!659660) (= (select (arr!48876 a!2804) (index!54643 lt!659660)) (select (arr!48876 a!2804) j!70)) (and (is-MissingVacant!13062 lt!659660) (= (index!54645 lt!659660) (index!54644 lt!659593)) (= (select (arr!48876 a!2804) (index!54645 lt!659660)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!159115 (= lt!659660 e!849000)))

(declare-fun c!140006 () Bool)

(assert (=> d!159115 (= c!140006 (bvsge (x!136333 lt!659593) #b01111111111111111111111111111110))))

(assert (=> d!159115 (= lt!659661 (select (arr!48876 a!2804) (index!54644 lt!659593)))))

(assert (=> d!159115 (validMask!0 mask!2512)))

(assert (=> d!159115 (= (seekKeyOrZeroReturnVacant!0 (x!136333 lt!659593) (index!54644 lt!659593) (index!54644 lt!659593) (select (arr!48876 a!2804) j!70) a!2804 mask!2512) lt!659660)))

(declare-fun b!1522570 () Bool)

(assert (=> b!1522570 (= e!849000 Undefined!13062)))

(declare-fun b!1522571 () Bool)

(assert (=> b!1522571 (= e!849001 (Found!13062 (index!54644 lt!659593)))))

(assert (= (and d!159115 c!140006) b!1522570))

(assert (= (and d!159115 (not c!140006)) b!1522566))

(assert (= (and b!1522566 c!140005) b!1522571))

(assert (= (and b!1522566 (not c!140005)) b!1522569))

(assert (= (and b!1522569 c!140007) b!1522567))

(assert (= (and b!1522569 (not c!140007)) b!1522568))

(declare-fun m!1405685 () Bool)

(assert (=> b!1522568 m!1405685))

(assert (=> b!1522568 m!1405685))

(assert (=> b!1522568 m!1405355))

(declare-fun m!1405687 () Bool)

(assert (=> b!1522568 m!1405687))

(declare-fun m!1405689 () Bool)

(assert (=> d!159115 m!1405689))

(declare-fun m!1405691 () Bool)

(assert (=> d!159115 m!1405691))

(assert (=> d!159115 m!1405531))

(assert (=> d!159115 m!1405385))

(assert (=> b!1522415 d!159115))

(declare-fun bm!68399 () Bool)

(declare-fun call!68402 () Bool)

(declare-fun c!140008 () Bool)

(assert (=> bm!68399 (= call!68402 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!140008 (Cons!35535 (select (arr!48876 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!139961 (Cons!35535 (select (arr!48876 a!2804) #b00000000000000000000000000000000) Nil!35536) Nil!35536)) (ite c!139961 (Cons!35535 (select (arr!48876 a!2804) #b00000000000000000000000000000000) Nil!35536) Nil!35536))))))

(declare-fun b!1522572 () Bool)

(declare-fun e!849005 () Bool)

(declare-fun e!849003 () Bool)

(assert (=> b!1522572 (= e!849005 e!849003)))

(declare-fun res!1041659 () Bool)

(assert (=> b!1522572 (=> (not res!1041659) (not e!849003))))

(declare-fun e!849002 () Bool)

(assert (=> b!1522572 (= res!1041659 (not e!849002))))

(declare-fun res!1041657 () Bool)

(assert (=> b!1522572 (=> (not res!1041657) (not e!849002))))

(assert (=> b!1522572 (= res!1041657 (validKeyInArray!0 (select (arr!48876 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1522573 () Bool)

(assert (=> b!1522573 (= e!849002 (contains!9997 (ite c!139961 (Cons!35535 (select (arr!48876 a!2804) #b00000000000000000000000000000000) Nil!35536) Nil!35536) (select (arr!48876 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1522574 () Bool)

(declare-fun e!849004 () Bool)

(assert (=> b!1522574 (= e!849004 call!68402)))

(declare-fun d!159117 () Bool)

(declare-fun res!1041658 () Bool)

(assert (=> d!159117 (=> res!1041658 e!849005)))

(assert (=> d!159117 (= res!1041658 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49427 a!2804)))))

(assert (=> d!159117 (= (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139961 (Cons!35535 (select (arr!48876 a!2804) #b00000000000000000000000000000000) Nil!35536) Nil!35536)) e!849005)))

(declare-fun b!1522575 () Bool)

(assert (=> b!1522575 (= e!849003 e!849004)))

(assert (=> b!1522575 (= c!140008 (validKeyInArray!0 (select (arr!48876 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1522576 () Bool)

(assert (=> b!1522576 (= e!849004 call!68402)))

(assert (= (and d!159117 (not res!1041658)) b!1522572))

(assert (= (and b!1522572 res!1041657) b!1522573))

(assert (= (and b!1522572 res!1041659) b!1522575))

(assert (= (and b!1522575 c!140008) b!1522576))

(assert (= (and b!1522575 (not c!140008)) b!1522574))

(assert (= (or b!1522576 b!1522574) bm!68399))

(declare-fun m!1405693 () Bool)

(assert (=> bm!68399 m!1405693))

(declare-fun m!1405695 () Bool)

(assert (=> bm!68399 m!1405695))

(assert (=> b!1522572 m!1405693))

(assert (=> b!1522572 m!1405693))

(declare-fun m!1405697 () Bool)

(assert (=> b!1522572 m!1405697))

(assert (=> b!1522573 m!1405693))

(assert (=> b!1522573 m!1405693))

(declare-fun m!1405699 () Bool)

(assert (=> b!1522573 m!1405699))

(assert (=> b!1522575 m!1405693))

(assert (=> b!1522575 m!1405693))

(assert (=> b!1522575 m!1405697))

(assert (=> bm!68394 d!159117))

(assert (=> d!159059 d!159057))

(declare-fun d!159119 () Bool)

(assert (=> d!159119 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(assert (=> d!159119 true))

(declare-fun _$72!167 () Unit!50864)

(assert (=> d!159119 (= (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) _$72!167)))

(declare-fun bs!43695 () Bool)

(assert (= bs!43695 d!159119))

(assert (=> bs!43695 m!1405359))

(assert (=> d!159059 d!159119))

(assert (=> d!159059 d!158993))

(declare-fun b!1522577 () Bool)

(declare-fun e!849008 () Bool)

(declare-fun call!68403 () Bool)

(assert (=> b!1522577 (= e!849008 call!68403)))

(declare-fun bm!68400 () Bool)

(assert (=> bm!68400 (= call!68403 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159121 () Bool)

(declare-fun res!1041661 () Bool)

(declare-fun e!849007 () Bool)

(assert (=> d!159121 (=> res!1041661 e!849007)))

(assert (=> d!159121 (= res!1041661 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49427 a!2804)))))

(assert (=> d!159121 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512) e!849007)))

(declare-fun b!1522578 () Bool)

(assert (=> b!1522578 (= e!849007 e!849008)))

(declare-fun c!140009 () Bool)

(assert (=> b!1522578 (= c!140009 (validKeyInArray!0 (select (arr!48876 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1522579 () Bool)

(declare-fun e!849006 () Bool)

(assert (=> b!1522579 (= e!849006 call!68403)))

(declare-fun b!1522580 () Bool)

(assert (=> b!1522580 (= e!849008 e!849006)))

(declare-fun lt!659663 () (_ BitVec 64))

(assert (=> b!1522580 (= lt!659663 (select (arr!48876 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!659664 () Unit!50864)

(assert (=> b!1522580 (= lt!659664 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659663 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1522580 (arrayContainsKey!0 a!2804 lt!659663 #b00000000000000000000000000000000)))

(declare-fun lt!659662 () Unit!50864)

(assert (=> b!1522580 (= lt!659662 lt!659664)))

(declare-fun res!1041660 () Bool)

(assert (=> b!1522580 (= res!1041660 (= (seekEntryOrOpen!0 (select (arr!48876 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2804 mask!2512) (Found!13062 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1522580 (=> (not res!1041660) (not e!849006))))

(assert (= (and d!159121 (not res!1041661)) b!1522578))

(assert (= (and b!1522578 c!140009) b!1522580))

(assert (= (and b!1522578 (not c!140009)) b!1522577))

(assert (= (and b!1522580 res!1041660) b!1522579))

(assert (= (or b!1522579 b!1522577) bm!68400))

(declare-fun m!1405701 () Bool)

(assert (=> bm!68400 m!1405701))

(assert (=> b!1522578 m!1405693))

(assert (=> b!1522578 m!1405693))

(assert (=> b!1522578 m!1405697))

(assert (=> b!1522580 m!1405693))

(declare-fun m!1405703 () Bool)

(assert (=> b!1522580 m!1405703))

(declare-fun m!1405705 () Bool)

(assert (=> b!1522580 m!1405705))

(assert (=> b!1522580 m!1405693))

(declare-fun m!1405707 () Bool)

(assert (=> b!1522580 m!1405707))

(assert (=> bm!68383 d!159121))

(declare-fun d!159123 () Bool)

(declare-fun lt!659667 () Bool)

(declare-fun content!792 (List!35539) (Set (_ BitVec 64)))

(assert (=> d!159123 (= lt!659667 (member (select (arr!48876 a!2804) #b00000000000000000000000000000000) (content!792 Nil!35536)))))

(declare-fun e!849014 () Bool)

(assert (=> d!159123 (= lt!659667 e!849014)))

(declare-fun res!1041666 () Bool)

(assert (=> d!159123 (=> (not res!1041666) (not e!849014))))

(assert (=> d!159123 (= res!1041666 (is-Cons!35535 Nil!35536))))

(assert (=> d!159123 (= (contains!9997 Nil!35536 (select (arr!48876 a!2804) #b00000000000000000000000000000000)) lt!659667)))

(declare-fun b!1522585 () Bool)

(declare-fun e!849013 () Bool)

(assert (=> b!1522585 (= e!849014 e!849013)))

(declare-fun res!1041667 () Bool)

(assert (=> b!1522585 (=> res!1041667 e!849013)))

(assert (=> b!1522585 (= res!1041667 (= (h!36957 Nil!35536) (select (arr!48876 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522586 () Bool)

(assert (=> b!1522586 (= e!849013 (contains!9997 (t!50240 Nil!35536) (select (arr!48876 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159123 res!1041666) b!1522585))

(assert (= (and b!1522585 (not res!1041667)) b!1522586))

(declare-fun m!1405709 () Bool)

(assert (=> d!159123 m!1405709))

(assert (=> d!159123 m!1405491))

(declare-fun m!1405711 () Bool)

(assert (=> d!159123 m!1405711))

(assert (=> b!1522586 m!1405491))

(declare-fun m!1405713 () Bool)

(assert (=> b!1522586 m!1405713))

(assert (=> b!1522441 d!159123))

(declare-fun d!159125 () Bool)

(assert (=> d!159125 (= (validKeyInArray!0 (select (arr!48876 a!2804) #b00000000000000000000000000000000)) (and (not (= (select (arr!48876 a!2804) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48876 a!2804) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1522440 d!159125))

(assert (=> b!1522356 d!159125))

(declare-fun d!159127 () Bool)

(assert (=> d!159127 (arrayContainsKey!0 a!2804 lt!659597 #b00000000000000000000000000000000)))

(declare-fun lt!659670 () Unit!50864)

(declare-fun choose!13 (array!101296 (_ BitVec 64) (_ BitVec 32)) Unit!50864)

(assert (=> d!159127 (= lt!659670 (choose!13 a!2804 lt!659597 j!70))))

(assert (=> d!159127 (bvsge j!70 #b00000000000000000000000000000000)))

(assert (=> d!159127 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659597 j!70) lt!659670)))

(declare-fun bs!43696 () Bool)

(assert (= bs!43696 d!159127))

(assert (=> bs!43696 m!1405541))

(declare-fun m!1405715 () Bool)

(assert (=> bs!43696 m!1405715))

(assert (=> b!1522420 d!159127))

(declare-fun d!159129 () Bool)

(declare-fun res!1041672 () Bool)

(declare-fun e!849019 () Bool)

(assert (=> d!159129 (=> res!1041672 e!849019)))

(assert (=> d!159129 (= res!1041672 (= (select (arr!48876 a!2804) #b00000000000000000000000000000000) lt!659597))))

(assert (=> d!159129 (= (arrayContainsKey!0 a!2804 lt!659597 #b00000000000000000000000000000000) e!849019)))

(declare-fun b!1522591 () Bool)

(declare-fun e!849020 () Bool)

(assert (=> b!1522591 (= e!849019 e!849020)))

(declare-fun res!1041673 () Bool)

(assert (=> b!1522591 (=> (not res!1041673) (not e!849020))))

(assert (=> b!1522591 (= res!1041673 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49427 a!2804)))))

(declare-fun b!1522592 () Bool)

(assert (=> b!1522592 (= e!849020 (arrayContainsKey!0 a!2804 lt!659597 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!159129 (not res!1041672)) b!1522591))

(assert (= (and b!1522591 res!1041673) b!1522592))

(assert (=> d!159129 m!1405491))

(declare-fun m!1405717 () Bool)

(assert (=> b!1522592 m!1405717))

(assert (=> b!1522420 d!159129))

(declare-fun b!1522605 () Bool)

(declare-fun e!849028 () SeekEntryResult!13062)

(assert (=> b!1522605 (= e!849028 Undefined!13062)))

(declare-fun lt!659678 () SeekEntryResult!13062)

(declare-fun e!849029 () SeekEntryResult!13062)

(declare-fun b!1522606 () Bool)

(assert (=> b!1522606 (= e!849029 (seekKeyOrZeroReturnVacant!0 (x!136333 lt!659678) (index!54644 lt!659678) (index!54644 lt!659678) (select (arr!48876 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159131 () Bool)

(declare-fun lt!659677 () SeekEntryResult!13062)

(assert (=> d!159131 (and (or (is-Undefined!13062 lt!659677) (not (is-Found!13062 lt!659677)) (and (bvsge (index!54643 lt!659677) #b00000000000000000000000000000000) (bvslt (index!54643 lt!659677) (size!49427 a!2804)))) (or (is-Undefined!13062 lt!659677) (is-Found!13062 lt!659677) (not (is-MissingZero!13062 lt!659677)) (and (bvsge (index!54642 lt!659677) #b00000000000000000000000000000000) (bvslt (index!54642 lt!659677) (size!49427 a!2804)))) (or (is-Undefined!13062 lt!659677) (is-Found!13062 lt!659677) (is-MissingZero!13062 lt!659677) (not (is-MissingVacant!13062 lt!659677)) (and (bvsge (index!54645 lt!659677) #b00000000000000000000000000000000) (bvslt (index!54645 lt!659677) (size!49427 a!2804)))) (or (is-Undefined!13062 lt!659677) (ite (is-Found!13062 lt!659677) (= (select (arr!48876 a!2804) (index!54643 lt!659677)) (select (arr!48876 a!2804) j!70)) (ite (is-MissingZero!13062 lt!659677) (= (select (arr!48876 a!2804) (index!54642 lt!659677)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13062 lt!659677) (= (select (arr!48876 a!2804) (index!54645 lt!659677)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159131 (= lt!659677 e!849028)))

(declare-fun c!140017 () Bool)

(assert (=> d!159131 (= c!140017 (and (is-Intermediate!13062 lt!659678) (undefined!13874 lt!659678)))))

(assert (=> d!159131 (= lt!659678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) (select (arr!48876 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159131 (validMask!0 mask!2512)))

(assert (=> d!159131 (= (seekEntryOrOpen!0 (select (arr!48876 a!2804) j!70) a!2804 mask!2512) lt!659677)))

(declare-fun b!1522607 () Bool)

(declare-fun c!140016 () Bool)

(declare-fun lt!659679 () (_ BitVec 64))

(assert (=> b!1522607 (= c!140016 (= lt!659679 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849027 () SeekEntryResult!13062)

(assert (=> b!1522607 (= e!849027 e!849029)))

(declare-fun b!1522608 () Bool)

(assert (=> b!1522608 (= e!849027 (Found!13062 (index!54644 lt!659678)))))

(declare-fun b!1522609 () Bool)

(assert (=> b!1522609 (= e!849029 (MissingZero!13062 (index!54644 lt!659678)))))

(declare-fun b!1522610 () Bool)

(assert (=> b!1522610 (= e!849028 e!849027)))

(assert (=> b!1522610 (= lt!659679 (select (arr!48876 a!2804) (index!54644 lt!659678)))))

(declare-fun c!140018 () Bool)

(assert (=> b!1522610 (= c!140018 (= lt!659679 (select (arr!48876 a!2804) j!70)))))

(assert (= (and d!159131 c!140017) b!1522605))

(assert (= (and d!159131 (not c!140017)) b!1522610))

(assert (= (and b!1522610 c!140018) b!1522608))

(assert (= (and b!1522610 (not c!140018)) b!1522607))

(assert (= (and b!1522607 c!140016) b!1522609))

(assert (= (and b!1522607 (not c!140016)) b!1522606))

(assert (=> b!1522606 m!1405355))

(declare-fun m!1405719 () Bool)

(assert (=> b!1522606 m!1405719))

(assert (=> d!159131 m!1405385))

(assert (=> d!159131 m!1405373))

(assert (=> d!159131 m!1405355))

(assert (=> d!159131 m!1405375))

(declare-fun m!1405721 () Bool)

(assert (=> d!159131 m!1405721))

(declare-fun m!1405723 () Bool)

(assert (=> d!159131 m!1405723))

(assert (=> d!159131 m!1405355))

(assert (=> d!159131 m!1405373))

(declare-fun m!1405725 () Bool)

(assert (=> d!159131 m!1405725))

(declare-fun m!1405727 () Bool)

(assert (=> b!1522610 m!1405727))

(assert (=> b!1522420 d!159131))

(declare-fun b!1522611 () Bool)

(declare-fun lt!659681 () SeekEntryResult!13062)

(assert (=> b!1522611 (and (bvsge (index!54644 lt!659681) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659681) (size!49427 a!2804)))))

(declare-fun res!1041676 () Bool)

(assert (=> b!1522611 (= res!1041676 (= (select (arr!48876 a!2804) (index!54644 lt!659681)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849031 () Bool)

(assert (=> b!1522611 (=> res!1041676 e!849031)))

(declare-fun b!1522612 () Bool)

(declare-fun e!849032 () SeekEntryResult!13062)

(declare-fun e!849034 () SeekEntryResult!13062)

(assert (=> b!1522612 (= e!849032 e!849034)))

(declare-fun lt!659680 () (_ BitVec 64))

(declare-fun c!140021 () Bool)

(assert (=> b!1522612 (= c!140021 (or (= lt!659680 (select (arr!48876 a!2804) j!70)) (= (bvadd lt!659680 lt!659680) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522613 () Bool)

(assert (=> b!1522613 (and (bvsge (index!54644 lt!659681) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659681) (size!49427 a!2804)))))

(declare-fun res!1041674 () Bool)

(assert (=> b!1522613 (= res!1041674 (= (select (arr!48876 a!2804) (index!54644 lt!659681)) (select (arr!48876 a!2804) j!70)))))

(assert (=> b!1522613 (=> res!1041674 e!849031)))

(declare-fun e!849033 () Bool)

(assert (=> b!1522613 (= e!849033 e!849031)))

(declare-fun b!1522614 () Bool)

(declare-fun e!849030 () Bool)

(assert (=> b!1522614 (= e!849030 e!849033)))

(declare-fun res!1041675 () Bool)

(assert (=> b!1522614 (= res!1041675 (and (is-Intermediate!13062 lt!659681) (not (undefined!13874 lt!659681)) (bvslt (x!136333 lt!659681) #b01111111111111111111111111111110) (bvsge (x!136333 lt!659681) #b00000000000000000000000000000000) (bvsge (x!136333 lt!659681) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1522614 (=> (not res!1041675) (not e!849033))))

(declare-fun d!159133 () Bool)

(assert (=> d!159133 e!849030))

(declare-fun c!140020 () Bool)

(assert (=> d!159133 (= c!140020 (and (is-Intermediate!13062 lt!659681) (undefined!13874 lt!659681)))))

(assert (=> d!159133 (= lt!659681 e!849032)))

(declare-fun c!140019 () Bool)

(assert (=> d!159133 (= c!140019 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!159133 (= lt!659680 (select (arr!48876 a!2804) (nextIndex!0 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512)))))

(assert (=> d!159133 (validMask!0 mask!2512)))

(assert (=> d!159133 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48876 a!2804) j!70) a!2804 mask!2512) lt!659681)))

(declare-fun b!1522615 () Bool)

(assert (=> b!1522615 (= e!849030 (bvsge (x!136333 lt!659681) #b01111111111111111111111111111110))))

(declare-fun b!1522616 () Bool)

(assert (=> b!1522616 (= e!849032 (Intermediate!13062 true (nextIndex!0 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1522617 () Bool)

(assert (=> b!1522617 (= e!849034 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2512) (select (arr!48876 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522618 () Bool)

(assert (=> b!1522618 (= e!849034 (Intermediate!13062 false (nextIndex!0 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1522619 () Bool)

(assert (=> b!1522619 (and (bvsge (index!54644 lt!659681) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659681) (size!49427 a!2804)))))

(assert (=> b!1522619 (= e!849031 (= (select (arr!48876 a!2804) (index!54644 lt!659681)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159133 c!140019) b!1522616))

(assert (= (and d!159133 (not c!140019)) b!1522612))

(assert (= (and b!1522612 c!140021) b!1522618))

(assert (= (and b!1522612 (not c!140021)) b!1522617))

(assert (= (and d!159133 c!140020) b!1522615))

(assert (= (and d!159133 (not c!140020)) b!1522614))

(assert (= (and b!1522614 res!1041675) b!1522613))

(assert (= (and b!1522613 (not res!1041674)) b!1522611))

(assert (= (and b!1522611 (not res!1041676)) b!1522619))

(assert (=> d!159133 m!1405467))

(declare-fun m!1405729 () Bool)

(assert (=> d!159133 m!1405729))

(assert (=> d!159133 m!1405385))

(declare-fun m!1405731 () Bool)

(assert (=> b!1522619 m!1405731))

(assert (=> b!1522611 m!1405731))

(assert (=> b!1522617 m!1405467))

(declare-fun m!1405733 () Bool)

(assert (=> b!1522617 m!1405733))

(assert (=> b!1522617 m!1405733))

(assert (=> b!1522617 m!1405355))

(declare-fun m!1405735 () Bool)

(assert (=> b!1522617 m!1405735))

(assert (=> b!1522613 m!1405731))

(assert (=> b!1522322 d!159133))

(declare-fun d!159135 () Bool)

(declare-fun lt!659682 () (_ BitVec 32))

(assert (=> d!159135 (and (bvsge lt!659682 #b00000000000000000000000000000000) (bvslt lt!659682 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(assert (=> d!159135 (= lt!659682 (choose!52 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512))))

(assert (=> d!159135 (validMask!0 mask!2512)))

(assert (=> d!159135 (= (nextIndex!0 (toIndex!0 (select (arr!48876 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) lt!659682)))

(declare-fun bs!43697 () Bool)

(assert (= bs!43697 d!159135))

(assert (=> bs!43697 m!1405373))

(declare-fun m!1405737 () Bool)

(assert (=> bs!43697 m!1405737))

(assert (=> bs!43697 m!1405385))

(assert (=> b!1522322 d!159135))

(declare-fun b!1522620 () Bool)

(declare-fun lt!659684 () SeekEntryResult!13062)

(assert (=> b!1522620 (and (bvsge (index!54644 lt!659684) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659684) (size!49427 a!2804)))))

(declare-fun res!1041679 () Bool)

(assert (=> b!1522620 (= res!1041679 (= (select (arr!48876 a!2804) (index!54644 lt!659684)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849036 () Bool)

(assert (=> b!1522620 (=> res!1041679 e!849036)))

(declare-fun b!1522621 () Bool)

(declare-fun e!849037 () SeekEntryResult!13062)

(declare-fun e!849039 () SeekEntryResult!13062)

(assert (=> b!1522621 (= e!849037 e!849039)))

(declare-fun c!140024 () Bool)

(declare-fun lt!659683 () (_ BitVec 64))

(assert (=> b!1522621 (= c!140024 (or (= lt!659683 (select (arr!48876 a!2804) j!70)) (= (bvadd lt!659683 lt!659683) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522622 () Bool)

(assert (=> b!1522622 (and (bvsge (index!54644 lt!659684) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659684) (size!49427 a!2804)))))

(declare-fun res!1041677 () Bool)

(assert (=> b!1522622 (= res!1041677 (= (select (arr!48876 a!2804) (index!54644 lt!659684)) (select (arr!48876 a!2804) j!70)))))

(assert (=> b!1522622 (=> res!1041677 e!849036)))

(declare-fun e!849038 () Bool)

(assert (=> b!1522622 (= e!849038 e!849036)))

(declare-fun b!1522623 () Bool)

(declare-fun e!849035 () Bool)

(assert (=> b!1522623 (= e!849035 e!849038)))

(declare-fun res!1041678 () Bool)

(assert (=> b!1522623 (= res!1041678 (and (is-Intermediate!13062 lt!659684) (not (undefined!13874 lt!659684)) (bvslt (x!136333 lt!659684) #b01111111111111111111111111111110) (bvsge (x!136333 lt!659684) #b00000000000000000000000000000000) (bvsge (x!136333 lt!659684) (bvadd x!534 #b00000000000000000000000000000001))))))

(assert (=> b!1522623 (=> (not res!1041678) (not e!849038))))

(declare-fun d!159137 () Bool)

(assert (=> d!159137 e!849035))

(declare-fun c!140023 () Bool)

(assert (=> d!159137 (= c!140023 (and (is-Intermediate!13062 lt!659684) (undefined!13874 lt!659684)))))

(assert (=> d!159137 (= lt!659684 e!849037)))

(declare-fun c!140022 () Bool)

(assert (=> d!159137 (= c!140022 (bvsge (bvadd x!534 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!159137 (= lt!659683 (select (arr!48876 a!2804) (nextIndex!0 index!487 x!534 mask!2512)))))

(assert (=> d!159137 (validMask!0 mask!2512)))

(assert (=> d!159137 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48876 a!2804) j!70) a!2804 mask!2512) lt!659684)))

(declare-fun b!1522624 () Bool)

(assert (=> b!1522624 (= e!849035 (bvsge (x!136333 lt!659684) #b01111111111111111111111111111110))))

(declare-fun b!1522625 () Bool)

(assert (=> b!1522625 (= e!849037 (Intermediate!13062 true (nextIndex!0 index!487 x!534 mask!2512) (bvadd x!534 #b00000000000000000000000000000001)))))

(declare-fun b!1522626 () Bool)

(assert (=> b!1522626 (= e!849039 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!487 x!534 mask!2512) (bvadd x!534 #b00000000000000000000000000000001) mask!2512) (select (arr!48876 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522627 () Bool)

(assert (=> b!1522627 (= e!849039 (Intermediate!13062 false (nextIndex!0 index!487 x!534 mask!2512) (bvadd x!534 #b00000000000000000000000000000001)))))

(declare-fun b!1522628 () Bool)

(assert (=> b!1522628 (and (bvsge (index!54644 lt!659684) #b00000000000000000000000000000000) (bvslt (index!54644 lt!659684) (size!49427 a!2804)))))

(assert (=> b!1522628 (= e!849036 (= (select (arr!48876 a!2804) (index!54644 lt!659684)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159137 c!140022) b!1522625))

(assert (= (and d!159137 (not c!140022)) b!1522621))

(assert (= (and b!1522621 c!140024) b!1522627))

(assert (= (and b!1522621 (not c!140024)) b!1522626))

(assert (= (and d!159137 c!140023) b!1522624))

(assert (= (and d!159137 (not c!140023)) b!1522623))

(assert (= (and b!1522623 res!1041678) b!1522622))

(assert (= (and b!1522622 (not res!1041677)) b!1522620))

(assert (= (and b!1522620 (not res!1041679)) b!1522628))

(assert (=> d!159137 m!1405457))

(declare-fun m!1405739 () Bool)

(assert (=> d!159137 m!1405739))

(assert (=> d!159137 m!1405385))

(declare-fun m!1405741 () Bool)

(assert (=> b!1522628 m!1405741))

(assert (=> b!1522620 m!1405741))

(assert (=> b!1522626 m!1405457))

(declare-fun m!1405743 () Bool)

(assert (=> b!1522626 m!1405743))

(assert (=> b!1522626 m!1405743))

(assert (=> b!1522626 m!1405355))

(declare-fun m!1405745 () Bool)

(assert (=> b!1522626 m!1405745))

(assert (=> b!1522622 m!1405741))

(assert (=> b!1522313 d!159137))

(declare-fun d!159139 () Bool)

(declare-fun lt!659685 () (_ BitVec 32))

(assert (=> d!159139 (and (bvsge lt!659685 #b00000000000000000000000000000000) (bvslt lt!659685 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(assert (=> d!159139 (= lt!659685 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!159139 (validMask!0 mask!2512)))

(assert (=> d!159139 (= (nextIndex!0 index!487 x!534 mask!2512) lt!659685)))

(declare-fun bs!43698 () Bool)

(assert (= bs!43698 d!159139))

(declare-fun m!1405747 () Bool)

(assert (=> bs!43698 m!1405747))

(assert (=> bs!43698 m!1405385))

(assert (=> b!1522313 d!159139))

(assert (=> d!159041 d!159025))

(assert (=> d!159041 d!159029))

(assert (=> d!159041 d!158993))

(assert (=> b!1522443 d!159125))

(assert (=> d!159023 d!158993))

(assert (=> d!159025 d!158993))

(declare-fun d!159141 () Bool)

(assert (=> d!159141 (arrayContainsKey!0 a!2804 lt!659563 #b00000000000000000000000000000000)))

(declare-fun lt!659686 () Unit!50864)

(assert (=> d!159141 (= lt!659686 (choose!13 a!2804 lt!659563 #b00000000000000000000000000000000))))

(assert (=> d!159141 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!159141 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659563 #b00000000000000000000000000000000) lt!659686)))

(declare-fun bs!43699 () Bool)

(assert (= bs!43699 d!159141))

(assert (=> bs!43699 m!1405497))

(declare-fun m!1405749 () Bool)

(assert (=> bs!43699 m!1405749))

(assert (=> b!1522358 d!159141))

(declare-fun d!159143 () Bool)

(declare-fun res!1041680 () Bool)

(declare-fun e!849040 () Bool)

(assert (=> d!159143 (=> res!1041680 e!849040)))

(assert (=> d!159143 (= res!1041680 (= (select (arr!48876 a!2804) #b00000000000000000000000000000000) lt!659563))))

(assert (=> d!159143 (= (arrayContainsKey!0 a!2804 lt!659563 #b00000000000000000000000000000000) e!849040)))

(declare-fun b!1522629 () Bool)

(declare-fun e!849041 () Bool)

(assert (=> b!1522629 (= e!849040 e!849041)))

(declare-fun res!1041681 () Bool)

(assert (=> b!1522629 (=> (not res!1041681) (not e!849041))))

(assert (=> b!1522629 (= res!1041681 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49427 a!2804)))))

(declare-fun b!1522630 () Bool)

(assert (=> b!1522630 (= e!849041 (arrayContainsKey!0 a!2804 lt!659563 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!159143 (not res!1041680)) b!1522629))

(assert (= (and b!1522629 res!1041681) b!1522630))

(assert (=> d!159143 m!1405491))

(declare-fun m!1405751 () Bool)

(assert (=> b!1522630 m!1405751))

(assert (=> b!1522358 d!159143))

(declare-fun b!1522631 () Bool)

(declare-fun e!849043 () SeekEntryResult!13062)

(assert (=> b!1522631 (= e!849043 Undefined!13062)))

(declare-fun b!1522632 () Bool)

(declare-fun e!849044 () SeekEntryResult!13062)

(declare-fun lt!659688 () SeekEntryResult!13062)

(assert (=> b!1522632 (= e!849044 (seekKeyOrZeroReturnVacant!0 (x!136333 lt!659688) (index!54644 lt!659688) (index!54644 lt!659688) (select (arr!48876 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512))))

(declare-fun d!159145 () Bool)

(declare-fun lt!659687 () SeekEntryResult!13062)

(assert (=> d!159145 (and (or (is-Undefined!13062 lt!659687) (not (is-Found!13062 lt!659687)) (and (bvsge (index!54643 lt!659687) #b00000000000000000000000000000000) (bvslt (index!54643 lt!659687) (size!49427 a!2804)))) (or (is-Undefined!13062 lt!659687) (is-Found!13062 lt!659687) (not (is-MissingZero!13062 lt!659687)) (and (bvsge (index!54642 lt!659687) #b00000000000000000000000000000000) (bvslt (index!54642 lt!659687) (size!49427 a!2804)))) (or (is-Undefined!13062 lt!659687) (is-Found!13062 lt!659687) (is-MissingZero!13062 lt!659687) (not (is-MissingVacant!13062 lt!659687)) (and (bvsge (index!54645 lt!659687) #b00000000000000000000000000000000) (bvslt (index!54645 lt!659687) (size!49427 a!2804)))) (or (is-Undefined!13062 lt!659687) (ite (is-Found!13062 lt!659687) (= (select (arr!48876 a!2804) (index!54643 lt!659687)) (select (arr!48876 a!2804) #b00000000000000000000000000000000)) (ite (is-MissingZero!13062 lt!659687) (= (select (arr!48876 a!2804) (index!54642 lt!659687)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13062 lt!659687) (= (select (arr!48876 a!2804) (index!54645 lt!659687)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159145 (= lt!659687 e!849043)))

(declare-fun c!140026 () Bool)

(assert (=> d!159145 (= c!140026 (and (is-Intermediate!13062 lt!659688) (undefined!13874 lt!659688)))))

(assert (=> d!159145 (= lt!659688 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48876 a!2804) #b00000000000000000000000000000000) mask!2512) (select (arr!48876 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512))))

(assert (=> d!159145 (validMask!0 mask!2512)))

(assert (=> d!159145 (= (seekEntryOrOpen!0 (select (arr!48876 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) lt!659687)))

(declare-fun b!1522633 () Bool)

(declare-fun c!140025 () Bool)

(declare-fun lt!659689 () (_ BitVec 64))

(assert (=> b!1522633 (= c!140025 (= lt!659689 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849042 () SeekEntryResult!13062)

(assert (=> b!1522633 (= e!849042 e!849044)))

(declare-fun b!1522634 () Bool)

(assert (=> b!1522634 (= e!849042 (Found!13062 (index!54644 lt!659688)))))

(declare-fun b!1522635 () Bool)

(assert (=> b!1522635 (= e!849044 (MissingZero!13062 (index!54644 lt!659688)))))

(declare-fun b!1522636 () Bool)

(assert (=> b!1522636 (= e!849043 e!849042)))

(assert (=> b!1522636 (= lt!659689 (select (arr!48876 a!2804) (index!54644 lt!659688)))))

(declare-fun c!140027 () Bool)

(assert (=> b!1522636 (= c!140027 (= lt!659689 (select (arr!48876 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159145 c!140026) b!1522631))

(assert (= (and d!159145 (not c!140026)) b!1522636))

(assert (= (and b!1522636 c!140027) b!1522634))

(assert (= (and b!1522636 (not c!140027)) b!1522633))

(assert (= (and b!1522633 c!140025) b!1522635))

(assert (= (and b!1522633 (not c!140025)) b!1522632))

(assert (=> b!1522632 m!1405491))

(declare-fun m!1405753 () Bool)

(assert (=> b!1522632 m!1405753))

(assert (=> d!159145 m!1405385))

(declare-fun m!1405755 () Bool)

(assert (=> d!159145 m!1405755))

(assert (=> d!159145 m!1405491))

(declare-fun m!1405757 () Bool)

(assert (=> d!159145 m!1405757))

(declare-fun m!1405759 () Bool)

(assert (=> d!159145 m!1405759))

(declare-fun m!1405761 () Bool)

(assert (=> d!159145 m!1405761))

(assert (=> d!159145 m!1405491))

(assert (=> d!159145 m!1405755))

(declare-fun m!1405763 () Bool)

(assert (=> d!159145 m!1405763))

(declare-fun m!1405765 () Bool)

(assert (=> b!1522636 m!1405765))

(assert (=> b!1522358 d!159145))

(push 1)

(assert (not b!1522578))

(assert (not d!159109))

(assert (not b!1522547))

(assert (not b!1522551))

(assert (not b!1522626))

(assert (not b!1522553))

(assert (not b!1522580))

(assert (not d!159111))

(assert (not b!1522575))

(assert (not d!159115))

(assert (not d!159123))

(assert (not d!159145))

(assert (not b!1522617))

(assert (not b!1522568))

(assert (not b!1522630))

(assert (not bm!68398))

(assert (not bm!68399))

(assert (not b!1522632))

(assert (not b!1522586))

(assert (not d!159119))

(assert (not bm!68400))

(assert (not d!159137))

(assert (not b!1522573))

(assert (not d!159139))

(assert (not b!1522592))

(assert (not d!159141))

(assert (not d!159131))

(assert (not d!159135))

(assert (not d!159127))

(assert (not b!1522606))

(assert (not d!159133))

(assert (not b!1522572))

(check-sat)

