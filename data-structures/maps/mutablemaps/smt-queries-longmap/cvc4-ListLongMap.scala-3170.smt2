; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44660 () Bool)

(assert start!44660)

(declare-fun b!489672 () Bool)

(declare-fun e!287945 () Bool)

(assert (=> b!489672 (= e!287945 (not true))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!31679 0))(
  ( (array!31680 (arr!15224 (Array (_ BitVec 32) (_ BitVec 64))) (size!15588 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31679)

(declare-fun lt!221075 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3698 0))(
  ( (MissingZero!3698 (index!16971 (_ BitVec 32))) (Found!3698 (index!16972 (_ BitVec 32))) (Intermediate!3698 (undefined!4510 Bool) (index!16973 (_ BitVec 32)) (x!46103 (_ BitVec 32))) (Undefined!3698) (MissingVacant!3698 (index!16974 (_ BitVec 32))) )
))
(declare-fun lt!221076 () SeekEntryResult!3698)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31679 (_ BitVec 32)) SeekEntryResult!3698)

(assert (=> b!489672 (= lt!221076 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221075 (select (store (arr!15224 a!3235) i!1204 k!2280) j!176) (array!31680 (store (arr!15224 a!3235) i!1204 k!2280) (size!15588 a!3235)) mask!3524))))

(declare-fun lt!221073 () (_ BitVec 32))

(declare-fun lt!221074 () SeekEntryResult!3698)

(assert (=> b!489672 (= lt!221074 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!221073 (select (arr!15224 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!489672 (= lt!221075 (toIndex!0 (select (store (arr!15224 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!489672 (= lt!221073 (toIndex!0 (select (arr!15224 a!3235) j!176) mask!3524))))

(declare-fun e!287947 () Bool)

(assert (=> b!489672 e!287947))

(declare-fun res!292759 () Bool)

(assert (=> b!489672 (=> (not res!292759) (not e!287947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31679 (_ BitVec 32)) Bool)

(assert (=> b!489672 (= res!292759 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14334 0))(
  ( (Unit!14335) )
))
(declare-fun lt!221078 () Unit!14334)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14334)

(assert (=> b!489672 (= lt!221078 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!489673 () Bool)

(declare-fun res!292762 () Bool)

(declare-fun e!287944 () Bool)

(assert (=> b!489673 (=> (not res!292762) (not e!287944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!489673 (= res!292762 (validKeyInArray!0 k!2280))))

(declare-fun b!489675 () Bool)

(declare-fun res!292760 () Bool)

(assert (=> b!489675 (=> (not res!292760) (not e!287944))))

(assert (=> b!489675 (= res!292760 (and (= (size!15588 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15588 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15588 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!489676 () Bool)

(assert (=> b!489676 (= e!287944 e!287945)))

(declare-fun res!292758 () Bool)

(assert (=> b!489676 (=> (not res!292758) (not e!287945))))

(declare-fun lt!221077 () SeekEntryResult!3698)

(assert (=> b!489676 (= res!292758 (or (= lt!221077 (MissingZero!3698 i!1204)) (= lt!221077 (MissingVacant!3698 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31679 (_ BitVec 32)) SeekEntryResult!3698)

(assert (=> b!489676 (= lt!221077 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!489677 () Bool)

(declare-fun res!292763 () Bool)

(assert (=> b!489677 (=> (not res!292763) (not e!287944))))

(declare-fun arrayContainsKey!0 (array!31679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!489677 (= res!292763 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!489678 () Bool)

(assert (=> b!489678 (= e!287947 (= (seekEntryOrOpen!0 (select (arr!15224 a!3235) j!176) a!3235 mask!3524) (Found!3698 j!176)))))

(declare-fun b!489679 () Bool)

(declare-fun res!292765 () Bool)

(assert (=> b!489679 (=> (not res!292765) (not e!287945))))

(declare-datatypes ((List!9435 0))(
  ( (Nil!9432) (Cons!9431 (h!10293 (_ BitVec 64)) (t!15671 List!9435)) )
))
(declare-fun arrayNoDuplicates!0 (array!31679 (_ BitVec 32) List!9435) Bool)

(assert (=> b!489679 (= res!292765 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9432))))

(declare-fun b!489680 () Bool)

(declare-fun res!292764 () Bool)

(assert (=> b!489680 (=> (not res!292764) (not e!287945))))

(assert (=> b!489680 (= res!292764 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!292761 () Bool)

(assert (=> start!44660 (=> (not res!292761) (not e!287944))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44660 (= res!292761 (validMask!0 mask!3524))))

(assert (=> start!44660 e!287944))

(assert (=> start!44660 true))

(declare-fun array_inv!10998 (array!31679) Bool)

(assert (=> start!44660 (array_inv!10998 a!3235)))

(declare-fun b!489674 () Bool)

(declare-fun res!292766 () Bool)

(assert (=> b!489674 (=> (not res!292766) (not e!287944))))

(assert (=> b!489674 (= res!292766 (validKeyInArray!0 (select (arr!15224 a!3235) j!176)))))

(assert (= (and start!44660 res!292761) b!489675))

(assert (= (and b!489675 res!292760) b!489674))

(assert (= (and b!489674 res!292766) b!489673))

(assert (= (and b!489673 res!292762) b!489677))

(assert (= (and b!489677 res!292763) b!489676))

(assert (= (and b!489676 res!292758) b!489680))

(assert (= (and b!489680 res!292764) b!489679))

(assert (= (and b!489679 res!292765) b!489672))

(assert (= (and b!489672 res!292759) b!489678))

(declare-fun m!469627 () Bool)

(assert (=> b!489673 m!469627))

(declare-fun m!469629 () Bool)

(assert (=> b!489680 m!469629))

(declare-fun m!469631 () Bool)

(assert (=> b!489679 m!469631))

(declare-fun m!469633 () Bool)

(assert (=> b!489672 m!469633))

(declare-fun m!469635 () Bool)

(assert (=> b!489672 m!469635))

(declare-fun m!469637 () Bool)

(assert (=> b!489672 m!469637))

(declare-fun m!469639 () Bool)

(assert (=> b!489672 m!469639))

(assert (=> b!489672 m!469635))

(declare-fun m!469641 () Bool)

(assert (=> b!489672 m!469641))

(declare-fun m!469643 () Bool)

(assert (=> b!489672 m!469643))

(assert (=> b!489672 m!469641))

(declare-fun m!469645 () Bool)

(assert (=> b!489672 m!469645))

(assert (=> b!489672 m!469641))

(declare-fun m!469647 () Bool)

(assert (=> b!489672 m!469647))

(assert (=> b!489672 m!469635))

(declare-fun m!469649 () Bool)

(assert (=> b!489672 m!469649))

(declare-fun m!469651 () Bool)

(assert (=> b!489677 m!469651))

(assert (=> b!489674 m!469641))

(assert (=> b!489674 m!469641))

(declare-fun m!469653 () Bool)

(assert (=> b!489674 m!469653))

(declare-fun m!469655 () Bool)

(assert (=> b!489676 m!469655))

(declare-fun m!469657 () Bool)

(assert (=> start!44660 m!469657))

(declare-fun m!469659 () Bool)

(assert (=> start!44660 m!469659))

(assert (=> b!489678 m!469641))

(assert (=> b!489678 m!469641))

(declare-fun m!469661 () Bool)

(assert (=> b!489678 m!469661))

(push 1)

