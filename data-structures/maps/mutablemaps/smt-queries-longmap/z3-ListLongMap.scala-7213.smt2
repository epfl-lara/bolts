; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92378 () Bool)

(assert start!92378)

(declare-fun b!1049628 () Bool)

(declare-fun e!595592 () Bool)

(declare-fun e!595590 () Bool)

(assert (=> b!1049628 (= e!595592 e!595590)))

(declare-fun res!698865 () Bool)

(assert (=> b!1049628 (=> res!698865 e!595590)))

(declare-fun lt!463590 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049628 (= res!698865 (bvsle lt!463590 i!1381))))

(declare-fun res!698866 () Bool)

(declare-fun e!595589 () Bool)

(assert (=> start!92378 (=> (not res!698866) (not e!595589))))

(declare-datatypes ((array!66127 0))(
  ( (array!66128 (arr!31799 (Array (_ BitVec 32) (_ BitVec 64))) (size!32336 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66127)

(assert (=> start!92378 (= res!698866 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32336 a!3488)) (bvslt (size!32336 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92378 e!595589))

(assert (=> start!92378 true))

(declare-fun array_inv!24421 (array!66127) Bool)

(assert (=> start!92378 (array_inv!24421 a!3488)))

(declare-fun b!1049629 () Bool)

(declare-fun e!595588 () Bool)

(declare-fun e!595586 () Bool)

(assert (=> b!1049629 (= e!595588 e!595586)))

(declare-fun res!698863 () Bool)

(assert (=> b!1049629 (=> (not res!698863) (not e!595586))))

(assert (=> b!1049629 (= res!698863 (not (= lt!463590 i!1381)))))

(declare-fun lt!463593 () array!66127)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66127 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049629 (= lt!463590 (arrayScanForKey!0 lt!463593 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049630 () Bool)

(declare-fun arrayContainsKey!0 (array!66127 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049630 (= e!595590 (arrayContainsKey!0 a!3488 k0!2747 lt!463590))))

(declare-fun b!1049631 () Bool)

(declare-fun res!698871 () Bool)

(assert (=> b!1049631 (=> (not res!698871) (not e!595589))))

(declare-datatypes ((List!22242 0))(
  ( (Nil!22239) (Cons!22238 (h!23447 (_ BitVec 64)) (t!31556 List!22242)) )
))
(declare-fun arrayNoDuplicates!0 (array!66127 (_ BitVec 32) List!22242) Bool)

(assert (=> b!1049631 (= res!698871 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22239))))

(declare-fun b!1049632 () Bool)

(declare-fun e!595591 () Bool)

(declare-fun e!595585 () Bool)

(assert (=> b!1049632 (= e!595591 e!595585)))

(declare-fun res!698869 () Bool)

(assert (=> b!1049632 (=> res!698869 e!595585)))

(assert (=> b!1049632 (= res!698869 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32336 a!3488)))))

(assert (=> b!1049632 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34327 0))(
  ( (Unit!34328) )
))
(declare-fun lt!463594 () Unit!34327)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66127 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34327)

(assert (=> b!1049632 (= lt!463594 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463590 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049632 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22239)))

(declare-fun lt!463592 () Unit!34327)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66127 (_ BitVec 32) (_ BitVec 32)) Unit!34327)

