; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26684 () Bool)

(assert start!26684)

(declare-fun b!276811 () Bool)

(declare-fun res!140839 () Bool)

(declare-fun e!176790 () Bool)

(assert (=> b!276811 (=> (not res!140839) (not e!176790))))

(declare-datatypes ((array!13770 0))(
  ( (array!13771 (arr!6534 (Array (_ BitVec 32) (_ BitVec 64))) (size!6886 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13770)

(declare-datatypes ((List!4363 0))(
  ( (Nil!4360) (Cons!4359 (h!5026 (_ BitVec 64)) (t!9453 List!4363)) )
))
(declare-fun arrayNoDuplicates!0 (array!13770 (_ BitVec 32) List!4363) Bool)

(assert (=> b!276811 (= res!140839 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4360))))

(declare-fun res!140843 () Bool)

(assert (=> start!26684 (=> (not res!140843) (not e!176790))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26684 (= res!140843 (validMask!0 mask!3868))))

(assert (=> start!26684 e!176790))

(declare-fun array_inv!4488 (array!13770) Bool)

(assert (=> start!26684 (array_inv!4488 a!3325)))

(assert (=> start!26684 true))

(declare-fun b!276812 () Bool)

(declare-fun res!140844 () Bool)

(assert (=> b!276812 (=> (not res!140844) (not e!176790))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276812 (= res!140844 (validKeyInArray!0 k!2581))))

(declare-fun b!276813 () Bool)

(declare-fun res!140841 () Bool)

(assert (=> b!276813 (=> (not res!140841) (not e!176790))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276813 (= res!140841 (and (= (size!6886 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6886 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6886 a!3325))))))

(declare-fun b!276814 () Bool)

(declare-fun e!176789 () Bool)

(assert (=> b!276814 (= e!176790 e!176789)))

(declare-fun res!140840 () Bool)

(assert (=> b!276814 (=> (not res!140840) (not e!176789))))

(declare-datatypes ((SeekEntryResult!1703 0))(
  ( (MissingZero!1703 (index!8982 (_ BitVec 32))) (Found!1703 (index!8983 (_ BitVec 32))) (Intermediate!1703 (undefined!2515 Bool) (index!8984 (_ BitVec 32)) (x!27204 (_ BitVec 32))) (Undefined!1703) (MissingVacant!1703 (index!8985 (_ BitVec 32))) )
))
(declare-fun lt!137791 () SeekEntryResult!1703)

(assert (=> b!276814 (= res!140840 (or (= lt!137791 (MissingZero!1703 i!1267)) (= lt!137791 (MissingVacant!1703 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13770 (_ BitVec 32)) SeekEntryResult!1703)

(assert (=> b!276814 (= lt!137791 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276815 () Bool)

(declare-fun res!140842 () Bool)

(assert (=> b!276815 (=> (not res!140842) (not e!176790))))

(declare-fun arrayContainsKey!0 (array!13770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276815 (= res!140842 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276816 () Bool)

(assert (=> b!276816 (= e!176789 false)))

(declare-fun lt!137792 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13770 (_ BitVec 32)) Bool)

(assert (=> b!276816 (= lt!137792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26684 res!140843) b!276813))

(assert (= (and b!276813 res!140841) b!276812))

(assert (= (and b!276812 res!140844) b!276811))

(assert (= (and b!276811 res!140839) b!276815))

(assert (= (and b!276815 res!140842) b!276814))

(assert (= (and b!276814 res!140840) b!276816))

(declare-fun m!292091 () Bool)

(assert (=> b!276811 m!292091))

(declare-fun m!292093 () Bool)

(assert (=> start!26684 m!292093))

(declare-fun m!292095 () Bool)

(assert (=> start!26684 m!292095))

(declare-fun m!292097 () Bool)

(assert (=> b!276812 m!292097))

(declare-fun m!292099 () Bool)

(assert (=> b!276815 m!292099))

(declare-fun m!292101 () Bool)

(assert (=> b!276816 m!292101))

(declare-fun m!292103 () Bool)

(assert (=> b!276814 m!292103))

(push 1)

(assert (not start!26684))

(assert (not b!276815))

(assert (not b!276812))

(assert (not b!276811))

(assert (not b!276816))

(assert (not b!276814))

