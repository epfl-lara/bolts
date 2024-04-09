; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27178 () Bool)

(assert start!27178)

(declare-fun b!281050 () Bool)

(declare-fun res!144159 () Bool)

(declare-fun e!178739 () Bool)

(assert (=> b!281050 (=> (not res!144159) (not e!178739))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281050 (= res!144159 (not (= startIndex!26 i!1267)))))

(declare-fun b!281051 () Bool)

(declare-fun res!144157 () Bool)

(declare-fun e!178741 () Bool)

(assert (=> b!281051 (=> (not res!144157) (not e!178741))))

(declare-datatypes ((array!13985 0))(
  ( (array!13986 (arr!6634 (Array (_ BitVec 32) (_ BitVec 64))) (size!6986 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13985)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13985 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281051 (= res!144157 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281052 () Bool)

(declare-fun res!144161 () Bool)

(assert (=> b!281052 (=> (not res!144161) (not e!178741))))

(declare-datatypes ((List!4463 0))(
  ( (Nil!4460) (Cons!4459 (h!5129 (_ BitVec 64)) (t!9553 List!4463)) )
))
(declare-fun arrayNoDuplicates!0 (array!13985 (_ BitVec 32) List!4463) Bool)

(assert (=> b!281052 (= res!144161 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4460))))

(declare-fun res!144162 () Bool)

(assert (=> start!27178 (=> (not res!144162) (not e!178741))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27178 (= res!144162 (validMask!0 mask!3868))))

(assert (=> start!27178 e!178741))

(declare-fun array_inv!4588 (array!13985) Bool)

(assert (=> start!27178 (array_inv!4588 a!3325)))

(assert (=> start!27178 true))

(declare-fun b!281053 () Bool)

(declare-fun res!144164 () Bool)

(assert (=> b!281053 (=> (not res!144164) (not e!178739))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281053 (= res!144164 (validKeyInArray!0 (select (arr!6634 a!3325) startIndex!26)))))

(declare-fun b!281054 () Bool)

(declare-fun res!144158 () Bool)

(assert (=> b!281054 (=> (not res!144158) (not e!178741))))

(assert (=> b!281054 (= res!144158 (and (= (size!6986 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6986 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6986 a!3325))))))

(declare-fun b!281055 () Bool)

(declare-fun res!144160 () Bool)

(assert (=> b!281055 (=> (not res!144160) (not e!178739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13985 (_ BitVec 32)) Bool)

(assert (=> b!281055 (= res!144160 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281056 () Bool)

(declare-fun res!144165 () Bool)

(assert (=> b!281056 (=> (not res!144165) (not e!178741))))

(assert (=> b!281056 (= res!144165 (validKeyInArray!0 k!2581))))

(declare-fun b!281057 () Bool)

(assert (=> b!281057 (= e!178739 (not true))))

(assert (=> b!281057 (arrayNoDuplicates!0 (array!13986 (store (arr!6634 a!3325) i!1267 k!2581) (size!6986 a!3325)) #b00000000000000000000000000000000 Nil!4460)))

(declare-datatypes ((Unit!8869 0))(
  ( (Unit!8870) )
))
(declare-fun lt!138995 () Unit!8869)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13985 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4463) Unit!8869)

(assert (=> b!281057 (= lt!138995 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4460))))

(declare-fun b!281058 () Bool)

(assert (=> b!281058 (= e!178741 e!178739)))

(declare-fun res!144163 () Bool)

(assert (=> b!281058 (=> (not res!144163) (not e!178739))))

(declare-datatypes ((SeekEntryResult!1803 0))(
  ( (MissingZero!1803 (index!9382 (_ BitVec 32))) (Found!1803 (index!9383 (_ BitVec 32))) (Intermediate!1803 (undefined!2615 Bool) (index!9384 (_ BitVec 32)) (x!27585 (_ BitVec 32))) (Undefined!1803) (MissingVacant!1803 (index!9385 (_ BitVec 32))) )
))
(declare-fun lt!138994 () SeekEntryResult!1803)

(assert (=> b!281058 (= res!144163 (or (= lt!138994 (MissingZero!1803 i!1267)) (= lt!138994 (MissingVacant!1803 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13985 (_ BitVec 32)) SeekEntryResult!1803)

(assert (=> b!281058 (= lt!138994 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27178 res!144162) b!281054))

(assert (= (and b!281054 res!144158) b!281056))

(assert (= (and b!281056 res!144165) b!281052))

(assert (= (and b!281052 res!144161) b!281051))

(assert (= (and b!281051 res!144157) b!281058))

(assert (= (and b!281058 res!144163) b!281055))

(assert (= (and b!281055 res!144160) b!281050))

(assert (= (and b!281050 res!144159) b!281053))

(assert (= (and b!281053 res!144164) b!281057))

(declare-fun m!295453 () Bool)

(assert (=> b!281053 m!295453))

(assert (=> b!281053 m!295453))

(declare-fun m!295455 () Bool)

(assert (=> b!281053 m!295455))

(declare-fun m!295457 () Bool)

(assert (=> b!281055 m!295457))

(declare-fun m!295459 () Bool)

(assert (=> b!281052 m!295459))

(declare-fun m!295461 () Bool)

(assert (=> b!281056 m!295461))

(declare-fun m!295463 () Bool)

(assert (=> b!281058 m!295463))

(declare-fun m!295465 () Bool)

(assert (=> start!27178 m!295465))

(declare-fun m!295467 () Bool)

(assert (=> start!27178 m!295467))

(declare-fun m!295469 () Bool)

(assert (=> b!281051 m!295469))

(declare-fun m!295471 () Bool)

(assert (=> b!281057 m!295471))

(declare-fun m!295473 () Bool)

(assert (=> b!281057 m!295473))

(declare-fun m!295475 () Bool)

(assert (=> b!281057 m!295475))

(push 1)

