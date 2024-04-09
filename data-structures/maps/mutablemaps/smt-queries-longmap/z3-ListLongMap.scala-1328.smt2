; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26538 () Bool)

(assert start!26538)

(declare-fun b!275308 () Bool)

(declare-fun res!139336 () Bool)

(declare-fun e!176132 () Bool)

(assert (=> b!275308 (=> (not res!139336) (not e!176132))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275308 (= res!139336 (validKeyInArray!0 k0!2581))))

(declare-fun b!275309 () Bool)

(declare-fun res!139339 () Bool)

(assert (=> b!275309 (=> (not res!139339) (not e!176132))))

(declare-datatypes ((array!13624 0))(
  ( (array!13625 (arr!6461 (Array (_ BitVec 32) (_ BitVec 64))) (size!6813 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13624)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!275309 (= res!139339 (and (= (size!6813 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6813 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6813 a!3325))))))

(declare-fun b!275310 () Bool)

(declare-fun res!139340 () Bool)

(assert (=> b!275310 (=> (not res!139340) (not e!176132))))

(declare-datatypes ((List!4290 0))(
  ( (Nil!4287) (Cons!4286 (h!4953 (_ BitVec 64)) (t!9380 List!4290)) )
))
(declare-fun arrayNoDuplicates!0 (array!13624 (_ BitVec 32) List!4290) Bool)

(assert (=> b!275310 (= res!139340 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4287))))

(declare-fun res!139337 () Bool)

(assert (=> start!26538 (=> (not res!139337) (not e!176132))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26538 (= res!139337 (validMask!0 mask!3868))))

(assert (=> start!26538 e!176132))

(declare-fun array_inv!4415 (array!13624) Bool)

(assert (=> start!26538 (array_inv!4415 a!3325)))

(assert (=> start!26538 true))

(declare-fun b!275311 () Bool)

(declare-fun e!176134 () Bool)

(assert (=> b!275311 (= e!176132 e!176134)))

(declare-fun res!139341 () Bool)

(assert (=> b!275311 (=> (not res!139341) (not e!176134))))

(declare-datatypes ((SeekEntryResult!1630 0))(
  ( (MissingZero!1630 (index!8690 (_ BitVec 32))) (Found!1630 (index!8691 (_ BitVec 32))) (Intermediate!1630 (undefined!2442 Bool) (index!8692 (_ BitVec 32)) (x!26939 (_ BitVec 32))) (Undefined!1630) (MissingVacant!1630 (index!8693 (_ BitVec 32))) )
))
(declare-fun lt!137381 () SeekEntryResult!1630)

(assert (=> b!275311 (= res!139341 (or (= lt!137381 (MissingZero!1630 i!1267)) (= lt!137381 (MissingVacant!1630 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13624 (_ BitVec 32)) SeekEntryResult!1630)

(assert (=> b!275311 (= lt!137381 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275312 () Bool)

(declare-fun res!139338 () Bool)

(assert (=> b!275312 (=> (not res!139338) (not e!176132))))

(declare-fun arrayContainsKey!0 (array!13624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275312 (= res!139338 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275313 () Bool)

(assert (=> b!275313 (= e!176134 false)))

(declare-fun lt!137380 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13624 (_ BitVec 32)) Bool)

(assert (=> b!275313 (= lt!137380 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26538 res!139337) b!275309))

(assert (= (and b!275309 res!139339) b!275308))

(assert (= (and b!275308 res!139336) b!275310))

(assert (= (and b!275310 res!139340) b!275312))

(assert (= (and b!275312 res!139338) b!275311))

(assert (= (and b!275311 res!139341) b!275313))

(declare-fun m!290937 () Bool)

(assert (=> b!275312 m!290937))

(declare-fun m!290939 () Bool)

(assert (=> b!275311 m!290939))

(declare-fun m!290941 () Bool)

(assert (=> start!26538 m!290941))

(declare-fun m!290943 () Bool)

(assert (=> start!26538 m!290943))

(declare-fun m!290945 () Bool)

(assert (=> b!275308 m!290945))

(declare-fun m!290947 () Bool)

(assert (=> b!275310 m!290947))

(declare-fun m!290949 () Bool)

(assert (=> b!275313 m!290949))

(check-sat (not b!275311) (not b!275308) (not start!26538) (not b!275312) (not b!275310) (not b!275313))
(check-sat)
