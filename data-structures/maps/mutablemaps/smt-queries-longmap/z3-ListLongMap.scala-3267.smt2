; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45486 () Bool)

(assert start!45486)

(declare-fun b!500479 () Bool)

(declare-fun e!293222 () Bool)

(assert (=> b!500479 (= e!293222 false)))

(declare-fun b!500480 () Bool)

(declare-fun res!302435 () Bool)

(declare-fun e!293227 () Bool)

(assert (=> b!500480 (=> (not res!302435) (not e!293227))))

(declare-datatypes ((array!32271 0))(
  ( (array!32272 (arr!15514 (Array (_ BitVec 32) (_ BitVec 64))) (size!15878 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32271)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32271 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!500480 (= res!302435 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!500481 () Bool)

(declare-datatypes ((Unit!15042 0))(
  ( (Unit!15043) )
))
(declare-fun e!293223 () Unit!15042)

(declare-fun Unit!15044 () Unit!15042)

(assert (=> b!500481 (= e!293223 Unit!15044)))

(declare-fun b!500482 () Bool)

(declare-fun e!293225 () Bool)

(declare-fun e!293224 () Bool)

(assert (=> b!500482 (= e!293225 (not e!293224))))

(declare-fun res!302430 () Bool)

(assert (=> b!500482 (=> res!302430 e!293224)))

(declare-fun lt!227234 () array!32271)

(declare-fun lt!227237 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3988 0))(
  ( (MissingZero!3988 (index!18134 (_ BitVec 32))) (Found!3988 (index!18135 (_ BitVec 32))) (Intermediate!3988 (undefined!4800 Bool) (index!18136 (_ BitVec 32)) (x!47196 (_ BitVec 32))) (Undefined!3988) (MissingVacant!3988 (index!18137 (_ BitVec 32))) )
))
(declare-fun lt!227235 () SeekEntryResult!3988)

(declare-fun lt!227233 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32271 (_ BitVec 32)) SeekEntryResult!3988)

(assert (=> b!500482 (= res!302430 (= lt!227235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227237 lt!227233 lt!227234 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!227240 () (_ BitVec 32))

(assert (=> b!500482 (= lt!227235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227240 (select (arr!15514 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!500482 (= lt!227237 (toIndex!0 lt!227233 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!500482 (= lt!227233 (select (store (arr!15514 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!500482 (= lt!227240 (toIndex!0 (select (arr!15514 a!3235) j!176) mask!3524))))

(assert (=> b!500482 (= lt!227234 (array!32272 (store (arr!15514 a!3235) i!1204 k0!2280) (size!15878 a!3235)))))

(declare-fun e!293226 () Bool)

(assert (=> b!500482 e!293226))

(declare-fun res!302433 () Bool)

(assert (=> b!500482 (=> (not res!302433) (not e!293226))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32271 (_ BitVec 32)) Bool)

(assert (=> b!500482 (= res!302433 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!227231 () Unit!15042)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32271 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15042)

(assert (=> b!500482 (= lt!227231 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!500483 () Bool)

(declare-fun res!302426 () Bool)

(assert (=> b!500483 (=> (not res!302426) (not e!293227))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!500483 (= res!302426 (validKeyInArray!0 k0!2280))))

(declare-fun b!500484 () Bool)

(declare-fun res!302437 () Bool)

(assert (=> b!500484 (=> (not res!302437) (not e!293227))))

(assert (=> b!500484 (= res!302437 (validKeyInArray!0 (select (arr!15514 a!3235) j!176)))))

(declare-fun b!500485 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32271 (_ BitVec 32)) SeekEntryResult!3988)

(assert (=> b!500485 (= e!293226 (= (seekEntryOrOpen!0 (select (arr!15514 a!3235) j!176) a!3235 mask!3524) (Found!3988 j!176)))))

(declare-fun b!500486 () Bool)

(declare-fun res!302429 () Bool)

(assert (=> b!500486 (=> (not res!302429) (not e!293225))))

(assert (=> b!500486 (= res!302429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!500487 () Bool)

(declare-fun res!302428 () Bool)

(assert (=> b!500487 (=> res!302428 e!293224)))

(get-info :version)

(assert (=> b!500487 (= res!302428 (or (undefined!4800 lt!227235) (not ((_ is Intermediate!3988) lt!227235))))))

(declare-fun b!500488 () Bool)

(declare-fun res!302431 () Bool)

(assert (=> b!500488 (=> (not res!302431) (not e!293227))))

(assert (=> b!500488 (= res!302431 (and (= (size!15878 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15878 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15878 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!500489 () Bool)

(declare-fun res!302438 () Bool)

(assert (=> b!500489 (=> (not res!302438) (not e!293225))))

(declare-datatypes ((List!9725 0))(
  ( (Nil!9722) (Cons!9721 (h!10595 (_ BitVec 64)) (t!15961 List!9725)) )
))
(declare-fun arrayNoDuplicates!0 (array!32271 (_ BitVec 32) List!9725) Bool)

(assert (=> b!500489 (= res!302438 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9722))))

(declare-fun b!500490 () Bool)

(declare-fun e!293221 () Bool)

(assert (=> b!500490 (= e!293224 e!293221)))

(declare-fun res!302427 () Bool)

(assert (=> b!500490 (=> res!302427 e!293221)))

(assert (=> b!500490 (= res!302427 (or (bvsgt #b00000000000000000000000000000000 (x!47196 lt!227235)) (bvsgt (x!47196 lt!227235) #b01111111111111111111111111111110) (bvslt lt!227240 #b00000000000000000000000000000000) (bvsge lt!227240 (size!15878 a!3235)) (bvslt (index!18136 lt!227235) #b00000000000000000000000000000000) (bvsge (index!18136 lt!227235) (size!15878 a!3235)) (not (= lt!227235 (Intermediate!3988 false (index!18136 lt!227235) (x!47196 lt!227235))))))))

(assert (=> b!500490 (and (or (= (select (arr!15514 a!3235) (index!18136 lt!227235)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15514 a!3235) (index!18136 lt!227235)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15514 a!3235) (index!18136 lt!227235)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15514 a!3235) (index!18136 lt!227235)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!227236 () Unit!15042)

(assert (=> b!500490 (= lt!227236 e!293223)))

(declare-fun c!59303 () Bool)

(assert (=> b!500490 (= c!59303 (= (select (arr!15514 a!3235) (index!18136 lt!227235)) (select (arr!15514 a!3235) j!176)))))

(assert (=> b!500490 (and (bvslt (x!47196 lt!227235) #b01111111111111111111111111111110) (or (= (select (arr!15514 a!3235) (index!18136 lt!227235)) (select (arr!15514 a!3235) j!176)) (= (select (arr!15514 a!3235) (index!18136 lt!227235)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15514 a!3235) (index!18136 lt!227235)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!500478 () Bool)

(assert (=> b!500478 (= e!293227 e!293225)))

(declare-fun res!302434 () Bool)

(assert (=> b!500478 (=> (not res!302434) (not e!293225))))

(declare-fun lt!227232 () SeekEntryResult!3988)

(assert (=> b!500478 (= res!302434 (or (= lt!227232 (MissingZero!3988 i!1204)) (= lt!227232 (MissingVacant!3988 i!1204))))))

(assert (=> b!500478 (= lt!227232 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun res!302432 () Bool)

(assert (=> start!45486 (=> (not res!302432) (not e!293227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45486 (= res!302432 (validMask!0 mask!3524))))

(assert (=> start!45486 e!293227))

(assert (=> start!45486 true))

(declare-fun array_inv!11288 (array!32271) Bool)

(assert (=> start!45486 (array_inv!11288 a!3235)))

(declare-fun b!500491 () Bool)

(declare-fun Unit!15045 () Unit!15042)

(assert (=> b!500491 (= e!293223 Unit!15045)))

(declare-fun lt!227238 () Unit!15042)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32271 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15042)

(assert (=> b!500491 (= lt!227238 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!227240 #b00000000000000000000000000000000 (index!18136 lt!227235) (x!47196 lt!227235) mask!3524))))

(declare-fun res!302436 () Bool)

(assert (=> b!500491 (= res!302436 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227240 lt!227233 lt!227234 mask!3524) (Intermediate!3988 false (index!18136 lt!227235) (x!47196 lt!227235))))))

(assert (=> b!500491 (=> (not res!302436) (not e!293222))))

(assert (=> b!500491 e!293222))

(declare-fun b!500492 () Bool)

(assert (=> b!500492 (= e!293221 true)))

(declare-fun lt!227239 () SeekEntryResult!3988)

(assert (=> b!500492 (= lt!227239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!227240 lt!227233 lt!227234 mask!3524))))

(assert (= (and start!45486 res!302432) b!500488))

(assert (= (and b!500488 res!302431) b!500484))

(assert (= (and b!500484 res!302437) b!500483))

(assert (= (and b!500483 res!302426) b!500480))

(assert (= (and b!500480 res!302435) b!500478))

(assert (= (and b!500478 res!302434) b!500486))

(assert (= (and b!500486 res!302429) b!500489))

(assert (= (and b!500489 res!302438) b!500482))

(assert (= (and b!500482 res!302433) b!500485))

(assert (= (and b!500482 (not res!302430)) b!500487))

(assert (= (and b!500487 (not res!302428)) b!500490))

(assert (= (and b!500490 c!59303) b!500491))

(assert (= (and b!500490 (not c!59303)) b!500481))

(assert (= (and b!500491 res!302436) b!500479))

(assert (= (and b!500490 (not res!302427)) b!500492))

(declare-fun m!481633 () Bool)

(assert (=> b!500483 m!481633))

(declare-fun m!481635 () Bool)

(assert (=> b!500482 m!481635))

(declare-fun m!481637 () Bool)

(assert (=> b!500482 m!481637))

(declare-fun m!481639 () Bool)

(assert (=> b!500482 m!481639))

(declare-fun m!481641 () Bool)

(assert (=> b!500482 m!481641))

(declare-fun m!481643 () Bool)

(assert (=> b!500482 m!481643))

(declare-fun m!481645 () Bool)

(assert (=> b!500482 m!481645))

(declare-fun m!481647 () Bool)

(assert (=> b!500482 m!481647))

(declare-fun m!481649 () Bool)

(assert (=> b!500482 m!481649))

(assert (=> b!500482 m!481641))

(declare-fun m!481651 () Bool)

(assert (=> b!500482 m!481651))

(assert (=> b!500482 m!481641))

(declare-fun m!481653 () Bool)

(assert (=> b!500489 m!481653))

(declare-fun m!481655 () Bool)

(assert (=> b!500478 m!481655))

(declare-fun m!481657 () Bool)

(assert (=> b!500480 m!481657))

(assert (=> b!500485 m!481641))

(assert (=> b!500485 m!481641))

(declare-fun m!481659 () Bool)

(assert (=> b!500485 m!481659))

(declare-fun m!481661 () Bool)

(assert (=> start!45486 m!481661))

(declare-fun m!481663 () Bool)

(assert (=> start!45486 m!481663))

(declare-fun m!481665 () Bool)

(assert (=> b!500491 m!481665))

(declare-fun m!481667 () Bool)

(assert (=> b!500491 m!481667))

(declare-fun m!481669 () Bool)

(assert (=> b!500486 m!481669))

(assert (=> b!500484 m!481641))

(assert (=> b!500484 m!481641))

(declare-fun m!481671 () Bool)

(assert (=> b!500484 m!481671))

(assert (=> b!500492 m!481667))

(declare-fun m!481673 () Bool)

(assert (=> b!500490 m!481673))

(assert (=> b!500490 m!481641))

(check-sat (not b!500483) (not b!500486) (not start!45486) (not b!500478) (not b!500480) (not b!500491) (not b!500484) (not b!500492) (not b!500482) (not b!500489) (not b!500485))
(check-sat)
