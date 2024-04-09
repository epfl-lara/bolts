; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36458 () Bool)

(assert start!36458)

(declare-fun b!364268 () Bool)

(declare-fun res!203581 () Bool)

(declare-fun e!223002 () Bool)

(assert (=> b!364268 (=> (not res!203581) (not e!223002))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20700 0))(
  ( (array!20701 (arr!9826 (Array (_ BitVec 32) (_ BitVec 64))) (size!10178 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20700)

(assert (=> b!364268 (= res!203581 (and (bvslt (size!10178 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10178 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364269 () Bool)

(declare-fun e!223004 () Bool)

(assert (=> b!364269 (= e!223004 (not (and (bvsge (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvsge from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))))

(declare-fun lt!168466 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20700 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364269 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168466) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11311 0))(
  ( (Unit!11312) )
))
(declare-fun lt!168467 () Unit!11311)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20700 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11311)

(assert (=> b!364269 (= lt!168467 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!203584 () Bool)

(assert (=> start!36458 (=> (not res!203584) (not e!223002))))

(assert (=> start!36458 (= res!203584 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10178 a!4289))))))

(assert (=> start!36458 e!223002))

(assert (=> start!36458 true))

(declare-fun array_inv!7264 (array!20700) Bool)

(assert (=> start!36458 (array_inv!7264 a!4289)))

(declare-fun b!364270 () Bool)

(declare-fun res!203580 () Bool)

(assert (=> b!364270 (=> (not res!203580) (not e!223002))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364270 (= res!203580 (validKeyInArray!0 k!2974))))

(declare-fun b!364271 () Bool)

(assert (=> b!364271 (= e!223002 e!223004)))

(declare-fun res!203582 () Bool)

(assert (=> b!364271 (=> (not res!203582) (not e!223004))))

(assert (=> b!364271 (= res!203582 (= (arrayCountValidKeys!0 (array!20701 (store (arr!9826 a!4289) i!1472 k!2974) (size!10178 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 lt!168466)))))

(assert (=> b!364271 (= lt!168466 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364272 () Bool)

(declare-fun res!203579 () Bool)

(assert (=> b!364272 (=> (not res!203579) (not e!223002))))

(assert (=> b!364272 (= res!203579 (not (validKeyInArray!0 (select (arr!9826 a!4289) i!1472))))))

(declare-fun b!364273 () Bool)

(declare-fun res!203583 () Bool)

(assert (=> b!364273 (=> (not res!203583) (not e!223004))))

(assert (=> b!364273 (= res!203583 (bvsgt from!3650 #b00000000000000000000000000000000))))

(assert (= (and start!36458 res!203584) b!364272))

(assert (= (and b!364272 res!203579) b!364270))

(assert (= (and b!364270 res!203580) b!364268))

(assert (= (and b!364268 res!203581) b!364271))

(assert (= (and b!364271 res!203582) b!364273))

(assert (= (and b!364273 res!203583) b!364269))

(declare-fun m!361819 () Bool)

(assert (=> start!36458 m!361819))

(declare-fun m!361821 () Bool)

(assert (=> b!364272 m!361821))

(assert (=> b!364272 m!361821))

(declare-fun m!361823 () Bool)

(assert (=> b!364272 m!361823))

(declare-fun m!361825 () Bool)

(assert (=> b!364271 m!361825))

(declare-fun m!361827 () Bool)

(assert (=> b!364271 m!361827))

(declare-fun m!361829 () Bool)

(assert (=> b!364271 m!361829))

(declare-fun m!361831 () Bool)

(assert (=> b!364270 m!361831))

(declare-fun m!361833 () Bool)

(assert (=> b!364269 m!361833))

(declare-fun m!361835 () Bool)

(assert (=> b!364269 m!361835))

(declare-fun m!361837 () Bool)

(assert (=> b!364269 m!361837))

(push 1)

(assert (not b!364271))

(assert (not b!364272))

(assert (not b!364269))

(assert (not start!36458))

(assert (not b!364270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

