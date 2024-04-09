; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26260 () Bool)

(assert start!26260)

(declare-fun b!271750 () Bool)

(declare-fun res!135784 () Bool)

(declare-fun e!174621 () Bool)

(assert (=> b!271750 (=> (not res!135784) (not e!174621))))

(declare-datatypes ((array!13346 0))(
  ( (array!13347 (arr!6322 (Array (_ BitVec 32) (_ BitVec 64))) (size!6674 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13346)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13346 (_ BitVec 32)) Bool)

(assert (=> b!271750 (= res!135784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!271751 () Bool)

(assert (=> b!271751 (= e!174621 (not true))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4151 0))(
  ( (Nil!4148) (Cons!4147 (h!4814 (_ BitVec 64)) (t!9241 List!4151)) )
))
(declare-fun arrayNoDuplicates!0 (array!13346 (_ BitVec 32) List!4151) Bool)

(assert (=> b!271751 (arrayNoDuplicates!0 (array!13347 (store (arr!6322 a!3325) i!1267 k!2581) (size!6674 a!3325)) #b00000000000000000000000000000000 Nil!4148)))

(declare-datatypes ((Unit!8448 0))(
  ( (Unit!8449) )
))
(declare-fun lt!135881 () Unit!8448)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13346 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4151) Unit!8448)

(assert (=> b!271751 (= lt!135881 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4148))))

(declare-fun b!271752 () Bool)

(declare-fun e!174622 () Bool)

(assert (=> b!271752 (= e!174622 e!174621)))

(declare-fun res!135781 () Bool)

(assert (=> b!271752 (=> (not res!135781) (not e!174621))))

(declare-datatypes ((SeekEntryResult!1491 0))(
  ( (MissingZero!1491 (index!8134 (_ BitVec 32))) (Found!1491 (index!8135 (_ BitVec 32))) (Intermediate!1491 (undefined!2303 Bool) (index!8136 (_ BitVec 32)) (x!26432 (_ BitVec 32))) (Undefined!1491) (MissingVacant!1491 (index!8137 (_ BitVec 32))) )
))
(declare-fun lt!135880 () SeekEntryResult!1491)

(assert (=> b!271752 (= res!135781 (or (= lt!135880 (MissingZero!1491 i!1267)) (= lt!135880 (MissingVacant!1491 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13346 (_ BitVec 32)) SeekEntryResult!1491)

(assert (=> b!271752 (= lt!135880 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!271753 () Bool)

(declare-fun res!135785 () Bool)

(assert (=> b!271753 (=> (not res!135785) (not e!174622))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!271753 (= res!135785 (validKeyInArray!0 k!2581))))

(declare-fun res!135786 () Bool)

(assert (=> start!26260 (=> (not res!135786) (not e!174622))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26260 (= res!135786 (validMask!0 mask!3868))))

(assert (=> start!26260 e!174622))

(declare-fun array_inv!4276 (array!13346) Bool)

(assert (=> start!26260 (array_inv!4276 a!3325)))

(assert (=> start!26260 true))

(declare-fun b!271754 () Bool)

(declare-fun res!135779 () Bool)

(assert (=> b!271754 (=> (not res!135779) (not e!174622))))

(declare-fun arrayContainsKey!0 (array!13346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!271754 (= res!135779 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!271755 () Bool)

(declare-fun res!135782 () Bool)

(assert (=> b!271755 (=> (not res!135782) (not e!174622))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!271755 (= res!135782 (and (= (size!6674 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6674 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6674 a!3325))))))

(declare-fun b!271756 () Bool)

(declare-fun res!135783 () Bool)

(assert (=> b!271756 (=> (not res!135783) (not e!174621))))

(assert (=> b!271756 (= res!135783 (validKeyInArray!0 (select (arr!6322 a!3325) startIndex!26)))))

(declare-fun b!271757 () Bool)

(declare-fun res!135780 () Bool)

(assert (=> b!271757 (=> (not res!135780) (not e!174622))))

(assert (=> b!271757 (= res!135780 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4148))))

(declare-fun b!271758 () Bool)

(declare-fun res!135778 () Bool)

(assert (=> b!271758 (=> (not res!135778) (not e!174621))))

(assert (=> b!271758 (= res!135778 (not (= startIndex!26 i!1267)))))

(assert (= (and start!26260 res!135786) b!271755))

(assert (= (and b!271755 res!135782) b!271753))

(assert (= (and b!271753 res!135785) b!271757))

(assert (= (and b!271757 res!135780) b!271754))

(assert (= (and b!271754 res!135779) b!271752))

(assert (= (and b!271752 res!135781) b!271750))

(assert (= (and b!271750 res!135784) b!271758))

(assert (= (and b!271758 res!135778) b!271756))

(assert (= (and b!271756 res!135783) b!271751))

(declare-fun m!286963 () Bool)

(assert (=> start!26260 m!286963))

(declare-fun m!286965 () Bool)

(assert (=> start!26260 m!286965))

(declare-fun m!286967 () Bool)

(assert (=> b!271750 m!286967))

(declare-fun m!286969 () Bool)

(assert (=> b!271756 m!286969))

(assert (=> b!271756 m!286969))

(declare-fun m!286971 () Bool)

(assert (=> b!271756 m!286971))

(declare-fun m!286973 () Bool)

(assert (=> b!271751 m!286973))

(declare-fun m!286975 () Bool)

(assert (=> b!271751 m!286975))

(declare-fun m!286977 () Bool)

(assert (=> b!271751 m!286977))

(declare-fun m!286979 () Bool)

(assert (=> b!271754 m!286979))

(declare-fun m!286981 () Bool)

(assert (=> b!271757 m!286981))

(declare-fun m!286983 () Bool)

(assert (=> b!271753 m!286983))

(declare-fun m!286985 () Bool)

(assert (=> b!271752 m!286985))

(push 1)

