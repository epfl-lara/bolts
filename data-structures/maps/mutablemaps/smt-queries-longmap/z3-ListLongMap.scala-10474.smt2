; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123210 () Bool)

(assert start!123210)

(declare-fun b!1428235 () Bool)

(declare-fun res!963178 () Bool)

(declare-fun e!806620 () Bool)

(assert (=> b!1428235 (=> (not res!963178) (not e!806620))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97340 0))(
  ( (array!97341 (arr!46979 (Array (_ BitVec 32) (_ BitVec 64))) (size!47530 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97340)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428235 (= res!963178 (and (= (size!47530 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47530 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47530 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428236 () Bool)

(declare-fun res!963177 () Bool)

(assert (=> b!1428236 (=> (not res!963177) (not e!806620))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428236 (= res!963177 (validKeyInArray!0 (select (arr!46979 a!2831) i!982)))))

(declare-fun e!806624 () Bool)

(declare-fun b!1428237 () Bool)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1428237 (= e!806624 (not (or (= (select (arr!46979 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46979 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (select (arr!46979 a!2831) index!585) (select (arr!46979 a!2831) j!81))))))))

(declare-fun e!806623 () Bool)

(assert (=> b!1428237 e!806623))

(declare-fun res!963175 () Bool)

(assert (=> b!1428237 (=> (not res!963175) (not e!806623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97340 (_ BitVec 32)) Bool)

(assert (=> b!1428237 (= res!963175 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48254 0))(
  ( (Unit!48255) )
))
(declare-fun lt!628860 () Unit!48254)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97340 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48254)

(assert (=> b!1428237 (= lt!628860 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428238 () Bool)

(declare-fun res!963182 () Bool)

(assert (=> b!1428238 (=> (not res!963182) (not e!806624))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428238 (= res!963182 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428239 () Bool)

(declare-fun res!963180 () Bool)

(assert (=> b!1428239 (=> (not res!963180) (not e!806620))))

(assert (=> b!1428239 (= res!963180 (validKeyInArray!0 (select (arr!46979 a!2831) j!81)))))

(declare-fun b!1428240 () Bool)

(declare-fun res!963185 () Bool)

(assert (=> b!1428240 (=> (not res!963185) (not e!806624))))

(declare-datatypes ((SeekEntryResult!11280 0))(
  ( (MissingZero!11280 (index!47511 (_ BitVec 32))) (Found!11280 (index!47512 (_ BitVec 32))) (Intermediate!11280 (undefined!12092 Bool) (index!47513 (_ BitVec 32)) (x!129151 (_ BitVec 32))) (Undefined!11280) (MissingVacant!11280 (index!47514 (_ BitVec 32))) )
))
(declare-fun lt!628861 () SeekEntryResult!11280)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!628863 () array!97340)

(declare-fun lt!628864 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97340 (_ BitVec 32)) SeekEntryResult!11280)

(assert (=> b!1428240 (= res!963185 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628864 lt!628863 mask!2608) lt!628861))))

(declare-fun b!1428241 () Bool)

(declare-fun res!963174 () Bool)

(assert (=> b!1428241 (=> (not res!963174) (not e!806620))))

(assert (=> b!1428241 (= res!963174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!963176 () Bool)

(assert (=> start!123210 (=> (not res!963176) (not e!806620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123210 (= res!963176 (validMask!0 mask!2608))))

(assert (=> start!123210 e!806620))

(assert (=> start!123210 true))

(declare-fun array_inv!35924 (array!97340) Bool)

(assert (=> start!123210 (array_inv!35924 a!2831)))

(declare-fun b!1428242 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97340 (_ BitVec 32)) SeekEntryResult!11280)

(assert (=> b!1428242 (= e!806623 (= (seekEntryOrOpen!0 (select (arr!46979 a!2831) j!81) a!2831 mask!2608) (Found!11280 j!81)))))

(declare-fun b!1428243 () Bool)

(declare-fun e!806622 () Bool)

(assert (=> b!1428243 (= e!806620 e!806622)))

(declare-fun res!963184 () Bool)

(assert (=> b!1428243 (=> (not res!963184) (not e!806622))))

(declare-fun lt!628862 () SeekEntryResult!11280)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428243 (= res!963184 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46979 a!2831) j!81) mask!2608) (select (arr!46979 a!2831) j!81) a!2831 mask!2608) lt!628862))))

(assert (=> b!1428243 (= lt!628862 (Intermediate!11280 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428244 () Bool)

(assert (=> b!1428244 (= e!806622 e!806624)))

(declare-fun res!963179 () Bool)

(assert (=> b!1428244 (=> (not res!963179) (not e!806624))))

(assert (=> b!1428244 (= res!963179 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628864 mask!2608) lt!628864 lt!628863 mask!2608) lt!628861))))

(assert (=> b!1428244 (= lt!628861 (Intermediate!11280 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1428244 (= lt!628864 (select (store (arr!46979 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428244 (= lt!628863 (array!97341 (store (arr!46979 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47530 a!2831)))))

(declare-fun b!1428245 () Bool)

(declare-fun res!963181 () Bool)

(assert (=> b!1428245 (=> (not res!963181) (not e!806620))))

(assert (=> b!1428245 (= res!963181 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47530 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47530 a!2831))))))

(declare-fun b!1428246 () Bool)

(declare-fun res!963183 () Bool)

(assert (=> b!1428246 (=> (not res!963183) (not e!806624))))

(assert (=> b!1428246 (= res!963183 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46979 a!2831) j!81) a!2831 mask!2608) lt!628862))))

(declare-fun b!1428247 () Bool)

(declare-fun res!963186 () Bool)

(assert (=> b!1428247 (=> (not res!963186) (not e!806620))))

(declare-datatypes ((List!33669 0))(
  ( (Nil!33666) (Cons!33665 (h!34976 (_ BitVec 64)) (t!48370 List!33669)) )
))
(declare-fun arrayNoDuplicates!0 (array!97340 (_ BitVec 32) List!33669) Bool)

(assert (=> b!1428247 (= res!963186 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33666))))

(assert (= (and start!123210 res!963176) b!1428235))

(assert (= (and b!1428235 res!963178) b!1428236))

(assert (= (and b!1428236 res!963177) b!1428239))

(assert (= (and b!1428239 res!963180) b!1428241))

(assert (= (and b!1428241 res!963174) b!1428247))

(assert (= (and b!1428247 res!963186) b!1428245))

(assert (= (and b!1428245 res!963181) b!1428243))

(assert (= (and b!1428243 res!963184) b!1428244))

(assert (= (and b!1428244 res!963179) b!1428246))

(assert (= (and b!1428246 res!963183) b!1428240))

(assert (= (and b!1428240 res!963185) b!1428238))

(assert (= (and b!1428238 res!963182) b!1428237))

(assert (= (and b!1428237 res!963175) b!1428242))

(declare-fun m!1318533 () Bool)

(assert (=> b!1428237 m!1318533))

(declare-fun m!1318535 () Bool)

(assert (=> b!1428237 m!1318535))

(declare-fun m!1318537 () Bool)

(assert (=> b!1428237 m!1318537))

(declare-fun m!1318539 () Bool)

(assert (=> b!1428237 m!1318539))

(declare-fun m!1318541 () Bool)

(assert (=> b!1428240 m!1318541))

(assert (=> b!1428242 m!1318535))

(assert (=> b!1428242 m!1318535))

(declare-fun m!1318543 () Bool)

(assert (=> b!1428242 m!1318543))

(assert (=> b!1428239 m!1318535))

(assert (=> b!1428239 m!1318535))

(declare-fun m!1318545 () Bool)

(assert (=> b!1428239 m!1318545))

(declare-fun m!1318547 () Bool)

(assert (=> start!123210 m!1318547))

(declare-fun m!1318549 () Bool)

(assert (=> start!123210 m!1318549))

(declare-fun m!1318551 () Bool)

(assert (=> b!1428236 m!1318551))

(assert (=> b!1428236 m!1318551))

(declare-fun m!1318553 () Bool)

(assert (=> b!1428236 m!1318553))

(declare-fun m!1318555 () Bool)

(assert (=> b!1428247 m!1318555))

(declare-fun m!1318557 () Bool)

(assert (=> b!1428244 m!1318557))

(assert (=> b!1428244 m!1318557))

(declare-fun m!1318559 () Bool)

(assert (=> b!1428244 m!1318559))

(declare-fun m!1318561 () Bool)

(assert (=> b!1428244 m!1318561))

(declare-fun m!1318563 () Bool)

(assert (=> b!1428244 m!1318563))

(assert (=> b!1428243 m!1318535))

(assert (=> b!1428243 m!1318535))

(declare-fun m!1318565 () Bool)

(assert (=> b!1428243 m!1318565))

(assert (=> b!1428243 m!1318565))

(assert (=> b!1428243 m!1318535))

(declare-fun m!1318567 () Bool)

(assert (=> b!1428243 m!1318567))

(declare-fun m!1318569 () Bool)

(assert (=> b!1428241 m!1318569))

(assert (=> b!1428246 m!1318535))

(assert (=> b!1428246 m!1318535))

(declare-fun m!1318571 () Bool)

(assert (=> b!1428246 m!1318571))

(check-sat (not b!1428246) (not b!1428236) (not b!1428239) (not b!1428247) (not b!1428242) (not b!1428237) (not b!1428241) (not start!123210) (not b!1428244) (not b!1428240) (not b!1428243))
(check-sat)
(get-model)

(declare-fun d!153389 () Bool)

(declare-fun e!806650 () Bool)

(assert (=> d!153389 e!806650))

(declare-fun c!132030 () Bool)

(declare-fun lt!628885 () SeekEntryResult!11280)

(get-info :version)

(assert (=> d!153389 (= c!132030 (and ((_ is Intermediate!11280) lt!628885) (undefined!12092 lt!628885)))))

(declare-fun e!806651 () SeekEntryResult!11280)

(assert (=> d!153389 (= lt!628885 e!806651)))

(declare-fun c!132032 () Bool)

(assert (=> d!153389 (= c!132032 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628884 () (_ BitVec 64))

(assert (=> d!153389 (= lt!628884 (select (arr!46979 lt!628863) (toIndex!0 lt!628864 mask!2608)))))

(assert (=> d!153389 (validMask!0 mask!2608)))

(assert (=> d!153389 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628864 mask!2608) lt!628864 lt!628863 mask!2608) lt!628885)))

