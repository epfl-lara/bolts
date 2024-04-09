; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26732 () Bool)

(assert start!26732)

(declare-fun b!277464 () Bool)

(declare-datatypes ((Unit!8751 0))(
  ( (Unit!8752) )
))
(declare-fun e!177060 () Unit!8751)

(declare-fun Unit!8753 () Unit!8751)

(assert (=> b!277464 (= e!177060 Unit!8753)))

(declare-fun b!277465 () Bool)

(declare-fun res!141389 () Bool)

(declare-fun e!177061 () Bool)

(assert (=> b!277465 (=> (not res!141389) (not e!177061))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277465 (= res!141389 (validKeyInArray!0 k!2581))))

(declare-fun b!277466 () Bool)

(declare-fun res!141392 () Bool)

(declare-fun e!177058 () Bool)

(assert (=> b!277466 (=> (not res!141392) (not e!177058))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277466 (= res!141392 (= startIndex!26 i!1267))))

(declare-fun b!277467 () Bool)

(declare-fun res!141390 () Bool)

(assert (=> b!277467 (=> (not res!141390) (not e!177061))))

(declare-datatypes ((array!13818 0))(
  ( (array!13819 (arr!6558 (Array (_ BitVec 32) (_ BitVec 64))) (size!6910 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13818)

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!277467 (= res!141390 (and (= (size!6910 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6910 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6910 a!3325))))))

(declare-fun b!277468 () Bool)

(assert (=> b!277468 (= e!177058 false)))

(declare-fun lt!137980 () Unit!8751)

(assert (=> b!277468 (= lt!137980 e!177060)))

(declare-fun c!45590 () Bool)

(assert (=> b!277468 (= c!45590 (bvslt startIndex!26 (bvsub (size!6910 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277470 () Bool)

(assert (=> b!277470 (= e!177061 e!177058)))

(declare-fun res!141387 () Bool)

(assert (=> b!277470 (=> (not res!141387) (not e!177058))))

(declare-datatypes ((SeekEntryResult!1727 0))(
  ( (MissingZero!1727 (index!9078 (_ BitVec 32))) (Found!1727 (index!9079 (_ BitVec 32))) (Intermediate!1727 (undefined!2539 Bool) (index!9080 (_ BitVec 32)) (x!27292 (_ BitVec 32))) (Undefined!1727) (MissingVacant!1727 (index!9081 (_ BitVec 32))) )
))
(declare-fun lt!137981 () SeekEntryResult!1727)

(assert (=> b!277470 (= res!141387 (or (= lt!137981 (MissingZero!1727 i!1267)) (= lt!137981 (MissingVacant!1727 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13818 (_ BitVec 32)) SeekEntryResult!1727)

(assert (=> b!277470 (= lt!137981 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277471 () Bool)

(declare-fun res!141393 () Bool)

(assert (=> b!277471 (=> (not res!141393) (not e!177061))))

(declare-fun arrayContainsKey!0 (array!13818 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277471 (= res!141393 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277472 () Bool)

(declare-fun lt!137979 () Unit!8751)

(assert (=> b!277472 (= e!177060 lt!137979)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13818 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8751)

(assert (=> b!277472 (= lt!137979 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13818 (_ BitVec 32)) Bool)

(assert (=> b!277472 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13819 (store (arr!6558 a!3325) i!1267 k!2581) (size!6910 a!3325)) mask!3868)))

(declare-fun b!277473 () Bool)

(declare-fun res!141388 () Bool)

(assert (=> b!277473 (=> (not res!141388) (not e!177061))))

(declare-datatypes ((List!4387 0))(
  ( (Nil!4384) (Cons!4383 (h!5050 (_ BitVec 64)) (t!9477 List!4387)) )
))
(declare-fun arrayNoDuplicates!0 (array!13818 (_ BitVec 32) List!4387) Bool)

(assert (=> b!277473 (= res!141388 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4384))))

(declare-fun b!277469 () Bool)

(declare-fun res!141391 () Bool)

(assert (=> b!277469 (=> (not res!141391) (not e!177058))))

(assert (=> b!277469 (= res!141391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!141386 () Bool)

(assert (=> start!26732 (=> (not res!141386) (not e!177061))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26732 (= res!141386 (validMask!0 mask!3868))))

(assert (=> start!26732 e!177061))

(declare-fun array_inv!4512 (array!13818) Bool)

(assert (=> start!26732 (array_inv!4512 a!3325)))

(assert (=> start!26732 true))

(assert (= (and start!26732 res!141386) b!277467))

(assert (= (and b!277467 res!141390) b!277465))

(assert (= (and b!277465 res!141389) b!277473))

(assert (= (and b!277473 res!141388) b!277471))

(assert (= (and b!277471 res!141393) b!277470))

(assert (= (and b!277470 res!141387) b!277469))

(assert (= (and b!277469 res!141391) b!277466))

(assert (= (and b!277466 res!141392) b!277468))

(assert (= (and b!277468 c!45590) b!277472))

(assert (= (and b!277468 (not c!45590)) b!277464))

(declare-fun m!292529 () Bool)

(assert (=> start!26732 m!292529))

(declare-fun m!292531 () Bool)

(assert (=> start!26732 m!292531))

(declare-fun m!292533 () Bool)

(assert (=> b!277465 m!292533))

(declare-fun m!292535 () Bool)

(assert (=> b!277472 m!292535))

(declare-fun m!292537 () Bool)

(assert (=> b!277472 m!292537))

(declare-fun m!292539 () Bool)

(assert (=> b!277472 m!292539))

(declare-fun m!292541 () Bool)

(assert (=> b!277471 m!292541))

(declare-fun m!292543 () Bool)

(assert (=> b!277470 m!292543))

(declare-fun m!292545 () Bool)

(assert (=> b!277473 m!292545))

(declare-fun m!292547 () Bool)

(assert (=> b!277469 m!292547))

(push 1)

(assert (not b!277470))

(assert (not b!277472))

(assert (not start!26732))

(assert (not b!277469))

(assert (not b!277473))

(assert (not b!277471))

(assert (not b!277465))

(check-sat)

