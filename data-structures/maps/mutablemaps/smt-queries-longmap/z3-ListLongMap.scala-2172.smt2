; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36376 () Bool)

(assert start!36376)

(declare-fun b!363633 () Bool)

(declare-fun res!202944 () Bool)

(declare-fun e!222652 () Bool)

(assert (=> b!363633 (=> (not res!202944) (not e!222652))))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363633 (= res!202944 (validKeyInArray!0 k0!2974))))

(declare-fun b!363634 () Bool)

(declare-fun e!222653 () Bool)

(assert (=> b!363634 (= e!222653 (not true))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20618 0))(
  ( (array!20619 (arr!9785 (Array (_ BitVec 32) (_ BitVec 64))) (size!10137 (_ BitVec 32))) )
))
(declare-fun lt!167921 () array!20618)

(declare-fun lt!167922 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!20618 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363634 (= (bvadd (arrayCountValidKeys!0 lt!167921 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167922) (arrayCountValidKeys!0 lt!167921 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11265 0))(
  ( (Unit!11266) )
))
(declare-fun lt!167924 () Unit!11265)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11265)

(assert (=> b!363634 (= lt!167924 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167921 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!167920 () (_ BitVec 32))

(declare-fun a!4289 () array!20618)

(assert (=> b!363634 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167920) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167923 () Unit!11265)

(assert (=> b!363634 (= lt!167923 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!202946 () Bool)

(assert (=> start!36376 (=> (not res!202946) (not e!222652))))

(assert (=> start!36376 (= res!202946 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10137 a!4289))))))

(assert (=> start!36376 e!222652))

(assert (=> start!36376 true))

(declare-fun array_inv!7223 (array!20618) Bool)

(assert (=> start!36376 (array_inv!7223 a!4289)))

(declare-fun b!363635 () Bool)

(declare-fun res!202948 () Bool)

(assert (=> b!363635 (=> (not res!202948) (not e!222652))))

(assert (=> b!363635 (= res!202948 (not (validKeyInArray!0 (select (arr!9785 a!4289) i!1472))))))

(declare-fun b!363636 () Bool)

(declare-fun res!202947 () Bool)

(assert (=> b!363636 (=> (not res!202947) (not e!222652))))

(assert (=> b!363636 (= res!202947 (and (bvslt (size!10137 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10137 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363637 () Bool)

(assert (=> b!363637 (= e!222652 e!222653)))

(declare-fun res!202945 () Bool)

(assert (=> b!363637 (=> (not res!202945) (not e!222653))))

(assert (=> b!363637 (= res!202945 (and (= lt!167922 (bvadd #b00000000000000000000000000000001 lt!167920)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363637 (= lt!167922 (arrayCountValidKeys!0 lt!167921 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363637 (= lt!167920 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363637 (= lt!167921 (array!20619 (store (arr!9785 a!4289) i!1472 k0!2974) (size!10137 a!4289)))))

(assert (= (and start!36376 res!202946) b!363635))

(assert (= (and b!363635 res!202948) b!363633))

(assert (= (and b!363633 res!202944) b!363636))

(assert (= (and b!363636 res!202947) b!363637))

(assert (= (and b!363637 res!202945) b!363634))

(declare-fun m!360915 () Bool)

(assert (=> b!363637 m!360915))

(declare-fun m!360917 () Bool)

(assert (=> b!363637 m!360917))

(declare-fun m!360919 () Bool)

(assert (=> b!363637 m!360919))

(declare-fun m!360921 () Bool)

(assert (=> b!363634 m!360921))

(declare-fun m!360923 () Bool)

(assert (=> b!363634 m!360923))

(declare-fun m!360925 () Bool)

(assert (=> b!363634 m!360925))

(declare-fun m!360927 () Bool)

(assert (=> b!363634 m!360927))

(declare-fun m!360929 () Bool)

(assert (=> b!363634 m!360929))

(declare-fun m!360931 () Bool)

(assert (=> b!363634 m!360931))

(declare-fun m!360933 () Bool)

(assert (=> b!363635 m!360933))

(assert (=> b!363635 m!360933))

(declare-fun m!360935 () Bool)

(assert (=> b!363635 m!360935))

(declare-fun m!360937 () Bool)

(assert (=> b!363633 m!360937))

(declare-fun m!360939 () Bool)

(assert (=> start!36376 m!360939))

(check-sat (not start!36376) (not b!363635) (not b!363634) (not b!363633) (not b!363637))
(check-sat)
