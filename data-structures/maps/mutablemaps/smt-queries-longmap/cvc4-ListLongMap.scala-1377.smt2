; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27128 () Bool)

(assert start!27128)

(declare-fun b!280371 () Bool)

(declare-fun res!143487 () Bool)

(declare-fun e!178516 () Bool)

(assert (=> b!280371 (=> (not res!143487) (not e!178516))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280371 (= res!143487 (validKeyInArray!0 k!2581))))

(declare-fun b!280372 () Bool)

(declare-fun e!178514 () Bool)

(assert (=> b!280372 (= e!178516 e!178514)))

(declare-fun res!143485 () Bool)

(assert (=> b!280372 (=> (not res!143485) (not e!178514))))

(declare-datatypes ((SeekEntryResult!1778 0))(
  ( (MissingZero!1778 (index!9282 (_ BitVec 32))) (Found!1778 (index!9283 (_ BitVec 32))) (Intermediate!1778 (undefined!2590 Bool) (index!9284 (_ BitVec 32)) (x!27488 (_ BitVec 32))) (Undefined!1778) (MissingVacant!1778 (index!9285 (_ BitVec 32))) )
))
(declare-fun lt!138845 () SeekEntryResult!1778)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280372 (= res!143485 (or (= lt!138845 (MissingZero!1778 i!1267)) (= lt!138845 (MissingVacant!1778 i!1267))))))

(declare-datatypes ((array!13935 0))(
  ( (array!13936 (arr!6609 (Array (_ BitVec 32) (_ BitVec 64))) (size!6961 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13935)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13935 (_ BitVec 32)) SeekEntryResult!1778)

(assert (=> b!280372 (= lt!138845 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280373 () Bool)

(assert (=> b!280373 (= e!178514 false)))

(declare-fun lt!138844 () Bool)

(declare-datatypes ((List!4438 0))(
  ( (Nil!4435) (Cons!4434 (h!5104 (_ BitVec 64)) (t!9528 List!4438)) )
))
(declare-fun contains!1988 (List!4438 (_ BitVec 64)) Bool)

(assert (=> b!280373 (= lt!138844 (contains!1988 Nil!4435 k!2581))))

(declare-fun res!143484 () Bool)

(assert (=> start!27128 (=> (not res!143484) (not e!178516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27128 (= res!143484 (validMask!0 mask!3868))))

(assert (=> start!27128 e!178516))

(declare-fun array_inv!4563 (array!13935) Bool)

(assert (=> start!27128 (array_inv!4563 a!3325)))

(assert (=> start!27128 true))

(declare-fun b!280374 () Bool)

(declare-fun res!143480 () Bool)

(assert (=> b!280374 (=> (not res!143480) (not e!178514))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!280374 (= res!143480 (not (= startIndex!26 i!1267)))))

(declare-fun b!280375 () Bool)

(declare-fun res!143490 () Bool)

(assert (=> b!280375 (=> (not res!143490) (not e!178516))))

(declare-fun arrayNoDuplicates!0 (array!13935 (_ BitVec 32) List!4438) Bool)

(assert (=> b!280375 (= res!143490 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4435))))

(declare-fun b!280376 () Bool)

(declare-fun res!143479 () Bool)

(assert (=> b!280376 (=> (not res!143479) (not e!178514))))

(declare-fun noDuplicate!172 (List!4438) Bool)

(assert (=> b!280376 (= res!143479 (noDuplicate!172 Nil!4435))))

(declare-fun b!280377 () Bool)

(declare-fun res!143481 () Bool)

(assert (=> b!280377 (=> (not res!143481) (not e!178516))))

(assert (=> b!280377 (= res!143481 (and (= (size!6961 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6961 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6961 a!3325))))))

(declare-fun b!280378 () Bool)

(declare-fun res!143489 () Bool)

(assert (=> b!280378 (=> (not res!143489) (not e!178516))))

(declare-fun arrayContainsKey!0 (array!13935 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280378 (= res!143489 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280379 () Bool)

(declare-fun res!143478 () Bool)

(assert (=> b!280379 (=> (not res!143478) (not e!178514))))

(assert (=> b!280379 (= res!143478 (validKeyInArray!0 (select (arr!6609 a!3325) startIndex!26)))))

(declare-fun b!280380 () Bool)

(declare-fun res!143488 () Bool)

(assert (=> b!280380 (=> (not res!143488) (not e!178514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13935 (_ BitVec 32)) Bool)

(assert (=> b!280380 (= res!143488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280381 () Bool)

(declare-fun res!143483 () Bool)

(assert (=> b!280381 (=> (not res!143483) (not e!178514))))

(assert (=> b!280381 (= res!143483 (not (contains!1988 Nil!4435 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280382 () Bool)

(declare-fun res!143482 () Bool)

(assert (=> b!280382 (=> (not res!143482) (not e!178514))))

(assert (=> b!280382 (= res!143482 (and (bvslt (size!6961 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6961 a!3325))))))

(declare-fun b!280383 () Bool)

(declare-fun res!143486 () Bool)

(assert (=> b!280383 (=> (not res!143486) (not e!178514))))

(assert (=> b!280383 (= res!143486 (not (contains!1988 Nil!4435 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!27128 res!143484) b!280377))

(assert (= (and b!280377 res!143481) b!280371))

(assert (= (and b!280371 res!143487) b!280375))

(assert (= (and b!280375 res!143490) b!280378))

(assert (= (and b!280378 res!143489) b!280372))

(assert (= (and b!280372 res!143485) b!280380))

(assert (= (and b!280380 res!143488) b!280374))

(assert (= (and b!280374 res!143480) b!280379))

(assert (= (and b!280379 res!143478) b!280382))

(assert (= (and b!280382 res!143482) b!280376))

(assert (= (and b!280376 res!143479) b!280383))

(assert (= (and b!280383 res!143486) b!280381))

(assert (= (and b!280381 res!143483) b!280373))

(declare-fun m!294851 () Bool)

(assert (=> b!280381 m!294851))

(declare-fun m!294853 () Bool)

(assert (=> start!27128 m!294853))

(declare-fun m!294855 () Bool)

(assert (=> start!27128 m!294855))

(declare-fun m!294857 () Bool)

(assert (=> b!280375 m!294857))

(declare-fun m!294859 () Bool)

(assert (=> b!280380 m!294859))

(declare-fun m!294861 () Bool)

(assert (=> b!280372 m!294861))

(declare-fun m!294863 () Bool)

(assert (=> b!280373 m!294863))

(declare-fun m!294865 () Bool)

(assert (=> b!280371 m!294865))

(declare-fun m!294867 () Bool)

(assert (=> b!280376 m!294867))

(declare-fun m!294869 () Bool)

(assert (=> b!280379 m!294869))

(assert (=> b!280379 m!294869))

(declare-fun m!294871 () Bool)

(assert (=> b!280379 m!294871))

(declare-fun m!294873 () Bool)

(assert (=> b!280378 m!294873))

(declare-fun m!294875 () Bool)

(assert (=> b!280383 m!294875))

(push 1)

