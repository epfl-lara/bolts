; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36464 () Bool)

(assert start!36464)

(declare-fun b!364320 () Bool)

(declare-fun e!223029 () Bool)

(assert (=> b!364320 (= e!223029 (not true))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168493 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20706 0))(
  ( (array!20707 (arr!9829 (Array (_ BitVec 32) (_ BitVec 64))) (size!10181 (_ BitVec 32))) )
))
(declare-fun lt!168492 () array!20706)

(declare-fun arrayCountValidKeys!0 (array!20706 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364320 (= (bvadd (arrayCountValidKeys!0 lt!168492 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168493) (arrayCountValidKeys!0 lt!168492 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11317 0))(
  ( (Unit!11318) )
))
(declare-fun lt!168490 () Unit!11317)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20706 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11317)

(assert (=> b!364320 (= lt!168490 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168492 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168491 () (_ BitVec 32))

(declare-fun a!4289 () array!20706)

(assert (=> b!364320 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168491) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168494 () Unit!11317)

(assert (=> b!364320 (= lt!168494 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364321 () Bool)

(declare-fun e!223030 () Bool)

(assert (=> b!364321 (= e!223030 e!223029)))

(declare-fun res!203631 () Bool)

(assert (=> b!364321 (=> (not res!203631) (not e!223029))))

(assert (=> b!364321 (= res!203631 (and (= lt!168493 (bvadd #b00000000000000000000000000000001 lt!168491)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364321 (= lt!168493 (arrayCountValidKeys!0 lt!168492 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364321 (= lt!168491 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364321 (= lt!168492 (array!20707 (store (arr!9829 a!4289) i!1472 k!2974) (size!10181 a!4289)))))

(declare-fun res!203635 () Bool)

(assert (=> start!36464 (=> (not res!203635) (not e!223030))))

(assert (=> start!36464 (= res!203635 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10181 a!4289))))))

(assert (=> start!36464 e!223030))

(assert (=> start!36464 true))

(declare-fun array_inv!7267 (array!20706) Bool)

(assert (=> start!36464 (array_inv!7267 a!4289)))

(declare-fun b!364322 () Bool)

(declare-fun res!203633 () Bool)

(assert (=> b!364322 (=> (not res!203633) (not e!223030))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364322 (= res!203633 (not (validKeyInArray!0 (select (arr!9829 a!4289) i!1472))))))

(declare-fun b!364323 () Bool)

(declare-fun res!203634 () Bool)

(assert (=> b!364323 (=> (not res!203634) (not e!223030))))

(assert (=> b!364323 (= res!203634 (validKeyInArray!0 k!2974))))

(declare-fun b!364324 () Bool)

(declare-fun res!203632 () Bool)

(assert (=> b!364324 (=> (not res!203632) (not e!223030))))

(assert (=> b!364324 (= res!203632 (and (bvslt (size!10181 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10181 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36464 res!203635) b!364322))

(assert (= (and b!364322 res!203633) b!364323))

(assert (= (and b!364323 res!203634) b!364324))

(assert (= (and b!364324 res!203632) b!364321))

(assert (= (and b!364321 res!203631) b!364320))

(declare-fun m!361879 () Bool)

(assert (=> b!364321 m!361879))

(declare-fun m!361881 () Bool)

(assert (=> b!364321 m!361881))

(declare-fun m!361883 () Bool)

(assert (=> b!364321 m!361883))

(declare-fun m!361885 () Bool)

(assert (=> b!364320 m!361885))

(declare-fun m!361887 () Bool)

(assert (=> b!364320 m!361887))

(declare-fun m!361889 () Bool)

(assert (=> b!364320 m!361889))

(declare-fun m!361891 () Bool)

(assert (=> b!364320 m!361891))

(declare-fun m!361893 () Bool)

(assert (=> b!364320 m!361893))

(declare-fun m!361895 () Bool)

(assert (=> b!364320 m!361895))

(declare-fun m!361897 () Bool)

(assert (=> b!364323 m!361897))

(declare-fun m!361899 () Bool)

(assert (=> b!364322 m!361899))

(assert (=> b!364322 m!361899))

(declare-fun m!361901 () Bool)

(assert (=> b!364322 m!361901))

(declare-fun m!361903 () Bool)

(assert (=> start!36464 m!361903))

(push 1)

(assert (not start!36464))

(assert (not b!364322))

(assert (not b!364321))

(assert (not b!364320))

(assert (not b!364323))

(check-sat)

