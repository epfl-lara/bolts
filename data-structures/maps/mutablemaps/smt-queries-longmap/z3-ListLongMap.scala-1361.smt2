; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26736 () Bool)

(assert start!26736)

(declare-fun b!277524 () Bool)

(declare-datatypes ((Unit!8757 0))(
  ( (Unit!8758) )
))
(declare-fun e!177082 () Unit!8757)

(declare-fun lt!137999 () Unit!8757)

(assert (=> b!277524 (= e!177082 lt!137999)))

(declare-datatypes ((array!13822 0))(
  ( (array!13823 (arr!6560 (Array (_ BitVec 32) (_ BitVec 64))) (size!6912 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13822)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13822 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8757)

(assert (=> b!277524 (= lt!137999 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13822 (_ BitVec 32)) Bool)

(assert (=> b!277524 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13823 (store (arr!6560 a!3325) i!1267 k0!2581) (size!6912 a!3325)) mask!3868)))

(declare-fun b!277525 () Bool)

(declare-fun res!141437 () Bool)

(declare-fun e!177085 () Bool)

(assert (=> b!277525 (=> (not res!141437) (not e!177085))))

(declare-datatypes ((List!4389 0))(
  ( (Nil!4386) (Cons!4385 (h!5052 (_ BitVec 64)) (t!9479 List!4389)) )
))
(declare-fun arrayNoDuplicates!0 (array!13822 (_ BitVec 32) List!4389) Bool)

(assert (=> b!277525 (= res!141437 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4386))))

(declare-fun b!277526 () Bool)

(declare-fun res!141441 () Bool)

(declare-fun e!177083 () Bool)

(assert (=> b!277526 (=> (not res!141441) (not e!177083))))

(assert (=> b!277526 (= res!141441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!277527 () Bool)

(declare-fun res!141434 () Bool)

(assert (=> b!277527 (=> (not res!141434) (not e!177085))))

(assert (=> b!277527 (= res!141434 (and (= (size!6912 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6912 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6912 a!3325))))))

(declare-fun res!141436 () Bool)

(assert (=> start!26736 (=> (not res!141436) (not e!177085))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26736 (= res!141436 (validMask!0 mask!3868))))

(assert (=> start!26736 e!177085))

(declare-fun array_inv!4514 (array!13822) Bool)

(assert (=> start!26736 (array_inv!4514 a!3325)))

(assert (=> start!26736 true))

(declare-fun b!277528 () Bool)

(assert (=> b!277528 (= e!177083 false)))

(declare-fun lt!137998 () Unit!8757)

(assert (=> b!277528 (= lt!137998 e!177082)))

(declare-fun c!45596 () Bool)

(assert (=> b!277528 (= c!45596 (bvslt startIndex!26 (bvsub (size!6912 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!277529 () Bool)

(assert (=> b!277529 (= e!177085 e!177083)))

(declare-fun res!141439 () Bool)

(assert (=> b!277529 (=> (not res!141439) (not e!177083))))

(declare-datatypes ((SeekEntryResult!1729 0))(
  ( (MissingZero!1729 (index!9086 (_ BitVec 32))) (Found!1729 (index!9087 (_ BitVec 32))) (Intermediate!1729 (undefined!2541 Bool) (index!9088 (_ BitVec 32)) (x!27302 (_ BitVec 32))) (Undefined!1729) (MissingVacant!1729 (index!9089 (_ BitVec 32))) )
))
(declare-fun lt!137997 () SeekEntryResult!1729)

(assert (=> b!277529 (= res!141439 (or (= lt!137997 (MissingZero!1729 i!1267)) (= lt!137997 (MissingVacant!1729 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13822 (_ BitVec 32)) SeekEntryResult!1729)

(assert (=> b!277529 (= lt!137997 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!277530 () Bool)

(declare-fun res!141440 () Bool)

(assert (=> b!277530 (=> (not res!141440) (not e!177085))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!277530 (= res!141440 (validKeyInArray!0 k0!2581))))

(declare-fun b!277531 () Bool)

(declare-fun res!141435 () Bool)

(assert (=> b!277531 (=> (not res!141435) (not e!177083))))

(assert (=> b!277531 (= res!141435 (= startIndex!26 i!1267))))

(declare-fun b!277532 () Bool)

(declare-fun Unit!8759 () Unit!8757)

(assert (=> b!277532 (= e!177082 Unit!8759)))

(declare-fun b!277533 () Bool)

(declare-fun res!141438 () Bool)

(assert (=> b!277533 (=> (not res!141438) (not e!177085))))

(declare-fun arrayContainsKey!0 (array!13822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!277533 (= res!141438 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26736 res!141436) b!277527))

(assert (= (and b!277527 res!141434) b!277530))

(assert (= (and b!277530 res!141440) b!277525))

(assert (= (and b!277525 res!141437) b!277533))

(assert (= (and b!277533 res!141438) b!277529))

(assert (= (and b!277529 res!141439) b!277526))

(assert (= (and b!277526 res!141441) b!277531))

(assert (= (and b!277531 res!141435) b!277528))

(assert (= (and b!277528 c!45596) b!277524))

(assert (= (and b!277528 (not c!45596)) b!277532))

(declare-fun m!292569 () Bool)

(assert (=> b!277524 m!292569))

(declare-fun m!292571 () Bool)

(assert (=> b!277524 m!292571))

(declare-fun m!292573 () Bool)

(assert (=> b!277524 m!292573))

(declare-fun m!292575 () Bool)

(assert (=> b!277526 m!292575))

(declare-fun m!292577 () Bool)

(assert (=> b!277529 m!292577))

(declare-fun m!292579 () Bool)

(assert (=> b!277533 m!292579))

(declare-fun m!292581 () Bool)

(assert (=> start!26736 m!292581))

(declare-fun m!292583 () Bool)

(assert (=> start!26736 m!292583))

(declare-fun m!292585 () Bool)

(assert (=> b!277530 m!292585))

(declare-fun m!292587 () Bool)

(assert (=> b!277525 m!292587))

(check-sat (not b!277529) (not b!277525) (not start!26736) (not b!277524) (not b!277526) (not b!277530) (not b!277533))
(check-sat)
