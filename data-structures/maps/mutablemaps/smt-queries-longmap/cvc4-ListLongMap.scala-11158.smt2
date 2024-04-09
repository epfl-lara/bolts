; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130406 () Bool)

(assert start!130406)

(declare-fun b!1530371 () Bool)

(declare-fun res!1048034 () Bool)

(declare-fun e!852783 () Bool)

(assert (=> b!1530371 (=> (not res!1048034) (not e!852783))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101626 0))(
  ( (array!101627 (arr!49032 (Array (_ BitVec 32) (_ BitVec 64))) (size!49583 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101626)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530371 (= res!1048034 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49583 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49583 a!2804))))))

(declare-fun b!1530372 () Bool)

(declare-fun res!1048043 () Bool)

(assert (=> b!1530372 (=> (not res!1048043) (not e!852783))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530372 (= res!1048043 (validKeyInArray!0 (select (arr!49032 a!2804) j!70)))))

(declare-fun b!1530373 () Bool)

(declare-fun res!1048044 () Bool)

(assert (=> b!1530373 (=> (not res!1048044) (not e!852783))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1530373 (= res!1048044 (validKeyInArray!0 (select (arr!49032 a!2804) i!961)))))

(declare-fun b!1530374 () Bool)

(declare-fun res!1048039 () Bool)

(assert (=> b!1530374 (=> (not res!1048039) (not e!852783))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101626 (_ BitVec 32)) Bool)

(assert (=> b!1530374 (= res!1048039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1530375 () Bool)

(declare-fun res!1048035 () Bool)

(declare-fun e!852784 () Bool)

(assert (=> b!1530375 (=> (not res!1048035) (not e!852784))))

(declare-datatypes ((SeekEntryResult!13218 0))(
  ( (MissingZero!13218 (index!55266 (_ BitVec 32))) (Found!13218 (index!55267 (_ BitVec 32))) (Intermediate!13218 (undefined!14030 Bool) (index!55268 (_ BitVec 32)) (x!136957 (_ BitVec 32))) (Undefined!13218) (MissingVacant!13218 (index!55269 (_ BitVec 32))) )
))
(declare-fun lt!662758 () SeekEntryResult!13218)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101626 (_ BitVec 32)) SeekEntryResult!13218)

(assert (=> b!1530375 (= res!1048035 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49032 a!2804) j!70) a!2804 mask!2512) lt!662758))))

(declare-fun b!1530376 () Bool)

(assert (=> b!1530376 (= e!852783 e!852784)))

(declare-fun res!1048040 () Bool)

(assert (=> b!1530376 (=> (not res!1048040) (not e!852784))))

(declare-fun lt!662759 () SeekEntryResult!13218)

(assert (=> b!1530376 (= res!1048040 (= lt!662759 lt!662758))))

