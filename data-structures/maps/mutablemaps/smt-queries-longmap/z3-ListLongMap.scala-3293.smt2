; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45714 () Bool)

(assert start!45714)

(declare-fun b!504685 () Bool)

(declare-fun res!305976 () Bool)

(declare-fun e!295486 () Bool)

(assert (=> b!504685 (=> (not res!305976) (not e!295486))))

(declare-datatypes ((array!32430 0))(
  ( (array!32431 (arr!15592 (Array (_ BitVec 32) (_ BitVec 64))) (size!15956 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32430)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32430 (_ BitVec 32)) Bool)

(assert (=> b!504685 (= res!305976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504686 () Bool)

(declare-fun res!305968 () Bool)

(declare-fun e!295485 () Bool)

(assert (=> b!504686 (=> (not res!305968) (not e!295485))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504686 (= res!305968 (validKeyInArray!0 (select (arr!15592 a!3235) j!176)))))

(declare-fun b!504687 () Bool)

(declare-datatypes ((Unit!15354 0))(
  ( (Unit!15355) )
))
(declare-fun e!295482 () Unit!15354)

(declare-fun Unit!15356 () Unit!15354)

(assert (=> b!504687 (= e!295482 Unit!15356)))

(declare-fun res!305972 () Bool)

(assert (=> start!45714 (=> (not res!305972) (not e!295485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45714 (= res!305972 (validMask!0 mask!3524))))

(assert (=> start!45714 e!295485))

(assert (=> start!45714 true))

(declare-fun array_inv!11366 (array!32430) Bool)

(assert (=> start!45714 (array_inv!11366 a!3235)))

(declare-fun b!504688 () Bool)

(declare-fun e!295480 () Bool)

(assert (=> b!504688 (= e!295480 true)))

(declare-fun lt!229918 () (_ BitVec 64))

(declare-fun lt!229922 () array!32430)

(declare-fun lt!229924 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4066 0))(
  ( (MissingZero!4066 (index!18452 (_ BitVec 32))) (Found!4066 (index!18453 (_ BitVec 32))) (Intermediate!4066 (undefined!4878 Bool) (index!18454 (_ BitVec 32)) (x!47494 (_ BitVec 32))) (Undefined!4066) (MissingVacant!4066 (index!18455 (_ BitVec 32))) )
))
(declare-fun lt!229923 () SeekEntryResult!4066)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32430 (_ BitVec 32)) SeekEntryResult!4066)

(assert (=> b!504688 (= lt!229923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229924 lt!229918 lt!229922 mask!3524))))

(declare-fun b!504689 () Bool)

(declare-fun Unit!15357 () Unit!15354)

(assert (=> b!504689 (= e!295482 Unit!15357)))

(declare-fun lt!229925 () SeekEntryResult!4066)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!229920 () Unit!15354)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32430 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15354)

(assert (=> b!504689 (= lt!229920 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!229924 #b00000000000000000000000000000000 (index!18454 lt!229925) (x!47494 lt!229925) mask!3524))))

(declare-fun res!305964 () Bool)

(assert (=> b!504689 (= res!305964 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229924 lt!229918 lt!229922 mask!3524) (Intermediate!4066 false (index!18454 lt!229925) (x!47494 lt!229925))))))

(declare-fun e!295484 () Bool)

(assert (=> b!504689 (=> (not res!305964) (not e!295484))))

(assert (=> b!504689 e!295484))

(declare-fun b!504690 () Bool)

(declare-fun res!305977 () Bool)

(assert (=> b!504690 (=> (not res!305977) (not e!295486))))

(declare-datatypes ((List!9803 0))(
  ( (Nil!9800) (Cons!9799 (h!10676 (_ BitVec 64)) (t!16039 List!9803)) )
))
(declare-fun arrayNoDuplicates!0 (array!32430 (_ BitVec 32) List!9803) Bool)

(assert (=> b!504690 (= res!305977 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9800))))

(declare-fun e!295478 () Bool)

(declare-fun b!504691 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32430 (_ BitVec 32)) SeekEntryResult!4066)

(assert (=> b!504691 (= e!295478 (= (seekEntryOrOpen!0 (select (arr!15592 a!3235) j!176) a!3235 mask!3524) (Found!4066 j!176)))))

(declare-fun b!504692 () Bool)

(declare-fun res!305967 () Bool)

(declare-fun e!295479 () Bool)

(assert (=> b!504692 (=> res!305967 e!295479)))

(get-info :version)

