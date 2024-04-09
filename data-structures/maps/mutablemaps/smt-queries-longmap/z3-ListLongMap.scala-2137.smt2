; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36124 () Bool)

(assert start!36124)

(declare-fun b!362102 () Bool)

(declare-fun res!201547 () Bool)

(declare-fun e!221798 () Bool)

(assert (=> b!362102 (=> (not res!201547) (not e!221798))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362102 (= res!201547 (validKeyInArray!0 k0!2980))))

(declare-fun b!362101 () Bool)

(declare-fun res!201544 () Bool)

(assert (=> b!362101 (=> (not res!201544) (not e!221798))))

(declare-datatypes ((array!20402 0))(
  ( (array!20403 (arr!9680 (Array (_ BitVec 32) (_ BitVec 64))) (size!10032 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20402)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362101 (= res!201544 (not (validKeyInArray!0 (select (arr!9680 a!4337) i!1478))))))

(declare-fun res!201546 () Bool)

(assert (=> start!36124 (=> (not res!201546) (not e!221798))))

(assert (=> start!36124 (= res!201546 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10032 a!4337))))))

(assert (=> start!36124 e!221798))

(assert (=> start!36124 true))

(declare-fun array_inv!7118 (array!20402) Bool)

(assert (=> start!36124 (array_inv!7118 a!4337)))

(declare-fun b!362104 () Bool)

(assert (=> b!362104 (= e!221798 false)))

(declare-fun lt!166622 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20402 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362104 (= lt!166622 (arrayCountValidKeys!0 (array!20403 (store (arr!9680 a!4337) i!1478 k0!2980) (size!10032 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166621 () (_ BitVec 32))

(assert (=> b!362104 (= lt!166621 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362103 () Bool)

(declare-fun res!201545 () Bool)

(assert (=> b!362103 (=> (not res!201545) (not e!221798))))

(assert (=> b!362103 (= res!201545 (and (bvslt (size!10032 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10032 a!4337))))))

(assert (= (and start!36124 res!201546) b!362101))

(assert (= (and b!362101 res!201544) b!362102))

(assert (= (and b!362102 res!201547) b!362103))

(assert (= (and b!362103 res!201545) b!362104))

(declare-fun m!358659 () Bool)

(assert (=> b!362102 m!358659))

(declare-fun m!358661 () Bool)

(assert (=> b!362101 m!358661))

(assert (=> b!362101 m!358661))

(declare-fun m!358663 () Bool)

(assert (=> b!362101 m!358663))

(declare-fun m!358665 () Bool)

(assert (=> start!36124 m!358665))

(declare-fun m!358667 () Bool)

(assert (=> b!362104 m!358667))

(declare-fun m!358669 () Bool)

(assert (=> b!362104 m!358669))

(declare-fun m!358671 () Bool)

(assert (=> b!362104 m!358671))

(check-sat (not b!362104) (not start!36124) (not b!362101) (not b!362102))
