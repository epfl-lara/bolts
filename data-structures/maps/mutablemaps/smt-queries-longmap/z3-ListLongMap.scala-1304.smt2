; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26394 () Bool)

(assert start!26394)

(declare-fun b!273559 () Bool)

(declare-fun res!137595 () Bool)

(declare-fun e!175310 () Bool)

(assert (=> b!273559 (=> (not res!137595) (not e!175310))))

(declare-datatypes ((array!13480 0))(
  ( (array!13481 (arr!6389 (Array (_ BitVec 32) (_ BitVec 64))) (size!6741 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13480)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273559 (= res!137595 (validKeyInArray!0 (select (arr!6389 a!3325) startIndex!26)))))

(declare-fun b!273560 () Bool)

(declare-fun e!175312 () Bool)

(assert (=> b!273560 (= e!175312 e!175310)))

(declare-fun res!137587 () Bool)

(assert (=> b!273560 (=> (not res!137587) (not e!175310))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273560 (= res!137587 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136496 () array!13480)

(declare-fun k0!2581 () (_ BitVec 64))

(assert (=> b!273560 (= lt!136496 (array!13481 (store (arr!6389 a!3325) i!1267 k0!2581) (size!6741 a!3325)))))

(declare-fun b!273561 () Bool)

(declare-fun e!175311 () Bool)

(assert (=> b!273561 (= e!175311 e!175312)))

(declare-fun res!137591 () Bool)

(assert (=> b!273561 (=> (not res!137591) (not e!175312))))

(declare-datatypes ((SeekEntryResult!1558 0))(
  ( (MissingZero!1558 (index!8402 (_ BitVec 32))) (Found!1558 (index!8403 (_ BitVec 32))) (Intermediate!1558 (undefined!2370 Bool) (index!8404 (_ BitVec 32)) (x!26675 (_ BitVec 32))) (Undefined!1558) (MissingVacant!1558 (index!8405 (_ BitVec 32))) )
))
(declare-fun lt!136498 () SeekEntryResult!1558)

(assert (=> b!273561 (= res!137591 (or (= lt!136498 (MissingZero!1558 i!1267)) (= lt!136498 (MissingVacant!1558 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13480 (_ BitVec 32)) SeekEntryResult!1558)

(assert (=> b!273561 (= lt!136498 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!273562 () Bool)

(declare-fun res!137589 () Bool)

(assert (=> b!273562 (=> (not res!137589) (not e!175311))))

(assert (=> b!273562 (= res!137589 (validKeyInArray!0 k0!2581))))

(declare-fun b!273563 () Bool)

(declare-fun res!137592 () Bool)

(assert (=> b!273563 (=> (not res!137592) (not e!175311))))

(assert (=> b!273563 (= res!137592 (and (= (size!6741 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6741 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6741 a!3325))))))

(declare-fun res!137594 () Bool)

(assert (=> start!26394 (=> (not res!137594) (not e!175311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26394 (= res!137594 (validMask!0 mask!3868))))

(assert (=> start!26394 e!175311))

(declare-fun array_inv!4343 (array!13480) Bool)

(assert (=> start!26394 (array_inv!4343 a!3325)))

(assert (=> start!26394 true))

(declare-fun b!273564 () Bool)

(assert (=> b!273564 (= e!175310 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13480 (_ BitVec 32)) Bool)

(assert (=> b!273564 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8582 0))(
  ( (Unit!8583) )
))
(declare-fun lt!136497 () Unit!8582)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13480 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8582)

(assert (=> b!273564 (= lt!136497 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!273564 (= (seekEntryOrOpen!0 (select (arr!6389 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6389 a!3325) i!1267 k0!2581) startIndex!26) lt!136496 mask!3868))))

(declare-fun lt!136499 () Unit!8582)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13480 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8582)

(assert (=> b!273564 (= lt!136499 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4218 0))(
  ( (Nil!4215) (Cons!4214 (h!4881 (_ BitVec 64)) (t!9308 List!4218)) )
))
(declare-fun arrayNoDuplicates!0 (array!13480 (_ BitVec 32) List!4218) Bool)

(assert (=> b!273564 (arrayNoDuplicates!0 lt!136496 #b00000000000000000000000000000000 Nil!4215)))

(declare-fun lt!136495 () Unit!8582)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13480 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4218) Unit!8582)

(assert (=> b!273564 (= lt!136495 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4215))))

(declare-fun b!273565 () Bool)

(declare-fun res!137588 () Bool)

(assert (=> b!273565 (=> (not res!137588) (not e!175311))))

(assert (=> b!273565 (= res!137588 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4215))))

(declare-fun b!273566 () Bool)

(declare-fun res!137593 () Bool)

(assert (=> b!273566 (=> (not res!137593) (not e!175312))))

(assert (=> b!273566 (= res!137593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273567 () Bool)

(declare-fun res!137590 () Bool)

(assert (=> b!273567 (=> (not res!137590) (not e!175311))))

(declare-fun arrayContainsKey!0 (array!13480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273567 (= res!137590 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26394 res!137594) b!273563))

(assert (= (and b!273563 res!137592) b!273562))

(assert (= (and b!273562 res!137589) b!273565))

(assert (= (and b!273565 res!137588) b!273567))

(assert (= (and b!273567 res!137590) b!273561))

(assert (= (and b!273561 res!137591) b!273566))

(assert (= (and b!273566 res!137593) b!273560))

(assert (= (and b!273560 res!137587) b!273559))

(assert (= (and b!273559 res!137595) b!273564))

(declare-fun m!288847 () Bool)

(assert (=> b!273559 m!288847))

(assert (=> b!273559 m!288847))

(declare-fun m!288849 () Bool)

(assert (=> b!273559 m!288849))

(declare-fun m!288851 () Bool)

(assert (=> b!273561 m!288851))

(declare-fun m!288853 () Bool)

(assert (=> b!273565 m!288853))

(declare-fun m!288855 () Bool)

(assert (=> start!26394 m!288855))

(declare-fun m!288857 () Bool)

(assert (=> start!26394 m!288857))

(declare-fun m!288859 () Bool)

(assert (=> b!273562 m!288859))

(declare-fun m!288861 () Bool)

(assert (=> b!273566 m!288861))

(declare-fun m!288863 () Bool)

(assert (=> b!273564 m!288863))

(declare-fun m!288865 () Bool)

(assert (=> b!273564 m!288865))

(declare-fun m!288867 () Bool)

(assert (=> b!273564 m!288867))

(declare-fun m!288869 () Bool)

(assert (=> b!273564 m!288869))

(assert (=> b!273564 m!288865))

(declare-fun m!288871 () Bool)

(assert (=> b!273564 m!288871))

(declare-fun m!288873 () Bool)

(assert (=> b!273564 m!288873))

(declare-fun m!288875 () Bool)

(assert (=> b!273564 m!288875))

(assert (=> b!273564 m!288847))

(declare-fun m!288877 () Bool)

(assert (=> b!273564 m!288877))

(declare-fun m!288879 () Bool)

(assert (=> b!273564 m!288879))

(assert (=> b!273564 m!288847))

(assert (=> b!273560 m!288867))

(declare-fun m!288881 () Bool)

(assert (=> b!273567 m!288881))

(check-sat (not start!26394) (not b!273565) (not b!273564) (not b!273562) (not b!273561) (not b!273566) (not b!273567) (not b!273559))
(check-sat)