(assert (=> b!504692 (= res!305967 (or (undefined!4878 lt!229925) (not ((_ is Intermediate!4066) lt!229925))))))

(declare-fun b!504693 () Bool)

(assert (=> b!504693 (= e!295484 false)))

(declare-fun b!504694 () Bool)

(assert (=> b!504694 (= e!295486 (not e!295479))))

(declare-fun res!305966 () Bool)

(assert (=> b!504694 (=> res!305966 e!295479)))

(declare-fun lt!229921 () (_ BitVec 32))

(assert (=> b!504694 (= res!305966 (= lt!229925 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229921 lt!229918 lt!229922 mask!3524)))))

(assert (=> b!504694 (= lt!229925 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229924 (select (arr!15592 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504694 (= lt!229921 (toIndex!0 lt!229918 mask!3524))))

(assert (=> b!504694 (= lt!229918 (select (store (arr!15592 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!504694 (= lt!229924 (toIndex!0 (select (arr!15592 a!3235) j!176) mask!3524))))

(assert (=> b!504694 (= lt!229922 (array!32431 (store (arr!15592 a!3235) i!1204 k0!2280) (size!15956 a!3235)))))

(assert (=> b!504694 e!295478))

(declare-fun res!305974 () Bool)

(assert (=> b!504694 (=> (not res!305974) (not e!295478))))

(assert (=> b!504694 (= res!305974 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229927 () Unit!15354)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32430 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15354)

(assert (=> b!504694 (= lt!229927 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504695 () Bool)

(assert (=> b!504695 (= e!295485 e!295486)))

(declare-fun res!305978 () Bool)

(assert (=> b!504695 (=> (not res!305978) (not e!295486))))

(declare-fun lt!229928 () SeekEntryResult!4066)

(assert (=> b!504695 (= res!305978 (or (= lt!229928 (MissingZero!4066 i!1204)) (= lt!229928 (MissingVacant!4066 i!1204))))))

(assert (=> b!504695 (= lt!229928 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!504696 () Bool)

(declare-fun res!305973 () Bool)

(assert (=> b!504696 (=> (not res!305973) (not e!295485))))

(assert (=> b!504696 (= res!305973 (validKeyInArray!0 k0!2280))))

(declare-fun b!504697 () Bool)

(declare-fun res!305965 () Bool)

(assert (=> b!504697 (=> (not res!305965) (not e!295485))))

(assert (=> b!504697 (= res!305965 (and (= (size!15956 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15956 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15956 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504698 () Bool)

(declare-fun res!305969 () Bool)

(assert (=> b!504698 (=> res!305969 e!295480)))

(declare-fun e!295483 () Bool)

(assert (=> b!504698 (= res!305969 e!295483)))

(declare-fun res!305970 () Bool)

(assert (=> b!504698 (=> (not res!305970) (not e!295483))))

(assert (=> b!504698 (= res!305970 (bvsgt #b00000000000000000000000000000000 (x!47494 lt!229925)))))

(declare-fun b!504699 () Bool)

(declare-fun res!305971 () Bool)

(assert (=> b!504699 (=> (not res!305971) (not e!295485))))

(declare-fun arrayContainsKey!0 (array!32430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504699 (= res!305971 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504700 () Bool)

(assert (=> b!504700 (= e!295479 e!295480)))

(declare-fun res!305975 () Bool)

(assert (=> b!504700 (=> res!305975 e!295480)))

(assert (=> b!504700 (= res!305975 (or (bvsgt (x!47494 lt!229925) #b01111111111111111111111111111110) (bvslt lt!229924 #b00000000000000000000000000000000) (bvsge lt!229924 (size!15956 a!3235)) (bvslt (index!18454 lt!229925) #b00000000000000000000000000000000) (bvsge (index!18454 lt!229925) (size!15956 a!3235)) (not (= lt!229925 (Intermediate!4066 false (index!18454 lt!229925) (x!47494 lt!229925))))))))

(assert (=> b!504700 (= (index!18454 lt!229925) i!1204)))

(declare-fun lt!229926 () Unit!15354)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32430 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15354)

(assert (=> b!504700 (= lt!229926 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!229924 #b00000000000000000000000000000000 (index!18454 lt!229925) (x!47494 lt!229925) mask!3524))))

(assert (=> b!504700 (and (or (= (select (arr!15592 a!3235) (index!18454 lt!229925)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15592 a!3235) (index!18454 lt!229925)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15592 a!3235) (index!18454 lt!229925)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15592 a!3235) (index!18454 lt!229925)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229919 () Unit!15354)

(assert (=> b!504700 (= lt!229919 e!295482)))

(declare-fun c!59639 () Bool)

(assert (=> b!504700 (= c!59639 (= (select (arr!15592 a!3235) (index!18454 lt!229925)) (select (arr!15592 a!3235) j!176)))))

(assert (=> b!504700 (and (bvslt (x!47494 lt!229925) #b01111111111111111111111111111110) (or (= (select (arr!15592 a!3235) (index!18454 lt!229925)) (select (arr!15592 a!3235) j!176)) (= (select (arr!15592 a!3235) (index!18454 lt!229925)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15592 a!3235) (index!18454 lt!229925)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504701 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32430 (_ BitVec 32)) SeekEntryResult!4066)

(assert (=> b!504701 (= e!295483 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229924 (index!18454 lt!229925) (select (arr!15592 a!3235) j!176) a!3235 mask!3524) (Found!4066 j!176))))))

(assert (= (and start!45714 res!305972) b!504697))

(assert (= (and b!504697 res!305965) b!504686))

(assert (= (and b!504686 res!305968) b!504696))

(assert (= (and b!504696 res!305973) b!504699))

(assert (= (and b!504699 res!305971) b!504695))

(assert (= (and b!504695 res!305978) b!504685))

(assert (= (and b!504685 res!305976) b!504690))

(assert (= (and b!504690 res!305977) b!504694))

(assert (= (and b!504694 res!305974) b!504691))

(assert (= (and b!504694 (not res!305966)) b!504692))

(assert (= (and b!504692 (not res!305967)) b!504700))

(assert (= (and b!504700 c!59639) b!504689))

(assert (= (and b!504700 (not c!59639)) b!504687))

(assert (= (and b!504689 res!305964) b!504693))

(assert (= (and b!504700 (not res!305975)) b!504698))

(assert (= (and b!504698 res!305970) b!504701))

(assert (= (and b!504698 (not res!305969)) b!504688))

(declare-fun m!485417 () Bool)

(assert (=> b!504685 m!485417))

(declare-fun m!485419 () Bool)

(assert (=> b!504691 m!485419))

(assert (=> b!504691 m!485419))

(declare-fun m!485421 () Bool)

(assert (=> b!504691 m!485421))

(declare-fun m!485423 () Bool)

(assert (=> b!504690 m!485423))

(declare-fun m!485425 () Bool)

(assert (=> b!504694 m!485425))

(assert (=> b!504694 m!485419))

(declare-fun m!485427 () Bool)

(assert (=> b!504694 m!485427))

(declare-fun m!485429 () Bool)

(assert (=> b!504694 m!485429))

(declare-fun m!485431 () Bool)

(assert (=> b!504694 m!485431))

(declare-fun m!485433 () Bool)

(assert (=> b!504694 m!485433))

(assert (=> b!504694 m!485419))

(declare-fun m!485435 () Bool)

(assert (=> b!504694 m!485435))

(assert (=> b!504694 m!485419))

(declare-fun m!485437 () Bool)

(assert (=> b!504694 m!485437))

(declare-fun m!485439 () Bool)

(assert (=> b!504694 m!485439))

(declare-fun m!485441 () Bool)

(assert (=> b!504689 m!485441))

(declare-fun m!485443 () Bool)

(assert (=> b!504689 m!485443))

(declare-fun m!485445 () Bool)

(assert (=> b!504700 m!485445))

(declare-fun m!485447 () Bool)

(assert (=> b!504700 m!485447))

(assert (=> b!504700 m!485419))

(declare-fun m!485449 () Bool)

(assert (=> start!45714 m!485449))

(declare-fun m!485451 () Bool)

(assert (=> start!45714 m!485451))

(declare-fun m!485453 () Bool)

(assert (=> b!504699 m!485453))

(assert (=> b!504686 m!485419))

(assert (=> b!504686 m!485419))

(declare-fun m!485455 () Bool)

(assert (=> b!504686 m!485455))

(declare-fun m!485457 () Bool)

(assert (=> b!504696 m!485457))

(declare-fun m!485459 () Bool)

(assert (=> b!504695 m!485459))

(assert (=> b!504688 m!485443))

(assert (=> b!504701 m!485419))

(assert (=> b!504701 m!485419))

(declare-fun m!485461 () Bool)

(assert (=> b!504701 m!485461))

(check-sat (not b!504685) (not start!45714) (not b!504686) (not b!504700) (not b!504688) (not b!504696) (not b!504699) (not b!504691) (not b!504690) (not b!504695) (not b!504694) (not b!504689) (not b!504701))
(check-sat)
