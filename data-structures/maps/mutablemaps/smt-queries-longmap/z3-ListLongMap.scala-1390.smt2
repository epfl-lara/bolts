; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27204 () Bool)

(assert start!27204)

(declare-fun b!281401 () Bool)

(declare-fun e!178857 () Bool)

(declare-fun e!178856 () Bool)

(assert (=> b!281401 (= e!178857 e!178856)))

(declare-fun res!144510 () Bool)

(assert (=> b!281401 (=> (not res!144510) (not e!178856))))

(declare-datatypes ((SeekEntryResult!1816 0))(
  ( (MissingZero!1816 (index!9434 (_ BitVec 32))) (Found!1816 (index!9435 (_ BitVec 32))) (Intermediate!1816 (undefined!2628 Bool) (index!9436 (_ BitVec 32)) (x!27630 (_ BitVec 32))) (Undefined!1816) (MissingVacant!1816 (index!9437 (_ BitVec 32))) )
))
(declare-fun lt!139072 () SeekEntryResult!1816)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281401 (= res!144510 (or (= lt!139072 (MissingZero!1816 i!1267)) (= lt!139072 (MissingVacant!1816 i!1267))))))

(declare-datatypes ((array!14011 0))(
  ( (array!14012 (arr!6647 (Array (_ BitVec 32) (_ BitVec 64))) (size!6999 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14011)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14011 (_ BitVec 32)) SeekEntryResult!1816)

(assert (=> b!281401 (= lt!139072 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281402 () Bool)

(declare-fun res!144513 () Bool)

(assert (=> b!281402 (=> (not res!144513) (not e!178856))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281402 (= res!144513 (validKeyInArray!0 (select (arr!6647 a!3325) startIndex!26)))))

(declare-fun res!144512 () Bool)

(assert (=> start!27204 (=> (not res!144512) (not e!178857))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27204 (= res!144512 (validMask!0 mask!3868))))

(assert (=> start!27204 e!178857))

(declare-fun array_inv!4601 (array!14011) Bool)

(assert (=> start!27204 (array_inv!4601 a!3325)))

(assert (=> start!27204 true))

(declare-fun b!281403 () Bool)

(declare-fun res!144516 () Bool)

(assert (=> b!281403 (=> (not res!144516) (not e!178857))))

(assert (=> b!281403 (= res!144516 (validKeyInArray!0 k0!2581))))

(declare-fun b!281404 () Bool)

(declare-fun res!144515 () Bool)

(assert (=> b!281404 (=> (not res!144515) (not e!178856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14011 (_ BitVec 32)) Bool)

(assert (=> b!281404 (= res!144515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281405 () Bool)

(declare-fun res!144508 () Bool)

(assert (=> b!281405 (=> (not res!144508) (not e!178857))))

(declare-fun arrayContainsKey!0 (array!14011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281405 (= res!144508 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281406 () Bool)

(declare-fun res!144509 () Bool)

(assert (=> b!281406 (=> (not res!144509) (not e!178856))))

(assert (=> b!281406 (= res!144509 (not (= startIndex!26 i!1267)))))

(declare-fun b!281407 () Bool)

(declare-fun res!144514 () Bool)

(assert (=> b!281407 (=> (not res!144514) (not e!178857))))

(assert (=> b!281407 (= res!144514 (and (= (size!6999 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6999 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6999 a!3325))))))

(declare-fun b!281408 () Bool)

(declare-fun res!144511 () Bool)

(assert (=> b!281408 (=> (not res!144511) (not e!178857))))

(declare-datatypes ((List!4476 0))(
  ( (Nil!4473) (Cons!4472 (h!5142 (_ BitVec 64)) (t!9566 List!4476)) )
))
(declare-fun arrayNoDuplicates!0 (array!14011 (_ BitVec 32) List!4476) Bool)

(assert (=> b!281408 (= res!144511 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4473))))

(declare-fun b!281409 () Bool)

(assert (=> b!281409 (= e!178856 (not true))))

(assert (=> b!281409 (arrayNoDuplicates!0 (array!14012 (store (arr!6647 a!3325) i!1267 k0!2581) (size!6999 a!3325)) #b00000000000000000000000000000000 Nil!4473)))

(declare-datatypes ((Unit!8895 0))(
  ( (Unit!8896) )
))
(declare-fun lt!139073 () Unit!8895)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14011 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4476) Unit!8895)

(assert (=> b!281409 (= lt!139073 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4473))))

(assert (= (and start!27204 res!144512) b!281407))

(assert (= (and b!281407 res!144514) b!281403))

(assert (= (and b!281403 res!144516) b!281408))

(assert (= (and b!281408 res!144511) b!281405))

(assert (= (and b!281405 res!144508) b!281401))

(assert (= (and b!281401 res!144510) b!281404))

(assert (= (and b!281404 res!144515) b!281406))

(assert (= (and b!281406 res!144509) b!281402))

(assert (= (and b!281402 res!144513) b!281409))

(declare-fun m!295765 () Bool)

(assert (=> b!281403 m!295765))

(declare-fun m!295767 () Bool)

(assert (=> b!281401 m!295767))

(declare-fun m!295769 () Bool)

(assert (=> start!27204 m!295769))

(declare-fun m!295771 () Bool)

(assert (=> start!27204 m!295771))

(declare-fun m!295773 () Bool)

(assert (=> b!281409 m!295773))

(declare-fun m!295775 () Bool)

(assert (=> b!281409 m!295775))

(declare-fun m!295777 () Bool)

(assert (=> b!281409 m!295777))

(declare-fun m!295779 () Bool)

(assert (=> b!281408 m!295779))

(declare-fun m!295781 () Bool)

(assert (=> b!281405 m!295781))

(declare-fun m!295783 () Bool)

(assert (=> b!281402 m!295783))

(assert (=> b!281402 m!295783))

(declare-fun m!295785 () Bool)

(assert (=> b!281402 m!295785))

(declare-fun m!295787 () Bool)

(assert (=> b!281404 m!295787))

(check-sat (not b!281404) (not b!281405) (not b!281409) (not b!281403) (not start!27204) (not b!281408) (not b!281402) (not b!281401))
(check-sat)
