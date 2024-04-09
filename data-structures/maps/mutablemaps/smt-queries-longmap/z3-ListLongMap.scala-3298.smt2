; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45744 () Bool)

(assert start!45744)

(declare-fun b!505450 () Bool)

(declare-fun e!295891 () Bool)

(assert (=> b!505450 (= e!295891 true)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32460 0))(
  ( (array!32461 (arr!15607 (Array (_ BitVec 32) (_ BitVec 64))) (size!15971 (_ BitVec 32))) )
))
(declare-fun lt!230478 () array!32460)

(declare-datatypes ((SeekEntryResult!4081 0))(
  ( (MissingZero!4081 (index!18512 (_ BitVec 32))) (Found!4081 (index!18513 (_ BitVec 32))) (Intermediate!4081 (undefined!4893 Bool) (index!18514 (_ BitVec 32)) (x!47549 (_ BitVec 32))) (Undefined!4081) (MissingVacant!4081 (index!18515 (_ BitVec 32))) )
))
(declare-fun lt!230477 () SeekEntryResult!4081)

(declare-fun lt!230483 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32460 (_ BitVec 32)) SeekEntryResult!4081)

(assert (=> b!505450 (= (seekEntryOrOpen!0 lt!230483 lt!230478 mask!3524) lt!230477)))

(declare-fun lt!230487 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun a!3235 () array!32460)

(declare-datatypes ((Unit!15414 0))(
  ( (Unit!15415) )
))
(declare-fun lt!230482 () Unit!15414)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!230488 () SeekEntryResult!4081)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32460 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15414)

