; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27520 () Bool)

(assert start!27520)

(declare-fun b!284233 () Bool)

(declare-fun res!146784 () Bool)

(declare-fun e!180346 () Bool)

(assert (=> b!284233 (=> (not res!146784) (not e!180346))))

(declare-datatypes ((array!14159 0))(
  ( (array!14160 (arr!6718 (Array (_ BitVec 32) (_ BitVec 64))) (size!7070 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14159)

(declare-datatypes ((List!4547 0))(
  ( (Nil!4544) (Cons!4543 (h!5216 (_ BitVec 64)) (t!9637 List!4547)) )
))
(declare-fun arrayNoDuplicates!0 (array!14159 (_ BitVec 32) List!4547) Bool)

(assert (=> b!284233 (= res!146784 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4544))))

(declare-fun b!284234 () Bool)

(declare-fun res!146779 () Bool)

(assert (=> b!284234 (=> (not res!146779) (not e!180346))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284234 (= res!146779 (and (= (size!7070 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7070 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7070 a!3325))))))

(declare-fun b!284235 () Bool)

(declare-fun e!180344 () Bool)

(assert (=> b!284235 (= e!180346 e!180344)))

(declare-fun res!146782 () Bool)

(assert (=> b!284235 (=> (not res!146782) (not e!180344))))

(declare-datatypes ((SeekEntryResult!1887 0))(
  ( (MissingZero!1887 (index!9718 (_ BitVec 32))) (Found!1887 (index!9719 (_ BitVec 32))) (Intermediate!1887 (undefined!2699 Bool) (index!9720 (_ BitVec 32)) (x!27902 (_ BitVec 32))) (Undefined!1887) (MissingVacant!1887 (index!9721 (_ BitVec 32))) )
))
(declare-fun lt!140489 () SeekEntryResult!1887)

(assert (=> b!284235 (= res!146782 (or (= lt!140489 (MissingZero!1887 i!1267)) (= lt!140489 (MissingVacant!1887 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14159 (_ BitVec 32)) SeekEntryResult!1887)

(assert (=> b!284235 (= lt!140489 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284236 () Bool)

(assert (=> b!284236 (= e!180344 false)))

(declare-fun lt!140488 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14159 (_ BitVec 32)) Bool)

(assert (=> b!284236 (= lt!140488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!146781 () Bool)

(assert (=> start!27520 (=> (not res!146781) (not e!180346))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27520 (= res!146781 (validMask!0 mask!3868))))

(assert (=> start!27520 e!180346))

(declare-fun array_inv!4672 (array!14159) Bool)

(assert (=> start!27520 (array_inv!4672 a!3325)))

(assert (=> start!27520 true))

(declare-fun b!284237 () Bool)

(declare-fun res!146780 () Bool)

(assert (=> b!284237 (=> (not res!146780) (not e!180346))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284237 (= res!146780 (validKeyInArray!0 k!2581))))

(declare-fun b!284238 () Bool)

(declare-fun res!146783 () Bool)

(assert (=> b!284238 (=> (not res!146783) (not e!180346))))

(declare-fun arrayContainsKey!0 (array!14159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284238 (= res!146783 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27520 res!146781) b!284234))

(assert (= (and b!284234 res!146779) b!284237))

(assert (= (and b!284237 res!146780) b!284233))

(assert (= (and b!284233 res!146784) b!284238))

(assert (= (and b!284238 res!146783) b!284235))

(assert (= (and b!284235 res!146782) b!284236))

(declare-fun m!299335 () Bool)

(assert (=> b!284233 m!299335))

(declare-fun m!299337 () Bool)

(assert (=> b!284237 m!299337))

(declare-fun m!299339 () Bool)

(assert (=> b!284236 m!299339))

(declare-fun m!299341 () Bool)

(assert (=> b!284238 m!299341))

(declare-fun m!299343 () Bool)

(assert (=> b!284235 m!299343))

(declare-fun m!299345 () Bool)

(assert (=> start!27520 m!299345))

(declare-fun m!299347 () Bool)

(assert (=> start!27520 m!299347))

(push 1)

