; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26592 () Bool)

(assert start!26592)

(declare-fun b!275938 () Bool)

(declare-fun e!176376 () Bool)

(assert (=> b!275938 (= e!176376 false)))

(declare-fun lt!137543 () Bool)

(declare-datatypes ((array!13678 0))(
  ( (array!13679 (arr!6488 (Array (_ BitVec 32) (_ BitVec 64))) (size!6840 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13678)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13678 (_ BitVec 32)) Bool)

(assert (=> b!275938 (= lt!137543 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275939 () Bool)

(declare-fun res!139969 () Bool)

(declare-fun e!176375 () Bool)

(assert (=> b!275939 (=> (not res!139969) (not e!176375))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275939 (= res!139969 (and (= (size!6840 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6840 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6840 a!3325))))))

(declare-fun b!275940 () Bool)

(assert (=> b!275940 (= e!176375 e!176376)))

(declare-fun res!139967 () Bool)

(assert (=> b!275940 (=> (not res!139967) (not e!176376))))

(declare-datatypes ((SeekEntryResult!1657 0))(
  ( (MissingZero!1657 (index!8798 (_ BitVec 32))) (Found!1657 (index!8799 (_ BitVec 32))) (Intermediate!1657 (undefined!2469 Bool) (index!8800 (_ BitVec 32)) (x!27038 (_ BitVec 32))) (Undefined!1657) (MissingVacant!1657 (index!8801 (_ BitVec 32))) )
))
(declare-fun lt!137542 () SeekEntryResult!1657)

(assert (=> b!275940 (= res!139967 (or (= lt!137542 (MissingZero!1657 i!1267)) (= lt!137542 (MissingVacant!1657 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13678 (_ BitVec 32)) SeekEntryResult!1657)

(assert (=> b!275940 (= lt!137542 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!139968 () Bool)

(assert (=> start!26592 (=> (not res!139968) (not e!176375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26592 (= res!139968 (validMask!0 mask!3868))))

(assert (=> start!26592 e!176375))

(declare-fun array_inv!4442 (array!13678) Bool)

(assert (=> start!26592 (array_inv!4442 a!3325)))

(assert (=> start!26592 true))

(declare-fun b!275941 () Bool)

(declare-fun res!139966 () Bool)

(assert (=> b!275941 (=> (not res!139966) (not e!176375))))

(declare-datatypes ((List!4317 0))(
  ( (Nil!4314) (Cons!4313 (h!4980 (_ BitVec 64)) (t!9407 List!4317)) )
))
(declare-fun arrayNoDuplicates!0 (array!13678 (_ BitVec 32) List!4317) Bool)

(assert (=> b!275941 (= res!139966 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4314))))

(declare-fun b!275942 () Bool)

(declare-fun res!139970 () Bool)

(assert (=> b!275942 (=> (not res!139970) (not e!176375))))

(declare-fun arrayContainsKey!0 (array!13678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275942 (= res!139970 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275943 () Bool)

(declare-fun res!139971 () Bool)

(assert (=> b!275943 (=> (not res!139971) (not e!176375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275943 (= res!139971 (validKeyInArray!0 k0!2581))))

(assert (= (and start!26592 res!139968) b!275939))

(assert (= (and b!275939 res!139969) b!275943))

(assert (= (and b!275943 res!139971) b!275941))

(assert (= (and b!275941 res!139966) b!275942))

(assert (= (and b!275942 res!139970) b!275940))

(assert (= (and b!275940 res!139967) b!275938))

(declare-fun m!291435 () Bool)

(assert (=> start!26592 m!291435))

(declare-fun m!291437 () Bool)

(assert (=> start!26592 m!291437))

(declare-fun m!291439 () Bool)

(assert (=> b!275943 m!291439))

(declare-fun m!291441 () Bool)

(assert (=> b!275942 m!291441))

(declare-fun m!291443 () Bool)

(assert (=> b!275938 m!291443))

(declare-fun m!291445 () Bool)

(assert (=> b!275941 m!291445))

(declare-fun m!291447 () Bool)

(assert (=> b!275940 m!291447))

(check-sat (not b!275940) (not b!275943) (not b!275938) (not start!26592) (not b!275941) (not b!275942))
(check-sat)
