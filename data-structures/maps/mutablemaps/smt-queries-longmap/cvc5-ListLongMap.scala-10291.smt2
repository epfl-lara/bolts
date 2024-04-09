; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121000 () Bool)

(assert start!121000)

(declare-fun b!1406996 () Bool)

(declare-fun res!945164 () Bool)

(declare-fun e!796371 () Bool)

(assert (=> b!1406996 (=> (not res!945164) (not e!796371))))

(declare-datatypes ((array!96174 0))(
  ( (array!96175 (arr!46429 (Array (_ BitVec 32) (_ BitVec 64))) (size!46980 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96174)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1406996 (= res!945164 (validKeyInArray!0 (select (arr!46429 a!2901) j!112)))))

(declare-datatypes ((SeekEntryResult!10762 0))(
  ( (MissingZero!10762 (index!45424 (_ BitVec 32))) (Found!10762 (index!45425 (_ BitVec 32))) (Intermediate!10762 (undefined!11574 Bool) (index!45426 (_ BitVec 32)) (x!127034 (_ BitVec 32))) (Undefined!10762) (MissingVacant!10762 (index!45427 (_ BitVec 32))) )
))
(declare-fun lt!619575 () SeekEntryResult!10762)

(declare-fun lt!619576 () (_ BitVec 32))

(declare-fun b!1406997 () Bool)

(declare-fun e!796373 () Bool)

(assert (=> b!1406997 (= e!796373 (or (bvslt (x!127034 lt!619575) #b00000000000000000000000000000000) (bvsgt (x!127034 lt!619575) #b01111111111111111111111111111110) (and (bvsge lt!619576 #b00000000000000000000000000000000) (bvslt lt!619576 (size!46980 a!2901)))))))

(declare-fun b!1406998 () Bool)

(declare-fun res!945163 () Bool)

(assert (=> b!1406998 (=> (not res!945163) (not e!796371))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96174 (_ BitVec 32)) Bool)

(assert (=> b!1406998 (= res!945163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1406999 () Bool)

(declare-fun res!945162 () Bool)

(assert (=> b!1406999 (=> res!945162 e!796373)))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96174 (_ BitVec 32)) SeekEntryResult!10762)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1406999 (= res!945162 (not (= lt!619575 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96175 (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46980 a!2901)) mask!2840))))))

(declare-fun b!1407000 () Bool)

(declare-fun res!945159 () Bool)

(assert (=> b!1407000 (=> (not res!945159) (not e!796371))))

(assert (=> b!1407000 (= res!945159 (validKeyInArray!0 (select (arr!46429 a!2901) i!1037)))))

(declare-fun b!1407001 () Bool)

(declare-fun res!945161 () Bool)

(assert (=> b!1407001 (=> (not res!945161) (not e!796371))))

(declare-datatypes ((List!33128 0))(
  ( (Nil!33125) (Cons!33124 (h!34381 (_ BitVec 64)) (t!47829 List!33128)) )
))
(declare-fun arrayNoDuplicates!0 (array!96174 (_ BitVec 32) List!33128) Bool)

(assert (=> b!1407001 (= res!945161 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33125))))

(declare-fun b!1407002 () Bool)

(declare-fun e!796372 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96174 (_ BitVec 32)) SeekEntryResult!10762)

(assert (=> b!1407002 (= e!796372 (= (seekEntryOrOpen!0 (select (arr!46429 a!2901) j!112) a!2901 mask!2840) (Found!10762 j!112)))))

(declare-fun b!1407004 () Bool)

(declare-fun res!945165 () Bool)

(assert (=> b!1407004 (=> (not res!945165) (not e!796371))))

(assert (=> b!1407004 (= res!945165 (and (= (size!46980 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46980 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46980 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407003 () Bool)

(assert (=> b!1407003 (= e!796371 (not e!796373))))

(declare-fun res!945157 () Bool)

(assert (=> b!1407003 (=> res!945157 e!796373)))

(assert (=> b!1407003 (= res!945157 (or (not (is-Intermediate!10762 lt!619575)) (undefined!11574 lt!619575)))))

(assert (=> b!1407003 e!796372))

(declare-fun res!945158 () Bool)

(assert (=> b!1407003 (=> (not res!945158) (not e!796372))))

(assert (=> b!1407003 (= res!945158 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47448 0))(
  ( (Unit!47449) )
))
(declare-fun lt!619574 () Unit!47448)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47448)

(assert (=> b!1407003 (= lt!619574 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1407003 (= lt!619575 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619576 (select (arr!46429 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1407003 (= lt!619576 (toIndex!0 (select (arr!46429 a!2901) j!112) mask!2840))))

(declare-fun res!945160 () Bool)

(assert (=> start!121000 (=> (not res!945160) (not e!796371))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121000 (= res!945160 (validMask!0 mask!2840))))

(assert (=> start!121000 e!796371))

(assert (=> start!121000 true))

(declare-fun array_inv!35374 (array!96174) Bool)

(assert (=> start!121000 (array_inv!35374 a!2901)))

(assert (= (and start!121000 res!945160) b!1407004))

(assert (= (and b!1407004 res!945165) b!1407000))

(assert (= (and b!1407000 res!945159) b!1406996))

(assert (= (and b!1406996 res!945164) b!1406998))

(assert (= (and b!1406998 res!945163) b!1407001))

(assert (= (and b!1407001 res!945161) b!1407003))

(assert (= (and b!1407003 res!945158) b!1407002))

(assert (= (and b!1407003 (not res!945157)) b!1406999))

(assert (= (and b!1406999 (not res!945162)) b!1406997))

(declare-fun m!1296239 () Bool)

(assert (=> b!1407000 m!1296239))

(assert (=> b!1407000 m!1296239))

(declare-fun m!1296241 () Bool)

(assert (=> b!1407000 m!1296241))

(declare-fun m!1296243 () Bool)

(assert (=> b!1407001 m!1296243))

(declare-fun m!1296245 () Bool)

(assert (=> b!1406996 m!1296245))

(assert (=> b!1406996 m!1296245))

(declare-fun m!1296247 () Bool)

(assert (=> b!1406996 m!1296247))

(declare-fun m!1296249 () Bool)

(assert (=> start!121000 m!1296249))

(declare-fun m!1296251 () Bool)

(assert (=> start!121000 m!1296251))

(assert (=> b!1407002 m!1296245))

(assert (=> b!1407002 m!1296245))

(declare-fun m!1296253 () Bool)

(assert (=> b!1407002 m!1296253))

(declare-fun m!1296255 () Bool)

(assert (=> b!1406998 m!1296255))

(assert (=> b!1407003 m!1296245))

(declare-fun m!1296257 () Bool)

(assert (=> b!1407003 m!1296257))

(assert (=> b!1407003 m!1296245))

(assert (=> b!1407003 m!1296245))

(declare-fun m!1296259 () Bool)

(assert (=> b!1407003 m!1296259))

(declare-fun m!1296261 () Bool)

(assert (=> b!1407003 m!1296261))

(declare-fun m!1296263 () Bool)

(assert (=> b!1407003 m!1296263))

(declare-fun m!1296265 () Bool)

(assert (=> b!1406999 m!1296265))

(declare-fun m!1296267 () Bool)

(assert (=> b!1406999 m!1296267))

(assert (=> b!1406999 m!1296267))

(declare-fun m!1296269 () Bool)

(assert (=> b!1406999 m!1296269))

(assert (=> b!1406999 m!1296269))

(assert (=> b!1406999 m!1296267))

(declare-fun m!1296271 () Bool)

(assert (=> b!1406999 m!1296271))

(push 1)

(assert (not b!1407003))

(assert (not b!1407001))

(assert (not b!1406999))

(assert (not b!1406996))

(assert (not b!1407000))

(assert (not b!1407002))

(assert (not b!1406998))

(assert (not start!121000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1407122 () Bool)

(declare-fun e!796442 () SeekEntryResult!10762)

(declare-fun e!796439 () SeekEntryResult!10762)

(assert (=> b!1407122 (= e!796442 e!796439)))

(declare-fun c!130408 () Bool)

(declare-fun lt!619620 () (_ BitVec 64))

(assert (=> b!1407122 (= c!130408 (or (= lt!619620 (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!619620 lt!619620) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1407123 () Bool)

(declare-fun lt!619619 () SeekEntryResult!10762)

(assert (=> b!1407123 (and (bvsge (index!45426 lt!619619) #b00000000000000000000000000000000) (bvslt (index!45426 lt!619619) (size!46980 (array!96175 (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46980 a!2901)))))))

(declare-fun e!796441 () Bool)

(assert (=> b!1407123 (= e!796441 (= (select (arr!46429 (array!96175 (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46980 a!2901))) (index!45426 lt!619619)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1407124 () Bool)

(assert (=> b!1407124 (= e!796442 (Intermediate!10762 true (toIndex!0 (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1407125 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407125 (= e!796439 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96175 (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46980 a!2901)) mask!2840))))

(declare-fun d!151449 () Bool)

(declare-fun e!796438 () Bool)

(assert (=> d!151449 e!796438))

(declare-fun c!130407 () Bool)

(assert (=> d!151449 (= c!130407 (and (is-Intermediate!10762 lt!619619) (undefined!11574 lt!619619)))))

(assert (=> d!151449 (= lt!619619 e!796442)))

(declare-fun c!130409 () Bool)

(assert (=> d!151449 (= c!130409 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151449 (= lt!619620 (select (arr!46429 (array!96175 (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46980 a!2901))) (toIndex!0 (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151449 (validMask!0 mask!2840)))

(assert (=> d!151449 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96175 (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46980 a!2901)) mask!2840) lt!619619)))

(declare-fun b!1407126 () Bool)

(declare-fun e!796440 () Bool)

(assert (=> b!1407126 (= e!796438 e!796440)))

(declare-fun res!945242 () Bool)

(assert (=> b!1407126 (= res!945242 (and (is-Intermediate!10762 lt!619619) (not (undefined!11574 lt!619619)) (bvslt (x!127034 lt!619619) #b01111111111111111111111111111110) (bvsge (x!127034 lt!619619) #b00000000000000000000000000000000) (bvsge (x!127034 lt!619619) #b00000000000000000000000000000000)))))

(assert (=> b!1407126 (=> (not res!945242) (not e!796440))))

(declare-fun b!1407127 () Bool)

(assert (=> b!1407127 (and (bvsge (index!45426 lt!619619) #b00000000000000000000000000000000) (bvslt (index!45426 lt!619619) (size!46980 (array!96175 (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46980 a!2901)))))))

(declare-fun res!945243 () Bool)

(assert (=> b!1407127 (= res!945243 (= (select (arr!46429 (array!96175 (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46980 a!2901))) (index!45426 lt!619619)) (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1407127 (=> res!945243 e!796441)))

(assert (=> b!1407127 (= e!796440 e!796441)))

(declare-fun b!1407128 () Bool)

(assert (=> b!1407128 (= e!796439 (Intermediate!10762 false (toIndex!0 (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1407129 () Bool)

(assert (=> b!1407129 (and (bvsge (index!45426 lt!619619) #b00000000000000000000000000000000) (bvslt (index!45426 lt!619619) (size!46980 (array!96175 (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46980 a!2901)))))))

(declare-fun res!945241 () Bool)

(assert (=> b!1407129 (= res!945241 (= (select (arr!46429 (array!96175 (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46980 a!2901))) (index!45426 lt!619619)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1407129 (=> res!945241 e!796441)))

(declare-fun b!1407130 () Bool)

(assert (=> b!1407130 (= e!796438 (bvsge (x!127034 lt!619619) #b01111111111111111111111111111110))))

(assert (= (and d!151449 c!130409) b!1407124))

(assert (= (and d!151449 (not c!130409)) b!1407122))

(assert (= (and b!1407122 c!130408) b!1407128))

(assert (= (and b!1407122 (not c!130408)) b!1407125))

(assert (= (and d!151449 c!130407) b!1407130))

(assert (= (and d!151449 (not c!130407)) b!1407126))

(assert (= (and b!1407126 res!945242) b!1407127))

(assert (= (and b!1407127 (not res!945243)) b!1407129))

(assert (= (and b!1407129 (not res!945241)) b!1407123))

(declare-fun m!1296369 () Bool)

(assert (=> b!1407127 m!1296369))

(assert (=> d!151449 m!1296269))

(declare-fun m!1296371 () Bool)

(assert (=> d!151449 m!1296371))

(assert (=> d!151449 m!1296249))

(assert (=> b!1407129 m!1296369))

(assert (=> b!1407125 m!1296269))

(declare-fun m!1296373 () Bool)

(assert (=> b!1407125 m!1296373))

(assert (=> b!1407125 m!1296373))

(assert (=> b!1407125 m!1296267))

(declare-fun m!1296375 () Bool)

(assert (=> b!1407125 m!1296375))

(assert (=> b!1407123 m!1296369))

(assert (=> b!1406999 d!151449))

(declare-fun d!151459 () Bool)

(declare-fun lt!619627 () (_ BitVec 32))

(declare-fun lt!619626 () (_ BitVec 32))

(assert (=> d!151459 (= lt!619627 (bvmul (bvxor lt!619626 (bvlshr lt!619626 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151459 (= lt!619626 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151459 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945244 (let ((h!34384 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127038 (bvmul (bvxor h!34384 (bvlshr h!34384 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127038 (bvlshr x!127038 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945244 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945244 #b00000000000000000000000000000000))))))

(assert (=> d!151459 (= (toIndex!0 (select (store (arr!46429 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!619627 (bvlshr lt!619627 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1406999 d!151459))

(declare-fun d!151461 () Bool)

(assert (=> d!151461 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121000 d!151461))

(declare-fun d!151463 () Bool)

(assert (=> d!151463 (= (array_inv!35374 a!2901) (bvsge (size!46980 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121000 d!151463))

(declare-fun d!151465 () Bool)

(assert (=> d!151465 (= (validKeyInArray!0 (select (arr!46429 a!2901) i!1037)) (and (not (= (select (arr!46429 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46429 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1407000 d!151465))

(declare-fun b!1407237 () Bool)

(declare-fun e!796509 () SeekEntryResult!10762)

(declare-fun lt!619674 () SeekEntryResult!10762)

(assert (=> b!1407237 (= e!796509 (Found!10762 (index!45426 lt!619674)))))

(declare-fun b!1407238 () Bool)

(declare-fun c!130446 () Bool)

(declare-fun lt!619675 () (_ BitVec 64))

(assert (=> b!1407238 (= c!130446 (= lt!619675 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!796510 () SeekEntryResult!10762)

(assert (=> b!1407238 (= e!796509 e!796510)))

(declare-fun b!1407239 () Bool)

(assert (=> b!1407239 (= e!796510 (MissingZero!10762 (index!45426 lt!619674)))))

(declare-fun b!1407240 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96174 (_ BitVec 32)) SeekEntryResult!10762)

(assert (=> b!1407240 (= e!796510 (seekKeyOrZeroReturnVacant!0 (x!127034 lt!619674) (index!45426 lt!619674) (index!45426 lt!619674) (select (arr!46429 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407241 () Bool)

(declare-fun e!796508 () SeekEntryResult!10762)

(assert (=> b!1407241 (= e!796508 Undefined!10762)))

(declare-fun b!1407242 () Bool)

(assert (=> b!1407242 (= e!796508 e!796509)))

(assert (=> b!1407242 (= lt!619675 (select (arr!46429 a!2901) (index!45426 lt!619674)))))

(declare-fun c!130445 () Bool)

(assert (=> b!1407242 (= c!130445 (= lt!619675 (select (arr!46429 a!2901) j!112)))))

(declare-fun d!151467 () Bool)

(declare-fun lt!619676 () SeekEntryResult!10762)

(assert (=> d!151467 (and (or (is-Undefined!10762 lt!619676) (not (is-Found!10762 lt!619676)) (and (bvsge (index!45425 lt!619676) #b00000000000000000000000000000000) (bvslt (index!45425 lt!619676) (size!46980 a!2901)))) (or (is-Undefined!10762 lt!619676) (is-Found!10762 lt!619676) (not (is-MissingZero!10762 lt!619676)) (and (bvsge (index!45424 lt!619676) #b00000000000000000000000000000000) (bvslt (index!45424 lt!619676) (size!46980 a!2901)))) (or (is-Undefined!10762 lt!619676) (is-Found!10762 lt!619676) (is-MissingZero!10762 lt!619676) (not (is-MissingVacant!10762 lt!619676)) (and (bvsge (index!45427 lt!619676) #b00000000000000000000000000000000) (bvslt (index!45427 lt!619676) (size!46980 a!2901)))) (or (is-Undefined!10762 lt!619676) (ite (is-Found!10762 lt!619676) (= (select (arr!46429 a!2901) (index!45425 lt!619676)) (select (arr!46429 a!2901) j!112)) (ite (is-MissingZero!10762 lt!619676) (= (select (arr!46429 a!2901) (index!45424 lt!619676)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10762 lt!619676) (= (select (arr!46429 a!2901) (index!45427 lt!619676)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151467 (= lt!619676 e!796508)))

(declare-fun c!130444 () Bool)

(assert (=> d!151467 (= c!130444 (and (is-Intermediate!10762 lt!619674) (undefined!11574 lt!619674)))))

(assert (=> d!151467 (= lt!619674 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46429 a!2901) j!112) mask!2840) (select (arr!46429 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151467 (validMask!0 mask!2840)))

(assert (=> d!151467 (= (seekEntryOrOpen!0 (select (arr!46429 a!2901) j!112) a!2901 mask!2840) lt!619676)))

(assert (= (and d!151467 c!130444) b!1407241))

(assert (= (and d!151467 (not c!130444)) b!1407242))

(assert (= (and b!1407242 c!130445) b!1407237))

(assert (= (and b!1407242 (not c!130445)) b!1407238))

(assert (= (and b!1407238 c!130446) b!1407239))

(assert (= (and b!1407238 (not c!130446)) b!1407240))

(assert (=> b!1407240 m!1296245))

(declare-fun m!1296425 () Bool)

(assert (=> b!1407240 m!1296425))

(declare-fun m!1296427 () Bool)

(assert (=> b!1407242 m!1296427))

(declare-fun m!1296429 () Bool)

(assert (=> d!151467 m!1296429))

(assert (=> d!151467 m!1296249))

(assert (=> d!151467 m!1296245))

(assert (=> d!151467 m!1296257))

(declare-fun m!1296431 () Bool)

(assert (=> d!151467 m!1296431))

(declare-fun m!1296433 () Bool)

(assert (=> d!151467 m!1296433))

(assert (=> d!151467 m!1296257))

(assert (=> d!151467 m!1296245))

(declare-fun m!1296435 () Bool)

(assert (=> d!151467 m!1296435))

(assert (=> b!1407002 d!151467))

(declare-fun d!151489 () Bool)

(assert (=> d!151489 (= (validKeyInArray!0 (select (arr!46429 a!2901) j!112)) (and (not (= (select (arr!46429 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46429 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1406996 d!151489))

(declare-fun b!1407253 () Bool)

(declare-fun e!796520 () Bool)

(declare-fun call!66985 () Bool)

(assert (=> b!1407253 (= e!796520 call!66985)))

(declare-fun b!1407254 () Bool)

(declare-fun e!796522 () Bool)

(assert (=> b!1407254 (= e!796522 e!796520)))

(declare-fun c!130449 () Bool)

(assert (=> b!1407254 (= c!130449 (validKeyInArray!0 (select (arr!46429 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1407255 () Bool)

(declare-fun e!796519 () Bool)

(declare-fun contains!9813 (List!33128 (_ BitVec 64)) Bool)

(assert (=> b!1407255 (= e!796519 (contains!9813 Nil!33125 (select (arr!46429 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151491 () Bool)

(declare-fun res!945293 () Bool)

(declare-fun e!796521 () Bool)

(assert (=> d!151491 (=> res!945293 e!796521)))

(assert (=> d!151491 (= res!945293 (bvsge #b00000000000000000000000000000000 (size!46980 a!2901)))))

(assert (=> d!151491 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33125) e!796521)))

(declare-fun b!1407256 () Bool)

(assert (=> b!1407256 (= e!796520 call!66985)))

(declare-fun b!1407257 () Bool)

(assert (=> b!1407257 (= e!796521 e!796522)))

(declare-fun res!945291 () Bool)

(assert (=> b!1407257 (=> (not res!945291) (not e!796522))))

(assert (=> b!1407257 (= res!945291 (not e!796519))))

(declare-fun res!945292 () Bool)

(assert (=> b!1407257 (=> (not res!945292) (not e!796519))))

(assert (=> b!1407257 (= res!945292 (validKeyInArray!0 (select (arr!46429 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66982 () Bool)

(assert (=> bm!66982 (= call!66985 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130449 (Cons!33124 (select (arr!46429 a!2901) #b00000000000000000000000000000000) Nil!33125) Nil!33125)))))

(assert (= (and d!151491 (not res!945293)) b!1407257))

(assert (= (and b!1407257 res!945292) b!1407255))

(assert (= (and b!1407257 res!945291) b!1407254))

(assert (= (and b!1407254 c!130449) b!1407256))

(assert (= (and b!1407254 (not c!130449)) b!1407253))

(assert (= (or b!1407256 b!1407253) bm!66982))

(declare-fun m!1296437 () Bool)

(assert (=> b!1407254 m!1296437))

(assert (=> b!1407254 m!1296437))

(declare-fun m!1296439 () Bool)

(assert (=> b!1407254 m!1296439))

(assert (=> b!1407255 m!1296437))

(assert (=> b!1407255 m!1296437))

(declare-fun m!1296441 () Bool)

(assert (=> b!1407255 m!1296441))

(assert (=> b!1407257 m!1296437))

(assert (=> b!1407257 m!1296437))

(assert (=> b!1407257 m!1296439))

(assert (=> bm!66982 m!1296437))

(declare-fun m!1296447 () Bool)

(assert (=> bm!66982 m!1296447))

(assert (=> b!1407001 d!151491))

(declare-fun b!1407291 () Bool)

(declare-fun e!796543 () Bool)

(declare-fun call!66989 () Bool)

(assert (=> b!1407291 (= e!796543 call!66989)))

(declare-fun b!1407292 () Bool)

(declare-fun e!796544 () Bool)

(declare-fun e!796545 () Bool)

(assert (=> b!1407292 (= e!796544 e!796545)))

(declare-fun c!130462 () Bool)

(assert (=> b!1407292 (= c!130462 (validKeyInArray!0 (select (arr!46429 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66986 () Bool)

(assert (=> bm!66986 (= call!66989 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!151499 () Bool)

(declare-fun res!945303 () Bool)

(assert (=> d!151499 (=> res!945303 e!796544)))

(assert (=> d!151499 (= res!945303 (bvsge #b00000000000000000000000000000000 (size!46980 a!2901)))))

(assert (=> d!151499 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!796544)))

(declare-fun b!1407293 () Bool)

(assert (=> b!1407293 (= e!796545 call!66989)))

(declare-fun b!1407294 () Bool)

(assert (=> b!1407294 (= e!796545 e!796543)))

(declare-fun lt!619701 () (_ BitVec 64))

(assert (=> b!1407294 (= lt!619701 (select (arr!46429 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!619699 () Unit!47448)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96174 (_ BitVec 64) (_ BitVec 32)) Unit!47448)

(assert (=> b!1407294 (= lt!619699 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619701 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1407294 (arrayContainsKey!0 a!2901 lt!619701 #b00000000000000000000000000000000)))

(declare-fun lt!619700 () Unit!47448)

(assert (=> b!1407294 (= lt!619700 lt!619699)))

(declare-fun res!945304 () Bool)

(assert (=> b!1407294 (= res!945304 (= (seekEntryOrOpen!0 (select (arr!46429 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10762 #b00000000000000000000000000000000)))))

(assert (=> b!1407294 (=> (not res!945304) (not e!796543))))

(assert (= (and d!151499 (not res!945303)) b!1407292))

(assert (= (and b!1407292 c!130462) b!1407294))

(assert (= (and b!1407292 (not c!130462)) b!1407293))

(assert (= (and b!1407294 res!945304) b!1407291))

(assert (= (or b!1407291 b!1407293) bm!66986))

(assert (=> b!1407292 m!1296437))

(assert (=> b!1407292 m!1296437))

(assert (=> b!1407292 m!1296439))

(declare-fun m!1296461 () Bool)

(assert (=> bm!66986 m!1296461))

(assert (=> b!1407294 m!1296437))

(declare-fun m!1296463 () Bool)

(assert (=> b!1407294 m!1296463))

(declare-fun m!1296467 () Bool)

(assert (=> b!1407294 m!1296467))

(assert (=> b!1407294 m!1296437))

(declare-fun m!1296473 () Bool)

(assert (=> b!1407294 m!1296473))

(assert (=> b!1406998 d!151499))

(declare-fun b!1407301 () Bool)

(declare-fun e!796549 () Bool)

(declare-fun call!66990 () Bool)

(assert (=> b!1407301 (= e!796549 call!66990)))

(declare-fun b!1407302 () Bool)

(declare-fun e!796550 () Bool)

(declare-fun e!796551 () Bool)

(assert (=> b!1407302 (= e!796550 e!796551)))

(declare-fun c!130466 () Bool)

(assert (=> b!1407302 (= c!130466 (validKeyInArray!0 (select (arr!46429 a!2901) j!112)))))

(declare-fun bm!66987 () Bool)

(assert (=> bm!66987 (= call!66990 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!151507 () Bool)

(declare-fun res!945305 () Bool)

(assert (=> d!151507 (=> res!945305 e!796550)))

(assert (=> d!151507 (= res!945305 (bvsge j!112 (size!46980 a!2901)))))

(assert (=> d!151507 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!796550)))

(declare-fun b!1407303 () Bool)

(assert (=> b!1407303 (= e!796551 call!66990)))

(declare-fun b!1407304 () Bool)

(assert (=> b!1407304 (= e!796551 e!796549)))

(declare-fun lt!619707 () (_ BitVec 64))

(assert (=> b!1407304 (= lt!619707 (select (arr!46429 a!2901) j!112))))

(declare-fun lt!619705 () Unit!47448)

(assert (=> b!1407304 (= lt!619705 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619707 j!112))))

(assert (=> b!1407304 (arrayContainsKey!0 a!2901 lt!619707 #b00000000000000000000000000000000)))

(declare-fun lt!619706 () Unit!47448)

(assert (=> b!1407304 (= lt!619706 lt!619705)))

(declare-fun res!945306 () Bool)

(assert (=> b!1407304 (= res!945306 (= (seekEntryOrOpen!0 (select (arr!46429 a!2901) j!112) a!2901 mask!2840) (Found!10762 j!112)))))

(assert (=> b!1407304 (=> (not res!945306) (not e!796549))))

(assert (= (and d!151507 (not res!945305)) b!1407302))

(assert (= (and b!1407302 c!130466) b!1407304))

(assert (= (and b!1407302 (not c!130466)) b!1407303))

(assert (= (and b!1407304 res!945306) b!1407301))

(assert (= (or b!1407301 b!1407303) bm!66987))

(assert (=> b!1407302 m!1296245))

(assert (=> b!1407302 m!1296245))

(assert (=> b!1407302 m!1296247))

(declare-fun m!1296481 () Bool)

(assert (=> bm!66987 m!1296481))

(assert (=> b!1407304 m!1296245))

(declare-fun m!1296483 () Bool)

(assert (=> b!1407304 m!1296483))

(declare-fun m!1296485 () Bool)

(assert (=> b!1407304 m!1296485))

(assert (=> b!1407304 m!1296245))

(assert (=> b!1407304 m!1296253))

(assert (=> b!1407003 d!151507))

(declare-fun d!151511 () Bool)

(assert (=> d!151511 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!619710 () Unit!47448)

(declare-fun choose!38 (array!96174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47448)

(assert (=> d!151511 (= lt!619710 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151511 (validMask!0 mask!2840)))

(assert (=> d!151511 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!619710)))

(declare-fun bs!41011 () Bool)

(assert (= bs!41011 d!151511))

(assert (=> bs!41011 m!1296263))

(declare-fun m!1296487 () Bool)

(assert (=> bs!41011 m!1296487))

(assert (=> bs!41011 m!1296249))

(assert (=> b!1407003 d!151511))

(declare-fun b!1407305 () Bool)

(declare-fun e!796556 () SeekEntryResult!10762)

(declare-fun e!796553 () SeekEntryResult!10762)

(assert (=> b!1407305 (= e!796556 e!796553)))

(declare-fun c!130468 () Bool)

(declare-fun lt!619712 () (_ BitVec 64))

(assert (=> b!1407305 (= c!130468 (or (= lt!619712 (select (arr!46429 a!2901) j!112)) (= (bvadd lt!619712 lt!619712) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1407306 () Bool)

(declare-fun lt!619711 () SeekEntryResult!10762)

(assert (=> b!1407306 (and (bvsge (index!45426 lt!619711) #b00000000000000000000000000000000) (bvslt (index!45426 lt!619711) (size!46980 a!2901)))))

(declare-fun e!796555 () Bool)

(assert (=> b!1407306 (= e!796555 (= (select (arr!46429 a!2901) (index!45426 lt!619711)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1407307 () Bool)

(assert (=> b!1407307 (= e!796556 (Intermediate!10762 true lt!619576 #b00000000000000000000000000000000))))

(declare-fun b!1407308 () Bool)

(assert (=> b!1407308 (= e!796553 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!619576 #b00000000000000000000000000000000 mask!2840) (select (arr!46429 a!2901) j!112) a!2901 mask!2840))))

(declare-fun d!151513 () Bool)

(declare-fun e!796552 () Bool)

(assert (=> d!151513 e!796552))

(declare-fun c!130467 () Bool)

(assert (=> d!151513 (= c!130467 (and (is-Intermediate!10762 lt!619711) (undefined!11574 lt!619711)))))

(assert (=> d!151513 (= lt!619711 e!796556)))

(declare-fun c!130469 () Bool)

(assert (=> d!151513 (= c!130469 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151513 (= lt!619712 (select (arr!46429 a!2901) lt!619576))))

(assert (=> d!151513 (validMask!0 mask!2840)))

(assert (=> d!151513 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619576 (select (arr!46429 a!2901) j!112) a!2901 mask!2840) lt!619711)))

(declare-fun b!1407309 () Bool)

(declare-fun e!796554 () Bool)

(assert (=> b!1407309 (= e!796552 e!796554)))

(declare-fun res!945308 () Bool)

(assert (=> b!1407309 (= res!945308 (and (is-Intermediate!10762 lt!619711) (not (undefined!11574 lt!619711)) (bvslt (x!127034 lt!619711) #b01111111111111111111111111111110) (bvsge (x!127034 lt!619711) #b00000000000000000000000000000000) (bvsge (x!127034 lt!619711) #b00000000000000000000000000000000)))))

(assert (=> b!1407309 (=> (not res!945308) (not e!796554))))

(declare-fun b!1407310 () Bool)

(assert (=> b!1407310 (and (bvsge (index!45426 lt!619711) #b00000000000000000000000000000000) (bvslt (index!45426 lt!619711) (size!46980 a!2901)))))

(declare-fun res!945309 () Bool)

(assert (=> b!1407310 (= res!945309 (= (select (arr!46429 a!2901) (index!45426 lt!619711)) (select (arr!46429 a!2901) j!112)))))

(assert (=> b!1407310 (=> res!945309 e!796555)))

(assert (=> b!1407310 (= e!796554 e!796555)))

(declare-fun b!1407311 () Bool)

(assert (=> b!1407311 (= e!796553 (Intermediate!10762 false lt!619576 #b00000000000000000000000000000000))))

(declare-fun b!1407312 () Bool)

(assert (=> b!1407312 (and (bvsge (index!45426 lt!619711) #b00000000000000000000000000000000) (bvslt (index!45426 lt!619711) (size!46980 a!2901)))))

(declare-fun res!945307 () Bool)

(assert (=> b!1407312 (= res!945307 (= (select (arr!46429 a!2901) (index!45426 lt!619711)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1407312 (=> res!945307 e!796555)))

(declare-fun b!1407313 () Bool)

(assert (=> b!1407313 (= e!796552 (bvsge (x!127034 lt!619711) #b01111111111111111111111111111110))))

(assert (= (and d!151513 c!130469) b!1407307))

(assert (= (and d!151513 (not c!130469)) b!1407305))

(assert (= (and b!1407305 c!130468) b!1407311))

(assert (= (and b!1407305 (not c!130468)) b!1407308))

(assert (= (and d!151513 c!130467) b!1407313))

(assert (= (and d!151513 (not c!130467)) b!1407309))

(assert (= (and b!1407309 res!945308) b!1407310))

(assert (= (and b!1407310 (not res!945309)) b!1407312))

(assert (= (and b!1407312 (not res!945307)) b!1407306))

(declare-fun m!1296489 () Bool)

(assert (=> b!1407310 m!1296489))

(declare-fun m!1296491 () Bool)

(assert (=> d!151513 m!1296491))

(assert (=> d!151513 m!1296249))

(assert (=> b!1407312 m!1296489))

(declare-fun m!1296493 () Bool)

(assert (=> b!1407308 m!1296493))

(assert (=> b!1407308 m!1296493))

(assert (=> b!1407308 m!1296245))

(declare-fun m!1296495 () Bool)

(assert (=> b!1407308 m!1296495))

(assert (=> b!1407306 m!1296489))

(assert (=> b!1407003 d!151513))

(declare-fun d!151515 () Bool)

(declare-fun lt!619714 () (_ BitVec 32))

(declare-fun lt!619713 () (_ BitVec 32))

(assert (=> d!151515 (= lt!619714 (bvmul (bvxor lt!619713 (bvlshr lt!619713 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151515 (= lt!619713 ((_ extract 31 0) (bvand (bvxor (select (arr!46429 a!2901) j!112) (bvlshr (select (arr!46429 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151515 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945244 (let ((h!34384 ((_ extract 31 0) (bvand (bvxor (select (arr!46429 a!2901) j!112) (bvlshr (select (arr!46429 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127038 (bvmul (bvxor h!34384 (bvlshr h!34384 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127038 (bvlshr x!127038 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945244 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945244 #b00000000000000000000000000000000))))))

(assert (=> d!151515 (= (toIndex!0 (select (arr!46429 a!2901) j!112) mask!2840) (bvand (bvxor lt!619714 (bvlshr lt!619714 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1407003 d!151515))

(push 1)

(assert (not b!1407240))

(assert (not d!151513))

(assert (not b!1407292))

(assert (not bm!66982))

(assert (not b!1407308))

(assert (not b!1407254))

(assert (not bm!66987))

(assert (not d!151449))

(assert (not b!1407257))

(assert (not b!1407304))

(assert (not b!1407125))

(assert (not b!1407255))

(assert (not b!1407294))

(assert (not d!151511))

(assert (not d!151467))

(assert (not b!1407302))

(assert (not bm!66986))

(check-sat)

(pop 1)

(push 1)

(check-sat)

