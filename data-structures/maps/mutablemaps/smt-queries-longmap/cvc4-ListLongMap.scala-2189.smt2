; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36480 () Bool)

(assert start!36480)

(declare-fun b!364440 () Bool)

(declare-fun e!223102 () Bool)

(declare-fun e!223101 () Bool)

(assert (=> b!364440 (= e!223102 e!223101)))

(declare-fun res!203751 () Bool)

(assert (=> b!364440 (=> (not res!203751) (not e!223101))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!168612 () (_ BitVec 32))

(declare-fun lt!168611 () (_ BitVec 32))

(assert (=> b!364440 (= res!203751 (and (= lt!168612 (bvadd #b00000000000000000000000000000001 lt!168611)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20722 0))(
  ( (array!20723 (arr!9837 (Array (_ BitVec 32) (_ BitVec 64))) (size!10189 (_ BitVec 32))) )
))
(declare-fun lt!168614 () array!20722)

(declare-fun arrayCountValidKeys!0 (array!20722 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364440 (= lt!168612 (arrayCountValidKeys!0 lt!168614 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun a!4289 () array!20722)

(assert (=> b!364440 (= lt!168611 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364440 (= lt!168614 (array!20723 (store (arr!9837 a!4289) i!1472 k!2974) (size!10189 a!4289)))))

(declare-fun b!364441 () Bool)

(declare-fun res!203753 () Bool)

(assert (=> b!364441 (=> (not res!203753) (not e!223102))))

(assert (=> b!364441 (= res!203753 (and (bvslt (size!10189 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10189 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!203754 () Bool)

(assert (=> start!36480 (=> (not res!203754) (not e!223102))))

(assert (=> start!36480 (= res!203754 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10189 a!4289))))))

(assert (=> start!36480 e!223102))

(assert (=> start!36480 true))

(declare-fun array_inv!7275 (array!20722) Bool)

(assert (=> start!36480 (array_inv!7275 a!4289)))

(declare-fun b!364442 () Bool)

(declare-fun res!203752 () Bool)

(assert (=> b!364442 (=> (not res!203752) (not e!223102))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364442 (= res!203752 (not (validKeyInArray!0 (select (arr!9837 a!4289) i!1472))))))

(declare-fun b!364443 () Bool)

(declare-fun res!203755 () Bool)

(assert (=> b!364443 (=> (not res!203755) (not e!223102))))

(assert (=> b!364443 (= res!203755 (validKeyInArray!0 k!2974))))

(declare-fun b!364444 () Bool)

(assert (=> b!364444 (= e!223101 (not true))))

(assert (=> b!364444 (= (bvadd (arrayCountValidKeys!0 lt!168614 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168612) (arrayCountValidKeys!0 lt!168614 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11333 0))(
  ( (Unit!11334) )
))
(declare-fun lt!168613 () Unit!11333)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20722 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11333)

(assert (=> b!364444 (= lt!168613 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168614 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!364444 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168611) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168610 () Unit!11333)

(assert (=> b!364444 (= lt!168610 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36480 res!203754) b!364442))

(assert (= (and b!364442 res!203752) b!364443))

(assert (= (and b!364443 res!203755) b!364441))

(assert (= (and b!364441 res!203753) b!364440))

(assert (= (and b!364440 res!203751) b!364444))

(declare-fun m!362087 () Bool)

(assert (=> b!364444 m!362087))

(declare-fun m!362089 () Bool)

(assert (=> b!364444 m!362089))

(declare-fun m!362091 () Bool)

(assert (=> b!364444 m!362091))

(declare-fun m!362093 () Bool)

(assert (=> b!364444 m!362093))

(declare-fun m!362095 () Bool)

(assert (=> b!364444 m!362095))

(declare-fun m!362097 () Bool)

(assert (=> b!364444 m!362097))

(declare-fun m!362099 () Bool)

(assert (=> start!36480 m!362099))

(declare-fun m!362101 () Bool)

(assert (=> b!364443 m!362101))

(declare-fun m!362103 () Bool)

(assert (=> b!364440 m!362103))

(declare-fun m!362105 () Bool)

(assert (=> b!364440 m!362105))

(declare-fun m!362107 () Bool)

(assert (=> b!364440 m!362107))

(declare-fun m!362109 () Bool)

(assert (=> b!364442 m!362109))

(assert (=> b!364442 m!362109))

(declare-fun m!362111 () Bool)

(assert (=> b!364442 m!362111))

(push 1)

(assert (not start!36480))

(assert (not b!364440))

(assert (not b!364444))

(assert (not b!364442))

(assert (not b!364443))

(check-sat)

