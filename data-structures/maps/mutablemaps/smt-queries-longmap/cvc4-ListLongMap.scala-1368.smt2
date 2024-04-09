; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26918 () Bool)

(assert start!26918)

(declare-fun b!278830 () Bool)

(declare-fun res!142208 () Bool)

(declare-fun e!177830 () Bool)

(assert (=> b!278830 (=> (not res!142208) (not e!177830))))

(declare-datatypes ((array!13872 0))(
  ( (array!13873 (arr!6582 (Array (_ BitVec 32) (_ BitVec 64))) (size!6934 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13872)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13872 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278830 (= res!142208 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!278831 () Bool)

(declare-fun res!142209 () Bool)

(assert (=> b!278831 (=> (not res!142209) (not e!177830))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278831 (= res!142209 (validKeyInArray!0 k!2581))))

(declare-fun b!278832 () Bool)

(declare-fun res!142207 () Bool)

(assert (=> b!278832 (=> (not res!142207) (not e!177830))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!278832 (= res!142207 (and (= (size!6934 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6934 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6934 a!3325))))))

(declare-fun b!278833 () Bool)

(declare-fun e!177832 () Bool)

(assert (=> b!278833 (= e!177832 false)))

(declare-fun lt!138530 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13872 (_ BitVec 32)) Bool)

(assert (=> b!278833 (= lt!138530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278834 () Bool)

(declare-fun res!142211 () Bool)

(assert (=> b!278834 (=> (not res!142211) (not e!177830))))

(declare-datatypes ((List!4411 0))(
  ( (Nil!4408) (Cons!4407 (h!5077 (_ BitVec 64)) (t!9501 List!4411)) )
))
(declare-fun arrayNoDuplicates!0 (array!13872 (_ BitVec 32) List!4411) Bool)

(assert (=> b!278834 (= res!142211 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4408))))

(declare-fun res!142210 () Bool)

(assert (=> start!26918 (=> (not res!142210) (not e!177830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26918 (= res!142210 (validMask!0 mask!3868))))

(assert (=> start!26918 e!177830))

(declare-fun array_inv!4536 (array!13872) Bool)

(assert (=> start!26918 (array_inv!4536 a!3325)))

(assert (=> start!26918 true))

(declare-fun b!278835 () Bool)

(assert (=> b!278835 (= e!177830 e!177832)))

(declare-fun res!142212 () Bool)

(assert (=> b!278835 (=> (not res!142212) (not e!177832))))

(declare-datatypes ((SeekEntryResult!1751 0))(
  ( (MissingZero!1751 (index!9174 (_ BitVec 32))) (Found!1751 (index!9175 (_ BitVec 32))) (Intermediate!1751 (undefined!2563 Bool) (index!9176 (_ BitVec 32)) (x!27389 (_ BitVec 32))) (Undefined!1751) (MissingVacant!1751 (index!9177 (_ BitVec 32))) )
))
(declare-fun lt!138529 () SeekEntryResult!1751)

(assert (=> b!278835 (= res!142212 (or (= lt!138529 (MissingZero!1751 i!1267)) (= lt!138529 (MissingVacant!1751 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13872 (_ BitVec 32)) SeekEntryResult!1751)

(assert (=> b!278835 (= lt!138529 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26918 res!142210) b!278832))

(assert (= (and b!278832 res!142207) b!278831))

(assert (= (and b!278831 res!142209) b!278834))

(assert (= (and b!278834 res!142211) b!278830))

(assert (= (and b!278830 res!142208) b!278835))

(assert (= (and b!278835 res!142212) b!278833))

(declare-fun m!293813 () Bool)

(assert (=> b!278830 m!293813))

(declare-fun m!293815 () Bool)

(assert (=> b!278835 m!293815))

(declare-fun m!293817 () Bool)

(assert (=> b!278834 m!293817))

(declare-fun m!293819 () Bool)

(assert (=> start!26918 m!293819))

(declare-fun m!293821 () Bool)

(assert (=> start!26918 m!293821))

(declare-fun m!293823 () Bool)

(assert (=> b!278831 m!293823))

(declare-fun m!293825 () Bool)

(assert (=> b!278833 m!293825))

(push 1)

(assert (not b!278830))

(assert (not b!278834))

(assert (not b!278831))

(assert (not start!26918))

(assert (not b!278833))

(assert (not b!278835))

(check-sat)

