; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45874 () Bool)

(assert start!45874)

(declare-fun b!507800 () Bool)

(declare-fun e!297151 () Bool)

(assert (=> b!507800 (= e!297151 false)))

(declare-fun lt!232100 () Bool)

(declare-datatypes ((array!32590 0))(
  ( (array!32591 (arr!15672 (Array (_ BitVec 32) (_ BitVec 64))) (size!16036 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32590)

(declare-datatypes ((List!9883 0))(
  ( (Nil!9880) (Cons!9879 (h!10756 (_ BitVec 64)) (t!16119 List!9883)) )
))
(declare-fun arrayNoDuplicates!0 (array!32590 (_ BitVec 32) List!9883) Bool)

(assert (=> b!507800 (= lt!232100 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9880))))

(declare-fun res!308911 () Bool)

(declare-fun e!297150 () Bool)

(assert (=> start!45874 (=> (not res!308911) (not e!297150))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45874 (= res!308911 (validMask!0 mask!3524))))

(assert (=> start!45874 e!297150))

(assert (=> start!45874 true))

(declare-fun array_inv!11446 (array!32590) Bool)

(assert (=> start!45874 (array_inv!11446 a!3235)))

(declare-fun b!507801 () Bool)

(declare-fun res!308910 () Bool)

(assert (=> b!507801 (=> (not res!308910) (not e!297151))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32590 (_ BitVec 32)) Bool)

(assert (=> b!507801 (= res!308910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507802 () Bool)

(assert (=> b!507802 (= e!297150 e!297151)))

(declare-fun res!308912 () Bool)

(assert (=> b!507802 (=> (not res!308912) (not e!297151))))

(declare-datatypes ((SeekEntryResult!4146 0))(
  ( (MissingZero!4146 (index!18772 (_ BitVec 32))) (Found!4146 (index!18773 (_ BitVec 32))) (Intermediate!4146 (undefined!4958 Bool) (index!18774 (_ BitVec 32)) (x!47790 (_ BitVec 32))) (Undefined!4146) (MissingVacant!4146 (index!18775 (_ BitVec 32))) )
))
(declare-fun lt!232099 () SeekEntryResult!4146)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507802 (= res!308912 (or (= lt!232099 (MissingZero!4146 i!1204)) (= lt!232099 (MissingVacant!4146 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32590 (_ BitVec 32)) SeekEntryResult!4146)

(assert (=> b!507802 (= lt!232099 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507803 () Bool)

(declare-fun res!308915 () Bool)

(assert (=> b!507803 (=> (not res!308915) (not e!297150))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507803 (= res!308915 (and (= (size!16036 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16036 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16036 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507804 () Bool)

(declare-fun res!308913 () Bool)

(assert (=> b!507804 (=> (not res!308913) (not e!297150))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507804 (= res!308913 (validKeyInArray!0 (select (arr!15672 a!3235) j!176)))))

(declare-fun b!507805 () Bool)

(declare-fun res!308909 () Bool)

(assert (=> b!507805 (=> (not res!308909) (not e!297150))))

(declare-fun arrayContainsKey!0 (array!32590 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507805 (= res!308909 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507806 () Bool)

(declare-fun res!308914 () Bool)

(assert (=> b!507806 (=> (not res!308914) (not e!297150))))

(assert (=> b!507806 (= res!308914 (validKeyInArray!0 k!2280))))

(assert (= (and start!45874 res!308911) b!507803))

(assert (= (and b!507803 res!308915) b!507804))

(assert (= (and b!507804 res!308913) b!507806))

(assert (= (and b!507806 res!308914) b!507805))

(assert (= (and b!507805 res!308909) b!507802))

(assert (= (and b!507802 res!308912) b!507801))

(assert (= (and b!507801 res!308910) b!507800))

(declare-fun m!488683 () Bool)

(assert (=> b!507801 m!488683))

(declare-fun m!488685 () Bool)

(assert (=> b!507802 m!488685))

(declare-fun m!488687 () Bool)

(assert (=> b!507805 m!488687))

(declare-fun m!488689 () Bool)

(assert (=> b!507804 m!488689))

(assert (=> b!507804 m!488689))

(declare-fun m!488691 () Bool)

(assert (=> b!507804 m!488691))

(declare-fun m!488693 () Bool)

(assert (=> b!507806 m!488693))

(declare-fun m!488695 () Bool)

(assert (=> start!45874 m!488695))

(declare-fun m!488697 () Bool)

(assert (=> start!45874 m!488697))

(declare-fun m!488699 () Bool)

(assert (=> b!507800 m!488699))

(push 1)

