; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36484 () Bool)

(assert start!36484)

(declare-fun b!364470 () Bool)

(declare-fun e!223119 () Bool)

(declare-fun e!223120 () Bool)

(assert (=> b!364470 (= e!223119 e!223120)))

(declare-fun res!203782 () Bool)

(assert (=> b!364470 (=> (not res!203782) (not e!223120))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168641 () (_ BitVec 32))

(declare-fun lt!168643 () (_ BitVec 32))

(assert (=> b!364470 (= res!203782 (and (= lt!168641 (bvadd #b00000000000000000000000000000001 lt!168643)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!20726 0))(
  ( (array!20727 (arr!9839 (Array (_ BitVec 32) (_ BitVec 64))) (size!10191 (_ BitVec 32))) )
))
(declare-fun lt!168640 () array!20726)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20726 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364470 (= lt!168641 (arrayCountValidKeys!0 lt!168640 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun a!4289 () array!20726)

(assert (=> b!364470 (= lt!168643 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k0!2974 () (_ BitVec 64))

(assert (=> b!364470 (= lt!168640 (array!20727 (store (arr!9839 a!4289) i!1472 k0!2974) (size!10191 a!4289)))))

(declare-fun b!364471 () Bool)

(declare-fun res!203784 () Bool)

(assert (=> b!364471 (=> (not res!203784) (not e!223119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364471 (= res!203784 (validKeyInArray!0 k0!2974))))

(declare-fun res!203785 () Bool)

(assert (=> start!36484 (=> (not res!203785) (not e!223119))))

(assert (=> start!36484 (= res!203785 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10191 a!4289))))))

(assert (=> start!36484 e!223119))

(assert (=> start!36484 true))

(declare-fun array_inv!7277 (array!20726) Bool)

(assert (=> start!36484 (array_inv!7277 a!4289)))

(declare-fun b!364472 () Bool)

(declare-fun res!203781 () Bool)

(assert (=> b!364472 (=> (not res!203781) (not e!223119))))

(assert (=> b!364472 (= res!203781 (and (bvslt (size!10191 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10191 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364473 () Bool)

(assert (=> b!364473 (= e!223120 (not true))))

(assert (=> b!364473 (= (bvadd (arrayCountValidKeys!0 lt!168640 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168641) (arrayCountValidKeys!0 lt!168640 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11337 0))(
  ( (Unit!11338) )
))
(declare-fun lt!168642 () Unit!11337)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20726 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11337)

(assert (=> b!364473 (= lt!168642 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168640 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!364473 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168643) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168644 () Unit!11337)

(assert (=> b!364473 (= lt!168644 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364474 () Bool)

(declare-fun res!203783 () Bool)

(assert (=> b!364474 (=> (not res!203783) (not e!223119))))

(assert (=> b!364474 (= res!203783 (not (validKeyInArray!0 (select (arr!9839 a!4289) i!1472))))))

(assert (= (and start!36484 res!203785) b!364474))

(assert (= (and b!364474 res!203783) b!364471))

(assert (= (and b!364471 res!203784) b!364472))

(assert (= (and b!364472 res!203781) b!364470))

(assert (= (and b!364470 res!203782) b!364473))

(declare-fun m!362139 () Bool)

(assert (=> b!364473 m!362139))

(declare-fun m!362141 () Bool)

(assert (=> b!364473 m!362141))

(declare-fun m!362143 () Bool)

(assert (=> b!364473 m!362143))

(declare-fun m!362145 () Bool)

(assert (=> b!364473 m!362145))

(declare-fun m!362147 () Bool)

(assert (=> b!364473 m!362147))

(declare-fun m!362149 () Bool)

(assert (=> b!364473 m!362149))

(declare-fun m!362151 () Bool)

(assert (=> b!364470 m!362151))

(declare-fun m!362153 () Bool)

(assert (=> b!364470 m!362153))

(declare-fun m!362155 () Bool)

(assert (=> b!364470 m!362155))

(declare-fun m!362157 () Bool)

(assert (=> start!36484 m!362157))

(declare-fun m!362159 () Bool)

(assert (=> b!364471 m!362159))

(declare-fun m!362161 () Bool)

(assert (=> b!364474 m!362161))

(assert (=> b!364474 m!362161))

(declare-fun m!362163 () Bool)

(assert (=> b!364474 m!362163))

(check-sat (not start!36484) (not b!364473) (not b!364471) (not b!364470) (not b!364474))
(check-sat)
