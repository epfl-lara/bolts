; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27256 () Bool)

(assert start!27256)

(declare-fun b!282103 () Bool)

(declare-fun res!145217 () Bool)

(declare-fun e!179165 () Bool)

(assert (=> b!282103 (=> (not res!145217) (not e!179165))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282103 (= res!145217 (validKeyInArray!0 k!2581))))

(declare-fun b!282105 () Bool)

(declare-fun res!145211 () Bool)

(assert (=> b!282105 (=> (not res!145211) (not e!179165))))

(declare-datatypes ((array!14063 0))(
  ( (array!14064 (arr!6673 (Array (_ BitVec 32) (_ BitVec 64))) (size!7025 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14063)

(declare-datatypes ((List!4502 0))(
  ( (Nil!4499) (Cons!4498 (h!5168 (_ BitVec 64)) (t!9592 List!4502)) )
))
(declare-fun arrayNoDuplicates!0 (array!14063 (_ BitVec 32) List!4502) Bool)

(assert (=> b!282105 (= res!145211 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4499))))

(declare-fun b!282106 () Bool)

(declare-fun e!179164 () Bool)

(assert (=> b!282106 (= e!179165 e!179164)))

(declare-fun res!145210 () Bool)

(assert (=> b!282106 (=> (not res!145210) (not e!179164))))

(declare-datatypes ((SeekEntryResult!1842 0))(
  ( (MissingZero!1842 (index!9538 (_ BitVec 32))) (Found!1842 (index!9539 (_ BitVec 32))) (Intermediate!1842 (undefined!2654 Bool) (index!9540 (_ BitVec 32)) (x!27728 (_ BitVec 32))) (Undefined!1842) (MissingVacant!1842 (index!9541 (_ BitVec 32))) )
))
(declare-fun lt!139407 () SeekEntryResult!1842)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282106 (= res!145210 (or (= lt!139407 (MissingZero!1842 i!1267)) (= lt!139407 (MissingVacant!1842 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14063 (_ BitVec 32)) SeekEntryResult!1842)

(assert (=> b!282106 (= lt!139407 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282107 () Bool)

(declare-fun res!145214 () Bool)

(declare-fun e!179167 () Bool)

(assert (=> b!282107 (=> (not res!145214) (not e!179167))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!282107 (= res!145214 (validKeyInArray!0 (select (arr!6673 a!3325) startIndex!26)))))

(declare-fun b!282108 () Bool)

(assert (=> b!282108 (= e!179167 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14063 (_ BitVec 32)) Bool)

(assert (=> b!282108 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8947 0))(
  ( (Unit!8948) )
))
(declare-fun lt!139406 () Unit!8947)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14063 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8947)

(assert (=> b!282108 (= lt!139406 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139408 () array!14063)

(assert (=> b!282108 (= (seekEntryOrOpen!0 (select (arr!6673 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6673 a!3325) i!1267 k!2581) startIndex!26) lt!139408 mask!3868))))

(declare-fun lt!139409 () Unit!8947)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14063 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8947)

(assert (=> b!282108 (= lt!139409 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!282108 (arrayNoDuplicates!0 lt!139408 #b00000000000000000000000000000000 Nil!4499)))

(declare-fun lt!139405 () Unit!8947)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14063 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4502) Unit!8947)

(assert (=> b!282108 (= lt!139405 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4499))))

(declare-fun b!282109 () Bool)

(declare-fun res!145216 () Bool)

(assert (=> b!282109 (=> (not res!145216) (not e!179164))))

(assert (=> b!282109 (= res!145216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282104 () Bool)

(declare-fun res!145212 () Bool)

(assert (=> b!282104 (=> (not res!145212) (not e!179165))))

(declare-fun arrayContainsKey!0 (array!14063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282104 (= res!145212 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!145213 () Bool)

(assert (=> start!27256 (=> (not res!145213) (not e!179165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27256 (= res!145213 (validMask!0 mask!3868))))

(assert (=> start!27256 e!179165))

(declare-fun array_inv!4627 (array!14063) Bool)

(assert (=> start!27256 (array_inv!4627 a!3325)))

(assert (=> start!27256 true))

(declare-fun b!282110 () Bool)

(assert (=> b!282110 (= e!179164 e!179167)))

(declare-fun res!145215 () Bool)

(assert (=> b!282110 (=> (not res!145215) (not e!179167))))

(assert (=> b!282110 (= res!145215 (not (= startIndex!26 i!1267)))))

(assert (=> b!282110 (= lt!139408 (array!14064 (store (arr!6673 a!3325) i!1267 k!2581) (size!7025 a!3325)))))

(declare-fun b!282111 () Bool)

(declare-fun res!145218 () Bool)

(assert (=> b!282111 (=> (not res!145218) (not e!179165))))

(assert (=> b!282111 (= res!145218 (and (= (size!7025 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7025 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7025 a!3325))))))

(assert (= (and start!27256 res!145213) b!282111))

(assert (= (and b!282111 res!145218) b!282103))

(assert (= (and b!282103 res!145217) b!282105))

(assert (= (and b!282105 res!145211) b!282104))

(assert (= (and b!282104 res!145212) b!282106))

(assert (= (and b!282106 res!145210) b!282109))

(assert (= (and b!282109 res!145216) b!282110))

(assert (= (and b!282110 res!145215) b!282107))

(assert (= (and b!282107 res!145214) b!282108))

(declare-fun m!296617 () Bool)

(assert (=> b!282109 m!296617))

(declare-fun m!296619 () Bool)

(assert (=> b!282106 m!296619))

(declare-fun m!296621 () Bool)

(assert (=> b!282103 m!296621))

(declare-fun m!296623 () Bool)

(assert (=> b!282107 m!296623))

(assert (=> b!282107 m!296623))

(declare-fun m!296625 () Bool)

(assert (=> b!282107 m!296625))

(declare-fun m!296627 () Bool)

(assert (=> b!282110 m!296627))

(declare-fun m!296629 () Bool)

(assert (=> b!282104 m!296629))

(declare-fun m!296631 () Bool)

(assert (=> b!282108 m!296631))

(declare-fun m!296633 () Bool)

(assert (=> b!282108 m!296633))

(assert (=> b!282108 m!296627))

(declare-fun m!296635 () Bool)

(assert (=> b!282108 m!296635))

(assert (=> b!282108 m!296623))

(declare-fun m!296637 () Bool)

(assert (=> b!282108 m!296637))

(assert (=> b!282108 m!296623))

(declare-fun m!296639 () Bool)

(assert (=> b!282108 m!296639))

(declare-fun m!296641 () Bool)

(assert (=> b!282108 m!296641))

(declare-fun m!296643 () Bool)

(assert (=> b!282108 m!296643))

(assert (=> b!282108 m!296633))

(declare-fun m!296645 () Bool)

(assert (=> b!282108 m!296645))

(declare-fun m!296647 () Bool)

(assert (=> b!282105 m!296647))

(declare-fun m!296649 () Bool)

(assert (=> start!27256 m!296649))

(declare-fun m!296651 () Bool)

(assert (=> start!27256 m!296651))

(push 1)

