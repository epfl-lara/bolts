; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27524 () Bool)

(assert start!27524)

(declare-fun res!146820 () Bool)

(declare-fun e!180362 () Bool)

(assert (=> start!27524 (=> (not res!146820) (not e!180362))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27524 (= res!146820 (validMask!0 mask!3868))))

(assert (=> start!27524 e!180362))

(declare-datatypes ((array!14163 0))(
  ( (array!14164 (arr!6720 (Array (_ BitVec 32) (_ BitVec 64))) (size!7072 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14163)

(declare-fun array_inv!4674 (array!14163) Bool)

(assert (=> start!27524 (array_inv!4674 a!3325)))

(assert (=> start!27524 true))

(declare-fun b!284269 () Bool)

(declare-fun res!146819 () Bool)

(assert (=> b!284269 (=> (not res!146819) (not e!180362))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!284269 (= res!146819 (and (= (size!7072 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7072 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7072 a!3325))))))

(declare-fun b!284270 () Bool)

(declare-fun res!146815 () Bool)

(assert (=> b!284270 (=> (not res!146815) (not e!180362))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284270 (= res!146815 (validKeyInArray!0 k!2581))))

(declare-fun b!284271 () Bool)

(declare-fun res!146817 () Bool)

(assert (=> b!284271 (=> (not res!146817) (not e!180362))))

(declare-fun arrayContainsKey!0 (array!14163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284271 (= res!146817 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284272 () Bool)

(declare-fun e!180363 () Bool)

(assert (=> b!284272 (= e!180363 false)))

(declare-fun lt!140501 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14163 (_ BitVec 32)) Bool)

(assert (=> b!284272 (= lt!140501 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284273 () Bool)

(declare-fun res!146816 () Bool)

(assert (=> b!284273 (=> (not res!146816) (not e!180362))))

(declare-datatypes ((List!4549 0))(
  ( (Nil!4546) (Cons!4545 (h!5218 (_ BitVec 64)) (t!9639 List!4549)) )
))
(declare-fun arrayNoDuplicates!0 (array!14163 (_ BitVec 32) List!4549) Bool)

(assert (=> b!284273 (= res!146816 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4546))))

(declare-fun b!284274 () Bool)

(assert (=> b!284274 (= e!180362 e!180363)))

(declare-fun res!146818 () Bool)

(assert (=> b!284274 (=> (not res!146818) (not e!180363))))

(declare-datatypes ((SeekEntryResult!1889 0))(
  ( (MissingZero!1889 (index!9726 (_ BitVec 32))) (Found!1889 (index!9727 (_ BitVec 32))) (Intermediate!1889 (undefined!2701 Bool) (index!9728 (_ BitVec 32)) (x!27904 (_ BitVec 32))) (Undefined!1889) (MissingVacant!1889 (index!9729 (_ BitVec 32))) )
))
(declare-fun lt!140500 () SeekEntryResult!1889)

(assert (=> b!284274 (= res!146818 (or (= lt!140500 (MissingZero!1889 i!1267)) (= lt!140500 (MissingVacant!1889 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14163 (_ BitVec 32)) SeekEntryResult!1889)

(assert (=> b!284274 (= lt!140500 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27524 res!146820) b!284269))

(assert (= (and b!284269 res!146819) b!284270))

(assert (= (and b!284270 res!146815) b!284273))

(assert (= (and b!284273 res!146816) b!284271))

(assert (= (and b!284271 res!146817) b!284274))

(assert (= (and b!284274 res!146818) b!284272))

(declare-fun m!299363 () Bool)

(assert (=> b!284270 m!299363))

(declare-fun m!299365 () Bool)

(assert (=> b!284273 m!299365))

(declare-fun m!299367 () Bool)

(assert (=> b!284274 m!299367))

(declare-fun m!299369 () Bool)

(assert (=> b!284272 m!299369))

(declare-fun m!299371 () Bool)

(assert (=> b!284271 m!299371))

(declare-fun m!299373 () Bool)

(assert (=> start!27524 m!299373))

(declare-fun m!299375 () Bool)

(assert (=> start!27524 m!299375))

(push 1)

(assert (not start!27524))

(assert (not b!284272))

(assert (not b!284271))

(assert (not b!284270))

(assert (not b!284274))

(assert (not b!284273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

