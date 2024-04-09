; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27138 () Bool)

(assert start!27138)

(declare-fun res!143617 () Bool)

(declare-fun e!178560 () Bool)

(assert (=> start!27138 (=> (not res!143617) (not e!178560))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27138 (= res!143617 (validMask!0 mask!3868))))

(assert (=> start!27138 e!178560))

(declare-datatypes ((array!13945 0))(
  ( (array!13946 (arr!6614 (Array (_ BitVec 32) (_ BitVec 64))) (size!6966 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13945)

(declare-fun array_inv!4568 (array!13945) Bool)

(assert (=> start!27138 (array_inv!4568 a!3325)))

(assert (=> start!27138 true))

(declare-fun b!280510 () Bool)

(declare-fun res!143624 () Bool)

(declare-fun e!178561 () Bool)

(assert (=> b!280510 (=> (not res!143624) (not e!178561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13945 (_ BitVec 32)) Bool)

(assert (=> b!280510 (= res!143624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280511 () Bool)

(declare-fun res!143619 () Bool)

(assert (=> b!280511 (=> (not res!143619) (not e!178560))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!280511 (= res!143619 (and (= (size!6966 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6966 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6966 a!3325))))))

(declare-fun b!280512 () Bool)

(declare-fun res!143618 () Bool)

(assert (=> b!280512 (=> (not res!143618) (not e!178560))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280512 (= res!143618 (validKeyInArray!0 k0!2581))))

(declare-fun b!280513 () Bool)

(assert (=> b!280513 (= e!178560 e!178561)))

(declare-fun res!143621 () Bool)

(assert (=> b!280513 (=> (not res!143621) (not e!178561))))

(declare-datatypes ((SeekEntryResult!1783 0))(
  ( (MissingZero!1783 (index!9302 (_ BitVec 32))) (Found!1783 (index!9303 (_ BitVec 32))) (Intermediate!1783 (undefined!2595 Bool) (index!9304 (_ BitVec 32)) (x!27509 (_ BitVec 32))) (Undefined!1783) (MissingVacant!1783 (index!9305 (_ BitVec 32))) )
))
(declare-fun lt!138875 () SeekEntryResult!1783)

(assert (=> b!280513 (= res!143621 (or (= lt!138875 (MissingZero!1783 i!1267)) (= lt!138875 (MissingVacant!1783 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13945 (_ BitVec 32)) SeekEntryResult!1783)

(assert (=> b!280513 (= lt!138875 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!280514 () Bool)

(declare-fun res!143625 () Bool)

(assert (=> b!280514 (=> (not res!143625) (not e!178561))))

(assert (=> b!280514 (= res!143625 (validKeyInArray!0 (select (arr!6614 a!3325) startIndex!26)))))

(declare-fun b!280515 () Bool)

(declare-fun res!143623 () Bool)

(assert (=> b!280515 (=> (not res!143623) (not e!178560))))

(declare-datatypes ((List!4443 0))(
  ( (Nil!4440) (Cons!4439 (h!5109 (_ BitVec 64)) (t!9533 List!4443)) )
))
(declare-fun arrayNoDuplicates!0 (array!13945 (_ BitVec 32) List!4443) Bool)

(assert (=> b!280515 (= res!143623 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4440))))

(declare-fun b!280516 () Bool)

(assert (=> b!280516 (= e!178561 (not true))))

(assert (=> b!280516 (arrayNoDuplicates!0 (array!13946 (store (arr!6614 a!3325) i!1267 k0!2581) (size!6966 a!3325)) #b00000000000000000000000000000000 Nil!4440)))

(declare-datatypes ((Unit!8829 0))(
  ( (Unit!8830) )
))
(declare-fun lt!138874 () Unit!8829)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13945 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4443) Unit!8829)

(assert (=> b!280516 (= lt!138874 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4440))))

(declare-fun b!280517 () Bool)

(declare-fun res!143620 () Bool)

(assert (=> b!280517 (=> (not res!143620) (not e!178561))))

(assert (=> b!280517 (= res!143620 (not (= startIndex!26 i!1267)))))

(declare-fun b!280518 () Bool)

(declare-fun res!143622 () Bool)

(assert (=> b!280518 (=> (not res!143622) (not e!178560))))

(declare-fun arrayContainsKey!0 (array!13945 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280518 (= res!143622 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27138 res!143617) b!280511))

(assert (= (and b!280511 res!143619) b!280512))

(assert (= (and b!280512 res!143618) b!280515))

(assert (= (and b!280515 res!143623) b!280518))

(assert (= (and b!280518 res!143622) b!280513))

(assert (= (and b!280513 res!143621) b!280510))

(assert (= (and b!280510 res!143624) b!280517))

(assert (= (and b!280517 res!143620) b!280514))

(assert (= (and b!280514 res!143625) b!280516))

(declare-fun m!294973 () Bool)

(assert (=> b!280512 m!294973))

(declare-fun m!294975 () Bool)

(assert (=> b!280516 m!294975))

(declare-fun m!294977 () Bool)

(assert (=> b!280516 m!294977))

(declare-fun m!294979 () Bool)

(assert (=> b!280516 m!294979))

(declare-fun m!294981 () Bool)

(assert (=> b!280518 m!294981))

(declare-fun m!294983 () Bool)

(assert (=> b!280514 m!294983))

(assert (=> b!280514 m!294983))

(declare-fun m!294985 () Bool)

(assert (=> b!280514 m!294985))

(declare-fun m!294987 () Bool)

(assert (=> b!280510 m!294987))

(declare-fun m!294989 () Bool)

(assert (=> start!27138 m!294989))

(declare-fun m!294991 () Bool)

(assert (=> start!27138 m!294991))

(declare-fun m!294993 () Bool)

(assert (=> b!280513 m!294993))

(declare-fun m!294995 () Bool)

(assert (=> b!280515 m!294995))

(check-sat (not b!280510) (not b!280512) (not b!280516) (not b!280513) (not b!280514) (not b!280518) (not b!280515) (not start!27138))
(check-sat)
