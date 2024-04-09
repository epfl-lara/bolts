; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47436 () Bool)

(assert start!47436)

(declare-fun b!521719 () Bool)

(declare-fun res!319599 () Bool)

(declare-fun e!304346 () Bool)

(assert (=> b!521719 (=> (not res!319599) (not e!304346))))

(declare-datatypes ((array!33222 0))(
  ( (array!33223 (arr!15964 (Array (_ BitVec 32) (_ BitVec 64))) (size!16328 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33222)

(declare-datatypes ((List!10175 0))(
  ( (Nil!10172) (Cons!10171 (h!11093 (_ BitVec 64)) (t!16411 List!10175)) )
))
(declare-fun arrayNoDuplicates!0 (array!33222 (_ BitVec 32) List!10175) Bool)

(assert (=> b!521719 (= res!319599 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10172))))

(declare-fun b!521720 () Bool)

(declare-fun res!319608 () Bool)

(declare-fun e!304350 () Bool)

(assert (=> b!521720 (=> (not res!319608) (not e!304350))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521720 (= res!319608 (validKeyInArray!0 (select (arr!15964 a!3235) j!176)))))

(declare-fun b!521721 () Bool)

(declare-fun e!304345 () Bool)

(assert (=> b!521721 (= e!304345 false)))

(declare-fun b!521722 () Bool)

(declare-fun e!304347 () Bool)

(assert (=> b!521722 (= e!304347 true)))

(declare-datatypes ((SeekEntryResult!4438 0))(
  ( (MissingZero!4438 (index!19955 (_ BitVec 32))) (Found!4438 (index!19956 (_ BitVec 32))) (Intermediate!4438 (undefined!5250 Bool) (index!19957 (_ BitVec 32)) (x!48963 (_ BitVec 32))) (Undefined!4438) (MissingVacant!4438 (index!19958 (_ BitVec 32))) )
))
(declare-fun lt!239234 () SeekEntryResult!4438)

(assert (=> b!521722 (and (or (= (select (arr!15964 a!3235) (index!19957 lt!239234)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15964 a!3235) (index!19957 lt!239234)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15964 a!3235) (index!19957 lt!239234)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15964 a!3235) (index!19957 lt!239234)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16218 0))(
  ( (Unit!16219) )
))
(declare-fun lt!239228 () Unit!16218)

(declare-fun e!304348 () Unit!16218)

(assert (=> b!521722 (= lt!239228 e!304348)))

(declare-fun c!61361 () Bool)

(assert (=> b!521722 (= c!61361 (= (select (arr!15964 a!3235) (index!19957 lt!239234)) (select (arr!15964 a!3235) j!176)))))

(assert (=> b!521722 (and (bvslt (x!48963 lt!239234) #b01111111111111111111111111111110) (or (= (select (arr!15964 a!3235) (index!19957 lt!239234)) (select (arr!15964 a!3235) j!176)) (= (select (arr!15964 a!3235) (index!19957 lt!239234)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15964 a!3235) (index!19957 lt!239234)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521723 () Bool)

(declare-fun res!319607 () Bool)

(assert (=> b!521723 (=> (not res!319607) (not e!304350))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!521723 (= res!319607 (validKeyInArray!0 k0!2280))))

(declare-fun b!521724 () Bool)

(declare-fun Unit!16220 () Unit!16218)

(assert (=> b!521724 (= e!304348 Unit!16220)))

(declare-fun b!521725 () Bool)

(assert (=> b!521725 (= e!304346 (not e!304347))))

(declare-fun res!319606 () Bool)

(assert (=> b!521725 (=> res!319606 e!304347)))

(declare-fun lt!239232 () (_ BitVec 64))

(declare-fun lt!239229 () array!33222)

(declare-fun lt!239226 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33222 (_ BitVec 32)) SeekEntryResult!4438)

(assert (=> b!521725 (= res!319606 (= lt!239234 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239226 lt!239232 lt!239229 mask!3524)))))

(declare-fun lt!239233 () (_ BitVec 32))

(assert (=> b!521725 (= lt!239234 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239233 (select (arr!15964 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521725 (= lt!239226 (toIndex!0 lt!239232 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521725 (= lt!239232 (select (store (arr!15964 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!521725 (= lt!239233 (toIndex!0 (select (arr!15964 a!3235) j!176) mask!3524))))

(assert (=> b!521725 (= lt!239229 (array!33223 (store (arr!15964 a!3235) i!1204 k0!2280) (size!16328 a!3235)))))

(declare-fun e!304349 () Bool)

(assert (=> b!521725 e!304349))

(declare-fun res!319604 () Bool)

(assert (=> b!521725 (=> (not res!319604) (not e!304349))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33222 (_ BitVec 32)) Bool)

(assert (=> b!521725 (= res!319604 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239231 () Unit!16218)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33222 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16218)

(assert (=> b!521725 (= lt!239231 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521726 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33222 (_ BitVec 32)) SeekEntryResult!4438)

(assert (=> b!521726 (= e!304349 (= (seekEntryOrOpen!0 (select (arr!15964 a!3235) j!176) a!3235 mask!3524) (Found!4438 j!176)))))

(declare-fun b!521727 () Bool)

(declare-fun res!319609 () Bool)

(assert (=> b!521727 (=> (not res!319609) (not e!304350))))

(declare-fun arrayContainsKey!0 (array!33222 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521727 (= res!319609 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!319601 () Bool)

(assert (=> start!47436 (=> (not res!319601) (not e!304350))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47436 (= res!319601 (validMask!0 mask!3524))))

(assert (=> start!47436 e!304350))

(assert (=> start!47436 true))

(declare-fun array_inv!11738 (array!33222) Bool)

(assert (=> start!47436 (array_inv!11738 a!3235)))

(declare-fun b!521728 () Bool)

(declare-fun res!319610 () Bool)

(assert (=> b!521728 (=> res!319610 e!304347)))

(get-info :version)

(assert (=> b!521728 (= res!319610 (or (undefined!5250 lt!239234) (not ((_ is Intermediate!4438) lt!239234))))))

(declare-fun b!521729 () Bool)

(declare-fun res!319602 () Bool)

(assert (=> b!521729 (=> (not res!319602) (not e!304346))))

(assert (=> b!521729 (= res!319602 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521730 () Bool)

(declare-fun res!319603 () Bool)

(assert (=> b!521730 (=> (not res!319603) (not e!304350))))

(assert (=> b!521730 (= res!319603 (and (= (size!16328 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16328 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16328 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521731 () Bool)

(declare-fun Unit!16221 () Unit!16218)

(assert (=> b!521731 (= e!304348 Unit!16221)))

(declare-fun lt!239230 () Unit!16218)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33222 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16218)

(assert (=> b!521731 (= lt!239230 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!239233 #b00000000000000000000000000000000 (index!19957 lt!239234) (x!48963 lt!239234) mask!3524))))

(declare-fun res!319605 () Bool)

(assert (=> b!521731 (= res!319605 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239233 lt!239232 lt!239229 mask!3524) (Intermediate!4438 false (index!19957 lt!239234) (x!48963 lt!239234))))))

(assert (=> b!521731 (=> (not res!319605) (not e!304345))))

(assert (=> b!521731 e!304345))

(declare-fun b!521732 () Bool)

(assert (=> b!521732 (= e!304350 e!304346)))

(declare-fun res!319600 () Bool)

(assert (=> b!521732 (=> (not res!319600) (not e!304346))))

(declare-fun lt!239227 () SeekEntryResult!4438)

(assert (=> b!521732 (= res!319600 (or (= lt!239227 (MissingZero!4438 i!1204)) (= lt!239227 (MissingVacant!4438 i!1204))))))

(assert (=> b!521732 (= lt!239227 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!47436 res!319601) b!521730))

(assert (= (and b!521730 res!319603) b!521720))

(assert (= (and b!521720 res!319608) b!521723))

(assert (= (and b!521723 res!319607) b!521727))

(assert (= (and b!521727 res!319609) b!521732))

(assert (= (and b!521732 res!319600) b!521729))

(assert (= (and b!521729 res!319602) b!521719))

(assert (= (and b!521719 res!319599) b!521725))

(assert (= (and b!521725 res!319604) b!521726))

(assert (= (and b!521725 (not res!319606)) b!521728))

(assert (= (and b!521728 (not res!319610)) b!521722))

(assert (= (and b!521722 c!61361) b!521731))

(assert (= (and b!521722 (not c!61361)) b!521724))

(assert (= (and b!521731 res!319605) b!521721))

(declare-fun m!502669 () Bool)

(assert (=> b!521725 m!502669))

(declare-fun m!502671 () Bool)

(assert (=> b!521725 m!502671))

(declare-fun m!502673 () Bool)

(assert (=> b!521725 m!502673))

(declare-fun m!502675 () Bool)

(assert (=> b!521725 m!502675))

(declare-fun m!502677 () Bool)

(assert (=> b!521725 m!502677))

(declare-fun m!502679 () Bool)

(assert (=> b!521725 m!502679))

(declare-fun m!502681 () Bool)

(assert (=> b!521725 m!502681))

(assert (=> b!521725 m!502679))

(declare-fun m!502683 () Bool)

(assert (=> b!521725 m!502683))

(assert (=> b!521725 m!502679))

(declare-fun m!502685 () Bool)

(assert (=> b!521725 m!502685))

(assert (=> b!521720 m!502679))

(assert (=> b!521720 m!502679))

(declare-fun m!502687 () Bool)

(assert (=> b!521720 m!502687))

(declare-fun m!502689 () Bool)

(assert (=> b!521731 m!502689))

(declare-fun m!502691 () Bool)

(assert (=> b!521731 m!502691))

(declare-fun m!502693 () Bool)

(assert (=> b!521732 m!502693))

(declare-fun m!502695 () Bool)

(assert (=> start!47436 m!502695))

(declare-fun m!502697 () Bool)

(assert (=> start!47436 m!502697))

(declare-fun m!502699 () Bool)

(assert (=> b!521729 m!502699))

(assert (=> b!521726 m!502679))

(assert (=> b!521726 m!502679))

(declare-fun m!502701 () Bool)

(assert (=> b!521726 m!502701))

(declare-fun m!502703 () Bool)

(assert (=> b!521723 m!502703))

(declare-fun m!502705 () Bool)

(assert (=> b!521722 m!502705))

(assert (=> b!521722 m!502679))

(declare-fun m!502707 () Bool)

(assert (=> b!521727 m!502707))

(declare-fun m!502709 () Bool)

(assert (=> b!521719 m!502709))

(check-sat (not b!521723) (not b!521726) (not b!521729) (not start!47436) (not b!521719) (not b!521725) (not b!521720) (not b!521727) (not b!521732) (not b!521731))
(check-sat)
