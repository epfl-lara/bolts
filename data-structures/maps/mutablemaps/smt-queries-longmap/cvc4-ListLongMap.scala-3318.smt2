; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45866 () Bool)

(assert start!45866)

(declare-fun b!507712 () Bool)

(declare-fun e!297113 () Bool)

(declare-fun e!297114 () Bool)

(assert (=> b!507712 (= e!297113 (not e!297114))))

(declare-fun res!308823 () Bool)

(assert (=> b!507712 (=> res!308823 e!297114)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!232074 () (_ BitVec 64))

(declare-datatypes ((array!32582 0))(
  ( (array!32583 (arr!15668 (Array (_ BitVec 32) (_ BitVec 64))) (size!16032 (_ BitVec 32))) )
))
(declare-fun lt!232068 () array!32582)

(declare-datatypes ((SeekEntryResult!4142 0))(
  ( (MissingZero!4142 (index!18756 (_ BitVec 32))) (Found!4142 (index!18757 (_ BitVec 32))) (Intermediate!4142 (undefined!4954 Bool) (index!18758 (_ BitVec 32)) (x!47770 (_ BitVec 32))) (Undefined!4142) (MissingVacant!4142 (index!18759 (_ BitVec 32))) )
))
(declare-fun lt!232071 () SeekEntryResult!4142)

(declare-fun lt!232072 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32582 (_ BitVec 32)) SeekEntryResult!4142)

(assert (=> b!507712 (= res!308823 (= lt!232071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232072 lt!232074 lt!232068 mask!3524)))))

(declare-fun lt!232070 () (_ BitVec 32))

