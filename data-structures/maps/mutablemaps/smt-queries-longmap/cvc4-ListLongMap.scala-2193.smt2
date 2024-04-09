; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36528 () Bool)

(assert start!36528)

(declare-fun b!364716 () Bool)

(declare-fun res!203932 () Bool)

(declare-fun e!223259 () Bool)

(assert (=> b!364716 (=> (not res!203932) (not e!223259))))

(declare-datatypes ((array!20749 0))(
  ( (array!20750 (arr!9849 (Array (_ BitVec 32) (_ BitVec 64))) (size!10201 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20749)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364716 (= res!203932 (not (validKeyInArray!0 (select (arr!9849 a!4289) i!1472))))))

(declare-fun b!364717 () Bool)

(declare-fun res!203934 () Bool)

(assert (=> b!364717 (=> (not res!203934) (not e!223259))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!364717 (= res!203934 (validKeyInArray!0 k!2974))))

(declare-fun lt!168894 () (_ BitVec 32))

(declare-fun lt!168896 () (_ BitVec 32))

(declare-fun e!223258 () Bool)

(declare-fun b!364718 () Bool)

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364718 (= e!223258 (not (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10201 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168896 (bvadd #b00000000000000000000000000000001 lt!168894))) (bvslt (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))))

(declare-fun lt!168897 () (_ BitVec 32))

(declare-fun lt!168899 () (_ BitVec 32))

(assert (=> b!364718 (= (bvadd lt!168897 lt!168899) lt!168896)))

(declare-fun lt!168901 () array!20749)

(declare-fun arrayCountValidKeys!0 (array!20749 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364718 (= lt!168896 (arrayCountValidKeys!0 lt!168901 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364718 (= lt!168897 (arrayCountValidKeys!0 lt!168901 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11357 0))(
  ( (Unit!11358) )
))
(declare-fun lt!168900 () Unit!11357)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20749 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11357)

(assert (=> b!364718 (= lt!168900 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168901 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168895 () (_ BitVec 32))

(declare-fun lt!168902 () (_ BitVec 32))

(assert (=> b!364718 (= (bvadd lt!168895 lt!168902) lt!168894)))

(assert (=> b!364718 (= lt!168894 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364718 (= lt!168895 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168898 () Unit!11357)

(assert (=> b!364718 (= lt!168898 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364719 () Bool)

(assert (=> b!364719 (= e!223259 e!223258)))

(declare-fun res!203933 () Bool)

(assert (=> b!364719 (=> (not res!203933) (not e!223258))))

(assert (=> b!364719 (= res!203933 (and (= lt!168899 (bvadd #b00000000000000000000000000000001 lt!168902)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364719 (= lt!168899 (arrayCountValidKeys!0 lt!168901 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364719 (= lt!168902 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364719 (= lt!168901 (array!20750 (store (arr!9849 a!4289) i!1472 k!2974) (size!10201 a!4289)))))

(declare-fun b!364720 () Bool)

(declare-fun res!203931 () Bool)

(assert (=> b!364720 (=> (not res!203931) (not e!223259))))

(assert (=> b!364720 (= res!203931 (and (bvslt (size!10201 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10201 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!203935 () Bool)

(assert (=> start!36528 (=> (not res!203935) (not e!223259))))

(assert (=> start!36528 (= res!203935 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10201 a!4289))))))

(assert (=> start!36528 e!223259))

(assert (=> start!36528 true))

(declare-fun array_inv!7287 (array!20749) Bool)

(assert (=> start!36528 (array_inv!7287 a!4289)))

(assert (= (and start!36528 res!203935) b!364716))

(assert (= (and b!364716 res!203932) b!364717))

(assert (= (and b!364717 res!203934) b!364720))

(assert (= (and b!364720 res!203931) b!364719))

(assert (= (and b!364719 res!203933) b!364718))

(declare-fun m!362495 () Bool)

(assert (=> b!364716 m!362495))

(assert (=> b!364716 m!362495))

(declare-fun m!362497 () Bool)

(assert (=> b!364716 m!362497))

(declare-fun m!362499 () Bool)

(assert (=> b!364717 m!362499))

(declare-fun m!362501 () Bool)

(assert (=> start!36528 m!362501))

(declare-fun m!362503 () Bool)

(assert (=> b!364718 m!362503))

(declare-fun m!362505 () Bool)

(assert (=> b!364718 m!362505))

(declare-fun m!362507 () Bool)

(assert (=> b!364718 m!362507))

(declare-fun m!362509 () Bool)

(assert (=> b!364718 m!362509))

(declare-fun m!362511 () Bool)

(assert (=> b!364718 m!362511))

(declare-fun m!362513 () Bool)

(assert (=> b!364718 m!362513))

(declare-fun m!362515 () Bool)

(assert (=> b!364719 m!362515))

(declare-fun m!362517 () Bool)

(assert (=> b!364719 m!362517))

(declare-fun m!362519 () Bool)

(assert (=> b!364719 m!362519))

(push 1)

(assert (not b!364717))

(assert (not start!36528))

(assert (not b!364719))

(assert (not b!364718))

(assert (not b!364716))

(check-sat)

(pop 1)

(push 1)

(check-sat)

