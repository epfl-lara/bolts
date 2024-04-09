; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45864 () Bool)

(assert start!45864)

(declare-fun b!507679 () Bool)

(declare-fun e!297097 () Bool)

(assert (=> b!507679 (= e!297097 true)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4141 0))(
  ( (MissingZero!4141 (index!18752 (_ BitVec 32))) (Found!4141 (index!18753 (_ BitVec 32))) (Intermediate!4141 (undefined!4953 Bool) (index!18754 (_ BitVec 32)) (x!47769 (_ BitVec 32))) (Undefined!4141) (MissingVacant!4141 (index!18755 (_ BitVec 32))) )
))
(declare-fun lt!232048 () SeekEntryResult!4141)

(declare-datatypes ((array!32580 0))(
  ( (array!32581 (arr!15667 (Array (_ BitVec 32) (_ BitVec 64))) (size!16031 (_ BitVec 32))) )
))
(declare-fun lt!232049 () array!32580)

(declare-fun lt!232041 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32580 (_ BitVec 32)) SeekEntryResult!4141)

(assert (=> b!507679 (= lt!232048 (seekEntryOrOpen!0 lt!232041 lt!232049 mask!3524))))

(assert (=> b!507679 false))

(declare-fun b!507680 () Bool)

(declare-fun res!308793 () Bool)

(declare-fun e!297093 () Bool)

(assert (=> b!507680 (=> (not res!308793) (not e!297093))))

(declare-fun a!3235 () array!32580)

(declare-datatypes ((List!9878 0))(
  ( (Nil!9875) (Cons!9874 (h!10751 (_ BitVec 64)) (t!16114 List!9878)) )
))
(declare-fun arrayNoDuplicates!0 (array!32580 (_ BitVec 32) List!9878) Bool)

(assert (=> b!507680 (= res!308793 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9875))))

(declare-fun res!308790 () Bool)

(declare-fun e!297095 () Bool)

