; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27194 () Bool)

(assert start!27194)

(declare-fun b!281266 () Bool)

(declare-fun res!144377 () Bool)

(declare-fun e!178811 () Bool)

(assert (=> b!281266 (=> (not res!144377) (not e!178811))))

(declare-datatypes ((array!14001 0))(
  ( (array!14002 (arr!6642 (Array (_ BitVec 32) (_ BitVec 64))) (size!6994 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14001)

(declare-datatypes ((List!4471 0))(
  ( (Nil!4468) (Cons!4467 (h!5137 (_ BitVec 64)) (t!9561 List!4471)) )
))
(declare-fun arrayNoDuplicates!0 (array!14001 (_ BitVec 32) List!4471) Bool)

(assert (=> b!281266 (= res!144377 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4468))))

(declare-fun b!281267 () Bool)

(declare-fun res!144375 () Bool)

(assert (=> b!281267 (=> (not res!144375) (not e!178811))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14001 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281267 (= res!144375 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281268 () Bool)

(declare-fun res!144380 () Bool)

(declare-fun e!178812 () Bool)

(assert (=> b!281268 (=> (not res!144380) (not e!178812))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281268 (= res!144380 (not (= startIndex!26 i!1267)))))

(declare-fun b!281269 () Bool)

(assert (=> b!281269 (= e!178811 e!178812)))

(declare-fun res!144378 () Bool)

(assert (=> b!281269 (=> (not res!144378) (not e!178812))))

(declare-datatypes ((SeekEntryResult!1811 0))(
  ( (MissingZero!1811 (index!9414 (_ BitVec 32))) (Found!1811 (index!9415 (_ BitVec 32))) (Intermediate!1811 (undefined!2623 Bool) (index!9416 (_ BitVec 32)) (x!27609 (_ BitVec 32))) (Undefined!1811) (MissingVacant!1811 (index!9417 (_ BitVec 32))) )
))
(declare-fun lt!139042 () SeekEntryResult!1811)

(assert (=> b!281269 (= res!144378 (or (= lt!139042 (MissingZero!1811 i!1267)) (= lt!139042 (MissingVacant!1811 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14001 (_ BitVec 32)) SeekEntryResult!1811)

(assert (=> b!281269 (= lt!139042 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281270 () Bool)

(declare-fun res!144373 () Bool)

(assert (=> b!281270 (=> (not res!144373) (not e!178811))))

(assert (=> b!281270 (= res!144373 (and (= (size!6994 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6994 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6994 a!3325))))))

(declare-fun res!144374 () Bool)

(assert (=> start!27194 (=> (not res!144374) (not e!178811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27194 (= res!144374 (validMask!0 mask!3868))))

(assert (=> start!27194 e!178811))

(declare-fun array_inv!4596 (array!14001) Bool)

(assert (=> start!27194 (array_inv!4596 a!3325)))

(assert (=> start!27194 true))

(declare-fun b!281271 () Bool)

(declare-fun res!144381 () Bool)

(assert (=> b!281271 (=> (not res!144381) (not e!178811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281271 (= res!144381 (validKeyInArray!0 k!2581))))

(declare-fun b!281272 () Bool)

(assert (=> b!281272 (= e!178812 (not true))))

(assert (=> b!281272 (arrayNoDuplicates!0 (array!14002 (store (arr!6642 a!3325) i!1267 k!2581) (size!6994 a!3325)) #b00000000000000000000000000000000 Nil!4468)))

(declare-datatypes ((Unit!8885 0))(
  ( (Unit!8886) )
))
(declare-fun lt!139043 () Unit!8885)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14001 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4471) Unit!8885)

(assert (=> b!281272 (= lt!139043 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4468))))

(declare-fun b!281273 () Bool)

(declare-fun res!144376 () Bool)

(assert (=> b!281273 (=> (not res!144376) (not e!178812))))

(assert (=> b!281273 (= res!144376 (validKeyInArray!0 (select (arr!6642 a!3325) startIndex!26)))))

(declare-fun b!281274 () Bool)

(declare-fun res!144379 () Bool)

(assert (=> b!281274 (=> (not res!144379) (not e!178812))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14001 (_ BitVec 32)) Bool)

(assert (=> b!281274 (= res!144379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27194 res!144374) b!281270))

(assert (= (and b!281270 res!144373) b!281271))

(assert (= (and b!281271 res!144381) b!281266))

(assert (= (and b!281266 res!144377) b!281267))

(assert (= (and b!281267 res!144375) b!281269))

(assert (= (and b!281269 res!144378) b!281274))

(assert (= (and b!281274 res!144379) b!281268))

(assert (= (and b!281268 res!144380) b!281273))

(assert (= (and b!281273 res!144376) b!281272))

(declare-fun m!295645 () Bool)

(assert (=> b!281266 m!295645))

(declare-fun m!295647 () Bool)

(assert (=> b!281267 m!295647))

(declare-fun m!295649 () Bool)

(assert (=> b!281269 m!295649))

(declare-fun m!295651 () Bool)

(assert (=> b!281273 m!295651))

(assert (=> b!281273 m!295651))

(declare-fun m!295653 () Bool)

(assert (=> b!281273 m!295653))

(declare-fun m!295655 () Bool)

(assert (=> b!281271 m!295655))

(declare-fun m!295657 () Bool)

(assert (=> b!281274 m!295657))

(declare-fun m!295659 () Bool)

(assert (=> start!27194 m!295659))

(declare-fun m!295661 () Bool)

(assert (=> start!27194 m!295661))

(declare-fun m!295663 () Bool)

(assert (=> b!281272 m!295663))

(declare-fun m!295665 () Bool)

(assert (=> b!281272 m!295665))

(declare-fun m!295667 () Bool)

(assert (=> b!281272 m!295667))

(push 1)

