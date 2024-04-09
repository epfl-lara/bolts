; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36390 () Bool)

(assert start!36390)

(declare-fun b!363738 () Bool)

(declare-fun res!203050 () Bool)

(declare-fun e!222716 () Bool)

(assert (=> b!363738 (=> (not res!203050) (not e!222716))))

(declare-datatypes ((array!20632 0))(
  ( (array!20633 (arr!9792 (Array (_ BitVec 32) (_ BitVec 64))) (size!10144 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20632)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363738 (= res!203050 (not (validKeyInArray!0 (select (arr!9792 a!4289) i!1472))))))

(declare-fun b!363739 () Bool)

(declare-fun e!222714 () Bool)

(assert (=> b!363739 (= e!222716 e!222714)))

(declare-fun res!203052 () Bool)

(assert (=> b!363739 (=> (not res!203052) (not e!222714))))

(declare-fun lt!168025 () (_ BitVec 32))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168028 () (_ BitVec 32))

(assert (=> b!363739 (= res!203052 (and (= lt!168025 (bvadd #b00000000000000000000000000000001 lt!168028)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168029 () array!20632)

(declare-fun arrayCountValidKeys!0 (array!20632 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363739 (= lt!168025 (arrayCountValidKeys!0 lt!168029 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363739 (= lt!168028 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363739 (= lt!168029 (array!20633 (store (arr!9792 a!4289) i!1472 k!2974) (size!10144 a!4289)))))

(declare-fun res!203051 () Bool)

(assert (=> start!36390 (=> (not res!203051) (not e!222716))))

(assert (=> start!36390 (= res!203051 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10144 a!4289))))))

(assert (=> start!36390 e!222716))

(assert (=> start!36390 true))

(declare-fun array_inv!7230 (array!20632) Bool)

(assert (=> start!36390 (array_inv!7230 a!4289)))

(declare-fun b!363740 () Bool)

(declare-fun res!203049 () Bool)

(assert (=> b!363740 (=> (not res!203049) (not e!222716))))

(assert (=> b!363740 (= res!203049 (and (bvslt (size!10144 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10144 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363741 () Bool)

(declare-fun res!203053 () Bool)

(assert (=> b!363741 (=> (not res!203053) (not e!222716))))

(assert (=> b!363741 (= res!203053 (validKeyInArray!0 k!2974))))

(declare-fun b!363742 () Bool)

(assert (=> b!363742 (= e!222714 (not true))))

(assert (=> b!363742 (= (bvadd (arrayCountValidKeys!0 lt!168029 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168025) (arrayCountValidKeys!0 lt!168029 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11279 0))(
  ( (Unit!11280) )
))
(declare-fun lt!168027 () Unit!11279)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20632 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11279)

(assert (=> b!363742 (= lt!168027 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168029 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!363742 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168028) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168026 () Unit!11279)

(assert (=> b!363742 (= lt!168026 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36390 res!203051) b!363738))

(assert (= (and b!363738 res!203050) b!363741))

(assert (= (and b!363741 res!203053) b!363740))

(assert (= (and b!363740 res!203049) b!363739))

(assert (= (and b!363739 res!203052) b!363742))

(declare-fun m!361097 () Bool)

(assert (=> b!363741 m!361097))

(declare-fun m!361099 () Bool)

(assert (=> b!363739 m!361099))

(declare-fun m!361101 () Bool)

(assert (=> b!363739 m!361101))

(declare-fun m!361103 () Bool)

(assert (=> b!363739 m!361103))

(declare-fun m!361105 () Bool)

(assert (=> start!36390 m!361105))

(declare-fun m!361107 () Bool)

(assert (=> b!363742 m!361107))

(declare-fun m!361109 () Bool)

(assert (=> b!363742 m!361109))

(declare-fun m!361111 () Bool)

(assert (=> b!363742 m!361111))

(declare-fun m!361113 () Bool)

(assert (=> b!363742 m!361113))

(declare-fun m!361115 () Bool)

(assert (=> b!363742 m!361115))

(declare-fun m!361117 () Bool)

(assert (=> b!363742 m!361117))

(declare-fun m!361119 () Bool)

(assert (=> b!363738 m!361119))

(assert (=> b!363738 m!361119))

(declare-fun m!361121 () Bool)

(assert (=> b!363738 m!361121))

(push 1)

(assert (not start!36390))

(assert (not b!363742))

(assert (not b!363739))

(assert (not b!363741))

(assert (not b!363738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

