; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52710 () Bool)

(assert start!52710)

(declare-fun b!574544 () Bool)

(declare-fun res!363385 () Bool)

(declare-fun e!330574 () Bool)

(assert (=> b!574544 (=> (not res!363385) (not e!330574))))

(declare-datatypes ((array!35872 0))(
  ( (array!35873 (arr!17216 (Array (_ BitVec 32) (_ BitVec 64))) (size!17580 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35872)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!574544 (= res!363385 (validKeyInArray!0 (select (arr!17216 a!3118) j!142)))))

(declare-fun b!574545 () Bool)

(declare-fun res!363391 () Bool)

(declare-fun e!330577 () Bool)

(assert (=> b!574545 (=> (not res!363391) (not e!330577))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35872 (_ BitVec 32)) Bool)

(assert (=> b!574545 (= res!363391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!574546 () Bool)

(declare-fun res!363390 () Bool)

(assert (=> b!574546 (=> (not res!363390) (not e!330574))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!574546 (= res!363390 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!574547 () Bool)

(declare-fun e!330580 () Bool)

(declare-fun e!330576 () Bool)

(assert (=> b!574547 (= e!330580 e!330576)))

(declare-fun res!363384 () Bool)

(assert (=> b!574547 (=> res!363384 e!330576)))

(declare-datatypes ((SeekEntryResult!5672 0))(
  ( (MissingZero!5672 (index!24915 (_ BitVec 32))) (Found!5672 (index!24916 (_ BitVec 32))) (Intermediate!5672 (undefined!6484 Bool) (index!24917 (_ BitVec 32)) (x!53827 (_ BitVec 32))) (Undefined!5672) (MissingVacant!5672 (index!24918 (_ BitVec 32))) )
))
(declare-fun lt!262487 () SeekEntryResult!5672)

(assert (=> b!574547 (= res!363384 (or (undefined!6484 lt!262487) (not (is-Intermediate!5672 lt!262487))))))

(declare-fun b!574548 () Bool)

(assert (=> b!574548 (= e!330574 e!330577)))

(declare-fun res!363395 () Bool)

(assert (=> b!574548 (=> (not res!363395) (not e!330577))))

(declare-fun lt!262491 () SeekEntryResult!5672)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!574548 (= res!363395 (or (= lt!262491 (MissingZero!5672 i!1132)) (= lt!262491 (MissingVacant!5672 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35872 (_ BitVec 32)) SeekEntryResult!5672)

(assert (=> b!574548 (= lt!262491 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!574549 () Bool)

(declare-fun e!330573 () Bool)

(declare-fun e!330578 () Bool)

(assert (=> b!574549 (= e!330573 e!330578)))

(declare-fun res!363392 () Bool)

(assert (=> b!574549 (=> (not res!363392) (not e!330578))))

(declare-fun lt!262486 () SeekEntryResult!5672)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35872 (_ BitVec 32)) SeekEntryResult!5672)

(assert (=> b!574549 (= res!363392 (= lt!262486 (seekKeyOrZeroReturnVacant!0 (x!53827 lt!262487) (index!24917 lt!262487) (index!24917 lt!262487) (select (arr!17216 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!574550 () Bool)

(declare-fun e!330579 () Bool)

(assert (=> b!574550 (= e!330577 e!330579)))

(declare-fun res!363383 () Bool)

(assert (=> b!574550 (=> (not res!363383) (not e!330579))))

(declare-fun lt!262493 () (_ BitVec 32))

(declare-fun lt!262485 () (_ BitVec 64))

(declare-fun lt!262490 () array!35872)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35872 (_ BitVec 32)) SeekEntryResult!5672)

(assert (=> b!574550 (= res!363383 (= lt!262487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262493 lt!262485 lt!262490 mask!3119)))))

(declare-fun lt!262489 () (_ BitVec 32))

(assert (=> b!574550 (= lt!262487 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262489 (select (arr!17216 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574550 (= lt!262493 (toIndex!0 lt!262485 mask!3119))))

(assert (=> b!574550 (= lt!262485 (select (store (arr!17216 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!574550 (= lt!262489 (toIndex!0 (select (arr!17216 a!3118) j!142) mask!3119))))

(assert (=> b!574550 (= lt!262490 (array!35873 (store (arr!17216 a!3118) i!1132 k!1914) (size!17580 a!3118)))))

(declare-fun b!574551 () Bool)

(assert (=> b!574551 (= e!330578 (= (seekEntryOrOpen!0 lt!262485 lt!262490 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53827 lt!262487) (index!24917 lt!262487) (index!24917 lt!262487) lt!262485 lt!262490 mask!3119)))))

(declare-fun res!363389 () Bool)

(assert (=> start!52710 (=> (not res!363389) (not e!330574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52710 (= res!363389 (validMask!0 mask!3119))))

(assert (=> start!52710 e!330574))

(assert (=> start!52710 true))

(declare-fun array_inv!12990 (array!35872) Bool)

(assert (=> start!52710 (array_inv!12990 a!3118)))

(declare-fun b!574552 () Bool)

(assert (=> b!574552 (= e!330579 (not (or (undefined!6484 lt!262487) (not (is-Intermediate!5672 lt!262487)) (let ((bdg!18025 (select (arr!17216 a!3118) (index!24917 lt!262487)))) (or (= bdg!18025 (select (arr!17216 a!3118) j!142)) (= bdg!18025 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt (index!24917 lt!262487) #b00000000000000000000000000000000) (bvsge (index!24917 lt!262487) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53827 lt!262487) #b01111111111111111111111111111110) (bvslt (x!53827 lt!262487) #b00000000000000000000000000000000) (not (= bdg!18025 #b1000000000000000000000000000000000000000000000000000000000000000)) (= (select (store (arr!17216 a!3118) i!1132 k!1914) (index!24917 lt!262487)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!574552 e!330580))

(declare-fun res!363386 () Bool)

(assert (=> b!574552 (=> (not res!363386) (not e!330580))))

(assert (=> b!574552 (= res!363386 (= lt!262486 (Found!5672 j!142)))))

(assert (=> b!574552 (= lt!262486 (seekEntryOrOpen!0 (select (arr!17216 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!574552 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18046 0))(
  ( (Unit!18047) )
))
(declare-fun lt!262488 () Unit!18046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35872 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18046)

(assert (=> b!574552 (= lt!262488 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!574553 () Bool)

(assert (=> b!574553 (= e!330576 e!330573)))

(declare-fun res!363393 () Bool)

(assert (=> b!574553 (=> res!363393 e!330573)))

(declare-fun lt!262492 () (_ BitVec 64))

(assert (=> b!574553 (= res!363393 (or (= lt!262492 (select (arr!17216 a!3118) j!142)) (= lt!262492 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!574553 (= lt!262492 (select (arr!17216 a!3118) (index!24917 lt!262487)))))

(declare-fun b!574554 () Bool)

(declare-fun res!363388 () Bool)

(assert (=> b!574554 (=> (not res!363388) (not e!330577))))

(declare-datatypes ((List!11349 0))(
  ( (Nil!11346) (Cons!11345 (h!12381 (_ BitVec 64)) (t!17585 List!11349)) )
))
(declare-fun arrayNoDuplicates!0 (array!35872 (_ BitVec 32) List!11349) Bool)

(assert (=> b!574554 (= res!363388 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11346))))

(declare-fun b!574555 () Bool)

(declare-fun res!363394 () Bool)

(assert (=> b!574555 (=> (not res!363394) (not e!330574))))

(assert (=> b!574555 (= res!363394 (and (= (size!17580 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17580 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17580 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!574556 () Bool)

(declare-fun res!363387 () Bool)

(assert (=> b!574556 (=> (not res!363387) (not e!330574))))

(assert (=> b!574556 (= res!363387 (validKeyInArray!0 k!1914))))

(assert (= (and start!52710 res!363389) b!574555))

(assert (= (and b!574555 res!363394) b!574544))

(assert (= (and b!574544 res!363385) b!574556))

(assert (= (and b!574556 res!363387) b!574546))

(assert (= (and b!574546 res!363390) b!574548))

(assert (= (and b!574548 res!363395) b!574545))

(assert (= (and b!574545 res!363391) b!574554))

(assert (= (and b!574554 res!363388) b!574550))

(assert (= (and b!574550 res!363383) b!574552))

(assert (= (and b!574552 res!363386) b!574547))

(assert (= (and b!574547 (not res!363384)) b!574553))

(assert (= (and b!574553 (not res!363393)) b!574549))

(assert (= (and b!574549 res!363392) b!574551))

(declare-fun m!553431 () Bool)

(assert (=> b!574549 m!553431))

(assert (=> b!574549 m!553431))

(declare-fun m!553433 () Bool)

(assert (=> b!574549 m!553433))

(declare-fun m!553435 () Bool)

(assert (=> b!574551 m!553435))

(declare-fun m!553437 () Bool)

(assert (=> b!574551 m!553437))

(declare-fun m!553439 () Bool)

(assert (=> b!574548 m!553439))

(declare-fun m!553441 () Bool)

(assert (=> start!52710 m!553441))

(declare-fun m!553443 () Bool)

(assert (=> start!52710 m!553443))

(assert (=> b!574550 m!553431))

(declare-fun m!553445 () Bool)

(assert (=> b!574550 m!553445))

(assert (=> b!574550 m!553431))

(declare-fun m!553447 () Bool)

(assert (=> b!574550 m!553447))

(assert (=> b!574550 m!553431))

(declare-fun m!553449 () Bool)

(assert (=> b!574550 m!553449))

(declare-fun m!553451 () Bool)

(assert (=> b!574550 m!553451))

(declare-fun m!553453 () Bool)

(assert (=> b!574550 m!553453))

(declare-fun m!553455 () Bool)

(assert (=> b!574550 m!553455))

(assert (=> b!574553 m!553431))

(declare-fun m!553457 () Bool)

(assert (=> b!574553 m!553457))

(declare-fun m!553459 () Bool)

(assert (=> b!574546 m!553459))

(declare-fun m!553461 () Bool)

(assert (=> b!574554 m!553461))

(assert (=> b!574544 m!553431))

(assert (=> b!574544 m!553431))

(declare-fun m!553463 () Bool)

(assert (=> b!574544 m!553463))

(declare-fun m!553465 () Bool)

(assert (=> b!574545 m!553465))

(declare-fun m!553467 () Bool)

(assert (=> b!574556 m!553467))

(assert (=> b!574552 m!553431))

(declare-fun m!553469 () Bool)

(assert (=> b!574552 m!553469))

(declare-fun m!553471 () Bool)

(assert (=> b!574552 m!553471))

(assert (=> b!574552 m!553455))

(assert (=> b!574552 m!553431))

(declare-fun m!553473 () Bool)

(assert (=> b!574552 m!553473))

(assert (=> b!574552 m!553457))

(declare-fun m!553475 () Bool)

(assert (=> b!574552 m!553475))

(push 1)

(assert (not b!574548))

(assert (not start!52710))

(assert (not b!574544))

(assert (not b!574546))

(assert (not b!574545))

(assert (not b!574556))

(assert (not b!574549))

(assert (not b!574551))

(assert (not b!574552))

(assert (not b!574550))

(assert (not b!574554))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!574603 () Bool)

(declare-fun e!330609 () Bool)

(declare-fun call!32687 () Bool)

(assert (=> b!574603 (= e!330609 call!32687)))

(declare-fun d!85075 () Bool)

(declare-fun res!363415 () Bool)

(declare-fun e!330612 () Bool)

(assert (=> d!85075 (=> res!363415 e!330612)))

(assert (=> d!85075 (= res!363415 (bvsge #b00000000000000000000000000000000 (size!17580 a!3118)))))

(assert (=> d!85075 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11346) e!330612)))

(declare-fun b!574604 () Bool)

(declare-fun e!330611 () Bool)

(assert (=> b!574604 (= e!330611 e!330609)))

(declare-fun c!65957 () Bool)

(assert (=> b!574604 (= c!65957 (validKeyInArray!0 (select (arr!17216 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574605 () Bool)

(assert (=> b!574605 (= e!330609 call!32687)))

(declare-fun b!574606 () Bool)

(assert (=> b!574606 (= e!330612 e!330611)))

(declare-fun res!363416 () Bool)

(assert (=> b!574606 (=> (not res!363416) (not e!330611))))

(declare-fun e!330610 () Bool)

(assert (=> b!574606 (= res!363416 (not e!330610))))

(declare-fun res!363417 () Bool)

(assert (=> b!574606 (=> (not res!363417) (not e!330610))))

(assert (=> b!574606 (= res!363417 (validKeyInArray!0 (select (arr!17216 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574607 () Bool)

(declare-fun contains!2895 (List!11349 (_ BitVec 64)) Bool)

(assert (=> b!574607 (= e!330610 (contains!2895 Nil!11346 (select (arr!17216 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32684 () Bool)

(assert (=> bm!32684 (= call!32687 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!65957 (Cons!11345 (select (arr!17216 a!3118) #b00000000000000000000000000000000) Nil!11346) Nil!11346)))))

(assert (= (and d!85075 (not res!363415)) b!574606))

(assert (= (and b!574606 res!363417) b!574607))

(assert (= (and b!574606 res!363416) b!574604))

(assert (= (and b!574604 c!65957) b!574603))

(assert (= (and b!574604 (not c!65957)) b!574605))

(assert (= (or b!574603 b!574605) bm!32684))

(declare-fun m!553493 () Bool)

(assert (=> b!574604 m!553493))

(assert (=> b!574604 m!553493))

(declare-fun m!553495 () Bool)

(assert (=> b!574604 m!553495))

(assert (=> b!574606 m!553493))

(assert (=> b!574606 m!553493))

(assert (=> b!574606 m!553495))

(assert (=> b!574607 m!553493))

(assert (=> b!574607 m!553493))

(declare-fun m!553497 () Bool)

(assert (=> b!574607 m!553497))

(assert (=> bm!32684 m!553493))

(declare-fun m!553499 () Bool)

(assert (=> bm!32684 m!553499))

(assert (=> b!574554 d!85075))

(declare-fun d!85081 () Bool)

(assert (=> d!85081 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!52710 d!85081))

(declare-fun d!85083 () Bool)

(assert (=> d!85083 (= (array_inv!12990 a!3118) (bvsge (size!17580 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!52710 d!85083))

(declare-fun d!85085 () Bool)

(declare-fun lt!262523 () SeekEntryResult!5672)

(assert (=> d!85085 (and (or (is-Undefined!5672 lt!262523) (not (is-Found!5672 lt!262523)) (and (bvsge (index!24916 lt!262523) #b00000000000000000000000000000000) (bvslt (index!24916 lt!262523) (size!17580 a!3118)))) (or (is-Undefined!5672 lt!262523) (is-Found!5672 lt!262523) (not (is-MissingZero!5672 lt!262523)) (and (bvsge (index!24915 lt!262523) #b00000000000000000000000000000000) (bvslt (index!24915 lt!262523) (size!17580 a!3118)))) (or (is-Undefined!5672 lt!262523) (is-Found!5672 lt!262523) (is-MissingZero!5672 lt!262523) (not (is-MissingVacant!5672 lt!262523)) (and (bvsge (index!24918 lt!262523) #b00000000000000000000000000000000) (bvslt (index!24918 lt!262523) (size!17580 a!3118)))) (or (is-Undefined!5672 lt!262523) (ite (is-Found!5672 lt!262523) (= (select (arr!17216 a!3118) (index!24916 lt!262523)) (select (arr!17216 a!3118) j!142)) (ite (is-MissingZero!5672 lt!262523) (= (select (arr!17216 a!3118) (index!24915 lt!262523)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5672 lt!262523) (= (select (arr!17216 a!3118) (index!24918 lt!262523)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!330628 () SeekEntryResult!5672)

(assert (=> d!85085 (= lt!262523 e!330628)))

(declare-fun c!65973 () Bool)

(declare-fun lt!262524 () SeekEntryResult!5672)

(assert (=> d!85085 (= c!65973 (and (is-Intermediate!5672 lt!262524) (undefined!6484 lt!262524)))))

(assert (=> d!85085 (= lt!262524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17216 a!3118) j!142) mask!3119) (select (arr!17216 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!85085 (validMask!0 mask!3119)))

(assert (=> d!85085 (= (seekEntryOrOpen!0 (select (arr!17216 a!3118) j!142) a!3118 mask!3119) lt!262523)))

(declare-fun b!574638 () Bool)

(declare-fun e!330629 () SeekEntryResult!5672)

(assert (=> b!574638 (= e!330629 (seekKeyOrZeroReturnVacant!0 (x!53827 lt!262524) (index!24917 lt!262524) (index!24917 lt!262524) (select (arr!17216 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574639 () Bool)

(assert (=> b!574639 (= e!330628 Undefined!5672)))

(declare-fun b!574640 () Bool)

(declare-fun c!65974 () Bool)

(declare-fun lt!262522 () (_ BitVec 64))

(assert (=> b!574640 (= c!65974 (= lt!262522 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330630 () SeekEntryResult!5672)

(assert (=> b!574640 (= e!330630 e!330629)))

(declare-fun b!574641 () Bool)

(assert (=> b!574641 (= e!330629 (MissingZero!5672 (index!24917 lt!262524)))))

(declare-fun b!574642 () Bool)

(assert (=> b!574642 (= e!330628 e!330630)))

(assert (=> b!574642 (= lt!262522 (select (arr!17216 a!3118) (index!24917 lt!262524)))))

(declare-fun c!65975 () Bool)

(assert (=> b!574642 (= c!65975 (= lt!262522 (select (arr!17216 a!3118) j!142)))))

(declare-fun b!574643 () Bool)

(assert (=> b!574643 (= e!330630 (Found!5672 (index!24917 lt!262524)))))

(assert (= (and d!85085 c!65973) b!574639))

(assert (= (and d!85085 (not c!65973)) b!574642))

(assert (= (and b!574642 c!65975) b!574643))

(assert (= (and b!574642 (not c!65975)) b!574640))

(assert (= (and b!574640 c!65974) b!574641))

(assert (= (and b!574640 (not c!65974)) b!574638))

(declare-fun m!553509 () Bool)

(assert (=> d!85085 m!553509))

(assert (=> d!85085 m!553441))

(declare-fun m!553511 () Bool)

(assert (=> d!85085 m!553511))

(assert (=> d!85085 m!553431))

(assert (=> d!85085 m!553447))

(assert (=> d!85085 m!553447))

(assert (=> d!85085 m!553431))

(declare-fun m!553513 () Bool)

(assert (=> d!85085 m!553513))

(declare-fun m!553515 () Bool)

(assert (=> d!85085 m!553515))

(assert (=> b!574638 m!553431))

(declare-fun m!553517 () Bool)

(assert (=> b!574638 m!553517))

(declare-fun m!553519 () Bool)

(assert (=> b!574642 m!553519))

(assert (=> b!574552 d!85085))

(declare-fun d!85095 () Bool)

(declare-fun res!363436 () Bool)

(declare-fun e!330657 () Bool)

(assert (=> d!85095 (=> res!363436 e!330657)))

(assert (=> d!85095 (= res!363436 (bvsge j!142 (size!17580 a!3118)))))

(assert (=> d!85095 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!330657)))

(declare-fun b!574688 () Bool)

(declare-fun e!330658 () Bool)

(declare-fun call!32690 () Bool)

(assert (=> b!574688 (= e!330658 call!32690)))

(declare-fun bm!32687 () Bool)

(assert (=> bm!32687 (= call!32690 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!574689 () Bool)

(declare-fun e!330659 () Bool)

(assert (=> b!574689 (= e!330657 e!330659)))

(declare-fun c!65990 () Bool)

(assert (=> b!574689 (= c!65990 (validKeyInArray!0 (select (arr!17216 a!3118) j!142)))))

(declare-fun b!574690 () Bool)

(assert (=> b!574690 (= e!330659 call!32690)))

(declare-fun b!574691 () Bool)

(assert (=> b!574691 (= e!330659 e!330658)))

(declare-fun lt!262540 () (_ BitVec 64))

(assert (=> b!574691 (= lt!262540 (select (arr!17216 a!3118) j!142))))

(declare-fun lt!262541 () Unit!18046)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35872 (_ BitVec 64) (_ BitVec 32)) Unit!18046)

(assert (=> b!574691 (= lt!262541 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262540 j!142))))

(assert (=> b!574691 (arrayContainsKey!0 a!3118 lt!262540 #b00000000000000000000000000000000)))

(declare-fun lt!262539 () Unit!18046)

(assert (=> b!574691 (= lt!262539 lt!262541)))

(declare-fun res!363435 () Bool)

(assert (=> b!574691 (= res!363435 (= (seekEntryOrOpen!0 (select (arr!17216 a!3118) j!142) a!3118 mask!3119) (Found!5672 j!142)))))

(assert (=> b!574691 (=> (not res!363435) (not e!330658))))

(assert (= (and d!85095 (not res!363436)) b!574689))

(assert (= (and b!574689 c!65990) b!574691))

(assert (= (and b!574689 (not c!65990)) b!574690))

(assert (= (and b!574691 res!363435) b!574688))

(assert (= (or b!574688 b!574690) bm!32687))

(declare-fun m!553537 () Bool)

(assert (=> bm!32687 m!553537))

(assert (=> b!574689 m!553431))

(assert (=> b!574689 m!553431))

(assert (=> b!574689 m!553463))

(assert (=> b!574691 m!553431))

(declare-fun m!553539 () Bool)

(assert (=> b!574691 m!553539))

(declare-fun m!553541 () Bool)

(assert (=> b!574691 m!553541))

(assert (=> b!574691 m!553431))

(assert (=> b!574691 m!553473))

(assert (=> b!574552 d!85095))

(declare-fun d!85101 () Bool)

(assert (=> d!85101 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!262552 () Unit!18046)

(declare-fun choose!38 (array!35872 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18046)

(assert (=> d!85101 (= lt!262552 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!85101 (validMask!0 mask!3119)))

(assert (=> d!85101 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!262552)))

(declare-fun bs!17772 () Bool)

(assert (= bs!17772 d!85101))

(assert (=> bs!17772 m!553471))

(declare-fun m!553543 () Bool)

(assert (=> bs!17772 m!553543))

(assert (=> bs!17772 m!553441))

(assert (=> b!574552 d!85101))

(declare-fun d!85107 () Bool)

(declare-fun res!363441 () Bool)

(declare-fun e!330670 () Bool)

(assert (=> d!85107 (=> res!363441 e!330670)))

(assert (=> d!85107 (= res!363441 (= (select (arr!17216 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!85107 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!330670)))

(declare-fun b!574708 () Bool)

(declare-fun e!330671 () Bool)

(assert (=> b!574708 (= e!330670 e!330671)))

(declare-fun res!363442 () Bool)

(assert (=> b!574708 (=> (not res!363442) (not e!330671))))

(assert (=> b!574708 (= res!363442 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17580 a!3118)))))

(declare-fun b!574709 () Bool)

(assert (=> b!574709 (= e!330671 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!85107 (not res!363441)) b!574708))

(assert (= (and b!574708 res!363442) b!574709))

(assert (=> d!85107 m!553493))

(declare-fun m!553545 () Bool)

(assert (=> b!574709 m!553545))

(assert (=> b!574546 d!85107))

(declare-fun d!85109 () Bool)

(assert (=> d!85109 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!574556 d!85109))

(declare-fun d!85111 () Bool)

(declare-fun res!363444 () Bool)

(declare-fun e!330672 () Bool)

(assert (=> d!85111 (=> res!363444 e!330672)))

(assert (=> d!85111 (= res!363444 (bvsge #b00000000000000000000000000000000 (size!17580 a!3118)))))

(assert (=> d!85111 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!330672)))

(declare-fun b!574710 () Bool)

(declare-fun e!330673 () Bool)

(declare-fun call!32691 () Bool)

(assert (=> b!574710 (= e!330673 call!32691)))

(declare-fun bm!32688 () Bool)

(assert (=> bm!32688 (= call!32691 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!574711 () Bool)

(declare-fun e!330674 () Bool)

(assert (=> b!574711 (= e!330672 e!330674)))

(declare-fun c!65997 () Bool)

(assert (=> b!574711 (= c!65997 (validKeyInArray!0 (select (arr!17216 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!574712 () Bool)

(assert (=> b!574712 (= e!330674 call!32691)))

(declare-fun b!574713 () Bool)

(assert (=> b!574713 (= e!330674 e!330673)))

(declare-fun lt!262560 () (_ BitVec 64))

(assert (=> b!574713 (= lt!262560 (select (arr!17216 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!262561 () Unit!18046)

(assert (=> b!574713 (= lt!262561 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!262560 #b00000000000000000000000000000000))))

(assert (=> b!574713 (arrayContainsKey!0 a!3118 lt!262560 #b00000000000000000000000000000000)))

(declare-fun lt!262559 () Unit!18046)

(assert (=> b!574713 (= lt!262559 lt!262561)))

(declare-fun res!363443 () Bool)

(assert (=> b!574713 (= res!363443 (= (seekEntryOrOpen!0 (select (arr!17216 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5672 #b00000000000000000000000000000000)))))

(assert (=> b!574713 (=> (not res!363443) (not e!330673))))

(assert (= (and d!85111 (not res!363444)) b!574711))

(assert (= (and b!574711 c!65997) b!574713))

(assert (= (and b!574711 (not c!65997)) b!574712))

(assert (= (and b!574713 res!363443) b!574710))

(assert (= (or b!574710 b!574712) bm!32688))

(declare-fun m!553547 () Bool)

(assert (=> bm!32688 m!553547))

(assert (=> b!574711 m!553493))

(assert (=> b!574711 m!553493))

(assert (=> b!574711 m!553495))

(assert (=> b!574713 m!553493))

(declare-fun m!553549 () Bool)

(assert (=> b!574713 m!553549))

(declare-fun m!553551 () Bool)

(assert (=> b!574713 m!553551))

(assert (=> b!574713 m!553493))

(declare-fun m!553553 () Bool)

(assert (=> b!574713 m!553553))

(assert (=> b!574545 d!85111))

(declare-fun d!85113 () Bool)

(assert (=> d!85113 (= (validKeyInArray!0 (select (arr!17216 a!3118) j!142)) (and (not (= (select (arr!17216 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17216 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!574544 d!85113))

(declare-fun b!574769 () Bool)

(declare-fun e!330707 () SeekEntryResult!5672)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!574769 (= e!330707 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53827 lt!262487) #b00000000000000000000000000000001) (nextIndex!0 (index!24917 lt!262487) (x!53827 lt!262487) mask!3119) (index!24917 lt!262487) (select (arr!17216 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574770 () Bool)

(declare-fun e!330705 () SeekEntryResult!5672)

(declare-fun e!330706 () SeekEntryResult!5672)

(assert (=> b!574770 (= e!330705 e!330706)))

(declare-fun c!66022 () Bool)

(declare-fun lt!262594 () (_ BitVec 64))

(assert (=> b!574770 (= c!66022 (= lt!262594 (select (arr!17216 a!3118) j!142)))))

(declare-fun b!574771 () Bool)

(assert (=> b!574771 (= e!330706 (Found!5672 (index!24917 lt!262487)))))

(declare-fun b!574768 () Bool)

(assert (=> b!574768 (= e!330707 (MissingVacant!5672 (index!24917 lt!262487)))))

(declare-fun lt!262593 () SeekEntryResult!5672)

(declare-fun d!85115 () Bool)

(assert (=> d!85115 (and (or (is-Undefined!5672 lt!262593) (not (is-Found!5672 lt!262593)) (and (bvsge (index!24916 lt!262593) #b00000000000000000000000000000000) (bvslt (index!24916 lt!262593) (size!17580 a!3118)))) (or (is-Undefined!5672 lt!262593) (is-Found!5672 lt!262593) (not (is-MissingVacant!5672 lt!262593)) (not (= (index!24918 lt!262593) (index!24917 lt!262487))) (and (bvsge (index!24918 lt!262593) #b00000000000000000000000000000000) (bvslt (index!24918 lt!262593) (size!17580 a!3118)))) (or (is-Undefined!5672 lt!262593) (ite (is-Found!5672 lt!262593) (= (select (arr!17216 a!3118) (index!24916 lt!262593)) (select (arr!17216 a!3118) j!142)) (and (is-MissingVacant!5672 lt!262593) (= (index!24918 lt!262593) (index!24917 lt!262487)) (= (select (arr!17216 a!3118) (index!24918 lt!262593)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!85115 (= lt!262593 e!330705)))

(declare-fun c!66023 () Bool)

(assert (=> d!85115 (= c!66023 (bvsge (x!53827 lt!262487) #b01111111111111111111111111111110))))

(assert (=> d!85115 (= lt!262594 (select (arr!17216 a!3118) (index!24917 lt!262487)))))

(assert (=> d!85115 (validMask!0 mask!3119)))

(assert (=> d!85115 (= (seekKeyOrZeroReturnVacant!0 (x!53827 lt!262487) (index!24917 lt!262487) (index!24917 lt!262487) (select (arr!17216 a!3118) j!142) a!3118 mask!3119) lt!262593)))

(declare-fun b!574772 () Bool)

(assert (=> b!574772 (= e!330705 Undefined!5672)))

(declare-fun b!574773 () Bool)

(declare-fun c!66024 () Bool)

(assert (=> b!574773 (= c!66024 (= lt!262594 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574773 (= e!330706 e!330707)))

(assert (= (and d!85115 c!66023) b!574772))

(assert (= (and d!85115 (not c!66023)) b!574770))

(assert (= (and b!574770 c!66022) b!574771))

(assert (= (and b!574770 (not c!66022)) b!574773))

(assert (= (and b!574773 c!66024) b!574768))

(assert (= (and b!574773 (not c!66024)) b!574769))

(declare-fun m!553601 () Bool)

(assert (=> b!574769 m!553601))

(assert (=> b!574769 m!553601))

(assert (=> b!574769 m!553431))

(declare-fun m!553603 () Bool)

(assert (=> b!574769 m!553603))

(declare-fun m!553605 () Bool)

(assert (=> d!85115 m!553605))

(declare-fun m!553607 () Bool)

(assert (=> d!85115 m!553607))

(assert (=> d!85115 m!553457))

(assert (=> d!85115 m!553441))

(assert (=> b!574549 d!85115))

(declare-fun d!85129 () Bool)

(declare-fun lt!262596 () SeekEntryResult!5672)

(assert (=> d!85129 (and (or (is-Undefined!5672 lt!262596) (not (is-Found!5672 lt!262596)) (and (bvsge (index!24916 lt!262596) #b00000000000000000000000000000000) (bvslt (index!24916 lt!262596) (size!17580 a!3118)))) (or (is-Undefined!5672 lt!262596) (is-Found!5672 lt!262596) (not (is-MissingZero!5672 lt!262596)) (and (bvsge (index!24915 lt!262596) #b00000000000000000000000000000000) (bvslt (index!24915 lt!262596) (size!17580 a!3118)))) (or (is-Undefined!5672 lt!262596) (is-Found!5672 lt!262596) (is-MissingZero!5672 lt!262596) (not (is-MissingVacant!5672 lt!262596)) (and (bvsge (index!24918 lt!262596) #b00000000000000000000000000000000) (bvslt (index!24918 lt!262596) (size!17580 a!3118)))) (or (is-Undefined!5672 lt!262596) (ite (is-Found!5672 lt!262596) (= (select (arr!17216 a!3118) (index!24916 lt!262596)) k!1914) (ite (is-MissingZero!5672 lt!262596) (= (select (arr!17216 a!3118) (index!24915 lt!262596)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5672 lt!262596) (= (select (arr!17216 a!3118) (index!24918 lt!262596)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!330708 () SeekEntryResult!5672)

(assert (=> d!85129 (= lt!262596 e!330708)))

(declare-fun c!66025 () Bool)

(declare-fun lt!262597 () SeekEntryResult!5672)

(assert (=> d!85129 (= c!66025 (and (is-Intermediate!5672 lt!262597) (undefined!6484 lt!262597)))))

(assert (=> d!85129 (= lt!262597 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!85129 (validMask!0 mask!3119)))

(assert (=> d!85129 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!262596)))

(declare-fun b!574774 () Bool)

(declare-fun e!330709 () SeekEntryResult!5672)

(assert (=> b!574774 (= e!330709 (seekKeyOrZeroReturnVacant!0 (x!53827 lt!262597) (index!24917 lt!262597) (index!24917 lt!262597) k!1914 a!3118 mask!3119))))

(declare-fun b!574775 () Bool)

(assert (=> b!574775 (= e!330708 Undefined!5672)))

(declare-fun b!574776 () Bool)

(declare-fun c!66026 () Bool)

(declare-fun lt!262595 () (_ BitVec 64))

(assert (=> b!574776 (= c!66026 (= lt!262595 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330710 () SeekEntryResult!5672)

(assert (=> b!574776 (= e!330710 e!330709)))

(declare-fun b!574777 () Bool)

(assert (=> b!574777 (= e!330709 (MissingZero!5672 (index!24917 lt!262597)))))

(declare-fun b!574778 () Bool)

(assert (=> b!574778 (= e!330708 e!330710)))

(assert (=> b!574778 (= lt!262595 (select (arr!17216 a!3118) (index!24917 lt!262597)))))

(declare-fun c!66027 () Bool)

(assert (=> b!574778 (= c!66027 (= lt!262595 k!1914))))

(declare-fun b!574779 () Bool)

(assert (=> b!574779 (= e!330710 (Found!5672 (index!24917 lt!262597)))))

(assert (= (and d!85129 c!66025) b!574775))

(assert (= (and d!85129 (not c!66025)) b!574778))

(assert (= (and b!574778 c!66027) b!574779))

(assert (= (and b!574778 (not c!66027)) b!574776))

(assert (= (and b!574776 c!66026) b!574777))

(assert (= (and b!574776 (not c!66026)) b!574774))

(declare-fun m!553609 () Bool)

(assert (=> d!85129 m!553609))

(assert (=> d!85129 m!553441))

(declare-fun m!553611 () Bool)

(assert (=> d!85129 m!553611))

(declare-fun m!553613 () Bool)

(assert (=> d!85129 m!553613))

(assert (=> d!85129 m!553613))

(declare-fun m!553615 () Bool)

(assert (=> d!85129 m!553615))

(declare-fun m!553617 () Bool)

(assert (=> d!85129 m!553617))

(declare-fun m!553619 () Bool)

(assert (=> b!574774 m!553619))

(declare-fun m!553621 () Bool)

(assert (=> b!574778 m!553621))

(assert (=> b!574548 d!85129))

(declare-fun d!85131 () Bool)

(declare-fun lt!262599 () SeekEntryResult!5672)

(assert (=> d!85131 (and (or (is-Undefined!5672 lt!262599) (not (is-Found!5672 lt!262599)) (and (bvsge (index!24916 lt!262599) #b00000000000000000000000000000000) (bvslt (index!24916 lt!262599) (size!17580 lt!262490)))) (or (is-Undefined!5672 lt!262599) (is-Found!5672 lt!262599) (not (is-MissingZero!5672 lt!262599)) (and (bvsge (index!24915 lt!262599) #b00000000000000000000000000000000) (bvslt (index!24915 lt!262599) (size!17580 lt!262490)))) (or (is-Undefined!5672 lt!262599) (is-Found!5672 lt!262599) (is-MissingZero!5672 lt!262599) (not (is-MissingVacant!5672 lt!262599)) (and (bvsge (index!24918 lt!262599) #b00000000000000000000000000000000) (bvslt (index!24918 lt!262599) (size!17580 lt!262490)))) (or (is-Undefined!5672 lt!262599) (ite (is-Found!5672 lt!262599) (= (select (arr!17216 lt!262490) (index!24916 lt!262599)) lt!262485) (ite (is-MissingZero!5672 lt!262599) (= (select (arr!17216 lt!262490) (index!24915 lt!262599)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5672 lt!262599) (= (select (arr!17216 lt!262490) (index!24918 lt!262599)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!330715 () SeekEntryResult!5672)

(assert (=> d!85131 (= lt!262599 e!330715)))

(declare-fun c!66028 () Bool)

(declare-fun lt!262600 () SeekEntryResult!5672)

(assert (=> d!85131 (= c!66028 (and (is-Intermediate!5672 lt!262600) (undefined!6484 lt!262600)))))

(assert (=> d!85131 (= lt!262600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!262485 mask!3119) lt!262485 lt!262490 mask!3119))))

(assert (=> d!85131 (validMask!0 mask!3119)))

(assert (=> d!85131 (= (seekEntryOrOpen!0 lt!262485 lt!262490 mask!3119) lt!262599)))

(declare-fun e!330716 () SeekEntryResult!5672)

(declare-fun b!574784 () Bool)

(assert (=> b!574784 (= e!330716 (seekKeyOrZeroReturnVacant!0 (x!53827 lt!262600) (index!24917 lt!262600) (index!24917 lt!262600) lt!262485 lt!262490 mask!3119))))

(declare-fun b!574785 () Bool)

(assert (=> b!574785 (= e!330715 Undefined!5672)))

(declare-fun b!574786 () Bool)

(declare-fun c!66029 () Bool)

(declare-fun lt!262598 () (_ BitVec 64))

(assert (=> b!574786 (= c!66029 (= lt!262598 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!330717 () SeekEntryResult!5672)

(assert (=> b!574786 (= e!330717 e!330716)))

(declare-fun b!574787 () Bool)

(assert (=> b!574787 (= e!330716 (MissingZero!5672 (index!24917 lt!262600)))))

(declare-fun b!574788 () Bool)

(assert (=> b!574788 (= e!330715 e!330717)))

(assert (=> b!574788 (= lt!262598 (select (arr!17216 lt!262490) (index!24917 lt!262600)))))

(declare-fun c!66030 () Bool)

(assert (=> b!574788 (= c!66030 (= lt!262598 lt!262485))))

(declare-fun b!574789 () Bool)

(assert (=> b!574789 (= e!330717 (Found!5672 (index!24917 lt!262600)))))

(assert (= (and d!85131 c!66028) b!574785))

(assert (= (and d!85131 (not c!66028)) b!574788))

(assert (= (and b!574788 c!66030) b!574789))

(assert (= (and b!574788 (not c!66030)) b!574786))

(assert (= (and b!574786 c!66029) b!574787))

(assert (= (and b!574786 (not c!66029)) b!574784))

(declare-fun m!553623 () Bool)

(assert (=> d!85131 m!553623))

(assert (=> d!85131 m!553441))

(declare-fun m!553625 () Bool)

(assert (=> d!85131 m!553625))

(assert (=> d!85131 m!553451))

(assert (=> d!85131 m!553451))

(declare-fun m!553627 () Bool)

(assert (=> d!85131 m!553627))

(declare-fun m!553629 () Bool)

(assert (=> d!85131 m!553629))

(declare-fun m!553631 () Bool)

(assert (=> b!574784 m!553631))

(declare-fun m!553633 () Bool)

(assert (=> b!574788 m!553633))

(assert (=> b!574551 d!85131))

(declare-fun b!574793 () Bool)

(declare-fun e!330722 () SeekEntryResult!5672)

(assert (=> b!574793 (= e!330722 (seekKeyOrZeroReturnVacant!0 (bvadd (x!53827 lt!262487) #b00000000000000000000000000000001) (nextIndex!0 (index!24917 lt!262487) (x!53827 lt!262487) mask!3119) (index!24917 lt!262487) lt!262485 lt!262490 mask!3119))))

(declare-fun b!574794 () Bool)

(declare-fun e!330720 () SeekEntryResult!5672)

(declare-fun e!330721 () SeekEntryResult!5672)

(assert (=> b!574794 (= e!330720 e!330721)))

(declare-fun c!66031 () Bool)

(declare-fun lt!262602 () (_ BitVec 64))

(assert (=> b!574794 (= c!66031 (= lt!262602 lt!262485))))

(declare-fun b!574795 () Bool)

(assert (=> b!574795 (= e!330721 (Found!5672 (index!24917 lt!262487)))))

(declare-fun b!574792 () Bool)

(assert (=> b!574792 (= e!330722 (MissingVacant!5672 (index!24917 lt!262487)))))

(declare-fun d!85133 () Bool)

(declare-fun lt!262601 () SeekEntryResult!5672)

(assert (=> d!85133 (and (or (is-Undefined!5672 lt!262601) (not (is-Found!5672 lt!262601)) (and (bvsge (index!24916 lt!262601) #b00000000000000000000000000000000) (bvslt (index!24916 lt!262601) (size!17580 lt!262490)))) (or (is-Undefined!5672 lt!262601) (is-Found!5672 lt!262601) (not (is-MissingVacant!5672 lt!262601)) (not (= (index!24918 lt!262601) (index!24917 lt!262487))) (and (bvsge (index!24918 lt!262601) #b00000000000000000000000000000000) (bvslt (index!24918 lt!262601) (size!17580 lt!262490)))) (or (is-Undefined!5672 lt!262601) (ite (is-Found!5672 lt!262601) (= (select (arr!17216 lt!262490) (index!24916 lt!262601)) lt!262485) (and (is-MissingVacant!5672 lt!262601) (= (index!24918 lt!262601) (index!24917 lt!262487)) (= (select (arr!17216 lt!262490) (index!24918 lt!262601)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!85133 (= lt!262601 e!330720)))

(declare-fun c!66032 () Bool)

(assert (=> d!85133 (= c!66032 (bvsge (x!53827 lt!262487) #b01111111111111111111111111111110))))

(assert (=> d!85133 (= lt!262602 (select (arr!17216 lt!262490) (index!24917 lt!262487)))))

(assert (=> d!85133 (validMask!0 mask!3119)))

(assert (=> d!85133 (= (seekKeyOrZeroReturnVacant!0 (x!53827 lt!262487) (index!24917 lt!262487) (index!24917 lt!262487) lt!262485 lt!262490 mask!3119) lt!262601)))

(declare-fun b!574796 () Bool)

(assert (=> b!574796 (= e!330720 Undefined!5672)))

(declare-fun b!574797 () Bool)

(declare-fun c!66033 () Bool)

(assert (=> b!574797 (= c!66033 (= lt!262602 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574797 (= e!330721 e!330722)))

(assert (= (and d!85133 c!66032) b!574796))

(assert (= (and d!85133 (not c!66032)) b!574794))

(assert (= (and b!574794 c!66031) b!574795))

(assert (= (and b!574794 (not c!66031)) b!574797))

(assert (= (and b!574797 c!66033) b!574792))

(assert (= (and b!574797 (not c!66033)) b!574793))

(assert (=> b!574793 m!553601))

(assert (=> b!574793 m!553601))

(declare-fun m!553639 () Bool)

(assert (=> b!574793 m!553639))

(declare-fun m!553641 () Bool)

(assert (=> d!85133 m!553641))

(declare-fun m!553643 () Bool)

(assert (=> d!85133 m!553643))

(declare-fun m!553645 () Bool)

(assert (=> d!85133 m!553645))

(assert (=> d!85133 m!553441))

(assert (=> b!574551 d!85133))

(declare-fun b!574865 () Bool)

(declare-fun e!330766 () SeekEntryResult!5672)

(assert (=> b!574865 (= e!330766 (Intermediate!5672 false lt!262493 #b00000000000000000000000000000000))))

(declare-fun b!574866 () Bool)

(declare-fun e!330770 () SeekEntryResult!5672)

(assert (=> b!574866 (= e!330770 (Intermediate!5672 true lt!262493 #b00000000000000000000000000000000))))

(declare-fun b!574868 () Bool)

(assert (=> b!574868 (= e!330766 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262493 #b00000000000000000000000000000000 mask!3119) lt!262485 lt!262490 mask!3119))))

(declare-fun b!574869 () Bool)

(declare-fun lt!262631 () SeekEntryResult!5672)

(assert (=> b!574869 (and (bvsge (index!24917 lt!262631) #b00000000000000000000000000000000) (bvslt (index!24917 lt!262631) (size!17580 lt!262490)))))

(declare-fun e!330769 () Bool)

(assert (=> b!574869 (= e!330769 (= (select (arr!17216 lt!262490) (index!24917 lt!262631)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574870 () Bool)

(assert (=> b!574870 (= e!330770 e!330766)))

(declare-fun c!66056 () Bool)

(declare-fun lt!262630 () (_ BitVec 64))

(assert (=> b!574870 (= c!66056 (or (= lt!262630 lt!262485) (= (bvadd lt!262630 lt!262630) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!574871 () Bool)

(assert (=> b!574871 (and (bvsge (index!24917 lt!262631) #b00000000000000000000000000000000) (bvslt (index!24917 lt!262631) (size!17580 lt!262490)))))

(declare-fun res!363481 () Bool)

(assert (=> b!574871 (= res!363481 (= (select (arr!17216 lt!262490) (index!24917 lt!262631)) lt!262485))))

(assert (=> b!574871 (=> res!363481 e!330769)))

(declare-fun e!330767 () Bool)

(assert (=> b!574871 (= e!330767 e!330769)))

(declare-fun b!574872 () Bool)

(assert (=> b!574872 (and (bvsge (index!24917 lt!262631) #b00000000000000000000000000000000) (bvslt (index!24917 lt!262631) (size!17580 lt!262490)))))

(declare-fun res!363480 () Bool)

(assert (=> b!574872 (= res!363480 (= (select (arr!17216 lt!262490) (index!24917 lt!262631)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574872 (=> res!363480 e!330769)))

(declare-fun b!574873 () Bool)

(declare-fun e!330768 () Bool)

(assert (=> b!574873 (= e!330768 (bvsge (x!53827 lt!262631) #b01111111111111111111111111111110))))

(declare-fun b!574867 () Bool)

(assert (=> b!574867 (= e!330768 e!330767)))

(declare-fun res!363482 () Bool)

(assert (=> b!574867 (= res!363482 (and (is-Intermediate!5672 lt!262631) (not (undefined!6484 lt!262631)) (bvslt (x!53827 lt!262631) #b01111111111111111111111111111110) (bvsge (x!53827 lt!262631) #b00000000000000000000000000000000) (bvsge (x!53827 lt!262631) #b00000000000000000000000000000000)))))

(assert (=> b!574867 (=> (not res!363482) (not e!330767))))

(declare-fun d!85137 () Bool)

(assert (=> d!85137 e!330768))

(declare-fun c!66058 () Bool)

(assert (=> d!85137 (= c!66058 (and (is-Intermediate!5672 lt!262631) (undefined!6484 lt!262631)))))

(assert (=> d!85137 (= lt!262631 e!330770)))

(declare-fun c!66057 () Bool)

(assert (=> d!85137 (= c!66057 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!85137 (= lt!262630 (select (arr!17216 lt!262490) lt!262493))))

(assert (=> d!85137 (validMask!0 mask!3119)))

(assert (=> d!85137 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262493 lt!262485 lt!262490 mask!3119) lt!262631)))

(assert (= (and d!85137 c!66057) b!574866))

(assert (= (and d!85137 (not c!66057)) b!574870))

(assert (= (and b!574870 c!66056) b!574865))

(assert (= (and b!574870 (not c!66056)) b!574868))

(assert (= (and d!85137 c!66058) b!574873))

(assert (= (and d!85137 (not c!66058)) b!574867))

(assert (= (and b!574867 res!363482) b!574871))

(assert (= (and b!574871 (not res!363481)) b!574872))

(assert (= (and b!574872 (not res!363480)) b!574869))

(declare-fun m!553703 () Bool)

(assert (=> b!574871 m!553703))

(assert (=> b!574872 m!553703))

(assert (=> b!574869 m!553703))

(declare-fun m!553705 () Bool)

(assert (=> b!574868 m!553705))

(assert (=> b!574868 m!553705))

(declare-fun m!553707 () Bool)

(assert (=> b!574868 m!553707))

(declare-fun m!553709 () Bool)

(assert (=> d!85137 m!553709))

(assert (=> d!85137 m!553441))

(assert (=> b!574550 d!85137))

(declare-fun b!574874 () Bool)

(declare-fun e!330771 () SeekEntryResult!5672)

(assert (=> b!574874 (= e!330771 (Intermediate!5672 false lt!262489 #b00000000000000000000000000000000))))

(declare-fun b!574875 () Bool)

(declare-fun e!330775 () SeekEntryResult!5672)

(assert (=> b!574875 (= e!330775 (Intermediate!5672 true lt!262489 #b00000000000000000000000000000000))))

(declare-fun b!574877 () Bool)

(assert (=> b!574877 (= e!330771 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!262489 #b00000000000000000000000000000000 mask!3119) (select (arr!17216 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!574878 () Bool)

(declare-fun lt!262633 () SeekEntryResult!5672)

(assert (=> b!574878 (and (bvsge (index!24917 lt!262633) #b00000000000000000000000000000000) (bvslt (index!24917 lt!262633) (size!17580 a!3118)))))

(declare-fun e!330774 () Bool)

(assert (=> b!574878 (= e!330774 (= (select (arr!17216 a!3118) (index!24917 lt!262633)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!574879 () Bool)

(assert (=> b!574879 (= e!330775 e!330771)))

(declare-fun lt!262632 () (_ BitVec 64))

(declare-fun c!66059 () Bool)

(assert (=> b!574879 (= c!66059 (or (= lt!262632 (select (arr!17216 a!3118) j!142)) (= (bvadd lt!262632 lt!262632) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!574880 () Bool)

(assert (=> b!574880 (and (bvsge (index!24917 lt!262633) #b00000000000000000000000000000000) (bvslt (index!24917 lt!262633) (size!17580 a!3118)))))

(declare-fun res!363484 () Bool)

(assert (=> b!574880 (= res!363484 (= (select (arr!17216 a!3118) (index!24917 lt!262633)) (select (arr!17216 a!3118) j!142)))))

(assert (=> b!574880 (=> res!363484 e!330774)))

(declare-fun e!330772 () Bool)

(assert (=> b!574880 (= e!330772 e!330774)))

(declare-fun b!574881 () Bool)

(assert (=> b!574881 (and (bvsge (index!24917 lt!262633) #b00000000000000000000000000000000) (bvslt (index!24917 lt!262633) (size!17580 a!3118)))))

(declare-fun res!363483 () Bool)

(assert (=> b!574881 (= res!363483 (= (select (arr!17216 a!3118) (index!24917 lt!262633)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!574881 (=> res!363483 e!330774)))

(declare-fun b!574882 () Bool)

(declare-fun e!330773 () Bool)

(assert (=> b!574882 (= e!330773 (bvsge (x!53827 lt!262633) #b01111111111111111111111111111110))))

(declare-fun b!574876 () Bool)

(assert (=> b!574876 (= e!330773 e!330772)))

(declare-fun res!363485 () Bool)

(assert (=> b!574876 (= res!363485 (and (is-Intermediate!5672 lt!262633) (not (undefined!6484 lt!262633)) (bvslt (x!53827 lt!262633) #b01111111111111111111111111111110) (bvsge (x!53827 lt!262633) #b00000000000000000000000000000000) (bvsge (x!53827 lt!262633) #b00000000000000000000000000000000)))))

(assert (=> b!574876 (=> (not res!363485) (not e!330772))))

(declare-fun d!85153 () Bool)

(assert (=> d!85153 e!330773))

(declare-fun c!66061 () Bool)

(assert (=> d!85153 (= c!66061 (and (is-Intermediate!5672 lt!262633) (undefined!6484 lt!262633)))))

(assert (=> d!85153 (= lt!262633 e!330775)))

(declare-fun c!66060 () Bool)

(assert (=> d!85153 (= c!66060 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!85153 (= lt!262632 (select (arr!17216 a!3118) lt!262489))))

(assert (=> d!85153 (validMask!0 mask!3119)))

(assert (=> d!85153 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262489 (select (arr!17216 a!3118) j!142) a!3118 mask!3119) lt!262633)))

(assert (= (and d!85153 c!66060) b!574875))

(assert (= (and d!85153 (not c!66060)) b!574879))

(assert (= (and b!574879 c!66059) b!574874))

(assert (= (and b!574879 (not c!66059)) b!574877))

(assert (= (and d!85153 c!66061) b!574882))

(assert (= (and d!85153 (not c!66061)) b!574876))

(assert (= (and b!574876 res!363485) b!574880))

(assert (= (and b!574880 (not res!363484)) b!574881))

(assert (= (and b!574881 (not res!363483)) b!574878))

(declare-fun m!553711 () Bool)

(assert (=> b!574880 m!553711))

(assert (=> b!574881 m!553711))

(assert (=> b!574878 m!553711))

(declare-fun m!553713 () Bool)

(assert (=> b!574877 m!553713))

(assert (=> b!574877 m!553713))

(assert (=> b!574877 m!553431))

(declare-fun m!553715 () Bool)

(assert (=> b!574877 m!553715))

(declare-fun m!553717 () Bool)

(assert (=> d!85153 m!553717))

(assert (=> d!85153 m!553441))

(assert (=> b!574550 d!85153))

(declare-fun d!85155 () Bool)

(declare-fun lt!262639 () (_ BitVec 32))

(declare-fun lt!262638 () (_ BitVec 32))

(assert (=> d!85155 (= lt!262639 (bvmul (bvxor lt!262638 (bvlshr lt!262638 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85155 (= lt!262638 ((_ extract 31 0) (bvand (bvxor lt!262485 (bvlshr lt!262485 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85155 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!363486 (let ((h!12384 ((_ extract 31 0) (bvand (bvxor lt!262485 (bvlshr lt!262485 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53835 (bvmul (bvxor h!12384 (bvlshr h!12384 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53835 (bvlshr x!53835 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!363486 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!363486 #b00000000000000000000000000000000))))))

(assert (=> d!85155 (= (toIndex!0 lt!262485 mask!3119) (bvand (bvxor lt!262639 (bvlshr lt!262639 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!574550 d!85155))

(declare-fun d!85161 () Bool)

(declare-fun lt!262641 () (_ BitVec 32))

(declare-fun lt!262640 () (_ BitVec 32))

(assert (=> d!85161 (= lt!262641 (bvmul (bvxor lt!262640 (bvlshr lt!262640 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!85161 (= lt!262640 ((_ extract 31 0) (bvand (bvxor (select (arr!17216 a!3118) j!142) (bvlshr (select (arr!17216 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!85161 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!363486 (let ((h!12384 ((_ extract 31 0) (bvand (bvxor (select (arr!17216 a!3118) j!142) (bvlshr (select (arr!17216 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53835 (bvmul (bvxor h!12384 (bvlshr h!12384 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53835 (bvlshr x!53835 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!363486 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!363486 #b00000000000000000000000000000000))))))

(assert (=> d!85161 (= (toIndex!0 (select (arr!17216 a!3118) j!142) mask!3119) (bvand (bvxor lt!262641 (bvlshr lt!262641 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!574550 d!85161))

(push 1)

