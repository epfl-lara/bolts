; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26508 () Bool)

(assert start!26508)

(declare-fun b!275038 () Bool)

(declare-fun e!175998 () Bool)

(assert (=> b!275038 (= e!175998 false)))

(declare-fun lt!137290 () Bool)

(declare-datatypes ((array!13594 0))(
  ( (array!13595 (arr!6446 (Array (_ BitVec 32) (_ BitVec 64))) (size!6798 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13594)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13594 (_ BitVec 32)) Bool)

(assert (=> b!275038 (= lt!137290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!139067 () Bool)

(declare-fun e!175999 () Bool)

(assert (=> start!26508 (=> (not res!139067) (not e!175999))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26508 (= res!139067 (validMask!0 mask!3868))))

(assert (=> start!26508 e!175999))

(declare-fun array_inv!4400 (array!13594) Bool)

(assert (=> start!26508 (array_inv!4400 a!3325)))

(assert (=> start!26508 true))

(declare-fun b!275039 () Bool)

(assert (=> b!275039 (= e!175999 e!175998)))

(declare-fun res!139068 () Bool)

(assert (=> b!275039 (=> (not res!139068) (not e!175998))))

(declare-datatypes ((SeekEntryResult!1615 0))(
  ( (MissingZero!1615 (index!8630 (_ BitVec 32))) (Found!1615 (index!8631 (_ BitVec 32))) (Intermediate!1615 (undefined!2427 Bool) (index!8632 (_ BitVec 32)) (x!26884 (_ BitVec 32))) (Undefined!1615) (MissingVacant!1615 (index!8633 (_ BitVec 32))) )
))
(declare-fun lt!137291 () SeekEntryResult!1615)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275039 (= res!139068 (or (= lt!137291 (MissingZero!1615 i!1267)) (= lt!137291 (MissingVacant!1615 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13594 (_ BitVec 32)) SeekEntryResult!1615)

(assert (=> b!275039 (= lt!137291 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275040 () Bool)

(declare-fun res!139071 () Bool)

(assert (=> b!275040 (=> (not res!139071) (not e!175999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275040 (= res!139071 (validKeyInArray!0 k0!2581))))

(declare-fun b!275041 () Bool)

(declare-fun res!139066 () Bool)

(assert (=> b!275041 (=> (not res!139066) (not e!175999))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275041 (= res!139066 (and (= (size!6798 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6798 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6798 a!3325))))))

(declare-fun b!275042 () Bool)

(declare-fun res!139069 () Bool)

(assert (=> b!275042 (=> (not res!139069) (not e!175999))))

(declare-fun arrayContainsKey!0 (array!13594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275042 (= res!139069 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275043 () Bool)

(declare-fun res!139070 () Bool)

(assert (=> b!275043 (=> (not res!139070) (not e!175999))))

(declare-datatypes ((List!4275 0))(
  ( (Nil!4272) (Cons!4271 (h!4938 (_ BitVec 64)) (t!9365 List!4275)) )
))
(declare-fun arrayNoDuplicates!0 (array!13594 (_ BitVec 32) List!4275) Bool)

(assert (=> b!275043 (= res!139070 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4272))))

(assert (= (and start!26508 res!139067) b!275041))

(assert (= (and b!275041 res!139066) b!275040))

(assert (= (and b!275040 res!139071) b!275043))

(assert (= (and b!275043 res!139070) b!275042))

(assert (= (and b!275042 res!139069) b!275039))

(assert (= (and b!275039 res!139068) b!275038))

(declare-fun m!290727 () Bool)

(assert (=> b!275040 m!290727))

(declare-fun m!290729 () Bool)

(assert (=> b!275043 m!290729))

(declare-fun m!290731 () Bool)

(assert (=> b!275042 m!290731))

(declare-fun m!290733 () Bool)

(assert (=> b!275039 m!290733))

(declare-fun m!290735 () Bool)

(assert (=> start!26508 m!290735))

(declare-fun m!290737 () Bool)

(assert (=> start!26508 m!290737))

(declare-fun m!290739 () Bool)

(assert (=> b!275038 m!290739))

(check-sat (not start!26508) (not b!275042) (not b!275043) (not b!275038) (not b!275040) (not b!275039))
(check-sat)
