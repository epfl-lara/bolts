; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26310 () Bool)

(assert start!26310)

(declare-fun res!136459 () Bool)

(declare-fun e!174846 () Bool)

(assert (=> start!26310 (=> (not res!136459) (not e!174846))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26310 (= res!136459 (validMask!0 mask!3868))))

(assert (=> start!26310 e!174846))

(declare-datatypes ((array!13396 0))(
  ( (array!13397 (arr!6347 (Array (_ BitVec 32) (_ BitVec 64))) (size!6699 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13396)

(declare-fun array_inv!4301 (array!13396) Bool)

(assert (=> start!26310 (array_inv!4301 a!3325)))

(assert (=> start!26310 true))

(declare-fun b!272425 () Bool)

(declare-fun res!136456 () Bool)

(assert (=> b!272425 (=> (not res!136456) (not e!174846))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272425 (= res!136456 (validKeyInArray!0 k0!2581))))

(declare-fun b!272426 () Bool)

(declare-fun res!136457 () Bool)

(declare-fun e!174847 () Bool)

(assert (=> b!272426 (=> (not res!136457) (not e!174847))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!272426 (= res!136457 (not (= startIndex!26 i!1267)))))

(declare-fun b!272427 () Bool)

(declare-fun res!136460 () Bool)

(assert (=> b!272427 (=> (not res!136460) (not e!174847))))

(assert (=> b!272427 (= res!136460 (validKeyInArray!0 (select (arr!6347 a!3325) startIndex!26)))))

(declare-fun b!272428 () Bool)

(declare-fun res!136461 () Bool)

(assert (=> b!272428 (=> (not res!136461) (not e!174846))))

(assert (=> b!272428 (= res!136461 (and (= (size!6699 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6699 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6699 a!3325))))))

(declare-fun b!272429 () Bool)

(declare-fun res!136453 () Bool)

(assert (=> b!272429 (=> (not res!136453) (not e!174846))))

(declare-fun arrayContainsKey!0 (array!13396 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272429 (= res!136453 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272430 () Bool)

(declare-fun res!136454 () Bool)

(assert (=> b!272430 (=> (not res!136454) (not e!174846))))

(declare-datatypes ((List!4176 0))(
  ( (Nil!4173) (Cons!4172 (h!4839 (_ BitVec 64)) (t!9266 List!4176)) )
))
(declare-fun arrayNoDuplicates!0 (array!13396 (_ BitVec 32) List!4176) Bool)

(assert (=> b!272430 (= res!136454 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4173))))

(declare-fun b!272431 () Bool)

(assert (=> b!272431 (= e!174846 e!174847)))

(declare-fun res!136458 () Bool)

(assert (=> b!272431 (=> (not res!136458) (not e!174847))))

(declare-datatypes ((SeekEntryResult!1516 0))(
  ( (MissingZero!1516 (index!8234 (_ BitVec 32))) (Found!1516 (index!8235 (_ BitVec 32))) (Intermediate!1516 (undefined!2328 Bool) (index!8236 (_ BitVec 32)) (x!26521 (_ BitVec 32))) (Undefined!1516) (MissingVacant!1516 (index!8237 (_ BitVec 32))) )
))
(declare-fun lt!136030 () SeekEntryResult!1516)

(assert (=> b!272431 (= res!136458 (or (= lt!136030 (MissingZero!1516 i!1267)) (= lt!136030 (MissingVacant!1516 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13396 (_ BitVec 32)) SeekEntryResult!1516)

(assert (=> b!272431 (= lt!136030 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!272432 () Bool)

(assert (=> b!272432 (= e!174847 (not true))))

(assert (=> b!272432 (arrayNoDuplicates!0 (array!13397 (store (arr!6347 a!3325) i!1267 k0!2581) (size!6699 a!3325)) #b00000000000000000000000000000000 Nil!4173)))

(declare-datatypes ((Unit!8498 0))(
  ( (Unit!8499) )
))
(declare-fun lt!136031 () Unit!8498)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13396 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4176) Unit!8498)

(assert (=> b!272432 (= lt!136031 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4173))))

(declare-fun b!272433 () Bool)

(declare-fun res!136455 () Bool)

(assert (=> b!272433 (=> (not res!136455) (not e!174847))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13396 (_ BitVec 32)) Bool)

(assert (=> b!272433 (= res!136455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26310 res!136459) b!272428))

(assert (= (and b!272428 res!136461) b!272425))

(assert (= (and b!272425 res!136456) b!272430))

(assert (= (and b!272430 res!136454) b!272429))

(assert (= (and b!272429 res!136453) b!272431))

(assert (= (and b!272431 res!136458) b!272433))

(assert (= (and b!272433 res!136455) b!272426))

(assert (= (and b!272426 res!136457) b!272427))

(assert (= (and b!272427 res!136460) b!272432))

(declare-fun m!287563 () Bool)

(assert (=> b!272430 m!287563))

(declare-fun m!287565 () Bool)

(assert (=> b!272427 m!287565))

(assert (=> b!272427 m!287565))

(declare-fun m!287567 () Bool)

(assert (=> b!272427 m!287567))

(declare-fun m!287569 () Bool)

(assert (=> b!272425 m!287569))

(declare-fun m!287571 () Bool)

(assert (=> b!272432 m!287571))

(declare-fun m!287573 () Bool)

(assert (=> b!272432 m!287573))

(declare-fun m!287575 () Bool)

(assert (=> b!272432 m!287575))

(declare-fun m!287577 () Bool)

(assert (=> start!26310 m!287577))

(declare-fun m!287579 () Bool)

(assert (=> start!26310 m!287579))

(declare-fun m!287581 () Bool)

(assert (=> b!272431 m!287581))

(declare-fun m!287583 () Bool)

(assert (=> b!272429 m!287583))

(declare-fun m!287585 () Bool)

(assert (=> b!272433 m!287585))

(check-sat (not b!272429) (not b!272430) (not b!272427) (not b!272432) (not start!26310) (not b!272431) (not b!272425) (not b!272433))
(check-sat)
