; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45868 () Bool)

(assert start!45868)

(declare-fun b!507737 () Bool)

(declare-fun res!308848 () Bool)

(declare-fun e!297124 () Bool)

(assert (=> b!507737 (=> (not res!308848) (not e!297124))))

(declare-datatypes ((array!32584 0))(
  ( (array!32585 (arr!15669 (Array (_ BitVec 32) (_ BitVec 64))) (size!16033 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32584)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507737 (= res!308848 (validKeyInArray!0 (select (arr!15669 a!3235) j!176)))))

(declare-fun b!507738 () Bool)

(declare-fun res!308849 () Bool)

(assert (=> b!507738 (=> (not res!308849) (not e!297124))))

(declare-fun k!2280 () (_ BitVec 64))

(assert (=> b!507738 (= res!308849 (validKeyInArray!0 k!2280))))

(declare-fun b!507739 () Bool)

(declare-fun res!308852 () Bool)

(assert (=> b!507739 (=> (not res!308852) (not e!297124))))

(declare-fun arrayContainsKey!0 (array!32584 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507739 (= res!308852 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507741 () Bool)

(declare-fun e!297122 () Bool)

(assert (=> b!507741 (= e!297124 e!297122)))

(declare-fun res!308850 () Bool)

(assert (=> b!507741 (=> (not res!308850) (not e!297122))))

(declare-datatypes ((SeekEntryResult!4143 0))(
  ( (MissingZero!4143 (index!18760 (_ BitVec 32))) (Found!4143 (index!18761 (_ BitVec 32))) (Intermediate!4143 (undefined!4955 Bool) (index!18762 (_ BitVec 32)) (x!47779 (_ BitVec 32))) (Undefined!4143) (MissingVacant!4143 (index!18763 (_ BitVec 32))) )
))
(declare-fun lt!232081 () SeekEntryResult!4143)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507741 (= res!308850 (or (= lt!232081 (MissingZero!4143 i!1204)) (= lt!232081 (MissingVacant!4143 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32584 (_ BitVec 32)) SeekEntryResult!4143)

(assert (=> b!507741 (= lt!232081 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507742 () Bool)

(assert (=> b!507742 (= e!297122 false)))

(declare-fun lt!232082 () Bool)

(declare-datatypes ((List!9880 0))(
  ( (Nil!9877) (Cons!9876 (h!10753 (_ BitVec 64)) (t!16116 List!9880)) )
))
(declare-fun arrayNoDuplicates!0 (array!32584 (_ BitVec 32) List!9880) Bool)

(assert (=> b!507742 (= lt!232082 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9877))))

(declare-fun b!507743 () Bool)

(declare-fun res!308847 () Bool)

(assert (=> b!507743 (=> (not res!308847) (not e!297122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32584 (_ BitVec 32)) Bool)

(assert (=> b!507743 (= res!308847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507740 () Bool)

(declare-fun res!308851 () Bool)

(assert (=> b!507740 (=> (not res!308851) (not e!297124))))

(assert (=> b!507740 (= res!308851 (and (= (size!16033 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16033 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16033 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!308846 () Bool)

(assert (=> start!45868 (=> (not res!308846) (not e!297124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45868 (= res!308846 (validMask!0 mask!3524))))

(assert (=> start!45868 e!297124))

(assert (=> start!45868 true))

(declare-fun array_inv!11443 (array!32584) Bool)

(assert (=> start!45868 (array_inv!11443 a!3235)))

(assert (= (and start!45868 res!308846) b!507740))

(assert (= (and b!507740 res!308851) b!507737))

(assert (= (and b!507737 res!308848) b!507738))

(assert (= (and b!507738 res!308849) b!507739))

(assert (= (and b!507739 res!308852) b!507741))

(assert (= (and b!507741 res!308850) b!507743))

(assert (= (and b!507743 res!308847) b!507742))

(declare-fun m!488629 () Bool)

(assert (=> b!507737 m!488629))

(assert (=> b!507737 m!488629))

(declare-fun m!488631 () Bool)

(assert (=> b!507737 m!488631))

(declare-fun m!488633 () Bool)

(assert (=> b!507738 m!488633))

(declare-fun m!488635 () Bool)

(assert (=> b!507741 m!488635))

(declare-fun m!488637 () Bool)

(assert (=> b!507739 m!488637))

(declare-fun m!488639 () Bool)

(assert (=> start!45868 m!488639))

(declare-fun m!488641 () Bool)

(assert (=> start!45868 m!488641))

(declare-fun m!488643 () Bool)

(assert (=> b!507743 m!488643))

(declare-fun m!488645 () Bool)

(assert (=> b!507742 m!488645))

(push 1)

