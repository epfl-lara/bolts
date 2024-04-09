; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26540 () Bool)

(assert start!26540)

(declare-fun res!139354 () Bool)

(declare-fun e!176142 () Bool)

(assert (=> start!26540 (=> (not res!139354) (not e!176142))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26540 (= res!139354 (validMask!0 mask!3868))))

(assert (=> start!26540 e!176142))

(declare-datatypes ((array!13626 0))(
  ( (array!13627 (arr!6462 (Array (_ BitVec 32) (_ BitVec 64))) (size!6814 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13626)

(declare-fun array_inv!4416 (array!13626) Bool)

(assert (=> start!26540 (array_inv!4416 a!3325)))

(assert (=> start!26540 true))

(declare-fun b!275326 () Bool)

(declare-fun res!139357 () Bool)

(assert (=> b!275326 (=> (not res!139357) (not e!176142))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275326 (= res!139357 (validKeyInArray!0 k!2581))))

(declare-fun b!275327 () Bool)

(declare-fun res!139356 () Bool)

(assert (=> b!275327 (=> (not res!139356) (not e!176142))))

(declare-fun arrayContainsKey!0 (array!13626 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275327 (= res!139356 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275328 () Bool)

(declare-fun res!139355 () Bool)

(assert (=> b!275328 (=> (not res!139355) (not e!176142))))

(declare-datatypes ((List!4291 0))(
  ( (Nil!4288) (Cons!4287 (h!4954 (_ BitVec 64)) (t!9381 List!4291)) )
))
(declare-fun arrayNoDuplicates!0 (array!13626 (_ BitVec 32) List!4291) Bool)

(assert (=> b!275328 (= res!139355 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4288))))

(declare-fun b!275329 () Bool)

(declare-fun res!139359 () Bool)

(assert (=> b!275329 (=> (not res!139359) (not e!176142))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275329 (= res!139359 (and (= (size!6814 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6814 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6814 a!3325))))))

(declare-fun b!275330 () Bool)

(declare-fun e!176143 () Bool)

(assert (=> b!275330 (= e!176143 false)))

(declare-fun lt!137387 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13626 (_ BitVec 32)) Bool)

(assert (=> b!275330 (= lt!137387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275331 () Bool)

(assert (=> b!275331 (= e!176142 e!176143)))

(declare-fun res!139358 () Bool)

(assert (=> b!275331 (=> (not res!139358) (not e!176143))))

(declare-datatypes ((SeekEntryResult!1631 0))(
  ( (MissingZero!1631 (index!8694 (_ BitVec 32))) (Found!1631 (index!8695 (_ BitVec 32))) (Intermediate!1631 (undefined!2443 Bool) (index!8696 (_ BitVec 32)) (x!26940 (_ BitVec 32))) (Undefined!1631) (MissingVacant!1631 (index!8697 (_ BitVec 32))) )
))
(declare-fun lt!137386 () SeekEntryResult!1631)

(assert (=> b!275331 (= res!139358 (or (= lt!137386 (MissingZero!1631 i!1267)) (= lt!137386 (MissingVacant!1631 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13626 (_ BitVec 32)) SeekEntryResult!1631)

(assert (=> b!275331 (= lt!137386 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26540 res!139354) b!275329))

(assert (= (and b!275329 res!139359) b!275326))

(assert (= (and b!275326 res!139357) b!275328))

(assert (= (and b!275328 res!139355) b!275327))

(assert (= (and b!275327 res!139356) b!275331))

(assert (= (and b!275331 res!139358) b!275330))

(declare-fun m!290951 () Bool)

(assert (=> start!26540 m!290951))

(declare-fun m!290953 () Bool)

(assert (=> start!26540 m!290953))

(declare-fun m!290955 () Bool)

(assert (=> b!275327 m!290955))

(declare-fun m!290957 () Bool)

(assert (=> b!275326 m!290957))

(declare-fun m!290959 () Bool)

(assert (=> b!275331 m!290959))

(declare-fun m!290961 () Bool)

(assert (=> b!275328 m!290961))

(declare-fun m!290963 () Bool)

(assert (=> b!275330 m!290963))

(push 1)

(assert (not b!275327))

(assert (not b!275328))

(assert (not start!26540))

(assert (not b!275330))

