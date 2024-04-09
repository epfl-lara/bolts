; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27574 () Bool)

(assert start!27574)

(declare-fun b!284746 () Bool)

(declare-fun res!147297 () Bool)

(declare-fun e!180587 () Bool)

(assert (=> b!284746 (=> (not res!147297) (not e!180587))))

(declare-datatypes ((array!14213 0))(
  ( (array!14214 (arr!6745 (Array (_ BitVec 32) (_ BitVec 64))) (size!7097 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14213)

(declare-datatypes ((List!4574 0))(
  ( (Nil!4571) (Cons!4570 (h!5243 (_ BitVec 64)) (t!9664 List!4574)) )
))
(declare-fun arrayNoDuplicates!0 (array!14213 (_ BitVec 32) List!4574) Bool)

(assert (=> b!284746 (= res!147297 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4571))))

(declare-fun res!147295 () Bool)

(assert (=> start!27574 (=> (not res!147295) (not e!180587))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27574 (= res!147295 (validMask!0 mask!3868))))

(assert (=> start!27574 e!180587))

(declare-fun array_inv!4699 (array!14213) Bool)

(assert (=> start!27574 (array_inv!4699 a!3325)))

(assert (=> start!27574 true))

(declare-fun b!284747 () Bool)

(declare-fun res!147292 () Bool)

(assert (=> b!284747 (=> (not res!147292) (not e!180587))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284747 (= res!147292 (validKeyInArray!0 k!2581))))

(declare-fun b!284748 () Bool)

(declare-fun res!147293 () Bool)

(assert (=> b!284748 (=> (not res!147293) (not e!180587))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284748 (= res!147293 (and (= (size!7097 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7097 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7097 a!3325))))))

(declare-fun b!284749 () Bool)

(declare-fun res!147294 () Bool)

(assert (=> b!284749 (=> (not res!147294) (not e!180587))))

(declare-fun arrayContainsKey!0 (array!14213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284749 (= res!147294 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284750 () Bool)

(declare-fun e!180589 () Bool)

(assert (=> b!284750 (= e!180587 e!180589)))

(declare-fun res!147296 () Bool)

(assert (=> b!284750 (=> (not res!147296) (not e!180589))))

(declare-datatypes ((SeekEntryResult!1914 0))(
  ( (MissingZero!1914 (index!9826 (_ BitVec 32))) (Found!1914 (index!9827 (_ BitVec 32))) (Intermediate!1914 (undefined!2726 Bool) (index!9828 (_ BitVec 32)) (x!28001 (_ BitVec 32))) (Undefined!1914) (MissingVacant!1914 (index!9829 (_ BitVec 32))) )
))
(declare-fun lt!140641 () SeekEntryResult!1914)

(assert (=> b!284750 (= res!147296 (or (= lt!140641 (MissingZero!1914 i!1267)) (= lt!140641 (MissingVacant!1914 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14213 (_ BitVec 32)) SeekEntryResult!1914)

(assert (=> b!284750 (= lt!140641 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284751 () Bool)

(assert (=> b!284751 (= e!180589 false)))

(declare-fun lt!140642 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14213 (_ BitVec 32)) Bool)

(assert (=> b!284751 (= lt!140642 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27574 res!147295) b!284748))

(assert (= (and b!284748 res!147293) b!284747))

(assert (= (and b!284747 res!147292) b!284746))

(assert (= (and b!284746 res!147297) b!284749))

(assert (= (and b!284749 res!147294) b!284750))

(assert (= (and b!284750 res!147296) b!284751))

(declare-fun m!299725 () Bool)

(assert (=> b!284750 m!299725))

(declare-fun m!299727 () Bool)

(assert (=> start!27574 m!299727))

(declare-fun m!299729 () Bool)

(assert (=> start!27574 m!299729))

(declare-fun m!299731 () Bool)

(assert (=> b!284751 m!299731))

(declare-fun m!299733 () Bool)

(assert (=> b!284749 m!299733))

(declare-fun m!299735 () Bool)

(assert (=> b!284747 m!299735))

(declare-fun m!299737 () Bool)

(assert (=> b!284746 m!299737))

(push 1)

(assert (not b!284749))

(assert (not start!27574))

(assert (not b!284750))

(assert (not b!284746))

