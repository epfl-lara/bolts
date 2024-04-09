; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92366 () Bool)

(assert start!92366)

(declare-fun b!1049412 () Bool)

(declare-fun e!595446 () Bool)

(declare-fun e!595447 () Bool)

(assert (=> b!1049412 (= e!595446 e!595447)))

(declare-fun res!698658 () Bool)

(assert (=> b!1049412 (=> (not res!698658) (not e!595447))))

(declare-datatypes ((array!66115 0))(
  ( (array!66116 (arr!31793 (Array (_ BitVec 32) (_ BitVec 64))) (size!32330 (_ BitVec 32))) )
))
(declare-fun lt!463503 () array!66115)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049412 (= res!698658 (arrayContainsKey!0 lt!463503 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66115)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049412 (= lt!463503 (array!66116 (store (arr!31793 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32330 a!3488)))))

(declare-fun b!1049413 () Bool)

(declare-fun res!698655 () Bool)

(declare-fun e!595441 () Bool)

(assert (=> b!1049413 (=> res!698655 e!595441)))

(declare-datatypes ((List!22236 0))(
  ( (Nil!22233) (Cons!22232 (h!23441 (_ BitVec 64)) (t!31550 List!22236)) )
))
(declare-fun noDuplicate!1513 (List!22236) Bool)

(assert (=> b!1049413 (= res!698655 (not (noDuplicate!1513 Nil!22233)))))

(declare-fun res!698650 () Bool)

(assert (=> start!92366 (=> (not res!698650) (not e!595446))))

(assert (=> start!92366 (= res!698650 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32330 a!3488)) (bvslt (size!32330 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92366 e!595446))

(assert (=> start!92366 true))

(declare-fun array_inv!24415 (array!66115) Bool)

(assert (=> start!92366 (array_inv!24415 a!3488)))

(declare-fun b!1049414 () Bool)

(declare-fun res!698649 () Bool)

(assert (=> b!1049414 (=> (not res!698649) (not e!595446))))

(declare-fun arrayNoDuplicates!0 (array!66115 (_ BitVec 32) List!22236) Bool)

(assert (=> b!1049414 (= res!698649 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22233))))

(declare-fun lt!463504 () (_ BitVec 32))

(declare-fun b!1049415 () Bool)

(declare-fun e!595442 () Bool)

(assert (=> b!1049415 (= e!595442 (arrayContainsKey!0 a!3488 k0!2747 lt!463504))))

(declare-fun b!1049416 () Bool)

(declare-fun res!698653 () Bool)

(assert (=> b!1049416 (=> (not res!698653) (not e!595446))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049416 (= res!698653 (validKeyInArray!0 k0!2747))))

(declare-fun b!1049417 () Bool)

(declare-fun e!595443 () Bool)

(assert (=> b!1049417 (= e!595447 e!595443)))

(declare-fun res!698647 () Bool)

(assert (=> b!1049417 (=> (not res!698647) (not e!595443))))

