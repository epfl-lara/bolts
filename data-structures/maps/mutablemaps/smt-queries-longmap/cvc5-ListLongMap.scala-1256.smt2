; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26104 () Bool)

(assert start!26104)

(declare-fun b!269115 () Bool)

(declare-datatypes ((Unit!8313 0))(
  ( (Unit!8314) )
))
(declare-fun e!173714 () Unit!8313)

(declare-fun lt!135137 () Unit!8313)

(assert (=> b!269115 (= e!173714 lt!135137)))

(declare-datatypes ((array!13190 0))(
  ( (array!13191 (arr!6244 (Array (_ BitVec 32) (_ BitVec 64))) (size!6596 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13190)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13190 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8313)

(assert (=> b!269115 (= lt!135137 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13190 (_ BitVec 32)) Bool)

(assert (=> b!269115 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13191 (store (arr!6244 a!3325) i!1267 k!2581) (size!6596 a!3325)) mask!3868)))

(declare-fun b!269116 () Bool)

(declare-fun e!173715 () Bool)

(declare-fun e!173713 () Bool)

(assert (=> b!269116 (= e!173715 e!173713)))

(declare-fun res!133409 () Bool)

(assert (=> b!269116 (=> (not res!133409) (not e!173713))))

(declare-datatypes ((SeekEntryResult!1413 0))(
  ( (MissingZero!1413 (index!7822 (_ BitVec 32))) (Found!1413 (index!7823 (_ BitVec 32))) (Intermediate!1413 (undefined!2225 Bool) (index!7824 (_ BitVec 32)) (x!26146 (_ BitVec 32))) (Undefined!1413) (MissingVacant!1413 (index!7825 (_ BitVec 32))) )
))
(declare-fun lt!135135 () SeekEntryResult!1413)

(assert (=> b!269116 (= res!133409 (or (= lt!135135 (MissingZero!1413 i!1267)) (= lt!135135 (MissingVacant!1413 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13190 (_ BitVec 32)) SeekEntryResult!1413)

(assert (=> b!269116 (= lt!135135 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269118 () Bool)

(assert (=> b!269118 (= e!173713 false)))

(declare-fun lt!135136 () Unit!8313)

(assert (=> b!269118 (= lt!135136 e!173714)))

(declare-fun c!45404 () Bool)

(assert (=> b!269118 (= c!45404 (bvslt startIndex!26 (bvsub (size!6596 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269119 () Bool)

(declare-fun res!133414 () Bool)

(assert (=> b!269119 (=> (not res!133414) (not e!173713))))

(assert (=> b!269119 (= res!133414 (= startIndex!26 i!1267))))

(declare-fun b!269120 () Bool)

(declare-fun res!133416 () Bool)

(assert (=> b!269120 (=> (not res!133416) (not e!173715))))

(declare-datatypes ((List!4073 0))(
  ( (Nil!4070) (Cons!4069 (h!4736 (_ BitVec 64)) (t!9163 List!4073)) )
))
(declare-fun arrayNoDuplicates!0 (array!13190 (_ BitVec 32) List!4073) Bool)

(assert (=> b!269120 (= res!133416 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4070))))

(declare-fun b!269121 () Bool)

(declare-fun res!133415 () Bool)

(assert (=> b!269121 (=> (not res!133415) (not e!173715))))

(declare-fun arrayContainsKey!0 (array!13190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269121 (= res!133415 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269122 () Bool)

(declare-fun res!133410 () Bool)

(assert (=> b!269122 (=> (not res!133410) (not e!173715))))

(assert (=> b!269122 (= res!133410 (and (= (size!6596 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6596 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6596 a!3325))))))

(declare-fun b!269117 () Bool)

(declare-fun res!133412 () Bool)

(assert (=> b!269117 (=> (not res!133412) (not e!173713))))

(assert (=> b!269117 (= res!133412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!133413 () Bool)

(assert (=> start!26104 (=> (not res!133413) (not e!173715))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26104 (= res!133413 (validMask!0 mask!3868))))

(assert (=> start!26104 e!173715))

(declare-fun array_inv!4198 (array!13190) Bool)

(assert (=> start!26104 (array_inv!4198 a!3325)))

(assert (=> start!26104 true))

(declare-fun b!269123 () Bool)

(declare-fun Unit!8315 () Unit!8313)

(assert (=> b!269123 (= e!173714 Unit!8315)))

(declare-fun b!269124 () Bool)

(declare-fun res!133411 () Bool)

(assert (=> b!269124 (=> (not res!133411) (not e!173715))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269124 (= res!133411 (validKeyInArray!0 k!2581))))

(assert (= (and start!26104 res!133413) b!269122))

(assert (= (and b!269122 res!133410) b!269124))

(assert (= (and b!269124 res!133411) b!269120))

(assert (= (and b!269120 res!133416) b!269121))

(assert (= (and b!269121 res!133415) b!269116))

(assert (= (and b!269116 res!133409) b!269117))

(assert (= (and b!269117 res!133412) b!269119))

(assert (= (and b!269119 res!133414) b!269118))

(assert (= (and b!269118 c!45404) b!269115))

(assert (= (and b!269118 (not c!45404)) b!269123))

(declare-fun m!285109 () Bool)

(assert (=> b!269116 m!285109))

(declare-fun m!285111 () Bool)

(assert (=> start!26104 m!285111))

(declare-fun m!285113 () Bool)

(assert (=> start!26104 m!285113))

(declare-fun m!285115 () Bool)

(assert (=> b!269117 m!285115))

(declare-fun m!285117 () Bool)

(assert (=> b!269120 m!285117))

(declare-fun m!285119 () Bool)

(assert (=> b!269121 m!285119))

(declare-fun m!285121 () Bool)

(assert (=> b!269124 m!285121))

(declare-fun m!285123 () Bool)

(assert (=> b!269115 m!285123))

(declare-fun m!285125 () Bool)

(assert (=> b!269115 m!285125))

(declare-fun m!285127 () Bool)

(assert (=> b!269115 m!285127))

(push 1)

