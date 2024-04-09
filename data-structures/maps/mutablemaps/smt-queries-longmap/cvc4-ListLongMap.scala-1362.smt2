; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26744 () Bool)

(assert start!26744)

(declare-fun b!277644 () Bool)

(declare-fun res!141537 () Bool)

(declare-fun e!177133 () Bool)

(assert (=> b!277644 (=> (not res!141537) (not e!177133))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277644 (= res!141537 (validKeyInArray!0 k!2581))))

(declare-fun b!277645 () Bool)

(declare-fun res!141531 () Bool)

(assert (=> b!277645 (=> (not res!141531) (not e!177133))))

(declare-datatypes ((array!13830 0))(
  ( (array!13831 (arr!6564 (Array (_ BitVec 32) (_ BitVec 64))) (size!6916 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13830)

(declare-datatypes ((List!4393 0))(
  ( (Nil!4390) (Cons!4389 (h!5056 (_ BitVec 64)) (t!9483 List!4393)) )
))
(declare-fun arrayNoDuplicates!0 (array!13830 (_ BitVec 32) List!4393) Bool)

(assert (=> b!277645 (= res!141531 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4390))))

(declare-fun res!141536 () Bool)

(assert (=> start!26744 (=> (not res!141536) (not e!177133))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26744 (= res!141536 (validMask!0 mask!3868))))

(assert (=> start!26744 e!177133))

(declare-fun array_inv!4518 (array!13830) Bool)

(assert (=> start!26744 (array_inv!4518 a!3325)))

(assert (=> start!26744 true))

(declare-fun b!277646 () Bool)

(declare-datatypes ((Unit!8769 0))(
  ( (Unit!8770) )
))
(declare-fun e!177131 () Unit!8769)

(declare-fun lt!138033 () Unit!8769)

(assert (=> b!277646 (= e!177131 lt!138033)))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13830 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8769)

(assert (=> b!277646 (= lt!138033 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13830 (_ BitVec 32)) Bool)

(assert (=> b!277646 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13831 (store (arr!6564 a!3325) i!1267 k!2581) (size!6916 a!3325)) mask!3868)))

(declare-fun b!277647 () Bool)

(declare-fun res!141530 () Bool)

(assert (=> b!277647 (=> (not res!141530) (not e!177133))))

(assert (=> b!277647 (= res!141530 (and (= (size!6916 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6916 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6916 a!3325))))))

(declare-fun b!277648 () Bool)

(declare-fun e!177132 () Bool)

(assert (=> b!277648 (= e!177133 e!177132)))

(declare-fun res!141535 () Bool)

(assert (=> b!277648 (=> (not res!141535) (not e!177132))))

(declare-datatypes ((SeekEntryResult!1733 0))(
  ( (MissingZero!1733 (index!9102 (_ BitVec 32))) (Found!1733 (index!9103 (_ BitVec 32))) (Intermediate!1733 (undefined!2545 Bool) (index!9104 (_ BitVec 32)) (x!27314 (_ BitVec 32))) (Undefined!1733) (MissingVacant!1733 (index!9105 (_ BitVec 32))) )
))
(declare-fun lt!138035 () SeekEntryResult!1733)

(assert (=> b!277648 (= res!141535 (or (= lt!138035 (MissingZero!1733 i!1267)) (= lt!138035 (MissingVacant!1733 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13830 (_ BitVec 32)) SeekEntryResult!1733)

(assert (=> b!277648 (= lt!138035 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277649 () Bool)

(declare-fun res!141532 () Bool)

(assert (=> b!277649 (=> (not res!141532) (not e!177132))))

(assert (=> b!277649 (= res!141532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277650 () Bool)

(assert (=> b!277650 (= e!177132 false)))

(declare-fun lt!138034 () Unit!8769)

(assert (=> b!277650 (= lt!138034 e!177131)))

(declare-fun c!45608 () Bool)

(assert (=> b!277650 (= c!45608 (bvslt startIndex!26 (bvsub (size!6916 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277651 () Bool)

(declare-fun Unit!8771 () Unit!8769)

(assert (=> b!277651 (= e!177131 Unit!8771)))

(declare-fun b!277652 () Bool)

(declare-fun res!141534 () Bool)

(assert (=> b!277652 (=> (not res!141534) (not e!177132))))

(assert (=> b!277652 (= res!141534 (= startIndex!26 i!1267))))

(declare-fun b!277653 () Bool)

(declare-fun res!141533 () Bool)

(assert (=> b!277653 (=> (not res!141533) (not e!177133))))

(declare-fun arrayContainsKey!0 (array!13830 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277653 (= res!141533 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26744 res!141536) b!277647))

(assert (= (and b!277647 res!141530) b!277644))

(assert (= (and b!277644 res!141537) b!277645))

(assert (= (and b!277645 res!141531) b!277653))

(assert (= (and b!277653 res!141533) b!277648))

(assert (= (and b!277648 res!141535) b!277649))

(assert (= (and b!277649 res!141532) b!277652))

(assert (= (and b!277652 res!141534) b!277650))

(assert (= (and b!277650 c!45608) b!277646))

(assert (= (and b!277650 (not c!45608)) b!277651))

(declare-fun m!292649 () Bool)

(assert (=> b!277645 m!292649))

(declare-fun m!292651 () Bool)

(assert (=> b!277644 m!292651))

(declare-fun m!292653 () Bool)

(assert (=> start!26744 m!292653))

(declare-fun m!292655 () Bool)

(assert (=> start!26744 m!292655))

(declare-fun m!292657 () Bool)

(assert (=> b!277653 m!292657))

(declare-fun m!292659 () Bool)

(assert (=> b!277649 m!292659))

(declare-fun m!292661 () Bool)

(assert (=> b!277646 m!292661))

(declare-fun m!292663 () Bool)

(assert (=> b!277646 m!292663))

(declare-fun m!292665 () Bool)

(assert (=> b!277646 m!292665))

(declare-fun m!292667 () Bool)

(assert (=> b!277648 m!292667))

(push 1)

(assert (not b!277644))

(assert (not b!277648))

(assert (not b!277649))

(assert (not b!277653))

(assert (not b!277646))

(assert (not start!26744))

(assert (not b!277645))

