; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26244 () Bool)

(assert start!26244)

(declare-fun b!271446 () Bool)

(declare-fun res!135480 () Bool)

(declare-fun e!174550 () Bool)

(assert (=> b!271446 (=> (not res!135480) (not e!174550))))

(declare-datatypes ((List!4143 0))(
  ( (Nil!4140) (Cons!4139 (h!4806 (_ BitVec 64)) (t!9233 List!4143)) )
))
(declare-fun contains!1952 (List!4143 (_ BitVec 64)) Bool)

(assert (=> b!271446 (= res!135480 (not (contains!1952 Nil!4140 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271447 () Bool)

(declare-fun res!135482 () Bool)

(assert (=> b!271447 (=> (not res!135482) (not e!174550))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271447 (= res!135482 (not (= startIndex!26 i!1267)))))

(declare-fun res!135475 () Bool)

(declare-fun e!174548 () Bool)

(assert (=> start!26244 (=> (not res!135475) (not e!174548))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26244 (= res!135475 (validMask!0 mask!3868))))

(assert (=> start!26244 e!174548))

(declare-datatypes ((array!13330 0))(
  ( (array!13331 (arr!6314 (Array (_ BitVec 32) (_ BitVec 64))) (size!6666 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13330)

(declare-fun array_inv!4268 (array!13330) Bool)

(assert (=> start!26244 (array_inv!4268 a!3325)))

(assert (=> start!26244 true))

(declare-fun b!271448 () Bool)

(declare-fun res!135478 () Bool)

(assert (=> b!271448 (=> (not res!135478) (not e!174548))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13330 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271448 (= res!135478 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271449 () Bool)

(declare-fun res!135481 () Bool)

(assert (=> b!271449 (=> (not res!135481) (not e!174548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271449 (= res!135481 (validKeyInArray!0 k0!2581))))

(declare-fun b!271450 () Bool)

(declare-fun res!135474 () Bool)

(assert (=> b!271450 (=> (not res!135474) (not e!174550))))

(declare-fun noDuplicate!141 (List!4143) Bool)

(assert (=> b!271450 (= res!135474 (noDuplicate!141 Nil!4140))))

(declare-fun b!271451 () Bool)

(declare-fun res!135484 () Bool)

(assert (=> b!271451 (=> (not res!135484) (not e!174550))))

(assert (=> b!271451 (= res!135484 (validKeyInArray!0 (select (arr!6314 a!3325) startIndex!26)))))

(declare-fun b!271452 () Bool)

(declare-fun res!135479 () Bool)

(assert (=> b!271452 (=> (not res!135479) (not e!174550))))

(assert (=> b!271452 (= res!135479 (not (contains!1952 Nil!4140 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271453 () Bool)

(declare-fun res!135476 () Bool)

(assert (=> b!271453 (=> (not res!135476) (not e!174548))))

(declare-fun arrayNoDuplicates!0 (array!13330 (_ BitVec 32) List!4143) Bool)

(assert (=> b!271453 (= res!135476 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4140))))

(declare-fun b!271454 () Bool)

(declare-fun res!135483 () Bool)

(assert (=> b!271454 (=> (not res!135483) (not e!174548))))

(assert (=> b!271454 (= res!135483 (and (= (size!6666 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6666 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6666 a!3325))))))

(declare-fun b!271455 () Bool)

(declare-fun res!135477 () Bool)

(assert (=> b!271455 (=> (not res!135477) (not e!174550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13330 (_ BitVec 32)) Bool)

(assert (=> b!271455 (= res!135477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271456 () Bool)

(declare-fun res!135486 () Bool)

(assert (=> b!271456 (=> (not res!135486) (not e!174550))))

(assert (=> b!271456 (= res!135486 (and (bvslt (size!6666 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6666 a!3325))))))

(declare-fun b!271457 () Bool)

(assert (=> b!271457 (= e!174550 false)))

(declare-fun lt!135832 () Bool)

(assert (=> b!271457 (= lt!135832 (contains!1952 Nil!4140 k0!2581))))

(declare-fun b!271458 () Bool)

(assert (=> b!271458 (= e!174548 e!174550)))

(declare-fun res!135485 () Bool)

(assert (=> b!271458 (=> (not res!135485) (not e!174550))))

(declare-datatypes ((SeekEntryResult!1483 0))(
  ( (MissingZero!1483 (index!8102 (_ BitVec 32))) (Found!1483 (index!8103 (_ BitVec 32))) (Intermediate!1483 (undefined!2295 Bool) (index!8104 (_ BitVec 32)) (x!26400 (_ BitVec 32))) (Undefined!1483) (MissingVacant!1483 (index!8105 (_ BitVec 32))) )
))
(declare-fun lt!135833 () SeekEntryResult!1483)

(assert (=> b!271458 (= res!135485 (or (= lt!135833 (MissingZero!1483 i!1267)) (= lt!135833 (MissingVacant!1483 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13330 (_ BitVec 32)) SeekEntryResult!1483)

(assert (=> b!271458 (= lt!135833 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!26244 res!135475) b!271454))

(assert (= (and b!271454 res!135483) b!271449))

(assert (= (and b!271449 res!135481) b!271453))

(assert (= (and b!271453 res!135476) b!271448))

(assert (= (and b!271448 res!135478) b!271458))

(assert (= (and b!271458 res!135485) b!271455))

(assert (= (and b!271455 res!135477) b!271447))

(assert (= (and b!271447 res!135482) b!271451))

(assert (= (and b!271451 res!135484) b!271456))

(assert (= (and b!271456 res!135486) b!271450))

(assert (= (and b!271450 res!135474) b!271446))

(assert (= (and b!271446 res!135480) b!271452))

(assert (= (and b!271452 res!135479) b!271457))

(declare-fun m!286755 () Bool)

(assert (=> start!26244 m!286755))

(declare-fun m!286757 () Bool)

(assert (=> start!26244 m!286757))

(declare-fun m!286759 () Bool)

(assert (=> b!271458 m!286759))

(declare-fun m!286761 () Bool)

(assert (=> b!271457 m!286761))

(declare-fun m!286763 () Bool)

(assert (=> b!271451 m!286763))

(assert (=> b!271451 m!286763))

(declare-fun m!286765 () Bool)

(assert (=> b!271451 m!286765))

(declare-fun m!286767 () Bool)

(assert (=> b!271452 m!286767))

(declare-fun m!286769 () Bool)

(assert (=> b!271453 m!286769))

(declare-fun m!286771 () Bool)

(assert (=> b!271448 m!286771))

(declare-fun m!286773 () Bool)

(assert (=> b!271455 m!286773))

(declare-fun m!286775 () Bool)

(assert (=> b!271449 m!286775))

(declare-fun m!286777 () Bool)

(assert (=> b!271450 m!286777))

(declare-fun m!286779 () Bool)

(assert (=> b!271446 m!286779))

(check-sat (not b!271455) (not b!271452) (not b!271451) (not b!271457) (not b!271450) (not b!271448) (not b!271458) (not b!271446) (not b!271449) (not start!26244) (not b!271453))
(check-sat)
