; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92530 () Bool)

(assert start!92530)

(declare-fun b!1051779 () Bool)

(declare-fun e!597133 () Bool)

(declare-fun e!597137 () Bool)

(assert (=> b!1051779 (= e!597133 e!597137)))

(declare-fun res!701024 () Bool)

(assert (=> b!1051779 (=> res!701024 e!597137)))

(declare-fun lt!464437 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1051779 (= res!701024 (or (bvsgt lt!464437 i!1381) (bvsle i!1381 lt!464437)))))

(declare-fun b!1051780 () Bool)

(declare-fun e!597136 () Bool)

(declare-fun e!597134 () Bool)

(assert (=> b!1051780 (= e!597136 e!597134)))

(declare-fun res!701018 () Bool)

(assert (=> b!1051780 (=> (not res!701018) (not e!597134))))

(assert (=> b!1051780 (= res!701018 (not (= lt!464437 i!1381)))))

(declare-datatypes ((array!66279 0))(
  ( (array!66280 (arr!31875 (Array (_ BitVec 32) (_ BitVec 64))) (size!32412 (_ BitVec 32))) )
))
(declare-fun lt!464432 () array!66279)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66279 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051780 (= lt!464437 (arrayScanForKey!0 lt!464432 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051781 () Bool)

(declare-fun e!597131 () Bool)

(assert (=> b!1051781 (= e!597131 true)))

(declare-fun lt!464433 () Bool)

(declare-datatypes ((List!22318 0))(
  ( (Nil!22315) (Cons!22314 (h!23523 (_ BitVec 64)) (t!31632 List!22318)) )
))
(declare-fun contains!6159 (List!22318 (_ BitVec 64)) Bool)

(assert (=> b!1051781 (= lt!464433 (contains!6159 Nil!22315 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051782 () Bool)

(declare-fun a!3488 () array!66279)

(declare-fun arrayContainsKey!0 (array!66279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051782 (= e!597137 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1051783 () Bool)

(declare-fun e!597132 () Bool)

(assert (=> b!1051783 (= e!597134 (not e!597132))))

(declare-fun res!701023 () Bool)

(assert (=> b!1051783 (=> res!701023 e!597132)))

(assert (=> b!1051783 (= res!701023 (or (bvsgt lt!464437 i!1381) (bvsle i!1381 lt!464437)))))

(assert (=> b!1051783 e!597133))

(declare-fun res!701017 () Bool)

(assert (=> b!1051783 (=> (not res!701017) (not e!597133))))

(assert (=> b!1051783 (= res!701017 (= (select (store (arr!31875 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464437) k!2747))))

(declare-fun b!1051784 () Bool)

(declare-fun res!701020 () Bool)

(declare-fun e!597135 () Bool)

(assert (=> b!1051784 (=> (not res!701020) (not e!597135))))

(assert (=> b!1051784 (= res!701020 (= (select (arr!31875 a!3488) i!1381) k!2747))))

(declare-fun b!1051785 () Bool)

(declare-fun res!701019 () Bool)

(assert (=> b!1051785 (=> res!701019 e!597131)))

(assert (=> b!1051785 (= res!701019 (contains!6159 Nil!22315 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1051786 () Bool)

(declare-fun res!701016 () Bool)

(assert (=> b!1051786 (=> (not res!701016) (not e!597135))))

(declare-fun arrayNoDuplicates!0 (array!66279 (_ BitVec 32) List!22318) Bool)

(assert (=> b!1051786 (= res!701016 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22315))))

(declare-fun b!1051787 () Bool)

(declare-fun res!701014 () Bool)

(assert (=> b!1051787 (=> (not res!701014) (not e!597135))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051787 (= res!701014 (validKeyInArray!0 k!2747))))

(declare-fun res!701025 () Bool)

(assert (=> start!92530 (=> (not res!701025) (not e!597135))))

(assert (=> start!92530 (= res!701025 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32412 a!3488)) (bvslt (size!32412 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92530 e!597135))

(assert (=> start!92530 true))

(declare-fun array_inv!24497 (array!66279) Bool)

(assert (=> start!92530 (array_inv!24497 a!3488)))

(declare-fun b!1051788 () Bool)

(assert (=> b!1051788 (= e!597135 e!597136)))

(declare-fun res!701021 () Bool)

(assert (=> b!1051788 (=> (not res!701021) (not e!597136))))

(assert (=> b!1051788 (= res!701021 (arrayContainsKey!0 lt!464432 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051788 (= lt!464432 (array!66280 (store (arr!31875 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32412 a!3488)))))

(declare-fun b!1051789 () Bool)

(declare-fun res!701015 () Bool)

(assert (=> b!1051789 (=> res!701015 e!597131)))

(declare-fun noDuplicate!1544 (List!22318) Bool)

(assert (=> b!1051789 (= res!701015 (not (noDuplicate!1544 Nil!22315)))))

(declare-fun b!1051790 () Bool)

(assert (=> b!1051790 (= e!597132 e!597131)))

(declare-fun res!701022 () Bool)

(assert (=> b!1051790 (=> res!701022 e!597131)))

(declare-fun lt!464436 () (_ BitVec 32))

(assert (=> b!1051790 (= res!701022 (or (bvslt lt!464437 #b00000000000000000000000000000000) (bvsge lt!464436 (size!32412 a!3488)) (bvsge lt!464437 (size!32412 a!3488))))))

(assert (=> b!1051790 (arrayContainsKey!0 a!3488 k!2747 lt!464436)))

(declare-datatypes ((Unit!34431 0))(
  ( (Unit!34432) )
))
(declare-fun lt!464435 () Unit!34431)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66279 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34431)

(assert (=> b!1051790 (= lt!464435 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464436))))

(assert (=> b!1051790 (= lt!464436 (bvadd #b00000000000000000000000000000001 lt!464437))))

(assert (=> b!1051790 (arrayNoDuplicates!0 a!3488 lt!464437 Nil!22315)))

(declare-fun lt!464434 () Unit!34431)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66279 (_ BitVec 32) (_ BitVec 32)) Unit!34431)

(assert (=> b!1051790 (= lt!464434 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464437))))

(assert (= (and start!92530 res!701025) b!1051786))

(assert (= (and b!1051786 res!701016) b!1051787))

(assert (= (and b!1051787 res!701014) b!1051784))

(assert (= (and b!1051784 res!701020) b!1051788))

(assert (= (and b!1051788 res!701021) b!1051780))

(assert (= (and b!1051780 res!701018) b!1051783))

(assert (= (and b!1051783 res!701017) b!1051779))

(assert (= (and b!1051779 (not res!701024)) b!1051782))

(assert (= (and b!1051783 (not res!701023)) b!1051790))

(assert (= (and b!1051790 (not res!701022)) b!1051789))

(assert (= (and b!1051789 (not res!701015)) b!1051785))

(assert (= (and b!1051785 (not res!701019)) b!1051781))

(declare-fun m!972367 () Bool)

(assert (=> b!1051784 m!972367))

(declare-fun m!972369 () Bool)

(assert (=> b!1051788 m!972369))

(declare-fun m!972371 () Bool)

(assert (=> b!1051788 m!972371))

(declare-fun m!972373 () Bool)

(assert (=> b!1051781 m!972373))

(assert (=> b!1051783 m!972371))

(declare-fun m!972375 () Bool)

(assert (=> b!1051783 m!972375))

(declare-fun m!972377 () Bool)

(assert (=> b!1051787 m!972377))

(declare-fun m!972379 () Bool)

(assert (=> b!1051782 m!972379))

(declare-fun m!972381 () Bool)

(assert (=> b!1051785 m!972381))

(declare-fun m!972383 () Bool)

(assert (=> start!92530 m!972383))

(declare-fun m!972385 () Bool)

(assert (=> b!1051780 m!972385))

(declare-fun m!972387 () Bool)

(assert (=> b!1051789 m!972387))

(declare-fun m!972389 () Bool)

(assert (=> b!1051786 m!972389))

(declare-fun m!972391 () Bool)

(assert (=> b!1051790 m!972391))

(declare-fun m!972393 () Bool)

(assert (=> b!1051790 m!972393))

(declare-fun m!972395 () Bool)

(assert (=> b!1051790 m!972395))

(declare-fun m!972397 () Bool)

(assert (=> b!1051790 m!972397))

(push 1)

