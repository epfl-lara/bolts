; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26312 () Bool)

(assert start!26312)

(declare-fun b!272452 () Bool)

(declare-fun res!136483 () Bool)

(declare-fun e!174856 () Bool)

(assert (=> b!272452 (=> (not res!136483) (not e!174856))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272452 (= res!136483 (validKeyInArray!0 k!2581))))

(declare-fun b!272453 () Bool)

(declare-fun e!174854 () Bool)

(assert (=> b!272453 (= e!174854 (not true))))

(declare-datatypes ((array!13398 0))(
  ( (array!13399 (arr!6348 (Array (_ BitVec 32) (_ BitVec 64))) (size!6700 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13398)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((List!4177 0))(
  ( (Nil!4174) (Cons!4173 (h!4840 (_ BitVec 64)) (t!9267 List!4177)) )
))
(declare-fun arrayNoDuplicates!0 (array!13398 (_ BitVec 32) List!4177) Bool)

(assert (=> b!272453 (arrayNoDuplicates!0 (array!13399 (store (arr!6348 a!3325) i!1267 k!2581) (size!6700 a!3325)) #b00000000000000000000000000000000 Nil!4174)))

(declare-datatypes ((Unit!8500 0))(
  ( (Unit!8501) )
))
(declare-fun lt!136037 () Unit!8500)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13398 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4177) Unit!8500)

(assert (=> b!272453 (= lt!136037 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4174))))

(declare-fun b!272454 () Bool)

(assert (=> b!272454 (= e!174856 e!174854)))

(declare-fun res!136480 () Bool)

(assert (=> b!272454 (=> (not res!136480) (not e!174854))))

(declare-datatypes ((SeekEntryResult!1517 0))(
  ( (MissingZero!1517 (index!8238 (_ BitVec 32))) (Found!1517 (index!8239 (_ BitVec 32))) (Intermediate!1517 (undefined!2329 Bool) (index!8240 (_ BitVec 32)) (x!26522 (_ BitVec 32))) (Undefined!1517) (MissingVacant!1517 (index!8241 (_ BitVec 32))) )
))
(declare-fun lt!136036 () SeekEntryResult!1517)

(assert (=> b!272454 (= res!136480 (or (= lt!136036 (MissingZero!1517 i!1267)) (= lt!136036 (MissingVacant!1517 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13398 (_ BitVec 32)) SeekEntryResult!1517)

(assert (=> b!272454 (= lt!136036 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272455 () Bool)

(declare-fun res!136487 () Bool)

(assert (=> b!272455 (=> (not res!136487) (not e!174854))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272455 (= res!136487 (not (= startIndex!26 i!1267)))))

(declare-fun res!136488 () Bool)

(assert (=> start!26312 (=> (not res!136488) (not e!174856))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26312 (= res!136488 (validMask!0 mask!3868))))

(assert (=> start!26312 e!174856))

(declare-fun array_inv!4302 (array!13398) Bool)

(assert (=> start!26312 (array_inv!4302 a!3325)))

(assert (=> start!26312 true))

(declare-fun b!272456 () Bool)

(declare-fun res!136481 () Bool)

(assert (=> b!272456 (=> (not res!136481) (not e!174854))))

(assert (=> b!272456 (= res!136481 (validKeyInArray!0 (select (arr!6348 a!3325) startIndex!26)))))

(declare-fun b!272457 () Bool)

(declare-fun res!136482 () Bool)

(assert (=> b!272457 (=> (not res!136482) (not e!174856))))

(assert (=> b!272457 (= res!136482 (and (= (size!6700 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6700 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6700 a!3325))))))

(declare-fun b!272458 () Bool)

(declare-fun res!136485 () Bool)

(assert (=> b!272458 (=> (not res!136485) (not e!174856))))

(assert (=> b!272458 (= res!136485 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4174))))

(declare-fun b!272459 () Bool)

(declare-fun res!136484 () Bool)

(assert (=> b!272459 (=> (not res!136484) (not e!174854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13398 (_ BitVec 32)) Bool)

(assert (=> b!272459 (= res!136484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272460 () Bool)

(declare-fun res!136486 () Bool)

(assert (=> b!272460 (=> (not res!136486) (not e!174856))))

(declare-fun arrayContainsKey!0 (array!13398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272460 (= res!136486 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26312 res!136488) b!272457))

(assert (= (and b!272457 res!136482) b!272452))

(assert (= (and b!272452 res!136483) b!272458))

(assert (= (and b!272458 res!136485) b!272460))

(assert (= (and b!272460 res!136486) b!272454))

(assert (= (and b!272454 res!136480) b!272459))

(assert (= (and b!272459 res!136484) b!272455))

(assert (= (and b!272455 res!136487) b!272456))

(assert (= (and b!272456 res!136481) b!272453))

(declare-fun m!287587 () Bool)

(assert (=> b!272456 m!287587))

(assert (=> b!272456 m!287587))

(declare-fun m!287589 () Bool)

(assert (=> b!272456 m!287589))

(declare-fun m!287591 () Bool)

(assert (=> b!272459 m!287591))

(declare-fun m!287593 () Bool)

(assert (=> b!272453 m!287593))

(declare-fun m!287595 () Bool)

(assert (=> b!272453 m!287595))

(declare-fun m!287597 () Bool)

(assert (=> b!272453 m!287597))

(declare-fun m!287599 () Bool)

(assert (=> b!272460 m!287599))

(declare-fun m!287601 () Bool)

(assert (=> b!272454 m!287601))

(declare-fun m!287603 () Bool)

(assert (=> start!26312 m!287603))

(declare-fun m!287605 () Bool)

(assert (=> start!26312 m!287605))

(declare-fun m!287607 () Bool)

(assert (=> b!272458 m!287607))

(declare-fun m!287609 () Bool)

(assert (=> b!272452 m!287609))

(push 1)

(assert (not b!272460))

(assert (not b!272454))

