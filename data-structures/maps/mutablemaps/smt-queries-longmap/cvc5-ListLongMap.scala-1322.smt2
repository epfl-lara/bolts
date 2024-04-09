; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26500 () Bool)

(assert start!26500)

(declare-fun b!274966 () Bool)

(declare-fun res!138997 () Bool)

(declare-fun e!175961 () Bool)

(assert (=> b!274966 (=> (not res!138997) (not e!175961))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274966 (= res!138997 (validKeyInArray!0 k!2581))))

(declare-fun b!274967 () Bool)

(declare-fun res!138996 () Bool)

(assert (=> b!274967 (=> (not res!138996) (not e!175961))))

(declare-datatypes ((array!13586 0))(
  ( (array!13587 (arr!6442 (Array (_ BitVec 32) (_ BitVec 64))) (size!6794 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13586)

(declare-datatypes ((List!4271 0))(
  ( (Nil!4268) (Cons!4267 (h!4934 (_ BitVec 64)) (t!9361 List!4271)) )
))
(declare-fun arrayNoDuplicates!0 (array!13586 (_ BitVec 32) List!4271) Bool)

(assert (=> b!274967 (= res!138996 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4268))))

(declare-fun b!274968 () Bool)

(declare-fun e!175963 () Bool)

(assert (=> b!274968 (= e!175961 e!175963)))

(declare-fun res!138998 () Bool)

(assert (=> b!274968 (=> (not res!138998) (not e!175963))))

(declare-datatypes ((SeekEntryResult!1611 0))(
  ( (MissingZero!1611 (index!8614 (_ BitVec 32))) (Found!1611 (index!8615 (_ BitVec 32))) (Intermediate!1611 (undefined!2423 Bool) (index!8616 (_ BitVec 32)) (x!26872 (_ BitVec 32))) (Undefined!1611) (MissingVacant!1611 (index!8617 (_ BitVec 32))) )
))
(declare-fun lt!137266 () SeekEntryResult!1611)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274968 (= res!138998 (or (= lt!137266 (MissingZero!1611 i!1267)) (= lt!137266 (MissingVacant!1611 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13586 (_ BitVec 32)) SeekEntryResult!1611)

(assert (=> b!274968 (= lt!137266 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274969 () Bool)

(assert (=> b!274969 (= e!175963 false)))

(declare-fun lt!137267 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13586 (_ BitVec 32)) Bool)

(assert (=> b!274969 (= lt!137267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!138995 () Bool)

(assert (=> start!26500 (=> (not res!138995) (not e!175961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26500 (= res!138995 (validMask!0 mask!3868))))

(assert (=> start!26500 e!175961))

(declare-fun array_inv!4396 (array!13586) Bool)

(assert (=> start!26500 (array_inv!4396 a!3325)))

(assert (=> start!26500 true))

(declare-fun b!274970 () Bool)

(declare-fun res!138999 () Bool)

(assert (=> b!274970 (=> (not res!138999) (not e!175961))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274970 (= res!138999 (and (= (size!6794 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6794 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6794 a!3325))))))

(declare-fun b!274971 () Bool)

(declare-fun res!138994 () Bool)

(assert (=> b!274971 (=> (not res!138994) (not e!175961))))

(declare-fun arrayContainsKey!0 (array!13586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274971 (= res!138994 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26500 res!138995) b!274970))

(assert (= (and b!274970 res!138999) b!274966))

(assert (= (and b!274966 res!138997) b!274967))

(assert (= (and b!274967 res!138996) b!274971))

(assert (= (and b!274971 res!138994) b!274968))

(assert (= (and b!274968 res!138998) b!274969))

(declare-fun m!290671 () Bool)

(assert (=> b!274971 m!290671))

(declare-fun m!290673 () Bool)

(assert (=> b!274967 m!290673))

(declare-fun m!290675 () Bool)

(assert (=> b!274968 m!290675))

(declare-fun m!290677 () Bool)

(assert (=> start!26500 m!290677))

(declare-fun m!290679 () Bool)

(assert (=> start!26500 m!290679))

(declare-fun m!290681 () Bool)

(assert (=> b!274966 m!290681))

(declare-fun m!290683 () Bool)

(assert (=> b!274969 m!290683))

(push 1)

(assert (not b!274971))

