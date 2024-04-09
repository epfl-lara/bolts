; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27226 () Bool)

(assert start!27226)

(declare-fun b!281698 () Bool)

(declare-fun e!178986 () Bool)

(declare-fun e!178987 () Bool)

(assert (=> b!281698 (= e!178986 e!178987)))

(declare-fun res!144812 () Bool)

(assert (=> b!281698 (=> (not res!144812) (not e!178987))))

(declare-datatypes ((SeekEntryResult!1827 0))(
  ( (MissingZero!1827 (index!9478 (_ BitVec 32))) (Found!1827 (index!9479 (_ BitVec 32))) (Intermediate!1827 (undefined!2639 Bool) (index!9480 (_ BitVec 32)) (x!27673 (_ BitVec 32))) (Undefined!1827) (MissingVacant!1827 (index!9481 (_ BitVec 32))) )
))
(declare-fun lt!139197 () SeekEntryResult!1827)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281698 (= res!144812 (or (= lt!139197 (MissingZero!1827 i!1267)) (= lt!139197 (MissingVacant!1827 i!1267))))))

(declare-datatypes ((array!14033 0))(
  ( (array!14034 (arr!6658 (Array (_ BitVec 32) (_ BitVec 64))) (size!7010 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14033)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14033 (_ BitVec 32)) SeekEntryResult!1827)

(assert (=> b!281698 (= lt!139197 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281699 () Bool)

(declare-fun res!144805 () Bool)

(assert (=> b!281699 (=> (not res!144805) (not e!178986))))

(declare-fun arrayContainsKey!0 (array!14033 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281699 (= res!144805 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!144813 () Bool)

(assert (=> start!27226 (=> (not res!144813) (not e!178986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27226 (= res!144813 (validMask!0 mask!3868))))

(assert (=> start!27226 e!178986))

(declare-fun array_inv!4612 (array!14033) Bool)

(assert (=> start!27226 (array_inv!4612 a!3325)))

(assert (=> start!27226 true))

(declare-fun b!281700 () Bool)

(declare-fun res!144808 () Bool)

(assert (=> b!281700 (=> (not res!144808) (not e!178987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14033 (_ BitVec 32)) Bool)

(assert (=> b!281700 (= res!144808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281701 () Bool)

(declare-fun res!144807 () Bool)

(assert (=> b!281701 (=> (not res!144807) (not e!178986))))

(declare-datatypes ((List!4487 0))(
  ( (Nil!4484) (Cons!4483 (h!5153 (_ BitVec 64)) (t!9577 List!4487)) )
))
(declare-fun arrayNoDuplicates!0 (array!14033 (_ BitVec 32) List!4487) Bool)

(assert (=> b!281701 (= res!144807 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4484))))

(declare-fun b!281702 () Bool)

(declare-fun e!178984 () Bool)

(assert (=> b!281702 (= e!178987 e!178984)))

(declare-fun res!144811 () Bool)

(assert (=> b!281702 (=> (not res!144811) (not e!178984))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281702 (= res!144811 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139199 () array!14033)

(assert (=> b!281702 (= lt!139199 (array!14034 (store (arr!6658 a!3325) i!1267 k!2581) (size!7010 a!3325)))))

(declare-fun b!281703 () Bool)

(declare-fun res!144810 () Bool)

(assert (=> b!281703 (=> (not res!144810) (not e!178986))))

(assert (=> b!281703 (= res!144810 (and (= (size!7010 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7010 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7010 a!3325))))))

(declare-fun b!281704 () Bool)

(declare-fun res!144806 () Bool)

(assert (=> b!281704 (=> (not res!144806) (not e!178986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281704 (= res!144806 (validKeyInArray!0 k!2581))))

(declare-fun b!281705 () Bool)

(assert (=> b!281705 (= e!178984 (not (or (bvsgt #b00000000000000000000000000000000 (size!7010 a!3325)) (bvsle startIndex!26 (size!7010 a!3325)))))))

(assert (=> b!281705 (= (seekEntryOrOpen!0 (select (arr!6658 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6658 a!3325) i!1267 k!2581) startIndex!26) lt!139199 mask!3868))))

(declare-datatypes ((Unit!8917 0))(
  ( (Unit!8918) )
))
(declare-fun lt!139196 () Unit!8917)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14033 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8917)

(assert (=> b!281705 (= lt!139196 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!281705 (arrayNoDuplicates!0 lt!139199 #b00000000000000000000000000000000 Nil!4484)))

(declare-fun lt!139198 () Unit!8917)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14033 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4487) Unit!8917)

(assert (=> b!281705 (= lt!139198 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4484))))

(declare-fun b!281706 () Bool)

(declare-fun res!144809 () Bool)

(assert (=> b!281706 (=> (not res!144809) (not e!178984))))

(assert (=> b!281706 (= res!144809 (validKeyInArray!0 (select (arr!6658 a!3325) startIndex!26)))))

(assert (= (and start!27226 res!144813) b!281703))

(assert (= (and b!281703 res!144810) b!281704))

(assert (= (and b!281704 res!144806) b!281701))

(assert (= (and b!281701 res!144807) b!281699))

(assert (= (and b!281699 res!144805) b!281698))

(assert (= (and b!281698 res!144812) b!281700))

(assert (= (and b!281700 res!144808) b!281702))

(assert (= (and b!281702 res!144811) b!281706))

(assert (= (and b!281706 res!144809) b!281705))

(declare-fun m!296101 () Bool)

(assert (=> b!281699 m!296101))

(declare-fun m!296103 () Bool)

(assert (=> b!281701 m!296103))

(declare-fun m!296105 () Bool)

(assert (=> b!281702 m!296105))

(declare-fun m!296107 () Bool)

(assert (=> start!27226 m!296107))

(declare-fun m!296109 () Bool)

(assert (=> start!27226 m!296109))

(declare-fun m!296111 () Bool)

(assert (=> b!281698 m!296111))

(declare-fun m!296113 () Bool)

(assert (=> b!281705 m!296113))

(declare-fun m!296115 () Bool)

(assert (=> b!281705 m!296115))

(assert (=> b!281705 m!296105))

(declare-fun m!296117 () Bool)

(assert (=> b!281705 m!296117))

(declare-fun m!296119 () Bool)

(assert (=> b!281705 m!296119))

(declare-fun m!296121 () Bool)

(assert (=> b!281705 m!296121))

(assert (=> b!281705 m!296115))

(declare-fun m!296123 () Bool)

(assert (=> b!281705 m!296123))

(assert (=> b!281705 m!296117))

(declare-fun m!296125 () Bool)

(assert (=> b!281705 m!296125))

(declare-fun m!296127 () Bool)

(assert (=> b!281700 m!296127))

(declare-fun m!296129 () Bool)

(assert (=> b!281704 m!296129))

(assert (=> b!281706 m!296117))

(assert (=> b!281706 m!296117))

(declare-fun m!296131 () Bool)

(assert (=> b!281706 m!296131))

(push 1)

(assert (not b!281704))

(assert (not b!281700))

(assert (not start!27226))

(assert (not b!281699))

(assert (not b!281701))

(assert (not b!281698))

(assert (not b!281705))

(assert (not b!281706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

