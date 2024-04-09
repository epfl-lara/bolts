; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45186 () Bool)

(assert start!45186)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!495532 () Bool)

(declare-datatypes ((array!32034 0))(
  ( (array!32035 (arr!15397 (Array (_ BitVec 32) (_ BitVec 64))) (size!15761 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32034)

(declare-fun e!290695 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3871 0))(
  ( (MissingZero!3871 (index!17663 (_ BitVec 32))) (Found!3871 (index!17664 (_ BitVec 32))) (Intermediate!3871 (undefined!4683 Bool) (index!17665 (_ BitVec 32)) (x!46758 (_ BitVec 32))) (Undefined!3871) (MissingVacant!3871 (index!17666 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32034 (_ BitVec 32)) SeekEntryResult!3871)

(assert (=> b!495532 (= e!290695 (= (seekEntryOrOpen!0 (select (arr!15397 a!3235) j!176) a!3235 mask!3524) (Found!3871 j!176)))))

(declare-fun b!495533 () Bool)

(declare-fun res!298078 () Bool)

(declare-fun e!290692 () Bool)

(assert (=> b!495533 (=> (not res!298078) (not e!290692))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!495533 (= res!298078 (and (= (size!15761 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15761 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15761 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!495534 () Bool)

(declare-fun e!290691 () Bool)

(assert (=> b!495534 (= e!290692 e!290691)))

(declare-fun res!298075 () Bool)

(assert (=> b!495534 (=> (not res!298075) (not e!290691))))

(declare-fun lt!224383 () SeekEntryResult!3871)

(assert (=> b!495534 (= res!298075 (or (= lt!224383 (MissingZero!3871 i!1204)) (= lt!224383 (MissingVacant!3871 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!495534 (= lt!224383 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!495535 () Bool)

(declare-fun res!298077 () Bool)

(declare-fun e!290693 () Bool)

(assert (=> b!495535 (=> res!298077 e!290693)))

(declare-fun lt!224384 () SeekEntryResult!3871)

(get-info :version)

(assert (=> b!495535 (= res!298077 (or (undefined!4683 lt!224384) (not ((_ is Intermediate!3871) lt!224384))))))

(declare-fun res!298074 () Bool)

(assert (=> start!45186 (=> (not res!298074) (not e!290692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45186 (= res!298074 (validMask!0 mask!3524))))

(assert (=> start!45186 e!290692))

(assert (=> start!45186 true))

(declare-fun array_inv!11171 (array!32034) Bool)

(assert (=> start!45186 (array_inv!11171 a!3235)))

(declare-fun b!495536 () Bool)

(assert (=> b!495536 (= e!290691 (not e!290693))))

(declare-fun res!298076 () Bool)

(assert (=> b!495536 (=> res!298076 e!290693)))

(declare-fun lt!224380 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32034 (_ BitVec 32)) SeekEntryResult!3871)

(assert (=> b!495536 (= res!298076 (= lt!224384 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224380 (select (store (arr!15397 a!3235) i!1204 k0!2280) j!176) (array!32035 (store (arr!15397 a!3235) i!1204 k0!2280) (size!15761 a!3235)) mask!3524)))))

(declare-fun lt!224382 () (_ BitVec 32))

(assert (=> b!495536 (= lt!224384 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!224382 (select (arr!15397 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!495536 (= lt!224380 (toIndex!0 (select (store (arr!15397 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!495536 (= lt!224382 (toIndex!0 (select (arr!15397 a!3235) j!176) mask!3524))))

(assert (=> b!495536 e!290695))

(declare-fun res!298072 () Bool)

(assert (=> b!495536 (=> (not res!298072) (not e!290695))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32034 (_ BitVec 32)) Bool)

(assert (=> b!495536 (= res!298072 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14680 0))(
  ( (Unit!14681) )
))
(declare-fun lt!224381 () Unit!14680)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32034 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14680)

(assert (=> b!495536 (= lt!224381 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!495537 () Bool)

(assert (=> b!495537 (= e!290693 true)))

(assert (=> b!495537 (and (bvslt (x!46758 lt!224384) #b01111111111111111111111111111110) (or (= (select (arr!15397 a!3235) (index!17665 lt!224384)) (select (arr!15397 a!3235) j!176)) (= (select (arr!15397 a!3235) (index!17665 lt!224384)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15397 a!3235) (index!17665 lt!224384)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!495538 () Bool)

(declare-fun res!298070 () Bool)

(assert (=> b!495538 (=> (not res!298070) (not e!290691))))

(declare-datatypes ((List!9608 0))(
  ( (Nil!9605) (Cons!9604 (h!10475 (_ BitVec 64)) (t!15844 List!9608)) )
))
(declare-fun arrayNoDuplicates!0 (array!32034 (_ BitVec 32) List!9608) Bool)

(assert (=> b!495538 (= res!298070 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9605))))

(declare-fun b!495539 () Bool)

(declare-fun res!298073 () Bool)

(assert (=> b!495539 (=> (not res!298073) (not e!290692))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!495539 (= res!298073 (validKeyInArray!0 (select (arr!15397 a!3235) j!176)))))

(declare-fun b!495540 () Bool)

(declare-fun res!298069 () Bool)

(assert (=> b!495540 (=> (not res!298069) (not e!290692))))

(declare-fun arrayContainsKey!0 (array!32034 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!495540 (= res!298069 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!495541 () Bool)

(declare-fun res!298071 () Bool)

(assert (=> b!495541 (=> (not res!298071) (not e!290691))))

(assert (=> b!495541 (= res!298071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!495542 () Bool)

(declare-fun res!298079 () Bool)

(assert (=> b!495542 (=> (not res!298079) (not e!290692))))

(assert (=> b!495542 (= res!298079 (validKeyInArray!0 k0!2280))))

(assert (= (and start!45186 res!298074) b!495533))

(assert (= (and b!495533 res!298078) b!495539))

(assert (= (and b!495539 res!298073) b!495542))

(assert (= (and b!495542 res!298079) b!495540))

(assert (= (and b!495540 res!298069) b!495534))

(assert (= (and b!495534 res!298075) b!495541))

(assert (= (and b!495541 res!298071) b!495538))

(assert (= (and b!495538 res!298070) b!495536))

(assert (= (and b!495536 res!298072) b!495532))

(assert (= (and b!495536 (not res!298076)) b!495535))

(assert (= (and b!495535 (not res!298077)) b!495537))

(declare-fun m!476697 () Bool)

(assert (=> b!495534 m!476697))

(declare-fun m!476699 () Bool)

(assert (=> b!495539 m!476699))

(assert (=> b!495539 m!476699))

(declare-fun m!476701 () Bool)

(assert (=> b!495539 m!476701))

(declare-fun m!476703 () Bool)

(assert (=> b!495536 m!476703))

(declare-fun m!476705 () Bool)

(assert (=> b!495536 m!476705))

(declare-fun m!476707 () Bool)

(assert (=> b!495536 m!476707))

(assert (=> b!495536 m!476707))

(declare-fun m!476709 () Bool)

(assert (=> b!495536 m!476709))

(assert (=> b!495536 m!476699))

(declare-fun m!476711 () Bool)

(assert (=> b!495536 m!476711))

(assert (=> b!495536 m!476699))

(declare-fun m!476713 () Bool)

(assert (=> b!495536 m!476713))

(assert (=> b!495536 m!476699))

(declare-fun m!476715 () Bool)

(assert (=> b!495536 m!476715))

(assert (=> b!495536 m!476707))

(declare-fun m!476717 () Bool)

(assert (=> b!495536 m!476717))

(declare-fun m!476719 () Bool)

(assert (=> b!495542 m!476719))

(declare-fun m!476721 () Bool)

(assert (=> b!495541 m!476721))

(declare-fun m!476723 () Bool)

(assert (=> b!495540 m!476723))

(declare-fun m!476725 () Bool)

(assert (=> b!495537 m!476725))

(assert (=> b!495537 m!476699))

(declare-fun m!476727 () Bool)

(assert (=> start!45186 m!476727))

(declare-fun m!476729 () Bool)

(assert (=> start!45186 m!476729))

(assert (=> b!495532 m!476699))

(assert (=> b!495532 m!476699))

(declare-fun m!476731 () Bool)

(assert (=> b!495532 m!476731))

(declare-fun m!476733 () Bool)

(assert (=> b!495538 m!476733))

(check-sat (not b!495536) (not b!495541) (not b!495540) (not start!45186) (not b!495542) (not b!495534) (not b!495538) (not b!495539) (not b!495532))
(check-sat)
