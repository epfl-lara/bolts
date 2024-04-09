; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27526 () Bool)

(assert start!27526)

(declare-fun b!284287 () Bool)

(declare-fun e!180372 () Bool)

(declare-fun e!180371 () Bool)

(assert (=> b!284287 (= e!180372 e!180371)))

(declare-fun res!146837 () Bool)

(assert (=> b!284287 (=> (not res!146837) (not e!180371))))

(declare-datatypes ((SeekEntryResult!1890 0))(
  ( (MissingZero!1890 (index!9730 (_ BitVec 32))) (Found!1890 (index!9731 (_ BitVec 32))) (Intermediate!1890 (undefined!2702 Bool) (index!9732 (_ BitVec 32)) (x!27913 (_ BitVec 32))) (Undefined!1890) (MissingVacant!1890 (index!9733 (_ BitVec 32))) )
))
(declare-fun lt!140507 () SeekEntryResult!1890)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284287 (= res!146837 (or (= lt!140507 (MissingZero!1890 i!1267)) (= lt!140507 (MissingVacant!1890 i!1267))))))

(declare-datatypes ((array!14165 0))(
  ( (array!14166 (arr!6721 (Array (_ BitVec 32) (_ BitVec 64))) (size!7073 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14165)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14165 (_ BitVec 32)) SeekEntryResult!1890)

(assert (=> b!284287 (= lt!140507 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!146838 () Bool)

(assert (=> start!27526 (=> (not res!146838) (not e!180372))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27526 (= res!146838 (validMask!0 mask!3868))))

(assert (=> start!27526 e!180372))

(declare-fun array_inv!4675 (array!14165) Bool)

(assert (=> start!27526 (array_inv!4675 a!3325)))

(assert (=> start!27526 true))

(declare-fun b!284288 () Bool)

(declare-fun res!146834 () Bool)

(assert (=> b!284288 (=> (not res!146834) (not e!180372))))

(declare-fun arrayContainsKey!0 (array!14165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284288 (= res!146834 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284289 () Bool)

(declare-fun res!146833 () Bool)

(assert (=> b!284289 (=> (not res!146833) (not e!180372))))

(declare-datatypes ((List!4550 0))(
  ( (Nil!4547) (Cons!4546 (h!5219 (_ BitVec 64)) (t!9640 List!4550)) )
))
(declare-fun arrayNoDuplicates!0 (array!14165 (_ BitVec 32) List!4550) Bool)

(assert (=> b!284289 (= res!146833 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4547))))

(declare-fun b!284290 () Bool)

(declare-fun res!146836 () Bool)

(assert (=> b!284290 (=> (not res!146836) (not e!180372))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284290 (= res!146836 (and (= (size!7073 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7073 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7073 a!3325))))))

(declare-fun b!284291 () Bool)

(declare-fun res!146835 () Bool)

(assert (=> b!284291 (=> (not res!146835) (not e!180372))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284291 (= res!146835 (validKeyInArray!0 k!2581))))

(declare-fun b!284292 () Bool)

(assert (=> b!284292 (= e!180371 false)))

(declare-fun lt!140506 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14165 (_ BitVec 32)) Bool)

(assert (=> b!284292 (= lt!140506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27526 res!146838) b!284290))

(assert (= (and b!284290 res!146836) b!284291))

(assert (= (and b!284291 res!146835) b!284289))

(assert (= (and b!284289 res!146833) b!284288))

(assert (= (and b!284288 res!146834) b!284287))

(assert (= (and b!284287 res!146837) b!284292))

(declare-fun m!299377 () Bool)

(assert (=> b!284292 m!299377))

(declare-fun m!299379 () Bool)

(assert (=> b!284291 m!299379))

(declare-fun m!299381 () Bool)

(assert (=> b!284287 m!299381))

(declare-fun m!299383 () Bool)

(assert (=> start!27526 m!299383))

(declare-fun m!299385 () Bool)

(assert (=> start!27526 m!299385))

(declare-fun m!299387 () Bool)

(assert (=> b!284289 m!299387))

(declare-fun m!299389 () Bool)

(assert (=> b!284288 m!299389))

(push 1)

(assert (not b!284289))

(assert (not b!284287))

(assert (not start!27526))

