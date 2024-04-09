; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26584 () Bool)

(assert start!26584)

(declare-fun b!275866 () Bool)

(declare-fun e!176339 () Bool)

(assert (=> b!275866 (= e!176339 false)))

(declare-fun lt!137519 () Bool)

(declare-datatypes ((array!13670 0))(
  ( (array!13671 (arr!6484 (Array (_ BitVec 32) (_ BitVec 64))) (size!6836 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13670)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13670 (_ BitVec 32)) Bool)

(assert (=> b!275866 (= lt!137519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275867 () Bool)

(declare-fun res!139897 () Bool)

(declare-fun e!176341 () Bool)

(assert (=> b!275867 (=> (not res!139897) (not e!176341))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275867 (= res!139897 (validKeyInArray!0 k!2581))))

(declare-fun b!275868 () Bool)

(declare-fun res!139899 () Bool)

(assert (=> b!275868 (=> (not res!139899) (not e!176341))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275868 (= res!139899 (and (= (size!6836 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6836 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6836 a!3325))))))

(declare-fun res!139898 () Bool)

(assert (=> start!26584 (=> (not res!139898) (not e!176341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26584 (= res!139898 (validMask!0 mask!3868))))

(assert (=> start!26584 e!176341))

(declare-fun array_inv!4438 (array!13670) Bool)

(assert (=> start!26584 (array_inv!4438 a!3325)))

(assert (=> start!26584 true))

(declare-fun b!275869 () Bool)

(assert (=> b!275869 (= e!176341 e!176339)))

(declare-fun res!139894 () Bool)

(assert (=> b!275869 (=> (not res!139894) (not e!176339))))

(declare-datatypes ((SeekEntryResult!1653 0))(
  ( (MissingZero!1653 (index!8782 (_ BitVec 32))) (Found!1653 (index!8783 (_ BitVec 32))) (Intermediate!1653 (undefined!2465 Bool) (index!8784 (_ BitVec 32)) (x!27026 (_ BitVec 32))) (Undefined!1653) (MissingVacant!1653 (index!8785 (_ BitVec 32))) )
))
(declare-fun lt!137518 () SeekEntryResult!1653)

(assert (=> b!275869 (= res!139894 (or (= lt!137518 (MissingZero!1653 i!1267)) (= lt!137518 (MissingVacant!1653 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13670 (_ BitVec 32)) SeekEntryResult!1653)

(assert (=> b!275869 (= lt!137518 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275870 () Bool)

(declare-fun res!139895 () Bool)

(assert (=> b!275870 (=> (not res!139895) (not e!176341))))

(declare-fun arrayContainsKey!0 (array!13670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275870 (= res!139895 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275871 () Bool)

(declare-fun res!139896 () Bool)

(assert (=> b!275871 (=> (not res!139896) (not e!176341))))

(declare-datatypes ((List!4313 0))(
  ( (Nil!4310) (Cons!4309 (h!4976 (_ BitVec 64)) (t!9403 List!4313)) )
))
(declare-fun arrayNoDuplicates!0 (array!13670 (_ BitVec 32) List!4313) Bool)

(assert (=> b!275871 (= res!139896 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4310))))

(assert (= (and start!26584 res!139898) b!275868))

(assert (= (and b!275868 res!139899) b!275867))

(assert (= (and b!275867 res!139897) b!275871))

(assert (= (and b!275871 res!139896) b!275870))

(assert (= (and b!275870 res!139895) b!275869))

(assert (= (and b!275869 res!139894) b!275866))

(declare-fun m!291379 () Bool)

(assert (=> start!26584 m!291379))

(declare-fun m!291381 () Bool)

(assert (=> start!26584 m!291381))

(declare-fun m!291383 () Bool)

(assert (=> b!275866 m!291383))

(declare-fun m!291385 () Bool)

(assert (=> b!275867 m!291385))

(declare-fun m!291387 () Bool)

(assert (=> b!275869 m!291387))

(declare-fun m!291389 () Bool)

(assert (=> b!275871 m!291389))

(declare-fun m!291391 () Bool)

(assert (=> b!275870 m!291391))

(push 1)

(assert (not b!275866))

