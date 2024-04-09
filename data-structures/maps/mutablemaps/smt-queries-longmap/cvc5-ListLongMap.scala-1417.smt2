; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27538 () Bool)

(assert start!27538)

(declare-fun b!284402 () Bool)

(declare-fun res!146953 () Bool)

(declare-fun e!180425 () Bool)

(assert (=> b!284402 (=> (not res!146953) (not e!180425))))

(declare-datatypes ((array!14177 0))(
  ( (array!14178 (arr!6727 (Array (_ BitVec 32) (_ BitVec 64))) (size!7079 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14177)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284402 (= res!146953 (and (= (size!7079 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7079 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7079 a!3325))))))

(declare-fun b!284403 () Bool)

(declare-fun res!146954 () Bool)

(assert (=> b!284403 (=> (not res!146954) (not e!180425))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284403 (= res!146954 (validKeyInArray!0 k!2581))))

(declare-fun b!284404 () Bool)

(declare-fun res!146948 () Bool)

(assert (=> b!284404 (=> (not res!146948) (not e!180425))))

(declare-fun arrayContainsKey!0 (array!14177 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284404 (= res!146948 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284405 () Bool)

(declare-fun res!146951 () Bool)

(declare-fun e!180427 () Bool)

(assert (=> b!284405 (=> (not res!146951) (not e!180427))))

(assert (=> b!284405 (= res!146951 (not (validKeyInArray!0 (select (arr!6727 a!3325) startIndex!26))))))

(declare-fun b!284401 () Bool)

(assert (=> b!284401 (= e!180425 e!180427)))

(declare-fun res!146949 () Bool)

(assert (=> b!284401 (=> (not res!146949) (not e!180427))))

(declare-datatypes ((SeekEntryResult!1896 0))(
  ( (MissingZero!1896 (index!9754 (_ BitVec 32))) (Found!1896 (index!9755 (_ BitVec 32))) (Intermediate!1896 (undefined!2708 Bool) (index!9756 (_ BitVec 32)) (x!27935 (_ BitVec 32))) (Undefined!1896) (MissingVacant!1896 (index!9757 (_ BitVec 32))) )
))
(declare-fun lt!140540 () SeekEntryResult!1896)

(assert (=> b!284401 (= res!146949 (or (= lt!140540 (MissingZero!1896 i!1267)) (= lt!140540 (MissingVacant!1896 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14177 (_ BitVec 32)) SeekEntryResult!1896)

(assert (=> b!284401 (= lt!140540 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!146947 () Bool)

(assert (=> start!27538 (=> (not res!146947) (not e!180425))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27538 (= res!146947 (validMask!0 mask!3868))))

(assert (=> start!27538 e!180425))

(declare-fun array_inv!4681 (array!14177) Bool)

(assert (=> start!27538 (array_inv!4681 a!3325)))

(assert (=> start!27538 true))

(declare-fun b!284406 () Bool)

(declare-fun res!146950 () Bool)

(assert (=> b!284406 (=> (not res!146950) (not e!180425))))

(declare-datatypes ((List!4556 0))(
  ( (Nil!4553) (Cons!4552 (h!5225 (_ BitVec 64)) (t!9646 List!4556)) )
))
(declare-fun arrayNoDuplicates!0 (array!14177 (_ BitVec 32) List!4556) Bool)

(assert (=> b!284406 (= res!146950 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4553))))

(declare-fun b!284407 () Bool)

(declare-fun res!146955 () Bool)

(assert (=> b!284407 (=> (not res!146955) (not e!180427))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14177 (_ BitVec 32)) Bool)

(assert (=> b!284407 (= res!146955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284408 () Bool)

(declare-fun res!146952 () Bool)

(assert (=> b!284408 (=> (not res!146952) (not e!180427))))

(assert (=> b!284408 (= res!146952 (not (= startIndex!26 i!1267)))))

(declare-fun b!284409 () Bool)

(assert (=> b!284409 (= e!180427 (and (bvslt startIndex!26 (bvsub (size!7079 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (= (and start!27538 res!146947) b!284402))

(assert (= (and b!284402 res!146953) b!284403))

(assert (= (and b!284403 res!146954) b!284406))

(assert (= (and b!284406 res!146950) b!284404))

(assert (= (and b!284404 res!146948) b!284401))

(assert (= (and b!284401 res!146949) b!284407))

(assert (= (and b!284407 res!146955) b!284408))

(assert (= (and b!284408 res!146952) b!284405))

(assert (= (and b!284405 res!146951) b!284409))

(declare-fun m!299461 () Bool)

(assert (=> b!284404 m!299461))

(declare-fun m!299463 () Bool)

(assert (=> b!284401 m!299463))

(declare-fun m!299465 () Bool)

(assert (=> b!284406 m!299465))

(declare-fun m!299467 () Bool)

(assert (=> start!27538 m!299467))

(declare-fun m!299469 () Bool)

(assert (=> start!27538 m!299469))

(declare-fun m!299471 () Bool)

(assert (=> b!284405 m!299471))

(assert (=> b!284405 m!299471))

(declare-fun m!299473 () Bool)

(assert (=> b!284405 m!299473))

(declare-fun m!299475 () Bool)

(assert (=> b!284407 m!299475))

(declare-fun m!299477 () Bool)

(assert (=> b!284403 m!299477))

(push 1)