(assert (=> b!1049632 (= lt!463592 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049633 () Bool)

(declare-fun res!698872 () Bool)

(assert (=> b!1049633 (=> (not res!698872) (not e!595589))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049633 (= res!698872 (validKeyInArray!0 k0!2747))))

(declare-fun b!1049634 () Bool)

(declare-fun res!698864 () Bool)

(assert (=> b!1049634 (=> (not res!698864) (not e!595589))))

(assert (=> b!1049634 (= res!698864 (= (select (arr!31799 a!3488) i!1381) k0!2747))))

(declare-fun b!1049635 () Bool)

(assert (=> b!1049635 (= e!595589 e!595588)))

(declare-fun res!698868 () Bool)

(assert (=> b!1049635 (=> (not res!698868) (not e!595588))))

(assert (=> b!1049635 (= res!698868 (arrayContainsKey!0 lt!463593 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049635 (= lt!463593 (array!66128 (store (arr!31799 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32336 a!3488)))))

(declare-fun b!1049636 () Bool)

(assert (=> b!1049636 (= e!595585 true)))

(declare-fun lt!463591 () Bool)

(declare-fun contains!6134 (List!22242 (_ BitVec 64)) Bool)

(assert (=> b!1049636 (= lt!463591 (contains!6134 Nil!22239 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049637 () Bool)

(declare-fun res!698874 () Bool)

(assert (=> b!1049637 (=> res!698874 e!595585)))

(declare-fun noDuplicate!1519 (List!22242) Bool)

(assert (=> b!1049637 (= res!698874 (not (noDuplicate!1519 Nil!22239)))))

(declare-fun b!1049638 () Bool)

(declare-fun res!698867 () Bool)

(assert (=> b!1049638 (=> res!698867 e!595585)))

(assert (=> b!1049638 (= res!698867 (contains!6134 Nil!22239 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049639 () Bool)

(assert (=> b!1049639 (= e!595586 (not e!595591))))

(declare-fun res!698870 () Bool)

(assert (=> b!1049639 (=> res!698870 e!595591)))

(assert (=> b!1049639 (= res!698870 (bvsle lt!463590 i!1381))))

(assert (=> b!1049639 e!595592))

(declare-fun res!698873 () Bool)

(assert (=> b!1049639 (=> (not res!698873) (not e!595592))))

(assert (=> b!1049639 (= res!698873 (= (select (store (arr!31799 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463590) k0!2747))))

(assert (= (and start!92378 res!698866) b!1049631))

(assert (= (and b!1049631 res!698871) b!1049633))

(assert (= (and b!1049633 res!698872) b!1049634))

(assert (= (and b!1049634 res!698864) b!1049635))

(assert (= (and b!1049635 res!698868) b!1049629))

(assert (= (and b!1049629 res!698863) b!1049639))

(assert (= (and b!1049639 res!698873) b!1049628))

(assert (= (and b!1049628 (not res!698865)) b!1049630))

(assert (= (and b!1049639 (not res!698870)) b!1049632))

(assert (= (and b!1049632 (not res!698869)) b!1049637))

(assert (= (and b!1049637 (not res!698874)) b!1049638))

(assert (= (and b!1049638 (not res!698867)) b!1049636))

(declare-fun m!970505 () Bool)

(assert (=> b!1049639 m!970505))

(declare-fun m!970507 () Bool)

(assert (=> b!1049639 m!970507))

(declare-fun m!970509 () Bool)

(assert (=> b!1049629 m!970509))

(declare-fun m!970511 () Bool)

(assert (=> b!1049635 m!970511))

(assert (=> b!1049635 m!970505))

(declare-fun m!970513 () Bool)

(assert (=> b!1049637 m!970513))

(declare-fun m!970515 () Bool)

(assert (=> b!1049632 m!970515))

(declare-fun m!970517 () Bool)

(assert (=> b!1049632 m!970517))

(declare-fun m!970519 () Bool)

(assert (=> b!1049632 m!970519))

(declare-fun m!970521 () Bool)

(assert (=> b!1049632 m!970521))

(declare-fun m!970523 () Bool)

(assert (=> b!1049630 m!970523))

(declare-fun m!970525 () Bool)

(assert (=> b!1049633 m!970525))

(declare-fun m!970527 () Bool)

(assert (=> b!1049631 m!970527))

(declare-fun m!970529 () Bool)

(assert (=> start!92378 m!970529))

(declare-fun m!970531 () Bool)

(assert (=> b!1049638 m!970531))

(declare-fun m!970533 () Bool)

(assert (=> b!1049636 m!970533))

(declare-fun m!970535 () Bool)

(assert (=> b!1049634 m!970535))

(check-sat (not b!1049636) (not b!1049633) (not b!1049632) (not start!92378) (not b!1049631) (not b!1049629) (not b!1049637) (not b!1049635) (not b!1049630) (not b!1049638))
(check-sat)
