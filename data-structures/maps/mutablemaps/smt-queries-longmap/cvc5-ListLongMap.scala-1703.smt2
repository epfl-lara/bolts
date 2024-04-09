; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31260 () Bool)

(assert start!31260)

(declare-fun b!313566 () Bool)

(declare-fun res!169741 () Bool)

(declare-fun e!195412 () Bool)

(assert (=> b!313566 (=> (not res!169741) (not e!195412))))

(declare-datatypes ((array!16019 0))(
  ( (array!16020 (arr!7585 (Array (_ BitVec 32) (_ BitVec 64))) (size!7937 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16019)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!313566 (= res!169741 (and (= (size!7937 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7937 a!3293))))))

(declare-fun b!313567 () Bool)

(declare-fun res!169737 () Bool)

(assert (=> b!313567 (=> (not res!169737) (not e!195412))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2736 0))(
  ( (MissingZero!2736 (index!13120 (_ BitVec 32))) (Found!2736 (index!13121 (_ BitVec 32))) (Intermediate!2736 (undefined!3548 Bool) (index!13122 (_ BitVec 32)) (x!31309 (_ BitVec 32))) (Undefined!2736) (MissingVacant!2736 (index!13123 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16019 (_ BitVec 32)) SeekEntryResult!2736)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313567 (= res!169737 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) (Intermediate!2736 false resIndex!52 resX!52)))))

(declare-fun b!313568 () Bool)

(declare-fun res!169738 () Bool)

(assert (=> b!313568 (=> (not res!169738) (not e!195412))))

