; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36212 () Bool)

(assert start!36212)

(declare-fun b!362703 () Bool)

(declare-fun res!202150 () Bool)

(declare-fun e!222137 () Bool)

(assert (=> b!362703 (=> (not res!202150) (not e!222137))))

(declare-datatypes ((array!20490 0))(
  ( (array!20491 (arr!9724 (Array (_ BitVec 32) (_ BitVec 64))) (size!10076 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20490)

(assert (=> b!362703 (= res!202150 (bvslt (size!10076 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!362705 () Bool)

(declare-fun e!222135 () Bool)

(assert (=> b!362705 (= e!222137 (not e!222135))))

(declare-fun res!202149 () Bool)

(assert (=> b!362705 (=> res!202149 e!222135)))

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!362705 (= res!202149 (or (bvslt (size!10076 a!4337) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000)))))

(declare-fun lt!167235 () (_ BitVec 32))

(declare-fun lt!167232 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20490 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362705 (= (bvadd lt!167235 lt!167232) (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (size!10076 a!4337)))))

(declare-datatypes ((Unit!11173 0))(
  ( (Unit!11174) )
))
(declare-fun lt!167236 () Unit!11173)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20490 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11173)

(assert (=> b!362705 (= lt!167236 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4337 #b00000000000000000000000000000000 (size!10076 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167234 () (_ BitVec 32))

(assert (=> b!362705 (= lt!167234 lt!167232)))

(assert (=> b!362705 (= lt!167232 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (size!10076 a!4337)))))

(declare-fun lt!167237 () array!20490)

(assert (=> b!362705 (= lt!167234 (arrayCountValidKeys!0 lt!167237 (bvadd #b00000000000000000000000000000001 i!1478) (size!10076 a!4337)))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun lt!167238 () Unit!11173)

(declare-fun lemmaAddValidKeyAndNumKeysToImpliesToALength!0 (array!20490 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11173)

(assert (=> b!362705 (= lt!167238 (lemmaAddValidKeyAndNumKeysToImpliesToALength!0 a!4337 i!1478 k!2980 (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun lt!167240 () (_ BitVec 32))

(assert (=> b!362705 (= lt!167240 (bvadd #b00000000000000000000000000000001 lt!167235))))

(assert (=> b!362705 (= lt!167240 (arrayCountValidKeys!0 lt!167237 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362705 (= lt!167235 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> b!362705 (= lt!167237 (array!20491 (store (arr!9724 a!4337) i!1478 k!2980) (size!10076 a!4337)))))

(declare-fun lt!167233 () Unit!11173)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20490 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11173)

(assert (=> b!362705 (= lt!167233 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!362706 () Bool)

(assert (=> b!362706 (= e!222135 true)))

(assert (=> b!362706 (= (bvadd lt!167240 lt!167234) (arrayCountValidKeys!0 lt!167237 #b00000000000000000000000000000000 (size!10076 a!4337)))))

(declare-fun lt!167239 () Unit!11173)

(assert (=> b!362706 (= lt!167239 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167237 #b00000000000000000000000000000000 (size!10076 a!4337) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362707 () Bool)

(declare-fun res!202146 () Bool)

(assert (=> b!362707 (=> (not res!202146) (not e!222137))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362707 (= res!202146 (not (validKeyInArray!0 (select (arr!9724 a!4337) i!1478))))))

(declare-fun res!202147 () Bool)

(assert (=> start!36212 (=> (not res!202147) (not e!222137))))

(assert (=> start!36212 (= res!202147 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10076 a!4337))))))

(assert (=> start!36212 e!222137))

(assert (=> start!36212 true))

(declare-fun array_inv!7162 (array!20490) Bool)

(assert (=> start!36212 (array_inv!7162 a!4337)))

(declare-fun b!362704 () Bool)

(declare-fun res!202148 () Bool)

(assert (=> b!362704 (=> (not res!202148) (not e!222137))))

(assert (=> b!362704 (= res!202148 (validKeyInArray!0 k!2980))))

(assert (= (and start!36212 res!202147) b!362707))

(assert (= (and b!362707 res!202146) b!362704))

(assert (= (and b!362704 res!202148) b!362703))

(assert (= (and b!362703 res!202150) b!362705))

(assert (= (and b!362705 (not res!202149)) b!362706))

(declare-fun m!359569 () Bool)

(assert (=> b!362707 m!359569))

(assert (=> b!362707 m!359569))

(declare-fun m!359571 () Bool)

(assert (=> b!362707 m!359571))

(declare-fun m!359573 () Bool)

(assert (=> b!362705 m!359573))

(declare-fun m!359575 () Bool)

(assert (=> b!362705 m!359575))

(declare-fun m!359577 () Bool)

(assert (=> b!362705 m!359577))

(declare-fun m!359579 () Bool)

(assert (=> b!362705 m!359579))

(declare-fun m!359581 () Bool)

(assert (=> b!362705 m!359581))

(declare-fun m!359583 () Bool)

(assert (=> b!362705 m!359583))

(declare-fun m!359585 () Bool)

(assert (=> b!362705 m!359585))

(declare-fun m!359587 () Bool)

(assert (=> b!362705 m!359587))

(declare-fun m!359589 () Bool)

(assert (=> b!362705 m!359589))

(declare-fun m!359591 () Bool)

(assert (=> start!36212 m!359591))

(declare-fun m!359593 () Bool)

(assert (=> b!362706 m!359593))

(declare-fun m!359595 () Bool)

(assert (=> b!362706 m!359595))

(declare-fun m!359597 () Bool)

(assert (=> b!362704 m!359597))

(push 1)

(assert (not b!362707))

(assert (not start!36212))

(assert (not b!362706))

(assert (not b!362704))

(assert (not b!362705))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

