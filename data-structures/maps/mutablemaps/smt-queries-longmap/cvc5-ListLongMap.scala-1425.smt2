; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27586 () Bool)

(assert start!27586)

(declare-fun b!284860 () Bool)

(declare-fun res!147413 () Bool)

(declare-fun e!180641 () Bool)

(assert (=> b!284860 (=> (not res!147413) (not e!180641))))

(declare-datatypes ((array!14225 0))(
  ( (array!14226 (arr!6751 (Array (_ BitVec 32) (_ BitVec 64))) (size!7103 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14225)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284860 (= res!147413 (not (validKeyInArray!0 (select (arr!6751 a!3325) startIndex!26))))))

(declare-fun b!284861 () Bool)

(declare-fun res!147414 () Bool)

(declare-fun e!180642 () Bool)

(assert (=> b!284861 (=> (not res!147414) (not e!180642))))

(declare-datatypes ((List!4580 0))(
  ( (Nil!4577) (Cons!4576 (h!5249 (_ BitVec 64)) (t!9670 List!4580)) )
))
(declare-fun arrayNoDuplicates!0 (array!14225 (_ BitVec 32) List!4580) Bool)

(assert (=> b!284861 (= res!147414 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4577))))

(declare-fun b!284862 () Bool)

(declare-fun res!147412 () Bool)

(assert (=> b!284862 (=> (not res!147412) (not e!180642))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284862 (= res!147412 (and (= (size!7103 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7103 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7103 a!3325))))))

(declare-fun b!284863 () Bool)

(declare-fun res!147409 () Bool)

(assert (=> b!284863 (=> (not res!147409) (not e!180641))))

(assert (=> b!284863 (= res!147409 (not (= startIndex!26 i!1267)))))

(declare-fun res!147408 () Bool)

(assert (=> start!27586 (=> (not res!147408) (not e!180642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27586 (= res!147408 (validMask!0 mask!3868))))

(assert (=> start!27586 e!180642))

(declare-fun array_inv!4705 (array!14225) Bool)

(assert (=> start!27586 (array_inv!4705 a!3325)))

(assert (=> start!27586 true))

(declare-fun b!284864 () Bool)

(assert (=> b!284864 (= e!180642 e!180641)))

(declare-fun res!147411 () Bool)

(assert (=> b!284864 (=> (not res!147411) (not e!180641))))

(declare-datatypes ((SeekEntryResult!1920 0))(
  ( (MissingZero!1920 (index!9850 (_ BitVec 32))) (Found!1920 (index!9851 (_ BitVec 32))) (Intermediate!1920 (undefined!2732 Bool) (index!9852 (_ BitVec 32)) (x!28023 (_ BitVec 32))) (Undefined!1920) (MissingVacant!1920 (index!9853 (_ BitVec 32))) )
))
(declare-fun lt!140675 () SeekEntryResult!1920)

(assert (=> b!284864 (= res!147411 (or (= lt!140675 (MissingZero!1920 i!1267)) (= lt!140675 (MissingVacant!1920 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14225 (_ BitVec 32)) SeekEntryResult!1920)

(assert (=> b!284864 (= lt!140675 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284865 () Bool)

(declare-fun res!147406 () Bool)

(assert (=> b!284865 (=> (not res!147406) (not e!180641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14225 (_ BitVec 32)) Bool)

(assert (=> b!284865 (= res!147406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284866 () Bool)

(declare-fun res!147410 () Bool)

(assert (=> b!284866 (=> (not res!147410) (not e!180642))))

(declare-fun arrayContainsKey!0 (array!14225 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284866 (= res!147410 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!284867 () Bool)

(declare-fun res!147407 () Bool)

(assert (=> b!284867 (=> (not res!147407) (not e!180642))))

(assert (=> b!284867 (= res!147407 (validKeyInArray!0 k!2581))))

(declare-fun b!284868 () Bool)

(assert (=> b!284868 (= e!180641 (and (bvslt startIndex!26 (bvsub (size!7103 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000) (bvsge (bvsub (size!7103 a!3325) (bvadd #b00000000000000000000000000000001 startIndex!26)) (bvsub (size!7103 a!3325) startIndex!26))))))

(assert (= (and start!27586 res!147408) b!284862))

(assert (= (and b!284862 res!147412) b!284867))

(assert (= (and b!284867 res!147407) b!284861))

(assert (= (and b!284861 res!147414) b!284866))

(assert (= (and b!284866 res!147410) b!284864))

(assert (= (and b!284864 res!147411) b!284865))

(assert (= (and b!284865 res!147406) b!284863))

(assert (= (and b!284863 res!147409) b!284860))

(assert (= (and b!284860 res!147413) b!284868))

(declare-fun m!299809 () Bool)

(assert (=> b!284867 m!299809))

(declare-fun m!299811 () Bool)

(assert (=> b!284860 m!299811))

(assert (=> b!284860 m!299811))

(declare-fun m!299813 () Bool)

(assert (=> b!284860 m!299813))

(declare-fun m!299815 () Bool)

(assert (=> b!284861 m!299815))

(declare-fun m!299817 () Bool)

(assert (=> b!284865 m!299817))

(declare-fun m!299819 () Bool)

(assert (=> start!27586 m!299819))

(declare-fun m!299821 () Bool)

(assert (=> start!27586 m!299821))

(declare-fun m!299823 () Bool)

(assert (=> b!284866 m!299823))

(declare-fun m!299825 () Bool)

(assert (=> b!284864 m!299825))

(push 1)

(assert (not b!284864))

(assert (not b!284867))

(assert (not b!284865))

(assert (not b!284860))

(assert (not start!27586))

(assert (not b!284861))

(assert (not b!284866))

(check-sat)

(pop 1)

(push 1)

(check-sat)

