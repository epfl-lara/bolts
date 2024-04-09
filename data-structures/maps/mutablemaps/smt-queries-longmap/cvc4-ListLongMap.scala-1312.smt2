; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26444 () Bool)

(assert start!26444)

(declare-fun b!274242 () Bool)

(declare-fun res!138278 () Bool)

(declare-fun e!175621 () Bool)

(assert (=> b!274242 (=> (not res!138278) (not e!175621))))

(declare-datatypes ((array!13530 0))(
  ( (array!13531 (arr!6414 (Array (_ BitVec 32) (_ BitVec 64))) (size!6766 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13530)

(declare-datatypes ((List!4243 0))(
  ( (Nil!4240) (Cons!4239 (h!4906 (_ BitVec 64)) (t!9333 List!4243)) )
))
(declare-fun arrayNoDuplicates!0 (array!13530 (_ BitVec 32) List!4243) Bool)

(assert (=> b!274242 (= res!138278 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4240))))

(declare-fun b!274243 () Bool)

(declare-fun res!138277 () Bool)

(assert (=> b!274243 (=> (not res!138277) (not e!175621))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274243 (= res!138277 (validKeyInArray!0 k!2581))))

(declare-fun b!274244 () Bool)

(declare-fun e!175617 () Bool)

(assert (=> b!274244 (= e!175617 true)))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun lt!136882 () array!13530)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13530 (_ BitVec 32)) Bool)

(assert (=> b!274244 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!136882 mask!3868)))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((Unit!8632 0))(
  ( (Unit!8633) )
))
(declare-fun lt!136878 () Unit!8632)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13530 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8632)

