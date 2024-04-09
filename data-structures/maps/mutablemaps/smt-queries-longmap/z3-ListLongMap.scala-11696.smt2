; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136830 () Bool)

(assert start!136830)

(declare-fun res!1078642 () Bool)

(declare-fun e!880511 () Bool)

(assert (=> start!136830 (=> (not res!1078642) (not e!880511))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105759 0))(
  ( (array!105760 (arr!50984 (Array (_ BitVec 32) (_ BitVec 64))) (size!51535 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105759)

(assert (=> start!136830 (= res!1078642 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51535 a!3559)) (bvslt (size!51535 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136830 e!880511))

(assert (=> start!136830 true))

(declare-fun array_inv!39629 (array!105759) Bool)

(assert (=> start!136830 (array_inv!39629 a!3559)))

(declare-fun b!1578564 () Bool)

(declare-fun res!1078641 () Bool)

(assert (=> b!1578564 (=> (not res!1078641) (not e!880511))))

(declare-fun k0!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105759 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578564 (= res!1078641 (arrayContainsKey!0 a!3559 k0!2792 from!2937))))

(declare-fun b!1578565 () Bool)

(declare-fun res!1078643 () Bool)

(assert (=> b!1578565 (=> (not res!1078643) (not e!880511))))

(assert (=> b!1578565 (= res!1078643 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvslt (bvsub from!2937 #b00000000000000000000000000000001) (size!51535 a!3559))))))

(declare-fun b!1578566 () Bool)

(assert (=> b!1578566 (= e!880511 (not (arrayContainsKey!0 a!3559 k0!2792 (bvsub from!2937 #b00000000000000000000000000000001))))))

(assert (= (and start!136830 res!1078642) b!1578564))

(assert (= (and b!1578564 res!1078641) b!1578565))

(assert (= (and b!1578565 res!1078643) b!1578566))

(declare-fun m!1450655 () Bool)

(assert (=> start!136830 m!1450655))

(declare-fun m!1450657 () Bool)

(assert (=> b!1578564 m!1450657))

(declare-fun m!1450659 () Bool)

(assert (=> b!1578566 m!1450659))

(check-sat (not start!136830) (not b!1578564) (not b!1578566))
(check-sat)
(get-model)

(declare-fun d!166053 () Bool)

(assert (=> d!166053 (= (array_inv!39629 a!3559) (bvsge (size!51535 a!3559) #b00000000000000000000000000000000))))

(assert (=> start!136830 d!166053))

(declare-fun d!166055 () Bool)

(declare-fun res!1078657 () Bool)

(declare-fun e!880523 () Bool)

(assert (=> d!166055 (=> res!1078657 e!880523)))

(assert (=> d!166055 (= res!1078657 (= (select (arr!50984 a!3559) from!2937) k0!2792))))

(assert (=> d!166055 (= (arrayContainsKey!0 a!3559 k0!2792 from!2937) e!880523)))

(declare-fun b!1578580 () Bool)

(declare-fun e!880524 () Bool)

(assert (=> b!1578580 (= e!880523 e!880524)))

(declare-fun res!1078658 () Bool)

(assert (=> b!1578580 (=> (not res!1078658) (not e!880524))))

(assert (=> b!1578580 (= res!1078658 (bvslt (bvadd from!2937 #b00000000000000000000000000000001) (size!51535 a!3559)))))

(declare-fun b!1578581 () Bool)

(assert (=> b!1578581 (= e!880524 (arrayContainsKey!0 a!3559 k0!2792 (bvadd from!2937 #b00000000000000000000000000000001)))))

(assert (= (and d!166055 (not res!1078657)) b!1578580))

(assert (= (and b!1578580 res!1078658) b!1578581))

(declare-fun m!1450667 () Bool)

(assert (=> d!166055 m!1450667))

(declare-fun m!1450669 () Bool)

(assert (=> b!1578581 m!1450669))

(assert (=> b!1578564 d!166055))

(declare-fun d!166063 () Bool)

(declare-fun res!1078663 () Bool)

(declare-fun e!880529 () Bool)

(assert (=> d!166063 (=> res!1078663 e!880529)))

(assert (=> d!166063 (= res!1078663 (= (select (arr!50984 a!3559) (bvsub from!2937 #b00000000000000000000000000000001)) k0!2792))))

(assert (=> d!166063 (= (arrayContainsKey!0 a!3559 k0!2792 (bvsub from!2937 #b00000000000000000000000000000001)) e!880529)))

(declare-fun b!1578586 () Bool)

(declare-fun e!880530 () Bool)

(assert (=> b!1578586 (= e!880529 e!880530)))

(declare-fun res!1078664 () Bool)

(assert (=> b!1578586 (=> (not res!1078664) (not e!880530))))

(assert (=> b!1578586 (= res!1078664 (bvslt (bvadd (bvsub from!2937 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!51535 a!3559)))))

(declare-fun b!1578587 () Bool)

(assert (=> b!1578587 (= e!880530 (arrayContainsKey!0 a!3559 k0!2792 (bvadd (bvsub from!2937 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (= (and d!166063 (not res!1078663)) b!1578586))

(assert (= (and b!1578586 res!1078664) b!1578587))

(declare-fun m!1450671 () Bool)

(assert (=> d!166063 m!1450671))

(declare-fun m!1450673 () Bool)

(assert (=> b!1578587 m!1450673))

(assert (=> b!1578566 d!166063))

(check-sat (not b!1578581) (not b!1578587))
(check-sat)
