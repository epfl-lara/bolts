; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27164 () Bool)

(assert start!27164)

(declare-fun b!280861 () Bool)

(declare-fun res!143973 () Bool)

(declare-fun e!178677 () Bool)

(assert (=> b!280861 (=> (not res!143973) (not e!178677))))

(declare-datatypes ((array!13971 0))(
  ( (array!13972 (arr!6627 (Array (_ BitVec 32) (_ BitVec 64))) (size!6979 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13971)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!280861 (= res!143973 (and (= (size!6979 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6979 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6979 a!3325))))))

(declare-fun b!280862 () Bool)

(declare-fun res!143975 () Bool)

(assert (=> b!280862 (=> (not res!143975) (not e!178677))))

(declare-datatypes ((List!4456 0))(
  ( (Nil!4453) (Cons!4452 (h!5122 (_ BitVec 64)) (t!9546 List!4456)) )
))
(declare-fun arrayNoDuplicates!0 (array!13971 (_ BitVec 32) List!4456) Bool)

(assert (=> b!280862 (= res!143975 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4453))))

(declare-fun b!280863 () Bool)

(declare-fun res!143970 () Bool)

(assert (=> b!280863 (=> (not res!143970) (not e!178677))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13971 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280863 (= res!143970 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280864 () Bool)

(declare-fun res!143971 () Bool)

(assert (=> b!280864 (=> (not res!143971) (not e!178677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280864 (= res!143971 (validKeyInArray!0 k!2581))))

(declare-fun b!280865 () Bool)

(declare-fun res!143974 () Bool)

(declare-fun e!178676 () Bool)

(assert (=> b!280865 (=> (not res!143974) (not e!178676))))

(assert (=> b!280865 (= res!143974 (not (= startIndex!26 i!1267)))))

(declare-fun b!280867 () Bool)

(declare-fun res!143968 () Bool)

(assert (=> b!280867 (=> (not res!143968) (not e!178676))))

(assert (=> b!280867 (= res!143968 (validKeyInArray!0 (select (arr!6627 a!3325) startIndex!26)))))

(declare-fun b!280866 () Bool)

(declare-fun res!143969 () Bool)

(assert (=> b!280866 (=> (not res!143969) (not e!178676))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13971 (_ BitVec 32)) Bool)

(assert (=> b!280866 (= res!143969 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!143976 () Bool)

(assert (=> start!27164 (=> (not res!143976) (not e!178677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27164 (= res!143976 (validMask!0 mask!3868))))

(assert (=> start!27164 e!178677))

(declare-fun array_inv!4581 (array!13971) Bool)

(assert (=> start!27164 (array_inv!4581 a!3325)))

(assert (=> start!27164 true))

(declare-fun b!280868 () Bool)

(assert (=> b!280868 (= e!178677 e!178676)))

(declare-fun res!143972 () Bool)

(assert (=> b!280868 (=> (not res!143972) (not e!178676))))

(declare-datatypes ((SeekEntryResult!1796 0))(
  ( (MissingZero!1796 (index!9354 (_ BitVec 32))) (Found!1796 (index!9355 (_ BitVec 32))) (Intermediate!1796 (undefined!2608 Bool) (index!9356 (_ BitVec 32)) (x!27554 (_ BitVec 32))) (Undefined!1796) (MissingVacant!1796 (index!9357 (_ BitVec 32))) )
))
(declare-fun lt!138953 () SeekEntryResult!1796)

(assert (=> b!280868 (= res!143972 (or (= lt!138953 (MissingZero!1796 i!1267)) (= lt!138953 (MissingVacant!1796 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13971 (_ BitVec 32)) SeekEntryResult!1796)

(assert (=> b!280868 (= lt!138953 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280869 () Bool)

(assert (=> b!280869 (= e!178676 (not true))))

(assert (=> b!280869 (arrayNoDuplicates!0 (array!13972 (store (arr!6627 a!3325) i!1267 k!2581) (size!6979 a!3325)) #b00000000000000000000000000000000 Nil!4453)))

(declare-datatypes ((Unit!8855 0))(
  ( (Unit!8856) )
))
(declare-fun lt!138952 () Unit!8855)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13971 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4456) Unit!8855)

(assert (=> b!280869 (= lt!138952 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4453))))

(assert (= (and start!27164 res!143976) b!280861))

(assert (= (and b!280861 res!143973) b!280864))

(assert (= (and b!280864 res!143971) b!280862))

(assert (= (and b!280862 res!143975) b!280863))

(assert (= (and b!280863 res!143970) b!280868))

(assert (= (and b!280868 res!143972) b!280866))

(assert (= (and b!280866 res!143969) b!280865))

(assert (= (and b!280865 res!143974) b!280867))

(assert (= (and b!280867 res!143968) b!280869))

(declare-fun m!295285 () Bool)

(assert (=> b!280868 m!295285))

(declare-fun m!295287 () Bool)

(assert (=> b!280864 m!295287))

(declare-fun m!295289 () Bool)

(assert (=> b!280866 m!295289))

(declare-fun m!295291 () Bool)

(assert (=> b!280867 m!295291))

(assert (=> b!280867 m!295291))

(declare-fun m!295293 () Bool)

(assert (=> b!280867 m!295293))

(declare-fun m!295295 () Bool)

(assert (=> b!280863 m!295295))

(declare-fun m!295297 () Bool)

(assert (=> start!27164 m!295297))

(declare-fun m!295299 () Bool)

(assert (=> start!27164 m!295299))

(declare-fun m!295301 () Bool)

(assert (=> b!280862 m!295301))

(declare-fun m!295303 () Bool)

(assert (=> b!280869 m!295303))

(declare-fun m!295305 () Bool)

(assert (=> b!280869 m!295305))

(declare-fun m!295307 () Bool)

(assert (=> b!280869 m!295307))

(push 1)

