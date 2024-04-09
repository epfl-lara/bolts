; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36536 () Bool)

(assert start!36536)

(declare-fun b!364787 () Bool)

(declare-fun e!223304 () Bool)

(assert (=> b!364787 (= e!223304 true)))

(declare-datatypes ((array!20757 0))(
  ( (array!20758 (arr!9853 (Array (_ BitVec 32) (_ BitVec 64))) (size!10205 (_ BitVec 32))) )
))
(declare-fun lt!169018 () array!20757)

(declare-fun i!1472 () (_ BitVec 32))

(declare-fun a!4289 () array!20757)

(declare-fun arrayCountValidKeys!0 (array!20757 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364787 (= (arrayCountValidKeys!0 lt!169018 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun k!2974 () (_ BitVec 64))

(declare-datatypes ((Unit!11365 0))(
  ( (Unit!11366) )
))
(declare-fun lt!169021 () Unit!11365)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20757 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11365)

(assert (=> b!364787 (= lt!169021 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun b!364788 () Bool)

(declare-fun res!204002 () Bool)

(declare-fun e!223307 () Bool)

(assert (=> b!364788 (=> (not res!204002) (not e!223307))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364788 (= res!204002 (validKeyInArray!0 k!2974))))

(declare-fun b!364789 () Bool)

(declare-fun res!204003 () Bool)

(assert (=> b!364789 (=> (not res!204003) (not e!223307))))

(assert (=> b!364789 (= res!204003 (not (validKeyInArray!0 (select (arr!9853 a!4289) i!1472))))))

(declare-fun b!364790 () Bool)

(declare-fun e!223305 () Bool)

(assert (=> b!364790 (= e!223307 e!223305)))

(declare-fun res!204005 () Bool)

(assert (=> b!364790 (=> (not res!204005) (not e!223305))))

(declare-fun lt!169020 () (_ BitVec 32))

(declare-fun lt!169022 () (_ BitVec 32))

(assert (=> b!364790 (= res!204005 (and (= lt!169022 (bvadd #b00000000000000000000000000000001 lt!169020)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364790 (= lt!169022 (arrayCountValidKeys!0 lt!169018 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364790 (= lt!169020 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364790 (= lt!169018 (array!20758 (store (arr!9853 a!4289) i!1472 k!2974) (size!10205 a!4289)))))

(declare-fun res!204004 () Bool)

(assert (=> start!36536 (=> (not res!204004) (not e!223307))))

(assert (=> start!36536 (= res!204004 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10205 a!4289))))))

(assert (=> start!36536 e!223307))

(assert (=> start!36536 true))

(declare-fun array_inv!7291 (array!20757) Bool)

(assert (=> start!36536 (array_inv!7291 a!4289)))

(declare-fun b!364791 () Bool)

(declare-fun res!204006 () Bool)

(assert (=> b!364791 (=> (not res!204006) (not e!223307))))

(assert (=> b!364791 (= res!204006 (and (bvslt (size!10205 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10205 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364792 () Bool)

(assert (=> b!364792 (= e!223305 (not e!223304))))

(declare-fun res!204007 () Bool)

(assert (=> b!364792 (=> res!204007 e!223304)))

(declare-fun lt!169019 () (_ BitVec 32))

(declare-fun lt!169014 () (_ BitVec 32))

(assert (=> b!364792 (= res!204007 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10205 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!169014 (bvadd #b00000000000000000000000000000001 lt!169019)))))))

(declare-fun lt!169017 () (_ BitVec 32))

(assert (=> b!364792 (= (bvadd lt!169017 lt!169022) lt!169014)))

(assert (=> b!364792 (= lt!169014 (arrayCountValidKeys!0 lt!169018 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364792 (= lt!169017 (arrayCountValidKeys!0 lt!169018 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!169013 () Unit!11365)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20757 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11365)

(assert (=> b!364792 (= lt!169013 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!169018 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!169016 () (_ BitVec 32))

(assert (=> b!364792 (= (bvadd lt!169016 lt!169020) lt!169019)))

(assert (=> b!364792 (= lt!169019 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364792 (= lt!169016 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!169015 () Unit!11365)

(assert (=> b!364792 (= lt!169015 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36536 res!204004) b!364789))

(assert (= (and b!364789 res!204003) b!364788))

(assert (= (and b!364788 res!204002) b!364791))

(assert (= (and b!364791 res!204006) b!364790))

(assert (= (and b!364790 res!204005) b!364792))

(assert (= (and b!364792 (not res!204007)) b!364787))

(declare-fun m!362617 () Bool)

(assert (=> b!364789 m!362617))

(assert (=> b!364789 m!362617))

(declare-fun m!362619 () Bool)

(assert (=> b!364789 m!362619))

(declare-fun m!362621 () Bool)

(assert (=> b!364787 m!362621))

(declare-fun m!362623 () Bool)

(assert (=> b!364787 m!362623))

(declare-fun m!362625 () Bool)

(assert (=> b!364787 m!362625))

(declare-fun m!362627 () Bool)

(assert (=> b!364788 m!362627))

(declare-fun m!362629 () Bool)

(assert (=> b!364792 m!362629))

(declare-fun m!362631 () Bool)

(assert (=> b!364792 m!362631))

(declare-fun m!362633 () Bool)

(assert (=> b!364792 m!362633))

(declare-fun m!362635 () Bool)

(assert (=> b!364792 m!362635))

(declare-fun m!362637 () Bool)

(assert (=> b!364792 m!362637))

(declare-fun m!362639 () Bool)

(assert (=> b!364792 m!362639))

(declare-fun m!362641 () Bool)

(assert (=> b!364790 m!362641))

(declare-fun m!362643 () Bool)

(assert (=> b!364790 m!362643))

(declare-fun m!362645 () Bool)

(assert (=> b!364790 m!362645))

(declare-fun m!362647 () Bool)

(assert (=> start!36536 m!362647))

(push 1)

(assert (not b!364790))

(assert (not b!364787))

(assert (not b!364789))

(assert (not b!364788))

(assert (not b!364792))

(assert (not start!36536))

(check-sat)

