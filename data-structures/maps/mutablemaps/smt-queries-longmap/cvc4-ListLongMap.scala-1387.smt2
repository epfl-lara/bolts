; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27188 () Bool)

(assert start!27188)

(declare-fun b!281186 () Bool)

(declare-fun res!144298 () Bool)

(declare-fun e!178785 () Bool)

(assert (=> b!281186 (=> (not res!144298) (not e!178785))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281186 (= res!144298 (validKeyInArray!0 k!2581))))

(declare-fun b!281187 () Bool)

(declare-fun res!144300 () Bool)

(declare-fun e!178786 () Bool)

(assert (=> b!281187 (=> (not res!144300) (not e!178786))))

(declare-datatypes ((array!13995 0))(
  ( (array!13996 (arr!6639 (Array (_ BitVec 32) (_ BitVec 64))) (size!6991 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13995)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281187 (= res!144300 (validKeyInArray!0 (select (arr!6639 a!3325) startIndex!26)))))

(declare-fun b!281188 () Bool)

(assert (=> b!281188 (= e!178785 e!178786)))

(declare-fun res!144297 () Bool)

(assert (=> b!281188 (=> (not res!144297) (not e!178786))))

(declare-datatypes ((SeekEntryResult!1808 0))(
  ( (MissingZero!1808 (index!9402 (_ BitVec 32))) (Found!1808 (index!9403 (_ BitVec 32))) (Intermediate!1808 (undefined!2620 Bool) (index!9404 (_ BitVec 32)) (x!27598 (_ BitVec 32))) (Undefined!1808) (MissingVacant!1808 (index!9405 (_ BitVec 32))) )
))
(declare-fun lt!139025 () SeekEntryResult!1808)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281188 (= res!144297 (or (= lt!139025 (MissingZero!1808 i!1267)) (= lt!139025 (MissingVacant!1808 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13995 (_ BitVec 32)) SeekEntryResult!1808)

(assert (=> b!281188 (= lt!139025 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281189 () Bool)

(declare-fun res!144293 () Bool)

(assert (=> b!281189 (=> (not res!144293) (not e!178785))))

(declare-fun arrayContainsKey!0 (array!13995 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281189 (= res!144293 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281185 () Bool)

(declare-fun res!144292 () Bool)

(assert (=> b!281185 (=> (not res!144292) (not e!178785))))

(declare-datatypes ((List!4468 0))(
  ( (Nil!4465) (Cons!4464 (h!5134 (_ BitVec 64)) (t!9558 List!4468)) )
))
(declare-fun arrayNoDuplicates!0 (array!13995 (_ BitVec 32) List!4468) Bool)

(assert (=> b!281185 (= res!144292 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4465))))

(declare-fun res!144295 () Bool)

(assert (=> start!27188 (=> (not res!144295) (not e!178785))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27188 (= res!144295 (validMask!0 mask!3868))))

(assert (=> start!27188 e!178785))

(declare-fun array_inv!4593 (array!13995) Bool)

(assert (=> start!27188 (array_inv!4593 a!3325)))

(assert (=> start!27188 true))

(declare-fun b!281190 () Bool)

(declare-fun res!144296 () Bool)

(assert (=> b!281190 (=> (not res!144296) (not e!178785))))

(assert (=> b!281190 (= res!144296 (and (= (size!6991 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6991 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6991 a!3325))))))

(declare-fun b!281191 () Bool)

(declare-fun res!144299 () Bool)

(assert (=> b!281191 (=> (not res!144299) (not e!178786))))

(assert (=> b!281191 (= res!144299 (not (= startIndex!26 i!1267)))))

(declare-fun b!281192 () Bool)

(assert (=> b!281192 (= e!178786 (not true))))

(assert (=> b!281192 (arrayNoDuplicates!0 (array!13996 (store (arr!6639 a!3325) i!1267 k!2581) (size!6991 a!3325)) #b00000000000000000000000000000000 Nil!4465)))

(declare-datatypes ((Unit!8879 0))(
  ( (Unit!8880) )
))
(declare-fun lt!139024 () Unit!8879)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13995 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4468) Unit!8879)

(assert (=> b!281192 (= lt!139024 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4465))))

(declare-fun b!281193 () Bool)

(declare-fun res!144294 () Bool)

(assert (=> b!281193 (=> (not res!144294) (not e!178786))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13995 (_ BitVec 32)) Bool)

(assert (=> b!281193 (= res!144294 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27188 res!144295) b!281190))

(assert (= (and b!281190 res!144296) b!281186))

(assert (= (and b!281186 res!144298) b!281185))

(assert (= (and b!281185 res!144292) b!281189))

(assert (= (and b!281189 res!144293) b!281188))

(assert (= (and b!281188 res!144297) b!281193))

(assert (= (and b!281193 res!144294) b!281191))

(assert (= (and b!281191 res!144299) b!281187))

(assert (= (and b!281187 res!144300) b!281192))

(declare-fun m!295573 () Bool)

(assert (=> b!281189 m!295573))

(declare-fun m!295575 () Bool)

(assert (=> start!27188 m!295575))

(declare-fun m!295577 () Bool)

(assert (=> start!27188 m!295577))

(declare-fun m!295579 () Bool)

(assert (=> b!281186 m!295579))

(declare-fun m!295581 () Bool)

(assert (=> b!281188 m!295581))

(declare-fun m!295583 () Bool)

(assert (=> b!281185 m!295583))

(declare-fun m!295585 () Bool)

(assert (=> b!281187 m!295585))

(assert (=> b!281187 m!295585))

(declare-fun m!295587 () Bool)

(assert (=> b!281187 m!295587))

(declare-fun m!295589 () Bool)

(assert (=> b!281193 m!295589))

(declare-fun m!295591 () Bool)

(assert (=> b!281192 m!295591))

(declare-fun m!295593 () Bool)

(assert (=> b!281192 m!295593))

(declare-fun m!295595 () Bool)

(assert (=> b!281192 m!295595))

(push 1)

(assert (not b!281186))

(assert (not b!281193))

(assert (not b!281188))

(assert (not b!281187))

(assert (not b!281185))

(assert (not start!27188))

(assert (not b!281192))

(assert (not b!281189))

(check-sat)

