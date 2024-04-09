; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92294 () Bool)

(assert start!92294)

(declare-fun b!1048438 () Bool)

(declare-fun res!697676 () Bool)

(declare-fun e!594711 () Bool)

(assert (=> b!1048438 (=> (not res!697676) (not e!594711))))

(declare-datatypes ((array!66043 0))(
  ( (array!66044 (arr!31757 (Array (_ BitVec 32) (_ BitVec 64))) (size!32294 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66043)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048438 (= res!697676 (= (select (arr!31757 a!3488) i!1381) k0!2747))))

(declare-fun lt!463188 () (_ BitVec 32))

(declare-fun e!594716 () Bool)

(declare-fun b!1048439 () Bool)

(declare-fun arrayContainsKey!0 (array!66043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048439 (= e!594716 (arrayContainsKey!0 a!3488 k0!2747 lt!463188))))

(declare-fun res!697679 () Bool)

(assert (=> start!92294 (=> (not res!697679) (not e!594711))))

(assert (=> start!92294 (= res!697679 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32294 a!3488)) (bvslt (size!32294 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92294 e!594711))

(assert (=> start!92294 true))

(declare-fun array_inv!24379 (array!66043) Bool)

(assert (=> start!92294 (array_inv!24379 a!3488)))

(declare-fun b!1048440 () Bool)

(declare-fun e!594712 () Bool)

(assert (=> b!1048440 (= e!594711 e!594712)))

(declare-fun res!697674 () Bool)

(assert (=> b!1048440 (=> (not res!697674) (not e!594712))))

(declare-fun lt!463189 () array!66043)

(assert (=> b!1048440 (= res!697674 (arrayContainsKey!0 lt!463189 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048440 (= lt!463189 (array!66044 (store (arr!31757 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32294 a!3488)))))

(declare-fun b!1048441 () Bool)

(declare-fun e!594714 () Bool)

(assert (=> b!1048441 (= e!594714 (not true))))

(declare-fun e!594715 () Bool)

(assert (=> b!1048441 e!594715))

(declare-fun res!697678 () Bool)

(assert (=> b!1048441 (=> (not res!697678) (not e!594715))))

(assert (=> b!1048441 (= res!697678 (= (select (store (arr!31757 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463188) k0!2747))))

(declare-fun b!1048442 () Bool)

(assert (=> b!1048442 (= e!594712 e!594714)))

(declare-fun res!697677 () Bool)

(assert (=> b!1048442 (=> (not res!697677) (not e!594714))))

(assert (=> b!1048442 (= res!697677 (not (= lt!463188 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66043 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048442 (= lt!463188 (arrayScanForKey!0 lt!463189 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048443 () Bool)

(declare-fun res!697680 () Bool)

(assert (=> b!1048443 (=> (not res!697680) (not e!594711))))

(declare-datatypes ((List!22200 0))(
  ( (Nil!22197) (Cons!22196 (h!23405 (_ BitVec 64)) (t!31514 List!22200)) )
))
(declare-fun arrayNoDuplicates!0 (array!66043 (_ BitVec 32) List!22200) Bool)

(assert (=> b!1048443 (= res!697680 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22197))))

(declare-fun b!1048444 () Bool)

(declare-fun res!697673 () Bool)

(assert (=> b!1048444 (=> (not res!697673) (not e!594711))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048444 (= res!697673 (validKeyInArray!0 k0!2747))))

(declare-fun b!1048445 () Bool)

(assert (=> b!1048445 (= e!594715 e!594716)))

(declare-fun res!697675 () Bool)

(assert (=> b!1048445 (=> res!697675 e!594716)))

(assert (=> b!1048445 (= res!697675 (bvsle lt!463188 i!1381))))

(assert (= (and start!92294 res!697679) b!1048443))

(assert (= (and b!1048443 res!697680) b!1048444))

(assert (= (and b!1048444 res!697673) b!1048438))

(assert (= (and b!1048438 res!697676) b!1048440))

(assert (= (and b!1048440 res!697674) b!1048442))

(assert (= (and b!1048442 res!697677) b!1048441))

(assert (= (and b!1048441 res!697678) b!1048445))

(assert (= (and b!1048445 (not res!697675)) b!1048439))

(declare-fun m!969537 () Bool)

(assert (=> b!1048443 m!969537))

(declare-fun m!969539 () Bool)

(assert (=> b!1048440 m!969539))

(declare-fun m!969541 () Bool)

(assert (=> b!1048440 m!969541))

(assert (=> b!1048441 m!969541))

(declare-fun m!969543 () Bool)

(assert (=> b!1048441 m!969543))

(declare-fun m!969545 () Bool)

(assert (=> b!1048439 m!969545))

(declare-fun m!969547 () Bool)

(assert (=> b!1048444 m!969547))

(declare-fun m!969549 () Bool)

(assert (=> b!1048442 m!969549))

(declare-fun m!969551 () Bool)

(assert (=> b!1048438 m!969551))

(declare-fun m!969553 () Bool)

(assert (=> start!92294 m!969553))

(check-sat (not b!1048440) (not b!1048444) (not start!92294) (not b!1048443) (not b!1048439) (not b!1048442))
(check-sat)
