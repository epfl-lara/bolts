; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26738 () Bool)

(assert start!26738)

(declare-fun b!277554 () Bool)

(declare-fun res!141459 () Bool)

(declare-fun e!177096 () Bool)

(assert (=> b!277554 (=> (not res!141459) (not e!177096))))

(declare-datatypes ((array!13824 0))(
  ( (array!13825 (arr!6561 (Array (_ BitVec 32) (_ BitVec 64))) (size!6913 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13824)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!277554 (= res!141459 (and (= (size!6913 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6913 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6913 a!3325))))))

(declare-fun b!277555 () Bool)

(declare-fun e!177097 () Bool)

(assert (=> b!277555 (= e!177097 false)))

(declare-datatypes ((Unit!8760 0))(
  ( (Unit!8761) )
))
(declare-fun lt!138007 () Unit!8760)

(declare-fun e!177095 () Unit!8760)

(assert (=> b!277555 (= lt!138007 e!177095)))

(declare-fun c!45599 () Bool)

(assert (=> b!277555 (= c!45599 (bvslt startIndex!26 (bvsub (size!6913 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277556 () Bool)

(declare-fun res!141461 () Bool)

(assert (=> b!277556 (=> (not res!141461) (not e!177096))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13824 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277556 (= res!141461 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277557 () Bool)

(declare-fun res!141462 () Bool)

(assert (=> b!277557 (=> (not res!141462) (not e!177097))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13824 (_ BitVec 32)) Bool)

(assert (=> b!277557 (= res!141462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277558 () Bool)

(declare-fun res!141460 () Bool)

(assert (=> b!277558 (=> (not res!141460) (not e!177097))))

(assert (=> b!277558 (= res!141460 (= startIndex!26 i!1267))))

(declare-fun b!277559 () Bool)

(declare-fun lt!138008 () Unit!8760)

(assert (=> b!277559 (= e!177095 lt!138008)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13824 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8760)

(assert (=> b!277559 (= lt!138008 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277559 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13825 (store (arr!6561 a!3325) i!1267 k!2581) (size!6913 a!3325)) mask!3868)))

(declare-fun b!277560 () Bool)

(declare-fun Unit!8762 () Unit!8760)

(assert (=> b!277560 (= e!177095 Unit!8762)))

(declare-fun b!277561 () Bool)

(declare-fun res!141464 () Bool)

(assert (=> b!277561 (=> (not res!141464) (not e!177096))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277561 (= res!141464 (validKeyInArray!0 k!2581))))

(declare-fun b!277562 () Bool)

(assert (=> b!277562 (= e!177096 e!177097)))

(declare-fun res!141458 () Bool)

(assert (=> b!277562 (=> (not res!141458) (not e!177097))))

(declare-datatypes ((SeekEntryResult!1730 0))(
  ( (MissingZero!1730 (index!9090 (_ BitVec 32))) (Found!1730 (index!9091 (_ BitVec 32))) (Intermediate!1730 (undefined!2542 Bool) (index!9092 (_ BitVec 32)) (x!27303 (_ BitVec 32))) (Undefined!1730) (MissingVacant!1730 (index!9093 (_ BitVec 32))) )
))
(declare-fun lt!138006 () SeekEntryResult!1730)

(assert (=> b!277562 (= res!141458 (or (= lt!138006 (MissingZero!1730 i!1267)) (= lt!138006 (MissingVacant!1730 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13824 (_ BitVec 32)) SeekEntryResult!1730)

(assert (=> b!277562 (= lt!138006 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277563 () Bool)

(declare-fun res!141463 () Bool)

(assert (=> b!277563 (=> (not res!141463) (not e!177096))))

(declare-datatypes ((List!4390 0))(
  ( (Nil!4387) (Cons!4386 (h!5053 (_ BitVec 64)) (t!9480 List!4390)) )
))
(declare-fun arrayNoDuplicates!0 (array!13824 (_ BitVec 32) List!4390) Bool)

(assert (=> b!277563 (= res!141463 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4387))))

(declare-fun res!141465 () Bool)

(assert (=> start!26738 (=> (not res!141465) (not e!177096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26738 (= res!141465 (validMask!0 mask!3868))))

(assert (=> start!26738 e!177096))

(declare-fun array_inv!4515 (array!13824) Bool)

(assert (=> start!26738 (array_inv!4515 a!3325)))

(assert (=> start!26738 true))

(assert (= (and start!26738 res!141465) b!277554))

(assert (= (and b!277554 res!141459) b!277561))

(assert (= (and b!277561 res!141464) b!277563))

(assert (= (and b!277563 res!141463) b!277556))

(assert (= (and b!277556 res!141461) b!277562))

(assert (= (and b!277562 res!141458) b!277557))

(assert (= (and b!277557 res!141462) b!277558))

(assert (= (and b!277558 res!141460) b!277555))

(assert (= (and b!277555 c!45599) b!277559))

(assert (= (and b!277555 (not c!45599)) b!277560))

(declare-fun m!292589 () Bool)

(assert (=> b!277556 m!292589))

(declare-fun m!292591 () Bool)

(assert (=> b!277563 m!292591))

(declare-fun m!292593 () Bool)

(assert (=> b!277557 m!292593))

(declare-fun m!292595 () Bool)

(assert (=> start!26738 m!292595))

(declare-fun m!292597 () Bool)

(assert (=> start!26738 m!292597))

(declare-fun m!292599 () Bool)

(assert (=> b!277561 m!292599))

(declare-fun m!292601 () Bool)

(assert (=> b!277562 m!292601))

(declare-fun m!292603 () Bool)

(assert (=> b!277559 m!292603))

(declare-fun m!292605 () Bool)

(assert (=> b!277559 m!292605))

(declare-fun m!292607 () Bool)

(assert (=> b!277559 m!292607))

(push 1)

(assert (not start!26738))

(assert (not b!277561))

(assert (not b!277559))

(assert (not b!277557))

(assert (not b!277562))

(assert (not b!277556))

(assert (not b!277563))

(check-sat)

