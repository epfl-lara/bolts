; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130000 () Bool)

(assert start!130000)

(declare-fun b!1525047 () Bool)

(declare-fun e!850118 () Bool)

(declare-fun e!850119 () Bool)

(assert (=> b!1525047 (= e!850118 e!850119)))

(declare-fun res!1043553 () Bool)

(assert (=> b!1525047 (=> res!1043553 e!850119)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101403 0))(
  ( (array!101404 (arr!48925 (Array (_ BitVec 32) (_ BitVec 64))) (size!49476 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101403)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun lt!660505 () (_ BitVec 64))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1525047 (= res!1043553 (or (not (= (select (arr!48925 a!2804) j!70) lt!660505)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48925 a!2804) index!487) (select (arr!48925 a!2804) j!70)) (not (= (select (arr!48925 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1525048 () Bool)

(declare-fun e!850120 () Bool)

(declare-fun e!850121 () Bool)

(assert (=> b!1525048 (= e!850120 e!850121)))

(declare-fun res!1043557 () Bool)

(assert (=> b!1525048 (=> (not res!1043557) (not e!850121))))

(declare-fun lt!660502 () array!101403)

(declare-datatypes ((SeekEntryResult!13111 0))(
  ( (MissingZero!13111 (index!54838 (_ BitVec 32))) (Found!13111 (index!54839 (_ BitVec 32))) (Intermediate!13111 (undefined!13923 Bool) (index!54840 (_ BitVec 32)) (x!136543 (_ BitVec 32))) (Undefined!13111) (MissingVacant!13111 (index!54841 (_ BitVec 32))) )
))
(declare-fun lt!660501 () SeekEntryResult!13111)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101403 (_ BitVec 32)) SeekEntryResult!13111)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525048 (= res!1043557 (= lt!660501 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660505 mask!2512) lt!660505 lt!660502 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1525048 (= lt!660505 (select (store (arr!48925 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1525048 (= lt!660502 (array!101404 (store (arr!48925 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49476 a!2804)))))

(declare-fun b!1525049 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101403 (_ BitVec 32)) SeekEntryResult!13111)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101403 (_ BitVec 32)) SeekEntryResult!13111)

(assert (=> b!1525049 (= e!850119 (= (seekEntryOrOpen!0 (select (arr!48925 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48925 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun res!1043550 () Bool)

(declare-fun e!850124 () Bool)

(assert (=> start!130000 (=> (not res!1043550) (not e!850124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130000 (= res!1043550 (validMask!0 mask!2512))))

(assert (=> start!130000 e!850124))

(assert (=> start!130000 true))

(declare-fun array_inv!37870 (array!101403) Bool)

(assert (=> start!130000 (array_inv!37870 a!2804)))

(declare-fun b!1525050 () Bool)

(declare-fun e!850122 () Bool)

(assert (=> b!1525050 (= e!850122 (= (seekEntryOrOpen!0 lt!660505 lt!660502 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660505 lt!660502 mask!2512)))))

(declare-fun b!1525051 () Bool)

(declare-fun res!1043549 () Bool)

(assert (=> b!1525051 (=> (not res!1043549) (not e!850124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1525051 (= res!1043549 (validKeyInArray!0 (select (arr!48925 a!2804) j!70)))))

(declare-fun b!1525052 () Bool)

(declare-fun res!1043556 () Bool)

(assert (=> b!1525052 (=> (not res!1043556) (not e!850120))))

(declare-fun lt!660503 () SeekEntryResult!13111)

(assert (=> b!1525052 (= res!1043556 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48925 a!2804) j!70) a!2804 mask!2512) lt!660503))))

(declare-fun b!1525053 () Bool)

(declare-fun res!1043558 () Bool)

(assert (=> b!1525053 (=> (not res!1043558) (not e!850118))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101403 (_ BitVec 32)) SeekEntryResult!13111)

(assert (=> b!1525053 (= res!1043558 (= (seekEntry!0 (select (arr!48925 a!2804) j!70) a!2804 mask!2512) (Found!13111 j!70)))))

(declare-fun b!1525054 () Bool)

(declare-fun res!1043555 () Bool)

(assert (=> b!1525054 (=> (not res!1043555) (not e!850124))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101403 (_ BitVec 32)) Bool)

(assert (=> b!1525054 (= res!1043555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1525055 () Bool)

(declare-fun res!1043546 () Bool)

(assert (=> b!1525055 (=> (not res!1043546) (not e!850124))))

(assert (=> b!1525055 (= res!1043546 (validKeyInArray!0 (select (arr!48925 a!2804) i!961)))))

(declare-fun b!1525056 () Bool)

(declare-fun res!1043551 () Bool)

(assert (=> b!1525056 (=> (not res!1043551) (not e!850124))))

(assert (=> b!1525056 (= res!1043551 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49476 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49476 a!2804))))))

(declare-fun b!1525057 () Bool)

(assert (=> b!1525057 (= e!850121 (not e!850122))))

(declare-fun res!1043554 () Bool)

(assert (=> b!1525057 (=> res!1043554 e!850122)))

(assert (=> b!1525057 (= res!1043554 (or (not (= (select (arr!48925 a!2804) j!70) lt!660505)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48925 a!2804) index!487) (select (arr!48925 a!2804) j!70)) (not (= (select (arr!48925 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1525057 e!850118))

(declare-fun res!1043552 () Bool)

(assert (=> b!1525057 (=> (not res!1043552) (not e!850118))))

(assert (=> b!1525057 (= res!1043552 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50962 0))(
  ( (Unit!50963) )
))
(declare-fun lt!660504 () Unit!50962)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101403 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50962)

(assert (=> b!1525057 (= lt!660504 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1525058 () Bool)

(declare-fun res!1043547 () Bool)

(assert (=> b!1525058 (=> (not res!1043547) (not e!850124))))

(assert (=> b!1525058 (= res!1043547 (and (= (size!49476 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49476 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49476 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1525059 () Bool)

(assert (=> b!1525059 (= e!850124 e!850120)))

(declare-fun res!1043559 () Bool)

(assert (=> b!1525059 (=> (not res!1043559) (not e!850120))))

(assert (=> b!1525059 (= res!1043559 (= lt!660501 lt!660503))))

(assert (=> b!1525059 (= lt!660503 (Intermediate!13111 false resIndex!21 resX!21))))

(assert (=> b!1525059 (= lt!660501 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48925 a!2804) j!70) mask!2512) (select (arr!48925 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525060 () Bool)

(declare-fun res!1043548 () Bool)

(assert (=> b!1525060 (=> (not res!1043548) (not e!850124))))

(declare-datatypes ((List!35588 0))(
  ( (Nil!35585) (Cons!35584 (h!37015 (_ BitVec 64)) (t!50289 List!35588)) )
))
(declare-fun arrayNoDuplicates!0 (array!101403 (_ BitVec 32) List!35588) Bool)

(assert (=> b!1525060 (= res!1043548 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35585))))

(assert (= (and start!130000 res!1043550) b!1525058))

(assert (= (and b!1525058 res!1043547) b!1525055))

(assert (= (and b!1525055 res!1043546) b!1525051))

(assert (= (and b!1525051 res!1043549) b!1525054))

(assert (= (and b!1525054 res!1043555) b!1525060))

(assert (= (and b!1525060 res!1043548) b!1525056))

(assert (= (and b!1525056 res!1043551) b!1525059))

(assert (= (and b!1525059 res!1043559) b!1525052))

(assert (= (and b!1525052 res!1043556) b!1525048))

(assert (= (and b!1525048 res!1043557) b!1525057))

(assert (= (and b!1525057 res!1043552) b!1525053))

(assert (= (and b!1525053 res!1043558) b!1525047))

(assert (= (and b!1525047 (not res!1043553)) b!1525049))

(assert (= (and b!1525057 (not res!1043554)) b!1525050))

(declare-fun m!1407987 () Bool)

(assert (=> b!1525052 m!1407987))

(assert (=> b!1525052 m!1407987))

(declare-fun m!1407989 () Bool)

(assert (=> b!1525052 m!1407989))

(assert (=> b!1525051 m!1407987))

(assert (=> b!1525051 m!1407987))

(declare-fun m!1407991 () Bool)

(assert (=> b!1525051 m!1407991))

(declare-fun m!1407993 () Bool)

(assert (=> b!1525050 m!1407993))

(declare-fun m!1407995 () Bool)

(assert (=> b!1525050 m!1407995))

(declare-fun m!1407997 () Bool)

(assert (=> b!1525048 m!1407997))

(assert (=> b!1525048 m!1407997))

(declare-fun m!1407999 () Bool)

(assert (=> b!1525048 m!1407999))

(declare-fun m!1408001 () Bool)

(assert (=> b!1525048 m!1408001))

(declare-fun m!1408003 () Bool)

(assert (=> b!1525048 m!1408003))

(declare-fun m!1408005 () Bool)

(assert (=> b!1525055 m!1408005))

(assert (=> b!1525055 m!1408005))

(declare-fun m!1408007 () Bool)

(assert (=> b!1525055 m!1408007))

(declare-fun m!1408009 () Bool)

(assert (=> b!1525060 m!1408009))

(declare-fun m!1408011 () Bool)

(assert (=> start!130000 m!1408011))

(declare-fun m!1408013 () Bool)

(assert (=> start!130000 m!1408013))

(assert (=> b!1525047 m!1407987))

(declare-fun m!1408015 () Bool)

(assert (=> b!1525047 m!1408015))

(assert (=> b!1525057 m!1407987))

(assert (=> b!1525057 m!1408015))

(declare-fun m!1408017 () Bool)

(assert (=> b!1525057 m!1408017))

(declare-fun m!1408019 () Bool)

(assert (=> b!1525057 m!1408019))

(declare-fun m!1408021 () Bool)

(assert (=> b!1525054 m!1408021))

(assert (=> b!1525053 m!1407987))

(assert (=> b!1525053 m!1407987))

(declare-fun m!1408023 () Bool)

(assert (=> b!1525053 m!1408023))

(assert (=> b!1525059 m!1407987))

(assert (=> b!1525059 m!1407987))

(declare-fun m!1408025 () Bool)

(assert (=> b!1525059 m!1408025))

(assert (=> b!1525059 m!1408025))

(assert (=> b!1525059 m!1407987))

(declare-fun m!1408027 () Bool)

(assert (=> b!1525059 m!1408027))

(assert (=> b!1525049 m!1407987))

(assert (=> b!1525049 m!1407987))

(declare-fun m!1408029 () Bool)

(assert (=> b!1525049 m!1408029))

(assert (=> b!1525049 m!1407987))

(declare-fun m!1408031 () Bool)

(assert (=> b!1525049 m!1408031))

(push 1)

(assert (not b!1525048))

(assert (not b!1525054))

(assert (not b!1525052))

(assert (not b!1525053))

(assert (not b!1525049))

(assert (not b!1525059))

(assert (not b!1525051))

(assert (not b!1525050))

(assert (not b!1525055))

(assert (not start!130000))

(assert (not b!1525060))

(assert (not b!1525057))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1525232 () Bool)

(declare-fun lt!660560 () SeekEntryResult!13111)

(assert (=> b!1525232 (and (bvsge (index!54840 lt!660560) #b00000000000000000000000000000000) (bvslt (index!54840 lt!660560) (size!49476 lt!660502)))))

(declare-fun res!1043667 () Bool)

(assert (=> b!1525232 (= res!1043667 (= (select (arr!48925 lt!660502) (index!54840 lt!660560)) lt!660505))))

(declare-fun e!850217 () Bool)

(assert (=> b!1525232 (=> res!1043667 e!850217)))

(declare-fun e!850218 () Bool)

(assert (=> b!1525232 (= e!850218 e!850217)))

(declare-fun b!1525233 () Bool)

(declare-fun e!850221 () SeekEntryResult!13111)

(declare-fun e!850219 () SeekEntryResult!13111)

(assert (=> b!1525233 (= e!850221 e!850219)))

(declare-fun c!140337 () Bool)

(declare-fun lt!660559 () (_ BitVec 64))

(assert (=> b!1525233 (= c!140337 (or (= lt!660559 lt!660505) (= (bvadd lt!660559 lt!660559) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1525235 () Bool)

(assert (=> b!1525235 (= e!850219 (Intermediate!13111 false (toIndex!0 lt!660505 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525236 () Bool)

(assert (=> b!1525236 (= e!850221 (Intermediate!13111 true (toIndex!0 lt!660505 mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525237 () Bool)

(declare-fun e!850220 () Bool)

(assert (=> b!1525237 (= e!850220 (bvsge (x!136543 lt!660560) #b01111111111111111111111111111110))))

(declare-fun b!1525238 () Bool)

(assert (=> b!1525238 (and (bvsge (index!54840 lt!660560) #b00000000000000000000000000000000) (bvslt (index!54840 lt!660560) (size!49476 lt!660502)))))

(assert (=> b!1525238 (= e!850217 (= (select (arr!48925 lt!660502) (index!54840 lt!660560)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1525239 () Bool)

(assert (=> b!1525239 (and (bvsge (index!54840 lt!660560) #b00000000000000000000000000000000) (bvslt (index!54840 lt!660560) (size!49476 lt!660502)))))

(declare-fun res!1043666 () Bool)

(assert (=> b!1525239 (= res!1043666 (= (select (arr!48925 lt!660502) (index!54840 lt!660560)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525239 (=> res!1043666 e!850217)))

(declare-fun b!1525240 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1525240 (= e!850219 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!660505 mask!2512) #b00000000000000000000000000000000 mask!2512) lt!660505 lt!660502 mask!2512))))

(declare-fun d!159379 () Bool)

(assert (=> d!159379 e!850220))

(declare-fun c!140338 () Bool)

(assert (=> d!159379 (= c!140338 (and (is-Intermediate!13111 lt!660560) (undefined!13923 lt!660560)))))

(assert (=> d!159379 (= lt!660560 e!850221)))

(declare-fun c!140339 () Bool)

(assert (=> d!159379 (= c!140339 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159379 (= lt!660559 (select (arr!48925 lt!660502) (toIndex!0 lt!660505 mask!2512)))))

(assert (=> d!159379 (validMask!0 mask!2512)))

(assert (=> d!159379 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660505 mask!2512) lt!660505 lt!660502 mask!2512) lt!660560)))

(declare-fun b!1525234 () Bool)

(assert (=> b!1525234 (= e!850220 e!850218)))

(declare-fun res!1043665 () Bool)

(assert (=> b!1525234 (= res!1043665 (and (is-Intermediate!13111 lt!660560) (not (undefined!13923 lt!660560)) (bvslt (x!136543 lt!660560) #b01111111111111111111111111111110) (bvsge (x!136543 lt!660560) #b00000000000000000000000000000000) (bvsge (x!136543 lt!660560) #b00000000000000000000000000000000)))))

(assert (=> b!1525234 (=> (not res!1043665) (not e!850218))))

(assert (= (and d!159379 c!140339) b!1525236))

(assert (= (and d!159379 (not c!140339)) b!1525233))

(assert (= (and b!1525233 c!140337) b!1525235))

(assert (= (and b!1525233 (not c!140337)) b!1525240))

(assert (= (and d!159379 c!140338) b!1525237))

(assert (= (and d!159379 (not c!140338)) b!1525234))

(assert (= (and b!1525234 res!1043665) b!1525232))

(assert (= (and b!1525232 (not res!1043667)) b!1525239))

(assert (= (and b!1525239 (not res!1043666)) b!1525238))

(declare-fun m!1408153 () Bool)

(assert (=> b!1525232 m!1408153))

(assert (=> b!1525238 m!1408153))

(assert (=> d!159379 m!1407997))

(declare-fun m!1408155 () Bool)

(assert (=> d!159379 m!1408155))

(assert (=> d!159379 m!1408011))

(assert (=> b!1525239 m!1408153))

(assert (=> b!1525240 m!1407997))

(declare-fun m!1408157 () Bool)

(assert (=> b!1525240 m!1408157))

(assert (=> b!1525240 m!1408157))

(declare-fun m!1408159 () Bool)

(assert (=> b!1525240 m!1408159))

(assert (=> b!1525048 d!159379))

(declare-fun d!159385 () Bool)

(declare-fun lt!660572 () (_ BitVec 32))

(declare-fun lt!660571 () (_ BitVec 32))

(assert (=> d!159385 (= lt!660572 (bvmul (bvxor lt!660571 (bvlshr lt!660571 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159385 (= lt!660571 ((_ extract 31 0) (bvand (bvxor lt!660505 (bvlshr lt!660505 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159385 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043668 (let ((h!37018 ((_ extract 31 0) (bvand (bvxor lt!660505 (bvlshr lt!660505 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136550 (bvmul (bvxor h!37018 (bvlshr h!37018 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136550 (bvlshr x!136550 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043668 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043668 #b00000000000000000000000000000000))))))

(assert (=> d!159385 (= (toIndex!0 lt!660505 mask!2512) (bvand (bvxor lt!660572 (bvlshr lt!660572 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1525048 d!159385))

(declare-fun d!159389 () Bool)

(assert (=> d!159389 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130000 d!159389))

(declare-fun d!159399 () Bool)

(assert (=> d!159399 (= (array_inv!37870 a!2804) (bvsge (size!49476 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130000 d!159399))

(declare-fun b!1525294 () Bool)

(declare-fun e!850254 () Bool)

(declare-fun e!850255 () Bool)

(assert (=> b!1525294 (= e!850254 e!850255)))

(declare-fun lt!660597 () (_ BitVec 64))

(assert (=> b!1525294 (= lt!660597 (select (arr!48925 a!2804) j!70))))

(declare-fun lt!660596 () Unit!50962)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101403 (_ BitVec 64) (_ BitVec 32)) Unit!50962)

(assert (=> b!1525294 (= lt!660596 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660597 j!70))))

(declare-fun arrayContainsKey!0 (array!101403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1525294 (arrayContainsKey!0 a!2804 lt!660597 #b00000000000000000000000000000000)))

(declare-fun lt!660595 () Unit!50962)

(assert (=> b!1525294 (= lt!660595 lt!660596)))

(declare-fun res!1043690 () Bool)

(assert (=> b!1525294 (= res!1043690 (= (seekEntryOrOpen!0 (select (arr!48925 a!2804) j!70) a!2804 mask!2512) (Found!13111 j!70)))))

(assert (=> b!1525294 (=> (not res!1043690) (not e!850255))))

(declare-fun b!1525295 () Bool)

(declare-fun e!850253 () Bool)

(assert (=> b!1525295 (= e!850253 e!850254)))

(declare-fun c!140357 () Bool)

(assert (=> b!1525295 (= c!140357 (validKeyInArray!0 (select (arr!48925 a!2804) j!70)))))

(declare-fun b!1525296 () Bool)

(declare-fun call!68451 () Bool)

(assert (=> b!1525296 (= e!850255 call!68451)))

(declare-fun bm!68448 () Bool)

(assert (=> bm!68448 (= call!68451 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1525297 () Bool)

(assert (=> b!1525297 (= e!850254 call!68451)))

(declare-fun d!159401 () Bool)

(declare-fun res!1043691 () Bool)

(assert (=> d!159401 (=> res!1043691 e!850253)))

(assert (=> d!159401 (= res!1043691 (bvsge j!70 (size!49476 a!2804)))))

(assert (=> d!159401 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!850253)))

(assert (= (and d!159401 (not res!1043691)) b!1525295))

(assert (= (and b!1525295 c!140357) b!1525294))

(assert (= (and b!1525295 (not c!140357)) b!1525297))

(assert (= (and b!1525294 res!1043690) b!1525296))

(assert (= (or b!1525296 b!1525297) bm!68448))

(assert (=> b!1525294 m!1407987))

(declare-fun m!1408181 () Bool)

(assert (=> b!1525294 m!1408181))

(declare-fun m!1408183 () Bool)

(assert (=> b!1525294 m!1408183))

(assert (=> b!1525294 m!1407987))

(assert (=> b!1525294 m!1408029))

(assert (=> b!1525295 m!1407987))

(assert (=> b!1525295 m!1407987))

(assert (=> b!1525295 m!1407991))

(declare-fun m!1408185 () Bool)

(assert (=> bm!68448 m!1408185))

(assert (=> b!1525057 d!159401))

(declare-fun d!159415 () Bool)

(assert (=> d!159415 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!660600 () Unit!50962)

(declare-fun choose!38 (array!101403 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50962)

(assert (=> d!159415 (= lt!660600 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159415 (validMask!0 mask!2512)))

(assert (=> d!159415 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!660600)))

(declare-fun bs!43757 () Bool)

(assert (= bs!43757 d!159415))

(assert (=> bs!43757 m!1408017))

(declare-fun m!1408187 () Bool)

(assert (=> bs!43757 m!1408187))

(assert (=> bs!43757 m!1408011))

(assert (=> b!1525057 d!159415))

(declare-fun b!1525367 () Bool)

(declare-fun c!140386 () Bool)

(declare-fun lt!660635 () (_ BitVec 64))

(assert (=> b!1525367 (= c!140386 (= lt!660635 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!850299 () SeekEntryResult!13111)

(declare-fun e!850298 () SeekEntryResult!13111)

(assert (=> b!1525367 (= e!850299 e!850298)))

(declare-fun b!1525368 () Bool)

(declare-fun lt!660634 () SeekEntryResult!13111)

(assert (=> b!1525368 (= e!850298 (seekKeyOrZeroReturnVacant!0 (x!136543 lt!660634) (index!54840 lt!660634) (index!54840 lt!660634) lt!660505 lt!660502 mask!2512))))

(declare-fun b!1525369 () Bool)

(assert (=> b!1525369 (= e!850299 (Found!13111 (index!54840 lt!660634)))))

(declare-fun b!1525370 () Bool)

(assert (=> b!1525370 (= e!850298 (MissingZero!13111 (index!54840 lt!660634)))))

(declare-fun b!1525371 () Bool)

(declare-fun e!850300 () SeekEntryResult!13111)

(assert (=> b!1525371 (= e!850300 e!850299)))

(assert (=> b!1525371 (= lt!660635 (select (arr!48925 lt!660502) (index!54840 lt!660634)))))

(declare-fun c!140387 () Bool)

(assert (=> b!1525371 (= c!140387 (= lt!660635 lt!660505))))

(declare-fun d!159417 () Bool)

(declare-fun lt!660633 () SeekEntryResult!13111)

(assert (=> d!159417 (and (or (is-Undefined!13111 lt!660633) (not (is-Found!13111 lt!660633)) (and (bvsge (index!54839 lt!660633) #b00000000000000000000000000000000) (bvslt (index!54839 lt!660633) (size!49476 lt!660502)))) (or (is-Undefined!13111 lt!660633) (is-Found!13111 lt!660633) (not (is-MissingZero!13111 lt!660633)) (and (bvsge (index!54838 lt!660633) #b00000000000000000000000000000000) (bvslt (index!54838 lt!660633) (size!49476 lt!660502)))) (or (is-Undefined!13111 lt!660633) (is-Found!13111 lt!660633) (is-MissingZero!13111 lt!660633) (not (is-MissingVacant!13111 lt!660633)) (and (bvsge (index!54841 lt!660633) #b00000000000000000000000000000000) (bvslt (index!54841 lt!660633) (size!49476 lt!660502)))) (or (is-Undefined!13111 lt!660633) (ite (is-Found!13111 lt!660633) (= (select (arr!48925 lt!660502) (index!54839 lt!660633)) lt!660505) (ite (is-MissingZero!13111 lt!660633) (= (select (arr!48925 lt!660502) (index!54838 lt!660633)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13111 lt!660633) (= (select (arr!48925 lt!660502) (index!54841 lt!660633)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159417 (= lt!660633 e!850300)))

(declare-fun c!140385 () Bool)

(assert (=> d!159417 (= c!140385 (and (is-Intermediate!13111 lt!660634) (undefined!13923 lt!660634)))))

(assert (=> d!159417 (= lt!660634 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!660505 mask!2512) lt!660505 lt!660502 mask!2512))))

(assert (=> d!159417 (validMask!0 mask!2512)))

(assert (=> d!159417 (= (seekEntryOrOpen!0 lt!660505 lt!660502 mask!2512) lt!660633)))

(declare-fun b!1525372 () Bool)

(assert (=> b!1525372 (= e!850300 Undefined!13111)))

(assert (= (and d!159417 c!140385) b!1525372))

(assert (= (and d!159417 (not c!140385)) b!1525371))

(assert (= (and b!1525371 c!140387) b!1525369))

(assert (= (and b!1525371 (not c!140387)) b!1525367))

(assert (= (and b!1525367 c!140386) b!1525370))

(assert (= (and b!1525367 (not c!140386)) b!1525368))

(declare-fun m!1408231 () Bool)

(assert (=> b!1525368 m!1408231))

(declare-fun m!1408233 () Bool)

(assert (=> b!1525371 m!1408233))

(declare-fun m!1408235 () Bool)

(assert (=> d!159417 m!1408235))

(declare-fun m!1408237 () Bool)

(assert (=> d!159417 m!1408237))

(declare-fun m!1408239 () Bool)

(assert (=> d!159417 m!1408239))

(assert (=> d!159417 m!1407997))

(assert (=> d!159417 m!1408011))

(assert (=> d!159417 m!1407997))

(assert (=> d!159417 m!1407999))

(assert (=> b!1525050 d!159417))

(declare-fun b!1525464 () Bool)

(declare-fun e!850351 () SeekEntryResult!13111)

(assert (=> b!1525464 (= e!850351 Undefined!13111)))

(declare-fun b!1525465 () Bool)

(declare-fun e!850349 () SeekEntryResult!13111)

(assert (=> b!1525465 (= e!850351 e!850349)))

(declare-fun c!140428 () Bool)

(declare-fun lt!660677 () (_ BitVec 64))

(assert (=> b!1525465 (= c!140428 (= lt!660677 lt!660505))))

(declare-fun b!1525466 () Bool)

(assert (=> b!1525466 (= e!850349 (Found!13111 index!487))))

(declare-fun b!1525467 () Bool)

(declare-fun c!140429 () Bool)

(assert (=> b!1525467 (= c!140429 (= lt!660677 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!850350 () SeekEntryResult!13111)

(assert (=> b!1525467 (= e!850349 e!850350)))

(declare-fun d!159431 () Bool)

(declare-fun lt!660676 () SeekEntryResult!13111)

(assert (=> d!159431 (and (or (is-Undefined!13111 lt!660676) (not (is-Found!13111 lt!660676)) (and (bvsge (index!54839 lt!660676) #b00000000000000000000000000000000) (bvslt (index!54839 lt!660676) (size!49476 lt!660502)))) (or (is-Undefined!13111 lt!660676) (is-Found!13111 lt!660676) (not (is-MissingVacant!13111 lt!660676)) (not (= (index!54841 lt!660676) index!487)) (and (bvsge (index!54841 lt!660676) #b00000000000000000000000000000000) (bvslt (index!54841 lt!660676) (size!49476 lt!660502)))) (or (is-Undefined!13111 lt!660676) (ite (is-Found!13111 lt!660676) (= (select (arr!48925 lt!660502) (index!54839 lt!660676)) lt!660505) (and (is-MissingVacant!13111 lt!660676) (= (index!54841 lt!660676) index!487) (= (select (arr!48925 lt!660502) (index!54841 lt!660676)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!159431 (= lt!660676 e!850351)))

(declare-fun c!140430 () Bool)

(assert (=> d!159431 (= c!140430 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159431 (= lt!660677 (select (arr!48925 lt!660502) index!487))))

(assert (=> d!159431 (validMask!0 mask!2512)))

(assert (=> d!159431 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!660505 lt!660502 mask!2512) lt!660676)))

(declare-fun b!1525468 () Bool)

(assert (=> b!1525468 (= e!850350 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 lt!660505 lt!660502 mask!2512))))

(declare-fun b!1525469 () Bool)

(assert (=> b!1525469 (= e!850350 (MissingVacant!13111 index!487))))

(assert (= (and d!159431 c!140430) b!1525464))

(assert (= (and d!159431 (not c!140430)) b!1525465))

(assert (= (and b!1525465 c!140428) b!1525466))

(assert (= (and b!1525465 (not c!140428)) b!1525467))

(assert (= (and b!1525467 c!140429) b!1525469))

(assert (= (and b!1525467 (not c!140429)) b!1525468))

(declare-fun m!1408301 () Bool)

(assert (=> d!159431 m!1408301))

(declare-fun m!1408303 () Bool)

(assert (=> d!159431 m!1408303))

(declare-fun m!1408305 () Bool)

(assert (=> d!159431 m!1408305))

(assert (=> d!159431 m!1408011))

(declare-fun m!1408307 () Bool)

(assert (=> b!1525468 m!1408307))

(assert (=> b!1525468 m!1408307))

(declare-fun m!1408309 () Bool)

(assert (=> b!1525468 m!1408309))

(assert (=> b!1525050 d!159431))

(declare-fun b!1525476 () Bool)

(declare-fun lt!660685 () SeekEntryResult!13111)

(assert (=> b!1525476 (and (bvsge (index!54840 lt!660685) #b00000000000000000000000000000000) (bvslt (index!54840 lt!660685) (size!49476 a!2804)))))

(declare-fun res!1043724 () Bool)

(assert (=> b!1525476 (= res!1043724 (= (select (arr!48925 a!2804) (index!54840 lt!660685)) (select (arr!48925 a!2804) j!70)))))

(declare-fun e!850358 () Bool)

(assert (=> b!1525476 (=> res!1043724 e!850358)))

(declare-fun e!850359 () Bool)

(assert (=> b!1525476 (= e!850359 e!850358)))

(declare-fun b!1525477 () Bool)

(declare-fun e!850362 () SeekEntryResult!13111)

(declare-fun e!850360 () SeekEntryResult!13111)

(assert (=> b!1525477 (= e!850362 e!850360)))

(declare-fun c!140433 () Bool)

(declare-fun lt!660684 () (_ BitVec 64))

(assert (=> b!1525477 (= c!140433 (or (= lt!660684 (select (arr!48925 a!2804) j!70)) (= (bvadd lt!660684 lt!660684) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1525479 () Bool)

(assert (=> b!1525479 (= e!850360 (Intermediate!13111 false (toIndex!0 (select (arr!48925 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525482 () Bool)

(assert (=> b!1525482 (= e!850362 (Intermediate!13111 true (toIndex!0 (select (arr!48925 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1525483 () Bool)

(declare-fun e!850361 () Bool)

(assert (=> b!1525483 (= e!850361 (bvsge (x!136543 lt!660685) #b01111111111111111111111111111110))))

(declare-fun b!1525484 () Bool)

(assert (=> b!1525484 (and (bvsge (index!54840 lt!660685) #b00000000000000000000000000000000) (bvslt (index!54840 lt!660685) (size!49476 a!2804)))))

(assert (=> b!1525484 (= e!850358 (= (select (arr!48925 a!2804) (index!54840 lt!660685)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1525485 () Bool)

(assert (=> b!1525485 (and (bvsge (index!54840 lt!660685) #b00000000000000000000000000000000) (bvslt (index!54840 lt!660685) (size!49476 a!2804)))))

(declare-fun res!1043723 () Bool)

(assert (=> b!1525485 (= res!1043723 (= (select (arr!48925 a!2804) (index!54840 lt!660685)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525485 (=> res!1043723 e!850358)))

(declare-fun b!1525486 () Bool)

(assert (=> b!1525486 (= e!850360 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48925 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48925 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159455 () Bool)

(assert (=> d!159455 e!850361))

(declare-fun c!140434 () Bool)

(assert (=> d!159455 (= c!140434 (and (is-Intermediate!13111 lt!660685) (undefined!13923 lt!660685)))))

(assert (=> d!159455 (= lt!660685 e!850362)))

(declare-fun c!140435 () Bool)

(assert (=> d!159455 (= c!140435 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159455 (= lt!660684 (select (arr!48925 a!2804) (toIndex!0 (select (arr!48925 a!2804) j!70) mask!2512)))))

(assert (=> d!159455 (validMask!0 mask!2512)))

(assert (=> d!159455 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48925 a!2804) j!70) mask!2512) (select (arr!48925 a!2804) j!70) a!2804 mask!2512) lt!660685)))

(declare-fun b!1525478 () Bool)

(assert (=> b!1525478 (= e!850361 e!850359)))

(declare-fun res!1043722 () Bool)

(assert (=> b!1525478 (= res!1043722 (and (is-Intermediate!13111 lt!660685) (not (undefined!13923 lt!660685)) (bvslt (x!136543 lt!660685) #b01111111111111111111111111111110) (bvsge (x!136543 lt!660685) #b00000000000000000000000000000000) (bvsge (x!136543 lt!660685) #b00000000000000000000000000000000)))))

(assert (=> b!1525478 (=> (not res!1043722) (not e!850359))))

(assert (= (and d!159455 c!140435) b!1525482))

(assert (= (and d!159455 (not c!140435)) b!1525477))

(assert (= (and b!1525477 c!140433) b!1525479))

(assert (= (and b!1525477 (not c!140433)) b!1525486))

(assert (= (and d!159455 c!140434) b!1525483))

(assert (= (and d!159455 (not c!140434)) b!1525478))

(assert (= (and b!1525478 res!1043722) b!1525476))

(assert (= (and b!1525476 (not res!1043724)) b!1525485))

(assert (= (and b!1525485 (not res!1043723)) b!1525484))

(declare-fun m!1408311 () Bool)

(assert (=> b!1525476 m!1408311))

(assert (=> b!1525484 m!1408311))

(assert (=> d!159455 m!1408025))

(declare-fun m!1408313 () Bool)

(assert (=> d!159455 m!1408313))

(assert (=> d!159455 m!1408011))

(assert (=> b!1525485 m!1408311))

(assert (=> b!1525486 m!1408025))

(declare-fun m!1408315 () Bool)

(assert (=> b!1525486 m!1408315))

(assert (=> b!1525486 m!1408315))

(assert (=> b!1525486 m!1407987))

(declare-fun m!1408317 () Bool)

(assert (=> b!1525486 m!1408317))

(assert (=> b!1525059 d!159455))

(declare-fun d!159457 () Bool)

(declare-fun lt!660687 () (_ BitVec 32))

(declare-fun lt!660686 () (_ BitVec 32))

(assert (=> d!159457 (= lt!660687 (bvmul (bvxor lt!660686 (bvlshr lt!660686 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159457 (= lt!660686 ((_ extract 31 0) (bvand (bvxor (select (arr!48925 a!2804) j!70) (bvlshr (select (arr!48925 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159457 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043668 (let ((h!37018 ((_ extract 31 0) (bvand (bvxor (select (arr!48925 a!2804) j!70) (bvlshr (select (arr!48925 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136550 (bvmul (bvxor h!37018 (bvlshr h!37018 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136550 (bvlshr x!136550 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043668 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043668 #b00000000000000000000000000000000))))))

(assert (=> d!159457 (= (toIndex!0 (select (arr!48925 a!2804) j!70) mask!2512) (bvand (bvxor lt!660687 (bvlshr lt!660687 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1525059 d!159457))

(declare-fun b!1525501 () Bool)

(declare-fun e!850375 () Bool)

(declare-fun e!850374 () Bool)

(assert (=> b!1525501 (= e!850375 e!850374)))

(declare-fun c!140439 () Bool)

(assert (=> b!1525501 (= c!140439 (validKeyInArray!0 (select (arr!48925 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1525502 () Bool)

(declare-fun call!68464 () Bool)

(assert (=> b!1525502 (= e!850374 call!68464)))

(declare-fun bm!68461 () Bool)

(assert (=> bm!68461 (= call!68464 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140439 (Cons!35584 (select (arr!48925 a!2804) #b00000000000000000000000000000000) Nil!35585) Nil!35585)))))

(declare-fun b!1525503 () Bool)

(declare-fun e!850376 () Bool)

(declare-fun contains!10006 (List!35588 (_ BitVec 64)) Bool)

(assert (=> b!1525503 (= e!850376 (contains!10006 Nil!35585 (select (arr!48925 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1525504 () Bool)

(assert (=> b!1525504 (= e!850374 call!68464)))

(declare-fun b!1525505 () Bool)

(declare-fun e!850377 () Bool)

(assert (=> b!1525505 (= e!850377 e!850375)))

(declare-fun res!1043734 () Bool)

(assert (=> b!1525505 (=> (not res!1043734) (not e!850375))))

(assert (=> b!1525505 (= res!1043734 (not e!850376))))

(declare-fun res!1043733 () Bool)

(assert (=> b!1525505 (=> (not res!1043733) (not e!850376))))

(assert (=> b!1525505 (= res!1043733 (validKeyInArray!0 (select (arr!48925 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159459 () Bool)

(declare-fun res!1043735 () Bool)

(assert (=> d!159459 (=> res!1043735 e!850377)))

(assert (=> d!159459 (= res!1043735 (bvsge #b00000000000000000000000000000000 (size!49476 a!2804)))))

(assert (=> d!159459 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35585) e!850377)))

(assert (= (and d!159459 (not res!1043735)) b!1525505))

(assert (= (and b!1525505 res!1043733) b!1525503))

(assert (= (and b!1525505 res!1043734) b!1525501))

(assert (= (and b!1525501 c!140439) b!1525504))

(assert (= (and b!1525501 (not c!140439)) b!1525502))

(assert (= (or b!1525504 b!1525502) bm!68461))

(declare-fun m!1408327 () Bool)

(assert (=> b!1525501 m!1408327))

(assert (=> b!1525501 m!1408327))

(declare-fun m!1408329 () Bool)

(assert (=> b!1525501 m!1408329))

(assert (=> bm!68461 m!1408327))

(declare-fun m!1408331 () Bool)

(assert (=> bm!68461 m!1408331))

(assert (=> b!1525503 m!1408327))

(assert (=> b!1525503 m!1408327))

(declare-fun m!1408335 () Bool)

(assert (=> b!1525503 m!1408335))

(assert (=> b!1525505 m!1408327))

(assert (=> b!1525505 m!1408327))

(assert (=> b!1525505 m!1408329))

(assert (=> b!1525060 d!159459))

(declare-fun b!1525510 () Bool)

(declare-fun c!140442 () Bool)

(declare-fun lt!660699 () (_ BitVec 64))

(assert (=> b!1525510 (= c!140442 (= lt!660699 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!850382 () SeekEntryResult!13111)

(declare-fun e!850381 () SeekEntryResult!13111)

(assert (=> b!1525510 (= e!850382 e!850381)))

(declare-fun b!1525511 () Bool)

(declare-fun lt!660698 () SeekEntryResult!13111)

(assert (=> b!1525511 (= e!850381 (seekKeyOrZeroReturnVacant!0 (x!136543 lt!660698) (index!54840 lt!660698) (index!54840 lt!660698) (select (arr!48925 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525512 () Bool)

(assert (=> b!1525512 (= e!850382 (Found!13111 (index!54840 lt!660698)))))

(declare-fun b!1525513 () Bool)

(assert (=> b!1525513 (= e!850381 (MissingZero!13111 (index!54840 lt!660698)))))

(declare-fun b!1525514 () Bool)

(declare-fun e!850383 () SeekEntryResult!13111)

(assert (=> b!1525514 (= e!850383 e!850382)))

(assert (=> b!1525514 (= lt!660699 (select (arr!48925 a!2804) (index!54840 lt!660698)))))

(declare-fun c!140443 () Bool)

(assert (=> b!1525514 (= c!140443 (= lt!660699 (select (arr!48925 a!2804) j!70)))))

(declare-fun d!159465 () Bool)

(declare-fun lt!660697 () SeekEntryResult!13111)

(assert (=> d!159465 (and (or (is-Undefined!13111 lt!660697) (not (is-Found!13111 lt!660697)) (and (bvsge (index!54839 lt!660697) #b00000000000000000000000000000000) (bvslt (index!54839 lt!660697) (size!49476 a!2804)))) (or (is-Undefined!13111 lt!660697) (is-Found!13111 lt!660697) (not (is-MissingZero!13111 lt!660697)) (and (bvsge (index!54838 lt!660697) #b00000000000000000000000000000000) (bvslt (index!54838 lt!660697) (size!49476 a!2804)))) (or (is-Undefined!13111 lt!660697) (is-Found!13111 lt!660697) (is-MissingZero!13111 lt!660697) (not (is-MissingVacant!13111 lt!660697)) (and (bvsge (index!54841 lt!660697) #b00000000000000000000000000000000) (bvslt (index!54841 lt!660697) (size!49476 a!2804)))) (or (is-Undefined!13111 lt!660697) (ite (is-Found!13111 lt!660697) (= (select (arr!48925 a!2804) (index!54839 lt!660697)) (select (arr!48925 a!2804) j!70)) (ite (is-MissingZero!13111 lt!660697) (= (select (arr!48925 a!2804) (index!54838 lt!660697)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13111 lt!660697) (= (select (arr!48925 a!2804) (index!54841 lt!660697)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159465 (= lt!660697 e!850383)))

(declare-fun c!140441 () Bool)

(assert (=> d!159465 (= c!140441 (and (is-Intermediate!13111 lt!660698) (undefined!13923 lt!660698)))))

(assert (=> d!159465 (= lt!660698 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48925 a!2804) j!70) mask!2512) (select (arr!48925 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159465 (validMask!0 mask!2512)))

(assert (=> d!159465 (= (seekEntryOrOpen!0 (select (arr!48925 a!2804) j!70) a!2804 mask!2512) lt!660697)))

(declare-fun b!1525515 () Bool)

(assert (=> b!1525515 (= e!850383 Undefined!13111)))

(assert (= (and d!159465 c!140441) b!1525515))

(assert (= (and d!159465 (not c!140441)) b!1525514))

(assert (= (and b!1525514 c!140443) b!1525512))

(assert (= (and b!1525514 (not c!140443)) b!1525510))

(assert (= (and b!1525510 c!140442) b!1525513))

(assert (= (and b!1525510 (not c!140442)) b!1525511))

(assert (=> b!1525511 m!1407987))

(declare-fun m!1408343 () Bool)

(assert (=> b!1525511 m!1408343))

(declare-fun m!1408345 () Bool)

(assert (=> b!1525514 m!1408345))

(declare-fun m!1408347 () Bool)

(assert (=> d!159465 m!1408347))

(declare-fun m!1408349 () Bool)

(assert (=> d!159465 m!1408349))

(declare-fun m!1408351 () Bool)

(assert (=> d!159465 m!1408351))

(assert (=> d!159465 m!1407987))

(assert (=> d!159465 m!1408025))

(assert (=> d!159465 m!1408011))

(assert (=> d!159465 m!1408025))

(assert (=> d!159465 m!1407987))

(assert (=> d!159465 m!1408027))

(assert (=> b!1525049 d!159465))

(declare-fun b!1525516 () Bool)

(declare-fun e!850386 () SeekEntryResult!13111)

(assert (=> b!1525516 (= e!850386 Undefined!13111)))

(declare-fun b!1525517 () Bool)

(declare-fun e!850384 () SeekEntryResult!13111)

(assert (=> b!1525517 (= e!850386 e!850384)))

(declare-fun lt!660701 () (_ BitVec 64))

(declare-fun c!140444 () Bool)

(assert (=> b!1525517 (= c!140444 (= lt!660701 (select (arr!48925 a!2804) j!70)))))

(declare-fun b!1525518 () Bool)

(assert (=> b!1525518 (= e!850384 (Found!13111 index!487))))

(declare-fun b!1525519 () Bool)

(declare-fun c!140445 () Bool)

(assert (=> b!1525519 (= c!140445 (= lt!660701 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!850385 () SeekEntryResult!13111)

(assert (=> b!1525519 (= e!850384 e!850385)))

(declare-fun lt!660700 () SeekEntryResult!13111)

(declare-fun d!159469 () Bool)

(assert (=> d!159469 (and (or (is-Undefined!13111 lt!660700) (not (is-Found!13111 lt!660700)) (and (bvsge (index!54839 lt!660700) #b00000000000000000000000000000000) (bvslt (index!54839 lt!660700) (size!49476 a!2804)))) (or (is-Undefined!13111 lt!660700) (is-Found!13111 lt!660700) (not (is-MissingVacant!13111 lt!660700)) (not (= (index!54841 lt!660700) index!487)) (and (bvsge (index!54841 lt!660700) #b00000000000000000000000000000000) (bvslt (index!54841 lt!660700) (size!49476 a!2804)))) (or (is-Undefined!13111 lt!660700) (ite (is-Found!13111 lt!660700) (= (select (arr!48925 a!2804) (index!54839 lt!660700)) (select (arr!48925 a!2804) j!70)) (and (is-MissingVacant!13111 lt!660700) (= (index!54841 lt!660700) index!487) (= (select (arr!48925 a!2804) (index!54841 lt!660700)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!159469 (= lt!660700 e!850386)))

(declare-fun c!140446 () Bool)

(assert (=> d!159469 (= c!140446 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159469 (= lt!660701 (select (arr!48925 a!2804) index!487))))

(assert (=> d!159469 (validMask!0 mask!2512)))

(assert (=> d!159469 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48925 a!2804) j!70) a!2804 mask!2512) lt!660700)))

(declare-fun b!1525520 () Bool)

(assert (=> b!1525520 (= e!850385 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 (select (arr!48925 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525521 () Bool)

(assert (=> b!1525521 (= e!850385 (MissingVacant!13111 index!487))))

(assert (= (and d!159469 c!140446) b!1525516))

(assert (= (and d!159469 (not c!140446)) b!1525517))

(assert (= (and b!1525517 c!140444) b!1525518))

(assert (= (and b!1525517 (not c!140444)) b!1525519))

(assert (= (and b!1525519 c!140445) b!1525521))

(assert (= (and b!1525519 (not c!140445)) b!1525520))

(declare-fun m!1408353 () Bool)

(assert (=> d!159469 m!1408353))

(declare-fun m!1408355 () Bool)

(assert (=> d!159469 m!1408355))

(assert (=> d!159469 m!1408015))

(assert (=> d!159469 m!1408011))

(assert (=> b!1525520 m!1408307))

(assert (=> b!1525520 m!1408307))

(assert (=> b!1525520 m!1407987))

(declare-fun m!1408357 () Bool)

(assert (=> b!1525520 m!1408357))

(assert (=> b!1525049 d!159469))

(declare-fun b!1525552 () Bool)

(declare-fun e!850403 () SeekEntryResult!13111)

(declare-fun lt!660724 () SeekEntryResult!13111)

(assert (=> b!1525552 (= e!850403 (MissingZero!13111 (index!54840 lt!660724)))))

(declare-fun b!1525553 () Bool)

(declare-fun e!850404 () SeekEntryResult!13111)

(declare-fun e!850402 () SeekEntryResult!13111)

(assert (=> b!1525553 (= e!850404 e!850402)))

(declare-fun lt!660725 () (_ BitVec 64))

(assert (=> b!1525553 (= lt!660725 (select (arr!48925 a!2804) (index!54840 lt!660724)))))

(declare-fun c!140462 () Bool)

(assert (=> b!1525553 (= c!140462 (= lt!660725 (select (arr!48925 a!2804) j!70)))))

(declare-fun d!159471 () Bool)

(declare-fun lt!660722 () SeekEntryResult!13111)

(assert (=> d!159471 (and (or (is-MissingVacant!13111 lt!660722) (not (is-Found!13111 lt!660722)) (and (bvsge (index!54839 lt!660722) #b00000000000000000000000000000000) (bvslt (index!54839 lt!660722) (size!49476 a!2804)))) (not (is-MissingVacant!13111 lt!660722)) (or (not (is-Found!13111 lt!660722)) (= (select (arr!48925 a!2804) (index!54839 lt!660722)) (select (arr!48925 a!2804) j!70))))))

(assert (=> d!159471 (= lt!660722 e!850404)))

(declare-fun c!140464 () Bool)

(assert (=> d!159471 (= c!140464 (and (is-Intermediate!13111 lt!660724) (undefined!13923 lt!660724)))))

(assert (=> d!159471 (= lt!660724 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48925 a!2804) j!70) mask!2512) (select (arr!48925 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159471 (validMask!0 mask!2512)))

(assert (=> d!159471 (= (seekEntry!0 (select (arr!48925 a!2804) j!70) a!2804 mask!2512) lt!660722)))

(declare-fun b!1525554 () Bool)

(assert (=> b!1525554 (= e!850402 (Found!13111 (index!54840 lt!660724)))))

(declare-fun b!1525555 () Bool)

(declare-fun lt!660723 () SeekEntryResult!13111)

(assert (=> b!1525555 (= e!850403 (ite (is-MissingVacant!13111 lt!660723) (MissingZero!13111 (index!54841 lt!660723)) lt!660723))))

(assert (=> b!1525555 (= lt!660723 (seekKeyOrZeroReturnVacant!0 (x!136543 lt!660724) (index!54840 lt!660724) (index!54840 lt!660724) (select (arr!48925 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1525556 () Bool)

(declare-fun c!140463 () Bool)

(assert (=> b!1525556 (= c!140463 (= lt!660725 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525556 (= e!850402 e!850403)))

(declare-fun b!1525557 () Bool)

(assert (=> b!1525557 (= e!850404 Undefined!13111)))

(assert (= (and d!159471 c!140464) b!1525557))

(assert (= (and d!159471 (not c!140464)) b!1525553))

(assert (= (and b!1525553 c!140462) b!1525554))

(assert (= (and b!1525553 (not c!140462)) b!1525556))

(assert (= (and b!1525556 c!140463) b!1525552))

(assert (= (and b!1525556 (not c!140463)) b!1525555))

(declare-fun m!1408365 () Bool)

(assert (=> b!1525553 m!1408365))

(declare-fun m!1408367 () Bool)

(assert (=> d!159471 m!1408367))

(assert (=> d!159471 m!1407987))

(assert (=> d!159471 m!1408025))

(assert (=> d!159471 m!1408025))

(assert (=> d!159471 m!1407987))

(assert (=> d!159471 m!1408027))

(assert (=> d!159471 m!1408011))

(assert (=> b!1525555 m!1407987))

(declare-fun m!1408369 () Bool)

(assert (=> b!1525555 m!1408369))

(assert (=> b!1525053 d!159471))

(declare-fun d!159473 () Bool)

(assert (=> d!159473 (= (validKeyInArray!0 (select (arr!48925 a!2804) j!70)) (and (not (= (select (arr!48925 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48925 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1525051 d!159473))

(declare-fun b!1525558 () Bool)

(declare-fun lt!660727 () SeekEntryResult!13111)

(assert (=> b!1525558 (and (bvsge (index!54840 lt!660727) #b00000000000000000000000000000000) (bvslt (index!54840 lt!660727) (size!49476 a!2804)))))

(declare-fun res!1043740 () Bool)

(assert (=> b!1525558 (= res!1043740 (= (select (arr!48925 a!2804) (index!54840 lt!660727)) (select (arr!48925 a!2804) j!70)))))

(declare-fun e!850405 () Bool)

(assert (=> b!1525558 (=> res!1043740 e!850405)))

(declare-fun e!850406 () Bool)

(assert (=> b!1525558 (= e!850406 e!850405)))

(declare-fun b!1525559 () Bool)

(declare-fun e!850409 () SeekEntryResult!13111)

(declare-fun e!850407 () SeekEntryResult!13111)

(assert (=> b!1525559 (= e!850409 e!850407)))

(declare-fun lt!660726 () (_ BitVec 64))

(declare-fun c!140465 () Bool)

(assert (=> b!1525559 (= c!140465 (or (= lt!660726 (select (arr!48925 a!2804) j!70)) (= (bvadd lt!660726 lt!660726) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1525561 () Bool)

(assert (=> b!1525561 (= e!850407 (Intermediate!13111 false index!487 x!534))))

(declare-fun b!1525562 () Bool)

(assert (=> b!1525562 (= e!850409 (Intermediate!13111 true index!487 x!534))))

(declare-fun b!1525563 () Bool)

(declare-fun e!850408 () Bool)

(assert (=> b!1525563 (= e!850408 (bvsge (x!136543 lt!660727) #b01111111111111111111111111111110))))

(declare-fun b!1525564 () Bool)

(assert (=> b!1525564 (and (bvsge (index!54840 lt!660727) #b00000000000000000000000000000000) (bvslt (index!54840 lt!660727) (size!49476 a!2804)))))

(assert (=> b!1525564 (= e!850405 (= (select (arr!48925 a!2804) (index!54840 lt!660727)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1525565 () Bool)

(assert (=> b!1525565 (and (bvsge (index!54840 lt!660727) #b00000000000000000000000000000000) (bvslt (index!54840 lt!660727) (size!49476 a!2804)))))

(declare-fun res!1043739 () Bool)

(assert (=> b!1525565 (= res!1043739 (= (select (arr!48925 a!2804) (index!54840 lt!660727)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1525565 (=> res!1043739 e!850405)))

(declare-fun b!1525566 () Bool)

(assert (=> b!1525566 (= e!850407 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48925 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159475 () Bool)

(assert (=> d!159475 e!850408))

(declare-fun c!140466 () Bool)

(assert (=> d!159475 (= c!140466 (and (is-Intermediate!13111 lt!660727) (undefined!13923 lt!660727)))))

(assert (=> d!159475 (= lt!660727 e!850409)))

(declare-fun c!140467 () Bool)

(assert (=> d!159475 (= c!140467 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159475 (= lt!660726 (select (arr!48925 a!2804) index!487))))

(assert (=> d!159475 (validMask!0 mask!2512)))

(assert (=> d!159475 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48925 a!2804) j!70) a!2804 mask!2512) lt!660727)))

(declare-fun b!1525560 () Bool)

(assert (=> b!1525560 (= e!850408 e!850406)))

(declare-fun res!1043738 () Bool)

(assert (=> b!1525560 (= res!1043738 (and (is-Intermediate!13111 lt!660727) (not (undefined!13923 lt!660727)) (bvslt (x!136543 lt!660727) #b01111111111111111111111111111110) (bvsge (x!136543 lt!660727) #b00000000000000000000000000000000) (bvsge (x!136543 lt!660727) x!534)))))

(assert (=> b!1525560 (=> (not res!1043738) (not e!850406))))

(assert (= (and d!159475 c!140467) b!1525562))

(assert (= (and d!159475 (not c!140467)) b!1525559))

(assert (= (and b!1525559 c!140465) b!1525561))

(assert (= (and b!1525559 (not c!140465)) b!1525566))

(assert (= (and d!159475 c!140466) b!1525563))

(assert (= (and d!159475 (not c!140466)) b!1525560))

(assert (= (and b!1525560 res!1043738) b!1525558))

(assert (= (and b!1525558 (not res!1043740)) b!1525565))

(assert (= (and b!1525565 (not res!1043739)) b!1525564))

(declare-fun m!1408371 () Bool)

(assert (=> b!1525558 m!1408371))

(assert (=> b!1525564 m!1408371))

(assert (=> d!159475 m!1408015))

(assert (=> d!159475 m!1408011))

(assert (=> b!1525565 m!1408371))

(assert (=> b!1525566 m!1408307))

(assert (=> b!1525566 m!1408307))

(assert (=> b!1525566 m!1407987))

(declare-fun m!1408373 () Bool)

(assert (=> b!1525566 m!1408373))

(assert (=> b!1525052 d!159475))

(declare-fun d!159477 () Bool)

(assert (=> d!159477 (= (validKeyInArray!0 (select (arr!48925 a!2804) i!961)) (and (not (= (select (arr!48925 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48925 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1525055 d!159477))

(declare-fun b!1525567 () Bool)

(declare-fun e!850411 () Bool)

(declare-fun e!850412 () Bool)

(assert (=> b!1525567 (= e!850411 e!850412)))

(declare-fun lt!660730 () (_ BitVec 64))

(assert (=> b!1525567 (= lt!660730 (select (arr!48925 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!660729 () Unit!50962)

(assert (=> b!1525567 (= lt!660729 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660730 #b00000000000000000000000000000000))))

(assert (=> b!1525567 (arrayContainsKey!0 a!2804 lt!660730 #b00000000000000000000000000000000)))

(declare-fun lt!660728 () Unit!50962)

(assert (=> b!1525567 (= lt!660728 lt!660729)))

(declare-fun res!1043741 () Bool)

(assert (=> b!1525567 (= res!1043741 (= (seekEntryOrOpen!0 (select (arr!48925 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13111 #b00000000000000000000000000000000)))))

(assert (=> b!1525567 (=> (not res!1043741) (not e!850412))))

(declare-fun b!1525568 () Bool)

(declare-fun e!850410 () Bool)

(assert (=> b!1525568 (= e!850410 e!850411)))

(declare-fun c!140468 () Bool)

(assert (=> b!1525568 (= c!140468 (validKeyInArray!0 (select (arr!48925 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1525569 () Bool)

(declare-fun call!68466 () Bool)

(assert (=> b!1525569 (= e!850412 call!68466)))

(declare-fun bm!68463 () Bool)

(assert (=> bm!68463 (= call!68466 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1525570 () Bool)

(assert (=> b!1525570 (= e!850411 call!68466)))

(declare-fun d!159479 () Bool)

(declare-fun res!1043742 () Bool)

(assert (=> d!159479 (=> res!1043742 e!850410)))

(assert (=> d!159479 (= res!1043742 (bvsge #b00000000000000000000000000000000 (size!49476 a!2804)))))

(assert (=> d!159479 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!850410)))

(assert (= (and d!159479 (not res!1043742)) b!1525568))

(assert (= (and b!1525568 c!140468) b!1525567))

(assert (= (and b!1525568 (not c!140468)) b!1525570))

(assert (= (and b!1525567 res!1043741) b!1525569))

(assert (= (or b!1525569 b!1525570) bm!68463))

(assert (=> b!1525567 m!1408327))

(declare-fun m!1408375 () Bool)

(assert (=> b!1525567 m!1408375))

(declare-fun m!1408377 () Bool)

(assert (=> b!1525567 m!1408377))

(assert (=> b!1525567 m!1408327))

(declare-fun m!1408379 () Bool)

(assert (=> b!1525567 m!1408379))

(assert (=> b!1525568 m!1408327))

(assert (=> b!1525568 m!1408327))

(assert (=> b!1525568 m!1408329))

(declare-fun m!1408381 () Bool)

(assert (=> bm!68463 m!1408381))

(assert (=> b!1525054 d!159479))

(push 1)

