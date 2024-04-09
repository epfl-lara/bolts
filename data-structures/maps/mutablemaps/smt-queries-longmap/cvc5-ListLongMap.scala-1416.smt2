; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27532 () Bool)

(assert start!27532)

(declare-fun b!284341 () Bool)

(declare-fun res!146887 () Bool)

(declare-fun e!180399 () Bool)

(assert (=> b!284341 (=> (not res!146887) (not e!180399))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284341 (= res!146887 (validKeyInArray!0 k!2581))))

(declare-fun b!284342 () Bool)

(declare-fun res!146889 () Bool)

(assert (=> b!284342 (=> (not res!146889) (not e!180399))))

(declare-datatypes ((array!14171 0))(
  ( (array!14172 (arr!6724 (Array (_ BitVec 32) (_ BitVec 64))) (size!7076 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14171)

(declare-datatypes ((List!4553 0))(
  ( (Nil!4550) (Cons!4549 (h!5222 (_ BitVec 64)) (t!9643 List!4553)) )
))
(declare-fun arrayNoDuplicates!0 (array!14171 (_ BitVec 32) List!4553) Bool)

(assert (=> b!284342 (= res!146889 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4550))))

(declare-fun b!284343 () Bool)

(declare-fun e!180400 () Bool)

(assert (=> b!284343 (= e!180400 false)))

(declare-fun lt!140525 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14171 (_ BitVec 32)) Bool)

(assert (=> b!284343 (= lt!140525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284345 () Bool)

(declare-fun res!146891 () Bool)

(assert (=> b!284345 (=> (not res!146891) (not e!180399))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284345 (= res!146891 (and (= (size!7076 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7076 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7076 a!3325))))))

(declare-fun b!284346 () Bool)

(declare-fun res!146890 () Bool)

(assert (=> b!284346 (=> (not res!146890) (not e!180399))))

(declare-fun arrayContainsKey!0 (array!14171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284346 (= res!146890 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!146892 () Bool)

(assert (=> start!27532 (=> (not res!146892) (not e!180399))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27532 (= res!146892 (validMask!0 mask!3868))))

(assert (=> start!27532 e!180399))

(declare-fun array_inv!4678 (array!14171) Bool)

(assert (=> start!27532 (array_inv!4678 a!3325)))

(assert (=> start!27532 true))

(declare-fun b!284344 () Bool)

(assert (=> b!284344 (= e!180399 e!180400)))

(declare-fun res!146888 () Bool)

(assert (=> b!284344 (=> (not res!146888) (not e!180400))))

(declare-datatypes ((SeekEntryResult!1893 0))(
  ( (MissingZero!1893 (index!9742 (_ BitVec 32))) (Found!1893 (index!9743 (_ BitVec 32))) (Intermediate!1893 (undefined!2705 Bool) (index!9744 (_ BitVec 32)) (x!27924 (_ BitVec 32))) (Undefined!1893) (MissingVacant!1893 (index!9745 (_ BitVec 32))) )
))
(declare-fun lt!140524 () SeekEntryResult!1893)

(assert (=> b!284344 (= res!146888 (or (= lt!140524 (MissingZero!1893 i!1267)) (= lt!140524 (MissingVacant!1893 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14171 (_ BitVec 32)) SeekEntryResult!1893)

(assert (=> b!284344 (= lt!140524 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27532 res!146892) b!284345))

(assert (= (and b!284345 res!146891) b!284341))

(assert (= (and b!284341 res!146887) b!284342))

(assert (= (and b!284342 res!146889) b!284346))

(assert (= (and b!284346 res!146890) b!284344))

(assert (= (and b!284344 res!146888) b!284343))

(declare-fun m!299419 () Bool)

(assert (=> b!284341 m!299419))

(declare-fun m!299421 () Bool)

(assert (=> start!27532 m!299421))

(declare-fun m!299423 () Bool)

(assert (=> start!27532 m!299423))

(declare-fun m!299425 () Bool)

(assert (=> b!284346 m!299425))

(declare-fun m!299427 () Bool)

(assert (=> b!284343 m!299427))

(declare-fun m!299429 () Bool)

(assert (=> b!284344 m!299429))

(declare-fun m!299431 () Bool)

(assert (=> b!284342 m!299431))

(push 1)

(assert (not b!284342))

