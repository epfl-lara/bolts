; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27554 () Bool)

(assert start!27554)

(declare-fun res!147114 () Bool)

(declare-fun e!180497 () Bool)

(assert (=> start!27554 (=> (not res!147114) (not e!180497))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27554 (= res!147114 (validMask!0 mask!3868))))

(assert (=> start!27554 e!180497))

(declare-datatypes ((array!14193 0))(
  ( (array!14194 (arr!6735 (Array (_ BitVec 32) (_ BitVec 64))) (size!7087 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14193)

(declare-fun array_inv!4689 (array!14193) Bool)

(assert (=> start!27554 (array_inv!4689 a!3325)))

(assert (=> start!27554 true))

(declare-fun b!284566 () Bool)

(declare-fun res!147112 () Bool)

(assert (=> b!284566 (=> (not res!147112) (not e!180497))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284566 (= res!147112 (validKeyInArray!0 k!2581))))

(declare-fun b!284567 () Bool)

(declare-fun res!147116 () Bool)

(assert (=> b!284567 (=> (not res!147116) (not e!180497))))

(declare-fun arrayContainsKey!0 (array!14193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284567 (= res!147116 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284568 () Bool)

(declare-fun res!147113 () Bool)

(assert (=> b!284568 (=> (not res!147113) (not e!180497))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284568 (= res!147113 (and (= (size!7087 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7087 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7087 a!3325))))))

(declare-fun b!284569 () Bool)

(declare-fun e!180499 () Bool)

(assert (=> b!284569 (= e!180499 false)))

(declare-fun lt!140581 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14193 (_ BitVec 32)) Bool)

(assert (=> b!284569 (= lt!140581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284570 () Bool)

(assert (=> b!284570 (= e!180497 e!180499)))

(declare-fun res!147117 () Bool)

(assert (=> b!284570 (=> (not res!147117) (not e!180499))))

(declare-datatypes ((SeekEntryResult!1904 0))(
  ( (MissingZero!1904 (index!9786 (_ BitVec 32))) (Found!1904 (index!9787 (_ BitVec 32))) (Intermediate!1904 (undefined!2716 Bool) (index!9788 (_ BitVec 32)) (x!27959 (_ BitVec 32))) (Undefined!1904) (MissingVacant!1904 (index!9789 (_ BitVec 32))) )
))
(declare-fun lt!140582 () SeekEntryResult!1904)

(assert (=> b!284570 (= res!147117 (or (= lt!140582 (MissingZero!1904 i!1267)) (= lt!140582 (MissingVacant!1904 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14193 (_ BitVec 32)) SeekEntryResult!1904)

(assert (=> b!284570 (= lt!140582 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284571 () Bool)

(declare-fun res!147115 () Bool)

(assert (=> b!284571 (=> (not res!147115) (not e!180497))))

(declare-datatypes ((List!4564 0))(
  ( (Nil!4561) (Cons!4560 (h!5233 (_ BitVec 64)) (t!9654 List!4564)) )
))
(declare-fun arrayNoDuplicates!0 (array!14193 (_ BitVec 32) List!4564) Bool)

(assert (=> b!284571 (= res!147115 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4561))))

(assert (= (and start!27554 res!147114) b!284568))

(assert (= (and b!284568 res!147113) b!284566))

(assert (= (and b!284566 res!147112) b!284571))

(assert (= (and b!284571 res!147115) b!284567))

(assert (= (and b!284567 res!147116) b!284570))

(assert (= (and b!284570 res!147117) b!284569))

(declare-fun m!299585 () Bool)

(assert (=> b!284570 m!299585))

(declare-fun m!299587 () Bool)

(assert (=> start!27554 m!299587))

(declare-fun m!299589 () Bool)

(assert (=> start!27554 m!299589))

(declare-fun m!299591 () Bool)

(assert (=> b!284571 m!299591))

(declare-fun m!299593 () Bool)

(assert (=> b!284567 m!299593))

(declare-fun m!299595 () Bool)

(assert (=> b!284569 m!299595))

(declare-fun m!299597 () Bool)

(assert (=> b!284566 m!299597))

(push 1)

(assert (not b!284571))

(assert (not b!284570))

(assert (not b!284566))

(assert (not b!284569))

(assert (not b!284567))

