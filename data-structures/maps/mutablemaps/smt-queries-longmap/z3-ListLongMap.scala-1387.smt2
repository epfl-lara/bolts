; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27186 () Bool)

(assert start!27186)

(declare-fun b!281158 () Bool)

(declare-fun res!144265 () Bool)

(declare-fun e!178777 () Bool)

(assert (=> b!281158 (=> (not res!144265) (not e!178777))))

(declare-datatypes ((array!13993 0))(
  ( (array!13994 (arr!6638 (Array (_ BitVec 32) (_ BitVec 64))) (size!6990 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13993)

(declare-datatypes ((List!4467 0))(
  ( (Nil!4464) (Cons!4463 (h!5133 (_ BitVec 64)) (t!9557 List!4467)) )
))
(declare-fun arrayNoDuplicates!0 (array!13993 (_ BitVec 32) List!4467) Bool)

(assert (=> b!281158 (= res!144265 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4464))))

(declare-fun b!281159 () Bool)

(declare-fun res!144267 () Bool)

(declare-fun e!178776 () Bool)

(assert (=> b!281159 (=> (not res!144267) (not e!178776))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281159 (= res!144267 (validKeyInArray!0 (select (arr!6638 a!3325) startIndex!26)))))

(declare-fun b!281160 () Bool)

(assert (=> b!281160 (= e!178776 (not true))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k0!2581 () (_ BitVec 64))

(assert (=> b!281160 (arrayNoDuplicates!0 (array!13994 (store (arr!6638 a!3325) i!1267 k0!2581) (size!6990 a!3325)) #b00000000000000000000000000000000 Nil!4464)))

(declare-datatypes ((Unit!8877 0))(
  ( (Unit!8878) )
))
(declare-fun lt!139019 () Unit!8877)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13993 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4467) Unit!8877)

(assert (=> b!281160 (= lt!139019 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4464))))

(declare-fun b!281161 () Bool)

(declare-fun res!144272 () Bool)

(assert (=> b!281161 (=> (not res!144272) (not e!178776))))

(assert (=> b!281161 (= res!144272 (not (= startIndex!26 i!1267)))))

(declare-fun b!281162 () Bool)

(declare-fun res!144268 () Bool)

(assert (=> b!281162 (=> (not res!144268) (not e!178777))))

(assert (=> b!281162 (= res!144268 (validKeyInArray!0 k0!2581))))

(declare-fun b!281163 () Bool)

(declare-fun res!144270 () Bool)

(assert (=> b!281163 (=> (not res!144270) (not e!178776))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13993 (_ BitVec 32)) Bool)

(assert (=> b!281163 (= res!144270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281164 () Bool)

(declare-fun res!144271 () Bool)

(assert (=> b!281164 (=> (not res!144271) (not e!178777))))

(assert (=> b!281164 (= res!144271 (and (= (size!6990 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6990 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6990 a!3325))))))

(declare-fun res!144273 () Bool)

(assert (=> start!27186 (=> (not res!144273) (not e!178777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27186 (= res!144273 (validMask!0 mask!3868))))

(assert (=> start!27186 e!178777))

(declare-fun array_inv!4592 (array!13993) Bool)

(assert (=> start!27186 (array_inv!4592 a!3325)))

(assert (=> start!27186 true))

(declare-fun b!281165 () Bool)

(declare-fun res!144269 () Bool)

(assert (=> b!281165 (=> (not res!144269) (not e!178777))))

(declare-fun arrayContainsKey!0 (array!13993 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281165 (= res!144269 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281166 () Bool)

(assert (=> b!281166 (= e!178777 e!178776)))

(declare-fun res!144266 () Bool)

(assert (=> b!281166 (=> (not res!144266) (not e!178776))))

(declare-datatypes ((SeekEntryResult!1807 0))(
  ( (MissingZero!1807 (index!9398 (_ BitVec 32))) (Found!1807 (index!9399 (_ BitVec 32))) (Intermediate!1807 (undefined!2619 Bool) (index!9400 (_ BitVec 32)) (x!27597 (_ BitVec 32))) (Undefined!1807) (MissingVacant!1807 (index!9401 (_ BitVec 32))) )
))
(declare-fun lt!139018 () SeekEntryResult!1807)

(assert (=> b!281166 (= res!144266 (or (= lt!139018 (MissingZero!1807 i!1267)) (= lt!139018 (MissingVacant!1807 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13993 (_ BitVec 32)) SeekEntryResult!1807)

(assert (=> b!281166 (= lt!139018 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!27186 res!144273) b!281164))

(assert (= (and b!281164 res!144271) b!281162))

(assert (= (and b!281162 res!144268) b!281158))

(assert (= (and b!281158 res!144265) b!281165))

(assert (= (and b!281165 res!144269) b!281166))

(assert (= (and b!281166 res!144266) b!281163))

(assert (= (and b!281163 res!144270) b!281161))

(assert (= (and b!281161 res!144272) b!281159))

(assert (= (and b!281159 res!144267) b!281160))

(declare-fun m!295549 () Bool)

(assert (=> b!281166 m!295549))

(declare-fun m!295551 () Bool)

(assert (=> b!281160 m!295551))

(declare-fun m!295553 () Bool)

(assert (=> b!281160 m!295553))

(declare-fun m!295555 () Bool)

(assert (=> b!281160 m!295555))

(declare-fun m!295557 () Bool)

(assert (=> b!281162 m!295557))

(declare-fun m!295559 () Bool)

(assert (=> b!281158 m!295559))

(declare-fun m!295561 () Bool)

(assert (=> b!281165 m!295561))

(declare-fun m!295563 () Bool)

(assert (=> b!281159 m!295563))

(assert (=> b!281159 m!295563))

(declare-fun m!295565 () Bool)

(assert (=> b!281159 m!295565))

(declare-fun m!295567 () Bool)

(assert (=> start!27186 m!295567))

(declare-fun m!295569 () Bool)

(assert (=> start!27186 m!295569))

(declare-fun m!295571 () Bool)

(assert (=> b!281163 m!295571))

(check-sat (not b!281166) (not b!281165) (not b!281162) (not b!281158) (not start!27186) (not b!281163) (not b!281160) (not b!281159))
(check-sat)
