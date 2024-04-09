; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26638 () Bool)

(assert start!26638)

(declare-fun res!140417 () Bool)

(declare-fun e!176584 () Bool)

(assert (=> start!26638 (=> (not res!140417) (not e!176584))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26638 (= res!140417 (validMask!0 mask!3868))))

(assert (=> start!26638 e!176584))

(declare-datatypes ((array!13724 0))(
  ( (array!13725 (arr!6511 (Array (_ BitVec 32) (_ BitVec 64))) (size!6863 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13724)

(declare-fun array_inv!4465 (array!13724) Bool)

(assert (=> start!26638 (array_inv!4465 a!3325)))

(assert (=> start!26638 true))

(declare-fun b!276388 () Bool)

(declare-fun res!140418 () Bool)

(assert (=> b!276388 (=> (not res!140418) (not e!176584))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276388 (= res!140418 (validKeyInArray!0 k!2581))))

(declare-fun b!276389 () Bool)

(declare-fun res!140421 () Bool)

(assert (=> b!276389 (=> (not res!140421) (not e!176584))))

(declare-fun arrayContainsKey!0 (array!13724 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276389 (= res!140421 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276390 () Bool)

(declare-fun e!176582 () Bool)

(assert (=> b!276390 (= e!176582 false)))

(declare-fun lt!137662 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13724 (_ BitVec 32)) Bool)

(assert (=> b!276390 (= lt!137662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276391 () Bool)

(assert (=> b!276391 (= e!176584 e!176582)))

(declare-fun res!140419 () Bool)

(assert (=> b!276391 (=> (not res!140419) (not e!176582))))

(declare-datatypes ((SeekEntryResult!1680 0))(
  ( (MissingZero!1680 (index!8890 (_ BitVec 32))) (Found!1680 (index!8891 (_ BitVec 32))) (Intermediate!1680 (undefined!2492 Bool) (index!8892 (_ BitVec 32)) (x!27125 (_ BitVec 32))) (Undefined!1680) (MissingVacant!1680 (index!8893 (_ BitVec 32))) )
))
(declare-fun lt!137663 () SeekEntryResult!1680)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276391 (= res!140419 (or (= lt!137663 (MissingZero!1680 i!1267)) (= lt!137663 (MissingVacant!1680 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13724 (_ BitVec 32)) SeekEntryResult!1680)

(assert (=> b!276391 (= lt!137663 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276392 () Bool)

(declare-fun res!140420 () Bool)

(assert (=> b!276392 (=> (not res!140420) (not e!176584))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276392 (= res!140420 (and (= (size!6863 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6863 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6863 a!3325))))))

(declare-fun b!276393 () Bool)

(declare-fun res!140416 () Bool)

(assert (=> b!276393 (=> (not res!140416) (not e!176584))))

(declare-datatypes ((List!4340 0))(
  ( (Nil!4337) (Cons!4336 (h!5003 (_ BitVec 64)) (t!9430 List!4340)) )
))
(declare-fun arrayNoDuplicates!0 (array!13724 (_ BitVec 32) List!4340) Bool)

(assert (=> b!276393 (= res!140416 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4337))))

(assert (= (and start!26638 res!140417) b!276392))

(assert (= (and b!276392 res!140420) b!276388))

(assert (= (and b!276388 res!140418) b!276393))

(assert (= (and b!276393 res!140416) b!276389))

(assert (= (and b!276389 res!140421) b!276391))

(assert (= (and b!276391 res!140419) b!276390))

(declare-fun m!291769 () Bool)

(assert (=> b!276388 m!291769))

(declare-fun m!291771 () Bool)

(assert (=> b!276389 m!291771))

(declare-fun m!291773 () Bool)

(assert (=> b!276391 m!291773))

(declare-fun m!291775 () Bool)

(assert (=> b!276393 m!291775))

(declare-fun m!291777 () Bool)

(assert (=> b!276390 m!291777))

(declare-fun m!291779 () Bool)

(assert (=> start!26638 m!291779))

(declare-fun m!291781 () Bool)

(assert (=> start!26638 m!291781))

(push 1)

(assert (not start!26638))

