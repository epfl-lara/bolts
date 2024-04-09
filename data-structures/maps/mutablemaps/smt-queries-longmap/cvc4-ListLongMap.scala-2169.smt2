; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36360 () Bool)

(assert start!36360)

(declare-fun b!363513 () Bool)

(declare-fun e!222581 () Bool)

(assert (=> b!363513 (= e!222581 (not true))))

(declare-datatypes ((array!20602 0))(
  ( (array!20603 (arr!9777 (Array (_ BitVec 32) (_ BitVec 64))) (size!10129 (_ BitVec 32))) )
))
(declare-fun lt!167800 () array!20602)

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun lt!167801 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20602 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363513 (= (bvadd (arrayCountValidKeys!0 lt!167800 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167801) (arrayCountValidKeys!0 lt!167800 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11249 0))(
  ( (Unit!11250) )
))
(declare-fun lt!167802 () Unit!11249)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20602 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11249)

(assert (=> b!363513 (= lt!167802 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167800 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun a!4289 () array!20602)

(declare-fun lt!167803 () (_ BitVec 32))

(assert (=> b!363513 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167803) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167804 () Unit!11249)

(assert (=> b!363513 (= lt!167804 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!202827 () Bool)

(declare-fun e!222579 () Bool)

(assert (=> start!36360 (=> (not res!202827) (not e!222579))))

(assert (=> start!36360 (= res!202827 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10129 a!4289))))))

(assert (=> start!36360 e!222579))

(assert (=> start!36360 true))

(declare-fun array_inv!7215 (array!20602) Bool)

(assert (=> start!36360 (array_inv!7215 a!4289)))

(declare-fun b!363514 () Bool)

(declare-fun res!202826 () Bool)

(assert (=> b!363514 (=> (not res!202826) (not e!222579))))

(assert (=> b!363514 (= res!202826 (and (bvslt (size!10129 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10129 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363515 () Bool)

(assert (=> b!363515 (= e!222579 e!222581)))

(declare-fun res!202828 () Bool)

(assert (=> b!363515 (=> (not res!202828) (not e!222581))))

(assert (=> b!363515 (= res!202828 (and (= lt!167801 (bvadd #b00000000000000000000000000000001 lt!167803)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363515 (= lt!167801 (arrayCountValidKeys!0 lt!167800 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363515 (= lt!167803 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363515 (= lt!167800 (array!20603 (store (arr!9777 a!4289) i!1472 k!2974) (size!10129 a!4289)))))

(declare-fun b!363516 () Bool)

(declare-fun res!202824 () Bool)

(assert (=> b!363516 (=> (not res!202824) (not e!222579))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363516 (= res!202824 (not (validKeyInArray!0 (select (arr!9777 a!4289) i!1472))))))

(declare-fun b!363517 () Bool)

(declare-fun res!202825 () Bool)

(assert (=> b!363517 (=> (not res!202825) (not e!222579))))

(assert (=> b!363517 (= res!202825 (validKeyInArray!0 k!2974))))

(assert (= (and start!36360 res!202827) b!363516))

(assert (= (and b!363516 res!202824) b!363517))

(assert (= (and b!363517 res!202825) b!363514))

(assert (= (and b!363514 res!202826) b!363515))

(assert (= (and b!363515 res!202828) b!363513))

(declare-fun m!360707 () Bool)

(assert (=> start!36360 m!360707))

(declare-fun m!360709 () Bool)

(assert (=> b!363513 m!360709))

(declare-fun m!360711 () Bool)

(assert (=> b!363513 m!360711))

(declare-fun m!360713 () Bool)

(assert (=> b!363513 m!360713))

(declare-fun m!360715 () Bool)

(assert (=> b!363513 m!360715))

(declare-fun m!360717 () Bool)

(assert (=> b!363513 m!360717))

(declare-fun m!360719 () Bool)

(assert (=> b!363513 m!360719))

(declare-fun m!360721 () Bool)

(assert (=> b!363517 m!360721))

(declare-fun m!360723 () Bool)

(assert (=> b!363515 m!360723))

(declare-fun m!360725 () Bool)

(assert (=> b!363515 m!360725))

(declare-fun m!360727 () Bool)

(assert (=> b!363515 m!360727))

(declare-fun m!360729 () Bool)

(assert (=> b!363516 m!360729))

(assert (=> b!363516 m!360729))

(declare-fun m!360731 () Bool)

(assert (=> b!363516 m!360731))

(push 1)

(assert (not b!363513))

(assert (not start!36360))

(assert (not b!363515))

(assert (not b!363517))

(assert (not b!363516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

