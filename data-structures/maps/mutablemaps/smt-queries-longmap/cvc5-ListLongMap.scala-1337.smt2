; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26590 () Bool)

(assert start!26590)

(declare-fun b!275920 () Bool)

(declare-fun res!139953 () Bool)

(declare-fun e!176366 () Bool)

(assert (=> b!275920 (=> (not res!139953) (not e!176366))))

(declare-datatypes ((array!13676 0))(
  ( (array!13677 (arr!6487 (Array (_ BitVec 32) (_ BitVec 64))) (size!6839 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13676)

(declare-datatypes ((List!4316 0))(
  ( (Nil!4313) (Cons!4312 (h!4979 (_ BitVec 64)) (t!9406 List!4316)) )
))
(declare-fun arrayNoDuplicates!0 (array!13676 (_ BitVec 32) List!4316) Bool)

(assert (=> b!275920 (= res!139953 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4313))))

(declare-fun res!139951 () Bool)

(assert (=> start!26590 (=> (not res!139951) (not e!176366))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26590 (= res!139951 (validMask!0 mask!3868))))

(assert (=> start!26590 e!176366))

(declare-fun array_inv!4441 (array!13676) Bool)

(assert (=> start!26590 (array_inv!4441 a!3325)))

(assert (=> start!26590 true))

(declare-fun b!275921 () Bool)

(declare-fun res!139949 () Bool)

(assert (=> b!275921 (=> (not res!139949) (not e!176366))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275921 (= res!139949 (validKeyInArray!0 k!2581))))

(declare-fun b!275922 () Bool)

(declare-fun res!139950 () Bool)

(assert (=> b!275922 (=> (not res!139950) (not e!176366))))

(declare-fun arrayContainsKey!0 (array!13676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275922 (= res!139950 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275923 () Bool)

(declare-fun res!139948 () Bool)

(assert (=> b!275923 (=> (not res!139948) (not e!176366))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275923 (= res!139948 (and (= (size!6839 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6839 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6839 a!3325))))))

(declare-fun b!275924 () Bool)

(declare-fun e!176367 () Bool)

(assert (=> b!275924 (= e!176367 false)))

(declare-fun lt!137536 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13676 (_ BitVec 32)) Bool)

(assert (=> b!275924 (= lt!137536 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275925 () Bool)

(assert (=> b!275925 (= e!176366 e!176367)))

(declare-fun res!139952 () Bool)

(assert (=> b!275925 (=> (not res!139952) (not e!176367))))

(declare-datatypes ((SeekEntryResult!1656 0))(
  ( (MissingZero!1656 (index!8794 (_ BitVec 32))) (Found!1656 (index!8795 (_ BitVec 32))) (Intermediate!1656 (undefined!2468 Bool) (index!8796 (_ BitVec 32)) (x!27037 (_ BitVec 32))) (Undefined!1656) (MissingVacant!1656 (index!8797 (_ BitVec 32))) )
))
(declare-fun lt!137537 () SeekEntryResult!1656)

(assert (=> b!275925 (= res!139952 (or (= lt!137537 (MissingZero!1656 i!1267)) (= lt!137537 (MissingVacant!1656 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13676 (_ BitVec 32)) SeekEntryResult!1656)

(assert (=> b!275925 (= lt!137537 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26590 res!139951) b!275923))

(assert (= (and b!275923 res!139948) b!275921))

(assert (= (and b!275921 res!139949) b!275920))

(assert (= (and b!275920 res!139953) b!275922))

(assert (= (and b!275922 res!139950) b!275925))

(assert (= (and b!275925 res!139952) b!275924))

(declare-fun m!291421 () Bool)

(assert (=> start!26590 m!291421))

(declare-fun m!291423 () Bool)

(assert (=> start!26590 m!291423))

(declare-fun m!291425 () Bool)

(assert (=> b!275921 m!291425))

(declare-fun m!291427 () Bool)

(assert (=> b!275924 m!291427))

(declare-fun m!291429 () Bool)

(assert (=> b!275922 m!291429))

(declare-fun m!291431 () Bool)

(assert (=> b!275925 m!291431))

(declare-fun m!291433 () Bool)

(assert (=> b!275920 m!291433))

(push 1)

(assert (not b!275920))

