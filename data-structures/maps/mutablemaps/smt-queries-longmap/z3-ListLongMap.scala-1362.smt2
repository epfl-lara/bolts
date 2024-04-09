; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26742 () Bool)

(assert start!26742)

(declare-fun b!277614 () Bool)

(declare-fun e!177119 () Bool)

(declare-fun e!177121 () Bool)

(assert (=> b!277614 (= e!177119 e!177121)))

(declare-fun res!141507 () Bool)

(assert (=> b!277614 (=> (not res!141507) (not e!177121))))

(declare-datatypes ((SeekEntryResult!1732 0))(
  ( (MissingZero!1732 (index!9098 (_ BitVec 32))) (Found!1732 (index!9099 (_ BitVec 32))) (Intermediate!1732 (undefined!2544 Bool) (index!9100 (_ BitVec 32)) (x!27313 (_ BitVec 32))) (Undefined!1732) (MissingVacant!1732 (index!9101 (_ BitVec 32))) )
))
(declare-fun lt!138026 () SeekEntryResult!1732)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!277614 (= res!141507 (or (= lt!138026 (MissingZero!1732 i!1267)) (= lt!138026 (MissingVacant!1732 i!1267))))))

(declare-datatypes ((array!13828 0))(
  ( (array!13829 (arr!6563 (Array (_ BitVec 32) (_ BitVec 64))) (size!6915 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13828)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13828 (_ BitVec 32)) SeekEntryResult!1732)

(assert (=> b!277614 (= lt!138026 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!277615 () Bool)

(declare-fun res!141506 () Bool)

(assert (=> b!277615 (=> (not res!141506) (not e!177121))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13828 (_ BitVec 32)) Bool)

(assert (=> b!277615 (= res!141506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277616 () Bool)

(declare-fun res!141511 () Bool)

(assert (=> b!277616 (=> (not res!141511) (not e!177119))))

(declare-datatypes ((List!4392 0))(
  ( (Nil!4389) (Cons!4388 (h!5055 (_ BitVec 64)) (t!9482 List!4392)) )
))
(declare-fun arrayNoDuplicates!0 (array!13828 (_ BitVec 32) List!4392) Bool)

(assert (=> b!277616 (= res!141511 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4389))))

(declare-fun b!277617 () Bool)

(declare-datatypes ((Unit!8766 0))(
  ( (Unit!8767) )
))
(declare-fun e!177120 () Unit!8766)

(declare-fun Unit!8768 () Unit!8766)

(assert (=> b!277617 (= e!177120 Unit!8768)))

(declare-fun b!277618 () Bool)

(declare-fun res!141510 () Bool)

(assert (=> b!277618 (=> (not res!141510) (not e!177119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277618 (= res!141510 (validKeyInArray!0 k0!2581))))

(declare-fun b!277619 () Bool)

(declare-fun res!141513 () Bool)

(assert (=> b!277619 (=> (not res!141513) (not e!177121))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!277619 (= res!141513 (= startIndex!26 i!1267))))

(declare-fun res!141512 () Bool)

(assert (=> start!26742 (=> (not res!141512) (not e!177119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26742 (= res!141512 (validMask!0 mask!3868))))

(assert (=> start!26742 e!177119))

(declare-fun array_inv!4517 (array!13828) Bool)

(assert (=> start!26742 (array_inv!4517 a!3325)))

(assert (=> start!26742 true))

(declare-fun b!277620 () Bool)

(declare-fun res!141509 () Bool)

(assert (=> b!277620 (=> (not res!141509) (not e!177119))))

(declare-fun arrayContainsKey!0 (array!13828 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277620 (= res!141509 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!277621 () Bool)

(declare-fun lt!138025 () Unit!8766)

(assert (=> b!277621 (= e!177120 lt!138025)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13828 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8766)

(assert (=> b!277621 (= lt!138025 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!277621 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13829 (store (arr!6563 a!3325) i!1267 k0!2581) (size!6915 a!3325)) mask!3868)))

(declare-fun b!277622 () Bool)

(assert (=> b!277622 (= e!177121 false)))

(declare-fun lt!138024 () Unit!8766)

(assert (=> b!277622 (= lt!138024 e!177120)))

(declare-fun c!45605 () Bool)

(assert (=> b!277622 (= c!45605 (bvslt startIndex!26 (bvsub (size!6915 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277623 () Bool)

(declare-fun res!141508 () Bool)

(assert (=> b!277623 (=> (not res!141508) (not e!177119))))

(assert (=> b!277623 (= res!141508 (and (= (size!6915 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6915 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6915 a!3325))))))

(assert (= (and start!26742 res!141512) b!277623))

(assert (= (and b!277623 res!141508) b!277618))

(assert (= (and b!277618 res!141510) b!277616))

(assert (= (and b!277616 res!141511) b!277620))

(assert (= (and b!277620 res!141509) b!277614))

(assert (= (and b!277614 res!141507) b!277615))

(assert (= (and b!277615 res!141506) b!277619))

(assert (= (and b!277619 res!141513) b!277622))

(assert (= (and b!277622 c!45605) b!277621))

(assert (= (and b!277622 (not c!45605)) b!277617))

(declare-fun m!292629 () Bool)

(assert (=> b!277615 m!292629))

(declare-fun m!292631 () Bool)

(assert (=> b!277621 m!292631))

(declare-fun m!292633 () Bool)

(assert (=> b!277621 m!292633))

(declare-fun m!292635 () Bool)

(assert (=> b!277621 m!292635))

(declare-fun m!292637 () Bool)

(assert (=> b!277616 m!292637))

(declare-fun m!292639 () Bool)

(assert (=> b!277620 m!292639))

(declare-fun m!292641 () Bool)

(assert (=> start!26742 m!292641))

(declare-fun m!292643 () Bool)

(assert (=> start!26742 m!292643))

(declare-fun m!292645 () Bool)

(assert (=> b!277618 m!292645))

(declare-fun m!292647 () Bool)

(assert (=> b!277614 m!292647))

(check-sat (not b!277616) (not b!277621) (not b!277618) (not b!277620) (not b!277614) (not start!26742) (not b!277615))
(check-sat)
