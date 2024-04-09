; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27180 () Bool)

(assert start!27180)

(declare-fun b!281077 () Bool)

(declare-fun e!178750 () Bool)

(declare-fun e!178748 () Bool)

(assert (=> b!281077 (= e!178750 e!178748)))

(declare-fun res!144189 () Bool)

(assert (=> b!281077 (=> (not res!144189) (not e!178748))))

(declare-datatypes ((SeekEntryResult!1804 0))(
  ( (MissingZero!1804 (index!9386 (_ BitVec 32))) (Found!1804 (index!9387 (_ BitVec 32))) (Intermediate!1804 (undefined!2616 Bool) (index!9388 (_ BitVec 32)) (x!27586 (_ BitVec 32))) (Undefined!1804) (MissingVacant!1804 (index!9389 (_ BitVec 32))) )
))
(declare-fun lt!139000 () SeekEntryResult!1804)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281077 (= res!144189 (or (= lt!139000 (MissingZero!1804 i!1267)) (= lt!139000 (MissingVacant!1804 i!1267))))))

(declare-datatypes ((array!13987 0))(
  ( (array!13988 (arr!6635 (Array (_ BitVec 32) (_ BitVec 64))) (size!6987 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13987)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13987 (_ BitVec 32)) SeekEntryResult!1804)

(assert (=> b!281077 (= lt!139000 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281078 () Bool)

(declare-fun res!144184 () Bool)

(assert (=> b!281078 (=> (not res!144184) (not e!178748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13987 (_ BitVec 32)) Bool)

(assert (=> b!281078 (= res!144184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281079 () Bool)

(declare-fun res!144185 () Bool)

(assert (=> b!281079 (=> (not res!144185) (not e!178750))))

(declare-fun arrayContainsKey!0 (array!13987 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281079 (= res!144185 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!144186 () Bool)

(assert (=> start!27180 (=> (not res!144186) (not e!178750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27180 (= res!144186 (validMask!0 mask!3868))))

(assert (=> start!27180 e!178750))

(declare-fun array_inv!4589 (array!13987) Bool)

(assert (=> start!27180 (array_inv!4589 a!3325)))

(assert (=> start!27180 true))

(declare-fun b!281080 () Bool)

(declare-fun res!144187 () Bool)

(assert (=> b!281080 (=> (not res!144187) (not e!178750))))

(declare-datatypes ((List!4464 0))(
  ( (Nil!4461) (Cons!4460 (h!5130 (_ BitVec 64)) (t!9554 List!4464)) )
))
(declare-fun arrayNoDuplicates!0 (array!13987 (_ BitVec 32) List!4464) Bool)

(assert (=> b!281080 (= res!144187 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4461))))

(declare-fun b!281081 () Bool)

(declare-fun res!144190 () Bool)

(assert (=> b!281081 (=> (not res!144190) (not e!178750))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281081 (= res!144190 (and (= (size!6987 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6987 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6987 a!3325))))))

(declare-fun b!281082 () Bool)

(declare-fun res!144191 () Bool)

(assert (=> b!281082 (=> (not res!144191) (not e!178750))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281082 (= res!144191 (validKeyInArray!0 k0!2581))))

(declare-fun b!281083 () Bool)

(declare-fun res!144192 () Bool)

(assert (=> b!281083 (=> (not res!144192) (not e!178748))))

(assert (=> b!281083 (= res!144192 (not (= startIndex!26 i!1267)))))

(declare-fun b!281084 () Bool)

(declare-fun res!144188 () Bool)

(assert (=> b!281084 (=> (not res!144188) (not e!178748))))

(assert (=> b!281084 (= res!144188 (validKeyInArray!0 (select (arr!6635 a!3325) startIndex!26)))))

(declare-fun b!281085 () Bool)

(assert (=> b!281085 (= e!178748 (not true))))

(assert (=> b!281085 (arrayNoDuplicates!0 (array!13988 (store (arr!6635 a!3325) i!1267 k0!2581) (size!6987 a!3325)) #b00000000000000000000000000000000 Nil!4461)))

(declare-datatypes ((Unit!8871 0))(
  ( (Unit!8872) )
))
(declare-fun lt!139001 () Unit!8871)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13987 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4464) Unit!8871)

(assert (=> b!281085 (= lt!139001 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4461))))

(assert (= (and start!27180 res!144186) b!281081))

(assert (= (and b!281081 res!144190) b!281082))

(assert (= (and b!281082 res!144191) b!281080))

(assert (= (and b!281080 res!144187) b!281079))

(assert (= (and b!281079 res!144185) b!281077))

(assert (= (and b!281077 res!144189) b!281078))

(assert (= (and b!281078 res!144184) b!281083))

(assert (= (and b!281083 res!144192) b!281084))

(assert (= (and b!281084 res!144188) b!281085))

(declare-fun m!295477 () Bool)

(assert (=> b!281085 m!295477))

(declare-fun m!295479 () Bool)

(assert (=> b!281085 m!295479))

(declare-fun m!295481 () Bool)

(assert (=> b!281085 m!295481))

(declare-fun m!295483 () Bool)

(assert (=> b!281079 m!295483))

(declare-fun m!295485 () Bool)

(assert (=> b!281084 m!295485))

(assert (=> b!281084 m!295485))

(declare-fun m!295487 () Bool)

(assert (=> b!281084 m!295487))

(declare-fun m!295489 () Bool)

(assert (=> b!281080 m!295489))

(declare-fun m!295491 () Bool)

(assert (=> b!281082 m!295491))

(declare-fun m!295493 () Bool)

(assert (=> start!27180 m!295493))

(declare-fun m!295495 () Bool)

(assert (=> start!27180 m!295495))

(declare-fun m!295497 () Bool)

(assert (=> b!281077 m!295497))

(declare-fun m!295499 () Bool)

(assert (=> b!281078 m!295499))

(check-sat (not b!281084) (not b!281085) (not b!281079) (not start!27180) (not b!281078) (not b!281082) (not b!281080) (not b!281077))
(check-sat)
