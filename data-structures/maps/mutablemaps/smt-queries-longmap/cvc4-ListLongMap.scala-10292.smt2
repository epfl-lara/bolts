; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!121064 () Bool)

(assert start!121064)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!96187 0))(
  ( (array!96188 (arr!46434 (Array (_ BitVec 32) (_ BitVec 64))) (size!46985 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96187)

(declare-fun b!1407386 () Bool)

(declare-fun e!796591 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10767 0))(
  ( (MissingZero!10767 (index!45444 (_ BitVec 32))) (Found!10767 (index!45445 (_ BitVec 32))) (Intermediate!10767 (undefined!11579 Bool) (index!45446 (_ BitVec 32)) (x!127053 (_ BitVec 32))) (Undefined!10767) (MissingVacant!10767 (index!45447 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96187 (_ BitVec 32)) SeekEntryResult!10767)

(assert (=> b!1407386 (= e!796591 (= (seekEntryOrOpen!0 (select (arr!46434 a!2901) j!112) a!2901 mask!2840) (Found!10767 j!112)))))

(declare-fun b!1407387 () Bool)

(declare-fun res!945388 () Bool)

(declare-fun e!796589 () Bool)

(assert (=> b!1407387 (=> (not res!945388) (not e!796589))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1407387 (= res!945388 (and (= (size!46985 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46985 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46985 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1407388 () Bool)

(declare-fun res!945387 () Bool)

(assert (=> b!1407388 (=> (not res!945387) (not e!796589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1407388 (= res!945387 (validKeyInArray!0 (select (arr!46434 a!2901) j!112)))))

(declare-fun lt!619741 () (_ BitVec 32))

(declare-fun b!1407389 () Bool)

(declare-fun lt!619739 () SeekEntryResult!10767)

(declare-fun e!796592 () Bool)

(assert (=> b!1407389 (= e!796592 (or (bvslt (x!127053 lt!619739) #b00000000000000000000000000000000) (bvsgt (x!127053 lt!619739) #b01111111111111111111111111111110) (bvslt lt!619741 #b00000000000000000000000000000000) (bvsge lt!619741 (size!46985 a!2901)) (and (bvsge (index!45446 lt!619739) #b00000000000000000000000000000000) (bvslt (index!45446 lt!619739) (size!46985 a!2901)))))))

(declare-fun res!945384 () Bool)

(assert (=> start!121064 (=> (not res!945384) (not e!796589))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!121064 (= res!945384 (validMask!0 mask!2840))))

(assert (=> start!121064 e!796589))

(assert (=> start!121064 true))

(declare-fun array_inv!35379 (array!96187) Bool)

(assert (=> start!121064 (array_inv!35379 a!2901)))

(declare-fun b!1407390 () Bool)

(declare-fun res!945382 () Bool)

(assert (=> b!1407390 (=> (not res!945382) (not e!796589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96187 (_ BitVec 32)) Bool)

(assert (=> b!1407390 (= res!945382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1407391 () Bool)

(declare-fun res!945390 () Bool)

(assert (=> b!1407391 (=> res!945390 e!796592)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96187 (_ BitVec 32)) SeekEntryResult!10767)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407391 (= res!945390 (not (= lt!619739 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96188 (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46985 a!2901)) mask!2840))))))

(declare-fun b!1407392 () Bool)

(declare-fun res!945389 () Bool)

(assert (=> b!1407392 (=> (not res!945389) (not e!796589))))

(declare-datatypes ((List!33133 0))(
  ( (Nil!33130) (Cons!33129 (h!34389 (_ BitVec 64)) (t!47834 List!33133)) )
))
(declare-fun arrayNoDuplicates!0 (array!96187 (_ BitVec 32) List!33133) Bool)

(assert (=> b!1407392 (= res!945389 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33130))))

(declare-fun b!1407393 () Bool)

(declare-fun res!945383 () Bool)

(assert (=> b!1407393 (=> (not res!945383) (not e!796589))))

(assert (=> b!1407393 (= res!945383 (validKeyInArray!0 (select (arr!46434 a!2901) i!1037)))))

(declare-fun b!1407394 () Bool)

(assert (=> b!1407394 (= e!796589 (not e!796592))))

(declare-fun res!945385 () Bool)

(assert (=> b!1407394 (=> res!945385 e!796592)))

(assert (=> b!1407394 (= res!945385 (or (not (is-Intermediate!10767 lt!619739)) (undefined!11579 lt!619739)))))

(assert (=> b!1407394 e!796591))

(declare-fun res!945386 () Bool)

(assert (=> b!1407394 (=> (not res!945386) (not e!796591))))

(assert (=> b!1407394 (= res!945386 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47458 0))(
  ( (Unit!47459) )
))
(declare-fun lt!619740 () Unit!47458)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47458)

(assert (=> b!1407394 (= lt!619740 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1407394 (= lt!619739 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!619741 (select (arr!46434 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1407394 (= lt!619741 (toIndex!0 (select (arr!46434 a!2901) j!112) mask!2840))))

(assert (= (and start!121064 res!945384) b!1407387))

(assert (= (and b!1407387 res!945388) b!1407393))

(assert (= (and b!1407393 res!945383) b!1407388))

(assert (= (and b!1407388 res!945387) b!1407390))

(assert (= (and b!1407390 res!945382) b!1407392))

(assert (= (and b!1407392 res!945389) b!1407394))

(assert (= (and b!1407394 res!945386) b!1407386))

(assert (= (and b!1407394 (not res!945385)) b!1407391))

(assert (= (and b!1407391 (not res!945390)) b!1407389))

(declare-fun m!1296565 () Bool)

(assert (=> b!1407392 m!1296565))

(declare-fun m!1296567 () Bool)

(assert (=> start!121064 m!1296567))

(declare-fun m!1296569 () Bool)

(assert (=> start!121064 m!1296569))

(declare-fun m!1296571 () Bool)

(assert (=> b!1407393 m!1296571))

(assert (=> b!1407393 m!1296571))

(declare-fun m!1296573 () Bool)

(assert (=> b!1407393 m!1296573))

(declare-fun m!1296575 () Bool)

(assert (=> b!1407391 m!1296575))

(declare-fun m!1296577 () Bool)

(assert (=> b!1407391 m!1296577))

(assert (=> b!1407391 m!1296577))

(declare-fun m!1296579 () Bool)

(assert (=> b!1407391 m!1296579))

(assert (=> b!1407391 m!1296579))

(assert (=> b!1407391 m!1296577))

(declare-fun m!1296581 () Bool)

(assert (=> b!1407391 m!1296581))

(declare-fun m!1296583 () Bool)

(assert (=> b!1407386 m!1296583))

(assert (=> b!1407386 m!1296583))

(declare-fun m!1296585 () Bool)

(assert (=> b!1407386 m!1296585))

(assert (=> b!1407394 m!1296583))

(declare-fun m!1296587 () Bool)

(assert (=> b!1407394 m!1296587))

(assert (=> b!1407394 m!1296583))

(assert (=> b!1407394 m!1296583))

(declare-fun m!1296589 () Bool)

(assert (=> b!1407394 m!1296589))

(declare-fun m!1296591 () Bool)

(assert (=> b!1407394 m!1296591))

(declare-fun m!1296593 () Bool)

(assert (=> b!1407394 m!1296593))

(declare-fun m!1296595 () Bool)

(assert (=> b!1407390 m!1296595))

(assert (=> b!1407388 m!1296583))

(assert (=> b!1407388 m!1296583))

(declare-fun m!1296597 () Bool)

(assert (=> b!1407388 m!1296597))

(push 1)

(assert (not b!1407394))

(assert (not b!1407388))

(assert (not b!1407393))

(assert (not b!1407390))

(assert (not b!1407392))

(assert (not b!1407391))

(assert (not b!1407386))

(assert (not start!121064))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!151531 () Bool)

(declare-fun res!945412 () Bool)

(declare-fun e!796626 () Bool)

(assert (=> d!151531 (=> res!945412 e!796626)))

(assert (=> d!151531 (= res!945412 (bvsge #b00000000000000000000000000000000 (size!46985 a!2901)))))

(assert (=> d!151531 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!796626)))

(declare-fun b!1407448 () Bool)

(declare-fun e!796625 () Bool)

(declare-fun call!66993 () Bool)

(assert (=> b!1407448 (= e!796625 call!66993)))

(declare-fun b!1407449 () Bool)

(declare-fun e!796624 () Bool)

(assert (=> b!1407449 (= e!796624 e!796625)))

(declare-fun lt!619764 () (_ BitVec 64))

(assert (=> b!1407449 (= lt!619764 (select (arr!46434 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!619765 () Unit!47458)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96187 (_ BitVec 64) (_ BitVec 32)) Unit!47458)

(assert (=> b!1407449 (= lt!619765 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619764 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1407449 (arrayContainsKey!0 a!2901 lt!619764 #b00000000000000000000000000000000)))

(declare-fun lt!619766 () Unit!47458)

(assert (=> b!1407449 (= lt!619766 lt!619765)))

(declare-fun res!945411 () Bool)

(assert (=> b!1407449 (= res!945411 (= (seekEntryOrOpen!0 (select (arr!46434 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10767 #b00000000000000000000000000000000)))))

(assert (=> b!1407449 (=> (not res!945411) (not e!796625))))

(declare-fun bm!66990 () Bool)

(assert (=> bm!66990 (= call!66993 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1407450 () Bool)

(assert (=> b!1407450 (= e!796624 call!66993)))

(declare-fun b!1407451 () Bool)

(assert (=> b!1407451 (= e!796626 e!796624)))

(declare-fun c!130487 () Bool)

(assert (=> b!1407451 (= c!130487 (validKeyInArray!0 (select (arr!46434 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!151531 (not res!945412)) b!1407451))

(assert (= (and b!1407451 c!130487) b!1407449))

(assert (= (and b!1407451 (not c!130487)) b!1407450))

(assert (= (and b!1407449 res!945411) b!1407448))

(assert (= (or b!1407448 b!1407450) bm!66990))

(declare-fun m!1296607 () Bool)

(assert (=> b!1407449 m!1296607))

(declare-fun m!1296609 () Bool)

(assert (=> b!1407449 m!1296609))

(declare-fun m!1296611 () Bool)

(assert (=> b!1407449 m!1296611))

(assert (=> b!1407449 m!1296607))

(declare-fun m!1296613 () Bool)

(assert (=> b!1407449 m!1296613))

(declare-fun m!1296615 () Bool)

(assert (=> bm!66990 m!1296615))

(assert (=> b!1407451 m!1296607))

(assert (=> b!1407451 m!1296607))

(declare-fun m!1296617 () Bool)

(assert (=> b!1407451 m!1296617))

(assert (=> b!1407390 d!151531))

(declare-fun d!151539 () Bool)

(declare-fun lt!619806 () SeekEntryResult!10767)

(assert (=> d!151539 (and (or (is-Undefined!10767 lt!619806) (not (is-Found!10767 lt!619806)) (and (bvsge (index!45445 lt!619806) #b00000000000000000000000000000000) (bvslt (index!45445 lt!619806) (size!46985 a!2901)))) (or (is-Undefined!10767 lt!619806) (is-Found!10767 lt!619806) (not (is-MissingZero!10767 lt!619806)) (and (bvsge (index!45444 lt!619806) #b00000000000000000000000000000000) (bvslt (index!45444 lt!619806) (size!46985 a!2901)))) (or (is-Undefined!10767 lt!619806) (is-Found!10767 lt!619806) (is-MissingZero!10767 lt!619806) (not (is-MissingVacant!10767 lt!619806)) (and (bvsge (index!45447 lt!619806) #b00000000000000000000000000000000) (bvslt (index!45447 lt!619806) (size!46985 a!2901)))) (or (is-Undefined!10767 lt!619806) (ite (is-Found!10767 lt!619806) (= (select (arr!46434 a!2901) (index!45445 lt!619806)) (select (arr!46434 a!2901) j!112)) (ite (is-MissingZero!10767 lt!619806) (= (select (arr!46434 a!2901) (index!45444 lt!619806)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10767 lt!619806) (= (select (arr!46434 a!2901) (index!45447 lt!619806)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!796663 () SeekEntryResult!10767)

(assert (=> d!151539 (= lt!619806 e!796663)))

(declare-fun c!130507 () Bool)

(declare-fun lt!619807 () SeekEntryResult!10767)

(assert (=> d!151539 (= c!130507 (and (is-Intermediate!10767 lt!619807) (undefined!11579 lt!619807)))))

(assert (=> d!151539 (= lt!619807 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46434 a!2901) j!112) mask!2840) (select (arr!46434 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!151539 (validMask!0 mask!2840)))

(assert (=> d!151539 (= (seekEntryOrOpen!0 (select (arr!46434 a!2901) j!112) a!2901 mask!2840) lt!619806)))

(declare-fun e!796661 () SeekEntryResult!10767)

(declare-fun b!1407506 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96187 (_ BitVec 32)) SeekEntryResult!10767)

(assert (=> b!1407506 (= e!796661 (seekKeyOrZeroReturnVacant!0 (x!127053 lt!619807) (index!45446 lt!619807) (index!45446 lt!619807) (select (arr!46434 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1407507 () Bool)

(declare-fun e!796662 () SeekEntryResult!10767)

(assert (=> b!1407507 (= e!796663 e!796662)))

(declare-fun lt!619808 () (_ BitVec 64))

(assert (=> b!1407507 (= lt!619808 (select (arr!46434 a!2901) (index!45446 lt!619807)))))

(declare-fun c!130508 () Bool)

(assert (=> b!1407507 (= c!130508 (= lt!619808 (select (arr!46434 a!2901) j!112)))))

(declare-fun b!1407508 () Bool)

(declare-fun c!130506 () Bool)

(assert (=> b!1407508 (= c!130506 (= lt!619808 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1407508 (= e!796662 e!796661)))

(declare-fun b!1407509 () Bool)

(assert (=> b!1407509 (= e!796661 (MissingZero!10767 (index!45446 lt!619807)))))

(declare-fun b!1407510 () Bool)

(assert (=> b!1407510 (= e!796662 (Found!10767 (index!45446 lt!619807)))))

(declare-fun b!1407511 () Bool)

(assert (=> b!1407511 (= e!796663 Undefined!10767)))

(assert (= (and d!151539 c!130507) b!1407511))

(assert (= (and d!151539 (not c!130507)) b!1407507))

(assert (= (and b!1407507 c!130508) b!1407510))

(assert (= (and b!1407507 (not c!130508)) b!1407508))

(assert (= (and b!1407508 c!130506) b!1407509))

(assert (= (and b!1407508 (not c!130506)) b!1407506))

(declare-fun m!1296655 () Bool)

(assert (=> d!151539 m!1296655))

(assert (=> d!151539 m!1296567))

(assert (=> d!151539 m!1296587))

(assert (=> d!151539 m!1296583))

(declare-fun m!1296657 () Bool)

(assert (=> d!151539 m!1296657))

(declare-fun m!1296659 () Bool)

(assert (=> d!151539 m!1296659))

(declare-fun m!1296661 () Bool)

(assert (=> d!151539 m!1296661))

(assert (=> d!151539 m!1296583))

(assert (=> d!151539 m!1296587))

(assert (=> b!1407506 m!1296583))

(declare-fun m!1296663 () Bool)

(assert (=> b!1407506 m!1296663))

(declare-fun m!1296665 () Bool)

(assert (=> b!1407507 m!1296665))

(assert (=> b!1407386 d!151539))

(declare-fun b!1407549 () Bool)

(declare-fun e!796691 () Bool)

(declare-fun lt!619816 () SeekEntryResult!10767)

(assert (=> b!1407549 (= e!796691 (bvsge (x!127053 lt!619816) #b01111111111111111111111111111110))))

(declare-fun b!1407550 () Bool)

(assert (=> b!1407550 (and (bvsge (index!45446 lt!619816) #b00000000000000000000000000000000) (bvslt (index!45446 lt!619816) (size!46985 (array!96188 (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46985 a!2901)))))))

(declare-fun res!945450 () Bool)

(assert (=> b!1407550 (= res!945450 (= (select (arr!46434 (array!96188 (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46985 a!2901))) (index!45446 lt!619816)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!796689 () Bool)

(assert (=> b!1407550 (=> res!945450 e!796689)))

(declare-fun b!1407551 () Bool)

(declare-fun e!796692 () Bool)

(assert (=> b!1407551 (= e!796691 e!796692)))

(declare-fun res!945451 () Bool)

(assert (=> b!1407551 (= res!945451 (and (is-Intermediate!10767 lt!619816) (not (undefined!11579 lt!619816)) (bvslt (x!127053 lt!619816) #b01111111111111111111111111111110) (bvsge (x!127053 lt!619816) #b00000000000000000000000000000000) (bvsge (x!127053 lt!619816) #b00000000000000000000000000000000)))))

(assert (=> b!1407551 (=> (not res!945451) (not e!796692))))

(declare-fun b!1407552 () Bool)

(assert (=> b!1407552 (and (bvsge (index!45446 lt!619816) #b00000000000000000000000000000000) (bvslt (index!45446 lt!619816) (size!46985 (array!96188 (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46985 a!2901)))))))

(assert (=> b!1407552 (= e!796689 (= (select (arr!46434 (array!96188 (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46985 a!2901))) (index!45446 lt!619816)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1407553 () Bool)

(declare-fun e!796690 () SeekEntryResult!10767)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1407553 (= e!796690 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96188 (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46985 a!2901)) mask!2840))))

(declare-fun d!151555 () Bool)

(assert (=> d!151555 e!796691))

(declare-fun c!130521 () Bool)

(assert (=> d!151555 (= c!130521 (and (is-Intermediate!10767 lt!619816) (undefined!11579 lt!619816)))))

(declare-fun e!796693 () SeekEntryResult!10767)

(assert (=> d!151555 (= lt!619816 e!796693)))

(declare-fun c!130519 () Bool)

(assert (=> d!151555 (= c!130519 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!619817 () (_ BitVec 64))

(assert (=> d!151555 (= lt!619817 (select (arr!46434 (array!96188 (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46985 a!2901))) (toIndex!0 (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!151555 (validMask!0 mask!2840)))

(assert (=> d!151555 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96188 (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46985 a!2901)) mask!2840) lt!619816)))

(declare-fun b!1407554 () Bool)

(assert (=> b!1407554 (= e!796693 (Intermediate!10767 true (toIndex!0 (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1407555 () Bool)

(assert (=> b!1407555 (and (bvsge (index!45446 lt!619816) #b00000000000000000000000000000000) (bvslt (index!45446 lt!619816) (size!46985 (array!96188 (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46985 a!2901)))))))

(declare-fun res!945449 () Bool)

(assert (=> b!1407555 (= res!945449 (= (select (arr!46434 (array!96188 (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46985 a!2901))) (index!45446 lt!619816)) (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1407555 (=> res!945449 e!796689)))

(assert (=> b!1407555 (= e!796692 e!796689)))

(declare-fun b!1407556 () Bool)

(assert (=> b!1407556 (= e!796693 e!796690)))

(declare-fun c!130520 () Bool)

(assert (=> b!1407556 (= c!130520 (or (= lt!619817 (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!619817 lt!619817) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1407557 () Bool)

(assert (=> b!1407557 (= e!796690 (Intermediate!10767 false (toIndex!0 (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!151555 c!130519) b!1407554))

(assert (= (and d!151555 (not c!130519)) b!1407556))

(assert (= (and b!1407556 c!130520) b!1407557))

(assert (= (and b!1407556 (not c!130520)) b!1407553))

(assert (= (and d!151555 c!130521) b!1407549))

(assert (= (and d!151555 (not c!130521)) b!1407551))

(assert (= (and b!1407551 res!945451) b!1407555))

(assert (= (and b!1407555 (not res!945449)) b!1407550))

(assert (= (and b!1407550 (not res!945450)) b!1407552))

(assert (=> b!1407553 m!1296579))

(declare-fun m!1296683 () Bool)

(assert (=> b!1407553 m!1296683))

(assert (=> b!1407553 m!1296683))

(assert (=> b!1407553 m!1296577))

(declare-fun m!1296685 () Bool)

(assert (=> b!1407553 m!1296685))

(declare-fun m!1296687 () Bool)

(assert (=> b!1407550 m!1296687))

(assert (=> b!1407555 m!1296687))

(assert (=> d!151555 m!1296579))

(declare-fun m!1296689 () Bool)

(assert (=> d!151555 m!1296689))

(assert (=> d!151555 m!1296567))

(assert (=> b!1407552 m!1296687))

(assert (=> b!1407391 d!151555))

(declare-fun d!151571 () Bool)

(declare-fun lt!619835 () (_ BitVec 32))

(declare-fun lt!619834 () (_ BitVec 32))

(assert (=> d!151571 (= lt!619835 (bvmul (bvxor lt!619834 (bvlshr lt!619834 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!151571 (= lt!619834 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!151571 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!945452 (let ((h!34392 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127059 (bvmul (bvxor h!34392 (bvlshr h!34392 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127059 (bvlshr x!127059 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!945452 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!945452 #b00000000000000000000000000000000))))))

(assert (=> d!151571 (= (toIndex!0 (select (store (arr!46434 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!619835 (bvlshr lt!619835 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1407391 d!151571))

(declare-fun bm!67004 () Bool)

(declare-fun call!67007 () Bool)

(declare-fun c!130546 () Bool)

(assert (=> bm!67004 (= call!67007 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!130546 (Cons!33129 (select (arr!46434 a!2901) #b00000000000000000000000000000000) Nil!33130) Nil!33130)))))

(declare-fun d!151573 () Bool)

(declare-fun res!945465 () Bool)

(declare-fun e!796731 () Bool)

(assert (=> d!151573 (=> res!945465 e!796731)))

(assert (=> d!151573 (= res!945465 (bvsge #b00000000000000000000000000000000 (size!46985 a!2901)))))

(assert (=> d!151573 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33130) e!796731)))

(declare-fun b!1407617 () Bool)

(declare-fun e!796729 () Bool)

(declare-fun e!796730 () Bool)

(assert (=> b!1407617 (= e!796729 e!796730)))

(assert (=> b!1407617 (= c!130546 (validKeyInArray!0 (select (arr!46434 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1407618 () Bool)

(assert (=> b!1407618 (= e!796731 e!796729)))

(declare-fun res!945466 () Bool)

(assert (=> b!1407618 (=> (not res!945466) (not e!796729))))

(declare-fun e!796728 () Bool)

(assert (=> b!1407618 (= res!945466 (not e!796728))))

(declare-fun res!945464 () Bool)

(assert (=> b!1407618 (=> (not res!945464) (not e!796728))))

(assert (=> b!1407618 (= res!945464 (validKeyInArray!0 (select (arr!46434 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1407619 () Bool)

(assert (=> b!1407619 (= e!796730 call!67007)))

(declare-fun b!1407620 () Bool)

(declare-fun contains!9816 (List!33133 (_ BitVec 64)) Bool)

(assert (=> b!1407620 (= e!796728 (contains!9816 Nil!33130 (select (arr!46434 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1407621 () Bool)

(assert (=> b!1407621 (= e!796730 call!67007)))

(assert (= (and d!151573 (not res!945465)) b!1407618))

(assert (= (and b!1407618 res!945464) b!1407620))

(assert (= (and b!1407618 res!945466) b!1407617))

(assert (= (and b!1407617 c!130546) b!1407619))

(assert (= (and b!1407617 (not c!130546)) b!1407621))

(assert (= (or b!1407619 b!1407621) bm!67004))

(assert (=> bm!67004 m!1296607))

(declare-fun m!1296731 () Bool)

(assert (=> bm!67004 m!1296731))

(assert (=> b!1407617 m!1296607))

(assert (=> b!1407617 m!1296607))

(assert (=> b!1407617 m!1296617))

(assert (=> b!1407618 m!1296607))

(assert (=> b!1407618 m!1296607))

(assert (=> b!1407618 m!1296617))

(assert (=> b!1407620 m!1296607))

(assert (=> b!1407620 m!1296607))

(declare-fun m!1296733 () Bool)

(assert (=> b!1407620 m!1296733))

(assert (=> b!1407392 d!151573))

(declare-fun d!151585 () Bool)

(assert (=> d!151585 (= (validKeyInArray!0 (select (arr!46434 a!2901) j!112)) (and (not (= (select (arr!46434 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46434 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1407388 d!151585))

(declare-fun d!151587 () Bool)

(assert (=> d!151587 (= (validKeyInArray!0 (select (arr!46434 a!2901) i!1037)) (and (not (= (select (arr!46434 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46434 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1407393 d!151587))

(declare-fun d!151589 () Bool)

(declare-fun res!945468 () Bool)

(declare-fun e!796734 () Bool)

(assert (=> d!151589 (=> res!945468 e!796734)))

(assert (=> d!151589 (= res!945468 (bvsge j!112 (size!46985 a!2901)))))

(assert (=> d!151589 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!796734)))

(declare-fun b!1407622 () Bool)

(declare-fun e!796733 () Bool)

(declare-fun call!67008 () Bool)

(assert (=> b!1407622 (= e!796733 call!67008)))

(declare-fun b!1407623 () Bool)

(declare-fun e!796732 () Bool)

(assert (=> b!1407623 (= e!796732 e!796733)))

(declare-fun lt!619852 () (_ BitVec 64))

(assert (=> b!1407623 (= lt!619852 (select (arr!46434 a!2901) j!112))))

(declare-fun lt!619853 () Unit!47458)

(assert (=> b!1407623 (= lt!619853 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!619852 j!112))))

(assert (=> b!1407623 (arrayContainsKey!0 a!2901 lt!619852 #b00000000000000000000000000000000)))

(declare-fun lt!619854 () Unit!47458)

(assert (=> b!1407623 (= lt!619854 lt!619853)))

(declare-fun res!945467 () Bool)

(assert (=> b!1407623 (= res!945467 (= (seekEntryOrOpen!0 (select (arr!46434 a!2901) j!112) a!2901 mask!2840) (Found!10767 j!112)))))

(assert (=> b!1407623 (=> (not res!945467) (not e!796733))))

(declare-fun bm!67005 () Bool)

(assert (=> bm!67005 (= call!67008 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1407624 () Bool)

(assert (=> b!1407624 (= e!796732 call!67008)))

(declare-fun b!1407625 () Bool)

(assert (=> b!1407625 (= e!796734 e!796732)))

(declare-fun c!130547 () Bool)

(assert (=> b!1407625 (= c!130547 (validKeyInArray!0 (select (arr!46434 a!2901) j!112)))))

(assert (= (and d!151589 (not res!945468)) b!1407625))

(assert (= (and b!1407625 c!130547) b!1407623))

(assert (= (and b!1407625 (not c!130547)) b!1407624))

(assert (= (and b!1407623 res!945467) b!1407622))

(assert (= (or b!1407622 b!1407624) bm!67005))

(assert (=> b!1407623 m!1296583))

(declare-fun m!1296735 () Bool)

(assert (=> b!1407623 m!1296735))

(declare-fun m!1296737 () Bool)

(assert (=> b!1407623 m!1296737))

(assert (=> b!1407623 m!1296583))

(assert (=> b!1407623 m!1296585))

(declare-fun m!1296739 () Bool)

(assert (=> bm!67005 m!1296739))

(assert (=> b!1407625 m!1296583))

(assert (=> b!1407625 m!1296583))

(assert (=> b!1407625 m!1296597))

(assert (=> b!1407394 d!151589))

(declare-fun d!151591 () Bool)

(assert (=> d!151591 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!619857 () Unit!47458)

(declare-fun choose!38 (array!96187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47458)

(assert (=> d!151591 (= lt!619857 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!151591 (validMask!0 mask!2840)))

(assert (=> d!151591 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!619857)))

(declare-fun bs!41017 () Bool)

(assert (= bs!41017 d!151591))

(assert (=> bs!41017 m!1296593))

(declare-fun m!1296745 () Bool)

(assert (=> bs!41017 m!1296745))

(assert (=> bs!41017 m!1296567))

(assert (=> b!1407394 d!151591))

(declare-fun b!1407641 () Bool)

(declare-fun e!796749 () Bool)

(declare-fun lt!619858 () SeekEntryResult!10767)

(assert (=> b!1407641 (= e!796749 (bvsge (x!127053 lt!619858) #b01111111111111111111111111111110))))

(declare-fun b!1407642 () Bool)

(assert (=> b!1407642 (and (bvsge (index!45446 lt!619858) #b00000000000000000000000000000000) (bvslt (index!45446 lt!619858) (size!46985 a!2901)))))

(declare-fun res!945479 () Bool)

(assert (=> b!1407642 (= res!945479 (= (select (arr!46434 a!2901) (index!45446 lt!619858)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!796747 () Bool)

(assert (=> b!1407642 (=> res!945479 e!796747)))

(declare-fun b!1407643 () Bool)

(declare-fun e!796750 () Bool)

(assert (=> b!1407643 (= e!796749 e!796750)))

(declare-fun res!945480 () Bool)

(assert (=> b!1407643 (= res!945480 (and (is-Intermediate!10767 lt!619858) (not (undefined!11579 lt!619858)) (bvslt (x!127053 lt!619858) #b01111111111111111111111111111110) (bvsge (x!127053 lt!619858) #b00000000000000000000000000000000) (bvsge (x!127053 lt!619858) #b00000000000000000000000000000000)))))

(assert (=> b!1407643 (=> (not res!945480) (not e!796750))))

