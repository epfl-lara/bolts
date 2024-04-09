; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26098 () Bool)

(assert start!26098)

(declare-fun b!269025 () Bool)

(declare-fun e!173677 () Bool)

(assert (=> b!269025 (= e!173677 false)))

(declare-datatypes ((Unit!8304 0))(
  ( (Unit!8305) )
))
(declare-fun lt!135109 () Unit!8304)

(declare-fun e!173680 () Unit!8304)

(assert (=> b!269025 (= lt!135109 e!173680)))

(declare-fun c!45395 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!13184 0))(
  ( (array!13185 (arr!6241 (Array (_ BitVec 32) (_ BitVec 64))) (size!6593 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13184)

(assert (=> b!269025 (= c!45395 (bvslt startIndex!26 (bvsub (size!6593 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269026 () Bool)

(declare-fun lt!135110 () Unit!8304)

(assert (=> b!269026 (= e!173680 lt!135110)))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13184 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8304)

(assert (=> b!269026 (= lt!135110 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13184 (_ BitVec 32)) Bool)

(assert (=> b!269026 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13185 (store (arr!6241 a!3325) i!1267 k!2581) (size!6593 a!3325)) mask!3868)))

(declare-fun b!269027 () Bool)

(declare-fun res!133344 () Bool)

(declare-fun e!173679 () Bool)

(assert (=> b!269027 (=> (not res!133344) (not e!173679))))

(declare-datatypes ((List!4070 0))(
  ( (Nil!4067) (Cons!4066 (h!4733 (_ BitVec 64)) (t!9160 List!4070)) )
))
(declare-fun arrayNoDuplicates!0 (array!13184 (_ BitVec 32) List!4070) Bool)

(assert (=> b!269027 (= res!133344 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4067))))

(declare-fun res!133339 () Bool)

(assert (=> start!26098 (=> (not res!133339) (not e!173679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26098 (= res!133339 (validMask!0 mask!3868))))

(assert (=> start!26098 e!173679))

(declare-fun array_inv!4195 (array!13184) Bool)

(assert (=> start!26098 (array_inv!4195 a!3325)))

(assert (=> start!26098 true))

(declare-fun b!269028 () Bool)

(declare-fun res!133342 () Bool)

(assert (=> b!269028 (=> (not res!133342) (not e!173679))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269028 (= res!133342 (validKeyInArray!0 k!2581))))

(declare-fun b!269029 () Bool)

(declare-fun res!133340 () Bool)

(assert (=> b!269029 (=> (not res!133340) (not e!173677))))

(assert (=> b!269029 (= res!133340 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269030 () Bool)

(declare-fun res!133338 () Bool)

(assert (=> b!269030 (=> (not res!133338) (not e!173677))))

(assert (=> b!269030 (= res!133338 (= startIndex!26 i!1267))))

(declare-fun b!269031 () Bool)

(declare-fun Unit!8306 () Unit!8304)

(assert (=> b!269031 (= e!173680 Unit!8306)))

(declare-fun b!269032 () Bool)

(declare-fun res!133341 () Bool)

(assert (=> b!269032 (=> (not res!133341) (not e!173679))))

(declare-fun arrayContainsKey!0 (array!13184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269032 (= res!133341 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269033 () Bool)

(declare-fun res!133337 () Bool)

(assert (=> b!269033 (=> (not res!133337) (not e!173679))))

(assert (=> b!269033 (= res!133337 (and (= (size!6593 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6593 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6593 a!3325))))))

(declare-fun b!269034 () Bool)

(assert (=> b!269034 (= e!173679 e!173677)))

(declare-fun res!133343 () Bool)

(assert (=> b!269034 (=> (not res!133343) (not e!173677))))

(declare-datatypes ((SeekEntryResult!1410 0))(
  ( (MissingZero!1410 (index!7810 (_ BitVec 32))) (Found!1410 (index!7811 (_ BitVec 32))) (Intermediate!1410 (undefined!2222 Bool) (index!7812 (_ BitVec 32)) (x!26135 (_ BitVec 32))) (Undefined!1410) (MissingVacant!1410 (index!7813 (_ BitVec 32))) )
))
(declare-fun lt!135108 () SeekEntryResult!1410)

(assert (=> b!269034 (= res!133343 (or (= lt!135108 (MissingZero!1410 i!1267)) (= lt!135108 (MissingVacant!1410 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13184 (_ BitVec 32)) SeekEntryResult!1410)

(assert (=> b!269034 (= lt!135108 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26098 res!133339) b!269033))

(assert (= (and b!269033 res!133337) b!269028))

(assert (= (and b!269028 res!133342) b!269027))

(assert (= (and b!269027 res!133344) b!269032))

(assert (= (and b!269032 res!133341) b!269034))

(assert (= (and b!269034 res!133343) b!269029))

(assert (= (and b!269029 res!133340) b!269030))

(assert (= (and b!269030 res!133338) b!269025))

(assert (= (and b!269025 c!45395) b!269026))

(assert (= (and b!269025 (not c!45395)) b!269031))

(declare-fun m!285049 () Bool)

(assert (=> b!269028 m!285049))

(declare-fun m!285051 () Bool)

(assert (=> b!269027 m!285051))

(declare-fun m!285053 () Bool)

(assert (=> b!269034 m!285053))

(declare-fun m!285055 () Bool)

(assert (=> b!269032 m!285055))

(declare-fun m!285057 () Bool)

(assert (=> start!26098 m!285057))

(declare-fun m!285059 () Bool)

(assert (=> start!26098 m!285059))

(declare-fun m!285061 () Bool)

(assert (=> b!269029 m!285061))

(declare-fun m!285063 () Bool)

(assert (=> b!269026 m!285063))

(declare-fun m!285065 () Bool)

(assert (=> b!269026 m!285065))

(declare-fun m!285067 () Bool)

(assert (=> b!269026 m!285067))

(push 1)

