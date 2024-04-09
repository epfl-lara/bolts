; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26588 () Bool)

(assert start!26588)

(declare-fun b!275902 () Bool)

(declare-fun res!139930 () Bool)

(declare-fun e!176359 () Bool)

(assert (=> b!275902 (=> (not res!139930) (not e!176359))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275902 (= res!139930 (validKeyInArray!0 k!2581))))

(declare-fun b!275903 () Bool)

(declare-fun e!176358 () Bool)

(assert (=> b!275903 (= e!176358 false)))

(declare-fun lt!137530 () Bool)

(declare-datatypes ((array!13674 0))(
  ( (array!13675 (arr!6486 (Array (_ BitVec 32) (_ BitVec 64))) (size!6838 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13674)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13674 (_ BitVec 32)) Bool)

(assert (=> b!275903 (= lt!137530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275904 () Bool)

(declare-fun res!139935 () Bool)

(assert (=> b!275904 (=> (not res!139935) (not e!176359))))

(declare-fun arrayContainsKey!0 (array!13674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275904 (= res!139935 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275905 () Bool)

(declare-fun res!139931 () Bool)

(assert (=> b!275905 (=> (not res!139931) (not e!176359))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275905 (= res!139931 (and (= (size!6838 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6838 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6838 a!3325))))))

(declare-fun res!139933 () Bool)

(assert (=> start!26588 (=> (not res!139933) (not e!176359))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26588 (= res!139933 (validMask!0 mask!3868))))

(assert (=> start!26588 e!176359))

(declare-fun array_inv!4440 (array!13674) Bool)

(assert (=> start!26588 (array_inv!4440 a!3325)))

(assert (=> start!26588 true))

(declare-fun b!275906 () Bool)

(declare-fun res!139932 () Bool)

(assert (=> b!275906 (=> (not res!139932) (not e!176359))))

(declare-datatypes ((List!4315 0))(
  ( (Nil!4312) (Cons!4311 (h!4978 (_ BitVec 64)) (t!9405 List!4315)) )
))
(declare-fun arrayNoDuplicates!0 (array!13674 (_ BitVec 32) List!4315) Bool)

(assert (=> b!275906 (= res!139932 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4312))))

(declare-fun b!275907 () Bool)

(assert (=> b!275907 (= e!176359 e!176358)))

(declare-fun res!139934 () Bool)

(assert (=> b!275907 (=> (not res!139934) (not e!176358))))

(declare-datatypes ((SeekEntryResult!1655 0))(
  ( (MissingZero!1655 (index!8790 (_ BitVec 32))) (Found!1655 (index!8791 (_ BitVec 32))) (Intermediate!1655 (undefined!2467 Bool) (index!8792 (_ BitVec 32)) (x!27028 (_ BitVec 32))) (Undefined!1655) (MissingVacant!1655 (index!8793 (_ BitVec 32))) )
))
(declare-fun lt!137531 () SeekEntryResult!1655)

(assert (=> b!275907 (= res!139934 (or (= lt!137531 (MissingZero!1655 i!1267)) (= lt!137531 (MissingVacant!1655 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13674 (_ BitVec 32)) SeekEntryResult!1655)

(assert (=> b!275907 (= lt!137531 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26588 res!139933) b!275905))

(assert (= (and b!275905 res!139931) b!275902))

(assert (= (and b!275902 res!139930) b!275906))

(assert (= (and b!275906 res!139932) b!275904))

(assert (= (and b!275904 res!139935) b!275907))

(assert (= (and b!275907 res!139934) b!275903))

(declare-fun m!291407 () Bool)

(assert (=> b!275907 m!291407))

(declare-fun m!291409 () Bool)

(assert (=> b!275906 m!291409))

(declare-fun m!291411 () Bool)

(assert (=> b!275904 m!291411))

(declare-fun m!291413 () Bool)

(assert (=> b!275903 m!291413))

(declare-fun m!291415 () Bool)

(assert (=> b!275902 m!291415))

(declare-fun m!291417 () Bool)

(assert (=> start!26588 m!291417))

(declare-fun m!291419 () Bool)

(assert (=> start!26588 m!291419))

(push 1)

(assert (not start!26588))

(assert (not b!275904))

(assert (not b!275903))

(assert (not b!275906))

