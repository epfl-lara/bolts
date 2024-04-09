; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27146 () Bool)

(assert start!27146)

(declare-fun b!280619 () Bool)

(declare-fun res!143726 () Bool)

(declare-fun e!178597 () Bool)

(assert (=> b!280619 (=> (not res!143726) (not e!178597))))

(declare-datatypes ((array!13953 0))(
  ( (array!13954 (arr!6618 (Array (_ BitVec 32) (_ BitVec 64))) (size!6970 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13953)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13953 (_ BitVec 32)) Bool)

(assert (=> b!280619 (= res!143726 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280620 () Bool)

(declare-fun res!143731 () Bool)

(assert (=> b!280620 (=> (not res!143731) (not e!178597))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280620 (= res!143731 (not (= startIndex!26 i!1267)))))

(declare-fun b!280621 () Bool)

(declare-fun res!143728 () Bool)

(declare-fun e!178596 () Bool)

(assert (=> b!280621 (=> (not res!143728) (not e!178596))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280621 (= res!143728 (validKeyInArray!0 k!2581))))

(declare-fun b!280622 () Bool)

(assert (=> b!280622 (= e!178597 (not true))))

(declare-datatypes ((List!4447 0))(
  ( (Nil!4444) (Cons!4443 (h!5113 (_ BitVec 64)) (t!9537 List!4447)) )
))
(declare-fun arrayNoDuplicates!0 (array!13953 (_ BitVec 32) List!4447) Bool)

(assert (=> b!280622 (arrayNoDuplicates!0 (array!13954 (store (arr!6618 a!3325) i!1267 k!2581) (size!6970 a!3325)) #b00000000000000000000000000000000 Nil!4444)))

(declare-datatypes ((Unit!8837 0))(
  ( (Unit!8838) )
))
(declare-fun lt!138899 () Unit!8837)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13953 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4447) Unit!8837)

(assert (=> b!280622 (= lt!138899 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4444))))

(declare-fun b!280623 () Bool)

(declare-fun res!143725 () Bool)

(assert (=> b!280623 (=> (not res!143725) (not e!178596))))

(declare-fun arrayContainsKey!0 (array!13953 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280623 (= res!143725 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280624 () Bool)

(declare-fun res!143732 () Bool)

(assert (=> b!280624 (=> (not res!143732) (not e!178596))))

(assert (=> b!280624 (= res!143732 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4444))))

(declare-fun res!143730 () Bool)

(assert (=> start!27146 (=> (not res!143730) (not e!178596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27146 (= res!143730 (validMask!0 mask!3868))))

(assert (=> start!27146 e!178596))

(declare-fun array_inv!4572 (array!13953) Bool)

(assert (=> start!27146 (array_inv!4572 a!3325)))

(assert (=> start!27146 true))

(declare-fun b!280618 () Bool)

(assert (=> b!280618 (= e!178596 e!178597)))

(declare-fun res!143727 () Bool)

(assert (=> b!280618 (=> (not res!143727) (not e!178597))))

(declare-datatypes ((SeekEntryResult!1787 0))(
  ( (MissingZero!1787 (index!9318 (_ BitVec 32))) (Found!1787 (index!9319 (_ BitVec 32))) (Intermediate!1787 (undefined!2599 Bool) (index!9320 (_ BitVec 32)) (x!27521 (_ BitVec 32))) (Undefined!1787) (MissingVacant!1787 (index!9321 (_ BitVec 32))) )
))
(declare-fun lt!138898 () SeekEntryResult!1787)

(assert (=> b!280618 (= res!143727 (or (= lt!138898 (MissingZero!1787 i!1267)) (= lt!138898 (MissingVacant!1787 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13953 (_ BitVec 32)) SeekEntryResult!1787)

(assert (=> b!280618 (= lt!138898 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280625 () Bool)

(declare-fun res!143733 () Bool)

(assert (=> b!280625 (=> (not res!143733) (not e!178597))))

(assert (=> b!280625 (= res!143733 (validKeyInArray!0 (select (arr!6618 a!3325) startIndex!26)))))

(declare-fun b!280626 () Bool)

(declare-fun res!143729 () Bool)

(assert (=> b!280626 (=> (not res!143729) (not e!178596))))

(assert (=> b!280626 (= res!143729 (and (= (size!6970 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6970 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6970 a!3325))))))

(assert (= (and start!27146 res!143730) b!280626))

(assert (= (and b!280626 res!143729) b!280621))

(assert (= (and b!280621 res!143728) b!280624))

(assert (= (and b!280624 res!143732) b!280623))

(assert (= (and b!280623 res!143725) b!280618))

(assert (= (and b!280618 res!143727) b!280619))

(assert (= (and b!280619 res!143726) b!280620))

(assert (= (and b!280620 res!143731) b!280625))

(assert (= (and b!280625 res!143733) b!280622))

(declare-fun m!295069 () Bool)

(assert (=> b!280623 m!295069))

(declare-fun m!295071 () Bool)

(assert (=> start!27146 m!295071))

(declare-fun m!295073 () Bool)

(assert (=> start!27146 m!295073))

(declare-fun m!295075 () Bool)

(assert (=> b!280624 m!295075))

(declare-fun m!295077 () Bool)

(assert (=> b!280621 m!295077))

(declare-fun m!295079 () Bool)

(assert (=> b!280622 m!295079))

(declare-fun m!295081 () Bool)

(assert (=> b!280622 m!295081))

(declare-fun m!295083 () Bool)

(assert (=> b!280622 m!295083))

(declare-fun m!295085 () Bool)

(assert (=> b!280619 m!295085))

(declare-fun m!295087 () Bool)

(assert (=> b!280618 m!295087))

(declare-fun m!295089 () Bool)

(assert (=> b!280625 m!295089))

(assert (=> b!280625 m!295089))

(declare-fun m!295091 () Bool)

(assert (=> b!280625 m!295091))

(push 1)

(assert (not b!280625))

(assert (not b!280624))

