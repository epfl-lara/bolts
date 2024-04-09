; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36470 () Bool)

(assert start!36470)

(declare-fun b!364365 () Bool)

(declare-fun res!203678 () Bool)

(declare-fun e!223057 () Bool)

(assert (=> b!364365 (=> (not res!203678) (not e!223057))))

(declare-datatypes ((array!20712 0))(
  ( (array!20713 (arr!9832 (Array (_ BitVec 32) (_ BitVec 64))) (size!10184 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20712)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364365 (= res!203678 (not (validKeyInArray!0 (select (arr!9832 a!4289) i!1472))))))

(declare-fun b!364366 () Bool)

(declare-fun res!203679 () Bool)

(assert (=> b!364366 (=> (not res!203679) (not e!223057))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364366 (= res!203679 (validKeyInArray!0 k!2974))))

(declare-fun b!364367 () Bool)

(declare-fun e!223058 () Bool)

(assert (=> b!364367 (= e!223057 e!223058)))

(declare-fun res!203677 () Bool)

(assert (=> b!364367 (=> (not res!203677) (not e!223058))))

(declare-fun lt!168537 () (_ BitVec 32))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168535 () (_ BitVec 32))

(assert (=> b!364367 (= res!203677 (and (= lt!168537 (bvadd #b00000000000000000000000000000001 lt!168535)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168536 () array!20712)

(declare-fun arrayCountValidKeys!0 (array!20712 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364367 (= lt!168537 (arrayCountValidKeys!0 lt!168536 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364367 (= lt!168535 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364367 (= lt!168536 (array!20713 (store (arr!9832 a!4289) i!1472 k!2974) (size!10184 a!4289)))))

(declare-fun b!364368 () Bool)

(assert (=> b!364368 (= e!223058 (not true))))

(assert (=> b!364368 (= (bvadd (arrayCountValidKeys!0 lt!168536 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168537) (arrayCountValidKeys!0 lt!168536 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11323 0))(
  ( (Unit!11324) )
))
(declare-fun lt!168539 () Unit!11323)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20712 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11323)

(assert (=> b!364368 (= lt!168539 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168536 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!364368 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168535) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168538 () Unit!11323)

(assert (=> b!364368 (= lt!168538 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!203676 () Bool)

(assert (=> start!36470 (=> (not res!203676) (not e!223057))))

(assert (=> start!36470 (= res!203676 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10184 a!4289))))))

(assert (=> start!36470 e!223057))

(assert (=> start!36470 true))

(declare-fun array_inv!7270 (array!20712) Bool)

(assert (=> start!36470 (array_inv!7270 a!4289)))

(declare-fun b!364369 () Bool)

(declare-fun res!203680 () Bool)

(assert (=> b!364369 (=> (not res!203680) (not e!223057))))

(assert (=> b!364369 (= res!203680 (and (bvslt (size!10184 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10184 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36470 res!203676) b!364365))

(assert (= (and b!364365 res!203678) b!364366))

(assert (= (and b!364366 res!203679) b!364369))

(assert (= (and b!364369 res!203680) b!364367))

(assert (= (and b!364367 res!203677) b!364368))

(declare-fun m!361957 () Bool)

(assert (=> b!364367 m!361957))

(declare-fun m!361959 () Bool)

(assert (=> b!364367 m!361959))

(declare-fun m!361961 () Bool)

(assert (=> b!364367 m!361961))

(declare-fun m!361963 () Bool)

(assert (=> b!364365 m!361963))

(assert (=> b!364365 m!361963))

(declare-fun m!361965 () Bool)

(assert (=> b!364365 m!361965))

(declare-fun m!361967 () Bool)

(assert (=> b!364368 m!361967))

(declare-fun m!361969 () Bool)

(assert (=> b!364368 m!361969))

(declare-fun m!361971 () Bool)

(assert (=> b!364368 m!361971))

(declare-fun m!361973 () Bool)

(assert (=> b!364368 m!361973))

(declare-fun m!361975 () Bool)

(assert (=> b!364368 m!361975))

(declare-fun m!361977 () Bool)

(assert (=> b!364368 m!361977))

(declare-fun m!361979 () Bool)

(assert (=> start!36470 m!361979))

(declare-fun m!361981 () Bool)

(assert (=> b!364366 m!361981))

(push 1)

(assert (not b!364366))

(assert (not b!364365))

(assert (not b!364367))

(assert (not start!36470))

(assert (not b!364368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

