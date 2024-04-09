; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26630 () Bool)

(assert start!26630)

(declare-fun b!276316 () Bool)

(declare-fun res!140345 () Bool)

(declare-fun e!176547 () Bool)

(assert (=> b!276316 (=> (not res!140345) (not e!176547))))

(declare-datatypes ((array!13716 0))(
  ( (array!13717 (arr!6507 (Array (_ BitVec 32) (_ BitVec 64))) (size!6859 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13716)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13716 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276316 (= res!140345 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!140348 () Bool)

(assert (=> start!26630 (=> (not res!140348) (not e!176547))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26630 (= res!140348 (validMask!0 mask!3868))))

(assert (=> start!26630 e!176547))

(declare-fun array_inv!4461 (array!13716) Bool)

(assert (=> start!26630 (array_inv!4461 a!3325)))

(assert (=> start!26630 true))

(declare-fun b!276317 () Bool)

(declare-fun res!140349 () Bool)

(assert (=> b!276317 (=> (not res!140349) (not e!176547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276317 (= res!140349 (validKeyInArray!0 k!2581))))

(declare-fun b!276318 () Bool)

(declare-fun res!140346 () Bool)

(assert (=> b!276318 (=> (not res!140346) (not e!176547))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276318 (= res!140346 (and (= (size!6859 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6859 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6859 a!3325))))))

(declare-fun b!276319 () Bool)

(declare-fun res!140344 () Bool)

(assert (=> b!276319 (=> (not res!140344) (not e!176547))))

(declare-datatypes ((List!4336 0))(
  ( (Nil!4333) (Cons!4332 (h!4999 (_ BitVec 64)) (t!9426 List!4336)) )
))
(declare-fun arrayNoDuplicates!0 (array!13716 (_ BitVec 32) List!4336) Bool)

(assert (=> b!276319 (= res!140344 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4333))))

(declare-fun b!276320 () Bool)

(declare-fun e!176546 () Bool)

(assert (=> b!276320 (= e!176546 false)))

(declare-fun lt!137638 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13716 (_ BitVec 32)) Bool)

(assert (=> b!276320 (= lt!137638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276321 () Bool)

(assert (=> b!276321 (= e!176547 e!176546)))

(declare-fun res!140347 () Bool)

(assert (=> b!276321 (=> (not res!140347) (not e!176546))))

(declare-datatypes ((SeekEntryResult!1676 0))(
  ( (MissingZero!1676 (index!8874 (_ BitVec 32))) (Found!1676 (index!8875 (_ BitVec 32))) (Intermediate!1676 (undefined!2488 Bool) (index!8876 (_ BitVec 32)) (x!27105 (_ BitVec 32))) (Undefined!1676) (MissingVacant!1676 (index!8877 (_ BitVec 32))) )
))
(declare-fun lt!137639 () SeekEntryResult!1676)

(assert (=> b!276321 (= res!140347 (or (= lt!137639 (MissingZero!1676 i!1267)) (= lt!137639 (MissingVacant!1676 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13716 (_ BitVec 32)) SeekEntryResult!1676)

(assert (=> b!276321 (= lt!137639 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26630 res!140348) b!276318))

(assert (= (and b!276318 res!140346) b!276317))

(assert (= (and b!276317 res!140349) b!276319))

(assert (= (and b!276319 res!140344) b!276316))

(assert (= (and b!276316 res!140345) b!276321))

(assert (= (and b!276321 res!140347) b!276320))

(declare-fun m!291713 () Bool)

(assert (=> b!276316 m!291713))

(declare-fun m!291715 () Bool)

(assert (=> b!276319 m!291715))

(declare-fun m!291717 () Bool)

(assert (=> start!26630 m!291717))

(declare-fun m!291719 () Bool)

(assert (=> start!26630 m!291719))

(declare-fun m!291721 () Bool)

(assert (=> b!276320 m!291721))

(declare-fun m!291723 () Bool)

(assert (=> b!276321 m!291723))

(declare-fun m!291725 () Bool)

(assert (=> b!276317 m!291725))

(push 1)

(assert (not b!276317))

(assert (not start!26630))

(assert (not b!276319))

(assert (not b!276320))

(assert (not b!276321))

(assert (not b!276316))

(check-sat)

(pop 1)

