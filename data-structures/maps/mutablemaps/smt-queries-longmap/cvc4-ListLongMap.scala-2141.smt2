; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36150 () Bool)

(assert start!36150)

(declare-fun b!362257 () Bool)

(declare-fun res!201700 () Bool)

(declare-fun e!221876 () Bool)

(assert (=> b!362257 (=> (not res!201700) (not e!221876))))

(declare-datatypes ((array!20428 0))(
  ( (array!20429 (arr!9693 (Array (_ BitVec 32) (_ BitVec 64))) (size!10045 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20428)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362257 (= res!201700 (not (validKeyInArray!0 (select (arr!9693 a!4337) i!1478))))))

(declare-fun b!362259 () Bool)

(declare-fun res!201701 () Bool)

(assert (=> b!362259 (=> (not res!201701) (not e!221876))))

(assert (=> b!362259 (= res!201701 (and (bvslt (size!10045 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10045 a!4337))))))

(declare-fun b!362258 () Bool)

(declare-fun res!201703 () Bool)

(assert (=> b!362258 (=> (not res!201703) (not e!221876))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!362258 (= res!201703 (validKeyInArray!0 k!2980))))

(declare-fun res!201702 () Bool)

(assert (=> start!36150 (=> (not res!201702) (not e!221876))))

(assert (=> start!36150 (= res!201702 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10045 a!4337))))))

(assert (=> start!36150 e!221876))

(assert (=> start!36150 true))

(declare-fun array_inv!7131 (array!20428) Bool)

(assert (=> start!36150 (array_inv!7131 a!4337)))

(declare-fun b!362260 () Bool)

(assert (=> b!362260 (= e!221876 false)))

(declare-fun lt!166700 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20428 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362260 (= lt!166700 (arrayCountValidKeys!0 (array!20429 (store (arr!9693 a!4337) i!1478 k!2980) (size!10045 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166699 () (_ BitVec 32))

(assert (=> b!362260 (= lt!166699 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (= (and start!36150 res!201702) b!362257))

(assert (= (and b!362257 res!201700) b!362258))

(assert (= (and b!362258 res!201703) b!362259))

(assert (= (and b!362259 res!201701) b!362260))

(declare-fun m!358841 () Bool)

(assert (=> b!362257 m!358841))

(assert (=> b!362257 m!358841))

(declare-fun m!358843 () Bool)

(assert (=> b!362257 m!358843))

(declare-fun m!358845 () Bool)

(assert (=> b!362258 m!358845))

(declare-fun m!358847 () Bool)

(assert (=> start!36150 m!358847))

(declare-fun m!358849 () Bool)

(assert (=> b!362260 m!358849))

(declare-fun m!358851 () Bool)

(assert (=> b!362260 m!358851))

(declare-fun m!358853 () Bool)

(assert (=> b!362260 m!358853))

(push 1)

(assert (not b!362258))

(assert (not b!362257))

(assert (not start!36150))

(assert (not b!362260))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

