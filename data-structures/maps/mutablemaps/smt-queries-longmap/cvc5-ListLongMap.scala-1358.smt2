; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26716 () Bool)

(assert start!26716)

(declare-fun b!277224 () Bool)

(declare-fun res!141194 () Bool)

(declare-fun e!176963 () Bool)

(assert (=> b!277224 (=> (not res!141194) (not e!176963))))

(declare-datatypes ((array!13802 0))(
  ( (array!13803 (arr!6550 (Array (_ BitVec 32) (_ BitVec 64))) (size!6902 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13802)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13802 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277224 (= res!141194 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277225 () Bool)

(declare-fun res!141195 () Bool)

(declare-fun e!176965 () Bool)

(assert (=> b!277225 (=> (not res!141195) (not e!176965))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277225 (= res!141195 (= startIndex!26 i!1267))))

(declare-fun b!277226 () Bool)

(declare-datatypes ((Unit!8727 0))(
  ( (Unit!8728) )
))
(declare-fun e!176964 () Unit!8727)

(declare-fun lt!137909 () Unit!8727)

(assert (=> b!277226 (= e!176964 lt!137909)))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13802 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8727)

(assert (=> b!277226 (= lt!137909 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13802 (_ BitVec 32)) Bool)

(assert (=> b!277226 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13803 (store (arr!6550 a!3325) i!1267 k!2581) (size!6902 a!3325)) mask!3868)))

(declare-fun b!277227 () Bool)

(declare-fun res!141199 () Bool)

(assert (=> b!277227 (=> (not res!141199) (not e!176963))))

(declare-datatypes ((List!4379 0))(
  ( (Nil!4376) (Cons!4375 (h!5042 (_ BitVec 64)) (t!9469 List!4379)) )
))
(declare-fun arrayNoDuplicates!0 (array!13802 (_ BitVec 32) List!4379) Bool)

(assert (=> b!277227 (= res!141199 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4376))))

(declare-fun b!277228 () Bool)

(declare-fun res!141197 () Bool)

(assert (=> b!277228 (=> (not res!141197) (not e!176965))))

(assert (=> b!277228 (= res!141197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!141198 () Bool)

(assert (=> start!26716 (=> (not res!141198) (not e!176963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26716 (= res!141198 (validMask!0 mask!3868))))

(assert (=> start!26716 e!176963))

(declare-fun array_inv!4504 (array!13802) Bool)

(assert (=> start!26716 (array_inv!4504 a!3325)))

(assert (=> start!26716 true))

(declare-fun b!277229 () Bool)

(assert (=> b!277229 (= e!176965 false)))

(declare-fun lt!137908 () Unit!8727)

(assert (=> b!277229 (= lt!137908 e!176964)))

(declare-fun c!45566 () Bool)

(assert (=> b!277229 (= c!45566 (bvslt startIndex!26 (bvsub (size!6902 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277230 () Bool)

(declare-fun Unit!8729 () Unit!8727)

(assert (=> b!277230 (= e!176964 Unit!8729)))

(declare-fun b!277231 () Bool)

(declare-fun res!141201 () Bool)

(assert (=> b!277231 (=> (not res!141201) (not e!176963))))

(assert (=> b!277231 (= res!141201 (and (= (size!6902 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6902 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6902 a!3325))))))

(declare-fun b!277232 () Bool)

(declare-fun res!141200 () Bool)

(assert (=> b!277232 (=> (not res!141200) (not e!176963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277232 (= res!141200 (validKeyInArray!0 k!2581))))

(declare-fun b!277233 () Bool)

(assert (=> b!277233 (= e!176963 e!176965)))

(declare-fun res!141196 () Bool)

(assert (=> b!277233 (=> (not res!141196) (not e!176965))))

(declare-datatypes ((SeekEntryResult!1719 0))(
  ( (MissingZero!1719 (index!9046 (_ BitVec 32))) (Found!1719 (index!9047 (_ BitVec 32))) (Intermediate!1719 (undefined!2531 Bool) (index!9048 (_ BitVec 32)) (x!27268 (_ BitVec 32))) (Undefined!1719) (MissingVacant!1719 (index!9049 (_ BitVec 32))) )
))
(declare-fun lt!137907 () SeekEntryResult!1719)

(assert (=> b!277233 (= res!141196 (or (= lt!137907 (MissingZero!1719 i!1267)) (= lt!137907 (MissingVacant!1719 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13802 (_ BitVec 32)) SeekEntryResult!1719)

(assert (=> b!277233 (= lt!137907 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26716 res!141198) b!277231))

(assert (= (and b!277231 res!141201) b!277232))

(assert (= (and b!277232 res!141200) b!277227))

(assert (= (and b!277227 res!141199) b!277224))

(assert (= (and b!277224 res!141194) b!277233))

(assert (= (and b!277233 res!141196) b!277228))

(assert (= (and b!277228 res!141197) b!277225))

(assert (= (and b!277225 res!141195) b!277229))

(assert (= (and b!277229 c!45566) b!277226))

(assert (= (and b!277229 (not c!45566)) b!277230))

(declare-fun m!292369 () Bool)

(assert (=> b!277232 m!292369))

(declare-fun m!292371 () Bool)

(assert (=> b!277227 m!292371))

(declare-fun m!292373 () Bool)

(assert (=> b!277228 m!292373))

(declare-fun m!292375 () Bool)

(assert (=> start!26716 m!292375))

(declare-fun m!292377 () Bool)

(assert (=> start!26716 m!292377))

(declare-fun m!292379 () Bool)

(assert (=> b!277226 m!292379))

(declare-fun m!292381 () Bool)

(assert (=> b!277226 m!292381))

(declare-fun m!292383 () Bool)

(assert (=> b!277226 m!292383))

(declare-fun m!292385 () Bool)

(assert (=> b!277224 m!292385))

(declare-fun m!292387 () Bool)

(assert (=> b!277233 m!292387))

(push 1)

(assert (not b!277226))

(assert (not b!277233))

(assert (not b!277228))

(assert (not b!277227))

(assert (not b!277232))

(assert (not start!26716))

(assert (not b!277224))

(check-sat)

