; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27560 () Bool)

(assert start!27560)

(declare-fun b!284620 () Bool)

(declare-fun e!180524 () Bool)

(assert (=> b!284620 (= e!180524 false)))

(declare-fun lt!140600 () Bool)

(declare-datatypes ((array!14199 0))(
  ( (array!14200 (arr!6738 (Array (_ BitVec 32) (_ BitVec 64))) (size!7090 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14199)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14199 (_ BitVec 32)) Bool)

(assert (=> b!284620 (= lt!140600 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284621 () Bool)

(declare-fun res!147166 () Bool)

(declare-fun e!180525 () Bool)

(assert (=> b!284621 (=> (not res!147166) (not e!180525))))

(declare-datatypes ((List!4567 0))(
  ( (Nil!4564) (Cons!4563 (h!5236 (_ BitVec 64)) (t!9657 List!4567)) )
))
(declare-fun arrayNoDuplicates!0 (array!14199 (_ BitVec 32) List!4567) Bool)

(assert (=> b!284621 (= res!147166 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4564))))

(declare-fun res!147168 () Bool)

(assert (=> start!27560 (=> (not res!147168) (not e!180525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27560 (= res!147168 (validMask!0 mask!3868))))

(assert (=> start!27560 e!180525))

(declare-fun array_inv!4692 (array!14199) Bool)

(assert (=> start!27560 (array_inv!4692 a!3325)))

(assert (=> start!27560 true))

(declare-fun b!284622 () Bool)

(declare-fun res!147170 () Bool)

(assert (=> b!284622 (=> (not res!147170) (not e!180525))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284622 (= res!147170 (validKeyInArray!0 k!2581))))

(declare-fun b!284623 () Bool)

(declare-fun res!147171 () Bool)

(assert (=> b!284623 (=> (not res!147171) (not e!180525))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284623 (= res!147171 (and (= (size!7090 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7090 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7090 a!3325))))))

(declare-fun b!284624 () Bool)

(declare-fun res!147169 () Bool)

(assert (=> b!284624 (=> (not res!147169) (not e!180525))))

(declare-fun arrayContainsKey!0 (array!14199 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284624 (= res!147169 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284625 () Bool)

(assert (=> b!284625 (= e!180525 e!180524)))

(declare-fun res!147167 () Bool)

(assert (=> b!284625 (=> (not res!147167) (not e!180524))))

(declare-datatypes ((SeekEntryResult!1907 0))(
  ( (MissingZero!1907 (index!9798 (_ BitVec 32))) (Found!1907 (index!9799 (_ BitVec 32))) (Intermediate!1907 (undefined!2719 Bool) (index!9800 (_ BitVec 32)) (x!27970 (_ BitVec 32))) (Undefined!1907) (MissingVacant!1907 (index!9801 (_ BitVec 32))) )
))
(declare-fun lt!140599 () SeekEntryResult!1907)

(assert (=> b!284625 (= res!147167 (or (= lt!140599 (MissingZero!1907 i!1267)) (= lt!140599 (MissingVacant!1907 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14199 (_ BitVec 32)) SeekEntryResult!1907)

(assert (=> b!284625 (= lt!140599 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27560 res!147168) b!284623))

(assert (= (and b!284623 res!147171) b!284622))

(assert (= (and b!284622 res!147170) b!284621))

(assert (= (and b!284621 res!147166) b!284624))

(assert (= (and b!284624 res!147169) b!284625))

(assert (= (and b!284625 res!147167) b!284620))

(declare-fun m!299627 () Bool)

(assert (=> start!27560 m!299627))

(declare-fun m!299629 () Bool)

(assert (=> start!27560 m!299629))

(declare-fun m!299631 () Bool)

(assert (=> b!284620 m!299631))

(declare-fun m!299633 () Bool)

(assert (=> b!284622 m!299633))

(declare-fun m!299635 () Bool)

(assert (=> b!284625 m!299635))

(declare-fun m!299637 () Bool)

(assert (=> b!284621 m!299637))

(declare-fun m!299639 () Bool)

(assert (=> b!284624 m!299639))

(push 1)

(assert (not b!284625))

(assert (not start!27560))

(assert (not b!284620))

(assert (not b!284622))

(assert (not b!284621))

