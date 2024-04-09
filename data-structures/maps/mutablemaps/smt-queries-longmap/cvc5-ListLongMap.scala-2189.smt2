; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36476 () Bool)

(assert start!36476)

(declare-fun b!364410 () Bool)

(declare-fun res!203723 () Bool)

(declare-fun e!223084 () Bool)

(assert (=> b!364410 (=> (not res!203723) (not e!223084))))

(declare-datatypes ((array!20718 0))(
  ( (array!20719 (arr!9835 (Array (_ BitVec 32) (_ BitVec 64))) (size!10187 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20718)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364410 (= res!203723 (not (validKeyInArray!0 (select (arr!9835 a!4289) i!1472))))))

(declare-fun b!364411 () Bool)

(declare-fun e!223085 () Bool)

(assert (=> b!364411 (= e!223085 (not true))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168582 () (_ BitVec 32))

(declare-fun lt!168583 () array!20718)

(declare-fun arrayCountValidKeys!0 (array!20718 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364411 (= (bvadd (arrayCountValidKeys!0 lt!168583 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168582) (arrayCountValidKeys!0 lt!168583 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11329 0))(
  ( (Unit!11330) )
))
(declare-fun lt!168584 () Unit!11329)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20718 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11329)

(assert (=> b!364411 (= lt!168584 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168583 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168580 () (_ BitVec 32))

(assert (=> b!364411 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168580) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168581 () Unit!11329)

(assert (=> b!364411 (= lt!168581 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364412 () Bool)

(declare-fun res!203724 () Bool)

(assert (=> b!364412 (=> (not res!203724) (not e!223084))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364412 (= res!203724 (validKeyInArray!0 k!2974))))

(declare-fun b!364413 () Bool)

(declare-fun res!203721 () Bool)

(assert (=> b!364413 (=> (not res!203721) (not e!223084))))

(assert (=> b!364413 (= res!203721 (and (bvslt (size!10187 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10187 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364414 () Bool)

(assert (=> b!364414 (= e!223084 e!223085)))

(declare-fun res!203725 () Bool)

(assert (=> b!364414 (=> (not res!203725) (not e!223085))))

(assert (=> b!364414 (= res!203725 (and (= lt!168582 (bvadd #b00000000000000000000000000000001 lt!168580)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364414 (= lt!168582 (arrayCountValidKeys!0 lt!168583 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364414 (= lt!168580 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364414 (= lt!168583 (array!20719 (store (arr!9835 a!4289) i!1472 k!2974) (size!10187 a!4289)))))

(declare-fun res!203722 () Bool)

(assert (=> start!36476 (=> (not res!203722) (not e!223084))))

(assert (=> start!36476 (= res!203722 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10187 a!4289))))))

(assert (=> start!36476 e!223084))

(assert (=> start!36476 true))

(declare-fun array_inv!7273 (array!20718) Bool)

(assert (=> start!36476 (array_inv!7273 a!4289)))

(assert (= (and start!36476 res!203722) b!364410))

(assert (= (and b!364410 res!203723) b!364412))

(assert (= (and b!364412 res!203724) b!364413))

(assert (= (and b!364413 res!203721) b!364414))

(assert (= (and b!364414 res!203725) b!364411))

(declare-fun m!362035 () Bool)

(assert (=> start!36476 m!362035))

(declare-fun m!362037 () Bool)

(assert (=> b!364410 m!362037))

(assert (=> b!364410 m!362037))

(declare-fun m!362039 () Bool)

(assert (=> b!364410 m!362039))

(declare-fun m!362041 () Bool)

(assert (=> b!364412 m!362041))

(declare-fun m!362043 () Bool)

(assert (=> b!364414 m!362043))

(declare-fun m!362045 () Bool)

(assert (=> b!364414 m!362045))

(declare-fun m!362047 () Bool)

(assert (=> b!364414 m!362047))

(declare-fun m!362049 () Bool)

(assert (=> b!364411 m!362049))

(declare-fun m!362051 () Bool)

(assert (=> b!364411 m!362051))

(declare-fun m!362053 () Bool)

(assert (=> b!364411 m!362053))

(declare-fun m!362055 () Bool)

(assert (=> b!364411 m!362055))

(declare-fun m!362057 () Bool)

(assert (=> b!364411 m!362057))

(declare-fun m!362059 () Bool)

(assert (=> b!364411 m!362059))

(push 1)

(assert (not b!364412))

(assert (not start!36476))

(assert (not b!364410))

(assert (not b!364414))

(assert (not b!364411))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

