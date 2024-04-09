; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26342 () Bool)

(assert start!26342)

(declare-fun b!272857 () Bool)

(declare-fun e!174999 () Bool)

(assert (=> b!272857 (= e!174999 (not true))))

(declare-datatypes ((array!13428 0))(
  ( (array!13429 (arr!6363 (Array (_ BitVec 32) (_ BitVec 64))) (size!6715 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13428)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!136143 () array!13428)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1532 0))(
  ( (MissingZero!1532 (index!8298 (_ BitVec 32))) (Found!1532 (index!8299 (_ BitVec 32))) (Intermediate!1532 (undefined!2344 Bool) (index!8300 (_ BitVec 32)) (x!26577 (_ BitVec 32))) (Undefined!1532) (MissingVacant!1532 (index!8301 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13428 (_ BitVec 32)) SeekEntryResult!1532)

(assert (=> b!272857 (= (seekEntryOrOpen!0 (select (arr!6363 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6363 a!3325) i!1267 k!2581) startIndex!26) lt!136143 mask!3868))))

(declare-datatypes ((Unit!8530 0))(
  ( (Unit!8531) )
))
(declare-fun lt!136145 () Unit!8530)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13428 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8530)

(assert (=> b!272857 (= lt!136145 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4192 0))(
  ( (Nil!4189) (Cons!4188 (h!4855 (_ BitVec 64)) (t!9282 List!4192)) )
))
(declare-fun arrayNoDuplicates!0 (array!13428 (_ BitVec 32) List!4192) Bool)

(assert (=> b!272857 (arrayNoDuplicates!0 lt!136143 #b00000000000000000000000000000000 Nil!4189)))

(declare-fun lt!136144 () Unit!8530)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13428 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4192) Unit!8530)

(assert (=> b!272857 (= lt!136144 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4189))))

(declare-fun b!272858 () Bool)

(declare-fun res!136891 () Bool)

(declare-fun e!174997 () Bool)

(assert (=> b!272858 (=> (not res!136891) (not e!174997))))

(assert (=> b!272858 (= res!136891 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4189))))

(declare-fun b!272859 () Bool)

(declare-fun res!136887 () Bool)

(assert (=> b!272859 (=> (not res!136887) (not e!174999))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272859 (= res!136887 (validKeyInArray!0 (select (arr!6363 a!3325) startIndex!26)))))

(declare-fun b!272860 () Bool)

(declare-fun res!136885 () Bool)

(assert (=> b!272860 (=> (not res!136885) (not e!174997))))

(assert (=> b!272860 (= res!136885 (validKeyInArray!0 k!2581))))

(declare-fun b!272861 () Bool)

(declare-fun res!136888 () Bool)

(declare-fun e!174998 () Bool)

(assert (=> b!272861 (=> (not res!136888) (not e!174998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13428 (_ BitVec 32)) Bool)

(assert (=> b!272861 (= res!136888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272862 () Bool)

(assert (=> b!272862 (= e!174998 e!174999)))

(declare-fun res!136892 () Bool)

(assert (=> b!272862 (=> (not res!136892) (not e!174999))))

(assert (=> b!272862 (= res!136892 (not (= startIndex!26 i!1267)))))

(assert (=> b!272862 (= lt!136143 (array!13429 (store (arr!6363 a!3325) i!1267 k!2581) (size!6715 a!3325)))))

(declare-fun b!272863 () Bool)

(assert (=> b!272863 (= e!174997 e!174998)))

(declare-fun res!136890 () Bool)

(assert (=> b!272863 (=> (not res!136890) (not e!174998))))

(declare-fun lt!136142 () SeekEntryResult!1532)

(assert (=> b!272863 (= res!136890 (or (= lt!136142 (MissingZero!1532 i!1267)) (= lt!136142 (MissingVacant!1532 i!1267))))))

(assert (=> b!272863 (= lt!136142 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272864 () Bool)

(declare-fun res!136886 () Bool)

(assert (=> b!272864 (=> (not res!136886) (not e!174997))))

(assert (=> b!272864 (= res!136886 (and (= (size!6715 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6715 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6715 a!3325))))))

(declare-fun b!272865 () Bool)

(declare-fun res!136893 () Bool)

(assert (=> b!272865 (=> (not res!136893) (not e!174997))))

(declare-fun arrayContainsKey!0 (array!13428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272865 (= res!136893 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!136889 () Bool)

(assert (=> start!26342 (=> (not res!136889) (not e!174997))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26342 (= res!136889 (validMask!0 mask!3868))))

(assert (=> start!26342 e!174997))

(declare-fun array_inv!4317 (array!13428) Bool)

(assert (=> start!26342 (array_inv!4317 a!3325)))

(assert (=> start!26342 true))

(assert (= (and start!26342 res!136889) b!272864))

(assert (= (and b!272864 res!136886) b!272860))

(assert (= (and b!272860 res!136885) b!272858))

(assert (= (and b!272858 res!136891) b!272865))

(assert (= (and b!272865 res!136893) b!272863))

(assert (= (and b!272863 res!136890) b!272861))

(assert (= (and b!272861 res!136888) b!272862))

(assert (= (and b!272862 res!136892) b!272859))

(assert (= (and b!272859 res!136887) b!272857))

(declare-fun m!287963 () Bool)

(assert (=> b!272859 m!287963))

(assert (=> b!272859 m!287963))

(declare-fun m!287965 () Bool)

(assert (=> b!272859 m!287965))

(declare-fun m!287967 () Bool)

(assert (=> b!272862 m!287967))

(declare-fun m!287969 () Bool)

(assert (=> b!272858 m!287969))

(declare-fun m!287971 () Bool)

(assert (=> b!272863 m!287971))

(declare-fun m!287973 () Bool)

(assert (=> b!272860 m!287973))

(declare-fun m!287975 () Bool)

(assert (=> b!272857 m!287975))

(assert (=> b!272857 m!287967))

(assert (=> b!272857 m!287963))

(declare-fun m!287977 () Bool)

(assert (=> b!272857 m!287977))

(declare-fun m!287979 () Bool)

(assert (=> b!272857 m!287979))

(assert (=> b!272857 m!287963))

(declare-fun m!287981 () Bool)

(assert (=> b!272857 m!287981))

(declare-fun m!287983 () Bool)

(assert (=> b!272857 m!287983))

(assert (=> b!272857 m!287983))

(declare-fun m!287985 () Bool)

(assert (=> b!272857 m!287985))

(declare-fun m!287987 () Bool)

(assert (=> start!26342 m!287987))

(declare-fun m!287989 () Bool)

(assert (=> start!26342 m!287989))

(declare-fun m!287991 () Bool)

(assert (=> b!272861 m!287991))

(declare-fun m!287993 () Bool)

(assert (=> b!272865 m!287993))

(push 1)

