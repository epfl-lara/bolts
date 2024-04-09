; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27312 () Bool)

(assert start!27312)

(declare-fun b!282859 () Bool)

(declare-fun res!145970 () Bool)

(declare-fun e!179503 () Bool)

(assert (=> b!282859 (=> (not res!145970) (not e!179503))))

(declare-datatypes ((array!14119 0))(
  ( (array!14120 (arr!6701 (Array (_ BitVec 32) (_ BitVec 64))) (size!7053 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14119)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282859 (= res!145970 (validKeyInArray!0 (select (arr!6701 a!3325) startIndex!26)))))

(declare-fun b!282860 () Bool)

(declare-fun res!145966 () Bool)

(declare-fun e!179501 () Bool)

(assert (=> b!282860 (=> (not res!145966) (not e!179501))))

(declare-datatypes ((List!4530 0))(
  ( (Nil!4527) (Cons!4526 (h!5196 (_ BitVec 64)) (t!9620 List!4530)) )
))
(declare-fun arrayNoDuplicates!0 (array!14119 (_ BitVec 32) List!4530) Bool)

(assert (=> b!282860 (= res!145966 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4527))))

(declare-fun b!282861 () Bool)

(declare-fun e!179502 () Bool)

(assert (=> b!282861 (= e!179501 e!179502)))

(declare-fun res!145972 () Bool)

(assert (=> b!282861 (=> (not res!145972) (not e!179502))))

(declare-datatypes ((SeekEntryResult!1870 0))(
  ( (MissingZero!1870 (index!9650 (_ BitVec 32))) (Found!1870 (index!9651 (_ BitVec 32))) (Intermediate!1870 (undefined!2682 Bool) (index!9652 (_ BitVec 32)) (x!27828 (_ BitVec 32))) (Undefined!1870) (MissingVacant!1870 (index!9653 (_ BitVec 32))) )
))
(declare-fun lt!139829 () SeekEntryResult!1870)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282861 (= res!145972 (or (= lt!139829 (MissingZero!1870 i!1267)) (= lt!139829 (MissingVacant!1870 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14119 (_ BitVec 32)) SeekEntryResult!1870)

(assert (=> b!282861 (= lt!139829 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!282862 () Bool)

(declare-fun res!145967 () Bool)

(assert (=> b!282862 (=> (not res!145967) (not e!179501))))

(assert (=> b!282862 (= res!145967 (validKeyInArray!0 k0!2581))))

(declare-fun b!282863 () Bool)

(assert (=> b!282863 (= e!179502 e!179503)))

(declare-fun res!145973 () Bool)

(assert (=> b!282863 (=> (not res!145973) (not e!179503))))

(assert (=> b!282863 (= res!145973 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139827 () array!14119)

(assert (=> b!282863 (= lt!139827 (array!14120 (store (arr!6701 a!3325) i!1267 k0!2581) (size!7053 a!3325)))))

(declare-fun b!282865 () Bool)

(declare-fun res!145971 () Bool)

(assert (=> b!282865 (=> (not res!145971) (not e!179501))))

(declare-fun arrayContainsKey!0 (array!14119 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282865 (= res!145971 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282866 () Bool)

(assert (=> b!282866 (= e!179503 (not (or (bvsge startIndex!26 (bvsub (size!7053 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000) (bvslt (bvsub (size!7053 a!3325) (bvadd #b00000000000000000000000000000001 startIndex!26)) (bvsub (size!7053 a!3325) startIndex!26)))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14119 (_ BitVec 32)) Bool)

(assert (=> b!282866 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9003 0))(
  ( (Unit!9004) )
))
(declare-fun lt!139825 () Unit!9003)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14119 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9003)

(assert (=> b!282866 (= lt!139825 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!282866 (= (seekEntryOrOpen!0 (select (arr!6701 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6701 a!3325) i!1267 k0!2581) startIndex!26) lt!139827 mask!3868))))

(declare-fun lt!139828 () Unit!9003)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14119 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9003)

(assert (=> b!282866 (= lt!139828 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!282866 (arrayNoDuplicates!0 lt!139827 #b00000000000000000000000000000000 Nil!4527)))

(declare-fun lt!139826 () Unit!9003)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14119 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4530) Unit!9003)

(assert (=> b!282866 (= lt!139826 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4527))))

(declare-fun b!282867 () Bool)

(declare-fun res!145974 () Bool)

(assert (=> b!282867 (=> (not res!145974) (not e!179501))))

(assert (=> b!282867 (= res!145974 (and (= (size!7053 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7053 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7053 a!3325))))))

(declare-fun res!145969 () Bool)

(assert (=> start!27312 (=> (not res!145969) (not e!179501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27312 (= res!145969 (validMask!0 mask!3868))))

(assert (=> start!27312 e!179501))

(declare-fun array_inv!4655 (array!14119) Bool)

(assert (=> start!27312 (array_inv!4655 a!3325)))

(assert (=> start!27312 true))

(declare-fun b!282864 () Bool)

(declare-fun res!145968 () Bool)

(assert (=> b!282864 (=> (not res!145968) (not e!179502))))

(assert (=> b!282864 (= res!145968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27312 res!145969) b!282867))

(assert (= (and b!282867 res!145974) b!282862))

(assert (= (and b!282862 res!145967) b!282860))

(assert (= (and b!282860 res!145966) b!282865))

(assert (= (and b!282865 res!145971) b!282861))

(assert (= (and b!282861 res!145972) b!282864))

(assert (= (and b!282864 res!145968) b!282863))

(assert (= (and b!282863 res!145973) b!282859))

(assert (= (and b!282859 res!145970) b!282866))

(declare-fun m!297625 () Bool)

(assert (=> b!282864 m!297625))

(declare-fun m!297627 () Bool)

(assert (=> b!282861 m!297627))

(declare-fun m!297629 () Bool)

(assert (=> start!27312 m!297629))

(declare-fun m!297631 () Bool)

(assert (=> start!27312 m!297631))

(declare-fun m!297633 () Bool)

(assert (=> b!282863 m!297633))

(declare-fun m!297635 () Bool)

(assert (=> b!282866 m!297635))

(declare-fun m!297637 () Bool)

(assert (=> b!282866 m!297637))

(declare-fun m!297639 () Bool)

(assert (=> b!282866 m!297639))

(assert (=> b!282866 m!297633))

(declare-fun m!297641 () Bool)

(assert (=> b!282866 m!297641))

(assert (=> b!282866 m!297637))

(declare-fun m!297643 () Bool)

(assert (=> b!282866 m!297643))

(declare-fun m!297645 () Bool)

(assert (=> b!282866 m!297645))

(declare-fun m!297647 () Bool)

(assert (=> b!282866 m!297647))

(declare-fun m!297649 () Bool)

(assert (=> b!282866 m!297649))

(assert (=> b!282866 m!297645))

(declare-fun m!297651 () Bool)

(assert (=> b!282866 m!297651))

(declare-fun m!297653 () Bool)

(assert (=> b!282865 m!297653))

(declare-fun m!297655 () Bool)

(assert (=> b!282860 m!297655))

(declare-fun m!297657 () Bool)

(assert (=> b!282862 m!297657))

(assert (=> b!282859 m!297645))

(assert (=> b!282859 m!297645))

(declare-fun m!297659 () Bool)

(assert (=> b!282859 m!297659))

(check-sat (not b!282862) (not b!282866) (not start!27312) (not b!282865) (not b!282859) (not b!282861) (not b!282864) (not b!282860))
(check-sat)
