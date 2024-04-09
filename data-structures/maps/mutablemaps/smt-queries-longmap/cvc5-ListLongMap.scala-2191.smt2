; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36488 () Bool)

(assert start!36488)

(declare-fun b!364500 () Bool)

(declare-fun res!203814 () Bool)

(declare-fun e!223137 () Bool)

(assert (=> b!364500 (=> (not res!203814) (not e!223137))))

(declare-datatypes ((array!20730 0))(
  ( (array!20731 (arr!9841 (Array (_ BitVec 32) (_ BitVec 64))) (size!10193 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20730)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364500 (= res!203814 (not (validKeyInArray!0 (select (arr!9841 a!4289) i!1472))))))

(declare-fun b!364501 () Bool)

(declare-fun res!203813 () Bool)

(assert (=> b!364501 (=> (not res!203813) (not e!223137))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364501 (= res!203813 (validKeyInArray!0 k!2974))))

(declare-fun b!364502 () Bool)

(declare-fun e!223138 () Bool)

(assert (=> b!364502 (= e!223137 e!223138)))

(declare-fun res!203815 () Bool)

(assert (=> b!364502 (=> (not res!203815) (not e!223138))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168672 () (_ BitVec 32))

(declare-fun lt!168673 () (_ BitVec 32))

(assert (=> b!364502 (= res!203815 (and (= lt!168672 (bvadd #b00000000000000000000000000000001 lt!168673)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168670 () array!20730)

(declare-fun arrayCountValidKeys!0 (array!20730 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364502 (= lt!168672 (arrayCountValidKeys!0 lt!168670 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364502 (= lt!168673 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364502 (= lt!168670 (array!20731 (store (arr!9841 a!4289) i!1472 k!2974) (size!10193 a!4289)))))

(declare-fun res!203812 () Bool)

(assert (=> start!36488 (=> (not res!203812) (not e!223137))))

(assert (=> start!36488 (= res!203812 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10193 a!4289))))))

(assert (=> start!36488 e!223137))

(assert (=> start!36488 true))

(declare-fun array_inv!7279 (array!20730) Bool)

(assert (=> start!36488 (array_inv!7279 a!4289)))

(declare-fun b!364503 () Bool)

(assert (=> b!364503 (= e!223138 (not (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) (size!10193 a!4289)) (bvsge i!1472 (bvsub from!3650 #b00000000000000000000000000000001)))))))

(assert (=> b!364503 (= (bvadd (arrayCountValidKeys!0 lt!168670 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168672) (arrayCountValidKeys!0 lt!168670 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11341 0))(
  ( (Unit!11342) )
))
(declare-fun lt!168671 () Unit!11341)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20730 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11341)

(assert (=> b!364503 (= lt!168671 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168670 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!364503 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168673) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168674 () Unit!11341)

(assert (=> b!364503 (= lt!168674 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364504 () Bool)

(declare-fun res!203811 () Bool)

(assert (=> b!364504 (=> (not res!203811) (not e!223137))))

(assert (=> b!364504 (= res!203811 (and (bvslt (size!10193 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10193 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36488 res!203812) b!364500))

(assert (= (and b!364500 res!203814) b!364501))

(assert (= (and b!364501 res!203813) b!364504))

(assert (= (and b!364504 res!203811) b!364502))

(assert (= (and b!364502 res!203815) b!364503))

(declare-fun m!362191 () Bool)

(assert (=> b!364503 m!362191))

(declare-fun m!362193 () Bool)

(assert (=> b!364503 m!362193))

(declare-fun m!362195 () Bool)

(assert (=> b!364503 m!362195))

(declare-fun m!362197 () Bool)

(assert (=> b!364503 m!362197))

(declare-fun m!362199 () Bool)

(assert (=> b!364503 m!362199))

(declare-fun m!362201 () Bool)

(assert (=> b!364503 m!362201))

(declare-fun m!362203 () Bool)

(assert (=> b!364502 m!362203))

(declare-fun m!362205 () Bool)

(assert (=> b!364502 m!362205))

(declare-fun m!362207 () Bool)

(assert (=> b!364502 m!362207))

(declare-fun m!362209 () Bool)

(assert (=> start!36488 m!362209))

(declare-fun m!362211 () Bool)

(assert (=> b!364501 m!362211))

(declare-fun m!362213 () Bool)

(assert (=> b!364500 m!362213))

(assert (=> b!364500 m!362213))

(declare-fun m!362215 () Bool)

(assert (=> b!364500 m!362215))

(push 1)

(assert (not b!364500))

(assert (not start!36488))

(assert (not b!364501))

(assert (not b!364502))

(assert (not b!364503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

