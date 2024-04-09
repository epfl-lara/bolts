; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129918 () Bool)

(assert start!129918)

(declare-fun b!1524347 () Bool)

(declare-fun res!1043148 () Bool)

(declare-fun e!849769 () Bool)

(assert (=> b!1524347 (=> (not res!1043148) (not e!849769))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101384 0))(
  ( (array!101385 (arr!48917 (Array (_ BitVec 32) (_ BitVec 64))) (size!49468 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101384)

(declare-datatypes ((SeekEntryResult!13103 0))(
  ( (MissingZero!13103 (index!54806 (_ BitVec 32))) (Found!13103 (index!54807 (_ BitVec 32))) (Intermediate!13103 (undefined!13915 Bool) (index!54808 (_ BitVec 32)) (x!136502 (_ BitVec 32))) (Undefined!13103) (MissingVacant!13103 (index!54809 (_ BitVec 32))) )
))
(declare-fun lt!660246 () SeekEntryResult!13103)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101384 (_ BitVec 32)) SeekEntryResult!13103)

(assert (=> b!1524347 (= res!1043148 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48917 a!2804) j!70) a!2804 mask!2512) lt!660246))))

(declare-fun b!1524348 () Bool)

(declare-fun res!1043142 () Bool)

(declare-fun e!849767 () Bool)

(assert (=> b!1524348 (=> (not res!1043142) (not e!849767))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524348 (= res!1043142 (validKeyInArray!0 (select (arr!48917 a!2804) i!961)))))

(declare-fun b!1524349 () Bool)

(declare-fun res!1043146 () Bool)

(assert (=> b!1524349 (=> (not res!1043146) (not e!849767))))

(assert (=> b!1524349 (= res!1043146 (and (= (size!49468 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49468 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49468 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524350 () Bool)

(declare-fun res!1043138 () Bool)

(assert (=> b!1524350 (=> (not res!1043138) (not e!849767))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1524350 (= res!1043138 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49468 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49468 a!2804))))))

(declare-fun b!1524351 () Bool)

(declare-fun res!1043137 () Bool)

(assert (=> b!1524351 (=> (not res!1043137) (not e!849767))))

(declare-datatypes ((List!35580 0))(
  ( (Nil!35577) (Cons!35576 (h!37004 (_ BitVec 64)) (t!50281 List!35580)) )
))
(declare-fun arrayNoDuplicates!0 (array!101384 (_ BitVec 32) List!35580) Bool)

(assert (=> b!1524351 (= res!1043137 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35577))))

(declare-fun b!1524352 () Bool)

(declare-fun e!849766 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101384 (_ BitVec 32)) SeekEntryResult!13103)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101384 (_ BitVec 32)) SeekEntryResult!13103)

