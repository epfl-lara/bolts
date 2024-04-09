; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36380 () Bool)

(assert start!36380)

(declare-fun res!202977 () Bool)

(declare-fun e!222669 () Bool)

(assert (=> start!36380 (=> (not res!202977) (not e!222669))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20622 0))(
  ( (array!20623 (arr!9787 (Array (_ BitVec 32) (_ BitVec 64))) (size!10139 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20622)

(assert (=> start!36380 (= res!202977 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10139 a!4289))))))

(assert (=> start!36380 e!222669))

(assert (=> start!36380 true))

(declare-fun array_inv!7225 (array!20622) Bool)

(assert (=> start!36380 (array_inv!7225 a!4289)))

(declare-fun b!363663 () Bool)

(declare-fun e!222670 () Bool)

(assert (=> b!363663 (= e!222670 (not true))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!167950 () array!20622)

(declare-fun lt!167953 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20622 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363663 (= (bvadd (arrayCountValidKeys!0 lt!167950 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167953) (arrayCountValidKeys!0 lt!167950 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11269 0))(
  ( (Unit!11270) )
))
(declare-fun lt!167951 () Unit!11269)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20622 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11269)

(assert (=> b!363663 (= lt!167951 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167950 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!167954 () (_ BitVec 32))

(assert (=> b!363663 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167954) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167952 () Unit!11269)

(assert (=> b!363663 (= lt!167952 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363664 () Bool)

(declare-fun res!202974 () Bool)

(assert (=> b!363664 (=> (not res!202974) (not e!222669))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363664 (= res!202974 (validKeyInArray!0 k!2974))))

(declare-fun b!363665 () Bool)

(declare-fun res!202976 () Bool)

(assert (=> b!363665 (=> (not res!202976) (not e!222669))))

(assert (=> b!363665 (= res!202976 (and (bvslt (size!10139 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10139 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363666 () Bool)

(assert (=> b!363666 (= e!222669 e!222670)))

(declare-fun res!202975 () Bool)

(assert (=> b!363666 (=> (not res!202975) (not e!222670))))

(assert (=> b!363666 (= res!202975 (and (= lt!167953 (bvadd #b00000000000000000000000000000001 lt!167954)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363666 (= lt!167953 (arrayCountValidKeys!0 lt!167950 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363666 (= lt!167954 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363666 (= lt!167950 (array!20623 (store (arr!9787 a!4289) i!1472 k!2974) (size!10139 a!4289)))))

(declare-fun b!363667 () Bool)

(declare-fun res!202978 () Bool)

(assert (=> b!363667 (=> (not res!202978) (not e!222669))))

(assert (=> b!363667 (= res!202978 (not (validKeyInArray!0 (select (arr!9787 a!4289) i!1472))))))

(assert (= (and start!36380 res!202977) b!363667))

(assert (= (and b!363667 res!202978) b!363664))

(assert (= (and b!363664 res!202974) b!363665))

(assert (= (and b!363665 res!202976) b!363666))

(assert (= (and b!363666 res!202975) b!363663))

(declare-fun m!360967 () Bool)

(assert (=> start!36380 m!360967))

(declare-fun m!360969 () Bool)

(assert (=> b!363664 m!360969))

(declare-fun m!360971 () Bool)

(assert (=> b!363667 m!360971))

(assert (=> b!363667 m!360971))

(declare-fun m!360973 () Bool)

(assert (=> b!363667 m!360973))

(declare-fun m!360975 () Bool)

(assert (=> b!363666 m!360975))

(declare-fun m!360977 () Bool)

(assert (=> b!363666 m!360977))

(declare-fun m!360979 () Bool)

(assert (=> b!363666 m!360979))

(declare-fun m!360981 () Bool)

(assert (=> b!363663 m!360981))

(declare-fun m!360983 () Bool)

(assert (=> b!363663 m!360983))

(declare-fun m!360985 () Bool)

(assert (=> b!363663 m!360985))

(declare-fun m!360987 () Bool)

(assert (=> b!363663 m!360987))

(declare-fun m!360989 () Bool)

(assert (=> b!363663 m!360989))

(declare-fun m!360991 () Bool)

(assert (=> b!363663 m!360991))

(push 1)

(assert (not b!363664))

(assert (not b!363663))

(assert (not b!363667))

(assert (not b!363666))

(assert (not start!36380))

(check-sat)

(pop 1)

