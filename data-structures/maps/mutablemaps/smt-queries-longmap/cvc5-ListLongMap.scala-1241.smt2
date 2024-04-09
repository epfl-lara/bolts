; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26014 () Bool)

(assert start!26014)

(declare-fun b!268252 () Bool)

(declare-fun res!132568 () Bool)

(declare-fun e!173299 () Bool)

(assert (=> b!268252 (=> (not res!132568) (not e!173299))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!268252 (= res!132568 (validKeyInArray!0 k!2581))))

(declare-fun b!268254 () Bool)

(declare-fun res!132570 () Bool)

(assert (=> b!268254 (=> (not res!132570) (not e!173299))))

(declare-datatypes ((array!13100 0))(
  ( (array!13101 (arr!6199 (Array (_ BitVec 32) (_ BitVec 64))) (size!6551 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13100)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!268254 (= res!132570 (and (= (size!6551 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6551 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6551 a!3325))))))

(declare-fun b!268255 () Bool)

(declare-fun res!132573 () Bool)

(assert (=> b!268255 (=> (not res!132573) (not e!173299))))

(declare-datatypes ((List!4028 0))(
  ( (Nil!4025) (Cons!4024 (h!4691 (_ BitVec 64)) (t!9118 List!4028)) )
))
(declare-fun arrayNoDuplicates!0 (array!13100 (_ BitVec 32) List!4028) Bool)

(assert (=> b!268255 (= res!132573 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4025))))

(declare-fun b!268256 () Bool)

(declare-fun e!173297 () Bool)

(assert (=> b!268256 (= e!173299 e!173297)))

(declare-fun res!132572 () Bool)

(assert (=> b!268256 (=> (not res!132572) (not e!173297))))

(declare-datatypes ((SeekEntryResult!1368 0))(
  ( (MissingZero!1368 (index!7642 (_ BitVec 32))) (Found!1368 (index!7643 (_ BitVec 32))) (Intermediate!1368 (undefined!2180 Bool) (index!7644 (_ BitVec 32)) (x!25981 (_ BitVec 32))) (Undefined!1368) (MissingVacant!1368 (index!7645 (_ BitVec 32))) )
))
(declare-fun lt!134863 () SeekEntryResult!1368)

(assert (=> b!268256 (= res!132572 (or (= lt!134863 (MissingZero!1368 i!1267)) (= lt!134863 (MissingVacant!1368 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13100 (_ BitVec 32)) SeekEntryResult!1368)

(assert (=> b!268256 (= lt!134863 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!268257 () Bool)

(assert (=> b!268257 (= e!173297 false)))

(declare-fun lt!134864 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13100 (_ BitVec 32)) Bool)

(assert (=> b!268257 (= lt!134864 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!268253 () Bool)

(declare-fun res!132569 () Bool)

(assert (=> b!268253 (=> (not res!132569) (not e!173299))))

(declare-fun arrayContainsKey!0 (array!13100 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!268253 (= res!132569 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!132571 () Bool)

(assert (=> start!26014 (=> (not res!132571) (not e!173299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26014 (= res!132571 (validMask!0 mask!3868))))

(assert (=> start!26014 e!173299))

(declare-fun array_inv!4153 (array!13100) Bool)

(assert (=> start!26014 (array_inv!4153 a!3325)))

(assert (=> start!26014 true))

(assert (= (and start!26014 res!132571) b!268254))

(assert (= (and b!268254 res!132570) b!268252))

(assert (= (and b!268252 res!132568) b!268255))

(assert (= (and b!268255 res!132573) b!268253))

(assert (= (and b!268253 res!132569) b!268256))

(assert (= (and b!268256 res!132572) b!268257))

(declare-fun m!284461 () Bool)

(assert (=> b!268256 m!284461))

(declare-fun m!284463 () Bool)

(assert (=> b!268255 m!284463))

(declare-fun m!284465 () Bool)

(assert (=> b!268257 m!284465))

(declare-fun m!284467 () Bool)

(assert (=> start!26014 m!284467))

(declare-fun m!284469 () Bool)

(assert (=> start!26014 m!284469))

(declare-fun m!284471 () Bool)

(assert (=> b!268253 m!284471))

(declare-fun m!284473 () Bool)

(assert (=> b!268252 m!284473))

(push 1)

(assert (not b!268252))

(assert (not b!268257))

(assert (not b!268256))

(assert (not b!268255))

