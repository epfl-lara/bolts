; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45492 () Bool)

(assert start!45492)

(declare-fun b!500613 () Bool)

(declare-fun res!302554 () Bool)

(declare-fun e!293293 () Bool)

(assert (=> b!500613 (=> res!302554 e!293293)))

(declare-datatypes ((SeekEntryResult!3991 0))(
  ( (MissingZero!3991 (index!18146 (_ BitVec 32))) (Found!3991 (index!18147 (_ BitVec 32))) (Intermediate!3991 (undefined!4803 Bool) (index!18148 (_ BitVec 32)) (x!47207 (_ BitVec 32))) (Undefined!3991) (MissingVacant!3991 (index!18149 (_ BitVec 32))) )
))
(declare-fun lt!227321 () SeekEntryResult!3991)

(get-info :version)

(assert (=> b!500613 (= res!302554 (or (undefined!4803 lt!227321) (not ((_ is Intermediate!3991) lt!227321))))))

(declare-fun b!500614 () Bool)

(declare-fun e!293292 () Bool)

(assert (=> b!500614 (= e!293292 (not e!293293))))

(declare-fun res!302544 () Bool)

(assert (=> b!500614 (=> res!302544 e!293293)))

(declare-fun lt!227322 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!227324 () (_ BitVec 32))

(declare-datatypes ((array!32277 0))(
  ( (array!32278 (arr!15517 (Array (_ BitVec 32) (_ BitVec 64))) (size!15881 (_ BitVec 32))) )
))
(declare-fun lt!227329 () array!32277)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32277 (_ BitVec 32)) SeekEntryResult!3991)

(assert (=> b!500614 (= res!302544 (= lt!227321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227324 lt!227322 lt!227329 mask!3524)))))

(declare-fun lt!227326 () (_ BitVec 32))

