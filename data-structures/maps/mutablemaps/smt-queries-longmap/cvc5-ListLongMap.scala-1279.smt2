; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26242 () Bool)

(assert start!26242)

(declare-fun b!271407 () Bool)

(declare-fun res!135444 () Bool)

(declare-fun e!174539 () Bool)

(assert (=> b!271407 (=> (not res!135444) (not e!174539))))

(declare-datatypes ((array!13328 0))(
  ( (array!13329 (arr!6313 (Array (_ BitVec 32) (_ BitVec 64))) (size!6665 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13328)

(declare-datatypes ((List!4142 0))(
  ( (Nil!4139) (Cons!4138 (h!4805 (_ BitVec 64)) (t!9232 List!4142)) )
))
(declare-fun arrayNoDuplicates!0 (array!13328 (_ BitVec 32) List!4142) Bool)

(assert (=> b!271407 (= res!135444 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4139))))

(declare-fun b!271408 () Bool)

(declare-fun res!135443 () Bool)

(declare-fun e!174540 () Bool)

(assert (=> b!271408 (=> (not res!135443) (not e!174540))))

(declare-fun noDuplicate!140 (List!4142) Bool)

(assert (=> b!271408 (= res!135443 (noDuplicate!140 Nil!4139))))

(declare-fun b!271409 () Bool)

(declare-fun res!135446 () Bool)

(assert (=> b!271409 (=> (not res!135446) (not e!174540))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13328 (_ BitVec 32)) Bool)

(assert (=> b!271409 (= res!135446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271410 () Bool)

(declare-fun res!135447 () Bool)

(assert (=> b!271410 (=> (not res!135447) (not e!174539))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271410 (= res!135447 (validKeyInArray!0 k!2581))))

(declare-fun b!271411 () Bool)

(declare-fun res!135440 () Bool)

(assert (=> b!271411 (=> (not res!135440) (not e!174540))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!271411 (= res!135440 (not (= startIndex!26 i!1267)))))

(declare-fun b!271412 () Bool)

(declare-fun res!135439 () Bool)

(assert (=> b!271412 (=> (not res!135439) (not e!174540))))

(assert (=> b!271412 (= res!135439 (validKeyInArray!0 (select (arr!6313 a!3325) startIndex!26)))))

(declare-fun b!271413 () Bool)

(declare-fun res!135435 () Bool)

(assert (=> b!271413 (=> (not res!135435) (not e!174539))))

(assert (=> b!271413 (= res!135435 (and (= (size!6665 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6665 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6665 a!3325))))))

(declare-fun res!135445 () Bool)

(assert (=> start!26242 (=> (not res!135445) (not e!174539))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26242 (= res!135445 (validMask!0 mask!3868))))

(assert (=> start!26242 e!174539))

(declare-fun array_inv!4267 (array!13328) Bool)

(assert (=> start!26242 (array_inv!4267 a!3325)))

(assert (=> start!26242 true))

(declare-fun b!271414 () Bool)

(declare-fun res!135437 () Bool)

(assert (=> b!271414 (=> (not res!135437) (not e!174539))))

(declare-fun arrayContainsKey!0 (array!13328 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271414 (= res!135437 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271415 () Bool)

(assert (=> b!271415 (= e!174540 false)))

(declare-fun lt!135827 () Bool)

(declare-fun contains!1951 (List!4142 (_ BitVec 64)) Bool)

(assert (=> b!271415 (= lt!135827 (contains!1951 Nil!4139 k!2581))))

(declare-fun b!271416 () Bool)

(declare-fun res!135436 () Bool)

(assert (=> b!271416 (=> (not res!135436) (not e!174540))))

(assert (=> b!271416 (= res!135436 (not (contains!1951 Nil!4139 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271417 () Bool)

(declare-fun res!135441 () Bool)

(assert (=> b!271417 (=> (not res!135441) (not e!174540))))

(assert (=> b!271417 (= res!135441 (not (contains!1951 Nil!4139 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!271418 () Bool)

(declare-fun res!135442 () Bool)

(assert (=> b!271418 (=> (not res!135442) (not e!174540))))

(assert (=> b!271418 (= res!135442 (and (bvslt (size!6665 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6665 a!3325))))))

(declare-fun b!271419 () Bool)

(assert (=> b!271419 (= e!174539 e!174540)))

(declare-fun res!135438 () Bool)

(assert (=> b!271419 (=> (not res!135438) (not e!174540))))

(declare-datatypes ((SeekEntryResult!1482 0))(
  ( (MissingZero!1482 (index!8098 (_ BitVec 32))) (Found!1482 (index!8099 (_ BitVec 32))) (Intermediate!1482 (undefined!2294 Bool) (index!8100 (_ BitVec 32)) (x!26399 (_ BitVec 32))) (Undefined!1482) (MissingVacant!1482 (index!8101 (_ BitVec 32))) )
))
(declare-fun lt!135826 () SeekEntryResult!1482)

(assert (=> b!271419 (= res!135438 (or (= lt!135826 (MissingZero!1482 i!1267)) (= lt!135826 (MissingVacant!1482 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13328 (_ BitVec 32)) SeekEntryResult!1482)

(assert (=> b!271419 (= lt!135826 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26242 res!135445) b!271413))

(assert (= (and b!271413 res!135435) b!271410))

(assert (= (and b!271410 res!135447) b!271407))

(assert (= (and b!271407 res!135444) b!271414))

(assert (= (and b!271414 res!135437) b!271419))

(assert (= (and b!271419 res!135438) b!271409))

(assert (= (and b!271409 res!135446) b!271411))

(assert (= (and b!271411 res!135440) b!271412))

(assert (= (and b!271412 res!135439) b!271418))

(assert (= (and b!271418 res!135442) b!271408))

(assert (= (and b!271408 res!135443) b!271416))

(assert (= (and b!271416 res!135436) b!271417))

(assert (= (and b!271417 res!135441) b!271415))

(declare-fun m!286729 () Bool)

(assert (=> b!271417 m!286729))

(declare-fun m!286731 () Bool)

(assert (=> b!271410 m!286731))

(declare-fun m!286733 () Bool)

(assert (=> b!271408 m!286733))

(declare-fun m!286735 () Bool)

(assert (=> b!271416 m!286735))

(declare-fun m!286737 () Bool)

(assert (=> b!271407 m!286737))

(declare-fun m!286739 () Bool)

(assert (=> b!271419 m!286739))

(declare-fun m!286741 () Bool)

(assert (=> start!26242 m!286741))

(declare-fun m!286743 () Bool)

(assert (=> start!26242 m!286743))

(declare-fun m!286745 () Bool)

(assert (=> b!271415 m!286745))

(declare-fun m!286747 () Bool)

(assert (=> b!271412 m!286747))

(assert (=> b!271412 m!286747))

(declare-fun m!286749 () Bool)

(assert (=> b!271412 m!286749))

(declare-fun m!286751 () Bool)

(assert (=> b!271414 m!286751))

(declare-fun m!286753 () Bool)

(assert (=> b!271409 m!286753))

(push 1)

