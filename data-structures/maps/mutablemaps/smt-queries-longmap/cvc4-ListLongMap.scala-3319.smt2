; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45872 () Bool)

(assert start!45872)

(declare-fun b!507779 () Bool)

(declare-fun res!308892 () Bool)

(declare-fun e!297140 () Bool)

(assert (=> b!507779 (=> (not res!308892) (not e!297140))))

(declare-datatypes ((array!32588 0))(
  ( (array!32589 (arr!15671 (Array (_ BitVec 32) (_ BitVec 64))) (size!16035 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32588)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32588 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507779 (= res!308892 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507780 () Bool)

(declare-fun res!308889 () Bool)

(declare-fun e!297142 () Bool)

(assert (=> b!507780 (=> (not res!308889) (not e!297142))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32588 (_ BitVec 32)) Bool)

(assert (=> b!507780 (= res!308889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507781 () Bool)

(assert (=> b!507781 (= e!297142 false)))

(declare-fun lt!232093 () Bool)

(declare-datatypes ((List!9882 0))(
  ( (Nil!9879) (Cons!9878 (h!10755 (_ BitVec 64)) (t!16118 List!9882)) )
))
(declare-fun arrayNoDuplicates!0 (array!32588 (_ BitVec 32) List!9882) Bool)

(assert (=> b!507781 (= lt!232093 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9879))))

(declare-fun b!507782 () Bool)

(declare-fun res!308891 () Bool)

(assert (=> b!507782 (=> (not res!308891) (not e!297140))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507782 (= res!308891 (validKeyInArray!0 (select (arr!15671 a!3235) j!176)))))

(declare-fun res!308894 () Bool)

(assert (=> start!45872 (=> (not res!308894) (not e!297140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45872 (= res!308894 (validMask!0 mask!3524))))

(assert (=> start!45872 e!297140))

(assert (=> start!45872 true))

(declare-fun array_inv!11445 (array!32588) Bool)

(assert (=> start!45872 (array_inv!11445 a!3235)))

(declare-fun b!507783 () Bool)

(declare-fun res!308890 () Bool)

(assert (=> b!507783 (=> (not res!308890) (not e!297140))))

(assert (=> b!507783 (= res!308890 (validKeyInArray!0 k!2280))))

(declare-fun b!507784 () Bool)

(assert (=> b!507784 (= e!297140 e!297142)))

(declare-fun res!308888 () Bool)

(assert (=> b!507784 (=> (not res!308888) (not e!297142))))

(declare-datatypes ((SeekEntryResult!4145 0))(
  ( (MissingZero!4145 (index!18768 (_ BitVec 32))) (Found!4145 (index!18769 (_ BitVec 32))) (Intermediate!4145 (undefined!4957 Bool) (index!18770 (_ BitVec 32)) (x!47781 (_ BitVec 32))) (Undefined!4145) (MissingVacant!4145 (index!18771 (_ BitVec 32))) )
))
(declare-fun lt!232094 () SeekEntryResult!4145)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507784 (= res!308888 (or (= lt!232094 (MissingZero!4145 i!1204)) (= lt!232094 (MissingVacant!4145 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32588 (_ BitVec 32)) SeekEntryResult!4145)

(assert (=> b!507784 (= lt!232094 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!507785 () Bool)

(declare-fun res!308893 () Bool)

(assert (=> b!507785 (=> (not res!308893) (not e!297140))))

(assert (=> b!507785 (= res!308893 (and (= (size!16035 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16035 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16035 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45872 res!308894) b!507785))

(assert (= (and b!507785 res!308893) b!507782))

(assert (= (and b!507782 res!308891) b!507783))

(assert (= (and b!507783 res!308890) b!507779))

(assert (= (and b!507779 res!308892) b!507784))

(assert (= (and b!507784 res!308888) b!507780))

(assert (= (and b!507780 res!308889) b!507781))

(declare-fun m!488665 () Bool)

(assert (=> b!507783 m!488665))

(declare-fun m!488667 () Bool)

(assert (=> b!507779 m!488667))

(declare-fun m!488669 () Bool)

(assert (=> b!507781 m!488669))

(declare-fun m!488671 () Bool)

(assert (=> b!507780 m!488671))

(declare-fun m!488673 () Bool)

(assert (=> b!507782 m!488673))

(assert (=> b!507782 m!488673))

(declare-fun m!488675 () Bool)

(assert (=> b!507782 m!488675))

(declare-fun m!488677 () Bool)

(assert (=> b!507784 m!488677))

(declare-fun m!488679 () Bool)

(assert (=> start!45872 m!488679))

(declare-fun m!488681 () Bool)

(assert (=> start!45872 m!488681))

(push 1)

(assert (not b!507784))

(assert (not start!45872))

(assert (not b!507780))

(assert (not b!507782))

(assert (not b!507779))

