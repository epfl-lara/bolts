; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27190 () Bool)

(assert start!27190)

(declare-fun b!281212 () Bool)

(declare-fun res!144325 () Bool)

(declare-fun e!178793 () Bool)

(assert (=> b!281212 (=> (not res!144325) (not e!178793))))

(declare-datatypes ((array!13997 0))(
  ( (array!13998 (arr!6640 (Array (_ BitVec 32) (_ BitVec 64))) (size!6992 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13997)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!281212 (= res!144325 (and (= (size!6992 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6992 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6992 a!3325))))))

(declare-fun b!281213 () Bool)

(declare-fun res!144323 () Bool)

(assert (=> b!281213 (=> (not res!144323) (not e!178793))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281213 (= res!144323 (validKeyInArray!0 k!2581))))

(declare-fun b!281214 () Bool)

(declare-fun res!144327 () Bool)

(declare-fun e!178794 () Bool)

(assert (=> b!281214 (=> (not res!144327) (not e!178794))))

(assert (=> b!281214 (= res!144327 (not (= startIndex!26 i!1267)))))

(declare-fun b!281215 () Bool)

(declare-fun res!144320 () Bool)

(assert (=> b!281215 (=> (not res!144320) (not e!178793))))

(declare-fun arrayContainsKey!0 (array!13997 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281215 (= res!144320 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281216 () Bool)

(declare-fun res!144321 () Bool)

(assert (=> b!281216 (=> (not res!144321) (not e!178793))))

(declare-datatypes ((List!4469 0))(
  ( (Nil!4466) (Cons!4465 (h!5135 (_ BitVec 64)) (t!9559 List!4469)) )
))
(declare-fun arrayNoDuplicates!0 (array!13997 (_ BitVec 32) List!4469) Bool)

(assert (=> b!281216 (= res!144321 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4466))))

(declare-fun b!281217 () Bool)

(declare-fun res!144324 () Bool)

(assert (=> b!281217 (=> (not res!144324) (not e!178794))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13997 (_ BitVec 32)) Bool)

(assert (=> b!281217 (= res!144324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!144326 () Bool)

(assert (=> start!27190 (=> (not res!144326) (not e!178793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27190 (= res!144326 (validMask!0 mask!3868))))

(assert (=> start!27190 e!178793))

(declare-fun array_inv!4594 (array!13997) Bool)

(assert (=> start!27190 (array_inv!4594 a!3325)))

(assert (=> start!27190 true))

(declare-fun b!281218 () Bool)

(declare-fun res!144319 () Bool)

(assert (=> b!281218 (=> (not res!144319) (not e!178794))))

(assert (=> b!281218 (= res!144319 (validKeyInArray!0 (select (arr!6640 a!3325) startIndex!26)))))

(declare-fun b!281219 () Bool)

(assert (=> b!281219 (= e!178793 e!178794)))

(declare-fun res!144322 () Bool)

(assert (=> b!281219 (=> (not res!144322) (not e!178794))))

(declare-datatypes ((SeekEntryResult!1809 0))(
  ( (MissingZero!1809 (index!9406 (_ BitVec 32))) (Found!1809 (index!9407 (_ BitVec 32))) (Intermediate!1809 (undefined!2621 Bool) (index!9408 (_ BitVec 32)) (x!27607 (_ BitVec 32))) (Undefined!1809) (MissingVacant!1809 (index!9409 (_ BitVec 32))) )
))
(declare-fun lt!139031 () SeekEntryResult!1809)

(assert (=> b!281219 (= res!144322 (or (= lt!139031 (MissingZero!1809 i!1267)) (= lt!139031 (MissingVacant!1809 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13997 (_ BitVec 32)) SeekEntryResult!1809)

(assert (=> b!281219 (= lt!139031 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281220 () Bool)

(assert (=> b!281220 (= e!178794 (not true))))

(assert (=> b!281220 (arrayNoDuplicates!0 (array!13998 (store (arr!6640 a!3325) i!1267 k!2581) (size!6992 a!3325)) #b00000000000000000000000000000000 Nil!4466)))

(declare-datatypes ((Unit!8881 0))(
  ( (Unit!8882) )
))
(declare-fun lt!139030 () Unit!8881)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13997 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4469) Unit!8881)

(assert (=> b!281220 (= lt!139030 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4466))))

(assert (= (and start!27190 res!144326) b!281212))

(assert (= (and b!281212 res!144325) b!281213))

(assert (= (and b!281213 res!144323) b!281216))

(assert (= (and b!281216 res!144321) b!281215))

(assert (= (and b!281215 res!144320) b!281219))

(assert (= (and b!281219 res!144322) b!281217))

(assert (= (and b!281217 res!144324) b!281214))

(assert (= (and b!281214 res!144327) b!281218))

(assert (= (and b!281218 res!144319) b!281220))

(declare-fun m!295597 () Bool)

(assert (=> b!281220 m!295597))

(declare-fun m!295599 () Bool)

(assert (=> b!281220 m!295599))

(declare-fun m!295601 () Bool)

(assert (=> b!281220 m!295601))

(declare-fun m!295603 () Bool)

(assert (=> start!27190 m!295603))

(declare-fun m!295605 () Bool)

(assert (=> start!27190 m!295605))

(declare-fun m!295607 () Bool)

(assert (=> b!281215 m!295607))

(declare-fun m!295609 () Bool)

(assert (=> b!281217 m!295609))

(declare-fun m!295611 () Bool)

(assert (=> b!281213 m!295611))

(declare-fun m!295613 () Bool)

(assert (=> b!281216 m!295613))

(declare-fun m!295615 () Bool)

(assert (=> b!281218 m!295615))

(assert (=> b!281218 m!295615))

(declare-fun m!295617 () Bool)

(assert (=> b!281218 m!295617))

(declare-fun m!295619 () Bool)

(assert (=> b!281219 m!295619))

(push 1)

