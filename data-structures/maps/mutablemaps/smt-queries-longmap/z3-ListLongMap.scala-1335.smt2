; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26580 () Bool)

(assert start!26580)

(declare-fun b!275815 () Bool)

(declare-fun res!139848 () Bool)

(declare-fun e!176321 () Bool)

(assert (=> b!275815 (=> (not res!139848) (not e!176321))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275815 (= res!139848 (validKeyInArray!0 k0!2581))))

(declare-fun b!275816 () Bool)

(declare-fun res!139846 () Bool)

(declare-fun e!176322 () Bool)

(assert (=> b!275816 (=> (not res!139846) (not e!176322))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!13666 0))(
  ( (array!13667 (arr!6482 (Array (_ BitVec 32) (_ BitVec 64))) (size!6834 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13666)

(assert (=> b!275816 (= res!139846 (and (bvslt startIndex!26 (bvsub (size!6834 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!275817 () Bool)

(declare-fun res!139851 () Bool)

(assert (=> b!275817 (=> (not res!139851) (not e!176322))))

(assert (=> b!275817 (= res!139851 (not (validKeyInArray!0 (select (arr!6482 a!3325) startIndex!26))))))

(declare-fun b!275818 () Bool)

(assert (=> b!275818 (= e!176322 (not (bvsle startIndex!26 (size!6834 a!3325))))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13666 (_ BitVec 32)) Bool)

(assert (=> b!275818 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13667 (store (arr!6482 a!3325) i!1267 k0!2581) (size!6834 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8696 0))(
  ( (Unit!8697) )
))
(declare-fun lt!137506 () Unit!8696)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13666 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8696)

(assert (=> b!275818 (= lt!137506 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!275819 () Bool)

(declare-fun res!139845 () Bool)

(assert (=> b!275819 (=> (not res!139845) (not e!176322))))

(assert (=> b!275819 (= res!139845 (not (= startIndex!26 i!1267)))))

(declare-fun b!275820 () Bool)

(assert (=> b!275820 (= e!176321 e!176322)))

(declare-fun res!139842 () Bool)

(assert (=> b!275820 (=> (not res!139842) (not e!176322))))

(declare-datatypes ((SeekEntryResult!1651 0))(
  ( (MissingZero!1651 (index!8774 (_ BitVec 32))) (Found!1651 (index!8775 (_ BitVec 32))) (Intermediate!1651 (undefined!2463 Bool) (index!8776 (_ BitVec 32)) (x!27016 (_ BitVec 32))) (Undefined!1651) (MissingVacant!1651 (index!8777 (_ BitVec 32))) )
))
(declare-fun lt!137507 () SeekEntryResult!1651)

(assert (=> b!275820 (= res!139842 (or (= lt!137507 (MissingZero!1651 i!1267)) (= lt!137507 (MissingVacant!1651 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13666 (_ BitVec 32)) SeekEntryResult!1651)

(assert (=> b!275820 (= lt!137507 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275821 () Bool)

(declare-fun res!139847 () Bool)

(assert (=> b!275821 (=> (not res!139847) (not e!176322))))

(assert (=> b!275821 (= res!139847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!139849 () Bool)

(assert (=> start!26580 (=> (not res!139849) (not e!176321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26580 (= res!139849 (validMask!0 mask!3868))))

(assert (=> start!26580 e!176321))

(declare-fun array_inv!4436 (array!13666) Bool)

(assert (=> start!26580 (array_inv!4436 a!3325)))

(assert (=> start!26580 true))

(declare-fun b!275814 () Bool)

(declare-fun res!139844 () Bool)

(assert (=> b!275814 (=> (not res!139844) (not e!176321))))

(assert (=> b!275814 (= res!139844 (and (= (size!6834 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6834 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6834 a!3325))))))

(declare-fun b!275822 () Bool)

(declare-fun res!139850 () Bool)

(assert (=> b!275822 (=> (not res!139850) (not e!176321))))

(declare-fun arrayContainsKey!0 (array!13666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275822 (= res!139850 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275823 () Bool)

(declare-fun res!139843 () Bool)

(assert (=> b!275823 (=> (not res!139843) (not e!176321))))

(declare-datatypes ((List!4311 0))(
  ( (Nil!4308) (Cons!4307 (h!4974 (_ BitVec 64)) (t!9401 List!4311)) )
))
(declare-fun arrayNoDuplicates!0 (array!13666 (_ BitVec 32) List!4311) Bool)

(assert (=> b!275823 (= res!139843 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4308))))

(assert (= (and start!26580 res!139849) b!275814))

(assert (= (and b!275814 res!139844) b!275815))

(assert (= (and b!275815 res!139848) b!275823))

(assert (= (and b!275823 res!139843) b!275822))

(assert (= (and b!275822 res!139850) b!275820))

(assert (= (and b!275820 res!139842) b!275821))

(assert (= (and b!275821 res!139847) b!275819))

(assert (= (and b!275819 res!139845) b!275817))

(assert (= (and b!275817 res!139851) b!275816))

(assert (= (and b!275816 res!139846) b!275818))

(declare-fun m!291331 () Bool)

(assert (=> b!275815 m!291331))

(declare-fun m!291333 () Bool)

(assert (=> b!275822 m!291333))

(declare-fun m!291335 () Bool)

(assert (=> b!275823 m!291335))

(declare-fun m!291337 () Bool)

(assert (=> start!26580 m!291337))

(declare-fun m!291339 () Bool)

(assert (=> start!26580 m!291339))

(declare-fun m!291341 () Bool)

(assert (=> b!275818 m!291341))

(declare-fun m!291343 () Bool)

(assert (=> b!275818 m!291343))

(declare-fun m!291345 () Bool)

(assert (=> b!275818 m!291345))

(declare-fun m!291347 () Bool)

(assert (=> b!275820 m!291347))

(declare-fun m!291349 () Bool)

(assert (=> b!275821 m!291349))

(declare-fun m!291351 () Bool)

(assert (=> b!275817 m!291351))

(assert (=> b!275817 m!291351))

(declare-fun m!291353 () Bool)

(assert (=> b!275817 m!291353))

(check-sat (not b!275821) (not b!275822) (not b!275820) (not start!26580) (not b!275815) (not b!275817) (not b!275818) (not b!275823))
(check-sat)
