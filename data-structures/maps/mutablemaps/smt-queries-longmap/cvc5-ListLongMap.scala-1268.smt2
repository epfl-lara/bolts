; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26176 () Bool)

(assert start!26176)

(declare-fun b!270195 () Bool)

(declare-fun e!174196 () Bool)

(declare-fun e!174194 () Bool)

(assert (=> b!270195 (= e!174196 e!174194)))

(declare-fun res!134275 () Bool)

(assert (=> b!270195 (=> (not res!134275) (not e!174194))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270195 (= res!134275 (= startIndex!26 i!1267))))

(declare-datatypes ((array!13262 0))(
  ( (array!13263 (arr!6280 (Array (_ BitVec 32) (_ BitVec 64))) (size!6632 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13262)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!135555 () array!13262)

(assert (=> b!270195 (= lt!135555 (array!13263 (store (arr!6280 a!3325) i!1267 k!2581) (size!6632 a!3325)))))

(declare-fun b!270196 () Bool)

(declare-fun res!134280 () Bool)

(declare-fun e!174193 () Bool)

(assert (=> b!270196 (=> (not res!134280) (not e!174193))))

(declare-fun arrayContainsKey!0 (array!13262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270196 (= res!134280 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270197 () Bool)

(declare-fun res!134276 () Bool)

(assert (=> b!270197 (=> (not res!134276) (not e!174193))))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!270197 (= res!134276 (and (= (size!6632 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6632 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6632 a!3325))))))

(declare-fun b!270198 () Bool)

(declare-datatypes ((Unit!8421 0))(
  ( (Unit!8422) )
))
(declare-fun e!174192 () Unit!8421)

(declare-fun Unit!8423 () Unit!8421)

(assert (=> b!270198 (= e!174192 Unit!8423)))

(declare-fun b!270199 () Bool)

(assert (=> b!270199 (= e!174193 e!174196)))

(declare-fun res!134273 () Bool)

(assert (=> b!270199 (=> (not res!134273) (not e!174196))))

(declare-datatypes ((SeekEntryResult!1449 0))(
  ( (MissingZero!1449 (index!7966 (_ BitVec 32))) (Found!1449 (index!7967 (_ BitVec 32))) (Intermediate!1449 (undefined!2261 Bool) (index!7968 (_ BitVec 32)) (x!26278 (_ BitVec 32))) (Undefined!1449) (MissingVacant!1449 (index!7969 (_ BitVec 32))) )
))
(declare-fun lt!135553 () SeekEntryResult!1449)

(assert (=> b!270199 (= res!134273 (or (= lt!135553 (MissingZero!1449 i!1267)) (= lt!135553 (MissingVacant!1449 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13262 (_ BitVec 32)) SeekEntryResult!1449)

(assert (=> b!270199 (= lt!135553 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270200 () Bool)

(assert (=> b!270200 (= e!174194 (not true))))

(assert (=> b!270200 (= (seekEntryOrOpen!0 k!2581 lt!135555 mask!3868) (Found!1449 i!1267))))

(declare-fun lt!135556 () Unit!8421)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13262 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8421)

(assert (=> b!270200 (= lt!135556 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135557 () Unit!8421)

(assert (=> b!270200 (= lt!135557 e!174192)))

(declare-fun c!45512 () Bool)

(assert (=> b!270200 (= c!45512 (bvslt startIndex!26 (bvsub (size!6632 a!3325) #b00000000000000000000000000000001)))))

(declare-fun res!134274 () Bool)

(assert (=> start!26176 (=> (not res!134274) (not e!174193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26176 (= res!134274 (validMask!0 mask!3868))))

(assert (=> start!26176 e!174193))

(declare-fun array_inv!4234 (array!13262) Bool)

(assert (=> start!26176 (array_inv!4234 a!3325)))

(assert (=> start!26176 true))

(declare-fun b!270201 () Bool)

(declare-fun res!134277 () Bool)

(assert (=> b!270201 (=> (not res!134277) (not e!174196))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13262 (_ BitVec 32)) Bool)

(assert (=> b!270201 (= res!134277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270202 () Bool)

(declare-fun lt!135554 () Unit!8421)

(assert (=> b!270202 (= e!174192 lt!135554)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13262 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8421)

(assert (=> b!270202 (= lt!135554 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!270202 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135555 mask!3868)))

(declare-fun b!270203 () Bool)

(declare-fun res!134278 () Bool)

(assert (=> b!270203 (=> (not res!134278) (not e!174193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270203 (= res!134278 (validKeyInArray!0 k!2581))))

(declare-fun b!270204 () Bool)

(declare-fun res!134279 () Bool)

(assert (=> b!270204 (=> (not res!134279) (not e!174193))))

(declare-datatypes ((List!4109 0))(
  ( (Nil!4106) (Cons!4105 (h!4772 (_ BitVec 64)) (t!9199 List!4109)) )
))
(declare-fun arrayNoDuplicates!0 (array!13262 (_ BitVec 32) List!4109) Bool)

(assert (=> b!270204 (= res!134279 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4106))))

(assert (= (and start!26176 res!134274) b!270197))

(assert (= (and b!270197 res!134276) b!270203))

(assert (= (and b!270203 res!134278) b!270204))

(assert (= (and b!270204 res!134279) b!270196))

(assert (= (and b!270196 res!134280) b!270199))

(assert (= (and b!270199 res!134273) b!270201))

(assert (= (and b!270201 res!134277) b!270195))

(assert (= (and b!270195 res!134275) b!270200))

(assert (= (and b!270200 c!45512) b!270202))

(assert (= (and b!270200 (not c!45512)) b!270198))

(declare-fun m!285889 () Bool)

(assert (=> b!270201 m!285889))

(declare-fun m!285891 () Bool)

(assert (=> b!270202 m!285891))

(declare-fun m!285893 () Bool)

(assert (=> b!270202 m!285893))

(declare-fun m!285895 () Bool)

(assert (=> b!270203 m!285895))

(declare-fun m!285897 () Bool)

(assert (=> b!270196 m!285897))

(declare-fun m!285899 () Bool)

(assert (=> b!270195 m!285899))

(declare-fun m!285901 () Bool)

(assert (=> b!270199 m!285901))

(declare-fun m!285903 () Bool)

(assert (=> b!270204 m!285903))

(declare-fun m!285905 () Bool)

(assert (=> start!26176 m!285905))

(declare-fun m!285907 () Bool)

(assert (=> start!26176 m!285907))

(declare-fun m!285909 () Bool)

(assert (=> b!270200 m!285909))

(declare-fun m!285911 () Bool)

(assert (=> b!270200 m!285911))

(push 1)

