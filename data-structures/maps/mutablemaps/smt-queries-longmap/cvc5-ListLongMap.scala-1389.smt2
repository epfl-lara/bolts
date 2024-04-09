; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27196 () Bool)

(assert start!27196)

(declare-fun b!281293 () Bool)

(declare-fun res!144401 () Bool)

(declare-fun e!178822 () Bool)

(assert (=> b!281293 (=> (not res!144401) (not e!178822))))

(declare-datatypes ((array!14003 0))(
  ( (array!14004 (arr!6643 (Array (_ BitVec 32) (_ BitVec 64))) (size!6995 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14003)

(declare-datatypes ((List!4472 0))(
  ( (Nil!4469) (Cons!4468 (h!5138 (_ BitVec 64)) (t!9562 List!4472)) )
))
(declare-fun arrayNoDuplicates!0 (array!14003 (_ BitVec 32) List!4472) Bool)

(assert (=> b!281293 (= res!144401 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4469))))

(declare-fun res!144405 () Bool)

(assert (=> start!27196 (=> (not res!144405) (not e!178822))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27196 (= res!144405 (validMask!0 mask!3868))))

(assert (=> start!27196 e!178822))

(declare-fun array_inv!4597 (array!14003) Bool)

(assert (=> start!27196 (array_inv!4597 a!3325)))

(assert (=> start!27196 true))

(declare-fun b!281294 () Bool)

(declare-fun res!144406 () Bool)

(declare-fun e!178820 () Bool)

(assert (=> b!281294 (=> (not res!144406) (not e!178820))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281294 (= res!144406 (validKeyInArray!0 (select (arr!6643 a!3325) startIndex!26)))))

(declare-fun b!281295 () Bool)

(assert (=> b!281295 (= e!178822 e!178820)))

(declare-fun res!144407 () Bool)

(assert (=> b!281295 (=> (not res!144407) (not e!178820))))

(declare-datatypes ((SeekEntryResult!1812 0))(
  ( (MissingZero!1812 (index!9418 (_ BitVec 32))) (Found!1812 (index!9419 (_ BitVec 32))) (Intermediate!1812 (undefined!2624 Bool) (index!9420 (_ BitVec 32)) (x!27618 (_ BitVec 32))) (Undefined!1812) (MissingVacant!1812 (index!9421 (_ BitVec 32))) )
))
(declare-fun lt!139049 () SeekEntryResult!1812)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281295 (= res!144407 (or (= lt!139049 (MissingZero!1812 i!1267)) (= lt!139049 (MissingVacant!1812 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14003 (_ BitVec 32)) SeekEntryResult!1812)

(assert (=> b!281295 (= lt!139049 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281296 () Bool)

(declare-fun res!144408 () Bool)

(assert (=> b!281296 (=> (not res!144408) (not e!178820))))

(assert (=> b!281296 (= res!144408 (not (= startIndex!26 i!1267)))))

(declare-fun b!281297 () Bool)

(declare-fun res!144402 () Bool)

(assert (=> b!281297 (=> (not res!144402) (not e!178822))))

(assert (=> b!281297 (= res!144402 (validKeyInArray!0 k!2581))))

(declare-fun b!281298 () Bool)

(declare-fun res!144400 () Bool)

(assert (=> b!281298 (=> (not res!144400) (not e!178822))))

(assert (=> b!281298 (= res!144400 (and (= (size!6995 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6995 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6995 a!3325))))))

(declare-fun b!281299 () Bool)

(assert (=> b!281299 (= e!178820 (not true))))

(assert (=> b!281299 (arrayNoDuplicates!0 (array!14004 (store (arr!6643 a!3325) i!1267 k!2581) (size!6995 a!3325)) #b00000000000000000000000000000000 Nil!4469)))

(declare-datatypes ((Unit!8887 0))(
  ( (Unit!8888) )
))
(declare-fun lt!139048 () Unit!8887)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14003 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4472) Unit!8887)

(assert (=> b!281299 (= lt!139048 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4469))))

(declare-fun b!281300 () Bool)

(declare-fun res!144404 () Bool)

(assert (=> b!281300 (=> (not res!144404) (not e!178822))))

(declare-fun arrayContainsKey!0 (array!14003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281300 (= res!144404 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281301 () Bool)

(declare-fun res!144403 () Bool)

(assert (=> b!281301 (=> (not res!144403) (not e!178820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14003 (_ BitVec 32)) Bool)

(assert (=> b!281301 (= res!144403 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27196 res!144405) b!281298))

(assert (= (and b!281298 res!144400) b!281297))

(assert (= (and b!281297 res!144402) b!281293))

(assert (= (and b!281293 res!144401) b!281300))

(assert (= (and b!281300 res!144404) b!281295))

(assert (= (and b!281295 res!144407) b!281301))

(assert (= (and b!281301 res!144403) b!281296))

(assert (= (and b!281296 res!144408) b!281294))

(assert (= (and b!281294 res!144406) b!281299))

(declare-fun m!295669 () Bool)

(assert (=> b!281301 m!295669))

(declare-fun m!295671 () Bool)

(assert (=> b!281297 m!295671))

(declare-fun m!295673 () Bool)

(assert (=> start!27196 m!295673))

(declare-fun m!295675 () Bool)

(assert (=> start!27196 m!295675))

(declare-fun m!295677 () Bool)

(assert (=> b!281293 m!295677))

(declare-fun m!295679 () Bool)

(assert (=> b!281300 m!295679))

(declare-fun m!295681 () Bool)

(assert (=> b!281294 m!295681))

(assert (=> b!281294 m!295681))

(declare-fun m!295683 () Bool)

(assert (=> b!281294 m!295683))

(declare-fun m!295685 () Bool)

(assert (=> b!281299 m!295685))

(declare-fun m!295687 () Bool)

(assert (=> b!281299 m!295687))

(declare-fun m!295689 () Bool)

(assert (=> b!281299 m!295689))

(declare-fun m!295691 () Bool)

(assert (=> b!281295 m!295691))

(push 1)

