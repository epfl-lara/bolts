; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129690 () Bool)

(assert start!129690)

(declare-fun b!1522093 () Bool)

(declare-fun res!1041462 () Bool)

(declare-fun e!848731 () Bool)

(assert (=> b!1522093 (=> (not res!1041462) (not e!848731))))

(declare-datatypes ((array!101292 0))(
  ( (array!101293 (arr!48874 (Array (_ BitVec 32) (_ BitVec 64))) (size!49425 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101292)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101292 (_ BitVec 32)) Bool)

(assert (=> b!1522093 (= res!1041462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522094 () Bool)

(declare-fun res!1041461 () Bool)

(assert (=> b!1522094 (=> (not res!1041461) (not e!848731))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522094 (= res!1041461 (validKeyInArray!0 (select (arr!48874 a!2804) j!70)))))

(declare-fun b!1522095 () Bool)

(declare-fun res!1041454 () Bool)

(assert (=> b!1522095 (=> (not res!1041454) (not e!848731))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1522095 (= res!1041454 (validKeyInArray!0 (select (arr!48874 a!2804) i!961)))))

(declare-fun b!1522097 () Bool)

(declare-fun res!1041457 () Bool)

(assert (=> b!1522097 (=> (not res!1041457) (not e!848731))))

(declare-datatypes ((List!35537 0))(
  ( (Nil!35534) (Cons!35533 (h!36955 (_ BitVec 64)) (t!50238 List!35537)) )
))
(declare-fun arrayNoDuplicates!0 (array!101292 (_ BitVec 32) List!35537) Bool)

(assert (=> b!1522097 (= res!1041457 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35534))))

(declare-fun b!1522098 () Bool)

(declare-fun e!848730 () Bool)

(declare-datatypes ((SeekEntryResult!13060 0))(
  ( (MissingZero!13060 (index!54634 (_ BitVec 32))) (Found!13060 (index!54635 (_ BitVec 32))) (Intermediate!13060 (undefined!13872 Bool) (index!54636 (_ BitVec 32)) (x!136331 (_ BitVec 32))) (Undefined!13060) (MissingVacant!13060 (index!54637 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!101292 (_ BitVec 32)) SeekEntryResult!13060)

(assert (=> b!1522098 (= e!848730 (not (= (seekEntry!0 (select (arr!48874 a!2804) j!70) a!2804 mask!2512) (Found!13060 j!70))))))

(assert (=> b!1522098 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50860 0))(
  ( (Unit!50861) )
))
(declare-fun lt!659450 () Unit!50860)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101292 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50860)

(assert (=> b!1522098 (= lt!659450 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522099 () Bool)

(declare-fun res!1041455 () Bool)

(assert (=> b!1522099 (=> (not res!1041455) (not e!848730))))

(declare-fun lt!659452 () SeekEntryResult!13060)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101292 (_ BitVec 32)) SeekEntryResult!13060)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522099 (= res!1041455 (= lt!659452 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804)) mask!2512)))))

(declare-fun b!1522100 () Bool)

(declare-fun res!1041456 () Bool)

(assert (=> b!1522100 (=> (not res!1041456) (not e!848731))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1522100 (= res!1041456 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49425 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49425 a!2804))))))

(declare-fun b!1522101 () Bool)

(assert (=> b!1522101 (= e!848731 e!848730)))

(declare-fun res!1041453 () Bool)

(assert (=> b!1522101 (=> (not res!1041453) (not e!848730))))

(declare-fun lt!659451 () SeekEntryResult!13060)

(assert (=> b!1522101 (= res!1041453 (= lt!659452 lt!659451))))

(assert (=> b!1522101 (= lt!659451 (Intermediate!13060 false resIndex!21 resX!21))))

