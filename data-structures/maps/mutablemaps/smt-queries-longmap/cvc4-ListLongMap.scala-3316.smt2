; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45854 () Bool)

(assert start!45854)

(declare-fun b!507514 () Bool)

(declare-fun res!308624 () Bool)

(declare-fun e!297004 () Bool)

(assert (=> b!507514 (=> (not res!308624) (not e!297004))))

(declare-datatypes ((array!32570 0))(
  ( (array!32571 (arr!15662 (Array (_ BitVec 32) (_ BitVec 64))) (size!16026 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32570)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32570 (_ BitVec 32)) Bool)

(assert (=> b!507514 (= res!308624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!308632 () Bool)

(declare-fun e!297006 () Bool)

(assert (=> start!45854 (=> (not res!308632) (not e!297006))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45854 (= res!308632 (validMask!0 mask!3524))))

(assert (=> start!45854 e!297006))

(assert (=> start!45854 true))

(declare-fun array_inv!11436 (array!32570) Bool)

(assert (=> start!45854 (array_inv!11436 a!3235)))

(declare-fun b!507515 () Bool)

(declare-fun res!308629 () Bool)

(assert (=> b!507515 (=> (not res!308629) (not e!297006))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507515 (= res!308629 (validKeyInArray!0 k!2280))))

(declare-fun b!507516 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!297002 () Bool)

(declare-datatypes ((SeekEntryResult!4136 0))(
  ( (MissingZero!4136 (index!18732 (_ BitVec 32))) (Found!4136 (index!18733 (_ BitVec 32))) (Intermediate!4136 (undefined!4948 Bool) (index!18734 (_ BitVec 32)) (x!47748 (_ BitVec 32))) (Undefined!4136) (MissingVacant!4136 (index!18735 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32570 (_ BitVec 32)) SeekEntryResult!4136)

(assert (=> b!507516 (= e!297002 (= (seekEntryOrOpen!0 (select (arr!15662 a!3235) j!176) a!3235 mask!3524) (Found!4136 j!176)))))

(declare-fun b!507517 () Bool)

(declare-fun res!308627 () Bool)

(assert (=> b!507517 (=> (not res!308627) (not e!297006))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507517 (= res!308627 (and (= (size!16026 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16026 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16026 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507518 () Bool)

(declare-fun e!297003 () Bool)

(declare-fun e!297007 () Bool)

(assert (=> b!507518 (= e!297003 e!297007)))

(declare-fun res!308631 () Bool)

(assert (=> b!507518 (=> res!308631 e!297007)))

(declare-fun lt!231909 () Bool)

(declare-fun lt!231912 () SeekEntryResult!4136)

(assert (=> b!507518 (= res!308631 (or (and (not lt!231909) (undefined!4948 lt!231912)) (and (not lt!231909) (not (undefined!4948 lt!231912)))))))

(assert (=> b!507518 (= lt!231909 (not (is-Intermediate!4136 lt!231912)))))

(declare-fun b!507519 () Bool)

(assert (=> b!507519 (= e!297004 (not e!297003))))

(declare-fun res!308625 () Bool)

(assert (=> b!507519 (=> res!308625 e!297003)))

(declare-fun lt!231914 () array!32570)

(declare-fun lt!231913 () (_ BitVec 32))

(declare-fun lt!231906 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32570 (_ BitVec 32)) SeekEntryResult!4136)

(assert (=> b!507519 (= res!308625 (= lt!231912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231913 lt!231906 lt!231914 mask!3524)))))

(declare-fun lt!231911 () (_ BitVec 32))

(assert (=> b!507519 (= lt!231912 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231911 (select (arr!15662 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507519 (= lt!231913 (toIndex!0 lt!231906 mask!3524))))

(assert (=> b!507519 (= lt!231906 (select (store (arr!15662 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507519 (= lt!231911 (toIndex!0 (select (arr!15662 a!3235) j!176) mask!3524))))

(assert (=> b!507519 (= lt!231914 (array!32571 (store (arr!15662 a!3235) i!1204 k!2280) (size!16026 a!3235)))))

(assert (=> b!507519 e!297002))

(declare-fun res!308633 () Bool)

(assert (=> b!507519 (=> (not res!308633) (not e!297002))))

(assert (=> b!507519 (= res!308633 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15552 0))(
  ( (Unit!15553) )
))
(declare-fun lt!231908 () Unit!15552)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32570 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15552)

(assert (=> b!507519 (= lt!231908 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507520 () Bool)

(declare-fun res!308623 () Bool)

(assert (=> b!507520 (=> (not res!308623) (not e!297006))))

(assert (=> b!507520 (= res!308623 (validKeyInArray!0 (select (arr!15662 a!3235) j!176)))))

(declare-fun b!507521 () Bool)

(assert (=> b!507521 (= e!297006 e!297004)))

(declare-fun res!308630 () Bool)

(assert (=> b!507521 (=> (not res!308630) (not e!297004))))

(declare-fun lt!231907 () SeekEntryResult!4136)

(assert (=> b!507521 (= res!308630 (or (= lt!231907 (MissingZero!4136 i!1204)) (= lt!231907 (MissingVacant!4136 i!1204))))))

(assert (=> b!507521 (= lt!231907 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507522 () Bool)

(declare-fun res!308626 () Bool)

(assert (=> b!507522 (=> (not res!308626) (not e!297006))))

(declare-fun arrayContainsKey!0 (array!32570 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507522 (= res!308626 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507523 () Bool)

(declare-fun res!308628 () Bool)

(assert (=> b!507523 (=> (not res!308628) (not e!297004))))

(declare-datatypes ((List!9873 0))(
  ( (Nil!9870) (Cons!9869 (h!10746 (_ BitVec 64)) (t!16109 List!9873)) )
))
(declare-fun arrayNoDuplicates!0 (array!32570 (_ BitVec 32) List!9873) Bool)

(assert (=> b!507523 (= res!308628 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9870))))

(declare-fun b!507524 () Bool)

(assert (=> b!507524 (= e!297007 true)))

(declare-fun lt!231910 () SeekEntryResult!4136)

(assert (=> b!507524 (= lt!231910 (seekEntryOrOpen!0 lt!231906 lt!231914 mask!3524))))

(assert (=> b!507524 false))

(assert (= (and start!45854 res!308632) b!507517))

(assert (= (and b!507517 res!308627) b!507520))

(assert (= (and b!507520 res!308623) b!507515))

(assert (= (and b!507515 res!308629) b!507522))

(assert (= (and b!507522 res!308626) b!507521))

(assert (= (and b!507521 res!308630) b!507514))

(assert (= (and b!507514 res!308624) b!507523))

(assert (= (and b!507523 res!308628) b!507519))

(assert (= (and b!507519 res!308633) b!507516))

(assert (= (and b!507519 (not res!308625)) b!507518))

(assert (= (and b!507518 (not res!308631)) b!507524))

(declare-fun m!488363 () Bool)

(assert (=> b!507520 m!488363))

(assert (=> b!507520 m!488363))

(declare-fun m!488365 () Bool)

(assert (=> b!507520 m!488365))

(declare-fun m!488367 () Bool)

(assert (=> b!507521 m!488367))

(declare-fun m!488369 () Bool)

(assert (=> b!507524 m!488369))

(declare-fun m!488371 () Bool)

(assert (=> start!45854 m!488371))

(declare-fun m!488373 () Bool)

(assert (=> start!45854 m!488373))

(declare-fun m!488375 () Bool)

(assert (=> b!507515 m!488375))

(declare-fun m!488377 () Bool)

(assert (=> b!507522 m!488377))

(assert (=> b!507516 m!488363))

(assert (=> b!507516 m!488363))

(declare-fun m!488379 () Bool)

(assert (=> b!507516 m!488379))

(declare-fun m!488381 () Bool)

(assert (=> b!507519 m!488381))

(declare-fun m!488383 () Bool)

(assert (=> b!507519 m!488383))

(declare-fun m!488385 () Bool)

(assert (=> b!507519 m!488385))

(assert (=> b!507519 m!488363))

(declare-fun m!488387 () Bool)

(assert (=> b!507519 m!488387))

(assert (=> b!507519 m!488363))

(declare-fun m!488389 () Bool)

(assert (=> b!507519 m!488389))

(assert (=> b!507519 m!488363))

(declare-fun m!488391 () Bool)

(assert (=> b!507519 m!488391))

(declare-fun m!488393 () Bool)

(assert (=> b!507519 m!488393))

(declare-fun m!488395 () Bool)

(assert (=> b!507519 m!488395))

(declare-fun m!488397 () Bool)

(assert (=> b!507523 m!488397))

(declare-fun m!488399 () Bool)

(assert (=> b!507514 m!488399))

(push 1)

