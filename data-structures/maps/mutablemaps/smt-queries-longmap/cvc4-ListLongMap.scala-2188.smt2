; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36474 () Bool)

(assert start!36474)

(declare-fun b!364395 () Bool)

(declare-fun res!203708 () Bool)

(declare-fun e!223076 () Bool)

(assert (=> b!364395 (=> (not res!203708) (not e!223076))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20716 0))(
  ( (array!20717 (arr!9834 (Array (_ BitVec 32) (_ BitVec 64))) (size!10186 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20716)

(assert (=> b!364395 (= res!203708 (and (bvslt (size!10186 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10186 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364396 () Bool)

(declare-fun e!223075 () Bool)

(assert (=> b!364396 (= e!223075 (not true))))

(declare-fun lt!168568 () (_ BitVec 32))

(declare-fun lt!168567 () array!20716)

(declare-fun arrayCountValidKeys!0 (array!20716 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364396 (= (bvadd (arrayCountValidKeys!0 lt!168567 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168568) (arrayCountValidKeys!0 lt!168567 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11327 0))(
  ( (Unit!11328) )
))
(declare-fun lt!168565 () Unit!11327)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20716 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11327)

(assert (=> b!364396 (= lt!168565 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168567 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168569 () (_ BitVec 32))

(assert (=> b!364396 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168569) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168566 () Unit!11327)

(assert (=> b!364396 (= lt!168566 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364397 () Bool)

(assert (=> b!364397 (= e!223076 e!223075)))

(declare-fun res!203707 () Bool)

(assert (=> b!364397 (=> (not res!203707) (not e!223075))))

(assert (=> b!364397 (= res!203707 (and (= lt!168568 (bvadd #b00000000000000000000000000000001 lt!168569)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364397 (= lt!168568 (arrayCountValidKeys!0 lt!168567 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364397 (= lt!168569 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364397 (= lt!168567 (array!20717 (store (arr!9834 a!4289) i!1472 k!2974) (size!10186 a!4289)))))

(declare-fun b!364398 () Bool)

(declare-fun res!203706 () Bool)

(assert (=> b!364398 (=> (not res!203706) (not e!223076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364398 (= res!203706 (not (validKeyInArray!0 (select (arr!9834 a!4289) i!1472))))))

(declare-fun res!203710 () Bool)

(assert (=> start!36474 (=> (not res!203710) (not e!223076))))

(assert (=> start!36474 (= res!203710 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10186 a!4289))))))

(assert (=> start!36474 e!223076))

(assert (=> start!36474 true))

(declare-fun array_inv!7272 (array!20716) Bool)

(assert (=> start!36474 (array_inv!7272 a!4289)))

(declare-fun b!364399 () Bool)

(declare-fun res!203709 () Bool)

(assert (=> b!364399 (=> (not res!203709) (not e!223076))))

(assert (=> b!364399 (= res!203709 (validKeyInArray!0 k!2974))))

(assert (= (and start!36474 res!203710) b!364398))

(assert (= (and b!364398 res!203706) b!364399))

(assert (= (and b!364399 res!203709) b!364395))

(assert (= (and b!364395 res!203708) b!364397))

(assert (= (and b!364397 res!203707) b!364396))

(declare-fun m!362009 () Bool)

(assert (=> start!36474 m!362009))

(declare-fun m!362011 () Bool)

(assert (=> b!364396 m!362011))

(declare-fun m!362013 () Bool)

(assert (=> b!364396 m!362013))

(declare-fun m!362015 () Bool)

(assert (=> b!364396 m!362015))

(declare-fun m!362017 () Bool)

(assert (=> b!364396 m!362017))

(declare-fun m!362019 () Bool)

(assert (=> b!364396 m!362019))

(declare-fun m!362021 () Bool)

(assert (=> b!364396 m!362021))

(declare-fun m!362023 () Bool)

(assert (=> b!364398 m!362023))

(assert (=> b!364398 m!362023))

(declare-fun m!362025 () Bool)

(assert (=> b!364398 m!362025))

(declare-fun m!362027 () Bool)

(assert (=> b!364397 m!362027))

(declare-fun m!362029 () Bool)

(assert (=> b!364397 m!362029))

(declare-fun m!362031 () Bool)

(assert (=> b!364397 m!362031))

(declare-fun m!362033 () Bool)

(assert (=> b!364399 m!362033))

(push 1)

(assert (not b!364398))

(assert (not start!36474))

