; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36370 () Bool)

(assert start!36370)

(declare-fun res!202901 () Bool)

(declare-fun e!222625 () Bool)

(assert (=> start!36370 (=> (not res!202901) (not e!222625))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20612 0))(
  ( (array!20613 (arr!9782 (Array (_ BitVec 32) (_ BitVec 64))) (size!10134 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20612)

(assert (=> start!36370 (= res!202901 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10134 a!4289))))))

(assert (=> start!36370 e!222625))

(assert (=> start!36370 true))

(declare-fun array_inv!7220 (array!20612) Bool)

(assert (=> start!36370 (array_inv!7220 a!4289)))

(declare-fun b!363588 () Bool)

(declare-fun res!202902 () Bool)

(assert (=> b!363588 (=> (not res!202902) (not e!222625))))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363588 (= res!202902 (validKeyInArray!0 k0!2974))))

(declare-fun b!363589 () Bool)

(declare-fun res!202903 () Bool)

(assert (=> b!363589 (=> (not res!202903) (not e!222625))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363589 (= res!202903 (and (bvslt (size!10134 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10134 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363590 () Bool)

(declare-fun res!202900 () Bool)

(assert (=> b!363590 (=> (not res!202900) (not e!222625))))

(assert (=> b!363590 (= res!202900 (not (validKeyInArray!0 (select (arr!9782 a!4289) i!1472))))))

(declare-fun b!363591 () Bool)

(declare-fun e!222624 () Bool)

(assert (=> b!363591 (= e!222625 e!222624)))

(declare-fun res!202899 () Bool)

(assert (=> b!363591 (=> (not res!202899) (not e!222624))))

(declare-fun lt!167875 () (_ BitVec 32))

(declare-fun lt!167879 () (_ BitVec 32))

(assert (=> b!363591 (= res!202899 (and (= lt!167875 (bvadd #b00000000000000000000000000000001 lt!167879)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!167878 () array!20612)

(declare-fun arrayCountValidKeys!0 (array!20612 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363591 (= lt!167875 (arrayCountValidKeys!0 lt!167878 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363591 (= lt!167879 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363591 (= lt!167878 (array!20613 (store (arr!9782 a!4289) i!1472 k0!2974) (size!10134 a!4289)))))

(declare-fun b!363592 () Bool)

(assert (=> b!363592 (= e!222624 (not true))))

(assert (=> b!363592 (= (bvadd (arrayCountValidKeys!0 lt!167878 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167875) (arrayCountValidKeys!0 lt!167878 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11259 0))(
  ( (Unit!11260) )
))
(declare-fun lt!167876 () Unit!11259)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20612 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11259)

(assert (=> b!363592 (= lt!167876 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167878 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> b!363592 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167879) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167877 () Unit!11259)

(assert (=> b!363592 (= lt!167877 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (= (and start!36370 res!202901) b!363590))

(assert (= (and b!363590 res!202900) b!363588))

(assert (= (and b!363588 res!202902) b!363589))

(assert (= (and b!363589 res!202903) b!363591))

(assert (= (and b!363591 res!202899) b!363592))

(declare-fun m!360837 () Bool)

(assert (=> b!363590 m!360837))

(assert (=> b!363590 m!360837))

(declare-fun m!360839 () Bool)

(assert (=> b!363590 m!360839))

(declare-fun m!360841 () Bool)

(assert (=> b!363588 m!360841))

(declare-fun m!360843 () Bool)

(assert (=> b!363591 m!360843))

(declare-fun m!360845 () Bool)

(assert (=> b!363591 m!360845))

(declare-fun m!360847 () Bool)

(assert (=> b!363591 m!360847))

(declare-fun m!360849 () Bool)

(assert (=> start!36370 m!360849))

(declare-fun m!360851 () Bool)

(assert (=> b!363592 m!360851))

(declare-fun m!360853 () Bool)

(assert (=> b!363592 m!360853))

(declare-fun m!360855 () Bool)

(assert (=> b!363592 m!360855))

(declare-fun m!360857 () Bool)

(assert (=> b!363592 m!360857))

(declare-fun m!360859 () Bool)

(assert (=> b!363592 m!360859))

(declare-fun m!360861 () Bool)

(assert (=> b!363592 m!360861))

(check-sat (not b!363588) (not start!36370) (not b!363592) (not b!363591) (not b!363590))