(assert (=> b!1522101 (= lt!659452 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) (select (arr!48874 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522102 () Bool)

(declare-fun res!1041459 () Bool)

(assert (=> b!1522102 (=> (not res!1041459) (not e!848731))))

(assert (=> b!1522102 (= res!1041459 (and (= (size!49425 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49425 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49425 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522096 () Bool)

(declare-fun res!1041460 () Bool)

(assert (=> b!1522096 (=> (not res!1041460) (not e!848730))))

(assert (=> b!1522096 (= res!1041460 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48874 a!2804) j!70) a!2804 mask!2512) lt!659451))))

(declare-fun res!1041458 () Bool)

(assert (=> start!129690 (=> (not res!1041458) (not e!848731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129690 (= res!1041458 (validMask!0 mask!2512))))

(assert (=> start!129690 e!848731))

(assert (=> start!129690 true))

(declare-fun array_inv!37819 (array!101292) Bool)

(assert (=> start!129690 (array_inv!37819 a!2804)))

(assert (= (and start!129690 res!1041458) b!1522102))

(assert (= (and b!1522102 res!1041459) b!1522095))

(assert (= (and b!1522095 res!1041454) b!1522094))

(assert (= (and b!1522094 res!1041461) b!1522093))

(assert (= (and b!1522093 res!1041462) b!1522097))

(assert (= (and b!1522097 res!1041457) b!1522100))

(assert (= (and b!1522100 res!1041456) b!1522101))

(assert (= (and b!1522101 res!1041453) b!1522096))

(assert (= (and b!1522096 res!1041460) b!1522099))

(assert (= (and b!1522099 res!1041455) b!1522098))

(declare-fun m!1405283 () Bool)

(assert (=> b!1522094 m!1405283))

(assert (=> b!1522094 m!1405283))

(declare-fun m!1405285 () Bool)

(assert (=> b!1522094 m!1405285))

(declare-fun m!1405287 () Bool)

(assert (=> b!1522093 m!1405287))

(assert (=> b!1522101 m!1405283))

(assert (=> b!1522101 m!1405283))

(declare-fun m!1405289 () Bool)

(assert (=> b!1522101 m!1405289))

(assert (=> b!1522101 m!1405289))

(assert (=> b!1522101 m!1405283))

(declare-fun m!1405291 () Bool)

(assert (=> b!1522101 m!1405291))

(declare-fun m!1405293 () Bool)

(assert (=> b!1522097 m!1405293))

(assert (=> b!1522098 m!1405283))

(assert (=> b!1522098 m!1405283))

(declare-fun m!1405295 () Bool)

(assert (=> b!1522098 m!1405295))

(declare-fun m!1405297 () Bool)

(assert (=> b!1522098 m!1405297))

(declare-fun m!1405299 () Bool)

(assert (=> b!1522098 m!1405299))

(assert (=> b!1522096 m!1405283))

(assert (=> b!1522096 m!1405283))

(declare-fun m!1405301 () Bool)

(assert (=> b!1522096 m!1405301))

(declare-fun m!1405303 () Bool)

(assert (=> b!1522099 m!1405303))

(declare-fun m!1405305 () Bool)

(assert (=> b!1522099 m!1405305))

(assert (=> b!1522099 m!1405305))

(declare-fun m!1405307 () Bool)

(assert (=> b!1522099 m!1405307))

(assert (=> b!1522099 m!1405307))

(assert (=> b!1522099 m!1405305))

(declare-fun m!1405309 () Bool)

(assert (=> b!1522099 m!1405309))

(declare-fun m!1405311 () Bool)

(assert (=> b!1522095 m!1405311))

(assert (=> b!1522095 m!1405311))

(declare-fun m!1405313 () Bool)

(assert (=> b!1522095 m!1405313))

(declare-fun m!1405315 () Bool)

(assert (=> start!129690 m!1405315))

(declare-fun m!1405317 () Bool)

(assert (=> start!129690 m!1405317))

(push 1)

(assert (not b!1522097))

(assert (not b!1522094))

(assert (not b!1522093))

(assert (not b!1522101))

(assert (not b!1522095))

(assert (not start!129690))

(assert (not b!1522099))

(assert (not b!1522098))

(assert (not b!1522096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!68376 () Bool)

(declare-fun call!68379 () Bool)

(declare-fun c!139883 () Bool)

(assert (=> bm!68376 (= call!68379 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139883 (Cons!35533 (select (arr!48874 a!2804) #b00000000000000000000000000000000) Nil!35534) Nil!35534)))))

(declare-fun b!1522209 () Bool)

(declare-fun e!848782 () Bool)

(assert (=> b!1522209 (= e!848782 call!68379)))

(declare-fun d!158989 () Bool)

(declare-fun res!1041543 () Bool)

(declare-fun e!848779 () Bool)

(assert (=> d!158989 (=> res!1041543 e!848779)))

(assert (=> d!158989 (= res!1041543 (bvsge #b00000000000000000000000000000000 (size!49425 a!2804)))))

(assert (=> d!158989 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35534) e!848779)))

(declare-fun b!1522210 () Bool)

(declare-fun e!848781 () Bool)

(assert (=> b!1522210 (= e!848781 e!848782)))

(assert (=> b!1522210 (= c!139883 (validKeyInArray!0 (select (arr!48874 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522211 () Bool)

(declare-fun e!848780 () Bool)

(declare-fun contains!9995 (List!35537 (_ BitVec 64)) Bool)

(assert (=> b!1522211 (= e!848780 (contains!9995 Nil!35534 (select (arr!48874 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522212 () Bool)

(assert (=> b!1522212 (= e!848779 e!848781)))

(declare-fun res!1041541 () Bool)

(assert (=> b!1522212 (=> (not res!1041541) (not e!848781))))

(assert (=> b!1522212 (= res!1041541 (not e!848780))))

(declare-fun res!1041542 () Bool)

(assert (=> b!1522212 (=> (not res!1041542) (not e!848780))))

(assert (=> b!1522212 (= res!1041542 (validKeyInArray!0 (select (arr!48874 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522213 () Bool)

(assert (=> b!1522213 (= e!848782 call!68379)))

(assert (= (and d!158989 (not res!1041543)) b!1522212))

(assert (= (and b!1522212 res!1041542) b!1522211))

(assert (= (and b!1522212 res!1041541) b!1522210))

(assert (= (and b!1522210 c!139883) b!1522209))

(assert (= (and b!1522210 (not c!139883)) b!1522213))

(assert (= (or b!1522209 b!1522213) bm!68376))

(declare-fun m!1405399 () Bool)

(assert (=> bm!68376 m!1405399))

(declare-fun m!1405401 () Bool)

(assert (=> bm!68376 m!1405401))

(assert (=> b!1522210 m!1405399))

(assert (=> b!1522210 m!1405399))

(declare-fun m!1405403 () Bool)

(assert (=> b!1522210 m!1405403))

(assert (=> b!1522211 m!1405399))

(assert (=> b!1522211 m!1405399))

(declare-fun m!1405407 () Bool)

(assert (=> b!1522211 m!1405407))

(assert (=> b!1522212 m!1405399))

(assert (=> b!1522212 m!1405399))

(assert (=> b!1522212 m!1405403))

(assert (=> b!1522097 d!158989))

(declare-fun d!158997 () Bool)

(declare-fun e!848805 () Bool)

(assert (=> d!158997 e!848805))

(declare-fun c!139900 () Bool)

(declare-fun lt!659505 () SeekEntryResult!13060)

(assert (=> d!158997 (= c!139900 (and (is-Intermediate!13060 lt!659505) (undefined!13872 lt!659505)))))

(declare-fun e!848804 () SeekEntryResult!13060)

(assert (=> d!158997 (= lt!659505 e!848804)))

(declare-fun c!139901 () Bool)

(assert (=> d!158997 (= c!139901 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!659506 () (_ BitVec 64))

(assert (=> d!158997 (= lt!659506 (select (arr!48874 a!2804) (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512)))))

(assert (=> d!158997 (validMask!0 mask!2512)))

(assert (=> d!158997 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) (select (arr!48874 a!2804) j!70) a!2804 mask!2512) lt!659505)))

(declare-fun b!1522250 () Bool)

(declare-fun e!848806 () Bool)

(assert (=> b!1522250 (= e!848805 e!848806)))

(declare-fun res!1041551 () Bool)

(assert (=> b!1522250 (= res!1041551 (and (is-Intermediate!13060 lt!659505) (not (undefined!13872 lt!659505)) (bvslt (x!136331 lt!659505) #b01111111111111111111111111111110) (bvsge (x!136331 lt!659505) #b00000000000000000000000000000000) (bvsge (x!136331 lt!659505) #b00000000000000000000000000000000)))))

(assert (=> b!1522250 (=> (not res!1041551) (not e!848806))))

(declare-fun b!1522251 () Bool)

(assert (=> b!1522251 (and (bvsge (index!54636 lt!659505) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659505) (size!49425 a!2804)))))

(declare-fun e!848802 () Bool)

(assert (=> b!1522251 (= e!848802 (= (select (arr!48874 a!2804) (index!54636 lt!659505)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848803 () SeekEntryResult!13060)

(declare-fun b!1522252 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522252 (= e!848803 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48874 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522253 () Bool)

(assert (=> b!1522253 (= e!848804 e!848803)))

(declare-fun c!139899 () Bool)

(assert (=> b!1522253 (= c!139899 (or (= lt!659506 (select (arr!48874 a!2804) j!70)) (= (bvadd lt!659506 lt!659506) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522254 () Bool)

(assert (=> b!1522254 (= e!848804 (Intermediate!13060 true (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522255 () Bool)

(assert (=> b!1522255 (= e!848803 (Intermediate!13060 false (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522256 () Bool)

(assert (=> b!1522256 (= e!848805 (bvsge (x!136331 lt!659505) #b01111111111111111111111111111110))))

(declare-fun b!1522257 () Bool)

(assert (=> b!1522257 (and (bvsge (index!54636 lt!659505) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659505) (size!49425 a!2804)))))

(declare-fun res!1041552 () Bool)

(assert (=> b!1522257 (= res!1041552 (= (select (arr!48874 a!2804) (index!54636 lt!659505)) (select (arr!48874 a!2804) j!70)))))

(assert (=> b!1522257 (=> res!1041552 e!848802)))

(assert (=> b!1522257 (= e!848806 e!848802)))

(declare-fun b!1522258 () Bool)

(assert (=> b!1522258 (and (bvsge (index!54636 lt!659505) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659505) (size!49425 a!2804)))))

(declare-fun res!1041553 () Bool)

(assert (=> b!1522258 (= res!1041553 (= (select (arr!48874 a!2804) (index!54636 lt!659505)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522258 (=> res!1041553 e!848802)))

(assert (= (and d!158997 c!139901) b!1522254))

(assert (= (and d!158997 (not c!139901)) b!1522253))

(assert (= (and b!1522253 c!139899) b!1522255))

(assert (= (and b!1522253 (not c!139899)) b!1522252))

(assert (= (and d!158997 c!139900) b!1522256))

(assert (= (and d!158997 (not c!139900)) b!1522250))

(assert (= (and b!1522250 res!1041551) b!1522257))

(assert (= (and b!1522257 (not res!1041552)) b!1522258))

(assert (= (and b!1522258 (not res!1041553)) b!1522251))

(assert (=> d!158997 m!1405289))

(declare-fun m!1405421 () Bool)

(assert (=> d!158997 m!1405421))

(assert (=> d!158997 m!1405315))

(declare-fun m!1405423 () Bool)

(assert (=> b!1522251 m!1405423))

(assert (=> b!1522257 m!1405423))

(assert (=> b!1522258 m!1405423))

(assert (=> b!1522252 m!1405289))

(declare-fun m!1405425 () Bool)

(assert (=> b!1522252 m!1405425))

(assert (=> b!1522252 m!1405425))

(assert (=> b!1522252 m!1405283))

(declare-fun m!1405427 () Bool)

(assert (=> b!1522252 m!1405427))

(assert (=> b!1522101 d!158997))

(declare-fun d!159009 () Bool)

(declare-fun lt!659514 () (_ BitVec 32))

(declare-fun lt!659513 () (_ BitVec 32))

(assert (=> d!159009 (= lt!659514 (bvmul (bvxor lt!659513 (bvlshr lt!659513 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159009 (= lt!659513 ((_ extract 31 0) (bvand (bvxor (select (arr!48874 a!2804) j!70) (bvlshr (select (arr!48874 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159009 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1041556 (let ((h!36959 ((_ extract 31 0) (bvand (bvxor (select (arr!48874 a!2804) j!70) (bvlshr (select (arr!48874 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136338 (bvmul (bvxor h!36959 (bvlshr h!36959 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136338 (bvlshr x!136338 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1041556 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1041556 #b00000000000000000000000000000000))))))

(assert (=> d!159009 (= (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) (bvand (bvxor lt!659514 (bvlshr lt!659514 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1522101 d!159009))

(declare-fun d!159011 () Bool)

(declare-fun e!848831 () Bool)

(assert (=> d!159011 e!848831))

(declare-fun c!139914 () Bool)

(declare-fun lt!659521 () SeekEntryResult!13060)

(assert (=> d!159011 (= c!139914 (and (is-Intermediate!13060 lt!659521) (undefined!13872 lt!659521)))))

(declare-fun e!848830 () SeekEntryResult!13060)

(assert (=> d!159011 (= lt!659521 e!848830)))

(declare-fun c!139915 () Bool)

(assert (=> d!159011 (= c!139915 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!659522 () (_ BitVec 64))

(assert (=> d!159011 (= lt!659522 (select (arr!48874 a!2804) index!487))))

(assert (=> d!159011 (validMask!0 mask!2512)))

(assert (=> d!159011 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48874 a!2804) j!70) a!2804 mask!2512) lt!659521)))

(declare-fun b!1522294 () Bool)

(declare-fun e!848832 () Bool)

(assert (=> b!1522294 (= e!848831 e!848832)))

(declare-fun res!1041568 () Bool)

(assert (=> b!1522294 (= res!1041568 (and (is-Intermediate!13060 lt!659521) (not (undefined!13872 lt!659521)) (bvslt (x!136331 lt!659521) #b01111111111111111111111111111110) (bvsge (x!136331 lt!659521) #b00000000000000000000000000000000) (bvsge (x!136331 lt!659521) x!534)))))

(assert (=> b!1522294 (=> (not res!1041568) (not e!848832))))

(declare-fun b!1522295 () Bool)

(assert (=> b!1522295 (and (bvsge (index!54636 lt!659521) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659521) (size!49425 a!2804)))))

(declare-fun e!848828 () Bool)

(assert (=> b!1522295 (= e!848828 (= (select (arr!48874 a!2804) (index!54636 lt!659521)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1522296 () Bool)

(declare-fun e!848829 () SeekEntryResult!13060)

(assert (=> b!1522296 (= e!848829 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48874 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522297 () Bool)

(assert (=> b!1522297 (= e!848830 e!848829)))

(declare-fun c!139913 () Bool)

(assert (=> b!1522297 (= c!139913 (or (= lt!659522 (select (arr!48874 a!2804) j!70)) (= (bvadd lt!659522 lt!659522) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522298 () Bool)

(assert (=> b!1522298 (= e!848830 (Intermediate!13060 true index!487 x!534))))

(declare-fun b!1522299 () Bool)

(assert (=> b!1522299 (= e!848829 (Intermediate!13060 false index!487 x!534))))

(declare-fun b!1522300 () Bool)

(assert (=> b!1522300 (= e!848831 (bvsge (x!136331 lt!659521) #b01111111111111111111111111111110))))

(declare-fun b!1522301 () Bool)

(assert (=> b!1522301 (and (bvsge (index!54636 lt!659521) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659521) (size!49425 a!2804)))))

(declare-fun res!1041569 () Bool)

(assert (=> b!1522301 (= res!1041569 (= (select (arr!48874 a!2804) (index!54636 lt!659521)) (select (arr!48874 a!2804) j!70)))))

(assert (=> b!1522301 (=> res!1041569 e!848828)))

(assert (=> b!1522301 (= e!848832 e!848828)))

(declare-fun b!1522302 () Bool)

(assert (=> b!1522302 (and (bvsge (index!54636 lt!659521) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659521) (size!49425 a!2804)))))

(declare-fun res!1041570 () Bool)

(assert (=> b!1522302 (= res!1041570 (= (select (arr!48874 a!2804) (index!54636 lt!659521)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522302 (=> res!1041570 e!848828)))

(assert (= (and d!159011 c!139915) b!1522298))

(assert (= (and d!159011 (not c!139915)) b!1522297))

(assert (= (and b!1522297 c!139913) b!1522299))

(assert (= (and b!1522297 (not c!139913)) b!1522296))

(assert (= (and d!159011 c!139914) b!1522300))

(assert (= (and d!159011 (not c!139914)) b!1522294))

(assert (= (and b!1522294 res!1041568) b!1522301))

(assert (= (and b!1522301 (not res!1041569)) b!1522302))

(assert (= (and b!1522302 (not res!1041570)) b!1522295))

(declare-fun m!1405437 () Bool)

(assert (=> d!159011 m!1405437))

(assert (=> d!159011 m!1405315))

(declare-fun m!1405439 () Bool)

(assert (=> b!1522295 m!1405439))

(assert (=> b!1522301 m!1405439))

(assert (=> b!1522302 m!1405439))

(declare-fun m!1405441 () Bool)

(assert (=> b!1522296 m!1405441))

(assert (=> b!1522296 m!1405441))

(assert (=> b!1522296 m!1405283))

(declare-fun m!1405443 () Bool)

(assert (=> b!1522296 m!1405443))

(assert (=> b!1522096 d!159011))

(declare-fun d!159015 () Bool)

(assert (=> d!159015 (= (validKeyInArray!0 (select (arr!48874 a!2804) j!70)) (and (not (= (select (arr!48874 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48874 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1522094 d!159015))

(declare-fun d!159017 () Bool)

(assert (=> d!159017 (= (validKeyInArray!0 (select (arr!48874 a!2804) i!961)) (and (not (= (select (arr!48874 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48874 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1522095 d!159017))

(declare-fun b!1522349 () Bool)

(declare-fun e!848862 () SeekEntryResult!13060)

(declare-fun lt!659559 () SeekEntryResult!13060)

(assert (=> b!1522349 (= e!848862 (Found!13060 (index!54636 lt!659559)))))

(declare-fun b!1522350 () Bool)

(declare-fun e!848863 () SeekEntryResult!13060)

(assert (=> b!1522350 (= e!848863 e!848862)))

(declare-fun lt!659558 () (_ BitVec 64))

(assert (=> b!1522350 (= lt!659558 (select (arr!48874 a!2804) (index!54636 lt!659559)))))

(declare-fun c!139934 () Bool)

(assert (=> b!1522350 (= c!139934 (= lt!659558 (select (arr!48874 a!2804) j!70)))))

(declare-fun d!159019 () Bool)

(declare-fun lt!659561 () SeekEntryResult!13060)

(assert (=> d!159019 (and (or (is-MissingVacant!13060 lt!659561) (not (is-Found!13060 lt!659561)) (and (bvsge (index!54635 lt!659561) #b00000000000000000000000000000000) (bvslt (index!54635 lt!659561) (size!49425 a!2804)))) (not (is-MissingVacant!13060 lt!659561)) (or (not (is-Found!13060 lt!659561)) (= (select (arr!48874 a!2804) (index!54635 lt!659561)) (select (arr!48874 a!2804) j!70))))))

(assert (=> d!159019 (= lt!659561 e!848863)))

(declare-fun c!139932 () Bool)

(assert (=> d!159019 (= c!139932 (and (is-Intermediate!13060 lt!659559) (undefined!13872 lt!659559)))))

(assert (=> d!159019 (= lt!659559 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) (select (arr!48874 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159019 (validMask!0 mask!2512)))

(assert (=> d!159019 (= (seekEntry!0 (select (arr!48874 a!2804) j!70) a!2804 mask!2512) lt!659561)))

(declare-fun b!1522351 () Bool)

(declare-fun e!848861 () SeekEntryResult!13060)

(assert (=> b!1522351 (= e!848861 (MissingZero!13060 (index!54636 lt!659559)))))

(declare-fun b!1522352 () Bool)

(declare-fun c!139933 () Bool)

(assert (=> b!1522352 (= c!139933 (= lt!659558 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522352 (= e!848862 e!848861)))

(declare-fun b!1522353 () Bool)

(declare-fun lt!659560 () SeekEntryResult!13060)

(assert (=> b!1522353 (= e!848861 (ite (is-MissingVacant!13060 lt!659560) (MissingZero!13060 (index!54637 lt!659560)) lt!659560))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101292 (_ BitVec 32)) SeekEntryResult!13060)

(assert (=> b!1522353 (= lt!659560 (seekKeyOrZeroReturnVacant!0 (x!136331 lt!659559) (index!54636 lt!659559) (index!54636 lt!659559) (select (arr!48874 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522354 () Bool)

(assert (=> b!1522354 (= e!848863 Undefined!13060)))

(assert (= (and d!159019 c!139932) b!1522354))

(assert (= (and d!159019 (not c!139932)) b!1522350))

(assert (= (and b!1522350 c!139934) b!1522349))

(assert (= (and b!1522350 (not c!139934)) b!1522352))

(assert (= (and b!1522352 c!139933) b!1522351))

(assert (= (and b!1522352 (not c!139933)) b!1522353))

(declare-fun m!1405483 () Bool)

(assert (=> b!1522350 m!1405483))

(declare-fun m!1405485 () Bool)

(assert (=> d!159019 m!1405485))

(assert (=> d!159019 m!1405283))

(assert (=> d!159019 m!1405289))

(assert (=> d!159019 m!1405289))

(assert (=> d!159019 m!1405283))

(assert (=> d!159019 m!1405291))

(assert (=> d!159019 m!1405315))

(assert (=> b!1522353 m!1405283))

(declare-fun m!1405487 () Bool)

(assert (=> b!1522353 m!1405487))

(assert (=> b!1522098 d!159019))

(declare-fun bm!68388 () Bool)

(declare-fun call!68391 () Bool)

(assert (=> bm!68388 (= call!68391 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1522386 () Bool)

(declare-fun e!848888 () Bool)

(declare-fun e!848886 () Bool)

(assert (=> b!1522386 (= e!848888 e!848886)))

(declare-fun c!139943 () Bool)

(assert (=> b!1522386 (= c!139943 (validKeyInArray!0 (select (arr!48874 a!2804) j!70)))))

(declare-fun d!159039 () Bool)

(declare-fun res!1041601 () Bool)

(assert (=> d!159039 (=> res!1041601 e!848888)))

(assert (=> d!159039 (= res!1041601 (bvsge j!70 (size!49425 a!2804)))))

(assert (=> d!159039 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!848888)))

(declare-fun b!1522387 () Bool)

(declare-fun e!848887 () Bool)

(assert (=> b!1522387 (= e!848886 e!848887)))

(declare-fun lt!659575 () (_ BitVec 64))

(assert (=> b!1522387 (= lt!659575 (select (arr!48874 a!2804) j!70))))

(declare-fun lt!659576 () Unit!50860)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101292 (_ BitVec 64) (_ BitVec 32)) Unit!50860)

(assert (=> b!1522387 (= lt!659576 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659575 j!70))))

(declare-fun arrayContainsKey!0 (array!101292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1522387 (arrayContainsKey!0 a!2804 lt!659575 #b00000000000000000000000000000000)))

(declare-fun lt!659577 () Unit!50860)

(assert (=> b!1522387 (= lt!659577 lt!659576)))

(declare-fun res!1041602 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101292 (_ BitVec 32)) SeekEntryResult!13060)

(assert (=> b!1522387 (= res!1041602 (= (seekEntryOrOpen!0 (select (arr!48874 a!2804) j!70) a!2804 mask!2512) (Found!13060 j!70)))))

(assert (=> b!1522387 (=> (not res!1041602) (not e!848887))))

(declare-fun b!1522388 () Bool)

(assert (=> b!1522388 (= e!848886 call!68391)))

(declare-fun b!1522389 () Bool)

(assert (=> b!1522389 (= e!848887 call!68391)))

(assert (= (and d!159039 (not res!1041601)) b!1522386))

(assert (= (and b!1522386 c!139943) b!1522387))

(assert (= (and b!1522386 (not c!139943)) b!1522388))

(assert (= (and b!1522387 res!1041602) b!1522389))

(assert (= (or b!1522389 b!1522388) bm!68388))

(declare-fun m!1405509 () Bool)

(assert (=> bm!68388 m!1405509))

(assert (=> b!1522386 m!1405283))

(assert (=> b!1522386 m!1405283))

(assert (=> b!1522386 m!1405285))

(assert (=> b!1522387 m!1405283))

(declare-fun m!1405511 () Bool)

(assert (=> b!1522387 m!1405511))

(declare-fun m!1405513 () Bool)

(assert (=> b!1522387 m!1405513))

(assert (=> b!1522387 m!1405283))

(declare-fun m!1405515 () Bool)

(assert (=> b!1522387 m!1405515))

(assert (=> b!1522098 d!159039))

(declare-fun d!159051 () Bool)

(assert (=> d!159051 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!659588 () Unit!50860)

(declare-fun choose!38 (array!101292 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50860)

(assert (=> d!159051 (= lt!659588 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159051 (validMask!0 mask!2512)))

(assert (=> d!159051 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!659588)))

(declare-fun bs!43686 () Bool)

(assert (= bs!43686 d!159051))

(assert (=> bs!43686 m!1405297))

(declare-fun m!1405521 () Bool)

(assert (=> bs!43686 m!1405521))

(assert (=> bs!43686 m!1405315))

(assert (=> b!1522098 d!159051))

(declare-fun bm!68390 () Bool)

(declare-fun call!68393 () Bool)

(assert (=> bm!68390 (= call!68393 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1522407 () Bool)

(declare-fun e!848901 () Bool)

(declare-fun e!848899 () Bool)

(assert (=> b!1522407 (= e!848901 e!848899)))

(declare-fun c!139951 () Bool)

(assert (=> b!1522407 (= c!139951 (validKeyInArray!0 (select (arr!48874 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159053 () Bool)

(declare-fun res!1041606 () Bool)

(assert (=> d!159053 (=> res!1041606 e!848901)))

(assert (=> d!159053 (= res!1041606 (bvsge #b00000000000000000000000000000000 (size!49425 a!2804)))))

(assert (=> d!159053 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!848901)))

(declare-fun b!1522408 () Bool)

(declare-fun e!848900 () Bool)

(assert (=> b!1522408 (= e!848899 e!848900)))

(declare-fun lt!659589 () (_ BitVec 64))

(assert (=> b!1522408 (= lt!659589 (select (arr!48874 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!659590 () Unit!50860)

(assert (=> b!1522408 (= lt!659590 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659589 #b00000000000000000000000000000000))))

(assert (=> b!1522408 (arrayContainsKey!0 a!2804 lt!659589 #b00000000000000000000000000000000)))

(declare-fun lt!659591 () Unit!50860)

(assert (=> b!1522408 (= lt!659591 lt!659590)))

(declare-fun res!1041607 () Bool)

(assert (=> b!1522408 (= res!1041607 (= (seekEntryOrOpen!0 (select (arr!48874 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13060 #b00000000000000000000000000000000)))))

(assert (=> b!1522408 (=> (not res!1041607) (not e!848900))))

(declare-fun b!1522409 () Bool)

(assert (=> b!1522409 (= e!848899 call!68393)))

(declare-fun b!1522410 () Bool)

(assert (=> b!1522410 (= e!848900 call!68393)))

(assert (= (and d!159053 (not res!1041606)) b!1522407))

(assert (= (and b!1522407 c!139951) b!1522408))

(assert (= (and b!1522407 (not c!139951)) b!1522409))

(assert (= (and b!1522408 res!1041607) b!1522410))

(assert (= (or b!1522410 b!1522409) bm!68390))

(declare-fun m!1405523 () Bool)

(assert (=> bm!68390 m!1405523))

(assert (=> b!1522407 m!1405399))

(assert (=> b!1522407 m!1405399))

(assert (=> b!1522407 m!1405403))

(assert (=> b!1522408 m!1405399))

(declare-fun m!1405525 () Bool)

(assert (=> b!1522408 m!1405525))

(declare-fun m!1405527 () Bool)

(assert (=> b!1522408 m!1405527))

(assert (=> b!1522408 m!1405399))

(declare-fun m!1405529 () Bool)

(assert (=> b!1522408 m!1405529))

(assert (=> b!1522093 d!159053))

(declare-fun d!159055 () Bool)

(assert (=> d!159055 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129690 d!159055))

(declare-fun d!159065 () Bool)

(assert (=> d!159065 (= (array_inv!37819 a!2804) (bvsge (size!49425 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129690 d!159065))

(declare-fun d!159067 () Bool)

(declare-fun e!848919 () Bool)

(assert (=> d!159067 e!848919))

(declare-fun c!139959 () Bool)

(declare-fun lt!659602 () SeekEntryResult!13060)

(assert (=> d!159067 (= c!139959 (and (is-Intermediate!13060 lt!659602) (undefined!13872 lt!659602)))))

(declare-fun e!848918 () SeekEntryResult!13060)

(assert (=> d!159067 (= lt!659602 e!848918)))

(declare-fun c!139960 () Bool)

(assert (=> d!159067 (= c!139960 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!659603 () (_ BitVec 64))

(assert (=> d!159067 (= lt!659603 (select (arr!48874 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804))) (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159067 (validMask!0 mask!2512)))

(assert (=> d!159067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804)) mask!2512) lt!659602)))

(declare-fun b!1522431 () Bool)

(declare-fun e!848920 () Bool)

(assert (=> b!1522431 (= e!848919 e!848920)))

(declare-fun res!1041616 () Bool)

(assert (=> b!1522431 (= res!1041616 (and (is-Intermediate!13060 lt!659602) (not (undefined!13872 lt!659602)) (bvslt (x!136331 lt!659602) #b01111111111111111111111111111110) (bvsge (x!136331 lt!659602) #b00000000000000000000000000000000) (bvsge (x!136331 lt!659602) #b00000000000000000000000000000000)))))

(assert (=> b!1522431 (=> (not res!1041616) (not e!848920))))

(declare-fun b!1522432 () Bool)

(assert (=> b!1522432 (and (bvsge (index!54636 lt!659602) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659602) (size!49425 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804)))))))

(declare-fun e!848916 () Bool)

(assert (=> b!1522432 (= e!848916 (= (select (arr!48874 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804))) (index!54636 lt!659602)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1522433 () Bool)

(declare-fun e!848917 () SeekEntryResult!13060)

(assert (=> b!1522433 (= e!848917 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804)) mask!2512))))

(declare-fun b!1522434 () Bool)

(assert (=> b!1522434 (= e!848918 e!848917)))

(declare-fun c!139958 () Bool)

(assert (=> b!1522434 (= c!139958 (or (= lt!659603 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!659603 lt!659603) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522435 () Bool)

(assert (=> b!1522435 (= e!848918 (Intermediate!13060 true (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522436 () Bool)

(assert (=> b!1522436 (= e!848917 (Intermediate!13060 false (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1522437 () Bool)

(assert (=> b!1522437 (= e!848919 (bvsge (x!136331 lt!659602) #b01111111111111111111111111111110))))

(declare-fun b!1522438 () Bool)

(assert (=> b!1522438 (and (bvsge (index!54636 lt!659602) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659602) (size!49425 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804)))))))

(declare-fun res!1041617 () Bool)

(assert (=> b!1522438 (= res!1041617 (= (select (arr!48874 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804))) (index!54636 lt!659602)) (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1522438 (=> res!1041617 e!848916)))

(assert (=> b!1522438 (= e!848920 e!848916)))

(declare-fun b!1522439 () Bool)

(assert (=> b!1522439 (and (bvsge (index!54636 lt!659602) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659602) (size!49425 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804)))))))

(declare-fun res!1041618 () Bool)

(assert (=> b!1522439 (= res!1041618 (= (select (arr!48874 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804))) (index!54636 lt!659602)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522439 (=> res!1041618 e!848916)))

(assert (= (and d!159067 c!139960) b!1522435))

(assert (= (and d!159067 (not c!139960)) b!1522434))

(assert (= (and b!1522434 c!139958) b!1522436))

(assert (= (and b!1522434 (not c!139958)) b!1522433))

(assert (= (and d!159067 c!139959) b!1522437))

(assert (= (and d!159067 (not c!139959)) b!1522431))

(assert (= (and b!1522431 res!1041616) b!1522438))

(assert (= (and b!1522438 (not res!1041617)) b!1522439))

(assert (= (and b!1522439 (not res!1041618)) b!1522432))

(assert (=> d!159067 m!1405307))

(declare-fun m!1405547 () Bool)

(assert (=> d!159067 m!1405547))

(assert (=> d!159067 m!1405315))

(declare-fun m!1405549 () Bool)

(assert (=> b!1522432 m!1405549))

(assert (=> b!1522438 m!1405549))

(assert (=> b!1522439 m!1405549))

(assert (=> b!1522433 m!1405307))

(declare-fun m!1405551 () Bool)

(assert (=> b!1522433 m!1405551))

(assert (=> b!1522433 m!1405551))

(assert (=> b!1522433 m!1405305))

(declare-fun m!1405553 () Bool)

(assert (=> b!1522433 m!1405553))

(assert (=> b!1522099 d!159067))

(declare-fun d!159069 () Bool)

(declare-fun lt!659605 () (_ BitVec 32))

(declare-fun lt!659604 () (_ BitVec 32))

(assert (=> d!159069 (= lt!659605 (bvmul (bvxor lt!659604 (bvlshr lt!659604 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159069 (= lt!659604 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159069 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1041556 (let ((h!36959 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136338 (bvmul (bvxor h!36959 (bvlshr h!36959 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136338 (bvlshr x!136338 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1041556 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1041556 #b00000000000000000000000000000000))))))

(assert (=> d!159069 (= (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!659605 (bvlshr lt!659605 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1522099 d!159069))

(push 1)

(assert (not b!1522407))

(assert (not bm!68390))

(assert (not b!1522433))

(assert (not b!1522296))

(assert (not d!158997))

(assert (not bm!68376))

(assert (not d!159019))

(assert (not b!1522211))

(assert (not b!1522387))

(assert (not d!159067))

(assert (not b!1522353))

(assert (not b!1522210))

(assert (not b!1522252))

(assert (not d!159051))

(assert (not b!1522386))

(assert (not d!159011))

(assert (not b!1522408))

(assert (not bm!68388))

(assert (not b!1522212))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!848932 () SeekEntryResult!13060)

(declare-fun b!1522457 () Bool)

(assert (=> b!1522457 (= e!848932 (seekKeyOrZeroReturnVacant!0 (bvadd (x!136331 lt!659559) #b00000000000000000000000000000001) (nextIndex!0 (index!54636 lt!659559) (x!136331 lt!659559) mask!2512) (index!54636 lt!659559) (select (arr!48874 a!2804) j!70) a!2804 mask!2512))))

(declare-fun lt!659610 () SeekEntryResult!13060)

(declare-fun d!159071 () Bool)

(assert (=> d!159071 (and (or (is-Undefined!13060 lt!659610) (not (is-Found!13060 lt!659610)) (and (bvsge (index!54635 lt!659610) #b00000000000000000000000000000000) (bvslt (index!54635 lt!659610) (size!49425 a!2804)))) (or (is-Undefined!13060 lt!659610) (is-Found!13060 lt!659610) (not (is-MissingVacant!13060 lt!659610)) (not (= (index!54637 lt!659610) (index!54636 lt!659559))) (and (bvsge (index!54637 lt!659610) #b00000000000000000000000000000000) (bvslt (index!54637 lt!659610) (size!49425 a!2804)))) (or (is-Undefined!13060 lt!659610) (ite (is-Found!13060 lt!659610) (= (select (arr!48874 a!2804) (index!54635 lt!659610)) (select (arr!48874 a!2804) j!70)) (and (is-MissingVacant!13060 lt!659610) (= (index!54637 lt!659610) (index!54636 lt!659559)) (= (select (arr!48874 a!2804) (index!54637 lt!659610)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!848931 () SeekEntryResult!13060)

(assert (=> d!159071 (= lt!659610 e!848931)))

(declare-fun c!139969 () Bool)

(assert (=> d!159071 (= c!139969 (bvsge (x!136331 lt!659559) #b01111111111111111111111111111110))))

(declare-fun lt!659611 () (_ BitVec 64))

(assert (=> d!159071 (= lt!659611 (select (arr!48874 a!2804) (index!54636 lt!659559)))))

(assert (=> d!159071 (validMask!0 mask!2512)))

(assert (=> d!159071 (= (seekKeyOrZeroReturnVacant!0 (x!136331 lt!659559) (index!54636 lt!659559) (index!54636 lt!659559) (select (arr!48874 a!2804) j!70) a!2804 mask!2512) lt!659610)))

(declare-fun b!1522458 () Bool)

(declare-fun e!848933 () SeekEntryResult!13060)

(assert (=> b!1522458 (= e!848933 (Found!13060 (index!54636 lt!659559)))))

(declare-fun b!1522459 () Bool)

(declare-fun c!139968 () Bool)

(assert (=> b!1522459 (= c!139968 (= lt!659611 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522459 (= e!848933 e!848932)))

(declare-fun b!1522460 () Bool)

(assert (=> b!1522460 (= e!848931 Undefined!13060)))

(declare-fun b!1522461 () Bool)

(assert (=> b!1522461 (= e!848931 e!848933)))

(declare-fun c!139970 () Bool)

(assert (=> b!1522461 (= c!139970 (= lt!659611 (select (arr!48874 a!2804) j!70)))))

(declare-fun b!1522462 () Bool)

(assert (=> b!1522462 (= e!848932 (MissingVacant!13060 (index!54636 lt!659559)))))

(assert (= (and d!159071 c!139969) b!1522460))

(assert (= (and d!159071 (not c!139969)) b!1522461))

(assert (= (and b!1522461 c!139970) b!1522458))

(assert (= (and b!1522461 (not c!139970)) b!1522459))

(assert (= (and b!1522459 c!139968) b!1522462))

(assert (= (and b!1522459 (not c!139968)) b!1522457))

(declare-fun m!1405559 () Bool)

(assert (=> b!1522457 m!1405559))

(assert (=> b!1522457 m!1405559))

(assert (=> b!1522457 m!1405283))

(declare-fun m!1405561 () Bool)

(assert (=> b!1522457 m!1405561))

(declare-fun m!1405563 () Bool)

(assert (=> d!159071 m!1405563))

(declare-fun m!1405565 () Bool)

(assert (=> d!159071 m!1405565))

(assert (=> d!159071 m!1405483))

(assert (=> d!159071 m!1405315))

(assert (=> b!1522353 d!159071))

(declare-fun d!159073 () Bool)

(declare-fun e!848937 () Bool)

(assert (=> d!159073 e!848937))

(declare-fun c!139972 () Bool)

(declare-fun lt!659612 () SeekEntryResult!13060)

(assert (=> d!159073 (= c!139972 (and (is-Intermediate!13060 lt!659612) (undefined!13872 lt!659612)))))

(declare-fun e!848936 () SeekEntryResult!13060)

(assert (=> d!159073 (= lt!659612 e!848936)))

(declare-fun c!139973 () Bool)

(assert (=> d!159073 (= c!139973 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!659613 () (_ BitVec 64))

(assert (=> d!159073 (= lt!659613 (select (arr!48874 a!2804) (nextIndex!0 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512)))))

(assert (=> d!159073 (validMask!0 mask!2512)))

(assert (=> d!159073 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48874 a!2804) j!70) a!2804 mask!2512) lt!659612)))

(declare-fun b!1522463 () Bool)

(declare-fun e!848938 () Bool)

(assert (=> b!1522463 (= e!848937 e!848938)))

(declare-fun res!1041622 () Bool)

(assert (=> b!1522463 (= res!1041622 (and (is-Intermediate!13060 lt!659612) (not (undefined!13872 lt!659612)) (bvslt (x!136331 lt!659612) #b01111111111111111111111111111110) (bvsge (x!136331 lt!659612) #b00000000000000000000000000000000) (bvsge (x!136331 lt!659612) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1522463 (=> (not res!1041622) (not e!848938))))

(declare-fun b!1522464 () Bool)

(assert (=> b!1522464 (and (bvsge (index!54636 lt!659612) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659612) (size!49425 a!2804)))))

(declare-fun e!848934 () Bool)

(assert (=> b!1522464 (= e!848934 (= (select (arr!48874 a!2804) (index!54636 lt!659612)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848935 () SeekEntryResult!13060)

(declare-fun b!1522465 () Bool)

(assert (=> b!1522465 (= e!848935 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2512) (select (arr!48874 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522466 () Bool)

(assert (=> b!1522466 (= e!848936 e!848935)))

(declare-fun c!139971 () Bool)

(assert (=> b!1522466 (= c!139971 (or (= lt!659613 (select (arr!48874 a!2804) j!70)) (= (bvadd lt!659613 lt!659613) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522467 () Bool)

(assert (=> b!1522467 (= e!848936 (Intermediate!13060 true (nextIndex!0 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1522468 () Bool)

(assert (=> b!1522468 (= e!848935 (Intermediate!13060 false (nextIndex!0 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1522469 () Bool)

(assert (=> b!1522469 (= e!848937 (bvsge (x!136331 lt!659612) #b01111111111111111111111111111110))))

(declare-fun b!1522470 () Bool)

(assert (=> b!1522470 (and (bvsge (index!54636 lt!659612) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659612) (size!49425 a!2804)))))

(declare-fun res!1041623 () Bool)

(assert (=> b!1522470 (= res!1041623 (= (select (arr!48874 a!2804) (index!54636 lt!659612)) (select (arr!48874 a!2804) j!70)))))

(assert (=> b!1522470 (=> res!1041623 e!848934)))

(assert (=> b!1522470 (= e!848938 e!848934)))

(declare-fun b!1522471 () Bool)

(assert (=> b!1522471 (and (bvsge (index!54636 lt!659612) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659612) (size!49425 a!2804)))))

(declare-fun res!1041624 () Bool)

(assert (=> b!1522471 (= res!1041624 (= (select (arr!48874 a!2804) (index!54636 lt!659612)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522471 (=> res!1041624 e!848934)))

(assert (= (and d!159073 c!139973) b!1522467))

(assert (= (and d!159073 (not c!139973)) b!1522466))

(assert (= (and b!1522466 c!139971) b!1522468))

(assert (= (and b!1522466 (not c!139971)) b!1522465))

(assert (= (and d!159073 c!139972) b!1522469))

(assert (= (and d!159073 (not c!139972)) b!1522463))

(assert (= (and b!1522463 res!1041622) b!1522470))

(assert (= (and b!1522470 (not res!1041623)) b!1522471))

(assert (= (and b!1522471 (not res!1041624)) b!1522464))

(assert (=> d!159073 m!1405425))

(declare-fun m!1405567 () Bool)

(assert (=> d!159073 m!1405567))

(assert (=> d!159073 m!1405315))

(declare-fun m!1405569 () Bool)

(assert (=> b!1522464 m!1405569))

(assert (=> b!1522470 m!1405569))

(assert (=> b!1522471 m!1405569))

(assert (=> b!1522465 m!1405425))

(declare-fun m!1405571 () Bool)

(assert (=> b!1522465 m!1405571))

(assert (=> b!1522465 m!1405571))

(assert (=> b!1522465 m!1405283))

(declare-fun m!1405573 () Bool)

(assert (=> b!1522465 m!1405573))

(assert (=> b!1522252 d!159073))

(declare-fun d!159075 () Bool)

(declare-fun lt!659616 () (_ BitVec 32))

(assert (=> d!159075 (and (bvsge lt!659616 #b00000000000000000000000000000000) (bvslt lt!659616 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!159075 (= lt!659616 (choose!52 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512))))

(assert (=> d!159075 (validMask!0 mask!2512)))

(assert (=> d!159075 (= (nextIndex!0 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) lt!659616)))

(declare-fun bs!43688 () Bool)

(assert (= bs!43688 d!159075))

(assert (=> bs!43688 m!1405289))

(declare-fun m!1405575 () Bool)

(assert (=> bs!43688 m!1405575))

(assert (=> bs!43688 m!1405315))

(assert (=> b!1522252 d!159075))

(assert (=> d!159067 d!159055))

(assert (=> d!159019 d!158997))

(assert (=> d!159019 d!159009))

(assert (=> d!159019 d!159055))

(assert (=> d!158997 d!159055))

(declare-fun bm!68395 () Bool)

(declare-fun c!139974 () Bool)

(declare-fun call!68398 () Bool)

(assert (=> bm!68395 (= call!68398 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!139974 (Cons!35533 (select (arr!48874 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!139883 (Cons!35533 (select (arr!48874 a!2804) #b00000000000000000000000000000000) Nil!35534) Nil!35534)) (ite c!139883 (Cons!35533 (select (arr!48874 a!2804) #b00000000000000000000000000000000) Nil!35534) Nil!35534))))))

(declare-fun b!1522472 () Bool)

(declare-fun e!848942 () Bool)

(assert (=> b!1522472 (= e!848942 call!68398)))

(declare-fun d!159077 () Bool)

(declare-fun res!1041627 () Bool)

(declare-fun e!848939 () Bool)

(assert (=> d!159077 (=> res!1041627 e!848939)))

(assert (=> d!159077 (= res!1041627 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49425 a!2804)))))

(assert (=> d!159077 (= (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139883 (Cons!35533 (select (arr!48874 a!2804) #b00000000000000000000000000000000) Nil!35534) Nil!35534)) e!848939)))

(declare-fun b!1522473 () Bool)

(declare-fun e!848941 () Bool)

(assert (=> b!1522473 (= e!848941 e!848942)))

(assert (=> b!1522473 (= c!139974 (validKeyInArray!0 (select (arr!48874 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1522474 () Bool)

(declare-fun e!848940 () Bool)

(assert (=> b!1522474 (= e!848940 (contains!9995 (ite c!139883 (Cons!35533 (select (arr!48874 a!2804) #b00000000000000000000000000000000) Nil!35534) Nil!35534) (select (arr!48874 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1522475 () Bool)

(assert (=> b!1522475 (= e!848939 e!848941)))

(declare-fun res!1041625 () Bool)

(assert (=> b!1522475 (=> (not res!1041625) (not e!848941))))

(assert (=> b!1522475 (= res!1041625 (not e!848940))))

(declare-fun res!1041626 () Bool)

(assert (=> b!1522475 (=> (not res!1041626) (not e!848940))))

(assert (=> b!1522475 (= res!1041626 (validKeyInArray!0 (select (arr!48874 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!1522476 () Bool)

(assert (=> b!1522476 (= e!848942 call!68398)))

(assert (= (and d!159077 (not res!1041627)) b!1522475))

(assert (= (and b!1522475 res!1041626) b!1522474))

(assert (= (and b!1522475 res!1041625) b!1522473))

(assert (= (and b!1522473 c!139974) b!1522472))

(assert (= (and b!1522473 (not c!139974)) b!1522476))

(assert (= (or b!1522472 b!1522476) bm!68395))

(declare-fun m!1405577 () Bool)

(assert (=> bm!68395 m!1405577))

(declare-fun m!1405579 () Bool)

(assert (=> bm!68395 m!1405579))

(assert (=> b!1522473 m!1405577))

(assert (=> b!1522473 m!1405577))

(declare-fun m!1405581 () Bool)

(assert (=> b!1522473 m!1405581))

(assert (=> b!1522474 m!1405577))

(assert (=> b!1522474 m!1405577))

(declare-fun m!1405583 () Bool)

(assert (=> b!1522474 m!1405583))

(assert (=> b!1522475 m!1405577))

(assert (=> b!1522475 m!1405577))

(assert (=> b!1522475 m!1405581))

(assert (=> bm!68376 d!159077))

(declare-fun d!159079 () Bool)

(declare-fun e!848946 () Bool)

(assert (=> d!159079 e!848946))

(declare-fun c!139976 () Bool)

(declare-fun lt!659617 () SeekEntryResult!13060)

(assert (=> d!159079 (= c!139976 (and (is-Intermediate!13060 lt!659617) (undefined!13872 lt!659617)))))

(declare-fun e!848945 () SeekEntryResult!13060)

(assert (=> d!159079 (= lt!659617 e!848945)))

(declare-fun c!139977 () Bool)

(assert (=> d!159079 (= c!139977 (bvsge (bvadd x!534 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!659618 () (_ BitVec 64))

(assert (=> d!159079 (= lt!659618 (select (arr!48874 a!2804) (nextIndex!0 index!487 x!534 mask!2512)))))

(assert (=> d!159079 (validMask!0 mask!2512)))

(assert (=> d!159079 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48874 a!2804) j!70) a!2804 mask!2512) lt!659617)))

(declare-fun b!1522477 () Bool)

(declare-fun e!848947 () Bool)

(assert (=> b!1522477 (= e!848946 e!848947)))

(declare-fun res!1041628 () Bool)

(assert (=> b!1522477 (= res!1041628 (and (is-Intermediate!13060 lt!659617) (not (undefined!13872 lt!659617)) (bvslt (x!136331 lt!659617) #b01111111111111111111111111111110) (bvsge (x!136331 lt!659617) #b00000000000000000000000000000000) (bvsge (x!136331 lt!659617) (bvadd x!534 #b00000000000000000000000000000001))))))

(assert (=> b!1522477 (=> (not res!1041628) (not e!848947))))

(declare-fun b!1522478 () Bool)

(assert (=> b!1522478 (and (bvsge (index!54636 lt!659617) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659617) (size!49425 a!2804)))))

(declare-fun e!848943 () Bool)

(assert (=> b!1522478 (= e!848943 (= (select (arr!48874 a!2804) (index!54636 lt!659617)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1522479 () Bool)

(declare-fun e!848944 () SeekEntryResult!13060)

(assert (=> b!1522479 (= e!848944 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!487 x!534 mask!2512) (bvadd x!534 #b00000000000000000000000000000001) mask!2512) (select (arr!48874 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522480 () Bool)

(assert (=> b!1522480 (= e!848945 e!848944)))

(declare-fun c!139975 () Bool)

(assert (=> b!1522480 (= c!139975 (or (= lt!659618 (select (arr!48874 a!2804) j!70)) (= (bvadd lt!659618 lt!659618) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522481 () Bool)

(assert (=> b!1522481 (= e!848945 (Intermediate!13060 true (nextIndex!0 index!487 x!534 mask!2512) (bvadd x!534 #b00000000000000000000000000000001)))))

(declare-fun b!1522482 () Bool)

(assert (=> b!1522482 (= e!848944 (Intermediate!13060 false (nextIndex!0 index!487 x!534 mask!2512) (bvadd x!534 #b00000000000000000000000000000001)))))

(declare-fun b!1522483 () Bool)

(assert (=> b!1522483 (= e!848946 (bvsge (x!136331 lt!659617) #b01111111111111111111111111111110))))

(declare-fun b!1522484 () Bool)

(assert (=> b!1522484 (and (bvsge (index!54636 lt!659617) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659617) (size!49425 a!2804)))))

(declare-fun res!1041629 () Bool)

(assert (=> b!1522484 (= res!1041629 (= (select (arr!48874 a!2804) (index!54636 lt!659617)) (select (arr!48874 a!2804) j!70)))))

(assert (=> b!1522484 (=> res!1041629 e!848943)))

(assert (=> b!1522484 (= e!848947 e!848943)))

(declare-fun b!1522485 () Bool)

(assert (=> b!1522485 (and (bvsge (index!54636 lt!659617) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659617) (size!49425 a!2804)))))

(declare-fun res!1041630 () Bool)

(assert (=> b!1522485 (= res!1041630 (= (select (arr!48874 a!2804) (index!54636 lt!659617)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522485 (=> res!1041630 e!848943)))

(assert (= (and d!159079 c!139977) b!1522481))

(assert (= (and d!159079 (not c!139977)) b!1522480))

(assert (= (and b!1522480 c!139975) b!1522482))

(assert (= (and b!1522480 (not c!139975)) b!1522479))

(assert (= (and d!159079 c!139976) b!1522483))

(assert (= (and d!159079 (not c!139976)) b!1522477))

(assert (= (and b!1522477 res!1041628) b!1522484))

(assert (= (and b!1522484 (not res!1041629)) b!1522485))

(assert (= (and b!1522485 (not res!1041630)) b!1522478))

(assert (=> d!159079 m!1405441))

(declare-fun m!1405585 () Bool)

(assert (=> d!159079 m!1405585))

(assert (=> d!159079 m!1405315))

(declare-fun m!1405587 () Bool)

(assert (=> b!1522478 m!1405587))

(assert (=> b!1522484 m!1405587))

(assert (=> b!1522485 m!1405587))

(assert (=> b!1522479 m!1405441))

(declare-fun m!1405589 () Bool)

(assert (=> b!1522479 m!1405589))

(assert (=> b!1522479 m!1405589))

(assert (=> b!1522479 m!1405283))

(declare-fun m!1405591 () Bool)

(assert (=> b!1522479 m!1405591))

(assert (=> b!1522296 d!159079))

(declare-fun d!159081 () Bool)

(declare-fun lt!659619 () (_ BitVec 32))

(assert (=> d!159081 (and (bvsge lt!659619 #b00000000000000000000000000000000) (bvslt lt!659619 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(assert (=> d!159081 (= lt!659619 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!159081 (validMask!0 mask!2512)))

(assert (=> d!159081 (= (nextIndex!0 index!487 x!534 mask!2512) lt!659619)))

(declare-fun bs!43689 () Bool)

(assert (= bs!43689 d!159081))

(declare-fun m!1405593 () Bool)

(assert (=> bs!43689 m!1405593))

(assert (=> bs!43689 m!1405315))

(assert (=> b!1522296 d!159081))

(declare-fun bm!68396 () Bool)

(declare-fun call!68399 () Bool)

(assert (=> bm!68396 (= call!68399 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1522486 () Bool)

(declare-fun e!848950 () Bool)

(declare-fun e!848948 () Bool)

(assert (=> b!1522486 (= e!848950 e!848948)))

(declare-fun c!139978 () Bool)

(assert (=> b!1522486 (= c!139978 (validKeyInArray!0 (select (arr!48874 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!159083 () Bool)

(declare-fun res!1041631 () Bool)

(assert (=> d!159083 (=> res!1041631 e!848950)))

(assert (=> d!159083 (= res!1041631 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49425 a!2804)))))

(assert (=> d!159083 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512) e!848950)))

(declare-fun b!1522487 () Bool)

(declare-fun e!848949 () Bool)

(assert (=> b!1522487 (= e!848948 e!848949)))

(declare-fun lt!659620 () (_ BitVec 64))

(assert (=> b!1522487 (= lt!659620 (select (arr!48874 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!659621 () Unit!50860)

(assert (=> b!1522487 (= lt!659621 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659620 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1522487 (arrayContainsKey!0 a!2804 lt!659620 #b00000000000000000000000000000000)))

(declare-fun lt!659622 () Unit!50860)

(assert (=> b!1522487 (= lt!659622 lt!659621)))

(declare-fun res!1041632 () Bool)

(assert (=> b!1522487 (= res!1041632 (= (seekEntryOrOpen!0 (select (arr!48874 a!2804) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!2804 mask!2512) (Found!13060 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1522487 (=> (not res!1041632) (not e!848949))))

(declare-fun b!1522488 () Bool)

(assert (=> b!1522488 (= e!848948 call!68399)))

(declare-fun b!1522489 () Bool)

(assert (=> b!1522489 (= e!848949 call!68399)))

(assert (= (and d!159083 (not res!1041631)) b!1522486))

(assert (= (and b!1522486 c!139978) b!1522487))

(assert (= (and b!1522486 (not c!139978)) b!1522488))

(assert (= (and b!1522487 res!1041632) b!1522489))

(assert (= (or b!1522489 b!1522488) bm!68396))

(declare-fun m!1405595 () Bool)

(assert (=> bm!68396 m!1405595))

(assert (=> b!1522486 m!1405577))

(assert (=> b!1522486 m!1405577))

(assert (=> b!1522486 m!1405581))

(assert (=> b!1522487 m!1405577))

(declare-fun m!1405597 () Bool)

(assert (=> b!1522487 m!1405597))

(declare-fun m!1405599 () Bool)

(assert (=> b!1522487 m!1405599))

(assert (=> b!1522487 m!1405577))

(declare-fun m!1405601 () Bool)

(assert (=> b!1522487 m!1405601))

(assert (=> bm!68390 d!159083))

(assert (=> b!1522386 d!159015))

(declare-fun d!159085 () Bool)

(assert (=> d!159085 (arrayContainsKey!0 a!2804 lt!659589 #b00000000000000000000000000000000)))

(declare-fun lt!659625 () Unit!50860)

(declare-fun choose!13 (array!101292 (_ BitVec 64) (_ BitVec 32)) Unit!50860)

(assert (=> d!159085 (= lt!659625 (choose!13 a!2804 lt!659589 #b00000000000000000000000000000000))))

(assert (=> d!159085 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!159085 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659589 #b00000000000000000000000000000000) lt!659625)))

(declare-fun bs!43690 () Bool)

(assert (= bs!43690 d!159085))

(assert (=> bs!43690 m!1405527))

(declare-fun m!1405603 () Bool)

(assert (=> bs!43690 m!1405603))

(assert (=> b!1522408 d!159085))

(declare-fun d!159087 () Bool)

(declare-fun res!1041637 () Bool)

(declare-fun e!848955 () Bool)

(assert (=> d!159087 (=> res!1041637 e!848955)))

(assert (=> d!159087 (= res!1041637 (= (select (arr!48874 a!2804) #b00000000000000000000000000000000) lt!659589))))

(assert (=> d!159087 (= (arrayContainsKey!0 a!2804 lt!659589 #b00000000000000000000000000000000) e!848955)))

(declare-fun b!1522494 () Bool)

(declare-fun e!848956 () Bool)

(assert (=> b!1522494 (= e!848955 e!848956)))

(declare-fun res!1041638 () Bool)

(assert (=> b!1522494 (=> (not res!1041638) (not e!848956))))

(assert (=> b!1522494 (= res!1041638 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49425 a!2804)))))

(declare-fun b!1522495 () Bool)

(assert (=> b!1522495 (= e!848956 (arrayContainsKey!0 a!2804 lt!659589 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!159087 (not res!1041637)) b!1522494))

(assert (= (and b!1522494 res!1041638) b!1522495))

(assert (=> d!159087 m!1405399))

(declare-fun m!1405605 () Bool)

(assert (=> b!1522495 m!1405605))

(assert (=> b!1522408 d!159087))

(declare-fun b!1522508 () Bool)

(declare-fun c!139985 () Bool)

(declare-fun lt!659634 () (_ BitVec 64))

(assert (=> b!1522508 (= c!139985 (= lt!659634 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848964 () SeekEntryResult!13060)

(declare-fun e!848965 () SeekEntryResult!13060)

(assert (=> b!1522508 (= e!848964 e!848965)))

(declare-fun b!1522509 () Bool)

(declare-fun lt!659633 () SeekEntryResult!13060)

(assert (=> b!1522509 (= e!848965 (seekKeyOrZeroReturnVacant!0 (x!136331 lt!659633) (index!54636 lt!659633) (index!54636 lt!659633) (select (arr!48874 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512))))

(declare-fun b!1522510 () Bool)

(assert (=> b!1522510 (= e!848964 (Found!13060 (index!54636 lt!659633)))))

(declare-fun b!1522511 () Bool)

(declare-fun e!848963 () SeekEntryResult!13060)

(assert (=> b!1522511 (= e!848963 Undefined!13060)))

(declare-fun b!1522512 () Bool)

(assert (=> b!1522512 (= e!848965 (MissingZero!13060 (index!54636 lt!659633)))))

(declare-fun b!1522513 () Bool)

(assert (=> b!1522513 (= e!848963 e!848964)))

(assert (=> b!1522513 (= lt!659634 (select (arr!48874 a!2804) (index!54636 lt!659633)))))

(declare-fun c!139986 () Bool)

(assert (=> b!1522513 (= c!139986 (= lt!659634 (select (arr!48874 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159089 () Bool)

(declare-fun lt!659632 () SeekEntryResult!13060)

(assert (=> d!159089 (and (or (is-Undefined!13060 lt!659632) (not (is-Found!13060 lt!659632)) (and (bvsge (index!54635 lt!659632) #b00000000000000000000000000000000) (bvslt (index!54635 lt!659632) (size!49425 a!2804)))) (or (is-Undefined!13060 lt!659632) (is-Found!13060 lt!659632) (not (is-MissingZero!13060 lt!659632)) (and (bvsge (index!54634 lt!659632) #b00000000000000000000000000000000) (bvslt (index!54634 lt!659632) (size!49425 a!2804)))) (or (is-Undefined!13060 lt!659632) (is-Found!13060 lt!659632) (is-MissingZero!13060 lt!659632) (not (is-MissingVacant!13060 lt!659632)) (and (bvsge (index!54637 lt!659632) #b00000000000000000000000000000000) (bvslt (index!54637 lt!659632) (size!49425 a!2804)))) (or (is-Undefined!13060 lt!659632) (ite (is-Found!13060 lt!659632) (= (select (arr!48874 a!2804) (index!54635 lt!659632)) (select (arr!48874 a!2804) #b00000000000000000000000000000000)) (ite (is-MissingZero!13060 lt!659632) (= (select (arr!48874 a!2804) (index!54634 lt!659632)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13060 lt!659632) (= (select (arr!48874 a!2804) (index!54637 lt!659632)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159089 (= lt!659632 e!848963)))

(declare-fun c!139987 () Bool)

(assert (=> d!159089 (= c!139987 (and (is-Intermediate!13060 lt!659633) (undefined!13872 lt!659633)))))

(assert (=> d!159089 (= lt!659633 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48874 a!2804) #b00000000000000000000000000000000) mask!2512) (select (arr!48874 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512))))

(assert (=> d!159089 (validMask!0 mask!2512)))

(assert (=> d!159089 (= (seekEntryOrOpen!0 (select (arr!48874 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) lt!659632)))

(assert (= (and d!159089 c!139987) b!1522511))

(assert (= (and d!159089 (not c!139987)) b!1522513))

(assert (= (and b!1522513 c!139986) b!1522510))

(assert (= (and b!1522513 (not c!139986)) b!1522508))

(assert (= (and b!1522508 c!139985) b!1522512))

(assert (= (and b!1522508 (not c!139985)) b!1522509))

(assert (=> b!1522509 m!1405399))

(declare-fun m!1405607 () Bool)

(assert (=> b!1522509 m!1405607))

(declare-fun m!1405609 () Bool)

(assert (=> b!1522513 m!1405609))

(assert (=> d!159089 m!1405315))

(declare-fun m!1405611 () Bool)

(assert (=> d!159089 m!1405611))

(assert (=> d!159089 m!1405399))

(declare-fun m!1405613 () Bool)

(assert (=> d!159089 m!1405613))

(declare-fun m!1405615 () Bool)

(assert (=> d!159089 m!1405615))

(declare-fun m!1405617 () Bool)

(assert (=> d!159089 m!1405617))

(declare-fun m!1405619 () Bool)

(assert (=> d!159089 m!1405619))

(assert (=> d!159089 m!1405399))

(assert (=> d!159089 m!1405611))

(assert (=> b!1522408 d!159089))

(declare-fun bm!68397 () Bool)

(declare-fun call!68400 () Bool)

(assert (=> bm!68397 (= call!68400 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1522514 () Bool)

(declare-fun e!848968 () Bool)

(declare-fun e!848966 () Bool)

(assert (=> b!1522514 (= e!848968 e!848966)))

(declare-fun c!139988 () Bool)

(assert (=> b!1522514 (= c!139988 (validKeyInArray!0 (select (arr!48874 a!2804) (bvadd j!70 #b00000000000000000000000000000001))))))

(declare-fun d!159091 () Bool)

(declare-fun res!1041639 () Bool)

(assert (=> d!159091 (=> res!1041639 e!848968)))

(assert (=> d!159091 (= res!1041639 (bvsge (bvadd j!70 #b00000000000000000000000000000001) (size!49425 a!2804)))))

(assert (=> d!159091 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512) e!848968)))

(declare-fun b!1522515 () Bool)

(declare-fun e!848967 () Bool)

(assert (=> b!1522515 (= e!848966 e!848967)))

(declare-fun lt!659635 () (_ BitVec 64))

(assert (=> b!1522515 (= lt!659635 (select (arr!48874 a!2804) (bvadd j!70 #b00000000000000000000000000000001)))))

(declare-fun lt!659636 () Unit!50860)

(assert (=> b!1522515 (= lt!659636 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659635 (bvadd j!70 #b00000000000000000000000000000001)))))

(assert (=> b!1522515 (arrayContainsKey!0 a!2804 lt!659635 #b00000000000000000000000000000000)))

(declare-fun lt!659637 () Unit!50860)

(assert (=> b!1522515 (= lt!659637 lt!659636)))

(declare-fun res!1041640 () Bool)

(assert (=> b!1522515 (= res!1041640 (= (seekEntryOrOpen!0 (select (arr!48874 a!2804) (bvadd j!70 #b00000000000000000000000000000001)) a!2804 mask!2512) (Found!13060 (bvadd j!70 #b00000000000000000000000000000001))))))

(assert (=> b!1522515 (=> (not res!1041640) (not e!848967))))

(declare-fun b!1522516 () Bool)

(assert (=> b!1522516 (= e!848966 call!68400)))

(declare-fun b!1522517 () Bool)

(assert (=> b!1522517 (= e!848967 call!68400)))

(assert (= (and d!159091 (not res!1041639)) b!1522514))

(assert (= (and b!1522514 c!139988) b!1522515))

(assert (= (and b!1522514 (not c!139988)) b!1522516))

(assert (= (and b!1522515 res!1041640) b!1522517))

(assert (= (or b!1522517 b!1522516) bm!68397))

(declare-fun m!1405621 () Bool)

(assert (=> bm!68397 m!1405621))

(declare-fun m!1405623 () Bool)

(assert (=> b!1522514 m!1405623))

(assert (=> b!1522514 m!1405623))

(declare-fun m!1405625 () Bool)

(assert (=> b!1522514 m!1405625))

(assert (=> b!1522515 m!1405623))

(declare-fun m!1405627 () Bool)

(assert (=> b!1522515 m!1405627))

(declare-fun m!1405629 () Bool)

(assert (=> b!1522515 m!1405629))

(assert (=> b!1522515 m!1405623))

(declare-fun m!1405631 () Bool)

(assert (=> b!1522515 m!1405631))

(assert (=> bm!68388 d!159091))

(declare-fun d!159093 () Bool)

(assert (=> d!159093 (= (validKeyInArray!0 (select (arr!48874 a!2804) #b00000000000000000000000000000000)) (and (not (= (select (arr!48874 a!2804) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48874 a!2804) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1522407 d!159093))

(declare-fun d!159095 () Bool)

(declare-fun e!848972 () Bool)

(assert (=> d!159095 e!848972))

(declare-fun c!139990 () Bool)

(declare-fun lt!659638 () SeekEntryResult!13060)

(assert (=> d!159095 (= c!139990 (and (is-Intermediate!13060 lt!659638) (undefined!13872 lt!659638)))))

(declare-fun e!848971 () SeekEntryResult!13060)

(assert (=> d!159095 (= lt!659638 e!848971)))

(declare-fun c!139991 () Bool)

(assert (=> d!159095 (= c!139991 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!659639 () (_ BitVec 64))

(assert (=> d!159095 (= lt!659639 (select (arr!48874 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804))) (nextIndex!0 (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512)))))

(assert (=> d!159095 (validMask!0 mask!2512)))

(assert (=> d!159095 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804)) mask!2512) lt!659638)))

(declare-fun b!1522518 () Bool)

(declare-fun e!848973 () Bool)

(assert (=> b!1522518 (= e!848972 e!848973)))

(declare-fun res!1041641 () Bool)

(assert (=> b!1522518 (= res!1041641 (and (is-Intermediate!13060 lt!659638) (not (undefined!13872 lt!659638)) (bvslt (x!136331 lt!659638) #b01111111111111111111111111111110) (bvsge (x!136331 lt!659638) #b00000000000000000000000000000000) (bvsge (x!136331 lt!659638) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1522518 (=> (not res!1041641) (not e!848973))))

(declare-fun b!1522519 () Bool)

(assert (=> b!1522519 (and (bvsge (index!54636 lt!659638) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659638) (size!49425 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804)))))))

(declare-fun e!848969 () Bool)

(assert (=> b!1522519 (= e!848969 (= (select (arr!48874 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804))) (index!54636 lt!659638)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848970 () SeekEntryResult!13060)

(declare-fun b!1522520 () Bool)

(assert (=> b!1522520 (= e!848970 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!2512) (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804)) mask!2512))))

(declare-fun b!1522521 () Bool)

(assert (=> b!1522521 (= e!848971 e!848970)))

(declare-fun c!139989 () Bool)

(assert (=> b!1522521 (= c!139989 (or (= lt!659639 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!659639 lt!659639) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1522522 () Bool)

(assert (=> b!1522522 (= e!848971 (Intermediate!13060 true (nextIndex!0 (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1522523 () Bool)

(assert (=> b!1522523 (= e!848970 (Intermediate!13060 false (nextIndex!0 (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!1522524 () Bool)

(assert (=> b!1522524 (= e!848972 (bvsge (x!136331 lt!659638) #b01111111111111111111111111111110))))

(declare-fun b!1522525 () Bool)

(assert (=> b!1522525 (and (bvsge (index!54636 lt!659638) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659638) (size!49425 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804)))))))

(declare-fun res!1041642 () Bool)

(assert (=> b!1522525 (= res!1041642 (= (select (arr!48874 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804))) (index!54636 lt!659638)) (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1522525 (=> res!1041642 e!848969)))

(assert (=> b!1522525 (= e!848973 e!848969)))

(declare-fun b!1522526 () Bool)

(assert (=> b!1522526 (and (bvsge (index!54636 lt!659638) #b00000000000000000000000000000000) (bvslt (index!54636 lt!659638) (size!49425 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804)))))))

(declare-fun res!1041643 () Bool)

(assert (=> b!1522526 (= res!1041643 (= (select (arr!48874 (array!101293 (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49425 a!2804))) (index!54636 lt!659638)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1522526 (=> res!1041643 e!848969)))

(assert (= (and d!159095 c!139991) b!1522522))

(assert (= (and d!159095 (not c!139991)) b!1522521))

(assert (= (and b!1522521 c!139989) b!1522523))

(assert (= (and b!1522521 (not c!139989)) b!1522520))

(assert (= (and d!159095 c!139990) b!1522524))

(assert (= (and d!159095 (not c!139990)) b!1522518))

(assert (= (and b!1522518 res!1041641) b!1522525))

(assert (= (and b!1522525 (not res!1041642)) b!1522526))

(assert (= (and b!1522526 (not res!1041643)) b!1522519))

(assert (=> d!159095 m!1405551))

(declare-fun m!1405633 () Bool)

(assert (=> d!159095 m!1405633))

(assert (=> d!159095 m!1405315))

(declare-fun m!1405635 () Bool)

(assert (=> b!1522519 m!1405635))

(assert (=> b!1522525 m!1405635))

(assert (=> b!1522526 m!1405635))

(assert (=> b!1522520 m!1405551))

(declare-fun m!1405637 () Bool)

(assert (=> b!1522520 m!1405637))

(assert (=> b!1522520 m!1405637))

(assert (=> b!1522520 m!1405305))

(declare-fun m!1405639 () Bool)

(assert (=> b!1522520 m!1405639))

(assert (=> b!1522433 d!159095))

(declare-fun d!159097 () Bool)

(declare-fun lt!659640 () (_ BitVec 32))

(assert (=> d!159097 (and (bvsge lt!659640 #b00000000000000000000000000000000) (bvslt lt!659640 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(assert (=> d!159097 (= lt!659640 (choose!52 (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512))))

(assert (=> d!159097 (validMask!0 mask!2512)))

(assert (=> d!159097 (= (nextIndex!0 (toIndex!0 (select (store (arr!48874 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) lt!659640)))

(declare-fun bs!43691 () Bool)

(assert (= bs!43691 d!159097))

(assert (=> bs!43691 m!1405307))

(declare-fun m!1405641 () Bool)

(assert (=> bs!43691 m!1405641))

(assert (=> bs!43691 m!1405315))

(assert (=> b!1522433 d!159097))

(assert (=> d!159011 d!159055))

(declare-fun d!159099 () Bool)

(assert (=> d!159099 (arrayContainsKey!0 a!2804 lt!659575 #b00000000000000000000000000000000)))

(declare-fun lt!659641 () Unit!50860)

(assert (=> d!159099 (= lt!659641 (choose!13 a!2804 lt!659575 j!70))))

(assert (=> d!159099 (bvsge j!70 #b00000000000000000000000000000000)))

(assert (=> d!159099 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659575 j!70) lt!659641)))

(declare-fun bs!43692 () Bool)

(assert (= bs!43692 d!159099))

(assert (=> bs!43692 m!1405513))

(declare-fun m!1405643 () Bool)

(assert (=> bs!43692 m!1405643))

(assert (=> b!1522387 d!159099))

(declare-fun d!159101 () Bool)

(declare-fun res!1041644 () Bool)

(declare-fun e!848974 () Bool)

(assert (=> d!159101 (=> res!1041644 e!848974)))

(assert (=> d!159101 (= res!1041644 (= (select (arr!48874 a!2804) #b00000000000000000000000000000000) lt!659575))))

(assert (=> d!159101 (= (arrayContainsKey!0 a!2804 lt!659575 #b00000000000000000000000000000000) e!848974)))

(declare-fun b!1522527 () Bool)

(declare-fun e!848975 () Bool)

(assert (=> b!1522527 (= e!848974 e!848975)))

(declare-fun res!1041645 () Bool)

(assert (=> b!1522527 (=> (not res!1041645) (not e!848975))))

(assert (=> b!1522527 (= res!1041645 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!49425 a!2804)))))

(declare-fun b!1522528 () Bool)

(assert (=> b!1522528 (= e!848975 (arrayContainsKey!0 a!2804 lt!659575 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!159101 (not res!1041644)) b!1522527))

(assert (= (and b!1522527 res!1041645) b!1522528))

(assert (=> d!159101 m!1405399))

(declare-fun m!1405645 () Bool)

(assert (=> b!1522528 m!1405645))

(assert (=> b!1522387 d!159101))

(declare-fun b!1522529 () Bool)

(declare-fun c!139992 () Bool)

(declare-fun lt!659644 () (_ BitVec 64))

(assert (=> b!1522529 (= c!139992 (= lt!659644 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!848977 () SeekEntryResult!13060)

(declare-fun e!848978 () SeekEntryResult!13060)

(assert (=> b!1522529 (= e!848977 e!848978)))

(declare-fun b!1522530 () Bool)

(declare-fun lt!659643 () SeekEntryResult!13060)

(assert (=> b!1522530 (= e!848978 (seekKeyOrZeroReturnVacant!0 (x!136331 lt!659643) (index!54636 lt!659643) (index!54636 lt!659643) (select (arr!48874 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522531 () Bool)

(assert (=> b!1522531 (= e!848977 (Found!13060 (index!54636 lt!659643)))))

(declare-fun b!1522532 () Bool)

(declare-fun e!848976 () SeekEntryResult!13060)

(assert (=> b!1522532 (= e!848976 Undefined!13060)))

(declare-fun b!1522533 () Bool)

(assert (=> b!1522533 (= e!848978 (MissingZero!13060 (index!54636 lt!659643)))))

(declare-fun b!1522534 () Bool)

(assert (=> b!1522534 (= e!848976 e!848977)))

(assert (=> b!1522534 (= lt!659644 (select (arr!48874 a!2804) (index!54636 lt!659643)))))

(declare-fun c!139993 () Bool)

(assert (=> b!1522534 (= c!139993 (= lt!659644 (select (arr!48874 a!2804) j!70)))))

(declare-fun d!159103 () Bool)

(declare-fun lt!659642 () SeekEntryResult!13060)

(assert (=> d!159103 (and (or (is-Undefined!13060 lt!659642) (not (is-Found!13060 lt!659642)) (and (bvsge (index!54635 lt!659642) #b00000000000000000000000000000000) (bvslt (index!54635 lt!659642) (size!49425 a!2804)))) (or (is-Undefined!13060 lt!659642) (is-Found!13060 lt!659642) (not (is-MissingZero!13060 lt!659642)) (and (bvsge (index!54634 lt!659642) #b00000000000000000000000000000000) (bvslt (index!54634 lt!659642) (size!49425 a!2804)))) (or (is-Undefined!13060 lt!659642) (is-Found!13060 lt!659642) (is-MissingZero!13060 lt!659642) (not (is-MissingVacant!13060 lt!659642)) (and (bvsge (index!54637 lt!659642) #b00000000000000000000000000000000) (bvslt (index!54637 lt!659642) (size!49425 a!2804)))) (or (is-Undefined!13060 lt!659642) (ite (is-Found!13060 lt!659642) (= (select (arr!48874 a!2804) (index!54635 lt!659642)) (select (arr!48874 a!2804) j!70)) (ite (is-MissingZero!13060 lt!659642) (= (select (arr!48874 a!2804) (index!54634 lt!659642)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13060 lt!659642) (= (select (arr!48874 a!2804) (index!54637 lt!659642)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!159103 (= lt!659642 e!848976)))

(declare-fun c!139994 () Bool)

(assert (=> d!159103 (= c!139994 (and (is-Intermediate!13060 lt!659643) (undefined!13872 lt!659643)))))

(assert (=> d!159103 (= lt!659643 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48874 a!2804) j!70) mask!2512) (select (arr!48874 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159103 (validMask!0 mask!2512)))

(assert (=> d!159103 (= (seekEntryOrOpen!0 (select (arr!48874 a!2804) j!70) a!2804 mask!2512) lt!659642)))

(assert (= (and d!159103 c!139994) b!1522532))

(assert (= (and d!159103 (not c!139994)) b!1522534))

(assert (= (and b!1522534 c!139993) b!1522531))

(assert (= (and b!1522534 (not c!139993)) b!1522529))

(assert (= (and b!1522529 c!139992) b!1522533))

(assert (= (and b!1522529 (not c!139992)) b!1522530))

(assert (=> b!1522530 m!1405283))

(declare-fun m!1405647 () Bool)

(assert (=> b!1522530 m!1405647))

(declare-fun m!1405649 () Bool)

(assert (=> b!1522534 m!1405649))

(assert (=> d!159103 m!1405315))

(assert (=> d!159103 m!1405289))

(assert (=> d!159103 m!1405283))

(assert (=> d!159103 m!1405291))

(declare-fun m!1405651 () Bool)

(assert (=> d!159103 m!1405651))

(declare-fun m!1405653 () Bool)

(assert (=> d!159103 m!1405653))

(declare-fun m!1405655 () Bool)

(assert (=> d!159103 m!1405655))

(assert (=> d!159103 m!1405283))

(assert (=> d!159103 m!1405289))

(assert (=> b!1522387 d!159103))

(assert (=> b!1522210 d!159093))

(assert (=> b!1522212 d!159093))

(assert (=> d!159051 d!159039))

(declare-fun d!159105 () Bool)

(assert (=> d!159105 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(assert (=> d!159105 true))

(declare-fun _$72!164 () Unit!50860)

(assert (=> d!159105 (= (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) _$72!164)))

(declare-fun bs!43693 () Bool)

(assert (= bs!43693 d!159105))

(assert (=> bs!43693 m!1405297))

(assert (=> d!159051 d!159105))

(assert (=> d!159051 d!159055))

(declare-fun d!159107 () Bool)

(declare-fun lt!659647 () Bool)

(declare-fun content!791 (List!35537) (Set (_ BitVec 64)))

(assert (=> d!159107 (= lt!659647 (set.member (select (arr!48874 a!2804) #b00000000000000000000000000000000) (content!791 Nil!35534)))))

(declare-fun e!848984 () Bool)

(assert (=> d!159107 (= lt!659647 e!848984)))

(declare-fun res!1041651 () Bool)

(assert (=> d!159107 (=> (not res!1041651) (not e!848984))))

(assert (=> d!159107 (= res!1041651 (is-Cons!35533 Nil!35534))))

(assert (=> d!159107 (= (contains!9995 Nil!35534 (select (arr!48874 a!2804) #b00000000000000000000000000000000)) lt!659647)))

(declare-fun b!1522539 () Bool)

(declare-fun e!848983 () Bool)

(assert (=> b!1522539 (= e!848984 e!848983)))

(declare-fun res!1041650 () Bool)

(assert (=> b!1522539 (=> res!1041650 e!848983)))

(assert (=> b!1522539 (= res!1041650 (= (h!36955 Nil!35534) (select (arr!48874 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1522540 () Bool)

(assert (=> b!1522540 (= e!848983 (contains!9995 (t!50238 Nil!35534) (select (arr!48874 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159107 res!1041651) b!1522539))

(assert (= (and b!1522539 (not res!1041650)) b!1522540))

(declare-fun m!1405657 () Bool)

(assert (=> d!159107 m!1405657))

(assert (=> d!159107 m!1405399))

(declare-fun m!1405659 () Bool)

(assert (=> d!159107 m!1405659))

(assert (=> b!1522540 m!1405399))

(declare-fun m!1405661 () Bool)

(assert (=> b!1522540 m!1405661))

(assert (=> b!1522211 d!159107))

(push 1)

(assert (not d!159071))

(assert (not d!159099))

(assert (not b!1522465))

(assert (not b!1522520))

(assert (not b!1522528))

(assert (not bm!68397))

(assert (not b!1522487))

(assert (not d!159105))

(assert (not d!159079))

(assert (not b!1522475))

(assert (not b!1522479))

(assert (not b!1522514))

(assert (not d!159081))

(assert (not b!1522530))

(assert (not d!159095))

(assert (not b!1522540))

(assert (not b!1522474))

(assert (not d!159107))

(assert (not d!159103))

(assert (not bm!68396))

(assert (not d!159097))

(assert (not b!1522515))

(assert (not b!1522473))

(assert (not d!159085))

(assert (not d!159073))

(assert (not bm!68395))

(assert (not d!159075))

(assert (not b!1522495))

(assert (not d!159089))

(assert (not b!1522486))

(assert (not b!1522457))

(assert (not b!1522509))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

