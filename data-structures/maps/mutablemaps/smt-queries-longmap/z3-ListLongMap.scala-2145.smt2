; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36172 () Bool)

(assert start!36172)

(declare-fun b!362421 () Bool)

(declare-fun res!201866 () Bool)

(declare-fun e!221973 () Bool)

(assert (=> b!362421 (=> (not res!201866) (not e!221973))))

(declare-datatypes ((array!20450 0))(
  ( (array!20451 (arr!9704 (Array (_ BitVec 32) (_ BitVec 64))) (size!10056 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20450)

(assert (=> b!362421 (= res!201866 (bvslt (size!10056 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362422 () Bool)

(declare-fun e!221975 () Bool)

(assert (=> b!362422 (= e!221973 (not e!221975))))

(declare-fun res!201868 () Bool)

(assert (=> b!362422 (=> res!201868 e!221975)))

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362422 (= res!201868 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(declare-fun lt!166830 () array!20450)

(declare-fun arrayCountValidKeys!0 (array!20450 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362422 (= (arrayCountValidKeys!0 lt!166830 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun k0!2980 () (_ BitVec 64))

(assert (=> b!362422 (= lt!166830 (array!20451 (store (arr!9704 a!4337) i!1478 k0!2980) (size!10056 a!4337)))))

(declare-datatypes ((Unit!11133 0))(
  ( (Unit!11134) )
))
(declare-fun lt!166832 () Unit!11133)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20450 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11133)

(assert (=> b!362422 (= lt!166832 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!362423 () Bool)

(declare-fun res!201865 () Bool)

(assert (=> b!362423 (=> (not res!201865) (not e!221973))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362423 (= res!201865 (validKeyInArray!0 k0!2980))))

(declare-fun b!362424 () Bool)

(declare-fun res!201864 () Bool)

(assert (=> b!362424 (=> (not res!201864) (not e!221973))))

(assert (=> b!362424 (= res!201864 (not (validKeyInArray!0 (select (arr!9704 a!4337) i!1478))))))

(declare-fun res!201867 () Bool)

(assert (=> start!36172 (=> (not res!201867) (not e!221973))))

(assert (=> start!36172 (= res!201867 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10056 a!4337))))))

(assert (=> start!36172 e!221973))

(assert (=> start!36172 true))

(declare-fun array_inv!7142 (array!20450) Bool)

(assert (=> start!36172 (array_inv!7142 a!4337)))

(declare-fun b!362425 () Bool)

(assert (=> b!362425 (= e!221975 true)))

(declare-fun lt!166829 () (_ BitVec 32))

(assert (=> b!362425 (= lt!166829 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166831 () (_ BitVec 32))

(assert (=> b!362425 (= lt!166831 (arrayCountValidKeys!0 lt!166830 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (= (and start!36172 res!201867) b!362424))

(assert (= (and b!362424 res!201864) b!362423))

(assert (= (and b!362423 res!201865) b!362421))

(assert (= (and b!362421 res!201866) b!362422))

(assert (= (and b!362422 (not res!201868)) b!362425))

(declare-fun m!359055 () Bool)

(assert (=> b!362422 m!359055))

(declare-fun m!359057 () Bool)

(assert (=> b!362422 m!359057))

(declare-fun m!359059 () Bool)

(assert (=> b!362422 m!359059))

(declare-fun m!359061 () Bool)

(assert (=> b!362422 m!359061))

(declare-fun m!359063 () Bool)

(assert (=> start!36172 m!359063))

(declare-fun m!359065 () Bool)

(assert (=> b!362423 m!359065))

(declare-fun m!359067 () Bool)

(assert (=> b!362425 m!359067))

(declare-fun m!359069 () Bool)

(assert (=> b!362425 m!359069))

(declare-fun m!359071 () Bool)

(assert (=> b!362424 m!359071))

(assert (=> b!362424 m!359071))

(declare-fun m!359073 () Bool)

(assert (=> b!362424 m!359073))

(check-sat (not start!36172) (not b!362425) (not b!362424) (not b!362423) (not b!362422))
