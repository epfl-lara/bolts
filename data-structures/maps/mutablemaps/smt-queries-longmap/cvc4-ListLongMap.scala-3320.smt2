; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45878 () Bool)

(assert start!45878)

(declare-fun b!507842 () Bool)

(declare-fun e!297167 () Bool)

(assert (=> b!507842 (= e!297167 false)))

(declare-fun lt!232111 () Bool)

(declare-datatypes ((array!32594 0))(
  ( (array!32595 (arr!15674 (Array (_ BitVec 32) (_ BitVec 64))) (size!16038 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32594)

(declare-datatypes ((List!9885 0))(
  ( (Nil!9882) (Cons!9881 (h!10758 (_ BitVec 64)) (t!16121 List!9885)) )
))
(declare-fun arrayNoDuplicates!0 (array!32594 (_ BitVec 32) List!9885) Bool)

(assert (=> b!507842 (= lt!232111 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9882))))

(declare-fun b!507843 () Bool)

(declare-fun res!308952 () Bool)

(declare-fun e!297169 () Bool)

(assert (=> b!507843 (=> (not res!308952) (not e!297169))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507843 (= res!308952 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507844 () Bool)

(declare-fun res!308953 () Bool)

(assert (=> b!507844 (=> (not res!308953) (not e!297169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507844 (= res!308953 (validKeyInArray!0 k!2280))))

(declare-fun b!507845 () Bool)

(declare-fun res!308951 () Bool)

(assert (=> b!507845 (=> (not res!308951) (not e!297167))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32594 (_ BitVec 32)) Bool)

(assert (=> b!507845 (= res!308951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507846 () Bool)

(declare-fun res!308954 () Bool)

(assert (=> b!507846 (=> (not res!308954) (not e!297169))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!507846 (= res!308954 (validKeyInArray!0 (select (arr!15674 a!3235) j!176)))))

(declare-fun b!507847 () Bool)

(declare-fun res!308957 () Bool)

(assert (=> b!507847 (=> (not res!308957) (not e!297169))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507847 (= res!308957 (and (= (size!16038 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16038 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16038 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!308955 () Bool)

(assert (=> start!45878 (=> (not res!308955) (not e!297169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45878 (= res!308955 (validMask!0 mask!3524))))

(assert (=> start!45878 e!297169))

(assert (=> start!45878 true))

(declare-fun array_inv!11448 (array!32594) Bool)

(assert (=> start!45878 (array_inv!11448 a!3235)))

(declare-fun b!507848 () Bool)

(assert (=> b!507848 (= e!297169 e!297167)))

(declare-fun res!308956 () Bool)

(assert (=> b!507848 (=> (not res!308956) (not e!297167))))

(declare-datatypes ((SeekEntryResult!4148 0))(
  ( (MissingZero!4148 (index!18780 (_ BitVec 32))) (Found!4148 (index!18781 (_ BitVec 32))) (Intermediate!4148 (undefined!4960 Bool) (index!18782 (_ BitVec 32)) (x!47792 (_ BitVec 32))) (Undefined!4148) (MissingVacant!4148 (index!18783 (_ BitVec 32))) )
))
(declare-fun lt!232112 () SeekEntryResult!4148)

(assert (=> b!507848 (= res!308956 (or (= lt!232112 (MissingZero!4148 i!1204)) (= lt!232112 (MissingVacant!4148 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32594 (_ BitVec 32)) SeekEntryResult!4148)

(assert (=> b!507848 (= lt!232112 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!45878 res!308955) b!507847))

(assert (= (and b!507847 res!308957) b!507846))

(assert (= (and b!507846 res!308954) b!507844))

(assert (= (and b!507844 res!308953) b!507843))

(assert (= (and b!507843 res!308952) b!507848))

(assert (= (and b!507848 res!308956) b!507845))

(assert (= (and b!507845 res!308951) b!507842))

(declare-fun m!488719 () Bool)

(assert (=> b!507848 m!488719))

(declare-fun m!488721 () Bool)

(assert (=> b!507845 m!488721))

(declare-fun m!488723 () Bool)

(assert (=> b!507844 m!488723))

(declare-fun m!488725 () Bool)

(assert (=> b!507843 m!488725))

(declare-fun m!488727 () Bool)

(assert (=> b!507846 m!488727))

(assert (=> b!507846 m!488727))

(declare-fun m!488729 () Bool)

(assert (=> b!507846 m!488729))

(declare-fun m!488731 () Bool)

(assert (=> b!507842 m!488731))

(declare-fun m!488733 () Bool)

(assert (=> start!45878 m!488733))

(declare-fun m!488735 () Bool)

(assert (=> start!45878 m!488735))

(push 1)

(assert (not b!507848))

(assert (not b!507842))

(assert (not b!507843))

(assert (not b!507844))

