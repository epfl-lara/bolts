; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26602 () Bool)

(assert start!26602)

(declare-fun b!276034 () Bool)

(declare-fun res!140064 () Bool)

(declare-fun e!176420 () Bool)

(assert (=> b!276034 (=> (not res!140064) (not e!176420))))

(declare-datatypes ((array!13688 0))(
  ( (array!13689 (arr!6493 (Array (_ BitVec 32) (_ BitVec 64))) (size!6845 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13688)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13688 (_ BitVec 32)) Bool)

(assert (=> b!276034 (= res!140064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276035 () Bool)

(declare-fun res!140062 () Bool)

(declare-fun e!176421 () Bool)

(assert (=> b!276035 (=> (not res!140062) (not e!176421))))

(declare-datatypes ((List!4322 0))(
  ( (Nil!4319) (Cons!4318 (h!4985 (_ BitVec 64)) (t!9412 List!4322)) )
))
(declare-fun arrayNoDuplicates!0 (array!13688 (_ BitVec 32) List!4322) Bool)

(assert (=> b!276035 (= res!140062 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4319))))

(declare-fun b!276036 () Bool)

(declare-fun res!140068 () Bool)

(assert (=> b!276036 (=> (not res!140068) (not e!176421))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276036 (= res!140068 (validKeyInArray!0 k!2581))))

(declare-fun b!276037 () Bool)

(declare-fun res!140065 () Bool)

(assert (=> b!276037 (=> (not res!140065) (not e!176420))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276037 (= res!140065 (not (= startIndex!26 i!1267)))))

(declare-fun b!276038 () Bool)

(assert (=> b!276038 (= e!176420 (and (bvsge startIndex!26 (bvsub (size!6845 a!3325) #b00000000000000000000000000000001)) (bvsgt startIndex!26 (size!6845 a!3325))))))

(declare-fun res!140067 () Bool)

(assert (=> start!26602 (=> (not res!140067) (not e!176421))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26602 (= res!140067 (validMask!0 mask!3868))))

(assert (=> start!26602 e!176421))

(declare-fun array_inv!4447 (array!13688) Bool)

(assert (=> start!26602 (array_inv!4447 a!3325)))

(assert (=> start!26602 true))

(declare-fun b!276039 () Bool)

(assert (=> b!276039 (= e!176421 e!176420)))

(declare-fun res!140069 () Bool)

(assert (=> b!276039 (=> (not res!140069) (not e!176420))))

(declare-datatypes ((SeekEntryResult!1662 0))(
  ( (MissingZero!1662 (index!8818 (_ BitVec 32))) (Found!1662 (index!8819 (_ BitVec 32))) (Intermediate!1662 (undefined!2474 Bool) (index!8820 (_ BitVec 32)) (x!27059 (_ BitVec 32))) (Undefined!1662) (MissingVacant!1662 (index!8821 (_ BitVec 32))) )
))
(declare-fun lt!137570 () SeekEntryResult!1662)

(assert (=> b!276039 (= res!140069 (or (= lt!137570 (MissingZero!1662 i!1267)) (= lt!137570 (MissingVacant!1662 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13688 (_ BitVec 32)) SeekEntryResult!1662)

(assert (=> b!276039 (= lt!137570 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276040 () Bool)

(declare-fun res!140070 () Bool)

(assert (=> b!276040 (=> (not res!140070) (not e!176420))))

(assert (=> b!276040 (= res!140070 (not (validKeyInArray!0 (select (arr!6493 a!3325) startIndex!26))))))

(declare-fun b!276041 () Bool)

(declare-fun res!140066 () Bool)

(assert (=> b!276041 (=> (not res!140066) (not e!176421))))

(assert (=> b!276041 (= res!140066 (and (= (size!6845 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6845 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6845 a!3325))))))

(declare-fun b!276042 () Bool)

(declare-fun res!140063 () Bool)

(assert (=> b!276042 (=> (not res!140063) (not e!176421))))

(declare-fun arrayContainsKey!0 (array!13688 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276042 (= res!140063 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26602 res!140067) b!276041))

(assert (= (and b!276041 res!140066) b!276036))

(assert (= (and b!276036 res!140068) b!276035))

(assert (= (and b!276035 res!140062) b!276042))

(assert (= (and b!276042 res!140063) b!276039))

(assert (= (and b!276039 res!140069) b!276034))

(assert (= (and b!276034 res!140064) b!276037))

(assert (= (and b!276037 res!140065) b!276040))

(assert (= (and b!276040 res!140070) b!276038))

(declare-fun m!291505 () Bool)

(assert (=> b!276036 m!291505))

(declare-fun m!291507 () Bool)

(assert (=> b!276034 m!291507))

(declare-fun m!291509 () Bool)

(assert (=> b!276035 m!291509))

(declare-fun m!291511 () Bool)

(assert (=> b!276039 m!291511))

(declare-fun m!291513 () Bool)

(assert (=> b!276040 m!291513))

(assert (=> b!276040 m!291513))

(declare-fun m!291515 () Bool)

(assert (=> b!276040 m!291515))

(declare-fun m!291517 () Bool)

(assert (=> start!26602 m!291517))

(declare-fun m!291519 () Bool)

(assert (=> start!26602 m!291519))

(declare-fun m!291521 () Bool)

(assert (=> b!276042 m!291521))

(push 1)

(assert (not b!276035))

(assert (not b!276036))

(assert (not b!276039))

(assert (not start!26602))

(assert (not b!276040))

(assert (not b!276042))

(assert (not b!276034))

(check-sat)

(pop 1)

(push 1)

(check-sat)