(declare-fun a!3235 () array!32582)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507712 (= lt!232071 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!232070 (select (arr!15668 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507712 (= lt!232072 (toIndex!0 lt!232074 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507712 (= lt!232074 (select (store (arr!15668 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!507712 (= lt!232070 (toIndex!0 (select (arr!15668 a!3235) j!176) mask!3524))))

(assert (=> b!507712 (= lt!232068 (array!32583 (store (arr!15668 a!3235) i!1204 k!2280) (size!16032 a!3235)))))

(declare-fun e!297111 () Bool)

(assert (=> b!507712 e!297111))

(declare-fun res!308826 () Bool)

(assert (=> b!507712 (=> (not res!308826) (not e!297111))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32582 (_ BitVec 32)) Bool)

(assert (=> b!507712 (= res!308826 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15564 0))(
  ( (Unit!15565) )
))
(declare-fun lt!232075 () Unit!15564)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32582 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15564)

(assert (=> b!507712 (= lt!232075 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!308822 () Bool)

(declare-fun e!297110 () Bool)

(assert (=> start!45866 (=> (not res!308822) (not e!297110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45866 (= res!308822 (validMask!0 mask!3524))))

(assert (=> start!45866 e!297110))

(assert (=> start!45866 true))

(declare-fun array_inv!11442 (array!32582) Bool)

(assert (=> start!45866 (array_inv!11442 a!3235)))

(declare-fun b!507713 () Bool)

(declare-fun res!308821 () Bool)

(assert (=> b!507713 (=> (not res!308821) (not e!297113))))

(assert (=> b!507713 (= res!308821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507714 () Bool)

(declare-fun e!297115 () Bool)

(assert (=> b!507714 (= e!297115 true)))

(declare-fun lt!232069 () SeekEntryResult!4142)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32582 (_ BitVec 32)) SeekEntryResult!4142)

(assert (=> b!507714 (= lt!232069 (seekEntryOrOpen!0 lt!232074 lt!232068 mask!3524))))

(assert (=> b!507714 false))

(declare-fun b!507715 () Bool)

(assert (=> b!507715 (= e!297110 e!297113)))

(declare-fun res!308827 () Bool)

(assert (=> b!507715 (=> (not res!308827) (not e!297113))))

(declare-fun lt!232076 () SeekEntryResult!4142)

(assert (=> b!507715 (= res!308827 (or (= lt!232076 (MissingZero!4142 i!1204)) (= lt!232076 (MissingVacant!4142 i!1204))))))

(assert (=> b!507715 (= lt!232076 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507716 () Bool)

(declare-fun res!308824 () Bool)

(assert (=> b!507716 (=> (not res!308824) (not e!297110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507716 (= res!308824 (validKeyInArray!0 k!2280))))

(declare-fun b!507717 () Bool)

(declare-fun res!308825 () Bool)

(assert (=> b!507717 (=> (not res!308825) (not e!297110))))

(assert (=> b!507717 (= res!308825 (validKeyInArray!0 (select (arr!15668 a!3235) j!176)))))

(declare-fun b!507718 () Bool)

(assert (=> b!507718 (= e!297111 (= (seekEntryOrOpen!0 (select (arr!15668 a!3235) j!176) a!3235 mask!3524) (Found!4142 j!176)))))

(declare-fun b!507719 () Bool)

(declare-fun res!308830 () Bool)

(assert (=> b!507719 (=> (not res!308830) (not e!297110))))

(assert (=> b!507719 (= res!308830 (and (= (size!16032 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16032 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16032 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507720 () Bool)

(declare-fun res!308829 () Bool)

(assert (=> b!507720 (=> (not res!308829) (not e!297110))))

(declare-fun arrayContainsKey!0 (array!32582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507720 (= res!308829 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507721 () Bool)

(assert (=> b!507721 (= e!297114 e!297115)))

(declare-fun res!308828 () Bool)

(assert (=> b!507721 (=> res!308828 e!297115)))

(declare-fun lt!232073 () Bool)

(assert (=> b!507721 (= res!308828 (or (and (not lt!232073) (undefined!4954 lt!232071)) (and (not lt!232073) (not (undefined!4954 lt!232071)))))))

(assert (=> b!507721 (= lt!232073 (not (is-Intermediate!4142 lt!232071)))))

(declare-fun b!507722 () Bool)

(declare-fun res!308831 () Bool)

(assert (=> b!507722 (=> (not res!308831) (not e!297113))))

(declare-datatypes ((List!9879 0))(
  ( (Nil!9876) (Cons!9875 (h!10752 (_ BitVec 64)) (t!16115 List!9879)) )
))
(declare-fun arrayNoDuplicates!0 (array!32582 (_ BitVec 32) List!9879) Bool)

(assert (=> b!507722 (= res!308831 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9876))))

(assert (= (and start!45866 res!308822) b!507719))

(assert (= (and b!507719 res!308830) b!507717))

(assert (= (and b!507717 res!308825) b!507716))

(assert (= (and b!507716 res!308824) b!507720))

(assert (= (and b!507720 res!308829) b!507715))

(assert (= (and b!507715 res!308827) b!507713))

(assert (= (and b!507713 res!308821) b!507722))

(assert (= (and b!507722 res!308831) b!507712))

(assert (= (and b!507712 res!308826) b!507718))

(assert (= (and b!507712 (not res!308823)) b!507721))

(assert (= (and b!507721 (not res!308828)) b!507714))

(declare-fun m!488591 () Bool)

(assert (=> b!507720 m!488591))

(declare-fun m!488593 () Bool)

(assert (=> b!507722 m!488593))

(declare-fun m!488595 () Bool)

(assert (=> b!507717 m!488595))

(assert (=> b!507717 m!488595))

(declare-fun m!488597 () Bool)

(assert (=> b!507717 m!488597))

(declare-fun m!488599 () Bool)

(assert (=> b!507715 m!488599))

(assert (=> b!507718 m!488595))

(assert (=> b!507718 m!488595))

(declare-fun m!488601 () Bool)

(assert (=> b!507718 m!488601))

(declare-fun m!488603 () Bool)

(assert (=> b!507713 m!488603))

(declare-fun m!488605 () Bool)

(assert (=> start!45866 m!488605))

(declare-fun m!488607 () Bool)

(assert (=> start!45866 m!488607))

(declare-fun m!488609 () Bool)

(assert (=> b!507712 m!488609))

(declare-fun m!488611 () Bool)

(assert (=> b!507712 m!488611))

(declare-fun m!488613 () Bool)

(assert (=> b!507712 m!488613))

(assert (=> b!507712 m!488595))

(declare-fun m!488615 () Bool)

(assert (=> b!507712 m!488615))

(declare-fun m!488617 () Bool)

(assert (=> b!507712 m!488617))

(declare-fun m!488619 () Bool)

(assert (=> b!507712 m!488619))

(assert (=> b!507712 m!488595))

(declare-fun m!488621 () Bool)

(assert (=> b!507712 m!488621))

(declare-fun m!488623 () Bool)

(assert (=> b!507712 m!488623))

(assert (=> b!507712 m!488595))

(declare-fun m!488625 () Bool)

(assert (=> b!507716 m!488625))

(declare-fun m!488627 () Bool)

(assert (=> b!507714 m!488627))

(push 1)

