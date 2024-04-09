; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92446 () Bool)

(assert start!92446)

(declare-fun b!1050615 () Bool)

(declare-fun e!596270 () Bool)

(declare-fun e!596273 () Bool)

(assert (=> b!1050615 (= e!596270 e!596273)))

(declare-fun res!699853 () Bool)

(assert (=> b!1050615 (=> (not res!699853) (not e!596273))))

(declare-datatypes ((array!66195 0))(
  ( (array!66196 (arr!31833 (Array (_ BitVec 32) (_ BitVec 64))) (size!32370 (_ BitVec 32))) )
))
(declare-fun lt!464022 () array!66195)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050615 (= res!699853 (arrayContainsKey!0 lt!464022 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66195)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050615 (= lt!464022 (array!66196 (store (arr!31833 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32370 a!3488)))))

(declare-fun b!1050616 () Bool)

(declare-fun res!699854 () Bool)

(assert (=> b!1050616 (=> (not res!699854) (not e!596270))))

(assert (=> b!1050616 (= res!699854 (= (select (arr!31833 a!3488) i!1381) k!2747))))

(declare-fun b!1050617 () Bool)

(declare-fun res!699850 () Bool)

(assert (=> b!1050617 (=> (not res!699850) (not e!596270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050617 (= res!699850 (validKeyInArray!0 k!2747))))

(declare-fun b!1050618 () Bool)

(declare-fun res!699851 () Bool)

(assert (=> b!1050618 (=> (not res!699851) (not e!596270))))

(declare-datatypes ((List!22276 0))(
  ( (Nil!22273) (Cons!22272 (h!23481 (_ BitVec 64)) (t!31590 List!22276)) )
))
(declare-fun arrayNoDuplicates!0 (array!66195 (_ BitVec 32) List!22276) Bool)

(assert (=> b!1050618 (= res!699851 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22273))))

(declare-fun res!699855 () Bool)

(assert (=> start!92446 (=> (not res!699855) (not e!596270))))

(assert (=> start!92446 (= res!699855 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32370 a!3488)) (bvslt (size!32370 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92446 e!596270))

(assert (=> start!92446 true))

(declare-fun array_inv!24455 (array!66195) Bool)

(assert (=> start!92446 (array_inv!24455 a!3488)))

(declare-fun b!1050619 () Bool)

(declare-fun e!596272 () Bool)

(assert (=> b!1050619 (= e!596273 e!596272)))

(declare-fun res!699852 () Bool)

(assert (=> b!1050619 (=> (not res!699852) (not e!596272))))

(declare-fun lt!464023 () (_ BitVec 32))

(assert (=> b!1050619 (= res!699852 (not (= lt!464023 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66195 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050619 (= lt!464023 (arrayScanForKey!0 lt!464022 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050620 () Bool)

(assert (=> b!1050620 (= e!596272 (not true))))

(assert (=> b!1050620 (= (select (store (arr!31833 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464023) k!2747)))

(assert (= (and start!92446 res!699855) b!1050618))

(assert (= (and b!1050618 res!699851) b!1050617))

(assert (= (and b!1050617 res!699850) b!1050616))

(assert (= (and b!1050616 res!699854) b!1050615))

(assert (= (and b!1050615 res!699853) b!1050619))

(assert (= (and b!1050619 res!699852) b!1050620))

(declare-fun m!971429 () Bool)

(assert (=> b!1050617 m!971429))

(declare-fun m!971431 () Bool)

(assert (=> b!1050618 m!971431))

(declare-fun m!971433 () Bool)

(assert (=> start!92446 m!971433))

(declare-fun m!971435 () Bool)

(assert (=> b!1050619 m!971435))

(declare-fun m!971437 () Bool)

(assert (=> b!1050620 m!971437))

(declare-fun m!971439 () Bool)

(assert (=> b!1050620 m!971439))

(declare-fun m!971441 () Bool)

(assert (=> b!1050616 m!971441))

(declare-fun m!971443 () Bool)

(assert (=> b!1050615 m!971443))

(assert (=> b!1050615 m!971437))

(push 1)

(assert (not b!1050615))

(assert (not b!1050619))

