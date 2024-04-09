; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27558 () Bool)

(assert start!27558)

(declare-fun b!284602 () Bool)

(declare-fun res!147152 () Bool)

(declare-fun e!180515 () Bool)

(assert (=> b!284602 (=> (not res!147152) (not e!180515))))

(declare-datatypes ((array!14197 0))(
  ( (array!14198 (arr!6737 (Array (_ BitVec 32) (_ BitVec 64))) (size!7089 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14197)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284602 (= res!147152 (and (= (size!7089 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7089 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7089 a!3325))))))

(declare-fun b!284603 () Bool)

(declare-fun res!147149 () Bool)

(assert (=> b!284603 (=> (not res!147149) (not e!180515))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284603 (= res!147149 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284604 () Bool)

(declare-fun res!147150 () Bool)

(assert (=> b!284604 (=> (not res!147150) (not e!180515))))

(declare-datatypes ((List!4566 0))(
  ( (Nil!4563) (Cons!4562 (h!5235 (_ BitVec 64)) (t!9656 List!4566)) )
))
(declare-fun arrayNoDuplicates!0 (array!14197 (_ BitVec 32) List!4566) Bool)

(assert (=> b!284604 (= res!147150 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4563))))

(declare-fun b!284605 () Bool)

(declare-fun e!180517 () Bool)

(assert (=> b!284605 (= e!180515 e!180517)))

(declare-fun res!147153 () Bool)

(assert (=> b!284605 (=> (not res!147153) (not e!180517))))

(declare-datatypes ((SeekEntryResult!1906 0))(
  ( (MissingZero!1906 (index!9794 (_ BitVec 32))) (Found!1906 (index!9795 (_ BitVec 32))) (Intermediate!1906 (undefined!2718 Bool) (index!9796 (_ BitVec 32)) (x!27969 (_ BitVec 32))) (Undefined!1906) (MissingVacant!1906 (index!9797 (_ BitVec 32))) )
))
(declare-fun lt!140593 () SeekEntryResult!1906)

(assert (=> b!284605 (= res!147153 (or (= lt!140593 (MissingZero!1906 i!1267)) (= lt!140593 (MissingVacant!1906 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14197 (_ BitVec 32)) SeekEntryResult!1906)

(assert (=> b!284605 (= lt!140593 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!147148 () Bool)

(assert (=> start!27558 (=> (not res!147148) (not e!180515))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27558 (= res!147148 (validMask!0 mask!3868))))

(assert (=> start!27558 e!180515))

(declare-fun array_inv!4691 (array!14197) Bool)

(assert (=> start!27558 (array_inv!4691 a!3325)))

(assert (=> start!27558 true))

(declare-fun b!284606 () Bool)

(declare-fun res!147151 () Bool)

(assert (=> b!284606 (=> (not res!147151) (not e!180515))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284606 (= res!147151 (validKeyInArray!0 k0!2581))))

(declare-fun b!284607 () Bool)

(assert (=> b!284607 (= e!180517 false)))

(declare-fun lt!140594 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14197 (_ BitVec 32)) Bool)

(assert (=> b!284607 (= lt!140594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27558 res!147148) b!284602))

(assert (= (and b!284602 res!147152) b!284606))

(assert (= (and b!284606 res!147151) b!284604))

(assert (= (and b!284604 res!147150) b!284603))

(assert (= (and b!284603 res!147149) b!284605))

(assert (= (and b!284605 res!147153) b!284607))

(declare-fun m!299613 () Bool)

(assert (=> b!284605 m!299613))

(declare-fun m!299615 () Bool)

(assert (=> b!284607 m!299615))

(declare-fun m!299617 () Bool)

(assert (=> b!284604 m!299617))

(declare-fun m!299619 () Bool)

(assert (=> start!27558 m!299619))

(declare-fun m!299621 () Bool)

(assert (=> start!27558 m!299621))

(declare-fun m!299623 () Bool)

(assert (=> b!284606 m!299623))

(declare-fun m!299625 () Bool)

(assert (=> b!284603 m!299625))

(check-sat (not b!284603) (not b!284604) (not b!284607) (not start!27558) (not b!284606) (not b!284605))
(check-sat)
