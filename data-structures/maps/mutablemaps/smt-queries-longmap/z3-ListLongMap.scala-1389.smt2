; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27198 () Bool)

(assert start!27198)

(declare-fun res!144432 () Bool)

(declare-fun e!178831 () Bool)

(assert (=> start!27198 (=> (not res!144432) (not e!178831))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27198 (= res!144432 (validMask!0 mask!3868))))

(assert (=> start!27198 e!178831))

(declare-datatypes ((array!14005 0))(
  ( (array!14006 (arr!6644 (Array (_ BitVec 32) (_ BitVec 64))) (size!6996 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14005)

(declare-fun array_inv!4598 (array!14005) Bool)

(assert (=> start!27198 (array_inv!4598 a!3325)))

(assert (=> start!27198 true))

(declare-fun b!281320 () Bool)

(declare-fun res!144434 () Bool)

(assert (=> b!281320 (=> (not res!144434) (not e!178831))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281320 (= res!144434 (and (= (size!6996 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6996 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6996 a!3325))))))

(declare-fun b!281321 () Bool)

(declare-fun res!144435 () Bool)

(declare-fun e!178829 () Bool)

(assert (=> b!281321 (=> (not res!144435) (not e!178829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14005 (_ BitVec 32)) Bool)

(assert (=> b!281321 (= res!144435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281322 () Bool)

(declare-fun res!144429 () Bool)

(assert (=> b!281322 (=> (not res!144429) (not e!178831))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281322 (= res!144429 (validKeyInArray!0 k0!2581))))

(declare-fun b!281323 () Bool)

(declare-fun res!144431 () Bool)

(assert (=> b!281323 (=> (not res!144431) (not e!178829))))

(assert (=> b!281323 (= res!144431 (validKeyInArray!0 (select (arr!6644 a!3325) startIndex!26)))))

(declare-fun b!281324 () Bool)

(declare-fun res!144430 () Bool)

(assert (=> b!281324 (=> (not res!144430) (not e!178831))))

(declare-datatypes ((List!4473 0))(
  ( (Nil!4470) (Cons!4469 (h!5139 (_ BitVec 64)) (t!9563 List!4473)) )
))
(declare-fun arrayNoDuplicates!0 (array!14005 (_ BitVec 32) List!4473) Bool)

(assert (=> b!281324 (= res!144430 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4470))))

(declare-fun b!281325 () Bool)

(declare-fun res!144427 () Bool)

(assert (=> b!281325 (=> (not res!144427) (not e!178831))))

(declare-fun arrayContainsKey!0 (array!14005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281325 (= res!144427 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281326 () Bool)

(assert (=> b!281326 (= e!178829 (not true))))

(assert (=> b!281326 (arrayNoDuplicates!0 (array!14006 (store (arr!6644 a!3325) i!1267 k0!2581) (size!6996 a!3325)) #b00000000000000000000000000000000 Nil!4470)))

(declare-datatypes ((Unit!8889 0))(
  ( (Unit!8890) )
))
(declare-fun lt!139055 () Unit!8889)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14005 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4473) Unit!8889)

(assert (=> b!281326 (= lt!139055 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4470))))

(declare-fun b!281327 () Bool)

(assert (=> b!281327 (= e!178831 e!178829)))

(declare-fun res!144433 () Bool)

(assert (=> b!281327 (=> (not res!144433) (not e!178829))))

(declare-datatypes ((SeekEntryResult!1813 0))(
  ( (MissingZero!1813 (index!9422 (_ BitVec 32))) (Found!1813 (index!9423 (_ BitVec 32))) (Intermediate!1813 (undefined!2625 Bool) (index!9424 (_ BitVec 32)) (x!27619 (_ BitVec 32))) (Undefined!1813) (MissingVacant!1813 (index!9425 (_ BitVec 32))) )
))
(declare-fun lt!139054 () SeekEntryResult!1813)

(assert (=> b!281327 (= res!144433 (or (= lt!139054 (MissingZero!1813 i!1267)) (= lt!139054 (MissingVacant!1813 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14005 (_ BitVec 32)) SeekEntryResult!1813)

(assert (=> b!281327 (= lt!139054 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281328 () Bool)

(declare-fun res!144428 () Bool)

(assert (=> b!281328 (=> (not res!144428) (not e!178829))))

(assert (=> b!281328 (= res!144428 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27198 res!144432) b!281320))

(assert (= (and b!281320 res!144434) b!281322))

(assert (= (and b!281322 res!144429) b!281324))

(assert (= (and b!281324 res!144430) b!281325))

(assert (= (and b!281325 res!144427) b!281327))

(assert (= (and b!281327 res!144433) b!281321))

(assert (= (and b!281321 res!144435) b!281328))

(assert (= (and b!281328 res!144428) b!281323))

(assert (= (and b!281323 res!144431) b!281326))

(declare-fun m!295693 () Bool)

(assert (=> b!281327 m!295693))

(declare-fun m!295695 () Bool)

(assert (=> b!281324 m!295695))

(declare-fun m!295697 () Bool)

(assert (=> b!281322 m!295697))

(declare-fun m!295699 () Bool)

(assert (=> b!281323 m!295699))

(assert (=> b!281323 m!295699))

(declare-fun m!295701 () Bool)

(assert (=> b!281323 m!295701))

(declare-fun m!295703 () Bool)

(assert (=> b!281326 m!295703))

(declare-fun m!295705 () Bool)

(assert (=> b!281326 m!295705))

(declare-fun m!295707 () Bool)

(assert (=> b!281326 m!295707))

(declare-fun m!295709 () Bool)

(assert (=> b!281325 m!295709))

(declare-fun m!295711 () Bool)

(assert (=> start!27198 m!295711))

(declare-fun m!295713 () Bool)

(assert (=> start!27198 m!295713))

(declare-fun m!295715 () Bool)

(assert (=> b!281321 m!295715))

(check-sat (not b!281321) (not start!27198) (not b!281323) (not b!281324) (not b!281327) (not b!281326) (not b!281322) (not b!281325))
(check-sat)
