; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26682 () Bool)

(assert start!26682)

(declare-fun res!140825 () Bool)

(declare-fun e!176780 () Bool)

(assert (=> start!26682 (=> (not res!140825) (not e!176780))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26682 (= res!140825 (validMask!0 mask!3868))))

(assert (=> start!26682 e!176780))

(declare-datatypes ((array!13768 0))(
  ( (array!13769 (arr!6533 (Array (_ BitVec 32) (_ BitVec 64))) (size!6885 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13768)

(declare-fun array_inv!4487 (array!13768) Bool)

(assert (=> start!26682 (array_inv!4487 a!3325)))

(assert (=> start!26682 true))

(declare-fun b!276793 () Bool)

(declare-fun e!176782 () Bool)

(assert (=> b!276793 (= e!176780 e!176782)))

(declare-fun res!140826 () Bool)

(assert (=> b!276793 (=> (not res!140826) (not e!176782))))

(declare-datatypes ((SeekEntryResult!1702 0))(
  ( (MissingZero!1702 (index!8978 (_ BitVec 32))) (Found!1702 (index!8979 (_ BitVec 32))) (Intermediate!1702 (undefined!2514 Bool) (index!8980 (_ BitVec 32)) (x!27203 (_ BitVec 32))) (Undefined!1702) (MissingVacant!1702 (index!8981 (_ BitVec 32))) )
))
(declare-fun lt!137785 () SeekEntryResult!1702)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276793 (= res!140826 (or (= lt!137785 (MissingZero!1702 i!1267)) (= lt!137785 (MissingVacant!1702 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13768 (_ BitVec 32)) SeekEntryResult!1702)

(assert (=> b!276793 (= lt!137785 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276794 () Bool)

(declare-fun res!140822 () Bool)

(assert (=> b!276794 (=> (not res!140822) (not e!176780))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276794 (= res!140822 (and (= (size!6885 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6885 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6885 a!3325))))))

(declare-fun b!276795 () Bool)

(declare-fun res!140821 () Bool)

(assert (=> b!276795 (=> (not res!140821) (not e!176780))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276795 (= res!140821 (validKeyInArray!0 k0!2581))))

(declare-fun b!276796 () Bool)

(assert (=> b!276796 (= e!176782 false)))

(declare-fun lt!137786 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13768 (_ BitVec 32)) Bool)

(assert (=> b!276796 (= lt!137786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276797 () Bool)

(declare-fun res!140823 () Bool)

(assert (=> b!276797 (=> (not res!140823) (not e!176780))))

(declare-datatypes ((List!4362 0))(
  ( (Nil!4359) (Cons!4358 (h!5025 (_ BitVec 64)) (t!9452 List!4362)) )
))
(declare-fun arrayNoDuplicates!0 (array!13768 (_ BitVec 32) List!4362) Bool)

(assert (=> b!276797 (= res!140823 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4359))))

(declare-fun b!276798 () Bool)

(declare-fun res!140824 () Bool)

(assert (=> b!276798 (=> (not res!140824) (not e!176780))))

(declare-fun arrayContainsKey!0 (array!13768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276798 (= res!140824 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26682 res!140825) b!276794))

(assert (= (and b!276794 res!140822) b!276795))

(assert (= (and b!276795 res!140821) b!276797))

(assert (= (and b!276797 res!140823) b!276798))

(assert (= (and b!276798 res!140824) b!276793))

(assert (= (and b!276793 res!140826) b!276796))

(declare-fun m!292077 () Bool)

(assert (=> b!276795 m!292077))

(declare-fun m!292079 () Bool)

(assert (=> b!276797 m!292079))

(declare-fun m!292081 () Bool)

(assert (=> b!276798 m!292081))

(declare-fun m!292083 () Bool)

(assert (=> start!26682 m!292083))

(declare-fun m!292085 () Bool)

(assert (=> start!26682 m!292085))

(declare-fun m!292087 () Bool)

(assert (=> b!276793 m!292087))

(declare-fun m!292089 () Bool)

(assert (=> b!276796 m!292089))

(check-sat (not b!276795) (not b!276793) (not b!276797) (not b!276796) (not b!276798) (not start!26682))
(check-sat)
