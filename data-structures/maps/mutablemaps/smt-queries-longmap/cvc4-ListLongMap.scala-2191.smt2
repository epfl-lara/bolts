; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36492 () Bool)

(assert start!36492)

(declare-fun b!364530 () Bool)

(declare-fun res!203845 () Bool)

(declare-fun e!223157 () Bool)

(assert (=> b!364530 (=> (not res!203845) (not e!223157))))

(declare-datatypes ((array!20734 0))(
  ( (array!20735 (arr!9843 (Array (_ BitVec 32) (_ BitVec 64))) (size!10195 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20734)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364530 (= res!203845 (not (validKeyInArray!0 (select (arr!9843 a!4289) i!1472))))))

(declare-fun b!364531 () Bool)

(declare-fun res!203841 () Bool)

(assert (=> b!364531 (=> (not res!203841) (not e!223157))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364531 (= res!203841 (validKeyInArray!0 k!2974))))

(declare-fun res!203844 () Bool)

(assert (=> start!36492 (=> (not res!203844) (not e!223157))))

(assert (=> start!36492 (= res!203844 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10195 a!4289))))))

(assert (=> start!36492 e!223157))

(assert (=> start!36492 true))

(declare-fun array_inv!7281 (array!20734) Bool)

(assert (=> start!36492 (array_inv!7281 a!4289)))

(declare-fun b!364532 () Bool)

(declare-fun res!203842 () Bool)

(assert (=> b!364532 (=> (not res!203842) (not e!223157))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364532 (= res!203842 (and (bvslt (size!10195 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10195 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364533 () Bool)

(declare-fun e!223156 () Bool)

(assert (=> b!364533 (= e!223156 (not (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) (size!10195 a!4289)) (bvsge i!1472 (bvsub from!3650 #b00000000000000000000000000000001)))))))

(declare-fun lt!168703 () (_ BitVec 32))

(declare-fun lt!168704 () array!20734)

(declare-fun arrayCountValidKeys!0 (array!20734 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364533 (= (bvadd (arrayCountValidKeys!0 lt!168704 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168703) (arrayCountValidKeys!0 lt!168704 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11345 0))(
  ( (Unit!11346) )
))
(declare-fun lt!168702 () Unit!11345)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20734 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11345)

(assert (=> b!364533 (= lt!168702 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168704 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168700 () (_ BitVec 32))

(assert (=> b!364533 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168700) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168701 () Unit!11345)

(assert (=> b!364533 (= lt!168701 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364534 () Bool)

(assert (=> b!364534 (= e!223157 e!223156)))

(declare-fun res!203843 () Bool)

(assert (=> b!364534 (=> (not res!203843) (not e!223156))))

(assert (=> b!364534 (= res!203843 (and (= lt!168703 (bvadd #b00000000000000000000000000000001 lt!168700)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364534 (= lt!168703 (arrayCountValidKeys!0 lt!168704 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364534 (= lt!168700 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364534 (= lt!168704 (array!20735 (store (arr!9843 a!4289) i!1472 k!2974) (size!10195 a!4289)))))

(assert (= (and start!36492 res!203844) b!364530))

(assert (= (and b!364530 res!203845) b!364531))

(assert (= (and b!364531 res!203841) b!364532))

(assert (= (and b!364532 res!203842) b!364534))

(assert (= (and b!364534 res!203843) b!364533))

(declare-fun m!362243 () Bool)

(assert (=> b!364533 m!362243))

(declare-fun m!362245 () Bool)

(assert (=> b!364533 m!362245))

(declare-fun m!362247 () Bool)

(assert (=> b!364533 m!362247))

(declare-fun m!362249 () Bool)

(assert (=> b!364533 m!362249))

(declare-fun m!362251 () Bool)

(assert (=> b!364533 m!362251))

(declare-fun m!362253 () Bool)

(assert (=> b!364533 m!362253))

(declare-fun m!362255 () Bool)

(assert (=> b!364530 m!362255))

(assert (=> b!364530 m!362255))

(declare-fun m!362257 () Bool)

(assert (=> b!364530 m!362257))

(declare-fun m!362259 () Bool)

(assert (=> start!36492 m!362259))

(declare-fun m!362261 () Bool)

(assert (=> b!364534 m!362261))

(declare-fun m!362263 () Bool)

(assert (=> b!364534 m!362263))

(declare-fun m!362265 () Bool)

(assert (=> b!364534 m!362265))

(declare-fun m!362267 () Bool)

(assert (=> b!364531 m!362267))

(push 1)

(assert (not b!364533))

(assert (not b!364531))

(assert (not start!36492))

(assert (not b!364530))

(assert (not b!364534))

(check-sat)

(pop 1)

(push 1)

(check-sat)

