; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36374 () Bool)

(assert start!36374)

(declare-fun b!363618 () Bool)

(declare-fun res!202931 () Bool)

(declare-fun e!222642 () Bool)

(assert (=> b!363618 (=> (not res!202931) (not e!222642))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363618 (= res!202931 (validKeyInArray!0 k!2974))))

(declare-fun b!363619 () Bool)

(declare-fun res!202933 () Bool)

(assert (=> b!363619 (=> (not res!202933) (not e!222642))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20616 0))(
  ( (array!20617 (arr!9784 (Array (_ BitVec 32) (_ BitVec 64))) (size!10136 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20616)

(assert (=> b!363619 (= res!202933 (and (bvslt (size!10136 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10136 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363620 () Bool)

(declare-fun e!222643 () Bool)

(assert (=> b!363620 (= e!222642 e!222643)))

(declare-fun res!202930 () Bool)

(assert (=> b!363620 (=> (not res!202930) (not e!222643))))

(declare-fun lt!167905 () (_ BitVec 32))

(declare-fun lt!167908 () (_ BitVec 32))

(assert (=> b!363620 (= res!202930 (and (= lt!167908 (bvadd #b00000000000000000000000000000001 lt!167905)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!167907 () array!20616)

(declare-fun arrayCountValidKeys!0 (array!20616 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363620 (= lt!167908 (arrayCountValidKeys!0 lt!167907 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363620 (= lt!167905 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363620 (= lt!167907 (array!20617 (store (arr!9784 a!4289) i!1472 k!2974) (size!10136 a!4289)))))

(declare-fun b!363621 () Bool)

(declare-fun res!202932 () Bool)

(assert (=> b!363621 (=> (not res!202932) (not e!222642))))

(assert (=> b!363621 (= res!202932 (not (validKeyInArray!0 (select (arr!9784 a!4289) i!1472))))))

(declare-fun b!363622 () Bool)

(assert (=> b!363622 (= e!222643 (not true))))

(assert (=> b!363622 (= (bvadd (arrayCountValidKeys!0 lt!167907 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167908) (arrayCountValidKeys!0 lt!167907 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11263 0))(
  ( (Unit!11264) )
))
(declare-fun lt!167906 () Unit!11263)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20616 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11263)

(assert (=> b!363622 (= lt!167906 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167907 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!363622 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167905) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167909 () Unit!11263)

(assert (=> b!363622 (= lt!167909 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!202929 () Bool)

(assert (=> start!36374 (=> (not res!202929) (not e!222642))))

(assert (=> start!36374 (= res!202929 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10136 a!4289))))))

(assert (=> start!36374 e!222642))

(assert (=> start!36374 true))

(declare-fun array_inv!7222 (array!20616) Bool)

(assert (=> start!36374 (array_inv!7222 a!4289)))

(assert (= (and start!36374 res!202929) b!363621))

(assert (= (and b!363621 res!202932) b!363618))

(assert (= (and b!363618 res!202931) b!363619))

(assert (= (and b!363619 res!202933) b!363620))

(assert (= (and b!363620 res!202930) b!363622))

(declare-fun m!360889 () Bool)

(assert (=> b!363622 m!360889))

(declare-fun m!360891 () Bool)

(assert (=> b!363622 m!360891))

(declare-fun m!360893 () Bool)

(assert (=> b!363622 m!360893))

(declare-fun m!360895 () Bool)

(assert (=> b!363622 m!360895))

(declare-fun m!360897 () Bool)

(assert (=> b!363622 m!360897))

(declare-fun m!360899 () Bool)

(assert (=> b!363622 m!360899))

(declare-fun m!360901 () Bool)

(assert (=> start!36374 m!360901))

(declare-fun m!360903 () Bool)

(assert (=> b!363618 m!360903))

(declare-fun m!360905 () Bool)

(assert (=> b!363621 m!360905))

(assert (=> b!363621 m!360905))

(declare-fun m!360907 () Bool)

(assert (=> b!363621 m!360907))

(declare-fun m!360909 () Bool)

(assert (=> b!363620 m!360909))

(declare-fun m!360911 () Bool)

(assert (=> b!363620 m!360911))

(declare-fun m!360913 () Bool)

(assert (=> b!363620 m!360913))

(push 1)

(assert (not b!363622))

(assert (not start!36374))

(assert (not b!363618))

(assert (not b!363621))

(assert (not b!363620))

(check-sat)

(pop 1)

