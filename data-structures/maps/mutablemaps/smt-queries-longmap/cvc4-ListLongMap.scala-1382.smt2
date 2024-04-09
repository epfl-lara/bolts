; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27158 () Bool)

(assert start!27158)

(declare-fun b!280780 () Bool)

(declare-fun res!143892 () Bool)

(declare-fun e!178650 () Bool)

(assert (=> b!280780 (=> (not res!143892) (not e!178650))))

(declare-datatypes ((array!13965 0))(
  ( (array!13966 (arr!6624 (Array (_ BitVec 32) (_ BitVec 64))) (size!6976 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13965)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13965 (_ BitVec 32)) Bool)

(assert (=> b!280780 (= res!143892 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280781 () Bool)

(assert (=> b!280781 (= e!178650 (not true))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4453 0))(
  ( (Nil!4450) (Cons!4449 (h!5119 (_ BitVec 64)) (t!9543 List!4453)) )
))
(declare-fun arrayNoDuplicates!0 (array!13965 (_ BitVec 32) List!4453) Bool)

(assert (=> b!280781 (arrayNoDuplicates!0 (array!13966 (store (arr!6624 a!3325) i!1267 k!2581) (size!6976 a!3325)) #b00000000000000000000000000000000 Nil!4450)))

(declare-datatypes ((Unit!8849 0))(
  ( (Unit!8850) )
))
(declare-fun lt!138934 () Unit!8849)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13965 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4453) Unit!8849)

(assert (=> b!280781 (= lt!138934 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4450))))

(declare-fun b!280782 () Bool)

(declare-fun res!143891 () Bool)

(declare-fun e!178651 () Bool)

(assert (=> b!280782 (=> (not res!143891) (not e!178651))))

(declare-fun arrayContainsKey!0 (array!13965 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280782 (= res!143891 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280783 () Bool)

(declare-fun res!143889 () Bool)

(assert (=> b!280783 (=> (not res!143889) (not e!178650))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280783 (= res!143889 (validKeyInArray!0 (select (arr!6624 a!3325) startIndex!26)))))

(declare-fun b!280784 () Bool)

(assert (=> b!280784 (= e!178651 e!178650)))

(declare-fun res!143890 () Bool)

(assert (=> b!280784 (=> (not res!143890) (not e!178650))))

(declare-datatypes ((SeekEntryResult!1793 0))(
  ( (MissingZero!1793 (index!9342 (_ BitVec 32))) (Found!1793 (index!9343 (_ BitVec 32))) (Intermediate!1793 (undefined!2605 Bool) (index!9344 (_ BitVec 32)) (x!27543 (_ BitVec 32))) (Undefined!1793) (MissingVacant!1793 (index!9345 (_ BitVec 32))) )
))
(declare-fun lt!138935 () SeekEntryResult!1793)

(assert (=> b!280784 (= res!143890 (or (= lt!138935 (MissingZero!1793 i!1267)) (= lt!138935 (MissingVacant!1793 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13965 (_ BitVec 32)) SeekEntryResult!1793)

(assert (=> b!280784 (= lt!138935 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!143894 () Bool)

(assert (=> start!27158 (=> (not res!143894) (not e!178651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27158 (= res!143894 (validMask!0 mask!3868))))

(assert (=> start!27158 e!178651))

(declare-fun array_inv!4578 (array!13965) Bool)

(assert (=> start!27158 (array_inv!4578 a!3325)))

(assert (=> start!27158 true))

(declare-fun b!280785 () Bool)

(declare-fun res!143888 () Bool)

(assert (=> b!280785 (=> (not res!143888) (not e!178651))))

(assert (=> b!280785 (= res!143888 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4450))))

(declare-fun b!280786 () Bool)

(declare-fun res!143895 () Bool)

(assert (=> b!280786 (=> (not res!143895) (not e!178651))))

(assert (=> b!280786 (= res!143895 (and (= (size!6976 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6976 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6976 a!3325))))))

(declare-fun b!280787 () Bool)

(declare-fun res!143893 () Bool)

(assert (=> b!280787 (=> (not res!143893) (not e!178651))))

(assert (=> b!280787 (= res!143893 (validKeyInArray!0 k!2581))))

(declare-fun b!280788 () Bool)

(declare-fun res!143887 () Bool)

(assert (=> b!280788 (=> (not res!143887) (not e!178650))))

(assert (=> b!280788 (= res!143887 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27158 res!143894) b!280786))

(assert (= (and b!280786 res!143895) b!280787))

(assert (= (and b!280787 res!143893) b!280785))

(assert (= (and b!280785 res!143888) b!280782))

(assert (= (and b!280782 res!143891) b!280784))

(assert (= (and b!280784 res!143890) b!280780))

(assert (= (and b!280780 res!143892) b!280788))

(assert (= (and b!280788 res!143887) b!280783))

(assert (= (and b!280783 res!143889) b!280781))

(declare-fun m!295213 () Bool)

(assert (=> b!280784 m!295213))

(declare-fun m!295215 () Bool)

(assert (=> b!280785 m!295215))

(declare-fun m!295217 () Bool)

(assert (=> b!280787 m!295217))

(declare-fun m!295219 () Bool)

(assert (=> b!280780 m!295219))

(declare-fun m!295221 () Bool)

(assert (=> b!280783 m!295221))

(assert (=> b!280783 m!295221))

(declare-fun m!295223 () Bool)

(assert (=> b!280783 m!295223))

(declare-fun m!295225 () Bool)

(assert (=> b!280782 m!295225))

(declare-fun m!295227 () Bool)

(assert (=> start!27158 m!295227))

(declare-fun m!295229 () Bool)

(assert (=> start!27158 m!295229))

(declare-fun m!295231 () Bool)

(assert (=> b!280781 m!295231))

(declare-fun m!295233 () Bool)

(assert (=> b!280781 m!295233))

(declare-fun m!295235 () Bool)

(assert (=> b!280781 m!295235))

(push 1)

