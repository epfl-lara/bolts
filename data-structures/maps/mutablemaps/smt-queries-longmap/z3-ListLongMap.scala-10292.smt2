; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!121062 () Bool)

(assert start!121062)

(declare-fun b!1407359 () Bool)

(declare-fun res!945359 () Bool)

(declare-fun e!796579 () Bool)

(assert (=> b!1407359 (=> (not res!945359) (not e!796579))))

(declare-datatypes ((array!96185 0))(
  ( (array!96186 (arr!46433 (Array (_ BitVec 32) (_ BitVec 64))) (size!46984 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96185)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407359 (= res!945359 (validKeyInArray!0 (select (arr!46433 a!2901) j!112)))))

(declare-fun b!1407360 () Bool)

(declare-fun e!796577 () Bool)

(assert (=> b!1407360 (= e!796579 (not e!796577))))

(declare-fun res!945355 () Bool)

(assert (=> b!1407360 (=> res!945355 e!796577)))

(declare-datatypes ((SeekEntryResult!10766 0))(
  ( (MissingZero!10766 (index!45440 (_ BitVec 32))) (Found!10766 (index!45441 (_ BitVec 32))) (Intermediate!10766 (undefined!11578 Bool) (index!45442 (_ BitVec 32)) (x!127052 (_ BitVec 32))) (Undefined!10766) (MissingVacant!10766 (index!45443 (_ BitVec 32))) )
))
(declare-fun lt!619730 () SeekEntryResult!10766)

(get-info :version)

(assert (=> b!1407360 (= res!945355 (or (not ((_ is Intermediate!10766) lt!619730)) (undefined!11578 lt!619730)))))

(declare-fun e!796580 () Bool)

(assert (=> b!1407360 e!796580))

(declare-fun res!945358 () Bool)

(assert (=> b!1407360 (=> (not res!945358) (not e!796580))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96185 (_ BitVec 32)) Bool)

(assert (=> b!1407360 (= res!945358 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47456 0))(
  ( (Unit!47457) )
))
(declare-fun lt!619731 () Unit!47456)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96185 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47456)

(assert (=> b!1407360 (= lt!619731 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!619732 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96185 (_ BitVec 32)) SeekEntryResult!10766)

(assert (=> b!1407360 (= lt!619730 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619732 (select (arr!46433 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407360 (= lt!619732 (toIndex!0 (select (arr!46433 a!2901) j!112) mask!2840))))

(declare-fun b!1407361 () Bool)

(declare-fun res!945362 () Bool)

(assert (=> b!1407361 (=> (not res!945362) (not e!796579))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1407361 (= res!945362 (validKeyInArray!0 (select (arr!46433 a!2901) i!1037)))))

(declare-fun b!1407362 () Bool)

(declare-fun res!945356 () Bool)

(assert (=> b!1407362 (=> (not res!945356) (not e!796579))))

(declare-datatypes ((List!33132 0))(
  ( (Nil!33129) (Cons!33128 (h!34388 (_ BitVec 64)) (t!47833 List!33132)) )
))
(declare-fun arrayNoDuplicates!0 (array!96185 (_ BitVec 32) List!33132) Bool)

(assert (=> b!1407362 (= res!945356 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33129))))

(declare-fun b!1407363 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96185 (_ BitVec 32)) SeekEntryResult!10766)

(assert (=> b!1407363 (= e!796580 (= (seekEntryOrOpen!0 (select (arr!46433 a!2901) j!112) a!2901 mask!2840) (Found!10766 j!112)))))

(declare-fun res!945363 () Bool)

(assert (=> start!121062 (=> (not res!945363) (not e!796579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121062 (= res!945363 (validMask!0 mask!2840))))

(assert (=> start!121062 e!796579))

(assert (=> start!121062 true))

(declare-fun array_inv!35378 (array!96185) Bool)

(assert (=> start!121062 (array_inv!35378 a!2901)))

(declare-fun b!1407364 () Bool)

(declare-fun res!945361 () Bool)

(assert (=> b!1407364 (=> res!945361 e!796577)))

(assert (=> b!1407364 (= res!945361 (not (= lt!619730 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96186 (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46984 a!2901)) mask!2840))))))

(declare-fun b!1407365 () Bool)

(assert (=> b!1407365 (= e!796577 (or (bvslt (x!127052 lt!619730) #b00000000000000000000000000000000) (bvsgt (x!127052 lt!619730) #b01111111111111111111111111111110) (bvslt lt!619732 #b00000000000000000000000000000000) (bvsge lt!619732 (size!46984 a!2901)) (and (bvsge (index!45442 lt!619730) #b00000000000000000000000000000000) (bvslt (index!45442 lt!619730) (size!46984 a!2901)))))))

(declare-fun b!1407366 () Bool)

(declare-fun res!945357 () Bool)

(assert (=> b!1407366 (=> (not res!945357) (not e!796579))))

(assert (=> b!1407366 (= res!945357 (and (= (size!46984 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46984 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46984 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407367 () Bool)

(declare-fun res!945360 () Bool)

(assert (=> b!1407367 (=> (not res!945360) (not e!796579))))

(assert (=> b!1407367 (= res!945360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!121062 res!945363) b!1407366))

(assert (= (and b!1407366 res!945357) b!1407361))

(assert (= (and b!1407361 res!945362) b!1407359))

(assert (= (and b!1407359 res!945359) b!1407367))

(assert (= (and b!1407367 res!945360) b!1407362))

(assert (= (and b!1407362 res!945356) b!1407360))

(assert (= (and b!1407360 res!945358) b!1407363))

(assert (= (and b!1407360 (not res!945355)) b!1407364))

(assert (= (and b!1407364 (not res!945361)) b!1407365))

(declare-fun m!1296531 () Bool)

(assert (=> b!1407361 m!1296531))

(assert (=> b!1407361 m!1296531))

(declare-fun m!1296533 () Bool)

(assert (=> b!1407361 m!1296533))

(declare-fun m!1296535 () Bool)

(assert (=> start!121062 m!1296535))

(declare-fun m!1296537 () Bool)

(assert (=> start!121062 m!1296537))

(declare-fun m!1296539 () Bool)

(assert (=> b!1407367 m!1296539))

(declare-fun m!1296541 () Bool)

(assert (=> b!1407359 m!1296541))

(assert (=> b!1407359 m!1296541))

(declare-fun m!1296543 () Bool)

(assert (=> b!1407359 m!1296543))

(assert (=> b!1407360 m!1296541))

(declare-fun m!1296545 () Bool)

(assert (=> b!1407360 m!1296545))

(assert (=> b!1407360 m!1296541))

(declare-fun m!1296547 () Bool)

(assert (=> b!1407360 m!1296547))

(assert (=> b!1407360 m!1296541))

(declare-fun m!1296549 () Bool)

(assert (=> b!1407360 m!1296549))

(declare-fun m!1296551 () Bool)

(assert (=> b!1407360 m!1296551))

(assert (=> b!1407363 m!1296541))

(assert (=> b!1407363 m!1296541))

(declare-fun m!1296553 () Bool)

(assert (=> b!1407363 m!1296553))

(declare-fun m!1296555 () Bool)

(assert (=> b!1407362 m!1296555))

(declare-fun m!1296557 () Bool)

(assert (=> b!1407364 m!1296557))

(declare-fun m!1296559 () Bool)

(assert (=> b!1407364 m!1296559))

(assert (=> b!1407364 m!1296559))

(declare-fun m!1296561 () Bool)

(assert (=> b!1407364 m!1296561))

(assert (=> b!1407364 m!1296561))

(assert (=> b!1407364 m!1296559))

(declare-fun m!1296563 () Bool)

(assert (=> b!1407364 m!1296563))

(check-sat (not b!1407367) (not b!1407363) (not b!1407361) (not b!1407360) (not b!1407362) (not b!1407364) (not start!121062) (not b!1407359))
(check-sat)
(get-model)

(declare-fun e!796605 () SeekEntryResult!10766)

(declare-fun b!1407413 () Bool)

(assert (=> b!1407413 (= e!796605 (Intermediate!10766 false (toIndex!0 (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1407414 () Bool)

(declare-fun e!796604 () SeekEntryResult!10766)

(assert (=> b!1407414 (= e!796604 e!796605)))

(declare-fun c!130477 () Bool)

(declare-fun lt!619746 () (_ BitVec 64))

(assert (=> b!1407414 (= c!130477 (or (= lt!619746 (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!619746 lt!619746) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1407415 () Bool)

(declare-fun lt!619747 () SeekEntryResult!10766)

(assert (=> b!1407415 (and (bvsge (index!45442 lt!619747) #b00000000000000000000000000000000) (bvslt (index!45442 lt!619747) (size!46984 (array!96186 (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46984 a!2901)))))))

(declare-fun res!945398 () Bool)

(assert (=> b!1407415 (= res!945398 (= (select (arr!46433 (array!96186 (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46984 a!2901))) (index!45442 lt!619747)) (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(declare-fun e!796603 () Bool)

(assert (=> b!1407415 (=> res!945398 e!796603)))

(declare-fun e!796606 () Bool)

(assert (=> b!1407415 (= e!796606 e!796603)))

(declare-fun b!1407416 () Bool)

(assert (=> b!1407416 (and (bvsge (index!45442 lt!619747) #b00000000000000000000000000000000) (bvslt (index!45442 lt!619747) (size!46984 (array!96186 (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46984 a!2901)))))))

(assert (=> b!1407416 (= e!796603 (= (select (arr!46433 (array!96186 (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46984 a!2901))) (index!45442 lt!619747)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1407417 () Bool)

(declare-fun e!796607 () Bool)

(assert (=> b!1407417 (= e!796607 e!796606)))

(declare-fun res!945399 () Bool)

(assert (=> b!1407417 (= res!945399 (and ((_ is Intermediate!10766) lt!619747) (not (undefined!11578 lt!619747)) (bvslt (x!127052 lt!619747) #b01111111111111111111111111111110) (bvsge (x!127052 lt!619747) #b00000000000000000000000000000000) (bvsge (x!127052 lt!619747) #b00000000000000000000000000000000)))))

(assert (=> b!1407417 (=> (not res!945399) (not e!796606))))

(declare-fun b!1407418 () Bool)

(assert (=> b!1407418 (= e!796607 (bvsge (x!127052 lt!619747) #b01111111111111111111111111111110))))

(declare-fun d!151525 () Bool)

(assert (=> d!151525 e!796607))

(declare-fun c!130478 () Bool)

(assert (=> d!151525 (= c!130478 (and ((_ is Intermediate!10766) lt!619747) (undefined!11578 lt!619747)))))

(assert (=> d!151525 (= lt!619747 e!796604)))

(declare-fun c!130476 () Bool)

(assert (=> d!151525 (= c!130476 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151525 (= lt!619746 (select (arr!46433 (array!96186 (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46984 a!2901))) (toIndex!0 (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151525 (validMask!0 mask!2840)))

(assert (=> d!151525 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96186 (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46984 a!2901)) mask!2840) lt!619747)))

(declare-fun b!1407419 () Bool)

(assert (=> b!1407419 (and (bvsge (index!45442 lt!619747) #b00000000000000000000000000000000) (bvslt (index!45442 lt!619747) (size!46984 (array!96186 (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46984 a!2901)))))))

(declare-fun res!945397 () Bool)

(assert (=> b!1407419 (= res!945397 (= (select (arr!46433 (array!96186 (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46984 a!2901))) (index!45442 lt!619747)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1407419 (=> res!945397 e!796603)))

(declare-fun b!1407420 () Bool)

(assert (=> b!1407420 (= e!796604 (Intermediate!10766 true (toIndex!0 (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1407421 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407421 (= e!796605 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96186 (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46984 a!2901)) mask!2840))))

(assert (= (and d!151525 c!130476) b!1407420))

(assert (= (and d!151525 (not c!130476)) b!1407414))

(assert (= (and b!1407414 c!130477) b!1407413))

(assert (= (and b!1407414 (not c!130477)) b!1407421))

(assert (= (and d!151525 c!130478) b!1407418))

(assert (= (and d!151525 (not c!130478)) b!1407417))

(assert (= (and b!1407417 res!945399) b!1407415))

(assert (= (and b!1407415 (not res!945398)) b!1407419))

(assert (= (and b!1407419 (not res!945397)) b!1407416))

(declare-fun m!1296599 () Bool)

(assert (=> b!1407416 m!1296599))

(assert (=> d!151525 m!1296561))

(declare-fun m!1296601 () Bool)

(assert (=> d!151525 m!1296601))

(assert (=> d!151525 m!1296535))

(assert (=> b!1407419 m!1296599))

(assert (=> b!1407415 m!1296599))

(assert (=> b!1407421 m!1296561))

(declare-fun m!1296603 () Bool)

(assert (=> b!1407421 m!1296603))

(assert (=> b!1407421 m!1296603))

(assert (=> b!1407421 m!1296559))

(declare-fun m!1296605 () Bool)

(assert (=> b!1407421 m!1296605))

(assert (=> b!1407364 d!151525))

(declare-fun d!151533 () Bool)

(declare-fun lt!619753 () (_ BitVec 32))

(declare-fun lt!619752 () (_ BitVec 32))

(assert (=> d!151533 (= lt!619753 (bvmul (bvxor lt!619752 (bvlshr lt!619752 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151533 (= lt!619752 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151533 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945400 (let ((h!34390 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127055 (bvmul (bvxor h!34390 (bvlshr h!34390 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127055 (bvlshr x!127055 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945400 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945400 #b00000000000000000000000000000000))))))

(assert (=> d!151533 (= (toIndex!0 (select (store (arr!46433 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!619753 (bvlshr lt!619753 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1407364 d!151533))

(declare-fun d!151535 () Bool)

(assert (=> d!151535 (= (validKeyInArray!0 (select (arr!46433 a!2901) j!112)) (and (not (= (select (arr!46433 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46433 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1407359 d!151535))

(declare-fun d!151537 () Bool)

(declare-fun res!945422 () Bool)

(declare-fun e!796640 () Bool)

(assert (=> d!151537 (=> res!945422 e!796640)))

(assert (=> d!151537 (= res!945422 (bvsge j!112 (size!46984 a!2901)))))

(assert (=> d!151537 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!796640)))

(declare-fun b!1407469 () Bool)

(declare-fun e!796639 () Bool)

(declare-fun call!66996 () Bool)

(assert (=> b!1407469 (= e!796639 call!66996)))

(declare-fun b!1407470 () Bool)

(declare-fun e!796638 () Bool)

(assert (=> b!1407470 (= e!796638 e!796639)))

(declare-fun lt!619776 () (_ BitVec 64))

(assert (=> b!1407470 (= lt!619776 (select (arr!46433 a!2901) j!112))))

(declare-fun lt!619777 () Unit!47456)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96185 (_ BitVec 64) (_ BitVec 32)) Unit!47456)

(assert (=> b!1407470 (= lt!619777 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619776 j!112))))

(declare-fun arrayContainsKey!0 (array!96185 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1407470 (arrayContainsKey!0 a!2901 lt!619776 #b00000000000000000000000000000000)))

(declare-fun lt!619775 () Unit!47456)

(assert (=> b!1407470 (= lt!619775 lt!619777)))

(declare-fun res!945421 () Bool)

(assert (=> b!1407470 (= res!945421 (= (seekEntryOrOpen!0 (select (arr!46433 a!2901) j!112) a!2901 mask!2840) (Found!10766 j!112)))))

(assert (=> b!1407470 (=> (not res!945421) (not e!796639))))

(declare-fun b!1407471 () Bool)

(assert (=> b!1407471 (= e!796640 e!796638)))

(declare-fun c!130493 () Bool)

(assert (=> b!1407471 (= c!130493 (validKeyInArray!0 (select (arr!46433 a!2901) j!112)))))

(declare-fun b!1407472 () Bool)

(assert (=> b!1407472 (= e!796638 call!66996)))

(declare-fun bm!66993 () Bool)

(assert (=> bm!66993 (= call!66996 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!151537 (not res!945422)) b!1407471))

(assert (= (and b!1407471 c!130493) b!1407470))

(assert (= (and b!1407471 (not c!130493)) b!1407472))

(assert (= (and b!1407470 res!945421) b!1407469))

(assert (= (or b!1407469 b!1407472) bm!66993))

(assert (=> b!1407470 m!1296541))

(declare-fun m!1296627 () Bool)

(assert (=> b!1407470 m!1296627))

(declare-fun m!1296629 () Bool)

(assert (=> b!1407470 m!1296629))

(assert (=> b!1407470 m!1296541))

(assert (=> b!1407470 m!1296553))

(assert (=> b!1407471 m!1296541))

(assert (=> b!1407471 m!1296541))

(assert (=> b!1407471 m!1296543))

(declare-fun m!1296631 () Bool)

(assert (=> bm!66993 m!1296631))

(assert (=> b!1407360 d!151537))

(declare-fun d!151543 () Bool)

(assert (=> d!151543 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!619786 () Unit!47456)

(declare-fun choose!38 (array!96185 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47456)

(assert (=> d!151543 (= lt!619786 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151543 (validMask!0 mask!2840)))

(assert (=> d!151543 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!619786)))

(declare-fun bs!41015 () Bool)

(assert (= bs!41015 d!151543))

(assert (=> bs!41015 m!1296551))

(declare-fun m!1296633 () Bool)

(assert (=> bs!41015 m!1296633))

(assert (=> bs!41015 m!1296535))

(assert (=> b!1407360 d!151543))

(declare-fun b!1407473 () Bool)

(declare-fun e!796643 () SeekEntryResult!10766)

(assert (=> b!1407473 (= e!796643 (Intermediate!10766 false lt!619732 #b00000000000000000000000000000000))))

(declare-fun b!1407474 () Bool)

(declare-fun e!796642 () SeekEntryResult!10766)

(assert (=> b!1407474 (= e!796642 e!796643)))

(declare-fun lt!619787 () (_ BitVec 64))

(declare-fun c!130495 () Bool)

(assert (=> b!1407474 (= c!130495 (or (= lt!619787 (select (arr!46433 a!2901) j!112)) (= (bvadd lt!619787 lt!619787) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1407475 () Bool)

(declare-fun lt!619788 () SeekEntryResult!10766)

(assert (=> b!1407475 (and (bvsge (index!45442 lt!619788) #b00000000000000000000000000000000) (bvslt (index!45442 lt!619788) (size!46984 a!2901)))))

(declare-fun res!945424 () Bool)

(assert (=> b!1407475 (= res!945424 (= (select (arr!46433 a!2901) (index!45442 lt!619788)) (select (arr!46433 a!2901) j!112)))))

(declare-fun e!796641 () Bool)

(assert (=> b!1407475 (=> res!945424 e!796641)))

(declare-fun e!796644 () Bool)

(assert (=> b!1407475 (= e!796644 e!796641)))

(declare-fun b!1407476 () Bool)

(assert (=> b!1407476 (and (bvsge (index!45442 lt!619788) #b00000000000000000000000000000000) (bvslt (index!45442 lt!619788) (size!46984 a!2901)))))

(assert (=> b!1407476 (= e!796641 (= (select (arr!46433 a!2901) (index!45442 lt!619788)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1407477 () Bool)

(declare-fun e!796645 () Bool)

(assert (=> b!1407477 (= e!796645 e!796644)))

(declare-fun res!945425 () Bool)

(assert (=> b!1407477 (= res!945425 (and ((_ is Intermediate!10766) lt!619788) (not (undefined!11578 lt!619788)) (bvslt (x!127052 lt!619788) #b01111111111111111111111111111110) (bvsge (x!127052 lt!619788) #b00000000000000000000000000000000) (bvsge (x!127052 lt!619788) #b00000000000000000000000000000000)))))

(assert (=> b!1407477 (=> (not res!945425) (not e!796644))))

(declare-fun b!1407478 () Bool)

(assert (=> b!1407478 (= e!796645 (bvsge (x!127052 lt!619788) #b01111111111111111111111111111110))))

(declare-fun d!151547 () Bool)

(assert (=> d!151547 e!796645))

(declare-fun c!130496 () Bool)

(assert (=> d!151547 (= c!130496 (and ((_ is Intermediate!10766) lt!619788) (undefined!11578 lt!619788)))))

(assert (=> d!151547 (= lt!619788 e!796642)))

(declare-fun c!130494 () Bool)

(assert (=> d!151547 (= c!130494 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!151547 (= lt!619787 (select (arr!46433 a!2901) lt!619732))))

(assert (=> d!151547 (validMask!0 mask!2840)))

(assert (=> d!151547 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619732 (select (arr!46433 a!2901) j!112) a!2901 mask!2840) lt!619788)))

(declare-fun b!1407479 () Bool)

(assert (=> b!1407479 (and (bvsge (index!45442 lt!619788) #b00000000000000000000000000000000) (bvslt (index!45442 lt!619788) (size!46984 a!2901)))))

(declare-fun res!945423 () Bool)

(assert (=> b!1407479 (= res!945423 (= (select (arr!46433 a!2901) (index!45442 lt!619788)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1407479 (=> res!945423 e!796641)))

(declare-fun b!1407480 () Bool)

(assert (=> b!1407480 (= e!796642 (Intermediate!10766 true lt!619732 #b00000000000000000000000000000000))))

(declare-fun b!1407481 () Bool)

(assert (=> b!1407481 (= e!796643 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!619732 #b00000000000000000000000000000000 mask!2840) (select (arr!46433 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!151547 c!130494) b!1407480))

(assert (= (and d!151547 (not c!130494)) b!1407474))

(assert (= (and b!1407474 c!130495) b!1407473))

(assert (= (and b!1407474 (not c!130495)) b!1407481))

(assert (= (and d!151547 c!130496) b!1407478))

(assert (= (and d!151547 (not c!130496)) b!1407477))

(assert (= (and b!1407477 res!945425) b!1407475))

(assert (= (and b!1407475 (not res!945424)) b!1407479))

(assert (= (and b!1407479 (not res!945423)) b!1407476))

(declare-fun m!1296635 () Bool)

(assert (=> b!1407476 m!1296635))

(declare-fun m!1296637 () Bool)

(assert (=> d!151547 m!1296637))

(assert (=> d!151547 m!1296535))

(assert (=> b!1407479 m!1296635))

(assert (=> b!1407475 m!1296635))

(declare-fun m!1296639 () Bool)

(assert (=> b!1407481 m!1296639))

(assert (=> b!1407481 m!1296639))

(assert (=> b!1407481 m!1296541))

(declare-fun m!1296641 () Bool)

(assert (=> b!1407481 m!1296641))

(assert (=> b!1407360 d!151547))

(declare-fun d!151549 () Bool)

(declare-fun lt!619790 () (_ BitVec 32))

(declare-fun lt!619789 () (_ BitVec 32))

(assert (=> d!151549 (= lt!619790 (bvmul (bvxor lt!619789 (bvlshr lt!619789 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151549 (= lt!619789 ((_ extract 31 0) (bvand (bvxor (select (arr!46433 a!2901) j!112) (bvlshr (select (arr!46433 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151549 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945400 (let ((h!34390 ((_ extract 31 0) (bvand (bvxor (select (arr!46433 a!2901) j!112) (bvlshr (select (arr!46433 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127055 (bvmul (bvxor h!34390 (bvlshr h!34390 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127055 (bvlshr x!127055 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945400 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945400 #b00000000000000000000000000000000))))))

(assert (=> d!151549 (= (toIndex!0 (select (arr!46433 a!2901) j!112) mask!2840) (bvand (bvxor lt!619790 (bvlshr lt!619790 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1407360 d!151549))

(declare-fun d!151551 () Bool)

(assert (=> d!151551 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!121062 d!151551))

(declare-fun d!151557 () Bool)

(assert (=> d!151557 (= (array_inv!35378 a!2901) (bvsge (size!46984 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!121062 d!151557))

(declare-fun d!151559 () Bool)

(assert (=> d!151559 (= (validKeyInArray!0 (select (arr!46433 a!2901) i!1037)) (and (not (= (select (arr!46433 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46433 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1407361 d!151559))

(declare-fun d!151561 () Bool)

(declare-fun res!945438 () Bool)

(declare-fun e!796672 () Bool)

(assert (=> d!151561 (=> res!945438 e!796672)))

(assert (=> d!151561 (= res!945438 (bvsge #b00000000000000000000000000000000 (size!46984 a!2901)))))

(assert (=> d!151561 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33129) e!796672)))

(declare-fun b!1407522 () Bool)

(declare-fun e!796675 () Bool)

(assert (=> b!1407522 (= e!796672 e!796675)))

(declare-fun res!945439 () Bool)

(assert (=> b!1407522 (=> (not res!945439) (not e!796675))))

(declare-fun e!796673 () Bool)

(assert (=> b!1407522 (= res!945439 (not e!796673))))

(declare-fun res!945440 () Bool)

(assert (=> b!1407522 (=> (not res!945440) (not e!796673))))

(assert (=> b!1407522 (= res!945440 (validKeyInArray!0 (select (arr!46433 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1407523 () Bool)

(declare-fun e!796674 () Bool)

(declare-fun call!67002 () Bool)

(assert (=> b!1407523 (= e!796674 call!67002)))

(declare-fun b!1407524 () Bool)

(assert (=> b!1407524 (= e!796674 call!67002)))

(declare-fun bm!66999 () Bool)

(declare-fun c!130511 () Bool)

(assert (=> bm!66999 (= call!67002 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130511 (Cons!33128 (select (arr!46433 a!2901) #b00000000000000000000000000000000) Nil!33129) Nil!33129)))))

(declare-fun b!1407525 () Bool)

(declare-fun contains!9814 (List!33132 (_ BitVec 64)) Bool)

(assert (=> b!1407525 (= e!796673 (contains!9814 Nil!33129 (select (arr!46433 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1407526 () Bool)

(assert (=> b!1407526 (= e!796675 e!796674)))

(assert (=> b!1407526 (= c!130511 (validKeyInArray!0 (select (arr!46433 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!151561 (not res!945438)) b!1407522))

(assert (= (and b!1407522 res!945440) b!1407525))

(assert (= (and b!1407522 res!945439) b!1407526))

(assert (= (and b!1407526 c!130511) b!1407523))

(assert (= (and b!1407526 (not c!130511)) b!1407524))

(assert (= (or b!1407523 b!1407524) bm!66999))

(declare-fun m!1296667 () Bool)

(assert (=> b!1407522 m!1296667))

(assert (=> b!1407522 m!1296667))

(declare-fun m!1296669 () Bool)

(assert (=> b!1407522 m!1296669))

(assert (=> bm!66999 m!1296667))

(declare-fun m!1296671 () Bool)

(assert (=> bm!66999 m!1296671))

(assert (=> b!1407525 m!1296667))

(assert (=> b!1407525 m!1296667))

(declare-fun m!1296673 () Bool)

(assert (=> b!1407525 m!1296673))

(assert (=> b!1407526 m!1296667))

(assert (=> b!1407526 m!1296667))

(assert (=> b!1407526 m!1296669))

(assert (=> b!1407362 d!151561))

(declare-fun d!151567 () Bool)

(declare-fun res!945442 () Bool)

(declare-fun e!796678 () Bool)

(assert (=> d!151567 (=> res!945442 e!796678)))

(assert (=> d!151567 (= res!945442 (bvsge #b00000000000000000000000000000000 (size!46984 a!2901)))))

(assert (=> d!151567 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!796678)))

(declare-fun b!1407527 () Bool)

(declare-fun e!796677 () Bool)

(declare-fun call!67003 () Bool)

(assert (=> b!1407527 (= e!796677 call!67003)))

(declare-fun b!1407528 () Bool)

(declare-fun e!796676 () Bool)

(assert (=> b!1407528 (= e!796676 e!796677)))

(declare-fun lt!619810 () (_ BitVec 64))

(assert (=> b!1407528 (= lt!619810 (select (arr!46433 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!619811 () Unit!47456)

(assert (=> b!1407528 (= lt!619811 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619810 #b00000000000000000000000000000000))))

(assert (=> b!1407528 (arrayContainsKey!0 a!2901 lt!619810 #b00000000000000000000000000000000)))

(declare-fun lt!619809 () Unit!47456)

(assert (=> b!1407528 (= lt!619809 lt!619811)))

(declare-fun res!945441 () Bool)

(assert (=> b!1407528 (= res!945441 (= (seekEntryOrOpen!0 (select (arr!46433 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10766 #b00000000000000000000000000000000)))))

(assert (=> b!1407528 (=> (not res!945441) (not e!796677))))

(declare-fun b!1407529 () Bool)

(assert (=> b!1407529 (= e!796678 e!796676)))

(declare-fun c!130512 () Bool)

(assert (=> b!1407529 (= c!130512 (validKeyInArray!0 (select (arr!46433 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1407530 () Bool)

(assert (=> b!1407530 (= e!796676 call!67003)))

(declare-fun bm!67000 () Bool)

(assert (=> bm!67000 (= call!67003 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(assert (= (and d!151567 (not res!945442)) b!1407529))

(assert (= (and b!1407529 c!130512) b!1407528))

(assert (= (and b!1407529 (not c!130512)) b!1407530))

(assert (= (and b!1407528 res!945441) b!1407527))

(assert (= (or b!1407527 b!1407530) bm!67000))

(assert (=> b!1407528 m!1296667))

(declare-fun m!1296675 () Bool)

(assert (=> b!1407528 m!1296675))

(declare-fun m!1296677 () Bool)

(assert (=> b!1407528 m!1296677))

(assert (=> b!1407528 m!1296667))

(declare-fun m!1296679 () Bool)

(assert (=> b!1407528 m!1296679))

(assert (=> b!1407529 m!1296667))

(assert (=> b!1407529 m!1296667))

(assert (=> b!1407529 m!1296669))

(declare-fun m!1296681 () Bool)

(assert (=> bm!67000 m!1296681))

(assert (=> b!1407367 d!151567))

(declare-fun d!151569 () Bool)

(declare-fun lt!619843 () SeekEntryResult!10766)

(assert (=> d!151569 (and (or ((_ is Undefined!10766) lt!619843) (not ((_ is Found!10766) lt!619843)) (and (bvsge (index!45441 lt!619843) #b00000000000000000000000000000000) (bvslt (index!45441 lt!619843) (size!46984 a!2901)))) (or ((_ is Undefined!10766) lt!619843) ((_ is Found!10766) lt!619843) (not ((_ is MissingZero!10766) lt!619843)) (and (bvsge (index!45440 lt!619843) #b00000000000000000000000000000000) (bvslt (index!45440 lt!619843) (size!46984 a!2901)))) (or ((_ is Undefined!10766) lt!619843) ((_ is Found!10766) lt!619843) ((_ is MissingZero!10766) lt!619843) (not ((_ is MissingVacant!10766) lt!619843)) (and (bvsge (index!45443 lt!619843) #b00000000000000000000000000000000) (bvslt (index!45443 lt!619843) (size!46984 a!2901)))) (or ((_ is Undefined!10766) lt!619843) (ite ((_ is Found!10766) lt!619843) (= (select (arr!46433 a!2901) (index!45441 lt!619843)) (select (arr!46433 a!2901) j!112)) (ite ((_ is MissingZero!10766) lt!619843) (= (select (arr!46433 a!2901) (index!45440 lt!619843)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10766) lt!619843) (= (select (arr!46433 a!2901) (index!45443 lt!619843)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!796714 () SeekEntryResult!10766)

(assert (=> d!151569 (= lt!619843 e!796714)))

(declare-fun c!130539 () Bool)

(declare-fun lt!619844 () SeekEntryResult!10766)

(assert (=> d!151569 (= c!130539 (and ((_ is Intermediate!10766) lt!619844) (undefined!11578 lt!619844)))))

(assert (=> d!151569 (= lt!619844 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46433 a!2901) j!112) mask!2840) (select (arr!46433 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151569 (validMask!0 mask!2840)))

(assert (=> d!151569 (= (seekEntryOrOpen!0 (select (arr!46433 a!2901) j!112) a!2901 mask!2840) lt!619843)))

(declare-fun b!1407592 () Bool)

(declare-fun e!796713 () SeekEntryResult!10766)

(assert (=> b!1407592 (= e!796713 (Found!10766 (index!45442 lt!619844)))))

(declare-fun b!1407593 () Bool)

(assert (=> b!1407593 (= e!796714 Undefined!10766)))

(declare-fun b!1407594 () Bool)

(declare-fun e!796712 () SeekEntryResult!10766)

(assert (=> b!1407594 (= e!796712 (MissingZero!10766 (index!45442 lt!619844)))))

(declare-fun b!1407595 () Bool)

(assert (=> b!1407595 (= e!796714 e!796713)))

(declare-fun lt!619842 () (_ BitVec 64))

(assert (=> b!1407595 (= lt!619842 (select (arr!46433 a!2901) (index!45442 lt!619844)))))

(declare-fun c!130538 () Bool)

(assert (=> b!1407595 (= c!130538 (= lt!619842 (select (arr!46433 a!2901) j!112)))))

(declare-fun b!1407596 () Bool)

(declare-fun c!130540 () Bool)

(assert (=> b!1407596 (= c!130540 (= lt!619842 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1407596 (= e!796713 e!796712)))

(declare-fun b!1407597 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96185 (_ BitVec 32)) SeekEntryResult!10766)

(assert (=> b!1407597 (= e!796712 (seekKeyOrZeroReturnVacant!0 (x!127052 lt!619844) (index!45442 lt!619844) (index!45442 lt!619844) (select (arr!46433 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!151569 c!130539) b!1407593))

(assert (= (and d!151569 (not c!130539)) b!1407595))

(assert (= (and b!1407595 c!130538) b!1407592))

(assert (= (and b!1407595 (not c!130538)) b!1407596))

(assert (= (and b!1407596 c!130540) b!1407594))

(assert (= (and b!1407596 (not c!130540)) b!1407597))

(declare-fun m!1296709 () Bool)

(assert (=> d!151569 m!1296709))

(declare-fun m!1296711 () Bool)

(assert (=> d!151569 m!1296711))

(assert (=> d!151569 m!1296541))

(assert (=> d!151569 m!1296547))

(declare-fun m!1296713 () Bool)

(assert (=> d!151569 m!1296713))

(assert (=> d!151569 m!1296547))

(assert (=> d!151569 m!1296541))

(declare-fun m!1296715 () Bool)

(assert (=> d!151569 m!1296715))

(assert (=> d!151569 m!1296535))

(declare-fun m!1296717 () Bool)

(assert (=> b!1407595 m!1296717))

(assert (=> b!1407597 m!1296541))

(declare-fun m!1296719 () Bool)

(assert (=> b!1407597 m!1296719))

(assert (=> b!1407363 d!151569))

(check-sat (not b!1407528) (not d!151525) (not b!1407471) (not b!1407522) (not bm!66999) (not b!1407421) (not bm!66993) (not b!1407529) (not d!151569) (not b!1407470) (not b!1407525) (not b!1407481) (not b!1407526) (not d!151543) (not d!151547) (not bm!67000) (not b!1407597))
(check-sat)
