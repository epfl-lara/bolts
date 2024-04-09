; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92454 () Bool)

(assert start!92454)

(declare-fun b!1050709 () Bool)

(declare-fun e!596342 () Bool)

(declare-fun e!596344 () Bool)

(assert (=> b!1050709 (= e!596342 e!596344)))

(declare-fun res!699947 () Bool)

(assert (=> b!1050709 (=> (not res!699947) (not e!596344))))

(declare-datatypes ((array!66203 0))(
  ( (array!66204 (arr!31837 (Array (_ BitVec 32) (_ BitVec 64))) (size!32374 (_ BitVec 32))) )
))
(declare-fun lt!464047 () array!66203)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050709 (= res!699947 (arrayContainsKey!0 lt!464047 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66203)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050709 (= lt!464047 (array!66204 (store (arr!31837 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32374 a!3488)))))

(declare-fun b!1050710 () Bool)

(declare-fun e!596340 () Bool)

(declare-fun e!596341 () Bool)

(assert (=> b!1050710 (= e!596340 e!596341)))

(declare-fun res!699945 () Bool)

(assert (=> b!1050710 (=> res!699945 e!596341)))

(declare-fun lt!464046 () (_ BitVec 32))

(assert (=> b!1050710 (= res!699945 (or (bvsgt lt!464046 i!1381) (bvsle i!1381 lt!464046)))))

(declare-fun b!1050711 () Bool)

(declare-fun res!699949 () Bool)

(assert (=> b!1050711 (=> (not res!699949) (not e!596342))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050711 (= res!699949 (validKeyInArray!0 k!2747))))

(declare-fun b!1050712 () Bool)

(declare-fun res!699951 () Bool)

(assert (=> b!1050712 (=> (not res!699951) (not e!596342))))

(assert (=> b!1050712 (= res!699951 (= (select (arr!31837 a!3488) i!1381) k!2747))))

(declare-fun b!1050713 () Bool)

(declare-fun e!596343 () Bool)

(assert (=> b!1050713 (= e!596343 (not true))))

(assert (=> b!1050713 e!596340))

(declare-fun res!699948 () Bool)

(assert (=> b!1050713 (=> (not res!699948) (not e!596340))))

(assert (=> b!1050713 (= res!699948 (= (select (store (arr!31837 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464046) k!2747))))

(declare-fun res!699950 () Bool)

(assert (=> start!92454 (=> (not res!699950) (not e!596342))))

(assert (=> start!92454 (= res!699950 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32374 a!3488)) (bvslt (size!32374 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92454 e!596342))

(assert (=> start!92454 true))

(declare-fun array_inv!24459 (array!66203) Bool)

(assert (=> start!92454 (array_inv!24459 a!3488)))

(declare-fun b!1050714 () Bool)

(declare-fun res!699944 () Bool)

(assert (=> b!1050714 (=> (not res!699944) (not e!596342))))

(declare-datatypes ((List!22280 0))(
  ( (Nil!22277) (Cons!22276 (h!23485 (_ BitVec 64)) (t!31594 List!22280)) )
))
(declare-fun arrayNoDuplicates!0 (array!66203 (_ BitVec 32) List!22280) Bool)

(assert (=> b!1050714 (= res!699944 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22277))))

(declare-fun b!1050715 () Bool)

(assert (=> b!1050715 (= e!596344 e!596343)))

(declare-fun res!699946 () Bool)

(assert (=> b!1050715 (=> (not res!699946) (not e!596343))))

(assert (=> b!1050715 (= res!699946 (not (= lt!464046 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66203 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050715 (= lt!464046 (arrayScanForKey!0 lt!464047 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050716 () Bool)

(assert (=> b!1050716 (= e!596341 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(assert (= (and start!92454 res!699950) b!1050714))

(assert (= (and b!1050714 res!699944) b!1050711))

(assert (= (and b!1050711 res!699949) b!1050712))

(assert (= (and b!1050712 res!699951) b!1050709))

(assert (= (and b!1050709 res!699947) b!1050715))

(assert (= (and b!1050715 res!699946) b!1050713))

(assert (= (and b!1050713 res!699948) b!1050710))

(assert (= (and b!1050710 (not res!699945)) b!1050716))

(declare-fun m!971499 () Bool)

(assert (=> b!1050714 m!971499))

(declare-fun m!971501 () Bool)

(assert (=> b!1050711 m!971501))

(declare-fun m!971503 () Bool)

(assert (=> start!92454 m!971503))

(declare-fun m!971505 () Bool)

(assert (=> b!1050712 m!971505))

(declare-fun m!971507 () Bool)

(assert (=> b!1050713 m!971507))

(declare-fun m!971509 () Bool)

(assert (=> b!1050713 m!971509))

(declare-fun m!971511 () Bool)

(assert (=> b!1050715 m!971511))

(declare-fun m!971513 () Bool)

(assert (=> b!1050716 m!971513))

(declare-fun m!971515 () Bool)

(assert (=> b!1050709 m!971515))

(assert (=> b!1050709 m!971507))

(push 1)

