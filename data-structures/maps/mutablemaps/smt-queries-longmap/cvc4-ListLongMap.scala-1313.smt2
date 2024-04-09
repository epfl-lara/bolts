; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26450 () Bool)

(assert start!26450)

(declare-fun b!274332 () Bool)

(declare-fun e!175664 () Bool)

(declare-fun e!175665 () Bool)

(assert (=> b!274332 (= e!175664 e!175665)))

(declare-fun res!138369 () Bool)

(assert (=> b!274332 (=> (not res!138369) (not e!175665))))

(declare-datatypes ((SeekEntryResult!1586 0))(
  ( (MissingZero!1586 (index!8514 (_ BitVec 32))) (Found!1586 (index!8515 (_ BitVec 32))) (Intermediate!1586 (undefined!2398 Bool) (index!8516 (_ BitVec 32)) (x!26775 (_ BitVec 32))) (Undefined!1586) (MissingVacant!1586 (index!8517 (_ BitVec 32))) )
))
(declare-fun lt!136937 () SeekEntryResult!1586)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274332 (= res!138369 (or (= lt!136937 (MissingZero!1586 i!1267)) (= lt!136937 (MissingVacant!1586 i!1267))))))

(declare-datatypes ((array!13536 0))(
  ( (array!13537 (arr!6417 (Array (_ BitVec 32) (_ BitVec 64))) (size!6769 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13536)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13536 (_ BitVec 32)) SeekEntryResult!1586)

(assert (=> b!274332 (= lt!136937 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274333 () Bool)

(declare-fun e!175662 () Bool)

(assert (=> b!274333 (= e!175665 e!175662)))

(declare-fun res!138360 () Bool)

(assert (=> b!274333 (=> (not res!138360) (not e!175662))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274333 (= res!138360 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136935 () array!13536)

(assert (=> b!274333 (= lt!136935 (array!13537 (store (arr!6417 a!3325) i!1267 k!2581) (size!6769 a!3325)))))

(declare-fun b!274334 () Bool)

(declare-fun res!138361 () Bool)

(assert (=> b!274334 (=> (not res!138361) (not e!175662))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274334 (= res!138361 (validKeyInArray!0 (select (arr!6417 a!3325) startIndex!26)))))

(declare-fun b!274335 () Bool)

(declare-fun res!138366 () Bool)

(assert (=> b!274335 (=> (not res!138366) (not e!175665))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13536 (_ BitVec 32)) Bool)

(assert (=> b!274335 (= res!138366 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274336 () Bool)

(declare-fun res!138367 () Bool)

(assert (=> b!274336 (=> (not res!138367) (not e!175664))))

(assert (=> b!274336 (= res!138367 (and (= (size!6769 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6769 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6769 a!3325))))))

(declare-fun b!274337 () Bool)

(declare-fun res!138368 () Bool)

(assert (=> b!274337 (=> (not res!138368) (not e!175664))))

(assert (=> b!274337 (= res!138368 (validKeyInArray!0 k!2581))))

(declare-fun b!274338 () Bool)

(declare-fun res!138364 () Bool)

(assert (=> b!274338 (=> (not res!138364) (not e!175664))))

(declare-datatypes ((List!4246 0))(
  ( (Nil!4243) (Cons!4242 (h!4909 (_ BitVec 64)) (t!9336 List!4246)) )
))
(declare-fun arrayNoDuplicates!0 (array!13536 (_ BitVec 32) List!4246) Bool)

(assert (=> b!274338 (= res!138364 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4243))))

(declare-fun res!138363 () Bool)

(assert (=> start!26450 (=> (not res!138363) (not e!175664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26450 (= res!138363 (validMask!0 mask!3868))))

(assert (=> start!26450 e!175664))

(declare-fun array_inv!4371 (array!13536) Bool)

(assert (=> start!26450 (array_inv!4371 a!3325)))

(assert (=> start!26450 true))

(declare-fun b!274339 () Bool)

(declare-fun res!138362 () Bool)

(assert (=> b!274339 (=> (not res!138362) (not e!175664))))

(declare-fun arrayContainsKey!0 (array!13536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274339 (= res!138362 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274340 () Bool)

(declare-fun e!175663 () Bool)

(assert (=> b!274340 (= e!175662 (not e!175663))))

(declare-fun res!138365 () Bool)

(assert (=> b!274340 (=> res!138365 e!175663)))

(assert (=> b!274340 (= res!138365 (or (bvsge startIndex!26 (bvsub (size!6769 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (=> b!274340 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8638 0))(
  ( (Unit!8639) )
))
(declare-fun lt!136934 () Unit!8638)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13536 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8638)

(assert (=> b!274340 (= lt!136934 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!274340 (= (seekEntryOrOpen!0 (select (arr!6417 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6417 a!3325) i!1267 k!2581) startIndex!26) lt!136935 mask!3868))))

(declare-fun lt!136932 () Unit!8638)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13536 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8638)

(assert (=> b!274340 (= lt!136932 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!274340 (arrayNoDuplicates!0 lt!136935 #b00000000000000000000000000000000 Nil!4243)))

(declare-fun lt!136936 () Unit!8638)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13536 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4246) Unit!8638)

(assert (=> b!274340 (= lt!136936 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4243))))

(declare-fun b!274341 () Bool)

(assert (=> b!274341 (= e!175663 true)))

(assert (=> b!274341 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!136935 mask!3868)))

(declare-fun lt!136933 () Unit!8638)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13536 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8638)

(assert (=> b!274341 (= lt!136933 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (= (and start!26450 res!138363) b!274336))

(assert (= (and b!274336 res!138367) b!274337))

(assert (= (and b!274337 res!138368) b!274338))

(assert (= (and b!274338 res!138364) b!274339))

(assert (= (and b!274339 res!138362) b!274332))

(assert (= (and b!274332 res!138369) b!274335))

(assert (= (and b!274335 res!138366) b!274333))

(assert (= (and b!274333 res!138360) b!274334))

(assert (= (and b!274334 res!138361) b!274340))

(assert (= (and b!274340 (not res!138365)) b!274341))

(declare-fun m!289875 () Bool)

(assert (=> start!26450 m!289875))

(declare-fun m!289877 () Bool)

(assert (=> start!26450 m!289877))

(declare-fun m!289879 () Bool)

(assert (=> b!274339 m!289879))

(declare-fun m!289881 () Bool)

(assert (=> b!274335 m!289881))

(declare-fun m!289883 () Bool)

(assert (=> b!274337 m!289883))

(declare-fun m!289885 () Bool)

(assert (=> b!274340 m!289885))

(declare-fun m!289887 () Bool)

(assert (=> b!274340 m!289887))

(declare-fun m!289889 () Bool)

(assert (=> b!274340 m!289889))

(declare-fun m!289891 () Bool)

(assert (=> b!274340 m!289891))

(declare-fun m!289893 () Bool)

(assert (=> b!274340 m!289893))

(declare-fun m!289895 () Bool)

(assert (=> b!274340 m!289895))

(declare-fun m!289897 () Bool)

(assert (=> b!274340 m!289897))

(declare-fun m!289899 () Bool)

(assert (=> b!274340 m!289899))

(assert (=> b!274340 m!289887))

(declare-fun m!289901 () Bool)

(assert (=> b!274340 m!289901))

(assert (=> b!274340 m!289895))

(declare-fun m!289903 () Bool)

(assert (=> b!274340 m!289903))

(declare-fun m!289905 () Bool)

(assert (=> b!274338 m!289905))

(assert (=> b!274333 m!289899))

(declare-fun m!289907 () Bool)

(assert (=> b!274332 m!289907))

(declare-fun m!289909 () Bool)

(assert (=> b!274341 m!289909))

(declare-fun m!289911 () Bool)

(assert (=> b!274341 m!289911))

(assert (=> b!274334 m!289895))

(assert (=> b!274334 m!289895))

(declare-fun m!289913 () Bool)

(assert (=> b!274334 m!289913))

(push 1)

(assert (not b!274335))