(declare-fun arrayContainsKey!0 (array!16019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!313568 (= res!169738 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!313569 () Bool)

(declare-fun res!169743 () Bool)

(assert (=> b!313569 (=> (not res!169743) (not e!195412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16019 (_ BitVec 32)) Bool)

(assert (=> b!313569 (= res!169743 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!313571 () Bool)

(declare-fun res!169740 () Bool)

(assert (=> b!313571 (=> (not res!169740) (not e!195412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!313571 (= res!169740 (validKeyInArray!0 k!2441))))

(declare-fun b!313572 () Bool)

(assert (=> b!313572 (= e!195412 (or (bvslt resIndex!52 #b00000000000000000000000000000000) (bvsge resIndex!52 (size!7937 a!3293))))))

(declare-fun b!313570 () Bool)

(declare-fun res!169739 () Bool)

(assert (=> b!313570 (=> (not res!169739) (not e!195412))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16019 (_ BitVec 32)) SeekEntryResult!2736)

(assert (=> b!313570 (= res!169739 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2736 i!1240)))))

(declare-fun res!169742 () Bool)

(assert (=> start!31260 (=> (not res!169742) (not e!195412))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31260 (= res!169742 (validMask!0 mask!3709))))

(assert (=> start!31260 e!195412))

(declare-fun array_inv!5539 (array!16019) Bool)

(assert (=> start!31260 (array_inv!5539 a!3293)))

(assert (=> start!31260 true))

(assert (= (and start!31260 res!169742) b!313566))

(assert (= (and b!313566 res!169741) b!313571))

(assert (= (and b!313571 res!169740) b!313568))

(assert (= (and b!313568 res!169738) b!313570))

(assert (= (and b!313570 res!169739) b!313569))

(assert (= (and b!313569 res!169743) b!313567))

(assert (= (and b!313567 res!169737) b!313572))

(declare-fun m!323413 () Bool)

(assert (=> b!313570 m!323413))

(declare-fun m!323415 () Bool)

(assert (=> b!313567 m!323415))

(assert (=> b!313567 m!323415))

(declare-fun m!323417 () Bool)

(assert (=> b!313567 m!323417))

(declare-fun m!323419 () Bool)

(assert (=> b!313571 m!323419))

(declare-fun m!323421 () Bool)

(assert (=> b!313569 m!323421))

(declare-fun m!323423 () Bool)

(assert (=> b!313568 m!323423))

(declare-fun m!323425 () Bool)

(assert (=> start!31260 m!323425))

(declare-fun m!323427 () Bool)

(assert (=> start!31260 m!323427))

(push 1)

(assert (not b!313570))

(assert (not b!313567))

(assert (not b!313571))

(assert (not start!31260))

(assert (not b!313568))

(assert (not b!313569))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68525 () Bool)

(declare-fun res!169794 () Bool)

(declare-fun e!195435 () Bool)

(assert (=> d!68525 (=> res!169794 e!195435)))

(assert (=> d!68525 (= res!169794 (= (select (arr!7585 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68525 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!195435)))

(declare-fun b!313627 () Bool)

(declare-fun e!195436 () Bool)

(assert (=> b!313627 (= e!195435 e!195436)))

(declare-fun res!169795 () Bool)

(assert (=> b!313627 (=> (not res!169795) (not e!195436))))

(assert (=> b!313627 (= res!169795 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7937 a!3293)))))

(declare-fun b!313628 () Bool)

(assert (=> b!313628 (= e!195436 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68525 (not res!169794)) b!313627))

(assert (= (and b!313627 res!169795) b!313628))

(declare-fun m!323461 () Bool)

(assert (=> d!68525 m!323461))

(declare-fun m!323463 () Bool)

(assert (=> b!313628 m!323463))

(assert (=> b!313568 d!68525))

(declare-fun d!68529 () Bool)

(declare-fun res!169807 () Bool)

(declare-fun e!195454 () Bool)

(assert (=> d!68529 (=> res!169807 e!195454)))

(assert (=> d!68529 (= res!169807 (bvsge #b00000000000000000000000000000000 (size!7937 a!3293)))))

(assert (=> d!68529 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195454)))

(declare-fun b!313649 () Bool)

(declare-fun e!195453 () Bool)

(declare-fun call!25957 () Bool)

(assert (=> b!313649 (= e!195453 call!25957)))

(declare-fun bm!25954 () Bool)

(assert (=> bm!25954 (= call!25957 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!313650 () Bool)

(assert (=> b!313650 (= e!195454 e!195453)))

(declare-fun c!49531 () Bool)

(assert (=> b!313650 (= c!49531 (validKeyInArray!0 (select (arr!7585 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!313651 () Bool)

(declare-fun e!195452 () Bool)

(assert (=> b!313651 (= e!195452 call!25957)))

(declare-fun b!313652 () Bool)

(assert (=> b!313652 (= e!195453 e!195452)))

(declare-fun lt!153676 () (_ BitVec 64))

(assert (=> b!313652 (= lt!153676 (select (arr!7585 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9672 0))(
  ( (Unit!9673) )
))
(declare-fun lt!153677 () Unit!9672)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16019 (_ BitVec 64) (_ BitVec 32)) Unit!9672)

(assert (=> b!313652 (= lt!153677 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153676 #b00000000000000000000000000000000))))

(assert (=> b!313652 (arrayContainsKey!0 a!3293 lt!153676 #b00000000000000000000000000000000)))

(declare-fun lt!153675 () Unit!9672)

(assert (=> b!313652 (= lt!153675 lt!153677)))

(declare-fun res!169806 () Bool)

(assert (=> b!313652 (= res!169806 (= (seekEntryOrOpen!0 (select (arr!7585 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2736 #b00000000000000000000000000000000)))))

(assert (=> b!313652 (=> (not res!169806) (not e!195452))))

(assert (= (and d!68529 (not res!169807)) b!313650))

(assert (= (and b!313650 c!49531) b!313652))

(assert (= (and b!313650 (not c!49531)) b!313649))

(assert (= (and b!313652 res!169806) b!313651))

(assert (= (or b!313651 b!313649) bm!25954))

(declare-fun m!323477 () Bool)

(assert (=> bm!25954 m!323477))

(assert (=> b!313650 m!323461))

(assert (=> b!313650 m!323461))

(declare-fun m!323479 () Bool)

(assert (=> b!313650 m!323479))

(assert (=> b!313652 m!323461))

(declare-fun m!323481 () Bool)

(assert (=> b!313652 m!323481))

(declare-fun m!323483 () Bool)

(assert (=> b!313652 m!323483))

(assert (=> b!313652 m!323461))

(declare-fun m!323485 () Bool)

(assert (=> b!313652 m!323485))

(assert (=> b!313569 d!68529))

(declare-fun b!313705 () Bool)

(declare-fun e!195485 () SeekEntryResult!2736)

(declare-fun lt!153702 () SeekEntryResult!2736)

(assert (=> b!313705 (= e!195485 (Found!2736 (index!13122 lt!153702)))))

(declare-fun d!68535 () Bool)

(declare-fun lt!153701 () SeekEntryResult!2736)

(assert (=> d!68535 (and (or (is-Undefined!2736 lt!153701) (not (is-Found!2736 lt!153701)) (and (bvsge (index!13121 lt!153701) #b00000000000000000000000000000000) (bvslt (index!13121 lt!153701) (size!7937 a!3293)))) (or (is-Undefined!2736 lt!153701) (is-Found!2736 lt!153701) (not (is-MissingZero!2736 lt!153701)) (and (bvsge (index!13120 lt!153701) #b00000000000000000000000000000000) (bvslt (index!13120 lt!153701) (size!7937 a!3293)))) (or (is-Undefined!2736 lt!153701) (is-Found!2736 lt!153701) (is-MissingZero!2736 lt!153701) (not (is-MissingVacant!2736 lt!153701)) (and (bvsge (index!13123 lt!153701) #b00000000000000000000000000000000) (bvslt (index!13123 lt!153701) (size!7937 a!3293)))) (or (is-Undefined!2736 lt!153701) (ite (is-Found!2736 lt!153701) (= (select (arr!7585 a!3293) (index!13121 lt!153701)) k!2441) (ite (is-MissingZero!2736 lt!153701) (= (select (arr!7585 a!3293) (index!13120 lt!153701)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2736 lt!153701) (= (select (arr!7585 a!3293) (index!13123 lt!153701)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!195484 () SeekEntryResult!2736)

(assert (=> d!68535 (= lt!153701 e!195484)))

(declare-fun c!49554 () Bool)

(assert (=> d!68535 (= c!49554 (and (is-Intermediate!2736 lt!153702) (undefined!3548 lt!153702)))))

(assert (=> d!68535 (= lt!153702 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68535 (validMask!0 mask!3709)))

(assert (=> d!68535 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153701)))

(declare-fun e!195483 () SeekEntryResult!2736)

(declare-fun b!313706 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16019 (_ BitVec 32)) SeekEntryResult!2736)

(assert (=> b!313706 (= e!195483 (seekKeyOrZeroReturnVacant!0 (x!31309 lt!153702) (index!13122 lt!153702) (index!13122 lt!153702) k!2441 a!3293 mask!3709))))

(declare-fun b!313707 () Bool)

(assert (=> b!313707 (= e!195484 e!195485)))

(declare-fun lt!153700 () (_ BitVec 64))

(assert (=> b!313707 (= lt!153700 (select (arr!7585 a!3293) (index!13122 lt!153702)))))

(declare-fun c!49555 () Bool)

(assert (=> b!313707 (= c!49555 (= lt!153700 k!2441))))

(declare-fun b!313708 () Bool)

(assert (=> b!313708 (= e!195484 Undefined!2736)))

(declare-fun b!313709 () Bool)

(declare-fun c!49556 () Bool)

(assert (=> b!313709 (= c!49556 (= lt!153700 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313709 (= e!195485 e!195483)))

(declare-fun b!313710 () Bool)

(assert (=> b!313710 (= e!195483 (MissingZero!2736 (index!13122 lt!153702)))))

(assert (= (and d!68535 c!49554) b!313708))

(assert (= (and d!68535 (not c!49554)) b!313707))

(assert (= (and b!313707 c!49555) b!313705))

(assert (= (and b!313707 (not c!49555)) b!313709))

(assert (= (and b!313709 c!49556) b!313710))

(assert (= (and b!313709 (not c!49556)) b!313706))

(assert (=> d!68535 m!323415))

(assert (=> d!68535 m!323417))

(assert (=> d!68535 m!323425))

(assert (=> d!68535 m!323415))

(declare-fun m!323509 () Bool)

(assert (=> d!68535 m!323509))

(declare-fun m!323511 () Bool)

(assert (=> d!68535 m!323511))

(declare-fun m!323513 () Bool)

(assert (=> d!68535 m!323513))

(declare-fun m!323515 () Bool)

(assert (=> b!313706 m!323515))

(declare-fun m!323517 () Bool)

(assert (=> b!313707 m!323517))

(assert (=> b!313570 d!68535))

(declare-fun d!68541 () Bool)

(assert (=> d!68541 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!313571 d!68541))

(declare-fun b!313750 () Bool)

(declare-fun e!195510 () Bool)

(declare-fun lt!153719 () SeekEntryResult!2736)

(assert (=> b!313750 (= e!195510 (bvsge (x!31309 lt!153719) #b01111111111111111111111111111110))))

(declare-fun e!195507 () SeekEntryResult!2736)

(declare-fun b!313751 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313751 (= e!195507 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!313752 () Bool)

(declare-fun e!195509 () SeekEntryResult!2736)

(assert (=> b!313752 (= e!195509 e!195507)))

(declare-fun c!49573 () Bool)

(declare-fun lt!153720 () (_ BitVec 64))

(assert (=> b!313752 (= c!49573 (or (= lt!153720 k!2441) (= (bvadd lt!153720 lt!153720) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313753 () Bool)

(assert (=> b!313753 (= e!195509 (Intermediate!2736 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313754 () Bool)

(assert (=> b!313754 (and (bvsge (index!13122 lt!153719) #b00000000000000000000000000000000) (bvslt (index!13122 lt!153719) (size!7937 a!3293)))))

(declare-fun res!169827 () Bool)

(assert (=> b!313754 (= res!169827 (= (select (arr!7585 a!3293) (index!13122 lt!153719)) k!2441))))

(declare-fun e!195508 () Bool)

(assert (=> b!313754 (=> res!169827 e!195508)))

(declare-fun e!195511 () Bool)

(assert (=> b!313754 (= e!195511 e!195508)))

(declare-fun b!313755 () Bool)

(assert (=> b!313755 (and (bvsge (index!13122 lt!153719) #b00000000000000000000000000000000) (bvslt (index!13122 lt!153719) (size!7937 a!3293)))))

(declare-fun res!169828 () Bool)

(assert (=> b!313755 (= res!169828 (= (select (arr!7585 a!3293) (index!13122 lt!153719)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313755 (=> res!169828 e!195508)))

(declare-fun b!313756 () Bool)

(assert (=> b!313756 (= e!195507 (Intermediate!2736 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313757 () Bool)

(assert (=> b!313757 (= e!195510 e!195511)))

(declare-fun res!169826 () Bool)

(assert (=> b!313757 (= res!169826 (and (is-Intermediate!2736 lt!153719) (not (undefined!3548 lt!153719)) (bvslt (x!31309 lt!153719) #b01111111111111111111111111111110) (bvsge (x!31309 lt!153719) #b00000000000000000000000000000000) (bvsge (x!31309 lt!153719) #b00000000000000000000000000000000)))))

(assert (=> b!313757 (=> (not res!169826) (not e!195511))))

(declare-fun d!68543 () Bool)

(assert (=> d!68543 e!195510))

(declare-fun c!49572 () Bool)

(assert (=> d!68543 (= c!49572 (and (is-Intermediate!2736 lt!153719) (undefined!3548 lt!153719)))))

(assert (=> d!68543 (= lt!153719 e!195509)))

(declare-fun c!49574 () Bool)

(assert (=> d!68543 (= c!49574 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68543 (= lt!153720 (select (arr!7585 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68543 (validMask!0 mask!3709)))

(assert (=> d!68543 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153719)))

(declare-fun b!313758 () Bool)

(assert (=> b!313758 (and (bvsge (index!13122 lt!153719) #b00000000000000000000000000000000) (bvslt (index!13122 lt!153719) (size!7937 a!3293)))))

(assert (=> b!313758 (= e!195508 (= (select (arr!7585 a!3293) (index!13122 lt!153719)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!68543 c!49574) b!313753))

(assert (= (and d!68543 (not c!49574)) b!313752))

(assert (= (and b!313752 c!49573) b!313756))

(assert (= (and b!313752 (not c!49573)) b!313751))

(assert (= (and d!68543 c!49572) b!313750))

(assert (= (and d!68543 (not c!49572)) b!313757))

(assert (= (and b!313757 res!169826) b!313754))

(assert (= (and b!313754 (not res!169827)) b!313755))

(assert (= (and b!313755 (not res!169828)) b!313758))

(declare-fun m!323527 () Bool)

(assert (=> b!313755 m!323527))

(assert (=> b!313758 m!323527))

(assert (=> b!313751 m!323415))

(declare-fun m!323529 () Bool)

(assert (=> b!313751 m!323529))

(assert (=> b!313751 m!323529))

(declare-fun m!323531 () Bool)

(assert (=> b!313751 m!323531))

(assert (=> b!313754 m!323527))

(assert (=> d!68543 m!323415))

(declare-fun m!323533 () Bool)

(assert (=> d!68543 m!323533))

(assert (=> d!68543 m!323425))

(assert (=> b!313567 d!68543))

(declare-fun d!68555 () Bool)

(declare-fun lt!153737 () (_ BitVec 32))

(declare-fun lt!153736 () (_ BitVec 32))

(assert (=> d!68555 (= lt!153737 (bvmul (bvxor lt!153736 (bvlshr lt!153736 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68555 (= lt!153736 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68555 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169835 (let ((h!5376 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31316 (bvmul (bvxor h!5376 (bvlshr h!5376 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31316 (bvlshr x!31316 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169835 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169835 #b00000000000000000000000000000000))))))

(assert (=> d!68555 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153737 (bvlshr lt!153737 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!313567 d!68555))

(declare-fun d!68559 () Bool)

(assert (=> d!68559 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31260 d!68559))

(declare-fun d!68567 () Bool)

(assert (=> d!68567 (= (array_inv!5539 a!3293) (bvsge (size!7937 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31260 d!68567))

(push 1)

(assert (not d!68543))

(assert (not b!313706))

(assert (not b!313751))

(assert (not b!313628))

(assert (not b!313652))

(assert (not bm!25954))

(assert (not b!313650))

(assert (not d!68535))

(check-sat)

(pop 1)

(push 1)

(check-sat)

