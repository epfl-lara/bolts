; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26578 () Bool)

(assert start!26578)

(declare-fun b!275784 () Bool)

(declare-fun res!139819 () Bool)

(declare-fun e!176313 () Bool)

(assert (=> b!275784 (=> (not res!139819) (not e!176313))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275784 (= res!139819 (not (= startIndex!26 i!1267)))))

(declare-fun b!275785 () Bool)

(declare-fun res!139812 () Bool)

(declare-fun e!176314 () Bool)

(assert (=> b!275785 (=> (not res!139812) (not e!176314))))

(declare-datatypes ((array!13664 0))(
  ( (array!13665 (arr!6481 (Array (_ BitVec 32) (_ BitVec 64))) (size!6833 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13664)

(declare-datatypes ((List!4310 0))(
  ( (Nil!4307) (Cons!4306 (h!4973 (_ BitVec 64)) (t!9400 List!4310)) )
))
(declare-fun arrayNoDuplicates!0 (array!13664 (_ BitVec 32) List!4310) Bool)

(assert (=> b!275785 (= res!139812 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4307))))

(declare-fun b!275786 () Bool)

(declare-fun res!139821 () Bool)

(assert (=> b!275786 (=> (not res!139821) (not e!176314))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275786 (= res!139821 (validKeyInArray!0 k!2581))))

(declare-fun b!275787 () Bool)

(declare-fun res!139817 () Bool)

(assert (=> b!275787 (=> (not res!139817) (not e!176313))))

(assert (=> b!275787 (= res!139817 (and (bvslt startIndex!26 (bvsub (size!6833 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!275788 () Bool)

(declare-fun res!139814 () Bool)

(assert (=> b!275788 (=> (not res!139814) (not e!176313))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13664 (_ BitVec 32)) Bool)

(assert (=> b!275788 (= res!139814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275789 () Bool)

(assert (=> b!275789 (= e!176314 e!176313)))

(declare-fun res!139820 () Bool)

(assert (=> b!275789 (=> (not res!139820) (not e!176313))))

(declare-datatypes ((SeekEntryResult!1650 0))(
  ( (MissingZero!1650 (index!8770 (_ BitVec 32))) (Found!1650 (index!8771 (_ BitVec 32))) (Intermediate!1650 (undefined!2462 Bool) (index!8772 (_ BitVec 32)) (x!27015 (_ BitVec 32))) (Undefined!1650) (MissingVacant!1650 (index!8773 (_ BitVec 32))) )
))
(declare-fun lt!137501 () SeekEntryResult!1650)

(assert (=> b!275789 (= res!139820 (or (= lt!137501 (MissingZero!1650 i!1267)) (= lt!137501 (MissingVacant!1650 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13664 (_ BitVec 32)) SeekEntryResult!1650)

(assert (=> b!275789 (= lt!137501 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275790 () Bool)

(declare-fun res!139818 () Bool)

(assert (=> b!275790 (=> (not res!139818) (not e!176314))))

(assert (=> b!275790 (= res!139818 (and (= (size!6833 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6833 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6833 a!3325))))))

(declare-fun b!275792 () Bool)

(declare-fun res!139816 () Bool)

(assert (=> b!275792 (=> (not res!139816) (not e!176313))))

(assert (=> b!275792 (= res!139816 (not (validKeyInArray!0 (select (arr!6481 a!3325) startIndex!26))))))

(declare-fun b!275793 () Bool)

(assert (=> b!275793 (= e!176313 (not (bvsle startIndex!26 (size!6833 a!3325))))))

(assert (=> b!275793 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13665 (store (arr!6481 a!3325) i!1267 k!2581) (size!6833 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8694 0))(
  ( (Unit!8695) )
))
(declare-fun lt!137500 () Unit!8694)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13664 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8694)

(assert (=> b!275793 (= lt!137500 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun res!139815 () Bool)

(assert (=> start!26578 (=> (not res!139815) (not e!176314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26578 (= res!139815 (validMask!0 mask!3868))))

(assert (=> start!26578 e!176314))

(declare-fun array_inv!4435 (array!13664) Bool)

(assert (=> start!26578 (array_inv!4435 a!3325)))

(assert (=> start!26578 true))

(declare-fun b!275791 () Bool)

(declare-fun res!139813 () Bool)

(assert (=> b!275791 (=> (not res!139813) (not e!176314))))

(declare-fun arrayContainsKey!0 (array!13664 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275791 (= res!139813 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26578 res!139815) b!275790))

(assert (= (and b!275790 res!139818) b!275786))

(assert (= (and b!275786 res!139821) b!275785))

(assert (= (and b!275785 res!139812) b!275791))

(assert (= (and b!275791 res!139813) b!275789))

(assert (= (and b!275789 res!139820) b!275788))

(assert (= (and b!275788 res!139814) b!275784))

(assert (= (and b!275784 res!139819) b!275792))

(assert (= (and b!275792 res!139816) b!275787))

(assert (= (and b!275787 res!139817) b!275793))

(declare-fun m!291307 () Bool)

(assert (=> b!275785 m!291307))

(declare-fun m!291309 () Bool)

(assert (=> b!275789 m!291309))

(declare-fun m!291311 () Bool)

(assert (=> b!275793 m!291311))

(declare-fun m!291313 () Bool)

(assert (=> b!275793 m!291313))

(declare-fun m!291315 () Bool)

(assert (=> b!275793 m!291315))

(declare-fun m!291317 () Bool)

(assert (=> b!275788 m!291317))

(declare-fun m!291319 () Bool)

(assert (=> start!26578 m!291319))

(declare-fun m!291321 () Bool)

(assert (=> start!26578 m!291321))

(declare-fun m!291323 () Bool)

(assert (=> b!275791 m!291323))

(declare-fun m!291325 () Bool)

(assert (=> b!275792 m!291325))

(assert (=> b!275792 m!291325))

(declare-fun m!291327 () Bool)

(assert (=> b!275792 m!291327))

(declare-fun m!291329 () Bool)

(assert (=> b!275786 m!291329))

(push 1)

(assert (not start!26578))

(assert (not b!275786))

(assert (not b!275793))

(assert (not b!275788))

(assert (not b!275789))

(assert (not b!275792))

(assert (not b!275791))

(assert (not b!275785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

