; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27184 () Bool)

(assert start!27184)

(declare-fun res!144240 () Bool)

(declare-fun e!178766 () Bool)

(assert (=> start!27184 (=> (not res!144240) (not e!178766))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27184 (= res!144240 (validMask!0 mask!3868))))

(assert (=> start!27184 e!178766))

(declare-datatypes ((array!13991 0))(
  ( (array!13992 (arr!6637 (Array (_ BitVec 32) (_ BitVec 64))) (size!6989 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13991)

(declare-fun array_inv!4591 (array!13991) Bool)

(assert (=> start!27184 (array_inv!4591 a!3325)))

(assert (=> start!27184 true))

(declare-fun b!281131 () Bool)

(declare-fun e!178768 () Bool)

(assert (=> b!281131 (= e!178766 e!178768)))

(declare-fun res!144241 () Bool)

(assert (=> b!281131 (=> (not res!144241) (not e!178768))))

(declare-datatypes ((SeekEntryResult!1806 0))(
  ( (MissingZero!1806 (index!9394 (_ BitVec 32))) (Found!1806 (index!9395 (_ BitVec 32))) (Intermediate!1806 (undefined!2618 Bool) (index!9396 (_ BitVec 32)) (x!27596 (_ BitVec 32))) (Undefined!1806) (MissingVacant!1806 (index!9397 (_ BitVec 32))) )
))
(declare-fun lt!139013 () SeekEntryResult!1806)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281131 (= res!144241 (or (= lt!139013 (MissingZero!1806 i!1267)) (= lt!139013 (MissingVacant!1806 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13991 (_ BitVec 32)) SeekEntryResult!1806)

(assert (=> b!281131 (= lt!139013 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281132 () Bool)

(declare-fun res!144244 () Bool)

(assert (=> b!281132 (=> (not res!144244) (not e!178768))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281132 (= res!144244 (validKeyInArray!0 (select (arr!6637 a!3325) startIndex!26)))))

(declare-fun b!281133 () Bool)

(declare-fun res!144242 () Bool)

(assert (=> b!281133 (=> (not res!144242) (not e!178766))))

(assert (=> b!281133 (= res!144242 (validKeyInArray!0 k!2581))))

(declare-fun b!281134 () Bool)

(assert (=> b!281134 (= e!178768 (not true))))

(declare-datatypes ((List!4466 0))(
  ( (Nil!4463) (Cons!4462 (h!5132 (_ BitVec 64)) (t!9556 List!4466)) )
))
(declare-fun arrayNoDuplicates!0 (array!13991 (_ BitVec 32) List!4466) Bool)

(assert (=> b!281134 (arrayNoDuplicates!0 (array!13992 (store (arr!6637 a!3325) i!1267 k!2581) (size!6989 a!3325)) #b00000000000000000000000000000000 Nil!4463)))

(declare-datatypes ((Unit!8875 0))(
  ( (Unit!8876) )
))
(declare-fun lt!139012 () Unit!8875)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13991 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4466) Unit!8875)

(assert (=> b!281134 (= lt!139012 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4463))))

(declare-fun b!281135 () Bool)

(declare-fun res!144239 () Bool)

(assert (=> b!281135 (=> (not res!144239) (not e!178766))))

(declare-fun arrayContainsKey!0 (array!13991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281135 (= res!144239 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281136 () Bool)

(declare-fun res!144243 () Bool)

(assert (=> b!281136 (=> (not res!144243) (not e!178766))))

(assert (=> b!281136 (= res!144243 (and (= (size!6989 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6989 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6989 a!3325))))))

(declare-fun b!281137 () Bool)

(declare-fun res!144246 () Bool)

(assert (=> b!281137 (=> (not res!144246) (not e!178768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13991 (_ BitVec 32)) Bool)

(assert (=> b!281137 (= res!144246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281138 () Bool)

(declare-fun res!144245 () Bool)

(assert (=> b!281138 (=> (not res!144245) (not e!178766))))

(assert (=> b!281138 (= res!144245 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4463))))

(declare-fun b!281139 () Bool)

(declare-fun res!144238 () Bool)

(assert (=> b!281139 (=> (not res!144238) (not e!178768))))

(assert (=> b!281139 (= res!144238 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27184 res!144240) b!281136))

(assert (= (and b!281136 res!144243) b!281133))

(assert (= (and b!281133 res!144242) b!281138))

(assert (= (and b!281138 res!144245) b!281135))

(assert (= (and b!281135 res!144239) b!281131))

(assert (= (and b!281131 res!144241) b!281137))

(assert (= (and b!281137 res!144246) b!281139))

(assert (= (and b!281139 res!144238) b!281132))

(assert (= (and b!281132 res!144244) b!281134))

(declare-fun m!295525 () Bool)

(assert (=> b!281134 m!295525))

(declare-fun m!295527 () Bool)

(assert (=> b!281134 m!295527))

(declare-fun m!295529 () Bool)

(assert (=> b!281134 m!295529))

(declare-fun m!295531 () Bool)

(assert (=> start!27184 m!295531))

(declare-fun m!295533 () Bool)

(assert (=> start!27184 m!295533))

(declare-fun m!295535 () Bool)

(assert (=> b!281132 m!295535))

(assert (=> b!281132 m!295535))

(declare-fun m!295537 () Bool)

(assert (=> b!281132 m!295537))

(declare-fun m!295539 () Bool)

(assert (=> b!281135 m!295539))

(declare-fun m!295541 () Bool)

(assert (=> b!281133 m!295541))

(declare-fun m!295543 () Bool)

(assert (=> b!281131 m!295543))

(declare-fun m!295545 () Bool)

(assert (=> b!281138 m!295545))

(declare-fun m!295547 () Bool)

(assert (=> b!281137 m!295547))

(push 1)

