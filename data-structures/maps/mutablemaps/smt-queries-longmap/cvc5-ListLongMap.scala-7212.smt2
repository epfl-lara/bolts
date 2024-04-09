; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92370 () Bool)

(assert start!92370)

(declare-fun b!1049484 () Bool)

(declare-fun res!698726 () Bool)

(declare-fun e!595494 () Bool)

(assert (=> b!1049484 (=> (not res!698726) (not e!595494))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049484 (= res!698726 (validKeyInArray!0 k!2747))))

(declare-fun b!1049485 () Bool)

(declare-fun e!595496 () Bool)

(declare-fun e!595490 () Bool)

(assert (=> b!1049485 (= e!595496 e!595490)))

(declare-fun res!698728 () Bool)

(assert (=> b!1049485 (=> (not res!698728) (not e!595490))))

(declare-fun lt!463532 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049485 (= res!698728 (not (= lt!463532 i!1381)))))

(declare-datatypes ((array!66119 0))(
  ( (array!66120 (arr!31795 (Array (_ BitVec 32) (_ BitVec 64))) (size!32332 (_ BitVec 32))) )
))
(declare-fun lt!463533 () array!66119)

(declare-fun arrayScanForKey!0 (array!66119 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049485 (= lt!463532 (arrayScanForKey!0 lt!463533 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049486 () Bool)

(declare-fun e!595495 () Bool)

(assert (=> b!1049486 (= e!595495 true)))

(declare-fun lt!463531 () Bool)

(declare-datatypes ((List!22238 0))(
  ( (Nil!22235) (Cons!22234 (h!23443 (_ BitVec 64)) (t!31552 List!22238)) )
))
(declare-fun contains!6130 (List!22238 (_ BitVec 64)) Bool)

(assert (=> b!1049486 (= lt!463531 (contains!6130 Nil!22235 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049487 () Bool)

(declare-fun res!698729 () Bool)

(assert (=> b!1049487 (=> (not res!698729) (not e!595494))))

(declare-fun a!3488 () array!66119)

(assert (=> b!1049487 (= res!698729 (= (select (arr!31795 a!3488) i!1381) k!2747))))

(declare-fun b!1049488 () Bool)

(declare-fun res!698723 () Bool)

(assert (=> b!1049488 (=> res!698723 e!595495)))

(declare-fun noDuplicate!1515 (List!22238) Bool)

(assert (=> b!1049488 (= res!698723 (not (noDuplicate!1515 Nil!22235)))))

(declare-fun res!698721 () Bool)

(assert (=> start!92370 (=> (not res!698721) (not e!595494))))

(assert (=> start!92370 (= res!698721 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32332 a!3488)) (bvslt (size!32332 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92370 e!595494))

(assert (=> start!92370 true))

(declare-fun array_inv!24417 (array!66119) Bool)

(assert (=> start!92370 (array_inv!24417 a!3488)))

(declare-fun b!1049489 () Bool)

(declare-fun e!595489 () Bool)

(declare-fun arrayContainsKey!0 (array!66119 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049489 (= e!595489 (arrayContainsKey!0 a!3488 k!2747 lt!463532))))

(declare-fun b!1049490 () Bool)

(declare-fun res!698722 () Bool)

(assert (=> b!1049490 (=> res!698722 e!595495)))

(assert (=> b!1049490 (= res!698722 (contains!6130 Nil!22235 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049491 () Bool)

(declare-fun e!595493 () Bool)

(assert (=> b!1049491 (= e!595490 (not e!595493))))

(declare-fun res!698725 () Bool)

(assert (=> b!1049491 (=> res!698725 e!595493)))

(assert (=> b!1049491 (= res!698725 (bvsle lt!463532 i!1381))))

(declare-fun e!595491 () Bool)

(assert (=> b!1049491 e!595491))

(declare-fun res!698730 () Bool)

(assert (=> b!1049491 (=> (not res!698730) (not e!595491))))

(assert (=> b!1049491 (= res!698730 (= (select (store (arr!31795 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463532) k!2747))))

(declare-fun b!1049492 () Bool)

(declare-fun res!698724 () Bool)

(assert (=> b!1049492 (=> (not res!698724) (not e!595494))))

(declare-fun arrayNoDuplicates!0 (array!66119 (_ BitVec 32) List!22238) Bool)

(assert (=> b!1049492 (= res!698724 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22235))))

(declare-fun b!1049493 () Bool)

(assert (=> b!1049493 (= e!595493 e!595495)))

(declare-fun res!698720 () Bool)

(assert (=> b!1049493 (=> res!698720 e!595495)))

(assert (=> b!1049493 (= res!698720 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32332 a!3488)))))

(assert (=> b!1049493 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34319 0))(
  ( (Unit!34320) )
))
(declare-fun lt!463530 () Unit!34319)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66119 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34319)

(assert (=> b!1049493 (= lt!463530 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463532 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049493 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22235)))

(declare-fun lt!463534 () Unit!34319)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66119 (_ BitVec 32) (_ BitVec 32)) Unit!34319)

(assert (=> b!1049493 (= lt!463534 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049494 () Bool)

(assert (=> b!1049494 (= e!595491 e!595489)))

(declare-fun res!698727 () Bool)

(assert (=> b!1049494 (=> res!698727 e!595489)))

(assert (=> b!1049494 (= res!698727 (bvsle lt!463532 i!1381))))

(declare-fun b!1049495 () Bool)

(assert (=> b!1049495 (= e!595494 e!595496)))

(declare-fun res!698719 () Bool)

(assert (=> b!1049495 (=> (not res!698719) (not e!595496))))

(assert (=> b!1049495 (= res!698719 (arrayContainsKey!0 lt!463533 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049495 (= lt!463533 (array!66120 (store (arr!31795 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32332 a!3488)))))

(assert (= (and start!92370 res!698721) b!1049492))

(assert (= (and b!1049492 res!698724) b!1049484))

(assert (= (and b!1049484 res!698726) b!1049487))

(assert (= (and b!1049487 res!698729) b!1049495))

(assert (= (and b!1049495 res!698719) b!1049485))

(assert (= (and b!1049485 res!698728) b!1049491))

(assert (= (and b!1049491 res!698730) b!1049494))

(assert (= (and b!1049494 (not res!698727)) b!1049489))

(assert (= (and b!1049491 (not res!698725)) b!1049493))

(assert (= (and b!1049493 (not res!698720)) b!1049488))

(assert (= (and b!1049488 (not res!698723)) b!1049490))

(assert (= (and b!1049490 (not res!698722)) b!1049486))

(declare-fun m!970377 () Bool)

(assert (=> b!1049493 m!970377))

(declare-fun m!970379 () Bool)

(assert (=> b!1049493 m!970379))

(declare-fun m!970381 () Bool)

(assert (=> b!1049493 m!970381))

(declare-fun m!970383 () Bool)

(assert (=> b!1049493 m!970383))

(declare-fun m!970385 () Bool)

(assert (=> b!1049484 m!970385))

(declare-fun m!970387 () Bool)

(assert (=> b!1049487 m!970387))

(declare-fun m!970389 () Bool)

(assert (=> start!92370 m!970389))

(declare-fun m!970391 () Bool)

(assert (=> b!1049489 m!970391))

(declare-fun m!970393 () Bool)

(assert (=> b!1049486 m!970393))

(declare-fun m!970395 () Bool)

(assert (=> b!1049492 m!970395))

(declare-fun m!970397 () Bool)

(assert (=> b!1049488 m!970397))

(declare-fun m!970399 () Bool)

(assert (=> b!1049490 m!970399))

(declare-fun m!970401 () Bool)

(assert (=> b!1049491 m!970401))

(declare-fun m!970403 () Bool)

(assert (=> b!1049491 m!970403))

(declare-fun m!970405 () Bool)

(assert (=> b!1049485 m!970405))

(declare-fun m!970407 () Bool)

(assert (=> b!1049495 m!970407))

(assert (=> b!1049495 m!970401))

(push 1)

