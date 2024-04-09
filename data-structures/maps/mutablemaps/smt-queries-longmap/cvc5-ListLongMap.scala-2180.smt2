; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36422 () Bool)

(assert start!36422)

(declare-fun b!364015 () Bool)

(declare-fun e!222883 () Bool)

(assert (=> b!364015 (= e!222883 false)))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168395 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20664 0))(
  ( (array!20665 (arr!9808 (Array (_ BitVec 32) (_ BitVec 64))) (size!10160 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20664)

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun arrayCountValidKeys!0 (array!20664 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364015 (= lt!168395 (arrayCountValidKeys!0 (array!20665 (store (arr!9808 a!4289) i!1472 k!2974) (size!10160 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168394 () (_ BitVec 32))

(assert (=> b!364015 (= lt!168394 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun res!203326 () Bool)

(assert (=> start!36422 (=> (not res!203326) (not e!222883))))

(assert (=> start!36422 (= res!203326 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10160 a!4289))))))

(assert (=> start!36422 e!222883))

(assert (=> start!36422 true))

(declare-fun array_inv!7246 (array!20664) Bool)

(assert (=> start!36422 (array_inv!7246 a!4289)))

(declare-fun b!364014 () Bool)

(declare-fun res!203324 () Bool)

(assert (=> b!364014 (=> (not res!203324) (not e!222883))))

(assert (=> b!364014 (= res!203324 (and (bvslt (size!10160 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10160 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364013 () Bool)

(declare-fun res!203325 () Bool)

(assert (=> b!364013 (=> (not res!203325) (not e!222883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364013 (= res!203325 (validKeyInArray!0 k!2974))))

(declare-fun b!364012 () Bool)

(declare-fun res!203323 () Bool)

(assert (=> b!364012 (=> (not res!203323) (not e!222883))))

(assert (=> b!364012 (= res!203323 (not (validKeyInArray!0 (select (arr!9808 a!4289) i!1472))))))

(assert (= (and start!36422 res!203326) b!364012))

(assert (= (and b!364012 res!203323) b!364013))

(assert (= (and b!364013 res!203325) b!364014))

(assert (= (and b!364014 res!203324) b!364015))

(declare-fun m!361549 () Bool)

(assert (=> b!364015 m!361549))

(declare-fun m!361551 () Bool)

(assert (=> b!364015 m!361551))

(declare-fun m!361553 () Bool)

(assert (=> b!364015 m!361553))

(declare-fun m!361555 () Bool)

(assert (=> start!36422 m!361555))

(declare-fun m!361557 () Bool)

(assert (=> b!364013 m!361557))

(declare-fun m!361559 () Bool)

(assert (=> b!364012 m!361559))

(assert (=> b!364012 m!361559))

(declare-fun m!361561 () Bool)

(assert (=> b!364012 m!361561))

(push 1)

(assert (not b!364013))

(assert (not b!364015))

(assert (not start!36422))

(assert (not b!364012))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

