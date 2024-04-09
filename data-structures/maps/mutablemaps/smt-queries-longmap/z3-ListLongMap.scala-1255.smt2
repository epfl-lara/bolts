; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26100 () Bool)

(assert start!26100)

(declare-fun b!269055 () Bool)

(declare-datatypes ((Unit!8307 0))(
  ( (Unit!8308) )
))
(declare-fun e!173691 () Unit!8307)

(declare-fun Unit!8309 () Unit!8307)

(assert (=> b!269055 (= e!173691 Unit!8309)))

(declare-fun b!269056 () Bool)

(declare-fun res!133367 () Bool)

(declare-fun e!173692 () Bool)

(assert (=> b!269056 (=> (not res!133367) (not e!173692))))

(declare-datatypes ((array!13186 0))(
  ( (array!13187 (arr!6242 (Array (_ BitVec 32) (_ BitVec 64))) (size!6594 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13186)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13186 (_ BitVec 32)) Bool)

(assert (=> b!269056 (= res!133367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269057 () Bool)

(declare-fun res!133368 () Bool)

(declare-fun e!173689 () Bool)

(assert (=> b!269057 (=> (not res!133368) (not e!173689))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269057 (= res!133368 (validKeyInArray!0 k0!2581))))

(declare-fun b!269058 () Bool)

(declare-fun lt!135119 () Unit!8307)

(assert (=> b!269058 (= e!173691 lt!135119)))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13186 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8307)

(assert (=> b!269058 (= lt!135119 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269058 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13187 (store (arr!6242 a!3325) i!1267 k0!2581) (size!6594 a!3325)) mask!3868)))

(declare-fun b!269059 () Bool)

(declare-fun res!133364 () Bool)

(assert (=> b!269059 (=> (not res!133364) (not e!173689))))

(declare-fun arrayContainsKey!0 (array!13186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269059 (= res!133364 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269060 () Bool)

(assert (=> b!269060 (= e!173692 false)))

(declare-fun lt!135118 () Unit!8307)

(assert (=> b!269060 (= lt!135118 e!173691)))

(declare-fun c!45398 () Bool)

(assert (=> b!269060 (= c!45398 (bvslt startIndex!26 (bvsub (size!6594 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269061 () Bool)

(declare-fun res!133363 () Bool)

(assert (=> b!269061 (=> (not res!133363) (not e!173689))))

(assert (=> b!269061 (= res!133363 (and (= (size!6594 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6594 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6594 a!3325))))))

(declare-fun res!133365 () Bool)

(assert (=> start!26100 (=> (not res!133365) (not e!173689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26100 (= res!133365 (validMask!0 mask!3868))))

(assert (=> start!26100 e!173689))

(declare-fun array_inv!4196 (array!13186) Bool)

(assert (=> start!26100 (array_inv!4196 a!3325)))

(assert (=> start!26100 true))

(declare-fun b!269062 () Bool)

(declare-fun res!133362 () Bool)

(assert (=> b!269062 (=> (not res!133362) (not e!173692))))

(assert (=> b!269062 (= res!133362 (= startIndex!26 i!1267))))

(declare-fun b!269063 () Bool)

(assert (=> b!269063 (= e!173689 e!173692)))

(declare-fun res!133366 () Bool)

(assert (=> b!269063 (=> (not res!133366) (not e!173692))))

(declare-datatypes ((SeekEntryResult!1411 0))(
  ( (MissingZero!1411 (index!7814 (_ BitVec 32))) (Found!1411 (index!7815 (_ BitVec 32))) (Intermediate!1411 (undefined!2223 Bool) (index!7816 (_ BitVec 32)) (x!26136 (_ BitVec 32))) (Undefined!1411) (MissingVacant!1411 (index!7817 (_ BitVec 32))) )
))
(declare-fun lt!135117 () SeekEntryResult!1411)

(assert (=> b!269063 (= res!133366 (or (= lt!135117 (MissingZero!1411 i!1267)) (= lt!135117 (MissingVacant!1411 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13186 (_ BitVec 32)) SeekEntryResult!1411)

(assert (=> b!269063 (= lt!135117 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!269064 () Bool)

(declare-fun res!133361 () Bool)

(assert (=> b!269064 (=> (not res!133361) (not e!173689))))

(declare-datatypes ((List!4071 0))(
  ( (Nil!4068) (Cons!4067 (h!4734 (_ BitVec 64)) (t!9161 List!4071)) )
))
(declare-fun arrayNoDuplicates!0 (array!13186 (_ BitVec 32) List!4071) Bool)

(assert (=> b!269064 (= res!133361 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4068))))

(assert (= (and start!26100 res!133365) b!269061))

(assert (= (and b!269061 res!133363) b!269057))

(assert (= (and b!269057 res!133368) b!269064))

(assert (= (and b!269064 res!133361) b!269059))

(assert (= (and b!269059 res!133364) b!269063))

(assert (= (and b!269063 res!133366) b!269056))

(assert (= (and b!269056 res!133367) b!269062))

(assert (= (and b!269062 res!133362) b!269060))

(assert (= (and b!269060 c!45398) b!269058))

(assert (= (and b!269060 (not c!45398)) b!269055))

(declare-fun m!285069 () Bool)

(assert (=> b!269056 m!285069))

(declare-fun m!285071 () Bool)

(assert (=> b!269057 m!285071))

(declare-fun m!285073 () Bool)

(assert (=> b!269063 m!285073))

(declare-fun m!285075 () Bool)

(assert (=> start!26100 m!285075))

(declare-fun m!285077 () Bool)

(assert (=> start!26100 m!285077))

(declare-fun m!285079 () Bool)

(assert (=> b!269058 m!285079))

(declare-fun m!285081 () Bool)

(assert (=> b!269058 m!285081))

(declare-fun m!285083 () Bool)

(assert (=> b!269058 m!285083))

(declare-fun m!285085 () Bool)

(assert (=> b!269059 m!285085))

(declare-fun m!285087 () Bool)

(assert (=> b!269064 m!285087))

(check-sat (not b!269059) (not b!269063) (not start!26100) (not b!269057) (not b!269064) (not b!269056) (not b!269058))
(check-sat)