(declare-fun a!3235 () array!32277)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!500614 (= lt!227321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227326 (select (arr!15517 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500614 (= lt!227324 (toIndex!0 lt!227322 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500614 (= lt!227322 (select (store (arr!15517 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!500614 (= lt!227326 (toIndex!0 (select (arr!15517 a!3235) j!176) mask!3524))))

(assert (=> b!500614 (= lt!227329 (array!32278 (store (arr!15517 a!3235) i!1204 k0!2280) (size!15881 a!3235)))))

(declare-fun e!293295 () Bool)

(assert (=> b!500614 e!293295))

(declare-fun res!302547 () Bool)

(assert (=> b!500614 (=> (not res!302547) (not e!293295))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32277 (_ BitVec 32)) Bool)

(assert (=> b!500614 (= res!302547 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15054 0))(
  ( (Unit!15055) )
))
(declare-fun lt!227330 () Unit!15054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32277 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15054)

(assert (=> b!500614 (= lt!227330 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500615 () Bool)

(declare-fun res!302552 () Bool)

(declare-fun e!293297 () Bool)

(assert (=> b!500615 (=> (not res!302552) (not e!293297))))

(assert (=> b!500615 (= res!302552 (and (= (size!15881 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15881 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15881 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500616 () Bool)

(declare-fun res!302549 () Bool)

(assert (=> b!500616 (=> (not res!302549) (not e!293297))))

(declare-fun arrayContainsKey!0 (array!32277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500616 (= res!302549 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500617 () Bool)

(declare-fun res!302551 () Bool)

(assert (=> b!500617 (=> (not res!302551) (not e!293292))))

(assert (=> b!500617 (= res!302551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500618 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32277 (_ BitVec 32)) SeekEntryResult!3991)

(assert (=> b!500618 (= e!293295 (= (seekEntryOrOpen!0 (select (arr!15517 a!3235) j!176) a!3235 mask!3524) (Found!3991 j!176)))))

(declare-fun b!500619 () Bool)

(declare-fun e!293294 () Bool)

(assert (=> b!500619 (= e!293293 e!293294)))

(declare-fun res!302546 () Bool)

(assert (=> b!500619 (=> res!302546 e!293294)))

(assert (=> b!500619 (= res!302546 (or (bvsgt #b00000000000000000000000000000000 (x!47207 lt!227321)) (bvsgt (x!47207 lt!227321) #b01111111111111111111111111111110) (bvslt lt!227326 #b00000000000000000000000000000000) (bvsge lt!227326 (size!15881 a!3235)) (bvslt (index!18148 lt!227321) #b00000000000000000000000000000000) (bvsge (index!18148 lt!227321) (size!15881 a!3235)) (not (= lt!227321 (Intermediate!3991 false (index!18148 lt!227321) (x!47207 lt!227321))))))))

(assert (=> b!500619 (and (or (= (select (arr!15517 a!3235) (index!18148 lt!227321)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15517 a!3235) (index!18148 lt!227321)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15517 a!3235) (index!18148 lt!227321)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15517 a!3235) (index!18148 lt!227321)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227323 () Unit!15054)

(declare-fun e!293299 () Unit!15054)

(assert (=> b!500619 (= lt!227323 e!293299)))

(declare-fun c!59312 () Bool)

(assert (=> b!500619 (= c!59312 (= (select (arr!15517 a!3235) (index!18148 lt!227321)) (select (arr!15517 a!3235) j!176)))))

(assert (=> b!500619 (and (bvslt (x!47207 lt!227321) #b01111111111111111111111111111110) (or (= (select (arr!15517 a!3235) (index!18148 lt!227321)) (select (arr!15517 a!3235) j!176)) (= (select (arr!15517 a!3235) (index!18148 lt!227321)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15517 a!3235) (index!18148 lt!227321)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500620 () Bool)

(declare-fun res!302548 () Bool)

(assert (=> b!500620 (=> (not res!302548) (not e!293297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500620 (= res!302548 (validKeyInArray!0 k0!2280))))

(declare-fun b!500622 () Bool)

(declare-fun Unit!15056 () Unit!15054)

(assert (=> b!500622 (= e!293299 Unit!15056)))

(declare-fun b!500623 () Bool)

(assert (=> b!500623 (= e!293297 e!293292)))

(declare-fun res!302553 () Bool)

(assert (=> b!500623 (=> (not res!302553) (not e!293292))))

(declare-fun lt!227328 () SeekEntryResult!3991)

(assert (=> b!500623 (= res!302553 (or (= lt!227328 (MissingZero!3991 i!1204)) (= lt!227328 (MissingVacant!3991 i!1204))))))

(assert (=> b!500623 (= lt!227328 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!500624 () Bool)

(declare-fun res!302545 () Bool)

(assert (=> b!500624 (=> (not res!302545) (not e!293292))))

(declare-datatypes ((List!9728 0))(
  ( (Nil!9725) (Cons!9724 (h!10598 (_ BitVec 64)) (t!15964 List!9728)) )
))
(declare-fun arrayNoDuplicates!0 (array!32277 (_ BitVec 32) List!9728) Bool)

(assert (=> b!500624 (= res!302545 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9725))))

(declare-fun res!302550 () Bool)

(assert (=> start!45492 (=> (not res!302550) (not e!293297))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45492 (= res!302550 (validMask!0 mask!3524))))

(assert (=> start!45492 e!293297))

(assert (=> start!45492 true))

(declare-fun array_inv!11291 (array!32277) Bool)

(assert (=> start!45492 (array_inv!11291 a!3235)))

(declare-fun b!500621 () Bool)

(assert (=> b!500621 (= e!293294 true)))

(declare-fun lt!227325 () SeekEntryResult!3991)

(assert (=> b!500621 (= lt!227325 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227326 lt!227322 lt!227329 mask!3524))))

(declare-fun b!500625 () Bool)

(declare-fun Unit!15057 () Unit!15054)

(assert (=> b!500625 (= e!293299 Unit!15057)))

(declare-fun lt!227327 () Unit!15054)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32277 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15054)

(assert (=> b!500625 (= lt!227327 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!227326 #b00000000000000000000000000000000 (index!18148 lt!227321) (x!47207 lt!227321) mask!3524))))

(declare-fun res!302543 () Bool)

(assert (=> b!500625 (= res!302543 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227326 lt!227322 lt!227329 mask!3524) (Intermediate!3991 false (index!18148 lt!227321) (x!47207 lt!227321))))))

(declare-fun e!293296 () Bool)

(assert (=> b!500625 (=> (not res!302543) (not e!293296))))

(assert (=> b!500625 e!293296))

(declare-fun b!500626 () Bool)

(assert (=> b!500626 (= e!293296 false)))

(declare-fun b!500627 () Bool)

(declare-fun res!302555 () Bool)

(assert (=> b!500627 (=> (not res!302555) (not e!293297))))

(assert (=> b!500627 (= res!302555 (validKeyInArray!0 (select (arr!15517 a!3235) j!176)))))

(assert (= (and start!45492 res!302550) b!500615))

(assert (= (and b!500615 res!302552) b!500627))

(assert (= (and b!500627 res!302555) b!500620))

(assert (= (and b!500620 res!302548) b!500616))

(assert (= (and b!500616 res!302549) b!500623))

(assert (= (and b!500623 res!302553) b!500617))

(assert (= (and b!500617 res!302551) b!500624))

(assert (= (and b!500624 res!302545) b!500614))

(assert (= (and b!500614 res!302547) b!500618))

(assert (= (and b!500614 (not res!302544)) b!500613))

(assert (= (and b!500613 (not res!302554)) b!500619))

(assert (= (and b!500619 c!59312) b!500625))

(assert (= (and b!500619 (not c!59312)) b!500622))

(assert (= (and b!500625 res!302543) b!500626))

(assert (= (and b!500619 (not res!302546)) b!500621))

(declare-fun m!481759 () Bool)

(assert (=> b!500623 m!481759))

(declare-fun m!481761 () Bool)

(assert (=> start!45492 m!481761))

(declare-fun m!481763 () Bool)

(assert (=> start!45492 m!481763))

(declare-fun m!481765 () Bool)

(assert (=> b!500621 m!481765))

(declare-fun m!481767 () Bool)

(assert (=> b!500618 m!481767))

(assert (=> b!500618 m!481767))

(declare-fun m!481769 () Bool)

(assert (=> b!500618 m!481769))

(declare-fun m!481771 () Bool)

(assert (=> b!500620 m!481771))

(assert (=> b!500627 m!481767))

(assert (=> b!500627 m!481767))

(declare-fun m!481773 () Bool)

(assert (=> b!500627 m!481773))

(declare-fun m!481775 () Bool)

(assert (=> b!500625 m!481775))

(assert (=> b!500625 m!481765))

(declare-fun m!481777 () Bool)

(assert (=> b!500617 m!481777))

(declare-fun m!481779 () Bool)

(assert (=> b!500619 m!481779))

(assert (=> b!500619 m!481767))

(declare-fun m!481781 () Bool)

(assert (=> b!500624 m!481781))

(declare-fun m!481783 () Bool)

(assert (=> b!500614 m!481783))

(declare-fun m!481785 () Bool)

(assert (=> b!500614 m!481785))

(declare-fun m!481787 () Bool)

(assert (=> b!500614 m!481787))

(declare-fun m!481789 () Bool)

(assert (=> b!500614 m!481789))

(assert (=> b!500614 m!481767))

(declare-fun m!481791 () Bool)

(assert (=> b!500614 m!481791))

(assert (=> b!500614 m!481767))

(declare-fun m!481793 () Bool)

(assert (=> b!500614 m!481793))

(declare-fun m!481795 () Bool)

(assert (=> b!500614 m!481795))

(assert (=> b!500614 m!481767))

(declare-fun m!481797 () Bool)

(assert (=> b!500614 m!481797))

(declare-fun m!481799 () Bool)

(assert (=> b!500616 m!481799))

(check-sat (not b!500627) (not b!500614) (not b!500621) (not b!500617) (not b!500620) (not b!500618) (not b!500624) (not b!500623) (not start!45492) (not b!500625) (not b!500616))
(check-sat)
