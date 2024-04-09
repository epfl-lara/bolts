; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26400 () Bool)

(assert start!26400)

(declare-fun b!273640 () Bool)

(declare-fun res!137670 () Bool)

(declare-fun e!175345 () Bool)

(assert (=> b!273640 (=> (not res!137670) (not e!175345))))

(declare-datatypes ((array!13486 0))(
  ( (array!13487 (arr!6392 (Array (_ BitVec 32) (_ BitVec 64))) (size!6744 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13486)

(declare-datatypes ((List!4221 0))(
  ( (Nil!4218) (Cons!4217 (h!4884 (_ BitVec 64)) (t!9311 List!4221)) )
))
(declare-fun arrayNoDuplicates!0 (array!13486 (_ BitVec 32) List!4221) Bool)

(assert (=> b!273640 (= res!137670 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4218))))

(declare-fun b!273642 () Bool)

(declare-fun res!137675 () Bool)

(declare-fun e!175347 () Bool)

(assert (=> b!273642 (=> (not res!137675) (not e!175347))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13486 (_ BitVec 32)) Bool)

(assert (=> b!273642 (= res!137675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273643 () Bool)

(declare-fun res!137673 () Bool)

(declare-fun e!175348 () Bool)

(assert (=> b!273643 (=> (not res!137673) (not e!175348))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273643 (= res!137673 (validKeyInArray!0 (select (arr!6392 a!3325) startIndex!26)))))

(declare-fun b!273644 () Bool)

(declare-fun res!137676 () Bool)

(assert (=> b!273644 (=> (not res!137676) (not e!175345))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273644 (= res!137676 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273645 () Bool)

(declare-fun res!137674 () Bool)

(assert (=> b!273645 (=> (not res!137674) (not e!175345))))

(assert (=> b!273645 (= res!137674 (validKeyInArray!0 k0!2581))))

(declare-fun b!273646 () Bool)

(assert (=> b!273646 (= e!175345 e!175347)))

(declare-fun res!137672 () Bool)

(assert (=> b!273646 (=> (not res!137672) (not e!175347))))

(declare-datatypes ((SeekEntryResult!1561 0))(
  ( (MissingZero!1561 (index!8414 (_ BitVec 32))) (Found!1561 (index!8415 (_ BitVec 32))) (Intermediate!1561 (undefined!2373 Bool) (index!8416 (_ BitVec 32)) (x!26686 (_ BitVec 32))) (Undefined!1561) (MissingVacant!1561 (index!8417 (_ BitVec 32))) )
))
(declare-fun lt!136542 () SeekEntryResult!1561)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273646 (= res!137672 (or (= lt!136542 (MissingZero!1561 i!1267)) (= lt!136542 (MissingVacant!1561 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13486 (_ BitVec 32)) SeekEntryResult!1561)

(assert (=> b!273646 (= lt!136542 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!273647 () Bool)

(declare-fun res!137671 () Bool)

(assert (=> b!273647 (=> (not res!137671) (not e!175345))))

(assert (=> b!273647 (= res!137671 (and (= (size!6744 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6744 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6744 a!3325))))))

(declare-fun b!273648 () Bool)

(assert (=> b!273648 (= e!175348 (not true))))

(assert (=> b!273648 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8588 0))(
  ( (Unit!8589) )
))
(declare-fun lt!136544 () Unit!8588)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13486 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8588)

(assert (=> b!273648 (= lt!136544 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136540 () array!13486)

(assert (=> b!273648 (= (seekEntryOrOpen!0 (select (arr!6392 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6392 a!3325) i!1267 k0!2581) startIndex!26) lt!136540 mask!3868))))

(declare-fun lt!136543 () Unit!8588)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13486 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8588)

(assert (=> b!273648 (= lt!136543 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!273648 (arrayNoDuplicates!0 lt!136540 #b00000000000000000000000000000000 Nil!4218)))

(declare-fun lt!136541 () Unit!8588)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13486 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4221) Unit!8588)

(assert (=> b!273648 (= lt!136541 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4218))))

(declare-fun b!273641 () Bool)

(assert (=> b!273641 (= e!175347 e!175348)))

(declare-fun res!137669 () Bool)

(assert (=> b!273641 (=> (not res!137669) (not e!175348))))

(assert (=> b!273641 (= res!137669 (not (= startIndex!26 i!1267)))))

(assert (=> b!273641 (= lt!136540 (array!13487 (store (arr!6392 a!3325) i!1267 k0!2581) (size!6744 a!3325)))))

(declare-fun res!137668 () Bool)

(assert (=> start!26400 (=> (not res!137668) (not e!175345))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26400 (= res!137668 (validMask!0 mask!3868))))

(assert (=> start!26400 e!175345))

(declare-fun array_inv!4346 (array!13486) Bool)

(assert (=> start!26400 (array_inv!4346 a!3325)))

(assert (=> start!26400 true))

(assert (= (and start!26400 res!137668) b!273647))

(assert (= (and b!273647 res!137671) b!273645))

(assert (= (and b!273645 res!137674) b!273640))

(assert (= (and b!273640 res!137670) b!273644))

(assert (= (and b!273644 res!137676) b!273646))

(assert (= (and b!273646 res!137672) b!273642))

(assert (= (and b!273642 res!137675) b!273641))

(assert (= (and b!273641 res!137669) b!273643))

(assert (= (and b!273643 res!137673) b!273648))

(declare-fun m!288955 () Bool)

(assert (=> b!273644 m!288955))

(declare-fun m!288957 () Bool)

(assert (=> b!273642 m!288957))

(declare-fun m!288959 () Bool)

(assert (=> b!273643 m!288959))

(assert (=> b!273643 m!288959))

(declare-fun m!288961 () Bool)

(assert (=> b!273643 m!288961))

(declare-fun m!288963 () Bool)

(assert (=> b!273646 m!288963))

(declare-fun m!288965 () Bool)

(assert (=> b!273648 m!288965))

(declare-fun m!288967 () Bool)

(assert (=> b!273648 m!288967))

(declare-fun m!288969 () Bool)

(assert (=> b!273648 m!288969))

(assert (=> b!273648 m!288967))

(declare-fun m!288971 () Bool)

(assert (=> b!273648 m!288971))

(declare-fun m!288973 () Bool)

(assert (=> b!273648 m!288973))

(declare-fun m!288975 () Bool)

(assert (=> b!273648 m!288975))

(assert (=> b!273648 m!288959))

(declare-fun m!288977 () Bool)

(assert (=> b!273648 m!288977))

(declare-fun m!288979 () Bool)

(assert (=> b!273648 m!288979))

(assert (=> b!273648 m!288959))

(declare-fun m!288981 () Bool)

(assert (=> b!273648 m!288981))

(declare-fun m!288983 () Bool)

(assert (=> b!273645 m!288983))

(declare-fun m!288985 () Bool)

(assert (=> start!26400 m!288985))

(declare-fun m!288987 () Bool)

(assert (=> start!26400 m!288987))

(assert (=> b!273641 m!288971))

(declare-fun m!288989 () Bool)

(assert (=> b!273640 m!288989))

(check-sat (not start!26400) (not b!273644) (not b!273642) (not b!273648) (not b!273646) (not b!273640) (not b!273643) (not b!273645))
(check-sat)
