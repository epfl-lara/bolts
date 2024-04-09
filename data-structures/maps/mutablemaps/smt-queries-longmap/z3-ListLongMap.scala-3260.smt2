; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45444 () Bool)

(assert start!45444)

(declare-fun b!499533 () Bool)

(declare-fun res!301608 () Bool)

(declare-fun e!292717 () Bool)

(assert (=> b!499533 (=> (not res!301608) (not e!292717))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499533 (= res!301608 (validKeyInArray!0 k0!2280))))

(declare-fun b!499534 () Bool)

(declare-fun e!292716 () Bool)

(assert (=> b!499534 (= e!292717 e!292716)))

(declare-fun res!301616 () Bool)

(assert (=> b!499534 (=> (not res!301616) (not e!292716))))

(declare-datatypes ((SeekEntryResult!3967 0))(
  ( (MissingZero!3967 (index!18050 (_ BitVec 32))) (Found!3967 (index!18051 (_ BitVec 32))) (Intermediate!3967 (undefined!4779 Bool) (index!18052 (_ BitVec 32)) (x!47119 (_ BitVec 32))) (Undefined!3967) (MissingVacant!3967 (index!18053 (_ BitVec 32))) )
))
(declare-fun lt!226601 () SeekEntryResult!3967)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499534 (= res!301616 (or (= lt!226601 (MissingZero!3967 i!1204)) (= lt!226601 (MissingVacant!3967 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32229 0))(
  ( (array!32230 (arr!15493 (Array (_ BitVec 32) (_ BitVec 64))) (size!15857 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32229)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32229 (_ BitVec 32)) SeekEntryResult!3967)

(assert (=> b!499534 (= lt!226601 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun e!292720 () Bool)

(declare-fun b!499535 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!499535 (= e!292720 (= (seekEntryOrOpen!0 (select (arr!15493 a!3235) j!176) a!3235 mask!3524) (Found!3967 j!176)))))

(declare-fun b!499536 () Bool)

(declare-fun res!301618 () Bool)

(assert (=> b!499536 (=> (not res!301618) (not e!292717))))

(assert (=> b!499536 (= res!301618 (validKeyInArray!0 (select (arr!15493 a!3235) j!176)))))

(declare-fun b!499537 () Bool)

(declare-datatypes ((Unit!14958 0))(
  ( (Unit!14959) )
))
(declare-fun e!292721 () Unit!14958)

(declare-fun Unit!14960 () Unit!14958)

(assert (=> b!499537 (= e!292721 Unit!14960)))

(declare-fun b!499538 () Bool)

(declare-fun res!301615 () Bool)

(assert (=> b!499538 (=> (not res!301615) (not e!292717))))

(assert (=> b!499538 (= res!301615 (and (= (size!15857 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15857 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15857 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499539 () Bool)

(declare-fun e!292719 () Bool)

(assert (=> b!499539 (= e!292719 false)))

(declare-fun b!499541 () Bool)

(declare-fun res!301612 () Bool)

(assert (=> b!499541 (=> (not res!301612) (not e!292716))))

(declare-datatypes ((List!9704 0))(
  ( (Nil!9701) (Cons!9700 (h!10574 (_ BitVec 64)) (t!15940 List!9704)) )
))
(declare-fun arrayNoDuplicates!0 (array!32229 (_ BitVec 32) List!9704) Bool)

(assert (=> b!499541 (= res!301612 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9701))))

(declare-fun b!499542 () Bool)

(declare-fun res!301611 () Bool)

(declare-fun e!292723 () Bool)

(assert (=> b!499542 (=> res!301611 e!292723)))

(declare-fun lt!226607 () SeekEntryResult!3967)

(get-info :version)

(assert (=> b!499542 (= res!301611 (or (undefined!4779 lt!226607) (not ((_ is Intermediate!3967) lt!226607))))))

(declare-fun b!499543 () Bool)

(assert (=> b!499543 (= e!292716 (not e!292723))))

(declare-fun res!301614 () Bool)

(assert (=> b!499543 (=> res!301614 e!292723)))

(declare-fun lt!226604 () array!32229)

(declare-fun lt!226602 () (_ BitVec 64))

(declare-fun lt!226608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32229 (_ BitVec 32)) SeekEntryResult!3967)

(assert (=> b!499543 (= res!301614 (= lt!226607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226608 lt!226602 lt!226604 mask!3524)))))

(declare-fun lt!226609 () (_ BitVec 32))

(assert (=> b!499543 (= lt!226607 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226609 (select (arr!15493 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499543 (= lt!226608 (toIndex!0 lt!226602 mask!3524))))

(assert (=> b!499543 (= lt!226602 (select (store (arr!15493 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!499543 (= lt!226609 (toIndex!0 (select (arr!15493 a!3235) j!176) mask!3524))))

(assert (=> b!499543 (= lt!226604 (array!32230 (store (arr!15493 a!3235) i!1204 k0!2280) (size!15857 a!3235)))))

(assert (=> b!499543 e!292720))

(declare-fun res!301617 () Bool)

(assert (=> b!499543 (=> (not res!301617) (not e!292720))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32229 (_ BitVec 32)) Bool)

(assert (=> b!499543 (= res!301617 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226606 () Unit!14958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32229 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14958)

(assert (=> b!499543 (= lt!226606 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499544 () Bool)

(declare-fun res!301607 () Bool)

(assert (=> b!499544 (=> (not res!301607) (not e!292716))))

(assert (=> b!499544 (= res!301607 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499545 () Bool)

(declare-fun e!292722 () Bool)

(assert (=> b!499545 (= e!292722 true)))

(declare-fun lt!226610 () SeekEntryResult!3967)

(assert (=> b!499545 (= lt!226610 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226609 lt!226602 lt!226604 mask!3524))))

(declare-fun b!499540 () Bool)

(assert (=> b!499540 (= e!292723 e!292722)))

(declare-fun res!301619 () Bool)

(assert (=> b!499540 (=> res!301619 e!292722)))

(assert (=> b!499540 (= res!301619 (or (bvsgt #b00000000000000000000000000000000 (x!47119 lt!226607)) (bvsgt (x!47119 lt!226607) #b01111111111111111111111111111110) (bvslt lt!226609 #b00000000000000000000000000000000) (bvsge lt!226609 (size!15857 a!3235)) (bvslt (index!18052 lt!226607) #b00000000000000000000000000000000) (bvsge (index!18052 lt!226607) (size!15857 a!3235)) (not (= lt!226607 (Intermediate!3967 false (index!18052 lt!226607) (x!47119 lt!226607))))))))

(assert (=> b!499540 (and (or (= (select (arr!15493 a!3235) (index!18052 lt!226607)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15493 a!3235) (index!18052 lt!226607)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15493 a!3235) (index!18052 lt!226607)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15493 a!3235) (index!18052 lt!226607)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226605 () Unit!14958)

(assert (=> b!499540 (= lt!226605 e!292721)))

(declare-fun c!59240 () Bool)

(assert (=> b!499540 (= c!59240 (= (select (arr!15493 a!3235) (index!18052 lt!226607)) (select (arr!15493 a!3235) j!176)))))

(assert (=> b!499540 (and (bvslt (x!47119 lt!226607) #b01111111111111111111111111111110) (or (= (select (arr!15493 a!3235) (index!18052 lt!226607)) (select (arr!15493 a!3235) j!176)) (= (select (arr!15493 a!3235) (index!18052 lt!226607)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15493 a!3235) (index!18052 lt!226607)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!301610 () Bool)

(assert (=> start!45444 (=> (not res!301610) (not e!292717))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45444 (= res!301610 (validMask!0 mask!3524))))

(assert (=> start!45444 e!292717))

(assert (=> start!45444 true))

(declare-fun array_inv!11267 (array!32229) Bool)

(assert (=> start!45444 (array_inv!11267 a!3235)))

(declare-fun b!499546 () Bool)

(declare-fun Unit!14961 () Unit!14958)

(assert (=> b!499546 (= e!292721 Unit!14961)))

(declare-fun lt!226603 () Unit!14958)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32229 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14958)

(assert (=> b!499546 (= lt!226603 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!226609 #b00000000000000000000000000000000 (index!18052 lt!226607) (x!47119 lt!226607) mask!3524))))

(declare-fun res!301613 () Bool)

(assert (=> b!499546 (= res!301613 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226609 lt!226602 lt!226604 mask!3524) (Intermediate!3967 false (index!18052 lt!226607) (x!47119 lt!226607))))))

(assert (=> b!499546 (=> (not res!301613) (not e!292719))))

(assert (=> b!499546 e!292719))

(declare-fun b!499547 () Bool)

(declare-fun res!301609 () Bool)

(assert (=> b!499547 (=> (not res!301609) (not e!292717))))

(declare-fun arrayContainsKey!0 (array!32229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499547 (= res!301609 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45444 res!301610) b!499538))

(assert (= (and b!499538 res!301615) b!499536))

(assert (= (and b!499536 res!301618) b!499533))

(assert (= (and b!499533 res!301608) b!499547))

(assert (= (and b!499547 res!301609) b!499534))

(assert (= (and b!499534 res!301616) b!499544))

(assert (= (and b!499544 res!301607) b!499541))

(assert (= (and b!499541 res!301612) b!499543))

(assert (= (and b!499543 res!301617) b!499535))

(assert (= (and b!499543 (not res!301614)) b!499542))

(assert (= (and b!499542 (not res!301611)) b!499540))

(assert (= (and b!499540 c!59240) b!499546))

(assert (= (and b!499540 (not c!59240)) b!499537))

(assert (= (and b!499546 res!301613) b!499539))

(assert (= (and b!499540 (not res!301619)) b!499545))

(declare-fun m!480751 () Bool)

(assert (=> b!499534 m!480751))

(declare-fun m!480753 () Bool)

(assert (=> b!499533 m!480753))

(declare-fun m!480755 () Bool)

(assert (=> b!499546 m!480755))

(declare-fun m!480757 () Bool)

(assert (=> b!499546 m!480757))

(declare-fun m!480759 () Bool)

(assert (=> b!499535 m!480759))

(assert (=> b!499535 m!480759))

(declare-fun m!480761 () Bool)

(assert (=> b!499535 m!480761))

(declare-fun m!480763 () Bool)

(assert (=> b!499540 m!480763))

(assert (=> b!499540 m!480759))

(assert (=> b!499536 m!480759))

(assert (=> b!499536 m!480759))

(declare-fun m!480765 () Bool)

(assert (=> b!499536 m!480765))

(assert (=> b!499543 m!480759))

(declare-fun m!480767 () Bool)

(assert (=> b!499543 m!480767))

(declare-fun m!480769 () Bool)

(assert (=> b!499543 m!480769))

(declare-fun m!480771 () Bool)

(assert (=> b!499543 m!480771))

(declare-fun m!480773 () Bool)

(assert (=> b!499543 m!480773))

(declare-fun m!480775 () Bool)

(assert (=> b!499543 m!480775))

(declare-fun m!480777 () Bool)

(assert (=> b!499543 m!480777))

(assert (=> b!499543 m!480759))

(declare-fun m!480779 () Bool)

(assert (=> b!499543 m!480779))

(assert (=> b!499543 m!480759))

(declare-fun m!480781 () Bool)

(assert (=> b!499543 m!480781))

(declare-fun m!480783 () Bool)

(assert (=> b!499541 m!480783))

(declare-fun m!480785 () Bool)

(assert (=> b!499544 m!480785))

(declare-fun m!480787 () Bool)

(assert (=> b!499547 m!480787))

(declare-fun m!480789 () Bool)

(assert (=> start!45444 m!480789))

(declare-fun m!480791 () Bool)

(assert (=> start!45444 m!480791))

(assert (=> b!499545 m!480757))

(check-sat (not b!499547) (not b!499545) (not b!499544) (not b!499534) (not start!45444) (not b!499535) (not b!499536) (not b!499541) (not b!499543) (not b!499546) (not b!499533))
(check-sat)
