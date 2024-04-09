; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26750 () Bool)

(assert start!26750)

(declare-fun b!277734 () Bool)

(declare-fun res!141603 () Bool)

(declare-fun e!177177 () Bool)

(assert (=> b!277734 (=> (not res!141603) (not e!177177))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277734 (= res!141603 (validKeyInArray!0 k!2581))))

(declare-fun b!277735 () Bool)

(declare-datatypes ((Unit!8778 0))(
  ( (Unit!8779) )
))
(declare-fun e!177174 () Unit!8778)

(declare-fun Unit!8780 () Unit!8778)

(assert (=> b!277735 (= e!177174 Unit!8780)))

(declare-fun b!277736 () Bool)

(declare-fun res!141607 () Bool)

(assert (=> b!277736 (=> (not res!141607) (not e!177177))))

(declare-datatypes ((array!13836 0))(
  ( (array!13837 (arr!6567 (Array (_ BitVec 32) (_ BitVec 64))) (size!6919 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13836)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!277736 (= res!141607 (and (= (size!6919 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6919 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6919 a!3325))))))

(declare-fun res!141602 () Bool)

(assert (=> start!26750 (=> (not res!141602) (not e!177177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26750 (= res!141602 (validMask!0 mask!3868))))

(assert (=> start!26750 e!177177))

(declare-fun array_inv!4521 (array!13836) Bool)

(assert (=> start!26750 (array_inv!4521 a!3325)))

(assert (=> start!26750 true))

(declare-fun b!277737 () Bool)

(declare-fun res!141608 () Bool)

(assert (=> b!277737 (=> (not res!141608) (not e!177177))))

(declare-datatypes ((List!4396 0))(
  ( (Nil!4393) (Cons!4392 (h!5059 (_ BitVec 64)) (t!9486 List!4396)) )
))
(declare-fun arrayNoDuplicates!0 (array!13836 (_ BitVec 32) List!4396) Bool)

(assert (=> b!277737 (= res!141608 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4393))))

(declare-fun b!277738 () Bool)

(declare-fun lt!138080 () Unit!8778)

(assert (=> b!277738 (= e!177174 lt!138080)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13836 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8778)

(assert (=> b!277738 (= lt!138080 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun lt!138077 () array!13836)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13836 (_ BitVec 32)) Bool)

(assert (=> b!277738 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!138077 mask!3868)))

(declare-fun b!277739 () Bool)

(declare-fun e!177178 () Bool)

(assert (=> b!277739 (= e!177178 (not true))))

(declare-datatypes ((SeekEntryResult!1736 0))(
  ( (MissingZero!1736 (index!9114 (_ BitVec 32))) (Found!1736 (index!9115 (_ BitVec 32))) (Intermediate!1736 (undefined!2548 Bool) (index!9116 (_ BitVec 32)) (x!27325 (_ BitVec 32))) (Undefined!1736) (MissingVacant!1736 (index!9117 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13836 (_ BitVec 32)) SeekEntryResult!1736)

(assert (=> b!277739 (= (seekEntryOrOpen!0 k!2581 lt!138077 mask!3868) (Found!1736 i!1267))))

(declare-fun lt!138076 () Unit!8778)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13836 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8778)

(assert (=> b!277739 (= lt!138076 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!138079 () Unit!8778)

(assert (=> b!277739 (= lt!138079 e!177174)))

(declare-fun c!45617 () Bool)

(assert (=> b!277739 (= c!45617 (bvslt startIndex!26 (bvsub (size!6919 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277740 () Bool)

(declare-fun res!141606 () Bool)

(assert (=> b!277740 (=> (not res!141606) (not e!177177))))

(declare-fun arrayContainsKey!0 (array!13836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277740 (= res!141606 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277741 () Bool)

(declare-fun e!177176 () Bool)

(assert (=> b!277741 (= e!177176 e!177178)))

(declare-fun res!141605 () Bool)

(assert (=> b!277741 (=> (not res!141605) (not e!177178))))

(assert (=> b!277741 (= res!141605 (= startIndex!26 i!1267))))

(assert (=> b!277741 (= lt!138077 (array!13837 (store (arr!6567 a!3325) i!1267 k!2581) (size!6919 a!3325)))))

(declare-fun b!277742 () Bool)

(assert (=> b!277742 (= e!177177 e!177176)))

(declare-fun res!141609 () Bool)

(assert (=> b!277742 (=> (not res!141609) (not e!177176))))

(declare-fun lt!138078 () SeekEntryResult!1736)

(assert (=> b!277742 (= res!141609 (or (= lt!138078 (MissingZero!1736 i!1267)) (= lt!138078 (MissingVacant!1736 i!1267))))))

(assert (=> b!277742 (= lt!138078 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!277743 () Bool)

(declare-fun res!141604 () Bool)

(assert (=> b!277743 (=> (not res!141604) (not e!177176))))

(assert (=> b!277743 (= res!141604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26750 res!141602) b!277736))

(assert (= (and b!277736 res!141607) b!277734))

(assert (= (and b!277734 res!141603) b!277737))

(assert (= (and b!277737 res!141608) b!277740))

(assert (= (and b!277740 res!141606) b!277742))

(assert (= (and b!277742 res!141609) b!277743))

(assert (= (and b!277743 res!141604) b!277741))

(assert (= (and b!277741 res!141605) b!277739))

(assert (= (and b!277739 c!45617) b!277738))

(assert (= (and b!277739 (not c!45617)) b!277735))

(declare-fun m!292717 () Bool)

(assert (=> b!277734 m!292717))

(declare-fun m!292719 () Bool)

(assert (=> b!277737 m!292719))

(declare-fun m!292721 () Bool)

(assert (=> b!277739 m!292721))

(declare-fun m!292723 () Bool)

(assert (=> b!277739 m!292723))

(declare-fun m!292725 () Bool)

(assert (=> b!277738 m!292725))

(declare-fun m!292727 () Bool)

(assert (=> b!277738 m!292727))

(declare-fun m!292729 () Bool)

(assert (=> b!277743 m!292729))

(declare-fun m!292731 () Bool)

(assert (=> start!26750 m!292731))

(declare-fun m!292733 () Bool)

(assert (=> start!26750 m!292733))

(declare-fun m!292735 () Bool)

(assert (=> b!277742 m!292735))

(declare-fun m!292737 () Bool)

(assert (=> b!277740 m!292737))

(declare-fun m!292739 () Bool)

(assert (=> b!277741 m!292739))

(push 1)

(assert (not b!277737))

(assert (not start!26750))

(assert (not b!277734))

(assert (not b!277742))

(assert (not b!277743))

