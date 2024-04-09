; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26214 () Bool)

(assert start!26214)

(declare-fun b!270861 () Bool)

(declare-fun e!174415 () Bool)

(declare-fun e!174414 () Bool)

(assert (=> b!270861 (= e!174415 e!174414)))

(declare-fun res!134894 () Bool)

(assert (=> b!270861 (=> (not res!134894) (not e!174414))))

(declare-datatypes ((SeekEntryResult!1468 0))(
  ( (MissingZero!1468 (index!8042 (_ BitVec 32))) (Found!1468 (index!8043 (_ BitVec 32))) (Intermediate!1468 (undefined!2280 Bool) (index!8044 (_ BitVec 32)) (x!26345 (_ BitVec 32))) (Undefined!1468) (MissingVacant!1468 (index!8045 (_ BitVec 32))) )
))
(declare-fun lt!135743 () SeekEntryResult!1468)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270861 (= res!134894 (or (= lt!135743 (MissingZero!1468 i!1267)) (= lt!135743 (MissingVacant!1468 i!1267))))))

(declare-datatypes ((array!13300 0))(
  ( (array!13301 (arr!6299 (Array (_ BitVec 32) (_ BitVec 64))) (size!6651 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13300)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13300 (_ BitVec 32)) SeekEntryResult!1468)

(assert (=> b!270861 (= lt!135743 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!270862 () Bool)

(declare-fun res!134892 () Bool)

(assert (=> b!270862 (=> (not res!134892) (not e!174414))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13300 (_ BitVec 32)) Bool)

(assert (=> b!270862 (= res!134892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!134897 () Bool)

(assert (=> start!26214 (=> (not res!134897) (not e!174415))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26214 (= res!134897 (validMask!0 mask!3868))))

(assert (=> start!26214 e!174415))

(declare-fun array_inv!4253 (array!13300) Bool)

(assert (=> start!26214 (array_inv!4253 a!3325)))

(assert (=> start!26214 true))

(declare-fun b!270863 () Bool)

(declare-fun res!134889 () Bool)

(assert (=> b!270863 (=> (not res!134889) (not e!174415))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270863 (= res!134889 (validKeyInArray!0 k0!2581))))

(declare-fun b!270864 () Bool)

(declare-fun res!134891 () Bool)

(assert (=> b!270864 (=> (not res!134891) (not e!174415))))

(declare-datatypes ((List!4128 0))(
  ( (Nil!4125) (Cons!4124 (h!4791 (_ BitVec 64)) (t!9218 List!4128)) )
))
(declare-fun arrayNoDuplicates!0 (array!13300 (_ BitVec 32) List!4128) Bool)

(assert (=> b!270864 (= res!134891 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4125))))

(declare-fun b!270865 () Bool)

(assert (=> b!270865 (= e!174414 false)))

(declare-fun lt!135742 () Bool)

(declare-fun contains!1937 (List!4128 (_ BitVec 64)) Bool)

(assert (=> b!270865 (= lt!135742 (contains!1937 Nil!4125 k0!2581))))

(declare-fun b!270866 () Bool)

(declare-fun res!134895 () Bool)

(assert (=> b!270866 (=> (not res!134895) (not e!174414))))

(declare-fun noDuplicate!126 (List!4128) Bool)

(assert (=> b!270866 (= res!134895 (noDuplicate!126 Nil!4125))))

(declare-fun b!270867 () Bool)

(declare-fun res!134901 () Bool)

(assert (=> b!270867 (=> (not res!134901) (not e!174414))))

(assert (=> b!270867 (= res!134901 (not (contains!1937 Nil!4125 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270868 () Bool)

(declare-fun res!134898 () Bool)

(assert (=> b!270868 (=> (not res!134898) (not e!174415))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!270868 (= res!134898 (and (= (size!6651 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6651 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6651 a!3325))))))

(declare-fun b!270869 () Bool)

(declare-fun res!134890 () Bool)

(assert (=> b!270869 (=> (not res!134890) (not e!174414))))

(assert (=> b!270869 (= res!134890 (validKeyInArray!0 (select (arr!6299 a!3325) startIndex!26)))))

(declare-fun b!270870 () Bool)

(declare-fun res!134893 () Bool)

(assert (=> b!270870 (=> (not res!134893) (not e!174414))))

(assert (=> b!270870 (= res!134893 (not (contains!1937 Nil!4125 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!270871 () Bool)

(declare-fun res!134900 () Bool)

(assert (=> b!270871 (=> (not res!134900) (not e!174414))))

(assert (=> b!270871 (= res!134900 (not (= startIndex!26 i!1267)))))

(declare-fun b!270872 () Bool)

(declare-fun res!134896 () Bool)

(assert (=> b!270872 (=> (not res!134896) (not e!174414))))

(assert (=> b!270872 (= res!134896 (and (bvslt (size!6651 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6651 a!3325))))))

(declare-fun b!270873 () Bool)

(declare-fun res!134899 () Bool)

(assert (=> b!270873 (=> (not res!134899) (not e!174415))))

(declare-fun arrayContainsKey!0 (array!13300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270873 (= res!134899 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26214 res!134897) b!270868))

(assert (= (and b!270868 res!134898) b!270863))

(assert (= (and b!270863 res!134889) b!270864))

(assert (= (and b!270864 res!134891) b!270873))

(assert (= (and b!270873 res!134899) b!270861))

(assert (= (and b!270861 res!134894) b!270862))

(assert (= (and b!270862 res!134892) b!270871))

(assert (= (and b!270871 res!134900) b!270869))

(assert (= (and b!270869 res!134890) b!270872))

(assert (= (and b!270872 res!134896) b!270866))

(assert (= (and b!270866 res!134895) b!270867))

(assert (= (and b!270867 res!134901) b!270870))

(assert (= (and b!270870 res!134893) b!270865))

(declare-fun m!286365 () Bool)

(assert (=> b!270861 m!286365))

(declare-fun m!286367 () Bool)

(assert (=> b!270869 m!286367))

(assert (=> b!270869 m!286367))

(declare-fun m!286369 () Bool)

(assert (=> b!270869 m!286369))

(declare-fun m!286371 () Bool)

(assert (=> b!270866 m!286371))

(declare-fun m!286373 () Bool)

(assert (=> start!26214 m!286373))

(declare-fun m!286375 () Bool)

(assert (=> start!26214 m!286375))

(declare-fun m!286377 () Bool)

(assert (=> b!270865 m!286377))

(declare-fun m!286379 () Bool)

(assert (=> b!270864 m!286379))

(declare-fun m!286381 () Bool)

(assert (=> b!270862 m!286381))

(declare-fun m!286383 () Bool)

(assert (=> b!270863 m!286383))

(declare-fun m!286385 () Bool)

(assert (=> b!270873 m!286385))

(declare-fun m!286387 () Bool)

(assert (=> b!270867 m!286387))

(declare-fun m!286389 () Bool)

(assert (=> b!270870 m!286389))

(check-sat (not b!270870) (not b!270867) (not b!270864) (not b!270866) (not b!270873) (not b!270863) (not b!270861) (not b!270869) (not start!26214) (not b!270862) (not b!270865))
(check-sat)