(assert (=> b!505450 (= lt!230482 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!230487 #b00000000000000000000000000000000 (index!18514 lt!230488) (x!47549 lt!230488) mask!3524))))

(declare-fun b!505451 () Bool)

(declare-fun e!295884 () Bool)

(declare-fun e!295883 () Bool)

(assert (=> b!505451 (= e!295884 (not e!295883))))

(declare-fun res!306640 () Bool)

(assert (=> b!505451 (=> res!306640 e!295883)))

(declare-fun lt!230484 () SeekEntryResult!4081)

(get-info :version)

(assert (=> b!505451 (= res!306640 (or (= lt!230488 lt!230484) (undefined!4893 lt!230488) (not ((_ is Intermediate!4081) lt!230488))))))

(declare-fun lt!230489 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32460 (_ BitVec 32)) SeekEntryResult!4081)

(assert (=> b!505451 (= lt!230484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230489 lt!230483 lt!230478 mask!3524))))

(assert (=> b!505451 (= lt!230488 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230487 (select (arr!15607 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505451 (= lt!230489 (toIndex!0 lt!230483 mask!3524))))

(assert (=> b!505451 (= lt!230483 (select (store (arr!15607 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!505451 (= lt!230487 (toIndex!0 (select (arr!15607 a!3235) j!176) mask!3524))))

(assert (=> b!505451 (= lt!230478 (array!32461 (store (arr!15607 a!3235) i!1204 k0!2280) (size!15971 a!3235)))))

(assert (=> b!505451 (= lt!230477 (Found!4081 j!176))))

(declare-fun e!295886 () Bool)

(assert (=> b!505451 e!295886))

(declare-fun res!306650 () Bool)

(assert (=> b!505451 (=> (not res!306650) (not e!295886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32460 (_ BitVec 32)) Bool)

(assert (=> b!505451 (= res!306650 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230479 () Unit!15414)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32460 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15414)

(assert (=> b!505451 (= lt!230479 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505452 () Bool)

(declare-fun res!306641 () Bool)

(declare-fun e!295887 () Bool)

(assert (=> b!505452 (=> (not res!306641) (not e!295887))))

(declare-fun arrayContainsKey!0 (array!32460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505452 (= res!306641 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!306645 () Bool)

(assert (=> start!45744 (=> (not res!306645) (not e!295887))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45744 (= res!306645 (validMask!0 mask!3524))))

(assert (=> start!45744 e!295887))

(assert (=> start!45744 true))

(declare-fun array_inv!11381 (array!32460) Bool)

(assert (=> start!45744 (array_inv!11381 a!3235)))

(declare-fun b!505453 () Bool)

(assert (=> b!505453 (= e!295883 e!295891)))

(declare-fun res!306646 () Bool)

(assert (=> b!505453 (=> res!306646 e!295891)))

(assert (=> b!505453 (= res!306646 (or (bvsgt (x!47549 lt!230488) #b01111111111111111111111111111110) (bvslt lt!230487 #b00000000000000000000000000000000) (bvsge lt!230487 (size!15971 a!3235)) (bvslt (index!18514 lt!230488) #b00000000000000000000000000000000) (bvsge (index!18514 lt!230488) (size!15971 a!3235)) (not (= lt!230488 (Intermediate!4081 false (index!18514 lt!230488) (x!47549 lt!230488))))))))

(assert (=> b!505453 (= (index!18514 lt!230488) i!1204)))

(declare-fun lt!230486 () Unit!15414)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32460 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15414)

(assert (=> b!505453 (= lt!230486 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!230487 #b00000000000000000000000000000000 (index!18514 lt!230488) (x!47549 lt!230488) mask!3524))))

(assert (=> b!505453 (and (or (= (select (arr!15607 a!3235) (index!18514 lt!230488)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15607 a!3235) (index!18514 lt!230488)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15607 a!3235) (index!18514 lt!230488)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15607 a!3235) (index!18514 lt!230488)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230481 () Unit!15414)

(declare-fun e!295888 () Unit!15414)

(assert (=> b!505453 (= lt!230481 e!295888)))

(declare-fun c!59684 () Bool)

(assert (=> b!505453 (= c!59684 (= (select (arr!15607 a!3235) (index!18514 lt!230488)) (select (arr!15607 a!3235) j!176)))))

(assert (=> b!505453 (and (bvslt (x!47549 lt!230488) #b01111111111111111111111111111110) (or (= (select (arr!15607 a!3235) (index!18514 lt!230488)) (select (arr!15607 a!3235) j!176)) (= (select (arr!15607 a!3235) (index!18514 lt!230488)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15607 a!3235) (index!18514 lt!230488)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505454 () Bool)

(assert (=> b!505454 (= e!295887 e!295884)))

(declare-fun res!306643 () Bool)

(assert (=> b!505454 (=> (not res!306643) (not e!295884))))

(declare-fun lt!230485 () SeekEntryResult!4081)

(assert (=> b!505454 (= res!306643 (or (= lt!230485 (MissingZero!4081 i!1204)) (= lt!230485 (MissingVacant!4081 i!1204))))))

(assert (=> b!505454 (= lt!230485 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!505455 () Bool)

(declare-fun Unit!15416 () Unit!15414)

(assert (=> b!505455 (= e!295888 Unit!15416)))

(declare-fun lt!230480 () Unit!15414)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32460 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15414)

(assert (=> b!505455 (= lt!230480 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!230487 #b00000000000000000000000000000000 (index!18514 lt!230488) (x!47549 lt!230488) mask!3524))))

(declare-fun res!306648 () Bool)

(assert (=> b!505455 (= res!306648 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230487 lt!230483 lt!230478 mask!3524) (Intermediate!4081 false (index!18514 lt!230488) (x!47549 lt!230488))))))

(declare-fun e!295889 () Bool)

(assert (=> b!505455 (=> (not res!306648) (not e!295889))))

(assert (=> b!505455 e!295889))

(declare-fun b!505456 () Bool)

(declare-fun res!306651 () Bool)

(assert (=> b!505456 (=> res!306651 e!295891)))

(assert (=> b!505456 (= res!306651 (not (= lt!230484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230487 lt!230483 lt!230478 mask!3524))))))

(declare-fun b!505457 () Bool)

(declare-fun res!306639 () Bool)

(assert (=> b!505457 (=> (not res!306639) (not e!295887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505457 (= res!306639 (validKeyInArray!0 k0!2280))))

(declare-fun b!505458 () Bool)

(assert (=> b!505458 (= e!295889 false)))

(declare-fun b!505459 () Bool)

(declare-fun res!306652 () Bool)

(assert (=> b!505459 (=> (not res!306652) (not e!295887))))

(assert (=> b!505459 (= res!306652 (validKeyInArray!0 (select (arr!15607 a!3235) j!176)))))

(declare-fun b!505460 () Bool)

(declare-fun e!295885 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32460 (_ BitVec 32)) SeekEntryResult!4081)

(assert (=> b!505460 (= e!295885 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230487 (index!18514 lt!230488) (select (arr!15607 a!3235) j!176) a!3235 mask!3524) lt!230477)))))

(declare-fun b!505461 () Bool)

(declare-fun res!306647 () Bool)

(assert (=> b!505461 (=> (not res!306647) (not e!295887))))

(assert (=> b!505461 (= res!306647 (and (= (size!15971 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15971 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15971 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505462 () Bool)

(declare-fun res!306649 () Bool)

(assert (=> b!505462 (=> (not res!306649) (not e!295884))))

(declare-datatypes ((List!9818 0))(
  ( (Nil!9815) (Cons!9814 (h!10691 (_ BitVec 64)) (t!16054 List!9818)) )
))
(declare-fun arrayNoDuplicates!0 (array!32460 (_ BitVec 32) List!9818) Bool)

(assert (=> b!505462 (= res!306649 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9815))))

(declare-fun b!505463 () Bool)

(assert (=> b!505463 (= e!295886 (= (seekEntryOrOpen!0 (select (arr!15607 a!3235) j!176) a!3235 mask!3524) (Found!4081 j!176)))))

(declare-fun b!505464 () Bool)

(declare-fun Unit!15417 () Unit!15414)

(assert (=> b!505464 (= e!295888 Unit!15417)))

(declare-fun b!505465 () Bool)

(declare-fun res!306653 () Bool)

(assert (=> b!505465 (=> (not res!306653) (not e!295884))))

(assert (=> b!505465 (= res!306653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505466 () Bool)

(declare-fun res!306644 () Bool)

(assert (=> b!505466 (=> res!306644 e!295891)))

(assert (=> b!505466 (= res!306644 e!295885)))

(declare-fun res!306642 () Bool)

(assert (=> b!505466 (=> (not res!306642) (not e!295885))))

(assert (=> b!505466 (= res!306642 (bvsgt #b00000000000000000000000000000000 (x!47549 lt!230488)))))

(assert (= (and start!45744 res!306645) b!505461))

(assert (= (and b!505461 res!306647) b!505459))

(assert (= (and b!505459 res!306652) b!505457))

(assert (= (and b!505457 res!306639) b!505452))

(assert (= (and b!505452 res!306641) b!505454))

(assert (= (and b!505454 res!306643) b!505465))

(assert (= (and b!505465 res!306653) b!505462))

(assert (= (and b!505462 res!306649) b!505451))

(assert (= (and b!505451 res!306650) b!505463))

(assert (= (and b!505451 (not res!306640)) b!505453))

(assert (= (and b!505453 c!59684) b!505455))

(assert (= (and b!505453 (not c!59684)) b!505464))

(assert (= (and b!505455 res!306648) b!505458))

(assert (= (and b!505453 (not res!306646)) b!505466))

(assert (= (and b!505466 res!306642) b!505460))

(assert (= (and b!505466 (not res!306644)) b!505456))

(assert (= (and b!505456 (not res!306651)) b!505450))

(declare-fun m!486147 () Bool)

(assert (=> b!505455 m!486147))

(declare-fun m!486149 () Bool)

(assert (=> b!505455 m!486149))

(declare-fun m!486151 () Bool)

(assert (=> start!45744 m!486151))

(declare-fun m!486153 () Bool)

(assert (=> start!45744 m!486153))

(declare-fun m!486155 () Bool)

(assert (=> b!505454 m!486155))

(declare-fun m!486157 () Bool)

(assert (=> b!505452 m!486157))

(declare-fun m!486159 () Bool)

(assert (=> b!505450 m!486159))

(declare-fun m!486161 () Bool)

(assert (=> b!505450 m!486161))

(declare-fun m!486163 () Bool)

(assert (=> b!505453 m!486163))

(declare-fun m!486165 () Bool)

(assert (=> b!505453 m!486165))

(declare-fun m!486167 () Bool)

(assert (=> b!505453 m!486167))

(declare-fun m!486169 () Bool)

(assert (=> b!505462 m!486169))

(assert (=> b!505451 m!486167))

(declare-fun m!486171 () Bool)

(assert (=> b!505451 m!486171))

(declare-fun m!486173 () Bool)

(assert (=> b!505451 m!486173))

(declare-fun m!486175 () Bool)

(assert (=> b!505451 m!486175))

(declare-fun m!486177 () Bool)

(assert (=> b!505451 m!486177))

(assert (=> b!505451 m!486167))

(declare-fun m!486179 () Bool)

(assert (=> b!505451 m!486179))

(assert (=> b!505451 m!486167))

(declare-fun m!486181 () Bool)

(assert (=> b!505451 m!486181))

(declare-fun m!486183 () Bool)

(assert (=> b!505451 m!486183))

(declare-fun m!486185 () Bool)

(assert (=> b!505451 m!486185))

(declare-fun m!486187 () Bool)

(assert (=> b!505457 m!486187))

(assert (=> b!505459 m!486167))

(assert (=> b!505459 m!486167))

(declare-fun m!486189 () Bool)

(assert (=> b!505459 m!486189))

(assert (=> b!505463 m!486167))

(assert (=> b!505463 m!486167))

(declare-fun m!486191 () Bool)

(assert (=> b!505463 m!486191))

(assert (=> b!505460 m!486167))

(assert (=> b!505460 m!486167))

(declare-fun m!486193 () Bool)

(assert (=> b!505460 m!486193))

(assert (=> b!505456 m!486149))

(declare-fun m!486195 () Bool)

(assert (=> b!505465 m!486195))

(check-sat (not b!505456) (not b!505450) (not b!505451) (not b!505465) (not b!505463) (not b!505460) (not b!505455) (not b!505452) (not b!505453) (not b!505454) (not b!505462) (not b!505457) (not b!505459) (not start!45744))
(check-sat)
