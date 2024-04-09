; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129916 () Bool)

(assert start!129916)

(declare-fun res!1043103 () Bool)

(declare-fun e!849754 () Bool)

(assert (=> start!129916 (=> (not res!1043103) (not e!849754))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129916 (= res!1043103 (validMask!0 mask!2512))))

(assert (=> start!129916 e!849754))

(assert (=> start!129916 true))

(declare-datatypes ((array!101382 0))(
  ( (array!101383 (arr!48916 (Array (_ BitVec 32) (_ BitVec 64))) (size!49467 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101382)

(declare-fun array_inv!37861 (array!101382) Bool)

(assert (=> start!129916 (array_inv!37861 a!2804)))

(declare-fun e!849753 () Bool)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun b!1524311 () Bool)

(declare-datatypes ((SeekEntryResult!13102 0))(
  ( (MissingZero!13102 (index!54802 (_ BitVec 32))) (Found!13102 (index!54803 (_ BitVec 32))) (Intermediate!13102 (undefined!13914 Bool) (index!54804 (_ BitVec 32)) (x!136501 (_ BitVec 32))) (Undefined!13102) (MissingVacant!13102 (index!54805 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101382 (_ BitVec 32)) SeekEntryResult!13102)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101382 (_ BitVec 32)) SeekEntryResult!13102)

(assert (=> b!1524311 (= e!849753 (= (seekEntryOrOpen!0 (select (arr!48916 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48916 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1524312 () Bool)

(declare-fun res!1043105 () Bool)

(declare-fun e!849751 () Bool)

(assert (=> b!1524312 (=> (not res!1043105) (not e!849751))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun lt!660236 () SeekEntryResult!13102)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101382 (_ BitVec 32)) SeekEntryResult!13102)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524312 (= res!1043105 (= lt!660236 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101383 (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49467 a!2804)) mask!2512)))))

(declare-fun b!1524313 () Bool)

(declare-fun res!1043112 () Bool)

(assert (=> b!1524313 (=> (not res!1043112) (not e!849754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524313 (= res!1043112 (validKeyInArray!0 (select (arr!48916 a!2804) j!70)))))

(declare-fun b!1524314 () Bool)

(declare-fun res!1043111 () Bool)

(assert (=> b!1524314 (=> (not res!1043111) (not e!849751))))

(declare-fun lt!660238 () SeekEntryResult!13102)

(assert (=> b!1524314 (= res!1043111 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48916 a!2804) j!70) a!2804 mask!2512) lt!660238))))

(declare-fun b!1524315 () Bool)

(declare-fun res!1043106 () Bool)

(assert (=> b!1524315 (=> (not res!1043106) (not e!849754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101382 (_ BitVec 32)) Bool)

(assert (=> b!1524315 (= res!1043106 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1524316 () Bool)

(declare-fun res!1043107 () Bool)

(assert (=> b!1524316 (=> (not res!1043107) (not e!849754))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1524316 (= res!1043107 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49467 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49467 a!2804))))))

(declare-fun b!1524317 () Bool)

(declare-fun res!1043104 () Bool)

(assert (=> b!1524317 (=> (not res!1043104) (not e!849754))))

(assert (=> b!1524317 (= res!1043104 (and (= (size!49467 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49467 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49467 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524318 () Bool)

(assert (=> b!1524318 (= e!849751 (not e!849753))))

(declare-fun res!1043110 () Bool)

(assert (=> b!1524318 (=> res!1043110 e!849753)))

(assert (=> b!1524318 (= res!1043110 (or (not (= (select (arr!48916 a!2804) j!70) (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48916 a!2804) index!487) (select (arr!48916 a!2804) j!70)) (not (= (select (arr!48916 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!849755 () Bool)

(assert (=> b!1524318 e!849755))

(declare-fun res!1043109 () Bool)

(assert (=> b!1524318 (=> (not res!1043109) (not e!849755))))

(assert (=> b!1524318 (= res!1043109 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50944 0))(
  ( (Unit!50945) )
))
(declare-fun lt!660237 () Unit!50944)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101382 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50944)

(assert (=> b!1524318 (= lt!660237 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524319 () Bool)

(declare-fun res!1043108 () Bool)

(assert (=> b!1524319 (=> (not res!1043108) (not e!849754))))

(assert (=> b!1524319 (= res!1043108 (validKeyInArray!0 (select (arr!48916 a!2804) i!961)))))

(declare-fun b!1524320 () Bool)

(assert (=> b!1524320 (= e!849754 e!849751)))

(declare-fun res!1043102 () Bool)

(assert (=> b!1524320 (=> (not res!1043102) (not e!849751))))

(assert (=> b!1524320 (= res!1043102 (= lt!660236 lt!660238))))

(assert (=> b!1524320 (= lt!660238 (Intermediate!13102 false resIndex!21 resX!21))))

(assert (=> b!1524320 (= lt!660236 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48916 a!2804) j!70) mask!2512) (select (arr!48916 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524321 () Bool)

(declare-fun res!1043101 () Bool)

(assert (=> b!1524321 (=> (not res!1043101) (not e!849754))))

(declare-datatypes ((List!35579 0))(
  ( (Nil!35576) (Cons!35575 (h!37003 (_ BitVec 64)) (t!50280 List!35579)) )
))
(declare-fun arrayNoDuplicates!0 (array!101382 (_ BitVec 32) List!35579) Bool)

(assert (=> b!1524321 (= res!1043101 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35576))))

(declare-fun b!1524322 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101382 (_ BitVec 32)) SeekEntryResult!13102)

(assert (=> b!1524322 (= e!849755 (= (seekEntry!0 (select (arr!48916 a!2804) j!70) a!2804 mask!2512) (Found!13102 j!70)))))

(assert (= (and start!129916 res!1043103) b!1524317))

(assert (= (and b!1524317 res!1043104) b!1524319))

(assert (= (and b!1524319 res!1043108) b!1524313))

(assert (= (and b!1524313 res!1043112) b!1524315))

(assert (= (and b!1524315 res!1043106) b!1524321))

(assert (= (and b!1524321 res!1043101) b!1524316))

(assert (= (and b!1524316 res!1043107) b!1524320))

(assert (= (and b!1524320 res!1043102) b!1524314))

(assert (= (and b!1524314 res!1043111) b!1524312))

(assert (= (and b!1524312 res!1043105) b!1524318))

(assert (= (and b!1524318 res!1043109) b!1524322))

(assert (= (and b!1524318 (not res!1043110)) b!1524311))

(declare-fun m!1407405 () Bool)

(assert (=> b!1524318 m!1407405))

(declare-fun m!1407407 () Bool)

(assert (=> b!1524318 m!1407407))

(declare-fun m!1407409 () Bool)

(assert (=> b!1524318 m!1407409))

(declare-fun m!1407411 () Bool)

(assert (=> b!1524318 m!1407411))

(declare-fun m!1407413 () Bool)

(assert (=> b!1524318 m!1407413))

(declare-fun m!1407415 () Bool)

(assert (=> b!1524318 m!1407415))

(assert (=> b!1524312 m!1407409))

(assert (=> b!1524312 m!1407413))

(assert (=> b!1524312 m!1407413))

(declare-fun m!1407417 () Bool)

(assert (=> b!1524312 m!1407417))

(assert (=> b!1524312 m!1407417))

(assert (=> b!1524312 m!1407413))

(declare-fun m!1407419 () Bool)

(assert (=> b!1524312 m!1407419))

(assert (=> b!1524314 m!1407405))

(assert (=> b!1524314 m!1407405))

(declare-fun m!1407421 () Bool)

(assert (=> b!1524314 m!1407421))

(assert (=> b!1524322 m!1407405))

(assert (=> b!1524322 m!1407405))

(declare-fun m!1407423 () Bool)

(assert (=> b!1524322 m!1407423))

(declare-fun m!1407425 () Bool)

(assert (=> b!1524315 m!1407425))

(declare-fun m!1407427 () Bool)

(assert (=> b!1524321 m!1407427))

(assert (=> b!1524313 m!1407405))

(assert (=> b!1524313 m!1407405))

(declare-fun m!1407429 () Bool)

(assert (=> b!1524313 m!1407429))

(declare-fun m!1407431 () Bool)

(assert (=> b!1524319 m!1407431))

(assert (=> b!1524319 m!1407431))

(declare-fun m!1407433 () Bool)

(assert (=> b!1524319 m!1407433))

(assert (=> b!1524311 m!1407405))

(assert (=> b!1524311 m!1407405))

(declare-fun m!1407435 () Bool)

(assert (=> b!1524311 m!1407435))

(assert (=> b!1524311 m!1407405))

(declare-fun m!1407437 () Bool)

(assert (=> b!1524311 m!1407437))

(declare-fun m!1407439 () Bool)

(assert (=> start!129916 m!1407439))

(declare-fun m!1407441 () Bool)

(assert (=> start!129916 m!1407441))

(assert (=> b!1524320 m!1407405))

(assert (=> b!1524320 m!1407405))

(declare-fun m!1407443 () Bool)

(assert (=> b!1524320 m!1407443))

(assert (=> b!1524320 m!1407443))

(assert (=> b!1524320 m!1407405))

(declare-fun m!1407445 () Bool)

(assert (=> b!1524320 m!1407445))

(push 1)

(assert (not start!129916))

(assert (not b!1524313))

(assert (not b!1524314))

(assert (not b!1524322))

(assert (not b!1524321))

(assert (not b!1524319))

(assert (not b!1524320))

(assert (not b!1524311))

(assert (not b!1524318))

(assert (not b!1524312))

(assert (not b!1524315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!68427 () Bool)

(declare-fun call!68430 () Bool)

(declare-fun c!140162 () Bool)

(assert (=> bm!68427 (= call!68430 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140162 (Cons!35575 (select (arr!48916 a!2804) #b00000000000000000000000000000000) Nil!35576) Nil!35576)))))

(declare-fun b!1524418 () Bool)

(declare-fun e!849806 () Bool)

(declare-fun e!849805 () Bool)

(assert (=> b!1524418 (= e!849806 e!849805)))

(declare-fun res!1043198 () Bool)

(assert (=> b!1524418 (=> (not res!1043198) (not e!849805))))

(declare-fun e!849804 () Bool)

(assert (=> b!1524418 (= res!1043198 (not e!849804))))

(declare-fun res!1043197 () Bool)

(assert (=> b!1524418 (=> (not res!1043197) (not e!849804))))

(assert (=> b!1524418 (= res!1043197 (validKeyInArray!0 (select (arr!48916 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1524419 () Bool)

(declare-fun contains!10001 (List!35579 (_ BitVec 64)) Bool)

(assert (=> b!1524419 (= e!849804 (contains!10001 Nil!35576 (select (arr!48916 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1524420 () Bool)

(declare-fun e!849803 () Bool)

(assert (=> b!1524420 (= e!849803 call!68430)))

(declare-fun b!1524421 () Bool)

(assert (=> b!1524421 (= e!849805 e!849803)))

(assert (=> b!1524421 (= c!140162 (validKeyInArray!0 (select (arr!48916 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159279 () Bool)

(declare-fun res!1043199 () Bool)

(assert (=> d!159279 (=> res!1043199 e!849806)))

(assert (=> d!159279 (= res!1043199 (bvsge #b00000000000000000000000000000000 (size!49467 a!2804)))))

(assert (=> d!159279 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35576) e!849806)))

(declare-fun b!1524417 () Bool)

(assert (=> b!1524417 (= e!849803 call!68430)))

(assert (= (and d!159279 (not res!1043199)) b!1524418))

(assert (= (and b!1524418 res!1043197) b!1524419))

(assert (= (and b!1524418 res!1043198) b!1524421))

(assert (= (and b!1524421 c!140162) b!1524417))

(assert (= (and b!1524421 (not c!140162)) b!1524420))

(assert (= (or b!1524417 b!1524420) bm!68427))

(declare-fun m!1407543 () Bool)

(assert (=> bm!68427 m!1407543))

(declare-fun m!1407545 () Bool)

(assert (=> bm!68427 m!1407545))

(assert (=> b!1524418 m!1407543))

(assert (=> b!1524418 m!1407543))

(declare-fun m!1407547 () Bool)

(assert (=> b!1524418 m!1407547))

(assert (=> b!1524419 m!1407543))

(assert (=> b!1524419 m!1407543))

(declare-fun m!1407549 () Bool)

(assert (=> b!1524419 m!1407549))

(assert (=> b!1524421 m!1407543))

(assert (=> b!1524421 m!1407543))

(assert (=> b!1524421 m!1407547))

(assert (=> b!1524321 d!159279))

(declare-fun d!159281 () Bool)

(declare-fun lt!660292 () SeekEntryResult!13102)

(assert (=> d!159281 (and (or (is-Undefined!13102 lt!660292) (not (is-Found!13102 lt!660292)) (and (bvsge (index!54803 lt!660292) #b00000000000000000000000000000000) (bvslt (index!54803 lt!660292) (size!49467 a!2804)))) (or (is-Undefined!13102 lt!660292) (is-Found!13102 lt!660292) (not (is-MissingZero!13102 lt!660292)) (and (bvsge (index!54802 lt!660292) #b00000000000000000000000000000000) (bvslt (index!54802 lt!660292) (size!49467 a!2804)))) (or (is-Undefined!13102 lt!660292) (is-Found!13102 lt!660292) (is-MissingZero!13102 lt!660292) (not (is-MissingVacant!13102 lt!660292)) (and (bvsge (index!54805 lt!660292) #b00000000000000000000000000000000) (bvslt (index!54805 lt!660292) (size!49467 a!2804)))) (or (is-Undefined!13102 lt!660292) (ite (is-Found!13102 lt!660292) (= (select (arr!48916 a!2804) (index!54803 lt!660292)) (select (arr!48916 a!2804) j!70)) (ite (is-MissingZero!13102 lt!660292) (= (select (arr!48916 a!2804) (index!54802 lt!660292)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13102 lt!660292) (= (select (arr!48916 a!2804) (index!54805 lt!660292)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!849841 () SeekEntryResult!13102)

(assert (=> d!159281 (= lt!660292 e!849841)))

(declare-fun c!140185 () Bool)

(declare-fun lt!660291 () SeekEntryResult!13102)

(assert (=> d!159281 (= c!140185 (and (is-Intermediate!13102 lt!660291) (undefined!13914 lt!660291)))))

(assert (=> d!159281 (= lt!660291 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48916 a!2804) j!70) mask!2512) (select (arr!48916 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159281 (validMask!0 mask!2512)))

(assert (=> d!159281 (= (seekEntryOrOpen!0 (select (arr!48916 a!2804) j!70) a!2804 mask!2512) lt!660292)))

(declare-fun b!1524483 () Bool)

(assert (=> b!1524483 (= e!849841 Undefined!13102)))

(declare-fun b!1524484 () Bool)

(declare-fun c!140187 () Bool)

(declare-fun lt!660293 () (_ BitVec 64))

(assert (=> b!1524484 (= c!140187 (= lt!660293 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849843 () SeekEntryResult!13102)

(declare-fun e!849842 () SeekEntryResult!13102)

(assert (=> b!1524484 (= e!849843 e!849842)))

(declare-fun b!1524485 () Bool)

(assert (=> b!1524485 (= e!849843 (Found!13102 (index!54804 lt!660291)))))

(declare-fun b!1524486 () Bool)

(assert (=> b!1524486 (= e!849842 (seekKeyOrZeroReturnVacant!0 (x!136501 lt!660291) (index!54804 lt!660291) (index!54804 lt!660291) (select (arr!48916 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524487 () Bool)

(assert (=> b!1524487 (= e!849841 e!849843)))

(assert (=> b!1524487 (= lt!660293 (select (arr!48916 a!2804) (index!54804 lt!660291)))))

(declare-fun c!140186 () Bool)

(assert (=> b!1524487 (= c!140186 (= lt!660293 (select (arr!48916 a!2804) j!70)))))

(declare-fun b!1524488 () Bool)

(assert (=> b!1524488 (= e!849842 (MissingZero!13102 (index!54804 lt!660291)))))

(assert (= (and d!159281 c!140185) b!1524483))

(assert (= (and d!159281 (not c!140185)) b!1524487))

(assert (= (and b!1524487 c!140186) b!1524485))

(assert (= (and b!1524487 (not c!140186)) b!1524484))

(assert (= (and b!1524484 c!140187) b!1524488))

(assert (= (and b!1524484 (not c!140187)) b!1524486))

(declare-fun m!1407565 () Bool)

(assert (=> d!159281 m!1407565))

(assert (=> d!159281 m!1407443))

(assert (=> d!159281 m!1407405))

(assert (=> d!159281 m!1407445))

(declare-fun m!1407567 () Bool)

(assert (=> d!159281 m!1407567))

(declare-fun m!1407569 () Bool)

(assert (=> d!159281 m!1407569))

(assert (=> d!159281 m!1407405))

(assert (=> d!159281 m!1407443))

(assert (=> d!159281 m!1407439))

(assert (=> b!1524486 m!1407405))

(declare-fun m!1407571 () Bool)

(assert (=> b!1524486 m!1407571))

(declare-fun m!1407573 () Bool)

(assert (=> b!1524487 m!1407573))

(assert (=> b!1524311 d!159281))

(declare-fun b!1524555 () Bool)

(declare-fun e!849887 () SeekEntryResult!13102)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524555 (= e!849887 (seekKeyOrZeroReturnVacant!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) index!487 (select (arr!48916 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524556 () Bool)

(declare-fun e!849888 () SeekEntryResult!13102)

(assert (=> b!1524556 (= e!849888 (Found!13102 index!487))))

(declare-fun d!159293 () Bool)

(declare-fun lt!660318 () SeekEntryResult!13102)

(assert (=> d!159293 (and (or (is-Undefined!13102 lt!660318) (not (is-Found!13102 lt!660318)) (and (bvsge (index!54803 lt!660318) #b00000000000000000000000000000000) (bvslt (index!54803 lt!660318) (size!49467 a!2804)))) (or (is-Undefined!13102 lt!660318) (is-Found!13102 lt!660318) (not (is-MissingVacant!13102 lt!660318)) (not (= (index!54805 lt!660318) index!487)) (and (bvsge (index!54805 lt!660318) #b00000000000000000000000000000000) (bvslt (index!54805 lt!660318) (size!49467 a!2804)))) (or (is-Undefined!13102 lt!660318) (ite (is-Found!13102 lt!660318) (= (select (arr!48916 a!2804) (index!54803 lt!660318)) (select (arr!48916 a!2804) j!70)) (and (is-MissingVacant!13102 lt!660318) (= (index!54805 lt!660318) index!487) (= (select (arr!48916 a!2804) (index!54805 lt!660318)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!849886 () SeekEntryResult!13102)

(assert (=> d!159293 (= lt!660318 e!849886)))

(declare-fun c!140209 () Bool)

(assert (=> d!159293 (= c!140209 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!660319 () (_ BitVec 64))

(assert (=> d!159293 (= lt!660319 (select (arr!48916 a!2804) index!487))))

(assert (=> d!159293 (validMask!0 mask!2512)))

(assert (=> d!159293 (= (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48916 a!2804) j!70) a!2804 mask!2512) lt!660318)))

(declare-fun b!1524557 () Bool)

(declare-fun c!140211 () Bool)

(assert (=> b!1524557 (= c!140211 (= lt!660319 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1524557 (= e!849888 e!849887)))

(declare-fun b!1524558 () Bool)

(assert (=> b!1524558 (= e!849887 (MissingVacant!13102 index!487))))

(declare-fun b!1524559 () Bool)

(assert (=> b!1524559 (= e!849886 e!849888)))

(declare-fun c!140210 () Bool)

(assert (=> b!1524559 (= c!140210 (= lt!660319 (select (arr!48916 a!2804) j!70)))))

(declare-fun b!1524560 () Bool)

(assert (=> b!1524560 (= e!849886 Undefined!13102)))

(assert (= (and d!159293 c!140209) b!1524560))

(assert (= (and d!159293 (not c!140209)) b!1524559))

(assert (= (and b!1524559 c!140210) b!1524556))

(assert (= (and b!1524559 (not c!140210)) b!1524557))

(assert (= (and b!1524557 c!140211) b!1524558))

(assert (= (and b!1524557 (not c!140211)) b!1524555))

(declare-fun m!1407615 () Bool)

(assert (=> b!1524555 m!1407615))

(assert (=> b!1524555 m!1407615))

(assert (=> b!1524555 m!1407405))

(declare-fun m!1407617 () Bool)

(assert (=> b!1524555 m!1407617))

(declare-fun m!1407619 () Bool)

(assert (=> d!159293 m!1407619))

(declare-fun m!1407621 () Bool)

(assert (=> d!159293 m!1407621))

(assert (=> d!159293 m!1407411))

(assert (=> d!159293 m!1407439))

(assert (=> b!1524311 d!159293))

(declare-fun b!1524615 () Bool)

(declare-fun e!849921 () SeekEntryResult!13102)

(declare-fun lt!660353 () SeekEntryResult!13102)

(assert (=> b!1524615 (= e!849921 (ite (is-MissingVacant!13102 lt!660353) (MissingZero!13102 (index!54805 lt!660353)) lt!660353))))

(declare-fun lt!660351 () SeekEntryResult!13102)

(assert (=> b!1524615 (= lt!660353 (seekKeyOrZeroReturnVacant!0 (x!136501 lt!660351) (index!54804 lt!660351) (index!54804 lt!660351) (select (arr!48916 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524616 () Bool)

(declare-fun c!140233 () Bool)

(declare-fun lt!660352 () (_ BitVec 64))

(assert (=> b!1524616 (= c!140233 (= lt!660352 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!849922 () SeekEntryResult!13102)

(assert (=> b!1524616 (= e!849922 e!849921)))

(declare-fun b!1524617 () Bool)

(declare-fun e!849923 () SeekEntryResult!13102)

(assert (=> b!1524617 (= e!849923 Undefined!13102)))

(declare-fun d!159313 () Bool)

(declare-fun lt!660350 () SeekEntryResult!13102)

(assert (=> d!159313 (and (or (is-MissingVacant!13102 lt!660350) (not (is-Found!13102 lt!660350)) (and (bvsge (index!54803 lt!660350) #b00000000000000000000000000000000) (bvslt (index!54803 lt!660350) (size!49467 a!2804)))) (not (is-MissingVacant!13102 lt!660350)) (or (not (is-Found!13102 lt!660350)) (= (select (arr!48916 a!2804) (index!54803 lt!660350)) (select (arr!48916 a!2804) j!70))))))

(assert (=> d!159313 (= lt!660350 e!849923)))

(declare-fun c!140234 () Bool)

(assert (=> d!159313 (= c!140234 (and (is-Intermediate!13102 lt!660351) (undefined!13914 lt!660351)))))

(assert (=> d!159313 (= lt!660351 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48916 a!2804) j!70) mask!2512) (select (arr!48916 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159313 (validMask!0 mask!2512)))

(assert (=> d!159313 (= (seekEntry!0 (select (arr!48916 a!2804) j!70) a!2804 mask!2512) lt!660350)))

(declare-fun b!1524618 () Bool)

(assert (=> b!1524618 (= e!849921 (MissingZero!13102 (index!54804 lt!660351)))))

(declare-fun b!1524619 () Bool)

(assert (=> b!1524619 (= e!849922 (Found!13102 (index!54804 lt!660351)))))

(declare-fun b!1524620 () Bool)

(assert (=> b!1524620 (= e!849923 e!849922)))

(assert (=> b!1524620 (= lt!660352 (select (arr!48916 a!2804) (index!54804 lt!660351)))))

(declare-fun c!140235 () Bool)

(assert (=> b!1524620 (= c!140235 (= lt!660352 (select (arr!48916 a!2804) j!70)))))

(assert (= (and d!159313 c!140234) b!1524617))

(assert (= (and d!159313 (not c!140234)) b!1524620))

(assert (= (and b!1524620 c!140235) b!1524619))

(assert (= (and b!1524620 (not c!140235)) b!1524616))

(assert (= (and b!1524616 c!140233) b!1524618))

(assert (= (and b!1524616 (not c!140233)) b!1524615))

(assert (=> b!1524615 m!1407405))

(declare-fun m!1407641 () Bool)

(assert (=> b!1524615 m!1407641))

(declare-fun m!1407643 () Bool)

(assert (=> d!159313 m!1407643))

(assert (=> d!159313 m!1407405))

(assert (=> d!159313 m!1407443))

(assert (=> d!159313 m!1407443))

(assert (=> d!159313 m!1407405))

(assert (=> d!159313 m!1407445))

(assert (=> d!159313 m!1407439))

(declare-fun m!1407645 () Bool)

(assert (=> b!1524620 m!1407645))

(assert (=> b!1524322 d!159313))

(declare-fun d!159325 () Bool)

(assert (=> d!159325 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129916 d!159325))

(declare-fun d!159327 () Bool)

(assert (=> d!159327 (= (array_inv!37861 a!2804) (bvsge (size!49467 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129916 d!159327))

(declare-fun d!159329 () Bool)

(declare-fun e!849970 () Bool)

(assert (=> d!159329 e!849970))

(declare-fun c!140274 () Bool)

(declare-fun lt!660387 () SeekEntryResult!13102)

(assert (=> d!159329 (= c!140274 (and (is-Intermediate!13102 lt!660387) (undefined!13914 lt!660387)))))

(declare-fun e!849969 () SeekEntryResult!13102)

(assert (=> d!159329 (= lt!660387 e!849969)))

(declare-fun c!140272 () Bool)

(assert (=> d!159329 (= c!140272 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!660388 () (_ BitVec 64))

(assert (=> d!159329 (= lt!660388 (select (arr!48916 (array!101383 (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49467 a!2804))) (toIndex!0 (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159329 (validMask!0 mask!2512)))

(assert (=> d!159329 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101383 (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49467 a!2804)) mask!2512) lt!660387)))

(declare-fun b!1524702 () Bool)

(assert (=> b!1524702 (= e!849969 (Intermediate!13102 true (toIndex!0 (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1524703 () Bool)

(declare-fun e!849967 () Bool)

(assert (=> b!1524703 (= e!849970 e!849967)))

(declare-fun res!1043265 () Bool)

(assert (=> b!1524703 (= res!1043265 (and (is-Intermediate!13102 lt!660387) (not (undefined!13914 lt!660387)) (bvslt (x!136501 lt!660387) #b01111111111111111111111111111110) (bvsge (x!136501 lt!660387) #b00000000000000000000000000000000) (bvsge (x!136501 lt!660387) #b00000000000000000000000000000000)))))

(assert (=> b!1524703 (=> (not res!1043265) (not e!849967))))

(declare-fun e!849968 () SeekEntryResult!13102)

(declare-fun b!1524704 () Bool)

(assert (=> b!1524704 (= e!849968 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101383 (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49467 a!2804)) mask!2512))))

(declare-fun b!1524705 () Bool)

(assert (=> b!1524705 (and (bvsge (index!54804 lt!660387) #b00000000000000000000000000000000) (bvslt (index!54804 lt!660387) (size!49467 (array!101383 (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49467 a!2804)))))))

(declare-fun e!849966 () Bool)

(assert (=> b!1524705 (= e!849966 (= (select (arr!48916 (array!101383 (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49467 a!2804))) (index!54804 lt!660387)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1524706 () Bool)

(assert (=> b!1524706 (= e!849969 e!849968)))

(declare-fun c!140273 () Bool)

(assert (=> b!1524706 (= c!140273 (or (= lt!660388 (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!660388 lt!660388) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1524707 () Bool)

(assert (=> b!1524707 (and (bvsge (index!54804 lt!660387) #b00000000000000000000000000000000) (bvslt (index!54804 lt!660387) (size!49467 (array!101383 (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49467 a!2804)))))))

(declare-fun res!1043266 () Bool)

(assert (=> b!1524707 (= res!1043266 (= (select (arr!48916 (array!101383 (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49467 a!2804))) (index!54804 lt!660387)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1524707 (=> res!1043266 e!849966)))

(declare-fun b!1524708 () Bool)

(assert (=> b!1524708 (and (bvsge (index!54804 lt!660387) #b00000000000000000000000000000000) (bvslt (index!54804 lt!660387) (size!49467 (array!101383 (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49467 a!2804)))))))

(declare-fun res!1043264 () Bool)

(assert (=> b!1524708 (= res!1043264 (= (select (arr!48916 (array!101383 (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49467 a!2804))) (index!54804 lt!660387)) (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1524708 (=> res!1043264 e!849966)))

(assert (=> b!1524708 (= e!849967 e!849966)))

(declare-fun b!1524709 () Bool)

(assert (=> b!1524709 (= e!849968 (Intermediate!13102 false (toIndex!0 (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1524710 () Bool)

(assert (=> b!1524710 (= e!849970 (bvsge (x!136501 lt!660387) #b01111111111111111111111111111110))))

(assert (= (and d!159329 c!140272) b!1524702))

(assert (= (and d!159329 (not c!140272)) b!1524706))

(assert (= (and b!1524706 c!140273) b!1524709))

(assert (= (and b!1524706 (not c!140273)) b!1524704))

(assert (= (and d!159329 c!140274) b!1524710))

(assert (= (and d!159329 (not c!140274)) b!1524703))

(assert (= (and b!1524703 res!1043265) b!1524708))

(assert (= (and b!1524708 (not res!1043264)) b!1524707))

(assert (= (and b!1524707 (not res!1043266)) b!1524705))

(assert (=> b!1524704 m!1407417))

(declare-fun m!1407675 () Bool)

(assert (=> b!1524704 m!1407675))

(assert (=> b!1524704 m!1407675))

(assert (=> b!1524704 m!1407413))

(declare-fun m!1407677 () Bool)

(assert (=> b!1524704 m!1407677))

(declare-fun m!1407679 () Bool)

(assert (=> b!1524707 m!1407679))

(assert (=> d!159329 m!1407417))

(declare-fun m!1407681 () Bool)

(assert (=> d!159329 m!1407681))

(assert (=> d!159329 m!1407439))

(assert (=> b!1524705 m!1407679))

(assert (=> b!1524708 m!1407679))

(assert (=> b!1524312 d!159329))

(declare-fun d!159343 () Bool)

(declare-fun lt!660394 () (_ BitVec 32))

(declare-fun lt!660393 () (_ BitVec 32))

(assert (=> d!159343 (= lt!660394 (bvmul (bvxor lt!660393 (bvlshr lt!660393 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159343 (= lt!660393 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159343 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043267 (let ((h!37008 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136511 (bvmul (bvxor h!37008 (bvlshr h!37008 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136511 (bvlshr x!136511 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043267 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043267 #b00000000000000000000000000000000))))))

(assert (=> d!159343 (= (toIndex!0 (select (store (arr!48916 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!660394 (bvlshr lt!660394 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1524312 d!159343))

(declare-fun b!1524737 () Bool)

(declare-fun e!849987 () Bool)

(declare-fun e!849988 () Bool)

(assert (=> b!1524737 (= e!849987 e!849988)))

(declare-fun lt!660412 () (_ BitVec 64))

(assert (=> b!1524737 (= lt!660412 (select (arr!48916 a!2804) j!70))))

(declare-fun lt!660411 () Unit!50944)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101382 (_ BitVec 64) (_ BitVec 32)) Unit!50944)

(assert (=> b!1524737 (= lt!660411 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660412 j!70))))

(declare-fun arrayContainsKey!0 (array!101382 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1524737 (arrayContainsKey!0 a!2804 lt!660412 #b00000000000000000000000000000000)))

(declare-fun lt!660410 () Unit!50944)

(assert (=> b!1524737 (= lt!660410 lt!660411)))

(declare-fun res!1043273 () Bool)

(assert (=> b!1524737 (= res!1043273 (= (seekEntryOrOpen!0 (select (arr!48916 a!2804) j!70) a!2804 mask!2512) (Found!13102 j!70)))))

(assert (=> b!1524737 (=> (not res!1043273) (not e!849988))))

(declare-fun b!1524738 () Bool)

(declare-fun e!849986 () Bool)

(assert (=> b!1524738 (= e!849986 e!849987)))

(declare-fun c!140286 () Bool)

(assert (=> b!1524738 (= c!140286 (validKeyInArray!0 (select (arr!48916 a!2804) j!70)))))

(declare-fun bm!68440 () Bool)

(declare-fun call!68443 () Bool)

(assert (=> bm!68440 (= call!68443 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159345 () Bool)

(declare-fun res!1043272 () Bool)

(assert (=> d!159345 (=> res!1043272 e!849986)))

(assert (=> d!159345 (= res!1043272 (bvsge j!70 (size!49467 a!2804)))))

(assert (=> d!159345 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!849986)))

(declare-fun b!1524739 () Bool)

(assert (=> b!1524739 (= e!849987 call!68443)))

(declare-fun b!1524740 () Bool)

(assert (=> b!1524740 (= e!849988 call!68443)))

(assert (= (and d!159345 (not res!1043272)) b!1524738))

(assert (= (and b!1524738 c!140286) b!1524737))

(assert (= (and b!1524738 (not c!140286)) b!1524739))

(assert (= (and b!1524737 res!1043273) b!1524740))

(assert (= (or b!1524740 b!1524739) bm!68440))

(assert (=> b!1524737 m!1407405))

(declare-fun m!1407693 () Bool)

(assert (=> b!1524737 m!1407693))

(declare-fun m!1407695 () Bool)

(assert (=> b!1524737 m!1407695))

(assert (=> b!1524737 m!1407405))

(assert (=> b!1524737 m!1407435))

(assert (=> b!1524738 m!1407405))

(assert (=> b!1524738 m!1407405))

(assert (=> b!1524738 m!1407429))

(declare-fun m!1407697 () Bool)

(assert (=> bm!68440 m!1407697))

(assert (=> b!1524318 d!159345))

(declare-fun d!159349 () Bool)

(assert (=> d!159349 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!660415 () Unit!50944)

(declare-fun choose!38 (array!101382 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50944)

(assert (=> d!159349 (= lt!660415 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159349 (validMask!0 mask!2512)))

(assert (=> d!159349 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!660415)))

(declare-fun bs!43746 () Bool)

(assert (= bs!43746 d!159349))

(assert (=> bs!43746 m!1407415))

(declare-fun m!1407699 () Bool)

(assert (=> bs!43746 m!1407699))

(assert (=> bs!43746 m!1407439))

(assert (=> b!1524318 d!159349))

(declare-fun d!159351 () Bool)

(assert (=> d!159351 (= (validKeyInArray!0 (select (arr!48916 a!2804) j!70)) (and (not (= (select (arr!48916 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48916 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1524313 d!159351))

(declare-fun d!159353 () Bool)

(assert (=> d!159353 (= (validKeyInArray!0 (select (arr!48916 a!2804) i!961)) (and (not (= (select (arr!48916 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48916 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1524319 d!159353))

(declare-fun d!159355 () Bool)

(declare-fun e!849993 () Bool)

(assert (=> d!159355 e!849993))

(declare-fun c!140289 () Bool)

(declare-fun lt!660416 () SeekEntryResult!13102)

(assert (=> d!159355 (= c!140289 (and (is-Intermediate!13102 lt!660416) (undefined!13914 lt!660416)))))

(declare-fun e!849992 () SeekEntryResult!13102)

(assert (=> d!159355 (= lt!660416 e!849992)))

(declare-fun c!140287 () Bool)

(assert (=> d!159355 (= c!140287 (bvsge x!534 #b01111111111111111111111111111110))))

(declare-fun lt!660417 () (_ BitVec 64))

(assert (=> d!159355 (= lt!660417 (select (arr!48916 a!2804) index!487))))

(assert (=> d!159355 (validMask!0 mask!2512)))

(assert (=> d!159355 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48916 a!2804) j!70) a!2804 mask!2512) lt!660416)))

(declare-fun b!1524741 () Bool)

(assert (=> b!1524741 (= e!849992 (Intermediate!13102 true index!487 x!534))))

(declare-fun b!1524742 () Bool)

(declare-fun e!849990 () Bool)

(assert (=> b!1524742 (= e!849993 e!849990)))

(declare-fun res!1043275 () Bool)

(assert (=> b!1524742 (= res!1043275 (and (is-Intermediate!13102 lt!660416) (not (undefined!13914 lt!660416)) (bvslt (x!136501 lt!660416) #b01111111111111111111111111111110) (bvsge (x!136501 lt!660416) #b00000000000000000000000000000000) (bvsge (x!136501 lt!660416) x!534)))))

(assert (=> b!1524742 (=> (not res!1043275) (not e!849990))))

(declare-fun e!849991 () SeekEntryResult!13102)

(declare-fun b!1524743 () Bool)

(assert (=> b!1524743 (= e!849991 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48916 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524744 () Bool)

(assert (=> b!1524744 (and (bvsge (index!54804 lt!660416) #b00000000000000000000000000000000) (bvslt (index!54804 lt!660416) (size!49467 a!2804)))))

(declare-fun e!849989 () Bool)

(assert (=> b!1524744 (= e!849989 (= (select (arr!48916 a!2804) (index!54804 lt!660416)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1524745 () Bool)

(assert (=> b!1524745 (= e!849992 e!849991)))

(declare-fun c!140288 () Bool)

(assert (=> b!1524745 (= c!140288 (or (= lt!660417 (select (arr!48916 a!2804) j!70)) (= (bvadd lt!660417 lt!660417) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1524746 () Bool)

(assert (=> b!1524746 (and (bvsge (index!54804 lt!660416) #b00000000000000000000000000000000) (bvslt (index!54804 lt!660416) (size!49467 a!2804)))))

(declare-fun res!1043276 () Bool)

(assert (=> b!1524746 (= res!1043276 (= (select (arr!48916 a!2804) (index!54804 lt!660416)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1524746 (=> res!1043276 e!849989)))

(declare-fun b!1524747 () Bool)

(assert (=> b!1524747 (and (bvsge (index!54804 lt!660416) #b00000000000000000000000000000000) (bvslt (index!54804 lt!660416) (size!49467 a!2804)))))

(declare-fun res!1043274 () Bool)

(assert (=> b!1524747 (= res!1043274 (= (select (arr!48916 a!2804) (index!54804 lt!660416)) (select (arr!48916 a!2804) j!70)))))

(assert (=> b!1524747 (=> res!1043274 e!849989)))

(assert (=> b!1524747 (= e!849990 e!849989)))

(declare-fun b!1524748 () Bool)

(assert (=> b!1524748 (= e!849991 (Intermediate!13102 false index!487 x!534))))

(declare-fun b!1524749 () Bool)

(assert (=> b!1524749 (= e!849993 (bvsge (x!136501 lt!660416) #b01111111111111111111111111111110))))

(assert (= (and d!159355 c!140287) b!1524741))

(assert (= (and d!159355 (not c!140287)) b!1524745))

(assert (= (and b!1524745 c!140288) b!1524748))

(assert (= (and b!1524745 (not c!140288)) b!1524743))

(assert (= (and d!159355 c!140289) b!1524749))

(assert (= (and d!159355 (not c!140289)) b!1524742))

(assert (= (and b!1524742 res!1043275) b!1524747))

(assert (= (and b!1524747 (not res!1043274)) b!1524746))

(assert (= (and b!1524746 (not res!1043276)) b!1524744))

(assert (=> b!1524743 m!1407615))

(assert (=> b!1524743 m!1407615))

(assert (=> b!1524743 m!1407405))

(declare-fun m!1407701 () Bool)

(assert (=> b!1524743 m!1407701))

(declare-fun m!1407703 () Bool)

(assert (=> b!1524746 m!1407703))

(assert (=> d!159355 m!1407411))

(assert (=> d!159355 m!1407439))

(assert (=> b!1524744 m!1407703))

(assert (=> b!1524747 m!1407703))

(assert (=> b!1524314 d!159355))

(declare-fun d!159357 () Bool)

(declare-fun e!849998 () Bool)

(assert (=> d!159357 e!849998))

(declare-fun c!140292 () Bool)

(declare-fun lt!660418 () SeekEntryResult!13102)

(assert (=> d!159357 (= c!140292 (and (is-Intermediate!13102 lt!660418) (undefined!13914 lt!660418)))))

(declare-fun e!849997 () SeekEntryResult!13102)

(assert (=> d!159357 (= lt!660418 e!849997)))

(declare-fun c!140290 () Bool)

(assert (=> d!159357 (= c!140290 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!660419 () (_ BitVec 64))

(assert (=> d!159357 (= lt!660419 (select (arr!48916 a!2804) (toIndex!0 (select (arr!48916 a!2804) j!70) mask!2512)))))

(assert (=> d!159357 (validMask!0 mask!2512)))

(assert (=> d!159357 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48916 a!2804) j!70) mask!2512) (select (arr!48916 a!2804) j!70) a!2804 mask!2512) lt!660418)))

(declare-fun b!1524750 () Bool)

(assert (=> b!1524750 (= e!849997 (Intermediate!13102 true (toIndex!0 (select (arr!48916 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1524751 () Bool)

(declare-fun e!849995 () Bool)

(assert (=> b!1524751 (= e!849998 e!849995)))

(declare-fun res!1043278 () Bool)

(assert (=> b!1524751 (= res!1043278 (and (is-Intermediate!13102 lt!660418) (not (undefined!13914 lt!660418)) (bvslt (x!136501 lt!660418) #b01111111111111111111111111111110) (bvsge (x!136501 lt!660418) #b00000000000000000000000000000000) (bvsge (x!136501 lt!660418) #b00000000000000000000000000000000)))))

(assert (=> b!1524751 (=> (not res!1043278) (not e!849995))))

(declare-fun b!1524752 () Bool)

(declare-fun e!849996 () SeekEntryResult!13102)

(assert (=> b!1524752 (= e!849996 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48916 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48916 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524753 () Bool)

(assert (=> b!1524753 (and (bvsge (index!54804 lt!660418) #b00000000000000000000000000000000) (bvslt (index!54804 lt!660418) (size!49467 a!2804)))))

(declare-fun e!849994 () Bool)

(assert (=> b!1524753 (= e!849994 (= (select (arr!48916 a!2804) (index!54804 lt!660418)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1524754 () Bool)

(assert (=> b!1524754 (= e!849997 e!849996)))

(declare-fun c!140291 () Bool)

(assert (=> b!1524754 (= c!140291 (or (= lt!660419 (select (arr!48916 a!2804) j!70)) (= (bvadd lt!660419 lt!660419) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1524755 () Bool)

(assert (=> b!1524755 (and (bvsge (index!54804 lt!660418) #b00000000000000000000000000000000) (bvslt (index!54804 lt!660418) (size!49467 a!2804)))))

(declare-fun res!1043279 () Bool)

(assert (=> b!1524755 (= res!1043279 (= (select (arr!48916 a!2804) (index!54804 lt!660418)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1524755 (=> res!1043279 e!849994)))

(declare-fun b!1524756 () Bool)

(assert (=> b!1524756 (and (bvsge (index!54804 lt!660418) #b00000000000000000000000000000000) (bvslt (index!54804 lt!660418) (size!49467 a!2804)))))

(declare-fun res!1043277 () Bool)

(assert (=> b!1524756 (= res!1043277 (= (select (arr!48916 a!2804) (index!54804 lt!660418)) (select (arr!48916 a!2804) j!70)))))

(assert (=> b!1524756 (=> res!1043277 e!849994)))

(assert (=> b!1524756 (= e!849995 e!849994)))

(declare-fun b!1524757 () Bool)

(assert (=> b!1524757 (= e!849996 (Intermediate!13102 false (toIndex!0 (select (arr!48916 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1524758 () Bool)

(assert (=> b!1524758 (= e!849998 (bvsge (x!136501 lt!660418) #b01111111111111111111111111111110))))

(assert (= (and d!159357 c!140290) b!1524750))

(assert (= (and d!159357 (not c!140290)) b!1524754))

(assert (= (and b!1524754 c!140291) b!1524757))

(assert (= (and b!1524754 (not c!140291)) b!1524752))

(assert (= (and d!159357 c!140292) b!1524758))

(assert (= (and d!159357 (not c!140292)) b!1524751))

(assert (= (and b!1524751 res!1043278) b!1524756))

(assert (= (and b!1524756 (not res!1043277)) b!1524755))

(assert (= (and b!1524755 (not res!1043279)) b!1524753))

(assert (=> b!1524752 m!1407443))

(declare-fun m!1407705 () Bool)

(assert (=> b!1524752 m!1407705))

(assert (=> b!1524752 m!1407705))

(assert (=> b!1524752 m!1407405))

(declare-fun m!1407707 () Bool)

(assert (=> b!1524752 m!1407707))

(declare-fun m!1407709 () Bool)

(assert (=> b!1524755 m!1407709))

(assert (=> d!159357 m!1407443))

(declare-fun m!1407711 () Bool)

(assert (=> d!159357 m!1407711))

(assert (=> d!159357 m!1407439))

(assert (=> b!1524753 m!1407709))

(assert (=> b!1524756 m!1407709))

(assert (=> b!1524320 d!159357))

(declare-fun d!159359 () Bool)

(declare-fun lt!660421 () (_ BitVec 32))

(declare-fun lt!660420 () (_ BitVec 32))

(assert (=> d!159359 (= lt!660421 (bvmul (bvxor lt!660420 (bvlshr lt!660420 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159359 (= lt!660420 ((_ extract 31 0) (bvand (bvxor (select (arr!48916 a!2804) j!70) (bvlshr (select (arr!48916 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159359 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1043267 (let ((h!37008 ((_ extract 31 0) (bvand (bvxor (select (arr!48916 a!2804) j!70) (bvlshr (select (arr!48916 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136511 (bvmul (bvxor h!37008 (bvlshr h!37008 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136511 (bvlshr x!136511 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1043267 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1043267 #b00000000000000000000000000000000))))))

(assert (=> d!159359 (= (toIndex!0 (select (arr!48916 a!2804) j!70) mask!2512) (bvand (bvxor lt!660421 (bvlshr lt!660421 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1524320 d!159359))

(declare-fun b!1524759 () Bool)

(declare-fun e!850000 () Bool)

(declare-fun e!850001 () Bool)

(assert (=> b!1524759 (= e!850000 e!850001)))

(declare-fun lt!660424 () (_ BitVec 64))

(assert (=> b!1524759 (= lt!660424 (select (arr!48916 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!660423 () Unit!50944)

(assert (=> b!1524759 (= lt!660423 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!660424 #b00000000000000000000000000000000))))

(assert (=> b!1524759 (arrayContainsKey!0 a!2804 lt!660424 #b00000000000000000000000000000000)))

(declare-fun lt!660422 () Unit!50944)

(assert (=> b!1524759 (= lt!660422 lt!660423)))

(declare-fun res!1043281 () Bool)

(assert (=> b!1524759 (= res!1043281 (= (seekEntryOrOpen!0 (select (arr!48916 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13102 #b00000000000000000000000000000000)))))

(assert (=> b!1524759 (=> (not res!1043281) (not e!850001))))

(declare-fun b!1524760 () Bool)

(declare-fun e!849999 () Bool)

(assert (=> b!1524760 (= e!849999 e!850000)))

(declare-fun c!140293 () Bool)

(assert (=> b!1524760 (= c!140293 (validKeyInArray!0 (select (arr!48916 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68441 () Bool)

(declare-fun call!68444 () Bool)

(assert (=> bm!68441 (= call!68444 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!159361 () Bool)

(declare-fun res!1043280 () Bool)

(assert (=> d!159361 (=> res!1043280 e!849999)))

(assert (=> d!159361 (= res!1043280 (bvsge #b00000000000000000000000000000000 (size!49467 a!2804)))))

(assert (=> d!159361 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!849999)))

(declare-fun b!1524761 () Bool)

(assert (=> b!1524761 (= e!850000 call!68444)))

(declare-fun b!1524762 () Bool)

(assert (=> b!1524762 (= e!850001 call!68444)))

(assert (= (and d!159361 (not res!1043280)) b!1524760))

(assert (= (and b!1524760 c!140293) b!1524759))

(assert (= (and b!1524760 (not c!140293)) b!1524761))

(assert (= (and b!1524759 res!1043281) b!1524762))

(assert (= (or b!1524762 b!1524761) bm!68441))

(assert (=> b!1524759 m!1407543))

(declare-fun m!1407713 () Bool)

(assert (=> b!1524759 m!1407713))

(declare-fun m!1407715 () Bool)

(assert (=> b!1524759 m!1407715))

(assert (=> b!1524759 m!1407543))

(declare-fun m!1407717 () Bool)

(assert (=> b!1524759 m!1407717))

(assert (=> b!1524760 m!1407543))

(assert (=> b!1524760 m!1407543))

(assert (=> b!1524760 m!1407547))

(declare-fun m!1407719 () Bool)

(assert (=> bm!68441 m!1407719))

(assert (=> b!1524315 d!159361))

(push 1)

