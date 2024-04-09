; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123838 () Bool)

(assert start!123838)

(declare-fun b!1434712 () Bool)

(declare-fun res!968064 () Bool)

(declare-fun e!809777 () Bool)

(assert (=> b!1434712 (=> (not res!968064) (not e!809777))))

(declare-datatypes ((array!97557 0))(
  ( (array!97558 (arr!47077 (Array (_ BitVec 32) (_ BitVec 64))) (size!47628 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97557)

(declare-datatypes ((List!33767 0))(
  ( (Nil!33764) (Cons!33763 (h!35095 (_ BitVec 64)) (t!48468 List!33767)) )
))
(declare-fun arrayNoDuplicates!0 (array!97557 (_ BitVec 32) List!33767) Bool)

(assert (=> b!1434712 (= res!968064 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33764))))

(declare-fun b!1434713 () Bool)

(declare-fun res!968077 () Bool)

(assert (=> b!1434713 (=> (not res!968077) (not e!809777))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1434713 (= res!968077 (validKeyInArray!0 (select (arr!47077 a!2831) j!81)))))

(declare-fun e!809771 () Bool)

(declare-fun lt!631557 () array!97557)

(declare-fun lt!631561 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!631556 () (_ BitVec 64))

(declare-fun b!1434714 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11378 0))(
  ( (MissingZero!11378 (index!47903 (_ BitVec 32))) (Found!11378 (index!47904 (_ BitVec 32))) (Intermediate!11378 (undefined!12190 Bool) (index!47905 (_ BitVec 32)) (x!129570 (_ BitVec 32))) (Undefined!11378) (MissingVacant!11378 (index!47906 (_ BitVec 32))) )
))
(declare-fun lt!631559 () SeekEntryResult!11378)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97557 (_ BitVec 32)) SeekEntryResult!11378)

(assert (=> b!1434714 (= e!809771 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631561 lt!631556 lt!631557 mask!2608) lt!631559))))

(declare-fun b!1434715 () Bool)

(declare-fun res!968071 () Bool)

(declare-fun e!809773 () Bool)

(assert (=> b!1434715 (=> (not res!968071) (not e!809773))))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1434715 (= res!968071 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631556 lt!631557 mask!2608) lt!631559))))

(declare-fun b!1434716 () Bool)

(declare-fun res!968079 () Bool)

(assert (=> b!1434716 (=> (not res!968079) (not e!809777))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1434716 (= res!968079 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47628 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47628 a!2831))))))

(declare-fun b!1434717 () Bool)

(declare-fun e!809772 () Bool)

(assert (=> b!1434717 (= e!809772 e!809771)))

(declare-fun res!968068 () Bool)

(assert (=> b!1434717 (=> res!968068 e!809771)))

