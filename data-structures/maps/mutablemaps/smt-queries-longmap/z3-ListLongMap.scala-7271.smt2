; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92882 () Bool)

(assert start!92882)

(declare-fun b!1054338 () Bool)

(declare-fun e!599029 () Bool)

(declare-fun e!599024 () Bool)

(assert (=> b!1054338 (= e!599029 e!599024)))

(declare-fun res!703395 () Bool)

(assert (=> b!1054338 (=> (not res!703395) (not e!599024))))

(declare-fun lt!465373 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054338 (= res!703395 (not (= lt!465373 i!1381)))))

(declare-datatypes ((array!66490 0))(
  ( (array!66491 (arr!31973 (Array (_ BitVec 32) (_ BitVec 64))) (size!32510 (_ BitVec 32))) )
))
(declare-fun lt!465371 () array!66490)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66490 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054338 (= lt!465373 (arrayScanForKey!0 lt!465371 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1054339 () Bool)

(declare-fun e!599025 () Bool)

(assert (=> b!1054339 (= e!599025 e!599029)))

(declare-fun res!703394 () Bool)

(assert (=> b!1054339 (=> (not res!703394) (not e!599029))))

(declare-fun arrayContainsKey!0 (array!66490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054339 (= res!703394 (arrayContainsKey!0 lt!465371 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66490)

(assert (=> b!1054339 (= lt!465371 (array!66491 (store (arr!31973 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32510 a!3488)))))

(declare-fun b!1054340 () Bool)

(declare-fun e!599026 () Bool)

(declare-fun e!599028 () Bool)

(assert (=> b!1054340 (= e!599026 e!599028)))

(declare-fun res!703387 () Bool)

(assert (=> b!1054340 (=> res!703387 e!599028)))

(assert (=> b!1054340 (= res!703387 (bvsle lt!465373 i!1381))))

(declare-fun b!1054341 () Bool)

(assert (=> b!1054341 (= e!599028 (arrayContainsKey!0 a!3488 k0!2747 lt!465373))))

(declare-fun res!703389 () Bool)

(assert (=> start!92882 (=> (not res!703389) (not e!599025))))

(assert (=> start!92882 (= res!703389 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32510 a!3488)) (bvslt (size!32510 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92882 e!599025))

(assert (=> start!92882 true))

(declare-fun array_inv!24595 (array!66490) Bool)

(assert (=> start!92882 (array_inv!24595 a!3488)))

(declare-fun b!1054342 () Bool)

(declare-fun e!599027 () Bool)

(assert (=> b!1054342 (= e!599027 true)))

(declare-datatypes ((List!22416 0))(
  ( (Nil!22413) (Cons!22412 (h!23621 (_ BitVec 64)) (t!31730 List!22416)) )
))
(declare-fun arrayNoDuplicates!0 (array!66490 (_ BitVec 32) List!22416) Bool)

(assert (=> b!1054342 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22413)))

(declare-datatypes ((Unit!34513 0))(
  ( (Unit!34514) )
))
(declare-fun lt!465372 () Unit!34513)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66490 (_ BitVec 32) (_ BitVec 32)) Unit!34513)

(assert (=> b!1054342 (= lt!465372 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054343 () Bool)

(declare-fun res!703391 () Bool)

(assert (=> b!1054343 (=> (not res!703391) (not e!599025))))

(assert (=> b!1054343 (= res!703391 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22413))))

(declare-fun b!1054344 () Bool)

(declare-fun res!703392 () Bool)

(assert (=> b!1054344 (=> (not res!703392) (not e!599025))))

(assert (=> b!1054344 (= res!703392 (= (select (arr!31973 a!3488) i!1381) k0!2747))))

(declare-fun b!1054345 () Bool)

(declare-fun res!703388 () Bool)

(assert (=> b!1054345 (=> (not res!703388) (not e!599025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054345 (= res!703388 (validKeyInArray!0 k0!2747))))

(declare-fun b!1054346 () Bool)

(assert (=> b!1054346 (= e!599024 (not e!599027))))

(declare-fun res!703390 () Bool)

(assert (=> b!1054346 (=> res!703390 e!599027)))

(assert (=> b!1054346 (= res!703390 (bvsle lt!465373 i!1381))))

(assert (=> b!1054346 e!599026))

(declare-fun res!703393 () Bool)

(assert (=> b!1054346 (=> (not res!703393) (not e!599026))))

(assert (=> b!1054346 (= res!703393 (= (select (store (arr!31973 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465373) k0!2747))))

(assert (= (and start!92882 res!703389) b!1054343))

(assert (= (and b!1054343 res!703391) b!1054345))

(assert (= (and b!1054345 res!703388) b!1054344))

(assert (= (and b!1054344 res!703392) b!1054339))

(assert (= (and b!1054339 res!703394) b!1054338))

(assert (= (and b!1054338 res!703395) b!1054346))

(assert (= (and b!1054346 res!703393) b!1054340))

(assert (= (and b!1054340 (not res!703387)) b!1054341))

(assert (= (and b!1054346 (not res!703390)) b!1054342))

(declare-fun m!974557 () Bool)

(assert (=> b!1054339 m!974557))

(declare-fun m!974559 () Bool)

(assert (=> b!1054339 m!974559))

(declare-fun m!974561 () Bool)

(assert (=> b!1054341 m!974561))

(assert (=> b!1054346 m!974559))

(declare-fun m!974563 () Bool)

(assert (=> b!1054346 m!974563))

(declare-fun m!974565 () Bool)

(assert (=> b!1054344 m!974565))

(declare-fun m!974567 () Bool)

(assert (=> b!1054342 m!974567))

(declare-fun m!974569 () Bool)

(assert (=> b!1054342 m!974569))

(declare-fun m!974571 () Bool)

(assert (=> b!1054345 m!974571))

(declare-fun m!974573 () Bool)

(assert (=> b!1054343 m!974573))

(declare-fun m!974575 () Bool)

(assert (=> b!1054338 m!974575))

(declare-fun m!974577 () Bool)

(assert (=> start!92882 m!974577))

(check-sat (not b!1054345) (not b!1054341) (not b!1054343) (not b!1054339) (not start!92882) (not b!1054342) (not b!1054338))
(check-sat)
