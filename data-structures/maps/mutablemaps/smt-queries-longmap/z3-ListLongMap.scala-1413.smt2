; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27516 () Bool)

(assert start!27516)

(declare-fun b!284197 () Bool)

(declare-fun res!146744 () Bool)

(declare-fun e!180327 () Bool)

(assert (=> b!284197 (=> (not res!146744) (not e!180327))))

(declare-datatypes ((array!14155 0))(
  ( (array!14156 (arr!6716 (Array (_ BitVec 32) (_ BitVec 64))) (size!7068 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14155)

(declare-datatypes ((List!4545 0))(
  ( (Nil!4542) (Cons!4541 (h!5214 (_ BitVec 64)) (t!9635 List!4545)) )
))
(declare-fun arrayNoDuplicates!0 (array!14155 (_ BitVec 32) List!4545) Bool)

(assert (=> b!284197 (= res!146744 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4542))))

(declare-fun b!284198 () Bool)

(declare-fun res!146746 () Bool)

(assert (=> b!284198 (=> (not res!146746) (not e!180327))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284198 (= res!146746 (validKeyInArray!0 k0!2581))))

(declare-fun b!284199 () Bool)

(declare-fun res!146748 () Bool)

(assert (=> b!284199 (=> (not res!146748) (not e!180327))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284199 (= res!146748 (and (= (size!7068 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7068 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7068 a!3325))))))

(declare-fun b!284200 () Bool)

(declare-fun e!180328 () Bool)

(assert (=> b!284200 (= e!180328 false)))

(declare-fun lt!140477 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14155 (_ BitVec 32)) Bool)

(assert (=> b!284200 (= lt!140477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!146743 () Bool)

(assert (=> start!27516 (=> (not res!146743) (not e!180327))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27516 (= res!146743 (validMask!0 mask!3868))))

(assert (=> start!27516 e!180327))

(declare-fun array_inv!4670 (array!14155) Bool)

(assert (=> start!27516 (array_inv!4670 a!3325)))

(assert (=> start!27516 true))

(declare-fun b!284201 () Bool)

(declare-fun res!146745 () Bool)

(assert (=> b!284201 (=> (not res!146745) (not e!180327))))

(declare-fun arrayContainsKey!0 (array!14155 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284201 (= res!146745 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284202 () Bool)

(assert (=> b!284202 (= e!180327 e!180328)))

(declare-fun res!146747 () Bool)

(assert (=> b!284202 (=> (not res!146747) (not e!180328))))

(declare-datatypes ((SeekEntryResult!1885 0))(
  ( (MissingZero!1885 (index!9710 (_ BitVec 32))) (Found!1885 (index!9711 (_ BitVec 32))) (Intermediate!1885 (undefined!2697 Bool) (index!9712 (_ BitVec 32)) (x!27892 (_ BitVec 32))) (Undefined!1885) (MissingVacant!1885 (index!9713 (_ BitVec 32))) )
))
(declare-fun lt!140476 () SeekEntryResult!1885)

(assert (=> b!284202 (= res!146747 (or (= lt!140476 (MissingZero!1885 i!1267)) (= lt!140476 (MissingVacant!1885 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14155 (_ BitVec 32)) SeekEntryResult!1885)

(assert (=> b!284202 (= lt!140476 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!27516 res!146743) b!284199))

(assert (= (and b!284199 res!146748) b!284198))

(assert (= (and b!284198 res!146746) b!284197))

(assert (= (and b!284197 res!146744) b!284201))

(assert (= (and b!284201 res!146745) b!284202))

(assert (= (and b!284202 res!146747) b!284200))

(declare-fun m!299307 () Bool)

(assert (=> b!284201 m!299307))

(declare-fun m!299309 () Bool)

(assert (=> b!284198 m!299309))

(declare-fun m!299311 () Bool)

(assert (=> b!284197 m!299311))

(declare-fun m!299313 () Bool)

(assert (=> b!284202 m!299313))

(declare-fun m!299315 () Bool)

(assert (=> b!284200 m!299315))

(declare-fun m!299317 () Bool)

(assert (=> start!27516 m!299317))

(declare-fun m!299319 () Bool)

(assert (=> start!27516 m!299319))

(check-sat (not b!284197) (not b!284198) (not b!284200) (not b!284201) (not start!27516) (not b!284202))
(check-sat)
