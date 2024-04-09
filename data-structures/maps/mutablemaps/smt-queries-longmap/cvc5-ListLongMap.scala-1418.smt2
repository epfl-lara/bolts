; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27544 () Bool)

(assert start!27544)

(declare-fun b!284476 () Bool)

(declare-fun res!147023 () Bool)

(declare-fun e!180452 () Bool)

(assert (=> b!284476 (=> (not res!147023) (not e!180452))))

(declare-datatypes ((array!14183 0))(
  ( (array!14184 (arr!6730 (Array (_ BitVec 32) (_ BitVec 64))) (size!7082 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14183)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284476 (= res!147023 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284477 () Bool)

(declare-fun res!147026 () Bool)

(assert (=> b!284477 (=> (not res!147026) (not e!180452))))

(declare-datatypes ((List!4559 0))(
  ( (Nil!4556) (Cons!4555 (h!5228 (_ BitVec 64)) (t!9649 List!4559)) )
))
(declare-fun arrayNoDuplicates!0 (array!14183 (_ BitVec 32) List!4559) Bool)

(assert (=> b!284477 (= res!147026 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4556))))

(declare-fun b!284478 () Bool)

(declare-fun e!180454 () Bool)

(assert (=> b!284478 (= e!180454 false)))

(declare-fun lt!140551 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14183 (_ BitVec 32)) Bool)

(assert (=> b!284478 (= lt!140551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284479 () Bool)

(declare-fun res!147025 () Bool)

(assert (=> b!284479 (=> (not res!147025) (not e!180452))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284479 (= res!147025 (and (= (size!7082 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7082 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7082 a!3325))))))

(declare-fun b!284480 () Bool)

(assert (=> b!284480 (= e!180452 e!180454)))

(declare-fun res!147024 () Bool)

(assert (=> b!284480 (=> (not res!147024) (not e!180454))))

(declare-datatypes ((SeekEntryResult!1899 0))(
  ( (MissingZero!1899 (index!9766 (_ BitVec 32))) (Found!1899 (index!9767 (_ BitVec 32))) (Intermediate!1899 (undefined!2711 Bool) (index!9768 (_ BitVec 32)) (x!27946 (_ BitVec 32))) (Undefined!1899) (MissingVacant!1899 (index!9769 (_ BitVec 32))) )
))
(declare-fun lt!140552 () SeekEntryResult!1899)

(assert (=> b!284480 (= res!147024 (or (= lt!140552 (MissingZero!1899 i!1267)) (= lt!140552 (MissingVacant!1899 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14183 (_ BitVec 32)) SeekEntryResult!1899)

(assert (=> b!284480 (= lt!140552 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!147022 () Bool)

(assert (=> start!27544 (=> (not res!147022) (not e!180452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27544 (= res!147022 (validMask!0 mask!3868))))

(assert (=> start!27544 e!180452))

(declare-fun array_inv!4684 (array!14183) Bool)

(assert (=> start!27544 (array_inv!4684 a!3325)))

(assert (=> start!27544 true))

(declare-fun b!284481 () Bool)

(declare-fun res!147027 () Bool)

(assert (=> b!284481 (=> (not res!147027) (not e!180452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284481 (= res!147027 (validKeyInArray!0 k!2581))))

(assert (= (and start!27544 res!147022) b!284479))

(assert (= (and b!284479 res!147025) b!284481))

(assert (= (and b!284481 res!147027) b!284477))

(assert (= (and b!284477 res!147026) b!284476))

(assert (= (and b!284476 res!147023) b!284480))

(assert (= (and b!284480 res!147024) b!284478))

(declare-fun m!299515 () Bool)

(assert (=> start!27544 m!299515))

(declare-fun m!299517 () Bool)

(assert (=> start!27544 m!299517))

(declare-fun m!299519 () Bool)

(assert (=> b!284481 m!299519))

(declare-fun m!299521 () Bool)

(assert (=> b!284480 m!299521))

(declare-fun m!299523 () Bool)

(assert (=> b!284476 m!299523))

(declare-fun m!299525 () Bool)

(assert (=> b!284477 m!299525))

(declare-fun m!299527 () Bool)

(assert (=> b!284478 m!299527))

(push 1)

