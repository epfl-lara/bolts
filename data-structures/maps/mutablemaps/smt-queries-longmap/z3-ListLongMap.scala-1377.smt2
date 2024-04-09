; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27126 () Bool)

(assert start!27126)

(declare-fun b!280332 () Bool)

(declare-fun res!143448 () Bool)

(declare-fun e!178505 () Bool)

(assert (=> b!280332 (=> (not res!143448) (not e!178505))))

(declare-datatypes ((array!13933 0))(
  ( (array!13934 (arr!6608 (Array (_ BitVec 32) (_ BitVec 64))) (size!6960 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13933)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280332 (= res!143448 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280333 () Bool)

(declare-fun res!143451 () Bool)

(declare-fun e!178506 () Bool)

(assert (=> b!280333 (=> (not res!143451) (not e!178506))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13933 (_ BitVec 32)) Bool)

(assert (=> b!280333 (= res!143451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280334 () Bool)

(declare-fun res!143445 () Bool)

(assert (=> b!280334 (=> (not res!143445) (not e!178505))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280334 (= res!143445 (validKeyInArray!0 k0!2581))))

(declare-fun b!280335 () Bool)

(declare-fun res!143442 () Bool)

(assert (=> b!280335 (=> (not res!143442) (not e!178506))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280335 (= res!143442 (not (= startIndex!26 i!1267)))))

(declare-fun b!280336 () Bool)

(assert (=> b!280336 (= e!178505 e!178506)))

(declare-fun res!143441 () Bool)

(assert (=> b!280336 (=> (not res!143441) (not e!178506))))

(declare-datatypes ((SeekEntryResult!1777 0))(
  ( (MissingZero!1777 (index!9278 (_ BitVec 32))) (Found!1777 (index!9279 (_ BitVec 32))) (Intermediate!1777 (undefined!2589 Bool) (index!9280 (_ BitVec 32)) (x!27487 (_ BitVec 32))) (Undefined!1777) (MissingVacant!1777 (index!9281 (_ BitVec 32))) )
))
(declare-fun lt!138839 () SeekEntryResult!1777)

(assert (=> b!280336 (= res!143441 (or (= lt!138839 (MissingZero!1777 i!1267)) (= lt!138839 (MissingVacant!1777 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13933 (_ BitVec 32)) SeekEntryResult!1777)

(assert (=> b!280336 (= lt!138839 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!280337 () Bool)

(declare-fun res!143449 () Bool)

(assert (=> b!280337 (=> (not res!143449) (not e!178506))))

(declare-datatypes ((List!4437 0))(
  ( (Nil!4434) (Cons!4433 (h!5103 (_ BitVec 64)) (t!9527 List!4437)) )
))
(declare-fun contains!1987 (List!4437 (_ BitVec 64)) Bool)

(assert (=> b!280337 (= res!143449 (not (contains!1987 Nil!4434 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280338 () Bool)

(declare-fun res!143444 () Bool)

(assert (=> b!280338 (=> (not res!143444) (not e!178505))))

(assert (=> b!280338 (= res!143444 (and (= (size!6960 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6960 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6960 a!3325))))))

(declare-fun b!280339 () Bool)

(declare-fun res!143439 () Bool)

(assert (=> b!280339 (=> (not res!143439) (not e!178506))))

(assert (=> b!280339 (= res!143439 (validKeyInArray!0 (select (arr!6608 a!3325) startIndex!26)))))

(declare-fun b!280340 () Bool)

(declare-fun res!143440 () Bool)

(assert (=> b!280340 (=> (not res!143440) (not e!178506))))

(assert (=> b!280340 (= res!143440 (and (bvslt (size!6960 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6960 a!3325))))))

(declare-fun b!280341 () Bool)

(declare-fun res!143446 () Bool)

(assert (=> b!280341 (=> (not res!143446) (not e!178506))))

(assert (=> b!280341 (= res!143446 (not (contains!1987 Nil!4434 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!143450 () Bool)

(assert (=> start!27126 (=> (not res!143450) (not e!178505))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27126 (= res!143450 (validMask!0 mask!3868))))

(assert (=> start!27126 e!178505))

(declare-fun array_inv!4562 (array!13933) Bool)

(assert (=> start!27126 (array_inv!4562 a!3325)))

(assert (=> start!27126 true))

(declare-fun b!280342 () Bool)

(declare-fun res!143443 () Bool)

(assert (=> b!280342 (=> (not res!143443) (not e!178506))))

(declare-fun noDuplicate!171 (List!4437) Bool)

(assert (=> b!280342 (= res!143443 (noDuplicate!171 Nil!4434))))

(declare-fun b!280343 () Bool)

(assert (=> b!280343 (= e!178506 false)))

(declare-fun lt!138838 () Bool)

(assert (=> b!280343 (= lt!138838 (contains!1987 Nil!4434 k0!2581))))

(declare-fun b!280344 () Bool)

(declare-fun res!143447 () Bool)

(assert (=> b!280344 (=> (not res!143447) (not e!178505))))

(declare-fun arrayNoDuplicates!0 (array!13933 (_ BitVec 32) List!4437) Bool)

(assert (=> b!280344 (= res!143447 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4434))))

(assert (= (and start!27126 res!143450) b!280338))

(assert (= (and b!280338 res!143444) b!280334))

(assert (= (and b!280334 res!143445) b!280344))

(assert (= (and b!280344 res!143447) b!280332))

(assert (= (and b!280332 res!143448) b!280336))

(assert (= (and b!280336 res!143441) b!280333))

(assert (= (and b!280333 res!143451) b!280335))

(assert (= (and b!280335 res!143442) b!280339))

(assert (= (and b!280339 res!143439) b!280340))

(assert (= (and b!280340 res!143440) b!280342))

(assert (= (and b!280342 res!143443) b!280337))

(assert (= (and b!280337 res!143449) b!280341))

(assert (= (and b!280341 res!143446) b!280343))

(declare-fun m!294825 () Bool)

(assert (=> b!280341 m!294825))

(declare-fun m!294827 () Bool)

(assert (=> b!280342 m!294827))

(declare-fun m!294829 () Bool)

(assert (=> start!27126 m!294829))

(declare-fun m!294831 () Bool)

(assert (=> start!27126 m!294831))

(declare-fun m!294833 () Bool)

(assert (=> b!280343 m!294833))

(declare-fun m!294835 () Bool)

(assert (=> b!280339 m!294835))

(assert (=> b!280339 m!294835))

(declare-fun m!294837 () Bool)

(assert (=> b!280339 m!294837))

(declare-fun m!294839 () Bool)

(assert (=> b!280344 m!294839))

(declare-fun m!294841 () Bool)

(assert (=> b!280332 m!294841))

(declare-fun m!294843 () Bool)

(assert (=> b!280337 m!294843))

(declare-fun m!294845 () Bool)

(assert (=> b!280334 m!294845))

(declare-fun m!294847 () Bool)

(assert (=> b!280333 m!294847))

(declare-fun m!294849 () Bool)

(assert (=> b!280336 m!294849))

(check-sat (not b!280343) (not b!280333) (not b!280336) (not b!280342) (not b!280337) (not b!280334) (not b!280339) (not b!280332) (not start!27126) (not b!280344) (not b!280341))
(check-sat)
