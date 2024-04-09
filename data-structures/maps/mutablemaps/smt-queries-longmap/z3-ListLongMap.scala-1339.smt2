; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26604 () Bool)

(assert start!26604)

(declare-fun b!276061 () Bool)

(declare-fun e!176429 () Bool)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!13690 0))(
  ( (array!13691 (arr!6494 (Array (_ BitVec 32) (_ BitVec 64))) (size!6846 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13690)

(assert (=> b!276061 (= e!176429 (and (bvsge startIndex!26 (bvsub (size!6846 a!3325) #b00000000000000000000000000000001)) (bvsgt startIndex!26 (size!6846 a!3325))))))

(declare-fun b!276062 () Bool)

(declare-fun res!140095 () Bool)

(declare-fun e!176431 () Bool)

(assert (=> b!276062 (=> (not res!140095) (not e!176431))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276062 (= res!140095 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276063 () Bool)

(declare-fun res!140089 () Bool)

(assert (=> b!276063 (=> (not res!140089) (not e!176431))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276063 (= res!140089 (validKeyInArray!0 k0!2581))))

(declare-fun b!276064 () Bool)

(declare-fun res!140092 () Bool)

(assert (=> b!276064 (=> (not res!140092) (not e!176429))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276064 (= res!140092 (not (= startIndex!26 i!1267)))))

(declare-fun b!276065 () Bool)

(assert (=> b!276065 (= e!176431 e!176429)))

(declare-fun res!140091 () Bool)

(assert (=> b!276065 (=> (not res!140091) (not e!176429))))

(declare-datatypes ((SeekEntryResult!1663 0))(
  ( (MissingZero!1663 (index!8822 (_ BitVec 32))) (Found!1663 (index!8823 (_ BitVec 32))) (Intermediate!1663 (undefined!2475 Bool) (index!8824 (_ BitVec 32)) (x!27060 (_ BitVec 32))) (Undefined!1663) (MissingVacant!1663 (index!8825 (_ BitVec 32))) )
))
(declare-fun lt!137573 () SeekEntryResult!1663)

(assert (=> b!276065 (= res!140091 (or (= lt!137573 (MissingZero!1663 i!1267)) (= lt!137573 (MissingVacant!1663 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13690 (_ BitVec 32)) SeekEntryResult!1663)

(assert (=> b!276065 (= lt!137573 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276066 () Bool)

(declare-fun res!140090 () Bool)

(assert (=> b!276066 (=> (not res!140090) (not e!176429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13690 (_ BitVec 32)) Bool)

(assert (=> b!276066 (= res!140090 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276067 () Bool)

(declare-fun res!140094 () Bool)

(assert (=> b!276067 (=> (not res!140094) (not e!176431))))

(assert (=> b!276067 (= res!140094 (and (= (size!6846 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6846 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6846 a!3325))))))

(declare-fun res!140097 () Bool)

(assert (=> start!26604 (=> (not res!140097) (not e!176431))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26604 (= res!140097 (validMask!0 mask!3868))))

(assert (=> start!26604 e!176431))

(declare-fun array_inv!4448 (array!13690) Bool)

(assert (=> start!26604 (array_inv!4448 a!3325)))

(assert (=> start!26604 true))

(declare-fun b!276068 () Bool)

(declare-fun res!140096 () Bool)

(assert (=> b!276068 (=> (not res!140096) (not e!176431))))

(declare-datatypes ((List!4323 0))(
  ( (Nil!4320) (Cons!4319 (h!4986 (_ BitVec 64)) (t!9413 List!4323)) )
))
(declare-fun arrayNoDuplicates!0 (array!13690 (_ BitVec 32) List!4323) Bool)

(assert (=> b!276068 (= res!140096 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4320))))

(declare-fun b!276069 () Bool)

(declare-fun res!140093 () Bool)

(assert (=> b!276069 (=> (not res!140093) (not e!176429))))

(assert (=> b!276069 (= res!140093 (not (validKeyInArray!0 (select (arr!6494 a!3325) startIndex!26))))))

(assert (= (and start!26604 res!140097) b!276067))

(assert (= (and b!276067 res!140094) b!276063))

(assert (= (and b!276063 res!140089) b!276068))

(assert (= (and b!276068 res!140096) b!276062))

(assert (= (and b!276062 res!140095) b!276065))

(assert (= (and b!276065 res!140091) b!276066))

(assert (= (and b!276066 res!140090) b!276064))

(assert (= (and b!276064 res!140092) b!276069))

(assert (= (and b!276069 res!140093) b!276061))

(declare-fun m!291523 () Bool)

(assert (=> b!276063 m!291523))

(declare-fun m!291525 () Bool)

(assert (=> b!276065 m!291525))

(declare-fun m!291527 () Bool)

(assert (=> b!276062 m!291527))

(declare-fun m!291529 () Bool)

(assert (=> b!276068 m!291529))

(declare-fun m!291531 () Bool)

(assert (=> b!276066 m!291531))

(declare-fun m!291533 () Bool)

(assert (=> start!26604 m!291533))

(declare-fun m!291535 () Bool)

(assert (=> start!26604 m!291535))

(declare-fun m!291537 () Bool)

(assert (=> b!276069 m!291537))

(assert (=> b!276069 m!291537))

(declare-fun m!291539 () Bool)

(assert (=> b!276069 m!291539))

(check-sat (not b!276062) (not start!26604) (not b!276066) (not b!276069) (not b!276068) (not b!276065) (not b!276063))
(check-sat)
