; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27132 () Bool)

(assert start!27132)

(declare-fun b!280429 () Bool)

(declare-fun res!143544 () Bool)

(declare-fun e!178533 () Bool)

(assert (=> b!280429 (=> (not res!143544) (not e!178533))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280429 (= res!143544 (not (= startIndex!26 i!1267)))))

(declare-fun b!280430 () Bool)

(declare-fun res!143542 () Bool)

(declare-fun e!178534 () Bool)

(assert (=> b!280430 (=> (not res!143542) (not e!178534))))

(declare-datatypes ((array!13939 0))(
  ( (array!13940 (arr!6611 (Array (_ BitVec 32) (_ BitVec 64))) (size!6963 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13939)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13939 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280430 (= res!143542 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280431 () Bool)

(declare-fun res!143539 () Bool)

(assert (=> b!280431 (=> (not res!143539) (not e!178534))))

(declare-datatypes ((List!4440 0))(
  ( (Nil!4437) (Cons!4436 (h!5106 (_ BitVec 64)) (t!9530 List!4440)) )
))
(declare-fun arrayNoDuplicates!0 (array!13939 (_ BitVec 32) List!4440) Bool)

(assert (=> b!280431 (= res!143539 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4437))))

(declare-fun b!280432 () Bool)

(assert (=> b!280432 (= e!178534 e!178533)))

(declare-fun res!143543 () Bool)

(assert (=> b!280432 (=> (not res!143543) (not e!178533))))

(declare-datatypes ((SeekEntryResult!1780 0))(
  ( (MissingZero!1780 (index!9290 (_ BitVec 32))) (Found!1780 (index!9291 (_ BitVec 32))) (Intermediate!1780 (undefined!2592 Bool) (index!9292 (_ BitVec 32)) (x!27498 (_ BitVec 32))) (Undefined!1780) (MissingVacant!1780 (index!9293 (_ BitVec 32))) )
))
(declare-fun lt!138856 () SeekEntryResult!1780)

(assert (=> b!280432 (= res!143543 (or (= lt!138856 (MissingZero!1780 i!1267)) (= lt!138856 (MissingVacant!1780 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13939 (_ BitVec 32)) SeekEntryResult!1780)

(assert (=> b!280432 (= lt!138856 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!280433 () Bool)

(declare-fun res!143540 () Bool)

(assert (=> b!280433 (=> (not res!143540) (not e!178533))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280433 (= res!143540 (validKeyInArray!0 (select (arr!6611 a!3325) startIndex!26)))))

(declare-fun b!280434 () Bool)

(assert (=> b!280434 (= e!178533 (not true))))

(assert (=> b!280434 (arrayNoDuplicates!0 (array!13940 (store (arr!6611 a!3325) i!1267 k0!2581) (size!6963 a!3325)) #b00000000000000000000000000000000 Nil!4437)))

(declare-datatypes ((Unit!8823 0))(
  ( (Unit!8824) )
))
(declare-fun lt!138857 () Unit!8823)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13939 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4440) Unit!8823)

(assert (=> b!280434 (= lt!138857 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4437))))

(declare-fun res!143537 () Bool)

(assert (=> start!27132 (=> (not res!143537) (not e!178534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27132 (= res!143537 (validMask!0 mask!3868))))

(assert (=> start!27132 e!178534))

(declare-fun array_inv!4565 (array!13939) Bool)

(assert (=> start!27132 (array_inv!4565 a!3325)))

(assert (=> start!27132 true))

(declare-fun b!280435 () Bool)

(declare-fun res!143541 () Bool)

(assert (=> b!280435 (=> (not res!143541) (not e!178534))))

(assert (=> b!280435 (= res!143541 (and (= (size!6963 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6963 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6963 a!3325))))))

(declare-fun b!280436 () Bool)

(declare-fun res!143538 () Bool)

(assert (=> b!280436 (=> (not res!143538) (not e!178533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13939 (_ BitVec 32)) Bool)

(assert (=> b!280436 (= res!143538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280437 () Bool)

(declare-fun res!143536 () Bool)

(assert (=> b!280437 (=> (not res!143536) (not e!178534))))

(assert (=> b!280437 (= res!143536 (validKeyInArray!0 k0!2581))))

(assert (= (and start!27132 res!143537) b!280435))

(assert (= (and b!280435 res!143541) b!280437))

(assert (= (and b!280437 res!143536) b!280431))

(assert (= (and b!280431 res!143539) b!280430))

(assert (= (and b!280430 res!143542) b!280432))

(assert (= (and b!280432 res!143543) b!280436))

(assert (= (and b!280436 res!143538) b!280429))

(assert (= (and b!280429 res!143544) b!280433))

(assert (= (and b!280433 res!143540) b!280434))

(declare-fun m!294901 () Bool)

(assert (=> b!280433 m!294901))

(assert (=> b!280433 m!294901))

(declare-fun m!294903 () Bool)

(assert (=> b!280433 m!294903))

(declare-fun m!294905 () Bool)

(assert (=> b!280431 m!294905))

(declare-fun m!294907 () Bool)

(assert (=> b!280432 m!294907))

(declare-fun m!294909 () Bool)

(assert (=> b!280434 m!294909))

(declare-fun m!294911 () Bool)

(assert (=> b!280434 m!294911))

(declare-fun m!294913 () Bool)

(assert (=> b!280434 m!294913))

(declare-fun m!294915 () Bool)

(assert (=> b!280437 m!294915))

(declare-fun m!294917 () Bool)

(assert (=> b!280436 m!294917))

(declare-fun m!294919 () Bool)

(assert (=> b!280430 m!294919))

(declare-fun m!294921 () Bool)

(assert (=> start!27132 m!294921))

(declare-fun m!294923 () Bool)

(assert (=> start!27132 m!294923))

(check-sat (not b!280437) (not b!280434) (not b!280436) (not b!280431) (not b!280430) (not b!280432) (not start!27132) (not b!280433))
(check-sat)
