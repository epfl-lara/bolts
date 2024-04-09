; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136860 () Bool)

(assert start!136860)

(declare-fun res!1078766 () Bool)

(declare-fun e!880590 () Bool)

(assert (=> start!136860 (=> (not res!1078766) (not e!880590))))

(declare-fun from!2937 () (_ BitVec 32))

(declare-datatypes ((array!105780 0))(
  ( (array!105781 (arr!50993 (Array (_ BitVec 32) (_ BitVec 64))) (size!51544 (_ BitVec 32))) )
))
(declare-fun a!3559 () array!105780)

(assert (=> start!136860 (= res!1078766 (and (bvsge from!2937 #b00000000000000000000000000000000) (bvslt from!2937 (size!51544 a!3559)) (bvslt (size!51544 a!3559) #b01111111111111111111111111111111)))))

(assert (=> start!136860 e!880590))

(assert (=> start!136860 true))

(declare-fun array_inv!39638 (array!105780) Bool)

(assert (=> start!136860 (array_inv!39638 a!3559)))

(declare-fun b!1578687 () Bool)

(declare-fun res!1078764 () Bool)

(assert (=> b!1578687 (=> (not res!1078764) (not e!880590))))

(declare-fun k0!2792 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!105780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1578687 (= res!1078764 (arrayContainsKey!0 a!3559 k0!2792 from!2937))))

(declare-fun b!1578688 () Bool)

(declare-fun res!1078765 () Bool)

(assert (=> b!1578688 (=> (not res!1078765) (not e!880590))))

(assert (=> b!1578688 (= res!1078765 (bvsle from!2937 #b00000000000000000000000000000000))))

(declare-fun b!1578689 () Bool)

(assert (=> b!1578689 (= e!880590 (not (arrayContainsKey!0 a!3559 k0!2792 #b00000000000000000000000000000000)))))

(assert (= (and start!136860 res!1078766) b!1578687))

(assert (= (and b!1578687 res!1078764) b!1578688))

(assert (= (and b!1578688 res!1078765) b!1578689))

(declare-fun m!1450745 () Bool)

(assert (=> start!136860 m!1450745))

(declare-fun m!1450747 () Bool)

(assert (=> b!1578687 m!1450747))

(declare-fun m!1450749 () Bool)

(assert (=> b!1578689 m!1450749))

(check-sat (not start!136860) (not b!1578687) (not b!1578689))
(check-sat)
