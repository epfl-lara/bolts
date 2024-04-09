; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27202 () Bool)

(assert start!27202)

(declare-fun b!281374 () Bool)

(declare-fun res!144483 () Bool)

(declare-fun e!178847 () Bool)

(assert (=> b!281374 (=> (not res!144483) (not e!178847))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281374 (= res!144483 (validKeyInArray!0 k!2581))))

(declare-fun res!144489 () Bool)

(assert (=> start!27202 (=> (not res!144489) (not e!178847))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27202 (= res!144489 (validMask!0 mask!3868))))

(assert (=> start!27202 e!178847))

(declare-datatypes ((array!14009 0))(
  ( (array!14010 (arr!6646 (Array (_ BitVec 32) (_ BitVec 64))) (size!6998 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14009)

(declare-fun array_inv!4600 (array!14009) Bool)

(assert (=> start!27202 (array_inv!4600 a!3325)))

(assert (=> start!27202 true))

(declare-fun b!281375 () Bool)

(declare-fun res!144485 () Bool)

(assert (=> b!281375 (=> (not res!144485) (not e!178847))))

(declare-datatypes ((List!4475 0))(
  ( (Nil!4472) (Cons!4471 (h!5141 (_ BitVec 64)) (t!9565 List!4475)) )
))
(declare-fun arrayNoDuplicates!0 (array!14009 (_ BitVec 32) List!4475) Bool)

(assert (=> b!281375 (= res!144485 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4472))))

(declare-fun b!281376 () Bool)

(declare-fun e!178848 () Bool)

(assert (=> b!281376 (= e!178847 e!178848)))

(declare-fun res!144481 () Bool)

(assert (=> b!281376 (=> (not res!144481) (not e!178848))))

(declare-datatypes ((SeekEntryResult!1815 0))(
  ( (MissingZero!1815 (index!9430 (_ BitVec 32))) (Found!1815 (index!9431 (_ BitVec 32))) (Intermediate!1815 (undefined!2627 Bool) (index!9432 (_ BitVec 32)) (x!27629 (_ BitVec 32))) (Undefined!1815) (MissingVacant!1815 (index!9433 (_ BitVec 32))) )
))
(declare-fun lt!139066 () SeekEntryResult!1815)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281376 (= res!144481 (or (= lt!139066 (MissingZero!1815 i!1267)) (= lt!139066 (MissingVacant!1815 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14009 (_ BitVec 32)) SeekEntryResult!1815)

(assert (=> b!281376 (= lt!139066 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281377 () Bool)

(declare-fun res!144486 () Bool)

(assert (=> b!281377 (=> (not res!144486) (not e!178848))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281377 (= res!144486 (validKeyInArray!0 (select (arr!6646 a!3325) startIndex!26)))))

(declare-fun b!281378 () Bool)

(declare-fun res!144482 () Bool)

(assert (=> b!281378 (=> (not res!144482) (not e!178847))))

(assert (=> b!281378 (= res!144482 (and (= (size!6998 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6998 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6998 a!3325))))))

(declare-fun b!281379 () Bool)

(declare-fun res!144487 () Bool)

(assert (=> b!281379 (=> (not res!144487) (not e!178847))))

(declare-fun arrayContainsKey!0 (array!14009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281379 (= res!144487 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281380 () Bool)

(declare-fun res!144484 () Bool)

(assert (=> b!281380 (=> (not res!144484) (not e!178848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14009 (_ BitVec 32)) Bool)

(assert (=> b!281380 (= res!144484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281381 () Bool)

(assert (=> b!281381 (= e!178848 (not true))))

(assert (=> b!281381 (arrayNoDuplicates!0 (array!14010 (store (arr!6646 a!3325) i!1267 k!2581) (size!6998 a!3325)) #b00000000000000000000000000000000 Nil!4472)))

(declare-datatypes ((Unit!8893 0))(
  ( (Unit!8894) )
))
(declare-fun lt!139067 () Unit!8893)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14009 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4475) Unit!8893)

(assert (=> b!281381 (= lt!139067 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4472))))

(declare-fun b!281382 () Bool)

(declare-fun res!144488 () Bool)

(assert (=> b!281382 (=> (not res!144488) (not e!178848))))

(assert (=> b!281382 (= res!144488 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27202 res!144489) b!281378))

(assert (= (and b!281378 res!144482) b!281374))

(assert (= (and b!281374 res!144483) b!281375))

(assert (= (and b!281375 res!144485) b!281379))

(assert (= (and b!281379 res!144487) b!281376))

(assert (= (and b!281376 res!144481) b!281380))

(assert (= (and b!281380 res!144484) b!281382))

(assert (= (and b!281382 res!144488) b!281377))

(assert (= (and b!281377 res!144486) b!281381))

(declare-fun m!295741 () Bool)

(assert (=> b!281376 m!295741))

(declare-fun m!295743 () Bool)

(assert (=> b!281374 m!295743))

(declare-fun m!295745 () Bool)

(assert (=> start!27202 m!295745))

(declare-fun m!295747 () Bool)

(assert (=> start!27202 m!295747))

(declare-fun m!295749 () Bool)

(assert (=> b!281375 m!295749))

(declare-fun m!295751 () Bool)

(assert (=> b!281379 m!295751))

(declare-fun m!295753 () Bool)

(assert (=> b!281380 m!295753))

(declare-fun m!295755 () Bool)

(assert (=> b!281381 m!295755))

(declare-fun m!295757 () Bool)

(assert (=> b!281381 m!295757))

(declare-fun m!295759 () Bool)

(assert (=> b!281381 m!295759))

(declare-fun m!295761 () Bool)

(assert (=> b!281377 m!295761))

(assert (=> b!281377 m!295761))

(declare-fun m!295763 () Bool)

(assert (=> b!281377 m!295763))

(push 1)

