; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26138 () Bool)

(assert start!26138)

(declare-fun res!133817 () Bool)

(declare-fun e!173920 () Bool)

(assert (=> start!26138 (=> (not res!133817) (not e!173920))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26138 (= res!133817 (validMask!0 mask!3868))))

(assert (=> start!26138 e!173920))

(declare-datatypes ((array!13224 0))(
  ( (array!13225 (arr!6261 (Array (_ BitVec 32) (_ BitVec 64))) (size!6613 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13224)

(declare-fun array_inv!4215 (array!13224) Bool)

(assert (=> start!26138 (array_inv!4215 a!3325)))

(assert (=> start!26138 true))

(declare-fun b!269625 () Bool)

(declare-fun res!133823 () Bool)

(declare-fun e!173918 () Bool)

(assert (=> b!269625 (=> (not res!133823) (not e!173918))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13224 (_ BitVec 32)) Bool)

(assert (=> b!269625 (= res!133823 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!269626 () Bool)

(declare-fun res!133818 () Bool)

(assert (=> b!269626 (=> (not res!133818) (not e!173920))))

(declare-datatypes ((List!4090 0))(
  ( (Nil!4087) (Cons!4086 (h!4753 (_ BitVec 64)) (t!9180 List!4090)) )
))
(declare-fun arrayNoDuplicates!0 (array!13224 (_ BitVec 32) List!4090) Bool)

(assert (=> b!269626 (= res!133818 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4087))))

(declare-fun b!269627 () Bool)

(declare-fun res!133822 () Bool)

(assert (=> b!269627 (=> (not res!133822) (not e!173920))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!269627 (= res!133822 (and (= (size!6613 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6613 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6613 a!3325))))))

(declare-fun b!269628 () Bool)

(declare-fun res!133820 () Bool)

(assert (=> b!269628 (=> (not res!133820) (not e!173920))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!269628 (= res!133820 (validKeyInArray!0 k!2581))))

(declare-fun b!269629 () Bool)

(declare-datatypes ((Unit!8364 0))(
  ( (Unit!8365) )
))
(declare-fun e!173919 () Unit!8364)

(declare-fun lt!135289 () Unit!8364)

(assert (=> b!269629 (= e!173919 lt!135289)))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13224 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8364)

(assert (=> b!269629 (= lt!135289 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(assert (=> b!269629 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13225 (store (arr!6261 a!3325) i!1267 k!2581) (size!6613 a!3325)) mask!3868)))

(declare-fun b!269630 () Bool)

(declare-fun res!133821 () Bool)

(assert (=> b!269630 (=> (not res!133821) (not e!173918))))

(assert (=> b!269630 (= res!133821 (= startIndex!26 i!1267))))

(declare-fun b!269631 () Bool)

(declare-fun Unit!8366 () Unit!8364)

(assert (=> b!269631 (= e!173919 Unit!8366)))

(declare-fun b!269632 () Bool)

(declare-fun res!133824 () Bool)

(assert (=> b!269632 (=> (not res!133824) (not e!173920))))

(declare-fun arrayContainsKey!0 (array!13224 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!269632 (= res!133824 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!269633 () Bool)

(assert (=> b!269633 (= e!173918 false)))

(declare-fun lt!135290 () Unit!8364)

(assert (=> b!269633 (= lt!135290 e!173919)))

(declare-fun c!45455 () Bool)

(assert (=> b!269633 (= c!45455 (bvslt startIndex!26 (bvsub (size!6613 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!269634 () Bool)

(assert (=> b!269634 (= e!173920 e!173918)))

(declare-fun res!133819 () Bool)

(assert (=> b!269634 (=> (not res!133819) (not e!173918))))

(declare-datatypes ((SeekEntryResult!1430 0))(
  ( (MissingZero!1430 (index!7890 (_ BitVec 32))) (Found!1430 (index!7891 (_ BitVec 32))) (Intermediate!1430 (undefined!2242 Bool) (index!7892 (_ BitVec 32)) (x!26203 (_ BitVec 32))) (Undefined!1430) (MissingVacant!1430 (index!7893 (_ BitVec 32))) )
))
(declare-fun lt!135288 () SeekEntryResult!1430)

(assert (=> b!269634 (= res!133819 (or (= lt!135288 (MissingZero!1430 i!1267)) (= lt!135288 (MissingVacant!1430 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13224 (_ BitVec 32)) SeekEntryResult!1430)

(assert (=> b!269634 (= lt!135288 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26138 res!133817) b!269627))

(assert (= (and b!269627 res!133822) b!269628))

(assert (= (and b!269628 res!133820) b!269626))

(assert (= (and b!269626 res!133818) b!269632))

(assert (= (and b!269632 res!133824) b!269634))

(assert (= (and b!269634 res!133819) b!269625))

(assert (= (and b!269625 res!133823) b!269630))

(assert (= (and b!269630 res!133821) b!269633))

(assert (= (and b!269633 c!45455) b!269629))

(assert (= (and b!269633 (not c!45455)) b!269631))

(declare-fun m!285449 () Bool)

(assert (=> b!269634 m!285449))

(declare-fun m!285451 () Bool)

(assert (=> b!269632 m!285451))

(declare-fun m!285453 () Bool)

(assert (=> b!269629 m!285453))

(declare-fun m!285455 () Bool)

(assert (=> b!269629 m!285455))

(declare-fun m!285457 () Bool)

(assert (=> b!269629 m!285457))

(declare-fun m!285459 () Bool)

(assert (=> start!26138 m!285459))

(declare-fun m!285461 () Bool)

(assert (=> start!26138 m!285461))

(declare-fun m!285463 () Bool)

(assert (=> b!269625 m!285463))

(declare-fun m!285465 () Bool)

(assert (=> b!269626 m!285465))

(declare-fun m!285467 () Bool)

(assert (=> b!269628 m!285467))

(push 1)

(assert (not b!269629))

(assert (not b!269628))

(assert (not b!269626))

(assert (not b!269634))

(assert (not start!26138))

(assert (not b!269625))

(assert (not b!269632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

