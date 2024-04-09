; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26122 () Bool)

(assert start!26122)

(declare-fun b!269385 () Bool)

(declare-fun res!133625 () Bool)

(declare-fun e!173822 () Bool)

(assert (=> b!269385 (=> (not res!133625) (not e!173822))))

(declare-datatypes ((array!13208 0))(
  ( (array!13209 (arr!6253 (Array (_ BitVec 32) (_ BitVec 64))) (size!6605 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13208)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!269385 (= res!133625 (and (= (size!6605 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6605 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6605 a!3325))))))

(declare-fun res!133629 () Bool)

(assert (=> start!26122 (=> (not res!133629) (not e!173822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26122 (= res!133629 (validMask!0 mask!3868))))

(assert (=> start!26122 e!173822))

(declare-fun array_inv!4207 (array!13208) Bool)

(assert (=> start!26122 (array_inv!4207 a!3325)))

(assert (=> start!26122 true))

(declare-fun b!269386 () Bool)

(declare-fun res!133631 () Bool)

(declare-fun e!173823 () Bool)

(assert (=> b!269386 (=> (not res!133631) (not e!173823))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13208 (_ BitVec 32)) Bool)

(assert (=> b!269386 (= res!133631 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269387 () Bool)

(declare-datatypes ((Unit!8340 0))(
  ( (Unit!8341) )
))
(declare-fun e!173821 () Unit!8340)

(declare-fun lt!135216 () Unit!8340)

(assert (=> b!269387 (= e!173821 lt!135216)))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13208 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8340)

(assert (=> b!269387 (= lt!135216 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269387 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13209 (store (arr!6253 a!3325) i!1267 k!2581) (size!6605 a!3325)) mask!3868)))

(declare-fun b!269388 () Bool)

(declare-fun res!133630 () Bool)

(assert (=> b!269388 (=> (not res!133630) (not e!173822))))

(declare-fun arrayContainsKey!0 (array!13208 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269388 (= res!133630 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269389 () Bool)

(assert (=> b!269389 (= e!173823 false)))

(declare-fun lt!135217 () Unit!8340)

(assert (=> b!269389 (= lt!135217 e!173821)))

(declare-fun c!45431 () Bool)

(assert (=> b!269389 (= c!45431 (bvslt startIndex!26 (bvsub (size!6605 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269390 () Bool)

(assert (=> b!269390 (= e!173822 e!173823)))

(declare-fun res!133632 () Bool)

(assert (=> b!269390 (=> (not res!133632) (not e!173823))))

(declare-datatypes ((SeekEntryResult!1422 0))(
  ( (MissingZero!1422 (index!7858 (_ BitVec 32))) (Found!1422 (index!7859 (_ BitVec 32))) (Intermediate!1422 (undefined!2234 Bool) (index!7860 (_ BitVec 32)) (x!26179 (_ BitVec 32))) (Undefined!1422) (MissingVacant!1422 (index!7861 (_ BitVec 32))) )
))
(declare-fun lt!135218 () SeekEntryResult!1422)

(assert (=> b!269390 (= res!133632 (or (= lt!135218 (MissingZero!1422 i!1267)) (= lt!135218 (MissingVacant!1422 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13208 (_ BitVec 32)) SeekEntryResult!1422)

(assert (=> b!269390 (= lt!135218 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269391 () Bool)

(declare-fun res!133628 () Bool)

(assert (=> b!269391 (=> (not res!133628) (not e!173822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269391 (= res!133628 (validKeyInArray!0 k!2581))))

(declare-fun b!269392 () Bool)

(declare-fun res!133627 () Bool)

(assert (=> b!269392 (=> (not res!133627) (not e!173823))))

(assert (=> b!269392 (= res!133627 (= startIndex!26 i!1267))))

(declare-fun b!269393 () Bool)

(declare-fun res!133626 () Bool)

(assert (=> b!269393 (=> (not res!133626) (not e!173822))))

(declare-datatypes ((List!4082 0))(
  ( (Nil!4079) (Cons!4078 (h!4745 (_ BitVec 64)) (t!9172 List!4082)) )
))
(declare-fun arrayNoDuplicates!0 (array!13208 (_ BitVec 32) List!4082) Bool)

(assert (=> b!269393 (= res!133626 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4079))))

(declare-fun b!269394 () Bool)

(declare-fun Unit!8342 () Unit!8340)

(assert (=> b!269394 (= e!173821 Unit!8342)))

(assert (= (and start!26122 res!133629) b!269385))

(assert (= (and b!269385 res!133625) b!269391))

(assert (= (and b!269391 res!133628) b!269393))

(assert (= (and b!269393 res!133626) b!269388))

(assert (= (and b!269388 res!133630) b!269390))

(assert (= (and b!269390 res!133632) b!269386))

(assert (= (and b!269386 res!133631) b!269392))

(assert (= (and b!269392 res!133627) b!269389))

(assert (= (and b!269389 c!45431) b!269387))

(assert (= (and b!269389 (not c!45431)) b!269394))

(declare-fun m!285289 () Bool)

(assert (=> b!269390 m!285289))

(declare-fun m!285291 () Bool)

(assert (=> b!269393 m!285291))

(declare-fun m!285293 () Bool)

(assert (=> start!26122 m!285293))

(declare-fun m!285295 () Bool)

(assert (=> start!26122 m!285295))

(declare-fun m!285297 () Bool)

(assert (=> b!269386 m!285297))

(declare-fun m!285299 () Bool)

(assert (=> b!269387 m!285299))

(declare-fun m!285301 () Bool)

(assert (=> b!269387 m!285301))

(declare-fun m!285303 () Bool)

(assert (=> b!269387 m!285303))

(declare-fun m!285305 () Bool)

(assert (=> b!269388 m!285305))

(declare-fun m!285307 () Bool)

(assert (=> b!269391 m!285307))

(push 1)

