; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27218 () Bool)

(assert start!27218)

(declare-fun res!144697 () Bool)

(declare-fun e!178937 () Bool)

(assert (=> start!27218 (=> (not res!144697) (not e!178937))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27218 (= res!144697 (validMask!0 mask!3868))))

(assert (=> start!27218 e!178937))

(declare-datatypes ((array!14025 0))(
  ( (array!14026 (arr!6654 (Array (_ BitVec 32) (_ BitVec 64))) (size!7006 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14025)

(declare-fun array_inv!4608 (array!14025) Bool)

(assert (=> start!27218 (array_inv!4608 a!3325)))

(assert (=> start!27218 true))

(declare-fun b!281590 () Bool)

(declare-fun res!144701 () Bool)

(assert (=> b!281590 (=> (not res!144701) (not e!178937))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281590 (= res!144701 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281591 () Bool)

(declare-fun e!178939 () Bool)

(assert (=> b!281591 (= e!178937 e!178939)))

(declare-fun res!144698 () Bool)

(assert (=> b!281591 (=> (not res!144698) (not e!178939))))

(declare-datatypes ((SeekEntryResult!1823 0))(
  ( (MissingZero!1823 (index!9462 (_ BitVec 32))) (Found!1823 (index!9463 (_ BitVec 32))) (Intermediate!1823 (undefined!2635 Bool) (index!9464 (_ BitVec 32)) (x!27653 (_ BitVec 32))) (Undefined!1823) (MissingVacant!1823 (index!9465 (_ BitVec 32))) )
))
(declare-fun lt!139150 () SeekEntryResult!1823)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281591 (= res!144698 (or (= lt!139150 (MissingZero!1823 i!1267)) (= lt!139150 (MissingVacant!1823 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14025 (_ BitVec 32)) SeekEntryResult!1823)

(assert (=> b!281591 (= lt!139150 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281592 () Bool)

(declare-fun res!144705 () Bool)

(assert (=> b!281592 (=> (not res!144705) (not e!178937))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281592 (= res!144705 (and (= (size!7006 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7006 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7006 a!3325))))))

(declare-fun b!281593 () Bool)

(declare-fun e!178938 () Bool)

(assert (=> b!281593 (= e!178939 e!178938)))

(declare-fun res!144700 () Bool)

(assert (=> b!281593 (=> (not res!144700) (not e!178938))))

(assert (=> b!281593 (= res!144700 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139148 () array!14025)

(assert (=> b!281593 (= lt!139148 (array!14026 (store (arr!6654 a!3325) i!1267 k!2581) (size!7006 a!3325)))))

(declare-fun b!281594 () Bool)

(declare-fun res!144704 () Bool)

(assert (=> b!281594 (=> (not res!144704) (not e!178939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14025 (_ BitVec 32)) Bool)

(assert (=> b!281594 (= res!144704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281595 () Bool)

(declare-fun res!144699 () Bool)

(assert (=> b!281595 (=> (not res!144699) (not e!178937))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281595 (= res!144699 (validKeyInArray!0 k!2581))))

(declare-fun b!281596 () Bool)

(declare-fun res!144703 () Bool)

(assert (=> b!281596 (=> (not res!144703) (not e!178938))))

(assert (=> b!281596 (= res!144703 (validKeyInArray!0 (select (arr!6654 a!3325) startIndex!26)))))

(declare-fun b!281597 () Bool)

(assert (=> b!281597 (= e!178938 (not true))))

(assert (=> b!281597 (= (seekEntryOrOpen!0 (select (arr!6654 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6654 a!3325) i!1267 k!2581) startIndex!26) lt!139148 mask!3868))))

(declare-datatypes ((Unit!8909 0))(
  ( (Unit!8910) )
))
(declare-fun lt!139149 () Unit!8909)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14025 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8909)

(assert (=> b!281597 (= lt!139149 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4483 0))(
  ( (Nil!4480) (Cons!4479 (h!5149 (_ BitVec 64)) (t!9573 List!4483)) )
))
(declare-fun arrayNoDuplicates!0 (array!14025 (_ BitVec 32) List!4483) Bool)

(assert (=> b!281597 (arrayNoDuplicates!0 lt!139148 #b00000000000000000000000000000000 Nil!4480)))

(declare-fun lt!139151 () Unit!8909)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14025 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4483) Unit!8909)

(assert (=> b!281597 (= lt!139151 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4480))))

(declare-fun b!281598 () Bool)

(declare-fun res!144702 () Bool)

(assert (=> b!281598 (=> (not res!144702) (not e!178937))))

(assert (=> b!281598 (= res!144702 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4480))))

(assert (= (and start!27218 res!144697) b!281592))

(assert (= (and b!281592 res!144705) b!281595))

(assert (= (and b!281595 res!144699) b!281598))

(assert (= (and b!281598 res!144702) b!281590))

(assert (= (and b!281590 res!144701) b!281591))

(assert (= (and b!281591 res!144698) b!281594))

(assert (= (and b!281594 res!144704) b!281593))

(assert (= (and b!281593 res!144700) b!281596))

(assert (= (and b!281596 res!144703) b!281597))

(declare-fun m!295973 () Bool)

(assert (=> b!281596 m!295973))

(assert (=> b!281596 m!295973))

(declare-fun m!295975 () Bool)

(assert (=> b!281596 m!295975))

(declare-fun m!295977 () Bool)

(assert (=> b!281594 m!295977))

(declare-fun m!295979 () Bool)

(assert (=> b!281598 m!295979))

(declare-fun m!295981 () Bool)

(assert (=> b!281590 m!295981))

(declare-fun m!295983 () Bool)

(assert (=> b!281595 m!295983))

(declare-fun m!295985 () Bool)

(assert (=> b!281591 m!295985))

(declare-fun m!295987 () Bool)

(assert (=> b!281593 m!295987))

(declare-fun m!295989 () Bool)

(assert (=> start!27218 m!295989))

(declare-fun m!295991 () Bool)

(assert (=> start!27218 m!295991))

(declare-fun m!295993 () Bool)

(assert (=> b!281597 m!295993))

(declare-fun m!295995 () Bool)

(assert (=> b!281597 m!295995))

(declare-fun m!295997 () Bool)

(assert (=> b!281597 m!295997))

(assert (=> b!281597 m!295995))

(assert (=> b!281597 m!295987))

(assert (=> b!281597 m!295973))

(declare-fun m!295999 () Bool)

(assert (=> b!281597 m!295999))

(declare-fun m!296001 () Bool)

(assert (=> b!281597 m!296001))

(assert (=> b!281597 m!295973))

(declare-fun m!296003 () Bool)

(assert (=> b!281597 m!296003))

(push 1)

