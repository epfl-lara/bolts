; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120674 () Bool)

(assert start!120674)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96001 0))(
  ( (array!96002 (arr!46347 (Array (_ BitVec 32) (_ BitVec 64))) (size!46898 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96001)

(declare-fun e!795040 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun b!1404408 () Bool)

(declare-datatypes ((SeekEntryResult!10680 0))(
  ( (MissingZero!10680 (index!45096 (_ BitVec 32))) (Found!10680 (index!45097 (_ BitVec 32))) (Intermediate!10680 (undefined!11492 Bool) (index!45098 (_ BitVec 32)) (x!126710 (_ BitVec 32))) (Undefined!10680) (MissingVacant!10680 (index!45099 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96001 (_ BitVec 32)) SeekEntryResult!10680)

(assert (=> b!1404408 (= e!795040 (not (= (seekEntryOrOpen!0 (select (arr!46347 a!2901) j!112) a!2901 mask!2840) (Found!10680 j!112))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96001 (_ BitVec 32)) Bool)

(assert (=> b!1404408 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47284 0))(
  ( (Unit!47285) )
))
(declare-fun lt!618610 () Unit!47284)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96001 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47284)

(assert (=> b!1404408 (= lt!618610 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!618609 () SeekEntryResult!10680)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96001 (_ BitVec 32)) SeekEntryResult!10680)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404408 (= lt!618609 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46347 a!2901) j!112) mask!2840) (select (arr!46347 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404409 () Bool)

(declare-fun res!943028 () Bool)

(assert (=> b!1404409 (=> (not res!943028) (not e!795040))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1404409 (= res!943028 (validKeyInArray!0 (select (arr!46347 a!2901) i!1037)))))

(declare-fun b!1404410 () Bool)

(declare-fun res!943029 () Bool)

(assert (=> b!1404410 (=> (not res!943029) (not e!795040))))

(declare-datatypes ((List!33046 0))(
  ( (Nil!33043) (Cons!33042 (h!34290 (_ BitVec 64)) (t!47747 List!33046)) )
))
(declare-fun arrayNoDuplicates!0 (array!96001 (_ BitVec 32) List!33046) Bool)

(assert (=> b!1404410 (= res!943029 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33043))))

(declare-fun b!1404411 () Bool)

(declare-fun res!943027 () Bool)

(assert (=> b!1404411 (=> (not res!943027) (not e!795040))))

(assert (=> b!1404411 (= res!943027 (and (= (size!46898 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46898 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46898 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1404412 () Bool)

(declare-fun res!943031 () Bool)

(assert (=> b!1404412 (=> (not res!943031) (not e!795040))))

(assert (=> b!1404412 (= res!943031 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1404407 () Bool)

(declare-fun res!943032 () Bool)

(assert (=> b!1404407 (=> (not res!943032) (not e!795040))))

(assert (=> b!1404407 (= res!943032 (validKeyInArray!0 (select (arr!46347 a!2901) j!112)))))

(declare-fun res!943030 () Bool)

(assert (=> start!120674 (=> (not res!943030) (not e!795040))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120674 (= res!943030 (validMask!0 mask!2840))))

(assert (=> start!120674 e!795040))

(assert (=> start!120674 true))

(declare-fun array_inv!35292 (array!96001) Bool)

(assert (=> start!120674 (array_inv!35292 a!2901)))

(assert (= (and start!120674 res!943030) b!1404411))

(assert (= (and b!1404411 res!943027) b!1404409))

(assert (= (and b!1404409 res!943028) b!1404407))

(assert (= (and b!1404407 res!943032) b!1404412))

(assert (= (and b!1404412 res!943031) b!1404410))

(assert (= (and b!1404410 res!943029) b!1404408))

(declare-fun m!1293333 () Bool)

(assert (=> b!1404407 m!1293333))

(assert (=> b!1404407 m!1293333))

(declare-fun m!1293335 () Bool)

(assert (=> b!1404407 m!1293335))

(assert (=> b!1404408 m!1293333))

(declare-fun m!1293337 () Bool)

(assert (=> b!1404408 m!1293337))

(assert (=> b!1404408 m!1293333))

(declare-fun m!1293339 () Bool)

(assert (=> b!1404408 m!1293339))

(assert (=> b!1404408 m!1293333))

(declare-fun m!1293341 () Bool)

(assert (=> b!1404408 m!1293341))

(assert (=> b!1404408 m!1293337))

(assert (=> b!1404408 m!1293333))

(declare-fun m!1293343 () Bool)

(assert (=> b!1404408 m!1293343))

(declare-fun m!1293345 () Bool)

(assert (=> b!1404408 m!1293345))

(declare-fun m!1293347 () Bool)

(assert (=> start!120674 m!1293347))

(declare-fun m!1293349 () Bool)

(assert (=> start!120674 m!1293349))

(declare-fun m!1293351 () Bool)

(assert (=> b!1404410 m!1293351))

(declare-fun m!1293353 () Bool)

(assert (=> b!1404412 m!1293353))

(declare-fun m!1293355 () Bool)

(assert (=> b!1404409 m!1293355))

(assert (=> b!1404409 m!1293355))

(declare-fun m!1293357 () Bool)

(assert (=> b!1404409 m!1293357))

(push 1)

(assert (not start!120674))

(assert (not b!1404410))

(assert (not b!1404407))

(assert (not b!1404409))

(assert (not b!1404412))

(assert (not b!1404408))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1404439 () Bool)

(declare-fun lt!618622 () SeekEntryResult!10680)

(assert (=> b!1404439 (and (bvsge (index!45098 lt!618622) #b00000000000000000000000000000000) (bvslt (index!45098 lt!618622) (size!46898 a!2901)))))

(declare-fun res!943043 () Bool)

(assert (=> b!1404439 (= res!943043 (= (select (arr!46347 a!2901) (index!45098 lt!618622)) (select (arr!46347 a!2901) j!112)))))

(declare-fun e!795061 () Bool)

(assert (=> b!1404439 (=> res!943043 e!795061)))

(declare-fun e!795060 () Bool)

(assert (=> b!1404439 (= e!795060 e!795061)))

(declare-fun b!1404440 () Bool)

(declare-fun e!795059 () SeekEntryResult!10680)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1404440 (= e!795059 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46347 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46347 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404441 () Bool)

(declare-fun e!795062 () SeekEntryResult!10680)

(assert (=> b!1404441 (= e!795062 e!795059)))

(declare-fun c!130160 () Bool)

(declare-fun lt!618621 () (_ BitVec 64))

(assert (=> b!1404441 (= c!130160 (or (= lt!618621 (select (arr!46347 a!2901) j!112)) (= (bvadd lt!618621 lt!618621) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!151183 () Bool)

(declare-fun e!795058 () Bool)

(assert (=> d!151183 e!795058))

(declare-fun c!130161 () Bool)

(assert (=> d!151183 (= c!130161 (and (is-Intermediate!10680 lt!618622) (undefined!11492 lt!618622)))))

(assert (=> d!151183 (= lt!618622 e!795062)))

(declare-fun c!130162 () Bool)

(assert (=> d!151183 (= c!130162 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151183 (= lt!618621 (select (arr!46347 a!2901) (toIndex!0 (select (arr!46347 a!2901) j!112) mask!2840)))))

(assert (=> d!151183 (validMask!0 mask!2840)))

(assert (=> d!151183 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46347 a!2901) j!112) mask!2840) (select (arr!46347 a!2901) j!112) a!2901 mask!2840) lt!618622)))

(declare-fun b!1404442 () Bool)

(assert (=> b!1404442 (= e!795058 e!795060)))

(declare-fun res!943045 () Bool)

(assert (=> b!1404442 (= res!943045 (and (is-Intermediate!10680 lt!618622) (not (undefined!11492 lt!618622)) (bvslt (x!126710 lt!618622) #b01111111111111111111111111111110) (bvsge (x!126710 lt!618622) #b00000000000000000000000000000000) (bvsge (x!126710 lt!618622) #b00000000000000000000000000000000)))))

(assert (=> b!1404442 (=> (not res!943045) (not e!795060))))

(declare-fun b!1404443 () Bool)

(assert (=> b!1404443 (and (bvsge (index!45098 lt!618622) #b00000000000000000000000000000000) (bvslt (index!45098 lt!618622) (size!46898 a!2901)))))

(assert (=> b!1404443 (= e!795061 (= (select (arr!46347 a!2901) (index!45098 lt!618622)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1404444 () Bool)

(assert (=> b!1404444 (= e!795059 (Intermediate!10680 false (toIndex!0 (select (arr!46347 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1404445 () Bool)

(assert (=> b!1404445 (and (bvsge (index!45098 lt!618622) #b00000000000000000000000000000000) (bvslt (index!45098 lt!618622) (size!46898 a!2901)))))

(declare-fun res!943044 () Bool)

(assert (=> b!1404445 (= res!943044 (= (select (arr!46347 a!2901) (index!45098 lt!618622)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1404445 (=> res!943044 e!795061)))

(declare-fun b!1404446 () Bool)

(assert (=> b!1404446 (= e!795058 (bvsge (x!126710 lt!618622) #b01111111111111111111111111111110))))

(declare-fun b!1404447 () Bool)

(assert (=> b!1404447 (= e!795062 (Intermediate!10680 true (toIndex!0 (select (arr!46347 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!151183 c!130162) b!1404447))

(assert (= (and d!151183 (not c!130162)) b!1404441))

(assert (= (and b!1404441 c!130160) b!1404444))

(assert (= (and b!1404441 (not c!130160)) b!1404440))

(assert (= (and d!151183 c!130161) b!1404446))

(assert (= (and d!151183 (not c!130161)) b!1404442))

(assert (= (and b!1404442 res!943045) b!1404439))

(assert (= (and b!1404439 (not res!943043)) b!1404445))

(assert (= (and b!1404445 (not res!943044)) b!1404443))

(declare-fun m!1293359 () Bool)

(assert (=> b!1404443 m!1293359))

(assert (=> b!1404445 m!1293359))

(assert (=> d!151183 m!1293337))

(declare-fun m!1293361 () Bool)

(assert (=> d!151183 m!1293361))

(assert (=> d!151183 m!1293347))

(assert (=> b!1404440 m!1293337))

(declare-fun m!1293363 () Bool)

(assert (=> b!1404440 m!1293363))

(assert (=> b!1404440 m!1293363))

(assert (=> b!1404440 m!1293333))

(declare-fun m!1293365 () Bool)

(assert (=> b!1404440 m!1293365))

(assert (=> b!1404439 m!1293359))

(assert (=> b!1404408 d!151183))

(declare-fun b!1404486 () Bool)

(declare-fun c!130175 () Bool)

(declare-fun lt!618641 () (_ BitVec 64))

(assert (=> b!1404486 (= c!130175 (= lt!618641 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!795089 () SeekEntryResult!10680)

(declare-fun e!795090 () SeekEntryResult!10680)

(assert (=> b!1404486 (= e!795089 e!795090)))

(declare-fun b!1404487 () Bool)

(declare-fun e!795091 () SeekEntryResult!10680)

(assert (=> b!1404487 (= e!795091 e!795089)))

(declare-fun lt!618642 () SeekEntryResult!10680)

(assert (=> b!1404487 (= lt!618641 (select (arr!46347 a!2901) (index!45098 lt!618642)))))

(declare-fun c!130176 () Bool)

(assert (=> b!1404487 (= c!130176 (= lt!618641 (select (arr!46347 a!2901) j!112)))))

(declare-fun b!1404488 () Bool)

(assert (=> b!1404488 (= e!795089 (Found!10680 (index!45098 lt!618642)))))

(declare-fun b!1404489 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96001 (_ BitVec 32)) SeekEntryResult!10680)

(assert (=> b!1404489 (= e!795090 (seekKeyOrZeroReturnVacant!0 (x!126710 lt!618642) (index!45098 lt!618642) (index!45098 lt!618642) (select (arr!46347 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1404490 () Bool)

(assert (=> b!1404490 (= e!795091 Undefined!10680)))

(declare-fun d!151195 () Bool)

(declare-fun lt!618643 () SeekEntryResult!10680)

(assert (=> d!151195 (and (or (is-Undefined!10680 lt!618643) (not (is-Found!10680 lt!618643)) (and (bvsge (index!45097 lt!618643) #b00000000000000000000000000000000) (bvslt (index!45097 lt!618643) (size!46898 a!2901)))) (or (is-Undefined!10680 lt!618643) (is-Found!10680 lt!618643) (not (is-MissingZero!10680 lt!618643)) (and (bvsge (index!45096 lt!618643) #b00000000000000000000000000000000) (bvslt (index!45096 lt!618643) (size!46898 a!2901)))) (or (is-Undefined!10680 lt!618643) (is-Found!10680 lt!618643) (is-MissingZero!10680 lt!618643) (not (is-MissingVacant!10680 lt!618643)) (and (bvsge (index!45099 lt!618643) #b00000000000000000000000000000000) (bvslt (index!45099 lt!618643) (size!46898 a!2901)))) (or (is-Undefined!10680 lt!618643) (ite (is-Found!10680 lt!618643) (= (select (arr!46347 a!2901) (index!45097 lt!618643)) (select (arr!46347 a!2901) j!112)) (ite (is-MissingZero!10680 lt!618643) (= (select (arr!46347 a!2901) (index!45096 lt!618643)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10680 lt!618643) (= (select (arr!46347 a!2901) (index!45099 lt!618643)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!151195 (= lt!618643 e!795091)))

(declare-fun c!130177 () Bool)

(assert (=> d!151195 (= c!130177 (and (is-Intermediate!10680 lt!618642) (undefined!11492 lt!618642)))))

(assert (=> d!151195 (= lt!618642 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46347 a!2901) j!112) mask!2840) (select (arr!46347 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151195 (validMask!0 mask!2840)))

(assert (=> d!151195 (= (seekEntryOrOpen!0 (select (arr!46347 a!2901) j!112) a!2901 mask!2840) lt!618643)))

(declare-fun b!1404491 () Bool)

(assert (=> b!1404491 (= e!795090 (MissingZero!10680 (index!45098 lt!618642)))))

(assert (= (and d!151195 c!130177) b!1404490))

(assert (= (and d!151195 (not c!130177)) b!1404487))

(assert (= (and b!1404487 c!130176) b!1404488))

(assert (= (and b!1404487 (not c!130176)) b!1404486))

(assert (= (and b!1404486 c!130175) b!1404491))

(assert (= (and b!1404486 (not c!130175)) b!1404489))

(declare-fun m!1293391 () Bool)

(assert (=> b!1404487 m!1293391))

(assert (=> b!1404489 m!1293333))

(declare-fun m!1293393 () Bool)

(assert (=> b!1404489 m!1293393))

(assert (=> d!151195 m!1293333))

(assert (=> d!151195 m!1293337))

(declare-fun m!1293395 () Bool)

(assert (=> d!151195 m!1293395))

(assert (=> d!151195 m!1293337))

(assert (=> d!151195 m!1293333))

(assert (=> d!151195 m!1293343))

(declare-fun m!1293397 () Bool)

(assert (=> d!151195 m!1293397))

(assert (=> d!151195 m!1293347))

(declare-fun m!1293399 () Bool)

(assert (=> d!151195 m!1293399))

(assert (=> b!1404408 d!151195))

(declare-fun d!151205 () Bool)

(assert (=> d!151205 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!618646 () Unit!47284)

(declare-fun choose!38 (array!96001 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47284)

(assert (=> d!151205 (= lt!618646 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151205 (validMask!0 mask!2840)))

(assert (=> d!151205 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!618646)))

(declare-fun bs!40916 () Bool)

(assert (= bs!40916 d!151205))

(assert (=> bs!40916 m!1293345))

(declare-fun m!1293405 () Bool)

(assert (=> bs!40916 m!1293405))

(assert (=> bs!40916 m!1293347))

(assert (=> b!1404408 d!151205))

(declare-fun d!151209 () Bool)

(declare-fun lt!618656 () (_ BitVec 32))

(declare-fun lt!618655 () (_ BitVec 32))

(assert (=> d!151209 (= lt!618656 (bvmul (bvxor lt!618655 (bvlshr lt!618655 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151209 (= lt!618655 ((_ extract 31 0) (bvand (bvxor (select (arr!46347 a!2901) j!112) (bvlshr (select (arr!46347 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151209 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!943063 (let ((h!34291 ((_ extract 31 0) (bvand (bvxor (select (arr!46347 a!2901) j!112) (bvlshr (select (arr!46347 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!126713 (bvmul (bvxor h!34291 (bvlshr h!34291 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!126713 (bvlshr x!126713 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!943063 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!943063 #b00000000000000000000000000000000))))))

(assert (=> d!151209 (= (toIndex!0 (select (arr!46347 a!2901) j!112) mask!2840) (bvand (bvxor lt!618656 (bvlshr lt!618656 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1404408 d!151209))

(declare-fun b!1404532 () Bool)

(declare-fun e!795118 () Bool)

(declare-fun e!795117 () Bool)

(assert (=> b!1404532 (= e!795118 e!795117)))

(declare-fun c!130190 () Bool)

(assert (=> b!1404532 (= c!130190 (validKeyInArray!0 (select (arr!46347 a!2901) j!112)))))

(declare-fun d!151211 () Bool)

(declare-fun res!943078 () Bool)

(assert (=> d!151211 (=> res!943078 e!795118)))

(assert (=> d!151211 (= res!943078 (bvsge j!112 (size!46898 a!2901)))))

(assert (=> d!151211 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!795118)))

(declare-fun b!1404533 () Bool)

(declare-fun e!795119 () Bool)

(assert (=> b!1404533 (= e!795117 e!795119)))

(declare-fun lt!618666 () (_ BitVec 64))

(assert (=> b!1404533 (= lt!618666 (select (arr!46347 a!2901) j!112))))

(declare-fun lt!618667 () Unit!47284)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96001 (_ BitVec 64) (_ BitVec 32)) Unit!47284)

(assert (=> b!1404533 (= lt!618667 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!618666 j!112))))

(declare-fun arrayContainsKey!0 (array!96001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1404533 (arrayContainsKey!0 a!2901 lt!618666 #b00000000000000000000000000000000)))

(declare-fun lt!618665 () Unit!47284)

(assert (=> b!1404533 (= lt!618665 lt!618667)))

(declare-fun res!943077 () Bool)

(assert (=> b!1404533 (= res!943077 (= (seekEntryOrOpen!0 (select (arr!46347 a!2901) j!112) a!2901 mask!2840) (Found!10680 j!112)))))

(assert (=> b!1404533 (=> (not res!943077) (not e!795119))))

(declare-fun b!1404534 () Bool)

(declare-fun call!66918 () Bool)

(assert (=> b!1404534 (= e!795117 call!66918)))

(declare-fun bm!66915 () Bool)

(assert (=> bm!66915 (= call!66918 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1404535 () Bool)

(assert (=> b!1404535 (= e!795119 call!66918)))

(assert (= (and d!151211 (not res!943078)) b!1404532))

(assert (= (and b!1404532 c!130190) b!1404533))

(assert (= (and b!1404532 (not c!130190)) b!1404534))

(assert (= (and b!1404533 res!943077) b!1404535))

(assert (= (or b!1404535 b!1404534) bm!66915))

(assert (=> b!1404532 m!1293333))

(assert (=> b!1404532 m!1293333))

(assert (=> b!1404532 m!1293335))

(assert (=> b!1404533 m!1293333))

(declare-fun m!1293415 () Bool)

(assert (=> b!1404533 m!1293415))

(declare-fun m!1293417 () Bool)

(assert (=> b!1404533 m!1293417))

(assert (=> b!1404533 m!1293333))

(assert (=> b!1404533 m!1293341))

(declare-fun m!1293419 () Bool)

(assert (=> bm!66915 m!1293419))

(assert (=> b!1404408 d!151211))

(declare-fun d!151215 () Bool)

(assert (=> d!151215 (= (validKeyInArray!0 (select (arr!46347 a!2901) j!112)) (and (not (= (select (arr!46347 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46347 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1404407 d!151215))

(declare-fun d!151217 () Bool)

(assert (=> d!151217 (= (validKeyInArray!0 (select (arr!46347 a!2901) i!1037)) (and (not (= (select (arr!46347 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46347 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1404409 d!151217))

(declare-fun b!1404553 () Bool)

(declare-fun e!795130 () Bool)

(declare-fun contains!9802 (List!33046 (_ BitVec 64)) Bool)

(assert (=> b!1404553 (= e!795130 (contains!9802 Nil!33043 (select (arr!46347 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1404554 () Bool)

(declare-fun e!795131 () Bool)

(declare-fun e!795132 () Bool)

(assert (=> b!1404554 (= e!795131 e!795132)))

(declare-fun res!943086 () Bool)

(assert (=> b!1404554 (=> (not res!943086) (not e!795132))))

(assert (=> b!1404554 (= res!943086 (not e!795130))))

(declare-fun res!943087 () Bool)

(assert (=> b!1404554 (=> (not res!943087) (not e!795130))))

(assert (=> b!1404554 (= res!943087 (validKeyInArray!0 (select (arr!46347 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66918 () Bool)

(declare-fun call!66921 () Bool)

(declare-fun c!130195 () Bool)

(assert (=> bm!66918 (= call!66921 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130195 (Cons!33042 (select (arr!46347 a!2901) #b00000000000000000000000000000000) Nil!33043) Nil!33043)))))

(declare-fun b!1404552 () Bool)

(declare-fun e!795133 () Bool)

(assert (=> b!1404552 (= e!795133 call!66921)))

(declare-fun d!151219 () Bool)

(declare-fun res!943085 () Bool)

(assert (=> d!151219 (=> res!943085 e!795131)))

(assert (=> d!151219 (= res!943085 (bvsge #b00000000000000000000000000000000 (size!46898 a!2901)))))

(assert (=> d!151219 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33043) e!795131)))

(declare-fun b!1404556 () Bool)

(assert (=> b!1404556 (= e!795133 call!66921)))

(declare-fun b!1404558 () Bool)

(assert (=> b!1404558 (= e!795132 e!795133)))

(assert (=> b!1404558 (= c!130195 (validKeyInArray!0 (select (arr!46347 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!151219 (not res!943085)) b!1404554))

(assert (= (and b!1404554 res!943087) b!1404553))

(assert (= (and b!1404554 res!943086) b!1404558))

(assert (= (and b!1404558 c!130195) b!1404556))

(assert (= (and b!1404558 (not c!130195)) b!1404552))

(assert (= (or b!1404556 b!1404552) bm!66918))

(declare-fun m!1293421 () Bool)

(assert (=> b!1404553 m!1293421))

(assert (=> b!1404553 m!1293421))

(declare-fun m!1293423 () Bool)

(assert (=> b!1404553 m!1293423))

(assert (=> b!1404554 m!1293421))

(assert (=> b!1404554 m!1293421))

(declare-fun m!1293425 () Bool)

(assert (=> b!1404554 m!1293425))

(assert (=> bm!66918 m!1293421))

(declare-fun m!1293427 () Bool)

(assert (=> bm!66918 m!1293427))

(assert (=> b!1404558 m!1293421))

(assert (=> b!1404558 m!1293421))

(assert (=> b!1404558 m!1293425))

(assert (=> b!1404410 d!151219))

(declare-fun d!151221 () Bool)

(assert (=> d!151221 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!120674 d!151221))

(declare-fun d!151225 () Bool)

(assert (=> d!151225 (= (array_inv!35292 a!2901) (bvsge (size!46898 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!120674 d!151225))

(declare-fun b!1404578 () Bool)

(declare-fun e!795148 () Bool)

(declare-fun e!795147 () Bool)

(assert (=> b!1404578 (= e!795148 e!795147)))

(declare-fun c!130203 () Bool)

(assert (=> b!1404578 (= c!130203 (validKeyInArray!0 (select (arr!46347 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!151227 () Bool)

(declare-fun res!943098 () Bool)

(assert (=> d!151227 (=> res!943098 e!795148)))

(assert (=> d!151227 (= res!943098 (bvsge #b00000000000000000000000000000000 (size!46898 a!2901)))))

(assert (=> d!151227 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!795148)))

(declare-fun b!1404579 () Bool)

(declare-fun e!795149 () Bool)

(assert (=> b!1404579 (= e!795147 e!795149)))

(declare-fun lt!618675 () (_ BitVec 64))

(assert (=> b!1404579 (= lt!618675 (select (arr!46347 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!618676 () Unit!47284)

(assert (=> b!1404579 (= lt!618676 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!618675 #b00000000000000000000000000000000))))

(assert (=> b!1404579 (arrayContainsKey!0 a!2901 lt!618675 #b00000000000000000000000000000000)))

(declare-fun lt!618674 () Unit!47284)

(assert (=> b!1404579 (= lt!618674 lt!618676)))

(declare-fun res!943097 () Bool)

(assert (=> b!1404579 (= res!943097 (= (seekEntryOrOpen!0 (select (arr!46347 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10680 #b00000000000000000000000000000000)))))

(assert (=> b!1404579 (=> (not res!943097) (not e!795149))))

(declare-fun b!1404580 () Bool)

(declare-fun call!66922 () Bool)

(assert (=> b!1404580 (= e!795147 call!66922)))

(declare-fun bm!66919 () Bool)

(assert (=> bm!66919 (= call!66922 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1404581 () Bool)

(assert (=> b!1404581 (= e!795149 call!66922)))

(assert (= (and d!151227 (not res!943098)) b!1404578))

(assert (= (and b!1404578 c!130203) b!1404579))

(assert (= (and b!1404578 (not c!130203)) b!1404580))

(assert (= (and b!1404579 res!943097) b!1404581))

(assert (= (or b!1404581 b!1404580) bm!66919))

(assert (=> b!1404578 m!1293421))

(assert (=> b!1404578 m!1293421))

(assert (=> b!1404578 m!1293425))

(assert (=> b!1404579 m!1293421))

(declare-fun m!1293437 () Bool)

(assert (=> b!1404579 m!1293437))

(declare-fun m!1293439 () Bool)

(assert (=> b!1404579 m!1293439))

(assert (=> b!1404579 m!1293421))

(declare-fun m!1293441 () Bool)

(assert (=> b!1404579 m!1293441))

(declare-fun m!1293443 () Bool)

(assert (=> bm!66919 m!1293443))

(assert (=> b!1404412 d!151227))

(push 1)

(assert (not bm!66915))

(assert (not b!1404440))

(assert (not b!1404532))

(assert (not b!1404558))

(assert (not b!1404578))

(assert (not b!1404553))

(assert (not b!1404554))

(assert (not bm!66919))

(assert (not d!151205))

(assert (not bm!66918))

(assert (not d!151183))

(assert (not b!1404579))

(assert (not b!1404489))

(assert (not d!151195))

(assert (not b!1404533))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