(assert (=> b!1524352 (= e!849766 (= (seekEntryOrOpen!0 (select (arr!48917 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48917 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1524353 () Bool)

(assert (=> b!1524353 (= e!849767 e!849769)))

(declare-fun res!1043139 () Bool)

(assert (=> b!1524353 (=> (not res!1043139) (not e!849769))))

(declare-fun lt!660245 () SeekEntryResult!13103)

(assert (=> b!1524353 (= res!1043139 (= lt!660245 lt!660246))))

(assert (=> b!1524353 (= lt!660246 (Intermediate!13103 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524353 (= lt!660245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48917 a!2804) j!70) mask!2512) (select (arr!48917 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524354 () Bool)

(assert (=> b!1524354 (= e!849769 (not e!849766))))

(declare-fun res!1043145 () Bool)

(assert (=> b!1524354 (=> res!1043145 e!849766)))

(assert (=> b!1524354 (= res!1043145 (or (not (= (select (arr!48917 a!2804) j!70) (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48917 a!2804) index!487) (select (arr!48917 a!2804) j!70)) (not (= (select (arr!48917 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!849770 () Bool)

(assert (=> b!1524354 e!849770))

(declare-fun res!1043140 () Bool)

(assert (=> b!1524354 (=> (not res!1043140) (not e!849770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101384 (_ BitVec 32)) Bool)

(assert (=> b!1524354 (= res!1043140 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50946 0))(
  ( (Unit!50947) )
))
(declare-fun lt!660247 () Unit!50946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50946)

(assert (=> b!1524354 (= lt!660247 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524356 () Bool)

(declare-fun res!1043141 () Bool)

(assert (=> b!1524356 (=> (not res!1043141) (not e!849767))))

(assert (=> b!1524356 (= res!1043141 (validKeyInArray!0 (select (arr!48917 a!2804) j!70)))))

(declare-fun res!1043144 () Bool)

(assert (=> start!129918 (=> (not res!1043144) (not e!849767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129918 (= res!1043144 (validMask!0 mask!2512))))

(assert (=> start!129918 e!849767))

(assert (=> start!129918 true))

(declare-fun array_inv!37862 (array!101384) Bool)

(assert (=> start!129918 (array_inv!37862 a!2804)))

(declare-fun b!1524355 () Bool)

(declare-fun res!1043143 () Bool)

(assert (=> b!1524355 (=> (not res!1043143) (not e!849769))))

(assert (=> b!1524355 (= res!1043143 (= lt!660245 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101385 (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49468 a!2804)) mask!2512)))))

(declare-fun b!1524357 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101384 (_ BitVec 32)) SeekEntryResult!13103)

(assert (=> b!1524357 (= e!849770 (= (seekEntry!0 (select (arr!48917 a!2804) j!70) a!2804 mask!2512) (Found!13103 j!70)))))

(declare-fun b!1524358 () Bool)

(declare-fun res!1043147 () Bool)

(assert (=> b!1524358 (=> (not res!1043147) (not e!849767))))

(assert (=> b!1524358 (= res!1043147 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129918 res!1043144) b!1524349))

(assert (= (and b!1524349 res!1043146) b!1524348))

(assert (= (and b!1524348 res!1043142) b!1524356))

(assert (= (and b!1524356 res!1043141) b!1524358))

(assert (= (and b!1524358 res!1043147) b!1524351))

(assert (= (and b!1524351 res!1043137) b!1524350))

(assert (= (and b!1524350 res!1043138) b!1524353))

(assert (= (and b!1524353 res!1043139) b!1524347))

(assert (= (and b!1524347 res!1043148) b!1524355))

(assert (= (and b!1524355 res!1043143) b!1524354))

(assert (= (and b!1524354 res!1043140) b!1524357))

(assert (= (and b!1524354 (not res!1043145)) b!1524352))

(declare-fun m!1407447 () Bool)

(assert (=> b!1524348 m!1407447))

(assert (=> b!1524348 m!1407447))

(declare-fun m!1407449 () Bool)

(assert (=> b!1524348 m!1407449))

(declare-fun m!1407451 () Bool)

(assert (=> b!1524347 m!1407451))

(assert (=> b!1524347 m!1407451))

(declare-fun m!1407453 () Bool)

(assert (=> b!1524347 m!1407453))

(declare-fun m!1407455 () Bool)

(assert (=> start!129918 m!1407455))

(declare-fun m!1407457 () Bool)

(assert (=> start!129918 m!1407457))

(assert (=> b!1524354 m!1407451))

(declare-fun m!1407459 () Bool)

(assert (=> b!1524354 m!1407459))

(declare-fun m!1407461 () Bool)

(assert (=> b!1524354 m!1407461))

(declare-fun m!1407463 () Bool)

(assert (=> b!1524354 m!1407463))

(declare-fun m!1407465 () Bool)

(assert (=> b!1524354 m!1407465))

(declare-fun m!1407467 () Bool)

(assert (=> b!1524354 m!1407467))

(assert (=> b!1524357 m!1407451))

(assert (=> b!1524357 m!1407451))

(declare-fun m!1407469 () Bool)

(assert (=> b!1524357 m!1407469))

(assert (=> b!1524352 m!1407451))

(assert (=> b!1524352 m!1407451))

(declare-fun m!1407471 () Bool)

(assert (=> b!1524352 m!1407471))

(assert (=> b!1524352 m!1407451))

(declare-fun m!1407473 () Bool)

(assert (=> b!1524352 m!1407473))

(declare-fun m!1407475 () Bool)

(assert (=> b!1524358 m!1407475))

(assert (=> b!1524355 m!1407461))

(assert (=> b!1524355 m!1407465))

(assert (=> b!1524355 m!1407465))

(declare-fun m!1407477 () Bool)

(assert (=> b!1524355 m!1407477))

(assert (=> b!1524355 m!1407477))

(assert (=> b!1524355 m!1407465))

(declare-fun m!1407479 () Bool)

(assert (=> b!1524355 m!1407479))

(declare-fun m!1407481 () Bool)

(assert (=> b!1524351 m!1407481))

(assert (=> b!1524356 m!1407451))

(assert (=> b!1524356 m!1407451))

(declare-fun m!1407483 () Bool)

(assert (=> b!1524356 m!1407483))

(assert (=> b!1524353 m!1407451))

(assert (=> b!1524353 m!1407451))

(declare-fun m!1407485 () Bool)

(assert (=> b!1524353 m!1407485))

(assert (=> b!1524353 m!1407485))

(assert (=> b!1524353 m!1407451))

(declare-fun m!1407487 () Bool)

(assert (=> b!1524353 m!1407487))

(check-sat (not b!1524348) (not start!129918) (not b!1524356) (not b!1524353) (not b!1524355) (not b!1524354) (not b!1524347) (not b!1524357) (not b!1524358) (not b!1524351) (not b!1524352))
(check-sat)
(get-model)

(declare-fun d!159271 () Bool)

(assert (=> d!159271 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129918 d!159271))

(declare-fun d!159273 () Bool)

(assert (=> d!159273 (= (array_inv!37862 a!2804) (bvsge (size!49468 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129918 d!159273))

(declare-fun bm!68424 () Bool)

(declare-fun call!68427 () Bool)

(assert (=> bm!68424 (= call!68427 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1524404 () Bool)

(declare-fun e!849793 () Bool)

(assert (=> b!1524404 (= e!849793 call!68427)))

(declare-fun b!1524405 () Bool)

(declare-fun e!849792 () Bool)

(assert (=> b!1524405 (= e!849792 call!68427)))

(declare-fun b!1524406 () Bool)

(assert (=> b!1524406 (= e!849793 e!849792)))

(declare-fun lt!660265 () (_ BitVec 64))

(assert (=> b!1524406 (= lt!660265 (select (arr!48917 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!660263 () Unit!50946)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101384 (_ BitVec 64) (_ BitVec 32)) Unit!50946)

(assert (=> b!1524406 (= lt!660263 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660265 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1524406 (arrayContainsKey!0 a!2804 lt!660265 #b00000000000000000000000000000000)))

(declare-fun lt!660264 () Unit!50946)

(assert (=> b!1524406 (= lt!660264 lt!660263)))

(declare-fun res!1043189 () Bool)

(assert (=> b!1524406 (= res!1043189 (= (seekEntryOrOpen!0 (select (arr!48917 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13103 #b00000000000000000000000000000000)))))

(assert (=> b!1524406 (=> (not res!1043189) (not e!849792))))

(declare-fun d!159275 () Bool)

(declare-fun res!1043190 () Bool)

(declare-fun e!849794 () Bool)

(assert (=> d!159275 (=> res!1043190 e!849794)))

(assert (=> d!159275 (= res!1043190 (bvsge #b00000000000000000000000000000000 (size!49468 a!2804)))))

(assert (=> d!159275 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!849794)))

(declare-fun b!1524403 () Bool)

(assert (=> b!1524403 (= e!849794 e!849793)))

(declare-fun c!140159 () Bool)

(assert (=> b!1524403 (= c!140159 (validKeyInArray!0 (select (arr!48917 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159275 (not res!1043190)) b!1524403))

(assert (= (and b!1524403 c!140159) b!1524406))

(assert (= (and b!1524403 (not c!140159)) b!1524404))

(assert (= (and b!1524406 res!1043189) b!1524405))

(assert (= (or b!1524405 b!1524404) bm!68424))

(declare-fun m!1407531 () Bool)

(assert (=> bm!68424 m!1407531))

(declare-fun m!1407533 () Bool)

(assert (=> b!1524406 m!1407533))

(declare-fun m!1407535 () Bool)

(assert (=> b!1524406 m!1407535))

(declare-fun m!1407537 () Bool)

(assert (=> b!1524406 m!1407537))

(assert (=> b!1524406 m!1407533))

(declare-fun m!1407539 () Bool)

(assert (=> b!1524406 m!1407539))

(assert (=> b!1524403 m!1407533))

(assert (=> b!1524403 m!1407533))

(declare-fun m!1407541 () Bool)

(assert (=> b!1524403 m!1407541))

(assert (=> b!1524358 d!159275))

(declare-fun d!159277 () Bool)

(declare-fun e!849821 () Bool)

(assert (=> d!159277 e!849821))

(declare-fun c!140171 () Bool)

(declare-fun lt!660271 () SeekEntryResult!13103)

(get-info :version)

(assert (=> d!159277 (= c!140171 (and ((_ is Intermediate!13103) lt!660271) (undefined!13915 lt!660271)))))

(declare-fun e!849819 () SeekEntryResult!13103)

(assert (=> d!159277 (= lt!660271 e!849819)))

(declare-fun c!140169 () Bool)

(assert (=> d!159277 (= c!140169 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!660270 () (_ BitVec 64))

(assert (=> d!159277 (= lt!660270 (select (arr!48917 a!2804) (toIndex!0 (select (arr!48917 a!2804) j!70) mask!2512)))))

(assert (=> d!159277 (validMask!0 mask!2512)))

(assert (=> d!159277 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48917 a!2804) j!70) mask!2512) (select (arr!48917 a!2804) j!70) a!2804 mask!2512) lt!660271)))

(declare-fun b!1524440 () Bool)

(assert (=> b!1524440 (and (bvsge (index!54808 lt!660271) #b00000000000000000000000000000000) (bvslt (index!54808 lt!660271) (size!49468 a!2804)))))

(declare-fun res!1043206 () Bool)

(assert (=> b!1524440 (= res!1043206 (= (select (arr!48917 a!2804) (index!54808 lt!660271)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849817 () Bool)

(assert (=> b!1524440 (=> res!1043206 e!849817)))

(declare-fun b!1524441 () Bool)

(assert (=> b!1524441 (and (bvsge (index!54808 lt!660271) #b00000000000000000000000000000000) (bvslt (index!54808 lt!660271) (size!49468 a!2804)))))

(assert (=> b!1524441 (= e!849817 (= (select (arr!48917 a!2804) (index!54808 lt!660271)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1524442 () Bool)

(declare-fun e!849818 () SeekEntryResult!13103)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524442 (= e!849818 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48917 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48917 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524443 () Bool)

(assert (=> b!1524443 (= e!849818 (Intermediate!13103 false (toIndex!0 (select (arr!48917 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1524444 () Bool)

(assert (=> b!1524444 (= e!849819 (Intermediate!13103 true (toIndex!0 (select (arr!48917 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1524445 () Bool)

(assert (=> b!1524445 (and (bvsge (index!54808 lt!660271) #b00000000000000000000000000000000) (bvslt (index!54808 lt!660271) (size!49468 a!2804)))))

(declare-fun res!1043207 () Bool)

(assert (=> b!1524445 (= res!1043207 (= (select (arr!48917 a!2804) (index!54808 lt!660271)) (select (arr!48917 a!2804) j!70)))))

(assert (=> b!1524445 (=> res!1043207 e!849817)))

(declare-fun e!849820 () Bool)

(assert (=> b!1524445 (= e!849820 e!849817)))

(declare-fun b!1524446 () Bool)

(assert (=> b!1524446 (= e!849821 (bvsge (x!136502 lt!660271) #b01111111111111111111111111111110))))

(declare-fun b!1524447 () Bool)

(assert (=> b!1524447 (= e!849819 e!849818)))

(declare-fun c!140170 () Bool)

(assert (=> b!1524447 (= c!140170 (or (= lt!660270 (select (arr!48917 a!2804) j!70)) (= (bvadd lt!660270 lt!660270) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1524448 () Bool)

(assert (=> b!1524448 (= e!849821 e!849820)))

(declare-fun res!1043208 () Bool)

(assert (=> b!1524448 (= res!1043208 (and ((_ is Intermediate!13103) lt!660271) (not (undefined!13915 lt!660271)) (bvslt (x!136502 lt!660271) #b01111111111111111111111111111110) (bvsge (x!136502 lt!660271) #b00000000000000000000000000000000) (bvsge (x!136502 lt!660271) #b00000000000000000000000000000000)))))

(assert (=> b!1524448 (=> (not res!1043208) (not e!849820))))

(assert (= (and d!159277 c!140169) b!1524444))

(assert (= (and d!159277 (not c!140169)) b!1524447))

(assert (= (and b!1524447 c!140170) b!1524443))

(assert (= (and b!1524447 (not c!140170)) b!1524442))

(assert (= (and d!159277 c!140171) b!1524446))

(assert (= (and d!159277 (not c!140171)) b!1524448))

(assert (= (and b!1524448 res!1043208) b!1524445))

(assert (= (and b!1524445 (not res!1043207)) b!1524440))

(assert (= (and b!1524440 (not res!1043206)) b!1524441))

(declare-fun m!1407551 () Bool)

(assert (=> b!1524440 m!1407551))

(assert (=> b!1524442 m!1407485))

(declare-fun m!1407553 () Bool)

(assert (=> b!1524442 m!1407553))

(assert (=> b!1524442 m!1407553))

(assert (=> b!1524442 m!1407451))

(declare-fun m!1407555 () Bool)

(assert (=> b!1524442 m!1407555))

(assert (=> d!159277 m!1407485))

(declare-fun m!1407557 () Bool)

(assert (=> d!159277 m!1407557))

(assert (=> d!159277 m!1407455))

(assert (=> b!1524445 m!1407551))

(assert (=> b!1524441 m!1407551))

(assert (=> b!1524353 d!159277))

(declare-fun d!159285 () Bool)

(declare-fun lt!660277 () (_ BitVec 32))

(declare-fun lt!660276 () (_ BitVec 32))

(assert (=> d!159285 (= lt!660277 (bvmul (bvxor lt!660276 (bvlshr lt!660276 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159285 (= lt!660276 ((_ extract 31 0) (bvand (bvxor (select (arr!48917 a!2804) j!70) (bvlshr (select (arr!48917 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159285 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043209 (let ((h!37006 ((_ extract 31 0) (bvand (bvxor (select (arr!48917 a!2804) j!70) (bvlshr (select (arr!48917 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136505 (bvmul (bvxor h!37006 (bvlshr h!37006 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136505 (bvlshr x!136505 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043209 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043209 #b00000000000000000000000000000000))))))

(assert (=> d!159285 (= (toIndex!0 (select (arr!48917 a!2804) j!70) mask!2512) (bvand (bvxor lt!660277 (bvlshr lt!660277 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1524353 d!159285))

(declare-fun d!159287 () Bool)

(assert (=> d!159287 (= (validKeyInArray!0 (select (arr!48917 a!2804) i!961)) (and (not (= (select (arr!48917 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48917 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1524348 d!159287))

(declare-fun bm!68428 () Bool)

(declare-fun call!68431 () Bool)

(assert (=> bm!68428 (= call!68431 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1524462 () Bool)

(declare-fun e!849829 () Bool)

(assert (=> b!1524462 (= e!849829 call!68431)))

(declare-fun b!1524463 () Bool)

(declare-fun e!849828 () Bool)

(assert (=> b!1524463 (= e!849828 call!68431)))

(declare-fun b!1524464 () Bool)

(assert (=> b!1524464 (= e!849829 e!849828)))

(declare-fun lt!660290 () (_ BitVec 64))

(assert (=> b!1524464 (= lt!660290 (select (arr!48917 a!2804) j!70))))

(declare-fun lt!660288 () Unit!50946)

(assert (=> b!1524464 (= lt!660288 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660290 j!70))))

(assert (=> b!1524464 (arrayContainsKey!0 a!2804 lt!660290 #b00000000000000000000000000000000)))

(declare-fun lt!660289 () Unit!50946)

(assert (=> b!1524464 (= lt!660289 lt!660288)))

(declare-fun res!1043210 () Bool)

(assert (=> b!1524464 (= res!1043210 (= (seekEntryOrOpen!0 (select (arr!48917 a!2804) j!70) a!2804 mask!2512) (Found!13103 j!70)))))

(assert (=> b!1524464 (=> (not res!1043210) (not e!849828))))

(declare-fun d!159289 () Bool)

(declare-fun res!1043211 () Bool)

(declare-fun e!849830 () Bool)

(assert (=> d!159289 (=> res!1043211 e!849830)))

(assert (=> d!159289 (= res!1043211 (bvsge j!70 (size!49468 a!2804)))))

(assert (=> d!159289 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!849830)))

(declare-fun b!1524461 () Bool)

(assert (=> b!1524461 (= e!849830 e!849829)))

(declare-fun c!140178 () Bool)

(assert (=> b!1524461 (= c!140178 (validKeyInArray!0 (select (arr!48917 a!2804) j!70)))))

(assert (= (and d!159289 (not res!1043211)) b!1524461))

(assert (= (and b!1524461 c!140178) b!1524464))

(assert (= (and b!1524461 (not c!140178)) b!1524462))

(assert (= (and b!1524464 res!1043210) b!1524463))

(assert (= (or b!1524463 b!1524462) bm!68428))

(declare-fun m!1407559 () Bool)

(assert (=> bm!68428 m!1407559))

(assert (=> b!1524464 m!1407451))

(declare-fun m!1407561 () Bool)

(assert (=> b!1524464 m!1407561))

(declare-fun m!1407563 () Bool)

(assert (=> b!1524464 m!1407563))

(assert (=> b!1524464 m!1407451))

(assert (=> b!1524464 m!1407471))

(assert (=> b!1524461 m!1407451))

(assert (=> b!1524461 m!1407451))

(assert (=> b!1524461 m!1407483))

(assert (=> b!1524354 d!159289))

(declare-fun d!159291 () Bool)

(assert (=> d!159291 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!660296 () Unit!50946)

(declare-fun choose!38 (array!101384 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50946)

(assert (=> d!159291 (= lt!660296 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159291 (validMask!0 mask!2512)))

(assert (=> d!159291 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!660296)))

(declare-fun bs!43745 () Bool)

(assert (= bs!43745 d!159291))

(assert (=> bs!43745 m!1407467))

(declare-fun m!1407575 () Bool)

(assert (=> bs!43745 m!1407575))

(assert (=> bs!43745 m!1407455))

(assert (=> b!1524354 d!159291))

(declare-fun d!159295 () Bool)

(declare-fun e!849848 () Bool)

(assert (=> d!159295 e!849848))

(declare-fun c!140190 () Bool)

(declare-fun lt!660298 () SeekEntryResult!13103)

(assert (=> d!159295 (= c!140190 (and ((_ is Intermediate!13103) lt!660298) (undefined!13915 lt!660298)))))

(declare-fun e!849846 () SeekEntryResult!13103)

(assert (=> d!159295 (= lt!660298 e!849846)))

(declare-fun c!140188 () Bool)

(assert (=> d!159295 (= c!140188 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!660297 () (_ BitVec 64))

(assert (=> d!159295 (= lt!660297 (select (arr!48917 (array!101385 (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49468 a!2804))) (toIndex!0 (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159295 (validMask!0 mask!2512)))

(assert (=> d!159295 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101385 (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49468 a!2804)) mask!2512) lt!660298)))

(declare-fun b!1524489 () Bool)

(assert (=> b!1524489 (and (bvsge (index!54808 lt!660298) #b00000000000000000000000000000000) (bvslt (index!54808 lt!660298) (size!49468 (array!101385 (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49468 a!2804)))))))

(declare-fun res!1043218 () Bool)

(assert (=> b!1524489 (= res!1043218 (= (select (arr!48917 (array!101385 (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49468 a!2804))) (index!54808 lt!660298)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849844 () Bool)

(assert (=> b!1524489 (=> res!1043218 e!849844)))

(declare-fun b!1524490 () Bool)

(assert (=> b!1524490 (and (bvsge (index!54808 lt!660298) #b00000000000000000000000000000000) (bvslt (index!54808 lt!660298) (size!49468 (array!101385 (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49468 a!2804)))))))

(assert (=> b!1524490 (= e!849844 (= (select (arr!48917 (array!101385 (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49468 a!2804))) (index!54808 lt!660298)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849845 () SeekEntryResult!13103)

(declare-fun b!1524491 () Bool)

(assert (=> b!1524491 (= e!849845 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101385 (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49468 a!2804)) mask!2512))))

(declare-fun b!1524492 () Bool)

(assert (=> b!1524492 (= e!849845 (Intermediate!13103 false (toIndex!0 (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1524493 () Bool)

(assert (=> b!1524493 (= e!849846 (Intermediate!13103 true (toIndex!0 (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1524494 () Bool)

(assert (=> b!1524494 (and (bvsge (index!54808 lt!660298) #b00000000000000000000000000000000) (bvslt (index!54808 lt!660298) (size!49468 (array!101385 (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49468 a!2804)))))))

(declare-fun res!1043219 () Bool)

(assert (=> b!1524494 (= res!1043219 (= (select (arr!48917 (array!101385 (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49468 a!2804))) (index!54808 lt!660298)) (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1524494 (=> res!1043219 e!849844)))

(declare-fun e!849847 () Bool)

(assert (=> b!1524494 (= e!849847 e!849844)))

(declare-fun b!1524495 () Bool)

(assert (=> b!1524495 (= e!849848 (bvsge (x!136502 lt!660298) #b01111111111111111111111111111110))))

(declare-fun b!1524496 () Bool)

(assert (=> b!1524496 (= e!849846 e!849845)))

(declare-fun c!140189 () Bool)

(assert (=> b!1524496 (= c!140189 (or (= lt!660297 (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!660297 lt!660297) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1524497 () Bool)

(assert (=> b!1524497 (= e!849848 e!849847)))

(declare-fun res!1043220 () Bool)

(assert (=> b!1524497 (= res!1043220 (and ((_ is Intermediate!13103) lt!660298) (not (undefined!13915 lt!660298)) (bvslt (x!136502 lt!660298) #b01111111111111111111111111111110) (bvsge (x!136502 lt!660298) #b00000000000000000000000000000000) (bvsge (x!136502 lt!660298) #b00000000000000000000000000000000)))))

(assert (=> b!1524497 (=> (not res!1043220) (not e!849847))))

(assert (= (and d!159295 c!140188) b!1524493))

(assert (= (and d!159295 (not c!140188)) b!1524496))

(assert (= (and b!1524496 c!140189) b!1524492))

(assert (= (and b!1524496 (not c!140189)) b!1524491))

(assert (= (and d!159295 c!140190) b!1524495))

(assert (= (and d!159295 (not c!140190)) b!1524497))

(assert (= (and b!1524497 res!1043220) b!1524494))

(assert (= (and b!1524494 (not res!1043219)) b!1524489))

(assert (= (and b!1524489 (not res!1043218)) b!1524490))

(declare-fun m!1407577 () Bool)

(assert (=> b!1524489 m!1407577))

(assert (=> b!1524491 m!1407477))

(declare-fun m!1407581 () Bool)

(assert (=> b!1524491 m!1407581))

(assert (=> b!1524491 m!1407581))

(assert (=> b!1524491 m!1407465))

(declare-fun m!1407587 () Bool)

(assert (=> b!1524491 m!1407587))

(assert (=> d!159295 m!1407477))

(declare-fun m!1407589 () Bool)

(assert (=> d!159295 m!1407589))

(assert (=> d!159295 m!1407455))

(assert (=> b!1524494 m!1407577))

(assert (=> b!1524490 m!1407577))

(assert (=> b!1524355 d!159295))

(declare-fun d!159299 () Bool)

(declare-fun lt!660302 () (_ BitVec 32))

(declare-fun lt!660301 () (_ BitVec 32))

(assert (=> d!159299 (= lt!660302 (bvmul (bvxor lt!660301 (bvlshr lt!660301 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159299 (= lt!660301 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159299 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043209 (let ((h!37006 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136505 (bvmul (bvxor h!37006 (bvlshr h!37006 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136505 (bvlshr x!136505 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043209 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043209 #b00000000000000000000000000000000))))))

(assert (=> d!159299 (= (toIndex!0 (select (store (arr!48917 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!660302 (bvlshr lt!660302 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1524355 d!159299))

(declare-fun d!159301 () Bool)

(assert (=> d!159301 (= (validKeyInArray!0 (select (arr!48917 a!2804) j!70)) (and (not (= (select (arr!48917 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48917 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1524356 d!159301))

(declare-fun d!159303 () Bool)

(declare-fun res!1043236 () Bool)

(declare-fun e!849868 () Bool)

(assert (=> d!159303 (=> res!1043236 e!849868)))

(assert (=> d!159303 (= res!1043236 (bvsge #b00000000000000000000000000000000 (size!49468 a!2804)))))

(assert (=> d!159303 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35577) e!849868)))

(declare-fun b!1524525 () Bool)

(declare-fun e!849869 () Bool)

(assert (=> b!1524525 (= e!849868 e!849869)))

(declare-fun res!1043234 () Bool)

(assert (=> b!1524525 (=> (not res!1043234) (not e!849869))))

(declare-fun e!849870 () Bool)

(assert (=> b!1524525 (= res!1043234 (not e!849870))))

(declare-fun res!1043235 () Bool)

(assert (=> b!1524525 (=> (not res!1043235) (not e!849870))))

(assert (=> b!1524525 (= res!1043235 (validKeyInArray!0 (select (arr!48917 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1524526 () Bool)

(declare-fun e!849871 () Bool)

(declare-fun call!68436 () Bool)

(assert (=> b!1524526 (= e!849871 call!68436)))

(declare-fun b!1524527 () Bool)

(declare-fun contains!10002 (List!35580 (_ BitVec 64)) Bool)

(assert (=> b!1524527 (= e!849870 (contains!10002 Nil!35577 (select (arr!48917 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68433 () Bool)

(declare-fun c!140198 () Bool)

(assert (=> bm!68433 (= call!68436 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140198 (Cons!35576 (select (arr!48917 a!2804) #b00000000000000000000000000000000) Nil!35577) Nil!35577)))))

(declare-fun b!1524528 () Bool)

(assert (=> b!1524528 (= e!849869 e!849871)))

(assert (=> b!1524528 (= c!140198 (validKeyInArray!0 (select (arr!48917 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1524529 () Bool)

(assert (=> b!1524529 (= e!849871 call!68436)))

(assert (= (and d!159303 (not res!1043236)) b!1524525))

(assert (= (and b!1524525 res!1043235) b!1524527))

(assert (= (and b!1524525 res!1043234) b!1524528))

(assert (= (and b!1524528 c!140198) b!1524529))

(assert (= (and b!1524528 (not c!140198)) b!1524526))

(assert (= (or b!1524529 b!1524526) bm!68433))

(assert (=> b!1524525 m!1407533))

(assert (=> b!1524525 m!1407533))

(assert (=> b!1524525 m!1407541))

(assert (=> b!1524527 m!1407533))

(assert (=> b!1524527 m!1407533))

(declare-fun m!1407591 () Bool)

(assert (=> b!1524527 m!1407591))

(assert (=> bm!68433 m!1407533))

(declare-fun m!1407593 () Bool)

(assert (=> bm!68433 m!1407593))

(assert (=> b!1524528 m!1407533))

(assert (=> b!1524528 m!1407533))

(assert (=> b!1524528 m!1407541))

(assert (=> b!1524351 d!159303))

(declare-fun b!1524592 () Bool)

(declare-fun c!140224 () Bool)

(declare-fun lt!660338 () (_ BitVec 64))

(assert (=> b!1524592 (= c!140224 (= lt!660338 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849910 () SeekEntryResult!13103)

(declare-fun e!849908 () SeekEntryResult!13103)

(assert (=> b!1524592 (= e!849910 e!849908)))

(declare-fun b!1524593 () Bool)

(declare-fun lt!660339 () SeekEntryResult!13103)

(assert (=> b!1524593 (= e!849910 (Found!13103 (index!54808 lt!660339)))))

(declare-fun b!1524594 () Bool)

(declare-fun e!849909 () SeekEntryResult!13103)

(assert (=> b!1524594 (= e!849909 e!849910)))

(assert (=> b!1524594 (= lt!660338 (select (arr!48917 a!2804) (index!54808 lt!660339)))))

(declare-fun c!140223 () Bool)

(assert (=> b!1524594 (= c!140223 (= lt!660338 (select (arr!48917 a!2804) j!70)))))

(declare-fun b!1524595 () Bool)

(declare-fun lt!660341 () SeekEntryResult!13103)

(assert (=> b!1524595 (= e!849908 (ite ((_ is MissingVacant!13103) lt!660341) (MissingZero!13103 (index!54809 lt!660341)) lt!660341))))

(assert (=> b!1524595 (= lt!660341 (seekKeyOrZeroReturnVacant!0 (x!136502 lt!660339) (index!54808 lt!660339) (index!54808 lt!660339) (select (arr!48917 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524596 () Bool)

(assert (=> b!1524596 (= e!849908 (MissingZero!13103 (index!54808 lt!660339)))))

(declare-fun b!1524597 () Bool)

(assert (=> b!1524597 (= e!849909 Undefined!13103)))

(declare-fun d!159305 () Bool)

(declare-fun lt!660340 () SeekEntryResult!13103)

(assert (=> d!159305 (and (or ((_ is MissingVacant!13103) lt!660340) (not ((_ is Found!13103) lt!660340)) (and (bvsge (index!54807 lt!660340) #b00000000000000000000000000000000) (bvslt (index!54807 lt!660340) (size!49468 a!2804)))) (not ((_ is MissingVacant!13103) lt!660340)) (or (not ((_ is Found!13103) lt!660340)) (= (select (arr!48917 a!2804) (index!54807 lt!660340)) (select (arr!48917 a!2804) j!70))))))

(assert (=> d!159305 (= lt!660340 e!849909)))

(declare-fun c!140225 () Bool)

(assert (=> d!159305 (= c!140225 (and ((_ is Intermediate!13103) lt!660339) (undefined!13915 lt!660339)))))

(assert (=> d!159305 (= lt!660339 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48917 a!2804) j!70) mask!2512) (select (arr!48917 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159305 (validMask!0 mask!2512)))

(assert (=> d!159305 (= (seekEntry!0 (select (arr!48917 a!2804) j!70) a!2804 mask!2512) lt!660340)))

(assert (= (and d!159305 c!140225) b!1524597))

(assert (= (and d!159305 (not c!140225)) b!1524594))

(assert (= (and b!1524594 c!140223) b!1524593))

(assert (= (and b!1524594 (not c!140223)) b!1524592))

(assert (= (and b!1524592 c!140224) b!1524596))

(assert (= (and b!1524592 (not c!140224)) b!1524595))

(declare-fun m!1407631 () Bool)

(assert (=> b!1524594 m!1407631))

(assert (=> b!1524595 m!1407451))

(declare-fun m!1407633 () Bool)

(assert (=> b!1524595 m!1407633))

(declare-fun m!1407635 () Bool)

(assert (=> d!159305 m!1407635))

(assert (=> d!159305 m!1407451))

(assert (=> d!159305 m!1407485))

(assert (=> d!159305 m!1407485))

(assert (=> d!159305 m!1407451))

(assert (=> d!159305 m!1407487))

(assert (=> d!159305 m!1407455))

(assert (=> b!1524357 d!159305))

(declare-fun b!1524651 () Bool)

(declare-fun e!849941 () SeekEntryResult!13103)

(declare-fun lt!660374 () SeekEntryResult!13103)

(assert (=> b!1524651 (= e!849941 (MissingZero!13103 (index!54808 lt!660374)))))

(declare-fun b!1524652 () Bool)

(assert (=> b!1524652 (= e!849941 (seekKeyOrZeroReturnVacant!0 (x!136502 lt!660374) (index!54808 lt!660374) (index!54808 lt!660374) (select (arr!48917 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159321 () Bool)

(declare-fun lt!660373 () SeekEntryResult!13103)

(assert (=> d!159321 (and (or ((_ is Undefined!13103) lt!660373) (not ((_ is Found!13103) lt!660373)) (and (bvsge (index!54807 lt!660373) #b00000000000000000000000000000000) (bvslt (index!54807 lt!660373) (size!49468 a!2804)))) (or ((_ is Undefined!13103) lt!660373) ((_ is Found!13103) lt!660373) (not ((_ is MissingZero!13103) lt!660373)) (and (bvsge (index!54806 lt!660373) #b00000000000000000000000000000000) (bvslt (index!54806 lt!660373) (size!49468 a!2804)))) (or ((_ is Undefined!13103) lt!660373) ((_ is Found!13103) lt!660373) ((_ is MissingZero!13103) lt!660373) (not ((_ is MissingVacant!13103) lt!660373)) (and (bvsge (index!54809 lt!660373) #b00000000000000000000000000000000) (bvslt (index!54809 lt!660373) (size!49468 a!2804)))) (or ((_ is Undefined!13103) lt!660373) (ite ((_ is Found!13103) lt!660373) (= (select (arr!48917 a!2804) (index!54807 lt!660373)) (select (arr!48917 a!2804) j!70)) (ite ((_ is MissingZero!13103) lt!660373) (= (select (arr!48917 a!2804) (index!54806 lt!660373)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!13103) lt!660373) (= (select (arr!48917 a!2804) (index!54809 lt!660373)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!849940 () SeekEntryResult!13103)

(assert (=> d!159321 (= lt!660373 e!849940)))

(declare-fun c!140251 () Bool)

(assert (=> d!159321 (= c!140251 (and ((_ is Intermediate!13103) lt!660374) (undefined!13915 lt!660374)))))

(assert (=> d!159321 (= lt!660374 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48917 a!2804) j!70) mask!2512) (select (arr!48917 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159321 (validMask!0 mask!2512)))

(assert (=> d!159321 (= (seekEntryOrOpen!0 (select (arr!48917 a!2804) j!70) a!2804 mask!2512) lt!660373)))

(declare-fun b!1524653 () Bool)

(assert (=> b!1524653 (= e!849940 Undefined!13103)))

(declare-fun b!1524654 () Bool)

(declare-fun e!849939 () SeekEntryResult!13103)

(assert (=> b!1524654 (= e!849940 e!849939)))

(declare-fun lt!660372 () (_ BitVec 64))

(assert (=> b!1524654 (= lt!660372 (select (arr!48917 a!2804) (index!54808 lt!660374)))))

(declare-fun c!140252 () Bool)

(assert (=> b!1524654 (= c!140252 (= lt!660372 (select (arr!48917 a!2804) j!70)))))

(declare-fun b!1524655 () Bool)

(assert (=> b!1524655 (= e!849939 (Found!13103 (index!54808 lt!660374)))))

(declare-fun b!1524656 () Bool)

(declare-fun c!140253 () Bool)

(assert (=> b!1524656 (= c!140253 (= lt!660372 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1524656 (= e!849939 e!849941)))

(assert (= (and d!159321 c!140251) b!1524653))

(assert (= (and d!159321 (not c!140251)) b!1524654))

(assert (= (and b!1524654 c!140252) b!1524655))

(assert (= (and b!1524654 (not c!140252)) b!1524656))

(assert (= (and b!1524656 c!140253) b!1524651))

(assert (= (and b!1524656 (not c!140253)) b!1524652))

(assert (=> b!1524652 m!1407451))

(declare-fun m!1407653 () Bool)

(assert (=> b!1524652 m!1407653))

(declare-fun m!1407655 () Bool)

(assert (=> d!159321 m!1407655))

(declare-fun m!1407657 () Bool)

(assert (=> d!159321 m!1407657))

(assert (=> d!159321 m!1407451))

(assert (=> d!159321 m!1407485))

(assert (=> d!159321 m!1407485))

(assert (=> d!159321 m!1407451))

(assert (=> d!159321 m!1407487))

(declare-fun m!1407659 () Bool)

(assert (=> d!159321 m!1407659))

(assert (=> d!159321 m!1407455))

(declare-fun m!1407661 () Bool)

(assert (=> b!1524654 m!1407661))

(assert (=> b!1524352 d!159321))

(declare-fun lt!660384 () SeekEntryResult!13103)

(declare-fun d!159335 () Bool)

(assert (=> d!159335 (and (or ((_ is Undefined!13103) lt!660384) (not ((_ is Found!13103) lt!660384)) (and (bvsge (index!54807 lt!660384) #b00000000000000000000000000000000) (bvslt (index!54807 lt!660384) (size!49468 a!2804)))) (or ((_ is Undefined!13103) lt!660384) ((_ is Found!13103) lt!660384) (not ((_ is MissingVacant!13103) lt!660384)) (not (= (index!54809 lt!660384) index!487)) (and (bvsge (index!54809 lt!660384) #b00000000000000000000000000000000) (bvslt (index!54809 lt!660384) (size!49468 a!2804)))) (or ((_ is Undefined!13103) lt!660384) (ite ((_ is Found!13103) lt!660384) (= (select (arr!48917 a!2804) (index!54807 lt!660384)) (select (arr!48917 a!2804) j!70)) (and ((_ is MissingVacant!13103) lt!660384) (= (index!54809 lt!660384) index!487) (= (select (arr!48917 a!2804) (index!54809 lt!660384)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!849958 () SeekEntryResult!13103)

(assert (=> d!159335 (= lt!660384 e!849958)))

(declare-fun c!140268 () Bool)

(assert (=> d!159335 (= c!140268 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!660383 () (_ BitVec 64))

(assert (=> d!159335 (= lt!660383 (select (arr!48917 a!2804) index!487))))

(assert (=> d!159335 (validMask!0 mask!2512)))

(assert (=> d!159335 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48917 a!2804) j!70) a!2804 mask!2512) lt!660384)))

(declare-fun b!1524687 () Bool)

(declare-fun c!140266 () Bool)

(assert (=> b!1524687 (= c!140266 (= lt!660383 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849959 () SeekEntryResult!13103)

(declare-fun e!849960 () SeekEntryResult!13103)

(assert (=> b!1524687 (= e!849959 e!849960)))

(declare-fun b!1524688 () Bool)

(assert (=> b!1524688 (= e!849958 Undefined!13103)))

(declare-fun b!1524689 () Bool)

(assert (=> b!1524689 (= e!849959 (Found!13103 index!487))))

(declare-fun b!1524690 () Bool)

(assert (=> b!1524690 (= e!849960 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 (select (arr!48917 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524691 () Bool)

(assert (=> b!1524691 (= e!849960 (MissingVacant!13103 index!487))))

(declare-fun b!1524692 () Bool)

(assert (=> b!1524692 (= e!849958 e!849959)))

(declare-fun c!140267 () Bool)

(assert (=> b!1524692 (= c!140267 (= lt!660383 (select (arr!48917 a!2804) j!70)))))

(assert (= (and d!159335 c!140268) b!1524688))

(assert (= (and d!159335 (not c!140268)) b!1524692))

(assert (= (and b!1524692 c!140267) b!1524689))

(assert (= (and b!1524692 (not c!140267)) b!1524687))

(assert (= (and b!1524687 c!140266) b!1524691))

(assert (= (and b!1524687 (not c!140266)) b!1524690))

(declare-fun m!1407663 () Bool)

(assert (=> d!159335 m!1407663))

(declare-fun m!1407665 () Bool)

(assert (=> d!159335 m!1407665))

(assert (=> d!159335 m!1407463))

(assert (=> d!159335 m!1407455))

(declare-fun m!1407667 () Bool)

(assert (=> b!1524690 m!1407667))

(assert (=> b!1524690 m!1407667))

(assert (=> b!1524690 m!1407451))

(declare-fun m!1407669 () Bool)

(assert (=> b!1524690 m!1407669))

(assert (=> b!1524352 d!159335))

(declare-fun d!159341 () Bool)

(declare-fun e!849965 () Bool)

(assert (=> d!159341 e!849965))

(declare-fun c!140271 () Bool)

(declare-fun lt!660386 () SeekEntryResult!13103)

(assert (=> d!159341 (= c!140271 (and ((_ is Intermediate!13103) lt!660386) (undefined!13915 lt!660386)))))

(declare-fun e!849963 () SeekEntryResult!13103)

(assert (=> d!159341 (= lt!660386 e!849963)))

(declare-fun c!140269 () Bool)

(assert (=> d!159341 (= c!140269 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!660385 () (_ BitVec 64))

(assert (=> d!159341 (= lt!660385 (select (arr!48917 a!2804) index!487))))

(assert (=> d!159341 (validMask!0 mask!2512)))

(assert (=> d!159341 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48917 a!2804) j!70) a!2804 mask!2512) lt!660386)))

(declare-fun b!1524693 () Bool)

(assert (=> b!1524693 (and (bvsge (index!54808 lt!660386) #b00000000000000000000000000000000) (bvslt (index!54808 lt!660386) (size!49468 a!2804)))))

(declare-fun res!1043261 () Bool)

(assert (=> b!1524693 (= res!1043261 (= (select (arr!48917 a!2804) (index!54808 lt!660386)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849961 () Bool)

(assert (=> b!1524693 (=> res!1043261 e!849961)))

(declare-fun b!1524694 () Bool)

(assert (=> b!1524694 (and (bvsge (index!54808 lt!660386) #b00000000000000000000000000000000) (bvslt (index!54808 lt!660386) (size!49468 a!2804)))))

(assert (=> b!1524694 (= e!849961 (= (select (arr!48917 a!2804) (index!54808 lt!660386)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1524695 () Bool)

(declare-fun e!849962 () SeekEntryResult!13103)

(assert (=> b!1524695 (= e!849962 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48917 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524696 () Bool)

(assert (=> b!1524696 (= e!849962 (Intermediate!13103 false index!487 x!534))))

(declare-fun b!1524697 () Bool)

(assert (=> b!1524697 (= e!849963 (Intermediate!13103 true index!487 x!534))))

(declare-fun b!1524698 () Bool)

(assert (=> b!1524698 (and (bvsge (index!54808 lt!660386) #b00000000000000000000000000000000) (bvslt (index!54808 lt!660386) (size!49468 a!2804)))))

(declare-fun res!1043262 () Bool)

(assert (=> b!1524698 (= res!1043262 (= (select (arr!48917 a!2804) (index!54808 lt!660386)) (select (arr!48917 a!2804) j!70)))))

(assert (=> b!1524698 (=> res!1043262 e!849961)))

(declare-fun e!849964 () Bool)

(assert (=> b!1524698 (= e!849964 e!849961)))

(declare-fun b!1524699 () Bool)

(assert (=> b!1524699 (= e!849965 (bvsge (x!136502 lt!660386) #b01111111111111111111111111111110))))

(declare-fun b!1524700 () Bool)

(assert (=> b!1524700 (= e!849963 e!849962)))

(declare-fun c!140270 () Bool)

(assert (=> b!1524700 (= c!140270 (or (= lt!660385 (select (arr!48917 a!2804) j!70)) (= (bvadd lt!660385 lt!660385) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1524701 () Bool)

(assert (=> b!1524701 (= e!849965 e!849964)))

(declare-fun res!1043263 () Bool)

(assert (=> b!1524701 (= res!1043263 (and ((_ is Intermediate!13103) lt!660386) (not (undefined!13915 lt!660386)) (bvslt (x!136502 lt!660386) #b01111111111111111111111111111110) (bvsge (x!136502 lt!660386) #b00000000000000000000000000000000) (bvsge (x!136502 lt!660386) x!534)))))

(assert (=> b!1524701 (=> (not res!1043263) (not e!849964))))

(assert (= (and d!159341 c!140269) b!1524697))

(assert (= (and d!159341 (not c!140269)) b!1524700))

(assert (= (and b!1524700 c!140270) b!1524696))

(assert (= (and b!1524700 (not c!140270)) b!1524695))

(assert (= (and d!159341 c!140271) b!1524699))

(assert (= (and d!159341 (not c!140271)) b!1524701))

(assert (= (and b!1524701 res!1043263) b!1524698))

(assert (= (and b!1524698 (not res!1043262)) b!1524693))

(assert (= (and b!1524693 (not res!1043261)) b!1524694))

(declare-fun m!1407671 () Bool)

(assert (=> b!1524693 m!1407671))

(assert (=> b!1524695 m!1407667))

(assert (=> b!1524695 m!1407667))

(assert (=> b!1524695 m!1407451))

(declare-fun m!1407673 () Bool)

(assert (=> b!1524695 m!1407673))

(assert (=> d!159341 m!1407463))

(assert (=> d!159341 m!1407455))

(assert (=> b!1524698 m!1407671))

(assert (=> b!1524694 m!1407671))

(assert (=> b!1524347 d!159341))

(check-sat (not b!1524403) (not b!1524690) (not b!1524525) (not d!159341) (not b!1524527) (not b!1524464) (not b!1524442) (not d!159295) (not d!159335) (not b!1524491) (not bm!68428) (not b!1524695) (not b!1524406) (not b!1524461) (not b!1524652) (not bm!68424) (not d!159277) (not d!159305) (not d!159291) (not d!159321) (not b!1524595) (not b!1524528) (not bm!68433))
(check-sat)
