; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26266 () Bool)

(assert start!26266)

(declare-fun b!271831 () Bool)

(declare-fun res!135866 () Bool)

(declare-fun e!174648 () Bool)

(assert (=> b!271831 (=> (not res!135866) (not e!174648))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271831 (= res!135866 (validKeyInArray!0 k!2581))))

(declare-fun b!271832 () Bool)

(declare-fun res!135859 () Bool)

(assert (=> b!271832 (=> (not res!135859) (not e!174648))))

(declare-datatypes ((array!13352 0))(
  ( (array!13353 (arr!6325 (Array (_ BitVec 32) (_ BitVec 64))) (size!6677 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13352)

(declare-fun arrayContainsKey!0 (array!13352 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271832 (= res!135859 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271833 () Bool)

(declare-fun e!174647 () Bool)

(assert (=> b!271833 (= e!174647 (not true))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((List!4154 0))(
  ( (Nil!4151) (Cons!4150 (h!4817 (_ BitVec 64)) (t!9244 List!4154)) )
))
(declare-fun arrayNoDuplicates!0 (array!13352 (_ BitVec 32) List!4154) Bool)

(assert (=> b!271833 (arrayNoDuplicates!0 (array!13353 (store (arr!6325 a!3325) i!1267 k!2581) (size!6677 a!3325)) #b00000000000000000000000000000000 Nil!4151)))

(declare-datatypes ((Unit!8454 0))(
  ( (Unit!8455) )
))
(declare-fun lt!135898 () Unit!8454)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13352 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4154) Unit!8454)

(assert (=> b!271833 (= lt!135898 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4151))))

(declare-fun b!271834 () Bool)

(declare-fun res!135861 () Bool)

(assert (=> b!271834 (=> (not res!135861) (not e!174647))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13352 (_ BitVec 32)) Bool)

(assert (=> b!271834 (= res!135861 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!135867 () Bool)

(assert (=> start!26266 (=> (not res!135867) (not e!174648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26266 (= res!135867 (validMask!0 mask!3868))))

(assert (=> start!26266 e!174648))

(declare-fun array_inv!4279 (array!13352) Bool)

(assert (=> start!26266 (array_inv!4279 a!3325)))

(assert (=> start!26266 true))

(declare-fun b!271835 () Bool)

(declare-fun res!135864 () Bool)

(assert (=> b!271835 (=> (not res!135864) (not e!174647))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!271835 (= res!135864 (validKeyInArray!0 (select (arr!6325 a!3325) startIndex!26)))))

(declare-fun b!271836 () Bool)

(declare-fun res!135865 () Bool)

(assert (=> b!271836 (=> (not res!135865) (not e!174648))))

(assert (=> b!271836 (= res!135865 (and (= (size!6677 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6677 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6677 a!3325))))))

(declare-fun b!271837 () Bool)

(declare-fun res!135862 () Bool)

(assert (=> b!271837 (=> (not res!135862) (not e!174648))))

(assert (=> b!271837 (= res!135862 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4151))))

(declare-fun b!271838 () Bool)

(declare-fun res!135863 () Bool)

(assert (=> b!271838 (=> (not res!135863) (not e!174647))))

(assert (=> b!271838 (= res!135863 (not (= startIndex!26 i!1267)))))

(declare-fun b!271839 () Bool)

(assert (=> b!271839 (= e!174648 e!174647)))

(declare-fun res!135860 () Bool)

(assert (=> b!271839 (=> (not res!135860) (not e!174647))))

(declare-datatypes ((SeekEntryResult!1494 0))(
  ( (MissingZero!1494 (index!8146 (_ BitVec 32))) (Found!1494 (index!8147 (_ BitVec 32))) (Intermediate!1494 (undefined!2306 Bool) (index!8148 (_ BitVec 32)) (x!26443 (_ BitVec 32))) (Undefined!1494) (MissingVacant!1494 (index!8149 (_ BitVec 32))) )
))
(declare-fun lt!135899 () SeekEntryResult!1494)

(assert (=> b!271839 (= res!135860 (or (= lt!135899 (MissingZero!1494 i!1267)) (= lt!135899 (MissingVacant!1494 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13352 (_ BitVec 32)) SeekEntryResult!1494)

(assert (=> b!271839 (= lt!135899 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26266 res!135867) b!271836))

(assert (= (and b!271836 res!135865) b!271831))

(assert (= (and b!271831 res!135866) b!271837))

(assert (= (and b!271837 res!135862) b!271832))

(assert (= (and b!271832 res!135859) b!271839))

(assert (= (and b!271839 res!135860) b!271834))

(assert (= (and b!271834 res!135861) b!271838))

(assert (= (and b!271838 res!135863) b!271835))

(assert (= (and b!271835 res!135864) b!271833))

(declare-fun m!287035 () Bool)

(assert (=> b!271834 m!287035))

(declare-fun m!287037 () Bool)

(assert (=> b!271831 m!287037))

(declare-fun m!287039 () Bool)

(assert (=> b!271837 m!287039))

(declare-fun m!287041 () Bool)

(assert (=> start!26266 m!287041))

(declare-fun m!287043 () Bool)

(assert (=> start!26266 m!287043))

(declare-fun m!287045 () Bool)

(assert (=> b!271839 m!287045))

(declare-fun m!287047 () Bool)

(assert (=> b!271835 m!287047))

(assert (=> b!271835 m!287047))

(declare-fun m!287049 () Bool)

(assert (=> b!271835 m!287049))

(declare-fun m!287051 () Bool)

(assert (=> b!271832 m!287051))

(declare-fun m!287053 () Bool)

(assert (=> b!271833 m!287053))

(declare-fun m!287055 () Bool)

(assert (=> b!271833 m!287055))

(declare-fun m!287057 () Bool)

(assert (=> b!271833 m!287057))

(push 1)

