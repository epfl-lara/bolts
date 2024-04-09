; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36136 () Bool)

(assert start!36136)

(declare-fun b!362175 () Bool)

(declare-fun res!201617 () Bool)

(declare-fun e!221833 () Bool)

(assert (=> b!362175 (=> (not res!201617) (not e!221833))))

(declare-datatypes ((array!20414 0))(
  ( (array!20415 (arr!9686 (Array (_ BitVec 32) (_ BitVec 64))) (size!10038 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20414)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362175 (= res!201617 (and (bvslt (size!10038 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10038 a!4337))))))

(declare-fun b!362174 () Bool)

(declare-fun res!201616 () Bool)

(assert (=> b!362174 (=> (not res!201616) (not e!221833))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362174 (= res!201616 (validKeyInArray!0 k0!2980))))

(declare-fun res!201619 () Bool)

(assert (=> start!36136 (=> (not res!201619) (not e!221833))))

(assert (=> start!36136 (= res!201619 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10038 a!4337))))))

(assert (=> start!36136 e!221833))

(assert (=> start!36136 true))

(declare-fun array_inv!7124 (array!20414) Bool)

(assert (=> start!36136 (array_inv!7124 a!4337)))

(declare-fun b!362173 () Bool)

(declare-fun res!201618 () Bool)

(assert (=> b!362173 (=> (not res!201618) (not e!221833))))

(assert (=> b!362173 (= res!201618 (not (validKeyInArray!0 (select (arr!9686 a!4337) i!1478))))))

(declare-fun b!362176 () Bool)

(assert (=> b!362176 (= e!221833 false)))

(declare-fun lt!166657 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20414 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362176 (= lt!166657 (arrayCountValidKeys!0 (array!20415 (store (arr!9686 a!4337) i!1478 k0!2980) (size!10038 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166658 () (_ BitVec 32))

(assert (=> b!362176 (= lt!166658 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (= (and start!36136 res!201619) b!362173))

(assert (= (and b!362173 res!201618) b!362174))

(assert (= (and b!362174 res!201616) b!362175))

(assert (= (and b!362175 res!201617) b!362176))

(declare-fun m!358743 () Bool)

(assert (=> b!362174 m!358743))

(declare-fun m!358745 () Bool)

(assert (=> start!36136 m!358745))

(declare-fun m!358747 () Bool)

(assert (=> b!362173 m!358747))

(assert (=> b!362173 m!358747))

(declare-fun m!358749 () Bool)

(assert (=> b!362173 m!358749))

(declare-fun m!358751 () Bool)

(assert (=> b!362176 m!358751))

(declare-fun m!358753 () Bool)

(assert (=> b!362176 m!358753))

(declare-fun m!358755 () Bool)

(assert (=> b!362176 m!358755))

(check-sat (not b!362176) (not b!362174) (not b!362173) (not start!36136))
