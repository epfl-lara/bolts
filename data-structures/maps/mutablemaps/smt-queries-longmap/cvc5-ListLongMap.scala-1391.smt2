; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27208 () Bool)

(assert start!27208)

(declare-fun b!281455 () Bool)

(declare-fun res!144567 () Bool)

(declare-fun e!178876 () Bool)

(assert (=> b!281455 (=> (not res!144567) (not e!178876))))

(declare-datatypes ((array!14015 0))(
  ( (array!14016 (arr!6649 (Array (_ BitVec 32) (_ BitVec 64))) (size!7001 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14015)

(declare-datatypes ((List!4478 0))(
  ( (Nil!4475) (Cons!4474 (h!5144 (_ BitVec 64)) (t!9568 List!4478)) )
))
(declare-fun arrayNoDuplicates!0 (array!14015 (_ BitVec 32) List!4478) Bool)

(assert (=> b!281455 (= res!144567 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4475))))

(declare-fun b!281456 () Bool)

(declare-fun e!178878 () Bool)

(assert (=> b!281456 (= e!178876 e!178878)))

(declare-fun res!144569 () Bool)

(assert (=> b!281456 (=> (not res!144569) (not e!178878))))

(declare-datatypes ((SeekEntryResult!1818 0))(
  ( (MissingZero!1818 (index!9442 (_ BitVec 32))) (Found!1818 (index!9443 (_ BitVec 32))) (Intermediate!1818 (undefined!2630 Bool) (index!9444 (_ BitVec 32)) (x!27640 (_ BitVec 32))) (Undefined!1818) (MissingVacant!1818 (index!9445 (_ BitVec 32))) )
))
(declare-fun lt!139088 () SeekEntryResult!1818)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281456 (= res!144569 (or (= lt!139088 (MissingZero!1818 i!1267)) (= lt!139088 (MissingVacant!1818 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14015 (_ BitVec 32)) SeekEntryResult!1818)

(assert (=> b!281456 (= lt!139088 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281457 () Bool)

(declare-fun res!144566 () Bool)

(declare-fun e!178879 () Bool)

(assert (=> b!281457 (=> (not res!144566) (not e!178879))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281457 (= res!144566 (validKeyInArray!0 (select (arr!6649 a!3325) startIndex!26)))))

(declare-fun b!281458 () Bool)

(assert (=> b!281458 (= e!178879 (not true))))

(declare-fun lt!139090 () array!14015)

(assert (=> b!281458 (= (seekEntryOrOpen!0 (select (arr!6649 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6649 a!3325) i!1267 k!2581) startIndex!26) lt!139090 mask!3868))))

(declare-datatypes ((Unit!8899 0))(
  ( (Unit!8900) )
))
(declare-fun lt!139089 () Unit!8899)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14015 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8899)

(assert (=> b!281458 (= lt!139089 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!281458 (arrayNoDuplicates!0 lt!139090 #b00000000000000000000000000000000 Nil!4475)))

(declare-fun lt!139091 () Unit!8899)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14015 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4478) Unit!8899)

(assert (=> b!281458 (= lt!139091 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4475))))

(declare-fun b!281459 () Bool)

(declare-fun res!144570 () Bool)

(assert (=> b!281459 (=> (not res!144570) (not e!178876))))

(assert (=> b!281459 (= res!144570 (validKeyInArray!0 k!2581))))

(declare-fun b!281460 () Bool)

(declare-fun res!144568 () Bool)

(assert (=> b!281460 (=> (not res!144568) (not e!178876))))

(assert (=> b!281460 (= res!144568 (and (= (size!7001 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7001 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7001 a!3325))))))

(declare-fun b!281461 () Bool)

(assert (=> b!281461 (= e!178878 e!178879)))

(declare-fun res!144562 () Bool)

(assert (=> b!281461 (=> (not res!144562) (not e!178879))))

(assert (=> b!281461 (= res!144562 (not (= startIndex!26 i!1267)))))

(assert (=> b!281461 (= lt!139090 (array!14016 (store (arr!6649 a!3325) i!1267 k!2581) (size!7001 a!3325)))))

(declare-fun res!144563 () Bool)

(assert (=> start!27208 (=> (not res!144563) (not e!178876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27208 (= res!144563 (validMask!0 mask!3868))))

(assert (=> start!27208 e!178876))

(declare-fun array_inv!4603 (array!14015) Bool)

(assert (=> start!27208 (array_inv!4603 a!3325)))

(assert (=> start!27208 true))

(declare-fun b!281462 () Bool)

(declare-fun res!144564 () Bool)

(assert (=> b!281462 (=> (not res!144564) (not e!178876))))

(declare-fun arrayContainsKey!0 (array!14015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281462 (= res!144564 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281463 () Bool)

(declare-fun res!144565 () Bool)

(assert (=> b!281463 (=> (not res!144565) (not e!178878))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14015 (_ BitVec 32)) Bool)

(assert (=> b!281463 (= res!144565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27208 res!144563) b!281460))

(assert (= (and b!281460 res!144568) b!281459))

(assert (= (and b!281459 res!144570) b!281455))

(assert (= (and b!281455 res!144567) b!281462))

(assert (= (and b!281462 res!144564) b!281456))

(assert (= (and b!281456 res!144569) b!281463))

(assert (= (and b!281463 res!144565) b!281461))

(assert (= (and b!281461 res!144562) b!281457))

(assert (= (and b!281457 res!144566) b!281458))

(declare-fun m!295813 () Bool)

(assert (=> start!27208 m!295813))

(declare-fun m!295815 () Bool)

(assert (=> start!27208 m!295815))

(declare-fun m!295817 () Bool)

(assert (=> b!281455 m!295817))

(declare-fun m!295819 () Bool)

(assert (=> b!281458 m!295819))

(declare-fun m!295821 () Bool)

(assert (=> b!281458 m!295821))

(declare-fun m!295823 () Bool)

(assert (=> b!281458 m!295823))

(declare-fun m!295825 () Bool)

(assert (=> b!281458 m!295825))

(declare-fun m!295827 () Bool)

(assert (=> b!281458 m!295827))

(assert (=> b!281458 m!295823))

(declare-fun m!295829 () Bool)

(assert (=> b!281458 m!295829))

(declare-fun m!295831 () Bool)

(assert (=> b!281458 m!295831))

(assert (=> b!281458 m!295819))

(declare-fun m!295833 () Bool)

(assert (=> b!281458 m!295833))

(declare-fun m!295835 () Bool)

(assert (=> b!281462 m!295835))

(declare-fun m!295837 () Bool)

(assert (=> b!281463 m!295837))

(declare-fun m!295839 () Bool)

(assert (=> b!281456 m!295839))

(declare-fun m!295841 () Bool)

(assert (=> b!281459 m!295841))

(assert (=> b!281457 m!295823))

(assert (=> b!281457 m!295823))

(declare-fun m!295843 () Bool)

(assert (=> b!281457 m!295843))

(assert (=> b!281461 m!295821))

(push 1)

