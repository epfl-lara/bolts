; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27540 () Bool)

(assert start!27540)

(declare-fun b!284428 () Bool)

(declare-fun res!146981 () Bool)

(declare-fun e!180434 () Bool)

(assert (=> b!284428 (=> (not res!146981) (not e!180434))))

(declare-datatypes ((array!14179 0))(
  ( (array!14180 (arr!6728 (Array (_ BitVec 32) (_ BitVec 64))) (size!7080 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14179)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14179 (_ BitVec 32)) Bool)

(assert (=> b!284428 (= res!146981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284429 () Bool)

(declare-fun e!180435 () Bool)

(assert (=> b!284429 (= e!180435 e!180434)))

(declare-fun res!146979 () Bool)

(assert (=> b!284429 (=> (not res!146979) (not e!180434))))

(declare-datatypes ((SeekEntryResult!1897 0))(
  ( (MissingZero!1897 (index!9758 (_ BitVec 32))) (Found!1897 (index!9759 (_ BitVec 32))) (Intermediate!1897 (undefined!2709 Bool) (index!9760 (_ BitVec 32)) (x!27936 (_ BitVec 32))) (Undefined!1897) (MissingVacant!1897 (index!9761 (_ BitVec 32))) )
))
(declare-fun lt!140543 () SeekEntryResult!1897)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284429 (= res!146979 (or (= lt!140543 (MissingZero!1897 i!1267)) (= lt!140543 (MissingVacant!1897 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14179 (_ BitVec 32)) SeekEntryResult!1897)

(assert (=> b!284429 (= lt!140543 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!284430 () Bool)

(declare-fun res!146974 () Bool)

(assert (=> b!284430 (=> (not res!146974) (not e!180434))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284430 (= res!146974 (not (validKeyInArray!0 (select (arr!6728 a!3325) startIndex!26))))))

(declare-fun b!284431 () Bool)

(declare-fun res!146982 () Bool)

(assert (=> b!284431 (=> (not res!146982) (not e!180434))))

(assert (=> b!284431 (= res!146982 (not (= startIndex!26 i!1267)))))

(declare-fun b!284432 () Bool)

(declare-fun res!146975 () Bool)

(assert (=> b!284432 (=> (not res!146975) (not e!180435))))

(assert (=> b!284432 (= res!146975 (and (= (size!7080 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7080 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7080 a!3325))))))

(declare-fun b!284433 () Bool)

(declare-fun res!146977 () Bool)

(assert (=> b!284433 (=> (not res!146977) (not e!180435))))

(assert (=> b!284433 (= res!146977 (validKeyInArray!0 k0!2581))))

(declare-fun res!146976 () Bool)

(assert (=> start!27540 (=> (not res!146976) (not e!180435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27540 (= res!146976 (validMask!0 mask!3868))))

(assert (=> start!27540 e!180435))

(declare-fun array_inv!4682 (array!14179) Bool)

(assert (=> start!27540 (array_inv!4682 a!3325)))

(assert (=> start!27540 true))

(declare-fun b!284434 () Bool)

(declare-fun res!146978 () Bool)

(assert (=> b!284434 (=> (not res!146978) (not e!180435))))

(declare-fun arrayContainsKey!0 (array!14179 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284434 (= res!146978 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284435 () Bool)

(assert (=> b!284435 (= e!180434 (and (bvslt startIndex!26 (bvsub (size!7080 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!284436 () Bool)

(declare-fun res!146980 () Bool)

(assert (=> b!284436 (=> (not res!146980) (not e!180435))))

(declare-datatypes ((List!4557 0))(
  ( (Nil!4554) (Cons!4553 (h!5226 (_ BitVec 64)) (t!9647 List!4557)) )
))
(declare-fun arrayNoDuplicates!0 (array!14179 (_ BitVec 32) List!4557) Bool)

(assert (=> b!284436 (= res!146980 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4554))))

(assert (= (and start!27540 res!146976) b!284432))

(assert (= (and b!284432 res!146975) b!284433))

(assert (= (and b!284433 res!146977) b!284436))

(assert (= (and b!284436 res!146980) b!284434))

(assert (= (and b!284434 res!146978) b!284429))

(assert (= (and b!284429 res!146979) b!284428))

(assert (= (and b!284428 res!146981) b!284431))

(assert (= (and b!284431 res!146982) b!284430))

(assert (= (and b!284430 res!146974) b!284435))

(declare-fun m!299479 () Bool)

(assert (=> b!284434 m!299479))

(declare-fun m!299481 () Bool)

(assert (=> b!284428 m!299481))

(declare-fun m!299483 () Bool)

(assert (=> start!27540 m!299483))

(declare-fun m!299485 () Bool)

(assert (=> start!27540 m!299485))

(declare-fun m!299487 () Bool)

(assert (=> b!284433 m!299487))

(declare-fun m!299489 () Bool)

(assert (=> b!284429 m!299489))

(declare-fun m!299491 () Bool)

(assert (=> b!284436 m!299491))

(declare-fun m!299493 () Bool)

(assert (=> b!284430 m!299493))

(assert (=> b!284430 m!299493))

(declare-fun m!299495 () Bool)

(assert (=> b!284430 m!299495))

(check-sat (not b!284430) (not b!284428) (not b!284436) (not start!27540) (not b!284429) (not b!284433) (not b!284434))
(check-sat)
