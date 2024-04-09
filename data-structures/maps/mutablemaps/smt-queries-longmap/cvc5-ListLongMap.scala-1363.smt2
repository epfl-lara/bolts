; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26746 () Bool)

(assert start!26746)

(declare-fun b!277674 () Bool)

(declare-datatypes ((Unit!8772 0))(
  ( (Unit!8773) )
))
(declare-fun e!177148 () Unit!8772)

(declare-fun Unit!8774 () Unit!8772)

(assert (=> b!277674 (= e!177148 Unit!8774)))

(declare-fun b!277675 () Bool)

(declare-fun res!141560 () Bool)

(declare-fun e!177147 () Bool)

(assert (=> b!277675 (=> (not res!141560) (not e!177147))))

(declare-datatypes ((array!13832 0))(
  ( (array!13833 (arr!6565 (Array (_ BitVec 32) (_ BitVec 64))) (size!6917 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13832)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13832 (_ BitVec 32)) Bool)

(assert (=> b!277675 (= res!141560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277676 () Bool)

(declare-fun res!141557 () Bool)

(declare-fun e!177144 () Bool)

(assert (=> b!277676 (=> (not res!141557) (not e!177144))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277676 (= res!141557 (validKeyInArray!0 k!2581))))

(declare-fun b!277677 () Bool)

(declare-fun res!141559 () Bool)

(assert (=> b!277677 (=> (not res!141559) (not e!177144))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277677 (= res!141559 (and (= (size!6917 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6917 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6917 a!3325))))))

(declare-fun res!141555 () Bool)

(assert (=> start!26746 (=> (not res!141555) (not e!177144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26746 (= res!141555 (validMask!0 mask!3868))))

(assert (=> start!26746 e!177144))

(declare-fun array_inv!4519 (array!13832) Bool)

(assert (=> start!26746 (array_inv!4519 a!3325)))

(assert (=> start!26746 true))

(declare-fun b!277678 () Bool)

(declare-fun res!141556 () Bool)

(assert (=> b!277678 (=> (not res!141556) (not e!177144))))

(declare-fun arrayContainsKey!0 (array!13832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277678 (= res!141556 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277679 () Bool)

(declare-fun lt!138047 () Unit!8772)

(assert (=> b!277679 (= e!177148 lt!138047)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13832 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8772)

(assert (=> b!277679 (= lt!138047 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun lt!138046 () array!13832)

(assert (=> b!277679 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138046 mask!3868)))

(declare-fun b!277680 () Bool)

(declare-fun e!177145 () Bool)

(assert (=> b!277680 (= e!177147 e!177145)))

(declare-fun res!141561 () Bool)

(assert (=> b!277680 (=> (not res!141561) (not e!177145))))

(assert (=> b!277680 (= res!141561 (= startIndex!26 i!1267))))

(assert (=> b!277680 (= lt!138046 (array!13833 (store (arr!6565 a!3325) i!1267 k!2581) (size!6917 a!3325)))))

(declare-fun b!277681 () Bool)

(assert (=> b!277681 (= e!177145 (not true))))

(declare-datatypes ((SeekEntryResult!1734 0))(
  ( (MissingZero!1734 (index!9106 (_ BitVec 32))) (Found!1734 (index!9107 (_ BitVec 32))) (Intermediate!1734 (undefined!2546 Bool) (index!9108 (_ BitVec 32)) (x!27323 (_ BitVec 32))) (Undefined!1734) (MissingVacant!1734 (index!9109 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13832 (_ BitVec 32)) SeekEntryResult!1734)

(assert (=> b!277681 (= (seekEntryOrOpen!0 k!2581 lt!138046 mask!3868) (Found!1734 i!1267))))

(declare-fun lt!138049 () Unit!8772)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13832 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8772)

(assert (=> b!277681 (= lt!138049 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!138048 () Unit!8772)

(assert (=> b!277681 (= lt!138048 e!177148)))

(declare-fun c!45611 () Bool)

(assert (=> b!277681 (= c!45611 (bvslt startIndex!26 (bvsub (size!6917 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277682 () Bool)

(assert (=> b!277682 (= e!177144 e!177147)))

(declare-fun res!141554 () Bool)

(assert (=> b!277682 (=> (not res!141554) (not e!177147))))

(declare-fun lt!138050 () SeekEntryResult!1734)

(assert (=> b!277682 (= res!141554 (or (= lt!138050 (MissingZero!1734 i!1267)) (= lt!138050 (MissingVacant!1734 i!1267))))))

(assert (=> b!277682 (= lt!138050 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277683 () Bool)

(declare-fun res!141558 () Bool)

(assert (=> b!277683 (=> (not res!141558) (not e!177144))))

(declare-datatypes ((List!4394 0))(
  ( (Nil!4391) (Cons!4390 (h!5057 (_ BitVec 64)) (t!9484 List!4394)) )
))
(declare-fun arrayNoDuplicates!0 (array!13832 (_ BitVec 32) List!4394) Bool)

(assert (=> b!277683 (= res!141558 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4391))))

(assert (= (and start!26746 res!141555) b!277677))

(assert (= (and b!277677 res!141559) b!277676))

(assert (= (and b!277676 res!141557) b!277683))

(assert (= (and b!277683 res!141558) b!277678))

(assert (= (and b!277678 res!141556) b!277682))

(assert (= (and b!277682 res!141554) b!277675))

(assert (= (and b!277675 res!141560) b!277680))

(assert (= (and b!277680 res!141561) b!277681))

(assert (= (and b!277681 c!45611) b!277679))

(assert (= (and b!277681 (not c!45611)) b!277674))

(declare-fun m!292669 () Bool)

(assert (=> b!277680 m!292669))

(declare-fun m!292671 () Bool)

(assert (=> b!277676 m!292671))

(declare-fun m!292673 () Bool)

(assert (=> b!277682 m!292673))

(declare-fun m!292675 () Bool)

(assert (=> b!277678 m!292675))

(declare-fun m!292677 () Bool)

(assert (=> b!277675 m!292677))

(declare-fun m!292679 () Bool)

(assert (=> b!277679 m!292679))

(declare-fun m!292681 () Bool)

(assert (=> b!277679 m!292681))

(declare-fun m!292683 () Bool)

(assert (=> start!26746 m!292683))

(declare-fun m!292685 () Bool)

(assert (=> start!26746 m!292685))

(declare-fun m!292687 () Bool)

(assert (=> b!277683 m!292687))

(declare-fun m!292689 () Bool)

(assert (=> b!277681 m!292689))

(declare-fun m!292691 () Bool)

(assert (=> b!277681 m!292691))

(push 1)

