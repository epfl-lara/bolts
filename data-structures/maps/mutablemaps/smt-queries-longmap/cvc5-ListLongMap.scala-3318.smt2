; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45862 () Bool)

(assert start!45862)

(declare-fun b!507646 () Bool)

(declare-fun e!297077 () Bool)

(declare-fun e!297075 () Bool)

(assert (=> b!507646 (= e!297077 e!297075)))

(declare-fun res!308765 () Bool)

(assert (=> b!507646 (=> (not res!308765) (not e!297075))))

(declare-datatypes ((SeekEntryResult!4140 0))(
  ( (MissingZero!4140 (index!18748 (_ BitVec 32))) (Found!4140 (index!18749 (_ BitVec 32))) (Intermediate!4140 (undefined!4952 Bool) (index!18750 (_ BitVec 32)) (x!47768 (_ BitVec 32))) (Undefined!4140) (MissingVacant!4140 (index!18751 (_ BitVec 32))) )
))
(declare-fun lt!232021 () SeekEntryResult!4140)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507646 (= res!308765 (or (= lt!232021 (MissingZero!4140 i!1204)) (= lt!232021 (MissingVacant!4140 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32578 0))(
  ( (array!32579 (arr!15666 (Array (_ BitVec 32) (_ BitVec 64))) (size!16030 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32578)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32578 (_ BitVec 32)) SeekEntryResult!4140)

(assert (=> b!507646 (= lt!232021 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507647 () Bool)

(declare-fun res!308760 () Bool)

(assert (=> b!507647 (=> (not res!308760) (not e!297077))))

(declare-fun arrayContainsKey!0 (array!32578 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507647 (= res!308760 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507648 () Bool)

(declare-fun res!308763 () Bool)

(assert (=> b!507648 (=> (not res!308763) (not e!297075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32578 (_ BitVec 32)) Bool)

(assert (=> b!507648 (= res!308763 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507649 () Bool)

(declare-fun res!308756 () Bool)

(assert (=> b!507649 (=> (not res!308756) (not e!297077))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507649 (= res!308756 (and (= (size!16030 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16030 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16030 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!308757 () Bool)

(assert (=> start!45862 (=> (not res!308757) (not e!297077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45862 (= res!308757 (validMask!0 mask!3524))))

(assert (=> start!45862 e!297077))

(assert (=> start!45862 true))

(declare-fun array_inv!11440 (array!32578) Bool)

(assert (=> start!45862 (array_inv!11440 a!3235)))

(declare-fun b!507650 () Bool)

(declare-fun res!308762 () Bool)

(assert (=> b!507650 (=> (not res!308762) (not e!297075))))

(declare-datatypes ((List!9877 0))(
  ( (Nil!9874) (Cons!9873 (h!10750 (_ BitVec 64)) (t!16113 List!9877)) )
))
(declare-fun arrayNoDuplicates!0 (array!32578 (_ BitVec 32) List!9877) Bool)

(assert (=> b!507650 (= res!308762 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9874))))

(declare-fun b!507651 () Bool)

(declare-fun e!297078 () Bool)

(assert (=> b!507651 (= e!297075 (not e!297078))))

(declare-fun res!308755 () Bool)

(assert (=> b!507651 (=> res!308755 e!297078)))

(declare-fun lt!232016 () array!32578)

(declare-fun lt!232015 () (_ BitVec 32))

(declare-fun lt!232017 () (_ BitVec 64))

(declare-fun lt!232018 () SeekEntryResult!4140)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32578 (_ BitVec 32)) SeekEntryResult!4140)

(assert (=> b!507651 (= res!308755 (= lt!232018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232015 lt!232017 lt!232016 mask!3524)))))

(declare-fun lt!232022 () (_ BitVec 32))

(assert (=> b!507651 (= lt!232018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232022 (select (arr!15666 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507651 (= lt!232015 (toIndex!0 lt!232017 mask!3524))))

(assert (=> b!507651 (= lt!232017 (select (store (arr!15666 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507651 (= lt!232022 (toIndex!0 (select (arr!15666 a!3235) j!176) mask!3524))))

(assert (=> b!507651 (= lt!232016 (array!32579 (store (arr!15666 a!3235) i!1204 k!2280) (size!16030 a!3235)))))

(declare-fun e!297076 () Bool)

(assert (=> b!507651 e!297076))

(declare-fun res!308764 () Bool)

(assert (=> b!507651 (=> (not res!308764) (not e!297076))))

(assert (=> b!507651 (= res!308764 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15560 0))(
  ( (Unit!15561) )
))
(declare-fun lt!232020 () Unit!15560)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32578 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15560)

(assert (=> b!507651 (= lt!232020 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507652 () Bool)

(assert (=> b!507652 (= e!297076 (= (seekEntryOrOpen!0 (select (arr!15666 a!3235) j!176) a!3235 mask!3524) (Found!4140 j!176)))))

(declare-fun b!507653 () Bool)

(declare-fun res!308758 () Bool)

(assert (=> b!507653 (=> (not res!308758) (not e!297077))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507653 (= res!308758 (validKeyInArray!0 k!2280))))

(declare-fun b!507654 () Bool)

(declare-fun res!308759 () Bool)

(assert (=> b!507654 (=> (not res!308759) (not e!297077))))

(assert (=> b!507654 (= res!308759 (validKeyInArray!0 (select (arr!15666 a!3235) j!176)))))

(declare-fun b!507655 () Bool)

(declare-fun e!297074 () Bool)

(assert (=> b!507655 (= e!297078 e!297074)))

(declare-fun res!308761 () Bool)

(assert (=> b!507655 (=> res!308761 e!297074)))

(declare-fun lt!232019 () Bool)

(assert (=> b!507655 (= res!308761 (or (and (not lt!232019) (undefined!4952 lt!232018)) (and (not lt!232019) (not (undefined!4952 lt!232018)))))))

(assert (=> b!507655 (= lt!232019 (not (is-Intermediate!4140 lt!232018)))))

(declare-fun b!507656 () Bool)

(assert (=> b!507656 (= e!297074 true)))

(declare-fun lt!232014 () SeekEntryResult!4140)

(assert (=> b!507656 (= lt!232014 (seekEntryOrOpen!0 lt!232017 lt!232016 mask!3524))))

(assert (=> b!507656 false))

(assert (= (and start!45862 res!308757) b!507649))

(assert (= (and b!507649 res!308756) b!507654))

(assert (= (and b!507654 res!308759) b!507653))

(assert (= (and b!507653 res!308758) b!507647))

(assert (= (and b!507647 res!308760) b!507646))

(assert (= (and b!507646 res!308765) b!507648))

(assert (= (and b!507648 res!308763) b!507650))

(assert (= (and b!507650 res!308762) b!507651))

(assert (= (and b!507651 res!308764) b!507652))

(assert (= (and b!507651 (not res!308755)) b!507655))

(assert (= (and b!507655 (not res!308761)) b!507656))

(declare-fun m!488515 () Bool)

(assert (=> start!45862 m!488515))

(declare-fun m!488517 () Bool)

(assert (=> start!45862 m!488517))

(declare-fun m!488519 () Bool)

(assert (=> b!507653 m!488519))

(declare-fun m!488521 () Bool)

(assert (=> b!507647 m!488521))

(declare-fun m!488523 () Bool)

(assert (=> b!507648 m!488523))

(declare-fun m!488525 () Bool)

(assert (=> b!507654 m!488525))

(assert (=> b!507654 m!488525))

(declare-fun m!488527 () Bool)

(assert (=> b!507654 m!488527))

(declare-fun m!488529 () Bool)

(assert (=> b!507656 m!488529))

(assert (=> b!507652 m!488525))

(assert (=> b!507652 m!488525))

(declare-fun m!488531 () Bool)

(assert (=> b!507652 m!488531))

(declare-fun m!488533 () Bool)

(assert (=> b!507650 m!488533))

(assert (=> b!507651 m!488525))

(declare-fun m!488535 () Bool)

(assert (=> b!507651 m!488535))

(declare-fun m!488537 () Bool)

(assert (=> b!507651 m!488537))

(declare-fun m!488539 () Bool)

(assert (=> b!507651 m!488539))

(declare-fun m!488541 () Bool)

(assert (=> b!507651 m!488541))

(assert (=> b!507651 m!488525))

(declare-fun m!488543 () Bool)

(assert (=> b!507651 m!488543))

(assert (=> b!507651 m!488525))

(declare-fun m!488545 () Bool)

(assert (=> b!507651 m!488545))

(declare-fun m!488547 () Bool)

(assert (=> b!507651 m!488547))

(declare-fun m!488549 () Bool)

(assert (=> b!507651 m!488549))

(declare-fun m!488551 () Bool)

(assert (=> b!507646 m!488551))

(push 1)