(declare-fun b!1428305 () Bool)

(assert (=> b!1428305 (= e!806650 (bvsge (x!129151 lt!628885) #b01111111111111111111111111111110))))

(declare-fun b!1428306 () Bool)

(assert (=> b!1428306 (and (bvsge (index!47513 lt!628885) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628885) (size!47530 lt!628863)))))

(declare-fun res!963232 () Bool)

(assert (=> b!1428306 (= res!963232 (= (select (arr!46979 lt!628863) (index!47513 lt!628885)) lt!628864))))

(declare-fun e!806653 () Bool)

(assert (=> b!1428306 (=> res!963232 e!806653)))

(declare-fun e!806654 () Bool)

(assert (=> b!1428306 (= e!806654 e!806653)))

(declare-fun b!1428307 () Bool)

(assert (=> b!1428307 (and (bvsge (index!47513 lt!628885) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628885) (size!47530 lt!628863)))))

(declare-fun res!963234 () Bool)

(assert (=> b!1428307 (= res!963234 (= (select (arr!46979 lt!628863) (index!47513 lt!628885)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1428307 (=> res!963234 e!806653)))

(declare-fun b!1428308 () Bool)

(declare-fun e!806652 () SeekEntryResult!11280)

(assert (=> b!1428308 (= e!806651 e!806652)))

(declare-fun c!132031 () Bool)

(assert (=> b!1428308 (= c!132031 (or (= lt!628884 lt!628864) (= (bvadd lt!628884 lt!628884) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1428309 () Bool)

(assert (=> b!1428309 (and (bvsge (index!47513 lt!628885) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628885) (size!47530 lt!628863)))))

(assert (=> b!1428309 (= e!806653 (= (select (arr!46979 lt!628863) (index!47513 lt!628885)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1428310 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428310 (= e!806652 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!628864 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!628864 lt!628863 mask!2608))))

(declare-fun b!1428311 () Bool)

(assert (=> b!1428311 (= e!806650 e!806654)))

(declare-fun res!963233 () Bool)

(assert (=> b!1428311 (= res!963233 (and ((_ is Intermediate!11280) lt!628885) (not (undefined!12092 lt!628885)) (bvslt (x!129151 lt!628885) #b01111111111111111111111111111110) (bvsge (x!129151 lt!628885) #b00000000000000000000000000000000) (bvsge (x!129151 lt!628885) #b00000000000000000000000000000000)))))

(assert (=> b!1428311 (=> (not res!963233) (not e!806654))))

(declare-fun b!1428312 () Bool)

(assert (=> b!1428312 (= e!806651 (Intermediate!11280 true (toIndex!0 lt!628864 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1428313 () Bool)

(assert (=> b!1428313 (= e!806652 (Intermediate!11280 false (toIndex!0 lt!628864 mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153389 c!132032) b!1428312))

(assert (= (and d!153389 (not c!132032)) b!1428308))

(assert (= (and b!1428308 c!132031) b!1428313))

(assert (= (and b!1428308 (not c!132031)) b!1428310))

(assert (= (and d!153389 c!132030) b!1428305))

(assert (= (and d!153389 (not c!132030)) b!1428311))

(assert (= (and b!1428311 res!963233) b!1428306))

(assert (= (and b!1428306 (not res!963232)) b!1428307))

(assert (= (and b!1428307 (not res!963234)) b!1428309))

(assert (=> d!153389 m!1318557))

(declare-fun m!1318613 () Bool)

(assert (=> d!153389 m!1318613))

(assert (=> d!153389 m!1318547))

(declare-fun m!1318615 () Bool)

(assert (=> b!1428307 m!1318615))

(assert (=> b!1428310 m!1318557))

(declare-fun m!1318617 () Bool)

(assert (=> b!1428310 m!1318617))

(assert (=> b!1428310 m!1318617))

(declare-fun m!1318619 () Bool)

(assert (=> b!1428310 m!1318619))

(assert (=> b!1428309 m!1318615))

(assert (=> b!1428306 m!1318615))

(assert (=> b!1428244 d!153389))

(declare-fun d!153391 () Bool)

(declare-fun lt!628891 () (_ BitVec 32))

(declare-fun lt!628890 () (_ BitVec 32))

(assert (=> d!153391 (= lt!628891 (bvmul (bvxor lt!628890 (bvlshr lt!628890 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153391 (= lt!628890 ((_ extract 31 0) (bvand (bvxor lt!628864 (bvlshr lt!628864 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153391 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!963235 (let ((h!34978 ((_ extract 31 0) (bvand (bvxor lt!628864 (bvlshr lt!628864 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129154 (bvmul (bvxor h!34978 (bvlshr h!34978 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129154 (bvlshr x!129154 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!963235 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!963235 #b00000000000000000000000000000000))))))

(assert (=> d!153391 (= (toIndex!0 lt!628864 mask!2608) (bvand (bvxor lt!628891 (bvlshr lt!628891 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1428244 d!153391))

(declare-fun d!153393 () Bool)

(assert (=> d!153393 (= (validKeyInArray!0 (select (arr!46979 a!2831) j!81)) (and (not (= (select (arr!46979 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46979 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1428239 d!153393))

(declare-fun b!1428322 () Bool)

(declare-fun e!806663 () Bool)

(declare-fun e!806662 () Bool)

(assert (=> b!1428322 (= e!806663 e!806662)))

(declare-fun lt!628900 () (_ BitVec 64))

(assert (=> b!1428322 (= lt!628900 (select (arr!46979 a!2831) j!81))))

(declare-fun lt!628898 () Unit!48254)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97340 (_ BitVec 64) (_ BitVec 32)) Unit!48254)

(assert (=> b!1428322 (= lt!628898 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628900 j!81))))

(declare-fun arrayContainsKey!0 (array!97340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1428322 (arrayContainsKey!0 a!2831 lt!628900 #b00000000000000000000000000000000)))

(declare-fun lt!628899 () Unit!48254)

(assert (=> b!1428322 (= lt!628899 lt!628898)))

(declare-fun res!963241 () Bool)

(assert (=> b!1428322 (= res!963241 (= (seekEntryOrOpen!0 (select (arr!46979 a!2831) j!81) a!2831 mask!2608) (Found!11280 j!81)))))

(assert (=> b!1428322 (=> (not res!963241) (not e!806662))))

(declare-fun b!1428323 () Bool)

(declare-fun call!67386 () Bool)

(assert (=> b!1428323 (= e!806663 call!67386)))

(declare-fun b!1428324 () Bool)

(assert (=> b!1428324 (= e!806662 call!67386)))

(declare-fun b!1428325 () Bool)

(declare-fun e!806661 () Bool)

(assert (=> b!1428325 (= e!806661 e!806663)))

(declare-fun c!132035 () Bool)

(assert (=> b!1428325 (= c!132035 (validKeyInArray!0 (select (arr!46979 a!2831) j!81)))))

(declare-fun bm!67383 () Bool)

(assert (=> bm!67383 (= call!67386 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun d!153395 () Bool)

(declare-fun res!963240 () Bool)

(assert (=> d!153395 (=> res!963240 e!806661)))

(assert (=> d!153395 (= res!963240 (bvsge j!81 (size!47530 a!2831)))))

(assert (=> d!153395 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!806661)))

(assert (= (and d!153395 (not res!963240)) b!1428325))

(assert (= (and b!1428325 c!132035) b!1428322))

(assert (= (and b!1428325 (not c!132035)) b!1428323))

(assert (= (and b!1428322 res!963241) b!1428324))

(assert (= (or b!1428324 b!1428323) bm!67383))

(assert (=> b!1428322 m!1318535))

(declare-fun m!1318621 () Bool)

(assert (=> b!1428322 m!1318621))

(declare-fun m!1318623 () Bool)

(assert (=> b!1428322 m!1318623))

(assert (=> b!1428322 m!1318535))

(assert (=> b!1428322 m!1318543))

(assert (=> b!1428325 m!1318535))

(assert (=> b!1428325 m!1318535))

(assert (=> b!1428325 m!1318545))

(declare-fun m!1318625 () Bool)

(assert (=> bm!67383 m!1318625))

(assert (=> b!1428237 d!153395))

(declare-fun d!153401 () Bool)

(assert (=> d!153401 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!628903 () Unit!48254)

(declare-fun choose!38 (array!97340 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48254)

(assert (=> d!153401 (= lt!628903 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153401 (validMask!0 mask!2608)))

(assert (=> d!153401 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!628903)))

(declare-fun bs!41618 () Bool)

(assert (= bs!41618 d!153401))

(assert (=> bs!41618 m!1318537))

(declare-fun m!1318627 () Bool)

(assert (=> bs!41618 m!1318627))

(assert (=> bs!41618 m!1318547))

(assert (=> b!1428237 d!153401))

(declare-fun d!153403 () Bool)

(declare-fun e!806664 () Bool)

(assert (=> d!153403 e!806664))

(declare-fun c!132036 () Bool)

(declare-fun lt!628905 () SeekEntryResult!11280)

(assert (=> d!153403 (= c!132036 (and ((_ is Intermediate!11280) lt!628905) (undefined!12092 lt!628905)))))

(declare-fun e!806665 () SeekEntryResult!11280)

(assert (=> d!153403 (= lt!628905 e!806665)))

(declare-fun c!132038 () Bool)

(assert (=> d!153403 (= c!132038 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628904 () (_ BitVec 64))

(assert (=> d!153403 (= lt!628904 (select (arr!46979 a!2831) (toIndex!0 (select (arr!46979 a!2831) j!81) mask!2608)))))

(assert (=> d!153403 (validMask!0 mask!2608)))

(assert (=> d!153403 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46979 a!2831) j!81) mask!2608) (select (arr!46979 a!2831) j!81) a!2831 mask!2608) lt!628905)))

(declare-fun b!1428326 () Bool)

(assert (=> b!1428326 (= e!806664 (bvsge (x!129151 lt!628905) #b01111111111111111111111111111110))))

(declare-fun b!1428327 () Bool)

(assert (=> b!1428327 (and (bvsge (index!47513 lt!628905) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628905) (size!47530 a!2831)))))

(declare-fun res!963242 () Bool)

(assert (=> b!1428327 (= res!963242 (= (select (arr!46979 a!2831) (index!47513 lt!628905)) (select (arr!46979 a!2831) j!81)))))

(declare-fun e!806667 () Bool)

(assert (=> b!1428327 (=> res!963242 e!806667)))

(declare-fun e!806668 () Bool)

(assert (=> b!1428327 (= e!806668 e!806667)))

(declare-fun b!1428328 () Bool)

(assert (=> b!1428328 (and (bvsge (index!47513 lt!628905) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628905) (size!47530 a!2831)))))

(declare-fun res!963244 () Bool)

(assert (=> b!1428328 (= res!963244 (= (select (arr!46979 a!2831) (index!47513 lt!628905)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1428328 (=> res!963244 e!806667)))

(declare-fun b!1428329 () Bool)

(declare-fun e!806666 () SeekEntryResult!11280)

(assert (=> b!1428329 (= e!806665 e!806666)))

(declare-fun c!132037 () Bool)

(assert (=> b!1428329 (= c!132037 (or (= lt!628904 (select (arr!46979 a!2831) j!81)) (= (bvadd lt!628904 lt!628904) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1428330 () Bool)

(assert (=> b!1428330 (and (bvsge (index!47513 lt!628905) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628905) (size!47530 a!2831)))))

(assert (=> b!1428330 (= e!806667 (= (select (arr!46979 a!2831) (index!47513 lt!628905)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1428331 () Bool)

(assert (=> b!1428331 (= e!806666 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46979 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46979 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1428332 () Bool)

(assert (=> b!1428332 (= e!806664 e!806668)))

(declare-fun res!963243 () Bool)

(assert (=> b!1428332 (= res!963243 (and ((_ is Intermediate!11280) lt!628905) (not (undefined!12092 lt!628905)) (bvslt (x!129151 lt!628905) #b01111111111111111111111111111110) (bvsge (x!129151 lt!628905) #b00000000000000000000000000000000) (bvsge (x!129151 lt!628905) #b00000000000000000000000000000000)))))

(assert (=> b!1428332 (=> (not res!963243) (not e!806668))))

(declare-fun b!1428333 () Bool)

(assert (=> b!1428333 (= e!806665 (Intermediate!11280 true (toIndex!0 (select (arr!46979 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1428334 () Bool)

(assert (=> b!1428334 (= e!806666 (Intermediate!11280 false (toIndex!0 (select (arr!46979 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153403 c!132038) b!1428333))

(assert (= (and d!153403 (not c!132038)) b!1428329))

(assert (= (and b!1428329 c!132037) b!1428334))

(assert (= (and b!1428329 (not c!132037)) b!1428331))

(assert (= (and d!153403 c!132036) b!1428326))

(assert (= (and d!153403 (not c!132036)) b!1428332))

(assert (= (and b!1428332 res!963243) b!1428327))

(assert (= (and b!1428327 (not res!963242)) b!1428328))

(assert (= (and b!1428328 (not res!963244)) b!1428330))

(assert (=> d!153403 m!1318565))

(declare-fun m!1318629 () Bool)

(assert (=> d!153403 m!1318629))

(assert (=> d!153403 m!1318547))

(declare-fun m!1318631 () Bool)

(assert (=> b!1428328 m!1318631))

(assert (=> b!1428331 m!1318565))

(declare-fun m!1318633 () Bool)

(assert (=> b!1428331 m!1318633))

(assert (=> b!1428331 m!1318633))

(assert (=> b!1428331 m!1318535))

(declare-fun m!1318635 () Bool)

(assert (=> b!1428331 m!1318635))

(assert (=> b!1428330 m!1318631))

(assert (=> b!1428327 m!1318631))

(assert (=> b!1428243 d!153403))

(declare-fun d!153405 () Bool)

(declare-fun lt!628907 () (_ BitVec 32))

(declare-fun lt!628906 () (_ BitVec 32))

(assert (=> d!153405 (= lt!628907 (bvmul (bvxor lt!628906 (bvlshr lt!628906 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153405 (= lt!628906 ((_ extract 31 0) (bvand (bvxor (select (arr!46979 a!2831) j!81) (bvlshr (select (arr!46979 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153405 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!963235 (let ((h!34978 ((_ extract 31 0) (bvand (bvxor (select (arr!46979 a!2831) j!81) (bvlshr (select (arr!46979 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129154 (bvmul (bvxor h!34978 (bvlshr h!34978 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129154 (bvlshr x!129154 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!963235 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!963235 #b00000000000000000000000000000000))))))

(assert (=> d!153405 (= (toIndex!0 (select (arr!46979 a!2831) j!81) mask!2608) (bvand (bvxor lt!628907 (bvlshr lt!628907 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1428243 d!153405))

(declare-fun b!1428335 () Bool)

(declare-fun e!806671 () Bool)

(declare-fun e!806670 () Bool)

(assert (=> b!1428335 (= e!806671 e!806670)))

(declare-fun lt!628910 () (_ BitVec 64))

(assert (=> b!1428335 (= lt!628910 (select (arr!46979 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!628908 () Unit!48254)

(assert (=> b!1428335 (= lt!628908 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628910 #b00000000000000000000000000000000))))

(assert (=> b!1428335 (arrayContainsKey!0 a!2831 lt!628910 #b00000000000000000000000000000000)))

(declare-fun lt!628909 () Unit!48254)

(assert (=> b!1428335 (= lt!628909 lt!628908)))

(declare-fun res!963246 () Bool)

(assert (=> b!1428335 (= res!963246 (= (seekEntryOrOpen!0 (select (arr!46979 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11280 #b00000000000000000000000000000000)))))

(assert (=> b!1428335 (=> (not res!963246) (not e!806670))))

(declare-fun b!1428336 () Bool)

(declare-fun call!67387 () Bool)

(assert (=> b!1428336 (= e!806671 call!67387)))

(declare-fun b!1428337 () Bool)

(assert (=> b!1428337 (= e!806670 call!67387)))

(declare-fun b!1428338 () Bool)

(declare-fun e!806669 () Bool)

(assert (=> b!1428338 (= e!806669 e!806671)))

(declare-fun c!132039 () Bool)

(assert (=> b!1428338 (= c!132039 (validKeyInArray!0 (select (arr!46979 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67384 () Bool)

(assert (=> bm!67384 (= call!67387 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun d!153407 () Bool)

(declare-fun res!963245 () Bool)

(assert (=> d!153407 (=> res!963245 e!806669)))

(assert (=> d!153407 (= res!963245 (bvsge #b00000000000000000000000000000000 (size!47530 a!2831)))))

(assert (=> d!153407 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!806669)))

(assert (= (and d!153407 (not res!963245)) b!1428338))

(assert (= (and b!1428338 c!132039) b!1428335))

(assert (= (and b!1428338 (not c!132039)) b!1428336))

(assert (= (and b!1428335 res!963246) b!1428337))

(assert (= (or b!1428337 b!1428336) bm!67384))

(declare-fun m!1318637 () Bool)

(assert (=> b!1428335 m!1318637))

(declare-fun m!1318639 () Bool)

(assert (=> b!1428335 m!1318639))

(declare-fun m!1318641 () Bool)

(assert (=> b!1428335 m!1318641))

(assert (=> b!1428335 m!1318637))

(declare-fun m!1318643 () Bool)

(assert (=> b!1428335 m!1318643))

(assert (=> b!1428338 m!1318637))

(assert (=> b!1428338 m!1318637))

(declare-fun m!1318645 () Bool)

(assert (=> b!1428338 m!1318645))

(declare-fun m!1318647 () Bool)

(assert (=> bm!67384 m!1318647))

(assert (=> b!1428241 d!153407))

(declare-fun d!153411 () Bool)

(assert (=> d!153411 (= (validKeyInArray!0 (select (arr!46979 a!2831) i!982)) (and (not (= (select (arr!46979 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46979 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1428236 d!153411))

(declare-fun b!1428367 () Bool)

(declare-fun e!806690 () Bool)

(declare-fun call!67390 () Bool)

(assert (=> b!1428367 (= e!806690 call!67390)))

(declare-fun b!1428368 () Bool)

(declare-fun e!806691 () Bool)

(declare-fun contains!9866 (List!33669 (_ BitVec 64)) Bool)

(assert (=> b!1428368 (= e!806691 (contains!9866 Nil!33666 (select (arr!46979 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153415 () Bool)

(declare-fun res!963260 () Bool)

(declare-fun e!806692 () Bool)

(assert (=> d!153415 (=> res!963260 e!806692)))

(assert (=> d!153415 (= res!963260 (bvsge #b00000000000000000000000000000000 (size!47530 a!2831)))))

(assert (=> d!153415 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33666) e!806692)))

(declare-fun b!1428369 () Bool)

(assert (=> b!1428369 (= e!806690 call!67390)))

(declare-fun b!1428370 () Bool)

(declare-fun e!806693 () Bool)

(assert (=> b!1428370 (= e!806693 e!806690)))

(declare-fun c!132048 () Bool)

(assert (=> b!1428370 (= c!132048 (validKeyInArray!0 (select (arr!46979 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67387 () Bool)

(assert (=> bm!67387 (= call!67390 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132048 (Cons!33665 (select (arr!46979 a!2831) #b00000000000000000000000000000000) Nil!33666) Nil!33666)))))

(declare-fun b!1428371 () Bool)

(assert (=> b!1428371 (= e!806692 e!806693)))

(declare-fun res!963261 () Bool)

(assert (=> b!1428371 (=> (not res!963261) (not e!806693))))

(assert (=> b!1428371 (= res!963261 (not e!806691))))

(declare-fun res!963259 () Bool)

(assert (=> b!1428371 (=> (not res!963259) (not e!806691))))

(assert (=> b!1428371 (= res!963259 (validKeyInArray!0 (select (arr!46979 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153415 (not res!963260)) b!1428371))

(assert (= (and b!1428371 res!963259) b!1428368))

(assert (= (and b!1428371 res!963261) b!1428370))

(assert (= (and b!1428370 c!132048) b!1428367))

(assert (= (and b!1428370 (not c!132048)) b!1428369))

(assert (= (or b!1428367 b!1428369) bm!67387))

(assert (=> b!1428368 m!1318637))

(assert (=> b!1428368 m!1318637))

(declare-fun m!1318649 () Bool)

(assert (=> b!1428368 m!1318649))

(assert (=> b!1428370 m!1318637))

(assert (=> b!1428370 m!1318637))

(assert (=> b!1428370 m!1318645))

(assert (=> bm!67387 m!1318637))

(declare-fun m!1318651 () Bool)

(assert (=> bm!67387 m!1318651))

(assert (=> b!1428371 m!1318637))

(assert (=> b!1428371 m!1318637))

(assert (=> b!1428371 m!1318645))

(assert (=> b!1428247 d!153415))

(declare-fun b!1428438 () Bool)

(declare-fun e!806730 () SeekEntryResult!11280)

(declare-fun lt!628936 () SeekEntryResult!11280)

(assert (=> b!1428438 (= e!806730 (MissingZero!11280 (index!47513 lt!628936)))))

(declare-fun b!1428439 () Bool)

(declare-fun e!806731 () SeekEntryResult!11280)

(assert (=> b!1428439 (= e!806731 Undefined!11280)))

(declare-fun b!1428440 () Bool)

(declare-fun e!806732 () SeekEntryResult!11280)

(assert (=> b!1428440 (= e!806732 (Found!11280 (index!47513 lt!628936)))))

(declare-fun d!153417 () Bool)

(declare-fun lt!628935 () SeekEntryResult!11280)

(assert (=> d!153417 (and (or ((_ is Undefined!11280) lt!628935) (not ((_ is Found!11280) lt!628935)) (and (bvsge (index!47512 lt!628935) #b00000000000000000000000000000000) (bvslt (index!47512 lt!628935) (size!47530 a!2831)))) (or ((_ is Undefined!11280) lt!628935) ((_ is Found!11280) lt!628935) (not ((_ is MissingZero!11280) lt!628935)) (and (bvsge (index!47511 lt!628935) #b00000000000000000000000000000000) (bvslt (index!47511 lt!628935) (size!47530 a!2831)))) (or ((_ is Undefined!11280) lt!628935) ((_ is Found!11280) lt!628935) ((_ is MissingZero!11280) lt!628935) (not ((_ is MissingVacant!11280) lt!628935)) (and (bvsge (index!47514 lt!628935) #b00000000000000000000000000000000) (bvslt (index!47514 lt!628935) (size!47530 a!2831)))) (or ((_ is Undefined!11280) lt!628935) (ite ((_ is Found!11280) lt!628935) (= (select (arr!46979 a!2831) (index!47512 lt!628935)) (select (arr!46979 a!2831) j!81)) (ite ((_ is MissingZero!11280) lt!628935) (= (select (arr!46979 a!2831) (index!47511 lt!628935)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11280) lt!628935) (= (select (arr!46979 a!2831) (index!47514 lt!628935)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153417 (= lt!628935 e!806731)))

(declare-fun c!132076 () Bool)

(assert (=> d!153417 (= c!132076 (and ((_ is Intermediate!11280) lt!628936) (undefined!12092 lt!628936)))))

(assert (=> d!153417 (= lt!628936 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46979 a!2831) j!81) mask!2608) (select (arr!46979 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153417 (validMask!0 mask!2608)))

(assert (=> d!153417 (= (seekEntryOrOpen!0 (select (arr!46979 a!2831) j!81) a!2831 mask!2608) lt!628935)))

(declare-fun b!1428441 () Bool)

(assert (=> b!1428441 (= e!806731 e!806732)))

(declare-fun lt!628937 () (_ BitVec 64))

(assert (=> b!1428441 (= lt!628937 (select (arr!46979 a!2831) (index!47513 lt!628936)))))

(declare-fun c!132075 () Bool)

(assert (=> b!1428441 (= c!132075 (= lt!628937 (select (arr!46979 a!2831) j!81)))))

(declare-fun b!1428442 () Bool)

(declare-fun c!132077 () Bool)

(assert (=> b!1428442 (= c!132077 (= lt!628937 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1428442 (= e!806732 e!806730)))

(declare-fun b!1428443 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97340 (_ BitVec 32)) SeekEntryResult!11280)

(assert (=> b!1428443 (= e!806730 (seekKeyOrZeroReturnVacant!0 (x!129151 lt!628936) (index!47513 lt!628936) (index!47513 lt!628936) (select (arr!46979 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and d!153417 c!132076) b!1428439))

(assert (= (and d!153417 (not c!132076)) b!1428441))

(assert (= (and b!1428441 c!132075) b!1428440))

(assert (= (and b!1428441 (not c!132075)) b!1428442))

(assert (= (and b!1428442 c!132077) b!1428438))

(assert (= (and b!1428442 (not c!132077)) b!1428443))

(assert (=> d!153417 m!1318535))

(assert (=> d!153417 m!1318565))

(declare-fun m!1318669 () Bool)

(assert (=> d!153417 m!1318669))

(assert (=> d!153417 m!1318565))

(assert (=> d!153417 m!1318535))

(assert (=> d!153417 m!1318567))

(assert (=> d!153417 m!1318547))

(declare-fun m!1318671 () Bool)

(assert (=> d!153417 m!1318671))

(declare-fun m!1318673 () Bool)

(assert (=> d!153417 m!1318673))

(declare-fun m!1318675 () Bool)

(assert (=> b!1428441 m!1318675))

(assert (=> b!1428443 m!1318535))

(declare-fun m!1318677 () Bool)

(assert (=> b!1428443 m!1318677))

(assert (=> b!1428242 d!153417))

(declare-fun d!153423 () Bool)

(declare-fun e!806735 () Bool)

(assert (=> d!153423 e!806735))

(declare-fun c!132078 () Bool)

(declare-fun lt!628945 () SeekEntryResult!11280)

(assert (=> d!153423 (= c!132078 (and ((_ is Intermediate!11280) lt!628945) (undefined!12092 lt!628945)))))

(declare-fun e!806736 () SeekEntryResult!11280)

(assert (=> d!153423 (= lt!628945 e!806736)))

(declare-fun c!132080 () Bool)

(assert (=> d!153423 (= c!132080 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628944 () (_ BitVec 64))

(assert (=> d!153423 (= lt!628944 (select (arr!46979 lt!628863) index!585))))

(assert (=> d!153423 (validMask!0 mask!2608)))

(assert (=> d!153423 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628864 lt!628863 mask!2608) lt!628945)))

(declare-fun b!1428446 () Bool)

(assert (=> b!1428446 (= e!806735 (bvsge (x!129151 lt!628945) #b01111111111111111111111111111110))))

(declare-fun b!1428447 () Bool)

(assert (=> b!1428447 (and (bvsge (index!47513 lt!628945) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628945) (size!47530 lt!628863)))))

(declare-fun res!963278 () Bool)

(assert (=> b!1428447 (= res!963278 (= (select (arr!46979 lt!628863) (index!47513 lt!628945)) lt!628864))))

(declare-fun e!806738 () Bool)

(assert (=> b!1428447 (=> res!963278 e!806738)))

(declare-fun e!806739 () Bool)

(assert (=> b!1428447 (= e!806739 e!806738)))

(declare-fun b!1428448 () Bool)

(assert (=> b!1428448 (and (bvsge (index!47513 lt!628945) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628945) (size!47530 lt!628863)))))

(declare-fun res!963280 () Bool)

(assert (=> b!1428448 (= res!963280 (= (select (arr!46979 lt!628863) (index!47513 lt!628945)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1428448 (=> res!963280 e!806738)))

(declare-fun b!1428449 () Bool)

(declare-fun e!806737 () SeekEntryResult!11280)

(assert (=> b!1428449 (= e!806736 e!806737)))

(declare-fun c!132079 () Bool)

(assert (=> b!1428449 (= c!132079 (or (= lt!628944 lt!628864) (= (bvadd lt!628944 lt!628944) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1428450 () Bool)

(assert (=> b!1428450 (and (bvsge (index!47513 lt!628945) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628945) (size!47530 lt!628863)))))

(assert (=> b!1428450 (= e!806738 (= (select (arr!46979 lt!628863) (index!47513 lt!628945)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1428451 () Bool)

(assert (=> b!1428451 (= e!806737 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628864 lt!628863 mask!2608))))

(declare-fun b!1428452 () Bool)

(assert (=> b!1428452 (= e!806735 e!806739)))

(declare-fun res!963279 () Bool)

(assert (=> b!1428452 (= res!963279 (and ((_ is Intermediate!11280) lt!628945) (not (undefined!12092 lt!628945)) (bvslt (x!129151 lt!628945) #b01111111111111111111111111111110) (bvsge (x!129151 lt!628945) #b00000000000000000000000000000000) (bvsge (x!129151 lt!628945) x!605)))))

(assert (=> b!1428452 (=> (not res!963279) (not e!806739))))

(declare-fun b!1428453 () Bool)

(assert (=> b!1428453 (= e!806736 (Intermediate!11280 true index!585 x!605))))

(declare-fun b!1428454 () Bool)

(assert (=> b!1428454 (= e!806737 (Intermediate!11280 false index!585 x!605))))

(assert (= (and d!153423 c!132080) b!1428453))

(assert (= (and d!153423 (not c!132080)) b!1428449))

(assert (= (and b!1428449 c!132079) b!1428454))

(assert (= (and b!1428449 (not c!132079)) b!1428451))

(assert (= (and d!153423 c!132078) b!1428446))

(assert (= (and d!153423 (not c!132078)) b!1428452))

(assert (= (and b!1428452 res!963279) b!1428447))

(assert (= (and b!1428447 (not res!963278)) b!1428448))

(assert (= (and b!1428448 (not res!963280)) b!1428450))

(declare-fun m!1318679 () Bool)

(assert (=> d!153423 m!1318679))

(assert (=> d!153423 m!1318547))

(declare-fun m!1318681 () Bool)

(assert (=> b!1428448 m!1318681))

(declare-fun m!1318683 () Bool)

(assert (=> b!1428451 m!1318683))

(assert (=> b!1428451 m!1318683))

(declare-fun m!1318685 () Bool)

(assert (=> b!1428451 m!1318685))

(assert (=> b!1428450 m!1318681))

(assert (=> b!1428447 m!1318681))

(assert (=> b!1428240 d!153423))

(declare-fun d!153425 () Bool)

(assert (=> d!153425 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123210 d!153425))

(declare-fun d!153437 () Bool)

(assert (=> d!153437 (= (array_inv!35924 a!2831) (bvsge (size!47530 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123210 d!153437))

(declare-fun d!153439 () Bool)

(declare-fun e!806763 () Bool)

(assert (=> d!153439 e!806763))

(declare-fun c!132091 () Bool)

(declare-fun lt!628961 () SeekEntryResult!11280)

(assert (=> d!153439 (= c!132091 (and ((_ is Intermediate!11280) lt!628961) (undefined!12092 lt!628961)))))

(declare-fun e!806764 () SeekEntryResult!11280)

(assert (=> d!153439 (= lt!628961 e!806764)))

(declare-fun c!132093 () Bool)

(assert (=> d!153439 (= c!132093 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628960 () (_ BitVec 64))

(assert (=> d!153439 (= lt!628960 (select (arr!46979 a!2831) index!585))))

(assert (=> d!153439 (validMask!0 mask!2608)))

(assert (=> d!153439 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46979 a!2831) j!81) a!2831 mask!2608) lt!628961)))

(declare-fun b!1428489 () Bool)

(assert (=> b!1428489 (= e!806763 (bvsge (x!129151 lt!628961) #b01111111111111111111111111111110))))

(declare-fun b!1428490 () Bool)

(assert (=> b!1428490 (and (bvsge (index!47513 lt!628961) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628961) (size!47530 a!2831)))))

(declare-fun res!963296 () Bool)

(assert (=> b!1428490 (= res!963296 (= (select (arr!46979 a!2831) (index!47513 lt!628961)) (select (arr!46979 a!2831) j!81)))))

(declare-fun e!806766 () Bool)

(assert (=> b!1428490 (=> res!963296 e!806766)))

(declare-fun e!806767 () Bool)

(assert (=> b!1428490 (= e!806767 e!806766)))

(declare-fun b!1428491 () Bool)

(assert (=> b!1428491 (and (bvsge (index!47513 lt!628961) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628961) (size!47530 a!2831)))))

(declare-fun res!963298 () Bool)

(assert (=> b!1428491 (= res!963298 (= (select (arr!46979 a!2831) (index!47513 lt!628961)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1428491 (=> res!963298 e!806766)))

(declare-fun b!1428492 () Bool)

(declare-fun e!806765 () SeekEntryResult!11280)

(assert (=> b!1428492 (= e!806764 e!806765)))

(declare-fun c!132092 () Bool)

(assert (=> b!1428492 (= c!132092 (or (= lt!628960 (select (arr!46979 a!2831) j!81)) (= (bvadd lt!628960 lt!628960) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1428493 () Bool)

(assert (=> b!1428493 (and (bvsge (index!47513 lt!628961) #b00000000000000000000000000000000) (bvslt (index!47513 lt!628961) (size!47530 a!2831)))))

(assert (=> b!1428493 (= e!806766 (= (select (arr!46979 a!2831) (index!47513 lt!628961)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1428494 () Bool)

(assert (=> b!1428494 (= e!806765 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!46979 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1428495 () Bool)

(assert (=> b!1428495 (= e!806763 e!806767)))

(declare-fun res!963297 () Bool)

(assert (=> b!1428495 (= res!963297 (and ((_ is Intermediate!11280) lt!628961) (not (undefined!12092 lt!628961)) (bvslt (x!129151 lt!628961) #b01111111111111111111111111111110) (bvsge (x!129151 lt!628961) #b00000000000000000000000000000000) (bvsge (x!129151 lt!628961) x!605)))))

(assert (=> b!1428495 (=> (not res!963297) (not e!806767))))

(declare-fun b!1428496 () Bool)

(assert (=> b!1428496 (= e!806764 (Intermediate!11280 true index!585 x!605))))

(declare-fun b!1428497 () Bool)

(assert (=> b!1428497 (= e!806765 (Intermediate!11280 false index!585 x!605))))

(assert (= (and d!153439 c!132093) b!1428496))

(assert (= (and d!153439 (not c!132093)) b!1428492))

(assert (= (and b!1428492 c!132092) b!1428497))

(assert (= (and b!1428492 (not c!132092)) b!1428494))

(assert (= (and d!153439 c!132091) b!1428489))

(assert (= (and d!153439 (not c!132091)) b!1428495))

(assert (= (and b!1428495 res!963297) b!1428490))

(assert (= (and b!1428490 (not res!963296)) b!1428491))

(assert (= (and b!1428491 (not res!963298)) b!1428493))

(assert (=> d!153439 m!1318533))

(assert (=> d!153439 m!1318547))

(declare-fun m!1318725 () Bool)

(assert (=> b!1428491 m!1318725))

(assert (=> b!1428494 m!1318683))

(assert (=> b!1428494 m!1318683))

(assert (=> b!1428494 m!1318535))

(declare-fun m!1318727 () Bool)

(assert (=> b!1428494 m!1318727))

(assert (=> b!1428493 m!1318725))

(assert (=> b!1428490 m!1318725))

(assert (=> b!1428246 d!153439))

(check-sat (not b!1428494) (not bm!67383) (not b!1428322) (not b!1428310) (not b!1428325) (not b!1428370) (not b!1428368) (not b!1428331) (not bm!67384) (not d!153401) (not b!1428338) (not bm!67387) (not b!1428443) (not d!153417) (not d!153439) (not b!1428335) (not b!1428451) (not b!1428371) (not d!153389) (not d!153423) (not d!153403))
(check-sat)
