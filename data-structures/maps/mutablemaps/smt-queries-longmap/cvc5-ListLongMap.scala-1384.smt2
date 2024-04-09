; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27166 () Bool)

(assert start!27166)

(declare-fun b!280888 () Bool)

(declare-fun res!143998 () Bool)

(declare-fun e!178685 () Bool)

(assert (=> b!280888 (=> (not res!143998) (not e!178685))))

(declare-datatypes ((array!13973 0))(
  ( (array!13974 (arr!6628 (Array (_ BitVec 32) (_ BitVec 64))) (size!6980 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13973)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13973 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280888 (= res!143998 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!143996 () Bool)

(assert (=> start!27166 (=> (not res!143996) (not e!178685))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27166 (= res!143996 (validMask!0 mask!3868))))

(assert (=> start!27166 e!178685))

(declare-fun array_inv!4582 (array!13973) Bool)

(assert (=> start!27166 (array_inv!4582 a!3325)))

(assert (=> start!27166 true))

(declare-fun b!280889 () Bool)

(declare-fun res!144001 () Bool)

(declare-fun e!178687 () Bool)

(assert (=> b!280889 (=> (not res!144001) (not e!178687))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280889 (= res!144001 (validKeyInArray!0 (select (arr!6628 a!3325) startIndex!26)))))

(declare-fun b!280890 () Bool)

(declare-fun res!144000 () Bool)

(assert (=> b!280890 (=> (not res!144000) (not e!178685))))

(assert (=> b!280890 (= res!144000 (validKeyInArray!0 k!2581))))

(declare-fun b!280891 () Bool)

(assert (=> b!280891 (= e!178685 e!178687)))

(declare-fun res!143999 () Bool)

(assert (=> b!280891 (=> (not res!143999) (not e!178687))))

(declare-datatypes ((SeekEntryResult!1797 0))(
  ( (MissingZero!1797 (index!9358 (_ BitVec 32))) (Found!1797 (index!9359 (_ BitVec 32))) (Intermediate!1797 (undefined!2609 Bool) (index!9360 (_ BitVec 32)) (x!27563 (_ BitVec 32))) (Undefined!1797) (MissingVacant!1797 (index!9361 (_ BitVec 32))) )
))
(declare-fun lt!138958 () SeekEntryResult!1797)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280891 (= res!143999 (or (= lt!138958 (MissingZero!1797 i!1267)) (= lt!138958 (MissingVacant!1797 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13973 (_ BitVec 32)) SeekEntryResult!1797)

(assert (=> b!280891 (= lt!138958 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280892 () Bool)

(declare-fun res!144003 () Bool)

(assert (=> b!280892 (=> (not res!144003) (not e!178687))))

(assert (=> b!280892 (= res!144003 (not (= startIndex!26 i!1267)))))

(declare-fun b!280893 () Bool)

(declare-fun res!143995 () Bool)

(assert (=> b!280893 (=> (not res!143995) (not e!178685))))

(declare-datatypes ((List!4457 0))(
  ( (Nil!4454) (Cons!4453 (h!5123 (_ BitVec 64)) (t!9547 List!4457)) )
))
(declare-fun arrayNoDuplicates!0 (array!13973 (_ BitVec 32) List!4457) Bool)

(assert (=> b!280893 (= res!143995 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4454))))

(declare-fun b!280894 () Bool)

(assert (=> b!280894 (= e!178687 (not (not (= i!1267 startIndex!26))))))

(assert (=> b!280894 (arrayNoDuplicates!0 (array!13974 (store (arr!6628 a!3325) i!1267 k!2581) (size!6980 a!3325)) #b00000000000000000000000000000000 Nil!4454)))

(declare-datatypes ((Unit!8857 0))(
  ( (Unit!8858) )
))
(declare-fun lt!138959 () Unit!8857)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13973 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4457) Unit!8857)

(assert (=> b!280894 (= lt!138959 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4454))))

(declare-fun b!280895 () Bool)

(declare-fun res!144002 () Bool)

(assert (=> b!280895 (=> (not res!144002) (not e!178685))))

(assert (=> b!280895 (= res!144002 (and (= (size!6980 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6980 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6980 a!3325))))))

(declare-fun b!280896 () Bool)

(declare-fun res!143997 () Bool)

(assert (=> b!280896 (=> (not res!143997) (not e!178687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13973 (_ BitVec 32)) Bool)

(assert (=> b!280896 (= res!143997 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27166 res!143996) b!280895))

(assert (= (and b!280895 res!144002) b!280890))

(assert (= (and b!280890 res!144000) b!280893))

(assert (= (and b!280893 res!143995) b!280888))

(assert (= (and b!280888 res!143998) b!280891))

(assert (= (and b!280891 res!143999) b!280896))

(assert (= (and b!280896 res!143997) b!280892))

(assert (= (and b!280892 res!144003) b!280889))

(assert (= (and b!280889 res!144001) b!280894))

(declare-fun m!295309 () Bool)

(assert (=> b!280888 m!295309))

(declare-fun m!295311 () Bool)

(assert (=> b!280893 m!295311))

(declare-fun m!295313 () Bool)

(assert (=> b!280896 m!295313))

(declare-fun m!295315 () Bool)

(assert (=> b!280890 m!295315))

(declare-fun m!295317 () Bool)

(assert (=> start!27166 m!295317))

(declare-fun m!295319 () Bool)

(assert (=> start!27166 m!295319))

(declare-fun m!295321 () Bool)

(assert (=> b!280894 m!295321))

(declare-fun m!295323 () Bool)

(assert (=> b!280894 m!295323))

(declare-fun m!295325 () Bool)

(assert (=> b!280894 m!295325))

(declare-fun m!295327 () Bool)

(assert (=> b!280891 m!295327))

(declare-fun m!295329 () Bool)

(assert (=> b!280889 m!295329))

(assert (=> b!280889 m!295329))

(declare-fun m!295331 () Bool)

(assert (=> b!280889 m!295331))

(push 1)

