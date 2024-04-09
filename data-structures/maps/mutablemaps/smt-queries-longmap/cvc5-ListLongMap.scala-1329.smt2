; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26542 () Bool)

(assert start!26542)

(declare-fun b!275344 () Bool)

(declare-fun e!176150 () Bool)

(assert (=> b!275344 (= e!176150 false)))

(declare-fun lt!137392 () Bool)

(declare-datatypes ((array!13628 0))(
  ( (array!13629 (arr!6463 (Array (_ BitVec 32) (_ BitVec 64))) (size!6815 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13628)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13628 (_ BitVec 32)) Bool)

(assert (=> b!275344 (= lt!137392 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275345 () Bool)

(declare-fun res!139372 () Bool)

(declare-fun e!176152 () Bool)

(assert (=> b!275345 (=> (not res!139372) (not e!176152))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275345 (= res!139372 (validKeyInArray!0 k!2581))))

(declare-fun b!275346 () Bool)

(declare-fun res!139375 () Bool)

(assert (=> b!275346 (=> (not res!139375) (not e!176152))))

(declare-datatypes ((List!4292 0))(
  ( (Nil!4289) (Cons!4288 (h!4955 (_ BitVec 64)) (t!9382 List!4292)) )
))
(declare-fun arrayNoDuplicates!0 (array!13628 (_ BitVec 32) List!4292) Bool)

(assert (=> b!275346 (= res!139375 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4289))))

(declare-fun b!275347 () Bool)

(declare-fun res!139377 () Bool)

(assert (=> b!275347 (=> (not res!139377) (not e!176152))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275347 (= res!139377 (and (= (size!6815 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6815 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6815 a!3325))))))

(declare-fun b!275348 () Bool)

(declare-fun res!139376 () Bool)

(assert (=> b!275348 (=> (not res!139376) (not e!176152))))

(declare-fun arrayContainsKey!0 (array!13628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275348 (= res!139376 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275349 () Bool)

(assert (=> b!275349 (= e!176152 e!176150)))

(declare-fun res!139373 () Bool)

(assert (=> b!275349 (=> (not res!139373) (not e!176150))))

(declare-datatypes ((SeekEntryResult!1632 0))(
  ( (MissingZero!1632 (index!8698 (_ BitVec 32))) (Found!1632 (index!8699 (_ BitVec 32))) (Intermediate!1632 (undefined!2444 Bool) (index!8700 (_ BitVec 32)) (x!26949 (_ BitVec 32))) (Undefined!1632) (MissingVacant!1632 (index!8701 (_ BitVec 32))) )
))
(declare-fun lt!137393 () SeekEntryResult!1632)

(assert (=> b!275349 (= res!139373 (or (= lt!137393 (MissingZero!1632 i!1267)) (= lt!137393 (MissingVacant!1632 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13628 (_ BitVec 32)) SeekEntryResult!1632)

(assert (=> b!275349 (= lt!137393 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!139374 () Bool)

(assert (=> start!26542 (=> (not res!139374) (not e!176152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26542 (= res!139374 (validMask!0 mask!3868))))

(assert (=> start!26542 e!176152))

(declare-fun array_inv!4417 (array!13628) Bool)

(assert (=> start!26542 (array_inv!4417 a!3325)))

(assert (=> start!26542 true))

(assert (= (and start!26542 res!139374) b!275347))

(assert (= (and b!275347 res!139377) b!275345))

(assert (= (and b!275345 res!139372) b!275346))

(assert (= (and b!275346 res!139375) b!275348))

(assert (= (and b!275348 res!139376) b!275349))

(assert (= (and b!275349 res!139373) b!275344))

(declare-fun m!290965 () Bool)

(assert (=> b!275348 m!290965))

(declare-fun m!290967 () Bool)

(assert (=> b!275349 m!290967))

(declare-fun m!290969 () Bool)

(assert (=> b!275346 m!290969))

(declare-fun m!290971 () Bool)

(assert (=> b!275344 m!290971))

(declare-fun m!290973 () Bool)

(assert (=> b!275345 m!290973))

(declare-fun m!290975 () Bool)

(assert (=> start!26542 m!290975))

(declare-fun m!290977 () Bool)

(assert (=> start!26542 m!290977))

(push 1)

(assert (not b!275345))

(assert (not b!275344))

(assert (not b!275349))

