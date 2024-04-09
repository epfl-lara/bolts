; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36378 () Bool)

(assert start!36378)

(declare-fun b!363648 () Bool)

(declare-fun res!202960 () Bool)

(declare-fun e!222661 () Bool)

(assert (=> b!363648 (=> (not res!202960) (not e!222661))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20620 0))(
  ( (array!20621 (arr!9786 (Array (_ BitVec 32) (_ BitVec 64))) (size!10138 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20620)

(assert (=> b!363648 (= res!202960 (and (bvslt (size!10138 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10138 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363649 () Bool)

(declare-fun res!202961 () Bool)

(assert (=> b!363649 (=> (not res!202961) (not e!222661))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363649 (= res!202961 (not (validKeyInArray!0 (select (arr!9786 a!4289) i!1472))))))

(declare-fun b!363650 () Bool)

(declare-fun res!202963 () Bool)

(assert (=> b!363650 (=> (not res!202963) (not e!222661))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363650 (= res!202963 (validKeyInArray!0 k!2974))))

(declare-fun b!363651 () Bool)

(declare-fun e!222662 () Bool)

(assert (=> b!363651 (= e!222662 (not true))))

(declare-fun lt!167935 () (_ BitVec 32))

(declare-fun lt!167939 () array!20620)

(declare-fun arrayCountValidKeys!0 (array!20620 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363651 (= (bvadd (arrayCountValidKeys!0 lt!167939 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167935) (arrayCountValidKeys!0 lt!167939 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11267 0))(
  ( (Unit!11268) )
))
(declare-fun lt!167938 () Unit!11267)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20620 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11267)

(assert (=> b!363651 (= lt!167938 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167939 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!167937 () (_ BitVec 32))

(assert (=> b!363651 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167937) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167936 () Unit!11267)

(assert (=> b!363651 (= lt!167936 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!202962 () Bool)

(assert (=> start!36378 (=> (not res!202962) (not e!222661))))

(assert (=> start!36378 (= res!202962 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10138 a!4289))))))

(assert (=> start!36378 e!222661))

(assert (=> start!36378 true))

(declare-fun array_inv!7224 (array!20620) Bool)

(assert (=> start!36378 (array_inv!7224 a!4289)))

(declare-fun b!363652 () Bool)

(assert (=> b!363652 (= e!222661 e!222662)))

(declare-fun res!202959 () Bool)

(assert (=> b!363652 (=> (not res!202959) (not e!222662))))

(assert (=> b!363652 (= res!202959 (and (= lt!167935 (bvadd #b00000000000000000000000000000001 lt!167937)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363652 (= lt!167935 (arrayCountValidKeys!0 lt!167939 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363652 (= lt!167937 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363652 (= lt!167939 (array!20621 (store (arr!9786 a!4289) i!1472 k!2974) (size!10138 a!4289)))))

(assert (= (and start!36378 res!202962) b!363649))

(assert (= (and b!363649 res!202961) b!363650))

(assert (= (and b!363650 res!202963) b!363648))

(assert (= (and b!363648 res!202960) b!363652))

(assert (= (and b!363652 res!202959) b!363651))

(declare-fun m!360941 () Bool)

(assert (=> b!363651 m!360941))

(declare-fun m!360943 () Bool)

(assert (=> b!363651 m!360943))

(declare-fun m!360945 () Bool)

(assert (=> b!363651 m!360945))

(declare-fun m!360947 () Bool)

(assert (=> b!363651 m!360947))

(declare-fun m!360949 () Bool)

(assert (=> b!363651 m!360949))

(declare-fun m!360951 () Bool)

(assert (=> b!363651 m!360951))

(declare-fun m!360953 () Bool)

(assert (=> start!36378 m!360953))

(declare-fun m!360955 () Bool)

(assert (=> b!363649 m!360955))

(assert (=> b!363649 m!360955))

(declare-fun m!360957 () Bool)

(assert (=> b!363649 m!360957))

(declare-fun m!360959 () Bool)

(assert (=> b!363652 m!360959))

(declare-fun m!360961 () Bool)

(assert (=> b!363652 m!360961))

(declare-fun m!360963 () Bool)

(assert (=> b!363652 m!360963))

(declare-fun m!360965 () Bool)

(assert (=> b!363650 m!360965))

(push 1)

(assert (not b!363651))

(assert (not b!363649))

(assert (not b!363652))

(assert (not start!36378))

(assert (not b!363650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

