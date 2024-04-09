; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26582 () Bool)

(assert start!26582)

(declare-fun b!275844 () Bool)

(declare-fun res!139876 () Bool)

(declare-fun e!176332 () Bool)

(assert (=> b!275844 (=> (not res!139876) (not e!176332))))

(declare-datatypes ((array!13668 0))(
  ( (array!13669 (arr!6483 (Array (_ BitVec 32) (_ BitVec 64))) (size!6835 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13668)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!275844 (= res!139876 (and (= (size!6835 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6835 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6835 a!3325))))))

(declare-fun b!275845 () Bool)

(declare-fun res!139880 () Bool)

(declare-fun e!176331 () Bool)

(assert (=> b!275845 (=> (not res!139880) (not e!176331))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275845 (= res!139880 (not (validKeyInArray!0 (select (arr!6483 a!3325) startIndex!26))))))

(declare-fun b!275846 () Bool)

(assert (=> b!275846 (= e!176331 (not (bvsle startIndex!26 (size!6835 a!3325))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13668 (_ BitVec 32)) Bool)

(assert (=> b!275846 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13669 (store (arr!6483 a!3325) i!1267 k!2581) (size!6835 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8698 0))(
  ( (Unit!8699) )
))
(declare-fun lt!137513 () Unit!8698)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13668 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8698)

(assert (=> b!275846 (= lt!137513 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!275847 () Bool)

(declare-fun res!139875 () Bool)

(assert (=> b!275847 (=> (not res!139875) (not e!176332))))

(declare-fun arrayContainsKey!0 (array!13668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275847 (= res!139875 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275848 () Bool)

(declare-fun res!139872 () Bool)

(assert (=> b!275848 (=> (not res!139872) (not e!176331))))

(assert (=> b!275848 (= res!139872 (not (= startIndex!26 i!1267)))))

(declare-fun b!275849 () Bool)

(declare-fun res!139877 () Bool)

(assert (=> b!275849 (=> (not res!139877) (not e!176332))))

(declare-datatypes ((List!4312 0))(
  ( (Nil!4309) (Cons!4308 (h!4975 (_ BitVec 64)) (t!9402 List!4312)) )
))
(declare-fun arrayNoDuplicates!0 (array!13668 (_ BitVec 32) List!4312) Bool)

(assert (=> b!275849 (= res!139877 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4309))))

(declare-fun b!275850 () Bool)

(assert (=> b!275850 (= e!176332 e!176331)))

(declare-fun res!139874 () Bool)

(assert (=> b!275850 (=> (not res!139874) (not e!176331))))

(declare-datatypes ((SeekEntryResult!1652 0))(
  ( (MissingZero!1652 (index!8778 (_ BitVec 32))) (Found!1652 (index!8779 (_ BitVec 32))) (Intermediate!1652 (undefined!2464 Bool) (index!8780 (_ BitVec 32)) (x!27017 (_ BitVec 32))) (Undefined!1652) (MissingVacant!1652 (index!8781 (_ BitVec 32))) )
))
(declare-fun lt!137512 () SeekEntryResult!1652)

(assert (=> b!275850 (= res!139874 (or (= lt!137512 (MissingZero!1652 i!1267)) (= lt!137512 (MissingVacant!1652 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13668 (_ BitVec 32)) SeekEntryResult!1652)

(assert (=> b!275850 (= lt!137512 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275852 () Bool)

(declare-fun res!139873 () Bool)

(assert (=> b!275852 (=> (not res!139873) (not e!176332))))

(assert (=> b!275852 (= res!139873 (validKeyInArray!0 k!2581))))

(declare-fun b!275853 () Bool)

(declare-fun res!139879 () Bool)

(assert (=> b!275853 (=> (not res!139879) (not e!176331))))

(assert (=> b!275853 (= res!139879 (and (bvslt startIndex!26 (bvsub (size!6835 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun res!139881 () Bool)

(assert (=> start!26582 (=> (not res!139881) (not e!176332))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26582 (= res!139881 (validMask!0 mask!3868))))

(assert (=> start!26582 e!176332))

(declare-fun array_inv!4437 (array!13668) Bool)

(assert (=> start!26582 (array_inv!4437 a!3325)))

(assert (=> start!26582 true))

(declare-fun b!275851 () Bool)

(declare-fun res!139878 () Bool)

(assert (=> b!275851 (=> (not res!139878) (not e!176331))))

(assert (=> b!275851 (= res!139878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26582 res!139881) b!275844))

(assert (= (and b!275844 res!139876) b!275852))

(assert (= (and b!275852 res!139873) b!275849))

(assert (= (and b!275849 res!139877) b!275847))

(assert (= (and b!275847 res!139875) b!275850))

(assert (= (and b!275850 res!139874) b!275851))

(assert (= (and b!275851 res!139878) b!275848))

(assert (= (and b!275848 res!139872) b!275845))

(assert (= (and b!275845 res!139880) b!275853))

(assert (= (and b!275853 res!139879) b!275846))

(declare-fun m!291355 () Bool)

(assert (=> b!275847 m!291355))

(declare-fun m!291357 () Bool)

(assert (=> start!26582 m!291357))

(declare-fun m!291359 () Bool)

(assert (=> start!26582 m!291359))

(declare-fun m!291361 () Bool)

(assert (=> b!275850 m!291361))

(declare-fun m!291363 () Bool)

(assert (=> b!275852 m!291363))

(declare-fun m!291365 () Bool)

(assert (=> b!275845 m!291365))

(assert (=> b!275845 m!291365))

(declare-fun m!291367 () Bool)

(assert (=> b!275845 m!291367))

(declare-fun m!291369 () Bool)

(assert (=> b!275849 m!291369))

(declare-fun m!291371 () Bool)

(assert (=> b!275851 m!291371))

(declare-fun m!291373 () Bool)

(assert (=> b!275846 m!291373))

(declare-fun m!291375 () Bool)

(assert (=> b!275846 m!291375))

(declare-fun m!291377 () Bool)

(assert (=> b!275846 m!291377))

(push 1)

(assert (not b!275850))

(assert (not b!275847))

(assert (not start!26582))

(assert (not b!275851))

(assert (not b!275849))

(assert (not b!275845))

(assert (not b!275852))

(assert (not b!275846))

(check-sat)

(pop 1)

(push 1)

(check-sat)

