; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27224 () Bool)

(assert start!27224)

(declare-fun b!281671 () Bool)

(declare-fun res!144779 () Bool)

(declare-fun e!178975 () Bool)

(assert (=> b!281671 (=> (not res!144779) (not e!178975))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281671 (= res!144779 (validKeyInArray!0 k!2581))))

(declare-fun b!281672 () Bool)

(declare-fun res!144778 () Bool)

(declare-fun e!178972 () Bool)

(assert (=> b!281672 (=> (not res!144778) (not e!178972))))

(declare-datatypes ((array!14031 0))(
  ( (array!14032 (arr!6657 (Array (_ BitVec 32) (_ BitVec 64))) (size!7009 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14031)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14031 (_ BitVec 32)) Bool)

(assert (=> b!281672 (= res!144778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!144784 () Bool)

(assert (=> start!27224 (=> (not res!144784) (not e!178975))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27224 (= res!144784 (validMask!0 mask!3868))))

(assert (=> start!27224 e!178975))

(declare-fun array_inv!4611 (array!14031) Bool)

(assert (=> start!27224 (array_inv!4611 a!3325)))

(assert (=> start!27224 true))

(declare-fun b!281673 () Bool)

(assert (=> b!281673 (= e!178975 e!178972)))

(declare-fun res!144785 () Bool)

(assert (=> b!281673 (=> (not res!144785) (not e!178972))))

(declare-datatypes ((SeekEntryResult!1826 0))(
  ( (MissingZero!1826 (index!9474 (_ BitVec 32))) (Found!1826 (index!9475 (_ BitVec 32))) (Intermediate!1826 (undefined!2638 Bool) (index!9476 (_ BitVec 32)) (x!27664 (_ BitVec 32))) (Undefined!1826) (MissingVacant!1826 (index!9477 (_ BitVec 32))) )
))
(declare-fun lt!139184 () SeekEntryResult!1826)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281673 (= res!144785 (or (= lt!139184 (MissingZero!1826 i!1267)) (= lt!139184 (MissingVacant!1826 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14031 (_ BitVec 32)) SeekEntryResult!1826)

(assert (=> b!281673 (= lt!139184 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281674 () Bool)

(declare-fun res!144781 () Bool)

(declare-fun e!178973 () Bool)

(assert (=> b!281674 (=> (not res!144781) (not e!178973))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281674 (= res!144781 (validKeyInArray!0 (select (arr!6657 a!3325) startIndex!26)))))

(declare-fun b!281675 () Bool)

(declare-fun res!144782 () Bool)

(assert (=> b!281675 (=> (not res!144782) (not e!178975))))

(assert (=> b!281675 (= res!144782 (and (= (size!7009 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7009 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7009 a!3325))))))

(declare-fun b!281676 () Bool)

(declare-fun res!144780 () Bool)

(assert (=> b!281676 (=> (not res!144780) (not e!178975))))

(declare-datatypes ((List!4486 0))(
  ( (Nil!4483) (Cons!4482 (h!5152 (_ BitVec 64)) (t!9576 List!4486)) )
))
(declare-fun arrayNoDuplicates!0 (array!14031 (_ BitVec 32) List!4486) Bool)

(assert (=> b!281676 (= res!144780 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4483))))

(declare-fun b!281677 () Bool)

(assert (=> b!281677 (= e!178972 e!178973)))

(declare-fun res!144786 () Bool)

(assert (=> b!281677 (=> (not res!144786) (not e!178973))))

(assert (=> b!281677 (= res!144786 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139185 () array!14031)

(assert (=> b!281677 (= lt!139185 (array!14032 (store (arr!6657 a!3325) i!1267 k!2581) (size!7009 a!3325)))))

(declare-fun b!281678 () Bool)

(declare-fun res!144783 () Bool)

(assert (=> b!281678 (=> (not res!144783) (not e!178975))))

(declare-fun arrayContainsKey!0 (array!14031 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281678 (= res!144783 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281679 () Bool)

(assert (=> b!281679 (= e!178973 (not (bvsle #b00000000000000000000000000000000 (size!7009 a!3325))))))

(assert (=> b!281679 (= (seekEntryOrOpen!0 (select (arr!6657 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6657 a!3325) i!1267 k!2581) startIndex!26) lt!139185 mask!3868))))

(declare-datatypes ((Unit!8915 0))(
  ( (Unit!8916) )
))
(declare-fun lt!139186 () Unit!8915)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14031 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8915)

(assert (=> b!281679 (= lt!139186 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!281679 (arrayNoDuplicates!0 lt!139185 #b00000000000000000000000000000000 Nil!4483)))

(declare-fun lt!139187 () Unit!8915)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14031 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4486) Unit!8915)

(assert (=> b!281679 (= lt!139187 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4483))))

(assert (= (and start!27224 res!144784) b!281675))

(assert (= (and b!281675 res!144782) b!281671))

(assert (= (and b!281671 res!144779) b!281676))

(assert (= (and b!281676 res!144780) b!281678))

(assert (= (and b!281678 res!144783) b!281673))

(assert (= (and b!281673 res!144785) b!281672))

(assert (= (and b!281672 res!144778) b!281677))

(assert (= (and b!281677 res!144786) b!281674))

(assert (= (and b!281674 res!144781) b!281679))

(declare-fun m!296069 () Bool)

(assert (=> b!281678 m!296069))

(declare-fun m!296071 () Bool)

(assert (=> b!281674 m!296071))

(assert (=> b!281674 m!296071))

(declare-fun m!296073 () Bool)

(assert (=> b!281674 m!296073))

(declare-fun m!296075 () Bool)

(assert (=> b!281679 m!296075))

(declare-fun m!296077 () Bool)

(assert (=> b!281679 m!296077))

(assert (=> b!281679 m!296075))

(declare-fun m!296079 () Bool)

(assert (=> b!281679 m!296079))

(declare-fun m!296081 () Bool)

(assert (=> b!281679 m!296081))

(assert (=> b!281679 m!296071))

(declare-fun m!296083 () Bool)

(assert (=> b!281679 m!296083))

(declare-fun m!296085 () Bool)

(assert (=> b!281679 m!296085))

(assert (=> b!281679 m!296071))

(declare-fun m!296087 () Bool)

(assert (=> b!281679 m!296087))

(assert (=> b!281677 m!296081))

(declare-fun m!296089 () Bool)

(assert (=> start!27224 m!296089))

(declare-fun m!296091 () Bool)

(assert (=> start!27224 m!296091))

(declare-fun m!296093 () Bool)

(assert (=> b!281676 m!296093))

(declare-fun m!296095 () Bool)

(assert (=> b!281671 m!296095))

(declare-fun m!296097 () Bool)

(assert (=> b!281672 m!296097))

(declare-fun m!296099 () Bool)

(assert (=> b!281673 m!296099))

(push 1)

