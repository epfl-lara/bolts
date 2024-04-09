; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136824 () Bool)

(assert start!136824)

(declare-fun res!1078618 () Bool)

(declare-fun e!880493 () Bool)

(assert (=> start!136824 (=> (not res!1078618) (not e!880493))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105753 0))(
  ( (array!105754 (arr!50981 (Array (_ BitVec 32) (_ BitVec 64))) (size!51532 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105753)

(assert (=> start!136824 (= res!1078618 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51532 a!3559)) (bvslt (size!51532 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136824 e!880493))

(assert (=> start!136824 true))

(declare-fun array_inv!39626 (array!105753) Bool)

(assert (=> start!136824 (array_inv!39626 a!3559)))

(declare-fun b!1578541 () Bool)

(declare-fun res!1078619 () Bool)

(assert (=> b!1578541 (=> (not res!1078619) (not e!880493))))

(declare-fun k0!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105753 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578541 (= res!1078619 (arrayContainsKey!0 a!3559 k0!2792 from!2937))))

(declare-fun b!1578542 () Bool)

(assert (=> b!1578542 (= e!880493 (and (bvsgt from!2937 #b00000000000000000000000000000000) (bvsge (bvsub from!2937 #b00000000000000000000000000000001) (size!51532 a!3559))))))

(assert (= (and start!136824 res!1078618) b!1578541))

(assert (= (and b!1578541 res!1078619) b!1578542))

(declare-fun m!1450641 () Bool)

(assert (=> start!136824 m!1450641))

(declare-fun m!1450643 () Bool)

(assert (=> b!1578541 m!1450643))

(check-sat (not start!136824) (not b!1578541))
(check-sat)
