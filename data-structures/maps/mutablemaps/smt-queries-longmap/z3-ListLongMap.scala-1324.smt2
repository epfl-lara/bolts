; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26514 () Bool)

(assert start!26514)

(declare-fun b!275092 () Bool)

(declare-fun res!139125 () Bool)

(declare-fun e!176024 () Bool)

(assert (=> b!275092 (=> (not res!139125) (not e!176024))))

(declare-datatypes ((array!13600 0))(
  ( (array!13601 (arr!6449 (Array (_ BitVec 32) (_ BitVec 64))) (size!6801 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13600)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13600 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275092 (= res!139125 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275093 () Bool)

(declare-fun res!139124 () Bool)

(assert (=> b!275093 (=> (not res!139124) (not e!176024))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!275093 (= res!139124 (and (= (size!6801 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6801 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6801 a!3325))))))

(declare-fun res!139120 () Bool)

(assert (=> start!26514 (=> (not res!139120) (not e!176024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26514 (= res!139120 (validMask!0 mask!3868))))

(assert (=> start!26514 e!176024))

(declare-fun array_inv!4403 (array!13600) Bool)

(assert (=> start!26514 (array_inv!4403 a!3325)))

(assert (=> start!26514 true))

(declare-fun b!275094 () Bool)

(declare-fun res!139123 () Bool)

(assert (=> b!275094 (=> (not res!139123) (not e!176024))))

(declare-datatypes ((List!4278 0))(
  ( (Nil!4275) (Cons!4274 (h!4941 (_ BitVec 64)) (t!9368 List!4278)) )
))
(declare-fun arrayNoDuplicates!0 (array!13600 (_ BitVec 32) List!4278) Bool)

(assert (=> b!275094 (= res!139123 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4275))))

(declare-fun b!275095 () Bool)

(declare-fun res!139122 () Bool)

(assert (=> b!275095 (=> (not res!139122) (not e!176024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275095 (= res!139122 (validKeyInArray!0 k0!2581))))

(declare-fun b!275096 () Bool)

(declare-fun e!176026 () Bool)

(assert (=> b!275096 (= e!176024 e!176026)))

(declare-fun res!139121 () Bool)

(assert (=> b!275096 (=> (not res!139121) (not e!176026))))

(declare-datatypes ((SeekEntryResult!1618 0))(
  ( (MissingZero!1618 (index!8642 (_ BitVec 32))) (Found!1618 (index!8643 (_ BitVec 32))) (Intermediate!1618 (undefined!2430 Bool) (index!8644 (_ BitVec 32)) (x!26895 (_ BitVec 32))) (Undefined!1618) (MissingVacant!1618 (index!8645 (_ BitVec 32))) )
))
(declare-fun lt!137309 () SeekEntryResult!1618)

(assert (=> b!275096 (= res!139121 (or (= lt!137309 (MissingZero!1618 i!1267)) (= lt!137309 (MissingVacant!1618 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13600 (_ BitVec 32)) SeekEntryResult!1618)

(assert (=> b!275096 (= lt!137309 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275097 () Bool)

(assert (=> b!275097 (= e!176026 false)))

(declare-fun lt!137308 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13600 (_ BitVec 32)) Bool)

(assert (=> b!275097 (= lt!137308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26514 res!139120) b!275093))

(assert (= (and b!275093 res!139124) b!275095))

(assert (= (and b!275095 res!139122) b!275094))

(assert (= (and b!275094 res!139123) b!275092))

(assert (= (and b!275092 res!139125) b!275096))

(assert (= (and b!275096 res!139121) b!275097))

(declare-fun m!290769 () Bool)

(assert (=> start!26514 m!290769))

(declare-fun m!290771 () Bool)

(assert (=> start!26514 m!290771))

(declare-fun m!290773 () Bool)

(assert (=> b!275092 m!290773))

(declare-fun m!290775 () Bool)

(assert (=> b!275096 m!290775))

(declare-fun m!290777 () Bool)

(assert (=> b!275095 m!290777))

(declare-fun m!290779 () Bool)

(assert (=> b!275094 m!290779))

(declare-fun m!290781 () Bool)

(assert (=> b!275097 m!290781))

(check-sat (not b!275096) (not b!275094) (not b!275097) (not b!275095) (not start!26514) (not b!275092))
(check-sat)
