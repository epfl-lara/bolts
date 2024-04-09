; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46628 () Bool)

(assert start!46628)

(declare-fun b!514564 () Bool)

(declare-fun e!300480 () Bool)

(declare-fun e!300481 () Bool)

(assert (=> b!514564 (= e!300480 e!300481)))

(declare-fun res!314466 () Bool)

(assert (=> b!514564 (=> (not res!314466) (not e!300481))))

(declare-datatypes ((SeekEntryResult!4319 0))(
  ( (MissingZero!4319 (index!19464 (_ BitVec 32))) (Found!4319 (index!19465 (_ BitVec 32))) (Intermediate!4319 (undefined!5131 Bool) (index!19466 (_ BitVec 32)) (x!48455 (_ BitVec 32))) (Undefined!4319) (MissingVacant!4319 (index!19467 (_ BitVec 32))) )
))
(declare-fun lt!235622 () SeekEntryResult!4319)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!514564 (= res!314466 (or (= lt!235622 (MissingZero!4319 i!1204)) (= lt!235622 (MissingVacant!4319 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32957 0))(
  ( (array!32958 (arr!15845 (Array (_ BitVec 32) (_ BitVec 64))) (size!16209 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32957)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32957 (_ BitVec 32)) SeekEntryResult!4319)

(assert (=> b!514564 (= lt!235622 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!514565 () Bool)

(declare-fun res!314471 () Bool)

(assert (=> b!514565 (=> (not res!314471) (not e!300481))))

(declare-datatypes ((List!10056 0))(
  ( (Nil!10053) (Cons!10052 (h!10947 (_ BitVec 64)) (t!16292 List!10056)) )
))
(declare-fun arrayNoDuplicates!0 (array!32957 (_ BitVec 32) List!10056) Bool)

(assert (=> b!514565 (= res!314471 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10053))))

(declare-fun b!514566 () Bool)

(declare-fun res!314465 () Bool)

(assert (=> b!514566 (=> (not res!314465) (not e!300480))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!514566 (= res!314465 (and (= (size!16209 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16209 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16209 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!514567 () Bool)

(declare-fun e!300477 () Bool)

(assert (=> b!514567 (= e!300481 (not e!300477))))

(declare-fun res!314469 () Bool)

(assert (=> b!514567 (=> res!314469 e!300477)))

(declare-fun lt!235621 () SeekEntryResult!4319)

(declare-fun lt!235619 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32957 (_ BitVec 32)) SeekEntryResult!4319)

(assert (=> b!514567 (= res!314469 (= lt!235621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235619 (select (store (arr!15845 a!3235) i!1204 k!2280) j!176) (array!32958 (store (arr!15845 a!3235) i!1204 k!2280) (size!16209 a!3235)) mask!3524)))))

(declare-fun lt!235620 () (_ BitVec 32))

(assert (=> b!514567 (= lt!235621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235620 (select (arr!15845 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514567 (= lt!235619 (toIndex!0 (select (store (arr!15845 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!514567 (= lt!235620 (toIndex!0 (select (arr!15845 a!3235) j!176) mask!3524))))

(declare-fun e!300479 () Bool)

(assert (=> b!514567 e!300479))

(declare-fun res!314461 () Bool)

(assert (=> b!514567 (=> (not res!314461) (not e!300479))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32957 (_ BitVec 32)) Bool)

(assert (=> b!514567 (= res!314461 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15888 0))(
  ( (Unit!15889) )
))
(declare-fun lt!235618 () Unit!15888)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32957 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15888)

(assert (=> b!514567 (= lt!235618 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!514569 () Bool)

(declare-fun res!314467 () Bool)

(assert (=> b!514569 (=> (not res!314467) (not e!300480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!514569 (= res!314467 (validKeyInArray!0 k!2280))))

(declare-fun b!514570 () Bool)

(declare-fun res!314468 () Bool)

(assert (=> b!514570 (=> (not res!314468) (not e!300480))))

(assert (=> b!514570 (= res!314468 (validKeyInArray!0 (select (arr!15845 a!3235) j!176)))))

(declare-fun b!514571 () Bool)

(assert (=> b!514571 (= e!300479 (= (seekEntryOrOpen!0 (select (arr!15845 a!3235) j!176) a!3235 mask!3524) (Found!4319 j!176)))))

(declare-fun res!314463 () Bool)

(assert (=> start!46628 (=> (not res!314463) (not e!300480))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46628 (= res!314463 (validMask!0 mask!3524))))

(assert (=> start!46628 e!300480))

(assert (=> start!46628 true))

(declare-fun array_inv!11619 (array!32957) Bool)

(assert (=> start!46628 (array_inv!11619 a!3235)))

(declare-fun b!514568 () Bool)

(assert (=> b!514568 (= e!300477 (and (bvsge (index!19466 lt!235621) #b00000000000000000000000000000000) (bvslt (index!19466 lt!235621) (size!16209 a!3235))))))

(assert (=> b!514568 (and (bvslt (x!48455 lt!235621) #b01111111111111111111111111111110) (or (= (select (arr!15845 a!3235) (index!19466 lt!235621)) (select (arr!15845 a!3235) j!176)) (= (select (arr!15845 a!3235) (index!19466 lt!235621)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15845 a!3235) (index!19466 lt!235621)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514572 () Bool)

(declare-fun res!314470 () Bool)

(assert (=> b!514572 (=> (not res!314470) (not e!300480))))

(declare-fun arrayContainsKey!0 (array!32957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!514572 (= res!314470 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!514573 () Bool)

(declare-fun res!314462 () Bool)

(assert (=> b!514573 (=> res!314462 e!300477)))

(assert (=> b!514573 (= res!314462 (or (undefined!5131 lt!235621) (not (is-Intermediate!4319 lt!235621))))))

(declare-fun b!514574 () Bool)

(declare-fun res!314464 () Bool)

(assert (=> b!514574 (=> (not res!314464) (not e!300481))))

(assert (=> b!514574 (= res!314464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46628 res!314463) b!514566))

(assert (= (and b!514566 res!314465) b!514570))

(assert (= (and b!514570 res!314468) b!514569))

(assert (= (and b!514569 res!314467) b!514572))

(assert (= (and b!514572 res!314470) b!514564))

(assert (= (and b!514564 res!314466) b!514574))

(assert (= (and b!514574 res!314464) b!514565))

(assert (= (and b!514565 res!314471) b!514567))

(assert (= (and b!514567 res!314461) b!514571))

(assert (= (and b!514567 (not res!314469)) b!514573))

(assert (= (and b!514573 (not res!314462)) b!514568))

(declare-fun m!495965 () Bool)

(assert (=> b!514568 m!495965))

(declare-fun m!495967 () Bool)

(assert (=> b!514568 m!495967))

(declare-fun m!495969 () Bool)

(assert (=> b!514569 m!495969))

(declare-fun m!495971 () Bool)

(assert (=> b!514564 m!495971))

(assert (=> b!514571 m!495967))

(assert (=> b!514571 m!495967))

(declare-fun m!495973 () Bool)

(assert (=> b!514571 m!495973))

(declare-fun m!495975 () Bool)

(assert (=> b!514567 m!495975))

(declare-fun m!495977 () Bool)

(assert (=> b!514567 m!495977))

(declare-fun m!495979 () Bool)

(assert (=> b!514567 m!495979))

(assert (=> b!514567 m!495967))

(declare-fun m!495981 () Bool)

(assert (=> b!514567 m!495981))

(assert (=> b!514567 m!495967))

(declare-fun m!495983 () Bool)

(assert (=> b!514567 m!495983))

(assert (=> b!514567 m!495967))

(declare-fun m!495985 () Bool)

(assert (=> b!514567 m!495985))

(assert (=> b!514567 m!495979))

(declare-fun m!495987 () Bool)

(assert (=> b!514567 m!495987))

(assert (=> b!514567 m!495979))

(declare-fun m!495989 () Bool)

(assert (=> b!514567 m!495989))

(declare-fun m!495991 () Bool)

(assert (=> b!514574 m!495991))

(declare-fun m!495993 () Bool)

(assert (=> b!514572 m!495993))

(assert (=> b!514570 m!495967))

(assert (=> b!514570 m!495967))

(declare-fun m!495995 () Bool)

(assert (=> b!514570 m!495995))

(declare-fun m!495997 () Bool)

(assert (=> start!46628 m!495997))

(declare-fun m!495999 () Bool)

(assert (=> start!46628 m!495999))

(declare-fun m!496001 () Bool)

(assert (=> b!514565 m!496001))

(push 1)

(assert (not b!514569))

(assert (not b!514564))

(assert (not b!514572))

(assert (not b!514565))

(assert (not b!514574))

(assert (not b!514571))

(assert (not start!46628))

(assert (not b!514570))

(assert (not b!514567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!514640 () Bool)

(declare-fun e!300525 () SeekEntryResult!4319)

(declare-fun lt!235654 () SeekEntryResult!4319)

(assert (=> b!514640 (= e!300525 (MissingZero!4319 (index!19466 lt!235654)))))

(declare-fun b!514641 () Bool)

(declare-fun e!300524 () SeekEntryResult!4319)

(declare-fun e!300526 () SeekEntryResult!4319)

(assert (=> b!514641 (= e!300524 e!300526)))

(declare-fun lt!235655 () (_ BitVec 64))

(assert (=> b!514641 (= lt!235655 (select (arr!15845 a!3235) (index!19466 lt!235654)))))

(declare-fun c!60363 () Bool)

(assert (=> b!514641 (= c!60363 (= lt!235655 k!2280))))

(declare-fun b!514642 () Bool)

(declare-fun c!60364 () Bool)

(assert (=> b!514642 (= c!60364 (= lt!235655 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514642 (= e!300526 e!300525)))

(declare-fun b!514643 () Bool)

(assert (=> b!514643 (= e!300526 (Found!4319 (index!19466 lt!235654)))))

(declare-fun d!79333 () Bool)

(declare-fun lt!235653 () SeekEntryResult!4319)

(assert (=> d!79333 (and (or (is-Undefined!4319 lt!235653) (not (is-Found!4319 lt!235653)) (and (bvsge (index!19465 lt!235653) #b00000000000000000000000000000000) (bvslt (index!19465 lt!235653) (size!16209 a!3235)))) (or (is-Undefined!4319 lt!235653) (is-Found!4319 lt!235653) (not (is-MissingZero!4319 lt!235653)) (and (bvsge (index!19464 lt!235653) #b00000000000000000000000000000000) (bvslt (index!19464 lt!235653) (size!16209 a!3235)))) (or (is-Undefined!4319 lt!235653) (is-Found!4319 lt!235653) (is-MissingZero!4319 lt!235653) (not (is-MissingVacant!4319 lt!235653)) (and (bvsge (index!19467 lt!235653) #b00000000000000000000000000000000) (bvslt (index!19467 lt!235653) (size!16209 a!3235)))) (or (is-Undefined!4319 lt!235653) (ite (is-Found!4319 lt!235653) (= (select (arr!15845 a!3235) (index!19465 lt!235653)) k!2280) (ite (is-MissingZero!4319 lt!235653) (= (select (arr!15845 a!3235) (index!19464 lt!235653)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4319 lt!235653) (= (select (arr!15845 a!3235) (index!19467 lt!235653)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79333 (= lt!235653 e!300524)))

(declare-fun c!60362 () Bool)

(assert (=> d!79333 (= c!60362 (and (is-Intermediate!4319 lt!235654) (undefined!5131 lt!235654)))))

(assert (=> d!79333 (= lt!235654 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79333 (validMask!0 mask!3524)))

(assert (=> d!79333 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!235653)))

(declare-fun b!514644 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32957 (_ BitVec 32)) SeekEntryResult!4319)

(assert (=> b!514644 (= e!300525 (seekKeyOrZeroReturnVacant!0 (x!48455 lt!235654) (index!19466 lt!235654) (index!19466 lt!235654) k!2280 a!3235 mask!3524))))

(declare-fun b!514645 () Bool)

(assert (=> b!514645 (= e!300524 Undefined!4319)))

(assert (= (and d!79333 c!60362) b!514645))

(assert (= (and d!79333 (not c!60362)) b!514641))

(assert (= (and b!514641 c!60363) b!514643))

(assert (= (and b!514641 (not c!60363)) b!514642))

(assert (= (and b!514642 c!60364) b!514640))

(assert (= (and b!514642 (not c!60364)) b!514644))

(declare-fun m!496031 () Bool)

(assert (=> b!514641 m!496031))

(declare-fun m!496033 () Bool)

(assert (=> d!79333 m!496033))

(assert (=> d!79333 m!495997))

(declare-fun m!496035 () Bool)

(assert (=> d!79333 m!496035))

(declare-fun m!496037 () Bool)

(assert (=> d!79333 m!496037))

(declare-fun m!496039 () Bool)

(assert (=> d!79333 m!496039))

(declare-fun m!496041 () Bool)

(assert (=> d!79333 m!496041))

(assert (=> d!79333 m!496035))

(declare-fun m!496043 () Bool)

(assert (=> b!514644 m!496043))

(assert (=> b!514564 d!79333))

(declare-fun d!79341 () Bool)

(assert (=> d!79341 (= (validKeyInArray!0 (select (arr!15845 a!3235) j!176)) (and (not (= (select (arr!15845 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15845 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514570 d!79341))

(declare-fun b!514660 () Bool)

(declare-fun e!300538 () Bool)

(declare-fun call!31628 () Bool)

(assert (=> b!514660 (= e!300538 call!31628)))

(declare-fun b!514661 () Bool)

(assert (=> b!514661 (= e!300538 call!31628)))

(declare-fun d!79343 () Bool)

(declare-fun res!314500 () Bool)

(declare-fun e!300539 () Bool)

(assert (=> d!79343 (=> res!314500 e!300539)))

(assert (=> d!79343 (= res!314500 (bvsge #b00000000000000000000000000000000 (size!16209 a!3235)))))

(assert (=> d!79343 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10053) e!300539)))

(declare-fun b!514662 () Bool)

(declare-fun e!300540 () Bool)

(assert (=> b!514662 (= e!300540 e!300538)))

(declare-fun c!60368 () Bool)

(assert (=> b!514662 (= c!60368 (validKeyInArray!0 (select (arr!15845 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31625 () Bool)

(assert (=> bm!31625 (= call!31628 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60368 (Cons!10052 (select (arr!15845 a!3235) #b00000000000000000000000000000000) Nil!10053) Nil!10053)))))

(declare-fun b!514663 () Bool)

(assert (=> b!514663 (= e!300539 e!300540)))

(declare-fun res!314501 () Bool)

(assert (=> b!514663 (=> (not res!314501) (not e!300540))))

(declare-fun e!300541 () Bool)

(assert (=> b!514663 (= res!314501 (not e!300541))))

(declare-fun res!314499 () Bool)

(assert (=> b!514663 (=> (not res!314499) (not e!300541))))

(assert (=> b!514663 (= res!314499 (validKeyInArray!0 (select (arr!15845 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514664 () Bool)

(declare-fun contains!2745 (List!10056 (_ BitVec 64)) Bool)

(assert (=> b!514664 (= e!300541 (contains!2745 Nil!10053 (select (arr!15845 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79343 (not res!314500)) b!514663))

(assert (= (and b!514663 res!314499) b!514664))

(assert (= (and b!514663 res!314501) b!514662))

(assert (= (and b!514662 c!60368) b!514661))

(assert (= (and b!514662 (not c!60368)) b!514660))

(assert (= (or b!514661 b!514660) bm!31625))

(declare-fun m!496057 () Bool)

(assert (=> b!514662 m!496057))

(assert (=> b!514662 m!496057))

(declare-fun m!496059 () Bool)

(assert (=> b!514662 m!496059))

(assert (=> bm!31625 m!496057))

(declare-fun m!496061 () Bool)

(assert (=> bm!31625 m!496061))

(assert (=> b!514663 m!496057))

(assert (=> b!514663 m!496057))

(assert (=> b!514663 m!496059))

(assert (=> b!514664 m!496057))

(assert (=> b!514664 m!496057))

(declare-fun m!496063 () Bool)

(assert (=> b!514664 m!496063))

(assert (=> b!514565 d!79343))

(declare-fun b!514665 () Bool)

(declare-fun e!300543 () SeekEntryResult!4319)

(declare-fun lt!235660 () SeekEntryResult!4319)

(assert (=> b!514665 (= e!300543 (MissingZero!4319 (index!19466 lt!235660)))))

(declare-fun b!514666 () Bool)

(declare-fun e!300542 () SeekEntryResult!4319)

(declare-fun e!300544 () SeekEntryResult!4319)

(assert (=> b!514666 (= e!300542 e!300544)))

(declare-fun lt!235661 () (_ BitVec 64))

(assert (=> b!514666 (= lt!235661 (select (arr!15845 a!3235) (index!19466 lt!235660)))))

(declare-fun c!60370 () Bool)

(assert (=> b!514666 (= c!60370 (= lt!235661 (select (arr!15845 a!3235) j!176)))))

(declare-fun b!514667 () Bool)

(declare-fun c!60371 () Bool)

(assert (=> b!514667 (= c!60371 (= lt!235661 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514667 (= e!300544 e!300543)))

(declare-fun b!514668 () Bool)

(assert (=> b!514668 (= e!300544 (Found!4319 (index!19466 lt!235660)))))

(declare-fun d!79347 () Bool)

(declare-fun lt!235659 () SeekEntryResult!4319)

(assert (=> d!79347 (and (or (is-Undefined!4319 lt!235659) (not (is-Found!4319 lt!235659)) (and (bvsge (index!19465 lt!235659) #b00000000000000000000000000000000) (bvslt (index!19465 lt!235659) (size!16209 a!3235)))) (or (is-Undefined!4319 lt!235659) (is-Found!4319 lt!235659) (not (is-MissingZero!4319 lt!235659)) (and (bvsge (index!19464 lt!235659) #b00000000000000000000000000000000) (bvslt (index!19464 lt!235659) (size!16209 a!3235)))) (or (is-Undefined!4319 lt!235659) (is-Found!4319 lt!235659) (is-MissingZero!4319 lt!235659) (not (is-MissingVacant!4319 lt!235659)) (and (bvsge (index!19467 lt!235659) #b00000000000000000000000000000000) (bvslt (index!19467 lt!235659) (size!16209 a!3235)))) (or (is-Undefined!4319 lt!235659) (ite (is-Found!4319 lt!235659) (= (select (arr!15845 a!3235) (index!19465 lt!235659)) (select (arr!15845 a!3235) j!176)) (ite (is-MissingZero!4319 lt!235659) (= (select (arr!15845 a!3235) (index!19464 lt!235659)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4319 lt!235659) (= (select (arr!15845 a!3235) (index!19467 lt!235659)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79347 (= lt!235659 e!300542)))

(declare-fun c!60369 () Bool)

(assert (=> d!79347 (= c!60369 (and (is-Intermediate!4319 lt!235660) (undefined!5131 lt!235660)))))

(assert (=> d!79347 (= lt!235660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15845 a!3235) j!176) mask!3524) (select (arr!15845 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79347 (validMask!0 mask!3524)))

(assert (=> d!79347 (= (seekEntryOrOpen!0 (select (arr!15845 a!3235) j!176) a!3235 mask!3524) lt!235659)))

(declare-fun b!514669 () Bool)

(assert (=> b!514669 (= e!300543 (seekKeyOrZeroReturnVacant!0 (x!48455 lt!235660) (index!19466 lt!235660) (index!19466 lt!235660) (select (arr!15845 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514670 () Bool)

(assert (=> b!514670 (= e!300542 Undefined!4319)))

(assert (= (and d!79347 c!60369) b!514670))

(assert (= (and d!79347 (not c!60369)) b!514666))

(assert (= (and b!514666 c!60370) b!514668))

(assert (= (and b!514666 (not c!60370)) b!514667))

(assert (= (and b!514667 c!60371) b!514665))

(assert (= (and b!514667 (not c!60371)) b!514669))

(declare-fun m!496065 () Bool)

(assert (=> b!514666 m!496065))

(declare-fun m!496067 () Bool)

(assert (=> d!79347 m!496067))

(assert (=> d!79347 m!495997))

(assert (=> d!79347 m!495981))

(assert (=> d!79347 m!495967))

(declare-fun m!496069 () Bool)

(assert (=> d!79347 m!496069))

(declare-fun m!496071 () Bool)

(assert (=> d!79347 m!496071))

(declare-fun m!496073 () Bool)

(assert (=> d!79347 m!496073))

(assert (=> d!79347 m!495967))

(assert (=> d!79347 m!495981))

(assert (=> b!514669 m!495967))

(declare-fun m!496075 () Bool)

(assert (=> b!514669 m!496075))

(assert (=> b!514571 d!79347))

(declare-fun d!79349 () Bool)

(declare-fun res!314512 () Bool)

(declare-fun e!300559 () Bool)

(assert (=> d!79349 (=> res!314512 e!300559)))

(assert (=> d!79349 (= res!314512 (= (select (arr!15845 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79349 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!300559)))

(declare-fun b!514693 () Bool)

(declare-fun e!300560 () Bool)

(assert (=> b!514693 (= e!300559 e!300560)))

(declare-fun res!314513 () Bool)

(assert (=> b!514693 (=> (not res!314513) (not e!300560))))

(assert (=> b!514693 (= res!314513 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16209 a!3235)))))

(declare-fun b!514694 () Bool)

(assert (=> b!514694 (= e!300560 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79349 (not res!314512)) b!514693))

(assert (= (and b!514693 res!314513) b!514694))

(assert (=> d!79349 m!496057))

(declare-fun m!496077 () Bool)

(assert (=> b!514694 m!496077))

(assert (=> b!514572 d!79349))

(declare-fun d!79351 () Bool)

(declare-fun lt!235679 () (_ BitVec 32))

(declare-fun lt!235678 () (_ BitVec 32))

(assert (=> d!79351 (= lt!235679 (bvmul (bvxor lt!235678 (bvlshr lt!235678 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79351 (= lt!235678 ((_ extract 31 0) (bvand (bvxor (select (arr!15845 a!3235) j!176) (bvlshr (select (arr!15845 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79351 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314514 (let ((h!10948 ((_ extract 31 0) (bvand (bvxor (select (arr!15845 a!3235) j!176) (bvlshr (select (arr!15845 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48457 (bvmul (bvxor h!10948 (bvlshr h!10948 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48457 (bvlshr x!48457 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314514 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314514 #b00000000000000000000000000000000))))))

(assert (=> d!79351 (= (toIndex!0 (select (arr!15845 a!3235) j!176) mask!3524) (bvand (bvxor lt!235679 (bvlshr lt!235679 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514567 d!79351))

(declare-fun b!514763 () Bool)

(declare-fun e!300606 () Bool)

(declare-fun lt!235712 () SeekEntryResult!4319)

(assert (=> b!514763 (= e!300606 (bvsge (x!48455 lt!235712) #b01111111111111111111111111111110))))

(declare-fun b!514764 () Bool)

(declare-fun e!300604 () Bool)

(assert (=> b!514764 (= e!300606 e!300604)))

(declare-fun res!314540 () Bool)

(assert (=> b!514764 (= res!314540 (and (is-Intermediate!4319 lt!235712) (not (undefined!5131 lt!235712)) (bvslt (x!48455 lt!235712) #b01111111111111111111111111111110) (bvsge (x!48455 lt!235712) #b00000000000000000000000000000000) (bvsge (x!48455 lt!235712) #b00000000000000000000000000000000)))))

(assert (=> b!514764 (=> (not res!314540) (not e!300604))))

(declare-fun b!514765 () Bool)

(assert (=> b!514765 (and (bvsge (index!19466 lt!235712) #b00000000000000000000000000000000) (bvslt (index!19466 lt!235712) (size!16209 a!3235)))))

(declare-fun e!300602 () Bool)

(assert (=> b!514765 (= e!300602 (= (select (arr!15845 a!3235) (index!19466 lt!235712)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!79355 () Bool)

(assert (=> d!79355 e!300606))

(declare-fun c!60403 () Bool)

(assert (=> d!79355 (= c!60403 (and (is-Intermediate!4319 lt!235712) (undefined!5131 lt!235712)))))

(declare-fun e!300603 () SeekEntryResult!4319)

(assert (=> d!79355 (= lt!235712 e!300603)))

(declare-fun c!60402 () Bool)

(assert (=> d!79355 (= c!60402 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235713 () (_ BitVec 64))

(assert (=> d!79355 (= lt!235713 (select (arr!15845 a!3235) lt!235620))))

(assert (=> d!79355 (validMask!0 mask!3524)))

(assert (=> d!79355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235620 (select (arr!15845 a!3235) j!176) a!3235 mask!3524) lt!235712)))

(declare-fun e!300605 () SeekEntryResult!4319)

(declare-fun b!514766 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514766 (= e!300605 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235620 #b00000000000000000000000000000000 mask!3524) (select (arr!15845 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514767 () Bool)

(assert (=> b!514767 (and (bvsge (index!19466 lt!235712) #b00000000000000000000000000000000) (bvslt (index!19466 lt!235712) (size!16209 a!3235)))))

(declare-fun res!314539 () Bool)

(assert (=> b!514767 (= res!314539 (= (select (arr!15845 a!3235) (index!19466 lt!235712)) (select (arr!15845 a!3235) j!176)))))

(assert (=> b!514767 (=> res!314539 e!300602)))

(assert (=> b!514767 (= e!300604 e!300602)))

(declare-fun b!514768 () Bool)

(assert (=> b!514768 (and (bvsge (index!19466 lt!235712) #b00000000000000000000000000000000) (bvslt (index!19466 lt!235712) (size!16209 a!3235)))))

(declare-fun res!314541 () Bool)

(assert (=> b!514768 (= res!314541 (= (select (arr!15845 a!3235) (index!19466 lt!235712)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514768 (=> res!314541 e!300602)))

(declare-fun b!514769 () Bool)

(assert (=> b!514769 (= e!300605 (Intermediate!4319 false lt!235620 #b00000000000000000000000000000000))))

(declare-fun b!514770 () Bool)

(assert (=> b!514770 (= e!300603 (Intermediate!4319 true lt!235620 #b00000000000000000000000000000000))))

(declare-fun b!514771 () Bool)

(assert (=> b!514771 (= e!300603 e!300605)))

(declare-fun c!60401 () Bool)

(assert (=> b!514771 (= c!60401 (or (= lt!235713 (select (arr!15845 a!3235) j!176)) (= (bvadd lt!235713 lt!235713) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!79355 c!60402) b!514770))

(assert (= (and d!79355 (not c!60402)) b!514771))

(assert (= (and b!514771 c!60401) b!514769))

(assert (= (and b!514771 (not c!60401)) b!514766))

(assert (= (and d!79355 c!60403) b!514763))

(assert (= (and d!79355 (not c!60403)) b!514764))

(assert (= (and b!514764 res!314540) b!514767))

(assert (= (and b!514767 (not res!314539)) b!514768))

(assert (= (and b!514768 (not res!314541)) b!514765))

(declare-fun m!496125 () Bool)

(assert (=> b!514768 m!496125))

(declare-fun m!496127 () Bool)

(assert (=> d!79355 m!496127))

(assert (=> d!79355 m!495997))

(assert (=> b!514767 m!496125))

(assert (=> b!514765 m!496125))

(declare-fun m!496129 () Bool)

(assert (=> b!514766 m!496129))

(assert (=> b!514766 m!496129))

(assert (=> b!514766 m!495967))

(declare-fun m!496131 () Bool)

(assert (=> b!514766 m!496131))

(assert (=> b!514567 d!79355))

(declare-fun b!514772 () Bool)

(declare-fun e!300611 () Bool)

(declare-fun lt!235714 () SeekEntryResult!4319)

(assert (=> b!514772 (= e!300611 (bvsge (x!48455 lt!235714) #b01111111111111111111111111111110))))

(declare-fun b!514773 () Bool)

(declare-fun e!300609 () Bool)

(assert (=> b!514773 (= e!300611 e!300609)))

(declare-fun res!314543 () Bool)

(assert (=> b!514773 (= res!314543 (and (is-Intermediate!4319 lt!235714) (not (undefined!5131 lt!235714)) (bvslt (x!48455 lt!235714) #b01111111111111111111111111111110) (bvsge (x!48455 lt!235714) #b00000000000000000000000000000000) (bvsge (x!48455 lt!235714) #b00000000000000000000000000000000)))))

(assert (=> b!514773 (=> (not res!314543) (not e!300609))))

(declare-fun b!514774 () Bool)

(assert (=> b!514774 (and (bvsge (index!19466 lt!235714) #b00000000000000000000000000000000) (bvslt (index!19466 lt!235714) (size!16209 (array!32958 (store (arr!15845 a!3235) i!1204 k!2280) (size!16209 a!3235)))))))

(declare-fun e!300607 () Bool)

(assert (=> b!514774 (= e!300607 (= (select (arr!15845 (array!32958 (store (arr!15845 a!3235) i!1204 k!2280) (size!16209 a!3235))) (index!19466 lt!235714)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!79377 () Bool)

(assert (=> d!79377 e!300611))

(declare-fun c!60406 () Bool)

(assert (=> d!79377 (= c!60406 (and (is-Intermediate!4319 lt!235714) (undefined!5131 lt!235714)))))

(declare-fun e!300608 () SeekEntryResult!4319)

(assert (=> d!79377 (= lt!235714 e!300608)))

(declare-fun c!60405 () Bool)

(assert (=> d!79377 (= c!60405 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235715 () (_ BitVec 64))

(assert (=> d!79377 (= lt!235715 (select (arr!15845 (array!32958 (store (arr!15845 a!3235) i!1204 k!2280) (size!16209 a!3235))) lt!235619))))

(assert (=> d!79377 (validMask!0 mask!3524)))

(assert (=> d!79377 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235619 (select (store (arr!15845 a!3235) i!1204 k!2280) j!176) (array!32958 (store (arr!15845 a!3235) i!1204 k!2280) (size!16209 a!3235)) mask!3524) lt!235714)))

(declare-fun b!514775 () Bool)

(declare-fun e!300610 () SeekEntryResult!4319)

(assert (=> b!514775 (= e!300610 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235619 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15845 a!3235) i!1204 k!2280) j!176) (array!32958 (store (arr!15845 a!3235) i!1204 k!2280) (size!16209 a!3235)) mask!3524))))

(declare-fun b!514776 () Bool)

(assert (=> b!514776 (and (bvsge (index!19466 lt!235714) #b00000000000000000000000000000000) (bvslt (index!19466 lt!235714) (size!16209 (array!32958 (store (arr!15845 a!3235) i!1204 k!2280) (size!16209 a!3235)))))))

(declare-fun res!314542 () Bool)

(assert (=> b!514776 (= res!314542 (= (select (arr!15845 (array!32958 (store (arr!15845 a!3235) i!1204 k!2280) (size!16209 a!3235))) (index!19466 lt!235714)) (select (store (arr!15845 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!514776 (=> res!314542 e!300607)))

(assert (=> b!514776 (= e!300609 e!300607)))

(declare-fun b!514777 () Bool)

(assert (=> b!514777 (and (bvsge (index!19466 lt!235714) #b00000000000000000000000000000000) (bvslt (index!19466 lt!235714) (size!16209 (array!32958 (store (arr!15845 a!3235) i!1204 k!2280) (size!16209 a!3235)))))))

(declare-fun res!314544 () Bool)

(assert (=> b!514777 (= res!314544 (= (select (arr!15845 (array!32958 (store (arr!15845 a!3235) i!1204 k!2280) (size!16209 a!3235))) (index!19466 lt!235714)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514777 (=> res!314544 e!300607)))

(declare-fun b!514778 () Bool)

(assert (=> b!514778 (= e!300610 (Intermediate!4319 false lt!235619 #b00000000000000000000000000000000))))

(declare-fun b!514779 () Bool)

(assert (=> b!514779 (= e!300608 (Intermediate!4319 true lt!235619 #b00000000000000000000000000000000))))

(declare-fun b!514780 () Bool)

(assert (=> b!514780 (= e!300608 e!300610)))

(declare-fun c!60404 () Bool)

(assert (=> b!514780 (= c!60404 (or (= lt!235715 (select (store (arr!15845 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!235715 lt!235715) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!79377 c!60405) b!514779))

(assert (= (and d!79377 (not c!60405)) b!514780))

(assert (= (and b!514780 c!60404) b!514778))

(assert (= (and b!514780 (not c!60404)) b!514775))

(assert (= (and d!79377 c!60406) b!514772))

(assert (= (and d!79377 (not c!60406)) b!514773))

(assert (= (and b!514773 res!314543) b!514776))

(assert (= (and b!514776 (not res!314542)) b!514777))

(assert (= (and b!514777 (not res!314544)) b!514774))

(declare-fun m!496133 () Bool)

(assert (=> b!514777 m!496133))

(declare-fun m!496135 () Bool)

(assert (=> d!79377 m!496135))

(assert (=> d!79377 m!495997))

(assert (=> b!514776 m!496133))

(assert (=> b!514774 m!496133))

(declare-fun m!496137 () Bool)

(assert (=> b!514775 m!496137))

(assert (=> b!514775 m!496137))

(assert (=> b!514775 m!495979))

(declare-fun m!496139 () Bool)

(assert (=> b!514775 m!496139))

(assert (=> b!514567 d!79377))

(declare-fun b!514822 () Bool)

(declare-fun e!300636 () Bool)

(declare-fun call!31633 () Bool)

(assert (=> b!514822 (= e!300636 call!31633)))

(declare-fun b!514823 () Bool)

(declare-fun e!300637 () Bool)

(assert (=> b!514823 (= e!300637 e!300636)))

(declare-fun lt!235731 () (_ BitVec 64))

(assert (=> b!514823 (= lt!235731 (select (arr!15845 a!3235) j!176))))

(declare-fun lt!235733 () Unit!15888)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32957 (_ BitVec 64) (_ BitVec 32)) Unit!15888)

(assert (=> b!514823 (= lt!235733 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235731 j!176))))

(assert (=> b!514823 (arrayContainsKey!0 a!3235 lt!235731 #b00000000000000000000000000000000)))

(declare-fun lt!235732 () Unit!15888)

(assert (=> b!514823 (= lt!235732 lt!235733)))

(declare-fun res!314558 () Bool)

(assert (=> b!514823 (= res!314558 (= (seekEntryOrOpen!0 (select (arr!15845 a!3235) j!176) a!3235 mask!3524) (Found!4319 j!176)))))

(assert (=> b!514823 (=> (not res!314558) (not e!300636))))

(declare-fun b!514824 () Bool)

(assert (=> b!514824 (= e!300637 call!31633)))

(declare-fun bm!31630 () Bool)

(assert (=> bm!31630 (= call!31633 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!514825 () Bool)

(declare-fun e!300638 () Bool)

(assert (=> b!514825 (= e!300638 e!300637)))

(declare-fun c!60421 () Bool)

(assert (=> b!514825 (= c!60421 (validKeyInArray!0 (select (arr!15845 a!3235) j!176)))))

(declare-fun d!79381 () Bool)

(declare-fun res!314559 () Bool)

(assert (=> d!79381 (=> res!314559 e!300638)))

(assert (=> d!79381 (= res!314559 (bvsge j!176 (size!16209 a!3235)))))

(assert (=> d!79381 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!300638)))

(assert (= (and d!79381 (not res!314559)) b!514825))

(assert (= (and b!514825 c!60421) b!514823))

(assert (= (and b!514825 (not c!60421)) b!514824))

(assert (= (and b!514823 res!314558) b!514822))

(assert (= (or b!514822 b!514824) bm!31630))

(assert (=> b!514823 m!495967))

(declare-fun m!496163 () Bool)

(assert (=> b!514823 m!496163))

(declare-fun m!496165 () Bool)

(assert (=> b!514823 m!496165))

(assert (=> b!514823 m!495967))

(assert (=> b!514823 m!495973))

(declare-fun m!496167 () Bool)

(assert (=> bm!31630 m!496167))

(assert (=> b!514825 m!495967))

(assert (=> b!514825 m!495967))

(assert (=> b!514825 m!495995))

(assert (=> b!514567 d!79381))

(declare-fun d!79387 () Bool)

(assert (=> d!79387 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235738 () Unit!15888)

(declare-fun choose!38 (array!32957 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15888)

(assert (=> d!79387 (= lt!235738 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79387 (validMask!0 mask!3524)))

(assert (=> d!79387 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235738)))

(declare-fun bs!16270 () Bool)

(assert (= bs!16270 d!79387))

(assert (=> bs!16270 m!495983))

(declare-fun m!496177 () Bool)

(assert (=> bs!16270 m!496177))

(assert (=> bs!16270 m!495997))

(assert (=> b!514567 d!79387))

(declare-fun d!79391 () Bool)

(declare-fun lt!235742 () (_ BitVec 32))

(declare-fun lt!235741 () (_ BitVec 32))

(assert (=> d!79391 (= lt!235742 (bvmul (bvxor lt!235741 (bvlshr lt!235741 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79391 (= lt!235741 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15845 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15845 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79391 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314514 (let ((h!10948 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15845 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15845 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48457 (bvmul (bvxor h!10948 (bvlshr h!10948 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48457 (bvlshr x!48457 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314514 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314514 #b00000000000000000000000000000000))))))

(assert (=> d!79391 (= (toIndex!0 (select (store (arr!15845 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!235742 (bvlshr lt!235742 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514567 d!79391))

(declare-fun b!514835 () Bool)

(declare-fun e!300644 () Bool)

(declare-fun call!31634 () Bool)

(assert (=> b!514835 (= e!300644 call!31634)))

(declare-fun b!514836 () Bool)

(declare-fun e!300645 () Bool)

(assert (=> b!514836 (= e!300645 e!300644)))

(declare-fun lt!235744 () (_ BitVec 64))

(assert (=> b!514836 (= lt!235744 (select (arr!15845 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!235746 () Unit!15888)

(assert (=> b!514836 (= lt!235746 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235744 #b00000000000000000000000000000000))))

(assert (=> b!514836 (arrayContainsKey!0 a!3235 lt!235744 #b00000000000000000000000000000000)))

(declare-fun lt!235745 () Unit!15888)

(assert (=> b!514836 (= lt!235745 lt!235746)))

(declare-fun res!314563 () Bool)

(assert (=> b!514836 (= res!314563 (= (seekEntryOrOpen!0 (select (arr!15845 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4319 #b00000000000000000000000000000000)))))

(assert (=> b!514836 (=> (not res!314563) (not e!300644))))

(declare-fun b!514837 () Bool)

(assert (=> b!514837 (= e!300645 call!31634)))

(declare-fun bm!31631 () Bool)

(assert (=> bm!31631 (= call!31634 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!514838 () Bool)

(declare-fun e!300646 () Bool)

(assert (=> b!514838 (= e!300646 e!300645)))

(declare-fun c!60425 () Bool)

(assert (=> b!514838 (= c!60425 (validKeyInArray!0 (select (arr!15845 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79393 () Bool)

(declare-fun res!314564 () Bool)

(assert (=> d!79393 (=> res!314564 e!300646)))

(assert (=> d!79393 (= res!314564 (bvsge #b00000000000000000000000000000000 (size!16209 a!3235)))))

(assert (=> d!79393 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!300646)))

(assert (= (and d!79393 (not res!314564)) b!514838))

(assert (= (and b!514838 c!60425) b!514836))

(assert (= (and b!514838 (not c!60425)) b!514837))

(assert (= (and b!514836 res!314563) b!514835))

(assert (= (or b!514835 b!514837) bm!31631))

(assert (=> b!514836 m!496057))

(declare-fun m!496181 () Bool)

(assert (=> b!514836 m!496181))

(declare-fun m!496183 () Bool)

(assert (=> b!514836 m!496183))

(assert (=> b!514836 m!496057))

(declare-fun m!496185 () Bool)

(assert (=> b!514836 m!496185))

(declare-fun m!496187 () Bool)

(assert (=> bm!31631 m!496187))

(assert (=> b!514838 m!496057))

(assert (=> b!514838 m!496057))

(assert (=> b!514838 m!496059))

(assert (=> b!514574 d!79393))

(declare-fun d!79399 () Bool)

(assert (=> d!79399 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46628 d!79399))

(declare-fun d!79409 () Bool)

(assert (=> d!79409 (= (array_inv!11619 a!3235) (bvsge (size!16209 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46628 d!79409))

(declare-fun d!79411 () Bool)

(assert (=> d!79411 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514569 d!79411))

(push 1)

(assert (not b!514669))

(assert (not b!514664))

(assert (not b!514694))

(assert (not bm!31630))

(assert (not d!79333))

(assert (not d!79347))

(assert (not b!514644))

(assert (not bm!31631))

(assert (not b!514823))

(assert (not bm!31625))

(assert (not d!79387))

(assert (not b!514838))

(assert (not b!514836))

(assert (not b!514775))

(assert (not d!79355))

(assert (not b!514663))

(assert (not b!514825))

(assert (not d!79377))

(assert (not b!514766))

(assert (not b!514662))

(check-sat)

(pop 1)

(push 1)

(check-sat)

