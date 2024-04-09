; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27556 () Bool)

(assert start!27556)

(declare-fun b!284584 () Bool)

(declare-fun res!147132 () Bool)

(declare-fun e!180508 () Bool)

(assert (=> b!284584 (=> (not res!147132) (not e!180508))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284584 (= res!147132 (validKeyInArray!0 k!2581))))

(declare-fun b!284585 () Bool)

(declare-fun e!180507 () Bool)

(assert (=> b!284585 (= e!180507 false)))

(declare-fun lt!140588 () Bool)

(declare-datatypes ((array!14195 0))(
  ( (array!14196 (arr!6736 (Array (_ BitVec 32) (_ BitVec 64))) (size!7088 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14195)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14195 (_ BitVec 32)) Bool)

(assert (=> b!284585 (= lt!140588 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284586 () Bool)

(declare-fun res!147134 () Bool)

(assert (=> b!284586 (=> (not res!147134) (not e!180508))))

(declare-datatypes ((List!4565 0))(
  ( (Nil!4562) (Cons!4561 (h!5234 (_ BitVec 64)) (t!9655 List!4565)) )
))
(declare-fun arrayNoDuplicates!0 (array!14195 (_ BitVec 32) List!4565) Bool)

(assert (=> b!284586 (= res!147134 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4562))))

(declare-fun b!284588 () Bool)

(assert (=> b!284588 (= e!180508 e!180507)))

(declare-fun res!147133 () Bool)

(assert (=> b!284588 (=> (not res!147133) (not e!180507))))

(declare-datatypes ((SeekEntryResult!1905 0))(
  ( (MissingZero!1905 (index!9790 (_ BitVec 32))) (Found!1905 (index!9791 (_ BitVec 32))) (Intermediate!1905 (undefined!2717 Bool) (index!9792 (_ BitVec 32)) (x!27968 (_ BitVec 32))) (Undefined!1905) (MissingVacant!1905 (index!9793 (_ BitVec 32))) )
))
(declare-fun lt!140587 () SeekEntryResult!1905)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!284588 (= res!147133 (or (= lt!140587 (MissingZero!1905 i!1267)) (= lt!140587 (MissingVacant!1905 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14195 (_ BitVec 32)) SeekEntryResult!1905)

(assert (=> b!284588 (= lt!140587 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284589 () Bool)

(declare-fun res!147135 () Bool)

(assert (=> b!284589 (=> (not res!147135) (not e!180508))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284589 (= res!147135 (and (= (size!7088 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7088 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7088 a!3325))))))

(declare-fun b!284587 () Bool)

(declare-fun res!147131 () Bool)

(assert (=> b!284587 (=> (not res!147131) (not e!180508))))

(declare-fun arrayContainsKey!0 (array!14195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284587 (= res!147131 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!147130 () Bool)

(assert (=> start!27556 (=> (not res!147130) (not e!180508))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27556 (= res!147130 (validMask!0 mask!3868))))

(assert (=> start!27556 e!180508))

(declare-fun array_inv!4690 (array!14195) Bool)

(assert (=> start!27556 (array_inv!4690 a!3325)))

(assert (=> start!27556 true))

(assert (= (and start!27556 res!147130) b!284589))

(assert (= (and b!284589 res!147135) b!284584))

(assert (= (and b!284584 res!147132) b!284586))

(assert (= (and b!284586 res!147134) b!284587))

(assert (= (and b!284587 res!147131) b!284588))

(assert (= (and b!284588 res!147133) b!284585))

(declare-fun m!299599 () Bool)

(assert (=> b!284585 m!299599))

(declare-fun m!299601 () Bool)

(assert (=> b!284584 m!299601))

(declare-fun m!299603 () Bool)

(assert (=> start!27556 m!299603))

(declare-fun m!299605 () Bool)

(assert (=> start!27556 m!299605))

(declare-fun m!299607 () Bool)

(assert (=> b!284586 m!299607))

(declare-fun m!299609 () Bool)

(assert (=> b!284588 m!299609))

(declare-fun m!299611 () Bool)

(assert (=> b!284587 m!299611))

(push 1)

