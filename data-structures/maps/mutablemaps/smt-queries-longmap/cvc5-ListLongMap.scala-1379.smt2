; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27136 () Bool)

(assert start!27136)

(declare-fun b!280483 () Bool)

(declare-fun res!143594 () Bool)

(declare-fun e!178551 () Bool)

(assert (=> b!280483 (=> (not res!143594) (not e!178551))))

(declare-datatypes ((array!13943 0))(
  ( (array!13944 (arr!6613 (Array (_ BitVec 32) (_ BitVec 64))) (size!6965 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13943)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13943 (_ BitVec 32)) Bool)

(assert (=> b!280483 (= res!143594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280484 () Bool)

(declare-fun res!143591 () Bool)

(declare-fun e!178550 () Bool)

(assert (=> b!280484 (=> (not res!143591) (not e!178550))))

(declare-datatypes ((List!4442 0))(
  ( (Nil!4439) (Cons!4438 (h!5108 (_ BitVec 64)) (t!9532 List!4442)) )
))
(declare-fun arrayNoDuplicates!0 (array!13943 (_ BitVec 32) List!4442) Bool)

(assert (=> b!280484 (= res!143591 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4439))))

(declare-fun b!280485 () Bool)

(assert (=> b!280485 (= e!178550 e!178551)))

(declare-fun res!143593 () Bool)

(assert (=> b!280485 (=> (not res!143593) (not e!178551))))

(declare-datatypes ((SeekEntryResult!1782 0))(
  ( (MissingZero!1782 (index!9298 (_ BitVec 32))) (Found!1782 (index!9299 (_ BitVec 32))) (Intermediate!1782 (undefined!2594 Bool) (index!9300 (_ BitVec 32)) (x!27508 (_ BitVec 32))) (Undefined!1782) (MissingVacant!1782 (index!9301 (_ BitVec 32))) )
))
(declare-fun lt!138868 () SeekEntryResult!1782)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280485 (= res!143593 (or (= lt!138868 (MissingZero!1782 i!1267)) (= lt!138868 (MissingVacant!1782 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13943 (_ BitVec 32)) SeekEntryResult!1782)

(assert (=> b!280485 (= lt!138868 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280486 () Bool)

(declare-fun res!143596 () Bool)

(assert (=> b!280486 (=> (not res!143596) (not e!178550))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!280486 (= res!143596 (and (= (size!6965 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6965 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6965 a!3325))))))

(declare-fun res!143598 () Bool)

(assert (=> start!27136 (=> (not res!143598) (not e!178550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27136 (= res!143598 (validMask!0 mask!3868))))

(assert (=> start!27136 e!178550))

(declare-fun array_inv!4567 (array!13943) Bool)

(assert (=> start!27136 (array_inv!4567 a!3325)))

(assert (=> start!27136 true))

(declare-fun b!280487 () Bool)

(declare-fun res!143597 () Bool)

(assert (=> b!280487 (=> (not res!143597) (not e!178550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280487 (= res!143597 (validKeyInArray!0 k!2581))))

(declare-fun b!280488 () Bool)

(declare-fun res!143592 () Bool)

(assert (=> b!280488 (=> (not res!143592) (not e!178550))))

(declare-fun arrayContainsKey!0 (array!13943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280488 (= res!143592 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280489 () Bool)

(assert (=> b!280489 (= e!178551 (not true))))

(assert (=> b!280489 (arrayNoDuplicates!0 (array!13944 (store (arr!6613 a!3325) i!1267 k!2581) (size!6965 a!3325)) #b00000000000000000000000000000000 Nil!4439)))

(declare-datatypes ((Unit!8827 0))(
  ( (Unit!8828) )
))
(declare-fun lt!138869 () Unit!8827)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13943 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4442) Unit!8827)

(assert (=> b!280489 (= lt!138869 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4439))))

(declare-fun b!280490 () Bool)

(declare-fun res!143595 () Bool)

(assert (=> b!280490 (=> (not res!143595) (not e!178551))))

(assert (=> b!280490 (= res!143595 (validKeyInArray!0 (select (arr!6613 a!3325) startIndex!26)))))

(declare-fun b!280491 () Bool)

(declare-fun res!143590 () Bool)

(assert (=> b!280491 (=> (not res!143590) (not e!178551))))

(assert (=> b!280491 (= res!143590 (not (= startIndex!26 i!1267)))))

(assert (= (and start!27136 res!143598) b!280486))

(assert (= (and b!280486 res!143596) b!280487))

(assert (= (and b!280487 res!143597) b!280484))

(assert (= (and b!280484 res!143591) b!280488))

(assert (= (and b!280488 res!143592) b!280485))

(assert (= (and b!280485 res!143593) b!280483))

(assert (= (and b!280483 res!143594) b!280491))

(assert (= (and b!280491 res!143590) b!280490))

(assert (= (and b!280490 res!143595) b!280489))

(declare-fun m!294949 () Bool)

(assert (=> b!280488 m!294949))

(declare-fun m!294951 () Bool)

(assert (=> b!280489 m!294951))

(declare-fun m!294953 () Bool)

(assert (=> b!280489 m!294953))

(declare-fun m!294955 () Bool)

(assert (=> b!280489 m!294955))

(declare-fun m!294957 () Bool)

(assert (=> b!280490 m!294957))

(assert (=> b!280490 m!294957))

(declare-fun m!294959 () Bool)

(assert (=> b!280490 m!294959))

(declare-fun m!294961 () Bool)

(assert (=> b!280485 m!294961))

(declare-fun m!294963 () Bool)

(assert (=> b!280483 m!294963))

(declare-fun m!294965 () Bool)

(assert (=> b!280484 m!294965))

(declare-fun m!294967 () Bool)

(assert (=> start!27136 m!294967))

(declare-fun m!294969 () Bool)

(assert (=> start!27136 m!294969))

(declare-fun m!294971 () Bool)

(assert (=> b!280487 m!294971))

(push 1)

