; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36132 () Bool)

(assert start!36132)

(declare-fun b!362149 () Bool)

(declare-fun res!201594 () Bool)

(declare-fun e!221822 () Bool)

(assert (=> b!362149 (=> (not res!201594) (not e!221822))))

(declare-datatypes ((array!20410 0))(
  ( (array!20411 (arr!9684 (Array (_ BitVec 32) (_ BitVec 64))) (size!10036 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20410)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362149 (= res!201594 (not (validKeyInArray!0 (select (arr!9684 a!4337) i!1478))))))

(declare-fun b!362152 () Bool)

(assert (=> b!362152 (= e!221822 false)))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun lt!166645 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20410 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362152 (= lt!166645 (arrayCountValidKeys!0 (array!20411 (store (arr!9684 a!4337) i!1478 k!2980) (size!10036 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!166646 () (_ BitVec 32))

(assert (=> b!362152 (= lt!166646 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362150 () Bool)

(declare-fun res!201592 () Bool)

(assert (=> b!362150 (=> (not res!201592) (not e!221822))))

(assert (=> b!362150 (= res!201592 (validKeyInArray!0 k!2980))))

(declare-fun res!201595 () Bool)

(assert (=> start!36132 (=> (not res!201595) (not e!221822))))

(assert (=> start!36132 (= res!201595 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10036 a!4337))))))

(assert (=> start!36132 e!221822))

(assert (=> start!36132 true))

(declare-fun array_inv!7122 (array!20410) Bool)

(assert (=> start!36132 (array_inv!7122 a!4337)))

(declare-fun b!362151 () Bool)

(declare-fun res!201593 () Bool)

(assert (=> b!362151 (=> (not res!201593) (not e!221822))))

(assert (=> b!362151 (= res!201593 (and (bvslt (size!10036 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10036 a!4337))))))

(assert (= (and start!36132 res!201595) b!362149))

(assert (= (and b!362149 res!201594) b!362150))

(assert (= (and b!362150 res!201592) b!362151))

(assert (= (and b!362151 res!201593) b!362152))

(declare-fun m!358715 () Bool)

(assert (=> b!362149 m!358715))

(assert (=> b!362149 m!358715))

(declare-fun m!358717 () Bool)

(assert (=> b!362149 m!358717))

(declare-fun m!358719 () Bool)

(assert (=> b!362152 m!358719))

(declare-fun m!358721 () Bool)

(assert (=> b!362152 m!358721))

(declare-fun m!358723 () Bool)

(assert (=> b!362152 m!358723))

(declare-fun m!358725 () Bool)

(assert (=> b!362150 m!358725))

(declare-fun m!358727 () Bool)

(assert (=> start!36132 m!358727))

(push 1)

(assert (not b!362150))

(assert (not b!362149))

(assert (not start!36132))

(assert (not b!362152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

