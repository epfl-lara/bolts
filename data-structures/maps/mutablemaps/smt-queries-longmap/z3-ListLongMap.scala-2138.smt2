; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36130 () Bool)

(assert start!36130)

(declare-fun b!362137 () Bool)

(declare-fun res!201582 () Bool)

(declare-fun e!221815 () Bool)

(assert (=> b!362137 (=> (not res!201582) (not e!221815))))

(declare-datatypes ((array!20408 0))(
  ( (array!20409 (arr!9683 (Array (_ BitVec 32) (_ BitVec 64))) (size!10035 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20408)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362137 (= res!201582 (not (validKeyInArray!0 (select (arr!9683 a!4337) i!1478))))))

(declare-fun res!201581 () Bool)

(assert (=> start!36130 (=> (not res!201581) (not e!221815))))

(assert (=> start!36130 (= res!201581 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10035 a!4337))))))

(assert (=> start!36130 e!221815))

(assert (=> start!36130 true))

(declare-fun array_inv!7121 (array!20408) Bool)

(assert (=> start!36130 (array_inv!7121 a!4337)))

(declare-fun b!362138 () Bool)

(declare-fun res!201580 () Bool)

(assert (=> b!362138 (=> (not res!201580) (not e!221815))))

(declare-fun k0!2980 () (_ BitVec 64))

(assert (=> b!362138 (= res!201580 (validKeyInArray!0 k0!2980))))

(declare-fun b!362140 () Bool)

(assert (=> b!362140 (= e!221815 false)))

(declare-fun lt!166639 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20408 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362140 (= lt!166639 (arrayCountValidKeys!0 (array!20409 (store (arr!9683 a!4337) i!1478 k0!2980) (size!10035 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166640 () (_ BitVec 32))

(assert (=> b!362140 (= lt!166640 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362139 () Bool)

(declare-fun res!201583 () Bool)

(assert (=> b!362139 (=> (not res!201583) (not e!221815))))

(assert (=> b!362139 (= res!201583 (and (bvslt (size!10035 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10035 a!4337))))))

(assert (= (and start!36130 res!201581) b!362137))

(assert (= (and b!362137 res!201582) b!362138))

(assert (= (and b!362138 res!201580) b!362139))

(assert (= (and b!362139 res!201583) b!362140))

(declare-fun m!358701 () Bool)

(assert (=> b!362137 m!358701))

(assert (=> b!362137 m!358701))

(declare-fun m!358703 () Bool)

(assert (=> b!362137 m!358703))

(declare-fun m!358705 () Bool)

(assert (=> start!36130 m!358705))

(declare-fun m!358707 () Bool)

(assert (=> b!362138 m!358707))

(declare-fun m!358709 () Bool)

(assert (=> b!362140 m!358709))

(declare-fun m!358711 () Bool)

(assert (=> b!362140 m!358711))

(declare-fun m!358713 () Bool)

(assert (=> b!362140 m!358713))

(check-sat (not b!362137) (not b!362140) (not start!36130) (not b!362138))
