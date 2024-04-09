; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27150 () Bool)

(assert start!27150)

(declare-fun b!280672 () Bool)

(declare-fun res!143787 () Bool)

(declare-fun e!178615 () Bool)

(assert (=> b!280672 (=> (not res!143787) (not e!178615))))

(declare-datatypes ((array!13957 0))(
  ( (array!13958 (arr!6620 (Array (_ BitVec 32) (_ BitVec 64))) (size!6972 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13957)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280672 (= res!143787 (validKeyInArray!0 (select (arr!6620 a!3325) startIndex!26)))))

(declare-fun b!280673 () Bool)

(declare-fun res!143786 () Bool)

(declare-fun e!178613 () Bool)

(assert (=> b!280673 (=> (not res!143786) (not e!178613))))

(declare-datatypes ((List!4449 0))(
  ( (Nil!4446) (Cons!4445 (h!5115 (_ BitVec 64)) (t!9539 List!4449)) )
))
(declare-fun arrayNoDuplicates!0 (array!13957 (_ BitVec 32) List!4449) Bool)

(assert (=> b!280673 (= res!143786 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4446))))

(declare-fun b!280674 () Bool)

(declare-fun res!143779 () Bool)

(assert (=> b!280674 (=> (not res!143779) (not e!178613))))

(declare-fun k0!2581 () (_ BitVec 64))

(assert (=> b!280674 (= res!143779 (validKeyInArray!0 k0!2581))))

(declare-fun b!280675 () Bool)

(assert (=> b!280675 (= e!178613 e!178615)))

(declare-fun res!143784 () Bool)

(assert (=> b!280675 (=> (not res!143784) (not e!178615))))

(declare-datatypes ((SeekEntryResult!1789 0))(
  ( (MissingZero!1789 (index!9326 (_ BitVec 32))) (Found!1789 (index!9327 (_ BitVec 32))) (Intermediate!1789 (undefined!2601 Bool) (index!9328 (_ BitVec 32)) (x!27531 (_ BitVec 32))) (Undefined!1789) (MissingVacant!1789 (index!9329 (_ BitVec 32))) )
))
(declare-fun lt!138910 () SeekEntryResult!1789)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280675 (= res!143784 (or (= lt!138910 (MissingZero!1789 i!1267)) (= lt!138910 (MissingVacant!1789 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13957 (_ BitVec 32)) SeekEntryResult!1789)

(assert (=> b!280675 (= lt!138910 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!280676 () Bool)

(assert (=> b!280676 (= e!178615 (not true))))

(assert (=> b!280676 (arrayNoDuplicates!0 (array!13958 (store (arr!6620 a!3325) i!1267 k0!2581) (size!6972 a!3325)) #b00000000000000000000000000000000 Nil!4446)))

(declare-datatypes ((Unit!8841 0))(
  ( (Unit!8842) )
))
(declare-fun lt!138911 () Unit!8841)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13957 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4449) Unit!8841)

(assert (=> b!280676 (= lt!138911 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4446))))

(declare-fun b!280677 () Bool)

(declare-fun res!143781 () Bool)

(assert (=> b!280677 (=> (not res!143781) (not e!178615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13957 (_ BitVec 32)) Bool)

(assert (=> b!280677 (= res!143781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280679 () Bool)

(declare-fun res!143785 () Bool)

(assert (=> b!280679 (=> (not res!143785) (not e!178613))))

(declare-fun arrayContainsKey!0 (array!13957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280679 (= res!143785 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280680 () Bool)

(declare-fun res!143783 () Bool)

(assert (=> b!280680 (=> (not res!143783) (not e!178613))))

(assert (=> b!280680 (= res!143783 (and (= (size!6972 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6972 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6972 a!3325))))))

(declare-fun res!143780 () Bool)

(assert (=> start!27150 (=> (not res!143780) (not e!178613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27150 (= res!143780 (validMask!0 mask!3868))))

(assert (=> start!27150 e!178613))

(declare-fun array_inv!4574 (array!13957) Bool)

(assert (=> start!27150 (array_inv!4574 a!3325)))

(assert (=> start!27150 true))

(declare-fun b!280678 () Bool)

(declare-fun res!143782 () Bool)

(assert (=> b!280678 (=> (not res!143782) (not e!178615))))

(assert (=> b!280678 (= res!143782 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27150 res!143780) b!280680))

(assert (= (and b!280680 res!143783) b!280674))

(assert (= (and b!280674 res!143779) b!280673))

(assert (= (and b!280673 res!143786) b!280679))

(assert (= (and b!280679 res!143785) b!280675))

(assert (= (and b!280675 res!143784) b!280677))

(assert (= (and b!280677 res!143781) b!280678))

(assert (= (and b!280678 res!143782) b!280672))

(assert (= (and b!280672 res!143787) b!280676))

(declare-fun m!295117 () Bool)

(assert (=> b!280676 m!295117))

(declare-fun m!295119 () Bool)

(assert (=> b!280676 m!295119))

(declare-fun m!295121 () Bool)

(assert (=> b!280676 m!295121))

(declare-fun m!295123 () Bool)

(assert (=> start!27150 m!295123))

(declare-fun m!295125 () Bool)

(assert (=> start!27150 m!295125))

(declare-fun m!295127 () Bool)

(assert (=> b!280677 m!295127))

(declare-fun m!295129 () Bool)

(assert (=> b!280672 m!295129))

(assert (=> b!280672 m!295129))

(declare-fun m!295131 () Bool)

(assert (=> b!280672 m!295131))

(declare-fun m!295133 () Bool)

(assert (=> b!280673 m!295133))

(declare-fun m!295135 () Bool)

(assert (=> b!280679 m!295135))

(declare-fun m!295137 () Bool)

(assert (=> b!280675 m!295137))

(declare-fun m!295139 () Bool)

(assert (=> b!280674 m!295139))

(check-sat (not b!280676) (not b!280679) (not start!27150) (not b!280675) (not b!280677) (not b!280673) (not b!280672) (not b!280674))
(check-sat)
