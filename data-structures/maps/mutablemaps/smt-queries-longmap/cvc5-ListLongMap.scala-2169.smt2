; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36356 () Bool)

(assert start!36356)

(declare-fun b!363483 () Bool)

(declare-fun res!202795 () Bool)

(declare-fun e!222561 () Bool)

(assert (=> b!363483 (=> (not res!202795) (not e!222561))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20598 0))(
  ( (array!20599 (arr!9775 (Array (_ BitVec 32) (_ BitVec 64))) (size!10127 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20598)

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!363483 (= res!202795 (and (bvslt (size!10127 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10127 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun b!363484 () Bool)

(declare-fun res!202796 () Bool)

(assert (=> b!363484 (=> (not res!202796) (not e!222561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363484 (= res!202796 (not (validKeyInArray!0 (select (arr!9775 a!4289) i!1472))))))

(declare-fun res!202797 () Bool)

(assert (=> start!36356 (=> (not res!202797) (not e!222561))))

(assert (=> start!36356 (= res!202797 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10127 a!4289))))))

(assert (=> start!36356 e!222561))

(assert (=> start!36356 true))

(declare-fun array_inv!7213 (array!20598) Bool)

(assert (=> start!36356 (array_inv!7213 a!4289)))

(declare-fun b!363485 () Bool)

(declare-fun e!222562 () Bool)

(assert (=> b!363485 (= e!222562 (not true))))

(declare-fun lt!167772 () (_ BitVec 32))

(declare-fun lt!167774 () array!20598)

(declare-fun arrayCountValidKeys!0 (array!20598 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363485 (= (bvadd (arrayCountValidKeys!0 lt!167774 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167772) (arrayCountValidKeys!0 lt!167774 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-datatypes ((Unit!11245 0))(
  ( (Unit!11246) )
))
(declare-fun lt!167770 () Unit!11245)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20598 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11245)

(assert (=> b!363485 (= lt!167770 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!167774 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!167771 () (_ BitVec 32))

(assert (=> b!363485 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!167771) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!167773 () Unit!11245)

(assert (=> b!363485 (= lt!167773 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!363486 () Bool)

(assert (=> b!363486 (= e!222561 e!222562)))

(declare-fun res!202794 () Bool)

(assert (=> b!363486 (=> (not res!202794) (not e!222562))))

(assert (=> b!363486 (= res!202794 (and (= lt!167772 (bvadd #b00000000000000000000000000000001 lt!167771)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!363486 (= lt!167772 (arrayCountValidKeys!0 lt!167774 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!363486 (= lt!167771 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun k!2974 () (_ BitVec 64))

(assert (=> b!363486 (= lt!167774 (array!20599 (store (arr!9775 a!4289) i!1472 k!2974) (size!10127 a!4289)))))

(declare-fun b!363487 () Bool)

(declare-fun res!202798 () Bool)

(assert (=> b!363487 (=> (not res!202798) (not e!222561))))

(assert (=> b!363487 (= res!202798 (validKeyInArray!0 k!2974))))

(assert (= (and start!36356 res!202797) b!363484))

(assert (= (and b!363484 res!202796) b!363487))

(assert (= (and b!363487 res!202798) b!363483))

(assert (= (and b!363483 res!202795) b!363486))

(assert (= (and b!363486 res!202794) b!363485))

(declare-fun m!360655 () Bool)

(assert (=> b!363484 m!360655))

(assert (=> b!363484 m!360655))

(declare-fun m!360657 () Bool)

(assert (=> b!363484 m!360657))

(declare-fun m!360659 () Bool)

(assert (=> start!36356 m!360659))

(declare-fun m!360661 () Bool)

(assert (=> b!363487 m!360661))

(declare-fun m!360663 () Bool)

(assert (=> b!363486 m!360663))

(declare-fun m!360665 () Bool)

(assert (=> b!363486 m!360665))

(declare-fun m!360667 () Bool)

(assert (=> b!363486 m!360667))

(declare-fun m!360669 () Bool)

(assert (=> b!363485 m!360669))

(declare-fun m!360671 () Bool)

(assert (=> b!363485 m!360671))

(declare-fun m!360673 () Bool)

(assert (=> b!363485 m!360673))

(declare-fun m!360675 () Bool)

(assert (=> b!363485 m!360675))

(declare-fun m!360677 () Bool)

(assert (=> b!363485 m!360677))

(declare-fun m!360679 () Bool)

(assert (=> b!363485 m!360679))

(push 1)

(assert (not b!363487))

(assert (not b!363485))

(assert (not b!363484))

(assert (not b!363486))

(assert (not start!36356))

(check-sat)

(pop 1)

