; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45440 () Bool)

(assert start!45440)

(declare-fun b!499443 () Bool)

(declare-fun res!301534 () Bool)

(declare-fun e!292672 () Bool)

(assert (=> b!499443 (=> res!301534 e!292672)))

(declare-datatypes ((SeekEntryResult!3965 0))(
  ( (MissingZero!3965 (index!18042 (_ BitVec 32))) (Found!3965 (index!18043 (_ BitVec 32))) (Intermediate!3965 (undefined!4777 Bool) (index!18044 (_ BitVec 32)) (x!47109 (_ BitVec 32))) (Undefined!3965) (MissingVacant!3965 (index!18045 (_ BitVec 32))) )
))
(declare-fun lt!226547 () SeekEntryResult!3965)

(assert (=> b!499443 (= res!301534 (or (undefined!4777 lt!226547) (not (is-Intermediate!3965 lt!226547))))))

(declare-fun b!499444 () Bool)

(declare-datatypes ((Unit!14950 0))(
  ( (Unit!14951) )
))
(declare-fun e!292675 () Unit!14950)

(declare-fun Unit!14952 () Unit!14950)

(assert (=> b!499444 (= e!292675 Unit!14952)))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32225 0))(
  ( (array!32226 (arr!15491 (Array (_ BitVec 32) (_ BitVec 64))) (size!15855 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32225)

(declare-fun lt!226541 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!226543 () Unit!14950)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32225 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14950)

(assert (=> b!499444 (= lt!226543 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226541 #b00000000000000000000000000000000 (index!18044 lt!226547) (x!47109 lt!226547) mask!3524))))

(declare-fun lt!226542 () (_ BitVec 64))

(declare-fun lt!226544 () array!32225)

(declare-fun res!301538 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32225 (_ BitVec 32)) SeekEntryResult!3965)

(assert (=> b!499444 (= res!301538 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226541 lt!226542 lt!226544 mask!3524) (Intermediate!3965 false (index!18044 lt!226547) (x!47109 lt!226547))))))

(declare-fun e!292668 () Bool)

(assert (=> b!499444 (=> (not res!301538) (not e!292668))))

(assert (=> b!499444 e!292668))

(declare-fun b!499445 () Bool)

(declare-fun e!292673 () Bool)

(assert (=> b!499445 (= e!292673 true)))

(declare-fun lt!226546 () SeekEntryResult!3965)

(assert (=> b!499445 (= lt!226546 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226541 lt!226542 lt!226544 mask!3524))))

(declare-fun b!499446 () Bool)

(declare-fun res!301537 () Bool)

(declare-fun e!292670 () Bool)

(assert (=> b!499446 (=> (not res!301537) (not e!292670))))

(assert (=> b!499446 (= res!301537 (and (= (size!15855 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15855 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15855 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!301535 () Bool)

(assert (=> start!45440 (=> (not res!301535) (not e!292670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45440 (= res!301535 (validMask!0 mask!3524))))

(assert (=> start!45440 e!292670))

(assert (=> start!45440 true))

(declare-fun array_inv!11265 (array!32225) Bool)

(assert (=> start!45440 (array_inv!11265 a!3235)))

(declare-fun e!292674 () Bool)

(declare-fun b!499447 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32225 (_ BitVec 32)) SeekEntryResult!3965)

(assert (=> b!499447 (= e!292674 (= (seekEntryOrOpen!0 (select (arr!15491 a!3235) j!176) a!3235 mask!3524) (Found!3965 j!176)))))

(declare-fun b!499448 () Bool)

(declare-fun e!292669 () Bool)

(assert (=> b!499448 (= e!292670 e!292669)))

(declare-fun res!301533 () Bool)

(assert (=> b!499448 (=> (not res!301533) (not e!292669))))

(declare-fun lt!226549 () SeekEntryResult!3965)

(assert (=> b!499448 (= res!301533 (or (= lt!226549 (MissingZero!3965 i!1204)) (= lt!226549 (MissingVacant!3965 i!1204))))))

(assert (=> b!499448 (= lt!226549 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499449 () Bool)

(declare-fun res!301531 () Bool)

(assert (=> b!499449 (=> (not res!301531) (not e!292670))))

(declare-fun arrayContainsKey!0 (array!32225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499449 (= res!301531 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499450 () Bool)

(assert (=> b!499450 (= e!292668 false)))

(declare-fun b!499451 () Bool)

(declare-fun res!301540 () Bool)

(assert (=> b!499451 (=> (not res!301540) (not e!292670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499451 (= res!301540 (validKeyInArray!0 k!2280))))

(declare-fun b!499452 () Bool)

(assert (=> b!499452 (= e!292669 (not e!292672))))

(declare-fun res!301536 () Bool)

(assert (=> b!499452 (=> res!301536 e!292672)))

(declare-fun lt!226550 () (_ BitVec 32))

(assert (=> b!499452 (= res!301536 (= lt!226547 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226550 lt!226542 lt!226544 mask!3524)))))

(assert (=> b!499452 (= lt!226547 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226541 (select (arr!15491 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499452 (= lt!226550 (toIndex!0 lt!226542 mask!3524))))

(assert (=> b!499452 (= lt!226542 (select (store (arr!15491 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499452 (= lt!226541 (toIndex!0 (select (arr!15491 a!3235) j!176) mask!3524))))

(assert (=> b!499452 (= lt!226544 (array!32226 (store (arr!15491 a!3235) i!1204 k!2280) (size!15855 a!3235)))))

(assert (=> b!499452 e!292674))

(declare-fun res!301529 () Bool)

(assert (=> b!499452 (=> (not res!301529) (not e!292674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32225 (_ BitVec 32)) Bool)

(assert (=> b!499452 (= res!301529 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226548 () Unit!14950)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32225 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14950)

(assert (=> b!499452 (= lt!226548 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499453 () Bool)

(declare-fun res!301532 () Bool)

(assert (=> b!499453 (=> (not res!301532) (not e!292669))))

(declare-datatypes ((List!9702 0))(
  ( (Nil!9699) (Cons!9698 (h!10572 (_ BitVec 64)) (t!15938 List!9702)) )
))
(declare-fun arrayNoDuplicates!0 (array!32225 (_ BitVec 32) List!9702) Bool)

(assert (=> b!499453 (= res!301532 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9699))))

(declare-fun b!499454 () Bool)

(declare-fun Unit!14953 () Unit!14950)

(assert (=> b!499454 (= e!292675 Unit!14953)))

(declare-fun b!499455 () Bool)

(declare-fun res!301530 () Bool)

(assert (=> b!499455 (=> (not res!301530) (not e!292670))))

(assert (=> b!499455 (= res!301530 (validKeyInArray!0 (select (arr!15491 a!3235) j!176)))))

(declare-fun b!499456 () Bool)

(declare-fun res!301541 () Bool)

(assert (=> b!499456 (=> (not res!301541) (not e!292669))))

(assert (=> b!499456 (= res!301541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499457 () Bool)

(assert (=> b!499457 (= e!292672 e!292673)))

(declare-fun res!301539 () Bool)

(assert (=> b!499457 (=> res!301539 e!292673)))

(assert (=> b!499457 (= res!301539 (or (bvsgt #b00000000000000000000000000000000 (x!47109 lt!226547)) (bvsgt (x!47109 lt!226547) #b01111111111111111111111111111110) (bvslt lt!226541 #b00000000000000000000000000000000) (bvsge lt!226541 (size!15855 a!3235)) (bvslt (index!18044 lt!226547) #b00000000000000000000000000000000) (bvsge (index!18044 lt!226547) (size!15855 a!3235)) (not (= lt!226547 (Intermediate!3965 false (index!18044 lt!226547) (x!47109 lt!226547))))))))

(assert (=> b!499457 (and (or (= (select (arr!15491 a!3235) (index!18044 lt!226547)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15491 a!3235) (index!18044 lt!226547)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15491 a!3235) (index!18044 lt!226547)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15491 a!3235) (index!18044 lt!226547)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226545 () Unit!14950)

(assert (=> b!499457 (= lt!226545 e!292675)))

(declare-fun c!59234 () Bool)

(assert (=> b!499457 (= c!59234 (= (select (arr!15491 a!3235) (index!18044 lt!226547)) (select (arr!15491 a!3235) j!176)))))

(assert (=> b!499457 (and (bvslt (x!47109 lt!226547) #b01111111111111111111111111111110) (or (= (select (arr!15491 a!3235) (index!18044 lt!226547)) (select (arr!15491 a!3235) j!176)) (= (select (arr!15491 a!3235) (index!18044 lt!226547)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15491 a!3235) (index!18044 lt!226547)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!45440 res!301535) b!499446))

(assert (= (and b!499446 res!301537) b!499455))

(assert (= (and b!499455 res!301530) b!499451))

(assert (= (and b!499451 res!301540) b!499449))

(assert (= (and b!499449 res!301531) b!499448))

(assert (= (and b!499448 res!301533) b!499456))

(assert (= (and b!499456 res!301541) b!499453))

(assert (= (and b!499453 res!301532) b!499452))

(assert (= (and b!499452 res!301529) b!499447))

(assert (= (and b!499452 (not res!301536)) b!499443))

(assert (= (and b!499443 (not res!301534)) b!499457))

(assert (= (and b!499457 c!59234) b!499444))

(assert (= (and b!499457 (not c!59234)) b!499454))

(assert (= (and b!499444 res!301538) b!499450))

(assert (= (and b!499457 (not res!301539)) b!499445))

(declare-fun m!480667 () Bool)

(assert (=> b!499444 m!480667))

(declare-fun m!480669 () Bool)

(assert (=> b!499444 m!480669))

(declare-fun m!480671 () Bool)

(assert (=> b!499451 m!480671))

(declare-fun m!480673 () Bool)

(assert (=> b!499457 m!480673))

(declare-fun m!480675 () Bool)

(assert (=> b!499457 m!480675))

(declare-fun m!480677 () Bool)

(assert (=> b!499449 m!480677))

(declare-fun m!480679 () Bool)

(assert (=> start!45440 m!480679))

(declare-fun m!480681 () Bool)

(assert (=> start!45440 m!480681))

(assert (=> b!499445 m!480669))

(declare-fun m!480683 () Bool)

(assert (=> b!499456 m!480683))

(assert (=> b!499455 m!480675))

(assert (=> b!499455 m!480675))

(declare-fun m!480685 () Bool)

(assert (=> b!499455 m!480685))

(declare-fun m!480687 () Bool)

(assert (=> b!499452 m!480687))

(declare-fun m!480689 () Bool)

(assert (=> b!499452 m!480689))

(declare-fun m!480691 () Bool)

(assert (=> b!499452 m!480691))

(assert (=> b!499452 m!480675))

(declare-fun m!480693 () Bool)

(assert (=> b!499452 m!480693))

(assert (=> b!499452 m!480675))

(declare-fun m!480695 () Bool)

(assert (=> b!499452 m!480695))

(declare-fun m!480697 () Bool)

(assert (=> b!499452 m!480697))

(declare-fun m!480699 () Bool)

(assert (=> b!499452 m!480699))

(assert (=> b!499452 m!480675))

(declare-fun m!480701 () Bool)

(assert (=> b!499452 m!480701))

(assert (=> b!499447 m!480675))

(assert (=> b!499447 m!480675))

(declare-fun m!480703 () Bool)

(assert (=> b!499447 m!480703))

(declare-fun m!480705 () Bool)

(assert (=> b!499453 m!480705))

(declare-fun m!480707 () Bool)

(assert (=> b!499448 m!480707))

(push 1)

