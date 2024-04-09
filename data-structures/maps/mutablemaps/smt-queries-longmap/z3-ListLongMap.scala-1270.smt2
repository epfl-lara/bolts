; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26190 () Bool)

(assert start!26190)

(declare-fun b!270405 () Bool)

(declare-fun res!134441 () Bool)

(declare-fun e!174300 () Bool)

(assert (=> b!270405 (=> (not res!134441) (not e!174300))))

(declare-datatypes ((array!13276 0))(
  ( (array!13277 (arr!6287 (Array (_ BitVec 32) (_ BitVec 64))) (size!6639 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13276)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!270405 (= res!134441 (and (= (size!6639 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6639 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6639 a!3325))))))

(declare-fun b!270406 () Bool)

(declare-fun e!174298 () Bool)

(assert (=> b!270406 (= e!174298 (not (bvsle startIndex!26 (size!6639 a!3325))))))

(declare-fun lt!135659 () array!13276)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!1456 0))(
  ( (MissingZero!1456 (index!7994 (_ BitVec 32))) (Found!1456 (index!7995 (_ BitVec 32))) (Intermediate!1456 (undefined!2268 Bool) (index!7996 (_ BitVec 32)) (x!26301 (_ BitVec 32))) (Undefined!1456) (MissingVacant!1456 (index!7997 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13276 (_ BitVec 32)) SeekEntryResult!1456)

(assert (=> b!270406 (= (seekEntryOrOpen!0 k0!2581 lt!135659 mask!3868) (Found!1456 i!1267))))

(declare-datatypes ((Unit!8442 0))(
  ( (Unit!8443) )
))
(declare-fun lt!135660 () Unit!8442)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13276 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8442)

(assert (=> b!270406 (= lt!135660 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k0!2581 mask!3868))))

(declare-fun lt!135662 () Unit!8442)

(declare-fun e!174297 () Unit!8442)

(assert (=> b!270406 (= lt!135662 e!174297)))

(declare-fun c!45533 () Bool)

(assert (=> b!270406 (= c!45533 (bvslt startIndex!26 (bvsub (size!6639 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270407 () Bool)

(declare-fun Unit!8444 () Unit!8442)

(assert (=> b!270407 (= e!174297 Unit!8444)))

(declare-fun b!270408 () Bool)

(declare-fun res!134448 () Bool)

(assert (=> b!270408 (=> (not res!134448) (not e!174300))))

(declare-fun arrayContainsKey!0 (array!13276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270408 (= res!134448 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270409 () Bool)

(declare-fun res!134443 () Bool)

(assert (=> b!270409 (=> (not res!134443) (not e!174300))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270409 (= res!134443 (validKeyInArray!0 k0!2581))))

(declare-fun res!134444 () Bool)

(assert (=> start!26190 (=> (not res!134444) (not e!174300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26190 (= res!134444 (validMask!0 mask!3868))))

(assert (=> start!26190 e!174300))

(declare-fun array_inv!4241 (array!13276) Bool)

(assert (=> start!26190 (array_inv!4241 a!3325)))

(assert (=> start!26190 true))

(declare-fun b!270410 () Bool)

(declare-fun e!174299 () Bool)

(assert (=> b!270410 (= e!174299 e!174298)))

(declare-fun res!134445 () Bool)

(assert (=> b!270410 (=> (not res!134445) (not e!174298))))

(assert (=> b!270410 (= res!134445 (= startIndex!26 i!1267))))

(assert (=> b!270410 (= lt!135659 (array!13277 (store (arr!6287 a!3325) i!1267 k0!2581) (size!6639 a!3325)))))

(declare-fun b!270411 () Bool)

(declare-fun res!134442 () Bool)

(assert (=> b!270411 (=> (not res!134442) (not e!174299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13276 (_ BitVec 32)) Bool)

(assert (=> b!270411 (= res!134442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270412 () Bool)

(declare-fun lt!135658 () Unit!8442)

(assert (=> b!270412 (= e!174297 lt!135658)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13276 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8442)

(assert (=> b!270412 (= lt!135658 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!270412 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135659 mask!3868)))

(declare-fun b!270413 () Bool)

(assert (=> b!270413 (= e!174300 e!174299)))

(declare-fun res!134447 () Bool)

(assert (=> b!270413 (=> (not res!134447) (not e!174299))))

(declare-fun lt!135661 () SeekEntryResult!1456)

(assert (=> b!270413 (= res!134447 (or (= lt!135661 (MissingZero!1456 i!1267)) (= lt!135661 (MissingVacant!1456 i!1267))))))

(assert (=> b!270413 (= lt!135661 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!270414 () Bool)

(declare-fun res!134446 () Bool)

(assert (=> b!270414 (=> (not res!134446) (not e!174300))))

(declare-datatypes ((List!4116 0))(
  ( (Nil!4113) (Cons!4112 (h!4779 (_ BitVec 64)) (t!9206 List!4116)) )
))
(declare-fun arrayNoDuplicates!0 (array!13276 (_ BitVec 32) List!4116) Bool)

(assert (=> b!270414 (= res!134446 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4113))))

(assert (= (and start!26190 res!134444) b!270405))

(assert (= (and b!270405 res!134441) b!270409))

(assert (= (and b!270409 res!134443) b!270414))

(assert (= (and b!270414 res!134446) b!270408))

(assert (= (and b!270408 res!134448) b!270413))

(assert (= (and b!270413 res!134447) b!270411))

(assert (= (and b!270411 res!134442) b!270410))

(assert (= (and b!270410 res!134445) b!270406))

(assert (= (and b!270406 c!45533) b!270412))

(assert (= (and b!270406 (not c!45533)) b!270407))

(declare-fun m!286057 () Bool)

(assert (=> b!270413 m!286057))

(declare-fun m!286059 () Bool)

(assert (=> b!270410 m!286059))

(declare-fun m!286061 () Bool)

(assert (=> b!270412 m!286061))

(declare-fun m!286063 () Bool)

(assert (=> b!270412 m!286063))

(declare-fun m!286065 () Bool)

(assert (=> b!270411 m!286065))

(declare-fun m!286067 () Bool)

(assert (=> b!270414 m!286067))

(declare-fun m!286069 () Bool)

(assert (=> start!26190 m!286069))

(declare-fun m!286071 () Bool)

(assert (=> start!26190 m!286071))

(declare-fun m!286073 () Bool)

(assert (=> b!270408 m!286073))

(declare-fun m!286075 () Bool)

(assert (=> b!270406 m!286075))

(declare-fun m!286077 () Bool)

(assert (=> b!270406 m!286077))

(declare-fun m!286079 () Bool)

(assert (=> b!270409 m!286079))

(check-sat (not b!270409) (not b!270411) (not start!26190) (not b!270406) (not b!270412) (not b!270413) (not b!270408) (not b!270414))
(check-sat)
