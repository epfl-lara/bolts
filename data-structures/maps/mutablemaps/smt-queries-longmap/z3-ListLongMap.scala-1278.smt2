; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26238 () Bool)

(assert start!26238)

(declare-fun b!271329 () Bool)

(declare-fun res!135364 () Bool)

(declare-fun e!174521 () Bool)

(assert (=> b!271329 (=> (not res!135364) (not e!174521))))

(declare-datatypes ((array!13324 0))(
  ( (array!13325 (arr!6311 (Array (_ BitVec 32) (_ BitVec 64))) (size!6663 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13324)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271329 (= res!135364 (validKeyInArray!0 (select (arr!6311 a!3325) startIndex!26)))))

(declare-fun b!271330 () Bool)

(assert (=> b!271330 (= e!174521 false)))

(declare-fun lt!135814 () Bool)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-datatypes ((List!4140 0))(
  ( (Nil!4137) (Cons!4136 (h!4803 (_ BitVec 64)) (t!9230 List!4140)) )
))
(declare-fun contains!1949 (List!4140 (_ BitVec 64)) Bool)

(assert (=> b!271330 (= lt!135814 (contains!1949 Nil!4137 k0!2581))))

(declare-fun b!271331 () Bool)

(declare-fun res!135362 () Bool)

(assert (=> b!271331 (=> (not res!135362) (not e!174521))))

(assert (=> b!271331 (= res!135362 (not (contains!1949 Nil!4137 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271332 () Bool)

(declare-fun e!174522 () Bool)

(assert (=> b!271332 (= e!174522 e!174521)))

(declare-fun res!135366 () Bool)

(assert (=> b!271332 (=> (not res!135366) (not e!174521))))

(declare-datatypes ((SeekEntryResult!1480 0))(
  ( (MissingZero!1480 (index!8090 (_ BitVec 32))) (Found!1480 (index!8091 (_ BitVec 32))) (Intermediate!1480 (undefined!2292 Bool) (index!8092 (_ BitVec 32)) (x!26389 (_ BitVec 32))) (Undefined!1480) (MissingVacant!1480 (index!8093 (_ BitVec 32))) )
))
(declare-fun lt!135815 () SeekEntryResult!1480)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271332 (= res!135366 (or (= lt!135815 (MissingZero!1480 i!1267)) (= lt!135815 (MissingVacant!1480 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13324 (_ BitVec 32)) SeekEntryResult!1480)

(assert (=> b!271332 (= lt!135815 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!271333 () Bool)

(declare-fun res!135357 () Bool)

(assert (=> b!271333 (=> (not res!135357) (not e!174522))))

(assert (=> b!271333 (= res!135357 (validKeyInArray!0 k0!2581))))

(declare-fun b!271334 () Bool)

(declare-fun res!135365 () Bool)

(assert (=> b!271334 (=> (not res!135365) (not e!174521))))

(assert (=> b!271334 (= res!135365 (not (contains!1949 Nil!4137 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271335 () Bool)

(declare-fun res!135358 () Bool)

(assert (=> b!271335 (=> (not res!135358) (not e!174521))))

(declare-fun noDuplicate!138 (List!4140) Bool)

(assert (=> b!271335 (= res!135358 (noDuplicate!138 Nil!4137))))

(declare-fun b!271336 () Bool)

(declare-fun res!135368 () Bool)

(assert (=> b!271336 (=> (not res!135368) (not e!174522))))

(declare-fun arrayContainsKey!0 (array!13324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271336 (= res!135368 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!135369 () Bool)

(assert (=> start!26238 (=> (not res!135369) (not e!174522))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26238 (= res!135369 (validMask!0 mask!3868))))

(assert (=> start!26238 e!174522))

(declare-fun array_inv!4265 (array!13324) Bool)

(assert (=> start!26238 (array_inv!4265 a!3325)))

(assert (=> start!26238 true))

(declare-fun b!271337 () Bool)

(declare-fun res!135361 () Bool)

(assert (=> b!271337 (=> (not res!135361) (not e!174521))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13324 (_ BitVec 32)) Bool)

(assert (=> b!271337 (= res!135361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271338 () Bool)

(declare-fun res!135360 () Bool)

(assert (=> b!271338 (=> (not res!135360) (not e!174521))))

(assert (=> b!271338 (= res!135360 (not (= startIndex!26 i!1267)))))

(declare-fun b!271339 () Bool)

(declare-fun res!135363 () Bool)

(assert (=> b!271339 (=> (not res!135363) (not e!174522))))

(assert (=> b!271339 (= res!135363 (and (= (size!6663 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6663 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6663 a!3325))))))

(declare-fun b!271340 () Bool)

(declare-fun res!135359 () Bool)

(assert (=> b!271340 (=> (not res!135359) (not e!174521))))

(assert (=> b!271340 (= res!135359 (and (bvslt (size!6663 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6663 a!3325))))))

(declare-fun b!271341 () Bool)

(declare-fun res!135367 () Bool)

(assert (=> b!271341 (=> (not res!135367) (not e!174522))))

(declare-fun arrayNoDuplicates!0 (array!13324 (_ BitVec 32) List!4140) Bool)

(assert (=> b!271341 (= res!135367 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4137))))

(assert (= (and start!26238 res!135369) b!271339))

(assert (= (and b!271339 res!135363) b!271333))

(assert (= (and b!271333 res!135357) b!271341))

(assert (= (and b!271341 res!135367) b!271336))

(assert (= (and b!271336 res!135368) b!271332))

(assert (= (and b!271332 res!135366) b!271337))

(assert (= (and b!271337 res!135361) b!271338))

(assert (= (and b!271338 res!135360) b!271329))

(assert (= (and b!271329 res!135364) b!271340))

(assert (= (and b!271340 res!135359) b!271335))

(assert (= (and b!271335 res!135358) b!271334))

(assert (= (and b!271334 res!135365) b!271331))

(assert (= (and b!271331 res!135362) b!271330))

(declare-fun m!286677 () Bool)

(assert (=> b!271341 m!286677))

(declare-fun m!286679 () Bool)

(assert (=> b!271330 m!286679))

(declare-fun m!286681 () Bool)

(assert (=> start!26238 m!286681))

(declare-fun m!286683 () Bool)

(assert (=> start!26238 m!286683))

(declare-fun m!286685 () Bool)

(assert (=> b!271333 m!286685))

(declare-fun m!286687 () Bool)

(assert (=> b!271329 m!286687))

(assert (=> b!271329 m!286687))

(declare-fun m!286689 () Bool)

(assert (=> b!271329 m!286689))

(declare-fun m!286691 () Bool)

(assert (=> b!271334 m!286691))

(declare-fun m!286693 () Bool)

(assert (=> b!271331 m!286693))

(declare-fun m!286695 () Bool)

(assert (=> b!271332 m!286695))

(declare-fun m!286697 () Bool)

(assert (=> b!271337 m!286697))

(declare-fun m!286699 () Bool)

(assert (=> b!271336 m!286699))

(declare-fun m!286701 () Bool)

(assert (=> b!271335 m!286701))

(check-sat (not b!271337) (not b!271333) (not start!26238) (not b!271335) (not b!271329) (not b!271341) (not b!271332) (not b!271330) (not b!271336) (not b!271334) (not b!271331))
(check-sat)
