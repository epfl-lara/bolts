; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26676 () Bool)

(assert start!26676)

(declare-fun b!276740 () Bool)

(declare-fun res!140769 () Bool)

(declare-fun e!176753 () Bool)

(assert (=> b!276740 (=> (not res!140769) (not e!176753))))

(declare-datatypes ((array!13762 0))(
  ( (array!13763 (arr!6530 (Array (_ BitVec 32) (_ BitVec 64))) (size!6882 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13762)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276740 (= res!140769 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276741 () Bool)

(declare-fun e!176754 () Bool)

(assert (=> b!276741 (= e!176754 false)))

(declare-fun lt!137767 () Bool)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13762 (_ BitVec 32)) Bool)

(assert (=> b!276741 (= lt!137767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276742 () Bool)

(assert (=> b!276742 (= e!176753 e!176754)))

(declare-fun res!140767 () Bool)

(assert (=> b!276742 (=> (not res!140767) (not e!176754))))

(declare-datatypes ((SeekEntryResult!1699 0))(
  ( (MissingZero!1699 (index!8966 (_ BitVec 32))) (Found!1699 (index!8967 (_ BitVec 32))) (Intermediate!1699 (undefined!2511 Bool) (index!8968 (_ BitVec 32)) (x!27192 (_ BitVec 32))) (Undefined!1699) (MissingVacant!1699 (index!8969 (_ BitVec 32))) )
))
(declare-fun lt!137768 () SeekEntryResult!1699)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276742 (= res!140767 (or (= lt!137768 (MissingZero!1699 i!1267)) (= lt!137768 (MissingVacant!1699 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13762 (_ BitVec 32)) SeekEntryResult!1699)

(assert (=> b!276742 (= lt!137768 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276743 () Bool)

(declare-fun res!140772 () Bool)

(assert (=> b!276743 (=> (not res!140772) (not e!176753))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276743 (= res!140772 (and (= (size!6882 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6882 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6882 a!3325))))))

(declare-fun b!276744 () Bool)

(declare-fun res!140768 () Bool)

(assert (=> b!276744 (=> (not res!140768) (not e!176753))))

(declare-datatypes ((List!4359 0))(
  ( (Nil!4356) (Cons!4355 (h!5022 (_ BitVec 64)) (t!9449 List!4359)) )
))
(declare-fun arrayNoDuplicates!0 (array!13762 (_ BitVec 32) List!4359) Bool)

(assert (=> b!276744 (= res!140768 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4356))))

(declare-fun res!140770 () Bool)

(assert (=> start!26676 (=> (not res!140770) (not e!176753))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26676 (= res!140770 (validMask!0 mask!3868))))

(assert (=> start!26676 e!176753))

(declare-fun array_inv!4484 (array!13762) Bool)

(assert (=> start!26676 (array_inv!4484 a!3325)))

(assert (=> start!26676 true))

(declare-fun b!276739 () Bool)

(declare-fun res!140771 () Bool)

(assert (=> b!276739 (=> (not res!140771) (not e!176753))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276739 (= res!140771 (validKeyInArray!0 k0!2581))))

(assert (= (and start!26676 res!140770) b!276743))

(assert (= (and b!276743 res!140772) b!276739))

(assert (= (and b!276739 res!140771) b!276744))

(assert (= (and b!276744 res!140768) b!276740))

(assert (= (and b!276740 res!140769) b!276742))

(assert (= (and b!276742 res!140767) b!276741))

(declare-fun m!292035 () Bool)

(assert (=> b!276742 m!292035))

(declare-fun m!292037 () Bool)

(assert (=> b!276739 m!292037))

(declare-fun m!292039 () Bool)

(assert (=> b!276741 m!292039))

(declare-fun m!292041 () Bool)

(assert (=> start!26676 m!292041))

(declare-fun m!292043 () Bool)

(assert (=> start!26676 m!292043))

(declare-fun m!292045 () Bool)

(assert (=> b!276744 m!292045))

(declare-fun m!292047 () Bool)

(assert (=> b!276740 m!292047))

(check-sat (not b!276740) (not b!276741) (not b!276739) (not b!276744) (not b!276742) (not start!26676))
(check-sat)
