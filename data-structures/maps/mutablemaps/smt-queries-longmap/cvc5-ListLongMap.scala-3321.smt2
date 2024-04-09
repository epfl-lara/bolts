; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45880 () Bool)

(assert start!45880)

(declare-fun b!507865 () Bool)

(declare-fun e!297178 () Bool)

(declare-fun e!297176 () Bool)

(assert (=> b!507865 (= e!297178 e!297176)))

(declare-fun res!308977 () Bool)

(assert (=> b!507865 (=> (not res!308977) (not e!297176))))

(declare-datatypes ((SeekEntryResult!4149 0))(
  ( (MissingZero!4149 (index!18784 (_ BitVec 32))) (Found!4149 (index!18785 (_ BitVec 32))) (Intermediate!4149 (undefined!4961 Bool) (index!18786 (_ BitVec 32)) (x!47801 (_ BitVec 32))) (Undefined!4149) (MissingVacant!4149 (index!18787 (_ BitVec 32))) )
))
(declare-fun lt!232115 () SeekEntryResult!4149)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507865 (= res!308977 (or (= lt!232115 (MissingZero!4149 i!1204)) (= lt!232115 (MissingVacant!4149 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32596 0))(
  ( (array!32597 (arr!15675 (Array (_ BitVec 32) (_ BitVec 64))) (size!16039 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32596)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32596 (_ BitVec 32)) SeekEntryResult!4149)

(assert (=> b!507865 (= lt!232115 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun res!308980 () Bool)

(assert (=> start!45880 (=> (not res!308980) (not e!297178))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45880 (= res!308980 (validMask!0 mask!3524))))

(assert (=> start!45880 e!297178))

(assert (=> start!45880 true))

(declare-fun array_inv!11449 (array!32596) Bool)

(assert (=> start!45880 (array_inv!11449 a!3235)))

(declare-fun b!507866 () Bool)

(declare-fun res!308981 () Bool)

(assert (=> b!507866 (=> (not res!308981) (not e!297176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32596 (_ BitVec 32)) Bool)

(assert (=> b!507866 (= res!308981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507867 () Bool)

(declare-fun res!308974 () Bool)

(assert (=> b!507867 (=> (not res!308974) (not e!297178))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507867 (= res!308974 (validKeyInArray!0 (select (arr!15675 a!3235) j!176)))))

(declare-fun b!507868 () Bool)

(declare-fun res!308979 () Bool)

(assert (=> b!507868 (=> (not res!308979) (not e!297178))))

(assert (=> b!507868 (= res!308979 (validKeyInArray!0 k!2280))))

(declare-fun b!507869 () Bool)

(declare-fun res!308976 () Bool)

(assert (=> b!507869 (=> (not res!308976) (not e!297176))))

(declare-datatypes ((List!9886 0))(
  ( (Nil!9883) (Cons!9882 (h!10759 (_ BitVec 64)) (t!16122 List!9886)) )
))
(declare-fun arrayNoDuplicates!0 (array!32596 (_ BitVec 32) List!9886) Bool)

(assert (=> b!507869 (= res!308976 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9883))))

(declare-fun b!507870 () Bool)

(declare-fun res!308978 () Bool)

(assert (=> b!507870 (=> (not res!308978) (not e!297178))))

(declare-fun arrayContainsKey!0 (array!32596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507870 (= res!308978 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!507871 () Bool)

(assert (=> b!507871 (= e!297176 (bvsgt #b00000000000000000000000000000000 (size!16039 a!3235)))))

(declare-fun b!507872 () Bool)

(declare-fun res!308975 () Bool)

(assert (=> b!507872 (=> (not res!308975) (not e!297178))))

(assert (=> b!507872 (= res!308975 (and (= (size!16039 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16039 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16039 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!45880 res!308980) b!507872))

(assert (= (and b!507872 res!308975) b!507867))

(assert (= (and b!507867 res!308974) b!507868))

(assert (= (and b!507868 res!308979) b!507870))

(assert (= (and b!507870 res!308978) b!507865))

(assert (= (and b!507865 res!308977) b!507866))

(assert (= (and b!507866 res!308981) b!507869))

(assert (= (and b!507869 res!308976) b!507871))

(declare-fun m!488737 () Bool)

(assert (=> start!45880 m!488737))

(declare-fun m!488739 () Bool)

(assert (=> start!45880 m!488739))

(declare-fun m!488741 () Bool)

(assert (=> b!507868 m!488741))

(declare-fun m!488743 () Bool)

(assert (=> b!507869 m!488743))

(declare-fun m!488745 () Bool)

(assert (=> b!507867 m!488745))

(assert (=> b!507867 m!488745))

(declare-fun m!488747 () Bool)

(assert (=> b!507867 m!488747))

(declare-fun m!488749 () Bool)

(assert (=> b!507866 m!488749))

(declare-fun m!488751 () Bool)

(assert (=> b!507865 m!488751))

(declare-fun m!488753 () Bool)

(assert (=> b!507870 m!488753))

(push 1)