(assert (=> start!45864 (=> (not res!308790) (not e!297095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45864 (= res!308790 (validMask!0 mask!3524))))

(assert (=> start!45864 e!297095))

(assert (=> start!45864 true))

(declare-fun array_inv!11441 (array!32580) Bool)

(assert (=> start!45864 (array_inv!11441 a!3235)))

(declare-fun b!507681 () Bool)

(declare-fun res!308796 () Bool)

(assert (=> b!507681 (=> (not res!308796) (not e!297095))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507681 (= res!308796 (validKeyInArray!0 (select (arr!15667 a!3235) j!176)))))

(declare-fun b!507682 () Bool)

(declare-fun res!308788 () Bool)

(assert (=> b!507682 (=> (not res!308788) (not e!297095))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!507682 (= res!308788 (validKeyInArray!0 k0!2280))))

(declare-fun b!507683 () Bool)

(declare-fun res!308791 () Bool)

(assert (=> b!507683 (=> (not res!308791) (not e!297095))))

(declare-fun arrayContainsKey!0 (array!32580 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507683 (= res!308791 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507684 () Bool)

(assert (=> b!507684 (= e!297095 e!297093)))

(declare-fun res!308789 () Bool)

(assert (=> b!507684 (=> (not res!308789) (not e!297093))))

(declare-fun lt!232044 () SeekEntryResult!4141)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507684 (= res!308789 (or (= lt!232044 (MissingZero!4141 i!1204)) (= lt!232044 (MissingVacant!4141 i!1204))))))

(assert (=> b!507684 (= lt!232044 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!507685 () Bool)

(declare-fun res!308798 () Bool)

(assert (=> b!507685 (=> (not res!308798) (not e!297093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32580 (_ BitVec 32)) Bool)

(assert (=> b!507685 (= res!308798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507686 () Bool)

(declare-fun e!297094 () Bool)

(assert (=> b!507686 (= e!297094 e!297097)))

(declare-fun res!308795 () Bool)

(assert (=> b!507686 (=> res!308795 e!297097)))

(declare-fun lt!232045 () Bool)

(declare-fun lt!232043 () SeekEntryResult!4141)

(assert (=> b!507686 (= res!308795 (or (and (not lt!232045) (undefined!4953 lt!232043)) (and (not lt!232045) (not (undefined!4953 lt!232043)))))))

(get-info :version)

(assert (=> b!507686 (= lt!232045 (not ((_ is Intermediate!4141) lt!232043)))))

(declare-fun b!507687 () Bool)

(assert (=> b!507687 (= e!297093 (not e!297094))))

(declare-fun res!308797 () Bool)

(assert (=> b!507687 (=> res!308797 e!297094)))

(declare-fun lt!232042 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32580 (_ BitVec 32)) SeekEntryResult!4141)

(assert (=> b!507687 (= res!308797 (= lt!232043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232042 lt!232041 lt!232049 mask!3524)))))

(declare-fun lt!232046 () (_ BitVec 32))

(assert (=> b!507687 (= lt!232043 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232046 (select (arr!15667 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507687 (= lt!232042 (toIndex!0 lt!232041 mask!3524))))

(assert (=> b!507687 (= lt!232041 (select (store (arr!15667 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!507687 (= lt!232046 (toIndex!0 (select (arr!15667 a!3235) j!176) mask!3524))))

(assert (=> b!507687 (= lt!232049 (array!32581 (store (arr!15667 a!3235) i!1204 k0!2280) (size!16031 a!3235)))))

(declare-fun e!297092 () Bool)

(assert (=> b!507687 e!297092))

(declare-fun res!308794 () Bool)

(assert (=> b!507687 (=> (not res!308794) (not e!297092))))

(assert (=> b!507687 (= res!308794 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15562 0))(
  ( (Unit!15563) )
))
(declare-fun lt!232047 () Unit!15562)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32580 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15562)

(assert (=> b!507687 (= lt!232047 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507688 () Bool)

(declare-fun res!308792 () Bool)

(assert (=> b!507688 (=> (not res!308792) (not e!297095))))

(assert (=> b!507688 (= res!308792 (and (= (size!16031 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16031 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16031 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507689 () Bool)

(assert (=> b!507689 (= e!297092 (= (seekEntryOrOpen!0 (select (arr!15667 a!3235) j!176) a!3235 mask!3524) (Found!4141 j!176)))))

(assert (= (and start!45864 res!308790) b!507688))

(assert (= (and b!507688 res!308792) b!507681))

(assert (= (and b!507681 res!308796) b!507682))

(assert (= (and b!507682 res!308788) b!507683))

(assert (= (and b!507683 res!308791) b!507684))

(assert (= (and b!507684 res!308789) b!507685))

(assert (= (and b!507685 res!308798) b!507680))

(assert (= (and b!507680 res!308793) b!507687))

(assert (= (and b!507687 res!308794) b!507689))

(assert (= (and b!507687 (not res!308797)) b!507686))

(assert (= (and b!507686 (not res!308795)) b!507679))

(declare-fun m!488553 () Bool)

(assert (=> b!507689 m!488553))

(assert (=> b!507689 m!488553))

(declare-fun m!488555 () Bool)

(assert (=> b!507689 m!488555))

(declare-fun m!488557 () Bool)

(assert (=> b!507682 m!488557))

(declare-fun m!488559 () Bool)

(assert (=> b!507683 m!488559))

(declare-fun m!488561 () Bool)

(assert (=> b!507680 m!488561))

(assert (=> b!507681 m!488553))

(assert (=> b!507681 m!488553))

(declare-fun m!488563 () Bool)

(assert (=> b!507681 m!488563))

(declare-fun m!488565 () Bool)

(assert (=> b!507687 m!488565))

(declare-fun m!488567 () Bool)

(assert (=> b!507687 m!488567))

(declare-fun m!488569 () Bool)

(assert (=> b!507687 m!488569))

(assert (=> b!507687 m!488553))

(declare-fun m!488571 () Bool)

(assert (=> b!507687 m!488571))

(assert (=> b!507687 m!488553))

(declare-fun m!488573 () Bool)

(assert (=> b!507687 m!488573))

(assert (=> b!507687 m!488553))

(declare-fun m!488575 () Bool)

(assert (=> b!507687 m!488575))

(declare-fun m!488577 () Bool)

(assert (=> b!507687 m!488577))

(declare-fun m!488579 () Bool)

(assert (=> b!507687 m!488579))

(declare-fun m!488581 () Bool)

(assert (=> b!507684 m!488581))

(declare-fun m!488583 () Bool)

(assert (=> b!507679 m!488583))

(declare-fun m!488585 () Bool)

(assert (=> start!45864 m!488585))

(declare-fun m!488587 () Bool)

(assert (=> start!45864 m!488587))

(declare-fun m!488589 () Bool)

(assert (=> b!507685 m!488589))

(check-sat (not b!507683) (not b!507680) (not b!507687) (not b!507679) (not start!45864) (not b!507682) (not b!507689) (not b!507685) (not b!507684) (not b!507681))
(check-sat)
