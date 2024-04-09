; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26164 () Bool)

(assert start!26164)

(declare-fun b!270015 () Bool)

(declare-fun e!174102 () Bool)

(declare-fun e!174103 () Bool)

(assert (=> b!270015 (= e!174102 e!174103)))

(declare-fun res!134130 () Bool)

(assert (=> b!270015 (=> (not res!134130) (not e!174103))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270015 (= res!134130 (= startIndex!26 i!1267))))

(declare-datatypes ((array!13250 0))(
  ( (array!13251 (arr!6274 (Array (_ BitVec 32) (_ BitVec 64))) (size!6626 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13250)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!135463 () array!13250)

(assert (=> b!270015 (= lt!135463 (array!13251 (store (arr!6274 a!3325) i!1267 k!2581) (size!6626 a!3325)))))

(declare-fun b!270017 () Bool)

(declare-fun res!134131 () Bool)

(assert (=> b!270017 (=> (not res!134131) (not e!174102))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13250 (_ BitVec 32)) Bool)

(assert (=> b!270017 (= res!134131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270018 () Bool)

(assert (=> b!270018 (= e!174103 (not true))))

(declare-datatypes ((SeekEntryResult!1443 0))(
  ( (MissingZero!1443 (index!7942 (_ BitVec 32))) (Found!1443 (index!7943 (_ BitVec 32))) (Intermediate!1443 (undefined!2255 Bool) (index!7944 (_ BitVec 32)) (x!26256 (_ BitVec 32))) (Undefined!1443) (MissingVacant!1443 (index!7945 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13250 (_ BitVec 32)) SeekEntryResult!1443)

(assert (=> b!270018 (= (seekEntryOrOpen!0 k!2581 lt!135463 mask!3868) (Found!1443 i!1267))))

(declare-datatypes ((Unit!8403 0))(
  ( (Unit!8404) )
))
(declare-fun lt!135467 () Unit!8403)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13250 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8403)

(assert (=> b!270018 (= lt!135467 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135466 () Unit!8403)

(declare-fun e!174104 () Unit!8403)

(assert (=> b!270018 (= lt!135466 e!174104)))

(declare-fun c!45494 () Bool)

(assert (=> b!270018 (= c!45494 (bvslt startIndex!26 (bvsub (size!6626 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270019 () Bool)

(declare-fun res!134132 () Bool)

(declare-fun e!174105 () Bool)

(assert (=> b!270019 (=> (not res!134132) (not e!174105))))

(assert (=> b!270019 (= res!134132 (and (= (size!6626 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6626 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6626 a!3325))))))

(declare-fun b!270020 () Bool)

(assert (=> b!270020 (= e!174105 e!174102)))

(declare-fun res!134129 () Bool)

(assert (=> b!270020 (=> (not res!134129) (not e!174102))))

(declare-fun lt!135464 () SeekEntryResult!1443)

(assert (=> b!270020 (= res!134129 (or (= lt!135464 (MissingZero!1443 i!1267)) (= lt!135464 (MissingVacant!1443 i!1267))))))

(assert (=> b!270020 (= lt!135464 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270021 () Bool)

(declare-fun res!134136 () Bool)

(assert (=> b!270021 (=> (not res!134136) (not e!174105))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270021 (= res!134136 (validKeyInArray!0 k!2581))))

(declare-fun b!270022 () Bool)

(declare-fun Unit!8405 () Unit!8403)

(assert (=> b!270022 (= e!174104 Unit!8405)))

(declare-fun b!270023 () Bool)

(declare-fun res!134133 () Bool)

(assert (=> b!270023 (=> (not res!134133) (not e!174105))))

(declare-datatypes ((List!4103 0))(
  ( (Nil!4100) (Cons!4099 (h!4766 (_ BitVec 64)) (t!9193 List!4103)) )
))
(declare-fun arrayNoDuplicates!0 (array!13250 (_ BitVec 32) List!4103) Bool)

(assert (=> b!270023 (= res!134133 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4100))))

(declare-fun b!270024 () Bool)

(declare-fun lt!135465 () Unit!8403)

(assert (=> b!270024 (= e!174104 lt!135465)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13250 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8403)

(assert (=> b!270024 (= lt!135465 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!270024 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135463 mask!3868)))

(declare-fun res!134135 () Bool)

(assert (=> start!26164 (=> (not res!134135) (not e!174105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26164 (= res!134135 (validMask!0 mask!3868))))

(assert (=> start!26164 e!174105))

(declare-fun array_inv!4228 (array!13250) Bool)

(assert (=> start!26164 (array_inv!4228 a!3325)))

(assert (=> start!26164 true))

(declare-fun b!270016 () Bool)

(declare-fun res!134134 () Bool)

(assert (=> b!270016 (=> (not res!134134) (not e!174105))))

(declare-fun arrayContainsKey!0 (array!13250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270016 (= res!134134 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26164 res!134135) b!270019))

(assert (= (and b!270019 res!134132) b!270021))

(assert (= (and b!270021 res!134136) b!270023))

(assert (= (and b!270023 res!134133) b!270016))

(assert (= (and b!270016 res!134134) b!270020))

(assert (= (and b!270020 res!134129) b!270017))

(assert (= (and b!270017 res!134131) b!270015))

(assert (= (and b!270015 res!134130) b!270018))

(assert (= (and b!270018 c!45494) b!270024))

(assert (= (and b!270018 (not c!45494)) b!270022))

(declare-fun m!285745 () Bool)

(assert (=> b!270024 m!285745))

(declare-fun m!285747 () Bool)

(assert (=> b!270024 m!285747))

(declare-fun m!285749 () Bool)

(assert (=> b!270020 m!285749))

(declare-fun m!285751 () Bool)

(assert (=> start!26164 m!285751))

(declare-fun m!285753 () Bool)

(assert (=> start!26164 m!285753))

(declare-fun m!285755 () Bool)

(assert (=> b!270017 m!285755))

(declare-fun m!285757 () Bool)

(assert (=> b!270021 m!285757))

(declare-fun m!285759 () Bool)

(assert (=> b!270016 m!285759))

(declare-fun m!285761 () Bool)

(assert (=> b!270015 m!285761))

(declare-fun m!285763 () Bool)

(assert (=> b!270023 m!285763))

(declare-fun m!285765 () Bool)

(assert (=> b!270018 m!285765))

(declare-fun m!285767 () Bool)

(assert (=> b!270018 m!285767))

(push 1)

