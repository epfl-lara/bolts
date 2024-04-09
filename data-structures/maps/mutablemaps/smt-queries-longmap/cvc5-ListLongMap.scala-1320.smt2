; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26488 () Bool)

(assert start!26488)

(declare-fun res!138890 () Bool)

(declare-fun e!175907 () Bool)

(assert (=> start!26488 (=> (not res!138890) (not e!175907))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26488 (= res!138890 (validMask!0 mask!3868))))

(assert (=> start!26488 e!175907))

(declare-datatypes ((array!13574 0))(
  ( (array!13575 (arr!6436 (Array (_ BitVec 32) (_ BitVec 64))) (size!6788 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13574)

(declare-fun array_inv!4390 (array!13574) Bool)

(assert (=> start!26488 (array_inv!4390 a!3325)))

(assert (=> start!26488 true))

(declare-fun b!274858 () Bool)

(declare-fun e!175908 () Bool)

(assert (=> b!274858 (= e!175908 false)))

(declare-fun lt!137231 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13574 (_ BitVec 32)) Bool)

(assert (=> b!274858 (= lt!137231 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274859 () Bool)

(declare-fun res!138891 () Bool)

(assert (=> b!274859 (=> (not res!138891) (not e!175907))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274859 (= res!138891 (validKeyInArray!0 k!2581))))

(declare-fun b!274860 () Bool)

(assert (=> b!274860 (= e!175907 e!175908)))

(declare-fun res!138886 () Bool)

(assert (=> b!274860 (=> (not res!138886) (not e!175908))))

(declare-datatypes ((SeekEntryResult!1605 0))(
  ( (MissingZero!1605 (index!8590 (_ BitVec 32))) (Found!1605 (index!8591 (_ BitVec 32))) (Intermediate!1605 (undefined!2417 Bool) (index!8592 (_ BitVec 32)) (x!26850 (_ BitVec 32))) (Undefined!1605) (MissingVacant!1605 (index!8593 (_ BitVec 32))) )
))
(declare-fun lt!137230 () SeekEntryResult!1605)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274860 (= res!138886 (or (= lt!137230 (MissingZero!1605 i!1267)) (= lt!137230 (MissingVacant!1605 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13574 (_ BitVec 32)) SeekEntryResult!1605)

(assert (=> b!274860 (= lt!137230 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274861 () Bool)

(declare-fun res!138889 () Bool)

(assert (=> b!274861 (=> (not res!138889) (not e!175907))))

(declare-datatypes ((List!4265 0))(
  ( (Nil!4262) (Cons!4261 (h!4928 (_ BitVec 64)) (t!9355 List!4265)) )
))
(declare-fun arrayNoDuplicates!0 (array!13574 (_ BitVec 32) List!4265) Bool)

(assert (=> b!274861 (= res!138889 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4262))))

(declare-fun b!274862 () Bool)

(declare-fun res!138888 () Bool)

(assert (=> b!274862 (=> (not res!138888) (not e!175907))))

(declare-fun arrayContainsKey!0 (array!13574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274862 (= res!138888 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274863 () Bool)

(declare-fun res!138887 () Bool)

(assert (=> b!274863 (=> (not res!138887) (not e!175907))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274863 (= res!138887 (and (= (size!6788 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6788 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6788 a!3325))))))

(assert (= (and start!26488 res!138890) b!274863))

(assert (= (and b!274863 res!138887) b!274859))

(assert (= (and b!274859 res!138891) b!274861))

(assert (= (and b!274861 res!138889) b!274862))

(assert (= (and b!274862 res!138888) b!274860))

(assert (= (and b!274860 res!138886) b!274858))

(declare-fun m!290587 () Bool)

(assert (=> b!274861 m!290587))

(declare-fun m!290589 () Bool)

(assert (=> b!274859 m!290589))

(declare-fun m!290591 () Bool)

(assert (=> start!26488 m!290591))

(declare-fun m!290593 () Bool)

(assert (=> start!26488 m!290593))

(declare-fun m!290595 () Bool)

(assert (=> b!274858 m!290595))

(declare-fun m!290597 () Bool)

(assert (=> b!274860 m!290597))

(declare-fun m!290599 () Bool)

(assert (=> b!274862 m!290599))

(push 1)

(assert (not b!274861))

(assert (not start!26488))

