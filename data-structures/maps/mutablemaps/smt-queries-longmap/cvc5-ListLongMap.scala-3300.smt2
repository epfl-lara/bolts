; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45754 () Bool)

(assert start!45754)

(declare-fun b!505705 () Bool)

(declare-fun res!306866 () Bool)

(declare-fun e!296020 () Bool)

(assert (=> b!505705 (=> res!306866 e!296020)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!230676 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4086 0))(
  ( (MissingZero!4086 (index!18532 (_ BitVec 32))) (Found!4086 (index!18533 (_ BitVec 32))) (Intermediate!4086 (undefined!4898 Bool) (index!18534 (_ BitVec 32)) (x!47570 (_ BitVec 32))) (Undefined!4086) (MissingVacant!4086 (index!18535 (_ BitVec 32))) )
))
(declare-fun lt!230678 () SeekEntryResult!4086)

(declare-datatypes ((array!32470 0))(
  ( (array!32471 (arr!15612 (Array (_ BitVec 32) (_ BitVec 64))) (size!15976 (_ BitVec 32))) )
))
(declare-fun lt!230682 () array!32470)

(declare-fun lt!230679 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32470 (_ BitVec 32)) SeekEntryResult!4086)

(assert (=> b!505705 (= res!306866 (not (= lt!230678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230676 lt!230679 lt!230682 mask!3524))))))

(declare-fun b!505706 () Bool)

(declare-fun res!306871 () Bool)

(declare-fun e!296022 () Bool)

(assert (=> b!505706 (=> (not res!306871) (not e!296022))))

(declare-fun a!3235 () array!32470)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505706 (= res!306871 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!505707 () Bool)

(declare-fun res!306876 () Bool)

