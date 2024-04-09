; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47928 () Bool)

(assert start!47928)

(declare-fun b!527703 () Bool)

(declare-fun res!324122 () Bool)

(declare-fun e!307535 () Bool)

(assert (=> b!527703 (=> (not res!324122) (not e!307535))))

(declare-datatypes ((array!33456 0))(
  ( (array!33457 (arr!16075 (Array (_ BitVec 32) (_ BitVec 64))) (size!16439 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33456)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33456 (_ BitVec 32)) Bool)

(assert (=> b!527703 (= res!324122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!527704 () Bool)

(declare-fun e!307536 () Bool)

(assert (=> b!527704 (= e!307536 e!307535)))

(declare-fun res!324125 () Bool)

(assert (=> b!527704 (=> (not res!324125) (not e!307535))))

(declare-datatypes ((SeekEntryResult!4549 0))(
  ( (MissingZero!4549 (index!20414 (_ BitVec 32))) (Found!4549 (index!20415 (_ BitVec 32))) (Intermediate!4549 (undefined!5361 Bool) (index!20416 (_ BitVec 32)) (x!49409 (_ BitVec 32))) (Undefined!4549) (MissingVacant!4549 (index!20417 (_ BitVec 32))) )
))
(declare-fun lt!243031 () SeekEntryResult!4549)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!527704 (= res!324125 (or (= lt!243031 (MissingZero!4549 i!1204)) (= lt!243031 (MissingVacant!4549 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33456 (_ BitVec 32)) SeekEntryResult!4549)

(assert (=> b!527704 (= lt!243031 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!527705 () Bool)

(declare-fun e!307532 () Bool)

(assert (=> b!527705 (= e!307532 false)))

(declare-fun b!527706 () Bool)

(declare-datatypes ((Unit!16662 0))(
  ( (Unit!16663) )
))
(declare-fun e!307531 () Unit!16662)

(declare-fun Unit!16664 () Unit!16662)

(assert (=> b!527706 (= e!307531 Unit!16664)))

(declare-fun e!307533 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!527707 () Bool)

(assert (=> b!527707 (= e!307533 (= (seekEntryOrOpen!0 (select (arr!16075 a!3235) j!176) a!3235 mask!3524) (Found!4549 j!176)))))

(declare-fun b!527708 () Bool)

(declare-fun e!307534 () Bool)

(assert (=> b!527708 (= e!307535 (not e!307534))))

(declare-fun res!324119 () Bool)

(assert (=> b!527708 (=> res!324119 e!307534)))

(declare-fun lt!243037 () array!33456)

(declare-fun lt!243033 () (_ BitVec 64))

(declare-fun lt!243029 () SeekEntryResult!4549)

(declare-fun lt!243032 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33456 (_ BitVec 32)) SeekEntryResult!4549)

(assert (=> b!527708 (= res!324119 (= lt!243029 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243032 lt!243033 lt!243037 mask!3524)))))

(declare-fun lt!243036 () (_ BitVec 32))

(assert (=> b!527708 (= lt!243029 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243036 (select (arr!16075 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527708 (= lt!243032 (toIndex!0 lt!243033 mask!3524))))

(assert (=> b!527708 (= lt!243033 (select (store (arr!16075 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!527708 (= lt!243036 (toIndex!0 (select (arr!16075 a!3235) j!176) mask!3524))))

(assert (=> b!527708 (= lt!243037 (array!33457 (store (arr!16075 a!3235) i!1204 k0!2280) (size!16439 a!3235)))))

(assert (=> b!527708 e!307533))

(declare-fun res!324120 () Bool)

(assert (=> b!527708 (=> (not res!324120) (not e!307533))))

(assert (=> b!527708 (= res!324120 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243034 () Unit!16662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33456 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16662)

(assert (=> b!527708 (= lt!243034 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!527709 () Bool)

(declare-fun res!324124 () Bool)

(assert (=> b!527709 (=> (not res!324124) (not e!307536))))

(assert (=> b!527709 (= res!324124 (and (= (size!16439 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16439 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16439 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!527710 () Bool)

(declare-fun res!324121 () Bool)

(assert (=> b!527710 (=> (not res!324121) (not e!307535))))

(declare-datatypes ((List!10286 0))(
  ( (Nil!10283) (Cons!10282 (h!11216 (_ BitVec 64)) (t!16522 List!10286)) )
))
(declare-fun arrayNoDuplicates!0 (array!33456 (_ BitVec 32) List!10286) Bool)

(assert (=> b!527710 (= res!324121 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10283))))

(declare-fun b!527711 () Bool)

(declare-fun res!324114 () Bool)

(assert (=> b!527711 (=> res!324114 e!307534)))

(get-info :version)

(assert (=> b!527711 (= res!324114 (or (undefined!5361 lt!243029) (not ((_ is Intermediate!4549) lt!243029))))))

(declare-fun res!324123 () Bool)

(assert (=> start!47928 (=> (not res!324123) (not e!307536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47928 (= res!324123 (validMask!0 mask!3524))))

(assert (=> start!47928 e!307536))

(assert (=> start!47928 true))

(declare-fun array_inv!11849 (array!33456) Bool)

(assert (=> start!47928 (array_inv!11849 a!3235)))

(declare-fun e!307530 () Bool)

(declare-fun b!527712 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33456 (_ BitVec 32)) SeekEntryResult!4549)

(assert (=> b!527712 (= e!307530 (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243036 (index!20416 lt!243029) (select (arr!16075 a!3235) j!176) a!3235 mask!3524) (Found!4549 j!176)))))

(declare-fun b!527713 () Bool)

(declare-fun res!324115 () Bool)

(assert (=> b!527713 (=> (not res!324115) (not e!307536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!527713 (= res!324115 (validKeyInArray!0 k0!2280))))

(declare-fun b!527714 () Bool)

(declare-fun res!324116 () Bool)

(assert (=> b!527714 (=> (not res!324116) (not e!307536))))

(declare-fun arrayContainsKey!0 (array!33456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!527714 (= res!324116 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!527715 () Bool)

(declare-fun res!324117 () Bool)

(assert (=> b!527715 (=> (not res!324117) (not e!307536))))

(assert (=> b!527715 (= res!324117 (validKeyInArray!0 (select (arr!16075 a!3235) j!176)))))

(declare-fun b!527716 () Bool)

(declare-fun Unit!16665 () Unit!16662)

(assert (=> b!527716 (= e!307531 Unit!16665)))

(declare-fun lt!243030 () Unit!16662)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33456 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16662)

(assert (=> b!527716 (= lt!243030 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!243036 #b00000000000000000000000000000000 (index!20416 lt!243029) (x!49409 lt!243029) mask!3524))))

(declare-fun res!324118 () Bool)

(assert (=> b!527716 (= res!324118 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243036 lt!243033 lt!243037 mask!3524) (Intermediate!4549 false (index!20416 lt!243029) (x!49409 lt!243029))))))

(assert (=> b!527716 (=> (not res!324118) (not e!307532))))

(assert (=> b!527716 e!307532))

(declare-fun b!527717 () Bool)

(assert (=> b!527717 (= e!307534 e!307530)))

(declare-fun res!324113 () Bool)

(assert (=> b!527717 (=> res!324113 e!307530)))

(assert (=> b!527717 (= res!324113 (or (bvsgt (x!49409 lt!243029) #b01111111111111111111111111111110) (bvslt lt!243036 #b00000000000000000000000000000000) (bvsge lt!243036 (size!16439 a!3235)) (bvslt (index!20416 lt!243029) #b00000000000000000000000000000000) (bvsge (index!20416 lt!243029) (size!16439 a!3235)) (not (= lt!243029 (Intermediate!4549 false (index!20416 lt!243029) (x!49409 lt!243029)))) (bvsle #b00000000000000000000000000000000 (x!49409 lt!243029))))))

(assert (=> b!527717 (= (index!20416 lt!243029) i!1204)))

(declare-fun lt!243038 () Unit!16662)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33456 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16662)

(assert (=> b!527717 (= lt!243038 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!243036 #b00000000000000000000000000000000 (index!20416 lt!243029) (x!49409 lt!243029) mask!3524))))

(assert (=> b!527717 (and (or (= (select (arr!16075 a!3235) (index!20416 lt!243029)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16075 a!3235) (index!20416 lt!243029)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16075 a!3235) (index!20416 lt!243029)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16075 a!3235) (index!20416 lt!243029)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243035 () Unit!16662)

(assert (=> b!527717 (= lt!243035 e!307531)))

(declare-fun c!62102 () Bool)

(assert (=> b!527717 (= c!62102 (= (select (arr!16075 a!3235) (index!20416 lt!243029)) (select (arr!16075 a!3235) j!176)))))

(assert (=> b!527717 (and (bvslt (x!49409 lt!243029) #b01111111111111111111111111111110) (or (= (select (arr!16075 a!3235) (index!20416 lt!243029)) (select (arr!16075 a!3235) j!176)) (= (select (arr!16075 a!3235) (index!20416 lt!243029)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16075 a!3235) (index!20416 lt!243029)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!47928 res!324123) b!527709))

(assert (= (and b!527709 res!324124) b!527715))

(assert (= (and b!527715 res!324117) b!527713))

(assert (= (and b!527713 res!324115) b!527714))

(assert (= (and b!527714 res!324116) b!527704))

(assert (= (and b!527704 res!324125) b!527703))

(assert (= (and b!527703 res!324122) b!527710))

(assert (= (and b!527710 res!324121) b!527708))

(assert (= (and b!527708 res!324120) b!527707))

(assert (= (and b!527708 (not res!324119)) b!527711))

(assert (= (and b!527711 (not res!324114)) b!527717))

(assert (= (and b!527717 c!62102) b!527716))

(assert (= (and b!527717 (not c!62102)) b!527706))

(assert (= (and b!527716 res!324118) b!527705))

(assert (= (and b!527717 (not res!324113)) b!527712))

(declare-fun m!508409 () Bool)

(assert (=> b!527707 m!508409))

(assert (=> b!527707 m!508409))

(declare-fun m!508411 () Bool)

(assert (=> b!527707 m!508411))

(declare-fun m!508413 () Bool)

(assert (=> b!527710 m!508413))

(assert (=> b!527715 m!508409))

(assert (=> b!527715 m!508409))

(declare-fun m!508415 () Bool)

(assert (=> b!527715 m!508415))

(assert (=> b!527712 m!508409))

(assert (=> b!527712 m!508409))

(declare-fun m!508417 () Bool)

(assert (=> b!527712 m!508417))

(declare-fun m!508419 () Bool)

(assert (=> b!527717 m!508419))

(declare-fun m!508421 () Bool)

(assert (=> b!527717 m!508421))

(assert (=> b!527717 m!508409))

(declare-fun m!508423 () Bool)

(assert (=> b!527704 m!508423))

(declare-fun m!508425 () Bool)

(assert (=> b!527703 m!508425))

(declare-fun m!508427 () Bool)

(assert (=> b!527708 m!508427))

(declare-fun m!508429 () Bool)

(assert (=> b!527708 m!508429))

(declare-fun m!508431 () Bool)

(assert (=> b!527708 m!508431))

(declare-fun m!508433 () Bool)

(assert (=> b!527708 m!508433))

(assert (=> b!527708 m!508409))

(declare-fun m!508435 () Bool)

(assert (=> b!527708 m!508435))

(assert (=> b!527708 m!508409))

(declare-fun m!508437 () Bool)

(assert (=> b!527708 m!508437))

(declare-fun m!508439 () Bool)

(assert (=> b!527708 m!508439))

(assert (=> b!527708 m!508409))

(declare-fun m!508441 () Bool)

(assert (=> b!527708 m!508441))

(declare-fun m!508443 () Bool)

(assert (=> b!527713 m!508443))

(declare-fun m!508445 () Bool)

(assert (=> b!527714 m!508445))

(declare-fun m!508447 () Bool)

(assert (=> b!527716 m!508447))

(declare-fun m!508449 () Bool)

(assert (=> b!527716 m!508449))

(declare-fun m!508451 () Bool)

(assert (=> start!47928 m!508451))

(declare-fun m!508453 () Bool)

(assert (=> start!47928 m!508453))

(check-sat (not b!527717) (not b!527716) (not b!527715) (not b!527707) (not b!527704) (not b!527712) (not start!47928) (not b!527713) (not b!527714) (not b!527708) (not b!527703) (not b!527710))
(check-sat)
(get-model)

(declare-fun b!527773 () Bool)

(declare-fun e!307570 () Bool)

(declare-fun e!307571 () Bool)

(assert (=> b!527773 (= e!307570 e!307571)))

(declare-fun res!324172 () Bool)

(assert (=> b!527773 (=> (not res!324172) (not e!307571))))

(declare-fun e!307572 () Bool)

(assert (=> b!527773 (= res!324172 (not e!307572))))

(declare-fun res!324173 () Bool)

(assert (=> b!527773 (=> (not res!324173) (not e!307572))))

(assert (=> b!527773 (= res!324173 (validKeyInArray!0 (select (arr!16075 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!527774 () Bool)

(declare-fun e!307573 () Bool)

(declare-fun call!31892 () Bool)

(assert (=> b!527774 (= e!307573 call!31892)))

(declare-fun b!527775 () Bool)

(assert (=> b!527775 (= e!307571 e!307573)))

(declare-fun c!62108 () Bool)

(assert (=> b!527775 (= c!62108 (validKeyInArray!0 (select (arr!16075 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80765 () Bool)

(declare-fun res!324171 () Bool)

(assert (=> d!80765 (=> res!324171 e!307570)))

(assert (=> d!80765 (= res!324171 (bvsge #b00000000000000000000000000000000 (size!16439 a!3235)))))

(assert (=> d!80765 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10283) e!307570)))

(declare-fun b!527776 () Bool)

(assert (=> b!527776 (= e!307573 call!31892)))

(declare-fun bm!31889 () Bool)

(assert (=> bm!31889 (= call!31892 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62108 (Cons!10282 (select (arr!16075 a!3235) #b00000000000000000000000000000000) Nil!10283) Nil!10283)))))

(declare-fun b!527777 () Bool)

(declare-fun contains!2781 (List!10286 (_ BitVec 64)) Bool)

(assert (=> b!527777 (= e!307572 (contains!2781 Nil!10283 (select (arr!16075 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!80765 (not res!324171)) b!527773))

(assert (= (and b!527773 res!324173) b!527777))

(assert (= (and b!527773 res!324172) b!527775))

(assert (= (and b!527775 c!62108) b!527774))

(assert (= (and b!527775 (not c!62108)) b!527776))

(assert (= (or b!527774 b!527776) bm!31889))

(declare-fun m!508501 () Bool)

(assert (=> b!527773 m!508501))

(assert (=> b!527773 m!508501))

(declare-fun m!508503 () Bool)

(assert (=> b!527773 m!508503))

(assert (=> b!527775 m!508501))

(assert (=> b!527775 m!508501))

(assert (=> b!527775 m!508503))

(assert (=> bm!31889 m!508501))

(declare-fun m!508505 () Bool)

(assert (=> bm!31889 m!508505))

(assert (=> b!527777 m!508501))

(assert (=> b!527777 m!508501))

(declare-fun m!508507 () Bool)

(assert (=> b!527777 m!508507))

(assert (=> b!527710 d!80765))

(declare-fun b!527790 () Bool)

(declare-fun e!307582 () SeekEntryResult!4549)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!527790 (= e!307582 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243036 #b00000000000000000000000000000000 mask!3524) (index!20416 lt!243029) (select (arr!16075 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!527791 () Bool)

(assert (=> b!527791 (= e!307582 (MissingVacant!4549 (index!20416 lt!243029)))))

(declare-fun b!527792 () Bool)

(declare-fun e!307581 () SeekEntryResult!4549)

(declare-fun e!307580 () SeekEntryResult!4549)

(assert (=> b!527792 (= e!307581 e!307580)))

(declare-fun c!62117 () Bool)

(declare-fun lt!243073 () (_ BitVec 64))

(assert (=> b!527792 (= c!62117 (= lt!243073 (select (arr!16075 a!3235) j!176)))))

(declare-fun lt!243074 () SeekEntryResult!4549)

(declare-fun d!80767 () Bool)

(assert (=> d!80767 (and (or ((_ is Undefined!4549) lt!243074) (not ((_ is Found!4549) lt!243074)) (and (bvsge (index!20415 lt!243074) #b00000000000000000000000000000000) (bvslt (index!20415 lt!243074) (size!16439 a!3235)))) (or ((_ is Undefined!4549) lt!243074) ((_ is Found!4549) lt!243074) (not ((_ is MissingVacant!4549) lt!243074)) (not (= (index!20417 lt!243074) (index!20416 lt!243029))) (and (bvsge (index!20417 lt!243074) #b00000000000000000000000000000000) (bvslt (index!20417 lt!243074) (size!16439 a!3235)))) (or ((_ is Undefined!4549) lt!243074) (ite ((_ is Found!4549) lt!243074) (= (select (arr!16075 a!3235) (index!20415 lt!243074)) (select (arr!16075 a!3235) j!176)) (and ((_ is MissingVacant!4549) lt!243074) (= (index!20417 lt!243074) (index!20416 lt!243029)) (= (select (arr!16075 a!3235) (index!20417 lt!243074)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!80767 (= lt!243074 e!307581)))

(declare-fun c!62116 () Bool)

(assert (=> d!80767 (= c!62116 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80767 (= lt!243073 (select (arr!16075 a!3235) lt!243036))))

(assert (=> d!80767 (validMask!0 mask!3524)))

(assert (=> d!80767 (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243036 (index!20416 lt!243029) (select (arr!16075 a!3235) j!176) a!3235 mask!3524) lt!243074)))

(declare-fun b!527793 () Bool)

(assert (=> b!527793 (= e!307581 Undefined!4549)))

(declare-fun b!527794 () Bool)

(assert (=> b!527794 (= e!307580 (Found!4549 lt!243036))))

(declare-fun b!527795 () Bool)

(declare-fun c!62115 () Bool)

(assert (=> b!527795 (= c!62115 (= lt!243073 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527795 (= e!307580 e!307582)))

(assert (= (and d!80767 c!62116) b!527793))

(assert (= (and d!80767 (not c!62116)) b!527792))

(assert (= (and b!527792 c!62117) b!527794))

(assert (= (and b!527792 (not c!62117)) b!527795))

(assert (= (and b!527795 c!62115) b!527791))

(assert (= (and b!527795 (not c!62115)) b!527790))

(declare-fun m!508509 () Bool)

(assert (=> b!527790 m!508509))

(assert (=> b!527790 m!508509))

(assert (=> b!527790 m!508409))

(declare-fun m!508511 () Bool)

(assert (=> b!527790 m!508511))

(declare-fun m!508513 () Bool)

(assert (=> d!80767 m!508513))

(declare-fun m!508515 () Bool)

(assert (=> d!80767 m!508515))

(declare-fun m!508517 () Bool)

(assert (=> d!80767 m!508517))

(assert (=> d!80767 m!508451))

(assert (=> b!527712 d!80767))

(declare-fun b!527804 () Bool)

(declare-fun e!307589 () Bool)

(declare-fun e!307591 () Bool)

(assert (=> b!527804 (= e!307589 e!307591)))

(declare-fun lt!243083 () (_ BitVec 64))

(assert (=> b!527804 (= lt!243083 (select (arr!16075 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!243082 () Unit!16662)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33456 (_ BitVec 64) (_ BitVec 32)) Unit!16662)

(assert (=> b!527804 (= lt!243082 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!243083 #b00000000000000000000000000000000))))

(assert (=> b!527804 (arrayContainsKey!0 a!3235 lt!243083 #b00000000000000000000000000000000)))

(declare-fun lt!243081 () Unit!16662)

(assert (=> b!527804 (= lt!243081 lt!243082)))

(declare-fun res!324178 () Bool)

(assert (=> b!527804 (= res!324178 (= (seekEntryOrOpen!0 (select (arr!16075 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4549 #b00000000000000000000000000000000)))))

(assert (=> b!527804 (=> (not res!324178) (not e!307591))))

(declare-fun b!527805 () Bool)

(declare-fun e!307590 () Bool)

(assert (=> b!527805 (= e!307590 e!307589)))

(declare-fun c!62120 () Bool)

(assert (=> b!527805 (= c!62120 (validKeyInArray!0 (select (arr!16075 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80769 () Bool)

(declare-fun res!324179 () Bool)

(assert (=> d!80769 (=> res!324179 e!307590)))

(assert (=> d!80769 (= res!324179 (bvsge #b00000000000000000000000000000000 (size!16439 a!3235)))))

(assert (=> d!80769 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!307590)))

(declare-fun b!527806 () Bool)

(declare-fun call!31895 () Bool)

(assert (=> b!527806 (= e!307591 call!31895)))

(declare-fun bm!31892 () Bool)

(assert (=> bm!31892 (= call!31895 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!527807 () Bool)

(assert (=> b!527807 (= e!307589 call!31895)))

(assert (= (and d!80769 (not res!324179)) b!527805))

(assert (= (and b!527805 c!62120) b!527804))

(assert (= (and b!527805 (not c!62120)) b!527807))

(assert (= (and b!527804 res!324178) b!527806))

(assert (= (or b!527806 b!527807) bm!31892))

(assert (=> b!527804 m!508501))

(declare-fun m!508519 () Bool)

(assert (=> b!527804 m!508519))

(declare-fun m!508521 () Bool)

(assert (=> b!527804 m!508521))

(assert (=> b!527804 m!508501))

(declare-fun m!508523 () Bool)

(assert (=> b!527804 m!508523))

(assert (=> b!527805 m!508501))

(assert (=> b!527805 m!508501))

(assert (=> b!527805 m!508503))

(declare-fun m!508525 () Bool)

(assert (=> bm!31892 m!508525))

(assert (=> b!527703 d!80769))

(declare-fun d!80771 () Bool)

(assert (=> d!80771 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!527713 d!80771))

(declare-fun d!80773 () Bool)

(assert (=> d!80773 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47928 d!80773))

(declare-fun d!80779 () Bool)

(assert (=> d!80779 (= (array_inv!11849 a!3235) (bvsge (size!16439 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47928 d!80779))

(declare-fun d!80781 () Bool)

(assert (=> d!80781 (= (validKeyInArray!0 (select (arr!16075 a!3235) j!176)) (and (not (= (select (arr!16075 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16075 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!527715 d!80781))

(declare-fun b!527856 () Bool)

(declare-fun e!307619 () SeekEntryResult!4549)

(declare-fun lt!243109 () SeekEntryResult!4549)

(assert (=> b!527856 (= e!307619 (Found!4549 (index!20416 lt!243109)))))

(declare-fun e!307618 () SeekEntryResult!4549)

(declare-fun b!527857 () Bool)

(assert (=> b!527857 (= e!307618 (seekKeyOrZeroReturnVacant!0 (x!49409 lt!243109) (index!20416 lt!243109) (index!20416 lt!243109) k0!2280 a!3235 mask!3524))))

(declare-fun d!80783 () Bool)

(declare-fun lt!243108 () SeekEntryResult!4549)

(assert (=> d!80783 (and (or ((_ is Undefined!4549) lt!243108) (not ((_ is Found!4549) lt!243108)) (and (bvsge (index!20415 lt!243108) #b00000000000000000000000000000000) (bvslt (index!20415 lt!243108) (size!16439 a!3235)))) (or ((_ is Undefined!4549) lt!243108) ((_ is Found!4549) lt!243108) (not ((_ is MissingZero!4549) lt!243108)) (and (bvsge (index!20414 lt!243108) #b00000000000000000000000000000000) (bvslt (index!20414 lt!243108) (size!16439 a!3235)))) (or ((_ is Undefined!4549) lt!243108) ((_ is Found!4549) lt!243108) ((_ is MissingZero!4549) lt!243108) (not ((_ is MissingVacant!4549) lt!243108)) (and (bvsge (index!20417 lt!243108) #b00000000000000000000000000000000) (bvslt (index!20417 lt!243108) (size!16439 a!3235)))) (or ((_ is Undefined!4549) lt!243108) (ite ((_ is Found!4549) lt!243108) (= (select (arr!16075 a!3235) (index!20415 lt!243108)) k0!2280) (ite ((_ is MissingZero!4549) lt!243108) (= (select (arr!16075 a!3235) (index!20414 lt!243108)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4549) lt!243108) (= (select (arr!16075 a!3235) (index!20417 lt!243108)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!307620 () SeekEntryResult!4549)

(assert (=> d!80783 (= lt!243108 e!307620)))

(declare-fun c!62145 () Bool)

(assert (=> d!80783 (= c!62145 (and ((_ is Intermediate!4549) lt!243109) (undefined!5361 lt!243109)))))

(assert (=> d!80783 (= lt!243109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!80783 (validMask!0 mask!3524)))

(assert (=> d!80783 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!243108)))

(declare-fun b!527858 () Bool)

(assert (=> b!527858 (= e!307620 Undefined!4549)))

(declare-fun b!527859 () Bool)

(assert (=> b!527859 (= e!307620 e!307619)))

(declare-fun lt!243110 () (_ BitVec 64))

(assert (=> b!527859 (= lt!243110 (select (arr!16075 a!3235) (index!20416 lt!243109)))))

(declare-fun c!62146 () Bool)

(assert (=> b!527859 (= c!62146 (= lt!243110 k0!2280))))

(declare-fun b!527861 () Bool)

(assert (=> b!527861 (= e!307618 (MissingZero!4549 (index!20416 lt!243109)))))

(declare-fun b!527863 () Bool)

(declare-fun c!62147 () Bool)

(assert (=> b!527863 (= c!62147 (= lt!243110 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527863 (= e!307619 e!307618)))

(assert (= (and d!80783 c!62145) b!527858))

(assert (= (and d!80783 (not c!62145)) b!527859))

(assert (= (and b!527859 c!62146) b!527856))

(assert (= (and b!527859 (not c!62146)) b!527863))

(assert (= (and b!527863 c!62147) b!527861))

(assert (= (and b!527863 (not c!62147)) b!527857))

(declare-fun m!508551 () Bool)

(assert (=> b!527857 m!508551))

(assert (=> d!80783 m!508451))

(declare-fun m!508553 () Bool)

(assert (=> d!80783 m!508553))

(declare-fun m!508555 () Bool)

(assert (=> d!80783 m!508555))

(declare-fun m!508557 () Bool)

(assert (=> d!80783 m!508557))

(assert (=> d!80783 m!508555))

(declare-fun m!508559 () Bool)

(assert (=> d!80783 m!508559))

(declare-fun m!508561 () Bool)

(assert (=> d!80783 m!508561))

(declare-fun m!508563 () Bool)

(assert (=> b!527859 m!508563))

(assert (=> b!527704 d!80783))

(declare-fun d!80791 () Bool)

(declare-fun res!324190 () Bool)

(declare-fun e!307632 () Bool)

(assert (=> d!80791 (=> res!324190 e!307632)))

(assert (=> d!80791 (= res!324190 (= (select (arr!16075 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!80791 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!307632)))

(declare-fun b!527878 () Bool)

(declare-fun e!307633 () Bool)

(assert (=> b!527878 (= e!307632 e!307633)))

(declare-fun res!324191 () Bool)

(assert (=> b!527878 (=> (not res!324191) (not e!307633))))

(assert (=> b!527878 (= res!324191 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16439 a!3235)))))

(declare-fun b!527879 () Bool)

(assert (=> b!527879 (= e!307633 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80791 (not res!324190)) b!527878))

(assert (= (and b!527878 res!324191) b!527879))

(assert (=> d!80791 m!508501))

(declare-fun m!508583 () Bool)

(assert (=> b!527879 m!508583))

(assert (=> b!527714 d!80791))

(declare-fun d!80797 () Bool)

(declare-fun e!307639 () Bool)

(assert (=> d!80797 e!307639))

(declare-fun res!324197 () Bool)

(assert (=> d!80797 (=> (not res!324197) (not e!307639))))

(assert (=> d!80797 (= res!324197 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16439 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16439 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16439 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16439 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16439 a!3235))))))

(declare-fun lt!243119 () Unit!16662)

(declare-fun choose!47 (array!33456 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16662)

(assert (=> d!80797 (= lt!243119 (choose!47 a!3235 i!1204 k0!2280 j!176 lt!243036 #b00000000000000000000000000000000 (index!20416 lt!243029) (x!49409 lt!243029) mask!3524))))

(assert (=> d!80797 (validMask!0 mask!3524)))

(assert (=> d!80797 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!243036 #b00000000000000000000000000000000 (index!20416 lt!243029) (x!49409 lt!243029) mask!3524) lt!243119)))

(declare-fun b!527885 () Bool)

(assert (=> b!527885 (= e!307639 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243036 (select (store (arr!16075 a!3235) i!1204 k0!2280) j!176) (array!33457 (store (arr!16075 a!3235) i!1204 k0!2280) (size!16439 a!3235)) mask!3524) (Intermediate!4549 false (index!20416 lt!243029) (x!49409 lt!243029))))))

(assert (= (and d!80797 res!324197) b!527885))

(declare-fun m!508589 () Bool)

(assert (=> d!80797 m!508589))

(assert (=> d!80797 m!508451))

(assert (=> b!527885 m!508429))

(assert (=> b!527885 m!508433))

(assert (=> b!527885 m!508433))

(declare-fun m!508591 () Bool)

(assert (=> b!527885 m!508591))

(assert (=> b!527716 d!80797))

(declare-fun b!527943 () Bool)

(declare-fun e!307673 () SeekEntryResult!4549)

(assert (=> b!527943 (= e!307673 (Intermediate!4549 false lt!243036 #b00000000000000000000000000000000))))

(declare-fun b!527944 () Bool)

(declare-fun lt!243137 () SeekEntryResult!4549)

(assert (=> b!527944 (and (bvsge (index!20416 lt!243137) #b00000000000000000000000000000000) (bvslt (index!20416 lt!243137) (size!16439 lt!243037)))))

(declare-fun e!307671 () Bool)

(assert (=> b!527944 (= e!307671 (= (select (arr!16075 lt!243037) (index!20416 lt!243137)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!80805 () Bool)

(declare-fun e!307672 () Bool)

(assert (=> d!80805 e!307672))

(declare-fun c!62172 () Bool)

(assert (=> d!80805 (= c!62172 (and ((_ is Intermediate!4549) lt!243137) (undefined!5361 lt!243137)))))

(declare-fun e!307675 () SeekEntryResult!4549)

(assert (=> d!80805 (= lt!243137 e!307675)))

(declare-fun c!62174 () Bool)

(assert (=> d!80805 (= c!62174 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!243138 () (_ BitVec 64))

(assert (=> d!80805 (= lt!243138 (select (arr!16075 lt!243037) lt!243036))))

(assert (=> d!80805 (validMask!0 mask!3524)))

(assert (=> d!80805 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243036 lt!243033 lt!243037 mask!3524) lt!243137)))

(declare-fun b!527945 () Bool)

(assert (=> b!527945 (= e!307675 (Intermediate!4549 true lt!243036 #b00000000000000000000000000000000))))

(declare-fun b!527946 () Bool)

(declare-fun e!307674 () Bool)

(assert (=> b!527946 (= e!307672 e!307674)))

(declare-fun res!324213 () Bool)

(assert (=> b!527946 (= res!324213 (and ((_ is Intermediate!4549) lt!243137) (not (undefined!5361 lt!243137)) (bvslt (x!49409 lt!243137) #b01111111111111111111111111111110) (bvsge (x!49409 lt!243137) #b00000000000000000000000000000000) (bvsge (x!49409 lt!243137) #b00000000000000000000000000000000)))))

(assert (=> b!527946 (=> (not res!324213) (not e!307674))))

(declare-fun b!527947 () Bool)

(assert (=> b!527947 (and (bvsge (index!20416 lt!243137) #b00000000000000000000000000000000) (bvslt (index!20416 lt!243137) (size!16439 lt!243037)))))

(declare-fun res!324215 () Bool)

(assert (=> b!527947 (= res!324215 (= (select (arr!16075 lt!243037) (index!20416 lt!243137)) lt!243033))))

(assert (=> b!527947 (=> res!324215 e!307671)))

(assert (=> b!527947 (= e!307674 e!307671)))

(declare-fun b!527948 () Bool)

(assert (=> b!527948 (= e!307672 (bvsge (x!49409 lt!243137) #b01111111111111111111111111111110))))

(declare-fun b!527949 () Bool)

(assert (=> b!527949 (= e!307673 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243036 #b00000000000000000000000000000000 mask!3524) lt!243033 lt!243037 mask!3524))))

(declare-fun b!527950 () Bool)

(assert (=> b!527950 (= e!307675 e!307673)))

(declare-fun c!62173 () Bool)

(assert (=> b!527950 (= c!62173 (or (= lt!243138 lt!243033) (= (bvadd lt!243138 lt!243138) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527951 () Bool)

(assert (=> b!527951 (and (bvsge (index!20416 lt!243137) #b00000000000000000000000000000000) (bvslt (index!20416 lt!243137) (size!16439 lt!243037)))))

(declare-fun res!324214 () Bool)

(assert (=> b!527951 (= res!324214 (= (select (arr!16075 lt!243037) (index!20416 lt!243137)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527951 (=> res!324214 e!307671)))

(assert (= (and d!80805 c!62174) b!527945))

(assert (= (and d!80805 (not c!62174)) b!527950))

(assert (= (and b!527950 c!62173) b!527943))

(assert (= (and b!527950 (not c!62173)) b!527949))

(assert (= (and d!80805 c!62172) b!527948))

(assert (= (and d!80805 (not c!62172)) b!527946))

(assert (= (and b!527946 res!324213) b!527947))

(assert (= (and b!527947 (not res!324215)) b!527951))

(assert (= (and b!527951 (not res!324214)) b!527944))

(assert (=> b!527949 m!508509))

(assert (=> b!527949 m!508509))

(declare-fun m!508601 () Bool)

(assert (=> b!527949 m!508601))

(declare-fun m!508603 () Bool)

(assert (=> b!527951 m!508603))

(declare-fun m!508605 () Bool)

(assert (=> d!80805 m!508605))

(assert (=> d!80805 m!508451))

(assert (=> b!527947 m!508603))

(assert (=> b!527944 m!508603))

(assert (=> b!527716 d!80805))

(declare-fun b!527952 () Bool)

(declare-fun e!307677 () SeekEntryResult!4549)

(declare-fun lt!243140 () SeekEntryResult!4549)

(assert (=> b!527952 (= e!307677 (Found!4549 (index!20416 lt!243140)))))

(declare-fun b!527953 () Bool)

(declare-fun e!307676 () SeekEntryResult!4549)

(assert (=> b!527953 (= e!307676 (seekKeyOrZeroReturnVacant!0 (x!49409 lt!243140) (index!20416 lt!243140) (index!20416 lt!243140) (select (arr!16075 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!80811 () Bool)

(declare-fun lt!243139 () SeekEntryResult!4549)

(assert (=> d!80811 (and (or ((_ is Undefined!4549) lt!243139) (not ((_ is Found!4549) lt!243139)) (and (bvsge (index!20415 lt!243139) #b00000000000000000000000000000000) (bvslt (index!20415 lt!243139) (size!16439 a!3235)))) (or ((_ is Undefined!4549) lt!243139) ((_ is Found!4549) lt!243139) (not ((_ is MissingZero!4549) lt!243139)) (and (bvsge (index!20414 lt!243139) #b00000000000000000000000000000000) (bvslt (index!20414 lt!243139) (size!16439 a!3235)))) (or ((_ is Undefined!4549) lt!243139) ((_ is Found!4549) lt!243139) ((_ is MissingZero!4549) lt!243139) (not ((_ is MissingVacant!4549) lt!243139)) (and (bvsge (index!20417 lt!243139) #b00000000000000000000000000000000) (bvslt (index!20417 lt!243139) (size!16439 a!3235)))) (or ((_ is Undefined!4549) lt!243139) (ite ((_ is Found!4549) lt!243139) (= (select (arr!16075 a!3235) (index!20415 lt!243139)) (select (arr!16075 a!3235) j!176)) (ite ((_ is MissingZero!4549) lt!243139) (= (select (arr!16075 a!3235) (index!20414 lt!243139)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4549) lt!243139) (= (select (arr!16075 a!3235) (index!20417 lt!243139)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!307678 () SeekEntryResult!4549)

(assert (=> d!80811 (= lt!243139 e!307678)))

(declare-fun c!62175 () Bool)

(assert (=> d!80811 (= c!62175 (and ((_ is Intermediate!4549) lt!243140) (undefined!5361 lt!243140)))))

(assert (=> d!80811 (= lt!243140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16075 a!3235) j!176) mask!3524) (select (arr!16075 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80811 (validMask!0 mask!3524)))

(assert (=> d!80811 (= (seekEntryOrOpen!0 (select (arr!16075 a!3235) j!176) a!3235 mask!3524) lt!243139)))

(declare-fun b!527954 () Bool)

(assert (=> b!527954 (= e!307678 Undefined!4549)))

(declare-fun b!527955 () Bool)

(assert (=> b!527955 (= e!307678 e!307677)))

(declare-fun lt!243141 () (_ BitVec 64))

(assert (=> b!527955 (= lt!243141 (select (arr!16075 a!3235) (index!20416 lt!243140)))))

(declare-fun c!62176 () Bool)

(assert (=> b!527955 (= c!62176 (= lt!243141 (select (arr!16075 a!3235) j!176)))))

(declare-fun b!527956 () Bool)

(assert (=> b!527956 (= e!307676 (MissingZero!4549 (index!20416 lt!243140)))))

(declare-fun b!527957 () Bool)

(declare-fun c!62177 () Bool)

(assert (=> b!527957 (= c!62177 (= lt!243141 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527957 (= e!307677 e!307676)))

(assert (= (and d!80811 c!62175) b!527954))

(assert (= (and d!80811 (not c!62175)) b!527955))

(assert (= (and b!527955 c!62176) b!527952))

(assert (= (and b!527955 (not c!62176)) b!527957))

(assert (= (and b!527957 c!62177) b!527956))

(assert (= (and b!527957 (not c!62177)) b!527953))

(assert (=> b!527953 m!508409))

(declare-fun m!508607 () Bool)

(assert (=> b!527953 m!508607))

(assert (=> d!80811 m!508451))

(declare-fun m!508609 () Bool)

(assert (=> d!80811 m!508609))

(assert (=> d!80811 m!508435))

(assert (=> d!80811 m!508409))

(declare-fun m!508611 () Bool)

(assert (=> d!80811 m!508611))

(assert (=> d!80811 m!508409))

(assert (=> d!80811 m!508435))

(declare-fun m!508613 () Bool)

(assert (=> d!80811 m!508613))

(declare-fun m!508615 () Bool)

(assert (=> d!80811 m!508615))

(declare-fun m!508617 () Bool)

(assert (=> b!527955 m!508617))

(assert (=> b!527707 d!80811))

(declare-fun d!80813 () Bool)

(assert (=> d!80813 (= (index!20416 lt!243029) i!1204)))

(declare-fun lt!243146 () Unit!16662)

(declare-fun choose!104 (array!33456 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16662)

(assert (=> d!80813 (= lt!243146 (choose!104 a!3235 i!1204 k0!2280 j!176 lt!243036 #b00000000000000000000000000000000 (index!20416 lt!243029) (x!49409 lt!243029) mask!3524))))

(assert (=> d!80813 (validMask!0 mask!3524)))

(assert (=> d!80813 (= (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!243036 #b00000000000000000000000000000000 (index!20416 lt!243029) (x!49409 lt!243029) mask!3524) lt!243146)))

(declare-fun bs!16544 () Bool)

(assert (= bs!16544 d!80813))

(declare-fun m!508629 () Bool)

(assert (=> bs!16544 m!508629))

(assert (=> bs!16544 m!508451))

(assert (=> b!527717 d!80813))

(declare-fun d!80819 () Bool)

(declare-fun lt!243152 () (_ BitVec 32))

(declare-fun lt!243151 () (_ BitVec 32))

(assert (=> d!80819 (= lt!243152 (bvmul (bvxor lt!243151 (bvlshr lt!243151 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80819 (= lt!243151 ((_ extract 31 0) (bvand (bvxor (select (arr!16075 a!3235) j!176) (bvlshr (select (arr!16075 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80819 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!324216 (let ((h!11218 ((_ extract 31 0) (bvand (bvxor (select (arr!16075 a!3235) j!176) (bvlshr (select (arr!16075 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49421 (bvmul (bvxor h!11218 (bvlshr h!11218 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49421 (bvlshr x!49421 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!324216 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!324216 #b00000000000000000000000000000000))))))

(assert (=> d!80819 (= (toIndex!0 (select (arr!16075 a!3235) j!176) mask!3524) (bvand (bvxor lt!243152 (bvlshr lt!243152 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!527708 d!80819))

(declare-fun b!527974 () Bool)

(declare-fun e!307690 () Bool)

(declare-fun e!307692 () Bool)

(assert (=> b!527974 (= e!307690 e!307692)))

(declare-fun lt!243155 () (_ BitVec 64))

(assert (=> b!527974 (= lt!243155 (select (arr!16075 a!3235) j!176))))

(declare-fun lt!243154 () Unit!16662)

(assert (=> b!527974 (= lt!243154 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!243155 j!176))))

(assert (=> b!527974 (arrayContainsKey!0 a!3235 lt!243155 #b00000000000000000000000000000000)))

(declare-fun lt!243153 () Unit!16662)

(assert (=> b!527974 (= lt!243153 lt!243154)))

(declare-fun res!324223 () Bool)

(assert (=> b!527974 (= res!324223 (= (seekEntryOrOpen!0 (select (arr!16075 a!3235) j!176) a!3235 mask!3524) (Found!4549 j!176)))))

(assert (=> b!527974 (=> (not res!324223) (not e!307692))))

(declare-fun b!527975 () Bool)

(declare-fun e!307691 () Bool)

(assert (=> b!527975 (= e!307691 e!307690)))

(declare-fun c!62183 () Bool)

(assert (=> b!527975 (= c!62183 (validKeyInArray!0 (select (arr!16075 a!3235) j!176)))))

(declare-fun d!80821 () Bool)

(declare-fun res!324224 () Bool)

(assert (=> d!80821 (=> res!324224 e!307691)))

(assert (=> d!80821 (= res!324224 (bvsge j!176 (size!16439 a!3235)))))

(assert (=> d!80821 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!307691)))

(declare-fun b!527976 () Bool)

(declare-fun call!31898 () Bool)

(assert (=> b!527976 (= e!307692 call!31898)))

(declare-fun bm!31895 () Bool)

(assert (=> bm!31895 (= call!31898 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!527977 () Bool)

(assert (=> b!527977 (= e!307690 call!31898)))

(assert (= (and d!80821 (not res!324224)) b!527975))

(assert (= (and b!527975 c!62183) b!527974))

(assert (= (and b!527975 (not c!62183)) b!527977))

(assert (= (and b!527974 res!324223) b!527976))

(assert (= (or b!527976 b!527977) bm!31895))

(assert (=> b!527974 m!508409))

(declare-fun m!508631 () Bool)

(assert (=> b!527974 m!508631))

(declare-fun m!508633 () Bool)

(assert (=> b!527974 m!508633))

(assert (=> b!527974 m!508409))

(assert (=> b!527974 m!508411))

(assert (=> b!527975 m!508409))

(assert (=> b!527975 m!508409))

(assert (=> b!527975 m!508415))

(declare-fun m!508635 () Bool)

(assert (=> bm!31895 m!508635))

(assert (=> b!527708 d!80821))

(declare-fun b!527978 () Bool)

(declare-fun e!307695 () SeekEntryResult!4549)

(assert (=> b!527978 (= e!307695 (Intermediate!4549 false lt!243036 #b00000000000000000000000000000000))))

(declare-fun b!527979 () Bool)

(declare-fun lt!243156 () SeekEntryResult!4549)

(assert (=> b!527979 (and (bvsge (index!20416 lt!243156) #b00000000000000000000000000000000) (bvslt (index!20416 lt!243156) (size!16439 a!3235)))))

(declare-fun e!307693 () Bool)

(assert (=> b!527979 (= e!307693 (= (select (arr!16075 a!3235) (index!20416 lt!243156)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!80823 () Bool)

(declare-fun e!307694 () Bool)

(assert (=> d!80823 e!307694))

(declare-fun c!62184 () Bool)

(assert (=> d!80823 (= c!62184 (and ((_ is Intermediate!4549) lt!243156) (undefined!5361 lt!243156)))))

(declare-fun e!307697 () SeekEntryResult!4549)

(assert (=> d!80823 (= lt!243156 e!307697)))

(declare-fun c!62186 () Bool)

(assert (=> d!80823 (= c!62186 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!243157 () (_ BitVec 64))

(assert (=> d!80823 (= lt!243157 (select (arr!16075 a!3235) lt!243036))))

(assert (=> d!80823 (validMask!0 mask!3524)))

(assert (=> d!80823 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243036 (select (arr!16075 a!3235) j!176) a!3235 mask!3524) lt!243156)))

(declare-fun b!527980 () Bool)

(assert (=> b!527980 (= e!307697 (Intermediate!4549 true lt!243036 #b00000000000000000000000000000000))))

(declare-fun b!527981 () Bool)

(declare-fun e!307696 () Bool)

(assert (=> b!527981 (= e!307694 e!307696)))

(declare-fun res!324225 () Bool)

(assert (=> b!527981 (= res!324225 (and ((_ is Intermediate!4549) lt!243156) (not (undefined!5361 lt!243156)) (bvslt (x!49409 lt!243156) #b01111111111111111111111111111110) (bvsge (x!49409 lt!243156) #b00000000000000000000000000000000) (bvsge (x!49409 lt!243156) #b00000000000000000000000000000000)))))

(assert (=> b!527981 (=> (not res!324225) (not e!307696))))

(declare-fun b!527982 () Bool)

(assert (=> b!527982 (and (bvsge (index!20416 lt!243156) #b00000000000000000000000000000000) (bvslt (index!20416 lt!243156) (size!16439 a!3235)))))

(declare-fun res!324227 () Bool)

(assert (=> b!527982 (= res!324227 (= (select (arr!16075 a!3235) (index!20416 lt!243156)) (select (arr!16075 a!3235) j!176)))))

(assert (=> b!527982 (=> res!324227 e!307693)))

(assert (=> b!527982 (= e!307696 e!307693)))

(declare-fun b!527983 () Bool)

(assert (=> b!527983 (= e!307694 (bvsge (x!49409 lt!243156) #b01111111111111111111111111111110))))

(declare-fun b!527984 () Bool)

(assert (=> b!527984 (= e!307695 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243036 #b00000000000000000000000000000000 mask!3524) (select (arr!16075 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!527985 () Bool)

(assert (=> b!527985 (= e!307697 e!307695)))

(declare-fun c!62185 () Bool)

(assert (=> b!527985 (= c!62185 (or (= lt!243157 (select (arr!16075 a!3235) j!176)) (= (bvadd lt!243157 lt!243157) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!527986 () Bool)

(assert (=> b!527986 (and (bvsge (index!20416 lt!243156) #b00000000000000000000000000000000) (bvslt (index!20416 lt!243156) (size!16439 a!3235)))))

(declare-fun res!324226 () Bool)

(assert (=> b!527986 (= res!324226 (= (select (arr!16075 a!3235) (index!20416 lt!243156)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!527986 (=> res!324226 e!307693)))

(assert (= (and d!80823 c!62186) b!527980))

(assert (= (and d!80823 (not c!62186)) b!527985))

(assert (= (and b!527985 c!62185) b!527978))

(assert (= (and b!527985 (not c!62185)) b!527984))

(assert (= (and d!80823 c!62184) b!527983))

(assert (= (and d!80823 (not c!62184)) b!527981))

(assert (= (and b!527981 res!324225) b!527982))

(assert (= (and b!527982 (not res!324227)) b!527986))

(assert (= (and b!527986 (not res!324226)) b!527979))

(assert (=> b!527984 m!508509))

(assert (=> b!527984 m!508509))

(assert (=> b!527984 m!508409))

(declare-fun m!508637 () Bool)

(assert (=> b!527984 m!508637))

(declare-fun m!508639 () Bool)

(assert (=> b!527986 m!508639))

(assert (=> d!80823 m!508517))

(assert (=> d!80823 m!508451))

(assert (=> b!527982 m!508639))

(assert (=> b!527979 m!508639))

(assert (=> b!527708 d!80823))

(declare-fun d!80825 () Bool)

(declare-fun lt!243159 () (_ BitVec 32))

(declare-fun lt!243158 () (_ BitVec 32))

(assert (=> d!80825 (= lt!243159 (bvmul (bvxor lt!243158 (bvlshr lt!243158 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80825 (= lt!243158 ((_ extract 31 0) (bvand (bvxor lt!243033 (bvlshr lt!243033 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80825 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!324216 (let ((h!11218 ((_ extract 31 0) (bvand (bvxor lt!243033 (bvlshr lt!243033 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49421 (bvmul (bvxor h!11218 (bvlshr h!11218 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49421 (bvlshr x!49421 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!324216 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!324216 #b00000000000000000000000000000000))))))

(assert (=> d!80825 (= (toIndex!0 lt!243033 mask!3524) (bvand (bvxor lt!243159 (bvlshr lt!243159 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!527708 d!80825))

(declare-fun d!80827 () Bool)

(assert (=> d!80827 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!243168 () Unit!16662)

(declare-fun choose!38 (array!33456 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16662)

(assert (=> d!80827 (= lt!243168 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80827 (validMask!0 mask!3524)))

(assert (=> d!80827 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!243168)))

(declare-fun bs!16545 () Bool)

(assert (= bs!16545 d!80827))

(assert (=> bs!16545 m!508437))

(declare-fun m!508649 () Bool)

(assert (=> bs!16545 m!508649))

(assert (=> bs!16545 m!508451))

(assert (=> b!527708 d!80827))

(declare-fun b!528010 () Bool)

(declare-fun e!307716 () SeekEntryResult!4549)

(assert (=> b!528010 (= e!307716 (Intermediate!4549 false lt!243032 #b00000000000000000000000000000000))))

(declare-fun b!528011 () Bool)

(declare-fun lt!243169 () SeekEntryResult!4549)

(assert (=> b!528011 (and (bvsge (index!20416 lt!243169) #b00000000000000000000000000000000) (bvslt (index!20416 lt!243169) (size!16439 lt!243037)))))

(declare-fun e!307714 () Bool)

(assert (=> b!528011 (= e!307714 (= (select (arr!16075 lt!243037) (index!20416 lt!243169)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!80831 () Bool)

(declare-fun e!307715 () Bool)

(assert (=> d!80831 e!307715))

(declare-fun c!62194 () Bool)

(assert (=> d!80831 (= c!62194 (and ((_ is Intermediate!4549) lt!243169) (undefined!5361 lt!243169)))))

(declare-fun e!307718 () SeekEntryResult!4549)

(assert (=> d!80831 (= lt!243169 e!307718)))

(declare-fun c!62196 () Bool)

(assert (=> d!80831 (= c!62196 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!243170 () (_ BitVec 64))

(assert (=> d!80831 (= lt!243170 (select (arr!16075 lt!243037) lt!243032))))

(assert (=> d!80831 (validMask!0 mask!3524)))

(assert (=> d!80831 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243032 lt!243033 lt!243037 mask!3524) lt!243169)))

(declare-fun b!528012 () Bool)

(assert (=> b!528012 (= e!307718 (Intermediate!4549 true lt!243032 #b00000000000000000000000000000000))))

(declare-fun b!528013 () Bool)

(declare-fun e!307717 () Bool)

(assert (=> b!528013 (= e!307715 e!307717)))

(declare-fun res!324237 () Bool)

(assert (=> b!528013 (= res!324237 (and ((_ is Intermediate!4549) lt!243169) (not (undefined!5361 lt!243169)) (bvslt (x!49409 lt!243169) #b01111111111111111111111111111110) (bvsge (x!49409 lt!243169) #b00000000000000000000000000000000) (bvsge (x!49409 lt!243169) #b00000000000000000000000000000000)))))

(assert (=> b!528013 (=> (not res!324237) (not e!307717))))

(declare-fun b!528014 () Bool)

(assert (=> b!528014 (and (bvsge (index!20416 lt!243169) #b00000000000000000000000000000000) (bvslt (index!20416 lt!243169) (size!16439 lt!243037)))))

(declare-fun res!324239 () Bool)

(assert (=> b!528014 (= res!324239 (= (select (arr!16075 lt!243037) (index!20416 lt!243169)) lt!243033))))

(assert (=> b!528014 (=> res!324239 e!307714)))

(assert (=> b!528014 (= e!307717 e!307714)))

(declare-fun b!528015 () Bool)

(assert (=> b!528015 (= e!307715 (bvsge (x!49409 lt!243169) #b01111111111111111111111111111110))))

(declare-fun b!528016 () Bool)

(assert (=> b!528016 (= e!307716 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243032 #b00000000000000000000000000000000 mask!3524) lt!243033 lt!243037 mask!3524))))

(declare-fun b!528017 () Bool)

(assert (=> b!528017 (= e!307718 e!307716)))

(declare-fun c!62195 () Bool)

(assert (=> b!528017 (= c!62195 (or (= lt!243170 lt!243033) (= (bvadd lt!243170 lt!243170) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528018 () Bool)

(assert (=> b!528018 (and (bvsge (index!20416 lt!243169) #b00000000000000000000000000000000) (bvslt (index!20416 lt!243169) (size!16439 lt!243037)))))

(declare-fun res!324238 () Bool)

(assert (=> b!528018 (= res!324238 (= (select (arr!16075 lt!243037) (index!20416 lt!243169)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!528018 (=> res!324238 e!307714)))

(assert (= (and d!80831 c!62196) b!528012))

(assert (= (and d!80831 (not c!62196)) b!528017))

(assert (= (and b!528017 c!62195) b!528010))

(assert (= (and b!528017 (not c!62195)) b!528016))

(assert (= (and d!80831 c!62194) b!528015))

(assert (= (and d!80831 (not c!62194)) b!528013))

(assert (= (and b!528013 res!324237) b!528014))

(assert (= (and b!528014 (not res!324239)) b!528018))

(assert (= (and b!528018 (not res!324238)) b!528011))

(declare-fun m!508653 () Bool)

(assert (=> b!528016 m!508653))

(assert (=> b!528016 m!508653))

(declare-fun m!508655 () Bool)

(assert (=> b!528016 m!508655))

(declare-fun m!508657 () Bool)

(assert (=> b!528018 m!508657))

(declare-fun m!508659 () Bool)

(assert (=> d!80831 m!508659))

(assert (=> d!80831 m!508451))

(assert (=> b!528014 m!508657))

(assert (=> b!528011 m!508657))

(assert (=> b!527708 d!80831))

(check-sat (not d!80831) (not b!527949) (not b!527804) (not d!80783) (not b!527857) (not d!80805) (not b!527879) (not d!80813) (not b!527805) (not b!527790) (not b!528016) (not d!80767) (not bm!31895) (not bm!31889) (not b!527773) (not b!527974) (not d!80797) (not d!80811) (not bm!31892) (not d!80827) (not b!527777) (not b!527953) (not b!527885) (not b!527975) (not b!527984) (not b!527775) (not d!80823))
(check-sat)