(assert (=> b!1049417 (= res!698647 (not (= lt!463504 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66115 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049417 (= lt!463504 (arrayScanForKey!0 lt!463503 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049418 () Bool)

(assert (=> b!1049418 (= e!595441 true)))

(declare-fun lt!463502 () Bool)

(declare-fun contains!6128 (List!22236 (_ BitVec 64)) Bool)

(assert (=> b!1049418 (= lt!463502 (contains!6128 Nil!22233 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049419 () Bool)

(declare-fun res!698651 () Bool)

(assert (=> b!1049419 (=> (not res!698651) (not e!595446))))

(assert (=> b!1049419 (= res!698651 (= (select (arr!31793 a!3488) i!1381) k0!2747))))

(declare-fun b!1049420 () Bool)

(declare-fun e!595448 () Bool)

(assert (=> b!1049420 (= e!595448 e!595442)))

(declare-fun res!698652 () Bool)

(assert (=> b!1049420 (=> res!698652 e!595442)))

(assert (=> b!1049420 (= res!698652 (bvsle lt!463504 i!1381))))

(declare-fun b!1049421 () Bool)

(declare-fun e!595445 () Bool)

(assert (=> b!1049421 (= e!595443 (not e!595445))))

(declare-fun res!698648 () Bool)

(assert (=> b!1049421 (=> res!698648 e!595445)))

(assert (=> b!1049421 (= res!698648 (bvsle lt!463504 i!1381))))

(assert (=> b!1049421 e!595448))

(declare-fun res!698656 () Bool)

(assert (=> b!1049421 (=> (not res!698656) (not e!595448))))

(assert (=> b!1049421 (= res!698656 (= (select (store (arr!31793 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463504) k0!2747))))

(declare-fun b!1049422 () Bool)

(assert (=> b!1049422 (= e!595445 e!595441)))

(declare-fun res!698654 () Bool)

(assert (=> b!1049422 (=> res!698654 e!595441)))

(assert (=> b!1049422 (= res!698654 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32330 a!3488)))))

(assert (=> b!1049422 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34315 0))(
  ( (Unit!34316) )
))
(declare-fun lt!463501 () Unit!34315)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66115 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34315)

(assert (=> b!1049422 (= lt!463501 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463504 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049422 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22233)))

(declare-fun lt!463500 () Unit!34315)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66115 (_ BitVec 32) (_ BitVec 32)) Unit!34315)

(assert (=> b!1049422 (= lt!463500 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049423 () Bool)

(declare-fun res!698657 () Bool)

(assert (=> b!1049423 (=> res!698657 e!595441)))

(assert (=> b!1049423 (= res!698657 (contains!6128 Nil!22233 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92366 res!698650) b!1049414))

(assert (= (and b!1049414 res!698649) b!1049416))

(assert (= (and b!1049416 res!698653) b!1049419))

(assert (= (and b!1049419 res!698651) b!1049412))

(assert (= (and b!1049412 res!698658) b!1049417))

(assert (= (and b!1049417 res!698647) b!1049421))

(assert (= (and b!1049421 res!698656) b!1049420))

(assert (= (and b!1049420 (not res!698652)) b!1049415))

(assert (= (and b!1049421 (not res!698648)) b!1049422))

(assert (= (and b!1049422 (not res!698654)) b!1049413))

(assert (= (and b!1049413 (not res!698655)) b!1049423))

(assert (= (and b!1049423 (not res!698657)) b!1049418))

(declare-fun m!970313 () Bool)

(assert (=> b!1049413 m!970313))

(declare-fun m!970315 () Bool)

(assert (=> b!1049412 m!970315))

(declare-fun m!970317 () Bool)

(assert (=> b!1049412 m!970317))

(declare-fun m!970319 () Bool)

(assert (=> b!1049422 m!970319))

(declare-fun m!970321 () Bool)

(assert (=> b!1049422 m!970321))

(declare-fun m!970323 () Bool)

(assert (=> b!1049422 m!970323))

(declare-fun m!970325 () Bool)

(assert (=> b!1049422 m!970325))

(declare-fun m!970327 () Bool)

(assert (=> b!1049414 m!970327))

(assert (=> b!1049421 m!970317))

(declare-fun m!970329 () Bool)

(assert (=> b!1049421 m!970329))

(declare-fun m!970331 () Bool)

(assert (=> b!1049423 m!970331))

(declare-fun m!970333 () Bool)

(assert (=> b!1049415 m!970333))

(declare-fun m!970335 () Bool)

(assert (=> start!92366 m!970335))

(declare-fun m!970337 () Bool)

(assert (=> b!1049419 m!970337))

(declare-fun m!970339 () Bool)

(assert (=> b!1049417 m!970339))

(declare-fun m!970341 () Bool)

(assert (=> b!1049418 m!970341))

(declare-fun m!970343 () Bool)

(assert (=> b!1049416 m!970343))

(check-sat (not b!1049416) (not b!1049412) (not b!1049422) (not b!1049423) (not b!1049415) (not b!1049417) (not b!1049413) (not b!1049418) (not b!1049414) (not start!92366))
(check-sat)
