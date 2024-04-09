; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27232 () Bool)

(assert start!27232)

(declare-fun b!281779 () Bool)

(declare-fun res!144894 () Bool)

(declare-fun e!179022 () Bool)

(assert (=> b!281779 (=> (not res!144894) (not e!179022))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281779 (= res!144894 (validKeyInArray!0 k!2581))))

(declare-fun b!281780 () Bool)

(declare-fun e!179021 () Bool)

(assert (=> b!281780 (= e!179021 (not true))))

(declare-datatypes ((array!14039 0))(
  ( (array!14040 (arr!6661 (Array (_ BitVec 32) (_ BitVec 64))) (size!7013 (_ BitVec 32))) )
))
(declare-fun lt!139234 () array!14039)

(declare-fun a!3325 () array!14039)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1830 0))(
  ( (MissingZero!1830 (index!9490 (_ BitVec 32))) (Found!1830 (index!9491 (_ BitVec 32))) (Intermediate!1830 (undefined!2642 Bool) (index!9492 (_ BitVec 32)) (x!27684 (_ BitVec 32))) (Undefined!1830) (MissingVacant!1830 (index!9493 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14039 (_ BitVec 32)) SeekEntryResult!1830)

(assert (=> b!281780 (= (seekEntryOrOpen!0 (select (arr!6661 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6661 a!3325) i!1267 k!2581) startIndex!26) lt!139234 mask!3868))))

(declare-datatypes ((Unit!8923 0))(
  ( (Unit!8924) )
))
(declare-fun lt!139235 () Unit!8923)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14039 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8923)

(assert (=> b!281780 (= lt!139235 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4490 0))(
  ( (Nil!4487) (Cons!4486 (h!5156 (_ BitVec 64)) (t!9580 List!4490)) )
))
(declare-fun arrayNoDuplicates!0 (array!14039 (_ BitVec 32) List!4490) Bool)

(assert (=> b!281780 (arrayNoDuplicates!0 lt!139234 #b00000000000000000000000000000000 Nil!4487)))

(declare-fun lt!139232 () Unit!8923)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14039 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4490) Unit!8923)

(assert (=> b!281780 (= lt!139232 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4487))))

(declare-fun b!281781 () Bool)

(declare-fun res!144891 () Bool)

(declare-fun e!179020 () Bool)

(assert (=> b!281781 (=> (not res!144891) (not e!179020))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14039 (_ BitVec 32)) Bool)

(assert (=> b!281781 (= res!144891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!144892 () Bool)

(assert (=> start!27232 (=> (not res!144892) (not e!179022))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27232 (= res!144892 (validMask!0 mask!3868))))

(assert (=> start!27232 e!179022))

(declare-fun array_inv!4615 (array!14039) Bool)

(assert (=> start!27232 (array_inv!4615 a!3325)))

(assert (=> start!27232 true))

(declare-fun b!281782 () Bool)

(declare-fun res!144887 () Bool)

(assert (=> b!281782 (=> (not res!144887) (not e!179022))))

(declare-fun arrayContainsKey!0 (array!14039 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281782 (= res!144887 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281783 () Bool)

(declare-fun res!144886 () Bool)

(assert (=> b!281783 (=> (not res!144886) (not e!179022))))

(assert (=> b!281783 (= res!144886 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4487))))

(declare-fun b!281784 () Bool)

(assert (=> b!281784 (= e!179022 e!179020)))

(declare-fun res!144893 () Bool)

(assert (=> b!281784 (=> (not res!144893) (not e!179020))))

(declare-fun lt!139233 () SeekEntryResult!1830)

(assert (=> b!281784 (= res!144893 (or (= lt!139233 (MissingZero!1830 i!1267)) (= lt!139233 (MissingVacant!1830 i!1267))))))

(assert (=> b!281784 (= lt!139233 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281785 () Bool)

(declare-fun res!144889 () Bool)

(assert (=> b!281785 (=> (not res!144889) (not e!179021))))

(assert (=> b!281785 (= res!144889 (validKeyInArray!0 (select (arr!6661 a!3325) startIndex!26)))))

(declare-fun b!281786 () Bool)

(assert (=> b!281786 (= e!179020 e!179021)))

(declare-fun res!144890 () Bool)

(assert (=> b!281786 (=> (not res!144890) (not e!179021))))

(assert (=> b!281786 (= res!144890 (not (= startIndex!26 i!1267)))))

(assert (=> b!281786 (= lt!139234 (array!14040 (store (arr!6661 a!3325) i!1267 k!2581) (size!7013 a!3325)))))

(declare-fun b!281787 () Bool)

(declare-fun res!144888 () Bool)

(assert (=> b!281787 (=> (not res!144888) (not e!179022))))

(assert (=> b!281787 (= res!144888 (and (= (size!7013 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7013 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7013 a!3325))))))

(assert (= (and start!27232 res!144892) b!281787))

(assert (= (and b!281787 res!144888) b!281779))

(assert (= (and b!281779 res!144894) b!281783))

(assert (= (and b!281783 res!144886) b!281782))

(assert (= (and b!281782 res!144887) b!281784))

(assert (= (and b!281784 res!144893) b!281781))

(assert (= (and b!281781 res!144891) b!281786))

(assert (= (and b!281786 res!144890) b!281785))

(assert (= (and b!281785 res!144889) b!281780))

(declare-fun m!296197 () Bool)

(assert (=> start!27232 m!296197))

(declare-fun m!296199 () Bool)

(assert (=> start!27232 m!296199))

(declare-fun m!296201 () Bool)

(assert (=> b!281779 m!296201))

(declare-fun m!296203 () Bool)

(assert (=> b!281786 m!296203))

(declare-fun m!296205 () Bool)

(assert (=> b!281782 m!296205))

(declare-fun m!296207 () Bool)

(assert (=> b!281781 m!296207))

(declare-fun m!296209 () Bool)

(assert (=> b!281783 m!296209))

(declare-fun m!296211 () Bool)

(assert (=> b!281784 m!296211))

(declare-fun m!296213 () Bool)

(assert (=> b!281780 m!296213))

(declare-fun m!296215 () Bool)

(assert (=> b!281780 m!296215))

(assert (=> b!281780 m!296213))

(assert (=> b!281780 m!296203))

(declare-fun m!296217 () Bool)

(assert (=> b!281780 m!296217))

(declare-fun m!296219 () Bool)

(assert (=> b!281780 m!296219))

(declare-fun m!296221 () Bool)

(assert (=> b!281780 m!296221))

(declare-fun m!296223 () Bool)

(assert (=> b!281780 m!296223))

(assert (=> b!281780 m!296217))

(declare-fun m!296225 () Bool)

(assert (=> b!281780 m!296225))

(assert (=> b!281785 m!296217))

(assert (=> b!281785 m!296217))

(declare-fun m!296227 () Bool)

(assert (=> b!281785 m!296227))

(push 1)

