; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45848 () Bool)

(assert start!45848)

(declare-fun b!507415 () Bool)

(declare-fun e!296949 () Bool)

(declare-fun e!296948 () Bool)

(assert (=> b!507415 (= e!296949 (not e!296948))))

(declare-fun res!308530 () Bool)

(assert (=> b!507415 (=> res!308530 e!296948)))

(declare-fun lt!231827 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4133 0))(
  ( (MissingZero!4133 (index!18720 (_ BitVec 32))) (Found!4133 (index!18721 (_ BitVec 32))) (Intermediate!4133 (undefined!4945 Bool) (index!18722 (_ BitVec 32)) (x!47737 (_ BitVec 32))) (Undefined!4133) (MissingVacant!4133 (index!18723 (_ BitVec 32))) )
))
(declare-fun lt!231828 () SeekEntryResult!4133)

(declare-fun lt!231832 () (_ BitVec 32))

(declare-datatypes ((array!32564 0))(
  ( (array!32565 (arr!15659 (Array (_ BitVec 32) (_ BitVec 64))) (size!16023 (_ BitVec 32))) )
))
(declare-fun lt!231826 () array!32564)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32564 (_ BitVec 32)) SeekEntryResult!4133)

(assert (=> b!507415 (= res!308530 (= lt!231828 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231832 lt!231827 lt!231826 mask!3524)))))

(declare-fun lt!231829 () (_ BitVec 32))

