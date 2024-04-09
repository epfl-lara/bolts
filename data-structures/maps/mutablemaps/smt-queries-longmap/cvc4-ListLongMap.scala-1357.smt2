; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26714 () Bool)

(assert start!26714)

(declare-fun b!277194 () Bool)

(declare-fun e!176953 () Bool)

(declare-fun e!176951 () Bool)

(assert (=> b!277194 (= e!176953 e!176951)))

(declare-fun res!141177 () Bool)

(assert (=> b!277194 (=> (not res!141177) (not e!176951))))

(declare-datatypes ((SeekEntryResult!1718 0))(
  ( (MissingZero!1718 (index!9042 (_ BitVec 32))) (Found!1718 (index!9043 (_ BitVec 32))) (Intermediate!1718 (undefined!2530 Bool) (index!9044 (_ BitVec 32)) (x!27259 (_ BitVec 32))) (Undefined!1718) (MissingVacant!1718 (index!9045 (_ BitVec 32))) )
))
(declare-fun lt!137899 () SeekEntryResult!1718)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277194 (= res!141177 (or (= lt!137899 (MissingZero!1718 i!1267)) (= lt!137899 (MissingVacant!1718 i!1267))))))

(declare-datatypes ((array!13800 0))(
  ( (array!13801 (arr!6549 (Array (_ BitVec 32) (_ BitVec 64))) (size!6901 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13800)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13800 (_ BitVec 32)) SeekEntryResult!1718)

(assert (=> b!277194 (= lt!137899 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277195 () Bool)

(declare-fun res!141174 () Bool)

(assert (=> b!277195 (=> (not res!141174) (not e!176953))))

(declare-fun arrayContainsKey!0 (array!13800 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277195 (= res!141174 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277196 () Bool)

(declare-fun res!141172 () Bool)

(assert (=> b!277196 (=> (not res!141172) (not e!176951))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277196 (= res!141172 (= startIndex!26 i!1267))))

(declare-fun b!277197 () Bool)

(declare-datatypes ((Unit!8724 0))(
  ( (Unit!8725) )
))
(declare-fun e!176950 () Unit!8724)

(declare-fun Unit!8726 () Unit!8724)

(assert (=> b!277197 (= e!176950 Unit!8726)))

(declare-fun b!277198 () Bool)

(declare-fun res!141171 () Bool)

(assert (=> b!277198 (=> (not res!141171) (not e!176951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13800 (_ BitVec 32)) Bool)

(assert (=> b!277198 (= res!141171 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277200 () Bool)

(assert (=> b!277200 (= e!176951 false)))

(declare-fun lt!137898 () Unit!8724)

(assert (=> b!277200 (= lt!137898 e!176950)))

(declare-fun c!45563 () Bool)

(assert (=> b!277200 (= c!45563 (bvslt startIndex!26 (bvsub (size!6901 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277201 () Bool)

(declare-fun res!141173 () Bool)

(assert (=> b!277201 (=> (not res!141173) (not e!176953))))

(declare-datatypes ((List!4378 0))(
  ( (Nil!4375) (Cons!4374 (h!5041 (_ BitVec 64)) (t!9468 List!4378)) )
))
(declare-fun arrayNoDuplicates!0 (array!13800 (_ BitVec 32) List!4378) Bool)

(assert (=> b!277201 (= res!141173 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4375))))

(declare-fun b!277202 () Bool)

(declare-fun lt!137900 () Unit!8724)

(assert (=> b!277202 (= e!176950 lt!137900)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13800 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8724)

(assert (=> b!277202 (= lt!137900 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277202 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13801 (store (arr!6549 a!3325) i!1267 k!2581) (size!6901 a!3325)) mask!3868)))

(declare-fun b!277203 () Bool)

(declare-fun res!141170 () Bool)

(assert (=> b!277203 (=> (not res!141170) (not e!176953))))

(assert (=> b!277203 (= res!141170 (and (= (size!6901 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6901 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6901 a!3325))))))

(declare-fun res!141175 () Bool)

(assert (=> start!26714 (=> (not res!141175) (not e!176953))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26714 (= res!141175 (validMask!0 mask!3868))))

(assert (=> start!26714 e!176953))

(declare-fun array_inv!4503 (array!13800) Bool)

(assert (=> start!26714 (array_inv!4503 a!3325)))

(assert (=> start!26714 true))

(declare-fun b!277199 () Bool)

(declare-fun res!141176 () Bool)

(assert (=> b!277199 (=> (not res!141176) (not e!176953))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277199 (= res!141176 (validKeyInArray!0 k!2581))))

(assert (= (and start!26714 res!141175) b!277203))

(assert (= (and b!277203 res!141170) b!277199))

(assert (= (and b!277199 res!141176) b!277201))

(assert (= (and b!277201 res!141173) b!277195))

(assert (= (and b!277195 res!141174) b!277194))

(assert (= (and b!277194 res!141177) b!277198))

(assert (= (and b!277198 res!141171) b!277196))

(assert (= (and b!277196 res!141172) b!277200))

(assert (= (and b!277200 c!45563) b!277202))

(assert (= (and b!277200 (not c!45563)) b!277197))

(declare-fun m!292349 () Bool)

(assert (=> b!277202 m!292349))

(declare-fun m!292351 () Bool)

(assert (=> b!277202 m!292351))

(declare-fun m!292353 () Bool)

(assert (=> b!277202 m!292353))

(declare-fun m!292355 () Bool)

(assert (=> b!277195 m!292355))

(declare-fun m!292357 () Bool)

(assert (=> b!277198 m!292357))

(declare-fun m!292359 () Bool)

(assert (=> b!277199 m!292359))

(declare-fun m!292361 () Bool)

(assert (=> start!26714 m!292361))

(declare-fun m!292363 () Bool)

(assert (=> start!26714 m!292363))

(declare-fun m!292365 () Bool)

(assert (=> b!277194 m!292365))

(declare-fun m!292367 () Bool)

(assert (=> b!277201 m!292367))

(push 1)

