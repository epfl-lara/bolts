; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36530 () Bool)

(assert start!36530)

(declare-fun b!364733 () Bool)

(declare-fun res!203949 () Bool)

(declare-fun e!223271 () Bool)

(assert (=> b!364733 (=> (not res!203949) (not e!223271))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364733 (= res!203949 (validKeyInArray!0 k!2974))))

(declare-fun b!364734 () Bool)

(declare-fun res!203953 () Bool)

(assert (=> b!364734 (=> (not res!203953) (not e!223271))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20751 0))(
  ( (array!20752 (arr!9850 (Array (_ BitVec 32) (_ BitVec 64))) (size!10202 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20751)

(assert (=> b!364734 (= res!203953 (and (bvslt (size!10202 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10202 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!364735 () Bool)

(declare-fun e!223268 () Bool)

(assert (=> b!364735 (= e!223271 e!223268)))

(declare-fun res!203948 () Bool)

(assert (=> b!364735 (=> (not res!203948) (not e!223268))))

(declare-fun lt!168931 () (_ BitVec 32))

(declare-fun lt!168927 () (_ BitVec 32))

(assert (=> b!364735 (= res!203948 (and (= lt!168927 (bvadd #b00000000000000000000000000000001 lt!168931)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168925 () array!20751)

(declare-fun arrayCountValidKeys!0 (array!20751 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364735 (= lt!168927 (arrayCountValidKeys!0 lt!168925 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364735 (= lt!168931 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364735 (= lt!168925 (array!20752 (store (arr!9850 a!4289) i!1472 k!2974) (size!10202 a!4289)))))

(declare-fun b!364736 () Bool)

(declare-fun e!223269 () Bool)

(assert (=> b!364736 (= e!223269 true)))

(assert (=> b!364736 (= (arrayCountValidKeys!0 lt!168925 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4289 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1472))))))

(declare-datatypes ((Unit!11359 0))(
  ( (Unit!11360) )
))
(declare-fun lt!168928 () Unit!11359)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20751 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11359)

(assert (=> b!364736 (= lt!168928 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4289 i!1472 k!2974 (bvsub from!3650 #b00000000000000000000000000000001)))))

(declare-fun b!364737 () Bool)

(declare-fun res!203952 () Bool)

(assert (=> b!364737 (=> (not res!203952) (not e!223271))))

(assert (=> b!364737 (= res!203952 (not (validKeyInArray!0 (select (arr!9850 a!4289) i!1472))))))

(declare-fun b!364738 () Bool)

(assert (=> b!364738 (= e!223268 (not e!223269))))

(declare-fun res!203950 () Bool)

(assert (=> b!364738 (=> res!203950 e!223269)))

(declare-fun lt!168932 () (_ BitVec 32))

(declare-fun lt!168930 () (_ BitVec 32))

(assert (=> b!364738 (= res!203950 (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10202 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (not (= lt!168930 (bvadd #b00000000000000000000000000000001 lt!168932)))))))

(declare-fun lt!168924 () (_ BitVec 32))

(assert (=> b!364738 (= (bvadd lt!168924 lt!168927) lt!168930)))

(assert (=> b!364738 (= lt!168930 (arrayCountValidKeys!0 lt!168925 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364738 (= lt!168924 (arrayCountValidKeys!0 lt!168925 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168923 () Unit!11359)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20751 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11359)

(assert (=> b!364738 (= lt!168923 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168925 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168929 () (_ BitVec 32))

(assert (=> b!364738 (= (bvadd lt!168929 lt!168931) lt!168932)))

(assert (=> b!364738 (= lt!168932 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364738 (= lt!168929 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168926 () Unit!11359)

(assert (=> b!364738 (= lt!168926 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!203951 () Bool)

(assert (=> start!36530 (=> (not res!203951) (not e!223271))))

(assert (=> start!36530 (= res!203951 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10202 a!4289))))))

(assert (=> start!36530 e!223271))

(assert (=> start!36530 true))

(declare-fun array_inv!7288 (array!20751) Bool)

(assert (=> start!36530 (array_inv!7288 a!4289)))

(assert (= (and start!36530 res!203951) b!364737))

(assert (= (and b!364737 res!203952) b!364733))

(assert (= (and b!364733 res!203949) b!364734))

(assert (= (and b!364734 res!203953) b!364735))

(assert (= (and b!364735 res!203948) b!364738))

(assert (= (and b!364738 (not res!203950)) b!364736))

(declare-fun m!362521 () Bool)

(assert (=> start!36530 m!362521))

(declare-fun m!362523 () Bool)

(assert (=> b!364733 m!362523))

(declare-fun m!362525 () Bool)

(assert (=> b!364738 m!362525))

(declare-fun m!362527 () Bool)

(assert (=> b!364738 m!362527))

(declare-fun m!362529 () Bool)

(assert (=> b!364738 m!362529))

(declare-fun m!362531 () Bool)

(assert (=> b!364738 m!362531))

(declare-fun m!362533 () Bool)

(assert (=> b!364738 m!362533))

(declare-fun m!362535 () Bool)

(assert (=> b!364738 m!362535))

(declare-fun m!362537 () Bool)

(assert (=> b!364735 m!362537))

(declare-fun m!362539 () Bool)

(assert (=> b!364735 m!362539))

(declare-fun m!362541 () Bool)

(assert (=> b!364735 m!362541))

(declare-fun m!362543 () Bool)

(assert (=> b!364736 m!362543))

(declare-fun m!362545 () Bool)

(assert (=> b!364736 m!362545))

(declare-fun m!362547 () Bool)

(assert (=> b!364736 m!362547))

(declare-fun m!362549 () Bool)

(assert (=> b!364737 m!362549))

(assert (=> b!364737 m!362549))

(declare-fun m!362551 () Bool)

(assert (=> b!364737 m!362551))

(push 1)

(assert (not b!364736))

(assert (not b!364733))

(assert (not b!364738))

(assert (not start!36530))

(assert (not b!364737))

(assert (not b!364735))

(check-sat)

