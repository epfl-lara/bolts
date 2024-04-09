; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27264 () Bool)

(assert start!27264)

(declare-fun b!282211 () Bool)

(declare-fun res!145323 () Bool)

(declare-fun e!179214 () Bool)

(assert (=> b!282211 (=> (not res!145323) (not e!179214))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282211 (= res!145323 (validKeyInArray!0 k0!2581))))

(declare-fun b!282212 () Bool)

(declare-fun e!179213 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14071 0))(
  ( (array!14072 (arr!6677 (Array (_ BitVec 32) (_ BitVec 64))) (size!7029 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14071)

(assert (=> b!282212 (= e!179213 (not (or (bvsge startIndex!26 (bvsub (size!7029 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14071 (_ BitVec 32)) Bool)

(assert (=> b!282212 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8955 0))(
  ( (Unit!8956) )
))
(declare-fun lt!139467 () Unit!8955)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14071 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8955)

(assert (=> b!282212 (= lt!139467 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!139465 () array!14071)

(declare-datatypes ((SeekEntryResult!1846 0))(
  ( (MissingZero!1846 (index!9554 (_ BitVec 32))) (Found!1846 (index!9555 (_ BitVec 32))) (Intermediate!1846 (undefined!2658 Bool) (index!9556 (_ BitVec 32)) (x!27740 (_ BitVec 32))) (Undefined!1846) (MissingVacant!1846 (index!9557 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14071 (_ BitVec 32)) SeekEntryResult!1846)

(assert (=> b!282212 (= (seekEntryOrOpen!0 (select (arr!6677 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6677 a!3325) i!1267 k0!2581) startIndex!26) lt!139465 mask!3868))))

(declare-fun lt!139466 () Unit!8955)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14071 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8955)

(assert (=> b!282212 (= lt!139466 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4506 0))(
  ( (Nil!4503) (Cons!4502 (h!5172 (_ BitVec 64)) (t!9596 List!4506)) )
))
(declare-fun arrayNoDuplicates!0 (array!14071 (_ BitVec 32) List!4506) Bool)

(assert (=> b!282212 (arrayNoDuplicates!0 lt!139465 #b00000000000000000000000000000000 Nil!4503)))

(declare-fun lt!139469 () Unit!8955)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14071 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4506) Unit!8955)

(assert (=> b!282212 (= lt!139469 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4503))))

(declare-fun res!145319 () Bool)

(assert (=> start!27264 (=> (not res!145319) (not e!179214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27264 (= res!145319 (validMask!0 mask!3868))))

(assert (=> start!27264 e!179214))

(declare-fun array_inv!4631 (array!14071) Bool)

(assert (=> start!27264 (array_inv!4631 a!3325)))

(assert (=> start!27264 true))

(declare-fun b!282213 () Bool)

(declare-fun res!145321 () Bool)

(assert (=> b!282213 (=> (not res!145321) (not e!179214))))

(assert (=> b!282213 (= res!145321 (and (= (size!7029 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7029 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7029 a!3325))))))

(declare-fun b!282214 () Bool)

(declare-fun e!179215 () Bool)

(assert (=> b!282214 (= e!179215 e!179213)))

(declare-fun res!145320 () Bool)

(assert (=> b!282214 (=> (not res!145320) (not e!179213))))

(assert (=> b!282214 (= res!145320 (not (= startIndex!26 i!1267)))))

(assert (=> b!282214 (= lt!139465 (array!14072 (store (arr!6677 a!3325) i!1267 k0!2581) (size!7029 a!3325)))))

(declare-fun b!282215 () Bool)

(declare-fun res!145322 () Bool)

(assert (=> b!282215 (=> (not res!145322) (not e!179214))))

(declare-fun arrayContainsKey!0 (array!14071 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282215 (= res!145322 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282216 () Bool)

(assert (=> b!282216 (= e!179214 e!179215)))

(declare-fun res!145325 () Bool)

(assert (=> b!282216 (=> (not res!145325) (not e!179215))))

(declare-fun lt!139468 () SeekEntryResult!1846)

(assert (=> b!282216 (= res!145325 (or (= lt!139468 (MissingZero!1846 i!1267)) (= lt!139468 (MissingVacant!1846 i!1267))))))

(assert (=> b!282216 (= lt!139468 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!282217 () Bool)

(declare-fun res!145326 () Bool)

(assert (=> b!282217 (=> (not res!145326) (not e!179215))))

(assert (=> b!282217 (= res!145326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282218 () Bool)

(declare-fun res!145318 () Bool)

(assert (=> b!282218 (=> (not res!145318) (not e!179214))))

(assert (=> b!282218 (= res!145318 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4503))))

(declare-fun b!282219 () Bool)

(declare-fun res!145324 () Bool)

(assert (=> b!282219 (=> (not res!145324) (not e!179213))))

(assert (=> b!282219 (= res!145324 (validKeyInArray!0 (select (arr!6677 a!3325) startIndex!26)))))

(assert (= (and start!27264 res!145319) b!282213))

(assert (= (and b!282213 res!145321) b!282211))

(assert (= (and b!282211 res!145323) b!282218))

(assert (= (and b!282218 res!145318) b!282215))

(assert (= (and b!282215 res!145322) b!282216))

(assert (= (and b!282216 res!145325) b!282217))

(assert (= (and b!282217 res!145326) b!282214))

(assert (= (and b!282214 res!145320) b!282219))

(assert (= (and b!282219 res!145324) b!282212))

(declare-fun m!296761 () Bool)

(assert (=> b!282219 m!296761))

(assert (=> b!282219 m!296761))

(declare-fun m!296763 () Bool)

(assert (=> b!282219 m!296763))

(declare-fun m!296765 () Bool)

(assert (=> b!282215 m!296765))

(declare-fun m!296767 () Bool)

(assert (=> b!282212 m!296767))

(declare-fun m!296769 () Bool)

(assert (=> b!282212 m!296769))

(declare-fun m!296771 () Bool)

(assert (=> b!282212 m!296771))

(declare-fun m!296773 () Bool)

(assert (=> b!282212 m!296773))

(assert (=> b!282212 m!296771))

(declare-fun m!296775 () Bool)

(assert (=> b!282212 m!296775))

(declare-fun m!296777 () Bool)

(assert (=> b!282212 m!296777))

(assert (=> b!282212 m!296761))

(declare-fun m!296779 () Bool)

(assert (=> b!282212 m!296779))

(declare-fun m!296781 () Bool)

(assert (=> b!282212 m!296781))

(assert (=> b!282212 m!296761))

(declare-fun m!296783 () Bool)

(assert (=> b!282212 m!296783))

(declare-fun m!296785 () Bool)

(assert (=> b!282216 m!296785))

(declare-fun m!296787 () Bool)

(assert (=> b!282218 m!296787))

(declare-fun m!296789 () Bool)

(assert (=> start!27264 m!296789))

(declare-fun m!296791 () Bool)

(assert (=> start!27264 m!296791))

(assert (=> b!282214 m!296775))

(declare-fun m!296793 () Bool)

(assert (=> b!282211 m!296793))

(declare-fun m!296795 () Bool)

(assert (=> b!282217 m!296795))

(check-sat (not b!282217) (not b!282219) (not b!282216) (not b!282218) (not b!282215) (not b!282212) (not start!27264) (not b!282211))
(check-sat)
