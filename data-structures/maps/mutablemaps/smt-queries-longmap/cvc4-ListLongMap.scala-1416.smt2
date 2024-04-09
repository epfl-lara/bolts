; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27536 () Bool)

(assert start!27536)

(declare-fun b!284377 () Bool)

(declare-fun e!180417 () Bool)

(declare-fun e!180418 () Bool)

(assert (=> b!284377 (= e!180417 e!180418)))

(declare-fun res!146925 () Bool)

(assert (=> b!284377 (=> (not res!146925) (not e!180418))))

(declare-datatypes ((SeekEntryResult!1895 0))(
  ( (MissingZero!1895 (index!9750 (_ BitVec 32))) (Found!1895 (index!9751 (_ BitVec 32))) (Intermediate!1895 (undefined!2707 Bool) (index!9752 (_ BitVec 32)) (x!27926 (_ BitVec 32))) (Undefined!1895) (MissingVacant!1895 (index!9753 (_ BitVec 32))) )
))
(declare-fun lt!140536 () SeekEntryResult!1895)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284377 (= res!146925 (or (= lt!140536 (MissingZero!1895 i!1267)) (= lt!140536 (MissingVacant!1895 i!1267))))))

(declare-datatypes ((array!14175 0))(
  ( (array!14176 (arr!6726 (Array (_ BitVec 32) (_ BitVec 64))) (size!7078 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14175)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14175 (_ BitVec 32)) SeekEntryResult!1895)

(assert (=> b!284377 (= lt!140536 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!146926 () Bool)

(assert (=> start!27536 (=> (not res!146926) (not e!180417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27536 (= res!146926 (validMask!0 mask!3868))))

(assert (=> start!27536 e!180417))

(declare-fun array_inv!4680 (array!14175) Bool)

(assert (=> start!27536 (array_inv!4680 a!3325)))

(assert (=> start!27536 true))

(declare-fun b!284378 () Bool)

(declare-fun res!146927 () Bool)

(assert (=> b!284378 (=> (not res!146927) (not e!180417))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284378 (= res!146927 (validKeyInArray!0 k!2581))))

(declare-fun b!284379 () Bool)

(declare-fun res!146924 () Bool)

(assert (=> b!284379 (=> (not res!146924) (not e!180417))))

(declare-datatypes ((List!4555 0))(
  ( (Nil!4552) (Cons!4551 (h!5224 (_ BitVec 64)) (t!9645 List!4555)) )
))
(declare-fun arrayNoDuplicates!0 (array!14175 (_ BitVec 32) List!4555) Bool)

(assert (=> b!284379 (= res!146924 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4552))))

(declare-fun b!284380 () Bool)

(assert (=> b!284380 (= e!180418 false)))

(declare-fun lt!140537 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14175 (_ BitVec 32)) Bool)

(assert (=> b!284380 (= lt!140537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284381 () Bool)

(declare-fun res!146928 () Bool)

(assert (=> b!284381 (=> (not res!146928) (not e!180417))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284381 (= res!146928 (and (= (size!7078 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7078 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7078 a!3325))))))

(declare-fun b!284382 () Bool)

(declare-fun res!146923 () Bool)

(assert (=> b!284382 (=> (not res!146923) (not e!180417))))

(declare-fun arrayContainsKey!0 (array!14175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284382 (= res!146923 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27536 res!146926) b!284381))

(assert (= (and b!284381 res!146928) b!284378))

(assert (= (and b!284378 res!146927) b!284379))

(assert (= (and b!284379 res!146924) b!284382))

(assert (= (and b!284382 res!146923) b!284377))

(assert (= (and b!284377 res!146925) b!284380))

(declare-fun m!299447 () Bool)

(assert (=> b!284379 m!299447))

(declare-fun m!299449 () Bool)

(assert (=> b!284377 m!299449))

(declare-fun m!299451 () Bool)

(assert (=> start!27536 m!299451))

(declare-fun m!299453 () Bool)

(assert (=> start!27536 m!299453))

(declare-fun m!299455 () Bool)

(assert (=> b!284382 m!299455))

(declare-fun m!299457 () Bool)

(assert (=> b!284378 m!299457))

(declare-fun m!299459 () Bool)

(assert (=> b!284380 m!299459))

(push 1)

(assert (not b!284382))

(assert (not b!284380))

(assert (not b!284378))

(assert (not b!284377))

(assert (not b!284379))

(assert (not start!27536))

(check-sat)

(pop 1)

