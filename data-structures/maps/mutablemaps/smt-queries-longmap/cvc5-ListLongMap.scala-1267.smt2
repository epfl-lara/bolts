; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26170 () Bool)

(assert start!26170)

(declare-fun b!270105 () Bool)

(declare-fun res!134203 () Bool)

(declare-fun e!174147 () Bool)

(assert (=> b!270105 (=> (not res!134203) (not e!174147))))

(declare-datatypes ((array!13256 0))(
  ( (array!13257 (arr!6277 (Array (_ BitVec 32) (_ BitVec 64))) (size!6629 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13256)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13256 (_ BitVec 32)) Bool)

(assert (=> b!270105 (= res!134203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270106 () Bool)

(declare-fun e!174148 () Bool)

(assert (=> b!270106 (= e!174148 e!174147)))

(declare-fun res!134204 () Bool)

(assert (=> b!270106 (=> (not res!134204) (not e!174147))))

(declare-datatypes ((SeekEntryResult!1446 0))(
  ( (MissingZero!1446 (index!7954 (_ BitVec 32))) (Found!1446 (index!7955 (_ BitVec 32))) (Intermediate!1446 (undefined!2258 Bool) (index!7956 (_ BitVec 32)) (x!26267 (_ BitVec 32))) (Undefined!1446) (MissingVacant!1446 (index!7957 (_ BitVec 32))) )
))
(declare-fun lt!135508 () SeekEntryResult!1446)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270106 (= res!134204 (or (= lt!135508 (MissingZero!1446 i!1267)) (= lt!135508 (MissingVacant!1446 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13256 (_ BitVec 32)) SeekEntryResult!1446)

(assert (=> b!270106 (= lt!135508 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!134205 () Bool)

(assert (=> start!26170 (=> (not res!134205) (not e!174148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26170 (= res!134205 (validMask!0 mask!3868))))

(assert (=> start!26170 e!174148))

(declare-fun array_inv!4231 (array!13256) Bool)

(assert (=> start!26170 (array_inv!4231 a!3325)))

(assert (=> start!26170 true))

(declare-fun b!270107 () Bool)

(declare-datatypes ((Unit!8412 0))(
  ( (Unit!8413) )
))
(declare-fun e!174150 () Unit!8412)

(declare-fun Unit!8414 () Unit!8412)

(assert (=> b!270107 (= e!174150 Unit!8414)))

(declare-fun b!270108 () Bool)

(declare-fun res!134201 () Bool)

(assert (=> b!270108 (=> (not res!134201) (not e!174148))))

(declare-fun arrayContainsKey!0 (array!13256 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270108 (= res!134201 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270109 () Bool)

(declare-fun res!134207 () Bool)

(assert (=> b!270109 (=> (not res!134207) (not e!174148))))

(declare-datatypes ((List!4106 0))(
  ( (Nil!4103) (Cons!4102 (h!4769 (_ BitVec 64)) (t!9196 List!4106)) )
))
(declare-fun arrayNoDuplicates!0 (array!13256 (_ BitVec 32) List!4106) Bool)

(assert (=> b!270109 (= res!134207 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4103))))

(declare-fun b!270110 () Bool)

(declare-fun e!174151 () Bool)

(assert (=> b!270110 (= e!174151 (not true))))

(declare-fun lt!135512 () array!13256)

(assert (=> b!270110 (= (seekEntryOrOpen!0 k!2581 lt!135512 mask!3868) (Found!1446 i!1267))))

(declare-fun lt!135510 () Unit!8412)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13256 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8412)

(assert (=> b!270110 (= lt!135510 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135509 () Unit!8412)

(assert (=> b!270110 (= lt!135509 e!174150)))

(declare-fun c!45503 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!270110 (= c!45503 (bvslt startIndex!26 (bvsub (size!6629 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270111 () Bool)

(declare-fun res!134208 () Bool)

(assert (=> b!270111 (=> (not res!134208) (not e!174148))))

(assert (=> b!270111 (= res!134208 (and (= (size!6629 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6629 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6629 a!3325))))))

(declare-fun b!270112 () Bool)

(declare-fun lt!135511 () Unit!8412)

(assert (=> b!270112 (= e!174150 lt!135511)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13256 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8412)

(assert (=> b!270112 (= lt!135511 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!270112 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135512 mask!3868)))

(declare-fun b!270113 () Bool)

(assert (=> b!270113 (= e!174147 e!174151)))

(declare-fun res!134206 () Bool)

(assert (=> b!270113 (=> (not res!134206) (not e!174151))))

(assert (=> b!270113 (= res!134206 (= startIndex!26 i!1267))))

(assert (=> b!270113 (= lt!135512 (array!13257 (store (arr!6277 a!3325) i!1267 k!2581) (size!6629 a!3325)))))

(declare-fun b!270114 () Bool)

(declare-fun res!134202 () Bool)

(assert (=> b!270114 (=> (not res!134202) (not e!174148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270114 (= res!134202 (validKeyInArray!0 k!2581))))

(assert (= (and start!26170 res!134205) b!270111))

(assert (= (and b!270111 res!134208) b!270114))

(assert (= (and b!270114 res!134202) b!270109))

(assert (= (and b!270109 res!134207) b!270108))

(assert (= (and b!270108 res!134201) b!270106))

(assert (= (and b!270106 res!134204) b!270105))

(assert (= (and b!270105 res!134203) b!270113))

(assert (= (and b!270113 res!134206) b!270110))

(assert (= (and b!270110 c!45503) b!270112))

(assert (= (and b!270110 (not c!45503)) b!270107))

(declare-fun m!285817 () Bool)

(assert (=> b!270113 m!285817))

(declare-fun m!285819 () Bool)

(assert (=> b!270106 m!285819))

(declare-fun m!285821 () Bool)

(assert (=> b!270108 m!285821))

(declare-fun m!285823 () Bool)

(assert (=> b!270110 m!285823))

(declare-fun m!285825 () Bool)

(assert (=> b!270110 m!285825))

(declare-fun m!285827 () Bool)

(assert (=> b!270114 m!285827))

(declare-fun m!285829 () Bool)

(assert (=> b!270109 m!285829))

(declare-fun m!285831 () Bool)

(assert (=> b!270105 m!285831))

(declare-fun m!285833 () Bool)

(assert (=> start!26170 m!285833))

(declare-fun m!285835 () Bool)

(assert (=> start!26170 m!285835))

(declare-fun m!285837 () Bool)

(assert (=> b!270112 m!285837))

(declare-fun m!285839 () Bool)

(assert (=> b!270112 m!285839))

(push 1)

