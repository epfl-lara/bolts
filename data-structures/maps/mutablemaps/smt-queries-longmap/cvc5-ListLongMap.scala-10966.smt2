; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128470 () Bool)

(assert start!128470)

(declare-fun b!1506205 () Bool)

(declare-fun res!1026634 () Bool)

(declare-fun e!841823 () Bool)

(assert (=> b!1506205 (=> (not res!1026634) (not e!841823))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100428 0))(
  ( (array!100429 (arr!48454 (Array (_ BitVec 32) (_ BitVec 64))) (size!49005 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100428)

(assert (=> b!1506205 (= res!1026634 (and (= (size!49005 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49005 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49005 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506206 () Bool)

(declare-fun res!1026638 () Bool)

(assert (=> b!1506206 (=> (not res!1026638) (not e!841823))))

(declare-datatypes ((List!35117 0))(
  ( (Nil!35114) (Cons!35113 (h!36511 (_ BitVec 64)) (t!49818 List!35117)) )
))
(declare-fun arrayNoDuplicates!0 (array!100428 (_ BitVec 32) List!35117) Bool)

(assert (=> b!1506206 (= res!1026638 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35114))))

(declare-fun b!1506207 () Bool)

(declare-fun res!1026635 () Bool)

(assert (=> b!1506207 (=> (not res!1026635) (not e!841823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100428 (_ BitVec 32)) Bool)

(assert (=> b!1506207 (= res!1026635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506208 () Bool)

(declare-fun res!1026639 () Bool)

(assert (=> b!1506208 (=> (not res!1026639) (not e!841823))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506208 (= res!1026639 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49005 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49005 a!2804))))))

(declare-fun b!1506209 () Bool)

(declare-fun res!1026633 () Bool)

(assert (=> b!1506209 (=> (not res!1026633) (not e!841823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506209 (= res!1026633 (validKeyInArray!0 (select (arr!48454 a!2804) j!70)))))

(declare-fun res!1026637 () Bool)

(assert (=> start!128470 (=> (not res!1026637) (not e!841823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128470 (= res!1026637 (validMask!0 mask!2512))))

(assert (=> start!128470 e!841823))

(assert (=> start!128470 true))

(declare-fun array_inv!37399 (array!100428) Bool)

(assert (=> start!128470 (array_inv!37399 a!2804)))

(declare-fun b!1506210 () Bool)

(declare-fun res!1026636 () Bool)

(assert (=> b!1506210 (=> (not res!1026636) (not e!841823))))

(assert (=> b!1506210 (= res!1026636 (validKeyInArray!0 (select (arr!48454 a!2804) i!961)))))

(declare-fun b!1506211 () Bool)

(declare-fun lt!654136 () (_ BitVec 32))

(assert (=> b!1506211 (= e!841823 (and (bvsge mask!2512 #b00000000000000000000000000000000) (or (bvslt lt!654136 #b00000000000000000000000000000000) (bvsge lt!654136 (bvadd #b00000000000000000000000000000001 mask!2512)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506211 (= lt!654136 (toIndex!0 (select (arr!48454 a!2804) j!70) mask!2512))))

(assert (= (and start!128470 res!1026637) b!1506205))

(assert (= (and b!1506205 res!1026634) b!1506210))

(assert (= (and b!1506210 res!1026636) b!1506209))

(assert (= (and b!1506209 res!1026633) b!1506207))

(assert (= (and b!1506207 res!1026635) b!1506206))

(assert (= (and b!1506206 res!1026638) b!1506208))

(assert (= (and b!1506208 res!1026639) b!1506211))

(declare-fun m!1389255 () Bool)

(assert (=> b!1506210 m!1389255))

(assert (=> b!1506210 m!1389255))

(declare-fun m!1389257 () Bool)

(assert (=> b!1506210 m!1389257))

(declare-fun m!1389259 () Bool)

(assert (=> b!1506211 m!1389259))

(assert (=> b!1506211 m!1389259))

(declare-fun m!1389261 () Bool)

(assert (=> b!1506211 m!1389261))

(declare-fun m!1389263 () Bool)

(assert (=> b!1506207 m!1389263))

(declare-fun m!1389265 () Bool)

(assert (=> start!128470 m!1389265))

(declare-fun m!1389267 () Bool)

(assert (=> start!128470 m!1389267))

(assert (=> b!1506209 m!1389259))

(assert (=> b!1506209 m!1389259))

(declare-fun m!1389269 () Bool)

(assert (=> b!1506209 m!1389269))

(declare-fun m!1389271 () Bool)

(assert (=> b!1506206 m!1389271))

(push 1)

(assert (not b!1506209))

(assert (not b!1506206))

(assert (not b!1506211))

(assert (not b!1506207))

(assert (not start!128470))

(assert (not b!1506210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158157 () Bool)

(declare-fun res!1026694 () Bool)

(declare-fun e!841852 () Bool)

(assert (=> d!158157 (=> res!1026694 e!841852)))

(assert (=> d!158157 (= res!1026694 (bvsge #b00000000000000000000000000000000 (size!49005 a!2804)))))

(assert (=> d!158157 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841852)))

(declare-fun b!1506274 () Bool)

(declare-fun e!841851 () Bool)

(declare-fun call!68226 () Bool)

(assert (=> b!1506274 (= e!841851 call!68226)))

(declare-fun bm!68223 () Bool)

(assert (=> bm!68223 (= call!68226 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1506275 () Bool)

(declare-fun e!841853 () Bool)

(assert (=> b!1506275 (= e!841851 e!841853)))

(declare-fun lt!654165 () (_ BitVec 64))

(assert (=> b!1506275 (= lt!654165 (select (arr!48454 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50268 0))(
  ( (Unit!50269) )
))
(declare-fun lt!654164 () Unit!50268)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100428 (_ BitVec 64) (_ BitVec 32)) Unit!50268)

(assert (=> b!1506275 (= lt!654164 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654165 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1506275 (arrayContainsKey!0 a!2804 lt!654165 #b00000000000000000000000000000000)))

(declare-fun lt!654166 () Unit!50268)

(assert (=> b!1506275 (= lt!654166 lt!654164)))

(declare-fun res!1026693 () Bool)

(declare-datatypes ((SeekEntryResult!12653 0))(
  ( (MissingZero!12653 (index!53006 (_ BitVec 32))) (Found!12653 (index!53007 (_ BitVec 32))) (Intermediate!12653 (undefined!13465 Bool) (index!53008 (_ BitVec 32)) (x!134760 (_ BitVec 32))) (Undefined!12653) (MissingVacant!12653 (index!53009 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100428 (_ BitVec 32)) SeekEntryResult!12653)

(assert (=> b!1506275 (= res!1026693 (= (seekEntryOrOpen!0 (select (arr!48454 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12653 #b00000000000000000000000000000000)))))

(assert (=> b!1506275 (=> (not res!1026693) (not e!841853))))

(declare-fun b!1506276 () Bool)

(assert (=> b!1506276 (= e!841853 call!68226)))

(declare-fun b!1506277 () Bool)

(assert (=> b!1506277 (= e!841852 e!841851)))

(declare-fun c!139328 () Bool)

(assert (=> b!1506277 (= c!139328 (validKeyInArray!0 (select (arr!48454 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!158157 (not res!1026694)) b!1506277))

(assert (= (and b!1506277 c!139328) b!1506275))

(assert (= (and b!1506277 (not c!139328)) b!1506274))

(assert (= (and b!1506275 res!1026693) b!1506276))

(assert (= (or b!1506276 b!1506274) bm!68223))

(declare-fun m!1389321 () Bool)

(assert (=> bm!68223 m!1389321))

(declare-fun m!1389323 () Bool)

(assert (=> b!1506275 m!1389323))

(declare-fun m!1389325 () Bool)

(assert (=> b!1506275 m!1389325))

(declare-fun m!1389327 () Bool)

(assert (=> b!1506275 m!1389327))

(assert (=> b!1506275 m!1389323))

(declare-fun m!1389329 () Bool)

(assert (=> b!1506275 m!1389329))

(assert (=> b!1506277 m!1389323))

(assert (=> b!1506277 m!1389323))

(declare-fun m!1389331 () Bool)

(assert (=> b!1506277 m!1389331))

(assert (=> b!1506207 d!158157))

(declare-fun d!158165 () Bool)

(assert (=> d!158165 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128470 d!158165))

(declare-fun d!158177 () Bool)

(assert (=> d!158177 (= (array_inv!37399 a!2804) (bvsge (size!49005 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128470 d!158177))

(declare-fun d!158179 () Bool)

(assert (=> d!158179 (= (validKeyInArray!0 (select (arr!48454 a!2804) j!70)) (and (not (= (select (arr!48454 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48454 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1506209 d!158179))

(declare-fun d!158183 () Bool)

(assert (=> d!158183 (= (validKeyInArray!0 (select (arr!48454 a!2804) i!961)) (and (not (= (select (arr!48454 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48454 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1506210 d!158183))

(declare-fun d!158185 () Bool)

(declare-fun lt!654181 () (_ BitVec 32))

(declare-fun lt!654180 () (_ BitVec 32))

(assert (=> d!158185 (= lt!654181 (bvmul (bvxor lt!654180 (bvlshr lt!654180 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158185 (= lt!654180 ((_ extract 31 0) (bvand (bvxor (select (arr!48454 a!2804) j!70) (bvlshr (select (arr!48454 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158185 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1026716 (let ((h!36515 ((_ extract 31 0) (bvand (bvxor (select (arr!48454 a!2804) j!70) (bvlshr (select (arr!48454 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!134757 (bvmul (bvxor h!36515 (bvlshr h!36515 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!134757 (bvlshr x!134757 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1026716 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1026716 #b00000000000000000000000000000000))))))

(assert (=> d!158185 (= (toIndex!0 (select (arr!48454 a!2804) j!70) mask!2512) (bvand (bvxor lt!654181 (bvlshr lt!654181 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1506211 d!158185))

(declare-fun d!158189 () Bool)

(declare-fun res!1026728 () Bool)

(declare-fun e!841895 () Bool)

(assert (=> d!158189 (=> res!1026728 e!841895)))

(assert (=> d!158189 (= res!1026728 (bvsge #b00000000000000000000000000000000 (size!49005 a!2804)))))

(assert (=> d!158189 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35114) e!841895)))

(declare-fun bm!68235 () Bool)

(declare-fun call!68238 () Bool)

(declare-fun c!139340 () Bool)

(assert (=> bm!68235 (= call!68238 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139340 (Cons!35113 (select (arr!48454 a!2804) #b00000000000000000000000000000000) Nil!35114) Nil!35114)))))

(declare-fun b!1506330 () Bool)

(declare-fun e!841898 () Bool)

(declare-fun contains!9974 (List!35117 (_ BitVec 64)) Bool)

(assert (=> b!1506330 (= e!841898 (contains!9974 Nil!35114 (select (arr!48454 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1506331 () Bool)

(declare-fun e!841896 () Bool)

(assert (=> b!1506331 (= e!841896 call!68238)))

(declare-fun b!1506332 () Bool)

(declare-fun e!841897 () Bool)

(assert (=> b!1506332 (= e!841897 e!841896)))

(assert (=> b!1506332 (= c!139340 (validKeyInArray!0 (select (arr!48454 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1506333 () Bool)

(assert (=> b!1506333 (= e!841895 e!841897)))

(declare-fun res!1026729 () Bool)

(assert (=> b!1506333 (=> (not res!1026729) (not e!841897))))

(assert (=> b!1506333 (= res!1026729 (not e!841898))))

(declare-fun res!1026727 () Bool)

(assert (=> b!1506333 (=> (not res!1026727) (not e!841898))))

(assert (=> b!1506333 (= res!1026727 (validKeyInArray!0 (select (arr!48454 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1506334 () Bool)

(assert (=> b!1506334 (= e!841896 call!68238)))

(assert (= (and d!158189 (not res!1026728)) b!1506333))

(assert (= (and b!1506333 res!1026727) b!1506330))

(assert (= (and b!1506333 res!1026729) b!1506332))

(assert (= (and b!1506332 c!139340) b!1506331))

(assert (= (and b!1506332 (not c!139340)) b!1506334))

(assert (= (or b!1506331 b!1506334) bm!68235))

(assert (=> bm!68235 m!1389323))

(declare-fun m!1389353 () Bool)

(assert (=> bm!68235 m!1389353))

(assert (=> b!1506330 m!1389323))

(assert (=> b!1506330 m!1389323))

(declare-fun m!1389355 () Bool)

(assert (=> b!1506330 m!1389355))

(assert (=> b!1506332 m!1389323))

(assert (=> b!1506332 m!1389323))

(assert (=> b!1506332 m!1389331))

(assert (=> b!1506333 m!1389323))

(assert (=> b!1506333 m!1389323))

(assert (=> b!1506333 m!1389331))

(assert (=> b!1506206 d!158189))

(push 1)

(assert (not bm!68223))

(assert (not b!1506330))

(assert (not b!1506277))

(assert (not bm!68235))

(assert (not b!1506275))

(assert (not b!1506333))

(assert (not b!1506332))

(check-sat)

