; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26174 () Bool)

(assert start!26174)

(declare-fun b!270165 () Bool)

(declare-fun e!174179 () Bool)

(declare-fun e!174177 () Bool)

(assert (=> b!270165 (= e!174179 e!174177)))

(declare-fun res!134256 () Bool)

(assert (=> b!270165 (=> (not res!134256) (not e!174177))))

(declare-datatypes ((SeekEntryResult!1448 0))(
  ( (MissingZero!1448 (index!7962 (_ BitVec 32))) (Found!1448 (index!7963 (_ BitVec 32))) (Intermediate!1448 (undefined!2260 Bool) (index!7964 (_ BitVec 32)) (x!26269 (_ BitVec 32))) (Undefined!1448) (MissingVacant!1448 (index!7965 (_ BitVec 32))) )
))
(declare-fun lt!135542 () SeekEntryResult!1448)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270165 (= res!134256 (or (= lt!135542 (MissingZero!1448 i!1267)) (= lt!135542 (MissingVacant!1448 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((array!13260 0))(
  ( (array!13261 (arr!6279 (Array (_ BitVec 32) (_ BitVec 64))) (size!6631 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13260)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13260 (_ BitVec 32)) SeekEntryResult!1448)

(assert (=> b!270165 (= lt!135542 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270166 () Bool)

(declare-fun res!134251 () Bool)

(assert (=> b!270166 (=> (not res!134251) (not e!174179))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!270166 (= res!134251 (and (= (size!6631 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6631 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6631 a!3325))))))

(declare-fun b!270167 () Bool)

(declare-fun e!174178 () Bool)

(assert (=> b!270167 (= e!174177 e!174178)))

(declare-fun res!134254 () Bool)

(assert (=> b!270167 (=> (not res!134254) (not e!174178))))

(assert (=> b!270167 (= res!134254 (= startIndex!26 i!1267))))

(declare-fun lt!135538 () array!13260)

(assert (=> b!270167 (= lt!135538 (array!13261 (store (arr!6279 a!3325) i!1267 k!2581) (size!6631 a!3325)))))

(declare-fun res!134255 () Bool)

(assert (=> start!26174 (=> (not res!134255) (not e!174179))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26174 (= res!134255 (validMask!0 mask!3868))))

(assert (=> start!26174 e!174179))

(declare-fun array_inv!4233 (array!13260) Bool)

(assert (=> start!26174 (array_inv!4233 a!3325)))

(assert (=> start!26174 true))

(declare-fun b!270168 () Bool)

(declare-datatypes ((Unit!8418 0))(
  ( (Unit!8419) )
))
(declare-fun e!174180 () Unit!8418)

(declare-fun Unit!8420 () Unit!8418)

(assert (=> b!270168 (= e!174180 Unit!8420)))

(declare-fun b!270169 () Bool)

(declare-fun res!134252 () Bool)

(assert (=> b!270169 (=> (not res!134252) (not e!174179))))

(declare-fun arrayContainsKey!0 (array!13260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270169 (= res!134252 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270170 () Bool)

(declare-fun lt!135540 () Unit!8418)

(assert (=> b!270170 (= e!174180 lt!135540)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13260 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8418)

(assert (=> b!270170 (= lt!135540 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13260 (_ BitVec 32)) Bool)

(assert (=> b!270170 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135538 mask!3868)))

(declare-fun b!270171 () Bool)

(assert (=> b!270171 (= e!174178 (not true))))

(assert (=> b!270171 (= (seekEntryOrOpen!0 k!2581 lt!135538 mask!3868) (Found!1448 i!1267))))

(declare-fun lt!135541 () Unit!8418)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13260 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8418)

(assert (=> b!270171 (= lt!135541 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135539 () Unit!8418)

(assert (=> b!270171 (= lt!135539 e!174180)))

(declare-fun c!45509 () Bool)

(assert (=> b!270171 (= c!45509 (bvslt startIndex!26 (bvsub (size!6631 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270172 () Bool)

(declare-fun res!134253 () Bool)

(assert (=> b!270172 (=> (not res!134253) (not e!174179))))

(declare-datatypes ((List!4108 0))(
  ( (Nil!4105) (Cons!4104 (h!4771 (_ BitVec 64)) (t!9198 List!4108)) )
))
(declare-fun arrayNoDuplicates!0 (array!13260 (_ BitVec 32) List!4108) Bool)

(assert (=> b!270172 (= res!134253 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4105))))

(declare-fun b!270173 () Bool)

(declare-fun res!134249 () Bool)

(assert (=> b!270173 (=> (not res!134249) (not e!174179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270173 (= res!134249 (validKeyInArray!0 k!2581))))

(declare-fun b!270174 () Bool)

(declare-fun res!134250 () Bool)

(assert (=> b!270174 (=> (not res!134250) (not e!174177))))

(assert (=> b!270174 (= res!134250 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26174 res!134255) b!270166))

(assert (= (and b!270166 res!134251) b!270173))

(assert (= (and b!270173 res!134249) b!270172))

(assert (= (and b!270172 res!134253) b!270169))

(assert (= (and b!270169 res!134252) b!270165))

(assert (= (and b!270165 res!134256) b!270174))

(assert (= (and b!270174 res!134250) b!270167))

(assert (= (and b!270167 res!134254) b!270171))

(assert (= (and b!270171 c!45509) b!270170))

(assert (= (and b!270171 (not c!45509)) b!270168))

(declare-fun m!285865 () Bool)

(assert (=> b!270171 m!285865))

(declare-fun m!285867 () Bool)

(assert (=> b!270171 m!285867))

(declare-fun m!285869 () Bool)

(assert (=> b!270169 m!285869))

(declare-fun m!285871 () Bool)

(assert (=> b!270173 m!285871))

(declare-fun m!285873 () Bool)

(assert (=> b!270174 m!285873))

(declare-fun m!285875 () Bool)

(assert (=> start!26174 m!285875))

(declare-fun m!285877 () Bool)

(assert (=> start!26174 m!285877))

(declare-fun m!285879 () Bool)

(assert (=> b!270170 m!285879))

(declare-fun m!285881 () Bool)

(assert (=> b!270170 m!285881))

(declare-fun m!285883 () Bool)

(assert (=> b!270172 m!285883))

(declare-fun m!285885 () Bool)

(assert (=> b!270165 m!285885))

(declare-fun m!285887 () Bool)

(assert (=> b!270167 m!285887))

(push 1)

(assert (not b!270173))

