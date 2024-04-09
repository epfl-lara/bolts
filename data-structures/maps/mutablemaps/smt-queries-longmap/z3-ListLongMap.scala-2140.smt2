; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36142 () Bool)

(assert start!36142)

(declare-fun b!362210 () Bool)

(declare-fun res!201653 () Bool)

(declare-fun e!221852 () Bool)

(assert (=> b!362210 (=> (not res!201653) (not e!221852))))

(declare-fun k0!2980 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362210 (= res!201653 (validKeyInArray!0 k0!2980))))

(declare-fun b!362209 () Bool)

(declare-fun res!201652 () Bool)

(assert (=> b!362209 (=> (not res!201652) (not e!221852))))

(declare-datatypes ((array!20420 0))(
  ( (array!20421 (arr!9689 (Array (_ BitVec 32) (_ BitVec 64))) (size!10041 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20420)

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362209 (= res!201652 (not (validKeyInArray!0 (select (arr!9689 a!4337) i!1478))))))

(declare-fun b!362212 () Bool)

(assert (=> b!362212 (= e!221852 false)))

(declare-fun lt!166676 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20420 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362212 (= lt!166676 (arrayCountValidKeys!0 (array!20421 (store (arr!9689 a!4337) i!1478 k0!2980) (size!10041 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166675 () (_ BitVec 32))

(assert (=> b!362212 (= lt!166675 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362211 () Bool)

(declare-fun res!201655 () Bool)

(assert (=> b!362211 (=> (not res!201655) (not e!221852))))

(assert (=> b!362211 (= res!201655 (and (bvslt (size!10041 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10041 a!4337))))))

(declare-fun res!201654 () Bool)

(assert (=> start!36142 (=> (not res!201654) (not e!221852))))

(assert (=> start!36142 (= res!201654 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10041 a!4337))))))

(assert (=> start!36142 e!221852))

(assert (=> start!36142 true))

(declare-fun array_inv!7127 (array!20420) Bool)

(assert (=> start!36142 (array_inv!7127 a!4337)))

(assert (= (and start!36142 res!201654) b!362209))

(assert (= (and b!362209 res!201652) b!362210))

(assert (= (and b!362210 res!201653) b!362211))

(assert (= (and b!362211 res!201655) b!362212))

(declare-fun m!358785 () Bool)

(assert (=> b!362210 m!358785))

(declare-fun m!358787 () Bool)

(assert (=> b!362209 m!358787))

(assert (=> b!362209 m!358787))

(declare-fun m!358789 () Bool)

(assert (=> b!362209 m!358789))

(declare-fun m!358791 () Bool)

(assert (=> b!362212 m!358791))

(declare-fun m!358793 () Bool)

(assert (=> b!362212 m!358793))

(declare-fun m!358795 () Bool)

(assert (=> b!362212 m!358795))

(declare-fun m!358797 () Bool)

(assert (=> start!36142 m!358797))

(check-sat (not b!362210) (not b!362209) (not start!36142) (not b!362212))