(assert (=> b!274244 (= lt!136878 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!274245 () Bool)

(declare-fun res!138270 () Bool)

(assert (=> b!274245 (=> (not res!138270) (not e!175621))))

(assert (=> b!274245 (= res!138270 (and (= (size!6766 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6766 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6766 a!3325))))))

(declare-fun b!274246 () Bool)

(declare-fun res!138275 () Bool)

(declare-fun e!175619 () Bool)

(assert (=> b!274246 (=> (not res!138275) (not e!175619))))

(assert (=> b!274246 (= res!138275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274247 () Bool)

(declare-fun e!175618 () Bool)

(assert (=> b!274247 (= e!175618 (not e!175617))))

(declare-fun res!138279 () Bool)

(assert (=> b!274247 (=> res!138279 e!175617)))

(assert (=> b!274247 (= res!138279 (or (bvsge startIndex!26 (bvsub (size!6766 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(assert (=> b!274247 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-fun lt!136879 () Unit!8632)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13530 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8632)

(assert (=> b!274247 (= lt!136879 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1583 0))(
  ( (MissingZero!1583 (index!8502 (_ BitVec 32))) (Found!1583 (index!8503 (_ BitVec 32))) (Intermediate!1583 (undefined!2395 Bool) (index!8504 (_ BitVec 32)) (x!26764 (_ BitVec 32))) (Undefined!1583) (MissingVacant!1583 (index!8505 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13530 (_ BitVec 32)) SeekEntryResult!1583)

(assert (=> b!274247 (= (seekEntryOrOpen!0 (select (arr!6414 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6414 a!3325) i!1267 k!2581) startIndex!26) lt!136882 mask!3868))))

(declare-fun lt!136883 () Unit!8632)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13530 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8632)

(assert (=> b!274247 (= lt!136883 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!274247 (arrayNoDuplicates!0 lt!136882 #b00000000000000000000000000000000 Nil!4240)))

(declare-fun lt!136880 () Unit!8632)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13530 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4243) Unit!8632)

(assert (=> b!274247 (= lt!136880 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4240))))

(declare-fun b!274248 () Bool)

(declare-fun res!138276 () Bool)

(assert (=> b!274248 (=> (not res!138276) (not e!175618))))

(assert (=> b!274248 (= res!138276 (validKeyInArray!0 (select (arr!6414 a!3325) startIndex!26)))))

(declare-fun b!274249 () Bool)

(assert (=> b!274249 (= e!175619 e!175618)))

(declare-fun res!138271 () Bool)

(assert (=> b!274249 (=> (not res!138271) (not e!175618))))

(assert (=> b!274249 (= res!138271 (not (= startIndex!26 i!1267)))))

(assert (=> b!274249 (= lt!136882 (array!13531 (store (arr!6414 a!3325) i!1267 k!2581) (size!6766 a!3325)))))

(declare-fun b!274250 () Bool)

(declare-fun res!138274 () Bool)

(assert (=> b!274250 (=> (not res!138274) (not e!175621))))

(declare-fun arrayContainsKey!0 (array!13530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274250 (= res!138274 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!138272 () Bool)

(assert (=> start!26444 (=> (not res!138272) (not e!175621))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26444 (= res!138272 (validMask!0 mask!3868))))

(assert (=> start!26444 e!175621))

(declare-fun array_inv!4368 (array!13530) Bool)

(assert (=> start!26444 (array_inv!4368 a!3325)))

(assert (=> start!26444 true))

(declare-fun b!274251 () Bool)

(assert (=> b!274251 (= e!175621 e!175619)))

(declare-fun res!138273 () Bool)

(assert (=> b!274251 (=> (not res!138273) (not e!175619))))

(declare-fun lt!136881 () SeekEntryResult!1583)

(assert (=> b!274251 (= res!138273 (or (= lt!136881 (MissingZero!1583 i!1267)) (= lt!136881 (MissingVacant!1583 i!1267))))))

(assert (=> b!274251 (= lt!136881 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26444 res!138272) b!274245))

(assert (= (and b!274245 res!138270) b!274243))

(assert (= (and b!274243 res!138277) b!274242))

(assert (= (and b!274242 res!138278) b!274250))

(assert (= (and b!274250 res!138274) b!274251))

(assert (= (and b!274251 res!138273) b!274246))

(assert (= (and b!274246 res!138275) b!274249))

(assert (= (and b!274249 res!138271) b!274248))

(assert (= (and b!274248 res!138276) b!274247))

(assert (= (and b!274247 (not res!138279)) b!274244))

(declare-fun m!289755 () Bool)

(assert (=> b!274244 m!289755))

(declare-fun m!289757 () Bool)

(assert (=> b!274244 m!289757))

(declare-fun m!289759 () Bool)

(assert (=> b!274246 m!289759))

(declare-fun m!289761 () Bool)

(assert (=> b!274248 m!289761))

(assert (=> b!274248 m!289761))

(declare-fun m!289763 () Bool)

(assert (=> b!274248 m!289763))

(declare-fun m!289765 () Bool)

(assert (=> b!274250 m!289765))

(declare-fun m!289767 () Bool)

(assert (=> b!274251 m!289767))

(declare-fun m!289769 () Bool)

(assert (=> b!274247 m!289769))

(declare-fun m!289771 () Bool)

(assert (=> b!274247 m!289771))

(declare-fun m!289773 () Bool)

(assert (=> b!274247 m!289773))

(assert (=> b!274247 m!289771))

(declare-fun m!289775 () Bool)

(assert (=> b!274247 m!289775))

(assert (=> b!274247 m!289761))

(declare-fun m!289777 () Bool)

(assert (=> b!274247 m!289777))

(declare-fun m!289779 () Bool)

(assert (=> b!274247 m!289779))

(assert (=> b!274247 m!289761))

(declare-fun m!289781 () Bool)

(assert (=> b!274247 m!289781))

(declare-fun m!289783 () Bool)

(assert (=> b!274247 m!289783))

(declare-fun m!289785 () Bool)

(assert (=> b!274247 m!289785))

(assert (=> b!274249 m!289783))

(declare-fun m!289787 () Bool)

(assert (=> b!274242 m!289787))

(declare-fun m!289789 () Bool)

(assert (=> b!274243 m!289789))

(declare-fun m!289791 () Bool)

(assert (=> start!26444 m!289791))

(declare-fun m!289793 () Bool)

(assert (=> start!26444 m!289793))

(push 1)