(assert (=> b!1434717 (= res!968068 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631561 #b00000000000000000000000000000000) (bvsge lt!631561 (size!47628 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434717 (= lt!631561 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1434718 () Bool)

(assert (=> b!1434718 (= e!809773 (not e!809772))))

(declare-fun res!968073 () Bool)

(assert (=> b!1434718 (=> res!968073 e!809772)))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1434718 (= res!968073 (or (= (select (arr!47077 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47077 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47077 a!2831) index!585) (select (arr!47077 a!2831) j!81)) (= (select (store (arr!47077 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!809775 () Bool)

(assert (=> b!1434718 e!809775))

(declare-fun res!968065 () Bool)

(assert (=> b!1434718 (=> (not res!968065) (not e!809775))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97557 (_ BitVec 32)) Bool)

(assert (=> b!1434718 (= res!968065 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48450 0))(
  ( (Unit!48451) )
))
(declare-fun lt!631560 () Unit!48450)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97557 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48450)

(assert (=> b!1434718 (= lt!631560 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1434719 () Bool)

(declare-fun res!968066 () Bool)

(assert (=> b!1434719 (=> res!968066 e!809771)))

(declare-fun lt!631558 () SeekEntryResult!11378)

(assert (=> b!1434719 (= res!968066 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631561 (select (arr!47077 a!2831) j!81) a!2831 mask!2608) lt!631558)))))

(declare-fun b!1434720 () Bool)

(declare-fun e!809774 () Bool)

(assert (=> b!1434720 (= e!809777 e!809774)))

(declare-fun res!968076 () Bool)

(assert (=> b!1434720 (=> (not res!968076) (not e!809774))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434720 (= res!968076 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47077 a!2831) j!81) mask!2608) (select (arr!47077 a!2831) j!81) a!2831 mask!2608) lt!631558))))

(assert (=> b!1434720 (= lt!631558 (Intermediate!11378 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1434721 () Bool)

(declare-fun res!968075 () Bool)

(assert (=> b!1434721 (=> (not res!968075) (not e!809777))))

(assert (=> b!1434721 (= res!968075 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!968067 () Bool)

(assert (=> start!123838 (=> (not res!968067) (not e!809777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123838 (= res!968067 (validMask!0 mask!2608))))

(assert (=> start!123838 e!809777))

(assert (=> start!123838 true))

(declare-fun array_inv!36022 (array!97557) Bool)

(assert (=> start!123838 (array_inv!36022 a!2831)))

(declare-fun b!1434722 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97557 (_ BitVec 32)) SeekEntryResult!11378)

(assert (=> b!1434722 (= e!809775 (= (seekEntryOrOpen!0 (select (arr!47077 a!2831) j!81) a!2831 mask!2608) (Found!11378 j!81)))))

(declare-fun b!1434723 () Bool)

(assert (=> b!1434723 (= e!809774 e!809773)))

(declare-fun res!968074 () Bool)

(assert (=> b!1434723 (=> (not res!968074) (not e!809773))))

(assert (=> b!1434723 (= res!968074 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631556 mask!2608) lt!631556 lt!631557 mask!2608) lt!631559))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1434723 (= lt!631559 (Intermediate!11378 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1434723 (= lt!631556 (select (store (arr!47077 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1434723 (= lt!631557 (array!97558 (store (arr!47077 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47628 a!2831)))))

(declare-fun b!1434724 () Bool)

(declare-fun res!968078 () Bool)

(assert (=> b!1434724 (=> (not res!968078) (not e!809773))))

(assert (=> b!1434724 (= res!968078 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1434725 () Bool)

(declare-fun res!968069 () Bool)

(assert (=> b!1434725 (=> (not res!968069) (not e!809777))))

(assert (=> b!1434725 (= res!968069 (validKeyInArray!0 (select (arr!47077 a!2831) i!982)))))

(declare-fun b!1434726 () Bool)

(declare-fun res!968070 () Bool)

(assert (=> b!1434726 (=> (not res!968070) (not e!809773))))

(assert (=> b!1434726 (= res!968070 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47077 a!2831) j!81) a!2831 mask!2608) lt!631558))))

(declare-fun b!1434727 () Bool)

(declare-fun res!968072 () Bool)

(assert (=> b!1434727 (=> (not res!968072) (not e!809777))))

(assert (=> b!1434727 (= res!968072 (and (= (size!47628 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47628 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47628 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!123838 res!968067) b!1434727))

(assert (= (and b!1434727 res!968072) b!1434725))

(assert (= (and b!1434725 res!968069) b!1434713))

(assert (= (and b!1434713 res!968077) b!1434721))

(assert (= (and b!1434721 res!968075) b!1434712))

(assert (= (and b!1434712 res!968064) b!1434716))

(assert (= (and b!1434716 res!968079) b!1434720))

(assert (= (and b!1434720 res!968076) b!1434723))

(assert (= (and b!1434723 res!968074) b!1434726))

(assert (= (and b!1434726 res!968070) b!1434715))

(assert (= (and b!1434715 res!968071) b!1434724))

(assert (= (and b!1434724 res!968078) b!1434718))

(assert (= (and b!1434718 res!968065) b!1434722))

(assert (= (and b!1434718 (not res!968073)) b!1434717))

(assert (= (and b!1434717 (not res!968068)) b!1434719))

(assert (= (and b!1434719 (not res!968066)) b!1434714))

(declare-fun m!1324265 () Bool)

(assert (=> b!1434717 m!1324265))

(declare-fun m!1324267 () Bool)

(assert (=> b!1434723 m!1324267))

(assert (=> b!1434723 m!1324267))

(declare-fun m!1324269 () Bool)

(assert (=> b!1434723 m!1324269))

(declare-fun m!1324271 () Bool)

(assert (=> b!1434723 m!1324271))

(declare-fun m!1324273 () Bool)

(assert (=> b!1434723 m!1324273))

(declare-fun m!1324275 () Bool)

(assert (=> b!1434713 m!1324275))

(assert (=> b!1434713 m!1324275))

(declare-fun m!1324277 () Bool)

(assert (=> b!1434713 m!1324277))

(declare-fun m!1324279 () Bool)

(assert (=> b!1434712 m!1324279))

(declare-fun m!1324281 () Bool)

(assert (=> b!1434714 m!1324281))

(assert (=> b!1434718 m!1324271))

(declare-fun m!1324283 () Bool)

(assert (=> b!1434718 m!1324283))

(declare-fun m!1324285 () Bool)

(assert (=> b!1434718 m!1324285))

(declare-fun m!1324287 () Bool)

(assert (=> b!1434718 m!1324287))

(assert (=> b!1434718 m!1324275))

(declare-fun m!1324289 () Bool)

(assert (=> b!1434718 m!1324289))

(declare-fun m!1324291 () Bool)

(assert (=> b!1434715 m!1324291))

(assert (=> b!1434726 m!1324275))

(assert (=> b!1434726 m!1324275))

(declare-fun m!1324293 () Bool)

(assert (=> b!1434726 m!1324293))

(assert (=> b!1434719 m!1324275))

(assert (=> b!1434719 m!1324275))

(declare-fun m!1324295 () Bool)

(assert (=> b!1434719 m!1324295))

(assert (=> b!1434722 m!1324275))

(assert (=> b!1434722 m!1324275))

(declare-fun m!1324297 () Bool)

(assert (=> b!1434722 m!1324297))

(declare-fun m!1324299 () Bool)

(assert (=> b!1434721 m!1324299))

(declare-fun m!1324301 () Bool)

(assert (=> start!123838 m!1324301))

(declare-fun m!1324303 () Bool)

(assert (=> start!123838 m!1324303))

(assert (=> b!1434720 m!1324275))

(assert (=> b!1434720 m!1324275))

(declare-fun m!1324305 () Bool)

(assert (=> b!1434720 m!1324305))

(assert (=> b!1434720 m!1324305))

(assert (=> b!1434720 m!1324275))

(declare-fun m!1324307 () Bool)

(assert (=> b!1434720 m!1324307))

(declare-fun m!1324309 () Bool)

(assert (=> b!1434725 m!1324309))

(assert (=> b!1434725 m!1324309))

(declare-fun m!1324311 () Bool)

(assert (=> b!1434725 m!1324311))

(push 1)

(assert (not b!1434717))

(assert (not b!1434723))

(assert (not b!1434718))

(assert (not b!1434721))

(assert (not b!1434720))

(assert (not b!1434714))

(assert (not b!1434722))

(assert (not b!1434726))

(assert (not b!1434715))

(assert (not b!1434719))

(assert (not start!123838))

(assert (not b!1434713))

(assert (not b!1434725))

(assert (not b!1434712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!67542 () Bool)

(declare-fun call!67545 () Bool)

(assert (=> bm!67542 (= call!67545 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun d!154231 () Bool)

(declare-fun res!968202 () Bool)

(declare-fun e!809862 () Bool)

(assert (=> d!154231 (=> res!968202 e!809862)))

(assert (=> d!154231 (= res!968202 (bvsge #b00000000000000000000000000000000 (size!47628 a!2831)))))

(assert (=> d!154231 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!809862)))

(declare-fun b!1434889 () Bool)

(declare-fun e!809861 () Bool)

(assert (=> b!1434889 (= e!809861 call!67545)))

(declare-fun b!1434890 () Bool)

(declare-fun e!809860 () Bool)

(assert (=> b!1434890 (= e!809860 e!809861)))

(declare-fun lt!631634 () (_ BitVec 64))

(assert (=> b!1434890 (= lt!631634 (select (arr!47077 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!631633 () Unit!48450)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97557 (_ BitVec 64) (_ BitVec 32)) Unit!48450)

(assert (=> b!1434890 (= lt!631633 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631634 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97557 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1434890 (arrayContainsKey!0 a!2831 lt!631634 #b00000000000000000000000000000000)))

(declare-fun lt!631632 () Unit!48450)

(assert (=> b!1434890 (= lt!631632 lt!631633)))

(declare-fun res!968203 () Bool)

(assert (=> b!1434890 (= res!968203 (= (seekEntryOrOpen!0 (select (arr!47077 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11378 #b00000000000000000000000000000000)))))

(assert (=> b!1434890 (=> (not res!968203) (not e!809861))))

(declare-fun b!1434891 () Bool)

(assert (=> b!1434891 (= e!809860 call!67545)))

(declare-fun b!1434892 () Bool)

(assert (=> b!1434892 (= e!809862 e!809860)))

(declare-fun c!132848 () Bool)

(assert (=> b!1434892 (= c!132848 (validKeyInArray!0 (select (arr!47077 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!154231 (not res!968202)) b!1434892))

(assert (= (and b!1434892 c!132848) b!1434890))

(assert (= (and b!1434892 (not c!132848)) b!1434891))

(assert (= (and b!1434890 res!968203) b!1434889))

(assert (= (or b!1434889 b!1434891) bm!67542))

(declare-fun m!1324439 () Bool)

(assert (=> bm!67542 m!1324439))

(declare-fun m!1324441 () Bool)

(assert (=> b!1434890 m!1324441))

(declare-fun m!1324443 () Bool)

(assert (=> b!1434890 m!1324443))

(declare-fun m!1324445 () Bool)

(assert (=> b!1434890 m!1324445))

(assert (=> b!1434890 m!1324441))

(declare-fun m!1324447 () Bool)

(assert (=> b!1434890 m!1324447))

(assert (=> b!1434892 m!1324441))

(assert (=> b!1434892 m!1324441))

(declare-fun m!1324449 () Bool)

(assert (=> b!1434892 m!1324449))

(assert (=> b!1434721 d!154231))

(declare-fun b!1434959 () Bool)

(declare-fun e!809904 () SeekEntryResult!11378)

(declare-fun e!809902 () SeekEntryResult!11378)

(assert (=> b!1434959 (= e!809904 e!809902)))

(declare-fun lt!631653 () (_ BitVec 64))

(declare-fun lt!631654 () SeekEntryResult!11378)

(assert (=> b!1434959 (= lt!631653 (select (arr!47077 a!2831) (index!47905 lt!631654)))))

(declare-fun c!132873 () Bool)

(assert (=> b!1434959 (= c!132873 (= lt!631653 (select (arr!47077 a!2831) j!81)))))

(declare-fun b!1434960 () Bool)

(assert (=> b!1434960 (= e!809902 (Found!11378 (index!47905 lt!631654)))))

(declare-fun e!809903 () SeekEntryResult!11378)

(declare-fun b!1434961 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97557 (_ BitVec 32)) SeekEntryResult!11378)

(assert (=> b!1434961 (= e!809903 (seekKeyOrZeroReturnVacant!0 (x!129570 lt!631654) (index!47905 lt!631654) (index!47905 lt!631654) (select (arr!47077 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1434962 () Bool)

(declare-fun c!132874 () Bool)

(assert (=> b!1434962 (= c!132874 (= lt!631653 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1434962 (= e!809902 e!809903)))

(declare-fun d!154241 () Bool)

(declare-fun lt!631655 () SeekEntryResult!11378)

(assert (=> d!154241 (and (or (is-Undefined!11378 lt!631655) (not (is-Found!11378 lt!631655)) (and (bvsge (index!47904 lt!631655) #b00000000000000000000000000000000) (bvslt (index!47904 lt!631655) (size!47628 a!2831)))) (or (is-Undefined!11378 lt!631655) (is-Found!11378 lt!631655) (not (is-MissingZero!11378 lt!631655)) (and (bvsge (index!47903 lt!631655) #b00000000000000000000000000000000) (bvslt (index!47903 lt!631655) (size!47628 a!2831)))) (or (is-Undefined!11378 lt!631655) (is-Found!11378 lt!631655) (is-MissingZero!11378 lt!631655) (not (is-MissingVacant!11378 lt!631655)) (and (bvsge (index!47906 lt!631655) #b00000000000000000000000000000000) (bvslt (index!47906 lt!631655) (size!47628 a!2831)))) (or (is-Undefined!11378 lt!631655) (ite (is-Found!11378 lt!631655) (= (select (arr!47077 a!2831) (index!47904 lt!631655)) (select (arr!47077 a!2831) j!81)) (ite (is-MissingZero!11378 lt!631655) (= (select (arr!47077 a!2831) (index!47903 lt!631655)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11378 lt!631655) (= (select (arr!47077 a!2831) (index!47906 lt!631655)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!154241 (= lt!631655 e!809904)))

(declare-fun c!132875 () Bool)

(assert (=> d!154241 (= c!132875 (and (is-Intermediate!11378 lt!631654) (undefined!12190 lt!631654)))))

(assert (=> d!154241 (= lt!631654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47077 a!2831) j!81) mask!2608) (select (arr!47077 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!154241 (validMask!0 mask!2608)))

(assert (=> d!154241 (= (seekEntryOrOpen!0 (select (arr!47077 a!2831) j!81) a!2831 mask!2608) lt!631655)))

(declare-fun b!1434963 () Bool)

(assert (=> b!1434963 (= e!809903 (MissingZero!11378 (index!47905 lt!631654)))))

(declare-fun b!1434964 () Bool)

(assert (=> b!1434964 (= e!809904 Undefined!11378)))

(assert (= (and d!154241 c!132875) b!1434964))

(assert (= (and d!154241 (not c!132875)) b!1434959))

(assert (= (and b!1434959 c!132873) b!1434960))

(assert (= (and b!1434959 (not c!132873)) b!1434962))

(assert (= (and b!1434962 c!132874) b!1434963))

(assert (= (and b!1434962 (not c!132874)) b!1434961))

(declare-fun m!1324463 () Bool)

(assert (=> b!1434959 m!1324463))

(assert (=> b!1434961 m!1324275))

(declare-fun m!1324465 () Bool)

(assert (=> b!1434961 m!1324465))

(assert (=> d!154241 m!1324275))

(assert (=> d!154241 m!1324305))

(assert (=> d!154241 m!1324305))

(assert (=> d!154241 m!1324275))

(assert (=> d!154241 m!1324307))

(declare-fun m!1324467 () Bool)

(assert (=> d!154241 m!1324467))

(declare-fun m!1324469 () Bool)

(assert (=> d!154241 m!1324469))

(declare-fun m!1324471 () Bool)

(assert (=> d!154241 m!1324471))

(assert (=> d!154241 m!1324301))

(assert (=> b!1434722 d!154241))

(declare-fun d!154247 () Bool)

(assert (=> d!154247 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123838 d!154247))

(declare-fun d!154265 () Bool)

(assert (=> d!154265 (= (array_inv!36022 a!2831) (bvsge (size!47628 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123838 d!154265))

(declare-fun b!1435060 () Bool)

(declare-fun lt!631699 () SeekEntryResult!11378)

(assert (=> b!1435060 (and (bvsge (index!47905 lt!631699) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631699) (size!47628 a!2831)))))

(declare-fun e!809966 () Bool)

(assert (=> b!1435060 (= e!809966 (= (select (arr!47077 a!2831) (index!47905 lt!631699)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!809965 () SeekEntryResult!11378)

(declare-fun b!1435061 () Bool)

(assert (=> b!1435061 (= e!809965 (Intermediate!11378 false (toIndex!0 (select (arr!47077 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1435062 () Bool)

(declare-fun e!809967 () SeekEntryResult!11378)

(assert (=> b!1435062 (= e!809967 e!809965)))

(declare-fun lt!631700 () (_ BitVec 64))

(declare-fun c!132906 () Bool)

(assert (=> b!1435062 (= c!132906 (or (= lt!631700 (select (arr!47077 a!2831) j!81)) (= (bvadd lt!631700 lt!631700) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1435063 () Bool)

(declare-fun e!809964 () Bool)

(declare-fun e!809963 () Bool)

(assert (=> b!1435063 (= e!809964 e!809963)))

(declare-fun res!968260 () Bool)

(assert (=> b!1435063 (= res!968260 (and (is-Intermediate!11378 lt!631699) (not (undefined!12190 lt!631699)) (bvslt (x!129570 lt!631699) #b01111111111111111111111111111110) (bvsge (x!129570 lt!631699) #b00000000000000000000000000000000) (bvsge (x!129570 lt!631699) #b00000000000000000000000000000000)))))

(assert (=> b!1435063 (=> (not res!968260) (not e!809963))))

(declare-fun b!1435064 () Bool)

(assert (=> b!1435064 (= e!809967 (Intermediate!11378 true (toIndex!0 (select (arr!47077 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1435065 () Bool)

(assert (=> b!1435065 (= e!809965 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47077 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47077 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1435066 () Bool)

(assert (=> b!1435066 (and (bvsge (index!47905 lt!631699) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631699) (size!47628 a!2831)))))

(declare-fun res!968259 () Bool)

(assert (=> b!1435066 (= res!968259 (= (select (arr!47077 a!2831) (index!47905 lt!631699)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1435066 (=> res!968259 e!809966)))

(declare-fun b!1435067 () Bool)

(assert (=> b!1435067 (and (bvsge (index!47905 lt!631699) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631699) (size!47628 a!2831)))))

(declare-fun res!968258 () Bool)

(assert (=> b!1435067 (= res!968258 (= (select (arr!47077 a!2831) (index!47905 lt!631699)) (select (arr!47077 a!2831) j!81)))))

(assert (=> b!1435067 (=> res!968258 e!809966)))

(assert (=> b!1435067 (= e!809963 e!809966)))

(declare-fun d!154267 () Bool)

(assert (=> d!154267 e!809964))

(declare-fun c!132907 () Bool)

(assert (=> d!154267 (= c!132907 (and (is-Intermediate!11378 lt!631699) (undefined!12190 lt!631699)))))

(assert (=> d!154267 (= lt!631699 e!809967)))

(declare-fun c!132908 () Bool)

(assert (=> d!154267 (= c!132908 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154267 (= lt!631700 (select (arr!47077 a!2831) (toIndex!0 (select (arr!47077 a!2831) j!81) mask!2608)))))

(assert (=> d!154267 (validMask!0 mask!2608)))

(assert (=> d!154267 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47077 a!2831) j!81) mask!2608) (select (arr!47077 a!2831) j!81) a!2831 mask!2608) lt!631699)))

(declare-fun b!1435068 () Bool)

(assert (=> b!1435068 (= e!809964 (bvsge (x!129570 lt!631699) #b01111111111111111111111111111110))))

(assert (= (and d!154267 c!132908) b!1435064))

(assert (= (and d!154267 (not c!132908)) b!1435062))

(assert (= (and b!1435062 c!132906) b!1435061))

(assert (= (and b!1435062 (not c!132906)) b!1435065))

(assert (= (and d!154267 c!132907) b!1435068))

(assert (= (and d!154267 (not c!132907)) b!1435063))

(assert (= (and b!1435063 res!968260) b!1435067))

(assert (= (and b!1435067 (not res!968258)) b!1435066))

(assert (= (and b!1435066 (not res!968259)) b!1435060))

(declare-fun m!1324541 () Bool)

(assert (=> b!1435067 m!1324541))

(assert (=> d!154267 m!1324305))

(declare-fun m!1324543 () Bool)

(assert (=> d!154267 m!1324543))

(assert (=> d!154267 m!1324301))

(assert (=> b!1435066 m!1324541))

(assert (=> b!1435065 m!1324305))

(declare-fun m!1324545 () Bool)

(assert (=> b!1435065 m!1324545))

(assert (=> b!1435065 m!1324545))

(assert (=> b!1435065 m!1324275))

(declare-fun m!1324547 () Bool)

(assert (=> b!1435065 m!1324547))

(assert (=> b!1435060 m!1324541))

(assert (=> b!1434720 d!154267))

(declare-fun d!154291 () Bool)

(declare-fun lt!631710 () (_ BitVec 32))

(declare-fun lt!631709 () (_ BitVec 32))

(assert (=> d!154291 (= lt!631710 (bvmul (bvxor lt!631709 (bvlshr lt!631709 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154291 (= lt!631709 ((_ extract 31 0) (bvand (bvxor (select (arr!47077 a!2831) j!81) (bvlshr (select (arr!47077 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154291 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!968261 (let ((h!35100 ((_ extract 31 0) (bvand (bvxor (select (arr!47077 a!2831) j!81) (bvlshr (select (arr!47077 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129580 (bvmul (bvxor h!35100 (bvlshr h!35100 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129580 (bvlshr x!129580 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!968261 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!968261 #b00000000000000000000000000000000))))))

(assert (=> d!154291 (= (toIndex!0 (select (arr!47077 a!2831) j!81) mask!2608) (bvand (bvxor lt!631710 (bvlshr lt!631710 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1434720 d!154291))

(declare-fun b!1435092 () Bool)

(declare-fun lt!631711 () SeekEntryResult!11378)

(assert (=> b!1435092 (and (bvsge (index!47905 lt!631711) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631711) (size!47628 a!2831)))))

(declare-fun e!809985 () Bool)

(assert (=> b!1435092 (= e!809985 (= (select (arr!47077 a!2831) (index!47905 lt!631711)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1435093 () Bool)

(declare-fun e!809984 () SeekEntryResult!11378)

(assert (=> b!1435093 (= e!809984 (Intermediate!11378 false lt!631561 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1435094 () Bool)

(declare-fun e!809986 () SeekEntryResult!11378)

(assert (=> b!1435094 (= e!809986 e!809984)))

(declare-fun c!132916 () Bool)

(declare-fun lt!631712 () (_ BitVec 64))

(assert (=> b!1435094 (= c!132916 (or (= lt!631712 (select (arr!47077 a!2831) j!81)) (= (bvadd lt!631712 lt!631712) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1435095 () Bool)

(declare-fun e!809983 () Bool)

(declare-fun e!809982 () Bool)

(assert (=> b!1435095 (= e!809983 e!809982)))

(declare-fun res!968273 () Bool)

(assert (=> b!1435095 (= res!968273 (and (is-Intermediate!11378 lt!631711) (not (undefined!12190 lt!631711)) (bvslt (x!129570 lt!631711) #b01111111111111111111111111111110) (bvsge (x!129570 lt!631711) #b00000000000000000000000000000000) (bvsge (x!129570 lt!631711) (bvadd #b00000000000000000000000000000001 x!605))))))

(assert (=> b!1435095 (=> (not res!968273) (not e!809982))))

(declare-fun b!1435096 () Bool)

(assert (=> b!1435096 (= e!809986 (Intermediate!11378 true lt!631561 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1435097 () Bool)

(assert (=> b!1435097 (= e!809984 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605 #b00000000000000000000000000000001) (nextIndex!0 lt!631561 (bvadd #b00000000000000000000000000000001 x!605) mask!2608) (select (arr!47077 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1435098 () Bool)

(assert (=> b!1435098 (and (bvsge (index!47905 lt!631711) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631711) (size!47628 a!2831)))))

(declare-fun res!968272 () Bool)

(assert (=> b!1435098 (= res!968272 (= (select (arr!47077 a!2831) (index!47905 lt!631711)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1435098 (=> res!968272 e!809985)))

(declare-fun b!1435099 () Bool)

(assert (=> b!1435099 (and (bvsge (index!47905 lt!631711) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631711) (size!47628 a!2831)))))

(declare-fun res!968271 () Bool)

(assert (=> b!1435099 (= res!968271 (= (select (arr!47077 a!2831) (index!47905 lt!631711)) (select (arr!47077 a!2831) j!81)))))

(assert (=> b!1435099 (=> res!968271 e!809985)))

(assert (=> b!1435099 (= e!809982 e!809985)))

(declare-fun d!154297 () Bool)

(assert (=> d!154297 e!809983))

(declare-fun c!132917 () Bool)

(assert (=> d!154297 (= c!132917 (and (is-Intermediate!11378 lt!631711) (undefined!12190 lt!631711)))))

(assert (=> d!154297 (= lt!631711 e!809986)))

(declare-fun c!132918 () Bool)

(assert (=> d!154297 (= c!132918 (bvsge (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110))))

(assert (=> d!154297 (= lt!631712 (select (arr!47077 a!2831) lt!631561))))

(assert (=> d!154297 (validMask!0 mask!2608)))

(assert (=> d!154297 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631561 (select (arr!47077 a!2831) j!81) a!2831 mask!2608) lt!631711)))

(declare-fun b!1435100 () Bool)

(assert (=> b!1435100 (= e!809983 (bvsge (x!129570 lt!631711) #b01111111111111111111111111111110))))

(assert (= (and d!154297 c!132918) b!1435096))

(assert (= (and d!154297 (not c!132918)) b!1435094))

(assert (= (and b!1435094 c!132916) b!1435093))

(assert (= (and b!1435094 (not c!132916)) b!1435097))

(assert (= (and d!154297 c!132917) b!1435100))

(assert (= (and d!154297 (not c!132917)) b!1435095))

(assert (= (and b!1435095 res!968273) b!1435099))

(assert (= (and b!1435099 (not res!968271)) b!1435098))

(assert (= (and b!1435098 (not res!968272)) b!1435092))

(declare-fun m!1324565 () Bool)

(assert (=> b!1435099 m!1324565))

(declare-fun m!1324567 () Bool)

(assert (=> d!154297 m!1324567))

(assert (=> d!154297 m!1324301))

(assert (=> b!1435098 m!1324565))

(declare-fun m!1324569 () Bool)

(assert (=> b!1435097 m!1324569))

(assert (=> b!1435097 m!1324569))

(assert (=> b!1435097 m!1324275))

(declare-fun m!1324571 () Bool)

(assert (=> b!1435097 m!1324571))

(assert (=> b!1435092 m!1324565))

(assert (=> b!1434719 d!154297))

(declare-fun d!154301 () Bool)

(declare-fun lt!631715 () (_ BitVec 32))

(assert (=> d!154301 (and (bvsge lt!631715 #b00000000000000000000000000000000) (bvslt lt!631715 (bvadd mask!2608 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!154301 (= lt!631715 (choose!52 index!585 x!605 mask!2608))))

(assert (=> d!154301 (validMask!0 mask!2608)))

(assert (=> d!154301 (= (nextIndex!0 index!585 x!605 mask!2608) lt!631715)))

(declare-fun bs!41768 () Bool)

(assert (= bs!41768 d!154301))

(declare-fun m!1324573 () Bool)

(assert (=> bs!41768 m!1324573))

(assert (=> bs!41768 m!1324301))

(assert (=> b!1434717 d!154301))

(declare-fun call!67556 () Bool)

(declare-fun bm!67553 () Bool)

(assert (=> bm!67553 (= call!67556 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun d!154303 () Bool)

(declare-fun res!968274 () Bool)

(declare-fun e!809989 () Bool)

(assert (=> d!154303 (=> res!968274 e!809989)))

(assert (=> d!154303 (= res!968274 (bvsge j!81 (size!47628 a!2831)))))

(assert (=> d!154303 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!809989)))

(declare-fun b!1435101 () Bool)

(declare-fun e!809988 () Bool)

(assert (=> b!1435101 (= e!809988 call!67556)))

(declare-fun b!1435102 () Bool)

(declare-fun e!809987 () Bool)

(assert (=> b!1435102 (= e!809987 e!809988)))

(declare-fun lt!631718 () (_ BitVec 64))

(assert (=> b!1435102 (= lt!631718 (select (arr!47077 a!2831) j!81))))

(declare-fun lt!631717 () Unit!48450)

(assert (=> b!1435102 (= lt!631717 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!631718 j!81))))

(assert (=> b!1435102 (arrayContainsKey!0 a!2831 lt!631718 #b00000000000000000000000000000000)))

(declare-fun lt!631716 () Unit!48450)

(assert (=> b!1435102 (= lt!631716 lt!631717)))

(declare-fun res!968275 () Bool)

(assert (=> b!1435102 (= res!968275 (= (seekEntryOrOpen!0 (select (arr!47077 a!2831) j!81) a!2831 mask!2608) (Found!11378 j!81)))))

(assert (=> b!1435102 (=> (not res!968275) (not e!809988))))

(declare-fun b!1435103 () Bool)

(assert (=> b!1435103 (= e!809987 call!67556)))

(declare-fun b!1435104 () Bool)

(assert (=> b!1435104 (= e!809989 e!809987)))

(declare-fun c!132919 () Bool)

(assert (=> b!1435104 (= c!132919 (validKeyInArray!0 (select (arr!47077 a!2831) j!81)))))

(assert (= (and d!154303 (not res!968274)) b!1435104))

(assert (= (and b!1435104 c!132919) b!1435102))

(assert (= (and b!1435104 (not c!132919)) b!1435103))

(assert (= (and b!1435102 res!968275) b!1435101))

(assert (= (or b!1435101 b!1435103) bm!67553))

(declare-fun m!1324575 () Bool)

(assert (=> bm!67553 m!1324575))

(assert (=> b!1435102 m!1324275))

(declare-fun m!1324577 () Bool)

(assert (=> b!1435102 m!1324577))

(declare-fun m!1324579 () Bool)

(assert (=> b!1435102 m!1324579))

(assert (=> b!1435102 m!1324275))

(assert (=> b!1435102 m!1324297))

(assert (=> b!1435104 m!1324275))

(assert (=> b!1435104 m!1324275))

(assert (=> b!1435104 m!1324277))

(assert (=> b!1434718 d!154303))

(declare-fun d!154305 () Bool)

(assert (=> d!154305 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!631721 () Unit!48450)

(declare-fun choose!38 (array!97557 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48450)

(assert (=> d!154305 (= lt!631721 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!154305 (validMask!0 mask!2608)))

(assert (=> d!154305 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!631721)))

(declare-fun bs!41769 () Bool)

(assert (= bs!41769 d!154305))

(assert (=> bs!41769 m!1324287))

(declare-fun m!1324581 () Bool)

(assert (=> bs!41769 m!1324581))

(assert (=> bs!41769 m!1324301))

(assert (=> b!1434718 d!154305))

(declare-fun d!154307 () Bool)

(assert (=> d!154307 (= (validKeyInArray!0 (select (arr!47077 a!2831) i!982)) (and (not (= (select (arr!47077 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47077 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434725 d!154307))

(declare-fun b!1435105 () Bool)

(declare-fun lt!631722 () SeekEntryResult!11378)

(assert (=> b!1435105 (and (bvsge (index!47905 lt!631722) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631722) (size!47628 a!2831)))))

(declare-fun e!809993 () Bool)

(assert (=> b!1435105 (= e!809993 (= (select (arr!47077 a!2831) (index!47905 lt!631722)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1435106 () Bool)

(declare-fun e!809992 () SeekEntryResult!11378)

(assert (=> b!1435106 (= e!809992 (Intermediate!11378 false index!585 x!605))))

(declare-fun b!1435107 () Bool)

(declare-fun e!809994 () SeekEntryResult!11378)

(assert (=> b!1435107 (= e!809994 e!809992)))

(declare-fun lt!631723 () (_ BitVec 64))

(declare-fun c!132920 () Bool)

(assert (=> b!1435107 (= c!132920 (or (= lt!631723 (select (arr!47077 a!2831) j!81)) (= (bvadd lt!631723 lt!631723) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1435108 () Bool)

(declare-fun e!809991 () Bool)

(declare-fun e!809990 () Bool)

(assert (=> b!1435108 (= e!809991 e!809990)))

(declare-fun res!968278 () Bool)

(assert (=> b!1435108 (= res!968278 (and (is-Intermediate!11378 lt!631722) (not (undefined!12190 lt!631722)) (bvslt (x!129570 lt!631722) #b01111111111111111111111111111110) (bvsge (x!129570 lt!631722) #b00000000000000000000000000000000) (bvsge (x!129570 lt!631722) x!605)))))

(assert (=> b!1435108 (=> (not res!968278) (not e!809990))))

(declare-fun b!1435109 () Bool)

(assert (=> b!1435109 (= e!809994 (Intermediate!11378 true index!585 x!605))))

(declare-fun b!1435110 () Bool)

(assert (=> b!1435110 (= e!809992 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47077 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1435111 () Bool)

(assert (=> b!1435111 (and (bvsge (index!47905 lt!631722) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631722) (size!47628 a!2831)))))

(declare-fun res!968277 () Bool)

(assert (=> b!1435111 (= res!968277 (= (select (arr!47077 a!2831) (index!47905 lt!631722)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1435111 (=> res!968277 e!809993)))

(declare-fun b!1435112 () Bool)

(assert (=> b!1435112 (and (bvsge (index!47905 lt!631722) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631722) (size!47628 a!2831)))))

(declare-fun res!968276 () Bool)

(assert (=> b!1435112 (= res!968276 (= (select (arr!47077 a!2831) (index!47905 lt!631722)) (select (arr!47077 a!2831) j!81)))))

(assert (=> b!1435112 (=> res!968276 e!809993)))

(assert (=> b!1435112 (= e!809990 e!809993)))

(declare-fun d!154309 () Bool)

(assert (=> d!154309 e!809991))

(declare-fun c!132921 () Bool)

(assert (=> d!154309 (= c!132921 (and (is-Intermediate!11378 lt!631722) (undefined!12190 lt!631722)))))

(assert (=> d!154309 (= lt!631722 e!809994)))

(declare-fun c!132922 () Bool)

(assert (=> d!154309 (= c!132922 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154309 (= lt!631723 (select (arr!47077 a!2831) index!585))))

(assert (=> d!154309 (validMask!0 mask!2608)))

(assert (=> d!154309 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47077 a!2831) j!81) a!2831 mask!2608) lt!631722)))

(declare-fun b!1435113 () Bool)

(assert (=> b!1435113 (= e!809991 (bvsge (x!129570 lt!631722) #b01111111111111111111111111111110))))

(assert (= (and d!154309 c!132922) b!1435109))

(assert (= (and d!154309 (not c!132922)) b!1435107))

(assert (= (and b!1435107 c!132920) b!1435106))

(assert (= (and b!1435107 (not c!132920)) b!1435110))

(assert (= (and d!154309 c!132921) b!1435113))

(assert (= (and d!154309 (not c!132921)) b!1435108))

(assert (= (and b!1435108 res!968278) b!1435112))

(assert (= (and b!1435112 (not res!968276)) b!1435111))

(assert (= (and b!1435111 (not res!968277)) b!1435105))

(declare-fun m!1324583 () Bool)

(assert (=> b!1435112 m!1324583))

(assert (=> d!154309 m!1324285))

(assert (=> d!154309 m!1324301))

(assert (=> b!1435111 m!1324583))

(assert (=> b!1435110 m!1324265))

(assert (=> b!1435110 m!1324265))

(assert (=> b!1435110 m!1324275))

(declare-fun m!1324585 () Bool)

(assert (=> b!1435110 m!1324585))

(assert (=> b!1435105 m!1324583))

(assert (=> b!1434726 d!154309))

(declare-fun b!1435114 () Bool)

(declare-fun lt!631724 () SeekEntryResult!11378)

(assert (=> b!1435114 (and (bvsge (index!47905 lt!631724) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631724) (size!47628 lt!631557)))))

(declare-fun e!809998 () Bool)

(assert (=> b!1435114 (= e!809998 (= (select (arr!47077 lt!631557) (index!47905 lt!631724)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1435115 () Bool)

(declare-fun e!809997 () SeekEntryResult!11378)

(assert (=> b!1435115 (= e!809997 (Intermediate!11378 false index!585 x!605))))

(declare-fun b!1435116 () Bool)

(declare-fun e!809999 () SeekEntryResult!11378)

(assert (=> b!1435116 (= e!809999 e!809997)))

(declare-fun c!132923 () Bool)

(declare-fun lt!631725 () (_ BitVec 64))

(assert (=> b!1435116 (= c!132923 (or (= lt!631725 lt!631556) (= (bvadd lt!631725 lt!631725) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1435117 () Bool)

(declare-fun e!809996 () Bool)

(declare-fun e!809995 () Bool)

(assert (=> b!1435117 (= e!809996 e!809995)))

(declare-fun res!968281 () Bool)

(assert (=> b!1435117 (= res!968281 (and (is-Intermediate!11378 lt!631724) (not (undefined!12190 lt!631724)) (bvslt (x!129570 lt!631724) #b01111111111111111111111111111110) (bvsge (x!129570 lt!631724) #b00000000000000000000000000000000) (bvsge (x!129570 lt!631724) x!605)))))

(assert (=> b!1435117 (=> (not res!968281) (not e!809995))))

(declare-fun b!1435118 () Bool)

(assert (=> b!1435118 (= e!809999 (Intermediate!11378 true index!585 x!605))))

(declare-fun b!1435119 () Bool)

(assert (=> b!1435119 (= e!809997 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!631556 lt!631557 mask!2608))))

(declare-fun b!1435120 () Bool)

(assert (=> b!1435120 (and (bvsge (index!47905 lt!631724) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631724) (size!47628 lt!631557)))))

(declare-fun res!968280 () Bool)

(assert (=> b!1435120 (= res!968280 (= (select (arr!47077 lt!631557) (index!47905 lt!631724)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1435120 (=> res!968280 e!809998)))

(declare-fun b!1435121 () Bool)

(assert (=> b!1435121 (and (bvsge (index!47905 lt!631724) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631724) (size!47628 lt!631557)))))

(declare-fun res!968279 () Bool)

(assert (=> b!1435121 (= res!968279 (= (select (arr!47077 lt!631557) (index!47905 lt!631724)) lt!631556))))

(assert (=> b!1435121 (=> res!968279 e!809998)))

(assert (=> b!1435121 (= e!809995 e!809998)))

(declare-fun d!154311 () Bool)

(assert (=> d!154311 e!809996))

(declare-fun c!132924 () Bool)

(assert (=> d!154311 (= c!132924 (and (is-Intermediate!11378 lt!631724) (undefined!12190 lt!631724)))))

(assert (=> d!154311 (= lt!631724 e!809999)))

(declare-fun c!132925 () Bool)

(assert (=> d!154311 (= c!132925 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!154311 (= lt!631725 (select (arr!47077 lt!631557) index!585))))

(assert (=> d!154311 (validMask!0 mask!2608)))

(assert (=> d!154311 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631556 lt!631557 mask!2608) lt!631724)))

(declare-fun b!1435122 () Bool)

(assert (=> b!1435122 (= e!809996 (bvsge (x!129570 lt!631724) #b01111111111111111111111111111110))))

(assert (= (and d!154311 c!132925) b!1435118))

(assert (= (and d!154311 (not c!132925)) b!1435116))

(assert (= (and b!1435116 c!132923) b!1435115))

(assert (= (and b!1435116 (not c!132923)) b!1435119))

(assert (= (and d!154311 c!132924) b!1435122))

(assert (= (and d!154311 (not c!132924)) b!1435117))

(assert (= (and b!1435117 res!968281) b!1435121))

(assert (= (and b!1435121 (not res!968279)) b!1435120))

(assert (= (and b!1435120 (not res!968280)) b!1435114))

(declare-fun m!1324587 () Bool)

(assert (=> b!1435121 m!1324587))

(declare-fun m!1324589 () Bool)

(assert (=> d!154311 m!1324589))

(assert (=> d!154311 m!1324301))

(assert (=> b!1435120 m!1324587))

(assert (=> b!1435119 m!1324265))

(assert (=> b!1435119 m!1324265))

(declare-fun m!1324591 () Bool)

(assert (=> b!1435119 m!1324591))

(assert (=> b!1435114 m!1324587))

(assert (=> b!1434715 d!154311))

(declare-fun d!154313 () Bool)

(assert (=> d!154313 (= (validKeyInArray!0 (select (arr!47077 a!2831) j!81)) (and (not (= (select (arr!47077 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47077 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1434713 d!154313))

(declare-fun b!1435123 () Bool)

(declare-fun lt!631726 () SeekEntryResult!11378)

(assert (=> b!1435123 (and (bvsge (index!47905 lt!631726) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631726) (size!47628 lt!631557)))))

(declare-fun e!810003 () Bool)

(assert (=> b!1435123 (= e!810003 (= (select (arr!47077 lt!631557) (index!47905 lt!631726)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1435124 () Bool)

(declare-fun e!810002 () SeekEntryResult!11378)

(assert (=> b!1435124 (= e!810002 (Intermediate!11378 false lt!631561 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1435125 () Bool)

(declare-fun e!810004 () SeekEntryResult!11378)

(assert (=> b!1435125 (= e!810004 e!810002)))

(declare-fun c!132926 () Bool)

(declare-fun lt!631727 () (_ BitVec 64))

(assert (=> b!1435125 (= c!132926 (or (= lt!631727 lt!631556) (= (bvadd lt!631727 lt!631727) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1435126 () Bool)

(declare-fun e!810001 () Bool)

(declare-fun e!810000 () Bool)

(assert (=> b!1435126 (= e!810001 e!810000)))

(declare-fun res!968284 () Bool)

(assert (=> b!1435126 (= res!968284 (and (is-Intermediate!11378 lt!631726) (not (undefined!12190 lt!631726)) (bvslt (x!129570 lt!631726) #b01111111111111111111111111111110) (bvsge (x!129570 lt!631726) #b00000000000000000000000000000000) (bvsge (x!129570 lt!631726) (bvadd #b00000000000000000000000000000001 x!605))))))

(assert (=> b!1435126 (=> (not res!968284) (not e!810000))))

(declare-fun b!1435127 () Bool)

(assert (=> b!1435127 (= e!810004 (Intermediate!11378 true lt!631561 (bvadd #b00000000000000000000000000000001 x!605)))))

(declare-fun b!1435128 () Bool)

(assert (=> b!1435128 (= e!810002 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605 #b00000000000000000000000000000001) (nextIndex!0 lt!631561 (bvadd #b00000000000000000000000000000001 x!605) mask!2608) lt!631556 lt!631557 mask!2608))))

(declare-fun b!1435129 () Bool)

(assert (=> b!1435129 (and (bvsge (index!47905 lt!631726) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631726) (size!47628 lt!631557)))))

(declare-fun res!968283 () Bool)

(assert (=> b!1435129 (= res!968283 (= (select (arr!47077 lt!631557) (index!47905 lt!631726)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1435129 (=> res!968283 e!810003)))

(declare-fun b!1435130 () Bool)

(assert (=> b!1435130 (and (bvsge (index!47905 lt!631726) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631726) (size!47628 lt!631557)))))

(declare-fun res!968282 () Bool)

(assert (=> b!1435130 (= res!968282 (= (select (arr!47077 lt!631557) (index!47905 lt!631726)) lt!631556))))

(assert (=> b!1435130 (=> res!968282 e!810003)))

(assert (=> b!1435130 (= e!810000 e!810003)))

(declare-fun d!154315 () Bool)

(assert (=> d!154315 e!810001))

(declare-fun c!132927 () Bool)

(assert (=> d!154315 (= c!132927 (and (is-Intermediate!11378 lt!631726) (undefined!12190 lt!631726)))))

(assert (=> d!154315 (= lt!631726 e!810004)))

(declare-fun c!132928 () Bool)

(assert (=> d!154315 (= c!132928 (bvsge (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110))))

(assert (=> d!154315 (= lt!631727 (select (arr!47077 lt!631557) lt!631561))))

(assert (=> d!154315 (validMask!0 mask!2608)))

(assert (=> d!154315 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631561 lt!631556 lt!631557 mask!2608) lt!631726)))

(declare-fun b!1435131 () Bool)

(assert (=> b!1435131 (= e!810001 (bvsge (x!129570 lt!631726) #b01111111111111111111111111111110))))

(assert (= (and d!154315 c!132928) b!1435127))

(assert (= (and d!154315 (not c!132928)) b!1435125))

(assert (= (and b!1435125 c!132926) b!1435124))

(assert (= (and b!1435125 (not c!132926)) b!1435128))

(assert (= (and d!154315 c!132927) b!1435131))

(assert (= (and d!154315 (not c!132927)) b!1435126))

(assert (= (and b!1435126 res!968284) b!1435130))

(assert (= (and b!1435130 (not res!968282)) b!1435129))

(assert (= (and b!1435129 (not res!968283)) b!1435123))

(declare-fun m!1324593 () Bool)

(assert (=> b!1435130 m!1324593))

(declare-fun m!1324595 () Bool)

(assert (=> d!154315 m!1324595))

(assert (=> d!154315 m!1324301))

(assert (=> b!1435129 m!1324593))

(assert (=> b!1435128 m!1324569))

(assert (=> b!1435128 m!1324569))

(declare-fun m!1324597 () Bool)

(assert (=> b!1435128 m!1324597))

(assert (=> b!1435123 m!1324593))

(assert (=> b!1434714 d!154315))

(declare-fun bm!67556 () Bool)

(declare-fun call!67559 () Bool)

(declare-fun c!132937 () Bool)

(assert (=> bm!67556 (= call!67559 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132937 (Cons!33763 (select (arr!47077 a!2831) #b00000000000000000000000000000000) Nil!33764) Nil!33764)))))

(declare-fun b!1435154 () Bool)

(declare-fun e!810020 () Bool)

(declare-fun e!810022 () Bool)

(assert (=> b!1435154 (= e!810020 e!810022)))

(assert (=> b!1435154 (= c!132937 (validKeyInArray!0 (select (arr!47077 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1435155 () Bool)

(assert (=> b!1435155 (= e!810022 call!67559)))

(declare-fun b!1435156 () Bool)

(declare-fun e!810019 () Bool)

(declare-fun contains!9887 (List!33767 (_ BitVec 64)) Bool)

(assert (=> b!1435156 (= e!810019 (contains!9887 Nil!33764 (select (arr!47077 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1435157 () Bool)

(assert (=> b!1435157 (= e!810022 call!67559)))

(declare-fun b!1435158 () Bool)

(declare-fun e!810021 () Bool)

(assert (=> b!1435158 (= e!810021 e!810020)))

(declare-fun res!968292 () Bool)

(assert (=> b!1435158 (=> (not res!968292) (not e!810020))))

(assert (=> b!1435158 (= res!968292 (not e!810019))))

(declare-fun res!968293 () Bool)

(assert (=> b!1435158 (=> (not res!968293) (not e!810019))))

(assert (=> b!1435158 (= res!968293 (validKeyInArray!0 (select (arr!47077 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!154317 () Bool)

(declare-fun res!968291 () Bool)

(assert (=> d!154317 (=> res!968291 e!810021)))

(assert (=> d!154317 (= res!968291 (bvsge #b00000000000000000000000000000000 (size!47628 a!2831)))))

(assert (=> d!154317 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33764) e!810021)))

(assert (= (and d!154317 (not res!968291)) b!1435158))

(assert (= (and b!1435158 res!968293) b!1435156))

(assert (= (and b!1435158 res!968292) b!1435154))

(assert (= (and b!1435154 c!132937) b!1435155))

(assert (= (and b!1435154 (not c!132937)) b!1435157))

(assert (= (or b!1435155 b!1435157) bm!67556))

(assert (=> bm!67556 m!1324441))

(declare-fun m!1324599 () Bool)

(assert (=> bm!67556 m!1324599))

(assert (=> b!1435154 m!1324441))

(assert (=> b!1435154 m!1324441))

(assert (=> b!1435154 m!1324449))

(assert (=> b!1435156 m!1324441))

(assert (=> b!1435156 m!1324441))

(declare-fun m!1324601 () Bool)

(assert (=> b!1435156 m!1324601))

(assert (=> b!1435158 m!1324441))

(assert (=> b!1435158 m!1324441))

(assert (=> b!1435158 m!1324449))

(assert (=> b!1434712 d!154317))

(declare-fun b!1435159 () Bool)

(declare-fun lt!631734 () SeekEntryResult!11378)

(assert (=> b!1435159 (and (bvsge (index!47905 lt!631734) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631734) (size!47628 lt!631557)))))

(declare-fun e!810026 () Bool)

(assert (=> b!1435159 (= e!810026 (= (select (arr!47077 lt!631557) (index!47905 lt!631734)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1435160 () Bool)

(declare-fun e!810025 () SeekEntryResult!11378)

(assert (=> b!1435160 (= e!810025 (Intermediate!11378 false (toIndex!0 lt!631556 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1435161 () Bool)

(declare-fun e!810027 () SeekEntryResult!11378)

(assert (=> b!1435161 (= e!810027 e!810025)))

(declare-fun c!132938 () Bool)

(declare-fun lt!631735 () (_ BitVec 64))

(assert (=> b!1435161 (= c!132938 (or (= lt!631735 lt!631556) (= (bvadd lt!631735 lt!631735) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1435162 () Bool)

(declare-fun e!810024 () Bool)

(declare-fun e!810023 () Bool)

(assert (=> b!1435162 (= e!810024 e!810023)))

(declare-fun res!968296 () Bool)

(assert (=> b!1435162 (= res!968296 (and (is-Intermediate!11378 lt!631734) (not (undefined!12190 lt!631734)) (bvslt (x!129570 lt!631734) #b01111111111111111111111111111110) (bvsge (x!129570 lt!631734) #b00000000000000000000000000000000) (bvsge (x!129570 lt!631734) #b00000000000000000000000000000000)))))

(assert (=> b!1435162 (=> (not res!968296) (not e!810023))))

(declare-fun b!1435163 () Bool)

(assert (=> b!1435163 (= e!810027 (Intermediate!11378 true (toIndex!0 lt!631556 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1435164 () Bool)

(assert (=> b!1435164 (= e!810025 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!631556 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!631556 lt!631557 mask!2608))))

(declare-fun b!1435165 () Bool)

(assert (=> b!1435165 (and (bvsge (index!47905 lt!631734) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631734) (size!47628 lt!631557)))))

(declare-fun res!968295 () Bool)

(assert (=> b!1435165 (= res!968295 (= (select (arr!47077 lt!631557) (index!47905 lt!631734)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1435165 (=> res!968295 e!810026)))

(declare-fun b!1435166 () Bool)

(assert (=> b!1435166 (and (bvsge (index!47905 lt!631734) #b00000000000000000000000000000000) (bvslt (index!47905 lt!631734) (size!47628 lt!631557)))))

(declare-fun res!968294 () Bool)

(assert (=> b!1435166 (= res!968294 (= (select (arr!47077 lt!631557) (index!47905 lt!631734)) lt!631556))))

(assert (=> b!1435166 (=> res!968294 e!810026)))

(assert (=> b!1435166 (= e!810023 e!810026)))

(declare-fun d!154319 () Bool)

(assert (=> d!154319 e!810024))

(declare-fun c!132939 () Bool)

(assert (=> d!154319 (= c!132939 (and (is-Intermediate!11378 lt!631734) (undefined!12190 lt!631734)))))

(assert (=> d!154319 (= lt!631734 e!810027)))

(declare-fun c!132940 () Bool)

(assert (=> d!154319 (= c!132940 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!154319 (= lt!631735 (select (arr!47077 lt!631557) (toIndex!0 lt!631556 mask!2608)))))

(assert (=> d!154319 (validMask!0 mask!2608)))

(assert (=> d!154319 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631556 mask!2608) lt!631556 lt!631557 mask!2608) lt!631734)))

(declare-fun b!1435167 () Bool)

(assert (=> b!1435167 (= e!810024 (bvsge (x!129570 lt!631734) #b01111111111111111111111111111110))))

(assert (= (and d!154319 c!132940) b!1435163))

(assert (= (and d!154319 (not c!132940)) b!1435161))

(assert (= (and b!1435161 c!132938) b!1435160))

(assert (= (and b!1435161 (not c!132938)) b!1435164))

(assert (= (and d!154319 c!132939) b!1435167))

(assert (= (and d!154319 (not c!132939)) b!1435162))

(assert (= (and b!1435162 res!968296) b!1435166))

(assert (= (and b!1435166 (not res!968294)) b!1435165))

(assert (= (and b!1435165 (not res!968295)) b!1435159))

(declare-fun m!1324603 () Bool)

(assert (=> b!1435166 m!1324603))

(assert (=> d!154319 m!1324267))

(declare-fun m!1324605 () Bool)

(assert (=> d!154319 m!1324605))

(assert (=> d!154319 m!1324301))

(assert (=> b!1435165 m!1324603))

(assert (=> b!1435164 m!1324267))

(declare-fun m!1324607 () Bool)

(assert (=> b!1435164 m!1324607))

(assert (=> b!1435164 m!1324607))

(declare-fun m!1324609 () Bool)

(assert (=> b!1435164 m!1324609))

(assert (=> b!1435159 m!1324603))

(assert (=> b!1434723 d!154319))

(declare-fun d!154321 () Bool)

(declare-fun lt!631737 () (_ BitVec 32))

(declare-fun lt!631736 () (_ BitVec 32))

(assert (=> d!154321 (= lt!631737 (bvmul (bvxor lt!631736 (bvlshr lt!631736 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154321 (= lt!631736 ((_ extract 31 0) (bvand (bvxor lt!631556 (bvlshr lt!631556 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154321 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!968261 (let ((h!35100 ((_ extract 31 0) (bvand (bvxor lt!631556 (bvlshr lt!631556 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129580 (bvmul (bvxor h!35100 (bvlshr h!35100 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129580 (bvlshr x!129580 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!968261 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!968261 #b00000000000000000000000000000000))))))

(assert (=> d!154321 (= (toIndex!0 lt!631556 mask!2608) (bvand (bvxor lt!631737 (bvlshr lt!631737 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1434723 d!154321))

(push 1)

(assert (not b!1435158))

(assert (not d!154319))

(assert (not b!1434961))

(assert (not b!1435065))

(assert (not d!154267))

(assert (not b!1435156))

(assert (not b!1434890))

(assert (not b!1434892))

(assert (not b!1435164))

(assert (not d!154309))

(assert (not bm!67542))

(assert (not d!154305))

(assert (not d!154311))

(assert (not b!1435128))

(assert (not bm!67556))

(assert (not bm!67553))

(assert (not d!154297))

(assert (not b!1435097))

(assert (not b!1435110))

(assert (not b!1435154))

(assert (not b!1435102))

(assert (not d!154241))

(assert (not d!154315))

(assert (not d!154301))

(assert (not b!1435104))

(assert (not b!1435119))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

