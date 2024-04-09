; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36540 () Bool)

(assert start!36540)

(declare-fun b!364823 () Bool)

(declare-fun e!223330 () Bool)

(assert (=> b!364823 (= e!223330 true)))

(declare-datatypes ((array!20761 0))(
  ( (array!20762 (arr!9855 (Array (_ BitVec 32) (_ BitVec 64))) (size!10207 (_ BitVec 32))) )
))
(declare-fun lt!169077 () array!20761)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun a!4289 () array!20761)

(declare-fun arrayCountValidKeys!0 (array!20761 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364823 (= (arrayCountValidKeys!0 lt!169077 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-datatypes ((Unit!11369 0))(
  ( (Unit!11370) )
))
(declare-fun lt!169082 () Unit!11369)

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20761 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11369)

(assert (=> b!364823 (= lt!169082 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun res!204041 () Bool)

(declare-fun e!223329 () Bool)

(assert (=> start!36540 (=> (not res!204041) (not e!223329))))

(assert (=> start!36540 (= res!204041 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10207 a!4289))))))

(assert (=> start!36540 e!223329))

(assert (=> start!36540 true))

(declare-fun array_inv!7293 (array!20761) Bool)

(assert (=> start!36540 (array_inv!7293 a!4289)))

(declare-fun b!364824 () Bool)

(declare-fun e!223331 () Bool)

(assert (=> b!364824 (= e!223329 e!223331)))

(declare-fun res!204038 () Bool)

(assert (=> b!364824 (=> (not res!204038) (not e!223331))))

(declare-fun lt!169080 () (_ BitVec 32))

(declare-fun lt!169076 () (_ BitVec 32))

(assert (=> b!364824 (= res!204038 (and (= lt!169080 (bvadd #b00000000000000000000000000000001 lt!169076)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364824 (= lt!169080 (arrayCountValidKeys!0 lt!169077 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364824 (= lt!169076 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364824 (= lt!169077 (array!20762 (store (arr!9855 a!4289) i!1472 k!2974) (size!10207 a!4289)))))

(declare-fun b!364825 () Bool)

(declare-fun res!204042 () Bool)

(assert (=> b!364825 (=> (not res!204042) (not e!223329))))

(assert (=> b!364825 (= res!204042 (and (bvslt (size!10207 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10207 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364826 () Bool)

(declare-fun res!204039 () Bool)

(assert (=> b!364826 (=> (not res!204039) (not e!223329))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364826 (= res!204039 (not (validKeyInArray!0 (select (arr!9855 a!4289) i!1472))))))

(declare-fun b!364827 () Bool)

(declare-fun res!204040 () Bool)

(assert (=> b!364827 (=> (not res!204040) (not e!223329))))

(assert (=> b!364827 (= res!204040 (validKeyInArray!0 k!2974))))

(declare-fun b!364828 () Bool)

(assert (=> b!364828 (= e!223331 (not e!223330))))

(declare-fun res!204043 () Bool)

(assert (=> b!364828 (=> res!204043 e!223330)))

(declare-fun lt!169073 () (_ BitVec 32))

(declare-fun lt!169081 () (_ BitVec 32))

(assert (=> b!364828 (= res!204043 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10207 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!169073 (bvadd #b00000000000000000000000000000001 lt!169081)))))))

(declare-fun lt!169078 () (_ BitVec 32))

(assert (=> b!364828 (= (bvadd lt!169078 lt!169080) lt!169073)))

(assert (=> b!364828 (= lt!169073 (arrayCountValidKeys!0 lt!169077 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364828 (= lt!169078 (arrayCountValidKeys!0 lt!169077 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!169074 () Unit!11369)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11369)

(assert (=> b!364828 (= lt!169074 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!169077 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!169079 () (_ BitVec 32))

(assert (=> b!364828 (= (bvadd lt!169079 lt!169076) lt!169081)))

(assert (=> b!364828 (= lt!169081 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364828 (= lt!169079 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!169075 () Unit!11369)

(assert (=> b!364828 (= lt!169075 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36540 res!204041) b!364826))

(assert (= (and b!364826 res!204039) b!364827))

(assert (= (and b!364827 res!204040) b!364825))

(assert (= (and b!364825 res!204042) b!364824))

(assert (= (and b!364824 res!204038) b!364828))

(assert (= (and b!364828 (not res!204043)) b!364823))

(declare-fun m!362681 () Bool)

(assert (=> start!36540 m!362681))

(declare-fun m!362683 () Bool)

(assert (=> b!364824 m!362683))

(declare-fun m!362685 () Bool)

(assert (=> b!364824 m!362685))

(declare-fun m!362687 () Bool)

(assert (=> b!364824 m!362687))

(declare-fun m!362689 () Bool)

(assert (=> b!364823 m!362689))

(declare-fun m!362691 () Bool)

(assert (=> b!364823 m!362691))

(declare-fun m!362693 () Bool)

(assert (=> b!364823 m!362693))

(declare-fun m!362695 () Bool)

(assert (=> b!364827 m!362695))

(declare-fun m!362697 () Bool)

(assert (=> b!364828 m!362697))

(declare-fun m!362699 () Bool)

(assert (=> b!364828 m!362699))

(declare-fun m!362701 () Bool)

(assert (=> b!364828 m!362701))

(declare-fun m!362703 () Bool)

(assert (=> b!364828 m!362703))

(declare-fun m!362705 () Bool)

(assert (=> b!364828 m!362705))

(declare-fun m!362707 () Bool)

(assert (=> b!364828 m!362707))

(declare-fun m!362709 () Bool)

(assert (=> b!364826 m!362709))

(assert (=> b!364826 m!362709))

(declare-fun m!362711 () Bool)

(assert (=> b!364826 m!362711))

(push 1)

(assert (not start!36540))

(assert (not b!364827))

(assert (not b!364824))

(assert (not b!364828))

(assert (not b!364823))

(assert (not b!364826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

