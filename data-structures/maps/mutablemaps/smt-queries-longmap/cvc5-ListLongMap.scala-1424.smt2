; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27580 () Bool)

(assert start!27580)

(declare-fun b!284800 () Bool)

(declare-fun res!147350 () Bool)

(declare-fun e!180615 () Bool)

(assert (=> b!284800 (=> (not res!147350) (not e!180615))))

(declare-datatypes ((array!14219 0))(
  ( (array!14220 (arr!6748 (Array (_ BitVec 32) (_ BitVec 64))) (size!7100 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14219)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284800 (= res!147350 (and (= (size!7100 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7100 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7100 a!3325))))))

(declare-fun res!147351 () Bool)

(assert (=> start!27580 (=> (not res!147351) (not e!180615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27580 (= res!147351 (validMask!0 mask!3868))))

(assert (=> start!27580 e!180615))

(declare-fun array_inv!4702 (array!14219) Bool)

(assert (=> start!27580 (array_inv!4702 a!3325)))

(assert (=> start!27580 true))

(declare-fun b!284801 () Bool)

(declare-fun e!180614 () Bool)

(assert (=> b!284801 (= e!180615 e!180614)))

(declare-fun res!147349 () Bool)

(assert (=> b!284801 (=> (not res!147349) (not e!180614))))

(declare-datatypes ((SeekEntryResult!1917 0))(
  ( (MissingZero!1917 (index!9838 (_ BitVec 32))) (Found!1917 (index!9839 (_ BitVec 32))) (Intermediate!1917 (undefined!2729 Bool) (index!9840 (_ BitVec 32)) (x!28012 (_ BitVec 32))) (Undefined!1917) (MissingVacant!1917 (index!9841 (_ BitVec 32))) )
))
(declare-fun lt!140660 () SeekEntryResult!1917)

(assert (=> b!284801 (= res!147349 (or (= lt!140660 (MissingZero!1917 i!1267)) (= lt!140660 (MissingVacant!1917 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14219 (_ BitVec 32)) SeekEntryResult!1917)

(assert (=> b!284801 (= lt!140660 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284802 () Bool)

(declare-fun res!147346 () Bool)

(assert (=> b!284802 (=> (not res!147346) (not e!180615))))

(declare-datatypes ((List!4577 0))(
  ( (Nil!4574) (Cons!4573 (h!5246 (_ BitVec 64)) (t!9667 List!4577)) )
))
(declare-fun arrayNoDuplicates!0 (array!14219 (_ BitVec 32) List!4577) Bool)

(assert (=> b!284802 (= res!147346 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4574))))

(declare-fun b!284803 () Bool)

(declare-fun res!147348 () Bool)

(assert (=> b!284803 (=> (not res!147348) (not e!180615))))

(declare-fun arrayContainsKey!0 (array!14219 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284803 (= res!147348 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284804 () Bool)

(declare-fun res!147347 () Bool)

(assert (=> b!284804 (=> (not res!147347) (not e!180615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284804 (= res!147347 (validKeyInArray!0 k!2581))))

(declare-fun b!284805 () Bool)

(assert (=> b!284805 (= e!180614 false)))

(declare-fun lt!140659 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14219 (_ BitVec 32)) Bool)

(assert (=> b!284805 (= lt!140659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27580 res!147351) b!284800))

(assert (= (and b!284800 res!147350) b!284804))

(assert (= (and b!284804 res!147347) b!284802))

(assert (= (and b!284802 res!147346) b!284803))

(assert (= (and b!284803 res!147348) b!284801))

(assert (= (and b!284801 res!147349) b!284805))

(declare-fun m!299767 () Bool)

(assert (=> b!284803 m!299767))

(declare-fun m!299769 () Bool)

(assert (=> b!284802 m!299769))

(declare-fun m!299771 () Bool)

(assert (=> start!27580 m!299771))

(declare-fun m!299773 () Bool)

(assert (=> start!27580 m!299773))

(declare-fun m!299775 () Bool)

(assert (=> b!284805 m!299775))

(declare-fun m!299777 () Bool)

(assert (=> b!284804 m!299777))

(declare-fun m!299779 () Bool)

(assert (=> b!284801 m!299779))

(push 1)

(assert (not b!284805))

(assert (not b!284803))

(assert (not b!284802))

