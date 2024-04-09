; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27170 () Bool)

(assert start!27170)

(declare-fun b!280942 () Bool)

(declare-fun res!144057 () Bool)

(declare-fun e!178704 () Bool)

(assert (=> b!280942 (=> (not res!144057) (not e!178704))))

(declare-datatypes ((array!13977 0))(
  ( (array!13978 (arr!6630 (Array (_ BitVec 32) (_ BitVec 64))) (size!6982 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13977)

(declare-datatypes ((List!4459 0))(
  ( (Nil!4456) (Cons!4455 (h!5125 (_ BitVec 64)) (t!9549 List!4459)) )
))
(declare-fun arrayNoDuplicates!0 (array!13977 (_ BitVec 32) List!4459) Bool)

(assert (=> b!280942 (= res!144057 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4456))))

(declare-fun res!144049 () Bool)

(assert (=> start!27170 (=> (not res!144049) (not e!178704))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27170 (= res!144049 (validMask!0 mask!3868))))

(assert (=> start!27170 e!178704))

(declare-fun array_inv!4584 (array!13977) Bool)

(assert (=> start!27170 (array_inv!4584 a!3325)))

(assert (=> start!27170 true))

(declare-fun b!280943 () Bool)

(declare-fun res!144055 () Bool)

(declare-fun e!178705 () Bool)

(assert (=> b!280943 (=> (not res!144055) (not e!178705))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280943 (= res!144055 (validKeyInArray!0 (select (arr!6630 a!3325) startIndex!26)))))

(declare-fun b!280944 () Bool)

(declare-fun res!144051 () Bool)

(assert (=> b!280944 (=> (not res!144051) (not e!178705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13977 (_ BitVec 32)) Bool)

(assert (=> b!280944 (= res!144051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280945 () Bool)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280945 (= e!178705 (not (not (= i!1267 startIndex!26))))))

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!280945 (arrayNoDuplicates!0 (array!13978 (store (arr!6630 a!3325) i!1267 k!2581) (size!6982 a!3325)) #b00000000000000000000000000000000 Nil!4456)))

(declare-datatypes ((Unit!8861 0))(
  ( (Unit!8862) )
))
(declare-fun lt!138970 () Unit!8861)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13977 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4459) Unit!8861)

(assert (=> b!280945 (= lt!138970 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4456))))

(declare-fun b!280946 () Bool)

(declare-fun res!144052 () Bool)

(assert (=> b!280946 (=> (not res!144052) (not e!178704))))

(assert (=> b!280946 (= res!144052 (validKeyInArray!0 k!2581))))

(declare-fun b!280947 () Bool)

(declare-fun res!144053 () Bool)

(assert (=> b!280947 (=> (not res!144053) (not e!178704))))

(declare-fun arrayContainsKey!0 (array!13977 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280947 (= res!144053 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280948 () Bool)

(declare-fun res!144056 () Bool)

(assert (=> b!280948 (=> (not res!144056) (not e!178704))))

(assert (=> b!280948 (= res!144056 (and (= (size!6982 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6982 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6982 a!3325))))))

(declare-fun b!280949 () Bool)

(declare-fun res!144050 () Bool)

(assert (=> b!280949 (=> (not res!144050) (not e!178705))))

(assert (=> b!280949 (= res!144050 (not (= startIndex!26 i!1267)))))

(declare-fun b!280950 () Bool)

(assert (=> b!280950 (= e!178704 e!178705)))

(declare-fun res!144054 () Bool)

(assert (=> b!280950 (=> (not res!144054) (not e!178705))))

(declare-datatypes ((SeekEntryResult!1799 0))(
  ( (MissingZero!1799 (index!9366 (_ BitVec 32))) (Found!1799 (index!9367 (_ BitVec 32))) (Intermediate!1799 (undefined!2611 Bool) (index!9368 (_ BitVec 32)) (x!27565 (_ BitVec 32))) (Undefined!1799) (MissingVacant!1799 (index!9369 (_ BitVec 32))) )
))
(declare-fun lt!138971 () SeekEntryResult!1799)

(assert (=> b!280950 (= res!144054 (or (= lt!138971 (MissingZero!1799 i!1267)) (= lt!138971 (MissingVacant!1799 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13977 (_ BitVec 32)) SeekEntryResult!1799)

(assert (=> b!280950 (= lt!138971 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!27170 res!144049) b!280948))

(assert (= (and b!280948 res!144056) b!280946))

(assert (= (and b!280946 res!144052) b!280942))

(assert (= (and b!280942 res!144057) b!280947))

(assert (= (and b!280947 res!144053) b!280950))

(assert (= (and b!280950 res!144054) b!280944))

(assert (= (and b!280944 res!144051) b!280949))

(assert (= (and b!280949 res!144050) b!280943))

(assert (= (and b!280943 res!144055) b!280945))

(declare-fun m!295357 () Bool)

(assert (=> b!280943 m!295357))

(assert (=> b!280943 m!295357))

(declare-fun m!295359 () Bool)

(assert (=> b!280943 m!295359))

(declare-fun m!295361 () Bool)

(assert (=> b!280950 m!295361))

(declare-fun m!295363 () Bool)

(assert (=> b!280945 m!295363))

(declare-fun m!295365 () Bool)

(assert (=> b!280945 m!295365))

(declare-fun m!295367 () Bool)

(assert (=> b!280945 m!295367))

(declare-fun m!295369 () Bool)

(assert (=> b!280947 m!295369))

(declare-fun m!295371 () Bool)

(assert (=> start!27170 m!295371))

(declare-fun m!295373 () Bool)

(assert (=> start!27170 m!295373))

(declare-fun m!295375 () Bool)

(assert (=> b!280944 m!295375))

(declare-fun m!295377 () Bool)

(assert (=> b!280942 m!295377))

(declare-fun m!295379 () Bool)

(assert (=> b!280946 m!295379))

(push 1)

(assert (not b!280947))

(assert (not b!280942))

