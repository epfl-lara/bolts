; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27514 () Bool)

(assert start!27514)

(declare-fun b!284179 () Bool)

(declare-fun res!146727 () Bool)

(declare-fun e!180318 () Bool)

(assert (=> b!284179 (=> (not res!146727) (not e!180318))))

(declare-datatypes ((array!14153 0))(
  ( (array!14154 (arr!6715 (Array (_ BitVec 32) (_ BitVec 64))) (size!7067 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14153)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!284179 (= res!146727 (and (= (size!7067 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7067 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7067 a!3325))))))

(declare-fun b!284180 () Bool)

(declare-fun e!180317 () Bool)

(assert (=> b!284180 (= e!180318 e!180317)))

(declare-fun res!146728 () Bool)

(assert (=> b!284180 (=> (not res!146728) (not e!180317))))

(declare-datatypes ((SeekEntryResult!1884 0))(
  ( (MissingZero!1884 (index!9706 (_ BitVec 32))) (Found!1884 (index!9707 (_ BitVec 32))) (Intermediate!1884 (undefined!2696 Bool) (index!9708 (_ BitVec 32)) (x!27891 (_ BitVec 32))) (Undefined!1884) (MissingVacant!1884 (index!9709 (_ BitVec 32))) )
))
(declare-fun lt!140471 () SeekEntryResult!1884)

(assert (=> b!284180 (= res!146728 (or (= lt!140471 (MissingZero!1884 i!1267)) (= lt!140471 (MissingVacant!1884 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14153 (_ BitVec 32)) SeekEntryResult!1884)

(assert (=> b!284180 (= lt!140471 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!284181 () Bool)

(declare-fun res!146725 () Bool)

(assert (=> b!284181 (=> (not res!146725) (not e!180318))))

(declare-datatypes ((List!4544 0))(
  ( (Nil!4541) (Cons!4540 (h!5213 (_ BitVec 64)) (t!9634 List!4544)) )
))
(declare-fun arrayNoDuplicates!0 (array!14153 (_ BitVec 32) List!4544) Bool)

(assert (=> b!284181 (= res!146725 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4541))))

(declare-fun res!146730 () Bool)

(assert (=> start!27514 (=> (not res!146730) (not e!180318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27514 (= res!146730 (validMask!0 mask!3868))))

(assert (=> start!27514 e!180318))

(declare-fun array_inv!4669 (array!14153) Bool)

(assert (=> start!27514 (array_inv!4669 a!3325)))

(assert (=> start!27514 true))

(declare-fun b!284182 () Bool)

(declare-fun res!146726 () Bool)

(assert (=> b!284182 (=> (not res!146726) (not e!180318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!284182 (= res!146726 (validKeyInArray!0 k!2581))))

(declare-fun b!284183 () Bool)

(assert (=> b!284183 (= e!180317 false)))

(declare-fun lt!140470 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14153 (_ BitVec 32)) Bool)

(assert (=> b!284183 (= lt!140470 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!284184 () Bool)

(declare-fun res!146729 () Bool)

(assert (=> b!284184 (=> (not res!146729) (not e!180318))))

(declare-fun arrayContainsKey!0 (array!14153 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!284184 (= res!146729 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27514 res!146730) b!284179))

(assert (= (and b!284179 res!146727) b!284182))

(assert (= (and b!284182 res!146726) b!284181))

(assert (= (and b!284181 res!146725) b!284184))

(assert (= (and b!284184 res!146729) b!284180))

(assert (= (and b!284180 res!146728) b!284183))

(declare-fun m!299293 () Bool)

(assert (=> b!284182 m!299293))

(declare-fun m!299295 () Bool)

(assert (=> b!284184 m!299295))

(declare-fun m!299297 () Bool)

(assert (=> b!284180 m!299297))

(declare-fun m!299299 () Bool)

(assert (=> b!284181 m!299299))

(declare-fun m!299301 () Bool)

(assert (=> b!284183 m!299301))

(declare-fun m!299303 () Bool)

(assert (=> start!27514 m!299303))

(declare-fun m!299305 () Bool)

(assert (=> start!27514 m!299305))

(push 1)

(assert (not b!284184))

(assert (not b!284183))

(assert (not b!284181))

(assert (not b!284180))

(assert (not b!284182))

