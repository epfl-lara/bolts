; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36384 () Bool)

(assert start!36384)

(declare-fun res!203008 () Bool)

(declare-fun e!222687 () Bool)

(assert (=> start!36384 (=> (not res!203008) (not e!222687))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20626 0))(
  ( (array!20627 (arr!9789 (Array (_ BitVec 32) (_ BitVec 64))) (size!10141 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20626)

(assert (=> start!36384 (= res!203008 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10141 a!4289))))))

(assert (=> start!36384 e!222687))

(assert (=> start!36384 true))

(declare-fun array_inv!7227 (array!20626) Bool)

(assert (=> start!36384 (array_inv!7227 a!4289)))

(declare-fun b!363693 () Bool)

(declare-fun res!203006 () Bool)

(assert (=> b!363693 (=> (not res!203006) (not e!222687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363693 (= res!203006 (not (validKeyInArray!0 (select (arr!9789 a!4289) i!1472))))))

(declare-fun b!363694 () Bool)

(declare-fun res!203007 () Bool)

(assert (=> b!363694 (=> (not res!203007) (not e!222687))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363694 (= res!203007 (validKeyInArray!0 k!2974))))

(declare-fun b!363695 () Bool)

(declare-fun e!222688 () Bool)

(assert (=> b!363695 (= e!222688 (not true))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!167984 () array!20626)

(declare-fun lt!167983 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20626 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363695 (= (bvadd (arrayCountValidKeys!0 lt!167984 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167983) (arrayCountValidKeys!0 lt!167984 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11273 0))(
  ( (Unit!11274) )
))
(declare-fun lt!167981 () Unit!11273)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20626 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11273)

(assert (=> b!363695 (= lt!167981 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167984 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!167980 () (_ BitVec 32))

(assert (=> b!363695 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167980) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167982 () Unit!11273)

(assert (=> b!363695 (= lt!167982 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363696 () Bool)

(assert (=> b!363696 (= e!222687 e!222688)))

(declare-fun res!203005 () Bool)

(assert (=> b!363696 (=> (not res!203005) (not e!222688))))

(assert (=> b!363696 (= res!203005 (and (= lt!167983 (bvadd #b00000000000000000000000000000001 lt!167980)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363696 (= lt!167983 (arrayCountValidKeys!0 lt!167984 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363696 (= lt!167980 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363696 (= lt!167984 (array!20627 (store (arr!9789 a!4289) i!1472 k!2974) (size!10141 a!4289)))))

(declare-fun b!363697 () Bool)

(declare-fun res!203004 () Bool)

(assert (=> b!363697 (=> (not res!203004) (not e!222687))))

(assert (=> b!363697 (= res!203004 (and (bvslt (size!10141 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10141 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36384 res!203008) b!363693))

(assert (= (and b!363693 res!203006) b!363694))

(assert (= (and b!363694 res!203007) b!363697))

(assert (= (and b!363697 res!203004) b!363696))

(assert (= (and b!363696 res!203005) b!363695))

(declare-fun m!361019 () Bool)

(assert (=> start!36384 m!361019))

(declare-fun m!361021 () Bool)

(assert (=> b!363696 m!361021))

(declare-fun m!361023 () Bool)

(assert (=> b!363696 m!361023))

(declare-fun m!361025 () Bool)

(assert (=> b!363696 m!361025))

(declare-fun m!361027 () Bool)

(assert (=> b!363694 m!361027))

(declare-fun m!361029 () Bool)

(assert (=> b!363693 m!361029))

(assert (=> b!363693 m!361029))

(declare-fun m!361031 () Bool)

(assert (=> b!363693 m!361031))

(declare-fun m!361033 () Bool)

(assert (=> b!363695 m!361033))

(declare-fun m!361035 () Bool)

(assert (=> b!363695 m!361035))

(declare-fun m!361037 () Bool)

(assert (=> b!363695 m!361037))

(declare-fun m!361039 () Bool)

(assert (=> b!363695 m!361039))

(declare-fun m!361041 () Bool)

(assert (=> b!363695 m!361041))

(declare-fun m!361043 () Bool)

(assert (=> b!363695 m!361043))

(push 1)

(assert (not b!363694))

(assert (not b!363696))

(assert (not b!363695))

(assert (not start!36384))

(assert (not b!363693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