(declare-fun a!3235 () array!32564)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507415 (= lt!231828 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231829 (select (arr!15659 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507415 (= lt!231832 (toIndex!0 lt!231827 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507415 (= lt!231827 (select (store (arr!15659 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507415 (= lt!231829 (toIndex!0 (select (arr!15659 a!3235) j!176) mask!3524))))

(assert (=> b!507415 (= lt!231826 (array!32565 (store (arr!15659 a!3235) i!1204 k!2280) (size!16023 a!3235)))))

(declare-fun e!296952 () Bool)

(assert (=> b!507415 e!296952))

(declare-fun res!308526 () Bool)

(assert (=> b!507415 (=> (not res!308526) (not e!296952))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32564 (_ BitVec 32)) Bool)

(assert (=> b!507415 (= res!308526 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15546 0))(
  ( (Unit!15547) )
))
(declare-fun lt!231831 () Unit!15546)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32564 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15546)

(assert (=> b!507415 (= lt!231831 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507416 () Bool)

(declare-fun res!308528 () Bool)

(assert (=> b!507416 (=> (not res!308528) (not e!296949))))

(assert (=> b!507416 (= res!308528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507417 () Bool)

(declare-fun res!308524 () Bool)

(declare-fun e!296953 () Bool)

(assert (=> b!507417 (=> (not res!308524) (not e!296953))))

(declare-fun arrayContainsKey!0 (array!32564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507417 (= res!308524 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507418 () Bool)

(declare-fun res!308525 () Bool)

(assert (=> b!507418 (=> (not res!308525) (not e!296953))))

(assert (=> b!507418 (= res!308525 (and (= (size!16023 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16023 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16023 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507419 () Bool)

(declare-fun e!296951 () Bool)

(assert (=> b!507419 (= e!296951 true)))

(declare-fun lt!231830 () SeekEntryResult!4133)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32564 (_ BitVec 32)) SeekEntryResult!4133)

(assert (=> b!507419 (= lt!231830 (seekEntryOrOpen!0 lt!231827 lt!231826 mask!3524))))

(assert (=> b!507419 false))

(declare-fun b!507420 () Bool)

(declare-fun res!308533 () Bool)

(assert (=> b!507420 (=> (not res!308533) (not e!296949))))

(declare-datatypes ((List!9870 0))(
  ( (Nil!9867) (Cons!9866 (h!10743 (_ BitVec 64)) (t!16106 List!9870)) )
))
(declare-fun arrayNoDuplicates!0 (array!32564 (_ BitVec 32) List!9870) Bool)

(assert (=> b!507420 (= res!308533 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9867))))

(declare-fun b!507421 () Bool)

(declare-fun res!308534 () Bool)

(assert (=> b!507421 (=> (not res!308534) (not e!296953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507421 (= res!308534 (validKeyInArray!0 (select (arr!15659 a!3235) j!176)))))

(declare-fun b!507422 () Bool)

(assert (=> b!507422 (= e!296953 e!296949)))

(declare-fun res!308529 () Bool)

(assert (=> b!507422 (=> (not res!308529) (not e!296949))))

(declare-fun lt!231825 () SeekEntryResult!4133)

(assert (=> b!507422 (= res!308529 (or (= lt!231825 (MissingZero!4133 i!1204)) (= lt!231825 (MissingVacant!4133 i!1204))))))

(assert (=> b!507422 (= lt!231825 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507423 () Bool)

(declare-fun res!308531 () Bool)

(assert (=> b!507423 (=> (not res!308531) (not e!296953))))

(assert (=> b!507423 (= res!308531 (validKeyInArray!0 k!2280))))

(declare-fun res!308532 () Bool)

(assert (=> start!45848 (=> (not res!308532) (not e!296953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45848 (= res!308532 (validMask!0 mask!3524))))

(assert (=> start!45848 e!296953))

(assert (=> start!45848 true))

(declare-fun array_inv!11433 (array!32564) Bool)

(assert (=> start!45848 (array_inv!11433 a!3235)))

(declare-fun b!507424 () Bool)

(assert (=> b!507424 (= e!296948 e!296951)))

(declare-fun res!308527 () Bool)

(assert (=> b!507424 (=> res!308527 e!296951)))

(declare-fun lt!231833 () Bool)

(assert (=> b!507424 (= res!308527 (or (and (not lt!231833) (undefined!4945 lt!231828)) (and (not lt!231833) (not (undefined!4945 lt!231828)))))))

(assert (=> b!507424 (= lt!231833 (not (is-Intermediate!4133 lt!231828)))))

(declare-fun b!507425 () Bool)

(assert (=> b!507425 (= e!296952 (= (seekEntryOrOpen!0 (select (arr!15659 a!3235) j!176) a!3235 mask!3524) (Found!4133 j!176)))))

(assert (= (and start!45848 res!308532) b!507418))

(assert (= (and b!507418 res!308525) b!507421))

(assert (= (and b!507421 res!308534) b!507423))

(assert (= (and b!507423 res!308531) b!507417))

(assert (= (and b!507417 res!308524) b!507422))

(assert (= (and b!507422 res!308529) b!507416))

(assert (= (and b!507416 res!308528) b!507420))

(assert (= (and b!507420 res!308533) b!507415))

(assert (= (and b!507415 res!308526) b!507425))

(assert (= (and b!507415 (not res!308530)) b!507424))

(assert (= (and b!507424 (not res!308527)) b!507419))

(declare-fun m!488249 () Bool)

(assert (=> b!507421 m!488249))

(assert (=> b!507421 m!488249))

(declare-fun m!488251 () Bool)

(assert (=> b!507421 m!488251))

(assert (=> b!507425 m!488249))

(assert (=> b!507425 m!488249))

(declare-fun m!488253 () Bool)

(assert (=> b!507425 m!488253))

(declare-fun m!488255 () Bool)

(assert (=> b!507417 m!488255))

(declare-fun m!488257 () Bool)

(assert (=> b!507423 m!488257))

(declare-fun m!488259 () Bool)

(assert (=> b!507419 m!488259))

(declare-fun m!488261 () Bool)

(assert (=> b!507420 m!488261))

(declare-fun m!488263 () Bool)

(assert (=> b!507415 m!488263))

(declare-fun m!488265 () Bool)

(assert (=> b!507415 m!488265))

(declare-fun m!488267 () Bool)

(assert (=> b!507415 m!488267))

(assert (=> b!507415 m!488249))

(declare-fun m!488269 () Bool)

(assert (=> b!507415 m!488269))

(assert (=> b!507415 m!488249))

(declare-fun m!488271 () Bool)

(assert (=> b!507415 m!488271))

(assert (=> b!507415 m!488249))

(declare-fun m!488273 () Bool)

(assert (=> b!507415 m!488273))

(declare-fun m!488275 () Bool)

(assert (=> b!507415 m!488275))

(declare-fun m!488277 () Bool)

(assert (=> b!507415 m!488277))

(declare-fun m!488279 () Bool)

(assert (=> start!45848 m!488279))

(declare-fun m!488281 () Bool)

(assert (=> start!45848 m!488281))

(declare-fun m!488283 () Bool)

(assert (=> b!507416 m!488283))

(declare-fun m!488285 () Bool)

(assert (=> b!507422 m!488285))

(push 1)

