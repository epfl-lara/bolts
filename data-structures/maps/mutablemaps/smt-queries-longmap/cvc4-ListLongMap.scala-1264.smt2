; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26156 () Bool)

(assert start!26156)

(declare-fun res!134036 () Bool)

(declare-fun e!174045 () Bool)

(assert (=> start!26156 (=> (not res!134036) (not e!174045))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26156 (= res!134036 (validMask!0 mask!3868))))

(assert (=> start!26156 e!174045))

(declare-datatypes ((array!13242 0))(
  ( (array!13243 (arr!6270 (Array (_ BitVec 32) (_ BitVec 64))) (size!6622 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13242)

(declare-fun array_inv!4224 (array!13242) Bool)

(assert (=> start!26156 (array_inv!4224 a!3325)))

(assert (=> start!26156 true))

(declare-fun b!269895 () Bool)

(declare-fun e!174046 () Bool)

(declare-fun e!174044 () Bool)

(assert (=> b!269895 (= e!174046 e!174044)))

(declare-fun res!134037 () Bool)

(assert (=> b!269895 (=> (not res!134037) (not e!174044))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!269895 (= res!134037 (= startIndex!26 i!1267))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!135403 () array!13242)

(assert (=> b!269895 (= lt!135403 (array!13243 (store (arr!6270 a!3325) i!1267 k!2581) (size!6622 a!3325)))))

(declare-fun b!269896 () Bool)

(declare-datatypes ((Unit!8391 0))(
  ( (Unit!8392) )
))
(declare-fun e!174042 () Unit!8391)

(declare-fun Unit!8393 () Unit!8391)

(assert (=> b!269896 (= e!174042 Unit!8393)))

(declare-fun b!269897 () Bool)

(declare-fun lt!135406 () Unit!8391)

(assert (=> b!269897 (= e!174042 lt!135406)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13242 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8391)

(assert (=> b!269897 (= lt!135406 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13242 (_ BitVec 32)) Bool)

(assert (=> b!269897 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135403 mask!3868)))

(declare-fun b!269898 () Bool)

(declare-fun res!134038 () Bool)

(assert (=> b!269898 (=> (not res!134038) (not e!174045))))

(declare-datatypes ((List!4099 0))(
  ( (Nil!4096) (Cons!4095 (h!4762 (_ BitVec 64)) (t!9189 List!4099)) )
))
(declare-fun arrayNoDuplicates!0 (array!13242 (_ BitVec 32) List!4099) Bool)

(assert (=> b!269898 (= res!134038 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4096))))

(declare-fun b!269899 () Bool)

(declare-fun res!134040 () Bool)

(assert (=> b!269899 (=> (not res!134040) (not e!174046))))

(assert (=> b!269899 (= res!134040 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269900 () Bool)

(assert (=> b!269900 (= e!174045 e!174046)))

(declare-fun res!134034 () Bool)

(assert (=> b!269900 (=> (not res!134034) (not e!174046))))

(declare-datatypes ((SeekEntryResult!1439 0))(
  ( (MissingZero!1439 (index!7926 (_ BitVec 32))) (Found!1439 (index!7927 (_ BitVec 32))) (Intermediate!1439 (undefined!2251 Bool) (index!7928 (_ BitVec 32)) (x!26236 (_ BitVec 32))) (Undefined!1439) (MissingVacant!1439 (index!7929 (_ BitVec 32))) )
))
(declare-fun lt!135404 () SeekEntryResult!1439)

(assert (=> b!269900 (= res!134034 (or (= lt!135404 (MissingZero!1439 i!1267)) (= lt!135404 (MissingVacant!1439 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13242 (_ BitVec 32)) SeekEntryResult!1439)

(assert (=> b!269900 (= lt!135404 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!269901 () Bool)

(declare-fun res!134035 () Bool)

(assert (=> b!269901 (=> (not res!134035) (not e!174045))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269901 (= res!134035 (validKeyInArray!0 k!2581))))

(declare-fun b!269902 () Bool)

(declare-fun res!134033 () Bool)

(assert (=> b!269902 (=> (not res!134033) (not e!174045))))

(declare-fun arrayContainsKey!0 (array!13242 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269902 (= res!134033 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269903 () Bool)

(declare-fun res!134039 () Bool)

(assert (=> b!269903 (=> (not res!134039) (not e!174045))))

(assert (=> b!269903 (= res!134039 (and (= (size!6622 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6622 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6622 a!3325))))))

(declare-fun b!269904 () Bool)

(assert (=> b!269904 (= e!174044 (not (bvsge mask!3868 #b00000000000000000000000000000000)))))

(assert (=> b!269904 (= (seekEntryOrOpen!0 k!2581 lt!135403 mask!3868) (Found!1439 i!1267))))

(declare-fun lt!135405 () Unit!8391)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13242 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8391)

(assert (=> b!269904 (= lt!135405 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135407 () Unit!8391)

(assert (=> b!269904 (= lt!135407 e!174042)))

(declare-fun c!45482 () Bool)

(assert (=> b!269904 (= c!45482 (bvslt startIndex!26 (bvsub (size!6622 a!3325) #b00000000000000000000000000000001)))))

(assert (= (and start!26156 res!134036) b!269903))

(assert (= (and b!269903 res!134039) b!269901))

(assert (= (and b!269901 res!134035) b!269898))

(assert (= (and b!269898 res!134038) b!269902))

(assert (= (and b!269902 res!134033) b!269900))

(assert (= (and b!269900 res!134034) b!269899))

(assert (= (and b!269899 res!134040) b!269895))

(assert (= (and b!269895 res!134037) b!269904))

(assert (= (and b!269904 c!45482) b!269897))

(assert (= (and b!269904 (not c!45482)) b!269896))

(declare-fun m!285649 () Bool)

(assert (=> b!269897 m!285649))

(declare-fun m!285651 () Bool)

(assert (=> b!269897 m!285651))

(declare-fun m!285653 () Bool)

(assert (=> b!269900 m!285653))

(declare-fun m!285655 () Bool)

(assert (=> b!269898 m!285655))

(declare-fun m!285657 () Bool)

(assert (=> b!269901 m!285657))

(declare-fun m!285659 () Bool)

(assert (=> b!269902 m!285659))

(declare-fun m!285661 () Bool)

(assert (=> b!269895 m!285661))

(declare-fun m!285663 () Bool)

(assert (=> b!269899 m!285663))

(declare-fun m!285665 () Bool)

(assert (=> start!26156 m!285665))

(declare-fun m!285667 () Bool)

(assert (=> start!26156 m!285667))

(declare-fun m!285669 () Bool)

(assert (=> b!269904 m!285669))

(declare-fun m!285671 () Bool)

(assert (=> b!269904 m!285671))

(push 1)

(assert (not b!269902))

(assert (not b!269897))

(assert (not start!26156))

(assert (not b!269901))

