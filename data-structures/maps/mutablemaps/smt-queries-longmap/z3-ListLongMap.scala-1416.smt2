; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27534 () Bool)

(assert start!27534)

(declare-fun b!284359 () Bool)

(declare-fun res!146905 () Bool)

(declare-fun e!180408 () Bool)

(assert (=> b!284359 (=> (not res!146905) (not e!180408))))

(declare-datatypes ((array!14173 0))(
  ( (array!14174 (arr!6725 (Array (_ BitVec 32) (_ BitVec 64))) (size!7077 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14173)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284359 (= res!146905 (and (= (size!7077 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7077 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7077 a!3325))))))

(declare-fun b!284360 () Bool)

(declare-fun e!180409 () Bool)

(assert (=> b!284360 (= e!180408 e!180409)))

(declare-fun res!146910 () Bool)

(assert (=> b!284360 (=> (not res!146910) (not e!180409))))

(declare-datatypes ((SeekEntryResult!1894 0))(
  ( (MissingZero!1894 (index!9746 (_ BitVec 32))) (Found!1894 (index!9747 (_ BitVec 32))) (Intermediate!1894 (undefined!2706 Bool) (index!9748 (_ BitVec 32)) (x!27925 (_ BitVec 32))) (Undefined!1894) (MissingVacant!1894 (index!9749 (_ BitVec 32))) )
))
(declare-fun lt!140531 () SeekEntryResult!1894)

(assert (=> b!284360 (= res!146910 (or (= lt!140531 (MissingZero!1894 i!1267)) (= lt!140531 (MissingVacant!1894 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14173 (_ BitVec 32)) SeekEntryResult!1894)

(assert (=> b!284360 (= lt!140531 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!284361 () Bool)

(assert (=> b!284361 (= e!180409 false)))

(declare-fun lt!140530 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14173 (_ BitVec 32)) Bool)

(assert (=> b!284361 (= lt!140530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284362 () Bool)

(declare-fun res!146908 () Bool)

(assert (=> b!284362 (=> (not res!146908) (not e!180408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284362 (= res!146908 (validKeyInArray!0 k0!2581))))

(declare-fun b!284363 () Bool)

(declare-fun res!146909 () Bool)

(assert (=> b!284363 (=> (not res!146909) (not e!180408))))

(declare-datatypes ((List!4554 0))(
  ( (Nil!4551) (Cons!4550 (h!5223 (_ BitVec 64)) (t!9644 List!4554)) )
))
(declare-fun arrayNoDuplicates!0 (array!14173 (_ BitVec 32) List!4554) Bool)

(assert (=> b!284363 (= res!146909 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4551))))

(declare-fun b!284364 () Bool)

(declare-fun res!146907 () Bool)

(assert (=> b!284364 (=> (not res!146907) (not e!180408))))

(declare-fun arrayContainsKey!0 (array!14173 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284364 (= res!146907 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!146906 () Bool)

(assert (=> start!27534 (=> (not res!146906) (not e!180408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27534 (= res!146906 (validMask!0 mask!3868))))

(assert (=> start!27534 e!180408))

(declare-fun array_inv!4679 (array!14173) Bool)

(assert (=> start!27534 (array_inv!4679 a!3325)))

(assert (=> start!27534 true))

(assert (= (and start!27534 res!146906) b!284359))

(assert (= (and b!284359 res!146905) b!284362))

(assert (= (and b!284362 res!146908) b!284363))

(assert (= (and b!284363 res!146909) b!284364))

(assert (= (and b!284364 res!146907) b!284360))

(assert (= (and b!284360 res!146910) b!284361))

(declare-fun m!299433 () Bool)

(assert (=> b!284364 m!299433))

(declare-fun m!299435 () Bool)

(assert (=> b!284360 m!299435))

(declare-fun m!299437 () Bool)

(assert (=> b!284361 m!299437))

(declare-fun m!299439 () Bool)

(assert (=> b!284363 m!299439))

(declare-fun m!299441 () Bool)

(assert (=> b!284362 m!299441))

(declare-fun m!299443 () Bool)

(assert (=> start!27534 m!299443))

(declare-fun m!299445 () Bool)

(assert (=> start!27534 m!299445))

(check-sat (not start!27534) (not b!284360) (not b!284362) (not b!284364) (not b!284363) (not b!284361))
(check-sat)