(assert (=> b!1530376 (= lt!662758 (Intermediate!13218 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530376 (= lt!662759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49032 a!2804) j!70) mask!2512) (select (arr!49032 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530377 () Bool)

(declare-fun res!1048037 () Bool)

(assert (=> b!1530377 (=> (not res!1048037) (not e!852783))))

(assert (=> b!1530377 (= res!1048037 (and (= (size!49583 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49583 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49583 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530379 () Bool)

(declare-fun e!852782 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101626 (_ BitVec 32)) SeekEntryResult!13218)

(assert (=> b!1530379 (= e!852782 (= (seekEntry!0 (select (arr!49032 a!2804) j!70) a!2804 mask!2512) (Found!13218 j!70)))))

(declare-fun b!1530380 () Bool)

(declare-fun res!1048036 () Bool)

(assert (=> b!1530380 (=> (not res!1048036) (not e!852784))))

(assert (=> b!1530380 (= res!1048036 (= lt!662759 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101627 (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49583 a!2804)) mask!2512)))))

(declare-fun b!1530378 () Bool)

(declare-fun res!1048042 () Bool)

(assert (=> b!1530378 (=> (not res!1048042) (not e!852783))))

(declare-datatypes ((List!35695 0))(
  ( (Nil!35692) (Cons!35691 (h!37131 (_ BitVec 64)) (t!50396 List!35695)) )
))
(declare-fun arrayNoDuplicates!0 (array!101626 (_ BitVec 32) List!35695) Bool)

(assert (=> b!1530378 (= res!1048042 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35692))))

(declare-fun res!1048041 () Bool)

(assert (=> start!130406 (=> (not res!1048041) (not e!852783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130406 (= res!1048041 (validMask!0 mask!2512))))

(assert (=> start!130406 e!852783))

(assert (=> start!130406 true))

(declare-fun array_inv!37977 (array!101626) Bool)

(assert (=> start!130406 (array_inv!37977 a!2804)))

(declare-fun lt!662761 () (_ BitVec 32))

(declare-fun b!1530381 () Bool)

(declare-fun e!852785 () Bool)

(assert (=> b!1530381 (= e!852785 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (and (bvsge lt!662761 #b00000000000000000000000000000000) (bvslt lt!662761 (size!49583 a!2804)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530381 (= lt!662761 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530382 () Bool)

(assert (=> b!1530382 (= e!852784 (not e!852785))))

(declare-fun res!1048033 () Bool)

(assert (=> b!1530382 (=> res!1048033 e!852785)))

(assert (=> b!1530382 (= res!1048033 (or (not (= (select (arr!49032 a!2804) j!70) (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(assert (=> b!1530382 e!852782))

(declare-fun res!1048038 () Bool)

(assert (=> b!1530382 (=> (not res!1048038) (not e!852782))))

(assert (=> b!1530382 (= res!1048038 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51176 0))(
  ( (Unit!51177) )
))
(declare-fun lt!662760 () Unit!51176)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101626 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51176)

(assert (=> b!1530382 (= lt!662760 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!130406 res!1048041) b!1530377))

(assert (= (and b!1530377 res!1048037) b!1530373))

(assert (= (and b!1530373 res!1048044) b!1530372))

(assert (= (and b!1530372 res!1048043) b!1530374))

(assert (= (and b!1530374 res!1048039) b!1530378))

(assert (= (and b!1530378 res!1048042) b!1530371))

(assert (= (and b!1530371 res!1048034) b!1530376))

(assert (= (and b!1530376 res!1048040) b!1530375))

(assert (= (and b!1530375 res!1048035) b!1530380))

(assert (= (and b!1530380 res!1048036) b!1530382))

(assert (= (and b!1530382 res!1048038) b!1530379))

(assert (= (and b!1530382 (not res!1048033)) b!1530381))

(declare-fun m!1413295 () Bool)

(assert (=> b!1530378 m!1413295))

(declare-fun m!1413297 () Bool)

(assert (=> b!1530382 m!1413297))

(declare-fun m!1413299 () Bool)

(assert (=> b!1530382 m!1413299))

(declare-fun m!1413301 () Bool)

(assert (=> b!1530382 m!1413301))

(declare-fun m!1413303 () Bool)

(assert (=> b!1530382 m!1413303))

(declare-fun m!1413305 () Bool)

(assert (=> b!1530382 m!1413305))

(assert (=> b!1530380 m!1413301))

(assert (=> b!1530380 m!1413303))

(assert (=> b!1530380 m!1413303))

(declare-fun m!1413307 () Bool)

(assert (=> b!1530380 m!1413307))

(assert (=> b!1530380 m!1413307))

(assert (=> b!1530380 m!1413303))

(declare-fun m!1413309 () Bool)

(assert (=> b!1530380 m!1413309))

(declare-fun m!1413311 () Bool)

(assert (=> b!1530374 m!1413311))

(declare-fun m!1413313 () Bool)

(assert (=> b!1530381 m!1413313))

(assert (=> b!1530375 m!1413297))

(assert (=> b!1530375 m!1413297))

(declare-fun m!1413315 () Bool)

(assert (=> b!1530375 m!1413315))

(assert (=> b!1530379 m!1413297))

(assert (=> b!1530379 m!1413297))

(declare-fun m!1413317 () Bool)

(assert (=> b!1530379 m!1413317))

(declare-fun m!1413319 () Bool)

(assert (=> start!130406 m!1413319))

(declare-fun m!1413321 () Bool)

(assert (=> start!130406 m!1413321))

(declare-fun m!1413323 () Bool)

(assert (=> b!1530373 m!1413323))

(assert (=> b!1530373 m!1413323))

(declare-fun m!1413325 () Bool)

(assert (=> b!1530373 m!1413325))

(assert (=> b!1530376 m!1413297))

(assert (=> b!1530376 m!1413297))

(declare-fun m!1413327 () Bool)

(assert (=> b!1530376 m!1413327))

(assert (=> b!1530376 m!1413327))

(assert (=> b!1530376 m!1413297))

(declare-fun m!1413329 () Bool)

(assert (=> b!1530376 m!1413329))

(assert (=> b!1530372 m!1413297))

(assert (=> b!1530372 m!1413297))

(declare-fun m!1413331 () Bool)

(assert (=> b!1530372 m!1413331))

(push 1)

(assert (not start!130406))

(assert (not b!1530379))

(assert (not b!1530381))

(assert (not b!1530372))

(assert (not b!1530382))

(assert (not b!1530373))

(assert (not b!1530374))

(assert (not b!1530375))

(assert (not b!1530376))

(assert (not b!1530378))

(assert (not b!1530380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!159757 () Bool)

(declare-fun res!1048065 () Bool)

(declare-fun e!852813 () Bool)

(assert (=> d!159757 (=> res!1048065 e!852813)))

(assert (=> d!159757 (= res!1048065 (bvsge j!70 (size!49583 a!2804)))))

(assert (=> d!159757 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!852813)))

(declare-fun b!1530418 () Bool)

(declare-fun e!852814 () Bool)

(declare-fun call!68517 () Bool)

(assert (=> b!1530418 (= e!852814 call!68517)))

(declare-fun b!1530419 () Bool)

(declare-fun e!852815 () Bool)

(assert (=> b!1530419 (= e!852815 e!852814)))

(declare-fun lt!662781 () (_ BitVec 64))

(assert (=> b!1530419 (= lt!662781 (select (arr!49032 a!2804) j!70))))

(declare-fun lt!662780 () Unit!51176)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101626 (_ BitVec 64) (_ BitVec 32)) Unit!51176)

(assert (=> b!1530419 (= lt!662780 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662781 j!70))))

(declare-fun arrayContainsKey!0 (array!101626 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1530419 (arrayContainsKey!0 a!2804 lt!662781 #b00000000000000000000000000000000)))

(declare-fun lt!662782 () Unit!51176)

(assert (=> b!1530419 (= lt!662782 lt!662780)))

(declare-fun res!1048064 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101626 (_ BitVec 32)) SeekEntryResult!13218)

(assert (=> b!1530419 (= res!1048064 (= (seekEntryOrOpen!0 (select (arr!49032 a!2804) j!70) a!2804 mask!2512) (Found!13218 j!70)))))

(assert (=> b!1530419 (=> (not res!1048064) (not e!852814))))

(declare-fun b!1530420 () Bool)

(assert (=> b!1530420 (= e!852813 e!852815)))

(declare-fun c!140735 () Bool)

(assert (=> b!1530420 (= c!140735 (validKeyInArray!0 (select (arr!49032 a!2804) j!70)))))

(declare-fun b!1530421 () Bool)

(assert (=> b!1530421 (= e!852815 call!68517)))

(declare-fun bm!68514 () Bool)

(assert (=> bm!68514 (= call!68517 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!159757 (not res!1048065)) b!1530420))

(assert (= (and b!1530420 c!140735) b!1530419))

(assert (= (and b!1530420 (not c!140735)) b!1530421))

(assert (= (and b!1530419 res!1048064) b!1530418))

(assert (= (or b!1530418 b!1530421) bm!68514))

(assert (=> b!1530419 m!1413297))

(declare-fun m!1413355 () Bool)

(assert (=> b!1530419 m!1413355))

(declare-fun m!1413357 () Bool)

(assert (=> b!1530419 m!1413357))

(assert (=> b!1530419 m!1413297))

(declare-fun m!1413359 () Bool)

(assert (=> b!1530419 m!1413359))

(assert (=> b!1530420 m!1413297))

(assert (=> b!1530420 m!1413297))

(assert (=> b!1530420 m!1413331))

(declare-fun m!1413361 () Bool)

(assert (=> bm!68514 m!1413361))

(assert (=> b!1530382 d!159757))

(declare-fun d!159769 () Bool)

(assert (=> d!159769 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!662785 () Unit!51176)

(declare-fun choose!38 (array!101626 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51176)

(assert (=> d!159769 (= lt!662785 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159769 (validMask!0 mask!2512)))

(assert (=> d!159769 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!662785)))

(declare-fun bs!43875 () Bool)

(assert (= bs!43875 d!159769))

(assert (=> bs!43875 m!1413305))

(declare-fun m!1413363 () Bool)

(assert (=> bs!43875 m!1413363))

(assert (=> bs!43875 m!1413319))

(assert (=> b!1530382 d!159769))

(declare-fun d!159771 () Bool)

(declare-fun lt!662792 () (_ BitVec 32))

(assert (=> d!159771 (and (bvsge lt!662792 #b00000000000000000000000000000000) (bvslt lt!662792 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!159771 (= lt!662792 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!159771 (validMask!0 mask!2512)))

(assert (=> d!159771 (= (nextIndex!0 index!487 x!534 mask!2512) lt!662792)))

(declare-fun bs!43876 () Bool)

(assert (= bs!43876 d!159771))

(declare-fun m!1413365 () Bool)

(assert (=> bs!43876 m!1413365))

(assert (=> bs!43876 m!1413319))

(assert (=> b!1530381 d!159771))

(declare-fun b!1530507 () Bool)

(declare-fun e!852866 () Bool)

(declare-fun e!852865 () Bool)

(assert (=> b!1530507 (= e!852866 e!852865)))

(declare-fun res!1048098 () Bool)

(declare-fun lt!662826 () SeekEntryResult!13218)

(assert (=> b!1530507 (= res!1048098 (and (is-Intermediate!13218 lt!662826) (not (undefined!14030 lt!662826)) (bvslt (x!136957 lt!662826) #b01111111111111111111111111111110) (bvsge (x!136957 lt!662826) #b00000000000000000000000000000000) (bvsge (x!136957 lt!662826) #b00000000000000000000000000000000)))))

(assert (=> b!1530507 (=> (not res!1048098) (not e!852865))))

(declare-fun b!1530508 () Bool)

(declare-fun e!852864 () SeekEntryResult!13218)

(declare-fun e!852867 () SeekEntryResult!13218)

(assert (=> b!1530508 (= e!852864 e!852867)))

(declare-fun c!140766 () Bool)

(declare-fun lt!662825 () (_ BitVec 64))

(assert (=> b!1530508 (= c!140766 (or (= lt!662825 (select (arr!49032 a!2804) j!70)) (= (bvadd lt!662825 lt!662825) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1530509 () Bool)

(assert (=> b!1530509 (= e!852867 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!49032 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!49032 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159773 () Bool)

(assert (=> d!159773 e!852866))

(declare-fun c!140765 () Bool)

(assert (=> d!159773 (= c!140765 (and (is-Intermediate!13218 lt!662826) (undefined!14030 lt!662826)))))

(assert (=> d!159773 (= lt!662826 e!852864)))

(declare-fun c!140764 () Bool)

(assert (=> d!159773 (= c!140764 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159773 (= lt!662825 (select (arr!49032 a!2804) (toIndex!0 (select (arr!49032 a!2804) j!70) mask!2512)))))

(assert (=> d!159773 (validMask!0 mask!2512)))

(assert (=> d!159773 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49032 a!2804) j!70) mask!2512) (select (arr!49032 a!2804) j!70) a!2804 mask!2512) lt!662826)))

(declare-fun b!1530510 () Bool)

(assert (=> b!1530510 (and (bvsge (index!55268 lt!662826) #b00000000000000000000000000000000) (bvslt (index!55268 lt!662826) (size!49583 a!2804)))))

(declare-fun res!1048097 () Bool)

(assert (=> b!1530510 (= res!1048097 (= (select (arr!49032 a!2804) (index!55268 lt!662826)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!852868 () Bool)

(assert (=> b!1530510 (=> res!1048097 e!852868)))

(declare-fun b!1530511 () Bool)

(assert (=> b!1530511 (= e!852866 (bvsge (x!136957 lt!662826) #b01111111111111111111111111111110))))

(declare-fun b!1530512 () Bool)

(assert (=> b!1530512 (and (bvsge (index!55268 lt!662826) #b00000000000000000000000000000000) (bvslt (index!55268 lt!662826) (size!49583 a!2804)))))

(declare-fun res!1048099 () Bool)

(assert (=> b!1530512 (= res!1048099 (= (select (arr!49032 a!2804) (index!55268 lt!662826)) (select (arr!49032 a!2804) j!70)))))

(assert (=> b!1530512 (=> res!1048099 e!852868)))

(assert (=> b!1530512 (= e!852865 e!852868)))

(declare-fun b!1530513 () Bool)

(assert (=> b!1530513 (= e!852867 (Intermediate!13218 false (toIndex!0 (select (arr!49032 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530514 () Bool)

(assert (=> b!1530514 (= e!852864 (Intermediate!13218 true (toIndex!0 (select (arr!49032 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530515 () Bool)

(assert (=> b!1530515 (and (bvsge (index!55268 lt!662826) #b00000000000000000000000000000000) (bvslt (index!55268 lt!662826) (size!49583 a!2804)))))

(assert (=> b!1530515 (= e!852868 (= (select (arr!49032 a!2804) (index!55268 lt!662826)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159773 c!140764) b!1530514))

(assert (= (and d!159773 (not c!140764)) b!1530508))

(assert (= (and b!1530508 c!140766) b!1530513))

(assert (= (and b!1530508 (not c!140766)) b!1530509))

(assert (= (and d!159773 c!140765) b!1530511))

(assert (= (and d!159773 (not c!140765)) b!1530507))

(assert (= (and b!1530507 res!1048098) b!1530512))

(assert (= (and b!1530512 (not res!1048099)) b!1530510))

(assert (= (and b!1530510 (not res!1048097)) b!1530515))

(declare-fun m!1413399 () Bool)

(assert (=> b!1530515 m!1413399))

(assert (=> b!1530512 m!1413399))

(assert (=> b!1530509 m!1413327))

(declare-fun m!1413401 () Bool)

(assert (=> b!1530509 m!1413401))

(assert (=> b!1530509 m!1413401))

(assert (=> b!1530509 m!1413297))

(declare-fun m!1413403 () Bool)

(assert (=> b!1530509 m!1413403))

(assert (=> b!1530510 m!1413399))

(assert (=> d!159773 m!1413327))

(declare-fun m!1413405 () Bool)

(assert (=> d!159773 m!1413405))

(assert (=> d!159773 m!1413319))

(assert (=> b!1530376 d!159773))

(declare-fun d!159791 () Bool)

(declare-fun lt!662835 () (_ BitVec 32))

(declare-fun lt!662834 () (_ BitVec 32))

(assert (=> d!159791 (= lt!662835 (bvmul (bvxor lt!662834 (bvlshr lt!662834 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159791 (= lt!662834 ((_ extract 31 0) (bvand (bvxor (select (arr!49032 a!2804) j!70) (bvlshr (select (arr!49032 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159791 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048100 (let ((h!37134 ((_ extract 31 0) (bvand (bvxor (select (arr!49032 a!2804) j!70) (bvlshr (select (arr!49032 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136966 (bvmul (bvxor h!37134 (bvlshr h!37134 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136966 (bvlshr x!136966 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048100 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048100 #b00000000000000000000000000000000))))))

(assert (=> d!159791 (= (toIndex!0 (select (arr!49032 a!2804) j!70) mask!2512) (bvand (bvxor lt!662835 (bvlshr lt!662835 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530376 d!159791))

(declare-fun d!159795 () Bool)

(declare-fun res!1048116 () Bool)

(declare-fun e!852889 () Bool)

(assert (=> d!159795 (=> res!1048116 e!852889)))

(assert (=> d!159795 (= res!1048116 (bvsge #b00000000000000000000000000000000 (size!49583 a!2804)))))

(assert (=> d!159795 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35692) e!852889)))

(declare-fun b!1530541 () Bool)

(declare-fun e!852892 () Bool)

(assert (=> b!1530541 (= e!852889 e!852892)))

(declare-fun res!1048118 () Bool)

(assert (=> b!1530541 (=> (not res!1048118) (not e!852892))))

(declare-fun e!852891 () Bool)

(assert (=> b!1530541 (= res!1048118 (not e!852891))))

(declare-fun res!1048117 () Bool)

(assert (=> b!1530541 (=> (not res!1048117) (not e!852891))))

(assert (=> b!1530541 (= res!1048117 (validKeyInArray!0 (select (arr!49032 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1530542 () Bool)

(declare-fun e!852890 () Bool)

(declare-fun call!68524 () Bool)

(assert (=> b!1530542 (= e!852890 call!68524)))

(declare-fun b!1530543 () Bool)

(declare-fun contains!10014 (List!35695 (_ BitVec 64)) Bool)

(assert (=> b!1530543 (= e!852891 (contains!10014 Nil!35692 (select (arr!49032 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68521 () Bool)

(declare-fun c!140772 () Bool)

(assert (=> bm!68521 (= call!68524 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140772 (Cons!35691 (select (arr!49032 a!2804) #b00000000000000000000000000000000) Nil!35692) Nil!35692)))))

(declare-fun b!1530544 () Bool)

(assert (=> b!1530544 (= e!852890 call!68524)))

(declare-fun b!1530545 () Bool)

(assert (=> b!1530545 (= e!852892 e!852890)))

(assert (=> b!1530545 (= c!140772 (validKeyInArray!0 (select (arr!49032 a!2804) #b00000000000000000000000000000000)))))

(assert (= (and d!159795 (not res!1048116)) b!1530541))

(assert (= (and b!1530541 res!1048117) b!1530543))

(assert (= (and b!1530541 res!1048118) b!1530545))

(assert (= (and b!1530545 c!140772) b!1530544))

(assert (= (and b!1530545 (not c!140772)) b!1530542))

(assert (= (or b!1530544 b!1530542) bm!68521))

(declare-fun m!1413413 () Bool)

(assert (=> b!1530541 m!1413413))

(assert (=> b!1530541 m!1413413))

(declare-fun m!1413415 () Bool)

(assert (=> b!1530541 m!1413415))

(assert (=> b!1530543 m!1413413))

(assert (=> b!1530543 m!1413413))

(declare-fun m!1413417 () Bool)

(assert (=> b!1530543 m!1413417))

(assert (=> bm!68521 m!1413413))

(declare-fun m!1413419 () Bool)

(assert (=> bm!68521 m!1413419))

(assert (=> b!1530545 m!1413413))

(assert (=> b!1530545 m!1413413))

(assert (=> b!1530545 m!1413415))

(assert (=> b!1530378 d!159795))

(declare-fun d!159803 () Bool)

(assert (=> d!159803 (= (validKeyInArray!0 (select (arr!49032 a!2804) j!70)) (and (not (= (select (arr!49032 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49032 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530372 d!159803))

(declare-fun d!159805 () Bool)

(assert (=> d!159805 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130406 d!159805))

(declare-fun d!159817 () Bool)

(assert (=> d!159817 (= (array_inv!37977 a!2804) (bvsge (size!49583 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130406 d!159817))

(declare-fun d!159821 () Bool)

(declare-fun lt!662892 () SeekEntryResult!13218)

(assert (=> d!159821 (and (or (is-MissingVacant!13218 lt!662892) (not (is-Found!13218 lt!662892)) (and (bvsge (index!55267 lt!662892) #b00000000000000000000000000000000) (bvslt (index!55267 lt!662892) (size!49583 a!2804)))) (not (is-MissingVacant!13218 lt!662892)) (or (not (is-Found!13218 lt!662892)) (= (select (arr!49032 a!2804) (index!55267 lt!662892)) (select (arr!49032 a!2804) j!70))))))

(declare-fun e!852943 () SeekEntryResult!13218)

(assert (=> d!159821 (= lt!662892 e!852943)))

(declare-fun c!140807 () Bool)

(declare-fun lt!662890 () SeekEntryResult!13218)

(assert (=> d!159821 (= c!140807 (and (is-Intermediate!13218 lt!662890) (undefined!14030 lt!662890)))))

(assert (=> d!159821 (= lt!662890 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49032 a!2804) j!70) mask!2512) (select (arr!49032 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159821 (validMask!0 mask!2512)))

(assert (=> d!159821 (= (seekEntry!0 (select (arr!49032 a!2804) j!70) a!2804 mask!2512) lt!662892)))

(declare-fun b!1530631 () Bool)

(declare-fun e!852942 () SeekEntryResult!13218)

(assert (=> b!1530631 (= e!852942 (MissingZero!13218 (index!55268 lt!662890)))))

(declare-fun b!1530632 () Bool)

(declare-fun e!852941 () SeekEntryResult!13218)

(assert (=> b!1530632 (= e!852943 e!852941)))

(declare-fun lt!662889 () (_ BitVec 64))

(assert (=> b!1530632 (= lt!662889 (select (arr!49032 a!2804) (index!55268 lt!662890)))))

(declare-fun c!140808 () Bool)

(assert (=> b!1530632 (= c!140808 (= lt!662889 (select (arr!49032 a!2804) j!70)))))

(declare-fun b!1530633 () Bool)

(declare-fun lt!662891 () SeekEntryResult!13218)

(assert (=> b!1530633 (= e!852942 (ite (is-MissingVacant!13218 lt!662891) (MissingZero!13218 (index!55269 lt!662891)) lt!662891))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101626 (_ BitVec 32)) SeekEntryResult!13218)

(assert (=> b!1530633 (= lt!662891 (seekKeyOrZeroReturnVacant!0 (x!136957 lt!662890) (index!55268 lt!662890) (index!55268 lt!662890) (select (arr!49032 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530634 () Bool)

(assert (=> b!1530634 (= e!852941 (Found!13218 (index!55268 lt!662890)))))

(declare-fun b!1530635 () Bool)

(assert (=> b!1530635 (= e!852943 Undefined!13218)))

(declare-fun b!1530636 () Bool)

(declare-fun c!140809 () Bool)

(assert (=> b!1530636 (= c!140809 (= lt!662889 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1530636 (= e!852941 e!852942)))

(assert (= (and d!159821 c!140807) b!1530635))

(assert (= (and d!159821 (not c!140807)) b!1530632))

(assert (= (and b!1530632 c!140808) b!1530634))

(assert (= (and b!1530632 (not c!140808)) b!1530636))

(assert (= (and b!1530636 c!140809) b!1530631))

(assert (= (and b!1530636 (not c!140809)) b!1530633))

(declare-fun m!1413467 () Bool)

(assert (=> d!159821 m!1413467))

(assert (=> d!159821 m!1413297))

(assert (=> d!159821 m!1413327))

(assert (=> d!159821 m!1413327))

(assert (=> d!159821 m!1413297))

(assert (=> d!159821 m!1413329))

(assert (=> d!159821 m!1413319))

(declare-fun m!1413469 () Bool)

(assert (=> b!1530632 m!1413469))

(assert (=> b!1530633 m!1413297))

(declare-fun m!1413471 () Bool)

(assert (=> b!1530633 m!1413471))

(assert (=> b!1530379 d!159821))

(declare-fun d!159829 () Bool)

(declare-fun res!1048137 () Bool)

(declare-fun e!852944 () Bool)

(assert (=> d!159829 (=> res!1048137 e!852944)))

(assert (=> d!159829 (= res!1048137 (bvsge #b00000000000000000000000000000000 (size!49583 a!2804)))))

(assert (=> d!159829 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!852944)))

(declare-fun b!1530637 () Bool)

(declare-fun e!852945 () Bool)

(declare-fun call!68529 () Bool)

(assert (=> b!1530637 (= e!852945 call!68529)))

(declare-fun b!1530638 () Bool)

(declare-fun e!852946 () Bool)

(assert (=> b!1530638 (= e!852946 e!852945)))

(declare-fun lt!662894 () (_ BitVec 64))

(assert (=> b!1530638 (= lt!662894 (select (arr!49032 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!662893 () Unit!51176)

(assert (=> b!1530638 (= lt!662893 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662894 #b00000000000000000000000000000000))))

(assert (=> b!1530638 (arrayContainsKey!0 a!2804 lt!662894 #b00000000000000000000000000000000)))

(declare-fun lt!662895 () Unit!51176)

(assert (=> b!1530638 (= lt!662895 lt!662893)))

(declare-fun res!1048136 () Bool)

(assert (=> b!1530638 (= res!1048136 (= (seekEntryOrOpen!0 (select (arr!49032 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13218 #b00000000000000000000000000000000)))))

(assert (=> b!1530638 (=> (not res!1048136) (not e!852945))))

(declare-fun b!1530639 () Bool)

(assert (=> b!1530639 (= e!852944 e!852946)))

(declare-fun c!140810 () Bool)

(assert (=> b!1530639 (= c!140810 (validKeyInArray!0 (select (arr!49032 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1530640 () Bool)

(assert (=> b!1530640 (= e!852946 call!68529)))

(declare-fun bm!68526 () Bool)

(assert (=> bm!68526 (= call!68529 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!159829 (not res!1048137)) b!1530639))

(assert (= (and b!1530639 c!140810) b!1530638))

(assert (= (and b!1530639 (not c!140810)) b!1530640))

(assert (= (and b!1530638 res!1048136) b!1530637))

(assert (= (or b!1530637 b!1530640) bm!68526))

(assert (=> b!1530638 m!1413413))

(declare-fun m!1413473 () Bool)

(assert (=> b!1530638 m!1413473))

(declare-fun m!1413475 () Bool)

(assert (=> b!1530638 m!1413475))

(assert (=> b!1530638 m!1413413))

(declare-fun m!1413477 () Bool)

(assert (=> b!1530638 m!1413477))

(assert (=> b!1530639 m!1413413))

(assert (=> b!1530639 m!1413413))

(assert (=> b!1530639 m!1413415))

(declare-fun m!1413479 () Bool)

(assert (=> bm!68526 m!1413479))

(assert (=> b!1530374 d!159829))

(declare-fun d!159831 () Bool)

(assert (=> d!159831 (= (validKeyInArray!0 (select (arr!49032 a!2804) i!961)) (and (not (= (select (arr!49032 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49032 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530373 d!159831))

(declare-fun b!1530647 () Bool)

(declare-fun e!852952 () Bool)

(declare-fun e!852951 () Bool)

(assert (=> b!1530647 (= e!852952 e!852951)))

(declare-fun res!1048139 () Bool)

(declare-fun lt!662901 () SeekEntryResult!13218)

(assert (=> b!1530647 (= res!1048139 (and (is-Intermediate!13218 lt!662901) (not (undefined!14030 lt!662901)) (bvslt (x!136957 lt!662901) #b01111111111111111111111111111110) (bvsge (x!136957 lt!662901) #b00000000000000000000000000000000) (bvsge (x!136957 lt!662901) x!534)))))

(assert (=> b!1530647 (=> (not res!1048139) (not e!852951))))

(declare-fun b!1530648 () Bool)

(declare-fun e!852950 () SeekEntryResult!13218)

(declare-fun e!852953 () SeekEntryResult!13218)

(assert (=> b!1530648 (= e!852950 e!852953)))

(declare-fun lt!662900 () (_ BitVec 64))

(declare-fun c!140816 () Bool)

(assert (=> b!1530648 (= c!140816 (or (= lt!662900 (select (arr!49032 a!2804) j!70)) (= (bvadd lt!662900 lt!662900) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1530649 () Bool)

(assert (=> b!1530649 (= e!852953 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!49032 a!2804) j!70) a!2804 mask!2512))))

(declare-fun d!159833 () Bool)

(assert (=> d!159833 e!852952))

(declare-fun c!140815 () Bool)

(assert (=> d!159833 (= c!140815 (and (is-Intermediate!13218 lt!662901) (undefined!14030 lt!662901)))))

(assert (=> d!159833 (= lt!662901 e!852950)))

(declare-fun c!140814 () Bool)

(assert (=> d!159833 (= c!140814 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159833 (= lt!662900 (select (arr!49032 a!2804) index!487))))

(assert (=> d!159833 (validMask!0 mask!2512)))

(assert (=> d!159833 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49032 a!2804) j!70) a!2804 mask!2512) lt!662901)))

(declare-fun b!1530650 () Bool)

(assert (=> b!1530650 (and (bvsge (index!55268 lt!662901) #b00000000000000000000000000000000) (bvslt (index!55268 lt!662901) (size!49583 a!2804)))))

(declare-fun res!1048138 () Bool)

(assert (=> b!1530650 (= res!1048138 (= (select (arr!49032 a!2804) (index!55268 lt!662901)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!852954 () Bool)

(assert (=> b!1530650 (=> res!1048138 e!852954)))

(declare-fun b!1530651 () Bool)

(assert (=> b!1530651 (= e!852952 (bvsge (x!136957 lt!662901) #b01111111111111111111111111111110))))

(declare-fun b!1530652 () Bool)

(assert (=> b!1530652 (and (bvsge (index!55268 lt!662901) #b00000000000000000000000000000000) (bvslt (index!55268 lt!662901) (size!49583 a!2804)))))

(declare-fun res!1048140 () Bool)

(assert (=> b!1530652 (= res!1048140 (= (select (arr!49032 a!2804) (index!55268 lt!662901)) (select (arr!49032 a!2804) j!70)))))

(assert (=> b!1530652 (=> res!1048140 e!852954)))

(assert (=> b!1530652 (= e!852951 e!852954)))

(declare-fun b!1530653 () Bool)

(assert (=> b!1530653 (= e!852953 (Intermediate!13218 false index!487 x!534))))

(declare-fun b!1530654 () Bool)

(assert (=> b!1530654 (= e!852950 (Intermediate!13218 true index!487 x!534))))

(declare-fun b!1530655 () Bool)

(assert (=> b!1530655 (and (bvsge (index!55268 lt!662901) #b00000000000000000000000000000000) (bvslt (index!55268 lt!662901) (size!49583 a!2804)))))

(assert (=> b!1530655 (= e!852954 (= (select (arr!49032 a!2804) (index!55268 lt!662901)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159833 c!140814) b!1530654))

(assert (= (and d!159833 (not c!140814)) b!1530648))

(assert (= (and b!1530648 c!140816) b!1530653))

(assert (= (and b!1530648 (not c!140816)) b!1530649))

(assert (= (and d!159833 c!140815) b!1530651))

(assert (= (and d!159833 (not c!140815)) b!1530647))

(assert (= (and b!1530647 res!1048139) b!1530652))

(assert (= (and b!1530652 (not res!1048140)) b!1530650))

(assert (= (and b!1530650 (not res!1048138)) b!1530655))

(declare-fun m!1413487 () Bool)

(assert (=> b!1530655 m!1413487))

(assert (=> b!1530652 m!1413487))

(assert (=> b!1530649 m!1413313))

(assert (=> b!1530649 m!1413313))

(assert (=> b!1530649 m!1413297))

(declare-fun m!1413489 () Bool)

(assert (=> b!1530649 m!1413489))

(assert (=> b!1530650 m!1413487))

(declare-fun m!1413491 () Bool)

(assert (=> d!159833 m!1413491))

(assert (=> d!159833 m!1413319))

(assert (=> b!1530375 d!159833))

(declare-fun b!1530656 () Bool)

(declare-fun e!852957 () Bool)

(declare-fun e!852956 () Bool)

(assert (=> b!1530656 (= e!852957 e!852956)))

(declare-fun res!1048142 () Bool)

(declare-fun lt!662903 () SeekEntryResult!13218)

(assert (=> b!1530656 (= res!1048142 (and (is-Intermediate!13218 lt!662903) (not (undefined!14030 lt!662903)) (bvslt (x!136957 lt!662903) #b01111111111111111111111111111110) (bvsge (x!136957 lt!662903) #b00000000000000000000000000000000) (bvsge (x!136957 lt!662903) #b00000000000000000000000000000000)))))

(assert (=> b!1530656 (=> (not res!1048142) (not e!852956))))

(declare-fun b!1530657 () Bool)

(declare-fun e!852955 () SeekEntryResult!13218)

(declare-fun e!852958 () SeekEntryResult!13218)

(assert (=> b!1530657 (= e!852955 e!852958)))

(declare-fun lt!662902 () (_ BitVec 64))

(declare-fun c!140819 () Bool)

(assert (=> b!1530657 (= c!140819 (or (= lt!662902 (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!662902 lt!662902) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1530658 () Bool)

(assert (=> b!1530658 (= e!852958 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101627 (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49583 a!2804)) mask!2512))))

(declare-fun d!159835 () Bool)

(assert (=> d!159835 e!852957))

(declare-fun c!140818 () Bool)

(assert (=> d!159835 (= c!140818 (and (is-Intermediate!13218 lt!662903) (undefined!14030 lt!662903)))))

(assert (=> d!159835 (= lt!662903 e!852955)))

(declare-fun c!140817 () Bool)

(assert (=> d!159835 (= c!140817 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159835 (= lt!662902 (select (arr!49032 (array!101627 (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49583 a!2804))) (toIndex!0 (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159835 (validMask!0 mask!2512)))

(assert (=> d!159835 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101627 (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49583 a!2804)) mask!2512) lt!662903)))

(declare-fun b!1530659 () Bool)

(assert (=> b!1530659 (and (bvsge (index!55268 lt!662903) #b00000000000000000000000000000000) (bvslt (index!55268 lt!662903) (size!49583 (array!101627 (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49583 a!2804)))))))

(declare-fun res!1048141 () Bool)

(assert (=> b!1530659 (= res!1048141 (= (select (arr!49032 (array!101627 (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49583 a!2804))) (index!55268 lt!662903)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!852959 () Bool)

(assert (=> b!1530659 (=> res!1048141 e!852959)))

(declare-fun b!1530660 () Bool)

(assert (=> b!1530660 (= e!852957 (bvsge (x!136957 lt!662903) #b01111111111111111111111111111110))))

(declare-fun b!1530661 () Bool)

(assert (=> b!1530661 (and (bvsge (index!55268 lt!662903) #b00000000000000000000000000000000) (bvslt (index!55268 lt!662903) (size!49583 (array!101627 (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49583 a!2804)))))))

(declare-fun res!1048143 () Bool)

(assert (=> b!1530661 (= res!1048143 (= (select (arr!49032 (array!101627 (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49583 a!2804))) (index!55268 lt!662903)) (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(assert (=> b!1530661 (=> res!1048143 e!852959)))

(assert (=> b!1530661 (= e!852956 e!852959)))

(declare-fun b!1530662 () Bool)

(assert (=> b!1530662 (= e!852958 (Intermediate!13218 false (toIndex!0 (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530663 () Bool)

(assert (=> b!1530663 (= e!852955 (Intermediate!13218 true (toIndex!0 (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530664 () Bool)

(assert (=> b!1530664 (and (bvsge (index!55268 lt!662903) #b00000000000000000000000000000000) (bvslt (index!55268 lt!662903) (size!49583 (array!101627 (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49583 a!2804)))))))

(assert (=> b!1530664 (= e!852959 (= (select (arr!49032 (array!101627 (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49583 a!2804))) (index!55268 lt!662903)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!159835 c!140817) b!1530663))

(assert (= (and d!159835 (not c!140817)) b!1530657))

(assert (= (and b!1530657 c!140819) b!1530662))

(assert (= (and b!1530657 (not c!140819)) b!1530658))

(assert (= (and d!159835 c!140818) b!1530660))

(assert (= (and d!159835 (not c!140818)) b!1530656))

(assert (= (and b!1530656 res!1048142) b!1530661))

(assert (= (and b!1530661 (not res!1048143)) b!1530659))

(assert (= (and b!1530659 (not res!1048141)) b!1530664))

(declare-fun m!1413493 () Bool)

(assert (=> b!1530664 m!1413493))

(assert (=> b!1530661 m!1413493))

(assert (=> b!1530658 m!1413307))

(declare-fun m!1413495 () Bool)

(assert (=> b!1530658 m!1413495))

(assert (=> b!1530658 m!1413495))

(assert (=> b!1530658 m!1413303))

(declare-fun m!1413497 () Bool)

(assert (=> b!1530658 m!1413497))

(assert (=> b!1530659 m!1413493))

(assert (=> d!159835 m!1413307))

(declare-fun m!1413499 () Bool)

(assert (=> d!159835 m!1413499))

(assert (=> d!159835 m!1413319))

(assert (=> b!1530380 d!159835))

(declare-fun d!159837 () Bool)

(declare-fun lt!662905 () (_ BitVec 32))

(declare-fun lt!662904 () (_ BitVec 32))

(assert (=> d!159837 (= lt!662905 (bvmul (bvxor lt!662904 (bvlshr lt!662904 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159837 (= lt!662904 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159837 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048100 (let ((h!37134 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136966 (bvmul (bvxor h!37134 (bvlshr h!37134 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136966 (bvlshr x!136966 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048100 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048100 #b00000000000000000000000000000000))))))

(assert (=> d!159837 (= (toIndex!0 (select (store (arr!49032 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!662905 (bvlshr lt!662905 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530380 d!159837))

(push 1)

