; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26560 () Bool)

(assert start!26560)

(declare-fun b!275514 () Bool)

(declare-fun res!139549 () Bool)

(declare-fun e!176231 () Bool)

(assert (=> b!275514 (=> (not res!139549) (not e!176231))))

(declare-datatypes ((array!13646 0))(
  ( (array!13647 (arr!6472 (Array (_ BitVec 32) (_ BitVec 64))) (size!6824 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13646)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275514 (= res!139549 (and (= (size!6824 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6824 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6824 a!3325))))))

(declare-fun b!275515 () Bool)

(declare-fun res!139547 () Bool)

(declare-fun e!176233 () Bool)

(assert (=> b!275515 (=> (not res!139547) (not e!176233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275515 (= res!139547 (not (validKeyInArray!0 (select (arr!6472 a!3325) startIndex!26))))))

(declare-fun b!275517 () Bool)

(declare-fun res!139545 () Bool)

(assert (=> b!275517 (=> (not res!139545) (not e!176233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13646 (_ BitVec 32)) Bool)

(assert (=> b!275517 (= res!139545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275518 () Bool)

(assert (=> b!275518 (= e!176231 e!176233)))

(declare-fun res!139546 () Bool)

(assert (=> b!275518 (=> (not res!139546) (not e!176233))))

(declare-datatypes ((SeekEntryResult!1641 0))(
  ( (MissingZero!1641 (index!8734 (_ BitVec 32))) (Found!1641 (index!8735 (_ BitVec 32))) (Intermediate!1641 (undefined!2453 Bool) (index!8736 (_ BitVec 32)) (x!26982 (_ BitVec 32))) (Undefined!1641) (MissingVacant!1641 (index!8737 (_ BitVec 32))) )
))
(declare-fun lt!137447 () SeekEntryResult!1641)

(assert (=> b!275518 (= res!139546 (or (= lt!137447 (MissingZero!1641 i!1267)) (= lt!137447 (MissingVacant!1641 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13646 (_ BitVec 32)) SeekEntryResult!1641)

(assert (=> b!275518 (= lt!137447 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275519 () Bool)

(assert (=> b!275519 (= e!176233 (not true))))

(assert (=> b!275519 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13647 (store (arr!6472 a!3325) i!1267 k!2581) (size!6824 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8676 0))(
  ( (Unit!8677) )
))
(declare-fun lt!137446 () Unit!8676)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13646 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8676)

(assert (=> b!275519 (= lt!137446 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!275520 () Bool)

(declare-fun res!139544 () Bool)

(assert (=> b!275520 (=> (not res!139544) (not e!176231))))

(declare-datatypes ((List!4301 0))(
  ( (Nil!4298) (Cons!4297 (h!4964 (_ BitVec 64)) (t!9391 List!4301)) )
))
(declare-fun arrayNoDuplicates!0 (array!13646 (_ BitVec 32) List!4301) Bool)

(assert (=> b!275520 (= res!139544 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4298))))

(declare-fun b!275521 () Bool)

(declare-fun res!139548 () Bool)

(assert (=> b!275521 (=> (not res!139548) (not e!176233))))

(assert (=> b!275521 (= res!139548 (and (bvslt startIndex!26 (bvsub (size!6824 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!275522 () Bool)

(declare-fun res!139551 () Bool)

(assert (=> b!275522 (=> (not res!139551) (not e!176231))))

(assert (=> b!275522 (= res!139551 (validKeyInArray!0 k!2581))))

(declare-fun b!275523 () Bool)

(declare-fun res!139543 () Bool)

(assert (=> b!275523 (=> (not res!139543) (not e!176233))))

(assert (=> b!275523 (= res!139543 (not (= startIndex!26 i!1267)))))

(declare-fun res!139542 () Bool)

(assert (=> start!26560 (=> (not res!139542) (not e!176231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26560 (= res!139542 (validMask!0 mask!3868))))

(assert (=> start!26560 e!176231))

(declare-fun array_inv!4426 (array!13646) Bool)

(assert (=> start!26560 (array_inv!4426 a!3325)))

(assert (=> start!26560 true))

(declare-fun b!275516 () Bool)

(declare-fun res!139550 () Bool)

(assert (=> b!275516 (=> (not res!139550) (not e!176231))))

(declare-fun arrayContainsKey!0 (array!13646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275516 (= res!139550 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26560 res!139542) b!275514))

(assert (= (and b!275514 res!139549) b!275522))

(assert (= (and b!275522 res!139551) b!275520))

(assert (= (and b!275520 res!139544) b!275516))

(assert (= (and b!275516 res!139550) b!275518))

(assert (= (and b!275518 res!139546) b!275517))

(assert (= (and b!275517 res!139545) b!275523))

(assert (= (and b!275523 res!139543) b!275515))

(assert (= (and b!275515 res!139547) b!275521))

(assert (= (and b!275521 res!139548) b!275519))

(declare-fun m!291091 () Bool)

(assert (=> b!275518 m!291091))

(declare-fun m!291093 () Bool)

(assert (=> start!26560 m!291093))

(declare-fun m!291095 () Bool)

(assert (=> start!26560 m!291095))

(declare-fun m!291097 () Bool)

(assert (=> b!275520 m!291097))

(declare-fun m!291099 () Bool)

(assert (=> b!275522 m!291099))

(declare-fun m!291101 () Bool)

(assert (=> b!275516 m!291101))

(declare-fun m!291103 () Bool)

(assert (=> b!275517 m!291103))

(declare-fun m!291105 () Bool)

(assert (=> b!275515 m!291105))

(assert (=> b!275515 m!291105))

(declare-fun m!291107 () Bool)

(assert (=> b!275515 m!291107))

(declare-fun m!291109 () Bool)

(assert (=> b!275519 m!291109))

(declare-fun m!291111 () Bool)

(assert (=> b!275519 m!291111))

(declare-fun m!291113 () Bool)

(assert (=> b!275519 m!291113))

(push 1)

