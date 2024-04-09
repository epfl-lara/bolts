; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26586 () Bool)

(assert start!26586)

(declare-fun res!139916 () Bool)

(declare-fun e!176350 () Bool)

(assert (=> start!26586 (=> (not res!139916) (not e!176350))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26586 (= res!139916 (validMask!0 mask!3868))))

(assert (=> start!26586 e!176350))

(declare-datatypes ((array!13672 0))(
  ( (array!13673 (arr!6485 (Array (_ BitVec 32) (_ BitVec 64))) (size!6837 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13672)

(declare-fun array_inv!4439 (array!13672) Bool)

(assert (=> start!26586 (array_inv!4439 a!3325)))

(assert (=> start!26586 true))

(declare-fun b!275884 () Bool)

(declare-fun res!139913 () Bool)

(assert (=> b!275884 (=> (not res!139913) (not e!176350))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275884 (= res!139913 (and (= (size!6837 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6837 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6837 a!3325))))))

(declare-fun b!275885 () Bool)

(declare-fun e!176349 () Bool)

(assert (=> b!275885 (= e!176350 e!176349)))

(declare-fun res!139917 () Bool)

(assert (=> b!275885 (=> (not res!139917) (not e!176349))))

(declare-datatypes ((SeekEntryResult!1654 0))(
  ( (MissingZero!1654 (index!8786 (_ BitVec 32))) (Found!1654 (index!8787 (_ BitVec 32))) (Intermediate!1654 (undefined!2466 Bool) (index!8788 (_ BitVec 32)) (x!27027 (_ BitVec 32))) (Undefined!1654) (MissingVacant!1654 (index!8789 (_ BitVec 32))) )
))
(declare-fun lt!137525 () SeekEntryResult!1654)

(assert (=> b!275885 (= res!139917 (or (= lt!137525 (MissingZero!1654 i!1267)) (= lt!137525 (MissingVacant!1654 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13672 (_ BitVec 32)) SeekEntryResult!1654)

(assert (=> b!275885 (= lt!137525 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275886 () Bool)

(declare-fun res!139914 () Bool)

(assert (=> b!275886 (=> (not res!139914) (not e!176350))))

(declare-fun arrayContainsKey!0 (array!13672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275886 (= res!139914 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275887 () Bool)

(assert (=> b!275887 (= e!176349 false)))

(declare-fun lt!137524 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13672 (_ BitVec 32)) Bool)

(assert (=> b!275887 (= lt!137524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275888 () Bool)

(declare-fun res!139915 () Bool)

(assert (=> b!275888 (=> (not res!139915) (not e!176350))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275888 (= res!139915 (validKeyInArray!0 k0!2581))))

(declare-fun b!275889 () Bool)

(declare-fun res!139912 () Bool)

(assert (=> b!275889 (=> (not res!139912) (not e!176350))))

(declare-datatypes ((List!4314 0))(
  ( (Nil!4311) (Cons!4310 (h!4977 (_ BitVec 64)) (t!9404 List!4314)) )
))
(declare-fun arrayNoDuplicates!0 (array!13672 (_ BitVec 32) List!4314) Bool)

(assert (=> b!275889 (= res!139912 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4311))))

(assert (= (and start!26586 res!139916) b!275884))

(assert (= (and b!275884 res!139913) b!275888))

(assert (= (and b!275888 res!139915) b!275889))

(assert (= (and b!275889 res!139912) b!275886))

(assert (= (and b!275886 res!139914) b!275885))

(assert (= (and b!275885 res!139917) b!275887))

(declare-fun m!291393 () Bool)

(assert (=> b!275887 m!291393))

(declare-fun m!291395 () Bool)

(assert (=> b!275888 m!291395))

(declare-fun m!291397 () Bool)

(assert (=> start!26586 m!291397))

(declare-fun m!291399 () Bool)

(assert (=> start!26586 m!291399))

(declare-fun m!291401 () Bool)

(assert (=> b!275889 m!291401))

(declare-fun m!291403 () Bool)

(assert (=> b!275885 m!291403))

(declare-fun m!291405 () Bool)

(assert (=> b!275886 m!291405))

(check-sat (not b!275887) (not b!275888) (not b!275885) (not b!275886) (not start!26586) (not b!275889))
(check-sat)
