; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36452 () Bool)

(assert start!36452)

(declare-fun b!364214 () Bool)

(declare-fun res!203529 () Bool)

(declare-fun e!222977 () Bool)

(assert (=> b!364214 (=> (not res!203529) (not e!222977))))

(declare-datatypes ((array!20694 0))(
  ( (array!20695 (arr!9823 (Array (_ BitVec 32) (_ BitVec 64))) (size!10175 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20694)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364214 (= res!203529 (not (validKeyInArray!0 (select (arr!9823 a!4289) i!1472))))))

(declare-fun b!364215 () Bool)

(declare-fun res!203527 () Bool)

(assert (=> b!364215 (=> (not res!203527) (not e!222977))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364215 (= res!203527 (and (bvslt (size!10175 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10175 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364216 () Bool)

(declare-fun res!203525 () Bool)

(assert (=> b!364216 (=> (not res!203525) (not e!222977))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364216 (= res!203525 (validKeyInArray!0 k!2974))))

(declare-fun b!364217 () Bool)

(declare-fun e!222975 () Bool)

(assert (=> b!364217 (= e!222975 (not true))))

(declare-fun lt!168448 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20694 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364217 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168448) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11305 0))(
  ( (Unit!11306) )
))
(declare-fun lt!168449 () Unit!11305)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20694 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11305)

(assert (=> b!364217 (= lt!168449 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364218 () Bool)

(assert (=> b!364218 (= e!222977 e!222975)))

(declare-fun res!203528 () Bool)

(assert (=> b!364218 (=> (not res!203528) (not e!222975))))

(assert (=> b!364218 (= res!203528 (= (arrayCountValidKeys!0 (array!20695 (store (arr!9823 a!4289) i!1472 k!2974) (size!10175 a!4289)) from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 lt!168448)))))

(assert (=> b!364218 (= lt!168448 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364219 () Bool)

(declare-fun res!203530 () Bool)

(assert (=> b!364219 (=> (not res!203530) (not e!222975))))

(assert (=> b!364219 (= res!203530 (bvsgt from!3650 #b00000000000000000000000000000000))))

(declare-fun res!203526 () Bool)

(assert (=> start!36452 (=> (not res!203526) (not e!222977))))

(assert (=> start!36452 (= res!203526 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10175 a!4289))))))

(assert (=> start!36452 e!222977))

(assert (=> start!36452 true))

(declare-fun array_inv!7261 (array!20694) Bool)

(assert (=> start!36452 (array_inv!7261 a!4289)))

(assert (= (and start!36452 res!203526) b!364214))

(assert (= (and b!364214 res!203529) b!364216))

(assert (= (and b!364216 res!203525) b!364215))

(assert (= (and b!364215 res!203527) b!364218))

(assert (= (and b!364218 res!203528) b!364219))

(assert (= (and b!364219 res!203530) b!364217))

(declare-fun m!361759 () Bool)

(assert (=> b!364217 m!361759))

(declare-fun m!361761 () Bool)

(assert (=> b!364217 m!361761))

(declare-fun m!361763 () Bool)

(assert (=> b!364217 m!361763))

(declare-fun m!361765 () Bool)

(assert (=> start!36452 m!361765))

(declare-fun m!361767 () Bool)

(assert (=> b!364214 m!361767))

(assert (=> b!364214 m!361767))

(declare-fun m!361769 () Bool)

(assert (=> b!364214 m!361769))

(declare-fun m!361771 () Bool)

(assert (=> b!364218 m!361771))

(declare-fun m!361773 () Bool)

(assert (=> b!364218 m!361773))

(declare-fun m!361775 () Bool)

(assert (=> b!364218 m!361775))

(declare-fun m!361777 () Bool)

(assert (=> b!364216 m!361777))

(push 1)

(assert (not b!364218))

(assert (not b!364217))

(assert (not b!364214))

(assert (not start!36452))

(assert (not b!364216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