(assert (=> b!505707 (=> (not res!306876) (not e!296022))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!505707 (= res!306876 (and (= (size!15976 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15976 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15976 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505708 () Bool)

(declare-fun res!306874 () Bool)

(declare-fun e!296019 () Bool)

(assert (=> b!505708 (=> (not res!306874) (not e!296019))))

(declare-datatypes ((List!9823 0))(
  ( (Nil!9820) (Cons!9819 (h!10696 (_ BitVec 64)) (t!16059 List!9823)) )
))
(declare-fun arrayNoDuplicates!0 (array!32470 (_ BitVec 32) List!9823) Bool)

(assert (=> b!505708 (= res!306874 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9820))))

(declare-fun b!505709 () Bool)

(declare-fun res!306875 () Bool)

(assert (=> b!505709 (=> (not res!306875) (not e!296019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32470 (_ BitVec 32)) Bool)

(assert (=> b!505709 (= res!306875 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505710 () Bool)

(declare-datatypes ((Unit!15434 0))(
  ( (Unit!15435) )
))
(declare-fun e!296018 () Unit!15434)

(declare-fun Unit!15436 () Unit!15434)

(assert (=> b!505710 (= e!296018 Unit!15436)))

(declare-fun b!505711 () Bool)

(declare-fun e!296024 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32470 (_ BitVec 32)) SeekEntryResult!4086)

(assert (=> b!505711 (= e!296024 (= (seekEntryOrOpen!0 (select (arr!15612 a!3235) j!176) a!3235 mask!3524) (Found!4086 j!176)))))

(declare-fun e!296026 () Bool)

(declare-fun lt!230683 () SeekEntryResult!4086)

(declare-fun b!505712 () Bool)

(declare-fun lt!230684 () SeekEntryResult!4086)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32470 (_ BitVec 32)) SeekEntryResult!4086)

(assert (=> b!505712 (= e!296026 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230676 (index!18534 lt!230683) (select (arr!15612 a!3235) j!176) a!3235 mask!3524) lt!230684)))))

(declare-fun b!505714 () Bool)

(declare-fun e!296021 () Bool)

(assert (=> b!505714 (= e!296021 e!296020)))

(declare-fun res!306873 () Bool)

(assert (=> b!505714 (=> res!306873 e!296020)))

(assert (=> b!505714 (= res!306873 (or (bvsgt (x!47570 lt!230683) #b01111111111111111111111111111110) (bvslt lt!230676 #b00000000000000000000000000000000) (bvsge lt!230676 (size!15976 a!3235)) (bvslt (index!18534 lt!230683) #b00000000000000000000000000000000) (bvsge (index!18534 lt!230683) (size!15976 a!3235)) (not (= lt!230683 (Intermediate!4086 false (index!18534 lt!230683) (x!47570 lt!230683))))))))

(assert (=> b!505714 (= (index!18534 lt!230683) i!1204)))

(declare-fun lt!230673 () Unit!15434)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32470 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15434)

(assert (=> b!505714 (= lt!230673 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230676 #b00000000000000000000000000000000 (index!18534 lt!230683) (x!47570 lt!230683) mask!3524))))

(assert (=> b!505714 (and (or (= (select (arr!15612 a!3235) (index!18534 lt!230683)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15612 a!3235) (index!18534 lt!230683)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15612 a!3235) (index!18534 lt!230683)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15612 a!3235) (index!18534 lt!230683)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230677 () Unit!15434)

(assert (=> b!505714 (= lt!230677 e!296018)))

(declare-fun c!59699 () Bool)

(assert (=> b!505714 (= c!59699 (= (select (arr!15612 a!3235) (index!18534 lt!230683)) (select (arr!15612 a!3235) j!176)))))

(assert (=> b!505714 (and (bvslt (x!47570 lt!230683) #b01111111111111111111111111111110) (or (= (select (arr!15612 a!3235) (index!18534 lt!230683)) (select (arr!15612 a!3235) j!176)) (= (select (arr!15612 a!3235) (index!18534 lt!230683)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15612 a!3235) (index!18534 lt!230683)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505715 () Bool)

(declare-fun res!306870 () Bool)

(assert (=> b!505715 (=> (not res!306870) (not e!296022))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505715 (= res!306870 (validKeyInArray!0 k!2280))))

(declare-fun b!505716 () Bool)

(declare-fun res!306864 () Bool)

(assert (=> b!505716 (=> res!306864 e!296020)))

(assert (=> b!505716 (= res!306864 e!296026)))

(declare-fun res!306872 () Bool)

(assert (=> b!505716 (=> (not res!306872) (not e!296026))))

(assert (=> b!505716 (= res!306872 (bvsgt #b00000000000000000000000000000000 (x!47570 lt!230683)))))

(declare-fun b!505717 () Bool)

(assert (=> b!505717 (= e!296022 e!296019)))

(declare-fun res!306867 () Bool)

(assert (=> b!505717 (=> (not res!306867) (not e!296019))))

(declare-fun lt!230674 () SeekEntryResult!4086)

(assert (=> b!505717 (= res!306867 (or (= lt!230674 (MissingZero!4086 i!1204)) (= lt!230674 (MissingVacant!4086 i!1204))))))

(assert (=> b!505717 (= lt!230674 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!505718 () Bool)

(declare-fun res!306865 () Bool)

(assert (=> b!505718 (=> (not res!306865) (not e!296022))))

(assert (=> b!505718 (= res!306865 (validKeyInArray!0 (select (arr!15612 a!3235) j!176)))))

(declare-fun b!505719 () Bool)

(declare-fun Unit!15437 () Unit!15434)

(assert (=> b!505719 (= e!296018 Unit!15437)))

(declare-fun lt!230680 () Unit!15434)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32470 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15434)

(assert (=> b!505719 (= lt!230680 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230676 #b00000000000000000000000000000000 (index!18534 lt!230683) (x!47570 lt!230683) mask!3524))))

(declare-fun res!306877 () Bool)

(assert (=> b!505719 (= res!306877 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230676 lt!230679 lt!230682 mask!3524) (Intermediate!4086 false (index!18534 lt!230683) (x!47570 lt!230683))))))

(declare-fun e!296025 () Bool)

(assert (=> b!505719 (=> (not res!306877) (not e!296025))))

(assert (=> b!505719 e!296025))

(declare-fun b!505713 () Bool)

(assert (=> b!505713 (= e!296020 (bvsge mask!3524 #b00000000000000000000000000000000))))

(assert (=> b!505713 (= (seekEntryOrOpen!0 lt!230679 lt!230682 mask!3524) lt!230684)))

(declare-fun lt!230681 () Unit!15434)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32470 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15434)

(assert (=> b!505713 (= lt!230681 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230676 #b00000000000000000000000000000000 (index!18534 lt!230683) (x!47570 lt!230683) mask!3524))))

(declare-fun res!306868 () Bool)

(assert (=> start!45754 (=> (not res!306868) (not e!296022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45754 (= res!306868 (validMask!0 mask!3524))))

(assert (=> start!45754 e!296022))

(assert (=> start!45754 true))

(declare-fun array_inv!11386 (array!32470) Bool)

(assert (=> start!45754 (array_inv!11386 a!3235)))

(declare-fun b!505720 () Bool)

(assert (=> b!505720 (= e!296019 (not e!296021))))

(declare-fun res!306869 () Bool)

(assert (=> b!505720 (=> res!306869 e!296021)))

(assert (=> b!505720 (= res!306869 (or (= lt!230683 lt!230678) (undefined!4898 lt!230683) (not (is-Intermediate!4086 lt!230683))))))

(declare-fun lt!230672 () (_ BitVec 32))

(assert (=> b!505720 (= lt!230678 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230672 lt!230679 lt!230682 mask!3524))))

(assert (=> b!505720 (= lt!230683 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230676 (select (arr!15612 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505720 (= lt!230672 (toIndex!0 lt!230679 mask!3524))))

(assert (=> b!505720 (= lt!230679 (select (store (arr!15612 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505720 (= lt!230676 (toIndex!0 (select (arr!15612 a!3235) j!176) mask!3524))))

(assert (=> b!505720 (= lt!230682 (array!32471 (store (arr!15612 a!3235) i!1204 k!2280) (size!15976 a!3235)))))

(assert (=> b!505720 (= lt!230684 (Found!4086 j!176))))

(assert (=> b!505720 e!296024))

(declare-fun res!306878 () Bool)

(assert (=> b!505720 (=> (not res!306878) (not e!296024))))

(assert (=> b!505720 (= res!306878 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230675 () Unit!15434)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15434)

(assert (=> b!505720 (= lt!230675 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505721 () Bool)

(assert (=> b!505721 (= e!296025 false)))

(assert (= (and start!45754 res!306868) b!505707))

(assert (= (and b!505707 res!306876) b!505718))

(assert (= (and b!505718 res!306865) b!505715))

(assert (= (and b!505715 res!306870) b!505706))

(assert (= (and b!505706 res!306871) b!505717))

(assert (= (and b!505717 res!306867) b!505709))

(assert (= (and b!505709 res!306875) b!505708))

(assert (= (and b!505708 res!306874) b!505720))

(assert (= (and b!505720 res!306878) b!505711))

(assert (= (and b!505720 (not res!306869)) b!505714))

(assert (= (and b!505714 c!59699) b!505719))

(assert (= (and b!505714 (not c!59699)) b!505710))

(assert (= (and b!505719 res!306877) b!505721))

(assert (= (and b!505714 (not res!306873)) b!505716))

(assert (= (and b!505716 res!306872) b!505712))

(assert (= (and b!505716 (not res!306864)) b!505705))

(assert (= (and b!505705 (not res!306866)) b!505713))

(declare-fun m!486397 () Bool)

(assert (=> b!505711 m!486397))

(assert (=> b!505711 m!486397))

(declare-fun m!486399 () Bool)

(assert (=> b!505711 m!486399))

(declare-fun m!486401 () Bool)

(assert (=> b!505709 m!486401))

(assert (=> b!505712 m!486397))

(assert (=> b!505712 m!486397))

(declare-fun m!486403 () Bool)

(assert (=> b!505712 m!486403))

(declare-fun m!486405 () Bool)

(assert (=> b!505717 m!486405))

(declare-fun m!486407 () Bool)

(assert (=> b!505705 m!486407))

(declare-fun m!486409 () Bool)

(assert (=> b!505708 m!486409))

(declare-fun m!486411 () Bool)

(assert (=> b!505715 m!486411))

(declare-fun m!486413 () Bool)

(assert (=> b!505713 m!486413))

(declare-fun m!486415 () Bool)

(assert (=> b!505713 m!486415))

(declare-fun m!486417 () Bool)

(assert (=> b!505719 m!486417))

(assert (=> b!505719 m!486407))

(declare-fun m!486419 () Bool)

(assert (=> b!505720 m!486419))

(declare-fun m!486421 () Bool)

(assert (=> b!505720 m!486421))

(declare-fun m!486423 () Bool)

(assert (=> b!505720 m!486423))

(declare-fun m!486425 () Bool)

(assert (=> b!505720 m!486425))

(assert (=> b!505720 m!486397))

(declare-fun m!486427 () Bool)

(assert (=> b!505720 m!486427))

(declare-fun m!486429 () Bool)

(assert (=> b!505720 m!486429))

(assert (=> b!505720 m!486397))

(declare-fun m!486431 () Bool)

(assert (=> b!505720 m!486431))

(assert (=> b!505720 m!486397))

(declare-fun m!486433 () Bool)

(assert (=> b!505720 m!486433))

(declare-fun m!486435 () Bool)

(assert (=> b!505706 m!486435))

(assert (=> b!505718 m!486397))

(assert (=> b!505718 m!486397))

(declare-fun m!486437 () Bool)

(assert (=> b!505718 m!486437))

(declare-fun m!486439 () Bool)

(assert (=> start!45754 m!486439))

(declare-fun m!486441 () Bool)

(assert (=> start!45754 m!486441))

(declare-fun m!486443 () Bool)

(assert (=> b!505714 m!486443))

(declare-fun m!486445 () Bool)

(assert (=> b!505714 m!486445))

(assert (=> b!505714 m!486397))

(push 1)

