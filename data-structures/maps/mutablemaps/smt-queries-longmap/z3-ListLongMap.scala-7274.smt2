; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92900 () Bool)

(assert start!92900)

(declare-fun b!1054581 () Bool)

(declare-fun res!703638 () Bool)

(declare-fun e!599215 () Bool)

(assert (=> b!1054581 (=> (not res!703638) (not e!599215))))

(declare-datatypes ((array!66508 0))(
  ( (array!66509 (arr!31982 (Array (_ BitVec 32) (_ BitVec 64))) (size!32519 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66508)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1054581 (= res!703638 (= (select (arr!31982 a!3488) i!1381) k0!2747))))

(declare-fun b!1054582 () Bool)

(declare-fun e!599214 () Bool)

(assert (=> b!1054582 (= e!599215 e!599214)))

(declare-fun res!703634 () Bool)

(assert (=> b!1054582 (=> (not res!703634) (not e!599214))))

(declare-fun lt!465466 () array!66508)

(declare-fun arrayContainsKey!0 (array!66508 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054582 (= res!703634 (arrayContainsKey!0 lt!465466 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054582 (= lt!465466 (array!66509 (store (arr!31982 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32519 a!3488)))))

(declare-fun b!1054583 () Bool)

(declare-fun e!599219 () Bool)

(declare-fun e!599213 () Bool)

(assert (=> b!1054583 (= e!599219 (not e!599213))))

(declare-fun res!703630 () Bool)

(assert (=> b!1054583 (=> res!703630 e!599213)))

(declare-fun lt!465469 () (_ BitVec 32))

(assert (=> b!1054583 (= res!703630 (bvsle lt!465469 i!1381))))

(declare-fun e!599218 () Bool)

(assert (=> b!1054583 e!599218))

(declare-fun res!703637 () Bool)

(assert (=> b!1054583 (=> (not res!703637) (not e!599218))))

(assert (=> b!1054583 (= res!703637 (= (select (store (arr!31982 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465469) k0!2747))))

(declare-fun b!1054585 () Bool)

(declare-fun e!599217 () Bool)

(assert (=> b!1054585 (= e!599218 e!599217)))

(declare-fun res!703632 () Bool)

(assert (=> b!1054585 (=> res!703632 e!599217)))

(assert (=> b!1054585 (= res!703632 (bvsle lt!465469 i!1381))))

(declare-fun b!1054586 () Bool)

(declare-fun res!703631 () Bool)

(assert (=> b!1054586 (=> (not res!703631) (not e!599215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054586 (= res!703631 (validKeyInArray!0 k0!2747))))

(declare-fun b!1054587 () Bool)

(assert (=> b!1054587 (= e!599217 (arrayContainsKey!0 a!3488 k0!2747 lt!465469))))

(declare-fun b!1054584 () Bool)

(assert (=> b!1054584 (= e!599214 e!599219)))

(declare-fun res!703635 () Bool)

(assert (=> b!1054584 (=> (not res!703635) (not e!599219))))

(assert (=> b!1054584 (= res!703635 (not (= lt!465469 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66508 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054584 (= lt!465469 (arrayScanForKey!0 lt!465466 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!703636 () Bool)

(assert (=> start!92900 (=> (not res!703636) (not e!599215))))

(assert (=> start!92900 (= res!703636 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32519 a!3488)) (bvslt (size!32519 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92900 e!599215))

(assert (=> start!92900 true))

(declare-fun array_inv!24604 (array!66508) Bool)

(assert (=> start!92900 (array_inv!24604 a!3488)))

(declare-fun b!1054588 () Bool)

(assert (=> b!1054588 (= e!599213 true)))

(assert (=> b!1054588 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34531 0))(
  ( (Unit!34532) )
))
(declare-fun lt!465468 () Unit!34531)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66508 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34531)

(assert (=> b!1054588 (= lt!465468 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!465469 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22425 0))(
  ( (Nil!22422) (Cons!22421 (h!23630 (_ BitVec 64)) (t!31739 List!22425)) )
))
(declare-fun arrayNoDuplicates!0 (array!66508 (_ BitVec 32) List!22425) Bool)

(assert (=> b!1054588 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22422)))

(declare-fun lt!465467 () Unit!34531)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66508 (_ BitVec 32) (_ BitVec 32)) Unit!34531)

(assert (=> b!1054588 (= lt!465467 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1054589 () Bool)

(declare-fun res!703633 () Bool)

(assert (=> b!1054589 (=> (not res!703633) (not e!599215))))

(assert (=> b!1054589 (= res!703633 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22422))))

(assert (= (and start!92900 res!703636) b!1054589))

(assert (= (and b!1054589 res!703633) b!1054586))

(assert (= (and b!1054586 res!703631) b!1054581))

(assert (= (and b!1054581 res!703638) b!1054582))

(assert (= (and b!1054582 res!703634) b!1054584))

(assert (= (and b!1054584 res!703635) b!1054583))

(assert (= (and b!1054583 res!703637) b!1054585))

(assert (= (and b!1054585 (not res!703632)) b!1054587))

(assert (= (and b!1054583 (not res!703630)) b!1054588))

(declare-fun m!974771 () Bool)

(assert (=> b!1054582 m!974771))

(declare-fun m!974773 () Bool)

(assert (=> b!1054582 m!974773))

(declare-fun m!974775 () Bool)

(assert (=> start!92900 m!974775))

(declare-fun m!974777 () Bool)

(assert (=> b!1054581 m!974777))

(declare-fun m!974779 () Bool)

(assert (=> b!1054589 m!974779))

(declare-fun m!974781 () Bool)

(assert (=> b!1054587 m!974781))

(declare-fun m!974783 () Bool)

(assert (=> b!1054586 m!974783))

(declare-fun m!974785 () Bool)

(assert (=> b!1054584 m!974785))

(assert (=> b!1054583 m!974773))

(declare-fun m!974787 () Bool)

(assert (=> b!1054583 m!974787))

(declare-fun m!974789 () Bool)

(assert (=> b!1054588 m!974789))

(declare-fun m!974791 () Bool)

(assert (=> b!1054588 m!974791))

(declare-fun m!974793 () Bool)

(assert (=> b!1054588 m!974793))

(declare-fun m!974795 () Bool)

(assert (=> b!1054588 m!974795))

(check-sat (not b!1054587) (not b!1054589) (not b!1054584) (not b!1054588) (not b!1054582) (not b!1054586) (not start!92900))
(check-sat)
