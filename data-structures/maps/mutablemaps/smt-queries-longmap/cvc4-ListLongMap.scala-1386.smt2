; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27182 () Bool)

(assert start!27182)

(declare-fun b!281104 () Bool)

(declare-fun e!178759 () Bool)

(declare-fun e!178758 () Bool)

(assert (=> b!281104 (= e!178759 e!178758)))

(declare-fun res!144212 () Bool)

(assert (=> b!281104 (=> (not res!144212) (not e!178758))))

(declare-datatypes ((SeekEntryResult!1805 0))(
  ( (MissingZero!1805 (index!9390 (_ BitVec 32))) (Found!1805 (index!9391 (_ BitVec 32))) (Intermediate!1805 (undefined!2617 Bool) (index!9392 (_ BitVec 32)) (x!27587 (_ BitVec 32))) (Undefined!1805) (MissingVacant!1805 (index!9393 (_ BitVec 32))) )
))
(declare-fun lt!139007 () SeekEntryResult!1805)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281104 (= res!144212 (or (= lt!139007 (MissingZero!1805 i!1267)) (= lt!139007 (MissingVacant!1805 i!1267))))))

(declare-datatypes ((array!13989 0))(
  ( (array!13990 (arr!6636 (Array (_ BitVec 32) (_ BitVec 64))) (size!6988 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13989)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13989 (_ BitVec 32)) SeekEntryResult!1805)

(assert (=> b!281104 (= lt!139007 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!144215 () Bool)

(assert (=> start!27182 (=> (not res!144215) (not e!178759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27182 (= res!144215 (validMask!0 mask!3868))))

(assert (=> start!27182 e!178759))

(declare-fun array_inv!4590 (array!13989) Bool)

(assert (=> start!27182 (array_inv!4590 a!3325)))

(assert (=> start!27182 true))

(declare-fun b!281105 () Bool)

(declare-fun res!144219 () Bool)

(assert (=> b!281105 (=> (not res!144219) (not e!178759))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281105 (= res!144219 (validKeyInArray!0 k!2581))))

(declare-fun b!281106 () Bool)

(declare-fun res!144218 () Bool)

(assert (=> b!281106 (=> (not res!144218) (not e!178758))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281106 (= res!144218 (validKeyInArray!0 (select (arr!6636 a!3325) startIndex!26)))))

(declare-fun b!281107 () Bool)

(declare-fun res!144217 () Bool)

(assert (=> b!281107 (=> (not res!144217) (not e!178759))))

(assert (=> b!281107 (= res!144217 (and (= (size!6988 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6988 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6988 a!3325))))))

(declare-fun b!281108 () Bool)

(declare-fun res!144211 () Bool)

(assert (=> b!281108 (=> (not res!144211) (not e!178758))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13989 (_ BitVec 32)) Bool)

(assert (=> b!281108 (= res!144211 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281109 () Bool)

(declare-fun res!144213 () Bool)

(assert (=> b!281109 (=> (not res!144213) (not e!178758))))

(assert (=> b!281109 (= res!144213 (not (= startIndex!26 i!1267)))))

(declare-fun b!281110 () Bool)

(declare-fun res!144216 () Bool)

(assert (=> b!281110 (=> (not res!144216) (not e!178759))))

(declare-datatypes ((List!4465 0))(
  ( (Nil!4462) (Cons!4461 (h!5131 (_ BitVec 64)) (t!9555 List!4465)) )
))
(declare-fun arrayNoDuplicates!0 (array!13989 (_ BitVec 32) List!4465) Bool)

(assert (=> b!281110 (= res!144216 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4462))))

(declare-fun b!281111 () Bool)

(assert (=> b!281111 (= e!178758 (not true))))

(assert (=> b!281111 (arrayNoDuplicates!0 (array!13990 (store (arr!6636 a!3325) i!1267 k!2581) (size!6988 a!3325)) #b00000000000000000000000000000000 Nil!4462)))

(declare-datatypes ((Unit!8873 0))(
  ( (Unit!8874) )
))
(declare-fun lt!139006 () Unit!8873)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13989 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4465) Unit!8873)

(assert (=> b!281111 (= lt!139006 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4462))))

(declare-fun b!281112 () Bool)

(declare-fun res!144214 () Bool)

(assert (=> b!281112 (=> (not res!144214) (not e!178759))))

(declare-fun arrayContainsKey!0 (array!13989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281112 (= res!144214 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27182 res!144215) b!281107))

(assert (= (and b!281107 res!144217) b!281105))

(assert (= (and b!281105 res!144219) b!281110))

(assert (= (and b!281110 res!144216) b!281112))

(assert (= (and b!281112 res!144214) b!281104))

(assert (= (and b!281104 res!144212) b!281108))

(assert (= (and b!281108 res!144211) b!281109))

(assert (= (and b!281109 res!144213) b!281106))

(assert (= (and b!281106 res!144218) b!281111))

(declare-fun m!295501 () Bool)

(assert (=> b!281106 m!295501))

(assert (=> b!281106 m!295501))

(declare-fun m!295503 () Bool)

(assert (=> b!281106 m!295503))

(declare-fun m!295505 () Bool)

(assert (=> b!281110 m!295505))

(declare-fun m!295507 () Bool)

(assert (=> b!281105 m!295507))

(declare-fun m!295509 () Bool)

(assert (=> b!281112 m!295509))

(declare-fun m!295511 () Bool)

(assert (=> start!27182 m!295511))

(declare-fun m!295513 () Bool)

(assert (=> start!27182 m!295513))

(declare-fun m!295515 () Bool)

(assert (=> b!281108 m!295515))

(declare-fun m!295517 () Bool)

(assert (=> b!281111 m!295517))

(declare-fun m!295519 () Bool)

(assert (=> b!281111 m!295519))

(declare-fun m!295521 () Bool)

(assert (=> b!281111 m!295521))

(declare-fun m!295523 () Bool)

(assert (=> b!281104 m!295523))

(push 1)

(assert (not b!281105))

(assert (not b!281108))

