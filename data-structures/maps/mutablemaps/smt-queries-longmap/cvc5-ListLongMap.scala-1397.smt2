; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27244 () Bool)

(assert start!27244)

(declare-fun b!281941 () Bool)

(declare-fun res!145052 () Bool)

(declare-fun e!179094 () Bool)

(assert (=> b!281941 (=> (not res!145052) (not e!179094))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281941 (= res!145052 (validKeyInArray!0 k!2581))))

(declare-fun b!281942 () Bool)

(declare-fun res!145054 () Bool)

(declare-fun e!179095 () Bool)

(assert (=> b!281942 (=> (not res!145054) (not e!179095))))

(declare-datatypes ((array!14051 0))(
  ( (array!14052 (arr!6667 (Array (_ BitVec 32) (_ BitVec 64))) (size!7019 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14051)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14051 (_ BitVec 32)) Bool)

(assert (=> b!281942 (= res!145054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281943 () Bool)

(declare-fun res!145050 () Bool)

(assert (=> b!281943 (=> (not res!145050) (not e!179094))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281943 (= res!145050 (and (= (size!7019 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7019 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7019 a!3325))))))

(declare-fun b!281944 () Bool)

(declare-fun e!179093 () Bool)

(assert (=> b!281944 (= e!179093 (not true))))

(assert (=> b!281944 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8935 0))(
  ( (Unit!8936) )
))
(declare-fun lt!139316 () Unit!8935)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14051 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8935)

(assert (=> b!281944 (= lt!139316 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139318 () array!14051)

(declare-datatypes ((SeekEntryResult!1836 0))(
  ( (MissingZero!1836 (index!9514 (_ BitVec 32))) (Found!1836 (index!9515 (_ BitVec 32))) (Intermediate!1836 (undefined!2648 Bool) (index!9516 (_ BitVec 32)) (x!27706 (_ BitVec 32))) (Undefined!1836) (MissingVacant!1836 (index!9517 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14051 (_ BitVec 32)) SeekEntryResult!1836)

(assert (=> b!281944 (= (seekEntryOrOpen!0 (select (arr!6667 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6667 a!3325) i!1267 k!2581) startIndex!26) lt!139318 mask!3868))))

(declare-fun lt!139319 () Unit!8935)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14051 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8935)

(assert (=> b!281944 (= lt!139319 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4496 0))(
  ( (Nil!4493) (Cons!4492 (h!5162 (_ BitVec 64)) (t!9586 List!4496)) )
))
(declare-fun arrayNoDuplicates!0 (array!14051 (_ BitVec 32) List!4496) Bool)

(assert (=> b!281944 (arrayNoDuplicates!0 lt!139318 #b00000000000000000000000000000000 Nil!4493)))

(declare-fun lt!139315 () Unit!8935)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14051 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4496) Unit!8935)

(assert (=> b!281944 (= lt!139315 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4493))))

(declare-fun b!281945 () Bool)

(declare-fun res!145048 () Bool)

(assert (=> b!281945 (=> (not res!145048) (not e!179094))))

(declare-fun arrayContainsKey!0 (array!14051 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281945 (= res!145048 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281947 () Bool)

(assert (=> b!281947 (= e!179094 e!179095)))

(declare-fun res!145055 () Bool)

(assert (=> b!281947 (=> (not res!145055) (not e!179095))))

(declare-fun lt!139317 () SeekEntryResult!1836)

(assert (=> b!281947 (= res!145055 (or (= lt!139317 (MissingZero!1836 i!1267)) (= lt!139317 (MissingVacant!1836 i!1267))))))

(assert (=> b!281947 (= lt!139317 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281948 () Bool)

(declare-fun res!145049 () Bool)

(assert (=> b!281948 (=> (not res!145049) (not e!179093))))

(assert (=> b!281948 (= res!145049 (validKeyInArray!0 (select (arr!6667 a!3325) startIndex!26)))))

(declare-fun b!281949 () Bool)

(assert (=> b!281949 (= e!179095 e!179093)))

(declare-fun res!145051 () Bool)

(assert (=> b!281949 (=> (not res!145051) (not e!179093))))

(assert (=> b!281949 (= res!145051 (not (= startIndex!26 i!1267)))))

(assert (=> b!281949 (= lt!139318 (array!14052 (store (arr!6667 a!3325) i!1267 k!2581) (size!7019 a!3325)))))

(declare-fun res!145056 () Bool)

(assert (=> start!27244 (=> (not res!145056) (not e!179094))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27244 (= res!145056 (validMask!0 mask!3868))))

(assert (=> start!27244 e!179094))

(declare-fun array_inv!4621 (array!14051) Bool)

(assert (=> start!27244 (array_inv!4621 a!3325)))

(assert (=> start!27244 true))

(declare-fun b!281946 () Bool)

(declare-fun res!145053 () Bool)

(assert (=> b!281946 (=> (not res!145053) (not e!179094))))

(assert (=> b!281946 (= res!145053 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4493))))

(assert (= (and start!27244 res!145056) b!281943))

(assert (= (and b!281943 res!145050) b!281941))

(assert (= (and b!281941 res!145052) b!281946))

(assert (= (and b!281946 res!145053) b!281945))

(assert (= (and b!281945 res!145048) b!281947))

(assert (= (and b!281947 res!145055) b!281942))

(assert (= (and b!281942 res!145054) b!281949))

(assert (= (and b!281949 res!145051) b!281948))

(assert (= (and b!281948 res!145049) b!281944))

(declare-fun m!296401 () Bool)

(assert (=> b!281945 m!296401))

(declare-fun m!296403 () Bool)

(assert (=> b!281946 m!296403))

(declare-fun m!296405 () Bool)

(assert (=> b!281947 m!296405))

(declare-fun m!296407 () Bool)

(assert (=> b!281948 m!296407))

(assert (=> b!281948 m!296407))

(declare-fun m!296409 () Bool)

(assert (=> b!281948 m!296409))

(declare-fun m!296411 () Bool)

(assert (=> b!281944 m!296411))

(declare-fun m!296413 () Bool)

(assert (=> b!281944 m!296413))

(declare-fun m!296415 () Bool)

(assert (=> b!281944 m!296415))

(assert (=> b!281944 m!296413))

(declare-fun m!296417 () Bool)

(assert (=> b!281944 m!296417))

(declare-fun m!296419 () Bool)

(assert (=> b!281944 m!296419))

(declare-fun m!296421 () Bool)

(assert (=> b!281944 m!296421))

(assert (=> b!281944 m!296407))

(declare-fun m!296423 () Bool)

(assert (=> b!281944 m!296423))

(declare-fun m!296425 () Bool)

(assert (=> b!281944 m!296425))

(assert (=> b!281944 m!296407))

(declare-fun m!296427 () Bool)

(assert (=> b!281944 m!296427))

(declare-fun m!296429 () Bool)

(assert (=> start!27244 m!296429))

(declare-fun m!296431 () Bool)

(assert (=> start!27244 m!296431))

(assert (=> b!281949 m!296419))

(declare-fun m!296433 () Bool)

(assert (=> b!281941 m!296433))

(declare-fun m!296435 () Bool)

(assert (=> b!281942 m!296435))

(push 1)

